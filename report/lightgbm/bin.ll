Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/bin?download=true
inline.NumInlined: 9544
inline.NumDeleted: 2682
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 531
loop-unroll.NumUnrolled: 532
begin_hunk_0_@_ZN8LightGBM9BinMapper8CopyFromEPKc:bb.a
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !58 ; 2 uses
  %i.cq = sext i32 %i.cp to i64
  %i.cr = urem i64 %i.cq, %i.cd
  %.not19.i.i.i.i = icmp eq i64 %i.cr, %i.ce
  br i1 %.not19.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !22

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.h
  br label %.loopexit.i.i, !llvm.loop !22

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %.lr.ph
  %i.cs = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #39 ; 5 uses
  store ptr null, ptr %i.cs, align 8, !tbaa !311
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load i32, ptr %i.ca, align 4, !tbaa !58
  store i32 %i.cu, ptr %i.ct, align 8, !tbaa !323
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store i32 0, ptr %i.cv, align 4, !tbaa !324
  %i.cw = invoke ptr @_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.bp, i64 noundef %i.ce, i64 noundef %i.cc, ptr noundef nonnull %i.cs, i64 noundef 1)
          to label %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEEixERS5_.exit unwind label %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.cx = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef 16) #38
  resume { ptr, i32 } %i.cx

_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEEixERS5_.exit: ; preds = %bb.g, %bb.f, %.loopexit.i.i
  %.pn.i.i = phi ptr [ %i.cw, %.loopexit.i.i ], [ %i.ci, %bb.f ], [ %i.cn, %bb.g ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 12
  %i.cy = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.cy, ptr %.1.i.i, align 4, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cz = load i32, ptr %0, align 8, !tbaa !301
  %i.da = sext i32 %i.cz to i64
  %i.db = icmp slt i64 %indvars.iv.next, %i.da
  br i1 %i.db, label %.lr.ph, label %.loopexit, !llvm.loop !1444

.loopexit:                                        ; preds = %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEEixERS5_.exit, %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEE5clearEv.exit, %_ZNSt6vectorIdSaIdEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN8LightGBM9BinMapperD2Ev(ptr nofree noundef nonnull align 8 captures(address) dead_on_return(160) dereferenceable(160) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !242
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #38
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !310  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i.i ], [ %i.j, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 2 uses
  %i.k = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !311 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #38
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !21

_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !304
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !305
  %i.o = shl i64 %i.n, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.l, i8 0, i64 %i.o, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !304  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.s = load i64, ptr %i.m, align 8, !tbaa !305
  %i.t = shl i64 %i.s, 3
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #38
  br label %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit

_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !307  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !309
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #38
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZNSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEED2Ev.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN8LightGBM10NeedFilterERKSt6vectorIiSaIiEEiiNS_7BinTypeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #25 {
bb.a:
  %i.a = icmp eq i32 %3, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !173
  %i.d = load ptr, ptr %0, align 8, !tbaa !83     ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2                   ; 3 uses
  br i1 %i.a, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.i = add nsw i64 %i.h, -1                     ; 2 uses
  %.not4151.not = icmp eq i64 %i.i, 0
  br i1 %.not4151.not, label %.thread, label %.lr.ph54

.lr.ph54:                                         ; preds = %.preheader, %.lr.ph54
  %.02953 = phi i64 [ %i.n, %.lr.ph54 ], [ 0, %.preheader ] ; 2 uses
  %.03052 = phi i32 [ %i.l, %.lr.ph54 ], [ 0, %.preheader ]
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.02953
  %i.k = load i32, ptr %i.j, align 4, !tbaa !58
  %i.l = add nsw i32 %i.k, %.03052                ; 3 uses
  %.not39 = icmp slt i32 %i.l, %2
  %i.m = sub nsw i32 %1, %i.l
  %.not40 = icmp slt i32 %i.m, %2
  %or.cond = select i1 %.not39, i1 true, i1 %.not40 ; 2 uses
  %i.n = add nuw i64 %.02953, 1                   ; 2 uses
  %exitcond61.not = icmp ne i64 %i.n, %i.i
  %or.cond70.not = select i1 %or.cond, i1 %exitcond61.not, i1 false
  br i1 %or.cond70.not, label %.lr.ph54, label %.thread, !llvm.loop !23

bb.b:                                             ; preds = %bb.a
  %i.o = icmp ult i64 %i.h, 3
  br i1 %i.o, label %.preheader45, label %.thread

.preheader45:                                     ; preds = %bb.b
  %i.p = add nsw i64 %i.h, -1                     ; 2 uses
  %.not58 = icmp eq i64 %i.p, 0
  br i1 %.not58, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader45, %.lr.ph
  %.048 = phi i64 [ %i.t, %.lr.ph ], [ 0, %.preheader45 ] ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.048
  %i.r = load i32, ptr %i.q, align 4, !tbaa !58   ; 2 uses
  %.not = icmp slt i32 %i.r, %2
  %i.s = sub nsw i32 %1, %i.r
  %.not38 = icmp slt i32 %i.s, %2
  %or.cond42 = select i1 %.not, i1 true, i1 %.not38 ; 2 uses
  %i.t = add nuw i64 %.048, 1                     ; 2 uses
  %exitcond.not = icmp ne i64 %i.t, %i.p
  %or.cond71.not = select i1 %or.cond42, i1 %exitcond.not, i1 false
  br i1 %or.cond71.not, label %.lr.ph, label %.thread, !llvm.loop !24

.thread:                                          ; preds = %.lr.ph, %.lr.ph54, %.preheader45, %.preheader, %bb.b
  %.4 = phi i1 [ true, %.preheader45 ], [ false, %bb.b ], [ %or.cond, %.lr.ph54 ], [ true, %.preheader ], [ %or.cond42, %.lr.ph ]
  ret i1 %.4
}

; Function Attrs: mustprogress uwtable
define void @_ZN8LightGBM13GreedyFindBinEPKdPKiiimi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.130") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i64 noundef %5, i32 noundef %6) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 85)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not = icmp sgt i32 %3, %4
  br i1 %.not, label %bb.s, label %_ZNSt6vectorIdSaIdEE5clearEv.exit

_ZNSt6vectorIdSaIdEE5clearEv.exit:                ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store ptr null, ptr %i.b, align 8, !tbaa !308
  %i.c = icmp sgt i32 %3, 1
  br i1 %i.c, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.e

.lr.ph:                                           ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit
  %i.d = add nsw i32 %3, -1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.i

._crit_edge:                                      ; preds = %_ZNSt6vectorIdSaIdEE9push_backERKd.exit
  store ptr %i.bh, ptr %0, align 8
  store ptr %i.bg, ptr %i.b, align 8
  %.not.i.i130 = icmp eq ptr %i.bg, %i.bf
  br i1 %.not.i.i130, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  store double +inf, ptr %i.bg, align 8, !tbaa !87
  %i.f = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.f, ptr %i.b, align 8, !tbaa !308
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

bb.e:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.g = phi ptr [ null, %._crit_edge.thread ], [ %i.bh, %._crit_edge ] ; 5 uses
  %i.h = phi ptr [ null, %._crit_edge.thread ], [ %i.bf, %._crit_edge ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k                       ; 6 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775800
  br i1 %i.m, label %bb.f, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #40
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.n = ashr exact i64 %i.l, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 1152921504606846975)
  %i.r = select i1 %i.p, i64 1152921504606846975, i64 %i.q ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #39
          to label %.noexc131 unwind label %bb.r  ; 4 uses

.noexc131:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.l ; 2 uses
  store double +inf, ptr %i.u, align 8, !tbaa !87
  %i.v = icmp sgt i64 %i.l, 0
  br i1 %i.v, label %bb.g, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

bb.g:                                             ; preds = %.noexc131
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.g, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.g, %.noexc131
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #38
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  store ptr %i.t, ptr %0, align 8, !tbaa !307
  store ptr %i.w, ptr %i.b, align 8, !tbaa !308
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r
  store ptr %i.x, ptr %i.i, align 8, !tbaa !309
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

bb.i:                                             ; preds = %.lr.ph, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit
  %7 = phi ptr [ null, %.lr.ph ], [ %i.bf, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 7 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 3 uses
  %.090325 = phi i32 [ 0, %.lr.ph ], [ %.292, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ]
  %i.y = phi ptr [ null, %.lr.ph ], [ %i.bh, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 12 uses
  %i.z = phi ptr [ null, %.lr.ph ], [ %i.bg, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 9 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !58
  %i.ac = add nsw i32 %i.ab, %.090325             ; 3 uses
  %.not126 = icmp slt i32 %i.ac, %6
  br i1 %.not126, label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !87
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ag = load double, ptr %i.af, align 8, !tbaa !87
  %i.ah = fadd double %i.ae, %i.ag
  %i.ai = fmul double %i.ah, 5.000000e-01
  %i.aj = tail call noundef double @nextafter(double noundef %i.ai, double noundef +inf) #19 ; 3 uses
  %i.ak = icmp eq ptr %i.y, %i.z
  br i1 %i.ak, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds i8, ptr %i.z, i64 -8
  %i.am = load double, ptr %i.al, align 8, !tbaa !87
  %i.an = tail call noundef double @nextafter(double noundef %i.am, double noundef +inf) #19
  %i.ao = fcmp ugt double %i.aj, %i.an
  br i1 %i.ao, label %bb.l, label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not.i = icmp eq ptr %i.z, %7
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store double %i.aj, ptr %i.z, align 8, !tbaa !87
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit

bb.n:                                             ; preds = %bb.l
  %i.aq = ptrtoint ptr %7 to i64
  %i.ar = ptrtoint ptr %i.y to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 6 uses
  %i.at = icmp eq i64 %i.as, 9223372036854775800
  br i1 %i.at, label %bb.o, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i

bb.o:                                             ; preds = %bb.n
  store ptr %i.y, ptr %0, align 8
  store ptr %i.z, ptr %i.b, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #40
          to label %.noexc132 unwind label %.loopexit.split-lp

.noexc132:                                        ; preds = %bb.o
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.n
  %i.au = ashr exact i64 %i.as, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.au, i64 1)
  %i.av = add nsw i64 %.sroa.speculated.i.i.i, %i.au ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.au
  %i.ax = tail call i64 @llvm.umin.i64(i64 %i.av, i64 1152921504606846975)
  %i.ay = select i1 %i.aw, i64 1152921504606846975, i64 %i.ax ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ay, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.az = shl nuw nsw i64 %i.ay, 3
  %i.ba = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #39
          to label %.noexc133 unwind label %.loopexit ; 4 uses

.noexc133:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %i.as ; 2 uses
  store double %i.aj, ptr %i.bb, align 8, !tbaa !87
  %i.bc = icmp sgt i64 %i.as, 0
  br i1 %i.bc, label %bb.p, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

bb.p:                                             ; preds = %.noexc133
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr align 8 %i.y, i64 %i.as, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i: ; preds = %bb.p, %.noexc133
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.not.i17.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.as) #38
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i: ; preds = %bb.q, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ay ; 2 uses
  store ptr %i.be, ptr %i.e, align 8, !tbaa !309
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit316 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.y, ptr %0, align 8
  store ptr %i.z, ptr %i.b, align 8
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.o
  %lpad.loopexit.split-lp317 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorIdSaIdEE9push_backERKd.exit:          ; preds = %bb.k, %bb.m, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, %bb.i
  %i.bf = phi ptr [ %7, %bb.i ], [ %7, %bb.k ], [ %7, %bb.m ], [ %i.be, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i ] ; 3 uses
  %i.bg = phi ptr [ %i.z, %bb.i ], [ %i.z, %bb.k ], [ %i.ap, %bb.m ], [ %i.bd, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i ] ; 5 uses
  %i.bh = phi ptr [ %i.y, %bb.i ], [ %i.y, %bb.k ], [ %i.y, %bb.m ], [ %i.ba, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i ] ; 3 uses
  %.292 = phi i32 [ %i.ac, %bb.i ], [ %i.ac, %bb.k ], [ 0, %bb.m ], [ 0, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !1445

bb.r:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i, %bb.f
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.s:                                             ; preds = %bb.c
  %i.bj = icmp sgt i32 %6, 0
  br i1 %i.bj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bk = zext nneg i32 %6 to i64
  %i.bl = udiv i64 %5, %i.bk
  %i.bm = trunc i64 %i.bl to i32
  %.sroa.speculated252 = tail call i32 @llvm.smin.i32(i32 %4, i32 %i.bm)
  %.sroa.speculated247 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated252, i32 1)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0270 = phi i32 [ %.sroa.speculated247, %bb.t ], [ %4, %bb.s ] ; 8 uses
  %i.bn = uitofp i64 %5 to double
  %i.bo = sitofp i32 %.0270 to double             ; 3 uses
  %i.bp = fdiv double %i.bn, %i.bo
  %.not.i.i135 = icmp eq i32 %3, 0
  br i1 %.not.i.i135, label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit.thread, label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit.thread:     ; preds = %bb.u
  %i.bq = trunc i64 %5 to i32
  br label %._crit_edge332

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit:            ; preds = %bb.u
  %i.br = sext i32 %3 to i64
  %i.bs = add nsw i64 %i.br, 63                   ; 2 uses
  %i.bt = lshr i64 %i.bs, 3
  %i.bu = and i64 %i.bt, 2305843009213693944
  %i.bv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #39 ; 5 uses
  %i.bw = lshr i64 %i.bs, 6                       ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bw ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.bw, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bv, i8 0, i64 %.idx.i, i1 false)
  %i.by = trunc i64 %5 to i32                     ; 2 uses
  %i.bz = icmp sgt i32 %3, 0
  br i1 %i.bz, label %.lr.ph331.preheader, label %._crit_edge332

.lr.ph331.preheader:                              ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %wide.trip.count377 = zext nneg i32 %3 to i64
  br label %.lr.ph331

._crit_edge332.loopexit:                          ; preds = %bb.x
  %.pre = sitofp i32 %.184 to double
  br label %._crit_edge332

._crit_edge332:                                   ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit.thread, %._crit_edge332.loopexit, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %.sroa.0234.0427 = phi ptr [ %i.bv, %._crit_edge332.loopexit ], [ %i.bv, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit ], [ null, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit.thread ] ; 6 uses
  %.sroa.19243.0426 = phi ptr [ %i.bx, %._crit_edge332.loopexit ], [ %i.bx, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit ], [ null, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit.thread ] ; 4 uses
  %.pre-phi = phi double [ %.pre, %._crit_edge332.loopexit ], [ %i.bo, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit ], [ %i.bo, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit.thread ]
  %.083.lcssa = phi i32 [ %.184, %._crit_edge332.loopexit ], [ %.0270, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit ], [ %.0270, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit.thread ]
  %.080.lcssa = phi i32 [ %.181, %._crit_edge332.loopexit ], [ %i.by, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit ], [ %i.bq, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit.thread ] ; 2 uses
  %i.ca = sitofp i32 %.080.lcssa to double
  %i.cb = fdiv double %i.ca, %.pre-phi
  %i.cc = icmp slt i32 %.0270, 0
  br i1 %i.cc, label %bb.v, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

bb.v:                                             ; preds = %._crit_edge332
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #40
          to label %.noexc138 unwind label %bb.y

.noexc138:                                        ; preds = %bb.v
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %._crit_edge332
  %i.cd = zext nneg i32 %.0270 to i64
  %.not.i.i.i.i137 = icmp ne i32 %.0270, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i137)
  %i.ce = shl nuw nsw i64 %i.cd, 3                ; 11 uses
  %i.cf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #39
          to label %.noexc139 unwind label %bb.y  ; 8 uses

.noexc139:                                        ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ce
  %i.ch = add nsw i64 %i.ce, -8                   ; 2 uses
  %i.ci = lshr exact i64 %i.ch, 3
  %i.cj = add nuw nsw i64 %i.ci, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ch, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.noexc139
  %n.vec = and i64 %i.cj, 4611686018427387900     ; 3 uses
  %i.ck = shl i64 %n.vec, 3
  %i.cl = getelementptr i8, ptr %i.cf, i64 %i.ck
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cm = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.cf, i64 %i.cm ; 2 uses
  %i.cn = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> splat (double +inf), ptr %next.gep, align 8, !tbaa !87
  store <2 x double> splat (double +inf), ptr %i.cn, align 8, !tbaa !87
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !1446

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cj, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i142, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %.noexc139, %middle.block
  %.07.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.cf, %.noexc139 ], [ %i.cl, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store double +inf, ptr %.07.i.i.i.i.i.i.i.i.i, align 8, !tbaa !87
  %i.cp = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cp, %i.cg
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i142, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !1447

.lr.ph331:                                        ; preds = %.lr.ph331.preheader, %bb.x
  %indvars.iv374 = phi i64 [ 0, %.lr.ph331.preheader ], [ %indvars.iv.next375, %bb.x ] ; 4 uses
  %.080329 = phi i32 [ %i.by, %.lr.ph331.preheader ], [ %.181, %bb.x ] ; 2 uses
  %.083328 = phi i32 [ %.0270, %.lr.ph331.preheader ], [ %.184, %bb.x ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv374
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !58 ; 2 uses
  %i.cs = sitofp i32 %i.cr to double
  %i.ct = fcmp ugt double %i.bp, %i.cs
  br i1 %i.ct, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph331
  %i.cu = lshr i64 %indvars.iv374, 6
  %.zext = and i64 %i.cu, 67108863
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %.zext ; 2 uses
  %i.cw = and i64 %indvars.iv374, 63
  %i.cx = shl nuw i64 1, %i.cw
  %i.cy = load i64, ptr %i.cv, align 8, !tbaa !91
  %i.cz = or i64 %i.cy, %i.cx
  store i64 %i.cz, ptr %i.cv, align 8, !tbaa !91
  %i.da = add nsw i32 %.083328, -1
  %i.db = sub nsw i32 %.080329, %i.cr
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph331, %bb.w
  %.184 = phi i32 [ %i.da, %bb.w ], [ %.083328, %.lr.ph331 ] ; 3 uses
  %.181 = phi i32 [ %i.db, %bb.w ], [ %.080329, %.lr.ph331 ] ; 2 uses
  %indvars.iv.next375 = add nuw nsw i64 %indvars.iv374, 1 ; 2 uses
  %exitcond378.not = icmp eq i64 %indvars.iv.next375, %wide.trip.count377
  br i1 %exitcond378.not, label %._crit_edge332.loopexit, label %.lr.ph331, !llvm.loop !1448

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i142: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block
  %i.dc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #39
          to label %.noexc150 unwind label %.thread285 ; 10 uses

.noexc150:                                        ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i142
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.ce
  %i.de = add nsw i64 %i.ce, -8                   ; 2 uses
  %i.df = lshr exact i64 %i.de, 3
  %i.dg = add nuw nsw i64 %i.df, 1                ; 2 uses
  %min.iters.check485 = icmp ult i64 %i.de, 24
  br i1 %min.iters.check485, label %.lr.ph.i.i.i.i.i.i.i.i.i144.preheader, label %vector.ph486

vector.ph486:                                     ; preds = %.noexc150
  %n.vec487 = and i64 %i.dg, 4611686018427387900  ; 3 uses
  %i.dh = shl i64 %n.vec487, 3
  %i.di = getelementptr i8, ptr %i.dc, i64 %i.dh
  br label %vector.body488

vector.body488:                                   ; preds = %vector.body488, %vector.ph486
  %index489 = phi i64 [ 0, %vector.ph486 ], [ %index.next491, %vector.body488 ] ; 2 uses
  %i.dj = shl i64 %index489, 3
  %next.gep490 = getelementptr i8, ptr %i.dc, i64 %i.dj ; 2 uses
  %i.dk = getelementptr i8, ptr %next.gep490, i64 16
  store <2 x double> splat (double +inf), ptr %next.gep490, align 8, !tbaa !87
  store <2 x double> splat (double +inf), ptr %i.dk, align 8, !tbaa !87
  %index.next491 = add nuw i64 %index489, 4       ; 2 uses
  %i.dl = icmp eq i64 %index.next491, %n.vec487
  br i1 %i.dl, label %middle.block492, label %vector.body488, !llvm.loop !1449

middle.block492:                                  ; preds = %vector.body488
  %cmp.n493 = icmp eq i64 %i.dg, %n.vec487
  br i1 %cmp.n493, label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit151, label %.lr.ph.i.i.i.i.i.i.i.i.i144.preheader

.lr.ph.i.i.i.i.i.i.i.i.i144.preheader:            ; preds = %.noexc150, %middle.block492
  %.07.i.i.i.i.i.i.i.i.i145.ph = phi ptr [ %i.dc, %.noexc150 ], [ %i.di, %middle.block492 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i144

.lr.ph.i.i.i.i.i.i.i.i.i144:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i144.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i144
  %.07.i.i.i.i.i.i.i.i.i145 = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i.i.i.i.i144 ], [ %.07.i.i.i.i.i.i.i.i.i145.ph, %.lr.ph.i.i.i.i.i.i.i.i.i144.preheader ] ; 2 uses
  store double +inf, ptr %.07.i.i.i.i.i.i.i.i.i145, align 8, !tbaa !87
  %i.dm = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i145, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i146 = icmp eq ptr %i.dm, %i.dd
  br i1 %.not.i.i.i.i.i.i.i.i.i146, label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit151, label %.lr.ph.i.i.i.i.i.i.i.i.i144, !llvm.loop !1450

_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit151:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i144, %middle.block492
  %i.dn = load double, ptr %1, align 8, !tbaa !87
  store double %i.dn, ptr %i.dc, align 8, !tbaa !87
  %i.do = icmp sgt i32 %3, 1
  br i1 %i.do, label %.lr.ph341, label %_ZNSt6vectorIdSaIdEE5clearEv.exit171.thread

_ZNSt6vectorIdSaIdEE5clearEv.exit171.thread:      ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit151
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.dp, align 8, !tbaa !308
  br label %._crit_edge354.thread

.lr.ph341:                                        ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit151
  %i.dq = add nsw i32 %3, -1
  %i.dr = add nsw i32 %.0270, -1
  %wide.trip.count382 = zext nneg i32 %i.dq to i64
  br label %bb.z

bb.y:                                             ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i, %bb.v
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit199

.thread285:                                       ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i142
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.z:                                             ; preds = %.lr.ph341, %.critedge2
  %indvars.iv379 = phi i64 [ 0, %.lr.ph341 ], [ %indvars.iv.next380, %.critedge2 ] ; 6 uses
  %.076339 = phi i32 [ 0, %.lr.ph341 ], [ %.1, %.critedge2 ]
  %.077338 = phi i32 [ 0, %.lr.ph341 ], [ %.178, %.critedge2 ] ; 4 uses
  %.282337 = phi i32 [ %.080.lcssa, %.lr.ph341 ], [ %.3284, %.critedge2 ] ; 2 uses
  %.285336 = phi i32 [ %.083.lcssa, %.lr.ph341 ], [ %.386, %.critedge2 ] ; 4 uses
  %.087335 = phi double [ %i.cb, %.lr.ph341 ], [ %.188, %.critedge2 ] ; 5 uses
  %i.du = lshr i64 %indvars.iv379, 6
  %.zext305 = and i64 %i.du, 67108863
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0234.0427, i64 %.zext305
  %i.dw = and i64 %indvars.iv379, 63
  %i.dx = shl nuw i64 1, %i.dw
  %i.dy = load i64, ptr %i.dv, align 8, !tbaa !91
  %i.dz = and i64 %i.dy, %i.dx
  %.not310 = icmp eq i64 %i.dz, 0                 ; 2 uses
  br i1 %.not310, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %bb.z
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv379
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !58 ; 2 uses
  %i.ec = sub nsw i32 %.282337, %i.eb             ; 4 uses
  %i.ed = add nsw i32 %i.eb, %.076339             ; 3 uses
  %i.ee = sitofp i32 %i.ed to double              ; 2 uses
  %i.ef = fcmp ugt double %.087335, %i.ee
  br i1 %i.ef, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %bb.aa
  %i.eg = trunc i64 %indvars.iv379 to i32
  %i.eh = add i32 %i.eg, 1                        ; 2 uses
  %i.ei = lshr i32 %i.eh, 6
  %.zext307 = zext nneg i32 %i.ei to i64
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0234.0427, i64 %.zext307
  %i.ek = and i32 %i.eh, 63
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = shl nuw i64 1, %i.el
  %i.en = load i64, ptr %i.ej, align 8, !tbaa !91
  %i.eo = and i64 %i.en, %i.em
  %.not311 = icmp eq i64 %i.eo, 0
  br i1 %.not311, label %.critedge2, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ep = fmul double %.087335, 5.000000e-01      ; 2 uses
  %i.eq = fcmp ogt double %i.ep, 1.000000e+00
  %.sroa.speculated = select i1 %i.eq, double %i.ep, double 1.000000e+00
  %i.er = fcmp ugt double %.sroa.speculated, %i.ee
  br i1 %i.er, label %.critedge2, label %.critedge

.critedge:                                        ; preds = %bb.z, %bb.aa, %bb.ac
  %.3282 = phi i32 [ %i.ec, %bb.ac ], [ %i.ec, %bb.aa ], [ %.282337, %bb.z ] ; 3 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv379 ; 2 uses
  %i.et = load double, ptr %i.es, align 8, !tbaa !87
  %i.eu = sext i32 %.077338 to i64
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.eu
  store double %i.et, ptr %i.ev, align 8, !tbaa !87
  %i.ew = add nsw i32 %.077338, 1                 ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !87
  %i.ez = sext i32 %i.ew to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.ez
  store double %i.ey, ptr %i.fa, align 8, !tbaa !87
  %.not116 = icmp slt i32 %i.ew, %i.dr
  br i1 %.not116, label %bb.ad, label %_ZNSt6vectorIdSaIdEE5clearEv.exit171

bb.ad:                                            ; preds = %.critedge
  br i1 %.not310, label %bb.ae, label %.critedge2

bb.ae:                                            ; preds = %bb.ad
  %i.fb = add nsw i32 %.285336, -1                ; 2 uses
  %i.fc = sitofp i32 %.3282 to double
  %i.fd = sitofp i32 %i.fb to double
  %i.fe = fdiv double %i.fc, %i.fd
  br label %.critedge2

.critedge2:                                       ; preds = %bb.ab, %bb.ac, %bb.ae, %bb.ad
  %.3284 = phi i32 [ %.3282, %bb.ae ], [ %.3282, %bb.ad ], [ %i.ec, %bb.ac ], [ %i.ec, %bb.ab ]
  %.188 = phi double [ %i.fe, %bb.ae ], [ %.087335, %bb.ad ], [ %.087335, %bb.ac ], [ %.087335, %bb.ab ]
  %.386 = phi i32 [ %i.fb, %bb.ae ], [ %.285336, %bb.ad ], [ %.285336, %bb.ac ], [ %.285336, %bb.ab ]
  %.178 = phi i32 [ %i.ew, %bb.ae ], [ %i.ew, %bb.ad ], [ %.077338, %bb.ac ], [ %.077338, %bb.ab ] ; 2 uses
  %.1 = phi i32 [ 0, %bb.ae ], [ 0, %bb.ad ], [ %i.ed, %bb.ac ], [ %i.ed, %bb.ab ]
  %indvars.iv.next380 = add nuw nsw i64 %indvars.iv379, 1 ; 2 uses
  %exitcond383.not = icmp eq i64 %indvars.iv.next380, %wide.trip.count382
  br i1 %exitcond383.not, label %_ZNSt6vectorIdSaIdEE5clearEv.exit171, label %bb.z, !llvm.loop !1451

_ZNSt6vectorIdSaIdEE5clearEv.exit171:             ; preds = %.critedge2, %.critedge
  %.2 = phi i32 [ %i.ew, %.critedge ], [ %.178, %.critedge2 ] ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store ptr null, ptr %i.ff, align 8, !tbaa !308
  %i.fg = icmp sgt i32 %.2, 0
  br i1 %i.fg, label %.lr.ph353, label %._crit_edge354.thread

.lr.ph353:                                        ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit171
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count387 = zext nneg i32 %.2 to i64
  br label %bb.ak

._crit_edge354.thread:                            ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit171, %_ZNSt6vectorIdSaIdEE5clearEv.exit171.thread
  %.ph = phi ptr [ %i.dp, %_ZNSt6vectorIdSaIdEE5clearEv.exit171.thread ], [ %i.ff, %_ZNSt6vectorIdSaIdEE5clearEv.exit171 ] ; 2 uses
  store ptr null, ptr %0, align 8
  store ptr null, ptr %.ph, align 1
  br label %bb.ag

._crit_edge354:                                   ; preds = %_ZNSt6vectorIdSaIdEE9push_backERKd.exit191
  store ptr %i.hi, ptr %0, align 8
  store ptr %i.hh, ptr %i.ff, align 8
  %.not.i.i172 = icmp eq ptr %i.hh, %i.hg
  br i1 %.not.i.i172, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %._crit_edge354
  store double +inf, ptr %i.hh, align 8, !tbaa !87
  %i.fi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  store ptr %i.fi, ptr %i.ff, align 8, !tbaa !308
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.ag:                                            ; preds = %._crit_edge354.thread, %._crit_edge354
  %i.fj = phi ptr [ null, %._crit_edge354.thread ], [ %i.hi, %._crit_edge354 ] ; 5 uses
  %i.fk = phi ptr [ null, %._crit_edge354.thread ], [ %i.hg, %._crit_edge354 ] ; 2 uses
  %i.fl = phi ptr [ %.ph, %._crit_edge354.thread ], [ %i.ff, %._crit_edge354 ]
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fn = ptrtoint ptr %i.fk to i64
  %i.fo = ptrtoint ptr %i.fj to i64
  %i.fp = sub i64 %i.fn, %i.fo                    ; 6 uses
  %i.fq = icmp eq i64 %i.fp, 9223372036854775800
  br i1 %i.fq, label %bb.ah, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i173

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #40
          to label %.noexc179 unwind label %bb.at

.noexc179:                                        ; preds = %bb.ah
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i173: ; preds = %bb.ag
  %i.fr = ashr exact i64 %i.fp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i174 = tail call i64 @llvm.umax.i64(i64 %i.fr, i64 1)
  %i.fs = add nsw i64 %.sroa.speculated.i.i.i.i174, %i.fr ; 2 uses
  %i.ft = icmp ult i64 %i.fs, %i.fr
  %i.fu = tail call i64 @llvm.umin.i64(i64 %i.fs, i64 1152921504606846975)
  %i.fv = select i1 %i.ft, i64 1152921504606846975, i64 %i.fu ; 3 uses
  %.not.i.i.i.i175 = icmp ne i64 %i.fv, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i175)
  %i.fw = shl nuw nsw i64 %i.fv, 3
  %i.fx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fw) #39
          to label %.noexc180 unwind label %bb.at ; 4 uses

.noexc180:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i173
  %i.fy = getelementptr inbounds i8, ptr %i.fx, i64 %i.fp ; 2 uses
  store double +inf, ptr %i.fy, align 8, !tbaa !87
  %i.fz = icmp sgt i64 %i.fp, 0
  br i1 %i.fz, label %bb.ai, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i176

bb.ai:                                            ; preds = %.noexc180
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fx, ptr align 8 %i.fj, i64 %i.fp, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i176

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i176: ; preds = %bb.ai, %.noexc180
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %.not.i17.i.i.i177 = icmp eq ptr %i.fj, null
  br i1 %.not.i17.i.i.i177, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i178, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i176
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fj, i64 noundef %i.fp) #38
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i178

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i178: ; preds = %bb.aj, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i176
  store ptr %i.fx, ptr %0, align 8, !tbaa !307
  store ptr %i.ga, ptr %i.fl, align 8, !tbaa !308
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.fv
  store ptr %i.gb, ptr %i.fm, align 8, !tbaa !309
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.ak:                                            ; preds = %.lr.ph353, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit191
  %8 = phi ptr [ null, %.lr.ph353 ], [ %i.hg, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit191 ] ; 5 uses
  %indvars.iv384 = phi i64 [ 0, %.lr.ph353 ], [ %indvars.iv.next385, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit191 ] ; 2 uses
  %i.gc = phi ptr [ null, %.lr.ph353 ], [ %i.hi, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit191 ] ; 10 uses
  %i.gd = phi ptr [ null, %.lr.ph353 ], [ %i.hh, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit191 ] ; 8 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv384
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !87
  %indvars.iv.next385 = add nuw nsw i64 %indvars.iv384, 1 ; 3 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv.next385
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !87
  %i.gi = fadd double %i.gf, %i.gh
  %i.gj = fmul double %i.gi, 5.000000e-01
  %i.gk = tail call noundef double @nextafter(double noundef %i.gj, double noundef +inf) #19 ; 3 uses
  %i.gl = icmp eq ptr %i.gc, %i.gd
  br i1 %i.gl, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gm = getelementptr inbounds i8, ptr %i.gd, i64 -8
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !87
  %i.go = tail call noundef double @nextafter(double noundef %i.gn, double noundef +inf) #19
  %i.gp = fcmp ugt double %i.gk, %i.go
  br i1 %i.gp, label %bb.am, label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit191

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.not.i182 = icmp eq ptr %i.gd, %8
  br i1 %.not.i182, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store double %i.gk, ptr %i.gd, align 8, !tbaa !87
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit191

bb.ao:                                            ; preds = %bb.am
  %i.gr = ptrtoint ptr %8 to i64
  %i.gs = ptrtoint ptr %i.gc to i64
  %i.gt = sub i64 %i.gr, %i.gs                    ; 6 uses
  %i.gu = icmp eq i64 %i.gt, 9223372036854775800
  br i1 %i.gu, label %bb.ap, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i183

bb.ap:                                            ; preds = %bb.ao
  store ptr %i.gc, ptr %0, align 8
  store ptr %i.gd, ptr %i.ff, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #40
          to label %.noexc189 unwind label %.thread294.loopexit.split-lp

.noexc189:                                        ; preds = %bb.ap
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i183: ; preds = %bb.ao
  %i.gv = ashr exact i64 %i.gt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i184 = tail call i64 @llvm.umax.i64(i64 %i.gv, i64 1)
  %i.gw = add nsw i64 %.sroa.speculated.i.i.i184, %i.gv ; 2 uses
  %i.gx = icmp ult i64 %i.gw, %i.gv
  %i.gy = tail call i64 @llvm.umin.i64(i64 %i.gw, i64 1152921504606846975)
  %i.gz = select i1 %i.gx, i64 1152921504606846975, i64 %i.gy ; 3 uses
  %.not.i.i.i185 = icmp ne i64 %i.gz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i185)
  %i.ha = shl nuw nsw i64 %i.gz, 3
  %i.hb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ha) #39
          to label %.noexc190 unwind label %.thread294.loopexit ; 4 uses

.noexc190:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i183
  %i.hc = getelementptr inbounds i8, ptr %i.hb, i64 %i.gt ; 2 uses
  store double %i.gk, ptr %i.hc, align 8, !tbaa !87
  %i.hd = icmp sgt i64 %i.gt, 0
  br i1 %i.hd, label %bb.aq, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i186

bb.aq:                                            ; preds = %.noexc190
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hb, ptr align 8 %i.gc, i64 %i.gt, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i186

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i186: ; preds = %bb.aq, %.noexc190
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %.not.i17.i.i187 = icmp eq ptr %i.gc, null
  br i1 %.not.i17.i.i187, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i188, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i186
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef %i.gt) #38
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i188

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i188: ; preds = %bb.ar, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i186
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %i.gz ; 2 uses
  store ptr %i.hf, ptr %i.fh, align 8, !tbaa !309
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit191

.thread294.loopexit:                              ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i183
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.gc, ptr %0, align 8
  store ptr %i.gd, ptr %i.ff, align 8
  br label %.thread294

.thread294.loopexit.split-lp:                     ; preds = %bb.ap
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread294

.thread294:                                       ; preds = %.thread294.loopexit.split-lp, %.thread294.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.thread294.loopexit ], [ %lpad.loopexit.split-lp, %.thread294.loopexit.split-lp ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.ce) #38
  br label %bb.au

_ZNSt6vectorIdSaIdEE9push_backERKd.exit191:       ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i188, %bb.an, %bb.al
  %i.hg = phi ptr [ %i.hf, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i188 ], [ %8, %bb.an ], [ %8, %bb.al ] ; 3 uses
  %i.hh = phi ptr [ %i.he, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i188 ], [ %i.gq, %bb.an ], [ %i.gd, %bb.al ] ; 5 uses
  %i.hi = phi ptr [ %i.hb, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i188 ], [ %i.gc, %bb.an ], [ %i.gc, %bb.al ] ; 3 uses
  %exitcond388.not = icmp eq i64 %indvars.iv.next385, %wide.trip.count387
  br i1 %exitcond388.not, label %._crit_edge354, label %bb.ak, !llvm.loop !1452

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i178, %bb.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.ce) #38
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.ce) #38
  %.not.i.i195 = icmp eq ptr %.sroa.0234.0427, null
  br i1 %.not.i.i195, label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.hj = ptrtoint ptr %.sroa.19243.0426 to i64
  %i.hk = ptrtoint ptr %.sroa.0234.0427 to i64
  %i.hl = sub i64 %i.hj, %i.hk                    ; 2 uses
  %i.hm = ashr exact i64 %i.hl, 3
  %i.hn = sub nsw i64 0, %i.hm
  %i.ho = getelementptr inbounds [8 x i8], ptr %.sroa.19243.0426, i64 %i.hn
  tail call void @_ZdlPvm(ptr noundef %i.ho, i64 noundef %i.hl) #38
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

bb.at:                                            ; preds = %bb.ah, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i173
  %i.hp = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.ce) #38
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.thread294, %.thread285
  %i.hq = phi ptr [ null, %.thread285 ], [ %i.fk, %bb.at ], [ %8, %.thread294 ]
  %.pr391 = phi ptr [ null, %.thread285 ], [ %i.fj, %bb.at ], [ %i.gc, %.thread294 ]
  %.pn119.pn292 = phi { ptr, i32 } [ %i.dt, %.thread285 ], [ %i.hp, %bb.at ], [ %lpad.phi, %.thread294 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.ce) #38
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit199

_ZNSt6vectorIdSaIdEED2Ev.exit199:                 ; preds = %bb.y, %bb.au
  %i.hr = phi ptr [ %i.hq, %bb.au ], [ null, %bb.y ] ; 2 uses
  %.pr390 = phi ptr [ %.pr391, %bb.au ], [ null, %bb.y ] ; 2 uses
  %.pn123 = phi { ptr, i32 } [ %.pn119.pn292, %bb.au ], [ %i.ds, %bb.y ] ; 2 uses
  %.not.i.i200 = icmp eq ptr %.sroa.0234.0427, null
  br i1 %.not.i.i200, label %.body, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit199
  %i.hs = ptrtoint ptr %.sroa.19243.0426 to i64
  %i.ht = ptrtoint ptr %.sroa.0234.0427 to i64
  %i.hu = sub i64 %i.hs, %i.ht                    ; 2 uses
  %i.hv = ashr exact i64 %i.hu, 3
  %i.hw = sub nsw i64 0, %i.hv
  %i.hx = getelementptr inbounds [8 x i8], ptr %.sroa.19243.0426, i64 %i.hw
  tail call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.hu) #38
  br label %.body

_ZNSt6vectorIdSaIdEE9push_backEOd.exit:           ; preds = %bb.as, %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.d, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i
  ret void

.body:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit199, %bb.av, %bb.r, %.loopexit.split-lp, %.loopexit
  %i.hy = phi ptr [ %i.hr, %bb.av ], [ %i.hr, %_ZNSt6vectorIdSaIdEED2Ev.exit199 ], [ %i.h, %bb.r ], [ %7, %.loopexit.split-lp ], [ %7, %.loopexit ]
  %.pr = phi ptr [ %.pr390, %bb.av ], [ %.pr390, %_ZNSt6vectorIdSaIdEED2Ev.exit199 ], [ %i.g, %bb.r ], [ %i.y, %.loopexit.split-lp ], [ %i.y, %.loopexit ] ; 3 uses
  %.pn127.pn.ph = phi { ptr, i32 } [ %.pn123, %bb.av ], [ %.pn123, %_ZNSt6vectorIdSaIdEED2Ev.exit199 ], [ %i.bi, %bb.r ], [ %lpad.loopexit.split-lp317, %.loopexit.split-lp ], [ %lpad.loopexit316, %.loopexit ]
  %.not.i.i.i202 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i202, label %_ZNSt6vectorIdSaIdEED2Ev.exit203, label %bb.aw

bb.aw:                                            ; preds = %.body
  %i.hz = ptrtoint ptr %i.hy to i64
  %i.ia = ptrtoint ptr %.pr to i64
  %i.ib = sub i64 %i.hz, %i.ia
  tail call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.ib) #38
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit203

_ZNSt6vectorIdSaIdEED2Ev.exit203:                 ; preds = %.body, %bb.aw
  resume { ptr, i32 } %.pn127.pn.ph
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @nextafter(double noundef, double noundef) local_unnamed_addr #26

; Function Attrs: mustprogress uwtable
define void @_ZN8LightGBM24FindBinWithPredefinedBinEPKdPKiiimiRKSt6vectorIdSaIdEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.130") align 8 initializes((0, 24)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i64 noundef %5, i32 noundef %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %7) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::vector.130", align 8   ; 13 uses
  %9 = alloca %"class.std::vector.130", align 8   ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %.loopexit170

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.c = load double, ptr %i.b, align 8, !tbaa !87
  %i.d = fcmp ogt double %i.c, f0xB8AA95A5C0000000
  br i1 %i.d, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit170, label %.lr.ph, !llvm.loop !1453

._crit_edge:                                      ; preds = %.lr.ph
  %i.e = trunc nuw nsw i64 %indvars.iv to i32     ; 3 uses
  %i.f = icmp sgt i32 %3, %i.e
  br i1 %i.f, label %.lr.ph183, label %.loopexit170

.lr.ph183:                                        ; preds = %.lr.ph183, %._crit_edge
  %indvars.iv213 = phi i64 [ %indvars.iv.next214, %.lr.ph183 ], [ %indvars.iv, %._crit_edge ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv213
  %i.h = load double, ptr %i.g, align 8, !tbaa !87
  %i.i = fcmp ogt double %i.h, f0x38AA95A5C0000000 ; 2 uses
  %indvars.iv.next214 = add nuw nsw i64 %indvars.iv213, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next214 to i32
  %exitcond216.not = icmp eq i32 %3, %lftr.wideiv
  %or.cond296 = select i1 %i.i, i1 true, i1 %exitcond216.not
  br i1 %or.cond296, label %.loopexit170, label %.lr.ph183, !llvm.loop !1454

.loopexit170:                                     ; preds = %bb.b, %.lr.ph183, %bb.a, %._crit_edge
  %i.j = phi i32 [ %3, %bb.a ], [ %i.e, %._crit_edge ], [ %i.e, %.lr.ph183 ], [ %3, %bb.b ] ; 2 uses
  %.070 = phi i1 [ false, %bb.a ], [ false, %._crit_edge ], [ %i.i, %.lr.ph183 ], [ false, %bb.b ]
  %i.k = icmp eq i32 %4, 2
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.loopexit170
  %i.l = icmp eq i32 %i.j, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  br i1 %i.l, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.o = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #39
          to label %.noexc92 unwind label %bb.d   ; 2 uses

.noexc92:                                         ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i
  store double f0x38AA95A5C0000000, ptr %i.o, align 8, !tbaa !87
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit.thread.sink.split

bb.d:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i106, %bb.j, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.q = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #39
          to label %.noexc94 unwind label %bb.e   ; 2 uses

.noexc94:                                         ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  store double f0xB8AA95A5C0000000, ptr %i.q, align 8, !tbaa !87
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit.thread.sink.split

bb.e:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.f:                                             ; preds = %.loopexit170
  %i.s = icmp sgt i32 %4, 2
  br i1 %i.s, label %bb.g, label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.t = icmp sgt i32 %i.j, 0
  br i1 %i.t, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i96, label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit104

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i96: ; preds = %bb.g
  %i.u = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #39
          to label %.noexc103 unwind label %bb.h  ; 4 uses

.noexc103:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i96
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double f0xB8AA95A5C0000000, ptr %i.u, align 8, !tbaa !87
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !307
  store ptr %i.x, ptr %i.w, align 8, !tbaa !308
  store ptr %i.x, ptr %i.v, align 8, !tbaa !309
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit104

bb.h:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i96
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

_ZNSt6vectorIdSaIdEE9push_backEOd.exit104:        ; preds = %.noexc103, %bb.g
  %i.z = phi ptr [ null, %bb.g ], [ %i.u, %.noexc103 ] ; 5 uses
  %i.aa = phi ptr [ null, %bb.g ], [ %i.x, %.noexc103 ] ; 2 uses
  br i1 %.070, label %bb.i, label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit.thread

bb.i:                                             ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit104
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = ptrtoint ptr %i.z to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 7 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775800
  br i1 %i.ag, label %bb.j, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i106

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #40
          to label %.noexc112 unwind label %bb.d

.noexc112:                                        ; preds = %bb.j
end_hunk_0
begin_hunk_1_@_ZN8LightGBM9BinMapper7FindBinEPdimiiibNS_7BinTypeEbbRKSt6vectorIdSaIdEE:bb.a

bb.ap:                                            ; preds = %_ZNSt6vectorIdSaIdEE9push_backERKd.exit197
  %i.ee = ptrtoint ptr %.sroa.23.3 to i64
  %i.ef = ptrtoint ptr %.sroa.0428.5 to i64
  %i.eg = sub i64 %i.ee, %i.ef                    ; 6 uses
  %i.eh = icmp eq i64 %i.eg, 9223372036854775804
  br i1 %i.eh, label %bb.aq, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i199

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #40
          to label %.noexc205 unwind label %.loopexit.split-lp601

.noexc205:                                        ; preds = %bb.aq
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i199: ; preds = %bb.ap
  %i.ei = ashr exact i64 %i.eg, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i200 = tail call i64 @llvm.umax.i64(i64 %i.ei, i64 1)
  %i.ej = add nsw i64 %.sroa.speculated.i.i.i.i200, %i.ei ; 2 uses
  %i.ek = icmp ult i64 %i.ej, %i.ei
  %i.el = tail call i64 @llvm.umin.i64(i64 %i.ej, i64 2305843009213693951)
  %i.em = select i1 %i.ek, i64 2305843009213693951, i64 %i.el ; 3 uses
  %.not.i.i.i.i201 = icmp ne i64 %i.em, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i201)
  %i.en = shl nuw nsw i64 %i.em, 2
  %i.eo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.en) #39
          to label %.noexc206 unwind label %.loopexit600 ; 4 uses

.noexc206:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i199
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 %i.eg ; 2 uses
  store i32 1, ptr %i.ep, align 4, !tbaa !58
  %i.eq = icmp sgt i64 %i.eg, 0
  br i1 %i.eq, label %bb.ar, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i202

bb.ar:                                            ; preds = %.noexc206
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.eo, ptr align 4 %.sroa.0428.5, i64 %i.eg, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i202

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i202: ; preds = %bb.ar, %.noexc206
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %.not.i17.i.i.i203 = icmp eq ptr %.sroa.0428.5, null
  br i1 %.not.i17.i.i.i203, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i204, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i202
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0428.5, i64 noundef %i.eg) #38
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i204

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i204: ; preds = %bb.as, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i202
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.em
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit207

.loopexit600:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i199
  %lpad.loopexit602 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

.loopexit.split-lp601:                            ; preds = %bb.aq
  %lpad.loopexit.split-lp603 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

bb.at:                                            ; preds = %.lr.ph740
  %i.et = getelementptr inbounds i8, ptr %.sroa.24.2734, i64 -8
  store double %i.ce, ptr %i.et, align 8, !tbaa !87
  %i.eu = getelementptr inbounds i8, ptr %.sroa.23.2737, i64 -4 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !58
  %i.ew = add nsw i32 %i.ev, 1
  store i32 %i.ew, ptr %i.eu, align 4, !tbaa !58
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit207

_ZNSt6vectorIiSaIiEE9push_backEOi.exit207:        ; preds = %bb.ao, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i204, %bb.at
  %.sroa.0458.6 = phi ptr [ %.sroa.0458.3733, %bb.at ], [ %.sroa.0458.12, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i204 ], [ %.sroa.0458.12, %bb.ao ] ; 2 uses
  %.sroa.24.4 = phi ptr [ %.sroa.24.2734, %bb.at ], [ %.sroa.24.9, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i204 ], [ %.sroa.24.9, %bb.ao ] ; 2 uses
  %.sroa.43.6 = phi ptr [ %.sroa.43.3735, %bb.at ], [ %.sroa.43.12, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i204 ], [ %.sroa.43.12, %bb.ao ] ; 2 uses
  %.sroa.0428.6 = phi ptr [ %.sroa.0428.3736, %bb.at ], [ %i.eo, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i204 ], [ %.sroa.0428.5, %bb.ao ] ; 2 uses
  %.sroa.23.4 = phi ptr [ %.sroa.23.2737, %bb.at ], [ %i.er, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i204 ], [ %i.ed, %bb.ao ] ; 2 uses
  %.sroa.39.6 = phi ptr [ %.sroa.39.3738, %bb.at ], [ %i.es, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i204 ], [ %.sroa.39.5, %bb.ao ] ; 2 uses
  %indvars.iv.next863 = add nuw nsw i64 %indvars.iv862, 1 ; 2 uses
  %exitcond866.not = icmp eq i64 %indvars.iv.next863, %wide.trip.count865
  br i1 %exitcond866.not, label %.loopexit1011, label %.lr.ph740, !llvm.loop !1494

.loopexit1011:                                    ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit207, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.sroa.0458.3.lcssa.ph = phi ptr [ %i.be, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %.sroa.0458.6, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit207 ] ; 7 uses
  %.sroa.24.2.lcssa.ph = phi ptr [ %i.bi, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %.sroa.24.4, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit207 ] ; 6 uses
  %.sroa.43.3.lcssa.ph = phi ptr [ %i.bj, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %.sroa.43.6, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit207 ] ; 3 uses
  %.sroa.0428.3.lcssa.ph = phi ptr [ %i.bu, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %.sroa.0428.6, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit207 ] ; 9 uses
  %.sroa.23.2.lcssa.ph = phi ptr [ %i.bx, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %.sroa.23.4, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit207 ] ; 5 uses
  %.sroa.39.3.lcssa.ph = phi ptr [ %i.bz, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %.sroa.39.6, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit207 ] ; 4 uses
  %i.ex = zext nneg i32 %.0134.lcssa to i64
  %i.ey = getelementptr [8 x i8], ptr %1, i64 %i.ex
  %i.ez = getelementptr i8, ptr %i.ey, i64 -8
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !87
  %i.fb = fcmp olt double %i.fa, 0.000000e+00
  %i.fc = icmp sgt i32 %i.ah, 0
  %or.cond3 = select i1 %i.fb, i1 %i.fc, i1 false
  br i1 %or.cond3, label %bb.au, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit227

bb.au:                                            ; preds = %.loopexit1011
  %.not.i.i208 = icmp eq ptr %.sroa.24.2.lcssa.ph, %.sroa.43.3.lcssa.ph
  br i1 %.not.i.i208, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  store double 0.000000e+00, ptr %.sroa.24.2.lcssa.ph, align 8, !tbaa !87
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit217

bb.aw:                                            ; preds = %bb.au
  %i.fd = ptrtoint ptr %.sroa.24.2.lcssa.ph to i64
  %i.fe = ptrtoint ptr %.sroa.0458.3.lcssa.ph to i64
  %i.ff = sub i64 %i.fd, %i.fe                    ; 6 uses
  %i.fg = icmp eq i64 %i.ff, 9223372036854775800
  br i1 %i.fg, label %bb.ax, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i209

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #40
          to label %.noexc215 unwind label %bb.bf

.noexc215:                                        ; preds = %bb.ax
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i209: ; preds = %bb.aw
  %i.fh = ashr exact i64 %i.ff, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i210 = tail call i64 @llvm.umax.i64(i64 %i.fh, i64 1)
  %i.fi = add nsw i64 %.sroa.speculated.i.i.i.i210, %i.fh ; 2 uses
  %i.fj = icmp ult i64 %i.fi, %i.fh
  %i.fk = tail call i64 @llvm.umin.i64(i64 %i.fi, i64 1152921504606846975)
  %i.fl = select i1 %i.fj, i64 1152921504606846975, i64 %i.fk ; 3 uses
  %.not.i.i.i.i211 = icmp ne i64 %i.fl, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i211)
  %i.fm = shl nuw nsw i64 %i.fl, 3
  %i.fn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fm) #39
          to label %.noexc216 unwind label %bb.bf ; 4 uses

.noexc216:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i209
  %i.fo = getelementptr inbounds i8, ptr %i.fn, i64 %i.ff ; 2 uses
  store double 0.000000e+00, ptr %i.fo, align 8, !tbaa !87
  %i.fp = icmp sgt i64 %i.ff, 0
  br i1 %i.fp, label %bb.ay, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i212

bb.ay:                                            ; preds = %.noexc216
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fn, ptr align 8 %.sroa.0458.3.lcssa.ph, i64 %i.ff, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i212

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i212: ; preds = %bb.ay, %.noexc216
  %.not.i17.i.i.i213 = icmp eq ptr %.sroa.0458.3.lcssa.ph, null
  br i1 %.not.i17.i.i.i213, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i214, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i212
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0458.3.lcssa.ph, i64 noundef %i.ff) #38
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i214

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i214: ; preds = %bb.az, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i212
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.fl
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit217

_ZNSt6vectorIdSaIdEE9push_backEOd.exit217:        ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i214, %bb.av
  %.sroa.0458.13 = phi ptr [ %i.fn, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i214 ], [ %.sroa.0458.3.lcssa.ph, %bb.av ] ; 4 uses
  %.pn = phi ptr [ %i.fo, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i214 ], [ %.sroa.24.2.lcssa.ph, %bb.av ]
  %.sroa.43.13 = phi ptr [ %i.fq, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i214 ], [ %.sroa.43.3.lcssa.ph, %bb.av ] ; 4 uses
  %.sroa.24.10 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %.not.i218 = icmp eq ptr %.sroa.23.2.lcssa.ph, %.sroa.39.3.lcssa.ph
  br i1 %.not.i218, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit217
  store i32 %i.ah, ptr %.sroa.23.2.lcssa.ph, align 4, !tbaa !58
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit227

bb.bb:                                            ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit217
  %i.fr = ptrtoint ptr %.sroa.23.2.lcssa.ph to i64
  %i.fs = ptrtoint ptr %.sroa.0428.3.lcssa.ph to i64
  %i.ft = sub i64 %i.fr, %i.fs                    ; 6 uses
  %i.fu = icmp eq i64 %i.ft, 9223372036854775804
  br i1 %i.fu, label %bb.bc, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i219

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #40
          to label %.noexc225 unwind label %bb.n

.noexc225:                                        ; preds = %bb.bc
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i219: ; preds = %bb.bb
  %i.fv = ashr exact i64 %i.ft, 2                 ; 3 uses
  %.sroa.speculated.i.i.i220 = tail call i64 @llvm.umax.i64(i64 %i.fv, i64 1)
  %i.fw = add nsw i64 %.sroa.speculated.i.i.i220, %i.fv ; 2 uses
  %i.fx = icmp ult i64 %i.fw, %i.fv
  %i.fy = tail call i64 @llvm.umin.i64(i64 %i.fw, i64 2305843009213693951)
  %i.fz = select i1 %i.fx, i64 2305843009213693951, i64 %i.fy ; 3 uses
  %.not.i.i.i221 = icmp ne i64 %i.fz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i221)
  %i.ga = shl nuw nsw i64 %i.fz, 2
  %i.gb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ga) #39
          to label %.noexc226 unwind label %bb.n  ; 4 uses

.noexc226:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i219
  %i.gc = getelementptr inbounds i8, ptr %i.gb, i64 %i.ft
  store i32 %i.ah, ptr %i.gc, align 4, !tbaa !58
  %i.gd = icmp sgt i64 %i.ft, 0
  br i1 %i.gd, label %bb.bd, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i222

bb.bd:                                            ; preds = %.noexc226
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gb, ptr align 4 %.sroa.0428.3.lcssa.ph, i64 %i.ft, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i222

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i222: ; preds = %bb.bd, %.noexc226
  %.not.i17.i.i223 = icmp eq ptr %.sroa.0428.3.lcssa.ph, null
  br i1 %.not.i17.i.i223, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i224, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i222
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0428.3.lcssa.ph, i64 noundef %i.ft) #38
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i224

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i224: ; preds = %bb.be, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i222
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.fz
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit227

bb.bf:                                            ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i209, %bb.ax
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

_ZNSt6vectorIiSaIiEE9push_backERKi.exit227:       ; preds = %bb.o, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i224, %bb.ba, %.loopexit1011
  %.sroa.0458.7 = phi ptr [ %.sroa.0458.13, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i224 ], [ %.sroa.0458.3.lcssa.ph, %.loopexit1011 ], [ %.sroa.0458.13, %bb.ba ], [ %i.an, %bb.o ] ; 13 uses
  %.sroa.24.5 = phi ptr [ %.sroa.24.10, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i224 ], [ %.sroa.24.2.lcssa.ph, %.loopexit1011 ], [ %.sroa.24.10, %bb.ba ], [ %i.ao, %bb.o ] ; 3 uses
  %.sroa.43.7 = phi ptr [ %.sroa.43.13, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i224 ], [ %.sroa.43.3.lcssa.ph, %.loopexit1011 ], [ %.sroa.43.13, %bb.ba ], [ %i.ao, %bb.o ] ; 2 uses
  %.sroa.0428.7 = phi ptr [ %i.gb, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i224 ], [ %.sroa.0428.3.lcssa.ph, %.loopexit1011 ], [ %.sroa.0428.3.lcssa.ph, %bb.ba ], [ %i.ap, %bb.o ] ; 14 uses
  %.sroa.39.7 = phi ptr [ %i.ge, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i224 ], [ %.sroa.39.3.lcssa.ph, %.loopexit1011 ], [ %.sroa.39.3.lcssa.ph, %bb.ba ], [ %i.ar, %bb.o ] ; 2 uses
  %i.gg = load double, ptr %.sroa.0458.7, align 8, !tbaa !87
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 136
  store double %i.gg, ptr %i.gh, align 8, !tbaa !1521
  %i.gi = getelementptr inbounds i8, ptr %.sroa.24.5, i64 -8
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !87
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 144
  store double %i.gj, ptr %i.gk, align 8, !tbaa !1522
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.gl = ptrtoint ptr %.sroa.24.5 to i64
  %i.gm = ptrtoint ptr %.sroa.0458.7 to i64       ; 2 uses
  %i.gn = sub i64 %i.gl, %i.gm
  %i.go = ashr exact i64 %i.gn, 3                 ; 3 uses
  %i.gp = trunc i64 %i.go to i32                  ; 7 uses
  %i.gq = load i32, ptr %i.ab, align 8, !tbaa !303
  %i.gr = icmp eq i32 %i.gq, 0
  br i1 %i.gr, label %bb.bg, label %.preheader578

.preheader578:                                    ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit227
  %.not787 = icmp eq ptr %.sroa.24.5, %.sroa.0458.7
  br i1 %.not787, label %._crit_edge757, label %.lr.ph756

bb.bg:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit227
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !327
  switch i32 %i.gt, label %bb.bs [
    i32 1, label %bb.bh
    i32 0, label %bb.bn
  ]

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.gu = load ptr, ptr %11, align 8, !tbaa !325, !noalias !1523
  %i.gv = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !325, !noalias !1523
  %i.gx = icmp eq ptr %i.gu, %i.gw
  br i1 %i.gx, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZN8LightGBM23FindBinWithZeroAsOneBinEPKdPKiiimi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.130") align 8 %13, ptr noundef nonnull readonly %.sroa.0458.7, ptr noundef readonly %.sroa.0428.7, i32 noundef %i.gp, i32 noundef %4, i64 noundef %3, i32 noundef %5)
          to label %_ZN8LightGBM23FindBinWithZeroAsOneBinEPKdPKiiimiRKSt6vectorIdSaIdEE.exit unwind label %bb.bm

bb.bj:                                            ; preds = %bb.bh
  invoke void @_ZN8LightGBM24FindBinWithPredefinedBinEPKdPKiiimiRKSt6vectorIdSaIdEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.130") align 8 %13, ptr noundef nonnull readonly %.sroa.0458.7, ptr noundef readonly %.sroa.0428.7, i32 noundef %i.gp, i32 noundef %4, i64 noundef %3, i32 noundef %5, ptr noundef nonnull readonly align 8 dereferenceable(24) %11)
          to label %_ZN8LightGBM23FindBinWithZeroAsOneBinEPKdPKiiimiRKSt6vectorIdSaIdEE.exit unwind label %bb.bm

_ZN8LightGBM23FindBinWithZeroAsOneBinEPKdPKiiimiRKSt6vectorIdSaIdEE.exit: ; preds = %bb.bi, %bb.bj
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !307 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !309
  %i.hd = load <2 x ptr>, ptr %13, align 16, !tbaa !325
  store <2 x ptr> %i.hd, ptr %i.gy, align 8, !tbaa !325
  %i.he = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.hf = load ptr, ptr %i.he, align 16, !tbaa !309
  store ptr %i.hf, ptr %i.hb, align 8, !tbaa !309
  %.not.i.i.i.i.i = icmp eq ptr %i.gz, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %_ZNSt6vectorIdSaIdEEaSEOS1_.exit

_ZNSt6vectorIdSaIdEEaSEOS1_.exit:                 ; preds = %_ZN8LightGBM23FindBinWithZeroAsOneBinEPKdPKiiimiRKSt6vectorIdSaIdEE.exit
  %i.hg = ptrtoint ptr %i.hc to i64
  %i.hh = ptrtoint ptr %i.gz to i64
  %i.hi = sub i64 %i.hg, %i.hh
  call void @_ZdlPvm(ptr noundef nonnull %i.gz, i64 noundef %i.hi) #38
  %.pr = load ptr, ptr %13, align 16, !tbaa !307  ; 3 uses
  %.not.i.i.i230 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i230, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorIdSaIdEEaSEOS1_.exit
  %i.hj = load ptr, ptr %i.he, align 16, !tbaa !309
  %i.hk = ptrtoint ptr %i.hj to i64
  %i.hl = ptrtoint ptr %.pr to i64
  %i.hm = sub i64 %i.hk, %i.hl
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.hm) #38
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZN8LightGBM23FindBinWithZeroAsOneBinEPKdPKiiimiRKSt6vectorIdSaIdEE.exit, %_ZNSt6vectorIdSaIdEEaSEOS1_.exit, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  %i.hn = load ptr, ptr %i.ha, align 8, !tbaa !308 ; 3 uses
  %i.ho = load ptr, ptr %i.gy, align 8, !tbaa !307
  %i.hp = ptrtoint ptr %i.hn to i64
  %i.hq = ptrtoint ptr %i.ho to i64
  %i.hr = sub i64 %i.hp, %i.hq
  %i.hs = icmp eq i64 %i.hr, 16
  br i1 %i.hs, label %bb.bl, label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit254

bb.bl:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  store i32 0, ptr %i.gs, align 4, !tbaa !327
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit254

bb.bm:                                            ; preds = %bb.bj, %bb.bi
  %i.ht = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit351

bb.bn:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  %i.hu = load ptr, ptr %11, align 8, !tbaa !325, !noalias !1524
  %i.hv = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !325, !noalias !1524
  %i.hx = icmp eq ptr %i.hu, %i.hw
  br i1 %i.hx, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  invoke void @_ZN8LightGBM23FindBinWithZeroAsOneBinEPKdPKiiimi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.130") align 8 %14, ptr noundef nonnull readonly %.sroa.0458.7, ptr noundef readonly %.sroa.0428.7, i32 noundef %i.gp, i32 noundef %4, i64 noundef %3, i32 noundef %5)
          to label %_ZN8LightGBM23FindBinWithZeroAsOneBinEPKdPKiiimiRKSt6vectorIdSaIdEE.exit233 unwind label %bb.br

bb.bp:                                            ; preds = %bb.bn
  invoke void @_ZN8LightGBM24FindBinWithPredefinedBinEPKdPKiiimiRKSt6vectorIdSaIdEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.130") align 8 %14, ptr noundef nonnull readonly %.sroa.0458.7, ptr noundef readonly %.sroa.0428.7, i32 noundef %i.gp, i32 noundef %4, i64 noundef %3, i32 noundef %5, ptr noundef nonnull readonly align 8 dereferenceable(24) %11)
          to label %_ZN8LightGBM23FindBinWithZeroAsOneBinEPKdPKiiimiRKSt6vectorIdSaIdEE.exit233 unwind label %bb.br

_ZN8LightGBM23FindBinWithZeroAsOneBinEPKdPKiiimiRKSt6vectorIdSaIdEE.exit233: ; preds = %bb.bo, %bb.bp
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !307 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !309
  %i.id = load <2 x ptr>, ptr %14, align 16, !tbaa !325
  store <2 x ptr> %i.id, ptr %i.hy, align 8, !tbaa !325
  %i.ie = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.if = load ptr, ptr %i.ie, align 16, !tbaa !309
  store ptr %i.if, ptr %i.ib, align 8, !tbaa !309
  %.not.i.i.i.i.i234 = icmp eq ptr %i.hz, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i234, label %_ZNSt6vectorIdSaIdEED2Ev.exit237, label %_ZNSt6vectorIdSaIdEEaSEOS1_.exit235

_ZNSt6vectorIdSaIdEEaSEOS1_.exit235:              ; preds = %_ZN8LightGBM23FindBinWithZeroAsOneBinEPKdPKiiimiRKSt6vectorIdSaIdEE.exit233
  %i.ig = ptrtoint ptr %i.ic to i64
  %i.ih = ptrtoint ptr %i.hz to i64
  %i.ii = sub i64 %i.ig, %i.ih
  call void @_ZdlPvm(ptr noundef nonnull %i.hz, i64 noundef %i.ii) #38
  %.pr536 = load ptr, ptr %14, align 16, !tbaa !307 ; 3 uses
  %.not.i.i.i236 = icmp eq ptr %.pr536, null
  br i1 %.not.i.i.i236, label %_ZNSt6vectorIdSaIdEED2Ev.exit237, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorIdSaIdEEaSEOS1_.exit235
  %i.ij = load ptr, ptr %i.ie, align 16, !tbaa !309
  %i.ik = ptrtoint ptr %i.ij to i64
  %i.il = ptrtoint ptr %.pr536 to i64
  %i.im = sub i64 %i.ik, %i.il
  call void @_ZdlPvm(ptr noundef nonnull %.pr536, i64 noundef %i.im) #38
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit237

_ZNSt6vectorIdSaIdEED2Ev.exit237:                 ; preds = %_ZN8LightGBM23FindBinWithZeroAsOneBinEPKdPKiiimiRKSt6vectorIdSaIdEE.exit233, %_ZNSt6vectorIdSaIdEEaSEOS1_.exit235, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  %.pre884 = load ptr, ptr %i.ia, align 8, !tbaa !308
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit254

bb.br:                                            ; preds = %bb.bp, %bb.bo
  %i.in = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit351

bb.bs:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  %i.io = add nsw i32 %4, -1                      ; 2 uses
  %i.ip = sub i64 %3, %i.ae                       ; 2 uses
  %i.iq = load ptr, ptr %11, align 8, !tbaa !325, !noalias !1525
  %i.ir = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !325, !noalias !1525
  %i.it = icmp eq ptr %i.iq, %i.is
  br i1 %i.it, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZN8LightGBM23FindBinWithZeroAsOneBinEPKdPKiiimi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.130") align 8 %15, ptr noundef nonnull readonly %.sroa.0458.7, ptr noundef readonly %.sroa.0428.7, i32 noundef %i.gp, i32 noundef %i.io, i64 noundef %i.ip, i32 noundef %5)
          to label %_ZN8LightGBM23FindBinWithZeroAsOneBinEPKdPKiiimiRKSt6vectorIdSaIdEE.exit240 unwind label %bb.cb

bb.bu:                                            ; preds = %bb.bs
  invoke void @_ZN8LightGBM24FindBinWithPredefinedBinEPKdPKiiimiRKSt6vectorIdSaIdEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.130") align 8 %15, ptr noundef nonnull readonly %.sroa.0458.7, ptr noundef readonly %.sroa.0428.7, i32 noundef %i.gp, i32 noundef %i.io, i64 noundef %i.ip, i32 noundef %5, ptr noundef nonnull readonly align 8 dereferenceable(24) %11)
          to label %_ZN8LightGBM23FindBinWithZeroAsOneBinEPKdPKiiimiRKSt6vectorIdSaIdEE.exit240 unwind label %bb.cb

end_hunk_1
