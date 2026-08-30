Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/linkers_socket?download=true
begin_hunk_0_@_ZN8LightGBM7LinkersC2ENS_6ConfigE:bb.a
  %i.j = load i32, ptr %i.i, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  store i32 %i.j, ptr %i.k, align 4, !tbaa !67
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1468
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.o = load <2 x i32>, ptr %i.l, align 4, !tbaa !68
  %i.p = shufflevector <2 x i32> %i.o, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.p, ptr %i.n, align 8, !tbaa !68
  store i32 -1, ptr %0, align 8, !tbaa !69
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 1480
  invoke void @_ZN8LightGBM7Linkers16ParseMachineListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.s = load i32, ptr %0, align 8, !tbaa !69
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZN8LightGBM9TcpSocket14GetLocalIpListB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::unordered_set") align 8 %4)
          to label %.preheader unwind label %bb.g

.preheader:                                       ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !70
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !71   ; 2 uses
  %.not = icmp eq ptr %i.v, %i.w
  br i1 %.not, label %.loopexit, label %.lr.ph

bb.e:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.f:                                             ; preds = %bb.am, %bb.t, %bb.s, %_ZNSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EED2Ev.exit, %_ZN8LightGBM19RecursiveHalvingMapD2Ev.exit, %bb.p, %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EED2Ev.exit31

bb.g:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %i.aa = phi ptr [ %i.am, %bb.l ], [ %i.w, %.preheader ]
  %.0956 = phi i64 [ %i.ak, %bb.l ], [ 0, %.preheader ] ; 4 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %.0956
  %i.ac = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS5_(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ab)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %.lr.ph
  %.not.i.i.not = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.not, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !72
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.0956
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !68
  %i.ag = load i32, ptr %i.m, align 4, !tbaa !73
  %i.ah = icmp eq i32 %i.af, %i.ag
  br i1 %i.ah, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ai = trunc i64 %.0956 to i32
  store i32 %i.ai, ptr %0, align 8, !tbaa !69
  br label %.loopexit

bb.k:                                             ; preds = %.lr.ph
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #26
  br label %bb.n

bb.l:                                             ; preds = %bb.h, %bb.i
  %i.ak = add nuw i64 %.0956, 1                   ; 2 uses
  %i.al = load ptr, ptr %i.u, align 8, !tbaa !70
  %i.am = load ptr, ptr %i.c, align 8, !tbaa !71  ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 5
  %i.ar = icmp ult i64 %i.ak, %i.aq
  br i1 %i.ar, label %.lr.ph, label %.loopexit, !llvm.loop !74

.loopexit:                                        ; preds = %bb.l, %.preheader, %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !76 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.loopexit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.au, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i ], [ %i.at, %.loopexit ] ; 4 uses
  %i.au = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !84 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !85 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !86
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #27
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 48) #27
  %.not.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !87

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i, %.loopexit
  %i.bb = load ptr, ptr %4, align 8, !tbaa !88
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !89
  %i.be = shl i64 %i.bd, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bb, i8 0, i64 %i.be, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  %i.bf = load ptr, ptr %4, align 8, !tbaa !88    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i
  %i.bi = load i64, ptr %i.bc, align 8, !tbaa !89
  %i.bj = shl i64 %i.bi, 3
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #27
  br label %bb.o

bb.n:                                             ; preds = %bb.k, %bb.g
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.k ], [ %i.z, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZNSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EED2Ev.exit31

bb.o:                                             ; preds = %bb.m, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %.pr = load i32, ptr %0, align 8, !tbaa !69
  %i.bk = icmp eq i32 %.pr, -1
  br i1 %i.bk, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str)
          to label %.thread unwind label %bb.f

.thread:                                          ; preds = %bb.c, %bb.p, %bb.o
  %i.bl = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #28
          to label %bb.q unwind label %bb.u       ; 3 uses

bb.q:                                             ; preds = %.thread
  invoke void @_ZN8LightGBM9TcpSocketC2Ev(ptr noundef nonnull align 4 dereferenceable(4) %i.bl)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.bm = load ptr, ptr %i.f, align 8, !tbaa !90  ; 2 uses
  store ptr %i.bl, ptr %i.f, align 8, !tbaa !90
  %.not.i.i.i.i21 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i21, label %_ZNSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN8LightGBM9TcpSocketEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN8LightGBM9TcpSocketEEclEPS1_.exit.i.i.i.i: ; preds = %bb.r
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef 4) #27
  br label %_ZNSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN8LightGBM9TcpSocketEEclEPS1_.exit.i.i.i.i, %bb.r
  %i.bn = load i32, ptr %i.m, align 4, !tbaa !73  ; 4 uses
  invoke void (ptr, ...) @_ZN8LightGBM3Log4InfoEPKcz(ptr noundef nonnull @.str.32, i32 noundef %i.bn)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %_ZNSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EED2Ev.exit
  %i.bo = load ptr, ptr %i.f, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.bq = call i32 @inet_pton(i32 noundef 2, ptr noundef nonnull @.str.35, ptr noundef nonnull %i.bp) #26 ; 0 uses
  store i16 2, ptr %2, align 16, !tbaa !91
  %i.br = trunc i32 %i.bn to i16
  %rev.i.i.i.i = call noundef i16 @llvm.bswap.i16(i16 %i.br)
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %rev.i.i.i.i, ptr %i.bs, align 2, !tbaa !95
  %i.bt = load <2 x i64>, ptr %2, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store <2 x i64> %i.bt, ptr %3, align 16
  %i.bu = load i32, ptr %i.bo, align 4, !tbaa !96
  %i.bv = call i32 @bind(i32 noundef %i.bu, ptr noundef nonnull %3, i32 noundef 16) #26
  %i.bw = icmp eq i32 %i.bv, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %i.bw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.noexc
  invoke void (ptr, ...) @_ZN8LightGBM3Log4InfoEPKcz(ptr noundef nonnull @.str.33, i32 noundef %i.bn)
          to label %_ZN8LightGBM7Linkers7TryBindEi.exit unwind label %bb.f

bb.t:                                             ; preds = %.noexc
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.34, i32 noundef %i.bn)
          to label %_ZN8LightGBM7Linkers7TryBindEi.exit unwind label %bb.f

_ZN8LightGBM7Linkers7TryBindEi.exit:              ; preds = %bb.t, %bb.s
  %i.bx = load i32, ptr %i.k, align 4, !tbaa !67  ; 4 uses
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %.lr.ph58, label %._crit_edge

.lr.ph58:                                         ; preds = %_ZN8LightGBM7Linkers7TryBindEi.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %.pre = load ptr, ptr %i.bz, align 8, !tbaa !98
  %.pre62 = load ptr, ptr %i.ca, align 8, !tbaa !99
  br label %bb.w

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EED2Ev.exit28, %_ZN8LightGBM7Linkers7TryBindEi.exit
  %.lcssa51 = phi i32 [ %i.bx, %_ZN8LightGBM7Linkers7TryBindEi.exit ], [ %i.dp, %_ZNSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EED2Ev.exit28 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.cb = load i32, ptr %0, align 8, !tbaa !69
  invoke void @_ZN8LightGBM8BruckMap9ConstructEii(ptr dead_on_unwind nonnull writable sret(%"class.LightGBM::BruckMap") align 8 %5, i32 noundef %i.cb, i32 noundef %.lcssa51)
          to label %bb.ab unwind label %bb.an

bb.u:                                             ; preds = %.thread
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EED2Ev.exit31

bb.v:                                             ; preds = %bb.q
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef 4) #27
  br label %_ZNSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EED2Ev.exit31

bb.w:                                             ; preds = %.lr.ph58, %_ZNSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EED2Ev.exit28
  %.pre6364 = phi i32 [ %i.bx, %.lr.ph58 ], [ %.pre6365, %_ZNSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EED2Ev.exit28 ] ; 2 uses
  %i.ce = phi i32 [ %i.bx, %.lr.ph58 ], [ %i.dp, %_ZNSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EED2Ev.exit28 ]
  %i.cf = phi ptr [ %.pre62, %.lr.ph58 ], [ %i.dq, %_ZNSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EED2Ev.exit28 ] ; 5 uses
  %i.cg = phi ptr [ %.pre, %.lr.ph58 ], [ %i.dr, %_ZNSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EED2Ev.exit28 ] ; 3 uses
  %.057 = phi i32 [ 0, %.lr.ph58 ], [ %i.ds, %_ZNSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EED2Ev.exit28 ]
  %.not.i.i24 = icmp eq ptr %i.cg, %i.cf
  br i1 %.not.i.i24, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i64 0, ptr %i.cg, align 8, !tbaa !90
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  store ptr %i.ch, ptr %i.bz, align 8, !tbaa !98
  br label %_ZNSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EED2Ev.exit28

bb.y:                                             ; preds = %bb.w
  %i.ci = load ptr, ptr %i.e, align 8, !tbaa !100 ; 10 uses
  %i.cj = ptrtoint ptr %i.cf to i64               ; 3 uses
  %i.ck = ptrtoint ptr %i.ci to i64               ; 3 uses
  %i.cl = sub i64 %i.cj, %i.ck                    ; 4 uses
  %i.cm = icmp eq i64 %i.cl, 9223372036854775800
  br i1 %i.cm, label %bb.z, label %_ZNKSt6vectorISt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #29
          to label %.noexc43 unwind label %_ZNSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EED2Ev.exit31.loopexit.split-lp

.noexc43:                                         ; preds = %bb.z
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.y
  %i.cn = ashr exact i64 %i.cl, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.cn, i64 1)
  %i.co = add nsw i64 %.sroa.speculated.i.i, %i.cn ; 2 uses
  %i.cp = icmp ult i64 %i.co, %i.cn
  %i.cq = call i64 @llvm.umin.i64(i64 %i.co, i64 1152921504606846975)
  %i.cr = select i1 %i.cp, i64 1152921504606846975, i64 %i.cq ; 3 uses
  %.not.i.i40 = icmp ne i64 %i.cr, 0
  call void @llvm.assume(i1 %.not.i.i40)
  %i.cs = shl nuw nsw i64 %i.cr, 3
  %i.ct = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cs) #28
          to label %.noexc44 unwind label %_ZNSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EED2Ev.exit31.loopexit ; 10 uses

.noexc44:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cl
  store i64 0, ptr %i.cu, align 8, !tbaa !90
  %.not10.i.i.i.i = icmp eq ptr %i.ci, %i.cf
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i41.preheader

.lr.ph.i.i.i.i41.preheader:                       ; preds = %.noexc44
  %i.cv = add i64 %i.cj, -8
  %i.cw = sub i64 %i.cv, %i.ck                    ; 2 uses
  %i.cx = lshr i64 %i.cw, 3
  %i.cy = add nuw nsw i64 %i.cx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cw, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i41.preheader108, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i41.preheader
  %scevgep = getelementptr i8, ptr %i.ct, i64 8
  %i.cz = add i64 %i.cj, -8
  %i.da = sub i64 %i.cz, %i.ck
  %i.db = and i64 %i.da, -8                       ; 2 uses
  %scevgep102 = getelementptr i8, ptr %scevgep, i64 %i.db
  %scevgep103 = getelementptr i8, ptr %i.ci, i64 8
  %scevgep104 = getelementptr i8, ptr %scevgep103, i64 %i.db
  %bound0 = icmp ult ptr %i.ct, %scevgep104
  %bound1 = icmp ult ptr %i.ci, %scevgep102
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i41.preheader108, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cy, 4611686018427387900     ; 3 uses
  %i.dc = shl i64 %n.vec, 3                       ; 2 uses
  %i.dd = getelementptr i8, ptr %i.ct, i64 %i.dc  ; 2 uses
  %i.de = getelementptr i8, ptr %i.ci, i64 %i.dc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.df = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ct, i64 %i.df ; 2 uses
  %next.gep105 = getelementptr i8, ptr %i.ci, i64 %i.df ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %i.dg = getelementptr i8, ptr %next.gep105, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep105, align 8, !tbaa !90, !alias.scope !106, !noalias !101
  %wide.load106 = load <2 x i64>, ptr %i.dg, align 8, !tbaa !90, !alias.scope !106, !noalias !101
  %i.dh = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !90, !alias.scope !109, !noalias !106
  store <2 x i64> %wide.load106, ptr %i.dh, align 8, !tbaa !90, !alias.scope !109, !noalias !106
  %i.di = getelementptr i8, ptr %next.gep105, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep105, align 8, !tbaa !90, !alias.scope !106, !noalias !101
  store <2 x ptr> splat (ptr null), ptr %i.di, align 8, !tbaa !90, !alias.scope !106, !noalias !101
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !111

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cy, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i41.preheader108

.lr.ph.i.i.i.i41.preheader108:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i41.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ct, %vector.memcheck ], [ %i.ct, %.lr.ph.i.i.i.i41.preheader ], [ %i.dd, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ci, %vector.memcheck ], [ %i.ci, %.lr.ph.i.i.i.i41.preheader ], [ %i.de, %middle.block ]
  br label %.lr.ph.i.i.i.i41

.lr.ph.i.i.i.i41:                                 ; preds = %.lr.ph.i.i.i.i41.preheader108, %.lr.ph.i.i.i.i41
  %.012.i.i.i.i = phi ptr [ %i.dm, %.lr.ph.i.i.i.i41 ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i41.preheader108 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dl, %.lr.ph.i.i.i.i41 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i41.preheader108 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %i.dk = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !90, !alias.scope !104, !noalias !101
  store i64 %i.dk, ptr %.012.i.i.i.i, align 8, !tbaa !90, !alias.scope !101, !noalias !104
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !90, !alias.scope !104, !noalias !101
  %i.dl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i42 = icmp eq ptr %i.dl, %i.cf
  br i1 %.not.i.i.i.i42, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i41, !llvm.loop !114

_ZNSt6vectorISt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i41, %middle.block, %.noexc44
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ct, %.noexc44 ], [ %i.dd, %middle.block ], [ %i.dm, %.lr.ph.i.i.i.i41 ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.ci, null
  br i1 %.not.i23.i, label %.noexc25, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.cl) #27
  %.pre63.pre = load i32, ptr %i.k, align 4, !tbaa !67
  br label %.noexc25

.noexc25:                                         ; preds = %bb.aa, %_ZNSt6vectorISt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %.pre63 = phi i32 [ %.pre63.pre, %bb.aa ], [ %.pre6364, %_ZNSt6vectorISt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i ] ; 2 uses
  store ptr %i.ct, ptr %i.e, align 8, !tbaa !100
  store ptr %i.dn, ptr %i.bz, align 8, !tbaa !98
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cr ; 2 uses
  store ptr %i.do, ptr %i.ca, align 8, !tbaa !99
  br label %_ZNSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EED2Ev.exit28

_ZNSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EED2Ev.exit28: ; preds = %bb.x, %.noexc25
  %.pre6365 = phi i32 [ %.pre6364, %bb.x ], [ %.pre63, %.noexc25 ]
  %i.dp = phi i32 [ %i.ce, %bb.x ], [ %.pre63, %.noexc25 ] ; 3 uses
  %i.dq = phi ptr [ %i.cf, %bb.x ], [ %i.do, %.noexc25 ]
  %i.dr = phi ptr [ %i.ch, %bb.x ], [ %i.dn, %.noexc25 ]
  %i.ds = add nuw nsw i32 %.057, 1                ; 2 uses
  %i.dt = icmp slt i32 %i.ds, %i.dp
  br i1 %i.dt, label %bb.w, label %._crit_edge, !llvm.loop !115

_ZNSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EED2Ev.exit31.loopexit: ; preds = %_ZNKSt6vectorISt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EED2Ev.exit31

_ZNSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EED2Ev.exit31.loopexit.split-lp: ; preds = %bb.z
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EED2Ev.exit31

bb.ab:                                            ; preds = %._crit_edge
  %i.du = load i32, ptr %5, align 8, !tbaa !116
  store i32 %i.du, ptr %i.a, align 8, !tbaa !116
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.dx = load ptr, ptr %i.dv, align 8, !tbaa !72 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !117
  %i.ea = load <2 x ptr>, ptr %i.dw, align 8, !tbaa !118
  store <2 x ptr> %i.ea, ptr %i.dv, align 8, !tbaa !118
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !117
  store ptr %i.ec, ptr %i.dy, align 8, !tbaa !117
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dx, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dw, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ed = ptrtoint ptr %i.dz to i64
  %i.ee = ptrtoint ptr %i.dx to i64
  %i.ef = sub i64 %i.ed, %i.ee
  call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef %i.ef) #27
  br label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i

_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i:               ; preds = %bb.ac, %bb.ab
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.ei = load ptr, ptr %i.eg, align 8, !tbaa !72 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !117
  %i.el = load <2 x ptr>, ptr %i.eh, align 8, !tbaa !118
  store <2 x ptr> %i.el, ptr %i.eg, align 8, !tbaa !118
  %i.em = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !117
  store ptr %i.en, ptr %i.ej, align 8, !tbaa !117
  %.not.i.i.i.i.i4.i = icmp eq ptr %i.ei, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eh, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i4.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %_ZN8LightGBM8BruckMapaSEOS0_.exit

_ZN8LightGBM8BruckMapaSEOS0_.exit:                ; preds = %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i
  %i.eo = ptrtoint ptr %i.ek to i64
  %i.ep = ptrtoint ptr %i.ei to i64
  %i.eq = sub i64 %i.eo, %i.ep
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef %i.eq) #27
  %.pr50 = load ptr, ptr %i.eh, align 8, !tbaa !72 ; 3 uses
  %.not.i.i.i.i32 = icmp eq ptr %.pr50, null
  br i1 %.not.i.i.i.i32, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZN8LightGBM8BruckMapaSEOS0_.exit
  %i.er = load ptr, ptr %i.em, align 8, !tbaa !117
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = ptrtoint ptr %.pr50 to i64
  %i.eu = sub i64 %i.es, %i.et
  call void @_ZdlPvm(ptr noundef nonnull %.pr50, i64 noundef %i.eu) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i, %bb.ad, %_ZN8LightGBM8BruckMapaSEOS0_.exit
  %i.ev = load ptr, ptr %i.dw, align 8, !tbaa !72 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i1.i, label %_ZN8LightGBM8BruckMapD2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.ew = load ptr, ptr %i.eb, align 8, !tbaa !117
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = ptrtoint ptr %i.ev to i64
  %i.ez = sub i64 %i.ex, %i.ey
  call void @_ZdlPvm(ptr noundef nonnull %i.ev, i64 noundef %i.ez) #27
  br label %_ZN8LightGBM8BruckMapD2Ev.exit

_ZN8LightGBM8BruckMapD2Ev.exit:                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.fa = load i32, ptr %0, align 8, !tbaa !69
  %i.fb = load i32, ptr %i.k, align 4, !tbaa !67
  invoke void @_ZN8LightGBM19RecursiveHalvingMap9ConstructEii(ptr dead_on_unwind nonnull writable sret(%"class.LightGBM::RecursiveHalvingMap") align 8 %6, i32 noundef %i.fa, i32 noundef %i.fb)
          to label %bb.af unwind label %bb.ao

bb.af:                                            ; preds = %_ZN8LightGBM8BruckMapD2Ev.exit
  %i.fc = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN8LightGBM19RecursiveHalvingMapaSEOS0_(ptr noundef nonnull align 8 dereferenceable(136) %i.b, ptr noundef nonnull align 8 dereferenceable(136) %6) #26 ; 0 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !72 ; 3 uses
  %.not.i.i.i.i33 = icmp eq ptr %i.fe, null
  br i1 %.not.i.i.i.i33, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i34, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ff = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !117
  %i.fh = ptrtoint ptr %i.fg to i64
  %i.fi = ptrtoint ptr %i.fe to i64
  %i.fj = sub i64 %i.fh, %i.fi
  call void @_ZdlPvm(ptr noundef nonnull %i.fe, i64 noundef %i.fj) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i34

_ZNSt6vectorIiSaIiEED2Ev.exit.i34:                ; preds = %bb.ag, %bb.af
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !72 ; 3 uses
  %.not.i.i.i1.i35 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i1.i35, label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i34
  %i.fm = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !117
  %i.fo = ptrtoint ptr %i.fn to i64
  %i.fp = ptrtoint ptr %i.fl to i64
  %i.fq = sub i64 %i.fo, %i.fp
  call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef %i.fq) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i

_ZNSt6vectorIiSaIiEED2Ev.exit2.i:                 ; preds = %bb.ah, %_ZNSt6vectorIiSaIiEED2Ev.exit.i34
  %i.fr = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !72 ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i3.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit4.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2.i
  %i.ft = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !117
  %i.fv = ptrtoint ptr %i.fu to i64
  %i.fw = ptrtoint ptr %i.fs to i64
  %i.fx = sub i64 %i.fv, %i.fw
  call void @_ZdlPvm(ptr noundef nonnull %i.fs, i64 noundef %i.fx) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit4.i

_ZNSt6vectorIiSaIiEED2Ev.exit4.i:                 ; preds = %bb.ai, %_ZNSt6vectorIiSaIiEED2Ev.exit2.i
  %i.fy = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !72 ; 3 uses
  %.not.i.i.i5.i = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i5.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit6.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit4.i
  %i.ga = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !117
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = ptrtoint ptr %i.fz to i64
  %i.ge = sub i64 %i.gc, %i.gd
  call void @_ZdlPvm(ptr noundef nonnull %i.fz, i64 noundef %i.ge) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit6.i

_ZNSt6vectorIiSaIiEED2Ev.exit6.i:                 ; preds = %bb.aj, %_ZNSt6vectorIiSaIiEED2Ev.exit4.i
  %i.gf = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !72 ; 3 uses
  %.not.i.i.i7.i = icmp eq ptr %i.gg, null
  br i1 %.not.i.i.i7.i, label %_ZN8LightGBM19RecursiveHalvingMapD2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit6.i
  %i.gh = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !117
  %i.gj = ptrtoint ptr %i.gi to i64
  %i.gk = ptrtoint ptr %i.gg to i64
  %i.gl = sub i64 %i.gj, %i.gk
  call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef %i.gl) #27
  br label %_ZN8LightGBM19RecursiveHalvingMapD2Ev.exit

_ZN8LightGBM19RecursiveHalvingMapD2Ev.exit:       ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit6.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  invoke void @_ZN8LightGBM7Linkers9ConstructEv(ptr noundef nonnull align 8 dereferenceable(304) %0)
          to label %bb.al unwind label %bb.f

bb.al:                                            ; preds = %_ZN8LightGBM19RecursiveHalvingMapD2Ev.exit
  %i.gm = load ptr, ptr %i.f, align 8, !tbaa !90  ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !96 ; 2 uses
  %i.go = icmp eq i32 %i.gn, -1
  br i1 %i.go, label %_ZN8LightGBM9TcpSocket5CloseEv.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gp = invoke i32 @close(i32 noundef %i.gn)
          to label %.noexc36 unwind label %bb.f   ; 0 uses

.noexc36:                                         ; preds = %bb.am
  store i32 -1, ptr %i.gm, align 4, !tbaa !96
  br label %_ZN8LightGBM9TcpSocket5CloseEv.exit

_ZN8LightGBM9TcpSocket5CloseEv.exit:              ; preds = %.noexc36, %bb.al
  store i8 1, ptr %i.g, align 8, !tbaa !9
  ret void

bb.an:                                            ; preds = %._crit_edge
  %i.gq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZNSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EED2Ev.exit31

bb.ao:                                            ; preds = %_ZN8LightGBM8BruckMapD2Ev.exit
end_hunk_0
begin_hunk_1_@_ZN8LightGBM7Linkers16ParseMachineListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_:bb.a
bb.d:                                             ; preds = %bb.c
  %i.y = invoke noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %bb.i unwind label %bb.e       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #30
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !131 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.ac, null
  br i1 %.not.i2.i, label %_ZNSt14_Function_baseD2Ev.exit3.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = invoke noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3.i unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #30
  unreachable

_ZNSt14_Function_baseD2Ev.exit3.i:                ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %.body

bb.i:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.ag = load ptr, ptr %i.i, align 8, !tbaa !132
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !132
  %i.aj = icmp eq ptr %i.ag, %i.ai
  br i1 %i.aj, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ak = load ptr, ptr %2, align 8, !tbaa !85
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.13, ptr noundef %i.ak)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit3.i, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.al, %bb.k ], [ %i.ab, %_ZNSt14_Function_baseD2Ev.exit3.i ]
  call void @_ZN8LightGBM10TextReaderImED2Ev(ptr noundef nonnull align 8 dead_on_return(116) dereferenceable(116) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.cx

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.am = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.m unwind label %bb.k       ; 0 uses

bb.m:                                             ; preds = %bb.l
  call void @_ZN8LightGBM10TextReaderImED2Ev(ptr noundef nonnull align 8 dead_on_return(116) dereferenceable(116) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.s

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.an = load ptr, ptr %1, align 8, !tbaa !85
  invoke fastcc void @_ZN8LightGBM6CommonL5SplitB5cxx11EPKcc(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef %i.an, i8 noundef signext 44)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ao = load ptr, ptr %4, align 16, !tbaa !71   ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !70 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 16, !tbaa !133
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.au = load <2 x ptr>, ptr %6, align 16, !tbaa !132
  store <2 x ptr> %i.au, ptr %4, align 16, !tbaa !132
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 16, !tbaa !133
  store ptr %i.aw, ptr %i.ar, align 16, !tbaa !133
  %.not4.i.i.i.i.i = icmp eq ptr %i.ao, %i.aq
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.o, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.bc, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.ao, %bb.o ] ; 3 uses
  %i.ax = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !85 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !86
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bc, %i.aq
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !134

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, %bb.o
  %.not.i.i1.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.bd = ptrtoint ptr %i.as to i64
  %i.be = ptrtoint ptr %i.ao to i64
  %i.bf = sub i64 %i.bd, %i.be
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.bf) #27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.p
  %i.bg = load ptr, ptr %6, align 16, !tbaa !71   ; 3 uses
  %i.bh = load ptr, ptr %i.at, align 8, !tbaa !70 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bg, %i.bh
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bn, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.bg, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit ] ; 3 uses
  %i.bi = load ptr, ptr %.05.i.i.i, align 8, !tbaa !85 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !86
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bn, %i.bh
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !134

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 16, !tbaa !71
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit
  %i.bo = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bg, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bp = load ptr, ptr %i.av, align 16, !tbaa !133
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = sub i64 %i.bq, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bs) #27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.s

bb.r:                                             ; preds = %bb.n
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.cx

bb.s:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.m
  %i.bu = load ptr, ptr %4, align 16, !tbaa !132  ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !132 ; 2 uses
  %.not163208 = icmp eq ptr %i.bu, %i.bw
  br i1 %.not163208, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ck = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 8 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %bb.cj
  %.sroa.0159.0209 = phi ptr [ %i.bu, %.lr.ph ], [ %i.ni, %bb.cj ] ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store ptr %i.bx, ptr %8, align 8, !tbaa !122
  %i.cw = load ptr, ptr %.sroa.0159.0209, align 8, !tbaa !85 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0159.0209, i64 8 ; 4 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !119 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i64 %i.cy, ptr %i.d, align 8, !tbaa !135
  %i.cz = icmp ugt i64 %i.cy, 15
  br i1 %i.cz, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.t
  %i.da = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc unwind label %bb.al    ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.da, ptr %8, align 8, !tbaa !85
  %i.db = load i64, ptr %i.d, align 8, !tbaa !135
  store i64 %i.db, ptr %i.bx, align 8, !tbaa !86
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.t
  %i.dc = phi ptr [ %i.da, %.noexc ], [ %i.bx, %bb.t ] ; 2 uses
  switch i64 %i.cy, label %bb.v [
    i64 1, label %bb.u
    i64 0, label %bb.w
  ]

bb.u:                                             ; preds = %._crit_edge.i.i
  %i.dd = load i8, ptr %i.cw, align 1, !tbaa !86
  store i8 %i.dd, ptr %i.dc, align 1, !tbaa !86
  br label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dc, ptr align 1 %i.cw, i64 %i.cy, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %._crit_edge.i.i
  %i.de = load i64, ptr %i.d, align 8, !tbaa !135 ; 2 uses
  store i64 %i.de, ptr %i.by, align 8, !tbaa !119
  %i.df = load ptr, ptr %8, align 8, !tbaa !85
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.de
  store i8 0, ptr %i.dg, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  invoke fastcc void @_ZN8LightGBM6CommonL4TrimENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %7, ptr nofree noundef align 8 dereferenceable(32) %8)
          to label %bb.x unwind label %bb.am

bb.x:                                             ; preds = %bb.w
  %i.dh = load ptr, ptr %.sroa.0159.0209, align 8, !tbaa !85 ; 6 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0159.0209, i64 16 ; 4 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  %i.dk = load ptr, ptr %7, align 8, !tbaa !85    ; 6 uses
  %i.dl = icmp eq ptr %i.dk, %i.bz                ; 2 uses
  br i1 %i.dj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.x
  br i1 %i.dl, label %bb.y, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.x
  br i1 %i.dl, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dm = load i64, ptr %i.ca, align 8, !tbaa !119 ; 3 uses
  %i.dn = icmp ult i64 %i.dm, 16
  call void @llvm.assume(i1 %i.dn)
  %.not21.i = icmp eq ptr %7, %.sroa.0159.0209
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.z, !prof !136

bb.z:                                             ; preds = %bb.y
  switch i64 %i.dm, label %bb.ab [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z
  %i.do = load i8, ptr %i.dk, align 1, !tbaa !86
  store i8 %i.do, ptr %i.dh, align 1, !tbaa !86
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dh, ptr align 1 %i.dk, i64 %i.dm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.ab, %bb.aa, %bb.z
  %i.dp = load i64, ptr %i.ca, align 8, !tbaa !119 ; 2 uses
  store i64 %i.dp, ptr %i.cx, align 8, !tbaa !119
  %i.dq = load ptr, ptr %.sroa.0159.0209, align 8, !tbaa !85
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dp
  store i8 0, ptr %i.dr, align 1, !tbaa !86
  %.pre.i = load ptr, ptr %7, align 8, !tbaa !85
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.dk, ptr %.sroa.0159.0209, align 8, !tbaa !85
  %i.ds = load i64, ptr %i.ca, align 8, !tbaa !119
  store i64 %i.ds, ptr %i.cx, align 8, !tbaa !119
  %i.dt = load i64, ptr %i.bz, align 8, !tbaa !86
  store i64 %i.dt, ptr %i.di, align 8, !tbaa !86
  br label %bb.ad

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.du = load i64, ptr %i.di, align 8, !tbaa !86
  store ptr %i.dk, ptr %.sroa.0159.0209, align 8, !tbaa !85
  %i.dv = load i64, ptr %i.ca, align 8, !tbaa !119
  store i64 %i.dv, ptr %i.cx, align 8, !tbaa !119
  %i.dw = load i64, ptr %i.bz, align 8, !tbaa !86
  store i64 %i.dw, ptr %i.di, align 8, !tbaa !86
  %.not.i = icmp eq ptr %i.dh, null
  br i1 %.not.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.dh, ptr %7, align 8, !tbaa !85
  store i64 %i.du, ptr %i.bz, align 8, !tbaa !86
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.bz, ptr %7, align 8, !tbaa !85
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.ac, %bb.ad
  %i.dx = phi ptr [ %i.dh, %bb.ac ], [ %i.bz, %bb.ad ], [ %i.dk, %bb.y ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.ca, align 8, !tbaa !119
  store i8 0, ptr %i.dx, align 1, !tbaa !86
  %i.dy = load ptr, ptr %7, align 8, !tbaa !85    ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.bz
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ea = load i64, ptr %i.bz, align 8, !tbaa !86
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.eb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ec = load ptr, ptr %8, align 8, !tbaa !85    ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.bx
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ee = load i64, ptr %i.bx, align 8, !tbaa !86
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.eg = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0159.0209, ptr noundef nonnull @.str.14, i64 noundef 0, i64 noundef 5) #26
  %.not = icmp eq i64 %i.eg, -1
  br i1 %.not, label %bb.ao, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.eh = load ptr, ptr %.sroa.0159.0209, align 8, !tbaa !85
  invoke fastcc void @_ZN8LightGBM6CommonL5SplitB5cxx11EPKcc(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef %i.eh, i8 noundef signext 61)
          to label %bb.af unwind label %bb.an

bb.af:                                            ; preds = %bb.ae
  %i.ei = load ptr, ptr %9, align 8, !tbaa !71    ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !85
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %bb.af
  %.017.i = phi ptr [ %i.ek, %bb.af ], [ %i.em, %bb.ah ] ; 5 uses
  %i.el = load i8, ptr %.017.i, align 1, !tbaa !86
  switch i8 %i.el, label %.loopexit.i [
    i8 32, label %bb.ah
    i8 45, label %bb.ai
    i8 43, label %bb.aj
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.em = getelementptr inbounds nuw i8, ptr %.017.i, i64 1
  br label %bb.ag, !llvm.loop !137

bb.ai:                                            ; preds = %bb.ag
  %i.en = getelementptr inbounds nuw i8, ptr %.017.i, i64 1
  br label %.loopexit.i

bb.aj:                                            ; preds = %bb.ag
  %i.eo = getelementptr inbounds nuw i8, ptr %.017.i, i64 1
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.ag, %bb.aj, %bb.ai
  %.1.i = phi ptr [ %i.en, %bb.ai ], [ %i.eo, %bb.aj ], [ %.017.i, %bb.ag ] ; 2 uses
  %.016.i = phi i32 [ -1, %bb.ai ], [ 1, %bb.aj ], [ 1, %bb.ag ]
  %i.ep = load i8, ptr %.1.i, align 1, !tbaa !86  ; 2 uses
  %i.eq = add i8 %i.ep, -48
  %or.cond22.i = icmp ult i8 %i.eq, 10
  br i1 %or.cond22.i, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %.loopexit.i, %.lr.ph.i
  %i.er = phi i8 [ %i.ew, %.lr.ph.i ], [ %i.ep, %.loopexit.i ]
  %.024.i = phi i32 [ %i.eu, %.lr.ph.i ], [ 0, %.loopexit.i ]
  %.223.i = phi ptr [ %i.ev, %.lr.ph.i ], [ %.1.i, %.loopexit.i ]
  %i.es = mul nsw i32 %.024.i, 10
  %narrow.i = add nsw i8 %i.er, -48
end_hunk_1
begin_hunk_2_@_ZN8LightGBM7Linkers16ParseMachineListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_:bb.a

bb.bk:                                            ; preds = %._crit_edge.i.i103
  %i.jo = load i8, ptr %i.jh, align 1, !tbaa !86
  store i8 %i.jo, ptr %i.jn, align 1, !tbaa !86
  br label %bb.bm

bb.bl:                                            ; preds = %._crit_edge.i.i103
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jn, ptr align 1 %i.jh, i64 %i.jj, i1 false)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %._crit_edge.i.i103
  %i.jp = load i64, ptr %i.b, align 8, !tbaa !135 ; 2 uses
  store i64 %i.jp, ptr %i.cp, align 8, !tbaa !119
  %i.jq = load ptr, ptr %15, align 8, !tbaa !85
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.jp
  store i8 0, ptr %i.jr, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  invoke fastcc void @_ZN8LightGBM6CommonL4TrimENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %14, ptr nofree noundef align 8 dereferenceable(32) %15)
          to label %bb.bn unwind label %bb.cn

bb.bn:                                            ; preds = %bb.bm
  %i.js = load ptr, ptr %10, align 16, !tbaa !71  ; 5 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 32 ; 5 uses
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !85 ; 6 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 48 ; 2 uses
  %i.jw = icmp eq ptr %i.ju, %i.jv
  %i.jx = load ptr, ptr %14, align 8, !tbaa !85   ; 6 uses
  %i.jy = icmp eq ptr %i.jx, %i.cq                ; 2 uses
  br i1 %i.jw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i113: ; preds = %bb.bn
  br i1 %i.jy, label %bb.bo, label %.thread.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i107: ; preds = %bb.bn
  br i1 %i.jy, label %bb.bo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i108

bb.bo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i107, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i113
  %i.jz = load i64, ptr %i.cr, align 8, !tbaa !119 ; 3 uses
  %i.ka = icmp ult i64 %i.jz, 16
  call void @llvm.assume(i1 %i.ka)
  %.not21.i110 = icmp eq ptr %14, %i.jt
  br i1 %.not21.i110, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit115, label %bb.bp, !prof !136

bb.bp:                                            ; preds = %bb.bo
  switch i64 %i.jz, label %bb.br [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i111
    i64 1, label %bb.bq
  ]

bb.bq:                                            ; preds = %bb.bp
  %i.kb = load i8, ptr %i.jx, align 1, !tbaa !86
  store i8 %i.kb, ptr %i.ju, align 1, !tbaa !86
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i111

bb.br:                                            ; preds = %bb.bp
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ju, ptr align 1 %i.jx, i64 %i.jz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i111: ; preds = %bb.br, %bb.bq, %bb.bp
  %i.kc = load i64, ptr %i.cr, align 8, !tbaa !119 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.js, i64 40
  store i64 %i.kc, ptr %i.kd, align 8, !tbaa !119
  %i.ke = load ptr, ptr %i.jt, align 8, !tbaa !85
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.kc
  store i8 0, ptr %i.kf, align 1, !tbaa !86
  %.pre.i112 = load ptr, ptr %14, align 8, !tbaa !85
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit115

.thread.i114:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i113
  %i.kg = getelementptr inbounds nuw i8, ptr %i.js, i64 40
  store ptr %i.jx, ptr %i.jt, align 8, !tbaa !85
  %i.kh = load <2 x i64>, ptr %i.cr, align 8, !tbaa !86
  store <2 x i64> %i.kh, ptr %i.kg, align 8, !tbaa !86
  br label %bb.bt

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i108: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i107
  %i.ki = load i64, ptr %i.jv, align 8, !tbaa !86
  store ptr %i.jx, ptr %i.jt, align 8, !tbaa !85
  %i.kj = getelementptr inbounds nuw i8, ptr %i.js, i64 40
  %i.kk = load <2 x i64>, ptr %i.cr, align 8, !tbaa !86
  store <2 x i64> %i.kk, ptr %i.kj, align 8, !tbaa !86
  %.not.i109 = icmp eq ptr %i.ju, null
  br i1 %.not.i109, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i108
  store ptr %i.ju, ptr %14, align 8, !tbaa !85
  store i64 %i.ki, ptr %i.cq, align 8, !tbaa !86
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit115

bb.bt:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i108, %.thread.i114
  store ptr %i.cq, ptr %14, align 8, !tbaa !85
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit115: ; preds = %bb.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i111, %bb.bs, %bb.bt
  %i.kl = phi ptr [ %i.ju, %bb.bs ], [ %i.cq, %bb.bt ], [ %i.jx, %bb.bo ], [ %.pre.i112, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i111 ]
  store i64 0, ptr %i.cr, align 8, !tbaa !119
  store i8 0, ptr %i.kl, align 1, !tbaa !86
  %i.km = load ptr, ptr %14, align 8, !tbaa !85   ; 2 uses
  %i.kn = icmp eq ptr %i.km, %i.cq
  br i1 %i.kn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit115
  %i.ko = load i64, ptr %i.cq, align 8, !tbaa !86
  %i.kp = add i64 %i.ko, 1
  call void @_ZdlPvm(ptr noundef %i.km, i64 noundef %i.kp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit115, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116
  %i.kq = load ptr, ptr %15, align 8, !tbaa !85   ; 2 uses
  %i.kr = icmp eq ptr %i.kq, %i.co
  br i1 %i.kr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118
  %i.ks = load i64, ptr %i.co, align 8, !tbaa !86
  %i.kt = add i64 %i.ks, 1
  call void @_ZdlPvm(ptr noundef %i.kq, i64 noundef %i.kt) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.ku = load ptr, ptr %10, align 16, !tbaa !71  ; 3 uses
  %i.kv = load ptr, ptr %i.ci, align 8, !tbaa !70 ; 8 uses
  %i.kw = load ptr, ptr %i.cs, align 8, !tbaa !133
  %.not.i122 = icmp eq ptr %i.kv, %i.kw
  br i1 %.not.i122, label %bb.bx, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kv, i64 16 ; 3 uses
  store ptr %i.kx, ptr %i.kv, align 8, !tbaa !122
  %i.ky = load ptr, ptr %i.ku, align 8, !tbaa !85 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !119 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.la, ptr %i.a, align 8, !tbaa !135
  %i.lb = icmp ugt i64 %i.la, 15
  br i1 %i.lb, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.bu
  %i.lc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.kv, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc123 unwind label %bb.ay ; 2 uses

.noexc123:                                        ; preds = %.noexc.i.i
  store ptr %i.lc, ptr %i.kv, align 8, !tbaa !85
  %i.ld = load i64, ptr %i.a, align 8, !tbaa !135
  store i64 %i.ld, ptr %i.kx, align 8, !tbaa !86
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc123, %bb.bu
  %i.le = phi ptr [ %i.lc, %.noexc123 ], [ %i.kx, %bb.bu ] ; 2 uses
  switch i64 %i.la, label %bb.bw [
    i64 1, label %bb.bv
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.bv:                                            ; preds = %._crit_edge.i.i.i
  %i.lf = load i8, ptr %i.ky, align 1, !tbaa !86
  store i8 %i.lf, ptr %i.le, align 1, !tbaa !86
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.bw:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.le, ptr align 1 %i.ky, i64 %i.la, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.bw, %bb.bv, %._crit_edge.i.i.i
  %i.lg = load i64, ptr %i.a, align 8, !tbaa !135 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  store i64 %i.lg, ptr %i.lh, align 8, !tbaa !119
  %i.li = load ptr, ptr %i.kv, align 8, !tbaa !85
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.lg
  store i8 0, ptr %i.lj, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.lk = load ptr, ptr %i.ci, align 8, !tbaa !70
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 32
  store ptr %i.ll, ptr %i.ci, align 8, !tbaa !70
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.bx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr %i.kv, ptr noundef nonnull align 8 dereferenceable(32) %i.ku)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %bb.ay

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.bx
  %i.lm = load ptr, ptr %10, align 16, !tbaa !71
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 32
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !85
  %i.lp = call i64 @__isoc23_strtol(ptr noundef nonnull %i.lo, ptr noundef null, i32 noundef 10) #26, !inline_history !139
  %i.lq = trunc i64 %i.lp to i32                  ; 2 uses
  %i.lr = load ptr, ptr %i.cu, align 8, !tbaa !140 ; 4 uses
  %i.ls = load ptr, ptr %i.cv, align 8, !tbaa !117
  %.not.i.i125 = icmp eq ptr %i.lr, %i.ls
  br i1 %.not.i.i125, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  store i32 %i.lq, ptr %i.lr, align 4, !tbaa !68
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 4
  store ptr %i.lt, ptr %i.cu, align 8, !tbaa !140
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.jt3

bb.bz:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.lu = load ptr, ptr %i.ct, align 8, !tbaa !72 ; 4 uses
  %i.lv = ptrtoint ptr %i.lr to i64
  %i.lw = ptrtoint ptr %i.lu to i64
  %i.lx = sub i64 %i.lv, %i.lw                    ; 6 uses
  %i.ly = icmp eq i64 %i.lx, 9223372036854775804
  br i1 %i.ly, label %bb.ca, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #29
          to label %.noexc126 unwind label %.loopexit.split-lp

.noexc126:                                        ; preds = %bb.ca
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bz
  %i.lz = ashr exact i64 %i.lx, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.lz, i64 1)
  %i.ma = add nsw i64 %.sroa.speculated.i.i.i.i, %i.lz ; 2 uses
  %i.mb = icmp ult i64 %i.ma, %i.lz
  %i.mc = call i64 @llvm.umin.i64(i64 %i.ma, i64 2305843009213693951)
  %i.md = select i1 %i.mb, i64 2305843009213693951, i64 %i.mc ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.md, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.me = shl nuw nsw i64 %i.md, 2
  %i.mf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.me) #28
          to label %.noexc127 unwind label %.loopexit ; 4 uses

.noexc127:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.mg = getelementptr inbounds i8, ptr %i.mf, i64 %i.lx ; 2 uses
  store i32 %i.lq, ptr %i.mg, align 4, !tbaa !68
  %i.mh = icmp sgt i64 %i.lx, 0
  br i1 %i.mh, label %bb.cb, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.cb:                                            ; preds = %.noexc127
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.mf, ptr align 4 %i.lu, i64 %i.lx, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.cb, %.noexc127
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mg, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.lu, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.lu, i64 noundef %i.lx) #27
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.cc, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.mf, ptr %i.ct, align 8, !tbaa !72
  store ptr %i.mi, ptr %i.cu, align 8, !tbaa !140
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %i.md
  store ptr %i.mj, ptr %i.cv, align 8, !tbaa !117
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.jt3

_ZNSt6vectorIiSaIiEE9push_backEOi.exit.jt3:       ; preds = %bb.by, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit83
  %.016.jt3 = phi i32 [ 0, %bb.by ], [ 3, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit83 ], [ 0, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ]
  %i.mk = load ptr, ptr %10, align 16, !tbaa !71  ; 5 uses
  %i.ml = load ptr, ptr %i.cd, align 8, !tbaa !70 ; 2 uses
  %.not4.i.i.i128.jt3 = icmp eq ptr %i.mk, %i.ml
  br i1 %.not4.i.i.i128.jt3, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i136.jt3, label %.lr.ph.i.i.i129.preheader

_ZNSt6vectorIiSaIiEE9push_backEOi.exit.jt2:       ; preds = %bb.ax
  %i.mm = load ptr, ptr %10, align 16, !tbaa !71  ; 5 uses
  %i.mn = load ptr, ptr %i.cd, align 8, !tbaa !70 ; 2 uses
  %.not4.i.i.i128.jt2 = icmp eq ptr %i.mm, %i.mn
  br i1 %.not4.i.i.i128.jt2, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i136.jt2, label %.lr.ph.i.i.i129.preheader

.lr.ph.i.i.i129.preheader:                        ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.jt3, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.jt2
  %i.mo = phi ptr [ %i.ml, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.jt3 ], [ %i.mn, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.jt2 ]
  %i.mp = phi ptr [ %i.mk, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.jt3 ], [ %i.mm, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.jt2 ]
  %.016324 = phi i32 [ %.016.jt3, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.jt3 ], [ 2, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.jt2 ]
  br label %.lr.ph.i.i.i129

.lr.ph.i.i.i129:                                  ; preds = %.lr.ph.i.i.i129.preheader, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i132
  %.05.i.i.i130 = phi ptr [ %i.mv, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i132 ], [ %i.mp, %.lr.ph.i.i.i129.preheader ] ; 3 uses
  %i.mq = load ptr, ptr %.05.i.i.i130, align 8, !tbaa !85 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %.05.i.i.i130, i64 16 ; 2 uses
  %i.ms = icmp eq ptr %i.mq, %i.mr
  br i1 %i.ms, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i131: ; preds = %.lr.ph.i.i.i129
  %i.mt = load i64, ptr %i.mr, align 8, !tbaa !86
  %i.mu = add i64 %i.mt, 1
  call void @_ZdlPvm(ptr noundef %i.mq, i64 noundef %i.mu) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i132

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i132: ; preds = %.lr.ph.i.i.i129, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i131
  %i.mv = getelementptr inbounds nuw i8, ptr %.05.i.i.i130, i64 32 ; 2 uses
  %.not.i.i.i133 = icmp eq ptr %i.mv, %i.mo
  br i1 %.not.i.i.i133, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i134, label %.lr.ph.i.i.i129, !llvm.loop !134

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i134: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i132
  %.pr.i135 = load ptr, ptr %10, align 16, !tbaa !71 ; 3 uses
  %.not.i.i1.i137 = icmp eq ptr %.pr.i135, null
  br i1 %.not.i.i1.i137, label %bb.cg, label %bb.cd

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i136.jt3: ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.jt3
  %.not.i.i1.i137.jt3 = icmp eq ptr %i.mk, null
  br i1 %.not.i.i1.i137.jt3, label %bb.ch, label %bb.ce

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i136.jt2: ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.jt2
  %.not.i.i1.i137.jt2 = icmp eq ptr %i.mm, null
  br i1 %.not.i.i1.i137.jt2, label %bb.ci, label %bb.cf

bb.cd:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i134
  %i.mw = load ptr, ptr %i.ce, align 16, !tbaa !133
  %i.mx = ptrtoint ptr %i.mw to i64
  %i.my = ptrtoint ptr %.pr.i135 to i64
  %i.mz = sub i64 %i.mx, %i.my
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i135, i64 noundef %i.mz) #27
  br label %bb.cg

bb.ce:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i136.jt3
  %i.na = load ptr, ptr %i.ce, align 16, !tbaa !133
  %i.nb = ptrtoint ptr %i.na to i64
  %i.nc = ptrtoint ptr %i.mk to i64
  %i.nd = sub i64 %i.nb, %i.nc
  call void @_ZdlPvm(ptr noundef nonnull %i.mk, i64 noundef %i.nd) #27
  br label %bb.ch

bb.cf:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i136.jt2
  %i.ne = load ptr, ptr %i.ce, align 16, !tbaa !133
  %i.nf = ptrtoint ptr %i.ne to i64
  %i.ng = ptrtoint ptr %i.mm to i64
  %i.nh = sub i64 %i.nf, %i.ng
  call void @_ZdlPvm(ptr noundef nonnull %i.mm, i64 noundef %i.nh) #27
  br label %bb.ci

bb.cg:                                            ; preds = %bb.cd, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i134
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  switch i32 %.016324, label %._crit_edge [
    i32 0, label %bb.cj
    i32 3, label %bb.cj
  ]

bb.ch:                                            ; preds = %bb.ce, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i136.jt3
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.cj

bb.ci:                                            ; preds = %bb.cf, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i136.jt2
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %._crit_edge

bb.cj:                                            ; preds = %bb.ch, %.thread, %bb.cg, %bb.cg
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.0159.0209, i64 32 ; 2 uses
  %.not163 = icmp eq ptr %i.ni, %i.bw
  br i1 %.not163, label %._crit_edge, label %bb.t

bb.ck:                                            ; preds = %.noexc.i85
  %i.nj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

bb.cl:                                            ; preds = %bb.bc
  %i.nk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nl = load ptr, ptr %13, align 8, !tbaa !85   ; 2 uses
  %i.nm = icmp eq ptr %i.nl, %i.ck
  br i1 %i.nm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140: ; preds = %bb.cl
  %i.nn = load i64, ptr %i.ck, align 8, !tbaa !86
  %i.no = add i64 %i.nn, 1
  call void @_ZdlPvm(ptr noundef %i.nl, i64 noundef %i.no) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142: ; preds = %bb.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140, %bb.ck
  %.pn32 = phi { ptr, i32 } [ %i.nj, %bb.ck ], [ %i.nk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140 ], [ %i.nk, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.co

bb.cm:                                            ; preds = %.noexc.i104
  %i.np = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

bb.cn:                                            ; preds = %bb.bm
  %i.nq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nr = load ptr, ptr %15, align 8, !tbaa !85   ; 2 uses
  %i.ns = icmp eq ptr %i.nr, %i.co
  br i1 %i.ns, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143: ; preds = %bb.cn
  %i.nt = load i64, ptr %i.co, align 8, !tbaa !86
  %i.nu = add i64 %i.nt, 1
  call void @_ZdlPvm(ptr noundef %i.nr, i64 noundef %i.nu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143, %bb.cm
  %.pn34 = phi { ptr, i32 } [ %i.np, %bb.cm ], [ %i.nq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143 ], [ %i.nq, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.co

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

.loopexit.split-lp:                               ; preds = %bb.ca
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.co:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, %bb.ay, %bb.av
  %.pn36 = phi { ptr, i32 } [ %i.hq, %bb.ay ], [ %i.hg, %bb.av ], [ %.pn34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145 ], [ %.pn32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #26
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.au
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %bb.co ], [ %i.hf, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.cx

._crit_edge:                                      ; preds = %bb.cg, %bb.cj, %bb.ci, %bb.s
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !132 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !132 ; 2 uses
  %i.nz = icmp eq ptr %i.nw, %i.ny
  br i1 %i.nz, label %bb.cq, label %bb.cs

bb.cq:                                            ; preds = %._crit_edge
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.16)
          to label %._crit_edge214 unwind label %bb.cr

._crit_edge214:                                   ; preds = %bb.cq
  %.pre = load ptr, ptr %i.nx, align 8, !tbaa !70
  %.pre215 = load ptr, ptr %i.nv, align 8, !tbaa !71
  br label %bb.cs

bb.cr:                                            ; preds = %bb.ct, %bb.cq
  %i.oa = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.cs:                                            ; preds = %._crit_edge214, %._crit_edge
  %i.ob = phi ptr [ %.pre215, %._crit_edge214 ], [ %i.nw, %._crit_edge ]
  %i.oc = phi ptr [ %.pre, %._crit_edge214 ], [ %i.ny, %._crit_edge ]
  %i.od = ptrtoint ptr %i.oc to i64
  %i.oe = ptrtoint ptr %i.ob to i64
  %i.of = sub i64 %i.od, %i.oe
  %i.og = ashr exact i64 %i.of, 5                 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !67
end_hunk_2
begin_hunk_3_@_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev:bb.a
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #27
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 48) #27
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !87

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i, %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !88
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !89
  %i.m = shl i64 %i.l, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %i.m, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.n = load ptr, ptr %0, align 8, !tbaa !88     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i
  %i.q = load i64, ptr %i.k, align 8, !tbaa !89
  %i.r = shl i64 %i.q, 3
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #27
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef %0, ...) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.b = alloca [1024 x i8], align 16             ; 7 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.c = call i32 @vsnprintf(ptr noundef nonnull %i.b, i64 noundef 1024, ptr noundef %0, ptr noundef nonnull %1) #26 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !152
  %i.e = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.d, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.b) #31 ; 0 uses
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !152
  %i.g = call i32 @fflush(ptr noundef %i.f)       ; 0 uses
  %i.h = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !122
  %i.j = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.j, ptr %i.a, align 8, !tbaa !135
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.l = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.l, ptr %2, align 8, !tbaa !85
  %i.m = load i64, ptr %i.a, align 8, !tbaa !135
  store i64 %i.m, ptr %i.i, align 8, !tbaa !86
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.n = phi ptr [ %i.l, %.noexc ], [ %i.i, %bb.a ] ; 2 uses
  switch i64 %i.j, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.o = load i8, ptr %i.b, align 16, !tbaa !86
  store i8 %i.o, ptr %i.n, align 1, !tbaa !86
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 16 %i.b, i64 %i.j, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !135  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !119
  %i.r = load ptr, ptr %2, align 8, !tbaa !85
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
          to label %bb.i unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.v = load ptr, ptr %2, align 8, !tbaa !85     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.i
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.x = load i64, ptr %i.i, align 8, !tbaa !86
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br i1 %.0, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br i1 %.0, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.h) #26
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn8 = phi { ptr, i32 } [ %.pn9, %bb.g ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM9TcpSocketC2Ev(ptr noundef nonnull align 4 dereferenceable(4) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #26 ; 3 uses
  store i32 %i.a, ptr %0, align 4, !tbaa !96
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.3)
  br label %_ZN8LightGBM9TcpSocket12ConfigSocketEv.exit

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i32 @setsockopt(i32 noundef %i.a, i32 noundef 1, i32 noundef 8, ptr noundef nonnull @_ZN8LightGBM12SocketConfigL17kSocketBufferSizeE, i32 noundef 4) #26
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN8LightGBM3Log7WarningEPKcz(ptr noundef nonnull @.str.4)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.d = load i32, ptr %0, align 4, !tbaa !96
  %i.e = tail call i32 @setsockopt(i32 noundef %i.d, i32 noundef 1, i32 noundef 7, ptr noundef nonnull @_ZN8LightGBM12SocketConfigL17kSocketBufferSizeE, i32 noundef 4) #26
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZN8LightGBM3Log7WarningEPKcz(ptr noundef nonnull @.str.5)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.f = load i32, ptr %0, align 4, !tbaa !96
  %i.g = tail call i32 @setsockopt(i32 noundef %i.f, i32 noundef 6, i32 noundef 1, ptr noundef nonnull @_ZN8LightGBM12SocketConfigL8kNoDelayE, i32 noundef 4) #26
  %.not2.i = icmp eq i32 %i.g, 0
  br i1 %.not2.i, label %_ZN8LightGBM9TcpSocket12ConfigSocketEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZN8LightGBM3Log7WarningEPKcz(ptr noundef nonnull @.str.6)
  br label %_ZN8LightGBM9TcpSocket12ConfigSocketEv.exit

_ZN8LightGBM9TcpSocket12ConfigSocketEv.exit:      ; preds = %bb.h, %bb.g, %bb.b
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN8LightGBM7Linkers7TryBindEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(304) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %struct.sockaddr_in, align 16       ; 7 uses
  %3 = alloca %struct.sockaddr_in, align 16       ; 4 uses
  tail call void (ptr, ...) @_ZN8LightGBM3Log4InfoEPKcz(ptr noundef nonnull @.str.32, i32 noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.d = call i32 @inet_pton(i32 noundef 2, ptr noundef nonnull @.str.35, ptr noundef nonnull %i.c) #26 ; 0 uses
  store i16 2, ptr %2, align 16, !tbaa !91
  %i.e = trunc i32 %1 to i16
  %rev.i.i.i = call noundef i16 @llvm.bswap.i16(i16 %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %rev.i.i.i, ptr %i.f, align 2, !tbaa !95
  %i.g = load <2 x i64>, ptr %2, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store <2 x i64> %i.g, ptr %3, align 16
  %i.h = load i32, ptr %i.b, align 4, !tbaa !96
  %i.i = call i32 @bind(i32 noundef %i.h, ptr noundef nonnull %3, i32 noundef 16) #26
  %i.j = icmp eq i32 %i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void (ptr, ...) @_ZN8LightGBM3Log4InfoEPKcz(ptr noundef nonnull @.str.33, i32 noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.34, i32 noundef %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare void @_ZN8LightGBM8BruckMap9ConstructEii(ptr dead_on_unwind writable sret(%"class.LightGBM::BruckMap") align 8, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8LightGBM8BruckMapD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !72   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIiSaIiEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !117
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2

_ZNSt6vectorIiSaIiEED2Ev.exit2:                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.c
  ret void
}

declare void @_ZN8LightGBM19RecursiveHalvingMap9ConstructEii(ptr dead_on_unwind writable sret(%"class.LightGBM::RecursiveHalvingMap") align 8, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(136) ptr @_ZN8LightGBM19RecursiveHalvingMapaSEOS0_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(136) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !72   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !117
  %i.f = load <2 x ptr>, ptr %i.b, align 8, !tbaa !118
  store <2 x ptr> %i.f, ptr %i.a, align 8, !tbaa !118
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !117
  store ptr %i.h, ptr %i.d, align 8, !tbaa !117
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = ptrtoint ptr %i.c to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.k) #27
  br label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit

_ZNSt6vectorIiSaIiEEaSEOS1_.exit:                 ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !72   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !117
  %i.q = load <2 x ptr>, ptr %i.m, align 8, !tbaa !118
  store <2 x ptr> %i.q, ptr %i.l, align 8, !tbaa !118
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !117
  store ptr %i.s, ptr %i.o, align 8, !tbaa !117
  %.not.i.i.i.i.i7 = icmp eq ptr %i.n, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i7, label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit8, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEEaSEOS1_.exit
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = ptrtoint ptr %i.n to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.v) #27
  br label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit8

_ZNSt6vectorIiSaIiEEaSEOS1_.exit8:                ; preds = %_ZNSt6vectorIiSaIiEEaSEOS1_.exit, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !72   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !117
  %i.ab = load <2 x ptr>, ptr %i.x, align 8, !tbaa !118
  store <2 x ptr> %i.ab, ptr %i.w, align 8, !tbaa !118
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !117
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !117
  %.not.i.i.i.i.i9 = icmp eq ptr %i.y, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i9, label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit10, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEEaSEOS1_.exit8
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = ptrtoint ptr %i.y to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ag) #27
  br label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit10

_ZNSt6vectorIiSaIiEEaSEOS1_.exit10:               ; preds = %_ZNSt6vectorIiSaIiEEaSEOS1_.exit8, %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !72 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !117
  %i.am = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !118
  store <2 x ptr> %i.am, ptr %i.ah, align 8, !tbaa !118
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !117
  store ptr %i.ao, ptr %i.ak, align 8, !tbaa !117
  %.not.i.i.i.i.i11 = icmp eq ptr %i.aj, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i11, label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit12, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEEaSEOS1_.exit10
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = ptrtoint ptr %i.aj to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ar) #27
  br label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit12

_ZNSt6vectorIiSaIiEEaSEOS1_.exit12:               ; preds = %_ZNSt6vectorIiSaIiEEaSEOS1_.exit10, %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !72 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !117
  %i.ax = load <2 x ptr>, ptr %i.at, align 8, !tbaa !118
  store <2 x ptr> %i.ax, ptr %i.as, align 8, !tbaa !118
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !117
  store ptr %i.az, ptr %i.av, align 8, !tbaa !117
  %.not.i.i.i.i.i13 = icmp eq ptr %i.au, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i13, label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit14, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEEaSEOS1_.exit12
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = ptrtoint ptr %i.au to i64
  %i.bc = sub i64 %i.ba, %i.bb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.bc) #27
  br label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit14

_ZNSt6vectorIiSaIiEEaSEOS1_.exit14:               ; preds = %_ZNSt6vectorIiSaIiEEaSEOS1_.exit12, %bb.f
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8LightGBM19RecursiveHalvingMapD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit
end_hunk_3
begin_hunk_4_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS5_S5_NS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_OT0_RKT1_:bb.a

bb.k:                                             ; preds = %_ZNSt8__detail12_NodeBuilderINS_9_IdentityEE8_S_buildINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_NS_10_AllocNodeISaINS_10_Hash_nodeIS9_Lb1EEEEEEEEPNT1_11__node_typeEOT_OT0_RKSF_.exit
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %i.bq

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit, %.lr.ph.split.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i, %bb.f, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit
  %.sroa.027.1 = phi ptr [ %i.bp, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %.sroa.024.041.us, %.lr.ph.split.us ], [ %.0.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i ], [ %.0.us.i.i, %bb.f ], [ %.sroa.024.041, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit ]
  %.sroa.4.1 = phi i8 [ 1, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ 0, %.lr.ph.split.us ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i ], [ 0, %bb.f ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.027.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !201
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !89
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !192
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #26 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !201
  invoke void @__cxa_rethrow() #29
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #30
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !89
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %2, ptr %i.t, align 8, !tbaa !194
  %i.u = load ptr, ptr %0, align 8, !tbaa !88     ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.0 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !158  ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !84
  store ptr %i.x, ptr %3, align 8, !tbaa !84
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !158
  store ptr %3, ptr %i.y, align 8, !tbaa !84
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS7_10_Hash_nodeIS5_Lb1EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !76
  store ptr %i.aa, ptr %3, align 8, !tbaa !84
  store ptr %3, ptr %i.z, align 8, !tbaa !76
  %i.ab = load ptr, ptr %3, align 8, !tbaa !84    ; 2 uses
  %.not11.i = icmp eq ptr %i.ab, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !89
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !194
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !158
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.z, ptr %i.v, align 8, !tbaa !158
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS7_10_Hash_nodeIS5_Lb1EEE.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS7_10_Hash_nodeIS5_Lb1EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !192
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !192
  ret ptr %3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !200  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !85   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !86
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #27
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 48) #27
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit, %bb.a
  ret void
}

declare noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #12

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !136

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !202
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !136

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #28 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !76   ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !76
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8, !tbaa !84  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !194
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !158  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !76
  store ptr %i.o, ptr %.031, align 8, !tbaa !84
  store ptr %.031, ptr %i.g, align 8, !tbaa !76
  store ptr %i.g, ptr %i.m, align 8, !tbaa !158
  %i.p = load ptr, ptr %.031, align 8, !tbaa !84
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.q, align 8, !tbaa !158
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !84
  store ptr %i.r, ptr %.031, align 8, !tbaa !84
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !158
  store ptr %.031, ptr %i.s, align 8, !tbaa !84
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.02530, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !203

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !88     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !89
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #27
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !89
  store ptr %.0.i, ptr %0, align 8, !tbaa !88
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS5_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !192
  %.not = icmp ugt i64 %i.b, 20
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.06.016 = load ptr, ptr %i.c, align 8, !tbaa !84 ; 3 uses
  %.not1117 = icmp eq ptr %.sroa.06.016, null
  br i1 %.not1117, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !119
  %.fr24 = freeze i64 %i.e                        ; 3 uses
  %i.f = icmp eq i64 %.fr24, 0
  %i.g = load ptr, ptr %1, align 8
  br i1 %i.f, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10.us
  %.sroa.06.018.us = phi ptr [ %.sroa.06.0.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10.us ], [ %.sroa.06.016, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.018.us, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !119
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10.us

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10.us: ; preds = %.lr.ph.split.us
  %.sroa.06.0.us = load ptr, ptr %.sroa.06.018.us, align 8, !tbaa !84 ; 2 uses
  %.not11.us = icmp eq ptr %.sroa.06.0.us, null
  br i1 %.not11.us, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %.lr.ph.split.us, !llvm.loop !204

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10
  %.sroa.06.018 = phi ptr [ %.sroa.06.0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10 ], [ %.sroa.06.016, %.lr.ph ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !119
  %i.m = icmp eq i64 %.fr24, %i.l
  br i1 %i.m, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit: ; preds = %.lr.ph.split
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !85
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.g, ptr %i.o, i64 %.fr24)
  %i.p = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.p, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10: ; preds = %.lr.ph.split, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit
  %.sroa.06.0 = load ptr, ptr %.sroa.06.018, align 8, !tbaa !84 ; 2 uses
  %.not11 = icmp eq ptr %.sroa.06.0, null
  br i1 %.not11, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %.lr.ph.split, !llvm.loop !204

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %1, align 8, !tbaa !85
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !119
  %i.t = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.q, i64 noundef %i.s, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit unwind label %bb.d ; 3 uses

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #30
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !89   ; 3 uses
  %i.y = urem i64 %i.t, %i.x                      ; 3 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !88
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.y
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !158 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !84 ; 3 uses
  %i.ad = load i64, ptr %i.r, align 8
  %.fr22.i.i = freeze i64 %i.ad                   ; 3 uses
  %i.ae = icmp eq i64 %.fr22.i.i, 0
  %i.af = load ptr, ptr %1, align 8
  %.phi.trans.insert25.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %.pre26.i.i = load i64, ptr %.phi.trans.insert25.i.i, align 8, !tbaa !194 ; 2 uses
  br i1 %i.ae, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.e, %bb.g
  %i.ag = phi i64 [ %i.an, %bb.g ], [ %.pre26.i.i, %bb.e ]
  %.0.us.i.i = phi ptr [ %i.al, %bb.g ], [ %i.ac, %bb.e ] ; 3 uses
  %i.ah = icmp eq i64 %i.t, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.us.i.i

bb.f:                                             ; preds = %.split.us.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !119
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.us.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.us.i.i: ; preds = %bb.f, %.split.us.i.i
  %i.al = load ptr, ptr %.0.us.i.i, align 8, !tbaa !84 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.al, null
  br i1 %.not18.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.us.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !194 ; 2 uses
  %i.ao = urem i64 %i.an, %i.x
  %.not19.us.i.i = icmp eq i64 %i.ao, %i.y
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, !llvm.loop !205

.split.i.i:                                       ; preds = %bb.e, %bb.i
  %i.ap = phi i64 [ %i.az, %bb.i ], [ %.pre26.i.i, %bb.e ]
  %.0.i.i = phi ptr [ %i.ax, %bb.i ], [ %i.ac, %bb.e ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.ar = icmp eq i64 %i.t, %i.ap
  br i1 %i.ar, label %bb.h, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i

bb.h:                                             ; preds = %.split.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !119
  %i.au = icmp eq i64 %.fr22.i.i, %i.at
  br i1 %i.au, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i: ; preds = %bb.h
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !85
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.af, ptr %i.av, i64 %.fr22.i.i)
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.aw, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i, %bb.h, %.split.i.i
  %i.ax = load ptr, ptr %.0.i.i, align 8, !tbaa !84 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.ax, null
  br i1 %.not18.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !194 ; 2 uses
  %i.ba = urem i64 %i.az, %i.x
  %.not19.i.i = icmp eq i64 %i.ba, %i.y
  br i1 %.not19.i.i, label %.split.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, !llvm.loop !205

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10.us, %.lr.ph.split.us, %bb.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i, %bb.g, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.us.i.i, %bb.f, %bb.b, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit
  %.sroa.06.1 = phi ptr [ null, %bb.b ], [ null, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10.us ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.us.i.i ], [ %.0.us.i.i, %bb.f ], [ null, %bb.g ], [ %.0.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i ], [ null, %bb.i ], [ %.sroa.06.018.us, %.lr.ph.split.us ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10 ], [ %.sroa.06.018, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit ]
  ret ptr %.sroa.06.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #14

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #14

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #15

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #11

end_hunk_4
begin_hunk_5_@_ZN8LightGBM6CommonL5SplitB5cxx11EPKcc:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

bb.ab:                                            ; preds = %bb.z
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cs = load ptr, ptr %5, align 8, !tbaa !85    ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.bl
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.ab
  %i.cu = load i64, ptr %i.bl, align 8, !tbaa !86
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.cq, %bb.aa ], [ %i.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52 ], [ %i.cr, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.ac

._crit_edge.thread:                               ; preds = %.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %._crit_edge
  %i.cw = load ptr, ptr %3, align 8, !tbaa !85    ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.d
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %._crit_edge.thread
  %i.cy = load i64, ptr %i.d, align 8, !tbaa !86
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %._crit_edge.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  %.pn26.pn = phi { ptr, i32 } [ %.pn26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ] ; 2 uses
  %i.da = load ptr, ptr %3, align 8, !tbaa !85    ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.d
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.ac
  %i.dc = load i64, ptr %i.d, align 8, !tbaa !86
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58, %bb.n
  %.pn26.pn.pn = phi { ptr, i32 } [ %i.az, %bb.n ], [ %.pn26.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58 ], [ %.pn26.pn, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #26
  resume { ptr, i32 } %.pn26.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN8LightGBM6CommonL4TrimENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !119
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !122
  %i.e = load ptr, ptr %1, align 8, !tbaa !85     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %i.f, align 8
  store i8 %i.h, ptr %i.d, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.b
  store ptr %i.e, ptr %0, align 8, !tbaa !85
  %i.i = load i64, ptr %i.f, align 8, !tbaa !86
  store i64 %i.i, ptr %i.d, align 8, !tbaa !86
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !119
  store ptr %i.f, ptr %1, align 8, !tbaa !85
  store i8 0, ptr %i.f, align 8, !tbaa !86
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.k = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.30, i64 noundef -1, i64 noundef 6) #26
  %i.l = add i64 %i.k, 1                          ; 4 uses
  %i.m = load i64, ptr %i.a, align 8, !tbaa !119  ; 2 uses
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.31, i64 noundef %i.l, i64 noundef %i.m) #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit: ; preds = %bb.d
  store i64 %i.l, ptr %i.a, align 8, !tbaa !119
  %i.o = load ptr, ptr %1, align 8, !tbaa !85
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l
  store i8 0, ptr %i.p, align 1, !tbaa !86
  %i.q = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.30, i64 noundef 0, i64 noundef 6) #26 ; 2 uses
  switch i64 %i.q, label %bb.g [
    i64 -1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit1
  ]

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit
  store i64 0, ptr %i.a, align 8, !tbaa !119
  %i.r = load ptr, ptr %1, align 8, !tbaa !85
  store i8 0, ptr %i.r, align 1, !tbaa !86
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit1

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit
  %i.s = load i64, ptr %i.a, align 8, !tbaa !119
  %spec.select.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.q, i64 %i.s)
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %spec.select.i.i)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit, %bb.f, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !122
  %i.u = load ptr, ptr %1, align 8, !tbaa !85     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i2

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit1
  %i.x = load i64, ptr %i.a, align 8, !tbaa !119  ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit1
  store ptr %i.u, ptr %0, align 8, !tbaa !85
  %i.aa = load i64, ptr %i.v, align 8, !tbaa !86
  store i64 %i.aa, ptr %i.t, align 8, !tbaa !86
  %.pre = load i64, ptr %i.a, align 8, !tbaa !119
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit3: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i2
  %i.ab = phi i64 [ %i.x, %bb.h ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i2 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !119
  store ptr %i.v, ptr %1, align 8, !tbaa !85
  store i64 0, ptr %i.a, align 8, !tbaa !119
  store i8 0, ptr %i.v, align 8, !tbaa !86
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  ret void
}

declare void @_ZN8LightGBM17VirtualFileReader4MakeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.48") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM3Log5DebugEPKcz(ptr noundef %0, ...) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.va_start.p0(ptr nonnull %1)
  call void @_ZN8LightGBM3Log5WriteENS_8LogLevelEPKcS3_P13__va_list_tag(i32 noundef 2, ptr noundef nonnull @.str.23, ptr noundef %0, ptr noundef nonnull %1)
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #12

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN8LightGBM10TextReaderImE17ReadAllAndProcessERKSt8functionIFvmPKcmEE(ptr noundef nonnull align 8 dereferenceable(116) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 9 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::function.60", align 8  ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !119
  %i.i = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef 0, i64 noundef %i.h, ptr noundef nonnull @.str.18, i64 noundef 0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i64 0, ptr %i.d, align 8, !tbaa !135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  store i64 0, ptr %i.e, align 8, !tbaa !135
  %i.j = load ptr, ptr %0, align 8, !tbaa !120
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = load i32, ptr %i.k, align 8, !tbaa !125
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.n, align 8
  %i.o = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28 ; 5 uses
  store ptr %1, ptr %i.o, align 16, !tbaa !226
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !228
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.d, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !228
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %0, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !126
  store ptr %i.o, ptr %2, align 8, !tbaa !208
  store ptr @_ZNSt17_Function_handlerIFmPKcmEZN8LightGBM10TextReaderImE17ReadAllAndProcessERKSt8functionIFvmS1_mEEEUlS1_mE_E9_M_invokeERKSt9_Any_dataOS1_Om, ptr %i.m, align 8, !tbaa !230
  store ptr @_ZNSt17_Function_handlerIFmPKcmEZN8LightGBM10TextReaderImE17ReadAllAndProcessERKSt8functionIFvmS1_mEEEUlS1_mE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation, ptr %3, align 8, !tbaa !131
  %i.p = invoke noundef i64 @_ZN8LightGBM14PipelineReader4ReadEPKciRKSt8functionIFmS2_mEE(ptr noundef %i.j, i32 noundef %i.l, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.g       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %3, align 8, !tbaa !131    ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #30
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.u = load i64, ptr %i.g, align 8, !tbaa !119
  %.not = icmp eq i64 %i.u, 0
  br i1 %.not, label %bb.j, label %bb.e

bb.e:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.v = load ptr, ptr %0, align 8, !tbaa !120
  call void (ptr, ...) @_ZN8LightGBM3Log4InfoEPKcz(ptr noundef nonnull @.str.24, ptr noundef %i.v)
  %i.w = load i64, ptr %i.d, align 8, !tbaa !135
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !85
  %i.y = load i64, ptr %i.g, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.w, ptr %i.a, align 8, !tbaa !135
  store ptr %i.x, ptr %i.b, align 8, !tbaa !232
  store i64 %i.y, ptr %i.c, align 8, !tbaa !135
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !131
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %bb.f, label %_ZNKSt8functionIFvmPKcmEEclEmS1_m.exit

bb.f:                                             ; preds = %bb.e
  call void @_ZSt25__throw_bad_function_callv() #29
  unreachable

_ZNKSt8functionIFvmPKcmEEclEmS1_m.exit:           ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !128
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c), !inline_history !233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ad = load i64, ptr %i.d, align 8, !tbaa !135
  %i.ae = add i64 %i.ad, 1
  store i64 %i.ae, ptr %i.d, align 8, !tbaa !135
  %i.af = load i64, ptr %i.g, align 8, !tbaa !119
  %i.ag = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef 0, i64 noundef %i.af, ptr noundef nonnull @.str.18, i64 noundef 0) ; 0 uses
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = load ptr, ptr %3, align 8, !tbaa !131   ; 2 uses
  %.not.i4 = icmp eq ptr %i.ai, null
  br i1 %.not.i4, label %_ZNSt14_Function_baseD2Ev.exit5, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = invoke noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit5 unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #30
  unreachable

_ZNSt14_Function_baseD2Ev.exit5:                  ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  resume { ptr, i32 } %i.ah

bb.j:                                             ; preds = %_ZNKSt8functionIFvmPKcmEEclEmS1_m.exit, %_ZNSt14_Function_baseD2Ev.exit
  %i.am = load i64, ptr %i.d, align 8, !tbaa !135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  ret i64 %i.am
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN8LightGBM14PipelineReader4ReadEPKciRKSt8functionIFmS2_mEE(ptr noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.std::unique_ptr.67", align 8 ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::unique_ptr.48", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::vector.64", align 8    ; 12 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.std::thread", align 8       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.e, ptr %5, align 8, !tbaa !122
  %i.f = icmp eq ptr %0, null
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.1) #29
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i64 %i.g, ptr %i.c, align 8, !tbaa !135
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc29 unwind label %bb.i   ; 2 uses

.noexc29:                                         ; preds = %.noexc.i
  store ptr %i.i, ptr %5, align 8, !tbaa !85
  %i.j = load i64, ptr %i.c, align 8, !tbaa !135
  store i64 %i.j, ptr %i.e, align 8, !tbaa !86
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc29, %bb.c
  %i.k = phi ptr [ %i.i, %.noexc29 ], [ %i.e, %bb.c ] ; 2 uses
  switch i64 %i.g, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %0, align 1, !tbaa !86
  store i8 %i.l, ptr %i.k, align 1, !tbaa !86
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr nonnull align 1 %0, i64 %i.g, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.m = load i64, ptr %i.c, align 8, !tbaa !135  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !119
  %i.o = load ptr, ptr %5, align 8, !tbaa !85
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  invoke void @_ZN8LightGBM17VirtualFileReader4MakeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.48") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %5, align 8, !tbaa !85     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.s = load i64, ptr %i.e, align 8, !tbaa !86
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.u = load ptr, ptr %4, align 8, !tbaa !234    ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !170
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = invoke noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br i1 %i.y, label %bb.l, label %_ZNSt6vectorIcSaIcEED2Ev.exit44

bb.i:                                             ; preds = %.noexc.i, %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

bb.j:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %5, align 8, !tbaa !85    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.e
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.j
  %i.ad = load i64, ptr %i.e, align 8, !tbaa !86
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30, %bb.i
  %.pn = phi { ptr, i32 } [ %i.z, %bb.i ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ], [ %i.aa, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZNSt10unique_ptrIN8LightGBM17VirtualFileReaderESt14default_deleteIS1_EED2Ev.exit52

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit48

bb.l:                                             ; preds = %bb.h
  %i.ag = invoke noalias noundef nonnull dereferenceable(16777216) ptr @_Znwm(i64 noundef 16777216) #28
          to label %bb.m unwind label %bb.p       ; 8 uses

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16777216 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16777216) %i.ag, i8 0, i64 16777216, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.ai = invoke noalias noundef nonnull dereferenceable(16777216) ptr @_Znwm(i64 noundef 16777216) #28
          to label %bb.n unwind label %_ZNSt6vectorIcSaIcEED2Ev.exit46.thread ; 3 uses

bb.n:                                             ; preds = %bb.m
  store ptr %i.ai, ptr %6, align 8, !tbaa !236
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16777216 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !238
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16777216) %i.ai, i8 0, i64 16777216, i1 false)
  store ptr %i.aj, ptr %i.al, align 8, !tbaa !239
  %i.am = icmp sgt i32 %1, 0
  br i1 %i.am, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.an = load ptr, ptr %4, align 8, !tbaa !234   ; 2 uses
  %i.ao = zext nneg i32 %1 to i64
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !170
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = invoke noundef i64 %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull %i.ag, i64 noundef %i.ao)
          to label %bb.r unwind label %bb.q       ; 0 uses

bb.p:                                             ; preds = %bb.l
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit48

_ZNSt6vectorIcSaIcEED2Ev.exit46.thread:           ; preds = %bb.m
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.aj

bb.q:                                             ; preds = %bb.r, %bb.o
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.r:                                             ; preds = %bb.o, %bb.n
  %i.aw = load ptr, ptr %4, align 8, !tbaa !234   ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !170
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
end_hunk_5
begin_hunk_6_@_ZN8LightGBM14PipelineReader4ReadEPKciRKSt8functionIFmS2_mEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %.not.i.i.i43 = icmp eq ptr %.sroa.055.0.lcssa, null
  br i1 %.not.i.i.i43, label %_ZNSt6vectorIcSaIcEED2Ev.exit44, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit
  %i.cc = ptrtoint ptr %.sroa.15.0.lcssa to i64
  %i.cd = ptrtoint ptr %.sroa.055.0.lcssa to i64
  %i.ce = sub i64 %i.cc, %i.cd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.055.0.lcssa, i64 noundef %i.ce) #27
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit44

bb.ah:                                            ; preds = %.body, %bb.q
  %.sroa.15.1 = phi ptr [ %.sroa.15.092, %.body ], [ %i.ah, %bb.q ]
  %.sroa.055.1 = phi ptr [ %.sroa.055.094, %.body ], [ %i.ag, %bb.q ] ; 2 uses
  %.pn22.pn = phi { ptr, i32 } [ %.pn22, %.body ], [ %i.av, %bb.q ] ; 2 uses
  %i.cf = load ptr, ptr %6, align 8, !tbaa !236   ; 3 uses
  %.not.i.i.i45 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i45, label %_ZNSt6vectorIcSaIcEED2Ev.exit46, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cg = load ptr, ptr %i.ak, align 8, !tbaa !238
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %i.cf to i64
  %i.cj = sub i64 %i.ch, %i.ci
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.cj) #27
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit46

_ZNSt6vectorIcSaIcEED2Ev.exit46:                  ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %.not.i.i.i47 = icmp eq ptr %.sroa.055.1, null
  br i1 %.not.i.i.i47, label %_ZNSt6vectorIcSaIcEED2Ev.exit48, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit46.thread, %_ZNSt6vectorIcSaIcEED2Ev.exit46
  %.pn22.pn.pn70 = phi { ptr, i32 } [ %i.au, %_ZNSt6vectorIcSaIcEED2Ev.exit46.thread ], [ %.pn22.pn, %_ZNSt6vectorIcSaIcEED2Ev.exit46 ]
  %.sroa.055.269 = phi ptr [ %i.ag, %_ZNSt6vectorIcSaIcEED2Ev.exit46.thread ], [ %.sroa.055.1, %_ZNSt6vectorIcSaIcEED2Ev.exit46 ] ; 2 uses
  %.sroa.15.268 = phi ptr [ %i.ah, %_ZNSt6vectorIcSaIcEED2Ev.exit46.thread ], [ %.sroa.15.1, %_ZNSt6vectorIcSaIcEED2Ev.exit46 ]
  %i.ck = ptrtoint ptr %.sroa.15.268 to i64
  %i.cl = ptrtoint ptr %.sroa.055.269 to i64
  %i.cm = sub i64 %i.ck, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.055.269, i64 noundef %i.cm) #27
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit48

_ZNSt6vectorIcSaIcEED2Ev.exit44:                  ; preds = %bb.ag, %_ZNSt6vectorIcSaIcEED2Ev.exit, %bb.h
  %.010 = phi i64 [ 0, %bb.h ], [ %.011.lcssa, %_ZNSt6vectorIcSaIcEED2Ev.exit ], [ %.011.lcssa, %bb.ag ]
  %i.cn = load ptr, ptr %4, align 8, !tbaa !234   ; 3 uses
  %.not.i49 = icmp eq ptr %i.cn, null
  br i1 %.not.i49, label %_ZNSt10unique_ptrIN8LightGBM17VirtualFileReaderESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN8LightGBM17VirtualFileReaderEEclEPS1_.exit.i

_ZNKSt14default_deleteIN8LightGBM17VirtualFileReaderEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit44
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !170
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(8) %i.cn) #26, !inline_history !247
  br label %_ZNSt10unique_ptrIN8LightGBM17VirtualFileReaderESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN8LightGBM17VirtualFileReaderESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit44, %_ZNKSt14default_deleteIN8LightGBM17VirtualFileReaderEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret i64 %.010

_ZNSt6vectorIcSaIcEED2Ev.exit48:                  ; preds = %bb.p, %_ZNSt6vectorIcSaIcEED2Ev.exit46, %bb.aj, %bb.k
  %.pn22.pn.pn.pn.pn = phi { ptr, i32 } [ %i.af, %bb.k ], [ %i.at, %bb.p ], [ %.pn22.pn, %_ZNSt6vectorIcSaIcEED2Ev.exit46 ], [ %.pn22.pn.pn70, %bb.aj ] ; 2 uses
  %i.cr = load ptr, ptr %4, align 8, !tbaa !234   ; 3 uses
  %.not.i50 = icmp eq ptr %i.cr, null
  br i1 %.not.i50, label %_ZNSt10unique_ptrIN8LightGBM17VirtualFileReaderESt14default_deleteIS1_EED2Ev.exit52, label %_ZNKSt14default_deleteIN8LightGBM17VirtualFileReaderEEclEPS1_.exit.i51

_ZNKSt14default_deleteIN8LightGBM17VirtualFileReaderEEclEPS1_.exit.i51: ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit48
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !170
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(8) %i.cr) #26, !inline_history !247
  br label %_ZNSt10unique_ptrIN8LightGBM17VirtualFileReaderESt14default_deleteIS1_EED2Ev.exit52

_ZNSt10unique_ptrIN8LightGBM17VirtualFileReaderESt14default_deleteIS1_EED2Ev.exit52: ; preds = %_ZNKSt14default_deleteIN8LightGBM17VirtualFileReaderEEclEPS1_.exit.i51, %_ZNSt6vectorIcSaIcEED2Ev.exit48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %.pn22.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ], [ %.pn22.pn.pn.pn.pn, %_ZNSt6vectorIcSaIcEED2Ev.exit48 ], [ %.pn22.pn.pn.pn.pn, %_ZNKSt14default_deleteIN8LightGBM17VirtualFileReaderEEclEPS1_.exit.i51 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %.pn22.pn.pn.pn.pn.pn
}

declare void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8), ptr nofree noundef align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread24_M_thread_deps_never_runEv() #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN8LightGBM14PipelineReader4ReadEPKciRKSt8functionIFmS6_mEEEUlvE_EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN8LightGBM14PipelineReader4ReadEPKciRKSt8functionIFmS6_mEEEUlvE_EEEEE6_M_runEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !248, !nonnull !214, !align !250
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !234  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !251, !nonnull !214, !align !250
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !236
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !170
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef i64 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.g, i64 noundef 16777216), !inline_history !252
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !253, !nonnull !214, !align !250
  store i64 %i.k, ptr %i.l, align 8, !tbaa !135
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNSt17_Function_handlerIFmPKcmEZN8LightGBM10TextReaderImE17ReadAllAndProcessERKSt8functionIFvmS1_mEEEUlS1_mE_E9_M_invokeERKSt9_Any_dataOS1_Om(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !208
  %i.b = load ptr, ptr %1, align 8, !tbaa !232
  %i.c = load i64, ptr %2, align 8, !tbaa !135
  %i.d = tail call noundef i64 @_ZZN8LightGBM10TextReaderImE17ReadAllAndProcessERKSt8functionIFvmPKcmEEENKUlS4_mE_clES4_m(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef %i.b, i64 noundef %i.c)
  ret i64 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFmPKcmEZN8LightGBM10TextReaderImE17ReadAllAndProcessERKSt8functionIFvmS1_mEEEUlS1_mE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM10TextReaderImE17ReadAllAndProcessERKSt8functionIFvmPKcmEEEUlS6_mE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN8LightGBM10TextReaderImE17ReadAllAndProcessERKSt8functionIFvmPKcmEEEUlS4_mE_, ptr %0, align 8, !tbaa !254
  br label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM10TextReaderImE17ReadAllAndProcessERKSt8functionIFvmPKcmEEEUlS6_mE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !208
  store ptr %i.a, ptr %0, align 8, !tbaa !208
  br label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM10TextReaderImE17ReadAllAndProcessERKSt8functionIFvmPKcmEEEUlS6_mE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !208
  %i.c = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !tbaa.struct !256
  store ptr %i.c, ptr %0, align 8, !tbaa !208
  br label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM10TextReaderImE17ReadAllAndProcessERKSt8functionIFvmPKcmEEEUlS6_mE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !208    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM10TextReaderImE17ReadAllAndProcessERKSt8functionIFvmPKcmEEEUlS6_mE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 32) #27
  br label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM10TextReaderImE17ReadAllAndProcessERKSt8functionIFvmPKcmEEEUlS6_mE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN8LightGBM10TextReaderImE17ReadAllAndProcessERKSt8functionIFvmPKcmEEEUlS6_mE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i64 @_ZZN8LightGBM10TextReaderImE17ReadAllAndProcessERKSt8functionIFvmPKcmEEENKUlS4_mE_clES4_m(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !257  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 5 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !119
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = load i8, ptr %1, align 1, !tbaa !86
  %i.n = icmp eq i8 %i.m, 10
  %spec.select = zext i1 %i.n to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.036 = phi i64 [ 0, %bb.a ], [ %spec.select, %bb.b ] ; 4 uses
  %i.o = icmp ult i64 %.036, %2
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.critedge
  %.057 = phi i64 [ 0, %.lr.ph ], [ %.1, %.critedge ] ; 2 uses
  %.13756 = phi i64 [ %.036, %.lr.ph ], [ %.2.a, %.critedge ] ; 5 uses
  %.13955 = phi i64 [ %.036, %.lr.ph ], [ %.3.a, %.critedge ] ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.13955
  %i.r = load i8, ptr %i.q, align 1, !tbaa !86
  switch i8 %i.r, label %bb.n [
    i8 10, label %bb.e
    i8 13, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.s = load i64, ptr %i.j, align 8, !tbaa !119  ; 2 uses
  %.not45 = icmp eq i64 %i.s, 0
  br i1 %.not45, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = sub i64 %.13955, %.13756                 ; 2 uses
  %i.u = sub i64 4611686018427387903, %i.s
  %i.v = icmp ult i64 %i.u, %i.t
  br i1 %i.v, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.13756
  %i.x = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef %i.w, i64 noundef %i.t) ; 0 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !259, !nonnull !214, !align !250 ; 3 uses
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !260, !nonnull !214, !align !250
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !135
  %i.ab = load ptr, ptr %i.i, align 8, !tbaa !85
  %i.ac = load i64, ptr %i.j, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %i.aa, ptr %i.d, align 8, !tbaa !135
  store ptr %i.ab, ptr %i.e, align 8, !tbaa !232
  store i64 %i.ac, ptr %i.f, align 8, !tbaa !135
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !131
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %bb.h, label %_ZNKSt8functionIFvmPKcmEEclEmS1_m.exit

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  call void @_ZSt25__throw_bad_function_callv() #29
  unreachable

_ZNKSt8functionIFvmPKcmEEclEmS1_m.exit:           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !128
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f), !inline_history !233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ah = load i64, ptr %i.j, align 8, !tbaa !119
  %i.ai = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef 0, i64 noundef %i.ah, ptr noundef nonnull @.str.18, i64 noundef 0) ; 0 uses
  br label %bb.k

bb.i:                                             ; preds = %bb.e
  %i.aj = load ptr, ptr %0, align 8, !tbaa !259, !nonnull !214, !align !250 ; 3 uses
  %i.ak = load ptr, ptr %i.p, align 8, !tbaa !260, !nonnull !214, !align !250
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !135
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %.13756
  %i.an = sub i64 %.13955, %.13756
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.al, ptr %i.a, align 8, !tbaa !135
  store ptr %i.am, ptr %i.b, align 8, !tbaa !232
  store i64 %i.an, ptr %i.c, align 8, !tbaa !135
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !131
  %.not.i.i46 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i46, label %bb.j, label %_ZNKSt8functionIFvmPKcmEEclEmS1_m.exit47

bb.j:                                             ; preds = %bb.i
  call void @_ZSt25__throw_bad_function_callv() #29
  unreachable

_ZNKSt8functionIFvmPKcmEEclEmS1_m.exit47:         ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !128
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c), !inline_history !233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt8functionIFvmPKcmEEclEmS1_m.exit47, %_ZNKSt8functionIFvmPKcmEEclEmS1_m.exit
  %i.as = add i64 %.057, 1                        ; 2 uses
  %i.at = load ptr, ptr %i.p, align 8, !tbaa !260, !nonnull !214, !align !250 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !135
  %i.av = add i64 %i.au, 1
  store i64 %i.av, ptr %i.at, align 8, !tbaa !135
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %.240.in = phi i64 [ %.13955, %bb.k ], [ %.240, %bb.m ]
  %.240 = add nuw i64 %.240.in, 1                 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %.240
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !86
  switch i8 %i.ax, label %.critedge [
    i8 10, label %bb.m
    i8 13, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %bb.l
  %i.ay = icmp ult i64 %.240, %2
  br i1 %i.ay, label %bb.l, label %._crit_edge.loopexit, !llvm.loop !261

bb.n:                                             ; preds = %bb.d
  %i.az = add nuw i64 %.13955, 1
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %bb.n
  %.3.a = phi i64 [ %i.az, %bb.n ], [ %.240, %bb.l ] ; 2 uses
  %.2.a = phi i64 [ %.13756, %bb.n ], [ %.240, %bb.l ] ; 2 uses
  %.1 = phi i64 [ %.057, %bb.n ], [ %i.as, %bb.l ] ; 2 uses
  %i.ba = icmp ult i64 %.3.a, %2
  br i1 %i.ba, label %bb.d, label %._crit_edge, !llvm.loop !262

._crit_edge.loopexit:                             ; preds = %bb.m
  %i.bb = add nuw i64 %.13955, 1
  %umax.le = call i64 @llvm.umax.i64(i64 %2, i64 %i.bb)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.critedge, %._crit_edge.loopexit, %bb.c
  %.137.lcssa = phi i64 [ %.036, %bb.c ], [ %umax.le, %._crit_edge.loopexit ], [ %.2.a, %.critedge ] ; 3 uses
  %.0.lcssa = phi i64 [ 0, %bb.c ], [ %i.as, %._crit_edge.loopexit ], [ %.1, %.critedge ]
  %.not = icmp eq i64 %.137.lcssa, %2
  br i1 %.not, label %bb.q, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bc = sub i64 %2, %.137.lcssa                 ; 2 uses
  %i.bd = load i64, ptr %i.j, align 8, !tbaa !119
  %i.be = sub i64 4611686018427387903, %i.bd
  %i.bf = icmp ult i64 %i.be, %i.bc
  br i1 %i.bf, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit48

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit48: ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 %.137.lcssa
  %i.bh = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef %i.bg, i64 noundef %i.bc) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit48, %._crit_edge
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !263, !nonnull !214, !align !250 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !135 ; 2 uses
  %i.bl = add i64 %i.bk, %2                       ; 3 uses
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !135
  %i.bm = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !124 ; 2 uses
  %i.bo = udiv i64 %i.bk, %i.bn
  %i.bp = udiv i64 %i.bl, %i.bn
  %i.bq = icmp ult i64 %i.bo, %i.bp
  br i1 %i.bq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.br = uitofp i64 %i.bl to double
  %i.bs = fmul nnan double %i.br, f0x3E10000000000000
  %i.bt = load ptr, ptr %i.h, align 8, !tbaa !120
  call void (ptr, ...) @_ZN8LightGBM3Log5DebugEPKcz(ptr noundef nonnull @.str.26, double noundef %i.bs, ptr noundef %i.bt)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  ret i64 %.0.lcssa
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFvmPKcmEZN8LightGBM10TextReaderImE12ReadAllLinesEvEUlmS1_mE_E9_M_invokeERKSt9_Any_dataOmOS1_SB_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !232
  %i.d = load i64, ptr %3, align 8, !tbaa !135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.a, align 8, !tbaa !232
  store i64 %i.d, ptr %i.b, align 8, !tbaa !135
  %i.e = load ptr, ptr %0, align 8, !tbaa !264
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRPKcRmEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFvmPKcmEZN8LightGBM10TextReaderImE12ReadAllLinesEvEUlmS1_mE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM10TextReaderImE12ReadAllLinesEvEUlmPKcmE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN8LightGBM10TextReaderImE12ReadAllLinesEvEUlmPKcmE_, ptr %0, align 8, !tbaa !254
  br label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM10TextReaderImE12ReadAllLinesEvEUlmPKcmE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !208
  br label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM10TextReaderImE12ReadAllLinesEvEUlmPKcmE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !126
  store i64 %i.a, ptr %0, align 8, !tbaa !126
  br label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM10TextReaderImE12ReadAllLinesEvEUlmPKcmE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN8LightGBM10TextReaderImE12ReadAllLinesEvEUlmPKcmE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRPKcRmEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70   ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !133
  %.not = icmp eq ptr %i.c, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !232    ; 3 uses
  %i.g = load i64, ptr %2, align 8, !tbaa !135    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store ptr %i.h, ptr %i.c, align 8, !tbaa !122
  %i.i = icmp eq ptr %i.f, null
  %i.j = icmp ne i64 %i.g, 0
  %or.cond.i = and i1 %i.i, %i.j
  br i1 %or.cond.i, label %.noexc, label %bb.c

.noexc:                                           ; preds = %bb.b
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.1) #29
  unreachable

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.g, ptr %i.a, align 8, !tbaa !135
  %i.k = icmp ugt i64 %i.g, 15
  br i1 %i.k, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.l = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !85
  %i.m = load i64, ptr %i.a, align 8, !tbaa !135
  store i64 %i.m, ptr %i.h, align 8, !tbaa !86
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.c
  %i.n = phi ptr [ %i.l, %.noexc.i ], [ %i.h, %bb.c ] ; 2 uses
  switch i64 %i.g, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRPKcRmEEEvPT_DpOT0_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.o = load i8, ptr %i.f, align 1, !tbaa !86
  store i8 %i.o, ptr %i.n, align 1, !tbaa !86
  br label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRPKcRmEEEvPT_DpOT0_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.f, i64 %i.g, i1 false)
  br label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRPKcRmEEEvPT_DpOT0_.exit

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRPKcRmEEEvPT_DpOT0_.exit: ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !135  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !119
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !85
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  store ptr %i.u, ptr %i.b, align 8, !tbaa !70
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRPKcRmEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !132
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRPKcRmEEEvPT_DpOT0_.exit
  %i.v = phi ptr [ %.pre, %bb.f ], [ %i.u, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRPKcRmEEEvPT_DpOT0_.exit ]
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -32
  ret ptr %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRPKcRmEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !71     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #29
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 288230376151711743)
  %i.m = select i1 %i.k, i64 288230376151711743, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %.not.i = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.p = shl nuw nsw i64 %i.m, 5                  ; 2 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #28 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o ; 6 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !232    ; 3 uses
  %i.t = load i64, ptr %3, align 8, !tbaa !135    ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store ptr %i.u, ptr %i.r, align 8, !tbaa !122
  %i.v = icmp eq ptr %i.s, null
  %i.w = icmp ne i64 %i.t, 0
  %or.cond.i = and i1 %i.v, %i.w
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.1) #29
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.t, ptr %i.a, align 8, !tbaa !135
  %i.x = icmp ugt i64 %i.t, 15
  br i1 %i.x, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.d
  %i.y = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc27 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ; 2 uses

.noexc27:                                         ; preds = %.noexc.i
  store ptr %i.y, ptr %i.r, align 8, !tbaa !85
  %i.z = load i64, ptr %i.a, align 8, !tbaa !135
  store i64 %i.z, ptr %i.u, align 8, !tbaa !86
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc27, %bb.d
  %i.aa = phi ptr [ %i.y, %.noexc27 ], [ %i.u, %bb.d ] ; 2 uses
  switch i64 %i.t, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ab = load i8, ptr %i.s, align 1, !tbaa !86
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !86
end_hunk_6
begin_hunk_7_@_ZN8LightGBM7Linkers12PrintLinkersEv:bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !90   ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN8LightGBM7Linkers11CheckLinkerEi.exit.thread, label %_ZN8LightGBM7Linkers11CheckLinkerEi.exit

_ZN8LightGBM7Linkers11CheckLinkerEi.exit:         ; preds = %bb.b
  %i.i = load i32, ptr %i.h, align 4, !tbaa !96
  %.not = icmp eq i32 %i.i, -1
  br i1 %.not, label %_ZN8LightGBM7Linkers11CheckLinkerEi.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN8LightGBM7Linkers11CheckLinkerEi.exit
  %i.j = trunc nuw nsw i64 %indvars.iv to i32
  tail call void (ptr, ...) @_ZN8LightGBM3Log4InfoEPKcz(ptr noundef nonnull @.str.43, i32 noundef %i.j)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !67
  br label %_ZN8LightGBM7Linkers11CheckLinkerEi.exit.thread

_ZN8LightGBM7Linkers11CheckLinkerEi.exit.thread:  ; preds = %bb.b, %_ZN8LightGBM7Linkers11CheckLinkerEi.exit, %bb.c
  %i.k = phi i32 [ %i.e, %bb.b ], [ %i.e, %_ZN8LightGBM7Linkers11CheckLinkerEi.exit ], [ %.pre, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = icmp slt i64 %indvars.iv.next, %i.l
  br i1 %i.m, label %bb.b, label %._crit_edge, !llvm.loop !189
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !157  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !84 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 16) #27
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !190

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !154
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !156
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !154    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !156
  %i.l = shl i64 %i.k, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #27
  br label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !201
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !156
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !311
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #26 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !201
  invoke void @__cxa_rethrow() #29
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #30
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !156
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !154    ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !158  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !84
  store ptr %i.w, ptr %3, align 8, !tbaa !84
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !158
  store ptr %3, ptr %i.x, align 8, !tbaa !84
  br label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !157
  store ptr %i.z, ptr %3, align 8, !tbaa !84
  store ptr %3, ptr %i.y, align 8, !tbaa !157
  %i.aa = load ptr, ptr %3, align 8, !tbaa !84    ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !156
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !68
  %i.ae = sext i32 %i.ad to i64
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !158
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !158
  br label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !311
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !311
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !136

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !312
  br label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiiELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !136

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiiELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #28 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiiELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiiELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !157  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !157
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8, !tbaa !84  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !68
  %i.l = sext i32 %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !158  ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !157
  store ptr %i.p, ptr %.031, align 8, !tbaa !84
  store ptr %.031, ptr %i.g, align 8, !tbaa !157
  store ptr %i.g, ptr %i.n, align 8, !tbaa !158
  %i.q = load ptr, ptr %.031, align 8, !tbaa !84
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.r, align 8, !tbaa !158
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !84
  store ptr %i.s, ptr %.031, align 8, !tbaa !84
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !158
  store ptr %.031, ptr %i.t, align 8, !tbaa !84
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.02530, %bb.g ], [ %i.m, %bb.f ], [ %i.m, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !313

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !154    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !156
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #27
  br label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8, !tbaa !156
  store ptr %.0.i, ptr %0, align 8, !tbaa !154
  ret void
}

; Function Attrs: nounwind
declare i32 @listen(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN8LightGBM7LinkersEFviEPS4_iEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN8LightGBM7LinkersEFviEPS4_iEEEEE6_M_runEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !314
  %.unpack.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !86 ; 3 uses
  %.elt3.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.unpack4.i.i.i.i = load i64, ptr %.elt3.i.i.i.i, align 8, !tbaa !86
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.unpack4.i.i.i.i ; 2 uses
  %i.e = and i64 %.unpack.i.i.i.i, 1
  %.not.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !170
  %i.g = getelementptr i8, ptr %i.f, i64 %.unpack.i.i.i.i
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load ptr, ptr %i.h, align 8, !nosanitize !214
  br label %_ZNSt6thread8_InvokerISt5tupleIJMN8LightGBM7LinkersEFviEPS3_iEEEclEv.exit

bb.c:                                             ; preds = %bb.a
  %i.j = inttoptr i64 %.unpack.i.i.i.i to ptr
  br label %_ZNSt6thread8_InvokerISt5tupleIJMN8LightGBM7LinkersEFviEPS3_iEEEclEv.exit

_ZNSt6thread8_InvokerISt5tupleIJMN8LightGBM7LinkersEFviEPS3_iEEEclEv.exit: ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !68
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(304) %i.d, i32 noundef %i.m), !inline_history !315
  ret void
}

declare i32 @connect(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @send(i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @nanosleep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN8LightGBM7Linkers11CheckLinkerEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(304) %0, i32 noundef %1) local_unnamed_addr #19 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = sext i32 %1 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !100
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !90   ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.e, align 4, !tbaa !96
  %i.g = icmp ne i32 %i.f, -1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.g, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #20 section ".text.startup" comdat($_ZN3fmt3v1112format_facetISt6localeE2idE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn }
attributes #15 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold noreturn }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nofree nounwind }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #26 = { nounwind }
attributes #27 = { builtin nounwind }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { noreturn }
attributes #30 = { noreturn nounwind }
attributes #31 = { cold nounwind }
attributes #32 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !20, i64 208}
!10 = !{!"_ZTSN8LightGBM7LinkersE", !6, i64 0, !6, i64 4, !11, i64 8, !18, i64 64, !21, i64 200, !20, i64 208, !23, i64 216, !12, i64 240, !6, i64 264, !6, i64 268, !28, i64 272, !33, i64 296}
!11 = !{!"_ZTSN8LightGBM8BruckMapE", !6, i64 0, !12, i64 8, !12, i64 32}
!12 = !{!"_ZTSSt6vectorIiSaIiEE", !13, i64 0}
!13 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !14, i64 0}
!14 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !15, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!16 = !{!"p1 int", !17, i64 0}
!17 = !{!"any pointer", !7, i64 0}
!18 = !{!"_ZTSN8LightGBM19RecursiveHalvingMapE", !6, i64 0, !19, i64 4, !20, i64 8, !6, i64 12, !12, i64 16, !12, i64 40, !12, i64 64, !12, i64 88, !12, i64 112}
!19 = !{!"_ZTSN8LightGBM24RecursiveHalvingNodeTypeE", !7, i64 0}
!20 = !{!"bool", !7, i64 0}
!21 = !{!"_ZTSNSt6chrono8durationIdSt5ratioILl1ELl1000EEEE", !22, i64 0}
!22 = !{!"double", !7, i64 0}
!23 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !24, i64 0}
!24 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !25, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !26, i64 0}
end_hunk_7
