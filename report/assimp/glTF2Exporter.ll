inline.NumInlined: 7264
inline.NumDeleted: 2661
begin_hunk_0_@_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_:bb.a

bb.c:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i, %.lr.ph.i.i.i
  %lsr.iv = phi i64 [ %lsr.iv.next, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i ], [ %.idx.i.i.i, %.lr.ph.i.i.i ]
  %.010.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %i.az, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i ] ; 8 uses
  %i.ai = getelementptr i8, ptr %.010.i.i.i, i64 14
  %i.aj = load i16, ptr %i.ai, align 2
  %i.ak = and i16 %i.aj, 4096
end_hunk_0
begin_hunk_1_@_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_:bb.a
  br label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.loopexit

._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.loopexit_crit_edge: ; preds = %bb.d
  %.010.i.i.i.lcssa.a = phi ptr [ %.010.i.i.i, %bb.d ]
  br label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.loopexit

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.loopexit: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.loopexitsplit, %._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.loopexit_crit_edge
  %.0.lcssa.i.i.i.ph = phi ptr [ %.010.i.i.i.lcssa.a, %._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.loopexit_crit_edge ], [ %.0.lcssa.i.i.i.ph.ph, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.loopexitsplit ]
  br label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.loopexit, %bb.b
end_hunk_1
begin_hunk_2_@_ZN10glTFCommon18FindArrayInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_:bb.a

bb.c:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i, %.lr.ph.i.i.i
  %lsr.iv = phi i64 [ %lsr.iv.next, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i ], [ %.idx.i.i.i, %.lr.ph.i.i.i ]
  %.010.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.aw, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i ] ; 8 uses
  %i.af = getelementptr i8, ptr %.010.i.i.i, i64 14
  %i.ag = load i16, ptr %i.af, align 2
  %i.ah = and i16 %i.ag, 4096
end_hunk_2
begin_hunk_3_@_ZN10glTFCommon18FindArrayInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_:bb.a
  br label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.loopexit

._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.loopexit_crit_edge: ; preds = %bb.d
  %.010.i.i.i.lcssa.a = phi ptr [ %.010.i.i.i, %bb.d ]
  br label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.loopexit

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.loopexit: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.loopexitsplit, %._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.loopexit_crit_edge
  %.0.lcssa.i.i.i.ph = phi ptr [ %.010.i.i.i.lcssa.a, %._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.loopexit_crit_edge ], [ %.0.lcssa.i.i.i.ph.ph, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.loopexitsplit ]
  br label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.loopexit, %bb.b
end_hunk_3
begin_hunk_4_@_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEixIKcEENS_8internal9DisableIfINS9_15RemoveSfinaeTagIPFRNS9_9SfinaeTagENS9_7NotExprINS9_6IsSameINS9_11RemoveConstIT_E4TypeEcEEEEEE4TypeERS6_E4TypeEPSH_:bb.a

bb.b:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i, %.lr.ph.i.i.i
  %lsr.iv = phi i64 [ %lsr.iv.next, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i ], [ %.idx.i.i.i, %.lr.ph.i.i.i ]
  %.010.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %i.at, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i ] ; 8 uses
  %i.ac = getelementptr i8, ptr %.010.i.i.i, i64 14
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = and i16 %i.ad, 4096
end_hunk_4
begin_hunk_5_@_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEixIKcEENS_8internal9DisableIfINS9_15RemoveSfinaeTagIPFRNS9_9SfinaeTagENS9_7NotExprINS9_6IsSameINS9_11RemoveConstIT_E4TypeEcEEEEEE4TypeERS6_E4TypeEPSH_:bb.a
  br label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberIS5_EEPNS_13GenericMemberIS2_S5_EERKNS0_IS2_T_EE.exit.i.loopexit

._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberIS5_EEPNS_13GenericMemberIS2_S5_EERKNS0_IS2_T_EE.exit.i.loopexit_crit_edge: ; preds = %bb.c
  %.010.i.i.i.lcssa.a = phi ptr [ %.010.i.i.i, %bb.c ]
  br label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberIS5_EEPNS_13GenericMemberIS2_S5_EERKNS0_IS2_T_EE.exit.i.loopexit

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberIS5_EEPNS_13GenericMemberIS2_S5_EERKNS0_IS2_T_EE.exit.i.loopexit: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberIS5_EEPNS_13GenericMemberIS2_S5_EERKNS0_IS2_T_EE.exit.i.loopexitsplit, %._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberIS5_EEPNS_13GenericMemberIS2_S5_EERKNS0_IS2_T_EE.exit.i.loopexit_crit_edge
  %.0.lcssa.i.i.i.ph = phi ptr [ %.010.i.i.i.lcssa.a, %._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberIS5_EEPNS_13GenericMemberIS2_S5_EERKNS0_IS2_T_EE.exit.i.loopexit_crit_edge ], [ %.0.lcssa.i.i.i.ph.ph, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberIS5_EEPNS_13GenericMemberIS2_S5_EERKNS0_IS2_T_EE.exit.i.loopexitsplit ]
  br label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberIS5_EEPNS_13GenericMemberIS2_S5_EERKNS0_IS2_T_EE.exit.i

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberIS5_EEPNS_13GenericMemberIS2_S5_EERKNS0_IS2_T_EE.exit.i: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberIS5_EEPNS_13GenericMemberIS2_S5_EERKNS0_IS2_T_EE.exit.i.loopexit, %bb.a
end_hunk_5
begin_hunk_6_@_ZN9rapidjson8internal8DigitGenERKNS0_5DiyFpES3_mPcPiS5_:bb.a
  br i1 %.not85, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.lcssa170 = phi i32 [ %i.at, %bb.t ]           ; 2 uses
  %.lcssa168 = phi i64 [ %i.aw, %bb.t ]           ; 3 uses
  %i.ax = load i32, ptr %5, align 4
end_hunk_6
begin_hunk_7_@_ZN9rapidjson8internal8DigitGenERKNS0_5DiyFpES3_mPcPiS5_:bb.a
  %i.bk = sub i64 %i.bj, %.lcssa168
  %i.bl = sub i64 %i.g, %i.f
  %i.bm = add i64 %i.l, %i.bc
  %i.bn = add i64 %i.bm, %i.av                    ; 2 uses
  %i.bo = sub i64 %2, %i.bn
  br label %bb.v

end_hunk_7
begin_hunk_8_@_ZN9rapidjson8internal8DigitGenERKNS0_5DiyFpES3_mPcPiS5_:bb.a
  br label %bb.y

bb.y:                                             ; preds = %.critedge87, %bb.x
  %i.cd = and i64 %i.bv, %i.k                     ; 5 uses
  %i.ce = add i32 %.175, -1                       ; 2 uses
  %.not82 = icmp ult i64 %i.cd, %i.bw
  br i1 %.not82, label %bb.z, label %.critedge87

bb.z:                                             ; preds = %bb.y
  %.lcssa167 = phi i64 [ %i.cd, %bb.y ]           ; 2 uses
  %.lcssa166 = phi i32 [ %i.ce, %bb.y ]
  %.175.lcssa = phi i32 [ %.175, %bb.y ]          ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN9rapidjson8internal8DigitGenERKNS0_5DiyFpES3_mPcPiS5_:bb.a
  %i.cq = sext i32 %i.ch to i64
  %i.cr = getelementptr i8, ptr %3, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.cr, i64 -1     ; 2 uses
  %i.ct = sub i64 %i.cn, %i.cd
  %i.cu = mul i64 %i.cm, %i.h
  %i.cv = sub i64 0, %i.cu
  %i.cw = add i64 %i.e, %i.cd                     ; 2 uses
  %i.cx = sub i64 %.lcssa, %i.cw
  br label %bb.ab

end_hunk_9
begin_hunk_10_@_ZNSt6vectorIN5glTF215CustomExtensionESaIS1_EE17_M_default_appendEm:bb.a
  br label %.lr.ph.i.i48

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %.016.i.i.i.i.i.lcssa = phi ptr [ %.016.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
end_hunk_10
begin_hunk_11_@_ZNSt6vectorIN5glTF215CustomExtensionESaIS1_EE17_M_default_appendEm:bb.a
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %lsr.iv92 = phi i64 [ %lsr.iv90, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %lsr.iv.next93, %.lr.ph.i.i.i.i.i.i.i ]
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  tail call void @_ZN5glTF215CustomExtensionD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %.05.i.i.i.i.i.i.i) #31, !inline_history !210
  %i.cl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 160
end_hunk_11
