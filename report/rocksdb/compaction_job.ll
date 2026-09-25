Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/compaction_job?download=true
inline.NumInlined: 6887
inline.NumDeleted: 3271
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN7rocksdb13CompactionJob21SyncOutputDirectoriesEv:bb.a
bb.l:                                             ; preds = %bb.k
  %i.cp = load i8, ptr %7, align 8, !tbaa !769
  store i8 0, ptr %7, align 8, !tbaa !500
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 1 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !770
  store i8 0, ptr %i.cq, align 1, !tbaa !759
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 3
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !763, !range !408, !noundef !409
  %.sroa.14.3.insert.ext78 = zext nneg i8 %i.ct to i32
  %.sroa.14.3.insert.shift79 = shl nuw nsw i32 %.sroa.14.3.insert.ext78, 8
  %.sroa.14.3.insert.mask80 = and i32 %.sroa.14.0, 255
  %.sroa.14.3.insert.insert81 = or disjoint i32 %.sroa.14.3.insert.mask80, %.sroa.14.3.insert.shift79
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.cv = load i8, ptr %i.cu, align 4, !tbaa !504, !range !408, !noundef !409
  %.sroa.14.4.insert.ext86 = zext nneg i8 %i.cv to i32
  %.sroa.14.4.insert.shift87 = shl nuw nsw i32 %.sroa.14.4.insert.ext86, 16
  %.sroa.14.4.insert.insert89 = or disjoint i32 %.sroa.14.3.insert.insert81, %.sroa.14.4.insert.shift87
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 5 ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !505
  %.sroa.14.5.insert.ext94 = zext i8 %i.cx to i32
  %.sroa.14.5.insert.shift95 = shl nuw i32 %.sroa.14.5.insert.ext94, 24
  %.sroa.14.5.insert.insert97 = or disjoint i32 %.sroa.14.4.insert.insert89, %.sroa.14.5.insert.shift95
  store i8 0, ptr %i.cw, align 1, !tbaa !505
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !437
  store ptr null, ptr %i.cy, align 8, !tbaa !437
  %.not.i.i.i.i.i25 = icmp eq ptr %.sroa.28101.0, null
  br i1 %.not.i.i.i.i.i25, label %_ZN7rocksdb6StatusD2Ev.exit30, label %_ZN7rocksdb8IOStatusaSEOS0_.exit27

_ZN7rocksdb8IOStatusaSEOS0_.exit27:               ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %.sroa.28101.0) #34
  %.pr = load ptr, ptr %i.cy, align 8, !tbaa !437 ; 2 uses
  %.not.i.i28 = icmp eq ptr %.pr, null
  br i1 %.not.i.i28, label %_ZN7rocksdb6StatusD2Ev.exit30, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i29

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i29: ; preds = %_ZN7rocksdb8IOStatusaSEOS0_.exit27
  call void @_ZdaPv(ptr noundef nonnull %.pr) #34
  br label %_ZN7rocksdb6StatusD2Ev.exit30

_ZN7rocksdb6StatusD2Ev.exit30:                    ; preds = %bb.l, %_ZN7rocksdb8IOStatusaSEOS0_.exit27, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i29
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !72 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZN7rocksdb15DirFsyncOptionsD2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31: ; preds = %_ZN7rocksdb6StatusD2Ev.exit30
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !73
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #34
  br label %_ZN7rocksdb15DirFsyncOptionsD2Ev.exit33

_ZN7rocksdb15DirFsyncOptionsD2Ev.exit33:          ; preds = %_ZN7rocksdb6StatusD2Ev.exit30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  %i.dg = load ptr, ptr %i.ci, align 8, !tbaa !771 ; 2 uses
  %.not5.i.i.i59 = icmp eq ptr %i.dg, null
  br i1 %.not5.i.i.i59, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i67, label %.lr.ph.i.i.i60

.lr.ph.i.i.i60:                                   ; preds = %_ZN7rocksdb15DirFsyncOptionsD2Ev.exit33, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i65
  %.06.i.i.i61 = phi ptr [ %i.dh, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i65 ], [ %i.dg, %_ZN7rocksdb15DirFsyncOptionsD2Ev.exit33 ] ; 6 uses
  %i.dh = load ptr, ptr %.06.i.i.i61, align 8, !tbaa !441 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.06.i.i.i61, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %.06.i.i.i61, i64 40
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !72 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.06.i.i.i61, i64 56 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i62: ; preds = %.lr.ph.i.i.i60
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !73
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i63: ; preds = %.lr.ph.i.i.i60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i62
  %i.dp = load ptr, ptr %i.di, align 8, !tbaa !72 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.06.i.i.i61, i64 24 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i63
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !73
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.dt) #34
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i65

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i64
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i61, i64 noundef 80) #34
  %.not.i.i.i66 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i66, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i67, label %.lr.ph.i.i.i60, !llvm.loop !13

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i67: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i65, %_ZN7rocksdb15DirFsyncOptionsD2Ev.exit33
  %i.du = load ptr, ptr %i.cf, align 8, !tbaa !439
  %i.dv = load i64, ptr %i.ch, align 8, !tbaa !440
  %i.dw = shl i64 %i.dv, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.du, i8 0, i64 %i.dw, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i8 0, i64 16, i1 false)
  %i.dx = load ptr, ptr %i.cf, align 8, !tbaa !439 ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.cg
  br i1 %i.dy, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit70, label %bb.m

bb.m:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i67
  %i.dz = load i64, ptr %i.ch, align 8, !tbaa !440
  %i.ea = shl i64 %i.dz, 3
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #34
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit70

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit70: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i67, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.p

bb.n:                                             ; preds = %bb.j
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i35

bb.o:                                             ; preds = %bb.k
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !72 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34: ; preds = %bb.o
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !73
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #34
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i35

bb.p:                                             ; preds = %bb.g, %bb.h, %bb.i, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit70
  %.sroa.28101.1 = phi ptr [ %.sroa.28101.0, %bb.h ], [ %.sroa.28101.0, %bb.i ], [ %i.cz, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit70 ], [ %.sroa.28101.0, %bb.g ] ; 7 uses
  %.sroa.14.1 = phi i32 [ %.sroa.14.0, %bb.h ], [ %.sroa.14.0, %bb.i ], [ %.sroa.14.5.insert.insert97, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit70 ], [ %.sroa.14.0, %bb.g ] ; 4 uses
  %.sroa.9.1 = phi i8 [ %.sroa.9.0, %bb.h ], [ %.sroa.9.0, %bb.i ], [ %i.cr, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit70 ], [ %.sroa.9.0, %bb.g ] ; 2 uses
  %.sroa.0.1 = phi i8 [ 0, %bb.h ], [ 0, %bb.i ], [ %i.cp, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit70 ], [ %.sroa.0.0, %bb.g ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 696 ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 8, !tbaa !500
  %i.el = icmp eq i8 %i.ek, 0
  br i1 %i.el, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  store i8 %.sroa.0.1, ptr %i.ej, align 8, !tbaa !500
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 697
  store i8 %.sroa.9.1, ptr %i.em, align 1, !tbaa !759
  %.sroa.14.3.extract.shift = lshr i32 %.sroa.14.1, 8
  %.sroa.14.3.extract.trunc = trunc i32 %.sroa.14.3.extract.shift to i8
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 699
  store i8 %.sroa.14.3.extract.trunc, ptr %i.en, align 1, !tbaa !763
  %.sroa.14.4.extract.shift = lshr i32 %.sroa.14.1, 16
  %.sroa.14.4.extract.trunc = trunc i32 %.sroa.14.4.extract.shift to i8
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 700
  store i8 %.sroa.14.4.extract.trunc, ptr %i.eo, align 4, !tbaa !504
  %.sroa.14.5.extract.shift = lshr i32 %.sroa.14.1, 24
  %.sroa.14.5.extract.trunc = trunc nuw i32 %.sroa.14.5.extract.shift to i8
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 701
  store i8 %.sroa.14.5.extract.trunc, ptr %i.ep, align 1, !tbaa !505
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %.not.i.i37 = icmp eq ptr %.sroa.28101.1, null
  br i1 %.not.i.i37, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %3, ptr noundef nonnull %.sroa.28101.1)
          to label %.noexc unwind label %.thread141

.noexc:                                           ; preds = %bb.r
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !437
  br label %bb.s

bb.s:                                             ; preds = %.noexc, %bb.q
  %i.eq = phi ptr [ %.pre.i, %.noexc ], [ null, %bb.q ]
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 2 uses
  store ptr null, ptr %3, align 8, !tbaa !437
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !437 ; 2 uses
  store ptr %i.eq, ptr %i.er, align 8, !tbaa !437
  %.not.i.i.i.i.i38 = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i.i.i38, label %bb.t, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i: ; preds = %bb.s
  call void @_ZdaPv(ptr noundef nonnull %i.es) #34
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !437  ; 2 uses
  %.not.i10.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i10.i, label %bb.t, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i39

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i39: ; preds = %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i
  call void @_ZdaPv(ptr noundef nonnull %.pr.i) #34
  br label %bb.t

bb.t:                                             ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i39, %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %.pre = load i8, ptr %0, align 8, !tbaa !500
  %i.et = icmp eq i8 %.pre, 0
  br i1 %i.et, label %.thread, label %_ZN7rocksdb6StatusaSERKS0_.exit

.thread:                                          ; preds = %bb.p, %bb.t
  store i8 %.sroa.0.1, ptr %0, align 8, !tbaa !500
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.9.1, ptr %i.eu, align 1, !tbaa !759
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 2
  %10 = insertelement <4 x i32> poison, i32 %.sroa.14.1, i64 0
  %11 = shufflevector <4 x i32> %10, <4 x i32> poison, <4 x i32> zeroinitializer
  %12 = lshr <4 x i32> %11, <i32 0, i32 8, i32 16, i32 24>
  %13 = trunc <4 x i32> %12 to <4 x i8>
  store <4 x i8> %13, ptr %i.ev, align 2, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %.not.i.i40 = icmp eq ptr %.sroa.28101.1, null
  br i1 %.not.i.i40, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.thread
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %2, ptr noundef nonnull %.sroa.28101.1)
          to label %.noexc46 unwind label %.thread141

.noexc46:                                         ; preds = %bb.u
  %.pre.i41 = load ptr, ptr %2, align 8, !tbaa !437
  br label %bb.v

bb.v:                                             ; preds = %.noexc46, %.thread
  %i.ew = phi ptr [ %.pre.i41, %.noexc46 ], [ null, %.thread ]
  store ptr null, ptr %2, align 8, !tbaa !437
  %i.ex = load ptr, ptr %i.a, align 8, !tbaa !437 ; 2 uses
  store ptr %i.ew, ptr %i.a, align 8, !tbaa !437
  %.not.i.i.i.i.i42 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i.i.i42, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i43

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i43: ; preds = %bb.v
  call void @_ZdaPv(ptr noundef nonnull %i.ex) #34
  %.pr.i44 = load ptr, ptr %2, align 8, !tbaa !437 ; 2 uses
  %.not.i12.i = icmp eq ptr %.pr.i44, null
  br i1 %.not.i12.i, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i45

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i45: ; preds = %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i43
  call void @_ZdaPv(ptr noundef nonnull %.pr.i44) #34
  br label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i45, %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i43, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %_ZN7rocksdb6StatusaSERKS0_.exit

_ZN7rocksdb6StatusaSERKS0_.exit:                  ; preds = %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i, %bb.t
  %.not.i.i47 = icmp eq ptr %.sroa.28101.1, null
  br i1 %.not.i.i47, label %_ZN7rocksdb6StatusD2Ev.exit50, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i48

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i48: ; preds = %_ZN7rocksdb6StatusaSERKS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %.sroa.28101.1) #34
  br label %_ZN7rocksdb6StatusD2Ev.exit50

_ZN7rocksdb6StatusD2Ev.exit50:                    ; preds = %_ZN7rocksdb6StatusaSERKS0_.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i48
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i35: ; preds = %bb.o, %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34
  %.pn16 = phi { ptr, i32 } [ %i.eb, %bb.n ], [ %i.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34 ], [ %i.ec, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.cf) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  %.not.i.i51 = icmp eq ptr %.sroa.28101.0, null
  br i1 %.not.i.i51, label %_ZN7rocksdb6StatusD2Ev.exit54, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i52

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i52: ; preds = %.thread141, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i35
  %.pn19146 = phi { ptr, i32 } [ %i.bp, %.thread141 ], [ %.pn16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i35 ]
  %.sroa.28101.2145 = phi ptr [ %.sroa.28101.1, %.thread141 ], [ %.sroa.28101.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i35 ]
  call void @_ZdaPv(ptr noundef nonnull %.sroa.28101.2145) #34
  br label %_ZN7rocksdb6StatusD2Ev.exit54

_ZN7rocksdb6StatusD2Ev.exit54:                    ; preds = %.thread136, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i35
  %.pn19140 = phi { ptr, i32 } [ %.pn, %.thread136 ], [ %.pn19146, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i52 ], [ %.pn16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i35 ]
  %i.ey = load ptr, ptr %i.a, align 8, !tbaa !437 ; 2 uses
  %.not.i.i55 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i55, label %_ZN7rocksdb6StatusD2Ev.exit58, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i56

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i56: ; preds = %_ZN7rocksdb6StatusD2Ev.exit54
  call void @_ZdaPv(ptr noundef nonnull %i.ey) #34
  br label %_ZN7rocksdb6StatusD2Ev.exit58

_ZN7rocksdb6StatusD2Ev.exit58:                    ; preds = %_ZN7rocksdb6StatusD2Ev.exit54, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i56
  resume { ptr, i32 } %.pn19140
}

declare void @_ZN7rocksdb15DirFsyncOptionsC1ENS0_11FsyncReasonE(ptr noundef nonnull align 8 dereferenceable(40), i8 noundef zeroext) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb13CompactionJob17VerifyOutputFilesEv(ptr dead_on_unwind noalias nofree writable sret(%"class.rocksdb::Status") align 8 captures(address) initializes((0, 6), (8, 16)) %0, ptr noundef nonnull align 8 dereferenceable(1896) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %3 = alloca %"class.std::unique_ptr.1015", align 8 ; 6 uses
  %4 = alloca %"class.std::unique_ptr.1015", align 8 ; 6 uses
  %5 = alloca %"class.std::vector.576", align 8   ; 11 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %6 = alloca %class.anon.584, align 8            ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.c, align 8, !tbaa !95
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !168  ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !94   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 9136
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !436
  store ptr %i.h, ptr %i.a, align 8, !tbaa !772
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1296
  %i.j = load i32, ptr %i.i, align 16, !tbaa !773 ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !774
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1624
  %i.l = load i8, ptr %i.k, align 8, !tbaa !426, !range !408, !noundef !409
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = or i32 %i.j, 3074
  store i32 %i.n, ptr %i.b, align 4, !tbaa !774
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  store ptr %1, ptr %6, align 8, !tbaa !777
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.a, ptr %i.o, align 8, !tbaa !1452
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.b, ptr %i.p, align 8, !tbaa !395
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !487
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !488  ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 8456
  %i.y = icmp ugt i64 %i.x, 1
  br i1 %i.y, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRZN7rocksdb13CompactionJob17VerifyOutputFilesEvE3$_0St17reference_wrapperINS4_18SubcompactionStateEEEEERS0_DpOT_.exit", %bb.c
  %i.ab = phi ptr [ null, %bb.c ], [ %i.dd, %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRZN7rocksdb13CompactionJob17VerifyOutputFilesEvE3$_0St17reference_wrapperINS4_18SubcompactionStateEEEEERS0_DpOT_.exit" ] ; 3 uses
  %.lcssa40 = phi ptr [ %i.t, %bb.c ], [ %i.dj, %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRZN7rocksdb13CompactionJob17VerifyOutputFilesEvE3$_0St17reference_wrapperINS4_18SubcompactionStateEEEEERS0_DpOT_.exit" ]
  invoke fastcc void @"_ZZN7rocksdb13CompactionJob17VerifyOutputFilesEvENK3$_0clERNS_18SubcompactionStateE"(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8456) %.lcssa40)
          to label %bb.s unwind label %bb.t

bb.d:                                             ; preds = %.lr.ph, %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRZN7rocksdb13CompactionJob17VerifyOutputFilesEvE3$_0St17reference_wrapperINS4_18SubcompactionStateEEEEERS0_DpOT_.exit"
  %i.ac = phi ptr [ null, %.lr.ph ], [ %i.dd, %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRZN7rocksdb13CompactionJob17VerifyOutputFilesEvE3$_0St17reference_wrapperINS4_18SubcompactionStateEEEEERS0_DpOT_.exit" ] ; 6 uses
  %i.ad = phi ptr [ %i.t, %.lr.ph ], [ %i.dj, %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRZN7rocksdb13CompactionJob17VerifyOutputFilesEvE3$_0St17reference_wrapperINS4_18SubcompactionStateEEEEERS0_DpOT_.exit" ]
  %.01450 = phi i64 [ 1, %.lr.ph ], [ %i.de, %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRZN7rocksdb13CompactionJob17VerifyOutputFilesEvE3$_0St17reference_wrapperINS4_18SubcompactionStateEEEEERS0_DpOT_.exit" ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [8456 x i8], ptr %i.ad, i64 %.01450
  %i.af = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !637
  %.not.i = icmp eq ptr %i.ac, %i.ag
  br i1 %.not.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 0, ptr %i.ac, align 8, !tbaa !643
  %i.ah = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #35
          to label %.noexc unwind label %.loopexit ; 4 uses

.noexc:                                           ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN7rocksdb13CompactionJob17VerifyOutputFilesEvE3$_0St17reference_wrapperINS3_18SubcompactionStateEEEEEEEE", i64 16), ptr %i.ah, align 8, !tbaa !75
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %i.af, ptr %i.ai, align 8, !tbaa !640
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull readonly align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !1453
  store ptr %i.ah, ptr %4, align 8, !tbaa !651
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull align 8 %4, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.noexc
  %i.ak = load ptr, ptr %4, align 8, !tbaa !651   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i, label %"_ZSt12construct_atISt6threadJRZN7rocksdb13CompactionJob17VerifyOutputFilesEvE3$_0St17reference_wrapperINS1_18SubcompactionStateEEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i", label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i.i: ; preds = %bb.f
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !75
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.ak) #37, !inline_history !1440
  br label %"_ZSt12construct_atISt6threadJRZN7rocksdb13CompactionJob17VerifyOutputFilesEvE3$_0St17reference_wrapperINS1_18SubcompactionStateEEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i"

bb.g:                                             ; preds = %.noexc
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %4, align 8, !tbaa !651   ; 3 uses
  %.not.i6.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i6.i.i.i, label %.body, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i7.i.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i7.i.i.i: ; preds = %bb.g
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !75
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.ap) #37, !inline_history !1440
  br label %.body

"_ZSt12construct_atISt6threadJRZN7rocksdb13CompactionJob17VerifyOutputFilesEvE3$_0St17reference_wrapperINS1_18SubcompactionStateEEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i": ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.at = load ptr, ptr %i.z, align 8, !tbaa !636
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  store ptr %i.au, ptr %i.z, align 8, !tbaa !636
  br label %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRZN7rocksdb13CompactionJob17VerifyOutputFilesEvE3$_0St17reference_wrapperINS4_18SubcompactionStateEEEEERS0_DpOT_.exit"

end_hunk_0
