inline.NumInlined: 816
inline.NumDeleted: 330
begin_hunk_0_@_ZN6hermes2vm10parseFloatEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  %i.ei = lshr exact i64 %i.eh, 1
  %.0.i2.i = select i1 %.not.i1.i96, i64 %i.ei, i64 %i.ef ; 2 uses
  %i.ej = add i64 %.0.i.i95, %i.t
  %i.ek = and i64 %i.ej, 1073741823               ; 6 uses
  %i.el = and i64 %i.t, 3221225472                ; 2 uses
  %.sroa.2.8.insert.ext.i.i = or disjoint i64 %i.ek, %i.el ; 3 uses
  %.sroa.2.12.insert.ext.i.i = shl i64 %.0.i2.i, 32
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm10parseFloatEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
bb.be:                                            ; preds = %_ZN4llvh11SmallVectorIcLj32EEC2EmRKc.exit
  %i.fm = and i32 %.sroa.11.8.extract.trunc, 1073741824
  %.not.i.i108 = icmp eq i32 %i.fm, 0
  br i1 %.not.i.i108, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i128, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.sroa.0.0.copyload.i.i.i.i.i109 = load i64, ptr %i.s, align 8, !tbaa !27
end_hunk_1
begin_hunk_2_@_ZN6hermes2vm10parseFloatEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !37
  br label %bb.bz

bb.br:                                            ; preds = %bb.bg, %bb.bi, %bb.bj, %bb.bk
  %.0.i.sink.i.i112.ph = phi ptr [ %i.fz, %bb.bk ], [ %i.fu, %bb.bj ], [ %i.ft, %bb.bi ], [ %i.fs, %bb.bg ] ; 4 uses
  %.sroa.0.0.copyload.i.i.i.i.i126 = load i64, ptr %i.s, align 8, !tbaa !27
  %i.gl = and i64 %.sroa.0.0.copyload.i.i.i.i.i126, 281474976710655
  %i.gm = inttoptr i64 %i.gl to ptr               ; 5 uses
end_hunk_2
begin_hunk_3_@_ZN6hermes2vm10parseFloatEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !33
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i128

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i128: ; preds = %bb.be, %bb.bw, %bb.bv, %bb.bu, %bb.bs
  %i.gy = phi ptr [ %.0.i.sink.i.i112.ph, %bb.bw ], [ %.0.i.sink.i.i112.ph, %bb.bs ], [ %.0.i.sink.i.i112.ph, %bb.bu ], [ %.0.i.sink.i.i112.ph, %bb.bv ], [ %i.s, %bb.be ]
  %.0.i.sink.i.i129 = phi ptr [ %i.gx, %bb.bw ], [ %i.gq, %bb.bs ], [ %i.gr, %bb.bu ], [ %i.gs, %bb.bv ], [ %i.s, %bb.be ]
  %4 = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.ek
  %i.gz = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i129, i64 %i.ek
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.fc
  br label %_ZNK6hermes2vm10StringView3endEv.exit131
end_hunk_3
begin_hunk_4_@_ZN6hermes2vm10parseFloatEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  br label %_ZNK6hermes2vm10StringView3endEv.exit131

_ZNK6hermes2vm10StringView3endEv.exit131:         ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i128, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i118
  %.sroa.0.0.i104208 = phi ptr [ %4, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i128 ], [ null, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i118 ]
  %.sroa.3.0.i103206 = phi ptr [ null, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i128 ], [ %i.hn, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i118 ]
  %.sroa.3.0.i120 = phi ptr [ null, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i128 ], [ %i.hp, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i118 ]
  %.sroa.0.0.i121 = phi ptr [ %i.ha, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i128 ], [ null, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i118 ]
end_hunk_4
