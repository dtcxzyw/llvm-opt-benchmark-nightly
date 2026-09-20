Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/linkers_socket?download=true
inline.NumInlined: 1391
inline.NumDeleted: 709
begin_hunk_0_@_ZN8LightGBM7LinkersC2ENS_6ConfigE:bb.a
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
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !57
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.0956
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !53
  %i.ag = load i32, ptr %i.m, align 4, !tbaa !178
  %i.ah = icmp eq i32 %i.af, %i.ag
  br i1 %i.ah, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ai = trunc i64 %.0956 to i32
  store i32 %i.ai, ptr %0, align 8, !tbaa !54
  br label %.loopexit

bb.k:                                             ; preds = %.lr.ph
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #26
  br label %bb.n

bb.l:                                             ; preds = %bb.h, %bb.i
  %i.ak = add nuw i64 %.0956, 1                   ; 2 uses
  %i.al = load ptr, ptr %i.u, align 8, !tbaa !55
  %i.am = load ptr, ptr %i.c, align 8, !tbaa !56  ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 5
  %i.ar = icmp ult i64 %i.ak, %i.aq
  br i1 %i.ar, label %.lr.ph, label %.loopexit, !llvm.loop !146

.loopexit:                                        ; preds = %bb.l, %.preheader, %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !66 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.loopexit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.au, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i ], [ %i.at, %.loopexit ] ; 4 uses
  %i.au = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !67 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !68 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !69
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #27
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 48) #27
  %.not.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i, %.loopexit
  %i.bb = load ptr, ptr %4, align 8, !tbaa !70
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !71
  %i.be = shl i64 %i.bd, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bb, i8 0, i64 %i.be, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  %i.bf = load ptr, ptr %4, align 8, !tbaa !70    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i
  %i.bi = load i64, ptr %i.bc, align 8, !tbaa !71
  %i.bj = shl i64 %i.bi, 3
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #27
  br label %bb.o

bb.n:                                             ; preds = %bb.k, %bb.g
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.k ], [ %i.z, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZNSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EED2Ev.exit31

bb.o:                                             ; preds = %bb.m, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %.pr = load i32, ptr %0, align 8, !tbaa !54
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
  %i.bm = load ptr, ptr %i.f, align 8, !tbaa !72  ; 2 uses
  store ptr %i.bl, ptr %i.f, align 8, !tbaa !72
  %.not.i.i.i.i21 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i21, label %_ZNSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN8LightGBM9TcpSocketEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN8LightGBM9TcpSocketEEclEPS1_.exit.i.i.i.i: ; preds = %bb.r
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef 4) #27
  br label %_ZNSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN8LightGBM9TcpSocketEEclEPS1_.exit.i.i.i.i, %bb.r
  %i.bn = load i32, ptr %i.m, align 4, !tbaa !178 ; 4 uses
  invoke void (ptr, ...) @_ZN8LightGBM3Log4InfoEPKcz(ptr noundef nonnull @.str.32, i32 noundef %i.bn)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %_ZNSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EED2Ev.exit
  %i.bo = load ptr, ptr %i.f, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.bq = call i32 @inet_pton(i32 noundef 2, ptr noundef nonnull @.str.35, ptr noundef nonnull %i.bp) #26 ; 0 uses
  store i16 2, ptr %2, align 16, !tbaa !76
  %i.br = trunc i32 %i.bn to i16
  %rev.i.i.i.i = call noundef i16 @llvm.bswap.i16(i16 %i.br)
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %rev.i.i.i.i, ptr %i.bs, align 2, !tbaa !77
  %i.bt = load <2 x i64>, ptr %2, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store <2 x i64> %i.bt, ptr %3, align 16
  %i.bu = load i32, ptr %i.bo, align 4, !tbaa !79
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
  %i.bx = load i32, ptr %i.k, align 4, !tbaa !52  ; 3 uses
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %.lr.ph58, label %._crit_edge

.lr.ph58:                                         ; preds = %_ZN8LightGBM7Linkers7TryBindEi.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %.pre = load ptr, ptr %i.bz, align 8, !tbaa !80
  %.pre62.a = load ptr, ptr %i.ca, align 8, !tbaa !81
  br label %bb.w

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EED2Ev.exit28, %_ZN8LightGBM7Linkers7TryBindEi.exit
  %.lcssa51 = phi i32 [ %i.bx, %_ZN8LightGBM7Linkers7TryBindEi.exit ], [ %i.dr, %_ZNSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EED2Ev.exit28 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.cb = load i32, ptr %0, align 8, !tbaa !54
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
  %i.ce = phi i32 [ %i.bx, %.lr.ph58 ], [ %i.dr, %_ZNSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EED2Ev.exit28 ]
  %i.cf = phi ptr [ %.pre62.a, %.lr.ph58 ], [ %i.ds, %_ZNSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EED2Ev.exit28 ] ; 5 uses
  %i.cg = phi ptr [ %.pre, %.lr.ph58 ], [ %i.dt, %_ZNSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EED2Ev.exit28 ] ; 3 uses
  %.057 = phi i32 [ 0, %.lr.ph58 ], [ %i.du, %_ZNSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EED2Ev.exit28 ]
  %.not.i.i24 = icmp eq ptr %i.cg, %i.cf
  br i1 %.not.i.i24, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i64 0, ptr %i.cg, align 8, !tbaa !72
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  store ptr %i.ch, ptr %i.bz, align 8, !tbaa !80
  br label %_ZNSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EED2Ev.exit28

bb.y:                                             ; preds = %bb.w
  %i.ci = load ptr, ptr %i.e, align 8, !tbaa !82  ; 10 uses
  %i.cj = ptrtoint ptr %i.cf to i64               ; 3 uses
  %i.ck = ptrtoint ptr %i.ci to i64               ; 4 uses
  %i.cl = sub i64 %i.cj, %i.ck                    ; 3 uses
  %i.cm = icmp eq i64 %i.cl, 9223372036854775800
  br i1 %i.cm, label %bb.z, label %_ZNKSt6vectorISt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #29
          to label %.noexc43.a unwind label %_ZNSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EED2Ev.exit31.loopexit.split-lp

.noexc43.a:                                       ; preds = %bb.z
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.y
  %i.cn = ashr exact i64 %i.cl, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.cn, i64 1)
  %7 = add nsw i64 %.sroa.speculated.i.i, %i.cn   ; 2 uses
  %i.co = icmp ult i64 %7, %i.cn
  %i.cp = call i64 @llvm.umin.i64(i64 %7, i64 1152921504606846975)
  %i.cq = select i1 %i.co, i64 1152921504606846975, i64 %i.cp ; 3 uses
  %.not.i.i40 = icmp ne i64 %i.cq, 0
  call void @llvm.assume(i1 %.not.i.i40)
  %i.cr = shl nuw nsw i64 %i.cq, 3
  %i.cs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cr) #28
          to label %.noexc44 unwind label %_ZNSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EED2Ev.exit31.loopexit ; 10 uses

.noexc44:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cl
  store i64 0, ptr %i.ct, align 8, !tbaa !72
  %.not10.i.i.i.i = icmp eq ptr %i.ci, %i.cf
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i41.preheader

.lr.ph.i.i.i.i41.preheader:                       ; preds = %.noexc44
  %i.cu = add i64 %i.cj, -8
  %i.cv = sub i64 %i.cu, %i.ck                    ; 2 uses
  %i.cw = lshr i64 %i.cv, 3
  %i.cx = add nuw nsw i64 %i.cw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cv, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i41.preheader105, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i41.preheader
  %scevgep = getelementptr i8, ptr %i.cs, i64 8
  %i.cy = add i64 %i.cj, -8
  %i.cz = sub i64 %i.cy, %i.ck
  %i.da = and i64 %i.cz, -8                       ; 2 uses
  %scevgep99.a = getelementptr i8, ptr %scevgep, i64 %i.da
  %scevgep100.a = getelementptr i8, ptr %i.ci, i64 8
  %scevgep101 = getelementptr i8, ptr %scevgep100.a, i64 %i.da
  %bound0 = icmp ult ptr %i.cs, %scevgep101
  %bound1 = icmp ult ptr %i.ci, %scevgep99.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i41.preheader105, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cx, 4611686018427387900     ; 3 uses
  %i.db = shl i64 %n.vec, 3                       ; 2 uses
  %i.dc = getelementptr i8, ptr %i.cs, i64 %i.db  ; 2 uses
  %i.dd = getelementptr i8, ptr %i.ci, i64 %i.db
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.de = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cs, i64 %i.de ; 2 uses
  %next.gep102 = getelementptr i8, ptr %i.ci, i64 %i.de ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !179)
  call void @llvm.experimental.noalias.scope.decl(metadata !180)
  %i.df = getelementptr i8, ptr %next.gep102, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep102, align 8, !tbaa !72, !alias.scope !181, !noalias !179
  %wide.load103 = load <2 x i64>, ptr %i.df, align 8, !tbaa !72, !alias.scope !181, !noalias !179
  %i.dg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !72, !alias.scope !182, !noalias !181
  store <2 x i64> %wide.load103, ptr %i.dg, align 8, !tbaa !72, !alias.scope !182, !noalias !181
  %i.dh = getelementptr i8, ptr %next.gep102, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep102, align 8, !tbaa !72, !alias.scope !181, !noalias !179
  store <2 x ptr> splat (ptr null), ptr %i.dh, align 8, !tbaa !72, !alias.scope !181, !noalias !179
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !153

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cx, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i41.preheader105

.lr.ph.i.i.i.i41.preheader105:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i41.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.cs, %vector.memcheck ], [ %i.cs, %.lr.ph.i.i.i.i41.preheader ], [ %i.dc, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ci, %vector.memcheck ], [ %i.ci, %.lr.ph.i.i.i.i41.preheader ], [ %i.dd, %middle.block ]
  br label %.lr.ph.i.i.i.i41

.lr.ph.i.i.i.i41:                                 ; preds = %.lr.ph.i.i.i.i41.preheader105, %.lr.ph.i.i.i.i41
  %.012.i.i.i.i = phi ptr [ %i.dl, %.lr.ph.i.i.i.i41 ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i41.preheader105 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dk, %.lr.ph.i.i.i.i41 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i41.preheader105 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !179)
  call void @llvm.experimental.noalias.scope.decl(metadata !180)
  %i.dj = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !72, !alias.scope !180, !noalias !179
  store i64 %i.dj, ptr %.012.i.i.i.i, align 8, !tbaa !72, !alias.scope !179, !noalias !180
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !72, !alias.scope !180, !noalias !179
  %i.dk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i42 = icmp eq ptr %i.dk, %i.cf
  br i1 %.not.i.i.i.i42, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i41, !llvm.loop !154

_ZNSt6vectorISt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i41, %middle.block, %.noexc44
  %.0.lcssa.i.i.i.i = phi ptr [ %i.cs, %.noexc44 ], [ %i.dc, %middle.block ], [ %i.dl, %.lr.ph.i.i.i.i41 ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.ci, null
  br i1 %.not.i23.i, label %.noexc25, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.dn = load ptr, ptr %i.ca, align 8, !tbaa !81
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = sub i64 %i.do, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.dp) #27
  br label %.noexc25

.noexc25:                                         ; preds = %bb.aa, %_ZNSt6vectorISt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.cs, ptr %i.e, align 8, !tbaa !82
  store ptr %i.dm, ptr %i.bz, align 8, !tbaa !80
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cq ; 2 uses
  store ptr %i.dq, ptr %i.ca, align 8, !tbaa !81
  %.pre63 = load i32, ptr %i.k, align 4, !tbaa !52
  br label %_ZNSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EED2Ev.exit28

_ZNSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EED2Ev.exit28: ; preds = %bb.x, %.noexc25
  %i.dr = phi i32 [ %i.ce, %bb.x ], [ %.pre63, %.noexc25 ] ; 3 uses
  %i.ds = phi ptr [ %i.cf, %bb.x ], [ %i.dq, %.noexc25 ]
  %i.dt = phi ptr [ %i.ch, %bb.x ], [ %i.dm, %.noexc25 ]
  %i.du = add nuw nsw i32 %.057, 1                ; 2 uses
  %i.dv = icmp slt i32 %i.du, %i.dr
  br i1 %i.dv, label %bb.w, label %._crit_edge, !llvm.loop !155

_ZNSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EED2Ev.exit31.loopexit: ; preds = %_ZNKSt6vectorISt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EED2Ev.exit31

_ZNSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EED2Ev.exit31.loopexit.split-lp: ; preds = %bb.z
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EED2Ev.exit31

bb.ab:                                            ; preds = %._crit_edge
  %i.dw = load i32, ptr %5, align 8, !tbaa !185
  store i32 %i.dw, ptr %i.a, align 8, !tbaa !185
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.dz = load ptr, ptr %i.dx, align 8, !tbaa !57 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !83
  %i.ec = load <2 x ptr>, ptr %i.dy, align 8, !tbaa !84
  store <2 x ptr> %i.ec, ptr %i.dx, align 8, !tbaa !84
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !83
  store ptr %i.ee, ptr %i.ea, align 8, !tbaa !83
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dz, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ef = ptrtoint ptr %i.eb to i64
  %i.eg = ptrtoint ptr %i.dz to i64
  %i.eh = sub i64 %i.ef, %i.eg
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.eh) #27
  br label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i

_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i:               ; preds = %bb.ac, %bb.ab
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.ek = load ptr, ptr %i.ei, align 8, !tbaa !57 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !83
  %i.en = load <2 x ptr>, ptr %i.ej, align 8, !tbaa !84
  store <2 x ptr> %i.en, ptr %i.ei, align 8, !tbaa !84
  %i.eo = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !83
  store ptr %i.ep, ptr %i.el, align 8, !tbaa !83
  %.not.i.i.i.i.i4.i = icmp eq ptr %i.ek, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ej, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i4.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %_ZN8LightGBM8BruckMapaSEOS0_.exit

_ZN8LightGBM8BruckMapaSEOS0_.exit:                ; preds = %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i
  %i.eq = ptrtoint ptr %i.em to i64
  %i.er = ptrtoint ptr %i.ek to i64
  %i.es = sub i64 %i.eq, %i.er
  call void @_ZdlPvm(ptr noundef nonnull %i.ek, i64 noundef %i.es) #27
  %.pr50 = load ptr, ptr %i.ej, align 8, !tbaa !57 ; 3 uses
  %.not.i.i.i.i32 = icmp eq ptr %.pr50, null
  br i1 %.not.i.i.i.i32, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZN8LightGBM8BruckMapaSEOS0_.exit
  %i.et = load ptr, ptr %i.eo, align 8, !tbaa !83
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = ptrtoint ptr %.pr50 to i64
  %i.ew = sub i64 %i.eu, %i.ev
  call void @_ZdlPvm(ptr noundef nonnull %.pr50, i64 noundef %i.ew) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i, %bb.ad, %_ZN8LightGBM8BruckMapaSEOS0_.exit
  %i.ex = load ptr, ptr %i.dy, align 8, !tbaa !57 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i1.i, label %_ZN8LightGBM8BruckMapD2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.ey = load ptr, ptr %i.ed, align 8, !tbaa !83
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = ptrtoint ptr %i.ex to i64
  %i.fb = sub i64 %i.ez, %i.fa
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef %i.fb) #27
  br label %_ZN8LightGBM8BruckMapD2Ev.exit

_ZN8LightGBM8BruckMapD2Ev.exit:                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.fc = load i32, ptr %0, align 8, !tbaa !54
  %i.fd = load i32, ptr %i.k, align 4, !tbaa !52
  invoke void @_ZN8LightGBM19RecursiveHalvingMap9ConstructEii(ptr dead_on_unwind nonnull writable sret(%"class.LightGBM::RecursiveHalvingMap") align 8 %6, i32 noundef %i.fc, i32 noundef %i.fd)
          to label %bb.af unwind label %bb.ao

bb.af:                                            ; preds = %_ZN8LightGBM8BruckMapD2Ev.exit
  %i.fe = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN8LightGBM19RecursiveHalvingMapaSEOS0_(ptr noundef nonnull align 8 dereferenceable(136) %i.b, ptr noundef nonnull align 8 dereferenceable(136) %6) #26 ; 0 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !57 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN8LightGBM7Linkers16ParseMachineListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_:bb.a
bb.bk:                                            ; preds = %._crit_edge.i.i103
  %i.jo = load i8, ptr %i.jh, align 1, !tbaa !69
  store i8 %i.jo, ptr %i.jn, align 1, !tbaa !69
  br label %bb.bm

bb.bl:                                            ; preds = %._crit_edge.i.i103
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jn, ptr align 1 %i.jh, i64 %i.jj, i1 false)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %._crit_edge.i.i103
  %i.jp = load i64, ptr %i.b, align 8, !tbaa !99  ; 2 uses
  store i64 %i.jp, ptr %i.cp, align 8, !tbaa !85
  %i.jq = load ptr, ptr %15, align 8, !tbaa !68
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.jp
  store i8 0, ptr %i.jr, align 1, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  invoke fastcc void @_ZN8LightGBM6CommonL4TrimENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %14, ptr nofree noundef align 8 dereferenceable(32) %15)
          to label %bb.bn unwind label %bb.cn

bb.bn:                                            ; preds = %bb.bm
  %i.js = load ptr, ptr %10, align 16, !tbaa !56  ; 5 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 32 ; 5 uses
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !68 ; 6 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 48 ; 2 uses
  %i.jw = icmp eq ptr %i.ju, %i.jv
  %i.jx = load ptr, ptr %14, align 8, !tbaa !68   ; 6 uses
  %i.jy = icmp eq ptr %i.jx, %i.cq                ; 2 uses
  br i1 %i.jw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i113: ; preds = %bb.bn
  br i1 %i.jy, label %bb.bo, label %.thread.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i107: ; preds = %bb.bn
  br i1 %i.jy, label %bb.bo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i108

bb.bo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i107, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i113
  %i.jz = load i64, ptr %i.cr, align 8, !tbaa !85 ; 3 uses
  %i.ka = icmp ult i64 %i.jz, 16
  call void @llvm.assume(i1 %i.ka)
  %.not21.i110 = icmp eq ptr %14, %i.jt
  br i1 %.not21.i110, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit115, label %bb.bp, !prof !100

bb.bp:                                            ; preds = %bb.bo
  switch i64 %i.jz, label %bb.br [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i111
    i64 1, label %bb.bq
  ]

bb.bq:                                            ; preds = %bb.bp
  %i.kb = load i8, ptr %i.jx, align 1, !tbaa !69
  store i8 %i.kb, ptr %i.ju, align 1, !tbaa !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i111

bb.br:                                            ; preds = %bb.bp
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ju, ptr align 1 %i.jx, i64 %i.jz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i111: ; preds = %bb.br, %bb.bq, %bb.bp
  %i.kc = load i64, ptr %i.cr, align 8, !tbaa !85 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.js, i64 40
  store i64 %i.kc, ptr %i.kd, align 8, !tbaa !85
  %i.ke = load ptr, ptr %i.jt, align 8, !tbaa !68
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.kc
  store i8 0, ptr %i.kf, align 1, !tbaa !69
  %.pre.i112 = load ptr, ptr %14, align 8, !tbaa !68
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit115

.thread.i114:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i113
  %i.kg = getelementptr inbounds nuw i8, ptr %i.js, i64 40
  store ptr %i.jx, ptr %i.jt, align 8, !tbaa !68
  %i.kh = load <2 x i64>, ptr %i.cr, align 8, !tbaa !69
  store <2 x i64> %i.kh, ptr %i.kg, align 8, !tbaa !69
  br label %bb.bt

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i108: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i107
  %i.ki = load i64, ptr %i.jv, align 8, !tbaa !69
  store ptr %i.jx, ptr %i.jt, align 8, !tbaa !68
  %i.kj = getelementptr inbounds nuw i8, ptr %i.js, i64 40
  %i.kk = load <2 x i64>, ptr %i.cr, align 8, !tbaa !69
  store <2 x i64> %i.kk, ptr %i.kj, align 8, !tbaa !69
  %.not.i109 = icmp eq ptr %i.ju, null
  br i1 %.not.i109, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i108
  store ptr %i.ju, ptr %14, align 8, !tbaa !68
  store i64 %i.ki, ptr %i.cq, align 8, !tbaa !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit115

bb.bt:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i108, %.thread.i114
  store ptr %i.cq, ptr %14, align 8, !tbaa !68
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit115: ; preds = %bb.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i111, %bb.bs, %bb.bt
  %i.kl = phi ptr [ %i.ju, %bb.bs ], [ %i.cq, %bb.bt ], [ %i.jx, %bb.bo ], [ %.pre.i112, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i111 ]
  store i64 0, ptr %i.cr, align 8, !tbaa !85
  store i8 0, ptr %i.kl, align 1, !tbaa !69
  %i.km = load ptr, ptr %14, align 8, !tbaa !68   ; 2 uses
  %i.kn = icmp eq ptr %i.km, %i.cq
  br i1 %i.kn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit115
  %i.ko = load i64, ptr %i.cq, align 8, !tbaa !69
  %i.kp = add i64 %i.ko, 1
  call void @_ZdlPvm(ptr noundef %i.km, i64 noundef %i.kp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit115, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116
  %i.kq = load ptr, ptr %15, align 8, !tbaa !68   ; 2 uses
  %i.kr = icmp eq ptr %i.kq, %i.co
  br i1 %i.kr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118
  %i.ks = load i64, ptr %i.co, align 8, !tbaa !69
  %i.kt = add i64 %i.ks, 1
  call void @_ZdlPvm(ptr noundef %i.kq, i64 noundef %i.kt) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.ku = load ptr, ptr %10, align 16, !tbaa !56  ; 3 uses
  %i.kv = load ptr, ptr %i.ci, align 8, !tbaa !55 ; 8 uses
  %i.kw = load ptr, ptr %i.cs, align 8, !tbaa !98
  %.not.i122 = icmp eq ptr %i.kv, %i.kw
  br i1 %.not.i122, label %bb.bx, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kv, i64 16 ; 3 uses
  store ptr %i.kx, ptr %i.kv, align 8, !tbaa !88
  %i.ky = load ptr, ptr %i.ku, align 8, !tbaa !68 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !85 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.la, ptr %i.a, align 8, !tbaa !99
  %i.lb = icmp ugt i64 %i.la, 15
  br i1 %i.lb, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.bu
  %i.lc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.kv, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc123 unwind label %bb.ay ; 2 uses

.noexc123:                                        ; preds = %.noexc.i.i
  store ptr %i.lc, ptr %i.kv, align 8, !tbaa !68
  %i.ld = load i64, ptr %i.a, align 8, !tbaa !99
  store i64 %i.ld, ptr %i.kx, align 8, !tbaa !69
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc123, %bb.bu
  %i.le = phi ptr [ %i.lc, %.noexc123 ], [ %i.kx, %bb.bu ] ; 2 uses
  switch i64 %i.la, label %bb.bw [
    i64 1, label %bb.bv
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.bv:                                            ; preds = %._crit_edge.i.i.i
  %i.lf = load i8, ptr %i.ky, align 1, !tbaa !69
  store i8 %i.lf, ptr %i.le, align 1, !tbaa !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.bw:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.le, ptr align 1 %i.ky, i64 %i.la, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.bw, %bb.bv, %._crit_edge.i.i.i
  %i.lg = load i64, ptr %i.a, align 8, !tbaa !99  ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  store i64 %i.lg, ptr %i.lh, align 8, !tbaa !85
  %i.li = load ptr, ptr %i.kv, align 8, !tbaa !68
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.lg
  store i8 0, ptr %i.lj, align 1, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.lk = load ptr, ptr %i.ci, align 8, !tbaa !55
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 32
  store ptr %i.ll, ptr %i.ci, align 8, !tbaa !55
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.bx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr %i.kv, ptr noundef nonnull align 8 dereferenceable(32) %i.ku)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %bb.ay

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.bx
  %i.lm = load ptr, ptr %10, align 16, !tbaa !56
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 32
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !68
  %i.lp = call i64 @__isoc23_strtol(ptr noundef nonnull %i.lo, ptr noundef null, i32 noundef 10) #26, !inline_history !188
  %i.lq = trunc i64 %i.lp to i32                  ; 2 uses
  %i.lr = load ptr, ptr %i.cu, align 8, !tbaa !190 ; 4 uses
  %i.ls = load ptr, ptr %i.cv, align 8, !tbaa !83
  %.not.i.i125 = icmp eq ptr %i.lr, %i.ls
  br i1 %.not.i.i125, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  store i32 %i.lq, ptr %i.lr, align 4, !tbaa !53
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 4
  store ptr %i.lt, ptr %i.cu, align 8, !tbaa !190
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.jt3

bb.bz:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.lu = load ptr, ptr %i.ct, align 8, !tbaa !57 ; 4 uses
  %i.lv = ptrtoint ptr %i.lr to i64
  %i.lw = ptrtoint ptr %i.lu to i64               ; 2 uses
  %i.lx = sub i64 %i.lv, %i.lw                    ; 5 uses
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
  %16 = add nsw i64 %.sroa.speculated.i.i.i.i, %i.lz ; 2 uses
  %i.ma = icmp ult i64 %16, %i.lz
  %i.mb = call i64 @llvm.umin.i64(i64 %16, i64 2305843009213693951)
  %i.mc = select i1 %i.ma, i64 2305843009213693951, i64 %i.mb ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.mc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.md = shl nuw nsw i64 %i.mc, 2
  %i.me = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.md) #28
          to label %.noexc127 unwind label %.loopexit ; 4 uses

.noexc127:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.mf = getelementptr inbounds i8, ptr %i.me, i64 %i.lx ; 2 uses
  store i32 %i.lq, ptr %i.mf, align 4, !tbaa !53
  %i.mg = icmp sgt i64 %i.lx, 0
  br i1 %i.mg, label %bb.cb, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.cb:                                            ; preds = %.noexc127
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.me, ptr align 4 %i.lu, i64 %i.lx, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.cb, %.noexc127
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mf, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.lu, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.mi = load ptr, ptr %i.cv, align 8, !tbaa !83
  %i.mj = ptrtoint ptr %i.mi to i64
  %i.mk = sub i64 %i.mj, %i.lw
  call void @_ZdlPvm(ptr noundef nonnull %i.lu, i64 noundef %i.mk) #27
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.cc, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.me, ptr %i.ct, align 8, !tbaa !57
  store ptr %i.mh, ptr %i.cu, align 8, !tbaa !190
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %i.mc
  store ptr %i.ml, ptr %i.cv, align 8, !tbaa !83
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.jt3

_ZNSt6vectorIiSaIiEE9push_backEOi.exit.jt3:       ; preds = %bb.by, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit83
  %.0.jt3 = phi i32 [ 0, %bb.by ], [ 3, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit83 ], [ 0, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ]
  %i.mm = load ptr, ptr %10, align 16, !tbaa !56  ; 5 uses
  %i.mn = load ptr, ptr %i.cd, align 8, !tbaa !55 ; 2 uses
  %.not4.i.i.i128.jt3 = icmp eq ptr %i.mm, %i.mn
  br i1 %.not4.i.i.i128.jt3, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i136.jt3, label %.lr.ph.i.i.i129.preheader

_ZNSt6vectorIiSaIiEE9push_backEOi.exit.jt2:       ; preds = %bb.ax
  %i.mo = load ptr, ptr %10, align 16, !tbaa !56  ; 5 uses
  %i.mp = load ptr, ptr %i.cd, align 8, !tbaa !55 ; 2 uses
  %.not4.i.i.i128.jt2 = icmp eq ptr %i.mo, %i.mp
  br i1 %.not4.i.i.i128.jt2, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i136.jt2, label %.lr.ph.i.i.i129.preheader

.lr.ph.i.i.i129.preheader:                        ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.jt3, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.jt2
  %i.mq = phi ptr [ %i.mn, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.jt3 ], [ %i.mp, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.jt2 ]
  %i.mr = phi ptr [ %i.mm, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.jt3 ], [ %i.mo, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.jt2 ]
  %.0325 = phi i32 [ %.0.jt3, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.jt3 ], [ 2, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.jt2 ]
  br label %.lr.ph.i.i.i129

.lr.ph.i.i.i129:                                  ; preds = %.lr.ph.i.i.i129.preheader, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i132
  %.05.i.i.i130 = phi ptr [ %i.mx, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i132 ], [ %i.mr, %.lr.ph.i.i.i129.preheader ] ; 3 uses
  %i.ms = load ptr, ptr %.05.i.i.i130, align 8, !tbaa !68 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.05.i.i.i130, i64 16 ; 2 uses
  %i.mu = icmp eq ptr %i.ms, %i.mt
  br i1 %i.mu, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i131: ; preds = %.lr.ph.i.i.i129
  %i.mv = load i64, ptr %i.mt, align 8, !tbaa !69
  %i.mw = add i64 %i.mv, 1
  call void @_ZdlPvm(ptr noundef %i.ms, i64 noundef %i.mw) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i132

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i132: ; preds = %.lr.ph.i.i.i129, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i131
  %i.mx = getelementptr inbounds nuw i8, ptr %.05.i.i.i130, i64 32 ; 2 uses
  %.not.i.i.i133 = icmp eq ptr %i.mx, %i.mq
  br i1 %.not.i.i.i133, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i134, label %.lr.ph.i.i.i129, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i134: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i132
  %.pr.i135 = load ptr, ptr %10, align 16, !tbaa !56 ; 3 uses
  %.not.i.i1.i137 = icmp eq ptr %.pr.i135, null
  br i1 %.not.i.i1.i137, label %bb.cg, label %bb.cd

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i136.jt3: ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.jt3
  %.not.i.i1.i137.jt3 = icmp eq ptr %i.mm, null
  br i1 %.not.i.i1.i137.jt3, label %bb.ch, label %bb.ce

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i136.jt2: ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.jt2
  %.not.i.i1.i137.jt2 = icmp eq ptr %i.mo, null
  br i1 %.not.i.i1.i137.jt2, label %bb.ci, label %bb.cf

bb.cd:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i134
  %i.my = load ptr, ptr %i.ce, align 16, !tbaa !98
  %i.mz = ptrtoint ptr %i.my to i64
  %i.na = ptrtoint ptr %.pr.i135 to i64
  %i.nb = sub i64 %i.mz, %i.na
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i135, i64 noundef %i.nb) #27
  br label %bb.cg

bb.ce:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i136.jt3
  %i.nc = load ptr, ptr %i.ce, align 16, !tbaa !98
  %i.nd = ptrtoint ptr %i.nc to i64
  %i.ne = ptrtoint ptr %i.mm to i64
  %i.nf = sub i64 %i.nd, %i.ne
  call void @_ZdlPvm(ptr noundef nonnull %i.mm, i64 noundef %i.nf) #27
  br label %bb.ch

bb.cf:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i136.jt2
  %i.ng = load ptr, ptr %i.ce, align 16, !tbaa !98
  %i.nh = ptrtoint ptr %i.ng to i64
  %i.ni = ptrtoint ptr %i.mo to i64
  %i.nj = sub i64 %i.nh, %i.ni
  call void @_ZdlPvm(ptr noundef nonnull %i.mo, i64 noundef %i.nj) #27
  br label %bb.ci

bb.cg:                                            ; preds = %bb.cd, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i134
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  switch i32 %.0325, label %._crit_edge [
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
  %i.nk = getelementptr inbounds nuw i8, ptr %.sroa.0159.0209, i64 32 ; 2 uses
  %.not163 = icmp eq ptr %i.nk, %i.bw
  br i1 %.not163, label %._crit_edge, label %bb.t

bb.ck:                                            ; preds = %.noexc.i85
  %i.nl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

bb.cl:                                            ; preds = %bb.bc
  %i.nm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nn = load ptr, ptr %13, align 8, !tbaa !68   ; 2 uses
  %i.no = icmp eq ptr %i.nn, %i.ck
  br i1 %i.no, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140: ; preds = %bb.cl
  %i.np = load i64, ptr %i.ck, align 8, !tbaa !69
  %i.nq = add i64 %i.np, 1
  call void @_ZdlPvm(ptr noundef %i.nn, i64 noundef %i.nq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142: ; preds = %bb.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140, %bb.ck
  %.pn32 = phi { ptr, i32 } [ %i.nl, %bb.ck ], [ %i.nm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140 ], [ %i.nm, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.co

bb.cm:                                            ; preds = %.noexc.i104
  %i.nr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

bb.cn:                                            ; preds = %bb.bm
  %i.ns = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nt = load ptr, ptr %15, align 8, !tbaa !68   ; 2 uses
  %i.nu = icmp eq ptr %i.nt, %i.co
  br i1 %i.nu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143: ; preds = %bb.cn
  %i.nv = load i64, ptr %i.co, align 8, !tbaa !69
  %i.nw = add i64 %i.nv, 1
  call void @_ZdlPvm(ptr noundef %i.nt, i64 noundef %i.nw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143, %bb.cm
  %.pn34 = phi { ptr, i32 } [ %i.nr, %bb.cm ], [ %i.ns, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143 ], [ %i.ns, %bb.cn ]
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
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !97 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !97 ; 2 uses
  %i.ob = icmp eq ptr %i.ny, %i.oa
  br i1 %i.ob, label %bb.cq, label %bb.cs
end_hunk_1
begin_hunk_2_@_ZZN8LightGBM10TextReaderImE17ReadAllAndProcessERKSt8functionIFvmPKcmEEENKUlS4_mE_clES4_m:bb.a
bb.m:                                             ; preds = %bb.l, %bb.l
  %i.ay = icmp ult i64 %.238, %2
  br i1 %i.ay, label %bb.l, label %._crit_edge.loopexit, !llvm.loop !258

bb.n:                                             ; preds = %bb.d
  %i.az = add nuw i64 %.13756, 1
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %bb.n
  %.140 = phi i64 [ %.03955, %bb.n ], [ %i.as, %bb.l ] ; 2 uses
  %.3 = phi i64 [ %i.az, %bb.n ], [ %.238, %bb.l ] ; 2 uses
  %.2 = phi i64 [ %.157, %bb.n ], [ %.238, %bb.l ] ; 2 uses
  %i.ba = icmp ult i64 %.3, %2
  br i1 %i.ba, label %bb.d, label %._crit_edge, !llvm.loop !259

._crit_edge.loopexit:                             ; preds = %bb.m
  %i.bb = add nuw i64 %.13756, 1
  %umax.le = call i64 @llvm.umax.i64(i64 %2, i64 %i.bb)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.critedge, %._crit_edge.loopexit, %bb.c
  %.039.lcssa = phi i64 [ 0, %bb.c ], [ %i.as, %._crit_edge.loopexit ], [ %.140, %.critedge ]
  %.1.lcssa = phi i64 [ %.0, %bb.c ], [ %umax.le, %._crit_edge.loopexit ], [ %.2, %.critedge ] ; 3 uses
  %.not = icmp eq i64 %.1.lcssa, %2
  br i1 %.not, label %bb.q, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bc = sub i64 %2, %.1.lcssa                   ; 2 uses
  %i.bd = load i64, ptr %i.j, align 8, !tbaa !85
  %i.be = sub i64 4611686018427387903, %i.bd
  %i.bf = icmp ult i64 %i.be, %i.bc
  br i1 %i.bf, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit48

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit48: ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 %.1.lcssa
  %i.bh = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef %i.bg, i64 noundef %i.bc) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit48, %._crit_edge
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !264, !nonnull !129, !align !143 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !99 ; 2 uses
  %i.bl = add i64 %i.bk, %2                       ; 3 uses
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !99
  %i.bm = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !89 ; 2 uses
  %i.bo = udiv i64 %i.bk, %i.bn
  %i.bp = udiv i64 %i.bl, %i.bn
  %i.bq = icmp ult i64 %i.bo, %i.bp
  br i1 %i.bq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.br = uitofp i64 %i.bl to double
  %i.bs = fmul nnan double %i.br, f0x3E10000000000000
  %i.bt = load ptr, ptr %i.h, align 8, !tbaa !87
  call void (ptr, ...) @_ZN8LightGBM3Log5DebugEPKcz(ptr noundef nonnull @.str.26, double noundef %i.bs, ptr noundef %i.bt)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  ret i64 %.039.lcssa
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFvmPKcmEZN8LightGBM10TextReaderImE12ReadAllLinesEvEUlmS1_mE_E9_M_invokeERKSt9_Any_dataOmOS1_SB_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !136
  %i.d = load i64, ptr %3, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.a, align 8, !tbaa !136
  store i64 %i.d, ptr %i.b, align 8, !tbaa !99
  %i.e = load ptr, ptr %0, align 8, !tbaa !266
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
  store ptr @_ZTIZN8LightGBM10TextReaderImE12ReadAllLinesEvEUlmPKcmE_, ptr %0, align 8, !tbaa !145
  br label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM10TextReaderImE12ReadAllLinesEvEUlmPKcmE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !128
  br label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM10TextReaderImE12ReadAllLinesEvEUlmPKcmE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !92
  store i64 %i.a, ptr %0, align 8, !tbaa !92
  br label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM10TextReaderImE12ReadAllLinesEvEUlmPKcmE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN8LightGBM10TextReaderImE12ReadAllLinesEvEUlmPKcmE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRPKcRmEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55   ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !98
  %.not = icmp eq ptr %i.c, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !136    ; 3 uses
  %i.g = load i64, ptr %2, align 8, !tbaa !99     ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store ptr %i.h, ptr %i.c, align 8, !tbaa !88
  %i.i = icmp eq ptr %i.f, null
  %i.j = icmp ne i64 %i.g, 0
  %or.cond.i = and i1 %i.i, %i.j
  br i1 %or.cond.i, label %.noexc, label %bb.c

.noexc:                                           ; preds = %bb.b
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.1) #29
  unreachable

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.g, ptr %i.a, align 8, !tbaa !99
  %i.k = icmp ugt i64 %i.g, 15
  br i1 %i.k, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.l = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !68
  %i.m = load i64, ptr %i.a, align 8, !tbaa !99
  store i64 %i.m, ptr %i.h, align 8, !tbaa !69
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.c
  %i.n = phi ptr [ %i.l, %.noexc.i ], [ %i.h, %bb.c ] ; 2 uses
  switch i64 %i.g, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRPKcRmEEEvPT_DpOT0_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.o = load i8, ptr %i.f, align 1, !tbaa !69
  store i8 %i.o, ptr %i.n, align 1, !tbaa !69
  br label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRPKcRmEEEvPT_DpOT0_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.f, i64 %i.g, i1 false)
  br label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRPKcRmEEEvPT_DpOT0_.exit

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRPKcRmEEEvPT_DpOT0_.exit: ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !99   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !85
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !68
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  store ptr %i.u, ptr %i.b, align 8, !tbaa !55
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRPKcRmEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !97
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !56     ; 5 uses
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
  %4 = add nsw i64 %.sroa.speculated.i, %i.i      ; 2 uses
  %i.j = icmp ult i64 %4, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %4, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.f
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #28 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 6 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !136    ; 3 uses
  %i.s = load i64, ptr %3, align 8, !tbaa !99     ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.t, ptr %i.q, align 8, !tbaa !88
  %i.u = icmp eq ptr %i.r, null
  %i.v = icmp ne i64 %i.s, 0
  %or.cond.i = and i1 %i.u, %i.v
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.1) #29
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.s, ptr %i.a, align 8, !tbaa !99
  %i.w = icmp ugt i64 %i.s, 15
  br i1 %i.w, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.d
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc27 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ; 2 uses

.noexc27:                                         ; preds = %.noexc.i
  store ptr %i.x, ptr %i.q, align 8, !tbaa !68
  %i.y = load i64, ptr %i.a, align 8, !tbaa !99
  store i64 %i.y, ptr %i.t, align 8, !tbaa !69
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc27, %bb.d
  %i.z = phi ptr [ %i.x, %.noexc27 ], [ %i.t, %bb.d ] ; 2 uses
  switch i64 %i.s, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.aa = load i8, ptr %i.r, align 1, !tbaa !69
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !69
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.r, i64 %i.s, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !99  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !85
  %i.ad = load ptr, ptr %i.q, align 8, !tbaa !68
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.as, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %bb.g ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.g ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !273)
  call void @llvm.experimental.noalias.scope.decl(metadata !274)
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !88, !alias.scope !273, !noalias !274
  %i.ag = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !68, !alias.scope !274, !noalias !273 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !85, !alias.scope !274, !noalias !273 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false), !alias.scope !275
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ag, ptr %.012.i.i.i, align 8, !tbaa !68, !alias.scope !273, !noalias !274
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !69, !alias.scope !274, !noalias !273
  store i64 %i.an, ptr %i.af, align 8, !tbaa !69, !alias.scope !273, !noalias !274
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !85, !alias.scope !274, !noalias !273
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.h
  %i.ao = phi i64 [ %i.ak, %bb.h ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !85, !alias.scope !273, !noalias !274
  store ptr %i.ah, ptr %.0911.i.i.i, align 8, !tbaa !68, !alias.scope !274, !noalias !273
  store i64 0, ptr %i.ap, align 8, !tbaa !85, !alias.scope !274, !noalias !273
  store i8 0, ptr %i.ah, align 8, !tbaa !69, !alias.scope !274, !noalias !273
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !6

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.g
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.g ], [ %i.as, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i28 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i28, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit38, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35
  %.012.i.i.i30 = phi ptr [ %i.bh, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35 ], [ %i.at, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i31 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !276)
  call void @llvm.experimental.noalias.scope.decl(metadata !277)
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 16 ; 3 uses
  store ptr %i.au, ptr %.012.i.i.i30, align 8, !tbaa !88, !alias.scope !276, !noalias !277
  %i.av = load ptr, ptr %.0911.i.i.i31, align 8, !tbaa !68, !alias.scope !277, !noalias !276 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 16 ; 5 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i32

bb.i:                                             ; preds = %.lr.ph.i.i.i29
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !85, !alias.scope !277, !noalias !276 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.az, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.au, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.bb, i1 false), !alias.scope !278
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i32: ; preds = %.lr.ph.i.i.i29
  store ptr %i.av, ptr %.012.i.i.i30, align 8, !tbaa !68, !alias.scope !276, !noalias !277
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !69, !alias.scope !277, !noalias !276
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !69, !alias.scope !276, !noalias !277
  %.phi.trans.insert.i.i.i.i33 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8
  %.pre.i.i.i.i34 = load i64, ptr %.phi.trans.insert.i.i.i.i33, align 8, !tbaa !85, !alias.scope !277, !noalias !276
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i32, %bb.i
  %i.bd = phi i64 [ %i.az, %bb.i ], [ %.pre.i.i.i.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i32 ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 8
  store i64 %i.bd, ptr %i.bf, align 8, !tbaa !85, !alias.scope !276, !noalias !277
  store ptr %i.aw, ptr %.0911.i.i.i31, align 8, !tbaa !68, !alias.scope !277, !noalias !276
  store i64 0, ptr %i.be, align 8, !tbaa !85, !alias.scope !277, !noalias !276
  store i8 0, ptr %i.aw, align 8, !tbaa !69, !alias.scope !277, !noalias !276
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 32 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 32 ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %i.bg, %i.c
  br i1 %.not.i.i.i36, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit38, label %.lr.ph.i.i.i29, !llvm.loop !6

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit38: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i37 = phi ptr [ %i.at, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bh, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i39 = icmp eq ptr %i.d, null
  br i1 %.not.i39, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit38
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !98
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bl) #27
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit38, %bb.j
  store ptr %i.p, ptr %0, align 8, !tbaa !56
  store ptr %.0.lcssa.i.i.i37, ptr %i.b, align 8, !tbaa !55
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !98
  ret void

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %.noexc.i
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  %i.bq = call ptr @__cxa_begin_catch(ptr %i.bp) #26 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #27
  invoke void @__cxa_rethrow() #29
          to label %bb.n unwind label %bb.k

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.bn

bb.m:                                             ; preds = %bb.k
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #30
  unreachable

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  unreachable
}
end_hunk_2
begin_hunk_3_@_ZSt16__do_uninit_copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_:bb.a

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !99   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.016, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !85
  %i.m = load ptr, ptr %.016, align 8, !tbaa !68
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.o = getelementptr inbounds nuw i8, ptr %.01215, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.016, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.o, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !280

bb.e:                                             ; preds = %.noexc.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #26 ; 0 uses
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %2, ptr noundef nonnull %.016)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #29
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %bb.d ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.t

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #30
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EELb1EE8_S_do_itERS8_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !97     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !97   ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = icmp ugt i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #29
          to label %.noexc.i unwind label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit.thread, label %.lr.ph.i.i.i.i.preheader.i.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit.thread: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !98
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.h, ptr %i.i, align 8, !tbaa !98
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28
          to label %.lr.ph.i.i.i.i.i.i unwind label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i ; 3 uses

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.preheader.i.i, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.y, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.k, %.lr.ph.i.i.i.i.preheader.i.i ] ; 5 uses
  %.sroa.08.011.i.i.i.i.i.i = phi ptr [ %i.x, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.a, %.lr.ph.i.i.i.i.preheader.i.i ] ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.l, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !88
  %i.m = load ptr, ptr %.sroa.08.011.i.i.i.i.i.i, align 8, !tbaa !68 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i.i, i64 16 ; 5 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !85   ; 3 uses
  %i.r = icmp ult i64 %i.q, 16
  tail call void @llvm.assume(i1 %i.r)
  %i.s = add nuw nsw i64 %i.q, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.s, i1 false)
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %i.m, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !68
  %i.t = load i64, ptr %i.n, align 8, !tbaa !69
  store i64 %i.t, ptr %i.l, align 8, !tbaa !69
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i.i, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !85
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.c
  %i.u = phi i64 [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ], [ %i.q, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i.i, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8
  store i64 %i.u, ptr %i.w, align 8, !tbaa !85
  store ptr %i.n, ptr %.sroa.08.011.i.i.i.i.i.i, align 8, !tbaa !68
  store i64 0, ptr %i.v, align 8, !tbaa !85
  store i8 0, ptr %i.n, align 8, !tbaa !69
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !281

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.preheader.i.i
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %.09 = extractvalue { ptr, i32 } %i.z, 0
  %i.aa = tail call ptr @__cxa_begin_catch(ptr %.09) #26 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit unwind label %bb.e

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit: ; preds = %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %.pre = load ptr, ptr %0, align 8, !tbaa !56    ; 4 uses
  %.pre18 = load ptr, ptr %i.b, align 8, !tbaa !55 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !98 ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !56
  store ptr %i.y, ptr %i.b, align 8, !tbaa !55
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !98
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre18
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %.pre, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit ] ; 3 uses
  %i.ae = load ptr, ptr %.05.i.i.i, align 8, !tbaa !68 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !69
  %i.ai = add i64 %i.ah, 1
  tail call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.aj, %.pre18
  br i1 %.not.i.i.i10, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit.thread, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit
  %i.ak = phi ptr [ %i.j, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit.thread ], [ %i.ad, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit ], [ %i.ad, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ]
  %i.al = phi ptr [ %i.a, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit.thread ], [ %.pre, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit ], [ %.pre, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ao) #27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %bb.d, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %.0 = phi i1 [ false, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i ], [ true, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i ], [ true, %bb.d ]
  ret i1 %.0

bb.e:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  tail call void @__clang_call_terminate(ptr %i.aq) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !56     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #29
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i, %i.h      ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 288230376151711743)
  %i.k = select i1 %i.i, i64 288230376151711743, i64 %i.j ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %.not.i = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.n = shl nuw nsw i64 %i.k, 5
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #28 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !88
  %i.r = load ptr, ptr %2, align 8, !tbaa !68     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !85   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  tail call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  store ptr %i.r, ptr %i.p, align 8, !tbaa !68
  %i.y = load i64, ptr %i.s, align 8, !tbaa !69
  store i64 %i.y, ptr %i.q, align 8, !tbaa !69
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !85
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.z = phi i64 [ %i.v, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !85
  store ptr %i.s, ptr %2, align 8, !tbaa !68
  store i64 0, ptr %i.aa, align 8, !tbaa !85
  store i8 0, ptr %i.s, align 8, !tbaa !69
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ao, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ac, ptr %.012.i.i.i, align 8, !tbaa !88, !alias.scope !288, !noalias !289
  %i.ad = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !68, !alias.scope !289, !noalias !288 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !85, !alias.scope !289, !noalias !288 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.ae, i64 %i.aj, i1 false), !alias.scope !290
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !68, !alias.scope !288, !noalias !289
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !69, !alias.scope !289, !noalias !288
  store i64 %i.ak, ptr %i.ac, align 8, !tbaa !69, !alias.scope !288, !noalias !289
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !85, !alias.scope !289, !noalias !288
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.d
  %i.al = phi i64 [ %i.ah, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.al, ptr %i.an, align 8, !tbaa !85, !alias.scope !288, !noalias !289
  store ptr %i.ae, ptr %.0911.i.i.i, align 8, !tbaa !68, !alias.scope !289, !noalias !288
  store i64 0, ptr %i.am, align 8, !tbaa !85, !alias.scope !289, !noalias !288
  store i8 0, ptr %i.ae, align 8, !tbaa !69, !alias.scope !289, !noalias !288
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !6

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.aq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.bd, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.ar, ptr %.012.i.i.i18, align 8, !tbaa !88, !alias.scope !291, !noalias !292
  %i.as = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !68, !alias.scope !292, !noalias !291 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !85, !alias.scope !292, !noalias !291 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = add nuw nsw i64 %i.aw, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.ay, i1 false), !alias.scope !293
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !68, !alias.scope !291, !noalias !292
  %i.az = load i64, ptr %i.at, align 8, !tbaa !69, !alias.scope !292, !noalias !291
  store i64 %i.az, ptr %i.ar, align 8, !tbaa !69, !alias.scope !291, !noalias !292
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !85, !alias.scope !292, !noalias !291
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.e
  %i.ba = phi i64 [ %i.aw, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.ba, ptr %i.bc, align 8, !tbaa !85, !alias.scope !291, !noalias !292
  store ptr %i.at, ptr %.0911.i.i.i19, align 8, !tbaa !68, !alias.scope !292, !noalias !291
  store i64 0, ptr %i.bb, align 8, !tbaa !85, !alias.scope !292, !noalias !291
  store i8 0, ptr %i.at, align 8, !tbaa !69, !alias.scope !292, !noalias !291
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bd, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !6

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.aq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !98
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bi) #27
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.f
  store ptr %i.o, ptr %0, align 8, !tbaa !56
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !55
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.k
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !98
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !56     ; 5 uses
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
  %3 = add nsw i64 %.sroa.speculated.i, %i.i      ; 2 uses
  %i.j = icmp ult i64 %3, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %3, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.f
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #28 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !88
  %i.s = load ptr, ptr %2, align 8, !tbaa !68     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !85   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.u, ptr %i.a, align 8, !tbaa !99
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.w, ptr %i.q, align 8, !tbaa !68
  %i.x = load i64, ptr %i.a, align 8, !tbaa !99
  store i64 %i.x, ptr %i.r, align 8, !tbaa !69
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.y = phi ptr [ %i.w, %.noexc ], [ %i.r, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.u, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.z = load i8, ptr %i.s, align 1, !tbaa !69
  store i8 %i.z, ptr %i.y, align 1, !tbaa !69
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !99  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !85
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !68
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %bb.e ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !300)
  call void @llvm.experimental.noalias.scope.decl(metadata !301)
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !88, !alias.scope !300, !noalias !301
  %i.af = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !68, !alias.scope !301, !noalias !300 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !85, !alias.scope !301, !noalias !300 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.al, i1 false), !alias.scope !302
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !68, !alias.scope !300, !noalias !301
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !69, !alias.scope !301, !noalias !300
  store i64 %i.am, ptr %i.ae, align 8, !tbaa !69, !alias.scope !300, !noalias !301
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !85, !alias.scope !301, !noalias !300
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.f
  %i.an = phi i64 [ %i.aj, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !85, !alias.scope !300, !noalias !301
  store ptr %i.ag, ptr %.0911.i.i.i, align 8, !tbaa !68, !alias.scope !301, !noalias !300
  store i64 0, ptr %i.ao, align 8, !tbaa !85, !alias.scope !301, !noalias !300
  store i8 0, ptr %i.ag, align 8, !tbaa !69, !alias.scope !301, !noalias !300
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !6

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.e ], [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !303)
  call void @llvm.experimental.noalias.scope.decl(metadata !304)
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.at, ptr %.012.i.i.i28, align 8, !tbaa !88, !alias.scope !303, !noalias !304
  %i.au = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !68, !alias.scope !304, !noalias !303 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !85, !alias.scope !304, !noalias !303 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.av, i64 %i.ba, i1 false), !alias.scope !305
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.au, ptr %.012.i.i.i28, align 8, !tbaa !68, !alias.scope !303, !noalias !304
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !69, !alias.scope !304, !noalias !303
  store i64 %i.bb, ptr %i.at, align 8, !tbaa !69, !alias.scope !303, !noalias !304
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !85, !alias.scope !304, !noalias !303
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30, %bb.g
  %i.bc = phi i64 [ %i.ay, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.bc, ptr %i.be, align 8, !tbaa !85, !alias.scope !303, !noalias !304
  store ptr %i.av, ptr %.0911.i.i.i29, align 8, !tbaa !68, !alias.scope !304, !noalias !303
  store i64 0, ptr %i.bd, align 8, !tbaa !85, !alias.scope !304, !noalias !303
  store i8 0, ptr %i.av, align 8, !tbaa !69, !alias.scope !304, !noalias !303
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bf, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !6

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !98
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bk) #27
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.h
  store ptr %i.p, ptr %0, align 8, !tbaa !56
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !55
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bl, ptr %i.bh, align 8, !tbaa !98
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  %i.bp = call ptr @__cxa_begin_catch(ptr %i.bo) #26 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #27
  invoke void @__cxa_rethrow() #29
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bm

bb.l:                                             ; preds = %bb.i
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #30
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @bind(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @inet_pton(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #11
end_hunk_3
