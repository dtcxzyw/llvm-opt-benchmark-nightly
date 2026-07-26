inline.NumInlined: 1968
inline.NumDeleted: 802
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE6insertES3_PNS0_4ZoneE:bb.a
  %i.bp = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.bq = ptrtoint ptr %.0.lcssa.i.i to i64       ; 2 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br                    ; 4 uses
  %i.bt = icmp sgt i64 %i.bs, 8
  br i1 %i.bt, label %bb.q, label %bb.r, !prof !7

bb.q:                                             ; preds = %_ZN2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE7NewListEmPNS0_4ZoneE.exit30
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bl, ptr align 8 %i.bp, i64 %i.bs, i1 false)
  br label %_ZSt4copyIPPN2v88internal8compiler10ObjectDataES5_ET0_T_S7_S6_.exit

bb.r:                                             ; preds = %_ZN2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE7NewListEmPNS0_4ZoneE.exit30
  %i.bu = icmp eq i64 %i.bs, 8
  br i1 %i.bu, label %bb.s, label %_ZSt4copyIPPN2v88internal8compiler10ObjectDataES5_ET0_T_S7_S6_.exit

bb.s:                                             ; preds = %bb.r
  %i.bv = load ptr, ptr %i.bp, align 8
  store ptr %i.bv, ptr %i.bl, align 8
  br label %_ZSt4copyIPPN2v88internal8compiler10ObjectDataES5_ET0_T_S7_S6_.exit

_ZSt4copyIPPN2v88internal8compiler10ObjectDataES5_ET0_T_S7_S6_.exit: ; preds = %bb.q, %bb.r, %bb.s
  %i.bw = getelementptr inbounds i8, ptr %i.bl, i64 %i.bs ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  store ptr %i.a, ptr %i.bw, align 8
  %i.by = load ptr, ptr %i.ag, align 8
  %i.bz = load i64, ptr %i.ai, align 8
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bz
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.bq                    ; 3 uses
  %i.cd = icmp sgt i64 %i.cc, 8
  br i1 %i.cd, label %bb.t, label %bb.u, !prof !7

bb.t:                                             ; preds = %_ZSt4copyIPPN2v88internal8compiler10ObjectDataES5_ET0_T_S7_S6_.exit
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bx, ptr align 8 %.0.lcssa.i.i, i64 %i.cc, i1 false)
  br label %_ZSt4copyIPPN2v88internal8compiler10ObjectDataES5_ET0_T_S7_S6_.exit31

bb.u:                                             ; preds = %_ZSt4copyIPPN2v88internal8compiler10ObjectDataES5_ET0_T_S7_S6_.exit
  %i.ce = icmp eq i64 %i.cc, 8
  br i1 %i.ce, label %bb.v, label %_ZSt4copyIPPN2v88internal8compiler10ObjectDataES5_ET0_T_S7_S6_.exit31

bb.v:                                             ; preds = %bb.u
  %i.cf = load ptr, ptr %.0.lcssa.i.i, align 8
  store ptr %i.cf, ptr %i.bx, align 8
  br label %_ZSt4copyIPPN2v88internal8compiler10ObjectDataES5_ET0_T_S7_S6_.exit31

_ZSt4copyIPPN2v88internal8compiler10ObjectDataES5_ET0_T_S7_S6_.exit31: ; preds = %bb.t, %bb.u, %bb.v
  %i.cg = or i64 %i.bk, 2
  br label %.sink.split

.sink.split:                                      ; preds = %_ZSt4copyIPPN2v88internal8compiler10ObjectDataES5_ET0_T_S7_S6_.exit31, %bb.j, %bb.b
  %.sink49 = phi i64 [ %i.c, %bb.b ], [ %i.ae, %bb.j ], [ %i.cg, %_ZSt4copyIPPN2v88internal8compiler10ObjectDataES5_ET0_T_S7_S6_.exit31 ]
  store i64 %.sink49, ptr %0, align 8
  br label %bb.w

bb.w:                                             ; preds = %.sink.split, %bb.l, %bb.d
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal8compiler39ElementsTransitionWithMultipleSourcesOfEPKNS1_8OperatorE(ptr noundef) local_unnamed_addr #1

declare noundef zeroext i8 @_ZNK2v88internal8compiler6MapRef13elements_kindEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare ptr @_ZN2v88internal8compiler20DoubleMapParameterOfEPKNS1_8OperatorE(ptr noundef) local_unnamed_addr #1

declare ptr @_ZN2v88internal8compiler18FastMapParameterOfEPKNS1_8OperatorE(ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN2v88internal8compiler7JSGraph18HeapConstantNoHoleENS0_6HandleINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(1144), ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN2v88internal8compiler15LoadElimination12FieldIndexOfERKNS1_11FieldAccessE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8
  switch i8 %i.b, label %bb.c [
    i8 0, label %bb.b
    i8 1, label %bb.b
    i8 19, label %bb.b
    i8 20, label %bb.b
    i8 15, label %bb.b
    i8 2, label %.critedge
    i8 3, label %.critedge
    i8 16, label %.critedge
    i8 17, label %.critedge
    i8 14, label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit
    i8 12, label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit
    i8 11, label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit
    i8 8, label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit
    i8 4, label %.critedge
    i8 9, label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit
    i8 13, label %.critedge
    i8 5, label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit
    i8 18, label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit
    i8 6, label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit
    i8 10, label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit
    i8 7, label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.19) #23
  unreachable

_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.c = load i8, ptr %0, align 8
  %.not = icmp eq i8 %i.c, 1
  br i1 %.not, label %bb.d, label %.critedge

bb.c:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.19) #23
  unreachable

bb.d:                                             ; preds = %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = sdiv i32 %i.e, 8                         ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  %i.h = icmp sgt i32 %i.e, 263
  br i1 %i.h, label %bb.e, label %_ZN2v88internal8compiler15LoadElimination12FieldIndexOfEii.exit

bb.e:                                             ; preds = %bb.d
  %i.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 515), align 1, !range !5, !noundef !6
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %_ZN2v88internal8compiler15LoadElimination12FieldIndexOfEii.exit, !prof !16

bb.f:                                             ; preds = %bb.e
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.30, i64 noundef 70) #22 ; 0 uses
  br label %_ZN2v88internal8compiler15LoadElimination12FieldIndexOfEii.exit

_ZN2v88internal8compiler15LoadElimination12FieldIndexOfEii.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.sroa.3.0.i = phi i32 [ %i.f, %bb.d ], [ -1, %bb.f ], [ -1, %bb.e ]
  %.sroa.0.0.i = phi i32 [ %i.g, %bb.d ], [ -1, %bb.f ], [ -1, %bb.e ]
  %.sroa.3.0.insert.ext.i = zext i32 %.sroa.3.0.i to i64
  %.sroa.3.0.insert.shift.i = shl nuw i64 %.sroa.3.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %.sroa.0.0.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.3.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit, %_ZN2v88internal8compiler15LoadElimination12FieldIndexOfEii.exit
  %.sroa.0.1 = phi i64 [ %.sroa.0.0.insert.insert.i, %_ZN2v88internal8compiler15LoadElimination12FieldIndexOfEii.exit ], [ -1, %bb.a ], [ -1, %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit ], [ -1, %bb.a ], [ -1, %bb.a ], [ -1, %bb.a ], [ -1, %bb.a ], [ -1, %bb.a ]
  ret i64 %.sroa.0.1
}

declare i64 @_ZN2v88internal8compiler4Type9IntersectES2_S2_PNS0_4ZoneE(i64, i64, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZNK2v88internal8compiler15LoadElimination5graphEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZNK2v88internal8compiler15LoadElimination6commonEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  ret ptr %i.d
}

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder9TypeGuardENS1_4TypeE(ptr noundef nonnull align 8 dereferenceable(16), i64) local_unnamed_addr #1

declare noundef ptr @_ZNK2v88internal8compiler4Type14AsHeapConstantEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare ptr @_ZNK2v88internal8compiler9ObjectRef5AsMapEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder11UnreachableEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(19) ptr @_ZN2v88internal8compiler15ElementAccessOfEPKNS1_8OperatorE(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler15LoadElimination17UpdateStateForPhiEPKNS2_13AbstractStateEPNS1_4NodeES7_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef readonly captures(ret: address, provenance) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::ZoneCompactSet", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = and i32 %i.d, 251658240
  %.not.i = icmp eq i32 %i.e, 251658240
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i32 %i.d, 24
  %i.g = and i32 %i.f, 15
  br label %_ZNK2v88internal8compiler4Node10InputCountEv.exit

bb.c:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %3 to i64
  %i.i = add i64 %i.h, 32
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 8
  br label %_ZNK2v88internal8compiler4Node10InputCountEv.exit

_ZNK2v88internal8compiler4Node10InputCountEv.exit: ; preds = %bb.b, %bb.c
  %i.n = phi i32 [ %i.g, %bb.b ], [ %i.m, %bb.c ] ; 2 uses
  %i.o = add nsw i32 %i.n, -1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %2, align 8                ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load i32, ptr %i.r, align 8
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.e, label %bb.d, !prof !7

bb.d:                                             ; preds = %_ZNK2v88internal8compiler4Node10InputCountEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.23) #23
  unreachable

bb.e:                                             ; preds = %_ZNK2v88internal8compiler4Node10InputCountEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.v = load i32, ptr %i.u, align 4
  %i.w = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.q) #22
  %i.x = load ptr, ptr %2, align 8
  %i.y = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.x) #22
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = and i32 %i.aa, 251658240
  %.not.i.i.i = icmp eq i32 %i.ab, 251658240
  %i.ac = ptrtoint ptr %2 to i64
  %i.ad = add i64 %i.ac, 32
  %i.ae = inttoptr i64 %i.ad to ptr               ; 4 uses
  br i1 %.not.i.i.i, label %bb.f, label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = add i64 %i.ag, 16
  %i.ai = inttoptr i64 %i.ah to ptr
  br label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit: ; preds = %bb.e, %bb.f
  %.sink.i.i.i = phi ptr [ %i.ai, %bb.f ], [ %i.ae, %bb.e ]
  %i.aj = zext i1 %i.w to i32
  %i.ak = zext i1 %i.y to i32
  %i.al = add i32 %i.v, %i.aj
  %i.am = add i32 %i.al, %i.ak
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 20
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = and i32 %i.ar, 16777215
  %i.at = zext nneg i32 %i.as to i64              ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 3
  %i.bc = icmp ugt i64 %i.bb, %i.at
  br i1 %i.bc, label %bb.g, label %_ZNK2v88internal8compiler15LoadElimination27AbstractStateForEffectNodes3GetEPNS1_4NodeE.exit

bb.g:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.at
  %i.be = load ptr, ptr %i.bd, align 8
  br label %_ZNK2v88internal8compiler15LoadElimination27AbstractStateForEffectNodes3GetEPNS1_4NodeE.exit

_ZNK2v88internal8compiler15LoadElimination27AbstractStateForEffectNodes3GetEPNS1_4NodeE.exit: ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit, %bb.g
  %.0.i = phi ptr [ %i.be, %bb.g ], [ null, %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit ]
  %i.bf = load i32, ptr %i.c, align 4
  %i.bg = and i32 %i.bf, 251658240
  %.not.i.i = icmp eq i32 %i.bg, 251658240
  %i.bh = ptrtoint ptr %3 to i64
  %i.bi = add i64 %i.bh, 32
  %i.bj = inttoptr i64 %i.bi to ptr               ; 4 uses
  br i1 %.not.i.i, label %bb.h, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

bb.h:                                             ; preds = %_ZNK2v88internal8compiler15LoadElimination27AbstractStateForEffectNodes3GetEPNS1_4NodeE.exit
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = add i64 %i.bl, 16
  %i.bn = inttoptr i64 %i.bm to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

_ZNK2v88internal8compiler4Node7InputAtEi.exit:    ; preds = %_ZNK2v88internal8compiler15LoadElimination27AbstractStateForEffectNodes3GetEPNS1_4NodeE.exit, %bb.h
  %.sink.i.i = phi ptr [ %i.bn, %bb.h ], [ %i.bj, %_ZNK2v88internal8compiler15LoadElimination27AbstractStateForEffectNodes3GetEPNS1_4NodeE.exit ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i, i64 520
  %i.bp = load ptr, ptr %i.bo, align 8            ; 3 uses
  %.not.i24 = icmp eq ptr %i.bp, null
  br i1 %.not.i24, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState10LookupMapsEPNS1_4NodeEPNS0_14ZoneCompactSetINS1_6MapRefEEE.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit, %.preheader.i.backedge
  %.0.i.i.i.in = phi ptr [ %.0.i.i.i.in.be, %.preheader.i.backedge ], [ %.sink.i.i, %_ZNK2v88internal8compiler4Node7InputAtEi.exit ]
  %.0.i.i.i = load ptr, ptr %.0.i.i.i.in, align 8 ; 5 uses
  %i.bq = load ptr, ptr %.0.i.i.i, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load i16, ptr %i.br, align 8
  switch i16 %i.bs, label %_ZN2v88internal8compiler12_GLOBAL__N_114ResolveRenamesEPNS1_4NodeE.exit.i.i [
    i16 278, label %bb.i
    i16 41, label %bb.i
    i16 59, label %bb.i
  ]

bb.i:                                             ; preds = %.preheader.i, %.preheader.i, %.preheader.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.bu = load i32, ptr %i.bt, align 4            ; 2 uses
  %i.bv = lshr i32 %i.bu, 24
  %i.bw = and i32 %i.bv, 15                       ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.bw, 15
  %i.bx = ptrtoint ptr %.0.i.i.i to i64
  %i.by = add i64 %i.bx, 32                       ; 3 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %_ZNK2v88internal8compiler4Node6inputsEv.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = add i64 %i.cb, 16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.ce = load i32, ptr %i.cd, align 8
  br label %_ZNK2v88internal8compiler4Node6inputsEv.exit.i.i.i.i.i

_ZNK2v88internal8compiler4Node6inputsEv.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.sroa.3.0.i.i.i.i.i.i = phi i32 [ %i.ce, %bb.j ], [ %i.bw, %bb.i ]
  %.sroa.0.0.in.i.i.i.i.i.i = phi i64 [ %i.cc, %bb.j ], [ %i.by, %bb.i ]
  %i.cf = icmp sgt i32 %.sroa.3.0.i.i.i.i.i.i, 0
  br i1 %i.cf, label %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.i.i.i, label %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.thread.i.i.i

_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.i.i.i: ; preds = %_ZNK2v88internal8compiler4Node6inputsEv.exit.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i = inttoptr i64 %.sroa.0.0.in.i.i.i.i.i.i to ptr
  %i.cg = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i, align 8
  %.not.i.i.i25 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i25, label %_ZN2v88internal8compiler12_GLOBAL__N_114ResolveRenamesEPNS1_4NodeE.exit.i.i, label %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.thread.i.i.i

_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.thread.i.i.i: ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.i.i.i, %_ZNK2v88internal8compiler4Node6inputsEv.exit.i.i.i.i.i
  %i.ch = and i32 %i.bu, 251658240
  %.not.i.i.i.i.i = icmp eq i32 %i.ch, 251658240
  %i.ci = inttoptr i64 %i.by to ptr               ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.k, label %.preheader.i.backedge

bb.k:                                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.thread.i.i.i
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = add i64 %i.ck, 16
  %i.cm = inttoptr i64 %i.cl to ptr
  br label %.preheader.i.backedge

.preheader.i.backedge:                            ; preds = %bb.k, %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.thread.i.i.i
  %.0.i.i.i.in.be = phi ptr [ %i.ci, %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.thread.i.i.i ], [ %i.cm, %bb.k ]
  br label %.preheader.i, !llvm.loop !14

_ZN2v88internal8compiler12_GLOBAL__N_114ResolveRenamesEPNS1_4NodeE.exit.i.i: ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.i.i.i, %.preheader.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.co = load ptr, ptr %i.cn, align 8            ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not10.i.i.i.i.i, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState10LookupMapsEPNS1_4NodeEPNS0_14ZoneCompactSetINS1_6MapRefEEE.exit.thread, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_114ResolveRenamesEPNS1_4NodeE.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.co, %_ZN2v88internal8compiler12_GLOBAL__N_114ResolveRenamesEPNS1_4NodeE.exit.i.i ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.cp, %_ZN2v88internal8compiler12_GLOBAL__N_114ResolveRenamesEPNS1_4NodeE.exit.i.i ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = icmp ult ptr %i.cr, %.0.i.i.i           ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.cs, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.cs, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i4.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i4.i.i, label %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS1_14ZoneCompactSetINS2_6MapRefEEEESt10_Select1stISA_ESt4lessIS4_ENS1_13ZoneAllocatorISA_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !15

_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS1_14ZoneCompactSetINS2_6MapRefEEEESt10_Select1stISA_ESt4lessIS4_ENS1_13ZoneAllocatorISA_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ct = icmp eq ptr %.19.i.i.i.i.i, %i.cp
  br i1 %i.ct, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState10LookupMapsEPNS1_4NodeEPNS0_14ZoneCompactSetINS1_6MapRefEEE.exit.thread, label %_ZNKSt3mapIPN2v88internal8compiler4NodeENS1_14ZoneCompactSetINS2_6MapRefEEESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S7_EEEE4findERSC_.exit.i.i

_ZNKSt3mapIPN2v88internal8compiler4NodeENS1_14ZoneCompactSetINS2_6MapRefEEESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S7_EEEE4findERSC_.exit.i.i: ; preds = %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS1_14ZoneCompactSetINS2_6MapRefEEEESt10_Select1stISA_ESt4lessIS4_ENS1_13ZoneAllocatorISA_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = icmp ult ptr %.0.i.i.i, %i.cv
  br i1 %i.cw, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState10LookupMapsEPNS1_4NodeEPNS0_14ZoneCompactSetINS1_6MapRefEEE.exit.thread, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState10LookupMapsEPNS1_4NodeEPNS0_14ZoneCompactSetINS1_6MapRefEEE.exit

_ZNK2v88internal8compiler15LoadElimination13AbstractState10LookupMapsEPNS1_4NodeEPNS0_14ZoneCompactSetINS1_6MapRefEEE.exit: ; preds = %_ZNKSt3mapIPN2v88internal8compiler4NodeENS1_14ZoneCompactSetINS2_6MapRefEEESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S7_EEEE4findERSC_.exit.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 40
  %i.cy = load i64, ptr %i.cx, align 8            ; 5 uses
  %.not94 = icmp sgt i32 %i.n, 2
  br i1 %.not94, label %.lr.ph, label %.thread91

.lr.ph:                                           ; preds = %_ZNK2v88internal8compiler15LoadElimination13AbstractState10LookupMapsEPNS1_4NodeEPNS0_14ZoneCompactSetINS1_6MapRefEEE.exit
  %i.cz = and i64 %i.cy, 3
  %i.da = icmp eq i64 %i.cz, 2
  %i.db = add nsw i64 %i.cy, -2
  %i.dc = inttoptr i64 %i.db to ptr               ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %wide.trip.count = zext nneg i32 %i.o to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %.thread81
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %.thread81 ] ; 4 uses
  %i.de = load ptr, ptr %2, align 8               ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load i32, ptr %i.df, align 8
  %i.dh = sext i32 %i.dg to i64
  %i.di = icmp slt i64 %indvars.iv, %i.dh
  br i1 %i.di, label %bb.n, label %bb.m, !prof !7

end_hunk_0
begin_hunk_1_@_ZN2v88internal10ZoneVectorIPKNS0_8compiler15LoadElimination13AbstractStateEE4GrowEm:bb.a
  %i.q = icmp ult i64 %i.o, 2305843009213693951
  br i1 %i.q, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.25) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 3                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler15LoadElimination13AbstractStateEA_S7_EEPT_m.exit, !prof !16

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #22
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler15LoadElimination13AbstractStateEA_S7_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler15LoadElimination13AbstractStateEA_S7_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler15LoadElimination13AbstractStateEA_S7_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler15LoadElimination13AbstractStateEA_S7_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler15LoadElimination13AbstractStateEA_S7_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

declare noundef ptr @_ZNK2v88internal8compiler9ObjectRef4dataEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal14ZoneCompactSetINS0_8compiler6MapRefEEC2IPKS3_St26random_access_iterator_tagEET_S9_PNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 4 uses
  store i64 0, ptr %0, align 8
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 5 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp eq ptr %2, %1
  br i1 %i.e, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.c, 8
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.09.0.copyload = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %.sroa.09.0.copyload, ptr %5, align 8
  %i.g = call noundef ptr @_ZNK2v88internal8compiler9ObjectRef4dataEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.h = ptrtoint ptr %i.g to i64
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.i = icmp ult i64 %i.d, 2305843009213693951
  br i1 %i.i, label %bb.f, label %bb.e, !prof !7

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.25) #23
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = sub i64 %i.k, %i.m
  %i.o = icmp ugt i64 %i.c, %i.n
  br i1 %i.o, label %bb.g, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10ObjectDataEA_S5_EEPT_m.exit.i, !prof !16

bb.g:                                             ; preds = %bb.f
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 noundef %i.c) #22
  %.pre.i.i.i = load i64, ptr %i.l, align 8
  %.pre.i = load i64, ptr %i.j, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10ObjectDataEA_S5_EEPT_m.exit.i

_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10ObjectDataEA_S5_EEPT_m.exit.i: ; preds = %bb.g, %bb.f
  %i.p = phi i64 [ %.pre.i, %bb.g ], [ %i.k, %bb.f ]
  %i.q = phi i64 [ %.pre.i.i.i, %bb.g ], [ %i.m, %bb.f ] ; 2 uses
  %i.r = add i64 %i.q, %i.c                       ; 3 uses
  store i64 %i.r, ptr %i.l, align 8
  %i.s = sub i64 %i.p, %i.r
  %i.t = icmp ult i64 %i.s, 16
  br i1 %i.t, label %bb.h, label %.lr.ph.preheader, !prof !16

bb.h:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10ObjectDataEA_S5_EEPT_m.exit.i
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 noundef 16) #22
  %.pre.i.i2.i = load i64, ptr %i.l, align 8
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10ObjectDataEA_S5_EEPT_m.exit.i
  %i.u = phi i64 [ %.pre.i.i2.i, %bb.h ], [ %i.r, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10ObjectDataEA_S5_EEPT_m.exit.i ] ; 3 uses
  %i.v = inttoptr i64 %i.q to ptr                 ; 2 uses
  %i.w = inttoptr i64 %i.u to ptr                 ; 3 uses
  %i.x = add i64 %i.u, 16
  store i64 %i.x, ptr %i.l, align 8
  store ptr %i.v, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  store i64 %i.d, ptr %i.y, align 8
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %.pre = load i64, ptr %i.y, align 8             ; 3 uses
  %.not.i.i = icmp eq i64 %.pre, 0
  br i1 %.not.i.i, label %_ZSt4sortIPPN2v88internal8compiler10ObjectDataEEvT_S6_.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %.idx = shl nuw nsw i64 %.pre, 3
  %i.z = load ptr, ptr %i.w, align 8              ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx ; 2 uses
  %i.ab = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.pre, i1 true)
  %i.ac = shl nuw nsw i64 %i.ab, 1
  %i.ad = xor i64 %i.ac, 126
  call void @_ZSt16__introsort_loopIPPN2v88internal8compiler10ObjectDataElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr noundef %i.z, ptr noundef nonnull %i.aa, i64 noundef %i.ad)
  call void @_ZSt22__final_insertion_sortIPPN2v88internal8compiler10ObjectDataEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S9_T0_(ptr noundef %i.z, ptr noundef nonnull %i.aa)
  br label %_ZSt4sortIPPN2v88internal8compiler10ObjectDataEEvT_S6_.exit

_ZSt4sortIPPN2v88internal8compiler10ObjectDataEEvT_S6_.exit: ; preds = %._crit_edge, %bb.i
  %i.ae = or i64 %i.u, 2
  br label %bb.j

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.025 = phi ptr [ %i.ag, %.lr.ph ], [ %i.v, %.lr.ph.preheader ] ; 2 uses
  %.02024 = phi ptr [ %i.ah, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %.02024, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.sroa.0.0.copyload, ptr %4, align 8
  %i.af = call noundef ptr @_ZNK2v88internal8compiler9ObjectRef4dataEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store ptr %i.af, ptr %.025, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.025, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.02024, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ah, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !61

bb.j:                                             ; preds = %bb.a, %bb.c, %_ZSt4sortIPPN2v88internal8compiler10ObjectDataEEvT_S6_.exit
  %.sink = phi i64 [ %i.h, %bb.c ], [ %i.ae, %_ZSt4sortIPPN2v88internal8compiler10ObjectDataEEvT_S6_.exit ], [ 1, %bb.a ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIPPN2v88internal8compiler10ObjectDataElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPPN2v88internal8compiler10ObjectDataEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph45

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPPN2v88internal8compiler10ObjectDataEN9__gnu_cxx5__ops15_Iter_less_iterEET_S9_S9_T0_.exit
  %i.g = icmp eq i64 %i.at, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph45, !llvm.loop !62

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.020.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIPPN2v88internal8compiler10ObjectDataEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr noundef %0, ptr noundef %.020.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIPPN2v88internal8compiler10ObjectDataEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i
  %.07.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIPPN2v88internal8compiler10ObjectDataEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i ], [ %.020.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.07.i.i, i64 -8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = load ptr, ptr %0, align 8
  store ptr %i.j, ptr %i.h, align 8
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.k, %i.a                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 3                   ; 3 uses
  %i.n = add nsw i64 %i.m, -1
  %4 = lshr i64 %i.n, 1
  %i.o = icmp sgt i64 %i.m, 2
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.p = shl i64 %.029.i.i.i.i, 1                 ; 3 uses
  %i.q = add i64 %i.p, 2                          ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr [8 x i8], ptr %0, i64 %i.p
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.r, align 8
  %i.v = load ptr, ptr %i.t, align 8
  %i.w = icmp ult ptr %i.u, %i.v
  %i.x = or disjoint i64 %i.p, 1
  %spec.select.i.i.i.i = select i1 %i.w, i64 %i.x, i64 %i.q ; 4 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.i.i.i
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = icmp slt i64 %spec.select.i.i.i.i, %4
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !63

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ac = and i64 %i.l, 8
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = add nsw i64 %i.m, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa.i.i.i.i, %i.af
  br i1 %i.ag, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store ptr %i.ak, ptr %i.al, align 8
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPPN2v88internal8compiler10ObjectDataEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.01317.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.ai, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.01317.i.i.i.i.i = phi i64 [ %.018.i.i78.i.i.i, %bb.e ], [ %.01317.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.018.in.i.i.i.i.i = add nsw i64 %.01317.i.i.i.i.i, -1
  %.018.i.i78.i.i.i = lshr i64 %.018.in.i.i.i.i.i, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i78.i.i.i
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = icmp ult ptr %i.an, %i.i
  br i1 %i.ao, label %bb.e, label %_ZSt10__pop_heapIPPN2v88internal8compiler10ObjectDataEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i.i.i.i.i
  store ptr %i.an, ptr %i.ap, align 8
  %.not9.i.i.i = icmp eq i64 %.018.i.i78.i.i.i, 0
  br i1 %.not9.i.i.i, label %_ZSt10__pop_heapIPPN2v88internal8compiler10ObjectDataEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !64

_ZSt10__pop_heapIPPN2v88internal8compiler10ObjectDataEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.01317.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.aq = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i
  store ptr %i.i, ptr %i.aq, align 8
  %i.ar = icmp sgt i64 %i.l, 8
  br i1 %i.ar, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPPN2v88internal8compiler10ObjectDataEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit, !llvm.loop !65

.lr.ph45:                                         ; preds = %.lr.ph, %bb.b
  %.0121944 = phi i64 [ %i.at, %bb.b ], [ %2, %.lr.ph ]
  %.02043 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.as = phi i64 [ %i.br, %bb.b ], [ %i.c, %.lr.ph ]
  %i.at = add nsw i64 %.0121944, -1               ; 3 uses
  %i.au = lshr i64 %i.as, 4
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %.02043, i64 -8 ; 3 uses
  %i.ax = load ptr, ptr %i.e, align 8             ; 5 uses
  %i.ay = load ptr, ptr %i.av, align 8            ; 5 uses
  %i.az = icmp ult ptr %i.ax, %i.ay
  %i.ba = load ptr, ptr %i.aw, align 8            ; 6 uses
  br i1 %i.az, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph45
  %i.bb = icmp ult ptr %i.ay, %i.ba
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bc = load ptr, ptr %0, align 8
  store ptr %i.ay, ptr %0, align 8
  store ptr %i.bc, ptr %i.av, align 8
  br label %_ZSt22__move_median_to_firstIPPN2v88internal8compiler10ObjectDataEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.bd = icmp ult ptr %i.ax, %i.ba
  %i.be = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.ba, ptr %0, align 8
  store ptr %i.be, ptr %i.aw, align 8
  br label %_ZSt22__move_median_to_firstIPPN2v88internal8compiler10ObjectDataEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store ptr %i.ax, ptr %0, align 8
  store ptr %i.be, ptr %i.e, align 8
  br label %_ZSt22__move_median_to_firstIPPN2v88internal8compiler10ObjectDataEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph45
  %i.bf = icmp ult ptr %i.ax, %i.ba
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bg = load ptr, ptr %0, align 8
  store ptr %i.ax, ptr %0, align 8
  store ptr %i.bg, ptr %i.e, align 8
  br label %_ZSt22__move_median_to_firstIPPN2v88internal8compiler10ObjectDataEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bh = icmp ult ptr %i.ay, %i.ba
  %i.bi = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store ptr %i.ba, ptr %0, align 8
  store ptr %i.bi, ptr %i.aw, align 8
  br label %_ZSt22__move_median_to_firstIPPN2v88internal8compiler10ObjectDataEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  store ptr %i.ay, ptr %0, align 8
  store ptr %i.bi, ptr %i.av, align 8
  br label %_ZSt22__move_median_to_firstIPPN2v88internal8compiler10ObjectDataEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPPN2v88internal8compiler10ObjectDataEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIPPN2v88internal8compiler10ObjectDataEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i

_ZSt22__move_median_to_firstIPPN2v88internal8compiler10ObjectDataEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPPN2v88internal8compiler10ObjectDataEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader, %bb.r
  %.013.i.i = phi ptr [ %.114.i.i, %bb.r ], [ %.02043, %_ZSt22__move_median_to_firstIPPN2v88internal8compiler10ObjectDataEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.bm, %bb.r ], [ %i.e, %_ZSt22__move_median_to_firstIPPN2v88internal8compiler10ObjectDataEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %i.bj = load ptr, ptr %0, align 8               ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIPPN2v88internal8compiler10ObjectDataEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPPN2v88internal8compiler10ObjectDataEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i ], [ %i.bm, %bb.p ] ; 8 uses
  %i.bk = load ptr, ptr %.1.i.i, align 8          ; 2 uses
  %i.bl = icmp ult ptr %i.bk, %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br i1 %i.bl, label %bb.p, label %.preheader.i.i, !llvm.loop !66

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.p ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 5 uses
  %i.bn = load ptr, ptr %.114.i.i, align 8        ; 2 uses
  %i.bo = icmp ult ptr %i.bj, %i.bn
  br i1 %i.bo, label %.preheader.i.i, label %bb.q, !llvm.loop !67

bb.q:                                             ; preds = %.preheader.i.i
  %i.bp = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.bp, label %bb.r, label %_ZSt27__unguarded_partition_pivotIPPN2v88internal8compiler10ObjectDataEN9__gnu_cxx5__ops15_Iter_less_iterEET_S9_S9_T0_.exit

bb.r:                                             ; preds = %bb.q
  store ptr %i.bn, ptr %.1.i.i, align 8
  store ptr %i.bk, ptr %.114.i.i, align 8
  br label %_ZSt22__move_median_to_firstIPPN2v88internal8compiler10ObjectDataEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i, !llvm.loop !68

_ZSt27__unguarded_partition_pivotIPPN2v88internal8compiler10ObjectDataEN9__gnu_cxx5__ops15_Iter_less_iterEET_S9_S9_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIPPN2v88internal8compiler10ObjectDataElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02043, i64 noundef %i.at)
  %i.bq = ptrtoint ptr %.1.i.i to i64
  %i.br = sub i64 %i.bq, %i.a                     ; 2 uses
  %i.bs = icmp sgt i64 %i.br, 128
  br i1 %i.bs, label %bb.b, label %_ZSt14__partial_sortIPPN2v88internal8compiler10ObjectDataEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit, !llvm.loop !62

_ZSt14__partial_sortIPPN2v88internal8compiler10ObjectDataEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPPN2v88internal8compiler10ObjectDataEN9__gnu_cxx5__ops15_Iter_less_iterEET_S9_S9_T0_.exit, %_ZSt10__pop_heapIPPN2v88internal8compiler10ObjectDataEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIPPN2v88internal8compiler10ObjectDataEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S9_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13move_backwardIPPN2v88internal8compiler10ObjectDataES5_ET0_T_S7_S6_.exit.i, %bb.b
  %.020.i.idx = phi i64 [ 8, %bb.b ], [ %.020.i.add, %_ZSt13move_backwardIPPN2v88internal8compiler10ObjectDataES5_ET0_T_S7_S6_.exit.i ] ; 4 uses
  %.pn19.i = phi ptr [ %0, %bb.b ], [ %.020.i.ptr, %_ZSt13move_backwardIPPN2v88internal8compiler10ObjectDataES5_ET0_T_S7_S6_.exit.i ] ; 3 uses
  %.020.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.020.i.idx ; 4 uses
  %i.e = load ptr, ptr %.020.i.ptr, align 8       ; 4 uses
  %i.f = load ptr, ptr %0, align 8                ; 2 uses
  %i.g = icmp ult ptr %i.e, %i.f
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = icmp samesign ugt i64 %.020.i.idx, 8
  br i1 %i.h, label %bb.e, label %bb.f, !prof !7

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.020.i.idx, i1 false)
  br label %_ZSt13move_backwardIPPN2v88internal8compiler10ObjectDataES5_ET0_T_S7_S6_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 8
  store ptr %i.f, ptr %i.i, align 8
  br label %_ZSt13move_backwardIPPN2v88internal8compiler10ObjectDataES5_ET0_T_S7_S6_.exit.i

bb.g:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %.pn19.i, align 8          ; 2 uses
  %i.k = icmp ult ptr %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt13move_backwardIPPN2v88internal8compiler10ObjectDataES5_ET0_T_S7_S6_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.l = phi ptr [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.g ]
  %.013.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.pn19.i, %bb.g ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i, %.lr.ph.i.i ], [ %.020.i.ptr, %bb.g ]
  store ptr %i.l, ptr %.0912.i.i, align 8
  %.0.i.i = getelementptr inbounds i8, ptr %.013.i.i, i64 -8 ; 2 uses
  %i.m = load ptr, ptr %.0.i.i, align 8           ; 2 uses
  %i.n = icmp ult ptr %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt13move_backwardIPPN2v88internal8compiler10ObjectDataES5_ET0_T_S7_S6_.exit.i, !llvm.loop !69

_ZSt13move_backwardIPPN2v88internal8compiler10ObjectDataES5_ET0_T_S7_S6_.exit.i: ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.e
  %.sink.i = phi ptr [ %0, %bb.f ], [ %0, %bb.e ], [ %.020.i.ptr, %bb.g ], [ %.013.i.i, %.lr.ph.i.i ]
  store ptr %i.e, ptr %.sink.i, align 8
  %.020.i.add = add nuw nsw i64 %.020.i.idx, 8    ; 2 uses
  %.not.i = icmp eq i64 %.020.i.add, 128
  br i1 %.not.i, label %_ZSt16__insertion_sortIPPN2v88internal8compiler10ObjectDataEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %bb.c, !llvm.loop !70

_ZSt16__insertion_sortIPPN2v88internal8compiler10ObjectDataEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S9_T0_.exit: ; preds = %_ZSt13move_backwardIPPN2v88internal8compiler10ObjectDataES5_ET0_T_S7_S6_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.not5.i = icmp eq ptr %i.o, %1
end_hunk_1
