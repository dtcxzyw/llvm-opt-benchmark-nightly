inline.NumInlined: 7264
inline.NumDeleted: 2661
begin_hunk_0_@_ZN5glTF28LazyDictINS_4MeshEE6RemoveEPKc:bb.a

bb.o:                                             ; preds = %bb.k, %bb.j
  %.013 = phi i1 [ false, %bb.k ], [ true, %bb.j ] ; 2 uses
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %3, align 8               ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.o
  %i.aj = load i64, ptr %i.ah, align 8
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39, %bb.n
  %.pn29 = phi { ptr, i32 } [ %i.ae, %bb.n ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39 ], [ %i.af, %bb.o ] ; 4 uses
  %.114 = phi i1 [ true, %bb.n ], [ %.013, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39 ], [ %.013, %bb.o ] ; 2 uses
  %i.al = load ptr, ptr %4, align 8               ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %i.ao = load i64, ptr %i.am, align 8
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  %i.aq = load ptr, ptr %5, align 8               ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.thread: ; preds = %bb.h
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %5, align 8               ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.thread
  %i.ax = load i64, ptr %i.av, align 8
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #32
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %i.az = load i64, ptr %i.ar, align 8
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.ba) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br i1 %.114, label %bb.p, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br i1 %.114, label %bb.p, label %common.resume

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.thread
  %.pn29.pn.pn81.ph = phi { ptr, i32 } [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.thread ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread ], [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %.pn29.pn.pn81 = phi { ptr, i32 } [ %.pn29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ], [ %.pn29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ], [ %.pn29.pn.pn81.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.w) #31
  br label %common.resume

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.bc = load i32, ptr %i.bb, align 8
  store i32 %i.bc, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.bd, ptr %7, align 8
  %i.be = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #31 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %i.be, ptr %i.a, align 8
  %i.bf = icmp ugt i64 %i.be, 15
  br i1 %i.bf, label %.noexc.i49, label %._crit_edge.i.i48

.noexc.i49:                                       ; preds = %bb.q
  %i.bg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc51 unwind label %bb.aa  ; 2 uses

.noexc51:                                         ; preds = %.noexc.i49
  store ptr %i.bg, ptr %7, align 8
  %i.bh = load i64, ptr %i.a, align 8
  store i64 %i.bh, ptr %i.bd, align 8
  br label %._crit_edge.i.i48

._crit_edge.i.i48:                                ; preds = %.noexc51, %bb.q
  %i.bi = phi ptr [ %i.bg, %.noexc51 ], [ %i.bd, %bb.q ] ; 2 uses
  switch i64 %i.be, label %bb.s [
    i64 1, label %bb.r
    i64 0, label %bb.t
  ]

bb.r:                                             ; preds = %._crit_edge.i.i48
  %i.bj = load i8, ptr %1, align 1
  store i8 %i.bj, ptr %i.bi, align 1
  br label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i48
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bi, ptr nonnull align 1 %1, i64 %i.be, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %._crit_edge.i.i48
  %i.bk = load i64, ptr %i.a, align 8             ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.bk, ptr %i.bl, align 8
  %i.bm = load ptr, ptr %7, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bk
  store i8 0, ptr %i.bn, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.bo = invoke noundef i64 @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEE5eraseERSB_.exit unwind label %bb.ab ; 0 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEE5eraseERSB_.exit: ; preds = %bb.t
  %i.bp = load ptr, ptr %7, align 8               ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.bd
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEE5eraseERSB_.exit
  %i.br = load i64, ptr %i.bd, align 8
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEE5eraseERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bu = call noundef i64 @_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.bt, ptr noundef nonnull align 4 dereferenceable(4) %i.c) ; 0 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bw = load i32, ptr %i.c, align 4             ; 2 uses
  %i.bx = zext i32 %i.bw to i64                   ; 2 uses
  %i.by = load ptr, ptr %i.bv, align 8            ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bx
  %i.ca = load ptr, ptr %i.bz, align 8            ; 3 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %i.cc = load ptr, ptr %i.ca, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(336) %i.ca) #31
  %.pre = load ptr, ptr %i.bv, align 8
  %.pre112 = load i32, ptr %i.c, align 4          ; 2 uses
  %.pre114.a = zext i32 %.pre112 to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %.pre-phi = phi i64 [ %.pre114.a, %bb.u ], [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ] ; 4 uses
  %i.cf = phi i32 [ %.pre112, %bb.u ], [ %i.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ] ; 3 uses
  %i.cg = phi ptr [ %.pre, %bb.u ], [ %i.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %.pre-phi ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ck = load ptr, ptr %i.cj, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.ci, %i.ck
  br i1 %.not.i.i, label %_ZNSt6vectorIPN5glTF24MeshESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %i.ci to i64
  %i.cn = sub i64 %i.cl, %i.cm                    ; 3 uses
  %i.co = icmp sgt i64 %i.cn, 8
  br i1 %i.co, label %bb.x, label %bb.y, !prof !92

bb.x:                                             ; preds = %bb.w
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ch, ptr nonnull align 8 %i.ci, i64 %i.cn, i1 false)
  %.pre113 = load i32, ptr %i.c, align 4          ; 2 uses
  %.pre115.a = zext i32 %.pre113 to i64
  br label %_ZNSt6vectorIPN5glTF24MeshESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit

bb.y:                                             ; preds = %bb.w
  %i.cp = icmp eq i64 %i.cn, 8
  br i1 %i.cp, label %bb.z, label %_ZNSt6vectorIPN5glTF24MeshESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit

bb.z:                                             ; preds = %bb.y
  %i.cq = load ptr, ptr %i.ci, align 8
  store ptr %i.cq, ptr %i.ch, align 8
  br label %_ZNSt6vectorIPN5glTF24MeshESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit

_ZNSt6vectorIPN5glTF24MeshESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit: ; preds = %bb.v, %bb.x, %bb.y, %bb.z
  %.pre-phi116 = phi i64 [ %.pre-phi, %bb.v ], [ %.pre115.a, %bb.x ], [ %.pre-phi, %bb.y ], [ %.pre-phi, %bb.z ] ; 2 uses
  %i.cr = phi i32 [ %i.cf, %bb.v ], [ %.pre113, %bb.x ], [ %i.cf, %bb.y ], [ %i.cf, %bb.z ]
  %i.cs = load ptr, ptr %i.cj, align 8
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 -8 ; 2 uses
  store ptr %i.ct, ptr %i.cj, align 8
  %i.cu = load ptr, ptr %i.bv, align 8            ; 2 uses
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = ashr exact i64 %i.cx, 3
  %i.cz = icmp ugt i64 %i.cy, %.pre-phi116
  br i1 %i.cz, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt6vectorIPN5glTF24MeshESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sroa.066.098 = load ptr, ptr %i.da, align 8   ; 2 uses
  %.not9399 = icmp eq ptr %.sroa.066.098, null
  br i1 %.not9399, label %._crit_edge103, label %.lr.ph102

bb.aa:                                            ; preds = %.noexc.i49
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

bb.ab:                                            ; preds = %bb.t
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dd = load ptr, ptr %7, align 8               ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.bd
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.ab
  %i.df = load i64, ptr %i.bd, align 8
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57, %bb.aa
  %.pn26 = phi { ptr, i32 } [ %i.db, %bb.aa ], [ %i.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57 ], [ %i.dc, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  br label %common.resume

.lr.ph:                                           ; preds = %_ZNSt6vectorIPN5glTF24MeshESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit, %.lr.ph
  %i.dh = phi ptr [ %i.dp, %.lr.ph ], [ %i.cu, %_ZNSt6vectorIPN5glTF24MeshESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit ]
  %i.di = phi i64 [ %i.dn, %.lr.ph ], [ %.pre-phi116, %_ZNSt6vectorIPN5glTF24MeshESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit ]
  %.097 = phi i32 [ %i.dm, %.lr.ph ], [ %i.cr, %_ZNSt6vectorIPN5glTF24MeshESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit ] ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.di
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i32 %.097, ptr %i.dl, align 8
  %i.dm = add i32 %.097, 1                        ; 2 uses
  %i.dn = zext i32 %i.dm to i64                   ; 2 uses
  %i.do = load ptr, ptr %i.cj, align 8
  %i.dp = load ptr, ptr %i.bv, align 8            ; 2 uses
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = ashr exact i64 %i.ds, 3
  %i.du = icmp ugt i64 %i.dt, %i.dn
  br i1 %i.du, label %.lr.ph, label %._crit_edge, !llvm.loop !188

._crit_edge103:                                   ; preds = %bb.ad, %._crit_edge
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.060.0104 = load ptr, ptr %i.dv, align 8  ; 2 uses
  %.not94105 = icmp eq ptr %.sroa.060.0104, null
  br i1 %.not94105, label %._crit_edge109, label %.lr.ph108

.lr.ph108:                                        ; preds = %._crit_edge103
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.ae

.lr.ph102:                                        ; preds = %._crit_edge, %bb.ad
  %.sroa.066.0100 = phi ptr [ %.sroa.066.0, %bb.ad ], [ %.sroa.066.098, %._crit_edge ] ; 3 uses
  %8 = getelementptr inbounds nuw i8, ptr %.sroa.066.0100, i64 40
  %9 = load i32, ptr %8, align 8                  ; 2 uses
  %i.dx = load i32, ptr %i.c, align 4
  %.not28 = icmp ugt i32 %9, %i.dx
  br i1 %.not28, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph102
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.066.0100, i64 8
  %i.dz = add i32 %9, -1
  %i.ea = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_jESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.dy)
  store i32 %i.dz, ptr %i.ea, align 4
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph102, %bb.ac
  %.sroa.066.0 = load ptr, ptr %.sroa.066.0100, align 8 ; 2 uses
  %.not93 = icmp eq ptr %.sroa.066.0, null
  br i1 %.not93, label %._crit_edge103, label %.lr.ph102, !llvm.loop !189

._crit_edge109:                                   ; preds = %bb.aj, %._crit_edge103
  %10 = load i32, ptr %i.c, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  ret i32 %10

bb.ae:                                            ; preds = %.lr.ph108, %bb.aj
  %.sroa.060.0106 = phi ptr [ %.sroa.060.0104, %.lr.ph108 ], [ %.sroa.060.0, %bb.aj ] ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.060.0106, i64 12
  %i.ec = load i32, ptr %i.eb, align 4            ; 2 uses
  %i.ed = load i32, ptr %i.c, align 4
  %.not = icmp ugt i32 %i.ec, %i.ed
  br i1 %.not, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.060.0106, i64 8
  %i.ef = add i32 %i.ec, -1
  %i.eg = load i32, ptr %i.ee, align 4            ; 4 uses
  %i.eh = zext i32 %i.eg to i64                   ; 2 uses
  %i.ei = load i64, ptr %i.dw, align 8            ; 2 uses
  %i.ej = urem i64 %i.eh, %i.ei                   ; 3 uses
  %i.ek = load ptr, ptr %i.bt, align 8
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ej
  %i.em = load ptr, ptr %i.el, align 8            ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.en = load ptr, ptr %i.em, align 8            ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load i32, ptr %i.eo, align 4
  %i.eq = icmp eq i32 %i.eg, %i.ep
  br i1 %i.eq, label %_ZNSt13unordered_mapIjjSt4hashIjESt8equal_toIjESaISt4pairIKjjEEEixERS5_.exit, label %.lr.ph.i.i.i.i

bb.ah:                                            ; preds = %bb.ai
  %i.er = icmp eq i32 %i.eg, %i.eu
  br i1 %i.er, label %_ZNSt13unordered_mapIjjSt4hashIjESt8equal_toIjESaISt4pairIKjjEEEixERS5_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !190

.lr.ph.i.i.i.i:                                   ; preds = %bb.ag, %bb.ah
  %.020.i.i.i.i = phi ptr [ %i.es, %bb.ah ], [ %i.en, %bb.ag ]
  %i.es = load ptr, ptr %.020.i.i.i.i, align 8    ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.es, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load i32, ptr %i.et, align 4            ; 2 uses
  %i.ev = zext i32 %i.eu to i64
  %i.ew = urem i64 %i.ev, %i.ei
  %.not19.i.i.i.i = icmp eq i64 %i.ew, %i.ej
  br i1 %.not19.i.i.i.i, label %bb.ah, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !190

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.ai
  br label %.loopexit.i.i, !llvm.loop !190

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %bb.af
  %i.ex = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #33 ; 5 uses
  store ptr null, ptr %i.ex, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store i32 %i.eg, ptr %i.ey, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  store i32 0, ptr %i.ez, align 4
  %i.fa = invoke ptr @_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.bt, i64 noundef %i.ej, i64 noundef %i.eh, ptr noundef nonnull %i.ex, i64 noundef 1)
          to label %_ZNSt13unordered_mapIjjSt4hashIjESt8equal_toIjESaISt4pairIKjjEEEixERS5_.exit unwind label %_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45, %_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.fb, %_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ], [ %.pn29.pn.pn81, %bb.p ], [ %.pn29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ], [ %.pn26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], [ %.pn29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef 16) #32
  br label %common.resume

_ZNSt13unordered_mapIjjSt4hashIjESt8equal_toIjESaISt4pairIKjjEEEixERS5_.exit: ; preds = %bb.ah, %bb.ag, %.loopexit.i.i
  %.pn.i.i = phi ptr [ %i.fa, %.loopexit.i.i ], [ %i.en, %bb.ag ], [ %i.es, %bb.ah ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 12
  store i32 %i.ef, ptr %.1.i.i, align 4
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ae, %_ZNSt13unordered_mapIjjSt4hashIjESt8equal_toIjESaISt4pairIKjjEEEixERS5_.exit
  %.sroa.060.0 = load ptr, ptr %.sroa.060.0106, align 8 ; 2 uses
  %.not94 = icmp eq ptr %.sroa.060.0, null
  br i1 %.not94, label %._crit_edge109, label %bb.ae, !llvm.loop !191

bb.ak:                                            ; preds = %bb.k
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK12aiMatrix4x4tIfE10IsIdentityEf(ptr noundef nonnull align 4 dereferenceable(64) %0, float noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load float, ptr %i.a, align 4            ; 2 uses
  %i.c = fcmp ugt float %i.b, %1
  br i1 %i.c, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = fneg float %1                            ; 12 uses
  %i.e = fcmp ult float %i.b, %i.d
  br i1 %i.e, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load float, ptr %i.f, align 4            ; 2 uses
  %i.h = fcmp ugt float %i.g, %1
  %i.i = fcmp ult float %i.g, %i.d
  %or.cond = or i1 %i.h, %i.i
  br i1 %or.cond, label %bb.t, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = load float, ptr %i.j, align 4            ; 2 uses
  %i.l = fcmp ugt float %i.k, %1
  %i.m = fcmp ult float %i.k, %i.d
  %or.cond52 = or i1 %i.l, %i.m
  br i1 %or.cond52, label %bb.t, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load float, ptr %i.n, align 4            ; 2 uses
  %i.p = fcmp ugt float %i.o, %1
  %i.q = fcmp ult float %i.o, %i.d
  %or.cond53 = or i1 %i.p, %i.q
  br i1 %or.cond53, label %bb.t, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load float, ptr %i.r, align 4            ; 2 uses
  %i.t = fcmp ugt float %i.s, %1
  %i.u = fcmp ult float %i.s, %i.d
  %or.cond54 = or i1 %i.t, %i.u
  br i1 %or.cond54, label %bb.t, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.w = load float, ptr %i.v, align 4            ; 2 uses
  %i.x = fcmp ugt float %i.w, %1
  %i.y = fcmp ult float %i.w, %i.d
  %or.cond55 = or i1 %i.x, %i.y
  br i1 %or.cond55, label %bb.t, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load float, ptr %i.z, align 4           ; 2 uses
  %i.ab = fcmp ugt float %i.aa, %1
  %i.ac = fcmp ult float %i.aa, %i.d
  %or.cond56 = or i1 %i.ab, %i.ac
  br i1 %or.cond56, label %bb.t, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ae = load float, ptr %i.ad, align 4          ; 2 uses
  %i.af = fcmp ugt float %i.ae, %1
  %i.ag = fcmp ult float %i.ae, %i.d
  %or.cond57 = or i1 %i.af, %i.ag
  br i1 %or.cond57, label %bb.t, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ai = load float, ptr %i.ah, align 4          ; 2 uses
  %i.aj = fcmp ugt float %i.ai, %1
  %i.ak = fcmp ult float %i.ai, %i.d
  %or.cond58 = or i1 %i.aj, %i.ak
  br i1 %or.cond58, label %bb.t, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = load float, ptr %i.al, align 4          ; 2 uses
  %i.an = fcmp ugt float %i.am, %1
  %i.ao = fcmp ult float %i.am, %i.d
  %or.cond59 = or i1 %i.an, %i.ao
  br i1 %or.cond59, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.aq = load float, ptr %i.ap, align 4          ; 2 uses
  %i.ar = fcmp ugt float %i.aq, %1
  %i.as = fcmp ult float %i.aq, %i.d
  %or.cond60 = or i1 %i.ar, %i.as
  br i1 %or.cond60, label %bb.t, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.au = load float, ptr %i.at, align 4          ; 2 uses
  %i.av = fcmp ugt float %i.au, %1
  %i.aw = fcmp ult float %i.au, %i.d
  %or.cond61 = or i1 %i.av, %i.aw
  br i1 %or.cond61, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = load float, ptr %0, align 4             ; 2 uses
  %i.ay = fadd float %1, 1.000000e+00             ; 4 uses
  %i.az = fcmp ugt float %i.ax, %i.ay
  br i1 %i.az, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = fsub float 1.000000e+00, %1             ; 4 uses
  %i.bb = fcmp ult float %i.ax, %i.ba
  br i1 %i.bb, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bd = load float, ptr %i.bc, align 4          ; 2 uses
  %i.be = fcmp ugt float %i.bd, %i.ay
  %i.bf = fcmp ult float %i.bd, %i.ba
  %or.cond62 = or i1 %i.be, %i.bf
  br i1 %or.cond62, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bh = load float, ptr %i.bg, align 4          ; 2 uses
  %i.bi = fcmp ugt float %i.bh, %i.ay
  %i.bj = fcmp ult float %i.bh, %i.ba
  %or.cond63 = or i1 %i.bi, %i.bj
  br i1 %or.cond63, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bl = load float, ptr %i.bk, align 4          ; 2 uses
  %i.bm = fcmp ugt float %i.bl, %i.ay
  br i1 %i.bm, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = fcmp oge float %i.bl, %i.ba
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.bo = phi i1 [ false, %bb.r ], [ %i.bn, %bb.s ], [ false, %bb.q ], [ false, %bb.g ], [ false, %bb.p ], [ false, %bb.o ], [ false, %bb.n ], [ false, %bb.c ], [ false, %bb.m ], [ false, %bb.f ], [ false, %bb.l ], [ false, %bb.b ], [ false, %bb.k ], [ false, %bb.e ], [ false, %bb.j ], [ false, %bb.a ], [ false, %bb.i ], [ false, %bb.d ], [ false, %bb.h ]
  ret i1 %i.bo
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN6Assimp13glTF2Exporter10ExportNodeEPK6aiNodeRN10glTFCommon3RefIN5glTF24NodeEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(124) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.glTFCommon::Ref.224", align 8 ; 6 uses
  %6 = alloca %class.aiQuaterniont, align 16      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.e, ptr %4, align 8
  %i.f = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #31 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %i.f, ptr %i.a, align 8
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.h, ptr %4, align 8
  %i.i = load i64, ptr %i.a, align 8
  store i64 %i.i, ptr %i.e, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.e, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1
  store i8 %i.k, ptr %i.j, align 1
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.l = load i64, ptr %i.a, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.l, ptr %i.m, align 8
  %i.n = load ptr, ptr %4, align 8
end_hunk_0
