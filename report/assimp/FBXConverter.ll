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
  %.not23 = icmp eq i64 %i.ba, 0
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
  br i1 %i.ax, label %select.unfold.i.i, label %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit

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
begin_hunk_2_@_ZN6Assimp3FBX12FBXConverter23SetShadingPropertiesRawEP10aiMaterialRKNS0_13PropertyTableERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_7TextureESt4hashISD_ESt8equal_toISD_ESaISt4pairIKSD_SG_EEEPKNS0_12MeshGeometryE:._crit_edge.i.i
  %i.fx = invoke noundef i32 @_ZN6Assimp3FBX12FBXConverter12ConvertVideoERKNS0_5VideoE(ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef nonnull align 8 dereferenceable(184) %i.ey)
          to label %bb.ao unwind label %bb.as     ; 2 uses

bb.ao:                                            ; preds = %.loopexit414
  %i.fy = ptrtoint ptr %i.ey to i64               ; 2 uses
  %i.fz = load i64, ptr %i.ab, align 8            ; 2 uses
  %i.ga = urem i64 %i.fy, %i.fz                   ; 3 uses
  %i.gb = load ptr, ptr %i.z, align 8
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.ga
  %i.gd = load ptr, ptr %i.gc, align 8            ; 2 uses
  %.not.i.i.i.i218 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i.i218, label %.loopexit.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ge = load ptr, ptr %i.gd, align 8            ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = icmp eq ptr %i.ey, %i.gg
  br i1 %i.gh, label %.loopexit413, label %.lr.ph.i.i.i.i219

bb.aq:                                            ; preds = %bb.ar
  %i.gi = icmp eq ptr %i.ey, %i.gl
  br i1 %i.gi, label %.loopexit413, label %.lr.ph.i.i.i.i219, !llvm.loop !13

.lr.ph.i.i.i.i219:                                ; preds = %bb.ap, %bb.aq
  %.020.i.i.i.i220 = phi ptr [ %i.gj, %bb.aq ], [ %i.ge, %bb.ap ]
  %i.gj = load ptr, ptr %.020.i.i.i.i220, align 8 ; 4 uses
  %.not18.i.i.i.i221 = icmp eq ptr %i.gj, null
  br i1 %.not18.i.i.i.i221, label %.loopexit.i.i, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i.i.i219
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8            ; 2 uses
  %i.gm = ptrtoint ptr %i.gl to i64
  %i.gn = urem i64 %i.gm, %i.fz
  %.not19.i.i.i.i222 = icmp eq i64 %i.gn, %i.ga
  br i1 %.not19.i.i.i.i222, label %bb.aq, label %..loopexit_crit_edge21.i.i.i.i223, !llvm.loop !13

..loopexit_crit_edge21.i.i.i.i223:                ; preds = %bb.ar
  br label %.loopexit.i.i, !llvm.loop !13

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i219, %..loopexit_crit_edge21.i.i.i.i223, %bb.ao
  %i.go = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30
          to label %.noexc224 unwind label %bb.as ; 5 uses

.noexc224:                                        ; preds = %.loopexit.i.i
  store ptr null, ptr %i.go, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store ptr %i.ey, ptr %i.gp, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  store i32 0, ptr %i.gq, align 8
  %i.gr = invoke ptr @_ZNSt10_HashtableIPKN6Assimp3FBX5VideoESt4pairIKS4_jESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS9_10_Hash_nodeIS7_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.z, i64 noundef %i.ga, i64 noundef %i.fy, ptr noundef nonnull %i.go, i64 noundef 1)
          to label %.loopexit413 unwind label %_ZNSt10_HashtableIPKN6Assimp3FBX5VideoESt4pairIKS4_jESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

_ZNSt10_HashtableIPKN6Assimp3FBX5VideoESt4pairIKS4_jESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.noexc224
  %i.gs = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.go, i64 noundef 24) #29
  br label %.body225

.loopexit413:                                     ; preds = %bb.aq, %.noexc224, %bb.ap
  %.pn.i.i = phi ptr [ %i.gr, %.noexc224 ], [ %i.ge, %bb.ap ], [ %i.gj, %bb.aq ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  store i32 %i.fx, ptr %.1.i.i, align 4
  br label %bb.at

bb.as:                                            ; preds = %.loopexit.i.i, %.loopexit414
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %.body225

bb.at:                                            ; preds = %.loopexit413, %_ZNSt13unordered_mapIPKN6Assimp3FBX5VideoEjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEE4findERSA_.exit
  %.0127 = phi i32 [ %i.fw, %_ZNSt13unordered_mapIPKN6Assimp3FBX5VideoEjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEE4findERSA_.exit ], [ %i.fx, %.loopexit413 ] ; 3 uses
  store i8 42, ptr %i.y, align 4
  %i.gu = icmp slt i32 %.0127, 0
  br i1 %i.gu, label %bb.au, label %.lr.ph.i.preheader

bb.au:                                            ; preds = %bb.at
  store i8 45, ptr %i.ad, align 1
  %i.gv = sub nsw i32 0, %.0127
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.au, %bb.at
  %.153.i.ph = phi ptr [ %i.ad, %bb.at ], [ %i.ae, %bb.au ]
  %.13350.i.ph = phi i32 [ 1, %bb.at ], [ 2, %bb.au ]
  %.13849.i.ph = phi i32 [ %.0127, %bb.at ], [ %i.gv, %bb.au ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.aw
  %.153.i = phi ptr [ %.2.i, %bb.aw ], [ %.153.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.02752.i = phi i1 [ %or.cond3.i, %bb.aw ], [ false, %.lr.ph.i.preheader ]
  %.03051.i = phi i32 [ %i.he, %bb.aw ], [ 1000000000, %.lr.ph.i.preheader ] ; 4 uses
  %.13350.i = phi i32 [ %.234.i, %bb.aw ], [ %.13350.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.13849.i = phi i32 [ %.239.i, %bb.aw ], [ %.13849.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.gw = sdiv i32 %.13849.i, %.03051.i           ; 2 uses
  %.recomposed = srem i32 %.13849.i, %.03051.i
  %i.gx = icmp ne i32 %i.gw, 0
  %i.gy = icmp eq i32 %.03051.i, 1                ; 2 uses
  %i.gz = or i1 %i.gy, %i.gx
  %or.cond3.i = select i1 %.02752.i, i1 true, i1 %i.gz ; 2 uses
  br i1 %or.cond3.i, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.lr.ph.i
  %i.ha = trunc i32 %i.gw to i8
  %i.hb = add i8 %i.ha, 48
  %i.hc = getelementptr inbounds nuw i8, ptr %.153.i, i64 1 ; 2 uses
  store i8 %i.hb, ptr %.153.i, align 1
  %i.hd = add nuw nsw i32 %.13350.i, 1            ; 2 uses
  br i1 %i.gy, label %_ZN6Assimp13ASSIMP_itoa10EPcji.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.lr.ph.i
  %.239.i = phi i32 [ %.recomposed, %bb.av ], [ %.13849.i, %.lr.ph.i ]
  %.234.i = phi i32 [ %i.hd, %bb.av ], [ %.13350.i, %.lr.ph.i ] ; 3 uses
  %.2.i = phi ptr [ %i.hc, %bb.av ], [ %.153.i, %.lr.ph.i ] ; 2 uses
  %i.he = sdiv i32 %.03051.i, 10
  %i.hf = icmp ult i32 %.234.i, 1023
  br i1 %i.hf, label %.lr.ph.i, label %_ZN6Assimp13ASSIMP_itoa10EPcji.exit

_ZN6Assimp13ASSIMP_itoa10EPcji.exit:              ; preds = %bb.av, %bb.aw
  %.436.i = phi i32 [ %.234.i, %bb.aw ], [ %i.hd, %bb.av ]
  %.4.i = phi ptr [ %.2.i, %bb.aw ], [ %i.hc, %bb.av ]
  store i8 0, ptr %.4.i, align 1
  store i32 %.436.i, ptr %10, align 4
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN6Assimp13ASSIMP_itoa10EPcji.exit, %bb.ah, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !240)
  %i.hg = load ptr, ptr %9, align 8, !noalias !240
  %i.hh = load i64, ptr %i.x, align 8, !noalias !240 ; 3 uses
  store ptr %i.af, ptr %11, align 8, !alias.scope !243
  store i64 0, ptr %i.ag, align 8, !alias.scope !243
  store i8 0, ptr %i.af, align 8, !alias.scope !243
  %i.hi = add i64 %i.hh, 5
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.hi)
          to label %bb.ay unwind label %.loopexit418

bb.ay:                                            ; preds = %bb.ax
  %i.hj = load i64, ptr %i.ag, align 8, !alias.scope !243
  %i.hk = sub i64 4611686018427387903, %i.hj
  %i.hl = icmp ult i64 %i.hk, %i.hh
  br i1 %i.hl, label %.invoke.i.i233, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i230

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i230: ; preds = %bb.ay
  %i.hm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %i.hg, i64 noundef %i.hh)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i231 unwind label %.loopexit418 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i231: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i230
  %i.hn = load i64, ptr %i.ag, align 8, !alias.scope !243
  %i.ho = add i64 %i.hn, -4611686018427387899
  %i.hp = icmp ult i64 %i.ho, 5
  br i1 %i.hp, label %.invoke.i.i233, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i232

.invoke.i.i233:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i231, %bb.ay
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #31
          to label %.cont.i.i234 unwind label %.loopexit.split-lp419

.cont.i.i234:                                     ; preds = %.invoke.i.i233
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i232: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i231
  %i.hq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.164, i64 noundef 5)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %.loopexit418 ; 0 uses

.loopexit418:                                     ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i230, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i232
  %lpad.loopexit420 = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.loopexit.split-lp419:                            ; preds = %.invoke.i.i233
  %lpad.loopexit.split-lp421 = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.az:                                            ; preds = %.loopexit.split-lp419, %.loopexit418
  %lpad.phi422 = phi { ptr, i32 } [ %lpad.loopexit420, %.loopexit418 ], [ %lpad.loopexit.split-lp421, %.loopexit.split-lp419 ] ; 2 uses
  %i.hr = load ptr, ptr %11, align 8, !alias.scope !243 ; 2 uses
  %i.hs = icmp eq ptr %i.hr, %i.af
  br i1 %i.hs, label %.body235, label %.body235.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i232
  %i.ht = load ptr, ptr %11, align 8
  %i.hu = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %10, ptr noundef %i.ht, i32 noundef 18, i32 noundef 0)
          to label %bb.ba unwind label %bb.bt     ; 0 uses

bb.ba:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.hv = load ptr, ptr %11, align 8              ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.af
  br i1 %i.hw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237: ; preds = %bb.ba
  %i.hx = load i64, ptr %i.af, align 8
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hy) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ep, i64 56
  %i.ia = load <2 x i64>, ptr %i.hz, align 4
  store <2 x i64> %i.ia, ptr %12, align 16
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ep, i64 72
  %i.ic = load float, ptr %i.ib, align 4
  store float %i.ic, ptr %i.ah, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !246)
  %i.id = load ptr, ptr %9, align 8, !noalias !246
  %i.ie = load i64, ptr %i.x, align 8, !noalias !246 ; 3 uses
  store ptr %i.ai, ptr %13, align 8, !alias.scope !249
  store i64 0, ptr %i.aj, align 8, !alias.scope !249
  store i8 0, ptr %i.ai, align 8, !alias.scope !249
  %i.if = add i64 %i.ie, 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef %i.if)
          to label %bb.bb unwind label %.loopexit423

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239
  %i.ig = load i64, ptr %i.aj, align 8, !alias.scope !249
  %i.ih = sub i64 4611686018427387903, %i.ig
  %i.ii = icmp ult i64 %i.ih, %i.ie
  br i1 %i.ii, label %.invoke.i.i246, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i243: ; preds = %bb.bb
  %i.ij = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef %i.id, i64 noundef %i.ie)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i244 unwind label %.loopexit423 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i244: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i243
  %i.ik = load i64, ptr %i.aj, align 8, !alias.scope !249
  %i.il = and i64 %i.ik, -8
  %i.im = icmp eq i64 %i.il, 4611686018427387896
  br i1 %i.im, label %.invoke.i.i246, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i245

.invoke.i.i246:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i244, %bb.bb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #31
          to label %.cont.i.i247 unwind label %.loopexit.split-lp424

.cont.i.i247:                                     ; preds = %.invoke.i.i246
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i245: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i244
  %i.in = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.165, i64 noundef 8)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit250 unwind label %.loopexit423 ; 0 uses

.loopexit423:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i243, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i245
  %lpad.loopexit425 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.loopexit.split-lp424:                            ; preds = %.invoke.i.i246
  %lpad.loopexit.split-lp426 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.bc:                                            ; preds = %.loopexit.split-lp424, %.loopexit423
  %lpad.phi427 = phi { ptr, i32 } [ %lpad.loopexit425, %.loopexit423 ], [ %lpad.loopexit.split-lp426, %.loopexit.split-lp424 ] ; 2 uses
  %i.io = load ptr, ptr %13, align 8, !alias.scope !249 ; 2 uses
  %i.ip = icmp eq ptr %i.io, %i.ai
  br i1 %i.ip, label %.body248, label %.body248.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit250: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i245
  %i.iq = load ptr, ptr %13, align 8
  %i.ir = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %12, i32 noundef 20, ptr noundef %i.iq, i32 noundef 18, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyEPK13aiUVTransformjPKcjj.exit unwind label %bb.bu ; 0 uses

_ZN10aiMaterial11AddPropertyEPK13aiUVTransformjPKcjj.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit250
  %i.is = load ptr, ptr %13, align 8              ; 2 uses
  %i.it = icmp eq ptr %i.is, %i.ai
  br i1 %i.it, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252: ; preds = %_ZN10aiMaterial11AddPropertyEPK13aiUVTransformjPKcjj.exit
  %i.iu = load i64, ptr %i.ai, align 8
  %i.iv = add i64 %i.iu, 1
  call void @_ZdlPvm(ptr noundef %i.is, i64 noundef %i.iv) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254: ; preds = %_ZN10aiMaterial11AddPropertyEPK13aiUVTransformjPKcjj.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  store i32 0, ptr %i.g, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ep, i64 208
  %i.ix = load ptr, ptr %i.iw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  store ptr %i.ak, ptr %15, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ak, ptr noundef nonnull align 1 dereferenceable(5) @.str.64, i64 5, i1 false)
  store i64 5, ptr %i.al, align 8
  store i8 0, ptr %i.ax, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %i.iy = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.ix, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %.noexc259 unwind label %bb.bv ; 2 uses

.noexc259:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254
  %i.iz = icmp eq ptr %i.iy, null
  br i1 %i.iz, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.noexc259
  store ptr %i.am, ptr %14, align 8, !alias.scope !252
  store i64 0, ptr %i.an, align 8, !alias.scope !252
  store i8 0, ptr %i.am, align 8, !alias.scope !252
  br label %_ZN6Assimp3FBX11PropertyGetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKNS0_13PropertyTableERKS7_Rbb.exit

bb.be:                                            ; preds = %.noexc259
  %i.ja = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %i.iy, ptr nonnull @_ZTIN6Assimp3FBX8PropertyE, ptr nonnull @_ZTIN6Assimp3FBX13TypedPropertyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 0) #27, !noalias !252 ; 3 uses
  %i.jb = icmp eq ptr %i.ja, null
  br i1 %i.jb, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store ptr %i.am, ptr %14, align 8, !alias.scope !252
  store i64 0, ptr %i.an, align 8, !alias.scope !252
  store i8 0, ptr %i.am, align 8, !alias.scope !252
  br label %_ZN6Assimp3FBX11PropertyGetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKNS0_13PropertyTableERKS7_Rbb.exit

bb.bg:                                            ; preds = %bb.be
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  store ptr %i.am, ptr %14, align 8, !alias.scope !252
  %i.jd = load ptr, ptr %i.jc, align 8            ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %i.jf = load i64, ptr %i.je, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27, !noalias !252
  store i64 %i.jf, ptr %i.e, align 8, !noalias !252
  %i.jg = icmp ugt i64 %i.jf, 15
  br i1 %i.jg, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.bg
  %i.jh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc260 unwind label %bb.bv ; 2 uses

.noexc260:                                        ; preds = %.noexc.i.i
  store ptr %i.jh, ptr %14, align 8, !alias.scope !252
  %i.ji = load i64, ptr %i.e, align 8, !noalias !252
  store i64 %i.ji, ptr %i.am, align 8, !alias.scope !252
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc260, %bb.bg
  %i.jj = phi ptr [ %i.jh, %.noexc260 ], [ %i.am, %bb.bg ] ; 2 uses
  switch i64 %i.jf, label %bb.bi [
    i64 1, label %bb.bh
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.bh:                                            ; preds = %._crit_edge.i.i.i
  %i.jk = load i8, ptr %i.jd, align 1
  store i8 %i.jk, ptr %i.jj, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.bi:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jj, ptr align 1 %i.jd, i64 %i.jf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.bi, %bb.bh, %._crit_edge.i.i.i
  %i.jl = load i64, ptr %i.e, align 8, !noalias !252 ; 2 uses
  store i64 %i.jl, ptr %i.an, align 8, !alias.scope !252
  %i.jm = load ptr, ptr %14, align 8, !alias.scope !252
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.jl
  store i8 0, ptr %i.jn, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27, !noalias !252
  br label %_ZN6Assimp3FBX11PropertyGetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKNS0_13PropertyTableERKS7_Rbb.exit

_ZN6Assimp3FBX11PropertyGetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKNS0_13PropertyTableERKS7_Rbb.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.bf, %bb.bd
  %.0 = phi i1 [ false, %bb.bd ], [ false, %bb.bf ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ]
  %i.jo = load ptr, ptr %15, align 8              ; 2 uses
  %i.jp = icmp eq ptr %i.jo, %i.ak
  br i1 %i.jp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261: ; preds = %_ZN6Assimp3FBX11PropertyGetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKNS0_13PropertyTableERKS7_Rbb.exit
  %i.jq = load i64, ptr %i.ak, align 8
  %i.jr = add i64 %i.jq, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.jr) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263: ; preds = %_ZN6Assimp3FBX11PropertyGetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKNS0_13PropertyTableERKS7_Rbb.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br i1 %.0, label %bb.bj, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread394

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263
  %i.js = load i64, ptr %i.an, align 8
  switch i64 %i.js, label %.thread [
    i64 7, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 0, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread394
  ]

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.bj
  %i.jt = load ptr, ptr %14, align 8              ; 2 uses
  %i.ju = load i32, ptr %i.jt, align 1
  %i.jv = xor i32 %i.ju, 1634100580
  %i.jw = getelementptr i8, ptr %i.jt, i64 3
  %i.jx = load i32, ptr %i.jw, align 1
  %i.jy = xor i32 %i.jx, 1953264993
  %i.jz = or i32 %i.jv, %i.jy
  %i.ka = icmp ne i32 %i.jz, 0
  %i.kb = zext i1 %i.ka to i32
  %.not410 = icmp eq i32 %i.kb, 0
  br i1 %.not410, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread394, label %.thread

.thread:                                          ; preds = %bb.bj, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.kc = load ptr, ptr %i.ao, align 8            ; 4 uses
  %i.kd = load ptr, ptr %i.ap, align 8            ; 3 uses
  %i.ke = ptrtoint ptr %i.kd to i64               ; 2 uses
  %i.kf = ptrtoint ptr %i.kc to i64               ; 2 uses
  %i.kg = sub i64 %i.ke, %i.kf                    ; 3 uses
  %i.kh = ashr i64 %i.kg, 5                       ; 2 uses
  %i.ki = icmp sgt i64 %i.kh, 0
  br i1 %i.ki, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i264

end_hunk_2
begin_hunk_3_@_ZN6Assimp3FBX12FBXConverter20SetTexturePropertiesEP10aiMaterialRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_14LayeredTextureESt4hashISA_ESt8equal_toISA_ESaISt4pairIKSA_SD_EEEPKNS0_12MeshGeometryE:._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180
  %.pn84.pn = phi { ptr, i32 } [ %.pn84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219 ], [ %.pn82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216 ], [ %i.fu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213 ], [ %.pn78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210 ], [ %i.fj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207 ], [ %i.fe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204 ], [ %.pn72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201 ], [ %i.et, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198 ], [ %.pn68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195 ], [ %i.ei, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ], [ %i.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189 ], [ %i.dy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186 ], [ %i.dt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183 ], [ %i.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180 ]
  resume { ptr, i32 } %.pn84.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN6Assimp3FBX12FBXConverter12ConvertVideoERKNS0_5VideoE(ptr noundef nonnull align 8 captures(none) dereferenceable(529) %0, ptr noundef nonnull align 8 dereferenceable(184) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(1064) ptr @_Znwm(i64 noundef 1064) #30 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1060) %i.b, i8 0, i64 17, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1036) %i.c, i8 0, i64 1036, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %.not.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.f, align 8
  %i.i = load ptr, ptr %i.e, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.j, ptr %i.e, align 8
  br label %_ZNSt6vectorIP9aiTextureSaIS1_EE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.l = ptrtoint ptr %i.f to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 6 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.d, label %_ZNKSt6vectorIP9aiTextureSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.224) #31
  unreachable

_ZNKSt6vectorIP9aiTextureSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #30 ; 4 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %i.n ; 2 uses
  store ptr %i.b, ptr %i.w, align 8
  %i.x = icmp sgt i64 %i.n, 0
  br i1 %i.x, label %bb.e, label %_ZNSt6vectorIP9aiTextureSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIP9aiTextureSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr align 8 %i.k, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIP9aiTextureSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP9aiTextureSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIP9aiTextureSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.not.i17.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP9aiTextureSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIP9aiTextureSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.n) #29
  br label %_ZNSt6vectorIP9aiTextureSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP9aiTextureSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIP9aiTextureSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.v, ptr %i.d, align 8
  store ptr %i.y, ptr %i.e, align 8
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.z, ptr %i.g, align 8
  br label %_ZNSt6vectorIP9aiTextureSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP9aiTextureSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.b, %_ZNSt6vectorIP9aiTextureSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = trunc i64 %i.ab to i32
  store i32 %i.ac, ptr %i.b, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 0, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8
  store ptr null, ptr %i.ae, align 8
  store ptr %i.af, ptr %i.c, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = icmp eq i64 %i.ah, 0
  %spec.select.v = select i1 %i.ai, i64 120, i64 88
  %spec.select = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZN6Assimp12BaseImporter12GetExtensionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %spec.select)
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.al = icmp eq i64 %i.ak, 4
  br i1 %i.al, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNSt6vectorIP9aiTextureSaIS1_EE9push_backERKS1_.exit
  %i.am = load ptr, ptr %2, align 8
  %i.an = load i32, ptr %i.am, align 1
  %i.ao = icmp ne i32 %i.an, 1734701162
  %i.ap = zext i1 %i.ao to i32
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ar = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 4, ptr noundef nonnull @.str.61, i64 noundef 3)
          to label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exitthread-pre-split_crit_edge unwind label %bb.g ; 0 uses

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exitthread-pre-split_crit_edge: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.pr.pre = load i64, ptr %i.aj, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.g:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exitthread-pre-split_crit_edge, %_ZNSt6vectorIP9aiTextureSaIS1_EE9push_backERKS1_.exit
  %i.at = phi i64 [ %i.ak, %_ZNSt6vectorIP9aiTextureSaIS1_EE9push_backERKS1_.exit ], [ %.pr.pre, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exitthread-pre-split_crit_edge ] ; 2 uses
  %i.au = icmp ult i64 %i.at, 4
  br i1 %i.au, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.thread

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aw = load ptr, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 1 %i.aw, i64 %i.at, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.ax = load ptr, ptr %spec.select, align 8     ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.ay, ptr %3, align 8
  %i.az = icmp eq ptr %i.ax, null
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.thread
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.203) #31
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.thread
  %i.ba = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ax) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.ba, ptr %i.a, align 8
  %i.bb = icmp ugt i64 %i.ba, 15
  br i1 %i.bb, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.j
  %i.bc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc11 unwind label %bb.o   ; 2 uses

.noexc11:                                         ; preds = %.noexc.i
  store ptr %i.bc, ptr %3, align 8
  %i.bd = load i64, ptr %i.a, align 8
  store i64 %i.bd, ptr %i.ay, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc11, %bb.j
  %i.be = phi ptr [ %i.bc, %.noexc11 ], [ %i.ay, %bb.j ] ; 2 uses
  switch i64 %i.ba, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %bb.m
  ]

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.bf = load i8, ptr %i.ax, align 1
  store i8 %i.bf, ptr %i.be, align 1
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr nonnull align 1 %i.ax, i64 %i.ba, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %._crit_edge.i.i
  %i.bg = load i64, ptr %i.a, align 8             ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.bg, ptr %i.bh, align 8
  %i.bi = load ptr, ptr %3, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bg
  store i8 0, ptr %i.bj, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.bk = load i64, ptr %i.bh, align 8            ; 5 uses
  %i.bl = icmp ugt i64 %i.bk, 1023
  %.pre = load ptr, ptr %3, align 8               ; 3 uses
  br i1 %i.bl, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bn = trunc nuw nsw i64 %i.bk to i32
  store i32 %i.bn, ptr %i.bm, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bo, ptr align 1 %.pre, i64 %i.bk, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bk
  store i8 0, ptr %i.bp, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.m, %bb.n
  %i.bq = icmp eq ptr %.pre, %i.ay
  br i1 %i.bq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.br = icmp ult i64 %i.bk, 16
  call void @llvm.assume(i1 %i.br)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bs = load i64, ptr %i.ay, align 8
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.bt) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.bu = load ptr, ptr %i.e, align 8
  %i.bv = load ptr, ptr %i.d, align 8
  %i.bw = load ptr, ptr %2, align 8               ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bz = load i64, ptr %i.bx, align 8
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  %i.cb = ptrtoint ptr %i.bu to i64
  %i.cc = ptrtoint ptr %i.bv to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = lshr exact i64 %i.cd, 3
  %i.cf = trunc i64 %i.ce to i32
  %i.cg = add i32 %i.cf, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret i32 %i.cg

bb.o:                                             ; preds = %.noexc.i, %bb.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ch, %bb.o ], [ %i.as, %bb.g ]
  %i.ci = load ptr, ptr %2, align 8               ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.p
  %i.cl = load i64, ptr %i.cj, align 8
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %.pn
}

declare void @_ZN6Assimp12BaseImporter12GetExtensionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX12FBXConverter14GetTexturePathEPKNS0_7TextureE(ptr dead_on_unwind noalias writable writeonly sret(%struct.aiString) align 4 captures(none) initializes((0, 1028)) %0, ptr noundef nonnull align 8 dereferenceable(529) %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %0, i8 0, i64 1028, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = icmp ugt i64 %i.b, 1023
  br i1 %i.c, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.e = trunc nuw nsw i64 %i.b to i32
  store i32 %i.e, ptr %0, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.f, ptr align 1 %i.g, i64 %i.b, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.b
  store i8 0, ptr %i.h, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.j = load ptr, ptr %i.i, align 8              ; 11 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.m = load i64, ptr %i.l, align 8
  %.not.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.not.i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 224
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.sroa.06.0.in.i.i = phi ptr [ %i.n, %bb.d ], [ %.sroa.06.0.i.i, %bb.f ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8 ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp eq ptr %i.j, %i.p
  br i1 %i.q, label %_ZNSt13unordered_mapIPKN6Assimp3FBX5VideoEjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEE4findERSA_.exit, label %bb.e, !llvm.loop !239

bb.g:                                             ; preds = %bb.c
  %i.r = ptrtoint ptr %i.j to i64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = urem i64 %i.r, %i.t                      ; 2 uses
  %i.v = load ptr, ptr %i.k, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.u
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.x, align 8              ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = icmp eq ptr %i.j, %i.aa
  br i1 %i.ab, label %_ZNSt13unordered_mapIPKN6Assimp3FBX5VideoEjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEE4findERSA_.exit, label %.lr.ph.i.i.i.i

bb.i:                                             ; preds = %bb.j
  %i.ac = icmp eq ptr %i.j, %i.af
  br i1 %i.ac, label %_ZNSt13unordered_mapIPKN6Assimp3FBX5VideoEjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEE4findERSA_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !13

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %bb.i
  %.020.i.i.i.i = phi ptr [ %i.ad, %bb.i ], [ %i.y, %bb.h ]
  %i.ad = load ptr, ptr %.020.i.i.i.i, align 8    ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = urem i64 %i.ag, %i.t
  %.not19.i.i.i.i = icmp eq i64 %i.ah, %i.u
  br i1 %.not19.i.i.i.i, label %bb.i, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !13

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.j
  br label %.loopexit, !llvm.loop !13

_ZNSt13unordered_mapIPKN6Assimp3FBX5VideoEjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEE4findERSA_.exit: ; preds = %bb.i, %bb.f, %bb.h
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.f ], [ %i.y, %bb.h ], [ %i.ad, %bb.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  %i.aj = load i32, ptr %i.ai, align 8
  br label %bb.o

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %bb.e, %..loopexit_crit_edge21.i.i.i.i, %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 168
  %i.al = load i64, ptr %i.ak, align 8
  %.not7 = icmp eq i64 %i.al, 0
  br i1 %.not7, label %.thread, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.am = tail call noundef i32 @_ZN6Assimp3FBX12FBXConverter12ConvertVideoERKNS0_5VideoE(ptr noundef nonnull align 8 dereferenceable(529) %1, ptr noundef nonnull align 8 dereferenceable(184) %i.j) ; 2 uses
  %i.an = ptrtoint ptr %i.j to i64                ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ap = load i64, ptr %i.ao, align 8            ; 2 uses
  %i.aq = urem i64 %i.an, %i.ap                   ; 3 uses
  %i.ar = load ptr, ptr %i.k, align 8
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.aq
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %.not.i.i.i.i8 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i8, label %.loopexit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = load ptr, ptr %i.at, align 8            ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = icmp eq ptr %i.j, %i.aw
  br i1 %i.ax, label %_ZNSt13unordered_mapIPKN6Assimp3FBX5VideoEjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEEixERSA_.exit, label %.lr.ph.i.i.i.i9

bb.m:                                             ; preds = %bb.n
  %i.ay = icmp eq ptr %i.j, %i.bb
  br i1 %i.ay, label %_ZNSt13unordered_mapIPKN6Assimp3FBX5VideoEjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEEixERSA_.exit, label %.lr.ph.i.i.i.i9, !llvm.loop !13

.lr.ph.i.i.i.i9:                                  ; preds = %bb.l, %bb.m
  %.020.i.i.i.i10 = phi ptr [ %i.az, %bb.m ], [ %i.au, %bb.l ]
  %i.az = load ptr, ptr %.020.i.i.i.i10, align 8  ; 4 uses
  %.not18.i.i.i.i11 = icmp eq ptr %i.az, null
  br i1 %.not18.i.i.i.i11, label %.loopexit.i.i, label %bb.n
end_hunk_3
begin_hunk_4_@_ZN6Assimp3FBX12FBXConverter21ConvertAnimationStackERKNS0_14AnimationStackE:bb.a
  %i.dl = load i64, ptr %i.ci, align 8
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.am

bb.x:                                             ; preds = %.noexc10.i.i
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.dt

bb.y:                                             ; preds = %.noexc10.i.i172, %bb.o
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.dt

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !298)
  %i.dp = load i64, ptr %i.bg, align 8, !noalias !298 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  store ptr %i.dq, ptr %9, align 8, !alias.scope !298
  %i.dr = load ptr, ptr %6, align 8, !noalias !298 ; 3 uses
  %spec.select.i.i.i184 = call noundef i64 @llvm.umin.i64(i64 %i.dp, i64 11) ; 5 uses
  switch i64 %spec.select.i.i.i184, label %bb.ab [
    i64 1, label %bb.aa
    i64 0, label %bb.ac
  ]

bb.aa:                                            ; preds = %bb.z
  %i.ds = load i8, ptr %i.dr, align 1
  store i8 %i.ds, ptr %i.dq, align 8
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dq, ptr align 1 %i.dr, i64 %spec.select.i.i.i184, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.dt = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %spec.select.i.i.i184, ptr %i.dt, align 8, !alias.scope !298
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 %spec.select.i.i.i184
  store i8 0, ptr %i.du, align 1
  %i.dv = icmp ugt i64 %i.dp, 10
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192.thread310

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192.thread310: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.am

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192: ; preds = %bb.ac
  %bcmp.i188 = call i32 @bcmp(ptr nonnull %i.dq, ptr nonnull @.str.171, i64 %spec.select.i.i.i184)
  %i.dw = icmp eq i32 %bcmp.i188, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br i1 %i.dw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i193, label %bb.am

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i193: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !301)
  %i.dx = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 9 uses
  store ptr %i.dx, ptr %10, align 8, !alias.scope !301
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dr, i64 11 ; 2 uses
  %i.dz = add i64 %i.dp, -11                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27, !noalias !301
  store i64 %i.dz, ptr %i.d, align 8, !noalias !301
  %i.ea = icmp ugt i64 %i.dz, 15
  br i1 %i.ea, label %.noexc10.i.i196, label %._crit_edge.i.i.i195

.noexc10.i.i196:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i193
  %i.eb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc198 unwind label %bb.al ; 2 uses

.noexc198:                                        ; preds = %.noexc10.i.i196
  store ptr %i.eb, ptr %10, align 8, !alias.scope !301
  %i.ec = load i64, ptr %i.d, align 8, !noalias !301
  store i64 %i.ec, ptr %i.dx, align 8, !alias.scope !301
  br label %._crit_edge.i.i.i195

._crit_edge.i.i.i195:                             ; preds = %.noexc198, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i193
  %i.ed = phi ptr [ %i.eb, %.noexc198 ], [ %i.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i193 ] ; 2 uses
  switch i64 %i.dz, label %bb.ae [
    i64 1, label %bb.ad
    i64 0, label %bb.af
  ]

bb.ad:                                            ; preds = %._crit_edge.i.i.i195
  %i.ee = load i8, ptr %i.dy, align 1
  store i8 %i.ee, ptr %i.ed, align 1
  br label %bb.af

bb.ae:                                            ; preds = %._crit_edge.i.i.i195
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ed, ptr nonnull align 1 %i.dy, i64 %i.dz, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %._crit_edge.i.i.i195
  %i.ef = load i64, ptr %i.d, align 8, !noalias !301 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 6 uses
  store i64 %i.ef, ptr %i.eg, align 8, !alias.scope !301
  %i.eh = load ptr, ptr %10, align 8, !alias.scope !301
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ef
  store i8 0, ptr %i.ei, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27, !noalias !301
  %i.ej = load ptr, ptr %6, align 8               ; 6 uses
  %i.ek = icmp eq ptr %i.ej, %i.aw
  %i.el = load ptr, ptr %10, align 8              ; 5 uses
  %i.em = icmp eq ptr %i.el, %i.dx                ; 2 uses
  br i1 %i.ek, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i205, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i200

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i205: ; preds = %bb.af
  br i1 %i.em, label %bb.ag, label %.thread.i206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i200: ; preds = %bb.af
  br i1 %i.em, label %bb.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i201

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i200, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i205
  %i.en = load i64, ptr %i.eg, align 8            ; 3 uses
  %i.eo = icmp ult i64 %i.en, 16
  call void @llvm.assume(i1 %i.eo)
  switch i64 %i.en, label %bb.ai [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i203
    i64 1, label %bb.ah
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.ep = load i8, ptr %i.el, align 1
  store i8 %i.ep, ptr %i.ej, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i203

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ej, ptr align 1 %i.el, i64 %i.en, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i203

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i203: ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.eq = load i64, ptr %i.eg, align 8            ; 2 uses
  store i64 %i.eq, ptr %i.bg, align 8
  %i.er = load ptr, ptr %6, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.eq
  store i8 0, ptr %i.es, align 1
  %.pre.i204 = load ptr, ptr %10, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit207

.thread.i206:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i205
  store ptr %i.el, ptr %6, align 8
  %i.et = load <2 x i64>, ptr %i.eg, align 8
  store <2 x i64> %i.et, ptr %i.bg, align 8
  br label %bb.ak

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i201: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i200
  %i.eu = load i64, ptr %i.aw, align 8
  store ptr %i.el, ptr %6, align 8
  %i.ev = load <2 x i64>, ptr %i.eg, align 8
  store <2 x i64> %i.ev, ptr %i.bg, align 8
  %.not.i202 = icmp eq ptr %i.ej, null
  br i1 %.not.i202, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i201
  store ptr %i.ej, ptr %10, align 8
  store i64 %i.eu, ptr %i.dx, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit207

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i201, %.thread.i206
  store ptr %i.dx, ptr %10, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit207

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit207: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i203, %bb.aj, %bb.ak
  %i.ew = phi ptr [ %.pre.i204, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i203 ], [ %i.ej, %bb.aj ], [ %i.dx, %bb.ak ]
  store i64 0, ptr %i.eg, align 8
  store i8 0, ptr %i.ew, align 1
  %i.ex = load ptr, ptr %10, align 8              ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.dx
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit207
  %i.ez = load i64, ptr %i.dx, align 8
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fa) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit207, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.am

bb.al:                                            ; preds = %.noexc10.i.i196
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.dt

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192.thread310, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179
  %i.fc = load i64, ptr %i.bg, align 8            ; 4 uses
  %i.fd = icmp ugt i64 %i.fc, 1023
  br i1 %i.fd, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fe = trunc nuw nsw i64 %i.fc to i32
  store i32 %i.fe, ptr %i.p, align 4
  %i.ff = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %i.fg = load ptr, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ff, ptr align 1 %i.fg, i64 %i.fc, i1 false)
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fc
  store i8 0, ptr %i.fh, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  %i.fi = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 10 uses
  store i32 0, ptr %i.fi, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr null, ptr %i.fj, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  store ptr %i.fi, ptr %i.fk, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %i.fi, ptr %i.fl, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 3 uses
  store i64 0, ptr %i.fm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.fn = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 8 uses
  store i32 0, ptr %i.fn, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store ptr null, ptr %i.fo, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %i.fn, ptr %i.fp, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %i.fn, ptr %i.fq, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 3 uses
  store i64 0, ptr %i.fr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.h, ptr noundef nonnull align 16 dereferenceable(32) @__const._ZN6Assimp3FBX12FBXConverter21ConvertAnimationStackERKNS0_14AnimationStackE.prop_whitelist, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.fs = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 5 uses
  store i32 0, ptr %i.fs, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store ptr null, ptr %i.ft, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  store ptr %i.fs, ptr %i.fu, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr %i.fs, ptr %i.fv, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 3 uses
  store i64 0, ptr %i.fw, align 8
  %i.fx = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.fy = load ptr, ptr %i.m, align 8             ; 2 uses
  %.not318339 = icmp eq ptr %i.fx, %i.fy
  br i1 %.not318339, label %._crit_edge342, label %.lr.ph341

.lr.ph341:                                        ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.fz = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ga = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.gc = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 12 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gf = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  br label %bb.ao

._crit_edge342:                                   ; preds = %_ZNSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EED2Ev.exit, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #27
  store double 1.000000e+10, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  store double -1.000000e+10, ptr %i.j, align 8
  %i.gg = invoke noundef i64 @_ZNK6Assimp3FBX14AnimationStack10LocalStartEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.cb unwind label %bb.cd     ; 3 uses

bb.ao:                                            ; preds = %.lr.ph341, %_ZNSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EED2Ev.exit
  %.sroa.0292.0340 = phi ptr [ %i.fx, %.lr.ph341 ], [ %i.gp, %_ZNSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EED2Ev.exit ] ; 2 uses
  %i.gh = load ptr, ptr %.sroa.0292.0340, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  invoke void @_ZNK6Assimp3FBX14AnimationLayer5NodesEPKPKcm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.518") align 8 %14, ptr noundef nonnull align 8 dereferenceable(80) %i.gh, ptr noundef nonnull %i.h, i64 noundef 4)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.gi = load ptr, ptr %14, align 8              ; 3 uses
  %i.gj = load ptr, ptr %i.fz, align 8            ; 2 uses
  %.not322337 = icmp eq ptr %i.gi, %i.gj
  br i1 %.not322337, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.thread313
  %.pre421 = load ptr, ptr %14, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.ap
  %i.gk = phi ptr [ %.pre421, %._crit_edge.loopexit ], [ %i.gi, %bb.ap ] ; 3 uses
  %.not.i.i.i214 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i.i214, label %_ZNSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge
  %i.gl = load ptr, ptr %i.gf, align 8
  %i.gm = ptrtoint ptr %i.gl to i64
  %i.gn = ptrtoint ptr %i.gk to i64
  %i.go = sub i64 %i.gm, %i.gn
  call void @_ZdlPvm(ptr noundef nonnull %i.gk, i64 noundef %i.go) #29
  br label %_ZNSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EED2Ev.exit: ; preds = %._crit_edge, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.0292.0340, i64 8 ; 2 uses
  %.not318 = icmp eq ptr %i.gp, %i.fy
  br i1 %.not318, label %._crit_edge342, label %bb.ao

bb.ar:                                            ; preds = %bb.ao
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

.lr.ph:                                           ; preds = %bb.ap, %.thread313
  %.sroa.0288.0338 = phi ptr [ %i.ma, %.thread313 ], [ %i.gi, %bb.ap ] ; 2 uses
  %i.gr = load ptr, ptr %.sroa.0288.0338, align 8 ; 7 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 56
  %i.gt = load ptr, ptr %i.gs, align 8            ; 3 uses
  %i.gu = icmp eq ptr %i.gt, null
  br i1 %i.gu, label %.thread313, label %bb.as

bb.as:                                            ; preds = %.lr.ph
  %i.gv = call ptr @__dynamic_cast(ptr nonnull %i.gt, ptr nonnull @_ZTIN6Assimp3FBX6ObjectE, ptr nonnull @_ZTIN6Assimp3FBX5ModelE, i64 0) #27 ; 3 uses
  %.not159 = icmp eq ptr %i.gv, null
  br i1 %.not159, label %bb.bx, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !304)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27, !noalias !304
  call void @llvm.experimental.noalias.scope.decl(metadata !307)
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 24
  %i.gy = load i64, ptr %i.gx, align 8, !noalias !310 ; 8 uses
  store ptr %i.ga, ptr %5, align 8, !alias.scope !307, !noalias !304
  %i.gz = load ptr, ptr %i.gw, align 8, !noalias !310 ; 5 uses
  %spec.select.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.gy, i64 7) ; 5 uses
  switch i64 %spec.select.i.i.i.i, label %bb.av [
    i64 1, label %bb.au
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i
  ]

bb.au:                                            ; preds = %bb.at
  %i.ha = load i8, ptr %i.gz, align 1, !noalias !304
  store i8 %i.ha, ptr %i.ga, align 8, !noalias !304
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i

bb.av:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ga, ptr align 1 %i.gz, i64 %spec.select.i.i.i.i, i1 false), !noalias !304
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i: ; preds = %bb.av, %bb.au, %bb.at
  store i64 %spec.select.i.i.i.i, ptr %i.gb, align 8, !alias.scope !307, !noalias !304
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %spec.select.i.i.i.i
  store i8 0, ptr %i.hb, align 1, !noalias !304
  %i.hc = icmp ugt i64 %i.gy, 6
  br i1 %i.hc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %.thread.i215

.thread.i215:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27, !noalias !304
  store ptr %i.gc, ptr %15, align 8, !alias.scope !304
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27, !noalias !304
  store i64 %i.gy, ptr %i.b, align 8, !noalias !304
  br label %._crit_edge.i.i.i216

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.ga, ptr nonnull @.str.167, i64 %spec.select.i.i.i.i), !noalias !304
  %i.hd = icmp eq i32 %bcmp.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27, !noalias !304
  br i1 %i.hd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i, label %bb.ay

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !311)
  store ptr %i.gc, ptr %15, align 8, !alias.scope !314
  %i.he = getelementptr inbounds nuw i8, ptr %i.gz, i64 7 ; 2 uses
  %i.hf = add i64 %i.gy, -7                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27, !noalias !314
  store i64 %i.hf, ptr %i.c, align 8, !noalias !314
  %i.hg = icmp ugt i64 %i.hf, 15
  br i1 %i.hg, label %.noexc10.i.i.i, label %._crit_edge.i.i.i.i

.noexc10.i.i.i:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i
  %i.hh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc217 unwind label %bb.bv ; 2 uses

.noexc217:                                        ; preds = %.noexc10.i.i.i
  store ptr %i.hh, ptr %15, align 8, !alias.scope !314
  %i.hi = load i64, ptr %i.c, align 8, !noalias !314
  store i64 %i.hi, ptr %i.gc, align 8, !alias.scope !314
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc217, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i
  %i.hj = phi ptr [ %i.hh, %.noexc217 ], [ %i.gc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i ] ; 2 uses
  switch i64 %i.hf, label %bb.ax [
    i64 1, label %bb.aw
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit6.i
  ]

bb.aw:                                            ; preds = %._crit_edge.i.i.i.i
  %i.hk = load i8, ptr %i.he, align 1
  store i8 %i.hk, ptr %i.hj, align 1
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit6.i

bb.ax:                                            ; preds = %._crit_edge.i.i.i.i
end_hunk_4
begin_hunk_5_@_ZN6Assimp3FBX12FBXConverter24IsRedundantAnimationDataERKNS0_5ModelENS1_18TransformationCompERKSt6vectorIPKNS0_18AnimationCurveNodeESaIS9_EE:bb.a
  %.not.i.i.i108 = icmp eq ptr %.1.i.i.i107, null
  br i1 %.not.i.i.i108, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX14AnimationCurveEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISD_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i109, label %.lr.ph.i.i.i96, !llvm.loop !360

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX14AnimationCurveEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISD_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i109: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i102
  %i.bl = icmp eq ptr %.19.i.i.i104, %i.o
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.thread, label %bb.d

bb.d:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX14AnimationCurveEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISD_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i109
  %i.bm = getelementptr inbounds nuw i8, ptr %.19.i.i.i104, i64 40
  %i.bn = load i64, ptr %i.bm, align 8            ; 3 uses
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i117, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i111

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i111: ; preds = %bb.d
  %.sroa.speculated.i.i.i.i.i110 = call i64 @llvm.umin.i64(i64 %i.bn, i64 3)
  %i.bp = getelementptr inbounds nuw i8, ptr %.19.i.i.i104, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = call i32 @memcmp(ptr noundef nonnull %i.ba, ptr noundef %i.bq, i64 noundef %.sroa.speculated.i.i.i.i.i110) #27 ; 2 uses
  %.not.i.i.i.i.i112 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i.i.i.i112, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i117, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i117: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i111, %bb.d
  %i.bs = sub i64 3, %i.bn
  %spec.select7.i.i.i.i.i.i118 = call i64 @llvm.smax.i64(i64 %i.bs, i64 -2147483648)
  %.08.i.i.i.i.i.i119 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i118, i64 2147483647)
  %.0.i6.i.i.i.i.i120 = trunc nsw i64 %.08.i.i.i.i.i.i119 to i32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX14AnimationCurveEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISD_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %.critedge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i111, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i117
  %.0.i.i.i.i.i114 = phi i32 [ %i.br, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i111 ], [ %.0.i6.i.i.i.i.i120, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i117 ]
  %i.bt = icmp slt i32 %.0.i.i.i.i.i114, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.bu = icmp eq ptr %.sroa.0.0.i.i, %i.o
  %i.bv = icmp eq ptr %.sroa.0.0.i.i78, %i.o
  %or.cond = select i1 %i.bu, i1 true, i1 %i.bv
  %or.cond162 = select i1 %or.cond, i1 true, i1 %i.bt
  br i1 %or.cond162, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 64
  %i.bx = load ptr, ptr %i.bw, align 8            ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 80
  %i.bz = getelementptr inbounds nuw i8, ptr %.19.i.i.i104, i64 64
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 80
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 88
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %.not = icmp eq i64 %i.ch, 4
  br i1 %.not, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i78, i64 64
  %i.cj = load ptr, ptr %i.ci, align 8            ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 80
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 88
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = load ptr, ptr %i.ck, align 8            ; 2 uses
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %.not46 = icmp eq i64 %i.cq, 4
  br i1 %.not46, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ca, i64 88
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = load ptr, ptr %i.cb, align 8            ; 2 uses
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %.not47 = icmp eq i64 %i.cw, 4
  br i1 %.not47, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.cx = load float, ptr %i.ce, align 4
  %i.cy = load float, ptr %i.cn, align 4
  %i.cz = load float, ptr %i.ct, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.db = load ptr, ptr %i.da, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.dc = call noundef ptr @_ZN6Assimp3FBX12FBXConverter30NameTransformationCompPropertyENS1_18TransformationCompE(ptr nonnull align 8 poison, i32 noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.dc, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.dd = icmp eq i32 %2, 12                      ; 2 uses
  %.sroa.5.0.i = select i1 %i.dd, float 1.000000e+00, float 0.000000e+00
  %.sroa.0.0.i = select i1 %i.dd, <2 x float> splat (float 1.000000e+00), <2 x float> zeroinitializer
  store <2 x float> %.sroa.0.0.i, ptr %9, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store float %.sroa.5.0.i, ptr %.sroa.28.0..sroa_idx, align 8
  %i.de = invoke { <2 x float>, float } @_ZN6Assimp3FBX11PropertyGetI10aiVector3tIfEEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_(ptr noundef nonnull align 8 dereferenceable(136) %i.db, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 4 dereferenceable(12) %9)
          to label %bb.i unwind label %bb.j       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %.fca.0.extract1 = extractvalue { <2 x float>, float } %i.de, 0 ; 2 uses
  %.fca.1.extract2 = extractvalue { <2 x float>, float } %i.de, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.df = load ptr, ptr %7, align 8               ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %bb.i
  %i.di = load i64, ptr %i.dg, align 8
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %.sroa.0146.0.vec.extract = extractelement <2 x float> %.fca.0.extract1, i64 0
  %i.dk = fsub float %i.cx, %.sroa.0146.0.vec.extract ; 2 uses
  %.sroa.0146.4.vec.extract = extractelement <2 x float> %.fca.0.extract1, i64 1
  %i.dl = fsub float %i.cy, %.sroa.0146.4.vec.extract ; 2 uses
  %i.dm = fsub float %i.cz, %.fca.1.extract2      ; 2 uses
  %i.dn = fmul float %i.dl, %i.dl
  %i.do = call float @llvm.fmuladd.f32(float %i.dk, float %i.dk, float %i.dn)
  %i.dp = call noundef float @llvm.fmuladd.f32(float %i.dm, float %i.dm, float %i.do)
  %i.dq = fcmp olt float %i.dp, f0x34000000
  br label %.critedge

bb.j:                                             ; preds = %bb.h
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.ds = load ptr, ptr %7, align 8               ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143: ; preds = %bb.j
  %i.dv = load i64, ptr %i.dt, align 8
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dw) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  resume { ptr, i32 } %i.dr

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.thread, %bb.e, %bb.f, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128 ], [ false, %bb.e ], [ %i.dq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140 ], [ false, %bb.g ], [ false, %bb.f ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.thread ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN6Assimp3FBX12FBXConverter22GenerateSimpleNodeAnimERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_5ModelEPSt23_Rb_tree_const_iteratorISt4pairIS8_St6vectorIPKNS0_18AnimationCurveNodeESaISI_EEEESM_llRdSO_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(529) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef readonly captures(none) %3, ptr readnone captures(address) %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %7, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %8) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %class.aiMatrix4x4t, align 4        ; 11 uses
  %10 = alloca %class.aiMatrix4x4t, align 4       ; 11 uses
  %11 = alloca %class.aiMatrix4x4t, align 4       ; 11 uses
  %12 = alloca %"class.std::unique_ptr.574", align 8 ; 6 uses
  %13 = alloca [17 x %"class.std::vector.582"], align 16 ; 123 uses
  %14 = alloca %"class.std::vector.562", align 8  ; 20 uses
  %15 = alloca %"class.std::vector.582", align 16 ; 10 uses
  %16 = alloca %"class.std::vector.582", align 16 ; 10 uses
  %17 = alloca %class.aiVector3t, align 8         ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.sroa.0606 = alloca { float, float }, align 8  ; 6 uses
  %.sroa.6607 = alloca float, align 4             ; 5 uses
  %19 = alloca %class.aiVector3t, align 8         ; 7 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.sroa.0603 = alloca { float, float }, align 8  ; 6 uses
  %.sroa.6604 = alloca float, align 4             ; 5 uses
  %21 = alloca %class.aiVector3t, align 8         ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.sroa.0 = alloca { float, float }, align 8     ; 6 uses
  %.sroa.6 = alloca float, align 4                ; 5 uses
  %23 = alloca %class.aiVector3t, align 8         ; 6 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %25 = alloca %class.aiVector3t, align 8         ; 6 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %27 = alloca %class.aiMatrix4x4t, align 4       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.a = tail call noalias noundef nonnull dereferenceable(1080) ptr @_Znwm(i64 noundef 1080) #30 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1048
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1056
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1064
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1080) %i.a, i8 0, i64 1044, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store ptr %i.a, ptr %12, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 4 uses
  %i.g = icmp ugt i64 %i.f, 1023
  br i1 %i.g, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = trunc nuw nsw i64 %i.f to i32
  store i32 %i.h, ptr %i.a, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.j = load ptr, ptr %1, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.i, ptr align 1 %i.j, i64 %i.f, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  store i8 0, ptr %i.k, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.m = load ptr, ptr %i.l, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(408) %13, i8 0, i64 408, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 6 uses
  br label %bb.d

bb.c:                                             ; preds = %_ZNSt6vectorIlSaIlEE5eraseEN9__gnu_cxx17__normal_iteratorIPKlS1_EES6_.exit
  %i.s = invoke noundef i32 @_ZNK6Assimp3FBX5Model13RotationOrderEv(ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %._crit_edge.i.i222 unwind label %bb.aq ; 2 uses

bb.d:                                             ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNSt6vectorIlSaIlEE5eraseEN9__gnu_cxx17__normal_iteratorIPKlS1_EES6_.exit
  %.0164415 = phi i64 [ 0, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.dl, %_ZNSt6vectorIlSaIlEE5eraseEN9__gnu_cxx17__normal_iteratorIPKlS1_EES6_.exit ] ; 7 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.0164415
  %i.u = load ptr, ptr %i.t, align 8              ; 3 uses
  %i.v = icmp eq ptr %i.u, %4
  br i1 %i.v, label %_ZNSt6vectorIlSaIlEE5eraseEN9__gnu_cxx17__normal_iteratorIPKlS1_EES6_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = and i64 %.0164415, 30
  %or.cond = icmp eq i64 %i.w, 6
  br i1 %or.cond, label %bb.f, label %switch.early.test

switch.early.test:                                ; preds = %bb.e
  switch i64 %.0164415, label %bb.m [
    i64 15, label %bb.f
    i64 8, label %bb.f
  ]

bb.f:                                             ; preds = %switch.early.test, %switch.early.test, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  invoke void @_ZN6Assimp3FBX12FBXConverter23GetRotationKeyframeListERKSt6vectorIPKNS0_18AnimationCurveNodeESaIS5_EEll(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.582") align 8 %15, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 noundef %5, i64 noundef %6)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %13, i64 %.0164415 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = load <2 x ptr>, ptr %15, align 16
  store <2 x ptr> %i.ae, ptr %i.y, align 8
  %i.af = load ptr, ptr %i.q, align 16
  store ptr %i.af, ptr %i.ac, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES3_IS4_IfSaIfEEEjEEEEvT_SD_(ptr noundef %i.z, ptr noundef %i.ab)
          to label %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i.i.i unwind label %bb.i

_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i.i.i: ; preds = %bb.g
  %.not.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EEaSEOSA_.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i.i.i
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = ptrtoint ptr %i.z to i64
  %i.ai = sub i64 %i.ag, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ai) #29
  br label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EEaSEOSA_.exit

bb.i:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #32
  unreachable

_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EEaSEOSA_.exit: ; preds = %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i.i.i, %bb.h
  %i.al = load ptr, ptr %15, align 16
  %i.am = load ptr, ptr %i.p, align 8
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES3_IS4_IfSaIfEEEjEEEEvT_SD_(ptr noundef %i.al, ptr noundef %i.am)
          to label %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i unwind label %bb.k

_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i: ; preds = %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EEaSEOSA_.exit
  %i.an = load ptr, ptr %15, align 16             ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i
  %i.ao = load ptr, ptr %i.q, align 16
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #29
  br label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit

bb.k:                                             ; preds = %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EEaSEOSA_.exit
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #32
  unreachable

_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %bb.t

bb.l:                                             ; preds = %bb.f
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %bb.cy

bb.m:                                             ; preds = %switch.early.test
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  invoke void @_ZN6Assimp3FBX12FBXConverter15GetKeyframeListERKSt6vectorIPKNS0_18AnimationCurveNodeESaIS5_EEll(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.582") align 8 %16, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 noundef %5, i64 noundef %6)
          to label %bb.n unwind label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %13, i64 %.0164415 ; 4 uses
  %i.ax = load ptr, ptr %i.aw, align 8            ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = load <2 x ptr>, ptr %16, align 16
  store <2 x ptr> %i.bc, ptr %i.aw, align 8
  %i.bd = load ptr, ptr %i.o, align 16
  store ptr %i.bd, ptr %i.ba, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES3_IS4_IfSaIfEEEjEEEEvT_SD_(ptr noundef %i.ax, ptr noundef %i.az)
          to label %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i.i.i210 unwind label %bb.p

_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i.i.i210: ; preds = %bb.n
  %.not.i.i.i.i.i211 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.i211, label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EEaSEOSA_.exit212, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i.i.i210
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = ptrtoint ptr %i.ax to i64
  %i.bg = sub i64 %i.be, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bg) #29
  br label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EEaSEOSA_.exit212

bb.p:                                             ; preds = %bb.n
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #32
  unreachable

_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EEaSEOSA_.exit212: ; preds = %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i.i.i210, %bb.o
  %i.bj = load ptr, ptr %16, align 16
  %i.bk = load ptr, ptr %i.n, align 8
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES3_IS4_IfSaIfEEEjEEEEvT_SD_(ptr noundef %i.bj, ptr noundef %i.bk)
          to label %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i213 unwind label %bb.r

_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i213: ; preds = %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EEaSEOSA_.exit212
  %i.bl = load ptr, ptr %16, align 16             ; 3 uses
  %.not.i.i.i214 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i214, label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit215, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i213
  %i.bm = load ptr, ptr %i.o, align 16
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %i.bl to i64
  %i.bp = sub i64 %i.bn, %i.bo
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bp) #29
  br label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit215

bb.r:                                             ; preds = %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EEaSEOSA_.exit212
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #32
  unreachable

_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit215: ; preds = %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i213, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %bb.t

bb.s:                                             ; preds = %bb.m
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %bb.cy

bb.t:                                             ; preds = %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit215, %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %13, i64 %.0164415 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %.not405413 = icmp eq ptr %i.bu, %i.bw
  br i1 %.not405413, label %._crit_edge, label %.lr.ph
end_hunk_5
begin_hunk_6_@_ZN6Assimp3FBX12FBXConverter22GenerateSimpleNodeAnimERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_5ModelEPSt23_Rb_tree_const_iteratorISt4pairIS8_St6vectorIPKNS0_18AnimationCurveNodeESaISI_EEEESM_llRdSO_:bb.a
  %i.asn = ptrtoint ptr %i.asj to i64
  %i.aso = sub i64 %i.asm, %i.asn
  call void @_ZdlPvm(ptr noundef nonnull %i.asj, i64 noundef %i.aso) #29
  br label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit365.10

_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit365.10: ; preds = %bb.ed, %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i363.10
  %i.asp = getelementptr inbounds nuw i8, ptr %13, i64 120 ; 2 uses
  %i.asq = load ptr, ptr %i.asp, align 8
  %i.asr = getelementptr inbounds nuw i8, ptr %13, i64 128
  %i.ass = load ptr, ptr %i.asr, align 16
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES3_IS4_IfSaIfEEEjEEEEvT_SD_(ptr noundef %i.asq, ptr noundef %i.ass)
          to label %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i363.11 unwind label %bb.dt

_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i363.11: ; preds = %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit365.10
  %i.ast = load ptr, ptr %i.asp, align 8          ; 3 uses
  %.not.i.i.i364.11 = icmp eq ptr %i.ast, null
  br i1 %.not.i.i.i364.11, label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit365.11, label %bb.ee

bb.ee:                                            ; preds = %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i363.11
  %i.asu = getelementptr inbounds nuw i8, ptr %13, i64 136
  %i.asv = load ptr, ptr %i.asu, align 8
  %i.asw = ptrtoint ptr %i.asv to i64
  %i.asx = ptrtoint ptr %i.ast to i64
  %i.asy = sub i64 %i.asw, %i.asx
  call void @_ZdlPvm(ptr noundef nonnull %i.ast, i64 noundef %i.asy) #29
  br label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit365.11

_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit365.11: ; preds = %bb.ee, %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i363.11
  %i.asz = getelementptr inbounds nuw i8, ptr %13, i64 96 ; 2 uses
  %i.ata = load ptr, ptr %i.asz, align 16
  %i.atb = getelementptr inbounds nuw i8, ptr %13, i64 104
  %i.atc = load ptr, ptr %i.atb, align 8
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES3_IS4_IfSaIfEEEjEEEEvT_SD_(ptr noundef %i.ata, ptr noundef %i.atc)
          to label %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i363.12 unwind label %bb.dt

_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i363.12: ; preds = %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit365.11
  %i.atd = load ptr, ptr %i.asz, align 16         ; 3 uses
  %.not.i.i.i364.12 = icmp eq ptr %i.atd, null
  br i1 %.not.i.i.i364.12, label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit365.12, label %bb.ef

bb.ef:                                            ; preds = %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i363.12
  %i.ate = getelementptr inbounds nuw i8, ptr %13, i64 112
  %i.atf = load ptr, ptr %i.ate, align 16
  %i.atg = ptrtoint ptr %i.atf to i64
  %i.ath = ptrtoint ptr %i.atd to i64
  %i.ati = sub i64 %i.atg, %i.ath
  call void @_ZdlPvm(ptr noundef nonnull %i.atd, i64 noundef %i.ati) #29
  br label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit365.12

_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit365.12: ; preds = %bb.ef, %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i363.12
  %i.atj = getelementptr inbounds nuw i8, ptr %13, i64 72 ; 2 uses
  %i.atk = load ptr, ptr %i.atj, align 8
  %i.atl = getelementptr inbounds nuw i8, ptr %13, i64 80
  %i.atm = load ptr, ptr %i.atl, align 16
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES3_IS4_IfSaIfEEEjEEEEvT_SD_(ptr noundef %i.atk, ptr noundef %i.atm)
          to label %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i363.13 unwind label %bb.dt

_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i363.13: ; preds = %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit365.12
  %i.atn = load ptr, ptr %i.atj, align 8          ; 3 uses
  %.not.i.i.i364.13 = icmp eq ptr %i.atn, null
  br i1 %.not.i.i.i364.13, label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit365.13, label %bb.eg

bb.eg:                                            ; preds = %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i363.13
  %i.ato = getelementptr inbounds nuw i8, ptr %13, i64 88
  %i.atp = load ptr, ptr %i.ato, align 8
  %i.atq = ptrtoint ptr %i.atp to i64
  %i.atr = ptrtoint ptr %i.atn to i64
  %i.ats = sub i64 %i.atq, %i.atr
  call void @_ZdlPvm(ptr noundef nonnull %i.atn, i64 noundef %i.ats) #29
  br label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit365.13

_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit365.13: ; preds = %bb.eg, %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i363.13
  %i.att = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 2 uses
  %i.atu = load ptr, ptr %i.att, align 16
  %i.atv = getelementptr inbounds nuw i8, ptr %13, i64 56
  %i.atw = load ptr, ptr %i.atv, align 8
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES3_IS4_IfSaIfEEEjEEEEvT_SD_(ptr noundef %i.atu, ptr noundef %i.atw)
          to label %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i363.14 unwind label %bb.dt

_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i363.14: ; preds = %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit365.13
  %i.atx = load ptr, ptr %i.att, align 16         ; 3 uses
  %.not.i.i.i364.14 = icmp eq ptr %i.atx, null
  br i1 %.not.i.i.i364.14, label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit365.14, label %bb.eh

bb.eh:                                            ; preds = %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i363.14
  %i.aty = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.atz = load ptr, ptr %i.aty, align 16
  %i.aua = ptrtoint ptr %i.atz to i64
  %i.aub = ptrtoint ptr %i.atx to i64
  %i.auc = sub i64 %i.aua, %i.aub
  call void @_ZdlPvm(ptr noundef nonnull %i.atx, i64 noundef %i.auc) #29
  br label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit365.14

_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit365.14: ; preds = %bb.eh, %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i363.14
  %i.aud = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.aue = load ptr, ptr %i.aud, align 8
  %i.auf = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.aug = load ptr, ptr %i.auf, align 16
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES3_IS4_IfSaIfEEEjEEEEvT_SD_(ptr noundef %i.aue, ptr noundef %i.aug)
          to label %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i363.15 unwind label %bb.dt

_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i363.15: ; preds = %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit365.14
  %i.auh = load ptr, ptr %i.aud, align 8          ; 3 uses
  %.not.i.i.i364.15 = icmp eq ptr %i.auh, null
  br i1 %.not.i.i.i364.15, label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit365.15, label %bb.ei

bb.ei:                                            ; preds = %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i363.15
  %i.aui = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.auj = load ptr, ptr %i.aui, align 8
  %i.auk = ptrtoint ptr %i.auj to i64
  %i.aul = ptrtoint ptr %i.auh to i64
  %i.aum = sub i64 %i.auk, %i.aul
  call void @_ZdlPvm(ptr noundef nonnull %i.auh, i64 noundef %i.aum) #29
  br label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit365.15

_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit365.15: ; preds = %bb.ei, %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i363.15
  %i.aun = load ptr, ptr %13, align 16
  %i.auo = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.aup = load ptr, ptr %i.auo, align 8
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES3_IS4_IfSaIfEEEjEEEEvT_SD_(ptr noundef %i.aun, ptr noundef %i.aup)
          to label %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i363.16 unwind label %bb.dt

_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i363.16: ; preds = %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit365.15
  %i.auq = load ptr, ptr %13, align 16            ; 3 uses
  %.not.i.i.i364.16 = icmp eq ptr %i.auq, null
  br i1 %.not.i.i.i364.16, label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit365.16, label %bb.ej

bb.ej:                                            ; preds = %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i363.16
  %i.aur = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.aus = load ptr, ptr %i.aur, align 16
  %i.aut = ptrtoint ptr %i.aus to i64
  %i.auu = ptrtoint ptr %i.auq to i64
  %i.auv = sub i64 %i.aut, %i.auu
  call void @_ZdlPvm(ptr noundef nonnull %i.auq, i64 noundef %i.auv) #29
  br label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit365.16

_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit365.16: ; preds = %bb.ej, %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i363.16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  call void @_ZNSt10unique_ptrI10aiNodeAnimSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  resume { ptr, i32 } %.pn207.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN10aiNodeAnimD2Ev(ptr noundef nonnull align 8 dead_on_return(1080) dereferenceable(1080) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #29
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN6Assimp3FBX12FBXConverter24GenerateRotationNodeAnimERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_5ModelERKSt6vectorIPKNS0_18AnimationCurveNodeESaISG_EERKSt3mapISG_PKNS0_14AnimationLayerESt4lessISG_ESaISt4pairIKSG_SO_EEEllRdSY_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(529) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(48) %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %7, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %8) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::unique_ptr.574", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.a = tail call noalias noundef nonnull dereferenceable(1080) ptr @_Znwm(i64 noundef 1080) #30 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1048
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1056 ; 2 uses
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1064 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1080) %i.a, i8 0, i64 1044, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store ptr %i.a, ptr %9, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 4 uses
  %i.g = icmp ugt i64 %i.f, 1023
  br i1 %i.g, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = trunc nuw nsw i64 %i.f to i32
  store i32 %i.h, ptr %i.a, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.j = load ptr, ptr %1, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.i, ptr align 1 %i.j, i64 %i.f, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  store i8 0, ptr %i.k, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.a, %bb.b
  %i.l = invoke noundef i32 @_ZNK6Assimp3FBX5Model13RotationOrderEv(ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  invoke void @_ZN6Assimp3FBX12FBXConverter19ConvertRotationKeysEP10aiNodeAnimRKSt6vectorIPKNS0_18AnimationCurveNodeESaIS7_EERKSt3mapIS7_PKNS0_14AnimationLayerESt4lessIS7_ESaISt4pairIKS7_SF_EEEllRdSP_NS0_5Model8RotOrderE(ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nonnull align 8 poison, i64 noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef %i.l)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #30
          to label %.preheader13.preheader unwind label %bb.e ; 5 uses

.preheader13.preheader:                           ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  store i32 1, ptr %i.n, align 4
  store ptr %i.m, ptr %i.d, align 8
  store i32 1, ptr %i.c, align 8
  store double 0.000000e+00, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store <2 x float> splat (float 1.000000e+00), ptr %i.o, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store float 1.000000e+00, ptr %.sroa.512.0..sroa_idx, align 8
  %i.p = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #30
          to label %.preheader.preheader unwind label %bb.e ; 3 uses

.preheader.preheader:                             ; preds = %.preheader13.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  store i32 1, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 1032
  store ptr %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 1028
  store i32 1, ptr %i.s, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.p, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  ret ptr %i.a

bb.e:                                             ; preds = %.preheader13.preheader, %bb.d, %bb.c, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrI10aiNodeAnimSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  resume { ptr, i32 } %i.t
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN6Assimp3FBX12FBXConverter27GenerateTranslationNodeAnimERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_5ModelERKSt6vectorIPKNS0_18AnimationCurveNodeESaISG_EERKSt3mapISG_PKNS0_14AnimationLayerESt4lessISG_ESaISt4pairIKSG_SO_EEEllRdSY_b(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(529) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nonnull readnone align 8 captures(none) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(48) %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %7, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %8, i1 noundef zeroext %9) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.std::unique_ptr.574", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.a = tail call noalias noundef nonnull dereferenceable(1080) ptr @_Znwm(i64 noundef 1080) #30 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1048 ; 2 uses
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1056 ; 2 uses
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1064 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1080) %i.a, i8 0, i64 1044, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store ptr %i.a, ptr %10, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 4 uses
  %i.g = icmp ugt i64 %i.f, 1023
  br i1 %i.g, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = trunc nuw nsw i64 %i.f to i32
  store i32 %i.h, ptr %i.a, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.j = load ptr, ptr %1, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.i, ptr align 1 %i.j, i64 %i.f, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  store i8 0, ptr %i.k, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.a, %bb.b
  invoke void @_ZN6Assimp3FBX12FBXConverter22ConvertTranslationKeysEP10aiNodeAnimRKSt6vectorIPKNS0_18AnimationCurveNodeESaIS7_EERKSt3mapIS7_PKNS0_14AnimationLayerESt4lessIS7_ESaISt4pairIKS7_SF_EEEllRdSP_(ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nonnull align 8 poison, i64 noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  br i1 %9, label %.preheader17, label %.loopexit

.preheader17:                                     ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1028 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader17
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 1032
  br label %.lr.ph

bb.d:                                             ; preds = %.preheader16.preheader, %.loopexit, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrI10aiNodeAnimSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  resume { ptr, i32 } %i.o

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.p = load ptr, ptr %i.n, align 8
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %indvars.iv ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.s = load <2 x float>, ptr %i.r, align 4
  %i.t = fneg <2 x float> %i.s
  store <2 x float> %i.t, ptr %i.r, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.v = load float, ptr %i.u, align 4
  %i.w = fneg float %i.v
  store float %i.w, ptr %i.u, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.x = load i32, ptr %i.l, align 4
  %i.y = zext i32 %i.x to i64
  %i.z = icmp samesign ult i64 %indvars.iv.next, %i.y
  br i1 %i.z, label %.lr.ph, label %.loopexit, !llvm.loop !375

.loopexit:                                        ; preds = %.lr.ph, %.preheader17, %bb.c
  %i.aa = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #30
          to label %.preheader16.preheader unwind label %bb.d ; 5 uses

.preheader16.preheader:                           ; preds = %.loopexit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  store i32 1, ptr %i.ab, align 4
  store ptr %i.aa, ptr %i.d, align 8
  store i32 1, ptr %i.c, align 8
  store double 0.000000e+00, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store <2 x float> splat (float 1.000000e+00), ptr %i.ac, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store float 1.000000e+00, ptr %.sroa.515.0..sroa_idx, align 8
  %i.ad = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znam(i64 noundef 32) #30
          to label %.preheader.preheader unwind label %bb.d ; 4 uses

.preheader.preheader:                             ; preds = %.preheader16.preheader
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i32 1, ptr %i.af, align 8
  store ptr %i.ad, ptr %i.b, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 1040
  store i32 1, ptr %i.ag, align 8
  store double 0.000000e+00, ptr %i.ad, align 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ae, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN6Assimp3FBX12FBXConverter23GenerateScalingNodeAnimERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_5ModelERKSt6vectorIPKNS0_18AnimationCurveNodeESaISG_EERKSt3mapISG_PKNS0_14AnimationLayerESt4lessISG_ESaISt4pairIKSG_SO_EEEllRdSY_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(529) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nonnull readnone align 8 captures(none) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(48) %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %7, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %8) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::unique_ptr.574", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.a = tail call noalias noundef nonnull dereferenceable(1080) ptr @_Znwm(i64 noundef 1080) #30 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1048 ; 2 uses
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1056
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1064
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1080) %i.a, i8 0, i64 1044, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store ptr %i.a, ptr %9, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 4 uses
  %i.g = icmp ugt i64 %i.f, 1023
  br i1 %i.g, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = trunc nuw nsw i64 %i.f to i32
  store i32 %i.h, ptr %i.a, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.j = load ptr, ptr %1, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.i, ptr align 1 %i.j, i64 %i.f, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  store i8 0, ptr %i.k, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.a, %bb.b
  invoke void @_ZN6Assimp3FBX12FBXConverter16ConvertScaleKeysEP10aiNodeAnimRKSt6vectorIPKNS0_18AnimationCurveNodeESaIS7_EERKSt3mapIS7_PKNS0_14AnimationLayerESt4lessIS7_ESaISt4pairIKS7_SF_EEEllRdSP_(ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nonnull align 8 poison, i64 noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.l = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znam(i64 noundef 32) #30
          to label %.preheader12.preheader unwind label %bb.d ; 4 uses

.preheader12.preheader:                           ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i32 1, ptr %i.n, align 8
  store ptr %i.l, ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 1040
  store i32 1, ptr %i.o, align 8
  store double 0.000000e+00, ptr %i.l, align 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.m, align 8
  %i.p = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #30
          to label %.preheader.preheader unwind label %bb.d ; 3 uses

.preheader.preheader:                             ; preds = %.preheader12.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  store i32 1, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 1032
  store ptr %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 1028
  store i32 1, ptr %i.s, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.p, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  ret ptr %i.a

bb.d:                                             ; preds = %.preheader12.preheader, %bb.c, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrI10aiNodeAnimSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  resume { ptr, i32 } %i.t
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden { <2 x float>, float } @_ZN6Assimp3FBX11PropertyGetI10aiVector3tIfEEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(12) %2) local_unnamed_addr #14 comdat {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %i.a, ptr nonnull @_ZTIN6Assimp3FBX8PropertyE, ptr nonnull @_ZTIN6Assimp3FBX13TypedPropertyI10aiVector3tIfEEE, i64 0) #27 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %spec.select = select i1 %i.d, ptr %2, ptr %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.08.1.in = phi ptr [ %2, %bb.a ], [ %spec.select, %bb.b ] ; 2 uses
  %.sroa.4.1.in = getelementptr inbounds nuw i8, ptr %.sroa.08.1.in, i64 8
  %.sroa.4.1 = load float, ptr %.sroa.4.1.in, align 4
  %.sroa.08.1 = load <2 x float>, ptr %.sroa.08.1.in, align 4
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.08.1, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %.sroa.4.1, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX12FBXConverter19ConvertRotationKeysEP10aiNodeAnimRKSt6vectorIPKNS0_18AnimationCurveNodeESaIS7_EERKSt3mapIS7_PKNS0_14AnimationLayerESt4lessIS7_ESaISt4pairIKS7_SF_EEEllRdSP_NS0_5Model8RotOrderE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(529) %0, ptr noundef writeonly captures(none) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nonnull readnone align 8 captures(none) %3, i64 noundef %4, i64 noundef %5, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %6, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %7, i32 noundef %8) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::vector.582", align 8   ; 11 uses
  %10 = alloca %"class.std::vector.562", align 8  ; 9 uses
  %11 = alloca %class.aiVector3t, align 8         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @_ZN6Assimp3FBX12FBXConverter23GetRotationKeyframeListERKSt6vectorIPKNS0_18AnimationCurveNodeESaIS5_EEll(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.582") align 8 %9, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %4, i64 noundef %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  invoke void @_ZN6Assimp3FBX12FBXConverter14GetKeyTimeListERKSt6vectorISt5tupleIJSt10shared_ptrIS2_IlSaIlEEES4_IS2_IfSaIfEEEjEESaISB_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.562") align 8 %10, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %10, align 8               ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 3 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1040
  store i32 %i.h, ptr %i.i, align 8
  %i.j = icmp ugt i64 %i.g, 576460752303423487
  %i.k = shl i64 %i.f, 2
  %i.l = select i1 %i.j, i64 -1, i64 %i.k
  %i.m = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #30
          to label %bb.c unwind label %bb.g       ; 6 uses

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq ptr %i.b, %i.c
  br i1 %i.n, label %.loopexit.thread, label %bb.d

.loopexit.thread:                                 ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1048
  store ptr %i.m, ptr %i.o, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds [32 x i8], ptr %i.m, i64 %i.g
  %i.q = shl i64 %i.f, 2
  %i.r = add i64 %i.q, -32                        ; 2 uses
  %i.s = lshr i64 %i.r, 5
  %i.t = add nuw nsw i64 %i.s, 1
  %xtraiter = and i64 %i.t, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.d, %.prol.preheader
  %i.u = phi ptr [ %i.x, %.prol.preheader ], [ %i.m, %bb.d ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.d ]
  store double 0.000000e+00, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i32 1, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !376

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.d
  %.unr = phi ptr [ %i.m, %bb.d ], [ %i.x, %.prol.preheader ]
  %i.y = icmp ult i64 %i.r, 224
  br i1 %i.y, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.z = phi ptr [ %i.ax, %.new ], [ %.unr, %.prol.loopexit ] ; 25 uses
  store double 0.000000e+00, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i32 1, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store double 0.000000e+00, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  store i32 1, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  store double 0.000000e+00, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  store i32 1, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  store double 0.000000e+00, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 120
  store i32 1, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 128
  store double 0.000000e+00, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 136
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 152
  store i32 1, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 160
  store double 0.000000e+00, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 168
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 184
  store i32 1, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.z, i64 192
  store double 0.000000e+00, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.z, i64 200
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.z, i64 216
  store i32 1, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.z, i64 224
  store double 0.000000e+00, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.z, i64 232
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.z, i64 248
  store i32 1, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.z, i64 256 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.p
  br i1 %i.ay, label %.unr-lcssa, label %.new

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 1048
  store ptr %i.m, ptr %i.az, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  store <2 x float> zeroinitializer, ptr %11, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 8
  store float 0.000000e+00, ptr %i.ba, align 8
  invoke void @_ZN6Assimp3FBX12FBXConverter15InterpolateKeysEP9aiQuatKeyRKSt6vectorIlSaIlEERKS4_ISt5tupleIJSt10shared_ptrIS6_ESA_IS4_IfSaIfEEEjEESaISF_EERK10aiVector3tIfERdSO_NS0_5Model8RotOrderE(ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef %8)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %.unr-lcssa
end_hunk_6
begin_hunk_7_@_ZN6Assimp3FBX12FBXConverter23GetRotationKeyframeListERKSt6vectorIPKNS0_18AnimationCurveNodeESaIS5_EEll:bb.a
  %.1231.lcssa = phi float [ %.0230449, %.preheader ], [ %.1231443, %.lr.ph ], [ %i.fa, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit115 ]
  %.not57 = icmp slt i64 %.0228450, %i.j
  %.not58 = icmp sgt i64 %.0228450, %i.k
  %or.cond69 = select i1 %.not57, i1 true, i1 %.not58
  br i1 %or.cond69, label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit135, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit115.thread
  %i.gs = load ptr, ptr %i.dh, align 8            ; 3 uses
  %i.gt = load ptr, ptr %i.di, align 8
  %.not.i116 = icmp eq ptr %i.gs, %i.gt
  br i1 %.not.i116, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store i64 %.0228450, ptr %i.gs, align 8
  %i.gu = load ptr, ptr %i.dh, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  store ptr %i.gv, ptr %i.dh, align 8
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit125

bb.as:                                            ; preds = %bb.aq
  %i.gw = load ptr, ptr %i.bl, align 8            ; 4 uses
  %i.gx = ptrtoint ptr %i.gs to i64
  %i.gy = ptrtoint ptr %i.gw to i64
  %i.gz = sub i64 %i.gx, %i.gy                    ; 6 uses
  %i.ha = icmp eq i64 %i.gz, 9223372036854775800
  br i1 %i.ha, label %.invoke, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i117

.invoke:                                          ; preds = %bb.aw, %bb.as
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.224) #31
          to label %.cont unwind label %.loopexit.split-lp249

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i117: ; preds = %bb.as
  %i.hb = ashr exact i64 %i.gz, 3                 ; 3 uses
  %.sroa.speculated.i.i.i118 = call i64 @llvm.umax.i64(i64 %i.hb, i64 1)
  %i.hc = add nsw i64 %.sroa.speculated.i.i.i118, %i.hb ; 2 uses
  %i.hd = icmp ult i64 %i.hc, %i.hb
  %i.he = call i64 @llvm.umin.i64(i64 %i.hc, i64 1152921504606846975)
  %i.hf = select i1 %i.hd, i64 1152921504606846975, i64 %i.he ; 3 uses
  %.not.i.i.i119 = icmp ne i64 %i.hf, 0
  call void @llvm.assume(i1 %.not.i.i.i119)
  %i.hg = shl nuw nsw i64 %i.hf, 3
  %i.hh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hg) #30
          to label %.noexc124 unwind label %.loopexit248 ; 4 uses

.noexc124:                                        ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i117
  %i.hi = getelementptr inbounds i8, ptr %i.hh, i64 %i.gz ; 2 uses
  store i64 %.0228450, ptr %i.hi, align 8
  %i.hj = icmp sgt i64 %i.gz, 0
  br i1 %i.hj, label %bb.at, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i120

bb.at:                                            ; preds = %.noexc124
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hh, ptr align 8 %i.gw, i64 %i.gz, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i120

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i120: ; preds = %bb.at, %.noexc124
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %.not.i17.i.i121 = icmp eq ptr %i.gw, null
  br i1 %.not.i17.i.i121, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i122, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i120
  call void @_ZdlPvm(ptr noundef nonnull %i.gw, i64 noundef %i.gz) #29
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i122

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i122: ; preds = %bb.au, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i120
  store ptr %i.hh, ptr %i.bl, align 8
  store ptr %i.hk, ptr %i.dh, align 8
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.hf
  store ptr %i.hl, ptr %i.di, align 8
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit125

_ZNSt6vectorIlSaIlEE9push_backERKl.exit125:       ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i122, %bb.ar
  %i.hm = load ptr, ptr %i.dl, align 8            ; 3 uses
  %i.hn = load ptr, ptr %i.dm, align 8
  %.not.i126 = icmp eq ptr %i.hm, %i.hn
  br i1 %.not.i126, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIlSaIlEE9push_backERKl.exit125
  store float %.0227452, ptr %i.hm, align 4
  %i.ho = load ptr, ptr %i.dl, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  store ptr %i.hp, ptr %i.dl, align 8
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit135

bb.aw:                                            ; preds = %_ZNSt6vectorIlSaIlEE9push_backERKl.exit125
  %i.hq = load ptr, ptr %i.cc, align 8            ; 4 uses
  %i.hr = ptrtoint ptr %i.hm to i64
  %i.hs = ptrtoint ptr %i.hq to i64
  %i.ht = sub i64 %i.hr, %i.hs                    ; 6 uses
  %i.hu = icmp eq i64 %i.ht, 9223372036854775804
  br i1 %i.hu, label %.invoke, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i127

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i127: ; preds = %bb.aw
  %i.hv = ashr exact i64 %i.ht, 2                 ; 3 uses
  %.sroa.speculated.i.i.i128 = call i64 @llvm.umax.i64(i64 %i.hv, i64 1)
  %i.hw = add nsw i64 %.sroa.speculated.i.i.i128, %i.hv ; 2 uses
  %i.hx = icmp ult i64 %i.hw, %i.hv
  %i.hy = call i64 @llvm.umin.i64(i64 %i.hw, i64 2305843009213693951)
  %i.hz = select i1 %i.hx, i64 2305843009213693951, i64 %i.hy ; 3 uses
  %.not.i.i.i129 = icmp ne i64 %i.hz, 0
  call void @llvm.assume(i1 %.not.i.i.i129)
  %i.ia = shl nuw nsw i64 %i.hz, 2
  %i.ib = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ia) #30
          to label %.noexc134 unwind label %.loopexit248 ; 4 uses

.noexc134:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i127
  %i.ic = getelementptr inbounds i8, ptr %i.ib, i64 %i.ht ; 2 uses
  store float %.0227452, ptr %i.ic, align 4
  %i.id = icmp sgt i64 %i.ht, 0
  br i1 %i.id, label %bb.ax, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i130

bb.ax:                                            ; preds = %.noexc134
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ib, ptr align 4 %i.hq, i64 %i.ht, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i130

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i130: ; preds = %bb.ax, %.noexc134
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 4
  %.not.i17.i.i131 = icmp eq ptr %i.hq, null
  br i1 %.not.i17.i.i131, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i132, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i130
  call void @_ZdlPvm(ptr noundef nonnull %i.hq, i64 noundef %i.ht) #29
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i132

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i132: ; preds = %bb.ay, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i130
  store ptr %i.ib, ptr %i.cc, align 8
  store ptr %i.ie, ptr %i.dl, align 8
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %i.hz
  store ptr %i.if, ptr %i.dm, align 8
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit135

_ZNSt6vectorIfSaIfEE9push_backERKf.exit135:       ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i132, %bb.av, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit115.thread
  %i.ig = add nuw i64 %.0453, 1                   ; 8 uses
  %i.ih = icmp ult i64 %i.ig, %i.da
  br i1 %i.ih, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit135
  %i.ii = load ptr, ptr %i.cu, align 8
  %i.ij = load ptr, ptr %i.ct, align 8            ; 2 uses
  %i.ik = ptrtoint ptr %i.ii to i64
  %i.il = ptrtoint ptr %i.ij to i64
  %i.im = sub i64 %i.ik, %i.il
  %i.in = ashr exact i64 %i.im, 3                 ; 2 uses
  %.not.i.i136 = icmp ult i64 %i.ig, %i.in
  br i1 %.not.i.i136, label %bb.ba, label %.invoke1009

.invoke1009:                                      ; preds = %bb.ba, %bb.az
  %i.io = phi i64 [ %i.in, %bb.az ], [ %i.iu, %bb.ba ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.229, i64 noundef %i.ig, i64 noundef %i.io) #31
          to label %.cont1010 unwind label %.loopexit.split-lp249

.cont1010:                                        ; preds = %.invoke1009
  unreachable

bb.ba:                                            ; preds = %bb.az
  %i.ip = load ptr, ptr %i.dd, align 8
  %i.iq = load ptr, ptr %i.dc, align 8            ; 2 uses
  %i.ir = ptrtoint ptr %i.ip to i64
  %i.is = ptrtoint ptr %i.iq to i64
  %i.it = sub i64 %i.ir, %i.is
  %i.iu = ashr exact i64 %i.it, 2                 ; 2 uses
  %.not.i.i139 = icmp ult i64 %i.ig, %i.iu
  br i1 %.not.i.i139, label %bb.bb, label %.invoke1009

bb.bb:                                            ; preds = %bb.ba
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.ig
  %i.iw = load i64, ptr %i.iv, align 8
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %i.ig
  %i.iy = load float, ptr %i.ix, align 4
  br label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit135, %bb.bb
  %.4236 = phi i64 [ %.0228450, %bb.bb ], [ %.1233.lcssa, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit135 ]
  %.4 = phi float [ %.0227452, %bb.bb ], [ %.1231.lcssa, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit135 ]
  %.1229 = phi i64 [ %i.iw, %bb.bb ], [ %.0228450, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit135 ]
  %.1 = phi float [ %i.iy, %bb.bb ], [ %.0227452, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit135 ]
  %exitcond.not = icmp eq i64 %i.ig, %i.da
  br i1 %exitcond.not, label %.loopexit247, label %.preheader, !llvm.loop !377

.loopexit247:                                     ; preds = %bb.bc, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %i.iz = load ptr, ptr %i.n, align 8             ; 9 uses
  %i.ja = load ptr, ptr %i.o, align 8
  %.not.i142 = icmp eq ptr %i.iz, %i.ja
  br i1 %.not.i142, label %bb.bh, label %bb.bd

bb.bd:                                            ; preds = %.loopexit247
  store i32 %.0237, ptr %i.iz, align 4
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  store ptr %i.cc, ptr %i.jb, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  store ptr %i.cd, ptr %i.jc, align 8
  %i.jd = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.jd, 0
  %i.je = getelementptr inbounds nuw i8, ptr %i.iz, i64 24 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iz, i64 32 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.be, label %.thread

.thread:                                          ; preds = %bb.bd
  %i.jg = load i32, ptr %i.cq, align 4
  %i.jh = add nsw i32 %i.jg, 1
  store i32 %i.jh, ptr %i.cq, align 4
  store ptr %i.bl, ptr %i.je, align 8
  store ptr %i.bm, ptr %i.jf, align 8
  br label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.ji = atomicrmw volatile add ptr %i.cq, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load i8, ptr @__libc_single_threaded, align 1
  %i.jj = icmp eq i8 %.pre, 0
  store ptr %i.bl, ptr %i.je, align 8
  store ptr %i.bm, ptr %i.jf, align 8
  br i1 %i.jj, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.thread, %bb.be
  %i.jk = load i32, ptr %i.bz, align 4
  %i.jl = add nsw i32 %i.jk, 1
  store i32 %i.jl, ptr %i.bz, align 4
  br label %_ZNSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES0_IS1_IfSaIfEEEjEEC2IJRS4_RS7_RjELb1ETnNSt9enable_ifIXclsr4_TCCIXT0_EEE29__is_implicitly_constructibleIDpT_EEEbE4typeELb1EEEDpOSE_.exit.i

bb.bg:                                            ; preds = %bb.be
  %i.jm = atomicrmw volatile add ptr %i.bz, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES0_IS1_IfSaIfEEEjEEC2IJRS4_RS7_RjELb1ETnNSt9enable_ifIXclsr4_TCCIXT0_EEE29__is_implicitly_constructibleIDpT_EEEbE4typeELb1EEEDpOSE_.exit.i

_ZNSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES0_IS1_IfSaIfEEEjEEC2IJRS4_RS7_RjELb1ETnNSt9enable_ifIXclsr4_TCCIXT0_EEE29__is_implicitly_constructibleIDpT_EEEbE4typeELb1EEEDpOSE_.exit.i: ; preds = %bb.bg, %bb.bf
  %i.jn = load ptr, ptr %i.n, align 8
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 40
  store ptr %i.jo, ptr %i.n, align 8
  br label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE12emplace_backIJRS4_RS7_RjEEERS8_DpOT_.exit

bb.bh:                                            ; preds = %.loopexit247
  %i.jp = load ptr, ptr %0, align 8               ; 5 uses
  %i.jq = ptrtoint ptr %i.iz to i64
  %i.jr = ptrtoint ptr %i.jp to i64               ; 2 uses
  %i.js = sub i64 %i.jq, %i.jr                    ; 3 uses
  %i.jt = icmp eq i64 %i.js, 9223372036854775800
  br i1 %i.jt, label %bb.bi, label %_ZNKSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE12_M_check_lenEmPKc.exit.i

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.224) #31
          to label %.noexc172 unwind label %.loopexit.split-lp254

.noexc172:                                        ; preds = %bb.bi
  unreachable

_ZNKSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.bh
  %i.ju = sdiv exact i64 %i.js, 40                ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ju, i64 1)
  %i.jv = add nsw i64 %.sroa.speculated.i.i, %i.ju ; 2 uses
  %i.jw = icmp ult i64 %i.jv, %i.ju
  %i.jx = call i64 @llvm.umin.i64(i64 %i.jv, i64 230584300921369395)
  %i.jy = select i1 %i.jw, i64 230584300921369395, i64 %i.jx ; 3 uses
  %.not.i.i164 = icmp ne i64 %i.jy, 0
  call void @llvm.assume(i1 %.not.i.i164)
  %i.jz = mul nuw nsw i64 %i.jy, 40
  %i.ka = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jz) #30
          to label %bb.bj unwind label %.loopexit253 ; 5 uses

bb.bj:                                            ; preds = %_ZNKSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE12_M_check_lenEmPKc.exit.i
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.js ; 5 uses
  store i32 %.0237, ptr %i.kb, align 4
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  store ptr %i.cc, ptr %i.kc, align 8
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  store ptr %i.cd, ptr %i.kd, align 8
  %i.ke = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i.i.i.i.i166 = icmp eq i8 %i.ke, 0
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kb, i64 24 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kb, i64 32 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i166, label %bb.bk, label %.thread685

.thread685:                                       ; preds = %bb.bj
  %i.kh = load i32, ptr %i.cq, align 4
  %i.ki = add nsw i32 %i.kh, 1
  store i32 %i.ki, ptr %i.cq, align 4
  store ptr %i.bl, ptr %i.kf, align 8
  store ptr %i.bm, ptr %i.kg, align 8
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.kj = atomicrmw volatile add ptr %i.cq, i32 1 acq_rel, align 4 ; 0 uses
  %.pre642 = load i8, ptr @__libc_single_threaded, align 1
  %i.kk = icmp eq i8 %.pre642, 0
  store ptr %i.bl, ptr %i.kf, align 8
  store ptr %i.bm, ptr %i.kg, align 8
  br i1 %i.kk, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %.thread685, %bb.bk
  %i.kl = load i32, ptr %i.bz, align 4
  %i.km = add nsw i32 %i.kl, 1
  store i32 %i.km, ptr %i.bz, align 4
  br label %_ZNSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES0_IS1_IfSaIfEEEjEEC2IJRS4_RS7_RjELb1ETnNSt9enable_ifIXclsr4_TCCIXT0_EEE29__is_implicitly_constructibleIDpT_EEEbE4typeELb1EEEDpOSE_.exit.i170

bb.bm:                                            ; preds = %bb.bk
  %i.kn = atomicrmw volatile add ptr %i.bz, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES0_IS1_IfSaIfEEEjEEC2IJRS4_RS7_RjELb1ETnNSt9enable_ifIXclsr4_TCCIXT0_EEE29__is_implicitly_constructibleIDpT_EEEbE4typeELb1EEEDpOSE_.exit.i170

_ZNSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES0_IS1_IfSaIfEEEjEEC2IJRS4_RS7_RjELb1ETnNSt9enable_ifIXclsr4_TCCIXT0_EEE29__is_implicitly_constructibleIDpT_EEEbE4typeELb1EEEDpOSE_.exit.i170: ; preds = %bb.bm, %bb.bl
  %.not10.i.i.i.i = icmp eq ptr %i.jp, %i.iz
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit24.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES0_IS1_IfSaIfEEEjEEC2IJRS4_RS7_RjELb1ETnNSt9enable_ifIXclsr4_TCCIXT0_EEE29__is_implicitly_constructibleIDpT_EEEbE4typeELb1EEEDpOSE_.exit.i170, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.kw, %.lr.ph.i.i.i.i ], [ %i.ka, %_ZNSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES0_IS1_IfSaIfEEEjEEC2IJRS4_RS7_RjELb1ETnNSt9enable_ifIXclsr4_TCCIXT0_EEE29__is_implicitly_constructibleIDpT_EEEbE4typeELb1EEEDpOSE_.exit.i170 ] ; 4 uses
  %.0911.i.i.i.i = phi ptr [ %i.kv, %.lr.ph.i.i.i.i ], [ %i.jp, %_ZNSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES0_IS1_IfSaIfEEEjEEC2IJRS4_RS7_RjELb1ETnNSt9enable_ifIXclsr4_TCCIXT0_EEE29__is_implicitly_constructibleIDpT_EEEbE4typeELb1EEEDpOSE_.exit.i170 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !378)
  call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %i.ko = load i32, ptr %.0911.i.i.i.i, align 4, !alias.scope !381, !noalias !378
  store i32 %i.ko, ptr %.012.i.i.i.i, align 4, !alias.scope !378, !noalias !381
  %i.kp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %i.kq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.kr = load <2 x ptr>, ptr %i.kq, align 8, !alias.scope !381, !noalias !378
  store <2 x ptr> %i.kr, ptr %i.kp, align 8, !alias.scope !378, !noalias !381
  %i.ks = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %i.kt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24
  %i.ku = load <2 x ptr>, ptr %i.kt, align 8, !alias.scope !381, !noalias !378
  store <2 x ptr> %i.ku, ptr %i.ks, align 8, !alias.scope !378, !noalias !381
  store <4 x ptr> splat (ptr null), ptr %i.kq, align 8, !alias.scope !381, !noalias !378
  %i.kv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i171 = icmp eq ptr %i.kv, %i.iz
  br i1 %.not.i.i.i.i171, label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit24.i, label %.lr.ph.i.i.i.i, !llvm.loop !383

_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit24.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES0_IS1_IfSaIfEEEjEEC2IJRS4_RS7_RjELb1ETnNSt9enable_ifIXclsr4_TCCIXT0_EEE29__is_implicitly_constructibleIDpT_EEEbE4typeELb1EEEDpOSE_.exit.i170
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ka, %_ZNSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES0_IS1_IfSaIfEEEjEEC2IJRS4_RS7_RjELb1ETnNSt9enable_ifIXclsr4_TCCIXT0_EEE29__is_implicitly_constructibleIDpT_EEEbE4typeELb1EEEDpOSE_.exit.i170 ], [ %i.kw, %.lr.ph.i.i.i.i ]
  %i.kx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 40
  %.not.i25.i = icmp eq ptr %i.jp, null
  br i1 %.not.i25.i, label %.noexc143, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit24.i
  %i.ky = load ptr, ptr %i.o, align 8
  %i.kz = ptrtoint ptr %i.ky to i64
  %i.la = sub i64 %i.kz, %i.jr
  call void @_ZdlPvm(ptr noundef nonnull %i.jp, i64 noundef %i.la) #29
  br label %.noexc143

.noexc143:                                        ; preds = %bb.bn, %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit24.i
  store ptr %i.ka, ptr %0, align 8
  store ptr %i.kx, ptr %i.n, align 8
  %i.lb = getelementptr inbounds nuw [40 x i8], ptr %i.ka, i64 %i.jy
  store ptr %i.lb, ptr %i.o, align 8
  br label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE12emplace_backIJRS4_RS7_RjEEERS8_DpOT_.exit

_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE12emplace_backIJRS4_RS7_RjEEERS8_DpOT_.exit: ; preds = %_ZNSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES0_IS1_IfSaIfEEEjEEC2IJRS4_RS7_RjELb1ETnNSt9enable_ifIXclsr4_TCCIXT0_EEE29__is_implicitly_constructibleIDpT_EEEbE4typeELb1EEEDpOSE_.exit.i, %.noexc143
  %i.lc = load atomic i64, ptr %i.cq acquire, align 8 ; 2 uses
  %i.ld = icmp eq i64 %i.lc, 4294967297
  %i.le = trunc i64 %i.lc to i32                  ; 2 uses
  br i1 %i.ld, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE12emplace_backIJRS4_RS7_RjEEERS8_DpOT_.exit
  store i32 0, ptr %i.cq, align 8
  store i32 0, ptr %i.cr, align 4
  %i.lf = load ptr, ptr %i.cd, align 8
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  %i.lh = load ptr, ptr %i.lg, align 8
  call void %i.lh(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #27, !inline_history !384
  %i.li = load ptr, ptr %i.cd, align 8
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 24
  %i.lk = load ptr, ptr %i.lj, align 8
  call void %i.lk(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #27, !inline_history !384
  br label %_ZNSt12__shared_ptrISt6vectorIfSaIfEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bp:                                            ; preds = %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE12emplace_backIJRS4_RS7_RjEEERS8_DpOT_.exit
  %i.ll = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i145 = icmp eq i8 %i.ll, 0
  br i1 %.not.i.i.i145, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.lm = add nsw i32 %i.le, -1
  store i32 %i.lm, ptr %i.cq, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.br:                                            ; preds = %bb.bp
  %i.ln = atomicrmw volatile add ptr %i.cq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.br, %bb.bq
  %.0.i.i.i.i = phi i32 [ %i.le, %bb.bq ], [ %i.ln, %bb.br ]
  %i.lo = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.lo, label %bb.bs, label %_ZNSt12__shared_ptrISt6vectorIfSaIfEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !91

bb.bs:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #27
  br label %_ZNSt12__shared_ptrISt6vectorIfSaIfEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrISt6vectorIfSaIfEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.bs, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.bo
  %i.lp = load atomic i64, ptr %i.bz acquire, align 8 ; 2 uses
  %i.lq = icmp eq i64 %i.lp, 4294967297
  %i.lr = trunc i64 %i.lp to i32                  ; 2 uses
  br i1 %i.lq, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %_ZNSt12__shared_ptrISt6vectorIfSaIfEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store i32 0, ptr %i.bz, align 8
  store i32 0, ptr %i.ca, align 4
  %i.ls = load ptr, ptr %i.bm, align 8
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  %i.lu = load ptr, ptr %i.lt, align 8
  call void %i.lu(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #27, !inline_history !385
  %i.lv = load ptr, ptr %i.bm, align 8
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 24
  %i.lx = load ptr, ptr %i.lw, align 8
  call void %i.lx(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #27, !inline_history !385
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA67_KcEEEvDpOT_.exit

bb.bu:                                            ; preds = %_ZNSt12__shared_ptrISt6vectorIfSaIfEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ly = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i147 = icmp eq i8 %i.ly, 0
  br i1 %.not.i.i.i147, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.lz = add nsw i32 %i.lr, -1
  store i32 %i.lz, ptr %i.bz, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i148

bb.bw:                                            ; preds = %bb.bu
  %i.ma = atomicrmw volatile add ptr %i.bz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i148

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i148: ; preds = %bb.bw, %bb.bv
  %.0.i.i.i.i149 = phi i32 [ %i.lr, %bb.bv ], [ %i.ma, %bb.bw ]
  %i.mb = icmp eq i32 %.0.i.i.i.i149, 1
  br i1 %i.mb, label %bb.bx, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA67_KcEEEvDpOT_.exit, !prof !91

bb.bx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i148
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #27
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA67_KcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA67_KcEEEvDpOT_.exit: ; preds = %bb.bx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i148, %bb.bt, %.noexc76, %.noexc
  %i.mc = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0220.0455) #28 ; 2 uses
  %.not245 = icmp eq ptr %i.mc, %i.u
  br i1 %.not245, label %._crit_edge, label %.lr.ph457

bb.by:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit248, %.loopexit.split-lp249, %.loopexit253, %.loopexit.split-lp254, %bb.ae, %bb.af, %bb.ag
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.el, %bb.ae ], [ %lpad.loopexit.split-lp251, %.loopexit.split-lp249 ], [ %i.em, %bb.af ], [ %i.en, %bb.ag ], [ %lpad.loopexit.split-lp256, %.loopexit.split-lp254 ], [ %lpad.loopexit255, %.loopexit253 ], [ %lpad.loopexit250, %.loopexit248 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 3 uses
  %i.md = load atomic i64, ptr %i.cq acquire, align 8 ; 2 uses
  %i.me = icmp eq i64 %i.md, 4294967297
  %i.mf = trunc i64 %i.md to i32                  ; 2 uses
  br i1 %i.me, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  store i32 0, ptr %i.cq, align 8
  store i32 0, ptr %i.cr, align 4
  %i.mg = load ptr, ptr %i.cd, align 8
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  %i.mi = load ptr, ptr %i.mh, align 8
  call void %i.mi(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #27, !inline_history !384
  %i.mj = load ptr, ptr %i.cd, align 8
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 24
  %i.ml = load ptr, ptr %i.mk, align 8
  call void %i.ml(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #27, !inline_history !384
  br label %.body162

bb.ca:                                            ; preds = %bb.by
  %i.mm = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i151 = icmp eq i8 %i.mm, 0
  br i1 %.not.i.i.i151, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.mn = add nsw i32 %i.mf, -1
  store i32 %i.mn, ptr %i.cq, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i152

bb.cc:                                            ; preds = %bb.ca
  %i.mo = atomicrmw volatile add ptr %i.cq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i152

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i152: ; preds = %bb.cc, %bb.cb
  %.0.i.i.i.i153 = phi i32 [ %i.mf, %bb.cb ], [ %i.mo, %bb.cc ]
  %i.mp = icmp eq i32 %.0.i.i.i.i153, 1
  br i1 %i.mp, label %bb.cd, label %.body162, !prof !91

bb.cd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i152
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #27
  br label %.body162

.body162:                                         ; preds = %bb.s, %bb.ad, %bb.bz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i152, %bb.cd
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cn, %bb.s ], [ %i.ek, %bb.ad ], [ %.pn.pn.pn.pn.pn, %bb.bz ], [ %.pn.pn.pn.pn.pn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i152 ], [ %.pn.pn.pn.pn.pn, %bb.cd ] ; 3 uses
  %i.mq = load atomic i64, ptr %i.bz acquire, align 8 ; 2 uses
  %i.mr = icmp eq i64 %i.mq, 4294967297
  %i.ms = trunc i64 %i.mq to i32                  ; 2 uses
  br i1 %i.mr, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %.body162
  store i32 0, ptr %i.bz, align 8
  store i32 0, ptr %i.ca, align 4
  %i.mt = load ptr, ptr %i.bm, align 8
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  %i.mv = load ptr, ptr %i.mu, align 8
  call void %i.mv(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #27, !inline_history !385
  %i.mw = load ptr, ptr %i.bm, align 8
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 24
  %i.my = load ptr, ptr %i.mx, align 8
  call void %i.my(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #27, !inline_history !385
  br label %.body

bb.cf:                                            ; preds = %.body162
  %i.mz = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i156 = icmp eq i8 %i.mz, 0
  br i1 %.not.i.i.i156, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.na = add nsw i32 %i.ms, -1
  store i32 %i.na, ptr %i.bz, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i157

bb.ch:                                            ; preds = %bb.cf
  %i.nb = atomicrmw volatile add ptr %i.bz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i157

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i157: ; preds = %bb.ch, %bb.cg
  %.0.i.i.i.i158 = phi i32 [ %i.ms, %bb.cg ], [ %i.nb, %bb.ch ]
  %i.nc = icmp eq i32 %.0.i.i.i.i158, 1
  br i1 %i.nc, label %bb.ci, label %.body, !prof !91

bb.ci:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i157
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #27
  br label %.body

.body:                                            ; preds = %bb.f, %bb.l, %bb.ac, %bb.ce, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i157, %bb.ci, %bb.g, %bb.c
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.p, %bb.c ], [ %i.w, %bb.f ], [ %i.al, %bb.g ], [ %i.bw, %bb.l ], [ %i.ej, %bb.ac ], [ %.pn.pn.pn.pn.pn.pn, %bb.ce ], [ %.pn.pn.pn.pn.pn.pn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i157 ], [ %.pn.pn.pn.pn.pn.pn, %bb.ci ]
  %i.nd = load ptr, ptr %0, align 8
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.nf = load ptr, ptr %i.ne, align 8
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES3_IS4_IfSaIfEEEjEEEEvT_SD_(ptr noundef %i.nd, ptr noundef %i.nf)
          to label %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i unwind label %bb.ck

_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i: ; preds = %.body
  %i.ng = load ptr, ptr %0, align 8               ; 3 uses
  %.not.i.i.i160 = icmp eq ptr %i.ng, null
  br i1 %.not.i.i.i160, label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit, label %bb.cj

bb.cj:                                            ; preds = %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ni = load ptr, ptr %i.nh, align 8
  %i.nj = ptrtoint ptr %i.ni to i64
  %i.nk = ptrtoint ptr %i.ng to i64
  %i.nl = sub i64 %i.nj, %i.nk
  call void @_ZdlPvm(ptr noundef nonnull %i.ng, i64 noundef %i.nl) #29
  br label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit

bb.ck:                                            ; preds = %.body
  %i.nm = landingpad { ptr, i32 }
          catch ptr null
  %i.nn = extractvalue { ptr, i32 } %i.nm, 0
  call void @__clang_call_terminate(ptr %i.nn) #32
  unreachable

_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i, %bb.cj
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES3_IS4_IfSaIfEEEjEEEEvT_SD_(ptr noundef %i.a, ptr noundef %i.c)
          to label %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit unwind label %bb.c

_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseISt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEESaIS9_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #29
  br label %_ZNSt12_Vector_baseISt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEESaIS9_EED2Ev.exit

_ZNSt12_Vector_baseISt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit, %bb.b
  ret void

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #32
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX12FBXConverter15GetKeyframeListERKSt6vectorIPKNS0_18AnimationCurveNodeESaIS5_EEll(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::vector.582") align 8 initializes((0, 24)) %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %2, align 8
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = mul nsw i64 %i.h, 3
  invoke void @_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i64 %3, -10000
  %i.k = add nsw i64 %4, 10000
  %i.l = load ptr, ptr %2, align 8                ; 2 uses
  %i.m = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not131232 = icmp eq ptr %i.l, %i.m
  br i1 %.not131232, label %._crit_edge236, label %.lr.ph235

.lr.ph235:                                        ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %bb.d

._crit_edge236:                                   ; preds = %._crit_edge231, %bb.b
  ret void

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %.lr.ph235, %._crit_edge231
  %.sroa.0124.0233 = phi ptr [ %i.l, %.lr.ph235 ], [ %i.v, %._crit_edge231 ] ; 2 uses
  %i.q = load ptr, ptr %.sroa.0124.0233, align 8
  %i.r = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK6Assimp3FBX18AnimationCurveNode6CurvesB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(168) %i.q)
          to label %bb.e unwind label %bb.f       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %.not132226 = icmp eq ptr %i.t, %i.u
  br i1 %.not132226, label %._crit_edge231, label %.lr.ph230

._crit_edge231:                                   ; preds = %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA67_KcEEEvDpOT_.exit, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0124.0233, i64 8 ; 2 uses
  %.not131 = icmp eq ptr %i.v, %i.m
  br i1 %.not131, label %._crit_edge236, label %bb.d

bb.f:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph230:                                        ; preds = %bb.e, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA67_KcEEEvDpOT_.exit
  %.sroa.0120.0227 = phi ptr [ %i.jc, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA67_KcEEEvDpOT_.exit ], [ %i.t, %bb.e ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0120.0227, i64 40
  %i.y = load i64, ptr %i.x, align 8
  %cond = icmp eq i64 %i.y, 3
  br i1 %cond, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread130

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.lr.ph230
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0120.0227, i64 32
  %i.aa = load ptr, ptr %i.z, align 8             ; 6 uses
  %i.ab = load i16, ptr %i.aa, align 1
  %i.ac = xor i16 %i.ab, 31844
  %i.ad = getelementptr i8, ptr %i.aa, i64 2
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i16
  %i.ag = xor i16 %i.af, 88
  %i.ah = or i16 %i.ac, %i.ag
  %i.ai = icmp ne i16 %i.ah, 0
  %i.aj = zext i1 %i.ai to i32
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread128

bb.g:                                             ; preds = %.noexc50, %.noexc49, %bb.h, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread130
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread128: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.am = load i16, ptr %i.aa, align 1
  %i.an = xor i16 %i.am, 31844
  %i.ao = getelementptr i8, ptr %i.aa, i64 2
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i16
  %i.ar = xor i16 %i.aq, 89
  %i.as = or i16 %i.an, %i.ar
  %i.at = icmp ne i16 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit46.thread129

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit46.thread129: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread128
  %i.aw = load i16, ptr %i.aa, align 1
  %i.ax = xor i16 %i.aw, 31844
  %i.ay = getelementptr i8, ptr %i.aa, i64 2
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = zext i8 %i.az to i16
  %i.bb = xor i16 %i.ba, 90
  %i.bc = or i16 %i.ax, %i.bb
  %i.bd = icmp ne i16 %i.bc, 0
  %i.be = zext i1 %i.bd to i32
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread130

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread130: ; preds = %.lr.ph230, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit46.thread129
  %i.bg = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread130
end_hunk_7
begin_hunk_8_@_ZN6Assimp3FBX12FBXConverter15GetKeyframeListERKSt6vectorIPKNS0_18AnimationCurveNodeESaIS5_EEll:bb.a
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA67_KcEEEvDpOT_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit46.thread129, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread128, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %.0127 = phi i32 [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread128 ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ 2, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit46.thread129 ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0120.0227, i64 64
  %i.bk = load ptr, ptr %i.bj, align 8            ; 4 uses
  %i.bl = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30
          to label %bb.i unwind label %bb.ah      ; 15 uses

bb.i:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i8 0, i64 24, i1 false)
  %i.bm = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30
          to label %bb.o unwind label %bb.j       ; 18 uses

bb.j:                                             ; preds = %bb.i
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  %i.bp = call ptr @__cxa_begin_catch(ptr %i.bo) #27 ; 0 uses
  %i.bq = load ptr, ptr %i.bl, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = sub i64 %i.bt, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bv) #29
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit.i

_ZNSt6vectorIlSaIlEED2Ev.exit.i:                  ; preds = %bb.k, %bb.j
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef 24) #29
  invoke void @__cxa_rethrow() #31
          to label %bb.n unwind label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit.i
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #32
  unreachable

bb.n:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit.i
  unreachable

bb.o:                                             ; preds = %bb.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 15 uses
  store i32 1, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bm, i64 12 ; 3 uses
  store i32 1, ptr %i.ca, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPSt6vectorIlSaIlEELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.bm, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store ptr %i.bl, ptr %i.cb, align 8
  %i.cc = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30
          to label %bb.p unwind label %bb.ai      ; 13 uses

bb.p:                                             ; preds = %bb.o
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i8 0, i64 24, i1 false)
  %i.cd = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30
          to label %bb.v unwind label %bb.q       ; 16 uses

bb.q:                                             ; preds = %bb.p
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  %i.cg = call ptr @__cxa_begin_catch(ptr %i.cf) #27 ; 0 uses
  %i.ch = load ptr, ptr %i.cc, align 8            ; 3 uses
  %.not.i.i.i.i89 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i89, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.ch to i64
  %i.cm = sub i64 %i.ck, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.cm) #29
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i:                  ; preds = %bb.r, %bb.q
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 24) #29
  invoke void @__cxa_rethrow() #31
          to label %bb.u unwind label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body90 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  call void @__clang_call_terminate(ptr %i.cp) #32
  unreachable

bb.u:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  unreachable

bb.v:                                             ; preds = %bb.p
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 15 uses
  store i32 1, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cd, i64 12 ; 3 uses
  store i32 1, ptr %i.cr, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPSt6vectorIfSaIfEELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.cd, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store ptr %i.cc, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bk, i64 56 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bk, i64 64 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8            ; 4 uses
  %i.cw = load ptr, ptr %i.ct, align 8            ; 4 uses
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy                    ; 4 uses
  %i.da = ashr exact i64 %i.cz, 3                 ; 3 uses
  %i.db = icmp ugt i64 %i.da, 1152921504606846975
  br i1 %i.db, label %.invoke, label %bb.w

.invoke:                                          ; preds = %bb.ab, %bb.v
  %i.dc = phi ptr [ @.str.223, %bb.v ], [ @.str.224, %bb.ab ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.dc) #31
          to label %.cont unwind label %.loopexit.split-lp135

.cont:                                            ; preds = %.invoke
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 3 uses
  %.not353 = icmp eq ptr %i.cv, %i.cw
  br i1 %.not353, label %_ZNSt6vectorIlSaIlEE7reserveEm.exit, label %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i: ; preds = %bb.w
  %i.de = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cz) #30
          to label %.noexc55 unwind label %.loopexit134 ; 3 uses

.noexc55:                                         ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.de, ptr %i.bl, align 8
  store ptr %i.de, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.cz
  store ptr %i.dg, ptr %i.dd, align 8
  br label %_ZNSt6vectorIlSaIlEE7reserveEm.exit

_ZNSt6vectorIlSaIlEE7reserveEm.exit:              ; preds = %bb.w, %.noexc55
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 3 uses
  %.not354 = icmp eq ptr %i.cv, %i.cw
  br i1 %.not354, label %_ZNSt6vectorIfSaIfEE7reserveEm.exit, label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i: ; preds = %_ZNSt6vectorIlSaIlEE7reserveEm.exit
  %i.di = ashr exact i64 %i.cz, 1
  %i.dj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.di) #30
          to label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i unwind label %.loopexit134 ; 3 uses

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i: ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr %i.dj, ptr %i.cc, align 8
  store ptr %i.dj, ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.da
  store ptr %i.dl, ptr %i.dh, align 8
  br label %_ZNSt6vectorIfSaIfEE7reserveEm.exit

_ZNSt6vectorIfSaIfEE7reserveEm.exit:              ; preds = %_ZNSt6vectorIlSaIlEE7reserveEm.exit, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i
  %.not237 = icmp eq ptr %i.cv, %i.cw
  br i1 %.not237, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIfSaIfEE7reserveEm.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bk, i64 80
  %i.do = getelementptr inbounds nuw i8, ptr %i.bk, i64 88
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 4 uses
  br label %bb.aj

._crit_edge:                                      ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit, %_ZNSt6vectorIfSaIfEE7reserveEm.exit
  %i.dq = load ptr, ptr %i.n, align 8             ; 9 uses
  %i.dr = load ptr, ptr %i.o, align 8
  %.not.i = icmp eq ptr %i.dq, %i.dr
  br i1 %.not.i, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %._crit_edge
  store i32 %.0127, ptr %i.dq, align 4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store ptr %i.cc, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store ptr %i.cd, ptr %i.dt, align 8
  %i.du = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.du, 0
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 24 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 32 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.y, label %.thread

.thread:                                          ; preds = %bb.x
  %i.dx = load i32, ptr %i.cq, align 4
  %i.dy = add nsw i32 %i.dx, 1
  store i32 %i.dy, ptr %i.cq, align 4
  store ptr %i.bl, ptr %i.dv, align 8
  store ptr %i.bm, ptr %i.dw, align 8
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dz = atomicrmw volatile add ptr %i.cq, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load i8, ptr @__libc_single_threaded, align 1
  %i.ea = icmp eq i8 %.pre, 0
  store ptr %i.bl, ptr %i.dv, align 8
  store ptr %i.bm, ptr %i.dw, align 8
  br i1 %i.ea, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.thread, %bb.y
  %i.eb = load i32, ptr %i.bz, align 4
  %i.ec = add nsw i32 %i.eb, 1
  store i32 %i.ec, ptr %i.bz, align 4
  br label %_ZNSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES0_IS1_IfSaIfEEEjEEC2IJRS4_RS7_RjELb1ETnNSt9enable_ifIXclsr4_TCCIXT0_EEE29__is_implicitly_constructibleIDpT_EEEbE4typeELb1EEEDpOSE_.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.ed = atomicrmw volatile add ptr %i.bz, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES0_IS1_IfSaIfEEEjEEC2IJRS4_RS7_RjELb1ETnNSt9enable_ifIXclsr4_TCCIXT0_EEE29__is_implicitly_constructibleIDpT_EEEbE4typeELb1EEEDpOSE_.exit.i

_ZNSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES0_IS1_IfSaIfEEEjEEC2IJRS4_RS7_RjELb1ETnNSt9enable_ifIXclsr4_TCCIXT0_EEE29__is_implicitly_constructibleIDpT_EEEbE4typeELb1EEEDpOSE_.exit.i: ; preds = %bb.aa, %bb.z
  %i.ee = load ptr, ptr %i.n, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 40
  store ptr %i.ef, ptr %i.n, align 8
  br label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE12emplace_backIJRS4_RS7_RjEEERS8_DpOT_.exit

bb.ab:                                            ; preds = %._crit_edge
  %i.eg = load ptr, ptr %0, align 8               ; 5 uses
  %i.eh = ptrtoint ptr %i.dq to i64
  %i.ei = ptrtoint ptr %i.eg to i64               ; 2 uses
  %i.ej = sub i64 %i.eh, %i.ei                    ; 3 uses
  %i.ek = icmp eq i64 %i.ej, 9223372036854775800
  br i1 %i.ek, label %.invoke, label %_ZNKSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ab
  %i.el = sdiv exact i64 %i.ej, 40                ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.el, i64 1)
  %i.em = add nsw i64 %.sroa.speculated.i.i, %i.el ; 2 uses
  %i.en = icmp ult i64 %i.em, %i.el
  %i.eo = call i64 @llvm.umin.i64(i64 %i.em, i64 230584300921369395)
  %i.ep = select i1 %i.en, i64 230584300921369395, i64 %i.eo ; 3 uses
  %.not.i.i92 = icmp ne i64 %i.ep, 0
  call void @llvm.assume(i1 %.not.i.i92)
  %i.eq = mul nuw nsw i64 %i.ep, 40
  %i.er = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eq) #30
          to label %bb.ac unwind label %.loopexit134 ; 5 uses

bb.ac:                                            ; preds = %_ZNKSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE12_M_check_lenEmPKc.exit.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ej ; 5 uses
  store i32 %.0127, ptr %i.es, align 4
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store ptr %i.cc, ptr %i.et, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store ptr %i.cd, ptr %i.eu, align 8
  %i.ev = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i.i.i.i.i94 = icmp eq i8 %i.ev, 0
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 24 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 32 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i94, label %bb.ad, label %.thread356

.thread356:                                       ; preds = %bb.ac
  %i.ey = load i32, ptr %i.cq, align 4
  %i.ez = add nsw i32 %i.ey, 1
  store i32 %i.ez, ptr %i.cq, align 4
  store ptr %i.bl, ptr %i.ew, align 8
  store ptr %i.bm, ptr %i.ex, align 8
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fa = atomicrmw volatile add ptr %i.cq, i32 1 acq_rel, align 4 ; 0 uses
  %.pre325 = load i8, ptr @__libc_single_threaded, align 1
  %i.fb = icmp eq i8 %.pre325, 0
  store ptr %i.bl, ptr %i.ew, align 8
  store ptr %i.bm, ptr %i.ex, align 8
  br i1 %i.fb, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.thread356, %bb.ad
  %i.fc = load i32, ptr %i.bz, align 4
  %i.fd = add nsw i32 %i.fc, 1
  store i32 %i.fd, ptr %i.bz, align 4
  br label %_ZNSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES0_IS1_IfSaIfEEEjEEC2IJRS4_RS7_RjELb1ETnNSt9enable_ifIXclsr4_TCCIXT0_EEE29__is_implicitly_constructibleIDpT_EEEbE4typeELb1EEEDpOSE_.exit.i98

bb.af:                                            ; preds = %bb.ad
  %i.fe = atomicrmw volatile add ptr %i.bz, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES0_IS1_IfSaIfEEEjEEC2IJRS4_RS7_RjELb1ETnNSt9enable_ifIXclsr4_TCCIXT0_EEE29__is_implicitly_constructibleIDpT_EEEbE4typeELb1EEEDpOSE_.exit.i98

_ZNSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES0_IS1_IfSaIfEEEjEEC2IJRS4_RS7_RjELb1ETnNSt9enable_ifIXclsr4_TCCIXT0_EEE29__is_implicitly_constructibleIDpT_EEEbE4typeELb1EEEDpOSE_.exit.i98: ; preds = %bb.af, %bb.ae
  %.not10.i.i.i.i = icmp eq ptr %i.eg, %i.dq
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit24.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES0_IS1_IfSaIfEEEjEEC2IJRS4_RS7_RjELb1ETnNSt9enable_ifIXclsr4_TCCIXT0_EEE29__is_implicitly_constructibleIDpT_EEEbE4typeELb1EEEDpOSE_.exit.i98, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.fn, %.lr.ph.i.i.i.i ], [ %i.er, %_ZNSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES0_IS1_IfSaIfEEEjEEC2IJRS4_RS7_RjELb1ETnNSt9enable_ifIXclsr4_TCCIXT0_EEE29__is_implicitly_constructibleIDpT_EEEbE4typeELb1EEEDpOSE_.exit.i98 ] ; 4 uses
  %.0911.i.i.i.i = phi ptr [ %i.fm, %.lr.ph.i.i.i.i ], [ %i.eg, %_ZNSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES0_IS1_IfSaIfEEEjEEC2IJRS4_RS7_RjELb1ETnNSt9enable_ifIXclsr4_TCCIXT0_EEE29__is_implicitly_constructibleIDpT_EEEbE4typeELb1EEEDpOSE_.exit.i98 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !386)
  call void @llvm.experimental.noalias.scope.decl(metadata !389)
  %i.ff = load i32, ptr %.0911.i.i.i.i, align 4, !alias.scope !389, !noalias !386
  store i32 %i.ff, ptr %.012.i.i.i.i, align 4, !alias.scope !386, !noalias !389
  %i.fg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.fi = load <2 x ptr>, ptr %i.fh, align 8, !alias.scope !389, !noalias !386
  store <2 x ptr> %i.fi, ptr %i.fg, align 8, !alias.scope !386, !noalias !389
  %i.fj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %i.fk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24
  %i.fl = load <2 x ptr>, ptr %i.fk, align 8, !alias.scope !389, !noalias !386
  store <2 x ptr> %i.fl, ptr %i.fj, align 8, !alias.scope !386, !noalias !389
  store <4 x ptr> splat (ptr null), ptr %i.fh, align 8, !alias.scope !389, !noalias !386
  %i.fm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i99 = icmp eq ptr %i.fm, %i.dq
  br i1 %.not.i.i.i.i99, label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit24.i, label %.lr.ph.i.i.i.i, !llvm.loop !383

_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit24.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES0_IS1_IfSaIfEEEjEEC2IJRS4_RS7_RjELb1ETnNSt9enable_ifIXclsr4_TCCIXT0_EEE29__is_implicitly_constructibleIDpT_EEEbE4typeELb1EEEDpOSE_.exit.i98
  %.0.lcssa.i.i.i.i = phi ptr [ %i.er, %_ZNSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES0_IS1_IfSaIfEEEjEEC2IJRS4_RS7_RjELb1ETnNSt9enable_ifIXclsr4_TCCIXT0_EEE29__is_implicitly_constructibleIDpT_EEEbE4typeELb1EEEDpOSE_.exit.i98 ], [ %i.fn, %.lr.ph.i.i.i.i ]
  %i.fo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 40
  %.not.i25.i = icmp eq ptr %i.eg, null
  br i1 %.not.i25.i, label %.noexc59, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit24.i
  %i.fp = load ptr, ptr %i.o, align 8
  %i.fq = ptrtoint ptr %i.fp to i64
  %i.fr = sub i64 %i.fq, %i.ei
  call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef %i.fr) #29
  br label %.noexc59

.noexc59:                                         ; preds = %bb.ag, %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit24.i
  store ptr %i.er, ptr %0, align 8
  store ptr %i.fo, ptr %i.n, align 8
  %i.fs = getelementptr inbounds nuw [40 x i8], ptr %i.er, i64 %i.ep
  store ptr %i.fs, ptr %i.o, align 8
  br label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE12emplace_backIJRS4_RS7_RjEEERS8_DpOT_.exit

bb.ah:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ai:                                            ; preds = %bb.o
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %.body90

.loopexit134:                                     ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i, %_ZNKSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit136 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

.loopexit.split-lp135:                            ; preds = %.invoke
  %lpad.loopexit.split-lp137 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.aj:                                            ; preds = %.lr.ph, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %.0225 = phi i64 [ 0, %.lr.ph ], [ %i.ib, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ] ; 6 uses
  %i.fv = load ptr, ptr %i.cu, align 8
  %i.fw = load ptr, ptr %i.ct, align 8            ; 2 uses
  %i.fx = ptrtoint ptr %i.fv to i64
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = sub i64 %i.fx, %i.fy
  %i.ga = ashr exact i64 %i.fz, 3                 ; 2 uses
  %.not.i.i = icmp ult i64 %.0225, %i.ga
  br i1 %.not.i.i, label %bb.ak, label %.invoke532

.invoke532:                                       ; preds = %_ZNSt6vectorIlSaIlEE9push_backERKl.exit, %bb.aj
  %i.gb = phi i64 [ %i.ga, %bb.aj ], [ %i.hd, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.229, i64 noundef %.0225, i64 noundef %i.gb) #31
          to label %.cont533 unwind label %.loopexit.split-lp

.cont533:                                         ; preds = %.invoke532
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %.0225
  %i.gd = load i64, ptr %i.gc, align 8            ; 4 uses
  %.not = icmp slt i64 %i.gd, %i.j
  %.not38 = icmp sgt i64 %i.gd, %i.k
  %or.cond = select i1 %.not, i1 true, i1 %.not38
  br i1 %or.cond, label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ge = load ptr, ptr %i.dm, align 8            ; 3 uses
  %i.gf = load ptr, ptr %i.dd, align 8
  %.not.i61 = icmp eq ptr %i.ge, %i.gf
  br i1 %.not.i61, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i64 %i.gd, ptr %i.ge, align 8
  %i.gg = load ptr, ptr %i.dm, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store ptr %i.gh, ptr %i.dm, align 8
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit

bb.an:                                            ; preds = %bb.al
  %i.gi = load ptr, ptr %i.bl, align 8            ; 4 uses
  %i.gj = ptrtoint ptr %i.ge to i64
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = sub i64 %i.gj, %i.gk                    ; 6 uses
  %i.gm = icmp eq i64 %i.gl, 9223372036854775800
  br i1 %i.gm, label %.invoke534, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i

.invoke534:                                       ; preds = %bb.as, %bb.an
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.224) #31
          to label %.cont535 unwind label %.loopexit.split-lp

.cont535:                                         ; preds = %.invoke534
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.an
  %i.gn = ashr exact i64 %i.gl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.gn, i64 1)
  %i.go = add nsw i64 %.sroa.speculated.i.i.i, %i.gn ; 2 uses
  %i.gp = icmp ult i64 %i.go, %i.gn
  %i.gq = call i64 @llvm.umin.i64(i64 %i.go, i64 1152921504606846975)
  %i.gr = select i1 %i.gp, i64 1152921504606846975, i64 %i.gq ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.gr, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.gs = shl nuw nsw i64 %i.gr, 3
  %i.gt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gs) #30
          to label %.noexc63 unwind label %.loopexit ; 4 uses

.noexc63:                                         ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
  %i.gu = getelementptr inbounds i8, ptr %i.gt, i64 %i.gl ; 2 uses
  store i64 %i.gd, ptr %i.gu, align 8
  %i.gv = icmp sgt i64 %i.gl, 0
  br i1 %i.gv, label %bb.ao, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i

bb.ao:                                            ; preds = %.noexc63
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gt, ptr align 8 %i.gi, i64 %i.gl, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i: ; preds = %bb.ao, %.noexc63
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %.not.i17.i.i = icmp eq ptr %i.gi, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gi, i64 noundef %i.gl) #29
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i: ; preds = %bb.ap, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i
  store ptr %i.gt, ptr %i.bl, align 8
  store ptr %i.gw, ptr %i.dm, align 8
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.gr
  store ptr %i.gx, ptr %i.dd, align 8
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit

_ZNSt6vectorIlSaIlEE9push_backERKl.exit:          ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i, %bb.am
  %i.gy = load ptr, ptr %i.do, align 8
  %i.gz = load ptr, ptr %i.dn, align 8            ; 2 uses
  %i.ha = ptrtoint ptr %i.gy to i64
  %i.hb = ptrtoint ptr %i.gz to i64
  %i.hc = sub i64 %i.ha, %i.hb
  %i.hd = ashr exact i64 %i.hc, 2                 ; 2 uses
  %.not.i.i64 = icmp ult i64 %.0225, %i.hd
  br i1 %.not.i.i64, label %bb.aq, label %.invoke532

bb.aq:                                            ; preds = %_ZNSt6vectorIlSaIlEE9push_backERKl.exit
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %.0225 ; 2 uses
  %i.hf = load ptr, ptr %i.dp, align 8            ; 3 uses
  %i.hg = load ptr, ptr %i.dh, align 8
  %.not.i66 = icmp eq ptr %i.hf, %i.hg
  br i1 %.not.i66, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hh = load float, ptr %i.he, align 4
  store float %i.hh, ptr %i.hf, align 4
  %i.hi = load ptr, ptr %i.dp, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  store ptr %i.hj, ptr %i.dp, align 8
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

bb.as:                                            ; preds = %bb.aq
  %i.hk = load ptr, ptr %i.cc, align 8            ; 4 uses
  %i.hl = ptrtoint ptr %i.hf to i64
  %i.hm = ptrtoint ptr %i.hk to i64
  %i.hn = sub i64 %i.hl, %i.hm                    ; 6 uses
  %i.ho = icmp eq i64 %i.hn, 9223372036854775804
  br i1 %i.ho, label %.invoke534, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.as
  %i.hp = ashr exact i64 %i.hn, 2                 ; 3 uses
  %.sroa.speculated.i.i.i67 = call i64 @llvm.umax.i64(i64 %i.hp, i64 1)
  %i.hq = add nsw i64 %.sroa.speculated.i.i.i67, %i.hp ; 2 uses
  %i.hr = icmp ult i64 %i.hq, %i.hp
  %i.hs = call i64 @llvm.umin.i64(i64 %i.hq, i64 2305843009213693951)
  %i.ht = select i1 %i.hr, i64 2305843009213693951, i64 %i.hs ; 3 uses
  %.not.i.i.i68 = icmp ne i64 %i.ht, 0
  call void @llvm.assume(i1 %.not.i.i.i68)
  %i.hu = shl nuw nsw i64 %i.ht, 2
  %i.hv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hu) #30
          to label %.noexc71 unwind label %.loopexit ; 4 uses

.noexc71:                                         ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %i.hw = getelementptr inbounds i8, ptr %i.hv, i64 %i.hn ; 2 uses
  %i.hx = load float, ptr %i.he, align 4
  store float %i.hx, ptr %i.hw, align 4
  %i.hy = icmp sgt i64 %i.hn, 0
  br i1 %i.hy, label %bb.at, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

bb.at:                                            ; preds = %.noexc71
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hv, ptr align 4 %i.hk, i64 %i.hn, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i: ; preds = %bb.at, %.noexc71
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  %.not.i17.i.i69 = icmp eq ptr %i.hk, null
  br i1 %.not.i17.i.i69, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.hk, i64 noundef %i.hn) #29
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i: ; preds = %bb.au, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  store ptr %i.hv, ptr %i.cc, align 8
  store ptr %i.hz, ptr %i.dp, align 8
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.ht
  store ptr %i.ia, ptr %i.dh, align 8
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

.loopexit.split-lp:                               ; preds = %.invoke534, %.invoke532
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

_ZNSt6vectorIfSaIfEE9push_backERKf.exit:          ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, %bb.ar, %bb.ak
  %i.ib = add nuw i64 %.0225, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.ib, %i.da
  br i1 %exitcond.not, label %._crit_edge, label %bb.aj, !llvm.loop !391

_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE12emplace_backIJRS4_RS7_RjEEERS8_DpOT_.exit: ; preds = %_ZNSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES0_IS1_IfSaIfEEEjEEC2IJRS4_RS7_RjELb1ETnNSt9enable_ifIXclsr4_TCCIXT0_EEE29__is_implicitly_constructibleIDpT_EEEbE4typeELb1EEEDpOSE_.exit.i, %.noexc59
  %i.ic = load atomic i64, ptr %i.cq acquire, align 8 ; 2 uses
  %i.id = icmp eq i64 %i.ic, 4294967297
  %i.ie = trunc i64 %i.ic to i32                  ; 2 uses
  br i1 %i.id, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE12emplace_backIJRS4_RS7_RjEEERS8_DpOT_.exit
  store i32 0, ptr %i.cq, align 8
  store i32 0, ptr %i.cr, align 4
  %i.if = load ptr, ptr %i.cd, align 8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.ih = load ptr, ptr %i.ig, align 8
  call void %i.ih(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #27, !inline_history !384
  %i.ii = load ptr, ptr %i.cd, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 24
  %i.ik = load ptr, ptr %i.ij, align 8
  call void %i.ik(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #27, !inline_history !384
  br label %_ZNSt12__shared_ptrISt6vectorIfSaIfEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aw:                                            ; preds = %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE12emplace_backIJRS4_RS7_RjEEERS8_DpOT_.exit
  %i.il = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i73 = icmp eq i8 %i.il, 0
  br i1 %.not.i.i.i73, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.im = add nsw i32 %i.ie, -1
  store i32 %i.im, ptr %i.cq, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ay:                                            ; preds = %bb.aw
  %i.in = atomicrmw volatile add ptr %i.cq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i = phi i32 [ %i.ie, %bb.ax ], [ %i.in, %bb.ay ]
  %i.io = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.io, label %bb.az, label %_ZNSt12__shared_ptrISt6vectorIfSaIfEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !91

bb.az:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #27
  br label %_ZNSt12__shared_ptrISt6vectorIfSaIfEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrISt6vectorIfSaIfEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.av
  %i.ip = load atomic i64, ptr %i.bz acquire, align 8 ; 2 uses
  %i.iq = icmp eq i64 %i.ip, 4294967297
  %i.ir = trunc i64 %i.ip to i32                  ; 2 uses
  br i1 %i.iq, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %_ZNSt12__shared_ptrISt6vectorIfSaIfEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store i32 0, ptr %i.bz, align 8
  store i32 0, ptr %i.ca, align 4
  %i.is = load ptr, ptr %i.bm, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.iu = load ptr, ptr %i.it, align 8
  call void %i.iu(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #27, !inline_history !385
  %i.iv = load ptr, ptr %i.bm, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 24
  %i.ix = load ptr, ptr %i.iw, align 8
  call void %i.ix(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #27, !inline_history !385
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA67_KcEEEvDpOT_.exit

bb.bb:                                            ; preds = %_ZNSt12__shared_ptrISt6vectorIfSaIfEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.iy = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i75 = icmp eq i8 %i.iy, 0
  br i1 %.not.i.i.i75, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.iz = add nsw i32 %i.ir, -1
  store i32 %i.iz, ptr %i.bz, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i76

bb.bd:                                            ; preds = %bb.bb
  %i.ja = atomicrmw volatile add ptr %i.bz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i76

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i76: ; preds = %bb.bd, %bb.bc
  %.0.i.i.i.i77 = phi i32 [ %i.ir, %bb.bc ], [ %i.ja, %bb.bd ]
  %i.jb = icmp eq i32 %.0.i.i.i.i77, 1
  br i1 %i.jb, label %bb.be, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA67_KcEEEvDpOT_.exit, !prof !91

bb.be:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i76
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #27
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA67_KcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA67_KcEEEvDpOT_.exit: ; preds = %bb.be, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i76, %bb.ba, %.noexc51, %.noexc
  %i.jc = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0120.0227) #28 ; 2 uses
  %.not132 = icmp eq ptr %i.jc, %i.u
  br i1 %.not132, label %._crit_edge231, label %.lr.ph230

bb.bf:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit134, %.loopexit.split-lp135
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp137, %.loopexit.split-lp135 ], [ %lpad.loopexit136, %.loopexit134 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 3 uses
  %i.jd = load atomic i64, ptr %i.cq acquire, align 8 ; 2 uses
  %i.je = icmp eq i64 %i.jd, 4294967297
  %i.jf = trunc i64 %i.jd to i32                  ; 2 uses
  br i1 %i.je, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 0, ptr %i.cq, align 8
  store i32 0, ptr %i.cr, align 4
  %i.jg = load ptr, ptr %i.cd, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  %i.ji = load ptr, ptr %i.jh, align 8
  call void %i.ji(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #27, !inline_history !384
  %i.jj = load ptr, ptr %i.cd, align 8
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 24
  %i.jl = load ptr, ptr %i.jk, align 8
  call void %i.jl(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #27, !inline_history !384
  br label %.body90

bb.bh:                                            ; preds = %bb.bf
  %i.jm = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i79 = icmp eq i8 %i.jm, 0
  br i1 %.not.i.i.i79, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jn = add nsw i32 %i.jf, -1
  store i32 %i.jn, ptr %i.cq, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i80

bb.bj:                                            ; preds = %bb.bh
  %i.jo = atomicrmw volatile add ptr %i.cq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i80

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i80: ; preds = %bb.bj, %bb.bi
  %.0.i.i.i.i81 = phi i32 [ %i.jf, %bb.bi ], [ %i.jo, %bb.bj ]
  %i.jp = icmp eq i32 %.0.i.i.i.i81, 1
  br i1 %i.jp, label %bb.bk, label %.body90, !prof !91

bb.bk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i80
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #27
  br label %.body90

.body90:                                          ; preds = %bb.s, %bb.ai, %bb.bg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i80, %bb.bk
  %.pn.pn = phi { ptr, i32 } [ %i.cn, %bb.s ], [ %i.fu, %bb.ai ], [ %.pn, %bb.bg ], [ %.pn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i80 ], [ %.pn, %bb.bk ] ; 3 uses
  %i.jq = load atomic i64, ptr %i.bz acquire, align 8 ; 2 uses
  %i.jr = icmp eq i64 %i.jq, 4294967297
  %i.js = trunc i64 %i.jq to i32                  ; 2 uses
  br i1 %i.jr, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %.body90
  store i32 0, ptr %i.bz, align 8
  store i32 0, ptr %i.ca, align 4
  %i.jt = load ptr, ptr %i.bm, align 8
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.jv = load ptr, ptr %i.ju, align 8
  call void %i.jv(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #27, !inline_history !385
  %i.jw = load ptr, ptr %i.bm, align 8
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 24
  %i.jy = load ptr, ptr %i.jx, align 8
  call void %i.jy(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #27, !inline_history !385
  br label %.body

bb.bm:                                            ; preds = %.body90
  %i.jz = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i84 = icmp eq i8 %i.jz, 0
  br i1 %.not.i.i.i84, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ka = add nsw i32 %i.js, -1
  store i32 %i.ka, ptr %i.bz, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85

bb.bo:                                            ; preds = %bb.bm
  %i.kb = atomicrmw volatile add ptr %i.bz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85: ; preds = %bb.bo, %bb.bn
  %.0.i.i.i.i86 = phi i32 [ %i.js, %bb.bn ], [ %i.kb, %bb.bo ]
  %i.kc = icmp eq i32 %.0.i.i.i.i86, 1
  br i1 %i.kc, label %bb.bp, label %.body, !prof !91

bb.bp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #27
  br label %.body

.body:                                            ; preds = %bb.f, %bb.l, %bb.ah, %bb.bl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85, %bb.bp, %bb.g, %bb.c
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.p, %bb.c ], [ %i.w, %bb.f ], [ %i.al, %bb.g ], [ %i.bw, %bb.l ], [ %i.ft, %bb.ah ], [ %.pn.pn, %bb.bl ], [ %.pn.pn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85 ], [ %.pn.pn, %bb.bp ]
  %i.kd = load ptr, ptr %0, align 8
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES3_IS4_IfSaIfEEEjEEEEvT_SD_(ptr noundef %i.kd, ptr noundef %i.kf)
          to label %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i unwind label %bb.br

_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i: ; preds = %.body
  %i.kg = load ptr, ptr %0, align 8               ; 3 uses
  %.not.i.i.i88 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i.i88, label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit, label %bb.bq

bb.bq:                                            ; preds = %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ki = load ptr, ptr %i.kh, align 8
  %i.kj = ptrtoint ptr %i.ki to i64
  %i.kk = ptrtoint ptr %i.kg to i64
  %i.kl = sub i64 %i.kj, %i.kk
  call void @_ZdlPvm(ptr noundef nonnull %i.kg, i64 noundef %i.kl) #29
  br label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit

bb.br:                                            ; preds = %.body
  %i.km = landingpad { ptr, i32 }
          catch ptr null
  %i.kn = extractvalue { ptr, i32 } %i.km, 0
  call void @__clang_call_terminate(ptr %i.kn) #32
  unreachable

_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i, %bb.bq
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX12FBXConverter15InterpolateKeysEP11aiVectorKeyRKSt6vectorIlSaIlEERKS4_ISt5tupleIJSt10shared_ptrIS6_ESA_IS4_IfSaIfEEEjEESaISF_EERK10aiVector3tIfERdSO_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(529) %0, ptr noundef captures(none) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(12) %4, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %5, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::vector.311", align 8   ; 11 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [3 x float], align 8              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = load ptr, ptr %3, align 8                ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 40                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 0, ptr %i.a, align 4
  %.not162 = icmp eq ptr %i.d, %i.e
  br i1 %.not162, label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr null, i64 noundef %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit unwind label %bb.p

_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit:            ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.j = load ptr, ptr %2, align 8                ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %.not95110 = icmp eq ptr %i.j, %i.l
  br i1 %.not95110, label %._crit_edge114, label %.lr.ph113

.lr.ph113:                                        ; preds = %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.d, %i.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  br i1 %.not, label %.lr.ph113.split, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph113, %._crit_edge.us
  %.0112.us = phi ptr [ %i.ct, %._crit_edge.us ], [ %1, %.lr.ph113 ] ; 5 uses
  %.sroa.092.0111.us = phi ptr [ %i.cu, %._crit_edge.us ], [ %i.j, %.lr.ph113 ] ; 2 uses
  %i.p = load i64, ptr %.sroa.092.0111.us, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.q = load <2 x float>, ptr %4, align 4
  store <2 x float> %i.q, ptr %i.b, align 8
  %i.r = load float, ptr %i.n, align 4
  store float %i.r, ptr %i.m, align 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.us, %bb.n
  %.067109.us = phi i64 [ 0, %.lr.ph.us ], [ %i.cd, %bb.n ] ; 4 uses
  %i.s = load ptr, ptr %3, align 8
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %i.s, i64 %.067109.us ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = load ptr, ptr %i.v, align 8              ; 3 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 3                 ; 3 uses
  %i.ad = icmp eq ptr %i.x, %i.y
  br i1 %i.ad, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %7, align 8
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.067109.us ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4            ; 4 uses
  %i.ah = zext i32 %i.ag to i64                   ; 4 uses
  %i.ai = icmp ugt i64 %i.ac, %i.ah
  br i1 %i.ai, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ah
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = icmp eq i64 %i.ak, %i.p
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.am = add i32 %i.ag, 1
  store i32 %i.am, ptr %i.af, align 4
  %.pre = load ptr, ptr %7, align 8
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %.067109.us
  %.pre142 = load i32, ptr %.phi.trans.insert, align 4 ; 2 uses
  %.pre143 = zext i32 %.pre142 to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.pre-phi = phi i64 [ %.pre143, %bb.f ], [ %i.ah, %bb.e ], [ %i.ah, %bb.d ] ; 2 uses
  %i.an = phi i32 [ %.pre142, %bb.f ], [ %i.ag, %bb.e ], [ %i.ag, %bb.d ]
  %narrow.us = call i32 @llvm.usub.sat.i32(i32 %i.an, i32 1)
  %i.ao = zext i32 %narrow.us to i64              ; 6 uses
  %i.ap = icmp eq i64 %i.ac, %.pre-phi
  %i.aq = add nsw i64 %i.ac, -1
  %i.ar = select i1 %i.ap, i64 %i.aq, i64 %.pre-phi ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = load ptr, ptr %i.at, align 8            ; 3 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = ashr exact i64 %i.az, 2                 ; 4 uses
  %.not.i.i79.us = icmp ugt i64 %i.ba, %i.ao
  br i1 %.not.i.i79.us, label %bb.h, label %.split.us

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ao
  %i.bc = load float, ptr %i.bb, align 4          ; 2 uses
  %.not.i.i81.us = icmp ult i64 %i.ar, %i.ba
  br i1 %.not.i.i81.us, label %bb.i, label %.split117.us

bb.i:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ar
  %i.be = load float, ptr %i.bd, align 4
  %i.bf = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = load ptr, ptr %i.bf, align 8            ; 3 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 3                 ; 4 uses
  %.not.i.i84.us = icmp ugt i64 %i.bm, %i.ao
  br i1 %.not.i.i84.us, label %bb.j, label %.split121.us

bb.j:                                             ; preds = %bb.i
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.ao
  %i.bo = load i64, ptr %i.bn, align 8            ; 3 uses
  %.not.i.i87.us = icmp ult i64 %i.ar, %i.bm
  br i1 %.not.i.i87.us, label %bb.k, label %.split125.us

bb.k:                                             ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.ar
  %i.bq = load i64, ptr %i.bp, align 8            ; 2 uses
  %i.br = icmp eq i64 %i.bq, %i.bo
  br i1 %i.br, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bs = sub nsw i64 %i.p, %i.bo
  %i.bt = sitofp i64 %i.bs to float
  %i.bu = sub nsw i64 %i.bq, %i.bo
  %i.bv = sitofp i64 %i.bu to float
  %i.bw = fdiv float %i.bt, %i.bv
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bx = phi float [ %i.bw, %bb.l ], [ 0.000000e+00, %bb.k ]
  %i.by = fsub float %i.be, %i.bc
  %i.bz = call float @llvm.fmuladd.f32(float %i.by, float %i.bx, float %i.bc)
  %i.ca = load i32, ptr %i.t, align 4
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cb
  store float %i.bz, ptr %i.cc, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.c
  %i.cd = add nuw i64 %.067109.us, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.cd, %i.i
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c, !llvm.loop !392

._crit_edge.us:                                   ; preds = %bb.n
  %i.ce = sitofp i64 %i.p to double
  %i.cf = fdiv nnan double %i.ce, f0x422581D1AF600000
  %i.cg = load double, ptr %i.o, align 8
  %i.ch = fmul double %i.cf, %i.cg                ; 3 uses
  store double %i.ch, ptr %.0112.us, align 8
  %i.ci = load double, ptr %6, align 8            ; 2 uses
  %i.cj = fcmp olt double %i.ch, %i.ci
  %i.ck = select i1 %i.cj, double %i.ch, double %i.ci
  store double %i.ck, ptr %6, align 8
  %i.cl = load double, ptr %5, align 8            ; 2 uses
  %i.cm = load double, ptr %.0112.us, align 8     ; 2 uses
  %i.cn = fcmp olt double %i.cl, %i.cm
  %i.co = select i1 %i.cn, double %i.cm, double %i.cl
  store double %i.co, ptr %5, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %.0112.us, i64 8
  %i.cq = load <2 x float>, ptr %i.b, align 8
  store <2 x float> %i.cq, ptr %i.cp, align 8
  %i.cr = load float, ptr %i.m, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %.0112.us, i64 16
  store float %i.cr, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %.0112.us, i64 24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.092.0111.us, i64 8 ; 2 uses
  %.not95.us = icmp eq ptr %i.cu, %i.l
  br i1 %.not95.us, label %._crit_edge114, label %.lr.ph.us

._crit_edge114:                                   ; preds = %._crit_edge.us, %.lr.ph113.split, %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit
  %i.cv = load ptr, ptr %7, align 8               ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge114
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = sub i64 %i.cy, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.da) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %._crit_edge114, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  ret void

bb.p:                                             ; preds = %bb.b
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.v

.lr.ph113.split:                                  ; preds = %.lr.ph113, %.lr.ph113.split
  %.0112 = phi ptr [ %i.ds, %.lr.ph113.split ], [ %1, %.lr.ph113 ] ; 5 uses
  %.sroa.092.0111 = phi ptr [ %i.dt, %.lr.ph113.split ], [ %i.j, %.lr.ph113 ] ; 2 uses
  %i.dc = load i64, ptr %.sroa.092.0111, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.dd = load float, ptr %i.n, align 4
  %i.de = sitofp i64 %i.dc to double
  %i.df = fdiv nnan double %i.de, f0x422581D1AF600000
  %i.dg = load double, ptr %i.o, align 8
  %i.dh = fmul double %i.df, %i.dg                ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.0112, i64 8
  %i.dj = load <2 x float>, ptr %4, align 4
  store double %i.dh, ptr %.0112, align 8
  %i.dk = load double, ptr %6, align 8            ; 2 uses
  %i.dl = fcmp olt double %i.dh, %i.dk
  %i.dm = select i1 %i.dl, double %i.dh, double %i.dk
  store double %i.dm, ptr %6, align 8
  %i.dn = load double, ptr %5, align 8            ; 2 uses
  %i.do = load double, ptr %.0112, align 8        ; 2 uses
  %i.dp = fcmp olt double %i.dn, %i.do
  %i.dq = select i1 %i.dp, double %i.do, double %i.dn
  store double %i.dq, ptr %5, align 8
  store <2 x float> %i.dj, ptr %i.di, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %.0112, i64 16
  store float %i.dd, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %.0112, i64 24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.092.0111, i64 8 ; 2 uses
  %.not95 = icmp eq ptr %i.dt, %i.l
  br i1 %.not95, label %._crit_edge114, label %.lr.ph113.split

.split.us:                                        ; preds = %bb.g
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.229, i64 noundef %i.ao, i64 noundef %i.ba) #31
          to label %.noexc80 unwind label %bb.q

.noexc80:                                         ; preds = %.split.us
  unreachable

.split117.us:                                     ; preds = %bb.h
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.229, i64 noundef %i.ar, i64 noundef %i.ba) #31
          to label %.noexc82 unwind label %bb.r

.noexc82:                                         ; preds = %.split117.us
  unreachable

.split121.us:                                     ; preds = %bb.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.229, i64 noundef %i.ao, i64 noundef %i.bm) #31
          to label %.noexc85 unwind label %bb.s

.noexc85:                                         ; preds = %.split121.us
  unreachable

.split125.us:                                     ; preds = %bb.j
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.229, i64 noundef %i.ar, i64 noundef %i.bm) #31
          to label %.noexc88 unwind label %bb.t

.noexc88:                                         ; preds = %.split125.us
  unreachable

bb.q:                                             ; preds = %.split.us
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.r:                                             ; preds = %.split117.us
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.s:                                             ; preds = %.split121.us
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %.split125.us
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %bb.q, %bb.s, %bb.t, %bb.r
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dw, %bb.s ], [ %i.du, %bb.q ], [ %i.dv, %bb.r ], [ %i.dx, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.p
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.u ], [ %i.db, %bb.p ]
  %i.dy = load ptr, ptr %7, align 8               ; 3 uses
  %.not.i.i.i90 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i90, label %_ZNSt6vectorIjSaIjEED2Ev.exit91, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dz = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = ptrtoint ptr %i.dy to i64
  %i.ed = sub i64 %i.eb, %i.ec
  call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef %i.ed) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit91

_ZNSt6vectorIjSaIjEED2Ev.exit91:                  ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX12FBXConverter15InterpolateKeysEP9aiQuatKeyRKSt6vectorIlSaIlEERKS4_ISt5tupleIJSt10shared_ptrIS6_ESA_IS4_IfSaIfEEEjEESaISF_EERK10aiVector3tIfERdSO_NS0_5Model8RotOrderE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(529) %0, ptr noundef writeonly captures(none) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(12) %4, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %5, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %6, i32 noundef %7) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %class.aiMatrix4x4t, align 4        ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %2, align 8                ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3                   ; 2 uses
  %i.h = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.g, i64 24) ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.h, 1
  %i.j = extractvalue { i64, i1 } %i.h, 0
  %i.k = select i1 %i.i, i64 -1, i64 %i.j
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #30 ; 6 uses
  %i.m = icmp eq ptr %i.b, %i.c
  br i1 %i.m, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds [24 x i8], ptr %i.l, i64 %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.l, %bb.b ], [ %i.q, %bb.c ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.n
  br i1 %i.r, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.c, %bb.a
  invoke void @_ZN6Assimp3FBX12FBXConverter15InterpolateKeysEP11aiVectorKeyRKSt6vectorIlSaIlEERKS4_ISt5tupleIJSt10shared_ptrIS6_ESA_IS4_IfSaIfEEEjEESaISF_EERK10aiVector3tIfERdSO_(ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef nonnull %i.l, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.d unwind label %bb.e
end_hunk_8
begin_hunk_9_@_Z12ai_to_stringIjENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_:bb.a
  store ptr %i.c, ptr %0, align 8, !alias.scope !408
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !alias.scope !408
  store i8 0, ptr %i.c, align 8, !alias.scope !408
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !noalias !408 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !408 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSolsEj.exit
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !noalias !408 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !alias.scope !408 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !alias.scope !408
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #29
  br label %.body

bb.d:                                             ; preds = %_ZNSolsEj.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %2, align 8
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.af = load i64, ptr %i.ad, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #29
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #27
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ai) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

bb.e:                                             ; preds = %bb.a
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.e ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.p, %bb.c ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX20ConvertToAssimpSceneEP7aiSceneRKNS0_8DocumentEb(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(368) %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.Assimp::FBX::FBXConverter", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @_ZN6Assimp3FBX12FBXConverterC2EP7aiSceneRKNS0_8DocumentEb(ptr noundef nonnull align 8 dereferenceable(529) %3, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(368) %1, i1 noundef zeroext %2)
  call void @_ZN6Assimp3FBX12FBXConverterD2Ev(ptr noundef nonnull align 8 dead_on_return(529) dereferenceable(529) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_P6aiBoneESt10_Select1stISA_ESt4lessIS6_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_P6aiBoneESt10_Select1stISA_ESt4lessIS6_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_P6aiBoneESt10_Select1stISA_ESt4lessIS6_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_P6aiBoneESt10_Select1stISA_ESt4lessIS6_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_P6aiBoneESt10_Select1stISA_ESt4lessIS6_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #29
  br label %_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_P6aiBoneESt10_Select1stISA_ESt4lessIS6_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit

_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_P6aiBoneESt10_Select1stISA_ESt4lessIS6_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 72) #29
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !409

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_P6aiBoneESt10_Select1stISA_ESt4lessIS6_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #20

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

declare noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #12

; Function Attrs: nounwind
declare void @_ZN6aiNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(1144) dereferenceable(1144)) unnamed_addr #15

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN6Assimp3FBX8PropertyEEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not5.i = icmp eq ptr %i.b, null
  br i1 %.not5.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN6Assimp3FBX8PropertyEEELb1EEEEE19_M_deallocate_nodesEPSG_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN6Assimp3FBX8PropertyEEELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i
  %.06.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN6Assimp3FBX8PropertyEEELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i ], [ %i.b, %bb.a ] ; 5 uses
  %i.c = load ptr, ptr %.06.i, align 8            ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i, i64 48
  %i.f = load ptr, ptr %i.e, align 8              ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIN6Assimp3FBX8PropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4
  %i.l = load ptr, ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #27, !inline_history !410
  %i.o = load ptr, ptr %i.f, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #27, !inline_history !410
  br label %_ZNSt12__shared_ptrIN6Assimp3FBX8PropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.j, %bb.e ], [ %i.t, %bb.f ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.g, label %_ZNSt12__shared_ptrIN6Assimp3FBX8PropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, !prof !91

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #27
  br label %_ZNSt12__shared_ptrIN6Assimp3FBX8PropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

_ZNSt12__shared_ptrIN6Assimp3FBX8PropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.c, %.lr.ph.i
  %i.v = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.06.i, i64 24 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN6Assimp3FBX8PropertyEEELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN6Assimp3FBX8PropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %i.y = load i64, ptr %i.w, align 8
  %i.z = add i64 %i.y, 1
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #29
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN6Assimp3FBX8PropertyEEELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN6Assimp3FBX8PropertyEEELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i: ; preds = %_ZNSt12__shared_ptrIN6Assimp3FBX8PropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i, i64 noundef 64) #29
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN6Assimp3FBX8PropertyEEELb1EEEEE19_M_deallocate_nodesEPSG_.exit, label %.lr.ph.i, !llvm.loop !411

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN6Assimp3FBX8PropertyEEELb1EEEEE19_M_deallocate_nodesEPSG_.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN6Assimp3FBX8PropertyEEELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i, %bb.a
  %i.aa = load ptr, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = shl i64 %i.ac, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aa, i8 0, i64 %i.ad, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #27, !inline_history !412
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4              ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #27, !inline_history !412
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIP6aiMeshSt4pairIKS1_PSt6vectorIP14aiSkeletonBoneSaIS6_EEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeIP6aiMeshSt4pairIKS1_PSt6vectorIP14aiSkeletonBoneSaIS6_EEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #29
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !413

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #29
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !414

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #29
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !415

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @aiGetMaterialIntegerArray(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt3mapIlP12morphKeyDataSt4lessIlESaIS6_IKlSA_EEEESt10_Select1stISI_ESB_IS5_ESaISI_EE8_M_eraseEPSt13_Rb_tree_nodeISI_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt3mapIlP12morphKeyDataSt4lessIlESaIS6_IKlSA_EEEESt10_Select1stISI_ESB_IS5_ESaISI_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISI_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt3mapIlP12morphKeyDataSt4lessIlESaIS6_IKlSA_EEEESt10_Select1stISI_ESB_IS5_ESaISI_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISI_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt3mapIlP12morphKeyDataSt4lessIlESaIS6_IKlSA_EEEESt10_Select1stISI_ESB_IS5_ESaISI_EE8_M_eraseEPSt13_Rb_tree_nodeISI_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt3mapIlP12morphKeyDataSt4lessIlESaIS6_IKlSA_EEEESt10_Select1stISI_ESB_IS5_ESaISI_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISI_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #29
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt3mapIlP12morphKeyDataSt4lessIlESaIS6_IKlSA_EEEESt10_Select1stISI_ESB_IS5_ESaISI_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISI_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt3mapIlP12morphKeyDataSt4lessIlESaIS6_IKlSA_EEEESt10_Select1stISI_ESB_IS5_ESaISI_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISI_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 72) #29
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !416

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt3mapIlP12morphKeyDataSt4lessIlESaIS6_IKlSA_EEEESt10_Select1stISI_ESB_IS5_ESaISI_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISI_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIPKN6Assimp3FBX18AnimationCurveNodeESt4pairIKS4_PKNS1_14AnimationLayerEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeIPKN6Assimp3FBX18AnimationCurveNodeESt4pairIKS4_PKNS1_14AnimationLayerEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #29
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !417
end_hunk_9
begin_hunk_10_@_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_jESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_:bb.a
  %i.v = load ptr, ptr %.0.us.i.i, align 8        ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.v, null
  br i1 %.not18.us.i.i, label %.loopexit26, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = urem i64 %i.x, %i.h
  %.not19.us.i.i = icmp eq i64 %i.y, %i.i
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %.loopexit26, !llvm.loop !551

.split.i.i:                                       ; preds = %bb.c, %bb.g
  %i.z = phi i64 [ %i.aj, %bb.g ], [ %.pre26.i.i, %bb.c ]
  %.0.i.i = phi ptr [ %i.ah, %bb.g ], [ %i.m, %bb.c ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.ab = icmp eq i64 %i.d, %i.z
  br i1 %i.ab, label %bb.f, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i

bb.f:                                             ; preds = %.split.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = icmp eq i64 %.fr22.i.i, %i.ad
  br i1 %i.ae, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i: ; preds = %bb.f
  %i.af = load ptr, ptr %i.aa, align 8
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.p, ptr %i.af, i64 %.fr22.i.i)
  %i.ag = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.ag, label %.loopexit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i, %bb.f, %.split.i.i
  %i.ah = load ptr, ptr %.0.i.i, align 8          ; 3 uses
  %.not18.i.i = icmp eq ptr %i.ah, null
  br i1 %.not18.i.i, label %.loopexit26, label %bb.g

bb.g:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ak = urem i64 %i.aj, %i.h
  %.not19.i.i = icmp eq i64 %i.ak, %i.i
  br i1 %.not19.i.i, label %.split.i.i, label %.loopexit26, !llvm.loop !551

.loopexit26:                                      ; preds = %bb.g, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i, %bb.e, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_jENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %1, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %0, ptr %2, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.am = call noundef ptr @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjELb1EEEEE16_M_allocate_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS9_EESI_IJEEEEEPSB_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) ; 2 uses
  store ptr %i.am, ptr %i.al, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.an = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSA_10_Hash_nodeIS8_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.i, i64 noundef %i.d, ptr noundef %i.am, i64 noundef 1)
          to label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %bb.h

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %.loopexit26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %.loopexit

bb.h:                                             ; preds = %.loopexit26
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %i.ao

.loopexit:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i, %bb.d, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit
  %.pn = phi ptr [ %i.an, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %.0.us.i.i, %bb.d ], [ %.0.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i ]
  %.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 40
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjELb1EEEEE16_M_allocate_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS9_EESI_IJEEEEEPSB_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #30 ; 7 uses
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load i64, ptr %2, align 8
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.f, ptr %i.c, align 8
  %i.g = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load i64, ptr %i.h, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.i, ptr %i.a, align 8
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(36) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.k, ptr %i.c, align 8
  %i.l = load i64, ptr %i.a, align 8
  store i64 %i.l, ptr %i.f, align 8
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %bb.a
  %i.m = phi ptr [ %i.k, %.noexc ], [ %i.f, %bb.a ] ; 2 uses
  switch i64 %i.i, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.n = load i8, ptr %i.g, align 1
  store i8 %i.n, ptr %i.m, align 1
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.o = load i64, ptr %i.a, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.o, ptr %i.p, align 8
  %i.q = load ptr, ptr %i.c, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 0, ptr %i.s, align 8
  ret ptr %i.b

bb.e:                                             ; preds = %.noexc.i.i.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  %i.v = call ptr @__cxa_begin_catch(ptr %i.u) #27 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 56) #29
  invoke void @__cxa_rethrow() #31
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.w

bb.h:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #32
  unreachable

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES3_IS4_IfSaIfEEEjEEEEvT_SD_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4 = icmp eq ptr %0, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyISt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEEEvPT_.exit
  %.05 = phi ptr [ %i.ai, %_ZSt8_DestroyISt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEEEvPT_.exit ], [ %0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_Head_baseILm0ESt10shared_ptrISt6vectorIlSaIlEEELb0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !734
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !734
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrISt6vectorIlSaIlEEELb0EED2Ev.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt10_Head_baseILm0ESt10shared_ptrISt6vectorIlSaIlEEELb0EED2Ev.exit.i.i, !prof !91

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrISt6vectorIlSaIlEEELb0EED2Ev.exit.i.i

_ZNSt10_Head_baseILm0ESt10shared_ptrISt6vectorIlSaIlEEELb0EED2Ev.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.c, %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %.05, i64 16
  %i.s = load ptr, ptr %i.r, align 8              ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZSt8_DestroyISt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEEEvPT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrISt6vectorIlSaIlEEELb0EED2Ev.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4
  %i.y = load ptr, ptr %i.s, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #27, !inline_history !735
  %i.ab = load ptr, ptr %i.s, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #27, !inline_history !735
  br label %_ZSt8_DestroyISt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEEEvPT_.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZSt8_DestroyISt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEEEvPT_.exit, !prof !91

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #27
  br label %_ZSt8_DestroyISt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEEEvPT_.exit

_ZSt8_DestroyISt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEEEvPT_.exit: ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrISt6vectorIlSaIlEEELb0EED2Ev.exit.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %.05, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.ai, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !736

._crit_edge:                                      ; preds = %_ZSt8_DestroyISt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEEEvPT_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIlSaIlEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEvNS4_IPlS1_EET_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not70 = icmp eq ptr %2, %3
  br i1 %.not70, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 8 uses
  %i.i = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 9 uses
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.p = sub nsw i64 0, %i.d
  %i.q = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.p ; 3 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = icmp sgt i64 %i.c, 8                     ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.f, !prof !128

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.h, ptr nonnull align 8 %i.q, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.t = icmp eq i64 %i.c, 8
  br i1 %i.t, label %bb.g, label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.u = load i64, ptr %i.q, align 8
  store i64 %i.u, ptr %i.h, align 8
  br label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.v = load ptr, ptr %i.g, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.c
  store ptr %i.w, ptr %i.g, align 8
  %i.x = sub i64 %i.r, %i.l                       ; 3 uses
  %i.y = ashr exact i64 %i.x, 3                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 1
  br i1 %i.z, label %bb.h, label %bb.i, !prof !128

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit
  %i.aa = sub nsw i64 0, %i.y
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.aa
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr align 8 %1, i64 %i.x, i1 false)
  br label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit
  %i.ac = icmp eq i64 %i.x, 8
  br i1 %i.ac, label %bb.j, label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.ae = load i64, ptr %1, align 8
  store i64 %i.ae, ptr %i.ad, align 8
  br label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.s, label %bb.k, label %bb.l, !prof !128

bb.k:                                             ; preds = %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit
  %i.af = icmp eq i64 %i.c, 8
  br i1 %i.af, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.ag = load i64, ptr %2, align 8
  store i64 %i.ag, ptr %1, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ah = icmp eq i64 %i.m, 8
  %i.ai = getelementptr inbounds i8, ptr %2, i64 %i.m ; 3 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.a, %i.aj                     ; 3 uses
  %i.al = icmp sgt i64 %i.ak, 8
  br i1 %i.al, label %bb.n, label %bb.o, !prof !128

bb.n:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.h, ptr align 8 %i.ai, i64 %i.ak, i1 false)
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPllET0_T_SA_S9_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.am = icmp eq i64 %i.ak, 8
  br i1 %i.am, label %bb.p, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPllET0_T_SA_S9_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.an = load i64, ptr %i.ai, align 8
  store i64 %i.an, ptr %i.h, align 8
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPllET0_T_SA_S9_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPllET0_T_SA_S9_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.ao = sub nuw nsw i64 %i.d, %i.n
  %i.ap = load ptr, ptr %i.g, align 8
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ao ; 3 uses
  store ptr %i.aq, ptr %i.g, align 8
  %i.ar = icmp sgt i64 %i.m, 8
  br i1 %i.ar, label %bb.q, label %bb.r, !prof !128

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPllET0_T_SA_S9_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.aq, ptr align 8 %1, i64 %i.m, i1 false)
  br label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit51

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEPllET0_T_SA_S9_RSaIT1_E.exit
  br i1 %i.ah, label %bb.s, label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit51

bb.s:                                             ; preds = %bb.r
  %i.as = load i64, ptr %1, align 8
  store i64 %i.as, ptr %i.aq, align 8
  br label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit51

_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit51: ; preds = %bb.q, %bb.r, %bb.s
  %i.at = load ptr, ptr %i.g, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.m
  store ptr %i.au, ptr %i.g, align 8
  %i.av = icmp sgt i64 %i.m, 8
  br i1 %i.av, label %bb.t, label %bb.u, !prof !128

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit51
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.m, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit51
  %i.aw = icmp eq i64 %i.m, 8
  br i1 %i.aw, label %bb.v, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

bb.v:                                             ; preds = %bb.u
  %i.ax = load i64, ptr %2, align 8
  store i64 %i.ax, ptr %1, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

bb.w:                                             ; preds = %bb.b
  %i.ay = load ptr, ptr %0, align 8               ; 5 uses
  %i.az = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.ba = sub i64 %i.j, %i.az
  %i.bb = ashr exact i64 %i.ba, 3                 ; 4 uses
  %i.bc = sub nsw i64 1152921504606846975, %i.bb
  %i.bd = icmp ult i64 %i.bc, %i.d
  br i1 %i.bd, label %bb.x, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.230) #31
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit:    ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 %i.d)
  %i.be = add nsw i64 %.sroa.speculated.i, %i.bb  ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bb
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.be, i64 1152921504606846975)
  %i.bh = select i1 %i.bf, i64 1152921504606846975, i64 %i.bg ; 3 uses
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit
  %i.bi = shl nuw nsw i64 %i.bh, 3
  %i.bj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #30
  br label %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit
end_hunk_10
