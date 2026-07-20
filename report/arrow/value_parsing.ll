inline.NumInlined: 865
inline.NumDeleted: 342
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN5arrow8internal13StringToFloatEPKcmcPd:bb.a
  %i.i = select i1 %i.g, i1 %i.h, i1 false
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5arrow8internal13StringToFloatEPKcmcPNS_4util7Float16E(ptr noundef %0, i64 noundef %1, i8 noundef signext %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %.sroa.4.8.insert.ext = zext i8 %2 to i64
  %.sroa.4.12.insert.insert = or disjoint i64 %.sroa.4.8.insert.ext, 42949672960
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.c = call { ptr, i32 } @_ZN14arrow_vendored10fast_float25from_chars_float_advancedIfcEENS0_19from_chars_result_tIT0_EEPKS3_S6_RT_NS0_15parse_options_tIS3_EE(ptr noundef %0, ptr noundef %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i64 5, i64 %.sroa.4.12.insert.insert) #19 ; 2 uses
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  %i.e = extractvalue { ptr, i32 } %i.c, 1        ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  %i.g = icmp eq i32 %i.e, 34
  %i.h = or i1 %i.f, %i.g
  %i.i = icmp eq ptr %i.d, %i.b
  %i.j = select i1 %i.h, i1 %i.i, i1 false        ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load float, ptr %i.a, align 4, !tbaa !7
  %i.l = call i16 @_ZN5arrow4util7Float169FromFloatEf(float noundef %i.k)
  store i16 %i.l, ptr %3, align 2, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i1 %i.j
}

declare i16 @_ZN5arrow4util7Float169FromFloatEf(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZNK5arrow15TimestampParser6formatEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 {
bb.a:
  ret ptr @.str
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow15TimestampParser12MakeStrptimeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #20, !noalias !11 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !16, !noalias !18
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !19, !noalias !18
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow8internal12_GLOBAL__N_123StrptimeTimestampParserESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !20, !noalias !18
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !18
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !22, !noalias !18 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread.i.i.i.i.i: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !28, !noalias !18 ; 3 uses
  %i.k = icmp samesign ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1                  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false), !noalias !18
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.g, ptr %1, align 8, !tbaa !22, !noalias !18
  store i64 0, ptr %i.i, align 8, !tbaa !28, !noalias !18
  store i8 0, ptr %i.g, align 8, !tbaa !29, !noalias !18
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5arrow8internal12_GLOBAL__N_123StrptimeTimestampParserE, i64 16), ptr %i.d, align 8, !tbaa !20, !noalias !18
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !30, !noalias !18
  br label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.p = load i64, ptr %i.g, align 8, !tbaa !29, !noalias !18 ; 2 uses
  store i64 %i.p, ptr %i.e, align 8, !tbaa !29, !noalias !18
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.pre.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !tbaa !28, !noalias !18 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.g, ptr %1, align 8, !tbaa !22, !noalias !18
  store i64 0, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !tbaa !28, !noalias !18
  store i8 0, ptr %i.g, align 8, !tbaa !29, !noalias !18
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5arrow8internal12_GLOBAL__N_123StrptimeTimestampParserE, i64 16), ptr %i.d, align 8, !tbaa !20, !noalias !18
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !30, !noalias !18
  %i.t = icmp eq ptr %i.f, %i.e
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i
  %.pre.i.i.i.i.i = add nuw nsw i64 %.pre.i.i.i.i.i.i, 1
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread.i.i.i.i.i
  %.pre-phi.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i.i.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread.i.i.i.i.i ]
  %i.u = phi ptr [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i.i.i.i ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread.i.i.i.i.i ] ; 2 uses
  %i.v = phi ptr [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i.i.i.i ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread.i.i.i.i.i ]
  %i.w = phi i64 [ %.pre.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i.i.i.i ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread.i.i.i.i.i ] ; 2 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %.pre-phi.i.i.i.i.i, i1 false), !noalias !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i
  store ptr %i.f, ptr %i.r, align 8, !tbaa !22, !noalias !18
  store i64 %i.p, ptr %i.s, align 8, !tbaa !29, !noalias !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.b
  %i.y = phi ptr [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ], [ %i.v, %bb.b ]
  %i.z = phi i64 [ %.pre.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ], [ %i.w, %bb.b ] ; 4 uses
  %i.aa = phi ptr [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ], [ %i.u, %bb.b ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !28, !noalias !18
  store ptr %i.e, ptr %2, align 8, !tbaa !22, !noalias !18
  store i64 0, ptr %i.y, align 8, !tbaa !28, !noalias !18
  store i8 0, ptr %i.e, align 8, !tbaa !29, !noalias !18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  store i8 0, ptr %i.ac, align 8, !tbaa !31, !noalias !18
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow8internal12_GLOBAL__N_123StrptimeTimestampParserELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i, %bb.f
  %.07.i.i.i.i.i.i.i = phi i64 [ %i.al, %bb.f ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.07.i.i.i.i.i.i.i
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !29, !noalias !18
  %i.af = icmp eq i8 %i.ae, 37
  br i1 %i.af, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ag = add nuw i64 %.07.i.i.i.i.i.i.i, 1       ; 4 uses
  %i.ah = icmp ult i64 %i.ag, %i.z
  br i1 %i.ah, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ag
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !29, !noalias !18
  %i.ak = icmp eq i8 %i.aj, 122
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.ac, align 8, !tbaa !31, !noalias !18
  br label %_ZNSt12__shared_ptrIN5arrow8internal12_GLOBAL__N_123StrptimeTimestampParserELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d, %bb.c, %.lr.ph.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i = phi i64 [ %.07.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ag, %bb.d ], [ %i.ag, %bb.c ]
  %i.al = add i64 %.1.i.i.i.i.i.i.i, 1            ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.z
  br i1 %i.am, label %.lr.ph.i.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow8internal12_GLOBAL__N_123StrptimeTimestampParserELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !llvm.loop !35

_ZNSt12__shared_ptrIN5arrow8internal12_GLOBAL__N_123StrptimeTimestampParserELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.f, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !18
  store ptr %i.d, ptr %0, align 8, !tbaa !37
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.an, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow15TimestampParser11MakeISO8601Ev(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) initializes((0, 16)) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt12__shared_ptrIN5arrow8internal12_GLOBAL__N_113ISO8601ParserELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #20, !noalias !43 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !16, !noalias !48
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !19, !noalias !48
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow8internal12_GLOBAL__N_113ISO8601ParserESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !20, !noalias !48
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5arrow8internal12_GLOBAL__N_113ISO8601ParserE, i64 16), ptr %i.d, align 8, !tbaa !20, !noalias !48
  store ptr %i.d, ptr %0, align 8, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.e, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow15TimestampParserD0Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #21
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i32 } @_ZN14arrow_vendored10fast_float25from_chars_float_advancedIfcEENS0_19from_chars_result_tIT0_EEPKS3_S6_RT_NS0_15parse_options_tIS3_EE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i64 %3, i64 %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 11 uses
  %5 = alloca %"struct.arrow_vendored::fast_float::parsed_number_string_t", align 8 ; 14 uses
  %i.b = or i64 %3, 128
  %i.c = and i64 %3, 256
  %.not = icmp eq i64 %i.c, 0
  %.not33253 = icmp eq ptr %0, %1
  %or.cond368 = or i1 %.not, %.not33253
  br i1 %or.cond368, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %6 = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.a, %6
  %scevgep = getelementptr i8, ptr %0, i64 %i.d
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.0254 = phi ptr [ %i.j, %bb.b ], [ %0, %.lr.ph.preheader ] ; 3 uses
  %i.e = load i8, ptr %.0254, align 1, !tbaa !29
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr @_ZN14arrow_vendored10fast_float9space_lutIvE5valueE, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !49, !range !50, !noundef !51
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.0254, i64 1 ; 2 uses
  %.not33 = icmp eq ptr %i.j, %1
  br i1 %.not33, label %.critedge, label %.lr.ph, !llvm.loop !52

.critedge:                                        ; preds = %bb.b, %.lr.ph, %bb.a
  %.1 = phi ptr [ %0, %bb.a ], [ %.0254, %.lr.ph ], [ %scevgep, %bb.b ] ; 9 uses
  %i.k = icmp eq ptr %.1, %1
  br i1 %i.k, label %bb.az, label %bb.c

bb.c:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.l = and i64 %3, 32
  %.not34 = icmp eq i64 %i.l, 0
  %.sroa.2.8.extract.trunc.i36 = trunc i64 %4 to i8 ; 5 uses
  %i.m = load i8, ptr %.1, align 1, !tbaa !29, !noalias !51 ; 3 uses
  %i.n = icmp eq i8 %i.m, 45                      ; 2 uses
  %i.o = zext i1 %i.n to i8
  br i1 %.not34, label %bb.aa, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.n, label %bb.e, label %.lr.ph261.preheader

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 3 uses
  %i.q = icmp eq ptr %i.p, %1
  br i1 %i.q, label %_ZN14arrow_vendored10fast_float18report_parse_errorIcEENS0_22parsed_number_string_tIT_EEPKS3_NS0_11parse_errorE.exit65, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i8, ptr %i.p, align 1, !tbaa !29, !noalias !53 ; 2 uses
  %i.s = add i8 %i.r, -48
  %i.t = icmp ult i8 %i.s, 10
  br i1 %i.t, label %.lr.ph261.preheader, label %_ZN14arrow_vendored10fast_float18report_parse_errorIcEENS0_22parsed_number_string_tIT_EEPKS3_NS0_11parse_errorE.exit65

.lr.ph261.preheader:                              ; preds = %bb.f, %bb.d
  %i.u = phi i8 [ %i.r, %bb.f ], [ %i.m, %bb.d ]
  %.0190 = phi ptr [ %i.p, %bb.f ], [ %.1, %bb.d ] ; 9 uses
  %.0190384 = ptrtoint ptr %.0190 to i64          ; 2 uses
  %i.v = sub i64 %i.a, %.0190384
  %scevgep385 = getelementptr i8, ptr %.0190, i64 %i.v
  br label %.lr.ph261

.lr.ph261:                                        ; preds = %.lr.ph261.preheader, %bb.g
  %.0182259 = phi i64 [ %i.ac, %bb.g ], [ 0, %.lr.ph261.preheader ] ; 2 uses
  %.1191258 = phi ptr [ %i.ad, %bb.g ], [ %.0190, %.lr.ph261.preheader ] ; 3 uses
  %i.w = load i8, ptr %.1191258, align 1, !tbaa !29, !noalias !53 ; 2 uses
  %i.x = add i8 %i.w, -48
  %i.y = icmp ult i8 %i.x, 10                     ; 2 uses
  br i1 %i.y, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %.lr.ph261
  %i.z = mul i64 %.0182259, 10
  %i.aa = zext nneg i8 %i.w to i64
  %i.ab = add i64 %i.z, -48
  %i.ac = add i64 %i.ab, %i.aa                    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.1191258, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.ad, %1
  br i1 %.not.i, label %.critedge.i, label %.lr.ph261, !llvm.loop !56

.critedge.i:                                      ; preds = %bb.g, %.lr.ph261
  %.1191.lcssa.ph = phi ptr [ %scevgep385, %bb.g ], [ %.1191258, %.lr.ph261 ] ; 7 uses
  %.0182.lcssa.ph = phi i64 [ %i.ac, %bb.g ], [ %.0182259, %.lr.ph261 ] ; 4 uses
  %i.ae = ptrtoint ptr %.1191.lcssa.ph to i64     ; 2 uses
  %i.af = sub i64 %i.ae, %.0190384                ; 8 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_ZN14arrow_vendored10fast_float18report_parse_errorIcEENS0_22parsed_number_string_tIT_EEPKS3_NS0_11parse_errorE.exit65, label %bb.h

bb.h:                                             ; preds = %.critedge.i
  %i.ah = icmp eq i8 %i.u, 48
  %i.ai = icmp sgt i64 %i.af, 1
  %or.cond.i = and i1 %i.ai, %i.ah
  br i1 %or.cond.i, label %_ZN14arrow_vendored10fast_float18report_parse_errorIcEENS0_22parsed_number_string_tIT_EEPKS3_NS0_11parse_errorE.exit65, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.y, label %.thread210, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = load i8, ptr %.1191.lcssa.ph, align 1, !tbaa !29, !noalias !53
  %i.ak = icmp eq i8 %i.aj, %.sroa.2.8.extract.trunc.i36
  br i1 %i.ak, label %bb.k, label %.thread210

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %.1191.lcssa.ph, i64 1 ; 4 uses
  %i.am = ptrtoint ptr %i.al to i64               ; 4 uses
  %i.an = sub i64 %i.a, %i.am
  %i.ao = icmp sgt i64 %i.an, 7
  br i1 %i.ao, label %.lr.ph271, label %_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit69

.lr.ph271:                                        ; preds = %bb.k, %.noexc68
  %.7189270 = phi i64 [ %i.be, %.noexc68 ], [ %.0182.lcssa.ph, %bb.k ] ; 2 uses
  %.11201269 = phi ptr [ %i.bf, %.noexc68 ], [ %i.al, %bb.k ] ; 4 uses
  %.0.copyload.i72 = load i64, ptr %.11201269, align 1, !noalias !53 ; 2 uses
  %i.ap = add i64 %.0.copyload.i72, 5063812098665367110
  %i.aq = add i64 %.0.copyload.i72, -3472328296227680304 ; 3 uses
  %i.ar = or i64 %i.ap, %i.aq
  %i.as = and i64 %i.ar, -9187201950435737472
  %.not.i70 = icmp eq i64 %i.as, 0
  br i1 %.not.i70, label %.noexc68, label %.lr.ph271._ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit69.loopexit_crit_edge

.lr.ph271._ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit69.loopexit_crit_edge: ; preds = %.lr.ph271
  %.pre = ptrtoint ptr %.11201269 to i64
  br label %_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit69

.noexc68:                                         ; preds = %.lr.ph271
  %i.at = mul i64 %.7189270, 100000000
  %i.au = mul i64 %i.aq, 10
  %i.av = lshr i64 %i.aq, 8
  %i.aw = add i64 %i.au, %i.av                    ; 2 uses
  %i.ax = and i64 %i.aw, 1095216660735
  %i.ay = mul i64 %i.ax, 4294967296000100
  %i.az = lshr i64 %i.aw, 16
  %i.ba = and i64 %i.az, 1095216660735
  %i.bb = mul i64 %i.ba, 42949672960001
  %i.bc = add i64 %i.bb, %i.ay
  %i.bd = lshr i64 %i.bc, 32
  %i.be = add i64 %i.bd, %i.at                    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.11201269, i64 8 ; 3 uses
  %i.bg = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bh = sub i64 %i.a, %i.bg
  %i.bi = icmp sgt i64 %i.bh, 7
  br i1 %i.bi, label %.lr.ph271, label %_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit69, !llvm.loop !57

_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit69: ; preds = %.noexc68, %.lr.ph271._ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit69.loopexit_crit_edge, %bb.k
  %.11201.lcssa386.pre-phi = phi i64 [ %i.am, %bb.k ], [ %.pre, %.lr.ph271._ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit69.loopexit_crit_edge ], [ %i.bg, %.noexc68 ] ; 2 uses
  %.11201.lcssa = phi ptr [ %i.al, %bb.k ], [ %.11201269, %.lr.ph271._ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit69.loopexit_crit_edge ], [ %i.bf, %.noexc68 ] ; 4 uses
  %.7189.lcssa = phi i64 [ %.0182.lcssa.ph, %bb.k ], [ %.7189270, %.lr.ph271._ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit69.loopexit_crit_edge ], [ %i.be, %.noexc68 ] ; 2 uses
  %.not105.i276 = icmp eq ptr %.11201.lcssa, %1
  br i1 %.not105.i276, label %._crit_edge, label %.lr.ph279.preheader

.lr.ph279.preheader:                              ; preds = %_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit69
  %i.bj = sub i64 %i.a, %.11201.lcssa386.pre-phi
  %scevgep387 = getelementptr i8, ptr %.11201.lcssa, i64 %i.bj
  br label %.lr.ph279

.lr.ph279:                                        ; preds = %.lr.ph279.preheader, %bb.l
  %.6188278 = phi i64 [ %i.bq, %bb.l ], [ %.7189.lcssa, %.lr.ph279.preheader ] ; 2 uses
  %.10200277 = phi ptr [ %i.bn, %bb.l ], [ %.11201.lcssa, %.lr.ph279.preheader ] ; 3 uses
  %i.bk = load i8, ptr %.10200277, align 1, !tbaa !29, !noalias !53
  %i.bl = add i8 %i.bk, -48                       ; 2 uses
  %i.bm = icmp ult i8 %i.bl, 10
  br i1 %i.bm, label %bb.l, label %._crit_edge.loopexit

bb.l:                                             ; preds = %.lr.ph279
  %i.bn = getelementptr inbounds nuw i8, ptr %.10200277, i64 1 ; 2 uses
  %i.bo = mul i64 %.6188278, 10
  %i.bp = zext nneg i8 %i.bl to i64
  %i.bq = add i64 %i.bo, %i.bp                    ; 2 uses
  %.not105.i = icmp eq ptr %i.bn, %1
  br i1 %.not105.i, label %._crit_edge.loopexit, label %.lr.ph279, !llvm.loop !58

._crit_edge.loopexit:                             ; preds = %bb.l, %.lr.ph279
  %.10200.lcssa.ph = phi ptr [ %.10200277, %.lr.ph279 ], [ %scevgep387, %bb.l ] ; 2 uses
  %.6188.lcssa.ph = phi i64 [ %.6188278, %.lr.ph279 ], [ %i.bq, %bb.l ]
  %.pre398 = ptrtoint ptr %.10200.lcssa.ph to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit69
  %.pre-phi399 = phi i64 [ %.pre398, %._crit_edge.loopexit ], [ %.11201.lcssa386.pre-phi, %_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit69 ] ; 2 uses
  %.10200.lcssa = phi ptr [ %.10200.lcssa.ph, %._crit_edge.loopexit ], [ %.11201.lcssa, %_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit69 ]
  %.6188.lcssa = phi i64 [ %.6188.lcssa.ph, %._crit_edge.loopexit ], [ %.7189.lcssa, %_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit69 ]
  %i.br = sub i64 %i.am, %.pre-phi399             ; 3 uses
  %i.bs = sub i64 %.pre-phi399, %i.am
  %i.bt = sub nsw i64 %i.af, %i.br
  %i.bu = icmp eq i64 %i.br, 0
  br i1 %i.bu, label %_ZN14arrow_vendored10fast_float18report_parse_errorIcEENS0_22parsed_number_string_tIT_EEPKS3_NS0_11parse_errorE.exit65, label %.thread210

.thread210:                                       ; preds = %bb.i, %bb.j, %._crit_edge
  %.071.i223 = phi i64 [ %i.bt, %._crit_edge ], [ %i.af, %bb.j ], [ %i.af, %bb.i ] ; 2 uses
  %.072.i222 = phi i64 [ %i.br, %._crit_edge ], [ 0, %bb.j ], [ 0, %bb.i ] ; 3 uses
  %.1183221 = phi i64 [ %.6188.lcssa, %._crit_edge ], [ %.0182.lcssa.ph, %bb.j ], [ %.0182.lcssa.ph, %bb.i ] ; 2 uses
  %.sroa.20.0220 = phi i64 [ %i.bs, %._crit_edge ], [ 0, %bb.j ], [ 0, %bb.i ] ; 5 uses
  %.sroa.17.0219 = phi ptr [ %i.al, %._crit_edge ], [ null, %bb.j ], [ null, %bb.i ] ; 7 uses
  %.2192218 = phi ptr [ %.10200.lcssa, %._crit_edge ], [ %.1191.lcssa.ph, %bb.j ], [ %.1191.lcssa.ph, %bb.i ] ; 7 uses
  %i.bv = and i64 %3, 1
  %.not106.i = icmp eq i64 %i.bv, 0
  %.not107.i = icmp eq ptr %.2192218, %1          ; 2 uses
  %or.cond = or i1 %.not106.i, %.not107.i
  br i1 %or.cond, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.thread210
  %i.bw = load i8, ptr %.2192218, align 1, !tbaa !29, !noalias !53 ; 3 uses
  switch i8 %i.bw, label %bb.n [
    i8 101, label %bb.p
    i8 69, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m, %.thread210
  %i.bx = and i64 %3, 64
  %.not108.i = icmp eq i64 %i.bx, 0
  %or.cond238 = or i1 %.not108.i, %.not107.i
  br i1 %or.cond238, label %bb.y, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.by = load i8, ptr %.2192218, align 1, !tbaa !29, !noalias !53 ; 5 uses
  switch i8 %i.by, label %bb.y [
    i8 43, label %bb.p
    i8 45, label %bb.p
    i8 100, label %bb.p
    i8 68, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o, %bb.o, %bb.o, %bb.m, %bb.m
  %i.bz = phi i8 [ %i.by, %bb.o ], [ %i.by, %bb.o ], [ %i.by, %bb.o ], [ %i.by, %bb.o ], [ %i.bw, %bb.m ], [ %i.bw, %bb.m ]
  switch i8 %i.bz, label %bb.r [
    i8 101, label %bb.q
    i8 69, label %bb.q
    i8 100, label %bb.q
    i8 68, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p, %bb.p, %bb.p
  %i.ca = getelementptr inbounds nuw i8, ptr %.2192218, i64 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.3193 = phi ptr [ %.2192218, %bb.p ], [ %i.ca, %bb.q ] ; 5 uses
  %.not112.i = icmp eq ptr %.3193, %1
  br i1 %.not112.i, label %.thread224, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cb = load i8, ptr %.3193, align 1, !tbaa !29, !noalias !53 ; 2 uses
  %i.cc = icmp eq i8 %i.cb, 45
  br i1 %i.cc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cd = getelementptr inbounds nuw i8, ptr %.3193, i64 1
  br label %.thread224

bb.u:                                             ; preds = %bb.s
  %i.ce = icmp eq i8 %i.cb, 43
  %spec.select.idx = zext i1 %i.ce to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %.3193, i64 %spec.select.idx
  br label %.thread224

.thread224:                                       ; preds = %bb.u, %bb.r, %bb.t
  %.4194 = phi ptr [ %i.cd, %bb.t ], [ %.3193, %bb.r ], [ %spec.select, %bb.u ] ; 5 uses
  %.082.i = phi i1 [ true, %bb.t ], [ false, %bb.r ], [ false, %bb.u ]
  %.4194388 = ptrtoint ptr %.4194 to i64
  %i.cf = icmp eq ptr %.4194, %1
  br i1 %i.cf, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.thread224
  %i.cg = load i8, ptr %.4194, align 1, !tbaa !29, !noalias !53
  %i.ch = add i8 %i.cg, -48
  %i.ci = icmp ult i8 %i.ch, 10
  br i1 %i.ci, label %.lr.ph288.preheader, label %bb.w

.lr.ph288.preheader:                              ; preds = %bb.v
  %i.cj = sub i64 %i.a, %.4194388
  %scevgep389 = getelementptr i8, ptr %.4194, i64 %i.cj
  br label %.lr.ph288

bb.w:                                             ; preds = %bb.v, %.thread224
  %i.ck = and i64 %3, 4
  %.not115.i = icmp eq i64 %i.ck, 0
  br i1 %.not115.i, label %_ZN14arrow_vendored10fast_float18report_parse_errorIcEENS0_22parsed_number_string_tIT_EEPKS3_NS0_11parse_errorE.exit65, label %.thread226

.lr.ph288:                                        ; preds = %.lr.ph288.preheader, %bb.x
  %.076.i287 = phi i64 [ %.177.i, %bb.x ], [ 0, %.lr.ph288.preheader ] ; 4 uses
  %.9199286 = phi ptr [ %i.cs, %bb.x ], [ %.4194, %.lr.ph288.preheader ] ; 3 uses
  %i.cl = load i8, ptr %.9199286, align 1, !tbaa !29, !noalias !53
  %i.cm = add i8 %i.cl, -48                       ; 2 uses
  %i.cn = icmp ult i8 %i.cm, 10
  br i1 %i.cn, label %bb.x, label %.critedge7.i

bb.x:                                             ; preds = %.lr.ph288
  %i.co = icmp slt i64 %.076.i287, 268435456
  %i.cp = mul nsw i64 %.076.i287, 10
  %i.cq = zext nneg i8 %i.cm to i64
  %i.cr = add nsw i64 %i.cp, %i.cq
  %.177.i = select i1 %i.co, i64 %i.cr, i64 %.076.i287 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.9199286, i64 1 ; 2 uses
  %.not114.i = icmp eq ptr %i.cs, %1
  br i1 %.not114.i, label %.critedge7.i, label %.lr.ph288, !llvm.loop !59

.critedge7.i:                                     ; preds = %bb.x, %.lr.ph288
  %.9199.lcssa.ph = phi ptr [ %scevgep389, %bb.x ], [ %.9199286, %.lr.ph288 ]
  %.076.i.lcssa.ph = phi i64 [ %.177.i, %bb.x ], [ %.076.i287, %.lr.ph288 ] ; 2 uses
  %i.ct = sub nsw i64 0, %.076.i.lcssa.ph
  %spec.select.i = select i1 %.082.i, i64 %i.ct, i64 %.076.i.lcssa.ph ; 2 uses
  %i.cu = add nsw i64 %spec.select.i, %.072.i222
  br label %.thread226

bb.y:                                             ; preds = %bb.o, %bb.n
  %i.cv = and i64 %3, 5
  %or.cond239.not.not = icmp eq i64 %i.cv, 1
  br i1 %or.cond239.not.not, label %_ZN14arrow_vendored10fast_float18report_parse_errorIcEENS0_22parsed_number_string_tIT_EEPKS3_NS0_11parse_errorE.exit65, label %.thread226

.thread226:                                       ; preds = %bb.w, %.critedge7.i, %bb.y
  %.6196 = phi ptr [ %.2192218, %bb.y ], [ %.9199.lcssa.ph, %.critedge7.i ], [ %.2192218, %bb.w ] ; 3 uses
  %.581.i = phi i64 [ 0, %bb.y ], [ %spec.select.i, %.critedge7.i ], [ 0, %bb.w ]
  %.3.i = phi i64 [ %.072.i222, %bb.y ], [ %i.cu, %.critedge7.i ], [ %.072.i222, %bb.w ] ; 2 uses
  %i.cw = icmp sgt i64 %.071.i223, 19
  br i1 %i.cw, label %.lr.ph297, label %_ZN14arrow_vendored10fast_float19parse_number_stringILb1EcEENS0_22parsed_number_string_tIT0_EEPKS3_S6_NS0_15parse_options_tIS3_EE.exit

.lr.ph297:                                        ; preds = %.thread226, %.critedge11.i
  %.1.i296 = phi i64 [ %spec.select118.i, %.critedge11.i ], [ %.071.i223, %.thread226 ] ; 2 uses
  %.075.i295 = phi ptr [ %i.db, %.critedge11.i ], [ %.0190, %.thread226 ] ; 2 uses
  %i.cx = load i8, ptr %.075.i295, align 1, !tbaa !29 ; 2 uses
  %i.cy = icmp eq i8 %i.cx, 48                    ; 2 uses
  %i.cz = icmp eq i8 %i.cx, %.sroa.2.8.extract.trunc.i36
  %or.cond117.i = select i1 %i.cy, i1 true, i1 %i.cz
  br i1 %or.cond117.i, label %.critedge11.i, label %.critedge9.i

.critedge11.i:                                    ; preds = %.lr.ph297
  %i.da = sext i1 %i.cy to i64
  %spec.select118.i = add nsw i64 %.1.i296, %i.da ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.075.i295, i64 1 ; 2 uses
  %.not116.i = icmp eq ptr %i.db, %1
  br i1 %.not116.i, label %.critedge9.i, label %.lr.ph297, !llvm.loop !60

.critedge9.i:                                     ; preds = %.critedge11.i, %.lr.ph297
  %.1.i.lcssa.ph = phi i64 [ %spec.select118.i, %.critedge11.i ], [ %.1.i296, %.lr.ph297 ]
  %i.dc = icmp sgt i64 %.1.i.lcssa.ph, 19
  br i1 %i.dc, label %.preheader247, label %_ZN14arrow_vendored10fast_float19parse_number_stringILb1EcEENS0_22parsed_number_string_tIT0_EEPKS3_S6_NS0_15parse_options_tIS3_EE.exit

.preheader247:                                    ; preds = %.critedge9.i
  %.not369 = icmp eq ptr %.0190, %.1191.lcssa.ph
  br i1 %.not369, label %._crit_edge304.thread, label %.lr.ph303

.lr.ph303:                                        ; preds = %.preheader247, %.lr.ph303
  %.3185302 = phi i64 [ %i.dh, %.lr.ph303 ], [ 0, %.preheader247 ]
  %.7197301 = phi ptr [ %i.di, %.lr.ph303 ], [ %.0190, %.preheader247 ] ; 2 uses
  %i.dd = mul nuw i64 %.3185302, 10
  %i.de = load i8, ptr %.7197301, align 1, !tbaa !29
  %i.df = sext i8 %i.de to i64
  %i.dg = add i64 %i.dd, -48
  %i.dh = add i64 %i.dg, %i.df                    ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.7197301, i64 1 ; 3 uses
  %i.dj = icmp ult i64 %i.dh, 1000000000000000000
  %i.dk = icmp ne ptr %i.di, %.1191.lcssa.ph
  %i.dl = select i1 %i.dj, i1 %i.dk, i1 false
  br i1 %i.dl, label %.lr.ph303, label %._crit_edge304, !llvm.loop !61

._crit_edge304:                                   ; preds = %.lr.ph303
  %i.dm = icmp ugt i64 %i.dh, 999999999999999999
  br i1 %i.dm, label %bb.z, label %._crit_edge304.thread

._crit_edge304.thread:                            ; preds = %.preheader247, %._crit_edge304
  %.3185.lcssa426 = phi i64 [ %i.dh, %._crit_edge304 ], [ 0, %.preheader247 ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.17.0219, i64 %.sroa.20.0220
  %.not370 = icmp samesign eq i64 %.sroa.20.0220, 0
  br i1 %.not370, label %._crit_edge311, label %.lr.ph310

.lr.ph310:                                        ; preds = %._crit_edge304.thread, %.lr.ph310
  %.4186308 = phi i64 [ %i.ds, %.lr.ph310 ], [ %.3185.lcssa426, %._crit_edge304.thread ]
  %.8198307 = phi ptr [ %i.dt, %.lr.ph310 ], [ %.sroa.17.0219, %._crit_edge304.thread ] ; 2 uses
  %i.do = mul nuw i64 %.4186308, 10
  %i.dp = load i8, ptr %.8198307, align 1, !tbaa !29
  %i.dq = sext i8 %i.dp to i64
  %i.dr = add i64 %i.do, -48
  %i.ds = add i64 %i.dr, %i.dq                    ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.8198307, i64 1 ; 3 uses
  %i.du = icmp ult i64 %i.ds, 1000000000000000000
  %i.dv = icmp ne ptr %i.dt, %i.dn
  %i.dw = select i1 %i.du, i1 %i.dv, i1 false
  br i1 %i.dw, label %.lr.ph310, label %._crit_edge311, !llvm.loop !62

._crit_edge311:                                   ; preds = %.lr.ph310, %._crit_edge304.thread
  %.8198.lcssa = phi ptr [ %.sroa.17.0219, %._crit_edge304.thread ], [ %i.dt, %.lr.ph310 ]
  %.4186.lcssa = phi i64 [ %.3185.lcssa426, %._crit_edge304.thread ], [ %i.ds, %.lr.ph310 ]
  %i.dx = ptrtoint ptr %.sroa.17.0219 to i64
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge304, %._crit_edge311
  %.8198.lcssa.sink = phi ptr [ %.8198.lcssa, %._crit_edge311 ], [ %i.di, %._crit_edge304 ]
  %.sink = phi i64 [ %i.dx, %._crit_edge311 ], [ %i.ae, %._crit_edge304 ]
  %.5187 = phi i64 [ %.4186.lcssa, %._crit_edge311 ], [ %i.dh, %._crit_edge304 ]
  %i.dy = ptrtoint ptr %.8198.lcssa.sink to i64
  %i.dz = sub i64 %.sink, %i.dy
  %.4.i = add nsw i64 %i.dz, %.581.i
  br label %_ZN14arrow_vendored10fast_float19parse_number_stringILb1EcEENS0_22parsed_number_string_tIT0_EEPKS3_S6_NS0_15parse_options_tIS3_EE.exit

bb.aa:                                            ; preds = %bb.c
  switch i8 %i.m, label %.lr.ph318.preheader [
    i8 45, label %bb.ab
    i8 43, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  %i.ea = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 3 uses
  %i.eb = icmp eq ptr %i.ea, %1
  br i1 %i.eb, label %_ZN14arrow_vendored10fast_float18report_parse_errorIcEENS0_22parsed_number_string_tIT_EEPKS3_NS0_11parse_errorE.exit65, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ec = load i8, ptr %i.ea, align 1, !tbaa !29, !noalias !63 ; 2 uses
  %i.ed = add i8 %i.ec, -48
  %i.ee = icmp ult i8 %i.ed, 10
  %.not96.i = icmp eq i8 %i.ec, %.sroa.2.8.extract.trunc.i36
  %or.cond241 = select i1 %i.ee, i1 true, i1 %.not96.i
  br i1 %or.cond241, label %.lr.ph318.preheader, label %_ZN14arrow_vendored10fast_float18report_parse_errorIcEENS0_22parsed_number_string_tIT_EEPKS3_NS0_11parse_errorE.exit65

.lr.ph318.preheader:                              ; preds = %bb.ac, %bb.aa
  %.0180 = phi ptr [ %i.ea, %bb.ac ], [ %.1, %bb.aa ] ; 9 uses
  %.0180390 = ptrtoint ptr %.0180 to i64          ; 3 uses
  %i.ef = sub i64 %i.a, %.0180390
  %scevgep391 = getelementptr i8, ptr %.0180, i64 %i.ef
  br label %.lr.ph318

.critedge.i38.thread:                             ; preds = %bb.ad
  %i.eg = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.eh = sub i64 %i.eg, %.0180390                ; 2 uses
  br label %.critedge112.i

.lr.ph318:                                        ; preds = %.lr.ph318.preheader, %bb.ad
  %.1181316 = phi ptr [ %i.ep, %bb.ad ], [ %.0180, %.lr.ph318.preheader ] ; 5 uses
  %.0202315 = phi i64 [ %i.eo, %bb.ad ], [ 0, %.lr.ph318.preheader ] ; 4 uses
  %i.ei = load i8, ptr %.1181316, align 1, !tbaa !29, !noalias !63 ; 3 uses
  %i.ej = add i8 %i.ei, -48
  %i.ek = icmp ult i8 %i.ej, 10
  br i1 %i.ek, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph318
  %i.el = mul i64 %.0202315, 10
  %i.em = zext nneg i8 %i.ei to i64
  %i.en = add i64 %i.el, -48
  %i.eo = add i64 %i.en, %i.em                    ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.1181316, i64 1 ; 2 uses
  %.not97.i = icmp eq ptr %i.ep, %1
  br i1 %.not97.i, label %.critedge.i38.thread, label %.lr.ph318, !llvm.loop !66

bb.ae:                                            ; preds = %.lr.ph318
  %i.eq = ptrtoint ptr %.1181316 to i64           ; 3 uses
  %i.er = sub i64 %i.eq, %.0180390                ; 4 uses
  %i.es = icmp eq i8 %i.ei, %.sroa.2.8.extract.trunc.i36
  br i1 %i.es, label %bb.af, label %.critedge112.i

bb.af:                                            ; preds = %bb.ae
  %i.et = getelementptr inbounds nuw i8, ptr %.1181316, i64 1 ; 4 uses
  %i.eu = ptrtoint ptr %i.et to i64               ; 4 uses
  %i.ev = sub i64 %i.a, %i.eu
  %i.ew = icmp sgt i64 %i.ev, 7
  br i1 %i.ew, label %.lr.ph324, label %_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit

.lr.ph324:                                        ; preds = %bb.af, %.noexc
  %.11322 = phi ptr [ %i.fn, %.noexc ], [ %i.et, %bb.af ] ; 4 uses
  %.7209321 = phi i64 [ %i.fm, %.noexc ], [ %.0202315, %bb.af ] ; 2 uses
  %.0.copyload.i74 = load i64, ptr %.11322, align 1, !noalias !63 ; 2 uses
  %i.ex = add i64 %.0.copyload.i74, 5063812098665367110
  %i.ey = add i64 %.0.copyload.i74, -3472328296227680304 ; 3 uses
  %i.ez = or i64 %i.ex, %i.ey
  %i.fa = and i64 %i.ez, -9187201950435737472
  %.not.i71 = icmp eq i64 %i.fa, 0
  br i1 %.not.i71, label %.noexc, label %.lr.ph324._ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit.loopexit_crit_edge

.lr.ph324._ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit.loopexit_crit_edge: ; preds = %.lr.ph324
  %.pre400 = ptrtoint ptr %.11322 to i64
  br label %_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit

.noexc:                                           ; preds = %.lr.ph324
  %i.fb = mul i64 %.7209321, 100000000
  %i.fc = mul i64 %i.ey, 10
  %i.fd = lshr i64 %i.ey, 8
  %i.fe = add i64 %i.fc, %i.fd                    ; 2 uses
  %i.ff = and i64 %i.fe, 1095216660735
  %i.fg = mul i64 %i.ff, 4294967296000100
  %i.fh = lshr i64 %i.fe, 16
  %i.fi = and i64 %i.fh, 1095216660735
  %i.fj = mul i64 %i.fi, 42949672960001
  %i.fk = add i64 %i.fj, %i.fg
  %i.fl = lshr i64 %i.fk, 32
  %i.fm = add i64 %i.fl, %i.fb                    ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.11322, i64 8 ; 3 uses
  %i.fo = ptrtoint ptr %i.fn to i64               ; 2 uses
  %i.fp = sub i64 %i.a, %i.fo
  %i.fq = icmp sgt i64 %i.fp, 7
  br i1 %i.fq, label %.lr.ph324, label %_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit, !llvm.loop !57

_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit: ; preds = %.noexc, %.lr.ph324._ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit.loopexit_crit_edge, %bb.af
  %.11.lcssa392.pre-phi = phi i64 [ %i.eu, %bb.af ], [ %.pre400, %.lr.ph324._ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit.loopexit_crit_edge ], [ %i.fo, %.noexc ] ; 2 uses
  %.7209.lcssa = phi i64 [ %.0202315, %bb.af ], [ %.7209321, %.lr.ph324._ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit.loopexit_crit_edge ], [ %i.fm, %.noexc ] ; 2 uses
  %.11.lcssa = phi ptr [ %i.et, %bb.af ], [ %.11322, %.lr.ph324._ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit.loopexit_crit_edge ], [ %i.fn, %.noexc ] ; 4 uses
  %.not99.i329 = icmp eq ptr %.11.lcssa, %1
  br i1 %.not99.i329, label %.critedge2.i, label %.lr.ph332.preheader

.lr.ph332.preheader:                              ; preds = %_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit
  %i.fr = sub i64 %i.a, %.11.lcssa392.pre-phi
  %scevgep393 = getelementptr i8, ptr %.11.lcssa, i64 %i.fr
  br label %.lr.ph332

.lr.ph332:                                        ; preds = %.lr.ph332.preheader, %bb.ag
  %.10331 = phi ptr [ %i.fv, %bb.ag ], [ %.11.lcssa, %.lr.ph332.preheader ] ; 3 uses
  %.6208330 = phi i64 [ %i.fy, %bb.ag ], [ %.7209.lcssa, %.lr.ph332.preheader ] ; 2 uses
  %i.fs = load i8, ptr %.10331, align 1, !tbaa !29, !noalias !63
  %i.ft = add i8 %i.fs, -48                       ; 2 uses
  %i.fu = icmp ult i8 %i.ft, 10
  br i1 %i.fu, label %bb.ag, label %.critedge2.i.loopexit

bb.ag:                                            ; preds = %.lr.ph332
  %i.fv = getelementptr inbounds nuw i8, ptr %.10331, i64 1 ; 2 uses
  %i.fw = mul i64 %.6208330, 10
  %i.fx = zext nneg i8 %i.ft to i64
  %i.fy = add i64 %i.fw, %i.fx                    ; 2 uses
  %.not99.i = icmp eq ptr %i.fv, %1
  br i1 %.not99.i, label %.critedge2.i.loopexit, label %.lr.ph332, !llvm.loop !67

.critedge2.i.loopexit:                            ; preds = %.lr.ph332, %bb.ag
  %.6208.lcssa.ph = phi i64 [ %i.fy, %bb.ag ], [ %.6208330, %.lr.ph332 ]
  %.10.lcssa.ph = phi ptr [ %scevgep393, %bb.ag ], [ %.10331, %.lr.ph332 ] ; 2 uses
  %.pre396 = ptrtoint ptr %.10.lcssa.ph to i64
  br label %.critedge2.i

.critedge2.i:                                     ; preds = %.critedge2.i.loopexit, %_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit
  %.pre-phi = phi i64 [ %.pre396, %.critedge2.i.loopexit ], [ %.11.lcssa392.pre-phi, %_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit ] ; 2 uses
  %.6208.lcssa = phi i64 [ %.6208.lcssa.ph, %.critedge2.i.loopexit ], [ %.7209.lcssa, %_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit ]
  %.10.lcssa = phi ptr [ %.10.lcssa.ph, %.critedge2.i.loopexit ], [ %.11.lcssa, %_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit ]
  %i.fz = sub i64 %i.eu, %.pre-phi                ; 2 uses
  %i.ga = sub i64 %.pre-phi, %i.eu
  %i.gb = sub nsw i64 %i.er, %i.fz
  br label %.critedge112.i

.critedge112.i:                                   ; preds = %.critedge.i38.thread, %.critedge2.i, %bb.ae
  %i.gc = phi i64 [ %i.eh, %.critedge.i38.thread ], [ %i.er, %.critedge2.i ], [ %i.er, %bb.ae ] ; 5 uses
  %i.gd = phi i64 [ %i.eg, %.critedge.i38.thread ], [ %i.eq, %.critedge2.i ], [ %i.eq, %bb.ae ]
  %.sroa.17139.0 = phi ptr [ null, %.critedge.i38.thread ], [ %i.et, %.critedge2.i ], [ null, %bb.ae ] ; 7 uses
  %.sroa.20141.0 = phi i64 [ 0, %.critedge.i38.thread ], [ %i.ga, %.critedge2.i ], [ 0, %bb.ae ] ; 5 uses
  %.1203 = phi i64 [ %i.eo, %.critedge.i38.thread ], [ %.6208.lcssa, %.critedge2.i ], [ %.0202315, %bb.ae ] ; 2 uses
  %.2 = phi ptr [ %scevgep391, %.critedge.i38.thread ], [ %.10.lcssa, %.critedge2.i ], [ %.1181316, %bb.ae ] ; 7 uses
  %.065.i = phi i64 [ 0, %.critedge.i38.thread ], [ %i.fz, %.critedge2.i ], [ 0, %bb.ae ] ; 3 uses
  %.064.i = phi i64 [ %i.eh, %.critedge.i38.thread ], [ %i.gb, %.critedge2.i ], [ %i.er, %bb.ae ] ; 3 uses
  %i.ge = icmp eq i64 %.064.i, 0
  br i1 %i.ge, label %_ZN14arrow_vendored10fast_float18report_parse_errorIcEENS0_22parsed_number_string_tIT_EEPKS3_NS0_11parse_errorE.exit65, label %bb.ah

bb.ah:                                            ; preds = %.critedge112.i
  %i.gf = and i64 %3, 1
  %.not100.i = icmp eq i64 %i.gf, 0
  %.not101.i = icmp eq ptr %.2, %1                ; 2 uses
  %or.cond242 = or i1 %.not100.i, %.not101.i
  br i1 %or.cond242, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gg = load i8, ptr %.2, align 1, !tbaa !29, !noalias !63 ; 3 uses
  switch i8 %i.gg, label %bb.aj [
    i8 101, label %bb.al
    i8 69, label %bb.al
  ]

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.gh = and i64 %3, 64
  %.not102.i = icmp eq i64 %i.gh, 0
  %or.cond243 = or i1 %.not102.i, %.not101.i
  br i1 %or.cond243, label %bb.au, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gi = load i8, ptr %.2, align 1, !tbaa !29, !noalias !63 ; 5 uses
  switch i8 %i.gi, label %bb.au [
    i8 43, label %bb.al
    i8 45, label %bb.al
    i8 100, label %bb.al
    i8 68, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak, %bb.ak, %bb.ak, %bb.ak, %bb.ai, %bb.ai
  %i.gj = phi i8 [ %i.gi, %bb.ak ], [ %i.gi, %bb.ak ], [ %i.gi, %bb.ak ], [ %i.gi, %bb.ak ], [ %i.gg, %bb.ai ], [ %i.gg, %bb.ai ]
  switch i8 %i.gj, label %bb.an [
    i8 101, label %bb.am
    i8 69, label %bb.am
    i8 100, label %bb.am
    i8 68, label %bb.am
  ]

bb.am:                                            ; preds = %bb.al, %bb.al, %bb.al, %bb.al
  %i.gk = getelementptr inbounds nuw i8, ptr %.2, i64 1
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.3 = phi ptr [ %.2, %bb.al ], [ %i.gk, %bb.am ] ; 5 uses
  %.not106.i39 = icmp eq ptr %.3, %1
  br i1 %.not106.i39, label %.thread231, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gl = load i8, ptr %.3, align 1, !tbaa !29, !noalias !63 ; 2 uses
  %i.gm = icmp eq i8 %i.gl, 45
  br i1 %i.gm, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gn = getelementptr inbounds nuw i8, ptr %.3, i64 1
  br label %.thread231

bb.aq:                                            ; preds = %bb.ao
  %i.go = icmp eq i8 %i.gl, 43
  %spec.select244.idx = zext i1 %i.go to i64
  %spec.select244 = getelementptr inbounds nuw i8, ptr %.3, i64 %spec.select244.idx
  br label %.thread231

.thread231:                                       ; preds = %bb.aq, %bb.an, %bb.ap
  %.4 = phi ptr [ %i.gn, %bb.ap ], [ %.3, %bb.an ], [ %spec.select244, %bb.aq ] ; 5 uses
  %.075.i41 = phi i1 [ true, %bb.ap ], [ false, %bb.an ], [ false, %bb.aq ]
  %.4394 = ptrtoint ptr %.4 to i64
  %i.gp = icmp eq ptr %.4, %1
  br i1 %i.gp, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.thread231
  %i.gq = load i8, ptr %.4, align 1, !tbaa !29, !noalias !63
  %i.gr = add i8 %i.gq, -48
  %i.gs = icmp ult i8 %i.gr, 10
  br i1 %i.gs, label %.lr.ph341.preheader, label %bb.as

.lr.ph341.preheader:                              ; preds = %bb.ar
  %i.gt = sub i64 %i.a, %.4394
  %scevgep395 = getelementptr i8, ptr %.4, i64 %i.gt
  br label %.lr.ph341

bb.as:                                            ; preds = %bb.ar, %.thread231
  %i.gu = and i64 %3, 4
  %.not109.i42 = icmp eq i64 %i.gu, 0
  br i1 %.not109.i42, label %_ZN14arrow_vendored10fast_float18report_parse_errorIcEENS0_22parsed_number_string_tIT_EEPKS3_NS0_11parse_errorE.exit65, label %.thread233

.lr.ph341:                                        ; preds = %.lr.ph341.preheader, %bb.at
  %.069.i340 = phi i64 [ %.170.i, %bb.at ], [ 0, %.lr.ph341.preheader ] ; 4 uses
  %.9339 = phi ptr [ %i.hc, %bb.at ], [ %.4, %.lr.ph341.preheader ] ; 3 uses
  %i.gv = load i8, ptr %.9339, align 1, !tbaa !29, !noalias !63
  %i.gw = add i8 %i.gv, -48                       ; 2 uses
  %i.gx = icmp ult i8 %i.gw, 10
  br i1 %i.gx, label %bb.at, label %.critedge4.i

bb.at:                                            ; preds = %.lr.ph341
  %i.gy = icmp slt i64 %.069.i340, 268435456
  %i.gz = mul nsw i64 %.069.i340, 10
  %i.ha = zext nneg i8 %i.gw to i64
  %i.hb = add nsw i64 %i.gz, %i.ha
  %.170.i = select i1 %i.gy, i64 %i.hb, i64 %.069.i340 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.9339, i64 1 ; 2 uses
  %.not108.i51 = icmp eq ptr %i.hc, %1
  br i1 %.not108.i51, label %.critedge4.i, label %.lr.ph341, !llvm.loop !68

.critedge4.i:                                     ; preds = %bb.at, %.lr.ph341
  %.9.lcssa.ph = phi ptr [ %scevgep395, %bb.at ], [ %.9339, %.lr.ph341 ]
  %.069.i.lcssa.ph = phi i64 [ %.170.i, %bb.at ], [ %.069.i340, %.lr.ph341 ] ; 2 uses
  %i.hd = sub nsw i64 0, %.069.i.lcssa.ph
  %spec.select.i52 = select i1 %.075.i41, i64 %i.hd, i64 %.069.i.lcssa.ph ; 2 uses
  %i.he = add nsw i64 %spec.select.i52, %.065.i
  br label %.thread233

bb.au:                                            ; preds = %bb.ak, %bb.aj
  %i.hf = and i64 %3, 5
  %or.cond245.not.not = icmp eq i64 %i.hf, 1
  br i1 %or.cond245.not.not, label %_ZN14arrow_vendored10fast_float18report_parse_errorIcEENS0_22parsed_number_string_tIT_EEPKS3_NS0_11parse_errorE.exit65, label %.thread233

.thread233:                                       ; preds = %bb.as, %.critedge4.i, %bb.au
  %.6 = phi ptr [ %.2, %bb.au ], [ %.9.lcssa.ph, %.critedge4.i ], [ %.2, %bb.as ] ; 3 uses
  %.574.i = phi i64 [ 0, %bb.au ], [ %spec.select.i52, %.critedge4.i ], [ 0, %bb.as ]
  %.3.i44 = phi i64 [ %.065.i, %bb.au ], [ %i.he, %.critedge4.i ], [ %.065.i, %bb.as ] ; 2 uses
  %i.hg = icmp sgt i64 %.064.i, 19
  br i1 %i.hg, label %.lr.ph350, label %_ZN14arrow_vendored10fast_float19parse_number_stringILb1EcEENS0_22parsed_number_string_tIT0_EEPKS3_S6_NS0_15parse_options_tIS3_EE.exit

.lr.ph350:                                        ; preds = %.thread233, %.critedge8.i
  %.1.i46349 = phi i64 [ %spec.select113.i, %.critedge8.i ], [ %.064.i, %.thread233 ] ; 2 uses
  %.068.i348 = phi ptr [ %i.hl, %.critedge8.i ], [ %.0180, %.thread233 ] ; 2 uses
  %i.hh = load i8, ptr %.068.i348, align 1, !tbaa !29 ; 2 uses
  %i.hi = icmp eq i8 %i.hh, 48                    ; 2 uses
  %i.hj = icmp eq i8 %i.hh, %.sroa.2.8.extract.trunc.i36
  %or.cond.i48 = select i1 %i.hi, i1 true, i1 %i.hj
  br i1 %or.cond.i48, label %.critedge8.i, label %.critedge6.i

.critedge8.i:                                     ; preds = %.lr.ph350
  %i.hk = sext i1 %i.hi to i64
  %spec.select113.i = add nsw i64 %.1.i46349, %i.hk ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.068.i348, i64 1 ; 2 uses
  %.not110.i47 = icmp eq ptr %i.hl, %1
  br i1 %.not110.i47, label %.critedge6.i, label %.lr.ph350, !llvm.loop !69

.critedge6.i:                                     ; preds = %.critedge8.i, %.lr.ph350
  %.1.i46.lcssa.ph = phi i64 [ %spec.select113.i, %.critedge8.i ], [ %.1.i46349, %.lr.ph350 ]
  %i.hm = icmp sgt i64 %.1.i46.lcssa.ph, 19
  br i1 %i.hm, label %bb.av, label %_ZN14arrow_vendored10fast_float19parse_number_stringILb1EcEENS0_22parsed_number_string_tIT0_EEPKS3_S6_NS0_15parse_options_tIS3_EE.exit

bb.av:                                            ; preds = %.critedge6.i
  %i.hn = getelementptr inbounds nuw i8, ptr %.0180, i64 %i.gc
  %.not371 = icmp samesign eq i64 %i.gc, 0
  br i1 %.not371, label %._crit_edge358.thread, label %.lr.ph357

.lr.ph357:                                        ; preds = %bb.av, %.lr.ph357
  %.7355 = phi ptr [ %i.ht, %.lr.ph357 ], [ %.0180, %bb.av ] ; 2 uses
  %.3205354 = phi i64 [ %i.hs, %.lr.ph357 ], [ 0, %bb.av ]
  %i.ho = mul nuw i64 %.3205354, 10
  %i.hp = load i8, ptr %.7355, align 1, !tbaa !29
  %i.hq = sext i8 %i.hp to i64
  %i.hr = add i64 %i.ho, -48
  %i.hs = add i64 %i.hr, %i.hq                    ; 5 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.7355, i64 1 ; 3 uses
  %i.hu = icmp ult i64 %i.hs, 1000000000000000000
  %i.hv = icmp ne ptr %i.ht, %i.hn
  %i.hw = select i1 %i.hu, i1 %i.hv, i1 false
  br i1 %i.hw, label %.lr.ph357, label %._crit_edge358, !llvm.loop !70

._crit_edge358:                                   ; preds = %.lr.ph357
  %i.hx = icmp ugt i64 %i.hs, 999999999999999999
  br i1 %i.hx, label %bb.aw, label %._crit_edge358.thread

._crit_edge358.thread:                            ; preds = %bb.av, %._crit_edge358
  %.3205.lcssa429 = phi i64 [ %i.hs, %._crit_edge358 ], [ 0, %bb.av ] ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.17139.0, i64 %.sroa.20141.0
  %.not372 = icmp samesign eq i64 %.sroa.20141.0, 0
  br i1 %.not372, label %._crit_edge365, label %.lr.ph364

.lr.ph364:                                        ; preds = %._crit_edge358.thread, %.lr.ph364
  %.8362 = phi ptr [ %i.ie, %.lr.ph364 ], [ %.sroa.17139.0, %._crit_edge358.thread ] ; 2 uses
  %.4206361 = phi i64 [ %i.id, %.lr.ph364 ], [ %.3205.lcssa429, %._crit_edge358.thread ]
  %i.hz = mul nuw i64 %.4206361, 10
  %i.ia = load i8, ptr %.8362, align 1, !tbaa !29
  %i.ib = sext i8 %i.ia to i64
  %i.ic = add i64 %i.hz, -48
  %i.id = add i64 %i.ic, %i.ib                    ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.8362, i64 1 ; 3 uses
  %i.if = icmp ult i64 %i.id, 1000000000000000000
  %i.ig = icmp ne ptr %i.ie, %i.hy
  %i.ih = select i1 %i.if, i1 %i.ig, i1 false
  br i1 %i.ih, label %.lr.ph364, label %._crit_edge365, !llvm.loop !71

._crit_edge365:                                   ; preds = %.lr.ph364, %._crit_edge358.thread
  %.4206.lcssa = phi i64 [ %.3205.lcssa429, %._crit_edge358.thread ], [ %i.id, %.lr.ph364 ]
  %.8.lcssa = phi ptr [ %.sroa.17139.0, %._crit_edge358.thread ], [ %i.ie, %.lr.ph364 ]
  %i.ii = ptrtoint ptr %.sroa.17139.0 to i64
  br label %bb.aw

bb.aw:                                            ; preds = %._crit_edge358, %._crit_edge365
  %.8.lcssa.sink = phi ptr [ %.8.lcssa, %._crit_edge365 ], [ %i.ht, %._crit_edge358 ]
  %.sink454 = phi i64 [ %i.ii, %._crit_edge365 ], [ %i.gd, %._crit_edge358 ]
  %.5207 = phi i64 [ %.4206.lcssa, %._crit_edge365 ], [ %i.hs, %._crit_edge358 ]
  %i.ij = ptrtoint ptr %.8.lcssa.sink to i64
  %i.ik = sub i64 %.sink454, %i.ij
  %.4.i50 = add nsw i64 %i.ik, %.574.i
  br label %_ZN14arrow_vendored10fast_float19parse_number_stringILb1EcEENS0_22parsed_number_string_tIT0_EEPKS3_S6_NS0_15parse_options_tIS3_EE.exit

_ZN14arrow_vendored10fast_float18report_parse_errorIcEENS0_22parsed_number_string_tIT_EEPKS3_NS0_11parse_errorE.exit65: ; preds = %bb.au, %bb.as, %.critedge112.i, %bb.ac, %bb.ab, %bb.y, %bb.w, %._crit_edge, %bb.h, %.critedge.i, %bb.f, %bb.e
  %i.il = and i64 %3, 16
  %.not35 = icmp eq i64 %i.il, 0
  br i1 %.not35, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %_ZN14arrow_vendored10fast_float18report_parse_errorIcEENS0_22parsed_number_string_tIT_EEPKS3_NS0_11parse_errorE.exit65
  %i.im = tail call { ptr, i32 } @_ZN14arrow_vendored10fast_float6detail12parse_infnanIfcEENS0_19from_chars_result_tIT0_EEPKS4_S7_RT_NS0_12chars_formatE(ptr noundef nonnull %.1, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i64 noundef %i.b) #19 ; 2 uses
  %i.in = extractvalue { ptr, i32 } %i.im, 0
  %i.io = extractvalue { ptr, i32 } %i.im, 1
  br label %bb.ay

_ZN14arrow_vendored10fast_float19parse_number_stringILb1EcEENS0_22parsed_number_string_tIT0_EEPKS3_S6_NS0_15parse_options_tIS3_EE.exit: ; preds = %.thread233, %.critedge6.i, %bb.aw, %.thread226, %.critedge9.i, %bb.z
  %.6.i.sink = phi i64 [ %.3.i, %.thread226 ], [ %.4.i, %bb.z ], [ %.3.i, %.critedge9.i ], [ %.4.i50, %bb.aw ], [ %.3.i44, %.critedge6.i ], [ %.3.i44, %.thread233 ]
  %.2184.sink = phi i64 [ %.1183221, %.thread226 ], [ %.5187, %bb.z ], [ %.1183221, %.critedge9.i ], [ %.5207, %bb.aw ], [ %.1203, %.critedge6.i ], [ %.1203, %.thread233 ]
  %.6196.sink = phi ptr [ %.6196, %.thread226 ], [ %.6196, %bb.z ], [ %.6196, %.critedge9.i ], [ %.6, %bb.aw ], [ %.6, %.critedge6.i ], [ %.6, %.thread233 ]
  %.sroa.10.0.sink = phi i8 [ 0, %.thread226 ], [ 1, %bb.z ], [ 0, %.critedge9.i ], [ 1, %bb.aw ], [ 0, %.critedge6.i ], [ 0, %.thread233 ]
  %.0190.sink = phi ptr [ %.0190, %.thread226 ], [ %.0190, %bb.z ], [ %.0190, %.critedge9.i ], [ %.0180, %bb.aw ], [ %.0180, %.critedge6.i ], [ %.0180, %.thread233 ]
  %.sink456 = phi i64 [ %i.af, %.thread226 ], [ %i.af, %bb.z ], [ %i.af, %.critedge9.i ], [ %i.gc, %bb.aw ], [ %i.gc, %.critedge6.i ], [ %i.gc, %.thread233 ]
  %.sroa.17.0219.sink = phi ptr [ %.sroa.17.0219, %.thread226 ], [ %.sroa.17.0219, %bb.z ], [ %.sroa.17.0219, %.critedge9.i ], [ %.sroa.17139.0, %bb.aw ], [ %.sroa.17139.0, %.critedge6.i ], [ %.sroa.17139.0, %.thread233 ]
  %.sroa.20.0220.sink = phi i64 [ %.sroa.20.0220, %.thread226 ], [ %.sroa.20.0220, %bb.z ], [ %.sroa.20.0220, %.critedge9.i ], [ %.sroa.20141.0, %bb.aw ], [ %.sroa.20141.0, %.critedge6.i ], [ %.sroa.20141.0, %.thread233 ]
  store i64 %.6.i.sink, ptr %5, align 8, !tbaa !72
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.2184.sink, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !72
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.6196.sink, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !73
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 %i.o, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !49
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 25
  store i8 1, ptr %.sroa.8.0..sroa_idx, align 1, !tbaa !49
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 26
  store i8 %.sroa.10.0.sink, ptr %.sroa.10.0..sroa_idx, align 2, !tbaa !49
  %.sroa.1283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %.0190.sink, ptr %.sroa.1283.0..sroa_idx, align 8, !tbaa !73
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %.sink456, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !72
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %.sroa.17.0219.sink, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !73
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 %.sroa.20.0220.sink, ptr %.sroa.20.0..sroa_idx, align 8, !tbaa !72
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 0, ptr %.sroa.22.0..sroa_idx, align 8
  %i.ip = call { ptr, i32 } @_ZN14arrow_vendored10fast_float19from_chars_advancedIfcEENS0_19from_chars_result_tIT0_EERNS0_22parsed_number_string_tIS3_EERT_(ptr noundef nonnull align 8 dereferenceable(68) %5, ptr noundef nonnull align 4 dereferenceable(4) %2) #19 ; 2 uses
  %i.iq = extractvalue { ptr, i32 } %i.ip, 0
  %i.ir = extractvalue { ptr, i32 } %i.ip, 1
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN14arrow_vendored10fast_float18report_parse_errorIcEENS0_22parsed_number_string_tIT_EEPKS3_NS0_11parse_errorE.exit65, %_ZN14arrow_vendored10fast_float19parse_number_stringILb1EcEENS0_22parsed_number_string_tIT0_EEPKS3_S6_NS0_15parse_options_tIS3_EE.exit, %bb.ax
  %.sroa.031.0 = phi ptr [ %i.iq, %_ZN14arrow_vendored10fast_float19parse_number_stringILb1EcEENS0_22parsed_number_string_tIT0_EEPKS3_S6_NS0_15parse_options_tIS3_EE.exit ], [ %i.in, %bb.ax ], [ %.1, %_ZN14arrow_vendored10fast_float18report_parse_errorIcEENS0_22parsed_number_string_tIT_EEPKS3_NS0_11parse_errorE.exit65 ]
  %.sroa.5.0 = phi i32 [ %i.ir, %_ZN14arrow_vendored10fast_float19parse_number_stringILb1EcEENS0_22parsed_number_string_tIT0_EEPKS3_S6_NS0_15parse_options_tIS3_EE.exit ], [ %i.io, %bb.ax ], [ 22, %_ZN14arrow_vendored10fast_float18report_parse_errorIcEENS0_22parsed_number_string_tIT_EEPKS3_NS0_11parse_errorE.exit65 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.az

bb.az:                                            ; preds = %.critedge, %bb.ay
  %.sroa.031.1 = phi ptr [ %.sroa.031.0, %bb.ay ], [ %.1, %.critedge ]
  %.sroa.5.1 = phi i32 [ %.sroa.5.0, %bb.ay ], [ 22, %.critedge ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.031.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.5.1, 1
  ret { ptr, i32 } %.fca.1.insert
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i32 } @_ZN14arrow_vendored10fast_float6detail12parse_infnanIfcEENS0_19from_chars_result_tIT0_EEPKS4_S7_RT_NS0_12chars_formatE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i64 noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
end_hunk_0
begin_hunk_1_@_ZN14arrow_vendored10fast_float19from_chars_advancedIfcEENS0_19from_chars_result_tIT0_EERNS0_22parsed_number_string_tIS3_EERT_:bb.a
  %i.eq = icmp ult i64 %i.ep, -28
  %or.cond135 = select i1 %i.eo, i1 true, i1 %i.eq
  br i1 %or.cond135, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.er = and i64 %i.dy, 3
  %i.es = icmp eq i64 %i.er, 1
  %i.et = shl i64 %i.dy, %i.dx
  %i.eu = icmp eq i64 %i.et, %spec.select.i69.pn
  %or.cond.i = select i1 %i.es, i1 %i.eu, i1 false
  %i.ev = and i64 %i.dy, 67108860
  %spec.select136 = select i1 %or.cond.i, i64 %i.ev, i64 %i.dy
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sroa.096.0 = phi i64 [ %i.dy, %bb.y ], [ %spec.select136, %bb.z ] ; 2 uses
  %i.ew = and i64 %.sroa.096.0, 1
  %i.ex = add nuw nsw i64 %i.ew, %.sroa.096.0     ; 2 uses
  %i.ey = lshr i64 %i.ex, 1
  %.not22.i = icmp samesign ugt i64 %i.ex, 33554431 ; 2 uses
  %i.ez = zext i1 %.not22.i to i32
  %spec.select138 = add nuw nsw i32 %i.ed, %i.ez  ; 2 uses
  %i.fa = and i64 %i.ey, 9223372036846387199
  %.not23.i = icmp samesign ugt i32 %spec.select138, 254 ; 2 uses
  %.not149 = select i1 %.not23.i, i1 true, i1 %.not22.i
  %spec.select142 = select i1 %.not149, i64 0, i64 %i.fa
  %spec.select143 = select i1 %.not23.i, i32 255, i32 %spec.select138
  br label %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit

_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit: ; preds = %bb.aa, %bb.w, %bb.v, %bb.u, %bb.x
  %.sroa.096.2 = phi i64 [ 0, %bb.w ], [ 0, %bb.u ], [ 0, %bb.v ], [ %i.el, %bb.x ], [ %spec.select142, %bb.aa ]
  %.sroa.18.1 = phi i32 [ 0, %bb.w ], [ 0, %bb.u ], [ 255, %bb.v ], [ %i.en, %bb.x ], [ %spec.select143, %bb.aa ]
  %.not.i88 = icmp ne i64 %.sroa.0103.2, %.sroa.096.2
  %i.fb = icmp ne i32 %.sroa.18108.1, %.sroa.18.1
  %i.fc = select i1 %.not.i88, i1 true, i1 %i.fb
  br i1 %i.fc, label %.noexc, label %.thread

.noexc:                                           ; preds = %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit
  %i.fd = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.pre.pre, i1 true) ; 2 uses
  %i.fe = trunc nuw nsw i64 %i.fd to i32
  %i.ff = shl i64 %.pre.pre, %i.fd
  %i.fg = trunc i64 %.pr.pre to i32               ; 4 uses
  %i.fh = shl i32 %i.fg, 1                        ; 2 uses
  %i.fi = add i32 %i.fh, 684
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [8 x i8], ptr @_ZN14arrow_vendored10fast_float15powers_templateIvE17power_of_five_128E, i64 %i.fj
  %i.fl = load i64, ptr %i.fk, align 16, !tbaa !72
  %i.fm = zext i64 %i.ff to i128                  ; 2 uses
  %i.fn = zext i64 %i.fl to i128
  %i.fo = mul nuw i128 %i.fn, %i.fm               ; 2 uses
  %i.fp = lshr i128 %i.fo, 64
  %i.fq = trunc nuw i128 %i.fp to i64             ; 3 uses
  %i.fr = and i64 %i.fq, 274877906943
  %i.fs = icmp eq i64 %i.fr, 274877906943
  br i1 %i.fs, label %.noexc62, label %bb.ab

.noexc62:                                         ; preds = %.noexc
  %i.ft = trunc i128 %i.fo to i64
  %i.fu = add i32 %i.fh, 685
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [8 x i8], ptr @_ZN14arrow_vendored10fast_float15powers_templateIvE17power_of_five_128E, i64 %i.fv
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !72
  %i.fy = zext i64 %i.fx to i128
  %i.fz = mul nuw i128 %i.fy, %i.fm
  %i.ga = lshr i128 %i.fz, 64
  %i.gb = trunc nuw i128 %i.ga to i64
  %i.gc = xor i64 %i.gb, -1
  %i.gd = icmp ult i64 %i.gc, %i.ft
  %i.ge = zext i1 %i.gd to i64
  %spec.select.i61 = add nuw i64 %i.ge, %i.fq
  br label %bb.ab

bb.ab:                                            ; preds = %.noexc, %.noexc62
  %spec.select.i61.pn = phi i64 [ %spec.select.i61, %.noexc62 ], [ %i.fq, %.noexc ] ; 2 uses
  %i.gf = lshr i64 %spec.select.i61.pn, 63        ; 2 uses
  %i.gg = trunc nuw nsw i64 %i.gf to i32
  %i.gh = xor i64 %i.gf, 1
  %i.gi = shl i64 %spec.select.i61.pn, %i.gh      ; 2 uses
  %i.gj = mul nsw i32 %i.fg, 217706
  %i.gk = ashr i32 %i.gj, 16
  %reass.sub.neg = sub nsw i32 %i.gg, %i.fe
  %i.gl = add nsw i32 %reass.sub.neg, %i.gk       ; 3 uses
  %i.gm = add nsw i32 %i.gl, -32618
  %i.gn = icmp slt i32 %i.gl, 32618
  br i1 %i.gn, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.ab
  %i.go = icmp ugt i64 %.pre.pre, 9999
  br i1 %i.go, label %.lr.ph.i, label %.preheader18.i

.preheader18.i:                                   ; preds = %.lr.ph.i, %bb.ac
  %.011.i.lcssa.i = phi i64 [ %.pre.pre, %bb.ac ], [ %i.gq, %.lr.ph.i ] ; 3 uses
  %.0.i.lcssa.i = phi i32 [ %i.fg, %bb.ac ], [ %i.gr, %.lr.ph.i ] ; 2 uses
  %i.gp = icmp samesign ugt i64 %.011.i.lcssa.i, 99
  br i1 %i.gp, label %.lr.ph24.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.ac, %.lr.ph.i
  %.0.i20.i = phi i32 [ %i.gr, %.lr.ph.i ], [ %i.fg, %bb.ac ]
  %.011.i19.i = phi i64 [ %i.gq, %.lr.ph.i ], [ %.pre.pre, %bb.ac ] ; 2 uses
  %i.gq = udiv i64 %.011.i19.i, 10000             ; 2 uses
  %i.gr = add nsw i32 %.0.i20.i, 4                ; 2 uses
  %i.gs = icmp ugt i64 %.011.i19.i, 99999999
  br i1 %i.gs, label %.lr.ph.i, label %.preheader18.i, !llvm.loop !83

.preheader.i:                                     ; preds = %.lr.ph24.i, %.preheader18.i
  %.112.i.lcssa.i = phi i64 [ %.011.i.lcssa.i, %.preheader18.i ], [ %i.gu, %.lr.ph24.i ] ; 2 uses
  %.1.i.lcssa.i = phi i32 [ %.0.i.lcssa.i, %.preheader18.i ], [ %i.gv, %.lr.ph24.i ] ; 2 uses
  %i.gt = icmp samesign ugt i64 %.112.i.lcssa.i, 9
  br i1 %i.gt, label %.lr.ph29.i, label %_ZN14arrow_vendored10fast_float19scientific_exponentIcEEiRNS0_22parsed_number_string_tIT_EE.exit.i

.lr.ph24.i:                                       ; preds = %.preheader18.i, %.lr.ph24.i
  %.1.i23.i = phi i32 [ %i.gv, %.lr.ph24.i ], [ %.0.i.lcssa.i, %.preheader18.i ]
  %.112.i22.i = phi i64 [ %i.gu, %.lr.ph24.i ], [ %.011.i.lcssa.i, %.preheader18.i ] ; 2 uses
  %i.gu = udiv i64 %.112.i22.i, 100               ; 2 uses
  %i.gv = add nsw i32 %.1.i23.i, 2                ; 2 uses
  %i.gw = icmp samesign ugt i64 %.112.i22.i, 9999
  br i1 %i.gw, label %.lr.ph24.i, label %.preheader.i, !llvm.loop !84

.lr.ph29.i:                                       ; preds = %.preheader.i, %.lr.ph29.i
  %.2.i28.i = phi i32 [ %i.gy, %.lr.ph29.i ], [ %.1.i.lcssa.i, %.preheader.i ]
  %.213.i27.i = phi i64 [ %i.gx, %.lr.ph29.i ], [ %.112.i.lcssa.i, %.preheader.i ] ; 2 uses
  %i.gx = udiv i64 %.213.i27.i, 10
  %i.gy = add nsw i32 %.2.i28.i, 1                ; 2 uses
  %i.gz = icmp samesign ugt i64 %.213.i27.i, 99
  br i1 %i.gz, label %.lr.ph29.i, label %_ZN14arrow_vendored10fast_float19scientific_exponentIcEEiRNS0_22parsed_number_string_tIT_EE.exit.i, !llvm.loop !85

_ZN14arrow_vendored10fast_float19scientific_exponentIcEEiRNS0_22parsed_number_string_tIT_EE.exit.i: ; preds = %.lr.ph29.i, %.preheader.i
  %.2.i.lcssa.i = phi i32 [ %.1.i.lcssa.i, %.preheader.i ], [ %i.gy, %.lr.ph29.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 0, ptr %i.a, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %2, i8 0, i64 504, i1 false)
  call void @_ZN14arrow_vendored10fast_float14parse_mantissaIcEEvRNS0_6bigintERNS0_22parsed_number_string_tIT_EEmRm(ptr noundef nonnull align 8 dereferenceable(504) %2, ptr noundef nonnull align 8 dereferenceable(68) %0, i64 noundef 114, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #19
  %i.ha = add nsw i32 %.2.i.lcssa.i, 1
  %i.hb = load i64, ptr %i.a, align 8, !tbaa !72
  %i.hc = trunc i64 %i.hb to i32
  %i.hd = sub i32 %i.ha, %i.hc                    ; 3 uses
  %i.he = icmp sgt i32 %i.hd, -1
  br i1 %i.he, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZN14arrow_vendored10fast_float19scientific_exponentIcEEiRNS0_22parsed_number_string_tIT_EE.exit.i
  %i.hf = call { i64, i32 } @_ZN14arrow_vendored10fast_float19positive_digit_compIfEENS0_17adjusted_mantissaERNS0_6bigintEi(ptr noundef nonnull align 8 dereferenceable(504) %2, i32 noundef %i.hd) #19
  br label %_ZN14arrow_vendored10fast_float10digit_compIfcEENS0_17adjusted_mantissaERNS0_22parsed_number_string_tIT0_EES2_.exit

bb.ae:                                            ; preds = %_ZN14arrow_vendored10fast_float19scientific_exponentIcEEiRNS0_22parsed_number_string_tIT_EE.exit.i
  %i.hg = add nsw i32 %i.gl, 150
  %i.hh = call { i64, i32 } @_ZN14arrow_vendored10fast_float19negative_digit_compIfEENS0_17adjusted_mantissaERNS0_6bigintES2_i(ptr noundef nonnull align 8 dereferenceable(504) %2, i64 %i.gi, i32 %i.hg, i32 noundef %i.hd) #19
  br label %_ZN14arrow_vendored10fast_float10digit_compIfcEENS0_17adjusted_mantissaERNS0_22parsed_number_string_tIT0_EES2_.exit

_ZN14arrow_vendored10fast_float10digit_compIfcEENS0_17adjusted_mantissaERNS0_22parsed_number_string_tIT0_EES2_.exit: ; preds = %bb.ad, %bb.ae
  %.pn.i = phi { i64, i32 } [ %i.hf, %bb.ad ], [ %i.hh, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %.fca.0.extract = extractvalue { i64, i32 } %.pn.i, 0
  %.fca.1.extract = extractvalue { i64, i32 } %.pn.i, 1
  %.pre165 = load i64, ptr %i.ai, align 8, !tbaa !81
  br label %.thread

.thread:                                          ; preds = %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit60, %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit, %bb.ab, %_ZN14arrow_vendored10fast_float10digit_compIfcEENS0_17adjusted_mantissaERNS0_22parsed_number_string_tIT0_EES2_.exit
  %i.hi = phi i64 [ %.pre165, %_ZN14arrow_vendored10fast_float10digit_compIfcEENS0_17adjusted_mantissaERNS0_22parsed_number_string_tIT0_EES2_.exit ], [ %.pre.pre, %bb.ab ], [ %.pre.pre, %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit ], [ %.pre.pre, %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit60 ]
  %.sroa.9.1 = phi i32 [ %.fca.1.extract, %_ZN14arrow_vendored10fast_float10digit_compIfcEENS0_17adjusted_mantissaERNS0_22parsed_number_string_tIT0_EES2_.exit ], [ %i.gm, %bb.ab ], [ %.sroa.18108.1, %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit ], [ %.sroa.18108.1, %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit60 ] ; 3 uses
  %.sroa.089.1 = phi i64 [ %.fca.0.extract, %_ZN14arrow_vendored10fast_float10digit_compIfcEENS0_17adjusted_mantissaERNS0_22parsed_number_string_tIT0_EES2_.exit ], [ %i.gi, %bb.ab ], [ %.sroa.0103.2, %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit ], [ %.sroa.0103.2, %_ZN14arrow_vendored10fast_float13compute_floatINS0_13binary_formatIfEEEENS0_17adjusted_mantissaElm.exit60 ] ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hk = load i8, ptr %i.hj, align 8, !tbaa !82, !range !50, !noundef !51
  %i.hl = zext nneg i8 %i.hk to i32
  %i.hm = trunc i64 %.sroa.089.1 to i32
  %i.hn = shl i32 %.sroa.9.1, 23
  %i.ho = or i32 %i.hn, %i.hm
  %i.hp = shl nuw i32 %i.hl, 31
  %i.hq = or i32 %i.ho, %i.hp
  store i32 %i.hq, ptr %1, align 4, !tbaa !7
  %i.hr = icmp ne i64 %i.hi, 0
  %i.hs = icmp eq i64 %.sroa.089.1, 0
  %or.cond5 = select i1 %i.hr, i1 %i.hs, i1 false
  %i.ht = icmp eq i32 %.sroa.9.1, 0
  %or.cond8 = select i1 %or.cond5, i1 %i.ht, i1 false
  %i.hu = icmp eq i32 %.sroa.9.1, 255
  %or.cond139 = select i1 %or.cond8, i1 true, i1 %i.hu
  %spec.select144 = select i1 %or.cond139, i32 34, i32 0
  br label %_ZN14arrow_vendored10fast_float22clinger_fast_path_implIfEEbmlbRT_.exit

_ZN14arrow_vendored10fast_float22clinger_fast_path_implIfEEbmlbRT_.exit: ; preds = %.thread, %bb.n, %bb.m, %bb.i, %bb.h
  %.sroa.247.1 = phi i32 [ 0, %bb.n ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.m ], [ %spec.select144, %.thread ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %i.c, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.247.1, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN14arrow_vendored10fast_float14parse_mantissaIcEEvRNS0_6bigintERNS0_22parsed_number_string_tIT_EEmRm(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 8 dereferenceable(68) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  store i64 0, ptr %3, align 8, !tbaa !72
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86   ; 4 uses
  %4 = ptrtoint ptr %i.b to i64                   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !87   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d ; 9 uses
  %i.f = ptrtoint ptr %i.e to i64                 ; 5 uses
  %i.g = icmp sgt i64 %i.d, 7
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.9311 = phi ptr [ %i.h, %bb.b ], [ %i.b, %bb.a ] ; 4 uses
  %.0.copyload.i69 = load i64, ptr %.9311, align 1
  %.not.i70 = icmp eq i64 %.0.copyload.i69, 3472328296227680304
  br i1 %.not.i70, label %bb.b, label %.lr.ph.._crit_edge.loopexit_crit_edge

.lr.ph.._crit_edge.loopexit_crit_edge:            ; preds = %.lr.ph
  %.pre455 = ptrtoint ptr %.9311 to i64
  br label %._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.9311, i64 8 ; 3 uses
  %i.i = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.j = sub i64 %i.f, %i.i
  %i.k = icmp sgt i64 %i.j, 7
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !88

._crit_edge:                                      ; preds = %bb.b, %.lr.ph.._crit_edge.loopexit_crit_edge, %bb.a
  %.9.lcssa440.pre-phi = phi i64 [ %4, %bb.a ], [ %.pre455, %.lr.ph.._crit_edge.loopexit_crit_edge ], [ %i.i, %bb.b ]
  %.9.lcssa = phi ptr [ %i.b, %bb.a ], [ %.9311, %.lr.ph.._crit_edge.loopexit_crit_edge ], [ %i.h, %bb.b ] ; 3 uses
  %.not8.i67316 = icmp eq ptr %.9.lcssa, %i.e
  br i1 %.not8.i67316, label %._crit_edge350, label %.lr.ph319.preheader

.lr.ph319.preheader:                              ; preds = %._crit_edge
  %i.l = add i64 %i.d, %4
  %i.m = sub i64 %i.l, %.9.lcssa440.pre-phi
  %scevgep = getelementptr i8, ptr %.9.lcssa, i64 %i.m
  br label %.lr.ph319

.lr.ph319:                                        ; preds = %.lr.ph319.preheader, %bb.c
  %.10317 = phi ptr [ %i.o, %bb.c ], [ %.9.lcssa, %.lr.ph319.preheader ] ; 3 uses
  %i.n = load i8, ptr %.10317, align 1, !tbaa !29
  %.not9.i68 = icmp eq i8 %i.n, 48
  br i1 %.not9.i68, label %bb.c, label %_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit71

bb.c:                                             ; preds = %.lr.ph319
  %i.o = getelementptr inbounds nuw i8, ptr %.10317, i64 1 ; 2 uses
  %.not8.i67 = icmp eq ptr %i.o, %i.e
  br i1 %.not8.i67, label %_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit71, label %.lr.ph319, !llvm.loop !89

_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit71: ; preds = %.lr.ph319, %bb.c
  %.10.lcssa = phi ptr [ %scevgep, %bb.c ], [ %.10317, %.lr.ph319 ] ; 2 uses
  %.not348 = icmp eq ptr %.10.lcssa, %i.e
  br i1 %.not348, label %._crit_edge350, label %.preheader294.lr.ph

.preheader294.lr.ph:                              ; preds = %_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit71
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 7 uses
  %.promoted = load i16, ptr %i.p, align 8, !tbaa !90
  br label %.preheader294

.preheader294:                                    ; preds = %.preheader294.lr.ph, %_ZN14arrow_vendored10fast_float6bigint3addEm.exit129
  %i.q = phi i16 [ %.promoted, %.preheader294.lr.ph ], [ %i.ih, %_ZN14arrow_vendored10fast_float6bigint3addEm.exit129 ] ; 13 uses
  %.0349 = phi ptr [ %.10.lcssa, %.preheader294.lr.ph ], [ %.2.lcssa, %_ZN14arrow_vendored10fast_float6bigint3addEm.exit129 ] ; 5 uses
  %i.r = ptrtoint ptr %.0349 to i64
  %i.s = sub i64 %i.f, %i.r
  %i.t = icmp sgt i64 %i.s, 7
  %.pre.pre = load i64, ptr %3, align 8, !tbaa !72 ; 4 uses
  %i.u = sub i64 %2, %.pre.pre
  %i.v = icmp ugt i64 %i.u, 7
  %or.cond721 = select i1 %i.t, i1 %i.v, i1 false
  br i1 %or.cond721, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.preheader294
  %.0.copyload.i.i82 = load i64, ptr %.0349, align 1
  %i.w = add i64 %.0.copyload.i.i82, -3472328296227680304 ; 2 uses
  %i.x = mul i64 %i.w, 10
  %i.y = lshr i64 %i.w, 8
  %i.z = add i64 %i.x, %i.y                       ; 2 uses
  %i.aa = and i64 %i.z, 1095216660735
  %i.ab = mul i64 %i.aa, 4294967296000100
  %i.ac = lshr i64 %i.z, 16
  %i.ad = and i64 %i.ac, 1095216660735
  %i.ae = mul i64 %i.ad, 42949672960001
  %i.af = add i64 %i.ae, %i.ab
  %i.ag = lshr i64 %i.af, 32                      ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0349, i64 8 ; 3 uses
  %i.ai = add i64 %.pre.pre, 8                    ; 3 uses
  store i64 %i.ai, ptr %3, align 8, !tbaa !72
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.f, %i.aj
  %i.al = icmp sgt i64 %i.ak, 7
  %i.am = sub i64 %2, %i.ai
  %i.an = icmp ugt i64 %i.am, 7
  %or.cond717 = select i1 %i.al, i1 %i.an, i1 false
  br i1 %or.cond717, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ao = mul nuw nsw i64 %i.ag, 100000000
  %.0.copyload.i.i82.1 = load i64, ptr %i.ah, align 1
  %i.ap = add i64 %.0.copyload.i.i82.1, -3472328296227680304 ; 2 uses
  %i.aq = mul i64 %i.ap, 10
  %i.ar = lshr i64 %i.ap, 8
  %i.as = add i64 %i.aq, %i.ar                    ; 2 uses
  %i.at = and i64 %i.as, 1095216660735
  %i.au = mul i64 %i.at, 4294967296000100
  %i.av = lshr i64 %i.as, 16
  %i.aw = and i64 %i.av, 1095216660735
  %i.ax = mul i64 %i.aw, 42949672960001
  %i.ay = add i64 %i.ax, %i.au
  %i.az = lshr i64 %i.ay, 32
  %i.ba = add nuw nsw i64 %i.az, %i.ao
  %i.bb = getelementptr inbounds nuw i8, ptr %.0349, i64 16
  %i.bc = add i64 %.pre.pre, 16                   ; 2 uses
  store i64 %i.bc, ptr %3, align 8, !tbaa !72
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.e, %.preheader294
  %.pre = phi i64 [ %.pre.pre, %.preheader294 ], [ %i.ai, %bb.d ], [ %i.bc, %bb.e ] ; 3 uses
  %.1263.lcssa = phi i64 [ 0, %.preheader294 ], [ 8, %bb.d ], [ 16, %bb.e ] ; 2 uses
  %.1256.lcssa = phi i64 [ 0, %.preheader294 ], [ %i.ag, %bb.d ], [ %i.ba, %bb.e ] ; 2 uses
  %.1.lcssa = phi ptr [ %.0349, %.preheader294 ], [ %i.ah, %bb.d ], [ %i.bb, %bb.e ] ; 3 uses
  %.not64334 = icmp eq ptr %.1.lcssa, %i.e
  br i1 %.not64334, label %.critedge2, label %.lr.ph339

.lr.ph339:                                        ; preds = %.critedge
  %umax = tail call i64 @llvm.umax.i64(i64 %.pre, i64 %2) ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph339, %bb.g
  %i.bd = phi i64 [ %.pre, %.lr.ph339 ], [ %i.bl, %bb.g ] ; 2 uses
  %.2338 = phi ptr [ %.1.lcssa, %.lr.ph339 ], [ %i.bj, %bb.g ] ; 3 uses
  %.2257337 = phi i64 [ %.1256.lcssa, %.lr.ph339 ], [ %i.bi, %bb.g ] ; 2 uses
  %.2264336 = phi i64 [ %.1263.lcssa, %.lr.ph339 ], [ %i.bk, %bb.g ] ; 3 uses
  %exitcond.not = icmp eq i64 %i.bd, %umax
  br i1 %exitcond.not, label %.critedge2, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.be = mul i64 %.2257337, 10
  %i.bf = load i8, ptr %.2338, align 1, !tbaa !29
  %i.bg = sext i8 %i.bf to i64
  %i.bh = add i64 %i.be, -48
  %i.bi = add i64 %i.bh, %i.bg                    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.2338, i64 1 ; 3 uses
  %i.bk = add nuw nsw i64 %.2264336, 1            ; 2 uses
  %i.bl = add i64 %i.bd, 1                        ; 3 uses
  store i64 %i.bl, ptr %3, align 8, !tbaa !72
  %i.bm = icmp ugt i64 %.2264336, 17
  %.not64 = icmp eq ptr %i.bj, %i.e
  %or.cond = select i1 %i.bm, i1 true, i1 %.not64
  br i1 %or.cond, label %.critedge2, label %bb.f, !llvm.loop !92

.critedge2:                                       ; preds = %bb.f, %bb.g, %.critedge
  %i.bn = phi i64 [ %.pre, %.critedge ], [ %i.bl, %bb.g ], [ %umax, %bb.f ]
  %.2264.lcssa = phi i64 [ %.1263.lcssa, %.critedge ], [ %i.bk, %bb.g ], [ %.2264336, %bb.f ] ; 2 uses
  %.2257.lcssa = phi i64 [ %.1256.lcssa, %.critedge ], [ %i.bi, %bb.g ], [ %.2257337, %bb.f ] ; 8 uses
  %.2.lcssa = phi ptr [ %.1.lcssa, %.critedge ], [ %i.bj, %bb.g ], [ %.2338, %bb.f ] ; 5 uses
  %i.bo = icmp eq i64 %i.bn, %2
  %i.bp = zext i16 %i.q to i64                    ; 6 uses
  %.not19.i.i = icmp eq i16 %i.q, 0               ; 2 uses
  br i1 %i.bo, label %bb.h, label %bb.o

bb.h:                                             ; preds = %.critedge2
  br i1 %.not19.i.i, label %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr @_ZN14arrow_vendored10fast_floatL20powers_of_ten_uint64E, i64 %.2264.lcssa
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !72
  %i.bs = zext i64 %i.br to i128                  ; 3 uses
  %xtraiter635 = and i64 %i.bp, 1
  %i.bt = icmp eq i16 %i.q, 1
  br i1 %i.bt, label %.epil.preheader634, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter640 = and i64 %i.bp, 65534
  br label %bb.i

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.i
  %lcmp.mod636.not = icmp eq i64 %xtraiter635, 0
  br i1 %lcmp.mod636.not, label %._crit_edge.i.i, label %.epil.preheader634

.epil.preheader634:                               ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.016.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.cv, %._crit_edge.i.i.unr-lcssa ]
  %.01215.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ct, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod639 = trunc i16 %i.q to i1
  tail call void @llvm.assume(i1 %lcmp.mod639)
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i.epil.init ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !72
  %i.bw = zext i64 %i.bv to i128
  %i.bx = mul nuw i128 %i.bw, %i.bs
  %i.by = zext i64 %.01215.i.i.epil.init to i128
  %i.bz = add nuw i128 %i.bx, %i.by               ; 2 uses
  %i.ca = lshr i128 %i.bz, 64                     ; 2 uses
  %i.cb = trunc nuw i128 %i.ca to i64
  %i.cc = trunc i128 %i.bz to i64
  store i64 %i.cc, ptr %i.bu, align 8, !tbaa !72
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader634
  %.lcssa616 = phi i128 [ %i.cs, %._crit_edge.i.i.unr-lcssa ], [ %i.ca, %.epil.preheader634 ]
  %.lcssa615 = phi i64 [ %i.ct, %._crit_edge.i.i.unr-lcssa ], [ %i.cb, %.epil.preheader634 ]
  %.not.i.i84 = icmp ne i128 %.lcssa616, 0
  %i.cd = icmp ult i16 %i.q, 62
  %or.cond279 = and i1 %i.cd, %.not.i.i84
  br i1 %or.cond279, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i, label %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i.new
  %.016.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.cv, %bb.i ] ; 3 uses
  %.01215.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.ct, %bb.i ]
  %niter641 = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter641.next.1, %bb.i ]
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !72
  %i.cg = zext i64 %i.cf to i128
  %i.ch = mul nuw i128 %i.cg, %i.bs
  %i.ci = zext i64 %.01215.i.i to i128
  %i.cj = add nuw i128 %i.ch, %i.ci               ; 2 uses
  %i.ck = lshr i128 %i.cj, 64
  %i.cl = trunc i128 %i.cj to i64
  store i64 %i.cl, ptr %i.ce, align 8, !tbaa !72
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !72
  %i.cp = zext i64 %i.co to i128
  %i.cq = mul nuw i128 %i.cp, %i.bs
  %i.cr = add nuw i128 %i.cq, %i.ck               ; 2 uses
  %i.cs = lshr i128 %i.cr, 64                     ; 2 uses
  %i.ct = trunc nuw i128 %i.cs to i64             ; 3 uses
  %i.cu = trunc i128 %i.cr to i64
  store i64 %i.cu, ptr %i.cn, align 8, !tbaa !72
  %i.cv = add nuw nsw i64 %.016.i.i, 2            ; 2 uses
  %niter641.next.1 = add i64 %niter641, 2         ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN14arrow_vendored10fast_float14parse_mantissaIcEEvRNS0_6bigintERNS0_22parsed_number_string_tIT_EEmRm:bb.a
  %i.fj = zext i64 %i.fi to i128
  %i.fk = mul nuw nsw i128 %i.fj, 10
  %i.fl = add nuw nsw i128 %i.fk, %i.fe           ; 2 uses
  %i.fm = lshr i128 %i.fl, 64                     ; 2 uses
  %i.fn = trunc nuw nsw i128 %i.fm to i64         ; 3 uses
  %i.fo = trunc i128 %i.fl to i64
  store i64 %i.fo, ptr %i.fh, align 8, !tbaa !72
  %i.fp = add nuw nsw i64 %.016.i.i91, 2          ; 2 uses
  %niter648.next.1 = add i64 %niter648, 2         ; 2 uses
  %niter648.ncmp.1 = icmp eq i64 %niter648.next.1, %unroll_iter647
  br i1 %niter648.ncmp.1, label %._crit_edge.i.i94.unr-lcssa, label %.lr.ph.i.i90, !llvm.loop !93

_ZN14arrow_vendored10fast_float6bigint3mulEm.exit98.thread270: ; preds = %._crit_edge.i.i94
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.em
  store i64 %.lcssa609, ptr %i.fq, align 8, !tbaa !72
  %i.fr = add nuw nsw i16 %.pr, 1                 ; 3 uses
  store i16 %i.fr, ptr %i.p, align 8, !tbaa !90
  %.pre453 = zext nneg i16 %i.fr to i64
  br label %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit98

_ZN14arrow_vendored10fast_float6bigint3mulEm.exit98: ; preds = %._crit_edge.i.i94, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit98.thread270
  %.pre-phi454 = phi i64 [ %.pre453, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit98.thread270 ], [ %i.em, %._crit_edge.i.i94 ] ; 3 uses
  %i.fs = phi i16 [ %i.fr, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit98.thread270 ], [ %.pr, %._crit_edge.i.i94 ] ; 2 uses
  %i.ft = load i64, ptr %0, align 8, !tbaa !72
  %i.fu = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ft, i64 1) ; 2 uses
  %i.fv = extractvalue { i64, i1 } %i.fu, 1
  %i.fw = extractvalue { i64, i1 } %i.fu, 0
  store i64 %i.fw, ptr %0, align 8, !tbaa !72
  br i1 %i.fv, label %.peel.next.i102.preheader, label %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit.sink.split

.peel.next.i102.preheader:                        ; preds = %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit98
  %exitcond.not.i.i104576 = icmp eq i64 %.pre-phi454, 1
  br i1 %exitcond.not.i.i104576, label %.critedge.i.i105, label %.lr.ph578

.peel.next.i102:                                  ; preds = %.lr.ph578
  %i.fx = add nuw nsw i64 %.01421.i.i103577, 1    ; 2 uses
  %exitcond.not.i.i104 = icmp eq i64 %i.fx, %.pre-phi454
  br i1 %exitcond.not.i.i104, label %.critedge.i.i105, label %.lr.ph578, !llvm.loop !94

.lr.ph578:                                        ; preds = %.peel.next.i102.preheader, %.peel.next.i102
  %.01421.i.i103577 = phi i64 [ %i.fx, %.peel.next.i102 ], [ 1, %.peel.next.i102.preheader ] ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01421.i.i103577 ; 2 uses
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !72
  %i.ga = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.fz, i64 1) ; 2 uses
  %i.gb = extractvalue { i64, i1 } %i.ga, 1
  %i.gc = extractvalue { i64, i1 } %i.ga, 0
  store i64 %i.gc, ptr %i.fy, align 8, !tbaa !72
  br i1 %i.gb, label %.peel.next.i102, label %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit.sink.split, !llvm.loop !94

.critedge.i.i105:                                 ; preds = %.peel.next.i102, %.peel.next.i102.preheader
  %i.gd = icmp ult i16 %i.fs, 62
  br i1 %i.gd, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i106, label %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit.sink.split

_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i106: ; preds = %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbNS0_4spanIKT_EE.exit.thread, %.critedge.i.i105
  %i.ge = phi i64 [ 0, %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbNS0_4spanIKT_EE.exit.thread ], [ %.pre-phi454, %.critedge.i.i105 ]
  %i.gf = phi i16 [ 0, %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbNS0_4spanIKT_EE.exit.thread ], [ %i.fs, %.critedge.i.i105 ]
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ge
  store i64 1, ptr %i.gg, align 8, !tbaa !72
  %i.gh = add nuw nsw i16 %i.gf, 1
  store i16 %i.gh, ptr %i.p, align 8, !tbaa !90
  br label %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit.sink.split

bb.o:                                             ; preds = %.critedge2
  br i1 %.not19.i.i, label %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit118.thread, label %.lr.ph.i.i110

.lr.ph.i.i110:                                    ; preds = %bb.o
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr @_ZN14arrow_vendored10fast_floatL20powers_of_ten_uint64E, i64 %.2264.lcssa
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !72
  %i.gk = zext i64 %i.gj to i128                  ; 3 uses
  %xtraiter = and i64 %i.bp, 1
  %i.gl = icmp eq i16 %i.q, 1
  br i1 %i.gl, label %.epil.preheader, label %.lr.ph.i.i110.new

.lr.ph.i.i110.new:                                ; preds = %.lr.ph.i.i110
  %unroll_iter = and i64 %i.bp, 65534
  br label %bb.p

._crit_edge.i.i114.unr-lcssa:                     ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i114, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i114.unr-lcssa, %.lr.ph.i.i110
  %.016.i.i111.epil.init = phi i64 [ 0, %.lr.ph.i.i110 ], [ %i.hn, %._crit_edge.i.i114.unr-lcssa ]
  %.01215.i.i112.epil.init = phi i64 [ 0, %.lr.ph.i.i110 ], [ %i.hl, %._crit_edge.i.i114.unr-lcssa ]
  %lcmp.mod633 = trunc i16 %i.q to i1
  tail call void @llvm.assume(i1 %lcmp.mod633)
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i111.epil.init ; 2 uses
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !72
  %i.go = zext i64 %i.gn to i128
  %i.gp = mul nuw i128 %i.go, %i.gk
  %i.gq = zext i64 %.01215.i.i112.epil.init to i128
  %i.gr = add nuw i128 %i.gp, %i.gq               ; 2 uses
  %i.gs = lshr i128 %i.gr, 64                     ; 2 uses
  %i.gt = trunc nuw i128 %i.gs to i64
  %i.gu = trunc i128 %i.gr to i64
  store i64 %i.gu, ptr %i.gm, align 8, !tbaa !72
  br label %._crit_edge.i.i114

._crit_edge.i.i114:                               ; preds = %._crit_edge.i.i114.unr-lcssa, %.epil.preheader
  %.lcssa619 = phi i128 [ %i.hk, %._crit_edge.i.i114.unr-lcssa ], [ %i.gs, %.epil.preheader ]
  %.lcssa618 = phi i64 [ %i.hl, %._crit_edge.i.i114.unr-lcssa ], [ %i.gt, %.epil.preheader ]
  %.not.i.i115 = icmp ne i128 %.lcssa619, 0
  %i.gv = icmp ult i16 %i.q, 62
  %or.cond281 = and i1 %i.gv, %.not.i.i115
  br i1 %or.cond281, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i117, label %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit118

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i110.new
  %.016.i.i111 = phi i64 [ 0, %.lr.ph.i.i110.new ], [ %i.hn, %bb.p ] ; 3 uses
  %.01215.i.i112 = phi i64 [ 0, %.lr.ph.i.i110.new ], [ %i.hl, %bb.p ]
  %niter = phi i64 [ 0, %.lr.ph.i.i110.new ], [ %niter.next.1, %bb.p ]
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i111 ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !72
  %i.gy = zext i64 %i.gx to i128
  %i.gz = mul nuw i128 %i.gy, %i.gk
  %i.ha = zext i64 %.01215.i.i112 to i128
  %i.hb = add nuw i128 %i.gz, %i.ha               ; 2 uses
  %i.hc = lshr i128 %i.hb, 64
  %i.hd = trunc i128 %i.hb to i64
  store i64 %i.hd, ptr %i.gw, align 8, !tbaa !72
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i111
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8 ; 2 uses
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !72
  %i.hh = zext i64 %i.hg to i128
  %i.hi = mul nuw i128 %i.hh, %i.gk
  %i.hj = add nuw i128 %i.hi, %i.hc               ; 2 uses
  %i.hk = lshr i128 %i.hj, 64                     ; 2 uses
  %i.hl = trunc nuw i128 %i.hk to i64             ; 3 uses
  %i.hm = trunc i128 %i.hj to i64
  store i64 %i.hm, ptr %i.hf, align 8, !tbaa !72
  %i.hn = add nuw nsw i64 %.016.i.i111, 2         ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i114.unr-lcssa, label %bb.p, !llvm.loop !93

_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i117: ; preds = %._crit_edge.i.i114
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bp
  store i64 %.lcssa618, ptr %i.ho, align 8, !tbaa !72
  %i.hp = add nuw nsw i16 %i.q, 1                 ; 2 uses
  store i16 %i.hp, ptr %i.p, align 8, !tbaa !90
  br label %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit118

_ZN14arrow_vendored10fast_float6bigint3mulEm.exit118: ; preds = %._crit_edge.i.i114, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i117
  %i.hq = phi i16 [ %i.hp, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i117 ], [ %i.q, %._crit_edge.i.i114 ] ; 8 uses
  %.not20.i.i119 = icmp eq i64 %.2257.lcssa, 0
  br i1 %.not20.i.i119, label %_ZN14arrow_vendored10fast_float6bigint3addEm.exit129, label %.lr.ph.i.i120

_ZN14arrow_vendored10fast_float6bigint3mulEm.exit118.thread: ; preds = %bb.o
  %.not20.i.i119498 = icmp eq i64 %.2257.lcssa, 0
  br i1 %.not20.i.i119498, label %_ZN14arrow_vendored10fast_float6bigint3addEm.exit129, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i127

.lr.ph.i.i120:                                    ; preds = %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit118
  %i.hr = zext i16 %i.hq to i64                   ; 2 uses
  %i.hs = load i64, ptr %0, align 8, !tbaa !72
  %i.ht = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.hs, i64 %.2257.lcssa) ; 2 uses
  %i.hu = extractvalue { i64, i1 } %i.ht, 1
  %i.hv = extractvalue { i64, i1 } %i.ht, 0
  store i64 %i.hv, ptr %0, align 8, !tbaa !72
  br i1 %i.hu, label %.peel.next.i123.preheader, label %_ZN14arrow_vendored10fast_float6bigint3addEm.exit129

.peel.next.i123.preheader:                        ; preds = %.lr.ph.i.i120
  %exitcond.not.i.i125570 = icmp eq i16 %i.hq, 1
  br i1 %exitcond.not.i.i125570, label %.critedge.i.i126, label %.lr.ph572

.peel.next.i123:                                  ; preds = %.lr.ph572
  %i.hw = add nuw nsw i64 %.01421.i.i124571, 1    ; 2 uses
  %exitcond.not.i.i125 = icmp eq i64 %i.hw, %i.hr
  br i1 %exitcond.not.i.i125, label %.critedge.i.i126, label %.lr.ph572, !llvm.loop !94

.lr.ph572:                                        ; preds = %.peel.next.i123.preheader, %.peel.next.i123
  %.01421.i.i124571 = phi i64 [ %i.hw, %.peel.next.i123 ], [ 1, %.peel.next.i123.preheader ] ; 2 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01421.i.i124571 ; 2 uses
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !72
  %i.hz = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.hy, i64 1) ; 2 uses
  %i.ia = extractvalue { i64, i1 } %i.hz, 1
  %i.ib = extractvalue { i64, i1 } %i.hz, 0
  store i64 %i.ib, ptr %i.hx, align 8, !tbaa !72
  br i1 %i.ia, label %.peel.next.i123, label %_ZN14arrow_vendored10fast_float6bigint3addEm.exit129, !llvm.loop !94

.critedge.i.i126:                                 ; preds = %.peel.next.i123, %.peel.next.i123.preheader
  %i.ic = icmp ult i16 %i.hq, 62
  br i1 %i.ic, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i127, label %_ZN14arrow_vendored10fast_float6bigint3addEm.exit129

_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i127: ; preds = %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit118.thread, %.critedge.i.i126
  %i.id = phi i64 [ %i.hr, %.critedge.i.i126 ], [ 0, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit118.thread ]
  %i.ie = phi i16 [ %i.hq, %.critedge.i.i126 ], [ 0, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit118.thread ]
  %.022.i.lcssa7.i128 = phi i64 [ 1, %.critedge.i.i126 ], [ %.2257.lcssa, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit118.thread ]
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.id
  store i64 %.022.i.lcssa7.i128, ptr %i.if, align 8, !tbaa !72
  %i.ig = add nuw nsw i16 %i.ie, 1                ; 2 uses
  store i16 %i.ig, ptr %i.p, align 8, !tbaa !90
  br label %_ZN14arrow_vendored10fast_float6bigint3addEm.exit129

_ZN14arrow_vendored10fast_float6bigint3addEm.exit129: ; preds = %.lr.ph572, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit118.thread, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit118, %.lr.ph.i.i120, %.critedge.i.i126, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i127
  %i.ih = phi i16 [ %i.ig, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i127 ], [ %i.q, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit118.thread ], [ %i.hq, %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit118 ], [ %i.hq, %.lr.ph.i.i120 ], [ %i.hq, %.critedge.i.i126 ], [ %i.hq, %.lr.ph572 ]
  %.not = icmp eq ptr %.2.lcssa, %i.e
  br i1 %.not, label %._crit_edge350, label %.preheader294, !llvm.loop !99

._crit_edge350:                                   ; preds = %_ZN14arrow_vendored10fast_float6bigint3addEm.exit129, %._crit_edge, %_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit71
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !98 ; 6 uses
  %5 = ptrtoint ptr %i.ij to i64                  ; 2 uses
  %.not59 = icmp eq ptr %i.ij, null
  br i1 %.not59, label %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge350
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !87 ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.il ; 10 uses
  %i.in = load i64, ptr %3, align 8, !tbaa !72
  %i.io = icmp eq i64 %i.in, 0
  br i1 %i.io, label %.preheader289, label %_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit

.preheader289:                                    ; preds = %bb.q
  %i.ip = ptrtoint ptr %i.im to i64
  %i.iq = icmp sgt i64 %i.il, 7
  br i1 %i.iq, label %.lr.ph368, label %._crit_edge369

.lr.ph368:                                        ; preds = %.preheader289, %bb.r
  %.7367 = phi ptr [ %i.ir, %bb.r ], [ %i.ij, %.preheader289 ] ; 4 uses
  %.0.copyload.i = load i64, ptr %.7367, align 1
  %.not.i = icmp eq i64 %.0.copyload.i, 3472328296227680304
  br i1 %.not.i, label %bb.r, label %.lr.ph368.._crit_edge369.loopexit_crit_edge

.lr.ph368.._crit_edge369.loopexit_crit_edge:      ; preds = %.lr.ph368
  %.pre456 = ptrtoint ptr %.7367 to i64
  br label %._crit_edge369

bb.r:                                             ; preds = %.lr.ph368
  %i.ir = getelementptr inbounds nuw i8, ptr %.7367, i64 8 ; 3 uses
  %i.is = ptrtoint ptr %i.ir to i64               ; 2 uses
  %i.it = sub i64 %i.ip, %i.is
  %i.iu = icmp sgt i64 %i.it, 7
  br i1 %i.iu, label %.lr.ph368, label %._crit_edge369, !llvm.loop !88

._crit_edge369:                                   ; preds = %bb.r, %.lr.ph368.._crit_edge369.loopexit_crit_edge, %.preheader289
  %.7.lcssa441.pre-phi = phi i64 [ %5, %.preheader289 ], [ %.pre456, %.lr.ph368.._crit_edge369.loopexit_crit_edge ], [ %i.is, %bb.r ]
  %.7.lcssa = phi ptr [ %i.ij, %.preheader289 ], [ %.7367, %.lr.ph368.._crit_edge369.loopexit_crit_edge ], [ %i.ir, %bb.r ] ; 3 uses
  %.not8.i373 = icmp eq ptr %.7.lcssa, %i.im
  br i1 %.not8.i373, label %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit, label %.lr.ph376.preheader

.lr.ph376.preheader:                              ; preds = %._crit_edge369
  %i.iv = add i64 %i.il, %5
  %i.iw = sub i64 %i.iv, %.7.lcssa441.pre-phi
  %scevgep442 = getelementptr i8, ptr %.7.lcssa, i64 %i.iw
  br label %.lr.ph376

.lr.ph376:                                        ; preds = %.lr.ph376.preheader, %bb.s
  %.8374 = phi ptr [ %i.iy, %bb.s ], [ %.7.lcssa, %.lr.ph376.preheader ] ; 3 uses
  %i.ix = load i8, ptr %.8374, align 1, !tbaa !29
  %.not9.i = icmp eq i8 %i.ix, 48
  br i1 %.not9.i, label %bb.s, label %_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit

bb.s:                                             ; preds = %.lr.ph376
  %i.iy = getelementptr inbounds nuw i8, ptr %.8374, i64 1 ; 2 uses
  %.not8.i = icmp eq ptr %i.iy, %i.im
  br i1 %.not8.i, label %_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit, label %.lr.ph376, !llvm.loop !89

_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit: ; preds = %bb.s, %.lr.ph376, %bb.q
  %.3 = phi ptr [ %i.ij, %bb.q ], [ %.8374, %.lr.ph376 ], [ %scevgep442, %bb.s ] ; 2 uses
  %.not60408 = icmp eq ptr %.3, %i.im
  br i1 %.not60408, label %_ZN14arrow_vendored10fast_float12is_truncatedIcEEbPKT_S4_.exit, label %.preheader287.lr.ph

.preheader287.lr.ph:                              ; preds = %_ZN14arrow_vendored10fast_float10skip_zerosIcEEvRPKT_S4_.exit
  %i.iz = ptrtoint ptr %i.im to i64               ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 7 uses
  %.promoted715 = load i16, ptr %i.ja, align 8, !tbaa !90
  br label %.preheader287

.preheader287:                                    ; preds = %.preheader287.lr.ph, %_ZN14arrow_vendored10fast_float6bigint3addEm.exit191
  %i.jb = phi i16 [ %.promoted715, %.preheader287.lr.ph ], [ %i.re, %_ZN14arrow_vendored10fast_float6bigint3addEm.exit191 ] ; 13 uses
  %.4409 = phi ptr [ %.3, %.preheader287.lr.ph ], [ %.6.lcssa, %_ZN14arrow_vendored10fast_float6bigint3addEm.exit191 ] ; 5 uses
  %i.jc = ptrtoint ptr %.4409 to i64
  %i.jd = sub i64 %i.iz, %i.jc
  %i.je = icmp sgt i64 %i.jd, 7
  %.pre445.pre = load i64, ptr %3, align 8, !tbaa !72 ; 4 uses
  %i.jf = sub i64 %2, %.pre445.pre
  %i.jg = icmp ugt i64 %i.jf, 7
  %or.cond723 = select i1 %i.je, i1 %i.jg, i1 false
  br i1 %or.cond723, label %bb.t, label %.critedge4

bb.t:                                             ; preds = %.preheader287
  %.0.copyload.i.i83 = load i64, ptr %.4409, align 1
  %i.jh = add i64 %.0.copyload.i.i83, -3472328296227680304 ; 2 uses
  %i.ji = mul i64 %i.jh, 10
  %i.jj = lshr i64 %i.jh, 8
  %i.jk = add i64 %i.ji, %i.jj                    ; 2 uses
  %i.jl = and i64 %i.jk, 1095216660735
  %i.jm = mul i64 %i.jl, 4294967296000100
  %i.jn = lshr i64 %i.jk, 16
  %i.jo = and i64 %i.jn, 1095216660735
  %i.jp = mul i64 %i.jo, 42949672960001
  %i.jq = add i64 %i.jp, %i.jm
  %i.jr = lshr i64 %i.jq, 32                      ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.4409, i64 8 ; 3 uses
  %i.jt = add i64 %.pre445.pre, 8                 ; 3 uses
  store i64 %i.jt, ptr %3, align 8, !tbaa !72
  %i.ju = ptrtoint ptr %i.js to i64
  %i.jv = sub i64 %i.iz, %i.ju
  %i.jw = icmp sgt i64 %i.jv, 7
  %i.jx = sub i64 %2, %i.jt
  %i.jy = icmp ugt i64 %i.jx, 7
  %or.cond719 = select i1 %i.jw, i1 %i.jy, i1 false
  br i1 %or.cond719, label %bb.u, label %.critedge4

bb.u:                                             ; preds = %bb.t
  %i.jz = mul nuw nsw i64 %i.jr, 100000000
  %.0.copyload.i.i83.1 = load i64, ptr %i.js, align 1
  %i.ka = add i64 %.0.copyload.i.i83.1, -3472328296227680304 ; 2 uses
  %i.kb = mul i64 %i.ka, 10
  %i.kc = lshr i64 %i.ka, 8
  %i.kd = add i64 %i.kb, %i.kc                    ; 2 uses
  %i.ke = and i64 %i.kd, 1095216660735
  %i.kf = mul i64 %i.ke, 4294967296000100
  %i.kg = lshr i64 %i.kd, 16
  %i.kh = and i64 %i.kg, 1095216660735
  %i.ki = mul i64 %i.kh, 42949672960001
  %i.kj = add i64 %i.ki, %i.kf
  %i.kk = lshr i64 %i.kj, 32
  %i.kl = add nuw nsw i64 %i.kk, %i.jz
  %i.km = getelementptr inbounds nuw i8, ptr %.4409, i64 16
  %i.kn = add i64 %.pre445.pre, 16                ; 2 uses
  store i64 %i.kn, ptr %3, align 8, !tbaa !72
  br label %.critedge4

.critedge4:                                       ; preds = %bb.t, %bb.u, %.preheader287
  %.pre445 = phi i64 [ %.pre445.pre, %.preheader287 ], [ %i.jt, %bb.t ], [ %i.kn, %bb.u ] ; 3 uses
  %.4266.lcssa = phi i64 [ 0, %.preheader287 ], [ 8, %bb.t ], [ 16, %bb.u ] ; 2 uses
  %.4259.lcssa = phi i64 [ 0, %.preheader287 ], [ %i.jr, %bb.t ], [ %i.kl, %bb.u ] ; 2 uses
  %.5.lcssa = phi ptr [ %.4409, %.preheader287 ], [ %i.js, %bb.t ], [ %i.km, %bb.u ] ; 3 uses
  %.not62394 = icmp eq ptr %.5.lcssa, %i.im
  br i1 %.not62394, label %.critedge6, label %.lr.ph399

.lr.ph399:                                        ; preds = %.critedge4
  %umax443 = tail call i64 @llvm.umax.i64(i64 %.pre445, i64 %2) ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph399, %bb.w
  %i.ko = phi i64 [ %.pre445, %.lr.ph399 ], [ %i.kw, %bb.w ] ; 2 uses
  %.6398 = phi ptr [ %.5.lcssa, %.lr.ph399 ], [ %i.ku, %bb.w ] ; 3 uses
  %.5260397 = phi i64 [ %.4259.lcssa, %.lr.ph399 ], [ %i.kt, %bb.w ] ; 2 uses
  %.5267396 = phi i64 [ %.4266.lcssa, %.lr.ph399 ], [ %i.kv, %bb.w ] ; 3 uses
  %exitcond444.not = icmp eq i64 %i.ko, %umax443
  br i1 %exitcond444.not, label %.critedge6, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.kp = mul i64 %.5260397, 10
  %i.kq = load i8, ptr %.6398, align 1, !tbaa !29
  %i.kr = sext i8 %i.kq to i64
  %i.ks = add i64 %i.kp, -48
  %i.kt = add i64 %i.ks, %i.kr                    ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.6398, i64 1 ; 3 uses
  %i.kv = add nuw nsw i64 %.5267396, 1            ; 2 uses
  %i.kw = add i64 %i.ko, 1                        ; 3 uses
  store i64 %i.kw, ptr %3, align 8, !tbaa !72
  %i.kx = icmp ugt i64 %.5267396, 17
  %.not62 = icmp eq ptr %i.ku, %i.im
  %or.cond66 = select i1 %i.kx, i1 true, i1 %.not62
  br i1 %or.cond66, label %.critedge6, label %bb.v, !llvm.loop !100

.critedge6:                                       ; preds = %bb.v, %bb.w, %.critedge4
  %i.ky = phi i64 [ %.pre445, %.critedge4 ], [ %i.kw, %bb.w ], [ %umax443, %bb.v ]
  %.5267.lcssa = phi i64 [ %.4266.lcssa, %.critedge4 ], [ %i.kv, %bb.w ], [ %.5267396, %bb.v ] ; 2 uses
  %.5260.lcssa = phi i64 [ %.4259.lcssa, %.critedge4 ], [ %i.kt, %bb.w ], [ %.5260397, %bb.v ] ; 8 uses
  %.6.lcssa = phi ptr [ %.5.lcssa, %.critedge4 ], [ %i.ku, %bb.w ], [ %.6398, %bb.v ] ; 5 uses
  %i.kz = icmp eq i64 %i.ky, %2
  %i.la = zext i16 %i.jb to i64                   ; 6 uses
  %.not19.i.i130 = icmp eq i16 %i.jb, 0           ; 2 uses
  br i1 %i.kz, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %.critedge6
  br i1 %.not19.i.i130, label %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit139.thread, label %.lr.ph.i.i131

.lr.ph.i.i131:                                    ; preds = %bb.x
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr @_ZN14arrow_vendored10fast_floatL20powers_of_ten_uint64E, i64 %.5267.lcssa
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !72
  %i.ld = zext i64 %i.lc to i128                  ; 3 uses
  %xtraiter658 = and i64 %i.la, 1
  %i.le = icmp eq i16 %i.jb, 1
  br i1 %i.le, label %.epil.preheader657, label %.lr.ph.i.i131.new

.lr.ph.i.i131.new:                                ; preds = %.lr.ph.i.i131
  %unroll_iter663 = and i64 %i.la, 65534
  br label %bb.y

._crit_edge.i.i135.unr-lcssa:                     ; preds = %bb.y
  %lcmp.mod659.not = icmp eq i64 %xtraiter658, 0
  br i1 %lcmp.mod659.not, label %._crit_edge.i.i135, label %.epil.preheader657

.epil.preheader657:                               ; preds = %._crit_edge.i.i135.unr-lcssa, %.lr.ph.i.i131
  %.016.i.i132.epil.init = phi i64 [ 0, %.lr.ph.i.i131 ], [ %i.mg, %._crit_edge.i.i135.unr-lcssa ]
  %.01215.i.i133.epil.init = phi i64 [ 0, %.lr.ph.i.i131 ], [ %i.me, %._crit_edge.i.i135.unr-lcssa ]
  %lcmp.mod662 = trunc i16 %i.jb to i1
  tail call void @llvm.assume(i1 %lcmp.mod662)
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i132.epil.init ; 2 uses
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !72
  %i.lh = zext i64 %i.lg to i128
  %i.li = mul nuw i128 %i.lh, %i.ld
  %i.lj = zext i64 %.01215.i.i133.epil.init to i128
  %i.lk = add nuw i128 %i.li, %i.lj               ; 2 uses
  %i.ll = lshr i128 %i.lk, 64                     ; 2 uses
  %i.lm = trunc nuw i128 %i.ll to i64
  %i.ln = trunc i128 %i.lk to i64
  store i64 %i.ln, ptr %i.lf, align 8, !tbaa !72
  br label %._crit_edge.i.i135

._crit_edge.i.i135:                               ; preds = %._crit_edge.i.i135.unr-lcssa, %.epil.preheader657
  %.lcssa593 = phi i128 [ %i.md, %._crit_edge.i.i135.unr-lcssa ], [ %i.ll, %.epil.preheader657 ]
  %.lcssa592 = phi i64 [ %i.me, %._crit_edge.i.i135.unr-lcssa ], [ %i.lm, %.epil.preheader657 ]
  %.not.i.i136 = icmp ne i128 %.lcssa593, 0
  %i.lo = icmp ult i16 %i.jb, 62
  %or.cond283 = and i1 %i.lo, %.not.i.i136
  br i1 %or.cond283, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i138, label %_ZN14arrow_vendored10fast_float6bigint3mulEm.exit139

bb.y:                                             ; preds = %bb.y, %.lr.ph.i.i131.new
  %.016.i.i132 = phi i64 [ 0, %.lr.ph.i.i131.new ], [ %i.mg, %bb.y ] ; 3 uses
  %.01215.i.i133 = phi i64 [ 0, %.lr.ph.i.i131.new ], [ %i.me, %bb.y ]
  %niter664 = phi i64 [ 0, %.lr.ph.i.i131.new ], [ %niter664.next.1, %bb.y ]
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i132 ; 2 uses
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !72
  %i.lr = zext i64 %i.lq to i128
  %i.ls = mul nuw i128 %i.lr, %i.ld
  %i.lt = zext i64 %.01215.i.i133 to i128
  %i.lu = add nuw i128 %i.ls, %i.lt               ; 2 uses
  %i.lv = lshr i128 %i.lu, 64
  %i.lw = trunc i128 %i.lu to i64
  store i64 %i.lw, ptr %i.lp, align 8, !tbaa !72
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.i132
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 8 ; 2 uses
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !72
  %i.ma = zext i64 %i.lz to i128
  %i.mb = mul nuw i128 %i.ma, %i.ld
  %i.mc = add nuw i128 %i.mb, %i.lv               ; 2 uses
  %i.md = lshr i128 %i.mc, 64                     ; 2 uses
  %i.me = trunc nuw i128 %i.md to i64             ; 3 uses
  %i.mf = trunc i128 %i.mc to i64
  store i64 %i.mf, ptr %i.ly, align 8, !tbaa !72
  %i.mg = add nuw nsw i64 %.016.i.i132, 2         ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN14arrow_vendored10fast_float8long_mulILt62EEEbRNS0_8stackvecIXT_EEENS0_4spanImEE:bb.a
  %lcmp.mod122 = trunc i16 %i.av to i1
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.016.i38.us.epil.init ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !72
  %i.bt = zext i64 %i.bs to i128
  %i.bu = mul nuw i128 %i.bt, %i.ax
  %i.bv = zext i64 %.01215.i39.us.epil.init to i128
  %i.bw = add nuw i128 %i.bu, %i.bv               ; 2 uses
  %i.bx = lshr i128 %i.bw, 64                     ; 2 uses
  %i.by = trunc nuw i128 %i.bx to i64
  %i.bz = trunc i128 %i.bw to i64
  store i64 %i.bz, ptr %i.br, align 8, !tbaa !72
  br label %._crit_edge.i41.us

._crit_edge.i41.us:                               ; preds = %._crit_edge.i41.us.unr-lcssa, %.epil.preheader117
  %.lcssa108 = phi i128 [ %i.bn, %._crit_edge.i41.us.unr-lcssa ], [ %i.bx, %.epil.preheader117 ]
  %.lcssa = phi i64 [ %i.bo, %._crit_edge.i41.us.unr-lcssa ], [ %i.by, %.epil.preheader117 ]
  %.not.i42.us = icmp eq i128 %.lcssa108, 0
  br i1 %.not.i42.us, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i41.us
  %i.ca = icmp ult i16 %i.av, 62
  br i1 %i.ca, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i44.us, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_extendENS0_4spanImEE.exit

_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i44.us: ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.aw
  store i64 %.lcssa, ptr %i.cb, align 8, !tbaa !72
  %i.cc = add nuw nsw i16 %i.av, 1
  br label %bb.n

bb.n:                                             ; preds = %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i44.us, %._crit_edge.i41.us, %bb.k
  %i.cd = phi i16 [ %i.cc, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i44.us ], [ %i.av, %._crit_edge.i41.us ], [ 0, %bb.k ] ; 2 uses
  %i.ce = zext i16 %i.cd to i64                   ; 4 uses
  %i.cf = zext i16 %i.ar to i64                   ; 5 uses
  %i.cg = icmp ugt i64 %.02769.us, %i.cf
  %i.ch = sub nsw i64 %i.cf, %.02769.us
  %i.ci = icmp ult i64 %i.ch, %i.ce
  %or.cond.i.us = select i1 %i.cg, i1 true, i1 %i.ci
  br i1 %or.cond.i.us, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cj = add i64 %.02769.us, %i.ce               ; 4 uses
  %i.ck = icmp ult i64 %i.cj, 63
  br i1 %i.ck, label %bb.p, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_extendENS0_4spanImEE.exit

bb.p:                                             ; preds = %bb.o
  %i.cl = icmp samesign ugt i64 %i.cj, %i.cf
  br i1 %i.cl, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.loopexit.i.us, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us

_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.loopexit.i.us: ; preds = %bb.p
  %i.cm = getelementptr [8 x i8], ptr %0, i64 %i.cf
  %i.cn = sub nuw nsw i64 %i.cj, %i.cf
  %i.co = shl nuw nsw i64 %i.cn, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cm, i8 0, i64 %i.co, i1 false), !tbaa !72
  br label %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us

_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us: ; preds = %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.loopexit.i.us, %bb.p
  %storemerge.i.i.i.us = trunc nuw nsw i64 %i.cj to i16 ; 2 uses
  store i16 %storemerge.i.i.i.us, ptr %i.a, align 8, !tbaa !90
  br label %bb.q

bb.q:                                             ; preds = %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us, %bb.n
  %i.cp = phi i16 [ %i.ar, %bb.n ], [ %storemerge.i.i.i.us, %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us ] ; 6 uses
  %invariant.gep.i.us = getelementptr [8 x i8], ptr %0, i64 %.02769.us
  %.not.i46.us = icmp eq i16 %i.cd, 0
  br i1 %.not.i46.us, label %.critedge.us, label %.lr.ph.i47.us

.lr.ph.i47.us:                                    ; preds = %bb.q, %bb.s
  %.02434.i.us = phi i64 [ %i.da, %bb.s ], [ 0, %bb.q ] ; 3 uses
  %.02533.i.us = phi i1 [ %.0.in.i.us, %bb.s ], [ false, %bb.q ]
  %gep.i.us = getelementptr [8 x i8], ptr %invariant.gep.i.us, i64 %.02434.i.us ; 2 uses
  %i.cq = load i64, ptr %gep.i.us, align 8, !tbaa !72
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.02434.i.us
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !72
  %i.ct = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.cq, i64 %i.cs) ; 2 uses
  %i.cu = extractvalue { i64, i1 } %i.ct, 1       ; 2 uses
  %i.cv = extractvalue { i64, i1 } %i.ct, 0       ; 2 uses
  br i1 %.02533.i.us, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i47.us
  %i.cw = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.cv, i64 1) ; 2 uses
  %i.cx = extractvalue { i64, i1 } %i.cw, 1
  %i.cy = extractvalue { i64, i1 } %i.cw, 0
  %i.cz = or i1 %i.cu, %i.cx
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i47.us
  %.0.in.i.us = phi i1 [ %i.cz, %bb.r ], [ %i.cu, %.lr.ph.i47.us ] ; 2 uses
  %.023.i.us = phi i64 [ %i.cy, %bb.r ], [ %i.cv, %.lr.ph.i47.us ]
  store i64 %.023.i.us, ptr %gep.i.us, align 8, !tbaa !72
  %i.da = add nuw nsw i64 %.02434.i.us, 1         ; 2 uses
  %exitcond.not.i48.us = icmp eq i64 %i.da, %i.ce
  br i1 %exitcond.not.i48.us, label %._crit_edge.i49.us, label %.lr.ph.i47.us, !llvm.loop !116

._crit_edge.i49.us:                               ; preds = %bb.s
  br i1 %.0.in.i.us, label %bb.t, label %.critedge.us

bb.t:                                             ; preds = %._crit_edge.i49.us
  %i.db = add i64 %.02769.us, %i.ce               ; 3 uses
  %i.dc = zext i16 %i.cp to i64                   ; 3 uses
  %umax.i.i.us = tail call i64 @llvm.umax.i64(i64 %i.db, i64 %i.dc)
  %exitcond.not.i.i.us105.not = icmp ult i64 %i.db, %i.dc
  br i1 %exitcond.not.i.i.us105.not, label %.lr.ph107, label %.critedge.i.i.us

bb.u:                                             ; preds = %.lr.ph107
  %i.dd = add i64 %.01421.i.i.us106, 1            ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %i.dd, %umax.i.i.us
  br i1 %exitcond.not.i.i.us, label %.critedge.i.i.us, label %.lr.ph107, !llvm.loop !117

.lr.ph107:                                        ; preds = %bb.t, %bb.u
  %.01421.i.i.us106 = phi i64 [ %i.dd, %bb.u ], [ %i.db, %bb.t ] ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01421.i.i.us106 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !72
  %i.dg = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.df, i64 1) ; 2 uses
  %i.dh = extractvalue { i64, i1 } %i.dg, 1
  %i.di = extractvalue { i64, i1 } %i.dg, 0
  store i64 %i.di, ptr %i.de, align 8, !tbaa !72
  br i1 %i.dh, label %bb.u, label %.critedge.us, !llvm.loop !117

.critedge.i.i.us:                                 ; preds = %bb.u, %bb.t
  %i.dj = icmp ult i16 %i.cp, 62
  br i1 %i.dj, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_extendENS0_4spanImEE.exit

_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us: ; preds = %.critedge.i.i.us
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dc
  store i64 1, ptr %i.dk, align 8, !tbaa !72
  %i.dl = add nuw nsw i16 %i.cp, 1                ; 2 uses
  store i16 %i.dl, ptr %i.a, align 8, !tbaa !90
  br label %.critedge.us

.critedge.us:                                     ; preds = %.lr.ph107, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us, %._crit_edge.i49.us, %bb.q, %.lr.ph.split.us
  %i.dm = phi i16 [ %i.ar, %.lr.ph.split.us ], [ %i.dl, %_ZN14arrow_vendored10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us ], [ %i.cp, %._crit_edge.i49.us ], [ %i.cp, %bb.q ], [ %i.cp, %.lr.ph107 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.dn = add nuw i64 %.02769.us, 1               ; 2 uses
  %exitcond75.not = icmp eq i64 %i.dn, %2
  br i1 %exitcond75.not, label %.critedge34, label %.lr.ph.split.us, !llvm.loop !118

.lr.ph.split:                                     ; preds = %.lr.ph, %.critedge
  %.02769 = phi i64 [ %i.dq, %.critedge ], [ 1, %.lr.ph ] ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.02769
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %.not29 = icmp eq i64 %i.dp, 0
  br i1 %.not29, label %.critedge, label %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_extendENS0_4spanImEE.exit

.critedge:                                        ; preds = %.lr.ph.split
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.dq = add nuw i64 %.02769, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.dq, %2
  br i1 %exitcond.not, label %.critedge34, label %.lr.ph.split, !llvm.loop !118

_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_extendENS0_4spanImEE.exit: ; preds = %.lr.ph.split, %bb.m, %bb.o, %.critedge.i.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %.critedge32

.critedge34:                                      ; preds = %.critedge, %.critedge.us, %_ZN14arrow_vendored10fast_float9small_mulILt62EEEbRNS0_8stackvecIXT_EEEm.exit, %_ZN14arrow_vendored10fast_float8stackvecILt62EEC2ENS0_4spanImEE.exit
  %.promoted.i = phi i16 [ %i.dm, %.critedge.us ], [ %i.b, %_ZN14arrow_vendored10fast_float8stackvecILt62EEC2ENS0_4spanImEE.exit ], [ %i.ao, %_ZN14arrow_vendored10fast_float9small_mulILt62EEEbRNS0_8stackvecIXT_EEEm.exit ], [ %i.ao, %.critedge ] ; 2 uses
  %.not1.i = icmp eq i16 %.promoted.i, 0
  br i1 %.not1.i, label %.critedge32, label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %.critedge34
  %i.dr = getelementptr i8, ptr %0, i64 -8
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %.lr.ph.i50
  %i.ds = phi i16 [ %.promoted.i, %.lr.ph.i50 ], [ %i.dx, %bb.w ] ; 2 uses
  %i.dt = zext i16 %i.ds to i64
  %i.du = getelementptr [8 x i8], ptr %i.dr, i64 %i.dt
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !72
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %bb.w, label %.critedge32

bb.w:                                             ; preds = %bb.v
  %i.dx = add i16 %i.ds, -1                       ; 3 uses
  store i16 %i.dx, ptr %i.a, align 8, !tbaa !90
  %.not.i51 = icmp eq i16 %i.dx, 0
  br i1 %.not.i51, label %.critedge32, label %bb.v, !llvm.loop !119

.critedge32:                                      ; preds = %bb.w, %bb.v, %bb.g, %.critedge34, %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_extendENS0_4spanImEE.exit
  %.6 = phi i1 [ false, %bb.g ], [ false, %_ZN14arrow_vendored10fast_float8stackvecILt62EE10try_extendENS0_4spanImEE.exit ], [ true, %.critedge34 ], [ true, %bb.v ], [ true, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i1 %.6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i32 } @_ZN14arrow_vendored10fast_float25from_chars_float_advancedIdcEENS0_19from_chars_result_tIT0_EEPKS3_S6_RT_NS0_15parse_options_tIS3_EE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 %3, i64 %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 11 uses
  %5 = alloca %"struct.arrow_vendored::fast_float::parsed_number_string_t", align 8 ; 14 uses
  %i.b = or i64 %3, 128
  %i.c = and i64 %3, 256
  %.not = icmp eq i64 %i.c, 0
  %.not33253 = icmp eq ptr %0, %1
  %or.cond368 = or i1 %.not, %.not33253
  br i1 %or.cond368, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %6 = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.a, %6
  %scevgep = getelementptr i8, ptr %0, i64 %i.d
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.0254 = phi ptr [ %i.j, %bb.b ], [ %0, %.lr.ph.preheader ] ; 3 uses
  %i.e = load i8, ptr %.0254, align 1, !tbaa !29
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr @_ZN14arrow_vendored10fast_float9space_lutIvE5valueE, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !49, !range !50, !noundef !51
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.0254, i64 1 ; 2 uses
  %.not33 = icmp eq ptr %i.j, %1
  br i1 %.not33, label %.critedge, label %.lr.ph, !llvm.loop !120

.critedge:                                        ; preds = %bb.b, %.lr.ph, %bb.a
  %.1 = phi ptr [ %0, %bb.a ], [ %.0254, %.lr.ph ], [ %scevgep, %bb.b ] ; 9 uses
  %i.k = icmp eq ptr %.1, %1
  br i1 %i.k, label %bb.az, label %bb.c

bb.c:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.l = and i64 %3, 32
  %.not34 = icmp eq i64 %i.l, 0
  %.sroa.2.8.extract.trunc.i36 = trunc i64 %4 to i8 ; 5 uses
  %i.m = load i8, ptr %.1, align 1, !tbaa !29, !noalias !51 ; 3 uses
  %i.n = icmp eq i8 %i.m, 45                      ; 2 uses
  %i.o = zext i1 %i.n to i8
  br i1 %.not34, label %bb.aa, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.n, label %bb.e, label %.lr.ph261.preheader

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 3 uses
  %i.q = icmp eq ptr %i.p, %1
  br i1 %i.q, label %_ZN14arrow_vendored10fast_float18report_parse_errorIcEENS0_22parsed_number_string_tIT_EEPKS3_NS0_11parse_errorE.exit65, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i8, ptr %i.p, align 1, !tbaa !29, !noalias !121 ; 2 uses
  %i.s = add i8 %i.r, -48
  %i.t = icmp ult i8 %i.s, 10
  br i1 %i.t, label %.lr.ph261.preheader, label %_ZN14arrow_vendored10fast_float18report_parse_errorIcEENS0_22parsed_number_string_tIT_EEPKS3_NS0_11parse_errorE.exit65

.lr.ph261.preheader:                              ; preds = %bb.f, %bb.d
  %i.u = phi i8 [ %i.r, %bb.f ], [ %i.m, %bb.d ]
  %.0190 = phi ptr [ %i.p, %bb.f ], [ %.1, %bb.d ] ; 9 uses
  %.0190384 = ptrtoint ptr %.0190 to i64          ; 2 uses
  %i.v = sub i64 %i.a, %.0190384
  %scevgep385 = getelementptr i8, ptr %.0190, i64 %i.v
  br label %.lr.ph261

.lr.ph261:                                        ; preds = %.lr.ph261.preheader, %bb.g
  %.0182259 = phi i64 [ %i.ac, %bb.g ], [ 0, %.lr.ph261.preheader ] ; 2 uses
  %.1191258 = phi ptr [ %i.ad, %bb.g ], [ %.0190, %.lr.ph261.preheader ] ; 3 uses
  %i.w = load i8, ptr %.1191258, align 1, !tbaa !29, !noalias !121 ; 2 uses
  %i.x = add i8 %i.w, -48
  %i.y = icmp ult i8 %i.x, 10                     ; 2 uses
  br i1 %i.y, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %.lr.ph261
  %i.z = mul i64 %.0182259, 10
  %i.aa = zext nneg i8 %i.w to i64
  %i.ab = add i64 %i.z, -48
  %i.ac = add i64 %i.ab, %i.aa                    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.1191258, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.ad, %1
  br i1 %.not.i, label %.critedge.i, label %.lr.ph261, !llvm.loop !56

.critedge.i:                                      ; preds = %bb.g, %.lr.ph261
  %.1191.lcssa.ph = phi ptr [ %scevgep385, %bb.g ], [ %.1191258, %.lr.ph261 ] ; 7 uses
  %.0182.lcssa.ph = phi i64 [ %i.ac, %bb.g ], [ %.0182259, %.lr.ph261 ] ; 4 uses
  %i.ae = ptrtoint ptr %.1191.lcssa.ph to i64     ; 2 uses
  %i.af = sub i64 %i.ae, %.0190384                ; 8 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_ZN14arrow_vendored10fast_float18report_parse_errorIcEENS0_22parsed_number_string_tIT_EEPKS3_NS0_11parse_errorE.exit65, label %bb.h

bb.h:                                             ; preds = %.critedge.i
  %i.ah = icmp eq i8 %i.u, 48
  %i.ai = icmp sgt i64 %i.af, 1
  %or.cond.i = and i1 %i.ai, %i.ah
  br i1 %or.cond.i, label %_ZN14arrow_vendored10fast_float18report_parse_errorIcEENS0_22parsed_number_string_tIT_EEPKS3_NS0_11parse_errorE.exit65, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.y, label %.thread210, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = load i8, ptr %.1191.lcssa.ph, align 1, !tbaa !29, !noalias !121
  %i.ak = icmp eq i8 %i.aj, %.sroa.2.8.extract.trunc.i36
  br i1 %i.ak, label %bb.k, label %.thread210

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %.1191.lcssa.ph, i64 1 ; 4 uses
  %i.am = ptrtoint ptr %i.al to i64               ; 4 uses
  %i.an = sub i64 %i.a, %i.am
  %i.ao = icmp sgt i64 %i.an, 7
  br i1 %i.ao, label %.lr.ph271, label %_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit69

.lr.ph271:                                        ; preds = %bb.k, %.noexc68
  %.7189270 = phi i64 [ %i.be, %.noexc68 ], [ %.0182.lcssa.ph, %bb.k ] ; 2 uses
  %.11201269 = phi ptr [ %i.bf, %.noexc68 ], [ %i.al, %bb.k ] ; 4 uses
  %.0.copyload.i72 = load i64, ptr %.11201269, align 1, !noalias !121 ; 2 uses
  %i.ap = add i64 %.0.copyload.i72, 5063812098665367110
  %i.aq = add i64 %.0.copyload.i72, -3472328296227680304 ; 3 uses
  %i.ar = or i64 %i.ap, %i.aq
  %i.as = and i64 %i.ar, -9187201950435737472
  %.not.i70 = icmp eq i64 %i.as, 0
  br i1 %.not.i70, label %.noexc68, label %.lr.ph271._ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit69.loopexit_crit_edge

.lr.ph271._ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit69.loopexit_crit_edge: ; preds = %.lr.ph271
  %.pre = ptrtoint ptr %.11201269 to i64
  br label %_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit69

.noexc68:                                         ; preds = %.lr.ph271
  %i.at = mul i64 %.7189270, 100000000
  %i.au = mul i64 %i.aq, 10
  %i.av = lshr i64 %i.aq, 8
  %i.aw = add i64 %i.au, %i.av                    ; 2 uses
  %i.ax = and i64 %i.aw, 1095216660735
  %i.ay = mul i64 %i.ax, 4294967296000100
  %i.az = lshr i64 %i.aw, 16
  %i.ba = and i64 %i.az, 1095216660735
  %i.bb = mul i64 %i.ba, 42949672960001
  %i.bc = add i64 %i.bb, %i.ay
  %i.bd = lshr i64 %i.bc, 32
  %i.be = add i64 %i.bd, %i.at                    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.11201269, i64 8 ; 3 uses
  %i.bg = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bh = sub i64 %i.a, %i.bg
  %i.bi = icmp sgt i64 %i.bh, 7
  br i1 %i.bi, label %.lr.ph271, label %_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit69, !llvm.loop !57

_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit69: ; preds = %.noexc68, %.lr.ph271._ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit69.loopexit_crit_edge, %bb.k
  %.11201.lcssa386.pre-phi = phi i64 [ %i.am, %bb.k ], [ %.pre, %.lr.ph271._ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit69.loopexit_crit_edge ], [ %i.bg, %.noexc68 ] ; 2 uses
  %.11201.lcssa = phi ptr [ %i.al, %bb.k ], [ %.11201269, %.lr.ph271._ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit69.loopexit_crit_edge ], [ %i.bf, %.noexc68 ] ; 4 uses
  %.7189.lcssa = phi i64 [ %.0182.lcssa.ph, %bb.k ], [ %.7189270, %.lr.ph271._ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit69.loopexit_crit_edge ], [ %i.be, %.noexc68 ] ; 2 uses
  %.not105.i276 = icmp eq ptr %.11201.lcssa, %1
  br i1 %.not105.i276, label %._crit_edge, label %.lr.ph279.preheader

.lr.ph279.preheader:                              ; preds = %_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit69
  %i.bj = sub i64 %i.a, %.11201.lcssa386.pre-phi
  %scevgep387 = getelementptr i8, ptr %.11201.lcssa, i64 %i.bj
  br label %.lr.ph279

.lr.ph279:                                        ; preds = %.lr.ph279.preheader, %bb.l
  %.6188278 = phi i64 [ %i.bq, %bb.l ], [ %.7189.lcssa, %.lr.ph279.preheader ] ; 2 uses
  %.10200277 = phi ptr [ %i.bn, %bb.l ], [ %.11201.lcssa, %.lr.ph279.preheader ] ; 3 uses
  %i.bk = load i8, ptr %.10200277, align 1, !tbaa !29, !noalias !121
  %i.bl = add i8 %i.bk, -48                       ; 2 uses
  %i.bm = icmp ult i8 %i.bl, 10
  br i1 %i.bm, label %bb.l, label %._crit_edge.loopexit

bb.l:                                             ; preds = %.lr.ph279
  %i.bn = getelementptr inbounds nuw i8, ptr %.10200277, i64 1 ; 2 uses
  %i.bo = mul i64 %.6188278, 10
  %i.bp = zext nneg i8 %i.bl to i64
  %i.bq = add i64 %i.bo, %i.bp                    ; 2 uses
  %.not105.i = icmp eq ptr %i.bn, %1
  br i1 %.not105.i, label %._crit_edge.loopexit, label %.lr.ph279, !llvm.loop !58

._crit_edge.loopexit:                             ; preds = %bb.l, %.lr.ph279
  %.10200.lcssa.ph = phi ptr [ %.10200277, %.lr.ph279 ], [ %scevgep387, %bb.l ] ; 2 uses
  %.6188.lcssa.ph = phi i64 [ %.6188278, %.lr.ph279 ], [ %i.bq, %bb.l ]
  %.pre398 = ptrtoint ptr %.10200.lcssa.ph to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit69
  %.pre-phi399 = phi i64 [ %.pre398, %._crit_edge.loopexit ], [ %.11201.lcssa386.pre-phi, %_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit69 ] ; 2 uses
  %.10200.lcssa = phi ptr [ %.10200.lcssa.ph, %._crit_edge.loopexit ], [ %.11201.lcssa, %_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit69 ]
  %.6188.lcssa = phi i64 [ %.6188.lcssa.ph, %._crit_edge.loopexit ], [ %.7189.lcssa, %_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit69 ]
  %i.br = sub i64 %i.am, %.pre-phi399             ; 3 uses
  %i.bs = sub i64 %.pre-phi399, %i.am
  %i.bt = sub nsw i64 %i.af, %i.br
  %i.bu = icmp eq i64 %i.br, 0
  br i1 %i.bu, label %_ZN14arrow_vendored10fast_float18report_parse_errorIcEENS0_22parsed_number_string_tIT_EEPKS3_NS0_11parse_errorE.exit65, label %.thread210

.thread210:                                       ; preds = %bb.i, %bb.j, %._crit_edge
  %.071.i223 = phi i64 [ %i.bt, %._crit_edge ], [ %i.af, %bb.j ], [ %i.af, %bb.i ] ; 2 uses
  %.072.i222 = phi i64 [ %i.br, %._crit_edge ], [ 0, %bb.j ], [ 0, %bb.i ] ; 3 uses
  %.1183221 = phi i64 [ %.6188.lcssa, %._crit_edge ], [ %.0182.lcssa.ph, %bb.j ], [ %.0182.lcssa.ph, %bb.i ] ; 2 uses
  %.sroa.20.0220 = phi i64 [ %i.bs, %._crit_edge ], [ 0, %bb.j ], [ 0, %bb.i ] ; 5 uses
  %.sroa.17.0219 = phi ptr [ %i.al, %._crit_edge ], [ null, %bb.j ], [ null, %bb.i ] ; 7 uses
  %.2192218 = phi ptr [ %.10200.lcssa, %._crit_edge ], [ %.1191.lcssa.ph, %bb.j ], [ %.1191.lcssa.ph, %bb.i ] ; 7 uses
  %i.bv = and i64 %3, 1
  %.not106.i = icmp eq i64 %i.bv, 0
  %.not107.i = icmp eq ptr %.2192218, %1          ; 2 uses
  %or.cond = or i1 %.not106.i, %.not107.i
  br i1 %or.cond, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.thread210
  %i.bw = load i8, ptr %.2192218, align 1, !tbaa !29, !noalias !121 ; 3 uses
  switch i8 %i.bw, label %bb.n [
    i8 101, label %bb.p
    i8 69, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m, %.thread210
  %i.bx = and i64 %3, 64
  %.not108.i = icmp eq i64 %i.bx, 0
  %or.cond238 = or i1 %.not108.i, %.not107.i
  br i1 %or.cond238, label %bb.y, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.by = load i8, ptr %.2192218, align 1, !tbaa !29, !noalias !121 ; 5 uses
  switch i8 %i.by, label %bb.y [
    i8 43, label %bb.p
    i8 45, label %bb.p
    i8 100, label %bb.p
    i8 68, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o, %bb.o, %bb.o, %bb.m, %bb.m
  %i.bz = phi i8 [ %i.by, %bb.o ], [ %i.by, %bb.o ], [ %i.by, %bb.o ], [ %i.by, %bb.o ], [ %i.bw, %bb.m ], [ %i.bw, %bb.m ]
  switch i8 %i.bz, label %bb.r [
    i8 101, label %bb.q
    i8 69, label %bb.q
    i8 100, label %bb.q
    i8 68, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p, %bb.p, %bb.p
  %i.ca = getelementptr inbounds nuw i8, ptr %.2192218, i64 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.3193 = phi ptr [ %.2192218, %bb.p ], [ %i.ca, %bb.q ] ; 5 uses
  %.not112.i = icmp eq ptr %.3193, %1
  br i1 %.not112.i, label %.thread224, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cb = load i8, ptr %.3193, align 1, !tbaa !29, !noalias !121 ; 2 uses
  %i.cc = icmp eq i8 %i.cb, 45
  br i1 %i.cc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cd = getelementptr inbounds nuw i8, ptr %.3193, i64 1
  br label %.thread224

bb.u:                                             ; preds = %bb.s
  %i.ce = icmp eq i8 %i.cb, 43
  %spec.select.idx = zext i1 %i.ce to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %.3193, i64 %spec.select.idx
  br label %.thread224

.thread224:                                       ; preds = %bb.u, %bb.r, %bb.t
  %.4194 = phi ptr [ %i.cd, %bb.t ], [ %.3193, %bb.r ], [ %spec.select, %bb.u ] ; 5 uses
  %.082.i = phi i1 [ true, %bb.t ], [ false, %bb.r ], [ false, %bb.u ]
  %.4194388 = ptrtoint ptr %.4194 to i64
  %i.cf = icmp eq ptr %.4194, %1
  br i1 %i.cf, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.thread224
  %i.cg = load i8, ptr %.4194, align 1, !tbaa !29, !noalias !121
  %i.ch = add i8 %i.cg, -48
  %i.ci = icmp ult i8 %i.ch, 10
  br i1 %i.ci, label %.lr.ph288.preheader, label %bb.w

.lr.ph288.preheader:                              ; preds = %bb.v
  %i.cj = sub i64 %i.a, %.4194388
  %scevgep389 = getelementptr i8, ptr %.4194, i64 %i.cj
  br label %.lr.ph288

bb.w:                                             ; preds = %bb.v, %.thread224
  %i.ck = and i64 %3, 4
  %.not115.i = icmp eq i64 %i.ck, 0
  br i1 %.not115.i, label %_ZN14arrow_vendored10fast_float18report_parse_errorIcEENS0_22parsed_number_string_tIT_EEPKS3_NS0_11parse_errorE.exit65, label %.thread226

.lr.ph288:                                        ; preds = %.lr.ph288.preheader, %bb.x
  %.076.i287 = phi i64 [ %.177.i, %bb.x ], [ 0, %.lr.ph288.preheader ] ; 4 uses
  %.9199286 = phi ptr [ %i.cs, %bb.x ], [ %.4194, %.lr.ph288.preheader ] ; 3 uses
  %i.cl = load i8, ptr %.9199286, align 1, !tbaa !29, !noalias !121
  %i.cm = add i8 %i.cl, -48                       ; 2 uses
  %i.cn = icmp ult i8 %i.cm, 10
  br i1 %i.cn, label %bb.x, label %.critedge7.i

bb.x:                                             ; preds = %.lr.ph288
  %i.co = icmp slt i64 %.076.i287, 268435456
  %i.cp = mul nsw i64 %.076.i287, 10
  %i.cq = zext nneg i8 %i.cm to i64
  %i.cr = add nsw i64 %i.cp, %i.cq
  %.177.i = select i1 %i.co, i64 %i.cr, i64 %.076.i287 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.9199286, i64 1 ; 2 uses
  %.not114.i = icmp eq ptr %i.cs, %1
  br i1 %.not114.i, label %.critedge7.i, label %.lr.ph288, !llvm.loop !59

.critedge7.i:                                     ; preds = %bb.x, %.lr.ph288
  %.9199.lcssa.ph = phi ptr [ %scevgep389, %bb.x ], [ %.9199286, %.lr.ph288 ]
  %.076.i.lcssa.ph = phi i64 [ %.177.i, %bb.x ], [ %.076.i287, %.lr.ph288 ] ; 2 uses
  %i.ct = sub nsw i64 0, %.076.i.lcssa.ph
  %spec.select.i = select i1 %.082.i, i64 %i.ct, i64 %.076.i.lcssa.ph ; 2 uses
  %i.cu = add nsw i64 %spec.select.i, %.072.i222
  br label %.thread226

bb.y:                                             ; preds = %bb.o, %bb.n
  %i.cv = and i64 %3, 5
  %or.cond239.not.not = icmp eq i64 %i.cv, 1
  br i1 %or.cond239.not.not, label %_ZN14arrow_vendored10fast_float18report_parse_errorIcEENS0_22parsed_number_string_tIT_EEPKS3_NS0_11parse_errorE.exit65, label %.thread226

.thread226:                                       ; preds = %bb.w, %.critedge7.i, %bb.y
  %.6196 = phi ptr [ %.2192218, %bb.y ], [ %.9199.lcssa.ph, %.critedge7.i ], [ %.2192218, %bb.w ] ; 3 uses
  %.581.i = phi i64 [ 0, %bb.y ], [ %spec.select.i, %.critedge7.i ], [ 0, %bb.w ]
  %.3.i = phi i64 [ %.072.i222, %bb.y ], [ %i.cu, %.critedge7.i ], [ %.072.i222, %bb.w ] ; 2 uses
  %i.cw = icmp sgt i64 %.071.i223, 19
  br i1 %i.cw, label %.lr.ph297, label %_ZN14arrow_vendored10fast_float19parse_number_stringILb1EcEENS0_22parsed_number_string_tIT0_EEPKS3_S6_NS0_15parse_options_tIS3_EE.exit

.lr.ph297:                                        ; preds = %.thread226, %.critedge11.i
  %.1.i296 = phi i64 [ %spec.select118.i, %.critedge11.i ], [ %.071.i223, %.thread226 ] ; 2 uses
  %.075.i295 = phi ptr [ %i.db, %.critedge11.i ], [ %.0190, %.thread226 ] ; 2 uses
  %i.cx = load i8, ptr %.075.i295, align 1, !tbaa !29 ; 2 uses
  %i.cy = icmp eq i8 %i.cx, 48                    ; 2 uses
  %i.cz = icmp eq i8 %i.cx, %.sroa.2.8.extract.trunc.i36
  %or.cond117.i = select i1 %i.cy, i1 true, i1 %i.cz
  br i1 %or.cond117.i, label %.critedge11.i, label %.critedge9.i

.critedge11.i:                                    ; preds = %.lr.ph297
  %i.da = sext i1 %i.cy to i64
  %spec.select118.i = add nsw i64 %.1.i296, %i.da ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.075.i295, i64 1 ; 2 uses
  %.not116.i = icmp eq ptr %i.db, %1
  br i1 %.not116.i, label %.critedge9.i, label %.lr.ph297, !llvm.loop !60

.critedge9.i:                                     ; preds = %.critedge11.i, %.lr.ph297
  %.1.i.lcssa.ph = phi i64 [ %spec.select118.i, %.critedge11.i ], [ %.1.i296, %.lr.ph297 ]
  %i.dc = icmp sgt i64 %.1.i.lcssa.ph, 19
  br i1 %i.dc, label %.preheader247, label %_ZN14arrow_vendored10fast_float19parse_number_stringILb1EcEENS0_22parsed_number_string_tIT0_EEPKS3_S6_NS0_15parse_options_tIS3_EE.exit

.preheader247:                                    ; preds = %.critedge9.i
  %.not369 = icmp eq ptr %.0190, %.1191.lcssa.ph
  br i1 %.not369, label %._crit_edge304.thread, label %.lr.ph303

.lr.ph303:                                        ; preds = %.preheader247, %.lr.ph303
  %.3185302 = phi i64 [ %i.dh, %.lr.ph303 ], [ 0, %.preheader247 ]
  %.7197301 = phi ptr [ %i.di, %.lr.ph303 ], [ %.0190, %.preheader247 ] ; 2 uses
  %i.dd = mul nuw i64 %.3185302, 10
  %i.de = load i8, ptr %.7197301, align 1, !tbaa !29
  %i.df = sext i8 %i.de to i64
  %i.dg = add i64 %i.dd, -48
  %i.dh = add i64 %i.dg, %i.df                    ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.7197301, i64 1 ; 3 uses
  %i.dj = icmp ult i64 %i.dh, 1000000000000000000
  %i.dk = icmp ne ptr %i.di, %.1191.lcssa.ph
  %i.dl = select i1 %i.dj, i1 %i.dk, i1 false
  br i1 %i.dl, label %.lr.ph303, label %._crit_edge304, !llvm.loop !61

._crit_edge304:                                   ; preds = %.lr.ph303
  %i.dm = icmp ugt i64 %i.dh, 999999999999999999
  br i1 %i.dm, label %bb.z, label %._crit_edge304.thread

._crit_edge304.thread:                            ; preds = %.preheader247, %._crit_edge304
  %.3185.lcssa426 = phi i64 [ %i.dh, %._crit_edge304 ], [ 0, %.preheader247 ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.17.0219, i64 %.sroa.20.0220
  %.not370 = icmp samesign eq i64 %.sroa.20.0220, 0
  br i1 %.not370, label %._crit_edge311, label %.lr.ph310

.lr.ph310:                                        ; preds = %._crit_edge304.thread, %.lr.ph310
  %.4186308 = phi i64 [ %i.ds, %.lr.ph310 ], [ %.3185.lcssa426, %._crit_edge304.thread ]
  %.8198307 = phi ptr [ %i.dt, %.lr.ph310 ], [ %.sroa.17.0219, %._crit_edge304.thread ] ; 2 uses
  %i.do = mul nuw i64 %.4186308, 10
  %i.dp = load i8, ptr %.8198307, align 1, !tbaa !29
  %i.dq = sext i8 %i.dp to i64
  %i.dr = add i64 %i.do, -48
  %i.ds = add i64 %i.dr, %i.dq                    ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.8198307, i64 1 ; 3 uses
  %i.du = icmp ult i64 %i.ds, 1000000000000000000
  %i.dv = icmp ne ptr %i.dt, %i.dn
  %i.dw = select i1 %i.du, i1 %i.dv, i1 false
  br i1 %i.dw, label %.lr.ph310, label %._crit_edge311, !llvm.loop !62

._crit_edge311:                                   ; preds = %.lr.ph310, %._crit_edge304.thread
  %.8198.lcssa = phi ptr [ %.sroa.17.0219, %._crit_edge304.thread ], [ %i.dt, %.lr.ph310 ]
  %.4186.lcssa = phi i64 [ %.3185.lcssa426, %._crit_edge304.thread ], [ %i.ds, %.lr.ph310 ]
  %i.dx = ptrtoint ptr %.sroa.17.0219 to i64
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge304, %._crit_edge311
  %.8198.lcssa.sink = phi ptr [ %.8198.lcssa, %._crit_edge311 ], [ %i.di, %._crit_edge304 ]
  %.sink = phi i64 [ %i.dx, %._crit_edge311 ], [ %i.ae, %._crit_edge304 ]
  %.5187 = phi i64 [ %.4186.lcssa, %._crit_edge311 ], [ %i.dh, %._crit_edge304 ]
  %i.dy = ptrtoint ptr %.8198.lcssa.sink to i64
  %i.dz = sub i64 %.sink, %i.dy
  %.4.i = add nsw i64 %i.dz, %.581.i
  br label %_ZN14arrow_vendored10fast_float19parse_number_stringILb1EcEENS0_22parsed_number_string_tIT0_EEPKS3_S6_NS0_15parse_options_tIS3_EE.exit

bb.aa:                                            ; preds = %bb.c
  switch i8 %i.m, label %.lr.ph318.preheader [
    i8 45, label %bb.ab
    i8 43, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  %i.ea = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 3 uses
  %i.eb = icmp eq ptr %i.ea, %1
  br i1 %i.eb, label %_ZN14arrow_vendored10fast_float18report_parse_errorIcEENS0_22parsed_number_string_tIT_EEPKS3_NS0_11parse_errorE.exit65, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ec = load i8, ptr %i.ea, align 1, !tbaa !29, !noalias !124 ; 2 uses
  %i.ed = add i8 %i.ec, -48
  %i.ee = icmp ult i8 %i.ed, 10
  %.not96.i = icmp eq i8 %i.ec, %.sroa.2.8.extract.trunc.i36
  %or.cond241 = select i1 %i.ee, i1 true, i1 %.not96.i
  br i1 %or.cond241, label %.lr.ph318.preheader, label %_ZN14arrow_vendored10fast_float18report_parse_errorIcEENS0_22parsed_number_string_tIT_EEPKS3_NS0_11parse_errorE.exit65

.lr.ph318.preheader:                              ; preds = %bb.ac, %bb.aa
  %.0180 = phi ptr [ %i.ea, %bb.ac ], [ %.1, %bb.aa ] ; 9 uses
  %.0180390 = ptrtoint ptr %.0180 to i64          ; 3 uses
  %i.ef = sub i64 %i.a, %.0180390
  %scevgep391 = getelementptr i8, ptr %.0180, i64 %i.ef
  br label %.lr.ph318

.critedge.i38.thread:                             ; preds = %bb.ad
  %i.eg = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.eh = sub i64 %i.eg, %.0180390                ; 2 uses
  br label %.critedge112.i

.lr.ph318:                                        ; preds = %.lr.ph318.preheader, %bb.ad
  %.1181316 = phi ptr [ %i.ep, %bb.ad ], [ %.0180, %.lr.ph318.preheader ] ; 5 uses
  %.0202315 = phi i64 [ %i.eo, %bb.ad ], [ 0, %.lr.ph318.preheader ] ; 4 uses
  %i.ei = load i8, ptr %.1181316, align 1, !tbaa !29, !noalias !124 ; 3 uses
  %i.ej = add i8 %i.ei, -48
  %i.ek = icmp ult i8 %i.ej, 10
  br i1 %i.ek, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph318
  %i.el = mul i64 %.0202315, 10
  %i.em = zext nneg i8 %i.ei to i64
  %i.en = add i64 %i.el, -48
  %i.eo = add i64 %i.en, %i.em                    ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.1181316, i64 1 ; 2 uses
  %.not97.i = icmp eq ptr %i.ep, %1
  br i1 %.not97.i, label %.critedge.i38.thread, label %.lr.ph318, !llvm.loop !66

bb.ae:                                            ; preds = %.lr.ph318
  %i.eq = ptrtoint ptr %.1181316 to i64           ; 3 uses
  %i.er = sub i64 %i.eq, %.0180390                ; 4 uses
  %i.es = icmp eq i8 %i.ei, %.sroa.2.8.extract.trunc.i36
  br i1 %i.es, label %bb.af, label %.critedge112.i

bb.af:                                            ; preds = %bb.ae
  %i.et = getelementptr inbounds nuw i8, ptr %.1181316, i64 1 ; 4 uses
  %i.eu = ptrtoint ptr %i.et to i64               ; 4 uses
  %i.ev = sub i64 %i.a, %i.eu
  %i.ew = icmp sgt i64 %i.ev, 7
  br i1 %i.ew, label %.lr.ph324, label %_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit

.lr.ph324:                                        ; preds = %bb.af, %.noexc
  %.11322 = phi ptr [ %i.fn, %.noexc ], [ %i.et, %bb.af ] ; 4 uses
  %.7209321 = phi i64 [ %i.fm, %.noexc ], [ %.0202315, %bb.af ] ; 2 uses
  %.0.copyload.i74 = load i64, ptr %.11322, align 1, !noalias !124 ; 2 uses
  %i.ex = add i64 %.0.copyload.i74, 5063812098665367110
  %i.ey = add i64 %.0.copyload.i74, -3472328296227680304 ; 3 uses
  %i.ez = or i64 %i.ex, %i.ey
  %i.fa = and i64 %i.ez, -9187201950435737472
  %.not.i71 = icmp eq i64 %i.fa, 0
  br i1 %.not.i71, label %.noexc, label %.lr.ph324._ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit.loopexit_crit_edge

.lr.ph324._ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit.loopexit_crit_edge: ; preds = %.lr.ph324
  %.pre400 = ptrtoint ptr %.11322 to i64
  br label %_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit

.noexc:                                           ; preds = %.lr.ph324
  %i.fb = mul i64 %.7209321, 100000000
  %i.fc = mul i64 %i.ey, 10
  %i.fd = lshr i64 %i.ey, 8
  %i.fe = add i64 %i.fc, %i.fd                    ; 2 uses
  %i.ff = and i64 %i.fe, 1095216660735
  %i.fg = mul i64 %i.ff, 4294967296000100
  %i.fh = lshr i64 %i.fe, 16
  %i.fi = and i64 %i.fh, 1095216660735
  %i.fj = mul i64 %i.fi, 42949672960001
  %i.fk = add i64 %i.fj, %i.fg
  %i.fl = lshr i64 %i.fk, 32
  %i.fm = add i64 %i.fl, %i.fb                    ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.11322, i64 8 ; 3 uses
  %i.fo = ptrtoint ptr %i.fn to i64               ; 2 uses
  %i.fp = sub i64 %i.a, %i.fo
  %i.fq = icmp sgt i64 %i.fp, 7
  br i1 %i.fq, label %.lr.ph324, label %_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit, !llvm.loop !57

_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit: ; preds = %.noexc, %.lr.ph324._ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit.loopexit_crit_edge, %bb.af
  %.11.lcssa392.pre-phi = phi i64 [ %i.eu, %bb.af ], [ %.pre400, %.lr.ph324._ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit.loopexit_crit_edge ], [ %i.fo, %.noexc ] ; 2 uses
  %.7209.lcssa = phi i64 [ %.0202315, %bb.af ], [ %.7209321, %.lr.ph324._ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit.loopexit_crit_edge ], [ %i.fm, %.noexc ] ; 2 uses
  %.11.lcssa = phi ptr [ %i.et, %bb.af ], [ %.11322, %.lr.ph324._ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit.loopexit_crit_edge ], [ %i.fn, %.noexc ] ; 4 uses
  %.not99.i329 = icmp eq ptr %.11.lcssa, %1
  br i1 %.not99.i329, label %.critedge2.i, label %.lr.ph332.preheader

.lr.ph332.preheader:                              ; preds = %_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit
  %i.fr = sub i64 %i.a, %.11.lcssa392.pre-phi
  %scevgep393 = getelementptr i8, ptr %.11.lcssa, i64 %i.fr
  br label %.lr.ph332

.lr.ph332:                                        ; preds = %.lr.ph332.preheader, %bb.ag
  %.10331 = phi ptr [ %i.fv, %bb.ag ], [ %.11.lcssa, %.lr.ph332.preheader ] ; 3 uses
  %.6208330 = phi i64 [ %i.fy, %bb.ag ], [ %.7209.lcssa, %.lr.ph332.preheader ] ; 2 uses
  %i.fs = load i8, ptr %.10331, align 1, !tbaa !29, !noalias !124
  %i.ft = add i8 %i.fs, -48                       ; 2 uses
  %i.fu = icmp ult i8 %i.ft, 10
  br i1 %i.fu, label %bb.ag, label %.critedge2.i.loopexit

bb.ag:                                            ; preds = %.lr.ph332
  %i.fv = getelementptr inbounds nuw i8, ptr %.10331, i64 1 ; 2 uses
  %i.fw = mul i64 %.6208330, 10
  %i.fx = zext nneg i8 %i.ft to i64
  %i.fy = add i64 %i.fw, %i.fx                    ; 2 uses
  %.not99.i = icmp eq ptr %i.fv, %1
  br i1 %.not99.i, label %.critedge2.i.loopexit, label %.lr.ph332, !llvm.loop !67

.critedge2.i.loopexit:                            ; preds = %.lr.ph332, %bb.ag
  %.6208.lcssa.ph = phi i64 [ %i.fy, %bb.ag ], [ %.6208330, %.lr.ph332 ]
  %.10.lcssa.ph = phi ptr [ %scevgep393, %bb.ag ], [ %.10331, %.lr.ph332 ] ; 2 uses
  %.pre396 = ptrtoint ptr %.10.lcssa.ph to i64
  br label %.critedge2.i

.critedge2.i:                                     ; preds = %.critedge2.i.loopexit, %_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit
  %.pre-phi = phi i64 [ %.pre396, %.critedge2.i.loopexit ], [ %.11.lcssa392.pre-phi, %_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit ] ; 2 uses
  %.6208.lcssa = phi i64 [ %.6208.lcssa.ph, %.critedge2.i.loopexit ], [ %.7209.lcssa, %_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit ]
  %.10.lcssa = phi ptr [ %.10.lcssa.ph, %.critedge2.i.loopexit ], [ %.11.lcssa, %_ZN14arrow_vendored10fast_float26loop_parse_if_eight_digitsERPKcS2_Rm.exit ]
  %i.fz = sub i64 %i.eu, %.pre-phi                ; 2 uses
  %i.ga = sub i64 %.pre-phi, %i.eu
  %i.gb = sub nsw i64 %i.er, %i.fz
  br label %.critedge112.i

.critedge112.i:                                   ; preds = %.critedge.i38.thread, %.critedge2.i, %bb.ae
  %i.gc = phi i64 [ %i.eh, %.critedge.i38.thread ], [ %i.er, %.critedge2.i ], [ %i.er, %bb.ae ] ; 5 uses
  %i.gd = phi i64 [ %i.eg, %.critedge.i38.thread ], [ %i.eq, %.critedge2.i ], [ %i.eq, %bb.ae ]
  %.sroa.17139.0 = phi ptr [ null, %.critedge.i38.thread ], [ %i.et, %.critedge2.i ], [ null, %bb.ae ] ; 7 uses
  %.sroa.20141.0 = phi i64 [ 0, %.critedge.i38.thread ], [ %i.ga, %.critedge2.i ], [ 0, %bb.ae ] ; 5 uses
  %.1203 = phi i64 [ %i.eo, %.critedge.i38.thread ], [ %.6208.lcssa, %.critedge2.i ], [ %.0202315, %bb.ae ] ; 2 uses
  %.2 = phi ptr [ %scevgep391, %.critedge.i38.thread ], [ %.10.lcssa, %.critedge2.i ], [ %.1181316, %bb.ae ] ; 7 uses
  %.065.i = phi i64 [ 0, %.critedge.i38.thread ], [ %i.fz, %.critedge2.i ], [ 0, %bb.ae ] ; 3 uses
  %.064.i = phi i64 [ %i.eh, %.critedge.i38.thread ], [ %i.gb, %.critedge2.i ], [ %i.er, %bb.ae ] ; 3 uses
  %i.ge = icmp eq i64 %.064.i, 0
  br i1 %i.ge, label %_ZN14arrow_vendored10fast_float18report_parse_errorIcEENS0_22parsed_number_string_tIT_EEPKS3_NS0_11parse_errorE.exit65, label %bb.ah

bb.ah:                                            ; preds = %.critedge112.i
  %i.gf = and i64 %3, 1
  %.not100.i = icmp eq i64 %i.gf, 0
  %.not101.i = icmp eq ptr %.2, %1                ; 2 uses
  %or.cond242 = or i1 %.not100.i, %.not101.i
  br i1 %or.cond242, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gg = load i8, ptr %.2, align 1, !tbaa !29, !noalias !124 ; 3 uses
  switch i8 %i.gg, label %bb.aj [
    i8 101, label %bb.al
    i8 69, label %bb.al
  ]

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.gh = and i64 %3, 64
  %.not102.i = icmp eq i64 %i.gh, 0
  %or.cond243 = or i1 %.not102.i, %.not101.i
  br i1 %or.cond243, label %bb.au, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gi = load i8, ptr %.2, align 1, !tbaa !29, !noalias !124 ; 5 uses
  switch i8 %i.gi, label %bb.au [
    i8 43, label %bb.al
    i8 45, label %bb.al
    i8 100, label %bb.al
    i8 68, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak, %bb.ak, %bb.ak, %bb.ak, %bb.ai, %bb.ai
  %i.gj = phi i8 [ %i.gi, %bb.ak ], [ %i.gi, %bb.ak ], [ %i.gi, %bb.ak ], [ %i.gi, %bb.ak ], [ %i.gg, %bb.ai ], [ %i.gg, %bb.ai ]
  switch i8 %i.gj, label %bb.an [
    i8 101, label %bb.am
    i8 69, label %bb.am
    i8 100, label %bb.am
    i8 68, label %bb.am
  ]

bb.am:                                            ; preds = %bb.al, %bb.al, %bb.al, %bb.al
  %i.gk = getelementptr inbounds nuw i8, ptr %.2, i64 1
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.3 = phi ptr [ %.2, %bb.al ], [ %i.gk, %bb.am ] ; 5 uses
  %.not106.i39 = icmp eq ptr %.3, %1
  br i1 %.not106.i39, label %.thread231, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gl = load i8, ptr %.3, align 1, !tbaa !29, !noalias !124 ; 2 uses
  %i.gm = icmp eq i8 %i.gl, 45
  br i1 %i.gm, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gn = getelementptr inbounds nuw i8, ptr %.3, i64 1
  br label %.thread231

bb.aq:                                            ; preds = %bb.ao
  %i.go = icmp eq i8 %i.gl, 43
  %spec.select244.idx = zext i1 %i.go to i64
  %spec.select244 = getelementptr inbounds nuw i8, ptr %.3, i64 %spec.select244.idx
  br label %.thread231

.thread231:                                       ; preds = %bb.aq, %bb.an, %bb.ap
  %.4 = phi ptr [ %i.gn, %bb.ap ], [ %.3, %bb.an ], [ %spec.select244, %bb.aq ] ; 5 uses
  %.075.i41 = phi i1 [ true, %bb.ap ], [ false, %bb.an ], [ false, %bb.aq ]
  %.4394 = ptrtoint ptr %.4 to i64
  %i.gp = icmp eq ptr %.4, %1
  br i1 %i.gp, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.thread231
  %i.gq = load i8, ptr %.4, align 1, !tbaa !29, !noalias !124
  %i.gr = add i8 %i.gq, -48
  %i.gs = icmp ult i8 %i.gr, 10
  br i1 %i.gs, label %.lr.ph341.preheader, label %bb.as

.lr.ph341.preheader:                              ; preds = %bb.ar
  %i.gt = sub i64 %i.a, %.4394
  %scevgep395 = getelementptr i8, ptr %.4, i64 %i.gt
  br label %.lr.ph341

bb.as:                                            ; preds = %bb.ar, %.thread231
  %i.gu = and i64 %3, 4
  %.not109.i42 = icmp eq i64 %i.gu, 0
  br i1 %.not109.i42, label %_ZN14arrow_vendored10fast_float18report_parse_errorIcEENS0_22parsed_number_string_tIT_EEPKS3_NS0_11parse_errorE.exit65, label %.thread233

.lr.ph341:                                        ; preds = %.lr.ph341.preheader, %bb.at
  %.069.i340 = phi i64 [ %.170.i, %bb.at ], [ 0, %.lr.ph341.preheader ] ; 4 uses
  %.9339 = phi ptr [ %i.hc, %bb.at ], [ %.4, %.lr.ph341.preheader ] ; 3 uses
  %i.gv = load i8, ptr %.9339, align 1, !tbaa !29, !noalias !124
  %i.gw = add i8 %i.gv, -48                       ; 2 uses
  %i.gx = icmp ult i8 %i.gw, 10
  br i1 %i.gx, label %bb.at, label %.critedge4.i

bb.at:                                            ; preds = %.lr.ph341
  %i.gy = icmp slt i64 %.069.i340, 268435456
  %i.gz = mul nsw i64 %.069.i340, 10
  %i.ha = zext nneg i8 %i.gw to i64
  %i.hb = add nsw i64 %i.gz, %i.ha
  %.170.i = select i1 %i.gy, i64 %i.hb, i64 %.069.i340 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.9339, i64 1 ; 2 uses
  %.not108.i51 = icmp eq ptr %i.hc, %1
  br i1 %.not108.i51, label %.critedge4.i, label %.lr.ph341, !llvm.loop !68

.critedge4.i:                                     ; preds = %bb.at, %.lr.ph341
  %.9.lcssa.ph = phi ptr [ %scevgep395, %bb.at ], [ %.9339, %.lr.ph341 ]
  %.069.i.lcssa.ph = phi i64 [ %.170.i, %bb.at ], [ %.069.i340, %.lr.ph341 ] ; 2 uses
  %i.hd = sub nsw i64 0, %.069.i.lcssa.ph
  %spec.select.i52 = select i1 %.075.i41, i64 %i.hd, i64 %.069.i.lcssa.ph ; 2 uses
  %i.he = add nsw i64 %spec.select.i52, %.065.i
  br label %.thread233

bb.au:                                            ; preds = %bb.ak, %bb.aj
  %i.hf = and i64 %3, 5
  %or.cond245.not.not = icmp eq i64 %i.hf, 1
  br i1 %or.cond245.not.not, label %_ZN14arrow_vendored10fast_float18report_parse_errorIcEENS0_22parsed_number_string_tIT_EEPKS3_NS0_11parse_errorE.exit65, label %.thread233

.thread233:                                       ; preds = %bb.as, %.critedge4.i, %bb.au
  %.6 = phi ptr [ %.2, %bb.au ], [ %.9.lcssa.ph, %.critedge4.i ], [ %.2, %bb.as ] ; 3 uses
  %.574.i = phi i64 [ 0, %bb.au ], [ %spec.select.i52, %.critedge4.i ], [ 0, %bb.as ]
  %.3.i44 = phi i64 [ %.065.i, %bb.au ], [ %i.he, %.critedge4.i ], [ %.065.i, %bb.as ] ; 2 uses
  %i.hg = icmp sgt i64 %.064.i, 19
  br i1 %i.hg, label %.lr.ph350, label %_ZN14arrow_vendored10fast_float19parse_number_stringILb1EcEENS0_22parsed_number_string_tIT0_EEPKS3_S6_NS0_15parse_options_tIS3_EE.exit

.lr.ph350:                                        ; preds = %.thread233, %.critedge8.i
  %.1.i46349 = phi i64 [ %spec.select113.i, %.critedge8.i ], [ %.064.i, %.thread233 ] ; 2 uses
  %.068.i348 = phi ptr [ %i.hl, %.critedge8.i ], [ %.0180, %.thread233 ] ; 2 uses
  %i.hh = load i8, ptr %.068.i348, align 1, !tbaa !29 ; 2 uses
  %i.hi = icmp eq i8 %i.hh, 48                    ; 2 uses
  %i.hj = icmp eq i8 %i.hh, %.sroa.2.8.extract.trunc.i36
  %or.cond.i48 = select i1 %i.hi, i1 true, i1 %i.hj
  br i1 %or.cond.i48, label %.critedge8.i, label %.critedge6.i

.critedge8.i:                                     ; preds = %.lr.ph350
  %i.hk = sext i1 %i.hi to i64
  %spec.select113.i = add nsw i64 %.1.i46349, %i.hk ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.068.i348, i64 1 ; 2 uses
  %.not110.i47 = icmp eq ptr %i.hl, %1
  br i1 %.not110.i47, label %.critedge6.i, label %.lr.ph350, !llvm.loop !69

.critedge6.i:                                     ; preds = %.critedge8.i, %.lr.ph350
  %.1.i46.lcssa.ph = phi i64 [ %spec.select113.i, %.critedge8.i ], [ %.1.i46349, %.lr.ph350 ]
  %i.hm = icmp sgt i64 %.1.i46.lcssa.ph, 19
  br i1 %i.hm, label %bb.av, label %_ZN14arrow_vendored10fast_float19parse_number_stringILb1EcEENS0_22parsed_number_string_tIT0_EEPKS3_S6_NS0_15parse_options_tIS3_EE.exit

bb.av:                                            ; preds = %.critedge6.i
  %i.hn = getelementptr inbounds nuw i8, ptr %.0180, i64 %i.gc
  %.not371 = icmp samesign eq i64 %i.gc, 0
  br i1 %.not371, label %._crit_edge358.thread, label %.lr.ph357

.lr.ph357:                                        ; preds = %bb.av, %.lr.ph357
  %.7355 = phi ptr [ %i.ht, %.lr.ph357 ], [ %.0180, %bb.av ] ; 2 uses
  %.3205354 = phi i64 [ %i.hs, %.lr.ph357 ], [ 0, %bb.av ]
  %i.ho = mul nuw i64 %.3205354, 10
  %i.hp = load i8, ptr %.7355, align 1, !tbaa !29
  %i.hq = sext i8 %i.hp to i64
  %i.hr = add i64 %i.ho, -48
  %i.hs = add i64 %i.hr, %i.hq                    ; 5 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.7355, i64 1 ; 3 uses
  %i.hu = icmp ult i64 %i.hs, 1000000000000000000
  %i.hv = icmp ne ptr %i.ht, %i.hn
  %i.hw = select i1 %i.hu, i1 %i.hv, i1 false
  br i1 %i.hw, label %.lr.ph357, label %._crit_edge358, !llvm.loop !70

._crit_edge358:                                   ; preds = %.lr.ph357
  %i.hx = icmp ugt i64 %i.hs, 999999999999999999
  br i1 %i.hx, label %bb.aw, label %._crit_edge358.thread

._crit_edge358.thread:                            ; preds = %bb.av, %._crit_edge358
  %.3205.lcssa429 = phi i64 [ %i.hs, %._crit_edge358 ], [ 0, %bb.av ] ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.17139.0, i64 %.sroa.20141.0
  %.not372 = icmp samesign eq i64 %.sroa.20141.0, 0
  br i1 %.not372, label %._crit_edge365, label %.lr.ph364

.lr.ph364:                                        ; preds = %._crit_edge358.thread, %.lr.ph364
  %.8362 = phi ptr [ %i.ie, %.lr.ph364 ], [ %.sroa.17139.0, %._crit_edge358.thread ] ; 2 uses
  %.4206361 = phi i64 [ %i.id, %.lr.ph364 ], [ %.3205.lcssa429, %._crit_edge358.thread ]
  %i.hz = mul nuw i64 %.4206361, 10
  %i.ia = load i8, ptr %.8362, align 1, !tbaa !29
  %i.ib = sext i8 %i.ia to i64
  %i.ic = add i64 %i.hz, -48
  %i.id = add i64 %i.ic, %i.ib                    ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.8362, i64 1 ; 3 uses
  %i.if = icmp ult i64 %i.id, 1000000000000000000
  %i.ig = icmp ne ptr %i.ie, %i.hy
  %i.ih = select i1 %i.if, i1 %i.ig, i1 false
  br i1 %i.ih, label %.lr.ph364, label %._crit_edge365, !llvm.loop !71

._crit_edge365:                                   ; preds = %.lr.ph364, %._crit_edge358.thread
  %.4206.lcssa = phi i64 [ %.3205.lcssa429, %._crit_edge358.thread ], [ %i.id, %.lr.ph364 ]
  %.8.lcssa = phi ptr [ %.sroa.17139.0, %._crit_edge358.thread ], [ %i.ie, %.lr.ph364 ]
  %i.ii = ptrtoint ptr %.sroa.17139.0 to i64
  br label %bb.aw

bb.aw:                                            ; preds = %._crit_edge358, %._crit_edge365
  %.8.lcssa.sink = phi ptr [ %.8.lcssa, %._crit_edge365 ], [ %i.ht, %._crit_edge358 ]
  %.sink454 = phi i64 [ %i.ii, %._crit_edge365 ], [ %i.gd, %._crit_edge358 ]
  %.5207 = phi i64 [ %.4206.lcssa, %._crit_edge365 ], [ %i.hs, %._crit_edge358 ]
  %i.ij = ptrtoint ptr %.8.lcssa.sink to i64
  %i.ik = sub i64 %.sink454, %i.ij
  %.4.i50 = add nsw i64 %i.ik, %.574.i
  br label %_ZN14arrow_vendored10fast_float19parse_number_stringILb1EcEENS0_22parsed_number_string_tIT0_EEPKS3_S6_NS0_15parse_options_tIS3_EE.exit

_ZN14arrow_vendored10fast_float18report_parse_errorIcEENS0_22parsed_number_string_tIT_EEPKS3_NS0_11parse_errorE.exit65: ; preds = %bb.au, %bb.as, %.critedge112.i, %bb.ac, %bb.ab, %bb.y, %bb.w, %._crit_edge, %bb.h, %.critedge.i, %bb.f, %bb.e
  %i.il = and i64 %3, 16
  %.not35 = icmp eq i64 %i.il, 0
  br i1 %.not35, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %_ZN14arrow_vendored10fast_float18report_parse_errorIcEENS0_22parsed_number_string_tIT_EEPKS3_NS0_11parse_errorE.exit65
  %i.im = tail call { ptr, i32 } @_ZN14arrow_vendored10fast_float6detail12parse_infnanIdcEENS0_19from_chars_result_tIT0_EEPKS4_S7_RT_NS0_12chars_formatE(ptr noundef nonnull %.1, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.b) #19 ; 2 uses
  %i.in = extractvalue { ptr, i32 } %i.im, 0
  %i.io = extractvalue { ptr, i32 } %i.im, 1
  br label %bb.ay

_ZN14arrow_vendored10fast_float19parse_number_stringILb1EcEENS0_22parsed_number_string_tIT0_EEPKS3_S6_NS0_15parse_options_tIS3_EE.exit: ; preds = %.thread233, %.critedge6.i, %bb.aw, %.thread226, %.critedge9.i, %bb.z
  %.6.i.sink = phi i64 [ %.3.i, %.thread226 ], [ %.4.i, %bb.z ], [ %.3.i, %.critedge9.i ], [ %.4.i50, %bb.aw ], [ %.3.i44, %.critedge6.i ], [ %.3.i44, %.thread233 ]
  %.2184.sink = phi i64 [ %.1183221, %.thread226 ], [ %.5187, %bb.z ], [ %.1183221, %.critedge9.i ], [ %.5207, %bb.aw ], [ %.1203, %.critedge6.i ], [ %.1203, %.thread233 ]
  %.6196.sink = phi ptr [ %.6196, %.thread226 ], [ %.6196, %bb.z ], [ %.6196, %.critedge9.i ], [ %.6, %bb.aw ], [ %.6, %.critedge6.i ], [ %.6, %.thread233 ]
  %.sroa.10.0.sink = phi i8 [ 0, %.thread226 ], [ 1, %bb.z ], [ 0, %.critedge9.i ], [ 1, %bb.aw ], [ 0, %.critedge6.i ], [ 0, %.thread233 ]
  %.0190.sink = phi ptr [ %.0190, %.thread226 ], [ %.0190, %bb.z ], [ %.0190, %.critedge9.i ], [ %.0180, %bb.aw ], [ %.0180, %.critedge6.i ], [ %.0180, %.thread233 ]
  %.sink456 = phi i64 [ %i.af, %.thread226 ], [ %i.af, %bb.z ], [ %i.af, %.critedge9.i ], [ %i.gc, %bb.aw ], [ %i.gc, %.critedge6.i ], [ %i.gc, %.thread233 ]
  %.sroa.17.0219.sink = phi ptr [ %.sroa.17.0219, %.thread226 ], [ %.sroa.17.0219, %bb.z ], [ %.sroa.17.0219, %.critedge9.i ], [ %.sroa.17139.0, %bb.aw ], [ %.sroa.17139.0, %.critedge6.i ], [ %.sroa.17139.0, %.thread233 ]
  %.sroa.20.0220.sink = phi i64 [ %.sroa.20.0220, %.thread226 ], [ %.sroa.20.0220, %bb.z ], [ %.sroa.20.0220, %.critedge9.i ], [ %.sroa.20141.0, %bb.aw ], [ %.sroa.20141.0, %.critedge6.i ], [ %.sroa.20141.0, %.thread233 ]
  store i64 %.6.i.sink, ptr %5, align 8, !tbaa !72
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.2184.sink, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !72
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.6196.sink, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !73
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 %i.o, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !49
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 25
  store i8 1, ptr %.sroa.8.0..sroa_idx, align 1, !tbaa !49
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 26
  store i8 %.sroa.10.0.sink, ptr %.sroa.10.0..sroa_idx, align 2, !tbaa !49
  %.sroa.1283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %.0190.sink, ptr %.sroa.1283.0..sroa_idx, align 8, !tbaa !73
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %.sink456, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !72
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %.sroa.17.0219.sink, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !73
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 %.sroa.20.0220.sink, ptr %.sroa.20.0..sroa_idx, align 8, !tbaa !72
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 0, ptr %.sroa.22.0..sroa_idx, align 8
  %i.ip = call { ptr, i32 } @_ZN14arrow_vendored10fast_float19from_chars_advancedIdcEENS0_19from_chars_result_tIT0_EERNS0_22parsed_number_string_tIS3_EERT_(ptr noundef nonnull align 8 dereferenceable(68) %5, ptr noundef nonnull align 8 dereferenceable(8) %2) #19 ; 2 uses
  %i.iq = extractvalue { ptr, i32 } %i.ip, 0
  %i.ir = extractvalue { ptr, i32 } %i.ip, 1
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN14arrow_vendored10fast_float18report_parse_errorIcEENS0_22parsed_number_string_tIT_EEPKS3_NS0_11parse_errorE.exit65, %_ZN14arrow_vendored10fast_float19parse_number_stringILb1EcEENS0_22parsed_number_string_tIT0_EEPKS3_S6_NS0_15parse_options_tIS3_EE.exit, %bb.ax
  %.sroa.031.0 = phi ptr [ %i.iq, %_ZN14arrow_vendored10fast_float19parse_number_stringILb1EcEENS0_22parsed_number_string_tIT0_EEPKS3_S6_NS0_15parse_options_tIS3_EE.exit ], [ %i.in, %bb.ax ], [ %.1, %_ZN14arrow_vendored10fast_float18report_parse_errorIcEENS0_22parsed_number_string_tIT_EEPKS3_NS0_11parse_errorE.exit65 ]
  %.sroa.5.0 = phi i32 [ %i.ir, %_ZN14arrow_vendored10fast_float19parse_number_stringILb1EcEENS0_22parsed_number_string_tIT0_EEPKS3_S6_NS0_15parse_options_tIS3_EE.exit ], [ %i.io, %bb.ax ], [ 22, %_ZN14arrow_vendored10fast_float18report_parse_errorIcEENS0_22parsed_number_string_tIT_EEPKS3_NS0_11parse_errorE.exit65 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.az

bb.az:                                            ; preds = %.critedge, %bb.ay
  %.sroa.031.1 = phi ptr [ %.sroa.031.0, %bb.ay ], [ %.1, %.critedge ]
  %.sroa.5.1 = phi i32 [ %.sroa.5.0, %bb.ay ], [ 22, %.critedge ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.031.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.5.1, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i32 } @_ZN14arrow_vendored10fast_float6detail12parse_infnanIdcEENS0_19from_chars_result_tIT0_EEPKS4_S7_RT_NS0_12chars_formatE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !29      ; 2 uses
end_hunk_3
