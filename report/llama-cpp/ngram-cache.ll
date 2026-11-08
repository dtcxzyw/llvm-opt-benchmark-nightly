Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ngram-cache?download=true
inline.NumInlined: 745
inline.NumDeleted: 320
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_Z25common_ngram_cache_updateRSt13unordered_mapI12common_ngramS_IiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE26common_ngram_hash_functionS3_IS0_ESaIS5_IKS0_S9_EEEiiRSt6vectorIiSaIiEEib:bb.a
  %i.in = call ptr @__cxa_begin_catch(ptr %i.im) #18 ; 0 uses
  store i64 %i.hg, ptr %i.il, align 8, !tbaa !46
  invoke void @__cxa_rethrow() #20
          to label %bb.bl unwind label %bb.bj

bb.bj:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp
  %i.io = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit30.i66.body unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ip = landingpad { ptr, i32 }
          catch ptr null
  %i.iq = extractvalue { ptr, i32 } %i.ip, 0
  call void @__clang_call_terminate(ptr %i.iq) #22
  unreachable

bb.bl:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp
  unreachable

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i83: ; preds = %bb.bi, %._crit_edge.i102
  store i64 %i.hl, ptr %i.hh, align 8, !tbaa !38
  store ptr %.0.i.i94, ptr %i.fb, align 8, !tbaa !37
  %i.ir = urem i64 %i.hd, %i.hl
  br label %bb.bm

bb.bm:                                            ; preds = %.noexc84._crit_edge, %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i83
  %i.is = phi ptr [ %.0.i.i94, %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i83 ], [ %.pre, %.noexc84._crit_edge ] ; 2 uses
  %.0.i80 = phi i64 [ %i.ir, %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i83 ], [ %i.hc, %.noexc84._crit_edge ]
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %.0.i80 ; 3 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !33 ; 2 uses
  %.not.i.i81 = icmp eq ptr %i.iu, null
  br i1 %.not.i.i81, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !30
  store ptr %i.iv, ptr %i.fz, align 8, !tbaa !30
  %i.iw = load ptr, ptr %i.it, align 8, !tbaa !33
  store ptr %i.fz, ptr %i.iw, align 8, !tbaa !30
  br label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit86

bb.bo:                                            ; preds = %bb.bm
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i, i64 40 ; 3 uses
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !45
  store ptr %i.iy, ptr %i.fz, align 8, !tbaa !30
  store ptr %i.fz, ptr %i.ix, align 8, !tbaa !45
  %i.iz = load ptr, ptr %i.fz, align 8, !tbaa !30 ; 2 uses
  %.not11.i.i82 = icmp eq ptr %i.iz, null
  br i1 %.not11.i.i82, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jb = load i64, ptr %i.hh, align 8, !tbaa !38
  %i.jc = load i32, ptr %i.ja, align 4, !tbaa !20
  %i.jd = sext i32 %i.jc to i64
  %i.je = urem i64 %i.jd, %i.jb
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %i.je
  store ptr %i.fz, ptr %i.jf, align 8, !tbaa !33
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  store ptr %i.ix, ptr %i.it, align 8, !tbaa !33
  br label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit86

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit86: ; preds = %bb.bn, %bb.bq
  %i.jg = load i64, ptr %i.fc, align 8, !tbaa !47
  %i.jh = add i64 %i.jg, 1
  store i64 %i.jh, ptr %i.fc, align 8, !tbaa !47
  br label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRS1_iEEES0_INS4_14_Node_iteratorIS2_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_.exit76

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit30.i66: ; preds = %.critedge28.i65
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit30.i66.body

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit30.i66.body: ; preds = %bb.bj, %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit30.i66
  %eh.lpad-body85 = phi { ptr, i32 } [ %i.ji, %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit30.i66 ], [ %i.io, %bb.bj ]
  call void @_ZdlPvm(ptr noundef nonnull %i.fz, i64 noundef 16) #21
  br label %common.resume

_ZNKSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit.i71: ; preds = %bb.ay, %bb.av, %bb.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.fz, i64 noundef 16) #21
  br label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRS1_iEEES0_INS4_14_Node_iteratorIS2_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_.exit76

_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit: ; preds = %bb.ar, %bb.ao, %bb.aq
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.ao ], [ %i.fp, %bb.aq ], [ %i.fu, %bb.ar ]
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 12 ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !42
  %i.jl = add nsw i32 %i.jk, 1
  store i32 %i.jl, ptr %i.jj, align 4, !tbaa !42
  br label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRS1_iEEES0_INS4_14_Node_iteratorIS2_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_.exit76

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRS1_iEEES0_INS4_14_Node_iteratorIS2_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_.exit76: ; preds = %_ZNKSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit.i71, %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit86, %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit, %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEED2Ev.exit
  %i.jm = add nsw i64 %.1181, 1                   ; 6 uses
  %i.jn = srem i64 %i.jm, 10000000
  %i.jo = icmp eq i64 %i.jn, 0
  %or.cond = select i1 %5, i1 %i.jo, i1 false
  br i1 %or.cond, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRS1_iEEES0_INS4_14_Node_iteratorIS2_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_.exit76
  %i.jp = call i64 @ggml_time_ms()
  %i.jq = sub nsw i64 %i.k, %i.jm
  %i.jr = sub nsw i64 %i.jp, %i.a
  %i.js = mul nsw i64 %i.jr, %i.jq
  %i.jt = sdiv i64 %i.js, %i.jm                   ; 2 uses
  %i.ju = sdiv i64 %i.jt, 60000                   ; 2 uses
  %.neg = mul nsw i64 %i.ju, -60000
  %i.jv = add i64 %.neg, %i.jt
  %i.jw = sdiv i64 %i.jv, 1000
  %i.jx = load ptr, ptr @stderr, align 8, !tbaa !76
  %i.jy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jx, ptr noundef nonnull @.str, ptr noundef nonnull @__func__._Z25common_ngram_cache_updateRSt13unordered_mapI12common_ngramS_IiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE26common_ngram_hash_functionS3_IS0_ESaIS5_IKS0_S9_EEEiiRSt6vectorIiSaIiEEib, i64 noundef %i.jm, i64 noundef %i.k, i64 noundef %i.ju, i64 noundef %i.jw) #23 ; 0 uses
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRS1_iEEES0_INS4_14_Node_iteratorIS2_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_.exit76
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.jz = add nsw i64 %.042180, 1                 ; 2 uses
  %i.ka = icmp slt i64 %i.jz, %i.h
  br i1 %i.ka, label %bb.c, label %._crit_edge, !llvm.loop !74
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i64 @ggml_time_ms() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !30 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 16) #21
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !38
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !37     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !38
  %i.l = shl i64 %i.k, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #21
  br label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_Z24common_ngram_cache_draftRSt6vectorIiSaIiEES2_iiiRSt13unordered_mapI12common_ngramS3_IiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE26common_ngram_hash_functionS7_IS4_ESaIS9_IKS4_SD_EEESK_SK_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %7) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %9 = alloca %"class.std::unordered_map.5", align 8 ; 12 uses
  %10 = alloca %"class.std::unordered_map.5", align 8 ; 16 uses
  %11 = alloca %"class.std::vector.32", align 8   ; 13 uses
  %12 = alloca %struct.common_ngram, align 4      ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = load ptr, ptr %1, align 8, !tbaa !18
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp eq i64 %i.f, 4
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef 150, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.j = load ptr, ptr %0, align 8, !tbaa !18
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 2                   ; 2 uses
  %i.o = trunc i64 %i.n to i32                    ; 3 uses
  %i.p = icmp slt i32 %i.o, 2
  br i1 %i.p, label %.loopexit96, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.q = add nsw i64 %i.n, 4294967294
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 40
  %.not47116 = icmp sgt i32 %3, %4
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %13 = xor i32 %3, -1
  %14 = add i32 %13, %i.o
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEED2Ev.exit
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.ai = load ptr, ptr %1, align 8, !tbaa !18    ; 3 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 2                 ; 2 uses
  %i.an = trunc i64 %i.am to i32
  %.not = icmp slt i32 %2, %i.an
  br i1 %.not, label %.loopexit96, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = add nsw i64 %i.q, %i.am
  %i.ap = trunc i64 %i.ao to i32                  ; 2 uses
  %i.aq = add i32 %i.ap, -1                       ; 2 uses
  %i.ar = add i32 %i.ap, 1
  %i.as = icmp slt i32 %i.aq, %i.ar
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %.val52 = load ptr, ptr %0, align 8, !tbaa !18  ; 3 uses
  %.val53 = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.at = ptrtoint ptr %.val53 to i64
  %i.au = ptrtoint ptr %.val52 to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 2                 ; 4 uses
  %i.ax = sext i32 %i.aq to i64                   ; 4 uses
  %i.ay = icmp ugt i64 %i.aw, %i.ax
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.val52, i64 %i.ax
  %reass.sub = sub nsw i64 %i.ax, %i.aw
  %i.ba = getelementptr [4 x i8], ptr %i.ai, i64 %reass.sub
  %i.bb = getelementptr i8, ptr %i.ba, i64 4
  %.in.i = select i1 %i.ay, ptr %i.az, ptr %i.bb
  %i.bc = load i32, ptr %.in.i, align 4, !tbaa !20
  %indvars.iv.next = add nsw i64 %i.ax, 1         ; 3 uses
  %i.bd = icmp ugt i64 %i.aw, %indvars.iv.next
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.val52, i64 %indvars.iv.next
  %reass.sub.1 = sub nsw i64 %indvars.iv.next, %i.aw
  %i.bf = getelementptr [4 x i8], ptr %i.ai, i64 %reass.sub.1
  %i.bg = getelementptr i8, ptr %i.bf, i64 4
  %.in.i.1 = select i1 %i.bd, ptr %i.be, ptr %i.bg
  %i.bh = load i32, ptr %.in.i.1, align 4, !tbaa !20
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %i.bi = phi i32 [ %i.bh, %.lr.ph ], [ -1, %bb.e ] ; 6 uses
  %i.bj = phi i32 [ %i.bc, %.lr.ph ], [ -1, %bb.e ] ; 6 uses
  %i.bk = load i64, ptr %i.r, align 8, !tbaa !29
  %.not.not.i = icmp eq i64 %i.bk, 0
  br i1 %.not.not.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %._crit_edge
  %.sroa.06.013.i = load ptr, ptr %i.t, align 8, !tbaa !30 ; 2 uses
  %.not14.i = icmp eq ptr %.sroa.06.013.i, null
  br i1 %.not14.i, label %_ZNSt10_HashtableI12common_ngramSt4pairIKS0_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS1_IKiiEEEESaISC_ENSt8__detail10_Select1stES6_IS0_E26common_ngram_hash_functionNSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS2_.exit, label %.lr.ph.i72

.lr.ph.i72:                                       ; preds = %bb.f, %_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS3_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i
  %.sroa.06.015.i = phi ptr [ %.sroa.06.0.i, %_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS3_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i ], [ %.sroa.06.013.i, %bb.f ] ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.06.015.i, i64 8
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !20
  %.not.i.i.i.i73 = icmp eq i32 %i.bj, %i.bm
  br i1 %.not.i.i.i.i73, label %bb.g, label %_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS3_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i

bb.g:                                             ; preds = %.lr.ph.i72
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.06.015.i, i64 12
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !20
  %.not.1.i.i.i.i = icmp eq i32 %i.bi, %i.bo
  br i1 %.not.1.i.i.i.i, label %bb.h, label %_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS3_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i

bb.h:                                             ; preds = %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.06.015.i, i64 16
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !20
  %.not.2.i.i.i.i = icmp eq i32 %i.bq, -1
  br i1 %.not.2.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS3_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.i, label %_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS3_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i

_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS3_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.i: ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.06.015.i, i64 20
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !20
  %.not.3.i.i.i.i = icmp eq i32 %i.bs, -1
  br i1 %.not.3.i.i.i.i, label %_ZNSt10_HashtableI12common_ngramSt4pairIKS0_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS1_IKiiEEEESaISC_ENSt8__detail10_Select1stES6_IS0_E26common_ngram_hash_functionNSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS2_.exit, label %_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS3_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i

_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS3_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS3_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.i, %bb.h, %bb.g, %.lr.ph.i72
  %.sroa.06.0.i = load ptr, ptr %.sroa.06.015.i, align 8, !tbaa !30 ; 2 uses
  %.not.i74 = icmp eq ptr %.sroa.06.0.i, null
  br i1 %.not.i74, label %_ZNSt10_HashtableI12common_ngramSt4pairIKS0_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS1_IKiiEEEESaISC_ENSt8__detail10_Select1stES6_IS0_E26common_ngram_hash_functionNSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS2_.exit, label %.lr.ph.i72, !llvm.loop !0

bb.i:                                             ; preds = %._crit_edge
  %i.bt = sext i32 %i.bj to i64
  %i.bu = mul i64 %i.bt, -7046029254386353131
  %i.bv = sext i32 %i.bi to i64
  %i.bw = mul i64 %i.bv, -7046029254386353131
  %i.bx = xor i64 %i.bw, %i.bu                    ; 2 uses
  %i.by = load i64, ptr %i.s, align 8, !tbaa !31  ; 2 uses
  %i.bz = urem i64 %i.bx, %i.by                   ; 2 uses
  %i.ca = load ptr, ptr %7, align 8, !tbaa !32
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bz
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !33 ; 2 uses
  %.not.i.i.i71 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i71, label %_ZNSt10_HashtableI12common_ngramSt4pairIKS0_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS1_IKiiEEEESaISC_ENSt8__detail10_Select1stES6_IS0_E26common_ngram_hash_functionNSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS2_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !30 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 80
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !35
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %bb.j
  %i.ce = phi i64 [ %.pre.i.i.i, %bb.j ], [ %i.cr, %bb.o ]
  %i.cf = phi ptr [ %i.cd, %bb.j ], [ %i.cp, %bb.o ] ; 6 uses
  %i.cg = icmp eq i64 %i.bx, %i.ce
  br i1 %i.cg, label %bb.l, label %_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !20
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.bj, %i.ci
  br i1 %.not.i.i.i.i.i.i.i, label %bb.m, label %_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !20
  %.not.1.i.i.i.i.i.i.i = icmp eq i32 %i.bi, %i.ck
  br i1 %.not.1.i.i.i.i.i.i.i, label %bb.n, label %_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !20
  %.not.2.i.i.i.i.i.i.i = icmp eq i32 %i.cm, -1
  br i1 %.not.2.i.i.i.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i.i

_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i.i: ; preds = %bb.n
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 20
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !20
  %.not.3.i.i.i.i.i.i.i = icmp eq i32 %i.co, -1
  br i1 %.not.3.i.i.i.i.i.i.i, label %_ZNSt10_HashtableI12common_ngramSt4pairIKS0_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS1_IKiiEEEESaISC_ENSt8__detail10_Select1stES6_IS0_E26common_ngram_hash_functionNSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS2_.exit, label %_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i.i

_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i.i, %bb.n, %bb.m, %bb.l, %bb.k
  %i.cp = load ptr, ptr %i.cf, align 8, !tbaa !30 ; 3 uses
  %.not18.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not18.i.i.i, label %_ZNSt10_HashtableI12common_ngramSt4pairIKS0_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS1_IKiiEEEESaISC_ENSt8__detail10_Select1stES6_IS0_E26common_ngram_hash_functionNSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS2_.exit, label %bb.o

bb.o:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 80
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !35 ; 2 uses
  %i.cs = urem i64 %i.cr, %i.by
  %.not19.i.i.i = icmp eq i64 %i.cs, %i.bz
  br i1 %.not19.i.i.i, label %bb.k, label %_ZNSt10_HashtableI12common_ngramSt4pairIKS0_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS1_IKiiEEEESaISC_ENSt8__detail10_Select1stES6_IS0_E26common_ngram_hash_functionNSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS2_.exit, !llvm.loop !1

_ZNSt10_HashtableI12common_ngramSt4pairIKS0_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS1_IKiiEEEESaISC_ENSt8__detail10_Select1stES6_IS0_E26common_ngram_hash_functionNSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS2_.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i.i, %_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i.i, %bb.o, %_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS3_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.i, %_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS3_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i, %bb.f, %bb.i
  %.sroa.06.1.i = phi ptr [ null, %bb.i ], [ null, %_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS3_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i ], [ null, %bb.f ], [ %.sroa.06.015.i, %_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS3_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.i ], [ null, %_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i.i ], [ null, %bb.o ], [ %i.cf, %_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  store ptr %i.u, ptr %10, align 8, !tbaa !37
  store i64 1, ptr %i.v, align 8, !tbaa !38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.x, align 8, !tbaa !39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %.not90 = icmp eq ptr %.sroa.06.1.i, null
  br i1 %.not90, label %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEEaSERKS8_.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt10_HashtableI12common_ngramSt4pairIKS0_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS1_IKiiEEEESaISC_ENSt8__detail10_Select1stES6_IS0_E26common_ngram_hash_functionNSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS2_.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i, i64 24 ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %10
  br i1 %i.cu, label %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEEaSERKS8_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE18_M_assign_elementsIRKSF_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(56) %i.ct)
          to label %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEEaSERKS8_.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEEaSERKS8_.exit: ; preds = %bb.p, %bb.q, %_ZNSt10_HashtableI12common_ngramSt4pairIKS0_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS1_IKiiEEEESaISC_ENSt8__detail10_Select1stES6_IS0_E26common_ngram_hash_functionNSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  br i1 %.not47116, label %._crit_edge119, label %.lr.ph118

.lr.ph118:                                        ; preds = %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEEaSERKS8_.exit, %_ZNSt6vectorI12common_ngramSaIS0_EE9push_backERKS0_.exit
  %i.cw = phi ptr [ %i.eq, %_ZNSt6vectorI12common_ngramSaIS0_EE9push_backERKS0_.exit ], [ null, %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEEaSERKS8_.exit ] ; 6 uses
  %indvars.iv = phi i32 [ %indvars.iv.next137, %_ZNSt6vectorI12common_ngramSaIS0_EE9push_backERKS0_.exit ], [ %14, %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEEaSERKS8_.exit ] ; 2 uses
  %.042117 = phi i32 [ %i.es, %_ZNSt6vectorI12common_ngramSaIS0_EE9push_backERKS0_.exit ], [ %3, %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEEaSERKS8_.exit ] ; 5 uses
  %i.cx = phi ptr [ %i.er, %_ZNSt6vectorI12common_ngramSaIS0_EE9push_backERKS0_.exit ], [ null, %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEEaSERKS8_.exit ] ; 9 uses
  %i.cy = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.cz = load ptr, ptr %1, align 8, !tbaa !18    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %12, i8 -1, i64 16, i1 false), !tbaa !20
  %i.da = icmp sgt i32 %.042117, 0
  br i1 %i.da, label %.lr.ph109, label %._crit_edge110

.lr.ph109:                                        ; preds = %.lr.ph118
  %i.db = xor i32 %.042117, -1
  %i.dc = add nsw i32 %i.db, %i.o
  %i.dd = ptrtoint ptr %i.cy to i64
  %i.de = ptrtoint ptr %i.cz to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = lshr i64 %i.df, 2
  %i.dh = trunc i64 %i.dg to i32                  ; 2 uses
  %i.di = add i32 %i.dc, %i.dh                    ; 2 uses
  %i.dj = add nsw i32 %i.di, %.042117
  %.val = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %.val50 = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.dk = ptrtoint ptr %.val50 to i64
  %i.dl = ptrtoint ptr %.val to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 2                 ; 2 uses
  %15 = add i32 %indvars.iv, %i.dh
  %16 = sext i32 %15 to i64
  %i.do = sext i32 %i.di to i64
  %i.dp = sext i32 %i.dj to i64
  br label %bb.x

._crit_edge110:                                   ; preds = %bb.x, %.lr.ph118
  %i.dq = load ptr, ptr %i.aa, align 8, !tbaa !83
  %.not.i = icmp eq ptr %i.cw, %i.dq
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %._crit_edge110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cw, ptr noundef nonnull align 4 dereferenceable(16) %12, i64 16, i1 false), !tbaa.struct !51
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 2 uses
  store ptr %i.dr, ptr %i.z, align 8, !tbaa !52
  br label %_ZNSt6vectorI12common_ngramSaIS0_EE9push_backERKS0_.exit

bb.t:                                             ; preds = %._crit_edge110
  %i.ds = ptrtoint ptr %i.cw to i64
  %i.dt = ptrtoint ptr %i.cx to i64
  %i.du = sub i64 %i.ds, %i.dt                    ; 4 uses
  %i.dv = icmp eq i64 %i.du, 9223372036854775792
  br i1 %i.dv, label %bb.u, label %_ZNKSt6vectorI12common_ngramSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.u:                                             ; preds = %bb.t
  store ptr %i.cx, ptr %11, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20
          to label %.noexc55 unwind label %.loopexit.split-lp

.noexc55:                                         ; preds = %bb.u
  unreachable

_ZNKSt6vectorI12common_ngramSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.t
  %i.dw = ashr exact i64 %i.du, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dw, i64 1)
  %i.dx = add nsw i64 %.sroa.speculated.i.i.i, %i.dw ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.dw
  %i.dz = call i64 @llvm.umin.i64(i64 %i.dx, i64 576460752303423487)
  %i.ea = select i1 %i.dy, i64 576460752303423487, i64 %i.dz ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ea, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.eb = shl nuw nsw i64 %i.ea, 4
  %i.ec = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eb) #19
          to label %.noexc56 unwind label %.loopexit ; 5 uses

.noexc56:                                         ; preds = %_ZNKSt6vectorI12common_ngramSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.du
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ed, ptr noundef nonnull align 4 dereferenceable(16) %12, i64 16, i1 false), !tbaa.struct !51
  %.not10.i.i.i.i.i = icmp eq ptr %i.cx, %i.cw
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI12common_ngramSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc56, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ef, %.lr.ph.i.i.i.i.i ], [ %i.ec, %.noexc56 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ee, %.lr.ph.i.i.i.i.i ], [ %i.cx, %.noexc56 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !51, !alias.scope !84
  %i.ee = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ee, %i.cw
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI12common_ngramSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !80

_ZNSt6vectorI12common_ngramSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc56
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ec, %.noexc56 ], [ %i.ef, %.lr.ph.i.i.i.i.i ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI12common_ngramSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorI12common_ngramSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.du) #21
  br label %_ZNSt6vectorI12common_ngramSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI12common_ngramSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.v, %_ZNSt6vectorI12common_ngramSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  store ptr %i.eg, ptr %i.z, align 8, !tbaa !52
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.ec, i64 %i.ea
  store ptr %i.eh, ptr %i.aa, align 8, !tbaa !83
  br label %_ZNSt6vectorI12common_ngramSaIS0_EE9push_backERKS0_.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorI12common_ngramSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.cx, ptr %11, align 8
  br label %bb.w

.loopexit.split-lp:                               ; preds = %bb.u
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.ay

bb.x:                                             ; preds = %.lr.ph109, %bb.x
  %indvars.iv138 = phi i64 [ %16, %.lr.ph109 ], [ %indvars.iv.next139, %bb.x ] ; 5 uses
  %i.ei = icmp ugt i64 %i.dn, %indvars.iv138
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv138
  %reass.sub120 = sub nsw i64 %indvars.iv138, %i.dn
  %i.ek = getelementptr [4 x i8], ptr %i.cz, i64 %reass.sub120
  %i.el = getelementptr i8, ptr %i.ek, i64 4
  %.in.i57 = select i1 %i.ei, ptr %i.ej, ptr %i.el
  %i.em = load i32, ptr %.in.i57, align 4, !tbaa !20
  %i.en = sub nsw i64 %indvars.iv138, %i.do
  %i.eo = getelementptr inbounds [4 x i8], ptr %12, i64 %i.en
  store i32 %i.em, ptr %i.eo, align 4, !tbaa !20
  %indvars.iv.next139 = add nsw i64 %indvars.iv138, 1 ; 2 uses
  %i.ep = icmp slt i64 %indvars.iv.next139, %i.dp
  br i1 %i.ep, label %bb.x, label %._crit_edge110, !llvm.loop !81

_ZNSt6vectorI12common_ngramSaIS0_EE9push_backERKS0_.exit: ; preds = %_ZNSt6vectorI12common_ngramSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.s
  %i.eq = phi ptr [ %i.eg, %_ZNSt6vectorI12common_ngramSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %i.dr, %bb.s ]
  %i.er = phi ptr [ %i.ec, %_ZNSt6vectorI12common_ngramSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %i.cx, %bb.s ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %i.es = add i32 %.042117, 1
  %indvars.iv.next137 = add i32 %indvars.iv, -1
  %exitcond.not = icmp eq i32 %.042117, %4
  br i1 %exitcond.not, label %._crit_edge119, label %.lr.ph118, !llvm.loop !82

._crit_edge119:                                   ; preds = %_ZNSt6vectorI12common_ngramSaIS0_EE9push_backERKS0_.exit, %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEEaSERKS8_.exit
  %.lcssa113 = phi ptr [ null, %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEEaSERKS8_.exit ], [ %i.er, %_ZNSt6vectorI12common_ngramSaIS0_EE9push_backERKS0_.exit ]
  store ptr %.lcssa113, ptr %11, align 8
  %i.et = invoke fastcc noundef i32 @_ZL9try_draftRSt13unordered_mapI12common_ngramS_IiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE26common_ngram_hash_functionS3_IS0_ESaIS5_IKS0_S9_EEERKSt6vectorIS0_SaIS0_EERS9_PS6_SN_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull @_ZL25draft_min_sample_size_lax, ptr noundef nonnull @_ZL21draft_min_percent_lax)
          to label %bb.y unwind label %.loopexit.split-lp98.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.loopexit.split-lp98.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %_ZNSt10_HashtableI12common_ngramSt4pairIKS0_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS1_IKiiEEEESaISC_ENSt8__detail10_Select1stES6_IS0_E26common_ngram_hash_functionNSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS2_.exit.i, %bb.ap, %bb.ao, %_ZL9try_draftRSt13unordered_mapI12common_ngramS_IiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE26common_ngram_hash_functionS3_IS0_ESaIS5_IKS0_S9_EEES0_.exit.thread87, %bb.z, %._crit_edge119, %bb.at
  %lpad.loopexit.split-lp197 = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %11, align 8, !tbaa !53
  br label %bb.ay

bb.y:                                             ; preds = %._crit_edge119
  %i.eu = icmp eq i32 %i.et, -1
  br i1 %i.eu, label %bb.z, label %_ZL9try_draftRSt13unordered_mapI12common_ngramS_IiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE26common_ngram_hash_functionS3_IS0_ESaIS5_IKS0_S9_EEES0_.exit.thread87

bb.z:                                             ; preds = %bb.y
  %i.ev = invoke fastcc noundef i32 @_ZL9try_draftRSt13unordered_mapI12common_ngramS_IiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE26common_ngram_hash_functionS3_IS0_ESaIS5_IKS0_S9_EEERKSt6vectorIS0_SaIS0_EERS9_PS6_SN_(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull @_ZL28draft_min_sample_size_strict, ptr noundef nonnull @_ZL24draft_min_percent_strict)
          to label %bb.aa unwind label %.loopexit.split-lp98.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.ew = icmp eq i32 %i.ev, -1
  br i1 %i.ew, label %bb.ab, label %_ZL9try_draftRSt13unordered_mapI12common_ngramS_IiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE26common_ngram_hash_functionS3_IS0_ESaIS5_IKS0_S9_EEES0_.exit.thread87

bb.ab:                                            ; preds = %bb.aa
  %i.ex = load i64, ptr %i.r, align 8, !tbaa !29
  %.not.not.i.i = icmp eq i64 %i.ex, 0
  br i1 %.not.not.i.i, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %.sroa.06.013.i.i = load ptr, ptr %i.t, align 8, !tbaa !30 ; 2 uses
  %.not14.i.i = icmp eq ptr %.sroa.06.013.i.i, null
  br i1 %.not14.i.i, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ac, %_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS3_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i
  %.sroa.06.015.i.i = phi ptr [ %.sroa.06.0.i.i, %_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS3_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i ], [ %.sroa.06.013.i.i, %bb.ac ] ; 6 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.06.015.i.i, i64 8
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !20
  %.not.i.i.i.i21.i = icmp eq i32 %i.ez, %i.bj
  br i1 %.not.i.i.i.i21.i, label %bb.ad, label %_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS3_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i

bb.ad:                                            ; preds = %.lr.ph.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.06.015.i.i, i64 12
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !20
  %.not.1.i.i.i.i.i = icmp eq i32 %i.fb, %i.bi
  br i1 %.not.1.i.i.i.i.i, label %bb.ae, label %_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS3_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.06.015.i.i, i64 16
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !20
  %.not.2.i.i.i.i.i = icmp eq i32 %i.fd, -1
  br i1 %.not.2.i.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS3_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS3_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS3_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i: ; preds = %bb.ae
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.06.015.i.i, i64 20
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !20
  %.not.3.i.i.i.i.i = icmp eq i32 %i.ff, -1
  br i1 %.not.3.i.i.i.i.i, label %_ZNSt10_HashtableI12common_ngramSt4pairIKS0_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS1_IKiiEEEESaISC_ENSt8__detail10_Select1stES6_IS0_E26common_ngram_hash_functionNSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS2_.exit.i, label %_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS3_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS3_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS3_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i, %bb.ae, %bb.ad, %.lr.ph.i.i
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.015.i.i, align 8, !tbaa !30 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %.lr.ph.i.i, !llvm.loop !0

bb.af:                                            ; preds = %bb.ab
  %i.fg = sext i32 %i.bj to i64
  %i.fh = mul i64 %i.fg, -7046029254386353131
  %i.fi = sext i32 %i.bi to i64
  %i.fj = mul i64 %i.fi, -7046029254386353131
  %i.fk = xor i64 %i.fh, %i.fj                    ; 2 uses
  %i.fl = load i64, ptr %i.s, align 8, !tbaa !31  ; 2 uses
  %i.fm = urem i64 %i.fk, %i.fl                   ; 2 uses
  %i.fn = load ptr, ptr %7, align 8, !tbaa !32
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.fm
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !33 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !30 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fq, i64 80
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !35
  br label %bb.ah

bb.ah:                                            ; preds = %bb.al, %bb.ag
  %i.fr = phi i64 [ %.pre.i.i.i.i, %bb.ag ], [ %i.ge, %bb.al ]
  %i.fs = phi ptr [ %i.fq, %bb.ag ], [ %i.gc, %bb.al ] ; 6 uses
  %i.ft = icmp eq i64 %i.fk, %i.fr
  br i1 %i.ft, label %bb.ai, label %_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !20
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.fv, %i.bj
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.aj, label %_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 12
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !20
  %.not.1.i.i.i.i.i.i.i.i = icmp eq i32 %i.fx, %i.bi
  br i1 %.not.1.i.i.i.i.i.i.i.i, label %bb.ak, label %_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !20
  %.not.2.i.i.i.i.i.i.i.i = icmp eq i32 %i.fz, -1
  br i1 %.not.2.i.i.i.i.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i.i.i: ; preds = %bb.ak
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fs, i64 20
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !20
  %.not.3.i.i.i.i.i.i.i.i = icmp eq i32 %i.gb, -1
  br i1 %.not.3.i.i.i.i.i.i.i.i, label %_ZNSt10_HashtableI12common_ngramSt4pairIKS0_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS1_IKiiEEEESaISC_ENSt8__detail10_Select1stES6_IS0_E26common_ngram_hash_functionNSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS2_.exit.i, label %_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i.i.i, %bb.ak, %bb.aj, %bb.ai, %bb.ah
  %i.gc = load ptr, ptr %i.fs, align 8, !tbaa !30 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.gc, null
  br i1 %.not18.i.i.i.i, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %bb.al

bb.al:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 80
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !35 ; 2 uses
  %i.gf = urem i64 %i.ge, %i.fl
  %.not19.i.i.i.i = icmp eq i64 %i.gf, %i.fm
  br i1 %.not19.i.i.i.i, label %bb.ah, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, !llvm.loop !1

_ZNSt10_HashtableI12common_ngramSt4pairIKS0_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS1_IKiiEEEESaISC_ENSt8__detail10_Select1stES6_IS0_E26common_ngram_hash_functionNSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS2_.exit.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i.i.i, %_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS3_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.015.i.i, %_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS3_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i ], [ %i.fs, %_ZNKSt8__detail15_Hashtable_baseI12common_ngramSt4pairIKS1_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS2_IKiiEEEENS_10_Select1stES7_IS1_E26common_ngram_hash_functionNS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 24
  store ptr null, ptr %9, align 8, !tbaa !37
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 32
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !38
  store i64 %i.gi, ptr %i.ab, align 8, !tbaa !38
  store ptr null, ptr %i.ac, align 8, !tbaa !30
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 48
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !47
  store i64 %i.gk, ptr %i.ad, align 8, !tbaa !47
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.gl, i64 16, i1 false), !tbaa.struct !56
  store ptr null, ptr %i.af, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  store ptr %9, ptr %8, align 8, !tbaa !58
  invoke void @_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_assignIRKSF_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb0EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(56) %i.gg, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %.noexc61 unwind label %.loopexit.split-lp98.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc61:                                         ; preds = %_ZNSt10_HashtableI12common_ngramSt4pairIKS0_St13unordered_mapIiiSt4hashIiESt8equal_toIiESaIS1_IKiiEEEESaISC_ENSt8__detail10_Select1stES6_IS0_E26common_ngram_hash_functionNSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.gm = load ptr, ptr %i.ac, align 8, !tbaa !45 ; 3 uses
  %.not42.i = icmp eq ptr %i.gm, null
  br i1 %.not42.i, label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i

.lr.ph.i.i.i.i.i59:                               ; preds = %.lr.ph.i, %.lr.ph.i.i.i.i.i59
  %.06.i.i.i.i.i = phi ptr [ %i.gn, %.lr.ph.i.i.i.i.i59 ], [ %i.gm, %.lr.ph.i ] ; 2 uses
  %i.gn = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !30 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 16) #21
  %.not.i.i.i.i.i60 = icmp eq ptr %i.gn, null
  br i1 %.not.i.i.i.i.i60, label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.loopexit, label %.lr.ph.i.i.i.i.i59, !llvm.loop !3

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.loopexit: ; preds = %.lr.ph.i.i.i.i.i59
  %i.go = mul nsw i32 %spec.select.i, 100
  %i.gp = icmp slt i32 %i.hf, 2
  %i.gq = mul nuw nsw i32 %i.hf, 50
  %i.gr = icmp slt i32 %i.go, %i.gq
  %i.gs = select i1 %i.gp, i1 true, i1 %i.gr
  %.017.i = select i1 %i.gs, i32 -1, i32 %spec.select20.i
  br label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.loopexit, %.noexc61
  %.01761.i = phi i32 [ -1, %.noexc61 ], [ %.017.i, %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.loopexit ] ; 2 uses
  %i.gt = load ptr, ptr %9, align 8, !tbaa !37
  %i.gu = load i64, ptr %i.ab, align 8, !tbaa !38
  %i.gv = shl i64 %i.gu, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.gt, i8 0, i64 %i.gv, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  %i.gw = load ptr, ptr %9, align 8, !tbaa !37    ; 2 uses
  %i.gx = icmp eq ptr %i.gw, %i.af
  br i1 %i.gx, label %_ZL9try_draftRSt13unordered_mapI12common_ngramS_IiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE26common_ngram_hash_functionS3_IS0_ESaIS5_IKS0_S9_EEES0_.exit, label %bb.am

bb.am:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.gy = load i64, ptr %i.ab, align 8, !tbaa !38
  %i.gz = shl i64 %i.gy, 3
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.gz) #21
  br label %_ZL9try_draftRSt13unordered_mapI12common_ngramS_IiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE26common_ngram_hash_functionS3_IS0_ESaIS5_IKS0_S9_EEES0_.exit

.lr.ph.i:                                         ; preds = %.noexc61, %.lr.ph.i
  %.046.i = phi i32 [ %spec.select20.i, %.lr.ph.i ], [ -1, %.noexc61 ]
  %.01445.i = phi i32 [ %i.hf, %.lr.ph.i ], [ 0, %.noexc61 ]
  %.01544.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ 0, %.noexc61 ] ; 2 uses
  %.sroa.023.043.i = phi ptr [ %i.hg, %.lr.ph.i ], [ %i.gm, %.noexc61 ] ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.023.043.i, i64 8
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !41
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.023.043.i, i64 12
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !42 ; 3 uses
  %i.he = icmp sgt i32 %i.hd, %.01544.i
  %spec.select.i = call i32 @llvm.smax.i32(i32 %i.hd, i32 %.01544.i) ; 2 uses
  %spec.select20.i = select i1 %i.he, i32 %i.hb, i32 %.046.i ; 2 uses
end_hunk_0
