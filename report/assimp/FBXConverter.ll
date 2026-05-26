inline.NumInlined: 7594
inline.NumDeleted: 2896
begin_hunk_0_@_ZN6Assimp3FBX12FBXConverter17ConvertAnimationsEv:bb.a
bb.d:                                             ; preds = %bb.a
  br label %_ZN6Assimp3FBX12FBXConverter17FrameRateToDoubleENS0_18FileGlobalSettings9FrameRateEd.exit

bb.e:                                             ; preds = %bb.a
  br label %_ZN6Assimp3FBX12FBXConverter17FrameRateToDoubleENS0_18FileGlobalSettings9FrameRateEd.exit

bb.f:                                             ; preds = %bb.a
  br label %_ZN6Assimp3FBX12FBXConverter17FrameRateToDoubleENS0_18FileGlobalSettings9FrameRateEd.exit

bb.g:                                             ; preds = %bb.a, %bb.a
  br label %_ZN6Assimp3FBX12FBXConverter17FrameRateToDoubleENS0_18FileGlobalSettings9FrameRateEd.exit

bb.h:                                             ; preds = %bb.a, %bb.a
  br label %_ZN6Assimp3FBX12FBXConverter17FrameRateToDoubleENS0_18FileGlobalSettings9FrameRateEd.exit

bb.i:                                             ; preds = %bb.a
  br label %_ZN6Assimp3FBX12FBXConverter17FrameRateToDoubleENS0_18FileGlobalSettings9FrameRateEd.exit

bb.j:                                             ; preds = %bb.a
  br label %_ZN6Assimp3FBX12FBXConverter17FrameRateToDoubleENS0_18FileGlobalSettings9FrameRateEd.exit

bb.k:                                             ; preds = %bb.a
  br label %_ZN6Assimp3FBX12FBXConverter17FrameRateToDoubleENS0_18FileGlobalSettings9FrameRateEd.exit

bb.l:                                             ; preds = %bb.a
  br label %_ZN6Assimp3FBX12FBXConverter17FrameRateToDoubleENS0_18FileGlobalSettings9FrameRateEd.exit

bb.m:                                             ; preds = %bb.a
  %i.j = fpext float %i.i to double
  br label %_ZN6Assimp3FBX12FBXConverter17FrameRateToDoubleENS0_18FileGlobalSettings9FrameRateEd.exit

bb.n:                                             ; preds = %bb.a
  br label %_ZN6Assimp3FBX12FBXConverter17FrameRateToDoubleENS0_18FileGlobalSettings9FrameRateEd.exit

_ZN6Assimp3FBX12FBXConverter17FrameRateToDoubleENS0_18FileGlobalSettings9FrameRateEd.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n
  %.0.i = phi double [ -1.000000e+00, %bb.n ], [ %i.j, %bb.m ], [ 1.200000e+02, %bb.b ], [ 1.000000e+02, %bb.c ], [ 6.000000e+01, %bb.d ], [ 5.000000e+01, %bb.e ], [ 4.800000e+01, %bb.f ], [ 3.000000e+01, %bb.g ], [ f0x403DF853A315435E, %bb.h ], [ 2.500000e+01, %bb.i ], [ 2.400000e+01, %bb.j ], [ 1.000000e+03, %bb.k ], [ 2.397600e+01, %bb.l ], [ 1.000000e+00, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 480
  store double %.0.i, ptr %i.k, align 8
  %i.l = load ptr, ptr %i.a, align 8, !nonnull !3, !align !9
  %i.m = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX8Document15AnimationStacksEv(ptr noundef nonnull align 8 dereferenceable(368) %i.l) ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not9 = icmp eq ptr %i.n, %i.p
  br i1 %.not9, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN6Assimp3FBX12FBXConverter17FrameRateToDoubleENS0_18FileGlobalSettings9FrameRateEd.exit
  ret void

.lr.ph:                                           ; preds = %_ZN6Assimp3FBX12FBXConverter17FrameRateToDoubleENS0_18FileGlobalSettings9FrameRateEd.exit, %.lr.ph
  %.sroa.06.010 = phi ptr [ %i.r, %.lr.ph ], [ %i.n, %_ZN6Assimp3FBX12FBXConverter17FrameRateToDoubleENS0_18FileGlobalSettings9FrameRateEd.exit ] ; 2 uses
  %i.q = load ptr, ptr %.sroa.06.010, align 8
  tail call void @_ZN6Assimp3FBX12FBXConverter21ConvertAnimationStackERKNS0_14AnimationStackE(ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.06.010, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.r, %i.p
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX12FBXConverter31ConvertOrphanedEmbeddedTexturesEv(ptr noundef nonnull align 8 dereferenceable(529) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !align !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.025.041 = load ptr, ptr %i.c, align 8    ; 2 uses
  %.not3342 = icmp eq ptr %.sroa.025.041, null
  br i1 %.not3342, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNKSt18unordered_multimapImPKN6Assimp3FBX10ConnectionESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE5countERSA_.exit.thread29, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt18unordered_multimapImPKN6Assimp3FBX10ConnectionESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE5countERSA_.exit.thread29
  %.sroa.025.043 = phi ptr [ %.sroa.025.041, %.lr.ph ], [ %.sroa.025.0, %_ZNKSt18unordered_multimapImPKN6Assimp3FBX10ConnectionESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE5countERSA_.exit.thread29 ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.025.043, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.025.043, i64 16
  %i.h = load ptr, ptr %i.a, align 8, !nonnull !3, !align !9 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  %i.j = load i64, ptr %i.i, align 8
  %.not.not.i.i.i = icmp eq i64 %i.j, 0
  %i.k = load i64, ptr %i.f, align 8              ; 5 uses
  br i1 %.not.not.i.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.l, %bb.c ], [ %.sroa.06.0.i.i.i, %bb.e ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt18unordered_multimapImPKN6Assimp3FBX10ConnectionESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE5countERSA_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp eq i64 %i.k, %i.n
  br i1 %i.o, label %_ZNKSt10_HashtableImSt4pairIKmPKN6Assimp3FBX10ConnectionEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i, label %bb.d, !llvm.loop !10

bb.f:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = urem i64 %i.k, %i.r                      ; 2 uses
  %i.t = load ptr, ptr %i.p, align 8
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt18unordered_multimapImPKN6Assimp3FBX10ConnectionESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE5countERSA_.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8
  %i.z = icmp eq i64 %i.k, %i.y
  br i1 %i.z, label %_ZNKSt10_HashtableImSt4pairIKmPKN6Assimp3FBX10ConnectionEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i, label %.lr.ph.i.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.aa = icmp eq i64 %i.k, %i.ad
  br i1 %i.aa, label %_ZNKSt10_HashtableImSt4pairIKmPKN6Assimp3FBX10ConnectionEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !11

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %bb.h
  %.020.i.i.i.i.i = phi ptr [ %i.ab, %bb.h ], [ %i.w, %bb.g ]
  %i.ab = load ptr, ptr %.020.i.i.i.i.i, align 8  ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not18.i.i.i.i.i, label %_ZNKSt18unordered_multimapImPKN6Assimp3FBX10ConnectionESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE5countERSA_.exit.thread, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = urem i64 %i.ad, %i.r
  %.not19.i.i.i.i.i = icmp eq i64 %i.ae, %i.s
  br i1 %.not19.i.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !11

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.i
  br label %_ZNKSt18unordered_multimapImPKN6Assimp3FBX10ConnectionESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE5countERSA_.exit.thread, !llvm.loop !11

_ZNKSt10_HashtableImSt4pairIKmPKN6Assimp3FBX10ConnectionEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i: ; preds = %bb.h, %bb.e, %bb.g
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.e ], [ %i.w, %bb.g ], [ %i.ab, %bb.h ]
  %.sroa.0.016.i.i = load ptr, ptr %.sroa.06.1.i.i.i, align 8 ; 2 uses
  %.not617.i.i = icmp eq ptr %.sroa.0.016.i.i, null
  br i1 %.not617.i.i, label %_ZNKSt18unordered_multimapImPKN6Assimp3FBX10ConnectionESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE5countERSA_.exit.thread29, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNKSt10_HashtableImSt4pairIKmPKN6Assimp3FBX10ConnectionEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i, %bb.j
  %.sroa.0.019.i.i = phi ptr [ %.sroa.0.0.i.i, %bb.j ], [ %.sroa.0.016.i.i, %_ZNKSt10_HashtableImSt4pairIKmPKN6Assimp3FBX10ConnectionEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i ] ; 2 uses
  %.0418.i.i = phi i64 [ %i.ai, %bb.j ], [ 1, %_ZNKSt10_HashtableImSt4pairIKmPKN6Assimp3FBX10ConnectionEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i, i64 8
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = icmp eq i64 %i.k, %i.ag
  br i1 %i.ah, label %bb.j, label %_ZNKSt18unordered_multimapImPKN6Assimp3FBX10ConnectionESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE5countERSA_.exit

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.ai = add i64 %.0418.i.i, 1                   ; 2 uses
  %.sroa.0.0.i.i = load ptr, ptr %.sroa.0.019.i.i, align 8 ; 2 uses
  %.not6.i.i = icmp eq ptr %.sroa.0.0.i.i, null
  br i1 %.not6.i.i, label %_ZNKSt18unordered_multimapImPKN6Assimp3FBX10ConnectionESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE5countERSA_.exit, label %.lr.ph.i.i, !llvm.loop !12

_ZNKSt18unordered_multimapImPKN6Assimp3FBX10ConnectionESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE5countERSA_.exit: ; preds = %.lr.ph.i.i, %bb.j
  %.0.i.i = phi i64 [ %i.ai, %bb.j ], [ %.0418.i.i, %.lr.ph.i.i ]
  %i.aj = icmp eq i64 %.0.i.i, 0
  br i1 %i.aj, label %_ZNKSt18unordered_multimapImPKN6Assimp3FBX10ConnectionESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE5countERSA_.exit.thread, label %_ZNKSt18unordered_multimapImPKN6Assimp3FBX10ConnectionESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE5countERSA_.exit.thread29

_ZNKSt18unordered_multimapImPKN6Assimp3FBX10ConnectionESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE5countERSA_.exit.thread: ; preds = %.lr.ph.i.i.i.i.i, %bb.d, %..loopexit_crit_edge21.i.i.i.i.i, %bb.f, %_ZNKSt18unordered_multimapImPKN6Assimp3FBX10ConnectionESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE5countERSA_.exit
  %i.ak = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !3, !align !9
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !3, !align !9 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = tail call i32 @strncmp(ptr noundef %i.ao, ptr noundef nonnull @.str.202, i64 noundef %i.at) #28
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.k, label %_ZNKSt18unordered_multimapImPKN6Assimp3FBX10ConnectionESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE5countERSA_.exit.thread29

bb.k:                                             ; preds = %_ZNKSt18unordered_multimapImPKN6Assimp3FBX10ConnectionESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE5countERSA_.exit.thread
  %i.aw = invoke noundef ptr @_ZN6Assimp3FBX10LazyObject3GetEb(ptr noundef nonnull align 8 dereferenceable(36) %i.ak, i1 noundef zeroext false)
          to label %bb.l unwind label %bb.o       ; 2 uses

bb.l:                                             ; preds = %bb.k
  %.not = icmp eq ptr %i.aw, null
  br i1 %.not, label %_ZNKSt18unordered_multimapImPKN6Assimp3FBX10ConnectionESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE5countERSA_.exit.thread29, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 240
  %i.ay = load ptr, ptr %i.ax, align 8            ; 7 uses
  %.not22 = icmp eq ptr %i.ay, null
  br i1 %.not22, label %_ZNKSt18unordered_multimapImPKN6Assimp3FBX10ConnectionESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE5countERSA_.exit.thread29, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 168
  %i.ba = load i64, ptr %i.az, align 8
  %.fr = freeze i64 %i.ba
  %.not23 = icmp eq i64 %.fr, 0
  br i1 %.not23, label %_ZNKSt18unordered_multimapImPKN6Assimp3FBX10ConnectionESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE5countERSA_.exit.thread29, label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  %i.bd = tail call ptr @__cxa_begin_catch(ptr %i.bc) #27 ; 0 uses
  tail call void @__cxa_end_catch()
  br label %_ZNKSt18unordered_multimapImPKN6Assimp3FBX10ConnectionESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE5countERSA_.exit.thread29

bb.p:                                             ; preds = %bb.n
  %i.be = tail call noundef i32 @_ZN6Assimp3FBX12FBXConverter12ConvertVideoERKNS0_5VideoE(ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef nonnull align 8 dereferenceable(184) %i.ay)
  %i.bf = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.bg = load i64, ptr %i.e, align 8             ; 2 uses
  %i.bh = urem i64 %i.bf, %i.bg                   ; 3 uses
  %i.bi = load ptr, ptr %i.d, align 8
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bh
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bl = load ptr, ptr %i.bk, align 8            ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = icmp eq ptr %i.ay, %i.bn
  br i1 %i.bo, label %_ZNSt13unordered_mapIPKN6Assimp3FBX5VideoEjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEEixERSA_.exit, label %.lr.ph.i.i.i.i

bb.r:                                             ; preds = %bb.s
  %i.bp = icmp eq ptr %i.ay, %i.bs
  br i1 %i.bp, label %_ZNSt13unordered_mapIPKN6Assimp3FBX5VideoEjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEEixERSA_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !13

.lr.ph.i.i.i.i:                                   ; preds = %bb.q, %bb.r
  %.020.i.i.i.i = phi ptr [ %i.bq, %bb.r ], [ %i.bl, %bb.q ]
  %i.bq = load ptr, ptr %.020.i.i.i.i, align 8    ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8            ; 2 uses
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = urem i64 %i.bt, %i.bg
  %.not19.i.i.i.i = icmp eq i64 %i.bu, %i.bh
  br i1 %.not19.i.i.i.i, label %bb.r, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !13

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.s
  br label %.loopexit.i.i, !llvm.loop !13

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %bb.p
  %i.bv = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30 ; 5 uses
  store ptr null, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.ay, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store i32 0, ptr %i.bx, align 8
  %i.by = invoke ptr @_ZNSt10_HashtableIPKN6Assimp3FBX5VideoESt4pairIKS4_jESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS9_10_Hash_nodeIS7_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 noundef %i.bh, i64 noundef %i.bf, ptr noundef nonnull %i.bv, i64 noundef 1)
          to label %_ZNSt13unordered_mapIPKN6Assimp3FBX5VideoEjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEEixERSA_.exit unwind label %_ZNSt10_HashtableIPKN6Assimp3FBX5VideoESt4pairIKS4_jESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

_ZNSt10_HashtableIPKN6Assimp3FBX5VideoESt4pairIKS4_jESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.bz = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef 24) #29
  resume { ptr, i32 } %i.bz

_ZNSt13unordered_mapIPKN6Assimp3FBX5VideoEjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEEixERSA_.exit: ; preds = %bb.r, %bb.q, %.loopexit.i.i
  %.pn.i.i = phi ptr [ %i.by, %.loopexit.i.i ], [ %i.bl, %bb.q ], [ %i.bq, %bb.r ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  store i32 %i.be, ptr %.1.i.i, align 4
  br label %_ZNKSt18unordered_multimapImPKN6Assimp3FBX10ConnectionESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE5countERSA_.exit.thread29

_ZNKSt18unordered_multimapImPKN6Assimp3FBX10ConnectionESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE5countERSA_.exit.thread29: ; preds = %bb.n, %bb.m, %bb.l, %_ZNKSt18unordered_multimapImPKN6Assimp3FBX10ConnectionESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE5countERSA_.exit.thread, %bb.o, %_ZNKSt10_HashtableImSt4pairIKmPKN6Assimp3FBX10ConnectionEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i, %_ZNSt13unordered_mapIPKN6Assimp3FBX5VideoEjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEEixERSA_.exit, %_ZNKSt18unordered_multimapImPKN6Assimp3FBX10ConnectionESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE5countERSA_.exit
  %.sroa.025.0 = load ptr, ptr %.sroa.025.043, align 8 ; 2 uses
  %.not33 = icmp eq ptr %.sroa.025.0, null
  br i1 %.not33, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX12FBXConverter15ConvertRootNodeEv(ptr noundef nonnull align 8 dereferenceable(529) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %class.aiMatrix4x4t, align 4        ; 11 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #30 ; 3 uses
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.a)
          to label %._crit_edge.i.i unwind label %bb.e

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.a, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.e, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 0, ptr %i.f, align 8
  store i8 0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.g, ptr %2, align 8
  store i64 7306086878253379410, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 8, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i8 0, ptr %i.i, align 8
  invoke void @_ZN6Assimp3FBX12FBXConverter13GetUniqueNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS7_(ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load ptr, ptr %2, align 8                ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.g
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.g, align 8
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.n = load i64, ptr %i.f, align 8              ; 4 uses
  %i.o = icmp ugt i64 %i.n, 1023
  br i1 %i.o, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.p = load ptr, ptr %i.b, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = trunc nuw nsw i64 %i.n to i32
  store i32 %i.s, ptr %i.r, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  %i.u = load ptr, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.t, ptr align 1 %i.u, i64 %i.n, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.n
  store i8 0, ptr %i.v, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %i.w = load ptr, ptr %i.b, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store float 1.000000e+00, ptr %3, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ae, align 4
  invoke void @_ZN6Assimp3FBX12FBXConverter12ConvertNodesEmP6aiNodeS3_RK12aiMatrix4x4tIfE(ptr noundef nonnull align 8 dereferenceable(529) %0, i64 noundef 0, ptr noundef %i.y, ptr noundef %i.y, ptr noundef nonnull align 4 dereferenceable(64) %3)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.af = load ptr, ptr %1, align 8               ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.e
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.d
  %i.ah = load i64, ptr %i.e, align 8
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret void

bb.e:                                             ; preds = %bb.a
  %i.aj = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 1144) #29
  br label %bb.i

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = load ptr, ptr %2, align 8               ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.g
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.f
  %i.an = load i64, ptr %i.g, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.h

bb.g:                                             ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
end_hunk_0
begin_hunk_1_@_ZN6Assimp3FBX12FBXConverter11ConvertLineERKNS0_12LineGeometryEP6aiNode:bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fm, i64 noundef %i.fr) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %thread-pre-split, %bb.r
  resume { ptr, i32 } %.pn68.pn

_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA22_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit: ; preds = %bb.h, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, %.noexc71, %.noexc
  ret void
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12MeshGeometry11GetVerticesEv(ptr noundef nonnull align 8 dereferenceable(1000)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12MeshGeometry18GetFaceIndexCountsEv(ptr noundef nonnull align 8 dereferenceable(1000)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12MeshGeometry18GetMaterialIndicesEv(ptr noundef nonnull align 8 dereferenceable(1000)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX12FBXConverter24ConvertMeshMultiMaterialERKNS0_12MeshGeometryERKNS0_5ModelERK12aiMatrix4x4tIfEP6aiNodeSD_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.311") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(529) %1, ptr noundef nonnull align 8 dereferenceable(1000) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(208) %3, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(64) %4, ptr noundef readonly captures(address) %5, ptr noundef readnone captures(none) %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::set", align 8          ; 10 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12MeshGeometry18GetMaterialIndicesEv(ptr noundef nonnull align 8 dereferenceable(1000) %2) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 8 uses
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr null, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store ptr %i.b, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  store i64 0, ptr %i.f, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.g = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not32 = icmp eq ptr %i.g, %i.i
  br i1 %.not32, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit
  %.pre = load ptr, ptr %i.c, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.l = phi ptr [ %.pre, %._crit_edge.loopexit ], [ null, %bb.a ]
  invoke void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.l)
          to label %_ZNSt3setIiSt4lessIiESaIiEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #32
  unreachable

_ZNSt3setIiSt4lessIiESaIiEED2Ev.exit:             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit
  %.sroa.025.033 = phi ptr [ %i.g, %.lr.ph ], [ %i.bi, %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit ] ; 2 uses
  %i.o = load i32, ptr %.sroa.025.033, align 4    ; 7 uses
  %i.p = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not10.i.i.i, label %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.p, %bb.c ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.b, %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.r = load i32, ptr %i.q, align 4
  %i.s = icmp slt i32 %i.r, %i.o                  ; 3 uses
  %.19.i.i.i = select i1 %i.s, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.s, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !133

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.t = icmp eq ptr %.19.i.i.i, %i.b
  br i1 %i.t, label %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit.thread, label %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit

_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit:        ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.s, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.u = load i32, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.v = icmp slt i32 %i.o, %i.u
  br i1 %i.v, label %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit.thread, label %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit

_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit.thread: ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i, %bb.c, %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit
  %i.w = invoke noundef i32 @_ZN6Assimp3FBX12FBXConverter24ConvertMeshMultiMaterialERKNS0_12MeshGeometryERKNS0_5ModelERK12aiMatrix4x4tIfEiP6aiNodeSD_(ptr noundef nonnull align 8 dereferenceable(529) %1, ptr noundef nonnull align 8 dereferenceable(1000) %2, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 4 dereferenceable(64) %4, i32 noundef %i.o, ptr noundef %5, ptr poison)
          to label %bb.d unwind label %.loopexit  ; 2 uses

bb.d:                                             ; preds = %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit.thread
  %i.x = load ptr, ptr %i.j, align 8              ; 4 uses
  %i.y = load ptr, ptr %i.k, align 8
  %.not.i.i = icmp eq ptr %i.x, %i.y
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.w, ptr %i.x, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store ptr %i.z, ptr %i.j, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.f:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %0, align 8               ; 4 uses
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 6 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775804
  br i1 %i.ae, label %bb.g, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.224) #31
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.af = ashr exact i64 %i.ad, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i.i.i, %i.af ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  %i.ai = call i64 @llvm.umin.i64(i64 %i.ag, i64 2305843009213693951)
  %i.aj = select i1 %i.ah, i64 2305843009213693951, i64 %i.ai ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ak = shl nuw nsw i64 %i.aj, 2
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #30
          to label %.noexc14 unwind label %.loopexit ; 4 uses

.noexc14:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.ad ; 2 uses
  store i32 %i.w, ptr %i.am, align 4
  %i.an = icmp sgt i64 %i.ad, 0
  br i1 %i.an, label %bb.h, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.h:                                             ; preds = %.noexc14
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.al, ptr align 4 %i.aa, i64 %i.ad, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.h, %.noexc14
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ad) #29
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.al, ptr %0, align 8
  store ptr %i.ao, ptr %i.j, align 8
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.ap, ptr %i.k, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, %bb.e
  %.02022.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i15

.lr.ph.i.i.i15:                                   ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit, %.lr.ph.i.i.i15
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i15 ], [ %.02022.i.i.i, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.ar = load i32, ptr %i.aq, align 4            ; 2 uses
  %i.as = icmp slt i32 %i.o, %i.ar                ; 2 uses
  %.in.v.i.i.i = select i1 %i.as, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i16, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i15, !llvm.loop !134

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i15
  br i1 %i.as, label %._crit_edge.thread.i.i.i, label %bb.k

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.b, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 4 uses
  %i.at = load ptr, ptr %i.d, align 8
  %i.au = icmp eq ptr %.019.lcssa29.i.i.i, %i.at
  br i1 %i.au, label %select.unfold.i.i, label %bb.j

bb.j:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.av = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #28
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i
  %i.aw = phi i32 [ %.pre.i.i, %bb.j ], [ %i.ar, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.j ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.ax = icmp slt i32 %i.aw, %i.o
  %cond.fr.i.i = freeze i1 %i.ax
  br i1 %cond.fr.i.i, label %select.unfold.i.i, label %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit

select.unfold.i.i:                                ; preds = %bb.k, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.k ] ; 3 uses
  %i.ay = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.b
  br i1 %i.ay, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %select.unfold.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = icmp slt i32 %i.o, %i.ba
  br label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i: ; preds = %bb.l, %select.unfold.i.i
  %i.bc = phi i1 [ %i.bb, %bb.l ], [ true, %select.unfold.i.i ]
  %i.bd = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30
          to label %.noexc17 unwind label %bb.m   ; 2 uses

.noexc17:                                         ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  store i32 %i.o, ptr %i.be, align 4
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bc, ptr noundef nonnull %i.bd, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #27
  %i.bf = load i64, ptr %i.f, align 8
  %i.bg = add i64 %i.bf, 1
  store i64 %i.bg, ptr %i.f, align 8
  br label %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit

.loopexit:                                        ; preds = %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit.thread, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit:      ; preds = %.noexc17, %bb.k, %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.025.033, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.bi, %i.i
  br i1 %.not, label %._crit_edge.loopexit, label %bb.c

bb.n:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bh, %bb.m ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bj = load ptr, ptr %0, align 8               ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = load ptr, ptr %i.k, align 8
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bj to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bn) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.n, %bb.o
  call void @_ZNSt3setIiSt4lessIiESaIiEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN6Assimp3FBX12FBXConverter25ConvertMeshSingleMaterialERKNS0_12MeshGeometryERKNS0_5ModelERK12aiMatrix4x4tIfEP6aiNodeSD_(ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef nonnull align 8 dereferenceable(1000) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(208) %2, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr noundef readonly captures(address) %4, ptr readnone captures(none) %5) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %"class.std::vector.341", align 8   ; 9 uses
  %7 = alloca %struct.aiString, align 4           ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"struct.Assimp::FBX::SkeletonBoneContainer", align 8 ; 16 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 21 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %i.g = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12MeshGeometry18GetMaterialIndicesEv(ptr noundef nonnull align 8 dereferenceable(1000) %1) ; 2 uses
  %i.h = tail call noundef ptr @_ZN6Assimp3FBX12FBXConverter14SetupEmptyMeshERKNS0_8GeometryEP6aiNode(ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef %4) ; 21 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12MeshGeometry11GetVerticesEv(ptr noundef nonnull align 8 dereferenceable(1000) %1) ; 9 uses
  %i.j = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12MeshGeometry18GetFaceIndexCountsEv(ptr noundef nonnull align 8 dereferenceable(1000) %1) ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 8 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load ptr, ptr %i.i, align 8
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = sdiv exact i64 %i.p, 12
  %i.r = trunc i64 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %i.r, ptr %i.s, align 4
  %i.t = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.u = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.x = sub i64 %i.v, %i.w
  %i.y = sdiv exact i64 %i.x, 12
  %i.z = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.y, i64 12) ; 2 uses
  %i.aa = extractvalue { i64, i1 } %i.z, 1
  %i.ab = extractvalue { i64, i1 } %i.z, 0
  %i.ac = select i1 %i.aa, i64 -1, i64 %i.ab
  %i.ad = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ac) #30 ; 4 uses
  %i.ae = icmp eq ptr %i.t, %i.u
  br i1 %i.ae, label %.loopexit441, label %.loopexit441.loopexit

.loopexit441.loopexit:                            ; preds = %bb.a
  %i.af = add i64 %i.v, -12
  %i.ag = sub i64 %i.af, %i.w
  %.fr = freeze i64 %i.ag                         ; 2 uses
  %i.ah = urem i64 %.fr, 12
  %i.ai = sub nuw i64 %.fr, %i.ah
  %i.aj = add i64 %i.ai, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ad, i8 0, i64 %i.aj, i1 false)
  br label %.loopexit441

.loopexit441:                                     ; preds = %.loopexit441.loopexit, %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.ad, ptr %i.ak, align 8
  %i.al = load ptr, ptr %i.i, align 8             ; 3 uses
  %i.am = load ptr, ptr %i.k, align 8
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 3 uses
  %i.aq = icmp sgt i64 %i.ap, 12
  br i1 %i.aq, label %bb.b, label %bb.c, !prof !128

bb.b:                                             ; preds = %.loopexit441
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ad, ptr align 4 %i.al, i64 %i.ap, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit

bb.c:                                             ; preds = %.loopexit441
  %i.ar = icmp eq i64 %i.ap, 12
  br i1 %i.ar, label %bb.d, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ad, ptr noundef nonnull align 4 dereferenceable(12) %i.al, i64 12, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = load ptr, ptr %i.j, align 8
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = lshr exact i64 %i.ax, 2
  %i.az = trunc i64 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 %i.az, ptr %i.ba, align 8
  %i.bb = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.bc = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 3 uses
  %i.bg = ashr exact i64 %i.bf, 2                 ; 3 uses
  %i.bh = icmp ugt i64 %i.bg, 1152921504606846975
  %i.bi = shl i64 %i.bf, 2
  %i.bj = add nuw nsw i64 %i.bi, 8
  %i.bk = select i1 %i.bh, i64 -1, i64 %i.bj
  %i.bl = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bk) #30 ; 2 uses
  store i64 %i.bg, ptr %i.bl, align 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 5 uses
  %i.bn = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bn, label %.loopexit440, label %bb.e

bb.e:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_.exit
  %i.bo = getelementptr inbounds [16 x i8], ptr %i.bm, i64 %i.bg
  %i.bp = shl i64 %i.bf, 2
  %i.bq = add i64 %i.bp, -16                      ; 2 uses
  %i.br = lshr i64 %i.bq, 4
  %i.bs = add nuw nsw i64 %i.br, 1
  %xtraiter = and i64 %i.bs, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.e, %.prol.preheader
  %i.bt = phi ptr [ %i.bv, %.prol.preheader ], [ %i.bm, %bb.e ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.e ]
  store i32 0, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr null, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !135

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.e
  %.unr = phi ptr [ %i.bm, %bb.e ], [ %i.bv, %.prol.preheader ]
  %i.bw = icmp ult i64 %i.bq, 112
  br i1 %i.bw, label %.loopexit440, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.bx = phi ptr [ %i.cn, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
end_hunk_1
