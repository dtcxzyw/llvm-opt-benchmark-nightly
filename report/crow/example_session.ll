Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/crow/original/example_session?download=true
inline.NumInlined: 13208
inline.NumDeleted: 5223
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN4crow6Router14handle_initialERNS_7requestERNS_8responseE:_ZNSt6vectorImSaImEEC2ERKS1_.exit.i
  br label %bb.ea

bb.t:                                             ; preds = %bb.n
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.q, %bb.o
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %8) #41
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn131 = phi { ptr, i32 } [ %i.cz, %bb.u ], [ %i.cy, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  br label %bb.ea

bb.w:                                             ; preds = %bb.m, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  store i32 404, ptr %9, align 8, !tbaa !123
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 4 uses
  store ptr %i.db, ptr %i.da, align 8, !tbaa !99
  %i.dc = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.dc, align 8, !tbaa !105
  store i8 0, ptr %i.db, align 8, !tbaa !104
  %i.dd = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
  store ptr %i.de, ptr %i.dd, align 8, !tbaa !124
  %i.df = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 3 uses
  store i64 1, ptr %i.df, align 8, !tbaa !125
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %9, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.dh, align 8, !tbaa !126
  %i.di = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.dj = getelementptr inbounds nuw i8, ptr %9, i64 104 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %9, i64 168 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %9, i64 184 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.di, i8 0, i64 19, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dj, i8 0, i64 64, i1 false)
  store ptr %i.dl, ptr %i.dk, align 8, !tbaa !99
  %i.dm = getelementptr inbounds nuw i8, ptr %9, i64 176
  store i64 0, ptr %i.dm, align 8, !tbaa !105
  store i8 0, ptr %i.dl, align 8, !tbaa !104
  %i.dn = call noundef nonnull align 8 dereferenceable(352) ptr @_ZN4crow8responseaSEOS0_(ptr noundef nonnull align 8 dereferenceable(352) %3, ptr noundef nonnull align 8 dereferenceable(352) %9) #41 ; 0 uses
  %i.do = load ptr, ptr %i.dk, align 8, !tbaa !103 ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.dl
  br i1 %i.dp, label %_ZN4crow8response16static_file_infoD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.w
  %i.dq = load i64, ptr %i.dl, align 8, !tbaa !104
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #42
  br label %_ZN4crow8response16static_file_infoD2Ev.exit.i

_ZN4crow8response16static_file_infoD2Ev.exit.i:   ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 152
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !127 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZN4crow8response16static_file_infoD2Ev.exit.i
  %i.du = getelementptr inbounds nuw i8, ptr %9, i64 136 ; 2 uses
  %i.dv = invoke noundef zeroext i1 %i.dt(ptr noundef nonnull align 8 dereferenceable(32) %i.du, ptr noundef nonnull align 8 dereferenceable(32) %i.du, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.y ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #43
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.x, %_ZN4crow8response16static_file_infoD2Ev.exit.i
  %i.dy = getelementptr inbounds nuw i8, ptr %9, i64 120
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !127 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.dz, null
  br i1 %.not.i1.i, label %_ZNSt14_Function_baseD2Ev.exit2.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.ea = invoke noundef zeroext i1 %i.dz(ptr noundef nonnull align 8 dereferenceable(32) %i.dj, ptr noundef nonnull align 8 dereferenceable(32) %i.dj, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2.i unwind label %bb.aa ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.eb = landingpad { ptr, i32 }
          catch ptr null
  %i.ec = extractvalue { ptr, i32 } %i.eb, 0
  call void @__clang_call_terminate(ptr %i.ec) #43
  unreachable

_ZNSt14_Function_baseD2Ev.exit2.i:                ; preds = %bb.z, %_ZNSt14_Function_baseD2Ev.exit.i
  %i.ed = load ptr, ptr %i.dg, align 8, !tbaa !300 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.ed, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.ee, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i ], [ %i.ed, %_ZNSt14_Function_baseD2Ev.exit2.i ] ; 6 uses
  %i.ee = load ptr, ptr %.06.i.i.i, align 8, !tbaa !169 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 40
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !103 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 56 ; 2 uses
  %i.ej = icmp eq ptr %i.eh, %i.ei
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i323

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i323: ; preds = %.lr.ph.i.i.i
  %i.ek = load i64, ptr %i.ei, align 8, !tbaa !104
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.el) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i323
  %i.em = load ptr, ptr %i.ef, align 8, !tbaa !103 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !104
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eq) #42
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 80) #42
  %.not.i.i.i324 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i324, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, %_ZNSt14_Function_baseD2Ev.exit2.i
  %i.er = load ptr, ptr %i.dd, align 8, !tbaa !124
  %i.es = load i64, ptr %i.df, align 8, !tbaa !125
  %i.et = shl i64 %i.es, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.er, i8 0, i64 %i.et, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, i8 0, i64 16, i1 false)
  %i.eu = load ptr, ptr %i.dd, align 8, !tbaa !124 ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.de
  br i1 %i.ev, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i
  %i.ew = load i64, ptr %i.df, align 8, !tbaa !125
  %i.ex = shl i64 %i.ew, 3
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ex) #42
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i, %bb.ab
  %i.ey = load ptr, ptr %i.da, align 8, !tbaa !103 ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.db
  br i1 %i.ez, label %_ZN4crow8responseD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit
  %i.fa = load i64, ptr %i.db, align 8, !tbaa !104
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fb) #42
  br label %_ZN4crow8responseD2Ev.exit

_ZN4crow8responseD2Ev.exit:                       ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  invoke void @_ZN4crow8response3endEv(ptr noundef nonnull align 8 dereferenceable(352) %3)
          to label %.critedge unwind label %bb.db

bb.ac:                                            ; preds = %_ZN4crow21routing_handle_resultaSEOS0_.exit147, %_ZN4crow21routing_handle_resultaSEOS0_.exit
  %.097 = phi i8 [ %i.f, %_ZN4crow21routing_handle_resultaSEOS0_.exit ], [ 1, %_ZN4crow21routing_handle_resultaSEOS0_.exit147 ]
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i8 1, ptr %i.fc, align 8, !tbaa !564
  store i8 %.097, ptr %i.r, align 8, !tbaa !1086
  br label %.critedge

bb.ad:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  %i.fd = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.fd, ptr %10, align 8, !tbaa !99
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.fd, ptr noundef nonnull align 1 dereferenceable(13) @.str.367, i64 13, i1 false)
  %i.fe = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 10 uses
  store i64 13, ptr %i.fe, align 8, !tbaa !105
  %i.ff = getelementptr inbounds nuw i8, ptr %10, i64 29
  store i8 0, ptr %i.ff, align 1, !tbaa !104
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !105
  %i.fj = icmp eq i64 %i.fi, 2
  br i1 %i.fj, label %.split, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader: ; preds = %.split, %bb.ad
  %i.fk = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  br label %bb.ax

.split:                                           ; preds = %bb.ad
  %i.fn = load ptr, ptr %i.fg, align 8, !tbaa !103
  %i.fo = load i16, ptr %i.fn, align 1
  %i.fp = icmp ne i16 %i.fo, 10799
  %i.fq = zext i1 %i.fp to i32
  %i.fr = icmp eq i32 %i.fq, 0
  br i1 %i.fr, label %bb.ae, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader

bb.ae:                                            ; preds = %.split
  %i.fs = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 17 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !696
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !696
  %i.fy = icmp eq ptr %i.fv, %i.fx
  br i1 %i.fy, label %.peel.next, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.peel: ; preds = %bb.ae
  %i.fz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.369, i64 noundef 2)
          to label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  call void @llvm.experimental.noalias.scope.decl(metadata !2248)
  store ptr %i.fs, ptr %11, align 8, !tbaa !99, !alias.scope !2248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #41, !noalias !2248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.fs, ptr noundef nonnull align 1 dereferenceable(6) @.str.375, i64 6, i1 false)
  store i64 6, ptr %i.ft, align 8, !tbaa !105, !alias.scope !2248
  %i.ga = getelementptr inbounds nuw i8, ptr %11, i64 22
  store i8 0, ptr %i.ga, align 2, !tbaa !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41, !noalias !2248
  %i.gb = load i64, ptr %i.fe, align 8, !tbaa !105
  %i.gc = add i64 %i.gb, -4611686018427387898
  %i.gd = icmp ult i64 %i.gc, 6
  br i1 %i.gd, label %.loopexit442, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.peel: ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit.peel
  %i.ge = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull %i.fs, i64 noundef 6)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.peel unwind label %.loopexit.split-lp375.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.peel
  %i.gf = load ptr, ptr %11, align 8, !tbaa !103  ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.fs
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.peel
  %i.gh = load i64, ptr %i.fs, align 8, !tbaa !104
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gi) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  br label %.peel.next

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %bb.ae
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !696
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !696
  %i.gn = icmp eq ptr %i.gk, %i.gm
  br i1 %i.gn, label %.peel.next421.preheader, label %bb.af

bb.af:                                            ; preds = %.peel.next
  %i.go = load i64, ptr %i.fe, align 8, !tbaa !105
  %i.gp = and i64 %i.go, -2
  %i.gq = icmp eq i64 %i.gp, 4611686018427387902
  br i1 %i.gq, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.peel408

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.peel408: ; preds = %bb.af
  %i.gr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.369, i64 noundef 2)
          to label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit.peel413 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit.peel413: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.peel408
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  call void @llvm.experimental.noalias.scope.decl(metadata !2249)
  store ptr %i.fs, ptr %11, align 8, !tbaa !99, !alias.scope !2249
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #41, !noalias !2249
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.fs, ptr noundef nonnull align 1 dereferenceable(3) @.str.376, i64 3, i1 false)
  store i64 3, ptr %i.ft, align 8, !tbaa !105, !alias.scope !2249
  %i.gs = getelementptr inbounds nuw i8, ptr %11, i64 19
  store i8 0, ptr %i.gs, align 1, !tbaa !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41, !noalias !2249
  %i.gt = load i64, ptr %i.fe, align 8, !tbaa !105
  %i.gu = add i64 %i.gt, -4611686018427387901
  %i.gv = icmp ult i64 %i.gu, 3
  br i1 %i.gv, label %.loopexit442, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.peel414

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.peel414: ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit.peel413
  %i.gw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull %i.fs, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.peel415 unwind label %.loopexit.split-lp375.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.peel415: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.peel414
  %i.gx = load ptr, ptr %11, align 8, !tbaa !103  ; 2 uses
  %i.gy = icmp eq ptr %i.gx, %i.fs
  br i1 %i.gy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel418, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel416

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel416: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.peel415
  %i.gz = load i64, ptr %i.fs, align 8, !tbaa !104
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.ha) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel418

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel418: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.peel415, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel416
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  br label %.peel.next421.preheader

.peel.next421.preheader:                          ; preds = %.peel.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel418
  br label %.peel.next421

.peel.next421:                                    ; preds = %.peel.next421.preheader, %bb.ak
  %indvars.iv403 = phi i64 [ %indvars.iv.next404, %bb.ak ], [ 3, %.peel.next421.preheader ] ; 3 uses
  %i.hb = getelementptr inbounds nuw [104 x i8], ptr %1, i64 %indvars.iv403 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 120
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !696
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 128
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !696
  %i.hg = icmp eq ptr %i.hd, %i.hf
  br i1 %i.hg, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %.peel.next421
  %i.hh = load i64, ptr %i.fe, align 8, !tbaa !105
  %i.hi = and i64 %i.hh, -2
  %i.hj = icmp eq i64 %i.hi, 4611686018427387902
  br i1 %i.hj, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.ag
  %i.hk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.369, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  call void @llvm.experimental.noalias.scope.decl(metadata !2250)
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr @_ZN4crowL14method_stringsE, i64 %indvars.iv403
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !245, !noalias !2250 ; 3 uses
  store ptr %i.fs, ptr %11, align 8, !tbaa !99, !alias.scope !2250
  %i.hn = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hm) #41 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #41, !noalias !2250
  store i64 %i.hn, ptr %i.e, align 8, !tbaa !101, !noalias !2250
  %i.ho = icmp ugt i64 %i.hn, 15
  br i1 %i.ho, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.hp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc153 unwind label %bb.aj ; 2 uses

.noexc153:                                        ; preds = %.noexc.i.i
  store ptr %i.hp, ptr %11, align 8, !tbaa !103, !alias.scope !2250
  %i.hq = load i64, ptr %i.e, align 8, !tbaa !101, !noalias !2250
  store i64 %i.hq, ptr %i.fs, align 8, !tbaa !104, !alias.scope !2250
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc153, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.hr = phi ptr [ %i.hp, %.noexc153 ], [ %i.fs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit ] ; 2 uses
  switch i64 %i.hn, label %bb.ai [
    i64 1, label %bb.ah
    i64 0, label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit
  ]

bb.ah:                                            ; preds = %._crit_edge.i.i.i
  %i.hs = load i8, ptr %i.hm, align 1, !tbaa !104
  store i8 %i.hs, ptr %i.hr, align 1, !tbaa !104
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit

bb.ai:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hr, ptr nonnull align 1 %i.hm, i64 %i.hn, i1 false)
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit

_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit: ; preds = %bb.ai, %bb.ah, %._crit_edge.i.i.i
  %i.ht = load i64, ptr %i.e, align 8, !tbaa !101, !noalias !2250 ; 2 uses
  store i64 %i.ht, ptr %i.ft, align 8, !tbaa !105, !alias.scope !2250
  %i.hu = load ptr, ptr %11, align 8, !tbaa !103, !alias.scope !2250
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.ht
  store i8 0, ptr %i.hv, align 1, !tbaa !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41, !noalias !2250
  %i.hw = load i64, ptr %i.ft, align 8, !tbaa !105 ; 2 uses
  %i.hx = load i64, ptr %i.fe, align 8, !tbaa !105
  %i.hy = sub i64 4611686018427387903, %i.hx
  %i.hz = icmp ult i64 %i.hy, %i.hw
  br i1 %i.hz, label %.loopexit442, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i

.loopexit442:                                     ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit, %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit.peel413, %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit.peel
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.243) #40
          to label %.noexc155 unwind label %.loopexit.split-lp375.loopexit.split-lp.loopexit.split-lp

.noexc155:                                        ; preds = %.loopexit442
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit
  %i.ia = load ptr, ptr %11, align 8, !tbaa !103
  %i.ib = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.ia, i64 noundef %i.hw)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit unwind label %.loopexit.split-lp375.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %i.ic = load ptr, ptr %11, align 8, !tbaa !103  ; 2 uses
  %i.id = icmp eq ptr %i.ic, %i.fs
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.ie = load i64, ptr %i.fs, align 8, !tbaa !104
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ic, i64 noundef %i.if) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  br label %bb.ak

bb.aj:                                            ; preds = %.noexc.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159

.loopexit.split-lp375.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.peel414, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.peel, %.loopexit442
  %lpad.loopexit.split-lp607 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ig = load ptr, ptr %11, align 8, !tbaa !103  ; 2 uses
  %i.ih = icmp eq ptr %i.ig, %i.fs
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157: ; preds = %.loopexit.split-lp375.loopexit.split-lp.loopexit.split-lp
  %i.ii = load i64, ptr %i.fs, align 8, !tbaa !104
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ij) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159: ; preds = %.loopexit.split-lp375.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157, %bb.aj
  %.pn124 = phi { ptr, i32 } [ %lpad.loopexit, %bb.aj ], [ %lpad.loopexit.split-lp607, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157 ], [ %lpad.loopexit.split-lp607, %.loopexit.split-lp375.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188

bb.ak:                                            ; preds = %.peel.next421, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv.next404 = add nuw nsw i64 %indvars.iv403, 1 ; 2 uses
  %exitcond406.not = icmp eq i64 %indvars.iv.next404, 34
  br i1 %exitcond406.not, label %.loopexit446, label %.peel.next421, !llvm.loop !2242

.loopexit446:                                     ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  store i32 204, ptr %12, align 8, !tbaa !123
  %i.ik = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 4 uses
  store ptr %i.il, ptr %i.ik, align 8, !tbaa !99
  %i.im = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 0, ptr %i.im, align 8, !tbaa !105
  store i8 0, ptr %i.il, align 8, !tbaa !104
  %i.in = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %12, i64 88 ; 2 uses
  store ptr %i.io, ptr %i.in, align 8, !tbaa !124
  %i.ip = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 3 uses
  store i64 1, ptr %i.ip, align 8, !tbaa !125
  %i.iq = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %12, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.iq, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ir, align 8, !tbaa !126
  %i.is = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.it = getelementptr inbounds nuw i8, ptr %12, i64 104 ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %12, i64 168 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %12, i64 184 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.is, i8 0, i64 19, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.it, i8 0, i64 64, i1 false)
  store ptr %i.iv, ptr %i.iu, align 8, !tbaa !99
  %i.iw = getelementptr inbounds nuw i8, ptr %12, i64 176
  store i64 0, ptr %i.iw, align 8, !tbaa !105
  store i8 0, ptr %i.iv, align 8, !tbaa !104
  %i.ix = call noundef nonnull align 8 dereferenceable(352) ptr @_ZN4crow8responseaSEOS0_(ptr noundef nonnull align 8 dereferenceable(352) %3, ptr noundef nonnull align 8 dereferenceable(352) %12) #41 ; 0 uses
  %i.iy = load ptr, ptr %i.iu, align 8, !tbaa !103 ; 2 uses
  %i.iz = icmp eq ptr %i.iy, %i.iv
  br i1 %i.iz, label %_ZN4crow8response16static_file_infoD2Ev.exit.i161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i160: ; preds = %.loopexit446
  %i.ja = load i64, ptr %i.iv, align 8, !tbaa !104
  %i.jb = add i64 %i.ja, 1
  call void @_ZdlPvm(ptr noundef %i.iy, i64 noundef %i.jb) #42
  br label %_ZN4crow8response16static_file_infoD2Ev.exit.i161

_ZN4crow8response16static_file_infoD2Ev.exit.i161: ; preds = %.loopexit446, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i160
  %i.jc = getelementptr inbounds nuw i8, ptr %12, i64 152
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !127 ; 2 uses
  %.not.i.i162 = icmp eq ptr %i.jd, null
  br i1 %.not.i.i162, label %_ZNSt14_Function_baseD2Ev.exit.i163, label %bb.al

bb.al:                                            ; preds = %_ZN4crow8response16static_file_infoD2Ev.exit.i161
  %i.je = getelementptr inbounds nuw i8, ptr %12, i64 136 ; 2 uses
  %i.jf = invoke noundef zeroext i1 %i.jd(ptr noundef nonnull align 8 dereferenceable(32) %i.je, ptr noundef nonnull align 8 dereferenceable(32) %i.je, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i163 unwind label %bb.am ; 0 uses

bb.am:                                            ; preds = %bb.al
  %i.jg = landingpad { ptr, i32 }
          catch ptr null
  %i.jh = extractvalue { ptr, i32 } %i.jg, 0
  call void @__clang_call_terminate(ptr %i.jh) #43
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i163:              ; preds = %bb.al, %_ZN4crow8response16static_file_infoD2Ev.exit.i161
  %i.ji = getelementptr inbounds nuw i8, ptr %12, i64 120
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !127 ; 2 uses
  %.not.i1.i164 = icmp eq ptr %i.jj, null
  br i1 %.not.i1.i164, label %_ZNSt14_Function_baseD2Ev.exit2.i165, label %bb.an

bb.an:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i163
  %i.jk = invoke noundef zeroext i1 %i.jj(ptr noundef nonnull align 8 dereferenceable(32) %i.it, ptr noundef nonnull align 8 dereferenceable(32) %i.it, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2.i165 unwind label %bb.ao ; 0 uses

bb.ao:                                            ; preds = %bb.an
end_hunk_0
