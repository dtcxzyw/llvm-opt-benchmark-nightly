begin_hunk_0
inline.NumInlined: 1074
inline.NumDeleted: 411
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1
define hidden void @_ZN6google8protobuf13json_internal9JsonLexer9SkipValueEv(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::Status") align 8 initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(136) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::Status", align 8 ; 8 uses
  %3 = alloca %"class.absl::lts_20250512::StatusOr.9", align 8 ; 18 uses
  %4 = alloca %"class.absl::lts_20250512::StatusOr.9", align 8 ; 12 uses
  %5 = alloca %"class.absl::lts_20250512::StatusOr.9", align 8 ; 7 uses
  %6 = alloca %"class.absl::lts_20250512::StatusOr", align 8 ; 10 uses
end_hunk_1
begin_hunk_2
  %.pr = load i64, ptr %0, align 8, !tbaa !29
  br label %bb.c

.loopexit:                                        ; preds = %bb.k, %14, %_ZN4absl12lts_202505126StatusD2Ev.exit81
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body
end_hunk_2
begin_hunk_3
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 40
end_hunk_3
begin_hunk_4
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  br label %bb.j

.noexc18:                                         ; preds = %.noexc17
  %i.ai = load i32, ptr %i.m, align 4, !tbaa !72
end_hunk_4
begin_hunk_5
  store i64 1, ptr %0, align 8, !tbaa !29, !alias.scope !76
  br label %.critedge

bb.j:                                             ; preds = %.preheader, %.noexc22
  %.025.i = phi i8 [ %.1.i, %.noexc22 ], [ 1, %.preheader ]
  %11 = trunc nuw i8 %.025.i to i1
  br i1 %11, label %bb.k, label %.invoke

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN6google8protobuf13json_internal9JsonLexer11SkipToTokenEv(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1)
          to label %bb.l unwind label %.loopexit

end_hunk_5
begin_hunk_6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19, !noalias !79
  br label %bb.ar

.loopexit137:                                     ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit55, %_ZN4absl12lts_202505126StatusD2Ev.exit51, %_ZNR4absl12lts_202505128StatusOrIN6google8protobuf13json_internal12LocationWithINS4_16MaybeOwnedStringEEEEdeEv.exit, %bb.aq
  %lpad.loopexit139 = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.loopexit.split-lp138:                            ; preds = %.invoke271, %bb.av
  %lpad.loopexit.split-lp140 = landingpad { ptr, i32 }
          cleanup
  br label %bb.be
end_hunk_6
begin_hunk_7
  br label %bb.be

bb.aq:                                            ; preds = %bb.aj
  invoke void @_ZNK6google8protobuf13json_internal12JsonLocation7InvalidESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 12, ptr nonnull @.str.19)
          to label %.critedge49.i unwind label %.loopexit137

bb.ar:                                            ; preds = %bb.am, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEED2Ev.exit64
  %i.cq = load i64, ptr %3, align 8, !tbaa !29    ; 4 uses
end_hunk_7
begin_hunk_8
bb.at:                                            ; preds = %bb.ar, %bb.as
  %i.cu = phi i64 [ %i.cq, %bb.ar ], [ %.pr131, %bb.as ]
  %i.cv = icmp eq i64 %i.cu, 1
  br i1 %i.cv, label %_ZN4absl12lts_202505126StatusD2Ev.exit55, label %.critedge49.i

_ZN4absl12lts_202505126StatusD2Ev.exit55:         ; preds = %bb.at
  invoke void @_ZN6google8protobuf13json_internal9JsonLexer6ExpectESt17basic_string_viewIcSt11char_traitsIcEENS1_12JsonLocation14SourceLocationE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 1, ptr nonnull @.str.35)
end_hunk_8
begin_hunk_9
bb.au:                                            ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit55
  %i.cw = load i64, ptr %0, align 8, !tbaa !29
  %i.cx = icmp eq i64 %i.cw, 1
  br i1 %i.cx, label %_ZN4absl12lts_202505126StatusD2Ev.exit54, label %.critedge49.i

_ZN4absl12lts_202505126StatusD2Ev.exit54:         ; preds = %bb.au
  %i.cy = load i64, ptr %3, align 8, !tbaa !29
end_hunk_9
begin_hunk_10
bb.aw:                                            ; preds = %_ZNR4absl12lts_202505128StatusOrIN6google8protobuf13json_internal12LocationWithINS4_16MaybeOwnedStringEEEEdeEv.exit
  %i.da = load i64, ptr %0, align 8, !tbaa !29
  %i.db = icmp eq i64 %i.da, 1
  br i1 %i.db, label %_ZN4absl12lts_202505126StatusD2Ev.exit51, label %.critedge49.i

_ZN4absl12lts_202505126StatusD2Ev.exit51:         ; preds = %bb.aw
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #19
  %i.dc = invoke noundef zeroext i1 @_ZN6google8protobuf13json_internal9JsonLexer4PeekESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(136) %1, i64 1, ptr nonnull @.str.36)
          to label %12 unwind label %.loopexit137

12:                                               ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit51
  %13 = zext i1 %i.dc to i8
  br label %.critedge49.i

.critedge49.i:                                    ; preds = %bb.aq, %12, %bb.aw, %bb.au, %bb.at
  %cond1.i = phi i1 [ true, %12 ], [ false, %bb.au ], [ false, %bb.at ], [ false, %bb.aw ], [ false, %bb.aq ]
  %.1.i = phi i8 [ %13, %12 ], [ 1, %bb.au ], [ 1, %bb.at ], [ 1, %bb.aw ], [ 1, %bb.aq ] ; 2 uses
  %i.dd = load i64, ptr %3, align 8, !tbaa !29    ; 3 uses
  %i.de = icmp eq i64 %i.dd, 1
  br i1 %i.de, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i45, label %bb.ba
end_hunk_10
begin_hunk_11

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEED2Ev.exit50: ; preds = %bb.az, %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit.i.i.i47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i48, %bb.ba, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !79
  br i1 %cond1.i, label %14, label %.critedge

14:                                               ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEED2Ev.exit50
  %15 = invoke noundef zeroext i1 @_ZN6google8protobuf13json_internal9JsonLexer4PeekESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(136) %1, i64 1, ptr nonnull @.str.33)
          to label %.noexc22 unwind label %.loopexit

.noexc22:                                         ; preds = %14
  br i1 %15, label %bb.bd, label %bb.j, !llvm.loop !88

bb.bd:                                            ; preds = %.noexc22
  %i.ds = load i32, ptr %i.m, align 4, !tbaa !72
end_hunk_11
begin_hunk_12
  %i.du = load i8, ptr %i.z, align 8, !tbaa !87, !range !44, !noalias !79, !noundef !45
  %i.dv = trunc nuw i8 %i.du to i1
  %.not.i = xor i1 %i.dv, true
  %16 = trunc nuw i8 %.1.i to i1
  %or.cond.i = select i1 %.not.i, i1 %16, i1 false
  br i1 %or.cond.i, label %.invoke, label %.noexc24

bb.be:                                            ; preds = %.loopexit137, %.loopexit.split-lp138, %bb.ap, %bb.ai
end_hunk_12
begin_hunk_13

.noexc24:                                         ; preds = %bb.bd
  store i64 1, ptr %0, align 8, !tbaa !29, !alias.scope !89
  br label %.critedge

bb.bf:                                            ; preds = %bb.e
end_hunk_13
begin_hunk_14
  br label %.critedge

.preheader142:                                    ; preds = %.noexc35
  br i1 %i.ek, label %.critedge305, label %17

17:                                               ; preds = %.preheader142
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 96
  br label %.invoke

.invoke:                                          ; preds = %bb.j, %bb.bd, %20, %17
  %i.eh = phi ptr [ %18, %17 ], [ %21, %20 ], [ %10, %bb.bd ], [ %10, %bb.j ]
  %19 = phi ptr [ @.str.34, %17 ], [ @.str.42, %20 ], [ @.str.37, %bb.bd ], [ @.str.34, %bb.j ]
  invoke void @_ZNK6google8protobuf13json_internal12JsonLocation7InvalidESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %i.eh, i64 12, ptr nonnull %19)
          to label %.critedge unwind label %.loopexit.split-lp.loopexit.split-lp

.critedge305:                                     ; preds = %.noexc30, %.preheader142
end_hunk_14
begin_hunk_15
  %i.eo = trunc nuw i8 %i.en to i1
  %.not.i26 = xor i1 %i.eo, true
  %or.cond.i27 = and i1 %i.ek, %.not.i26
  br i1 %or.cond.i27, label %20, label %.noexc37

20:                                               ; preds = %bb.bk
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 96
  br label %.invoke

.noexc37:                                         ; preds = %bb.bk
  %i.ep = load i32, ptr %i.dy, align 4, !tbaa !72
end_hunk_15
begin_hunk_16
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #21
  unreachable

.critedge:                                        ; preds = %bb.bj, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEED2Ev.exit50, %bb.l, %.invoke270, %.invoke, %.noexc37, %.noexc31, %_ZN4absl12lts_202505126StatusD2Ev.exit94, %bb.bi, %.noexc24, %.noexc18, %_ZN4absl12lts_202505126StatusD2Ev.exit85, %bb.i, %bb.c, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithIdEEED2Ev.exit, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal12LocationWithINS5_16MaybeOwnedStringEEEED2Ev.exit
  %i.fn = load i64, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.fo = trunc i64 %i.fn to i1
  br i1 %i.fo, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal9JsonLexer4KindEED2Ev.exit, label %bb.ca
end_hunk_16
begin_hunk_17
  %3 = alloca %"class.absl::lts_20250512::StatusOr.31", align 8 ; 10 uses
  %4 = alloca %"class.absl::lts_20250512::Status", align 8 ; 8 uses
  %5 = alloca %"class.absl::lts_20250512::Status", align 8 ; 9 uses
  %6 = alloca %"class.absl::lts_20250512::StatusOr.31", align 8 ; 10 uses
  %7 = alloca %"class.absl::lts_20250512::Status", align 8 ; 8 uses
  %8 = alloca %"class.absl::lts_20250512::Status", align 8 ; 8 uses
  %9 = alloca %"class.absl::lts_20250512::Status", align 8 ; 8 uses
end_hunk_17
begin_hunk_18

bb.i:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i16, ptr %i.i, align 8, !tbaa !172  ; 7 uses
  %i.k = zext i16 %i.j to i32                     ; 4 uses
  %i.l = and i16 %i.j, -1024
  switch i16 %i.l, label %bb.as [
    i16 -10240, label %bb.j
end_hunk_18
begin_hunk_19

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN4absl12lts_202505128StatusOrImEC2IKNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0EmT_EE5valueEiE4typeELi0EEEOS7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %10 unwind label %bb.x

bb.v:                                             ; preds = %bb.o, %bb.n
  %.pn76 = phi { ptr, i32 } [ %i.q, %bb.o ], [ %i.p, %bb.n ]
end_hunk_19
begin_hunk_20
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.ak

10:                                               ; preds = %bb.u
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %_ZN4absl12lts_202505128StatusOrImEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0EmT_EE5valueEiE4typeELi0EEEOS6_.exit.thread

bb.y:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
end_hunk_20
begin_hunk_21

bb.aa:                                            ; preds = %bb.y
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ab = load i16, ptr %i.aa, align 8, !tbaa !172 ; 2 uses
  %i.ac = and i16 %i.ab, -1024
  %or.cond6 = icmp eq i16 %i.ac, -9216
  br i1 %or.cond6, label %11, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
end_hunk_21
begin_hunk_22
  store i64 %i.ae, ptr %0, align 8, !tbaa !29
  store i64 55, ptr %8, align 8, !tbaa !29
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.ac, label %_ZN4absl12lts_202505126StatusD2Ev.exit99, !prof !66

bb.ac:                                            ; preds = %_ZN6google8protobuf13json_internal9JsonLexer7InvalidESt17basic_string_viewIcSt11char_traitsIcEENS1_12JsonLocation14SourceLocationE.exit
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0)
end_hunk_22
begin_hunk_23
_ZN4absl12lts_202505128StatusOrImEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0EmT_EE5valueEiE4typeELi0EEEOS6_.exit: ; preds = %bb.ac
  %.pre126 = load i64, ptr %8, align 8, !tbaa !29 ; 2 uses
  %i.ah = trunc i64 %.pre126 to i1
  br i1 %i.ah, label %_ZN4absl12lts_202505126StatusD2Ev.exit99, label %bb.ad

bb.ad:                                            ; preds = %_ZN4absl12lts_202505128StatusOrImEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0EmT_EE5valueEiE4typeELi0EEEOS6_.exit
  %i.ai = inttoptr i64 %.pre126 to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ai)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit99 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.aj = landingpad { ptr, i32 }
end_hunk_23
begin_hunk_24
  call void @__clang_call_terminate(ptr %i.ak) #21
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit99:         ; preds = %_ZN6google8protobuf13json_internal9JsonLexer7InvalidESt17basic_string_viewIcSt11char_traitsIcEENS1_12JsonLocation14SourceLocationE.exit, %_ZN4absl12lts_202505128StatusOrImEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0EmT_EE5valueEiE4typeELi0EEEOS6_.exit, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %_ZN4absl12lts_202505128StatusOrImEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0EmT_EE5valueEiE4typeELi0EEEOS6_.exit.thread

bb.af:                                            ; preds = %bb.z
  %i.al = landingpad { ptr, i32 }
          cleanup
end_hunk_24
begin_hunk_25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.ak

11:                                               ; preds = %bb.aa
  %12 = shl nuw nsw i32 %i.k, 10
  %13 = and i32 %12, 1047552
  %14 = and i16 %i.ab, 1023
  %15 = zext nneg i16 %14 to i32
  %16 = add nuw nsw i32 %13, 65536
  %17 = or disjoint i32 %16, %15
  br label %_ZN4absl12lts_202505128StatusOrImEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0EmT_EE5valueEiE4typeELi0EEEOS6_.exit.thread

_ZN4absl12lts_202505128StatusOrImEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0EmT_EE5valueEiE4typeELi0EEEOS6_.exit.thread: ; preds = %10, %_ZN4absl12lts_202505126StatusD2Ev.exit99, %11
  %.469 = phi i1 [ false, %10 ], [ true, %11 ], [ false, %_ZN4absl12lts_202505126StatusD2Ev.exit99 ]
  %.162 = phi i32 [ %i.k, %10 ], [ %17, %11 ], [ %i.k, %_ZN4absl12lts_202505126StatusD2Ev.exit99 ] ; 6 uses
  %.pre127 = load i64, ptr %6, align 8, !tbaa !29 ; 2 uses
  %i.an = trunc i64 %.pre127 to i1
  br i1 %i.an, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataItED2Ev.exit.thread, label %bb.ai
end_hunk_25
begin_hunk_26
  call void @__clang_call_terminate(ptr %i.aq) #21
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataItED2Ev.exit.thread: ; preds = %bb.ai, %_ZN4absl12lts_202505128StatusOrImEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0EmT_EE5valueEiE4typeELi0EEEOS6_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br i1 %.469, label %18, label %.critedge94

bb.ak:                                            ; preds = %bb.af, %bb.ah, %bb.x
  %.pn80.pn.pn = phi { ptr, i32 } [ %i.x, %bb.x ], [ %.pn80, %bb.ah ], [ %i.al, %bb.af ]
end_hunk_26
begin_hunk_27

bb.au:                                            ; preds = %bb.as
  %i.bd = icmp ult i16 %i.j, 2048
  br i1 %i.bd, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.be = lshr i16 %i.j, 6
end_hunk_27
begin_hunk_28
  store i64 1, ptr %0, align 8, !tbaa !29
  br label %.critedge94

18:                                               ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataItED2Ev.exit.thread
  %19 = icmp samesign ult i32 %.162, 65536
  br i1 %19, label %bb.aw, label %.thread123

bb.aw:                                            ; preds = %bb.au, %18
  %.364119122125 = phi i32 [ %.162, %18 ], [ %i.k, %bb.au ] ; 3 uses
  %20 = lshr i32 %.364119122125, 12
  %21 = trunc nuw nsw i32 %20 to i8
  %22 = or disjoint i8 %21, -32
  store i8 %22, ptr %2, align 1, !tbaa !14
  %i.bm = lshr i32 %.364119122125, 6
  %i.bn = trunc i32 %i.bm to i8
  %23 = and i8 %i.bn, 63
  %24 = or disjoint i8 %23, -128
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %24, ptr %25, align 1, !tbaa !14
  %26 = trunc i32 %.364119122125 to i8
  %27 = and i8 %26, 63
  %28 = or disjoint i8 %27, -128
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %28, ptr %29, align 1, !tbaa !14
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.bo, align 8, !tbaa !14
  store i64 1, ptr %0, align 8, !tbaa !29
  br label %.critedge94

.thread123:                                       ; preds = %18
  %30 = lshr i32 %.162, 6
  %31 = lshr i32 %.162, 12
  %32 = lshr i32 %.162, 18
  %33 = trunc i32 %.162 to i8
  %i.bp = trunc i32 %30 to i8
  %34 = trunc i32 %31 to i8
  %35 = trunc nsw i32 %32 to i8
  %36 = insertelement <4 x i8> poison, i8 %35, i64 0
  %37 = insertelement <4 x i8> %36, i8 %34, i64 1
  %38 = insertelement <4 x i8> %37, i8 %i.bp, i64 2
  %39 = insertelement <4 x i8> %38, i8 %33, i64 3
  %40 = and <4 x i8> %39, <i8 -1, i8 63, i8 63, i8 63>
  %41 = or <4 x i8> %40, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %41, ptr %2, align 1, !tbaa !14
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.bq, align 8, !tbaa !14
  store i64 1, ptr %0, align 8, !tbaa !29
  br label %.critedge94

.critedge94:                                      ; preds = %bb.p, %bb.f, %_ZN4absl12lts_202505126StatusD2Ev.exit108, %bb.at, %bb.av, %bb.aw, %.thread123, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataItED2Ev.exit.thread
  %i.br = load i64, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.bs = trunc i64 %i.br to i1
  br i1 %i.bs, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataItED2Ev.exit109, label %bb.ax
end_hunk_28
