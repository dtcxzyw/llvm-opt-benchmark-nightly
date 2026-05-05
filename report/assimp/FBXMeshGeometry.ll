inline.NumInlined: 1883
inline.NumDeleted: 548
begin_hunk_0_@_ZN6Assimp3FBX22ResolveVertexDataArrayI9aiColor4tIfEEEvRSt6vectorIT_SaIS5_EERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_PKcSL_mRKS4_IjSaIjEESP_SP_:bb.a

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #25
  br label %.loopexit367thread-pre-split

bb.ef:                                            ; preds = %bb.ed
  %i.sd = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN6Assimp3FBX22ResolveVertexDataArrayI9aiColor4tIfEEEvRSt6vectorIT_SaIS5_EERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_PKcSL_mRKS4_IjSaIjEESP_SP_:bb.a
          to label %bb.eh unwind label %bb.eb

bb.eh:                                            ; preds = %bb.eg
  %i.se = load ptr, ptr %26, align 8              ; 3 uses
  %i.sf = load ptr, ptr %i.re, align 8            ; 2 uses
  %.not366 = icmp eq ptr %i.se, %i.sf
  br i1 %.not366, label %._crit_edge, label %.lr.ph
end_hunk_1
begin_hunk_2_@_ZN6Assimp3FBX22ResolveVertexDataArrayI9aiColor4tIfEEEvRSt6vectorIT_SaIS5_EERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_PKcSL_mRKS4_IjSaIjEESP_SP_:bb.a
  %i.sj = zext i32 %.0106368 to i64
  %i.sk = load ptr, ptr %0, align 8
  %i.sl = getelementptr inbounds nuw [16 x i8], ptr %i.sk, i64 %i.sj
  store <4 x float> zeroinitializer, ptr %i.sl, align 4
  br label %bb.eu

bb.ek:                                            ; preds = %bb.ei
end_hunk_2
begin_hunk_3_@_ZN6Assimp3FBX22ResolveVertexDataArrayI9aiColor4tIfEEEvRSt6vectorIT_SaIS5_EERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_PKcSL_mRKS4_IjSaIjEESP_SP_:bb.a
  %.1 = add i32 %.0106368, 1
  %i.tl = getelementptr inbounds nuw i8, ptr %.sroa.0340.0367, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.tl, %i.sf
  br i1 %.not, label %.loopexit367thread-pre-split, label %bb.ei

.loopexit367thread-pre-split:                     ; preds = %bb.eu, %bb.ee
  %.pr520 = load ptr, ptr %26, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.loopexit367thread-pre-split, %bb.eh
  %32 = phi ptr [ %.pr520, %.loopexit367thread-pre-split ], [ %i.se, %bb.eh ] ; 3 uses
  %.not.i.i.i328 = icmp eq ptr %32, null
  br i1 %.not.i.i.i328, label %_ZNSt6vectorIiSaIiEED2Ev.exit329, label %bb.ev

end_hunk_3
