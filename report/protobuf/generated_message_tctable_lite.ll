inline.NumInlined: 5240
inline.NumDeleted: 880
begin_hunk_0_@_ZN6google8protobuf8internal16TypeCardToStringB5cxx11Et:bb.a
bb.ds:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #26
  store i64 23, ptr %45, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %45, i64 8
  store ptr @.str.57, ptr %i.dk, align 8
  invoke void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(48) %45)
          to label %bb.dt unwind label %bb.du

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #26
  br label %bb.ed

bb.du:                                            ; preds = %bb.ds
  %i.dl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #26
  br label %bb.ei

bb.dv:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #26
  store i64 23, ptr %46, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %46, i64 8
  store ptr @.str.58, ptr %i.dm, align 8
  invoke void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(48) %46)
          to label %bb.dw unwind label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #26
  br label %bb.ed

bb.dx:                                            ; preds = %bb.dv
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #26
  br label %bb.ei

bb.dy:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #26
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %47, ptr noundef nonnull @.str.1, i32 noundef 3243) #30
          to label %bb.dz unwind label %bb.eb

bb.dz:                                            ; preds = %bb.dy
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %47, i64 21, ptr nonnull @.str.10)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi22EEERS2_RAT__Kc.exit86 unwind label %bb.ec

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi22EEERS2_RAT__Kc.exit86: ; preds = %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %1, ptr %i.a, align 2, !tbaa !33
  %i.do = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsItEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %47, ptr noundef nonnull align 2 dereferenceable(2) %i.a)
          to label %bb.ea unwind label %bb.ec

bb.ea:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi22EEERS2_RAT__Kc.exit86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.do)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit88 unwind label %bb.ec

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit88: ; preds = %bb.ea
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %47) #29
  unreachable

bb.eb:                                            ; preds = %bb.dy
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #26
  br label %bb.ei

bb.ec:                                            ; preds = %bb.ea, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi22EEERS2_RAT__Kc.exit86, %bb.dz
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %47) #29
  unreachable

default.unreachable94:                            ; preds = %bb.b
  unreachable

bb.ed:                                            ; preds = %bb.y, %bb.aa, %bb.ah, %bb.ak, %bb.an, %bb.aq, %bb.at, %bb.aw, %bb.az, %bb.bc, %bb.bf, %bb.bi, %bb.bl, %bb.bo, %bb.br, %bb.bu, %bb.bx, %bb.ca, %bb.cd, %bb.cg, %bb.cj, %bb.cm, %bb.cp, %bb.cs, %bb.cv, %bb.cy, %bb.db, %bb.de, %bb.dh, %bb.dk, %bb.dn, %bb.dq, %bb.dt, %bb.dw, %bb.b, %bb.ad, %bb.q
  %i.dr = and i32 %i.c, 8
  %.not35 = icmp eq i32 %i.dr, 0
  br i1 %.not35, label %bb.eh, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #26
  store i64 20, ptr %48, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %48, i64 8
  store ptr @.str.59, ptr %i.ds, align 8
  invoke void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(48) %48)
          to label %bb.ef unwind label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #26
  br label %bb.eh

bb.eg:                                            ; preds = %bb.ee
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #26
  br label %bb.ei

bb.eh:                                            ; preds = %bb.ed, %bb.ef
  ret void

bb.ei:                                            ; preds = %bb.eg, %bb.eb, %bb.dx, %bb.du, %bb.dr, %bb.do, %bb.dl, %bb.di, %bb.df, %bb.dc, %bb.cz, %bb.cw, %bb.ct, %bb.cq, %bb.cn, %bb.ck, %bb.ch, %bb.ce, %bb.cb, %bb.by, %bb.bv, %bb.bs, %bb.bp, %bb.bm, %bb.bj, %bb.bg, %bb.bd, %bb.ba, %bb.ax, %bb.au, %bb.ar, %bb.ao, %bb.al, %bb.ai, %bb.ae, %bb.ab, %bb.x, %bb.w, %bb.r, %bb.n, %bb.j, %bb.g, %bb.c
  %.pn36 = phi { ptr, i32 } [ %i.y, %bb.n ], [ %i.dt, %bb.eg ], [ %i.ag, %bb.r ], [ %i.u, %bb.g ], [ %i.w, %bb.j ], [ %i.az, %bb.ab ], [ %i.ap, %bb.x ], [ %i.ao, %bb.w ], [ %i.bb, %bb.ae ], [ %i.dp, %bb.eb ], [ %i.bd, %bb.ai ], [ %i.bf, %bb.al ], [ %i.bh, %bb.ao ], [ %i.bj, %bb.ar ], [ %i.bl, %bb.au ], [ %i.bn, %bb.ax ], [ %i.bp, %bb.ba ], [ %i.br, %bb.bd ], [ %i.bt, %bb.bg ], [ %i.bv, %bb.bj ], [ %i.bx, %bb.bm ], [ %i.bz, %bb.bp ], [ %i.cb, %bb.bs ], [ %i.cd, %bb.bv ], [ %i.cf, %bb.by ], [ %i.ch, %bb.cb ], [ %i.cj, %bb.ce ], [ %i.cl, %bb.ch ], [ %i.cn, %bb.ck ], [ %i.cp, %bb.cn ], [ %i.cr, %bb.cq ], [ %i.ct, %bb.ct ], [ %i.cv, %bb.cw ], [ %i.cx, %bb.cz ], [ %i.cz, %bb.dc ], [ %i.db, %bb.df ], [ %i.dd, %bb.di ], [ %i.df, %bb.dl ], [ %i.dh, %bb.do ], [ %i.dj, %bb.dr ], [ %i.dl, %bb.du ], [ %i.dn, %bb.dx ], [ %i.s, %bb.c ]
  %i.du = load ptr, ptr %0, align 8, !tbaa !84    ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.h
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ei
  %i.dw = load i64, ptr %i.h, align 8, !tbaa !39
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn36
}

declare void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #13

declare void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #13

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser25DiscardEverythingFallbackEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef readonly captures(none) %4, i64 noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i16, ptr %4, align 8, !tbaa !8
  %i.b = trunc i64 %5 to i32
  %i.c = zext i16 %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3
  %i.f = or i32 %i.e, %i.b
  store i32 %i.f, ptr %i.d, align 4, !tbaa !3
  %i.g = trunc i64 %3 to i32                      ; 4 uses
  %i.h = and i32 %i.g, 7
  %i.i = icmp eq i32 %i.h, 4
  %i.j = icmp eq i32 %i.g, 0
  %or.cond = or i1 %i.j, %i.i
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %i.g, -1
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i32 %i.k, ptr %i.l, align 8, !tbaa !13
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = tail call noundef ptr @_ZN6google8protobuf8internal17UnknownFieldParseEjPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcPNS1_12ParseContextE(i32 noundef %i.g, ptr noundef null, ptr noundef %1, ptr noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %1, %bb.b ], [ %i.m, %bb.c ]
  ret ptr %.0
}

declare void @_ZN4absl12lts_2025051213InternalErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8, i64, ptr) local_unnamed_addr #13

declare { i64, ptr } @_ZNK6google8protobuf11MessageLite11GetTypeNameEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #13

declare void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, ptr, i64) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #0 align 2

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #0 align 2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #18 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #26 ; 0 uses
  tail call void @_ZSt9terminatev() #29
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #19

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #20

declare noundef zeroext i1 @_ZNK4absl12lts_202505124Cord10EqualsImplERKS1_m(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #13

declare void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #22

declare { ptr, i32 } @_ZN6google8protobuf8internal15ReadTagFallbackEPKcj(ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %3, null
  %i.a = load i32, ptr %0, align 8, !tbaa !397
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  br i1 %.not, label %.split8, label %.split

.split:                                           ; preds = %bb.a
  %i.c = add nuw nsw i64 %i.b, 7
  %i.d = and i64 %i.c, 8589934584
  %i.e = tail call noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168) %3, i64 noundef %i.d) ; 14 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i8, ptr %i.f, align 4, !tbaa !398   ; 2 uses
  %i.h = icmp slt i8 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %.split
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39
  %i.k = tail call noundef ptr %i.j(ptr noundef %1, ptr noundef %i.e, ptr noundef nonnull %3), !inline_history !399
  br label %_ZNK6google8protobuf8internal14MessageCreator12PlacementNewINS0_11MessageLiteEEEPT_PKS5_S8_PvPNS0_5ArenaE.exit

bb.c:                                             ; preds = %.split
  %i.l = load i32, ptr %0, align 8, !tbaa !397    ; 6 uses
  %i.m = zext i32 %i.l to i64                     ; 11 uses
  %i.n = icmp eq i8 %i.g, 0
  %i.o = icmp ult i32 %i.l, 33                    ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.m
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.r = icmp ult i32 %i.l, 65
  br i1 %i.r, label %bb.g, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %i.s = icmp ugt i32 %i.l, 80
  br i1 %i.s, label %.lr.ph64.i, label %._crit_edge65.i

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.m
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.v, i8 0, i64 32, i1 false)
  br label %bb.l

._crit_edge65.i:                                  ; preds = %.lr.ph64.i, %.preheader.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.m
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.x, i8 0, i64 64, i1 false)
  br label %bb.l

.lr.ph64.i:                                       ; preds = %.preheader.i, %.lr.ph64.i
  %i.y = phi i64 [ %i.ab, %.lr.ph64.i ], [ 80, %.preheader.i ] ; 2 uses
  %.05563.i = phi i64 [ %i.y, %.lr.ph64.i ], [ 16, %.preheader.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 %.05563.i ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  tail call void asm sideeffect "prefetchw $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.aa) #26, !srcloc !400
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.z, i8 0, i64 64, i1 false)
  %i.ab = add nuw nsw i64 %i.y, 64                ; 2 uses
  %i.ac = icmp samesign ult i64 %i.ab, %i.m
  br i1 %i.ac, label %.lr.ph64.i, label %._crit_edge65.i, !llvm.loop !401

bb.h:                                             ; preds = %bb.c
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.m
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -16
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %i.m
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ae, ptr noundef nonnull align 1 dereferenceable(16) %i.ag, i64 16, i1 false)
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ah = icmp ult i32 %i.l, 65
  br i1 %i.ah, label %bb.k, label %.preheader61.i

.preheader61.i:                                   ; preds = %bb.j
  %i.ai = icmp ugt i32 %i.l, 80
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.aj, ptr noundef nonnull align 1 dereferenceable(16) %i.ak, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.m
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -32
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 %i.m
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.am, ptr noundef nonnull align 1 dereferenceable(32) %i.ao, i64 32, i1 false)
  br label %bb.l

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader61.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.m
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -64
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 %i.m
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.aq, ptr noundef nonnull align 1 dereferenceable(64) %i.as, i64 64, i1 false)
  br label %bb.l

.lr.ph.i:                                         ; preds = %.preheader61.i, %.lr.ph.i
  %i.at = phi i64 [ %i.ay, %.lr.ph.i ], [ 80, %.preheader61.i ] ; 2 uses
  %.062.i = phi i64 [ %i.at, %.lr.ph.i ], [ 16, %.preheader61.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 %.062.i ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.av, i32 0, i32 3, i32 1)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 %.062.i ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  tail call void asm sideeffect "prefetchw $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.ax) #26, !srcloc !400
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.aw, ptr noundef nonnull align 1 dereferenceable(64) %i.au, i64 64, i1 false)
  %i.ay = add nuw nsw i64 %i.at, 64               ; 2 uses
  %i.az = icmp samesign ult i64 %i.ay, %i.m
  br i1 %i.az, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !402

bb.l:                                             ; preds = %._crit_edge.i, %bb.k, %bb.i, %._crit_edge65.i, %bb.g, %bb.e
  %i.ba = load i64, ptr %2, align 1
  store i64 %i.ba, ptr %i.e, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %3, ptr %i.bb, align 1
  br label %_ZNK6google8protobuf8internal14MessageCreator12PlacementNewINS0_11MessageLiteEEEPT_PKS5_S8_PvPNS0_5ArenaE.exit

.split8:                                          ; preds = %bb.a
  %i.bc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.b) #33 ; 14 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.be = load i8, ptr %i.bd, align 4, !tbaa !398 ; 2 uses
  %i.bf = icmp slt i8 %i.be, 0
  br i1 %i.bf, label %bb.m, label %bb.n, !prof !7

bb.m:                                             ; preds = %.split8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !39
  %i.bi = tail call noundef ptr %i.bh(ptr noundef %1, ptr noundef nonnull %i.bc, ptr noundef null), !inline_history !399
  br label %_ZNK6google8protobuf8internal14MessageCreator12PlacementNewINS0_11MessageLiteEEEPT_PKS5_S8_PvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %.split8
  %4 = load i32, ptr %0, align 8, !tbaa !397      ; 6 uses
  %5 = zext i32 %4 to i64                         ; 11 uses
  %i.bj = icmp eq i8 %i.be, 0
  %i.bk = icmp ult i32 %4, 33                     ; 2 uses
  br i1 %i.bj, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  br i1 %i.bk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 %5
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  br label %bb.w

bb.q:                                             ; preds = %bb.o
  %i.bn = icmp ult i32 %4, 65
  br i1 %i.bn, label %bb.r, label %.preheader.i14

.preheader.i14:                                   ; preds = %bb.q
  %i.bo = icmp ugt i32 %4, 80
  br i1 %i.bo, label %.lr.ph64.i16, label %._crit_edge65.i15

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bp, i8 0, i64 16, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 %5
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.br, i8 0, i64 32, i1 false)
  br label %bb.w

._crit_edge65.i15:                                ; preds = %.lr.ph64.i16, %.preheader.i14
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bc, i64 %5
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.bt, i8 0, i64 64, i1 false)
  br label %bb.w

.lr.ph64.i16:                                     ; preds = %.preheader.i14, %.lr.ph64.i16
  %i.bu = phi i64 [ %i.bx, %.lr.ph64.i16 ], [ 80, %.preheader.i14 ] ; 2 uses
  %.05563.i17 = phi i64 [ %i.bu, %.lr.ph64.i16 ], [ 16, %.preheader.i14 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.05563.i17 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  tail call void asm sideeffect "prefetchw $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.bw) #26, !srcloc !400
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.bv, i8 0, i64 64, i1 false)
  %i.bx = add nuw nsw i64 %i.bu, 64               ; 2 uses
  %i.by = icmp samesign ult i64 %i.bx, %5
  br i1 %i.by, label %.lr.ph64.i16, label %._crit_edge65.i15, !llvm.loop !401

bb.s:                                             ; preds = %bb.n
  br i1 %i.bk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bc, i64 %5
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -16
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 %5
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ca, ptr noundef nonnull align 1 dereferenceable(16) %i.cc, i64 16, i1 false)
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cd = icmp ult i32 %4, 65
  br i1 %i.cd, label %bb.v, label %.preheader61.i9

.preheader61.i9:                                  ; preds = %bb.u
  %i.ce = icmp ugt i32 %4, 80
  br i1 %i.ce, label %.lr.ph.i12, label %._crit_edge.i10

bb.v:                                             ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.cf, ptr noundef nonnull align 1 dereferenceable(16) %i.cg, i64 16, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bc, i64 %5
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -32
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 %5
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ci, ptr noundef nonnull align 1 dereferenceable(32) %i.ck, i64 32, i1 false)
  br label %bb.w

._crit_edge.i10:                                  ; preds = %.lr.ph.i12, %.preheader61.i9
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bc, i64 %5
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -64
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 %5
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.cm, ptr noundef nonnull align 1 dereferenceable(64) %i.co, i64 64, i1 false)
  br label %bb.w

.lr.ph.i12:                                       ; preds = %.preheader61.i9, %.lr.ph.i12
  %i.cp = phi i64 [ %i.cu, %.lr.ph.i12 ], [ 80, %.preheader61.i9 ] ; 2 uses
  %.062.i13 = phi i64 [ %i.cp, %.lr.ph.i12 ], [ 16, %.preheader61.i9 ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 %.062.i13 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cr, i32 0, i32 3, i32 1)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.062.i13 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 64
  tail call void asm sideeffect "prefetchw $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.ct) #26, !srcloc !400
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.cs, ptr noundef nonnull align 1 dereferenceable(64) %i.cq, i64 64, i1 false)
  %i.cu = add nuw nsw i64 %i.cp, 64               ; 2 uses
  %i.cv = icmp samesign ult i64 %i.cu, %5
  br i1 %i.cv, label %.lr.ph.i12, label %._crit_edge.i10, !llvm.loop !402

bb.w:                                             ; preds = %._crit_edge.i10, %bb.v, %bb.t, %._crit_edge65.i15, %bb.r, %bb.p
  %i.cw = load i64, ptr %2, align 1
  store i64 %i.cw, ptr %i.bc, align 1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr null, ptr %i.cx, align 1
  br label %_ZNK6google8protobuf8internal14MessageCreator12PlacementNewINS0_11MessageLiteEEEPT_PKS5_S8_PvPNS0_5ArenaE.exit

_ZNK6google8protobuf8internal14MessageCreator12PlacementNewINS0_11MessageLiteEEEPT_PKS5_S8_PvPNS0_5ArenaE.exit: ; preds = %bb.w, %bb.m, %bb.l, %bb.b
  %phi.call = phi ptr [ %i.e, %bb.l ], [ %i.k, %bb.b ], [ %i.bi, %bb.m ], [ %i.bc, %bb.w ]
  ret ptr %phi.call
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #23

declare void @_ZN6google8protobuf8internal11MicroString11DestroySlowEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #13

declare void @_ZN4absl12lts_202505124Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #24

declare noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168), i64 noundef) local_unnamed_addr #13

declare i32 @utf8_range_IsValid(ptr noundef, i64 noundef) local_unnamed_addr #13

declare void @_ZN6google8protobuf8internal14WireFormatLite12WriteFixed32EijPNS0_2io17CodedOutputStreamE(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #13

declare void @_ZN6google8protobuf8internal14WireFormatLite12WriteFixed64EimPNS0_2io17CodedOutputStreamE(i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #13

declare void @_ZN6google8protobuf8internal14WireFormatLite11WriteStringEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_2io17CodedOutputStreamE(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #13

declare void @_ZN6google8protobuf8internal14WireFormatLite9WriteBoolEibPNS0_2io17CodedOutputStreamE(i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #13

declare void @_ZN6google8protobuf8internal14WireFormatLite11WriteSInt32EiiPNS0_2io17CodedOutputStreamE(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #13

declare void @_ZN6google8protobuf8internal14WireFormatLite11WriteUInt32EijPNS0_2io17CodedOutputStreamE(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #13

declare void @_ZN6google8protobuf8internal14WireFormatLite11WriteSInt64EilPNS0_2io17CodedOutputStreamE(i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #13

declare void @_ZN6google8protobuf8internal14WireFormatLite10WriteInt64EilPNS0_2io17CodedOutputStreamE(i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #13

declare void @_ZN6google8protobuf8internal14WireFormatLite11WriteUInt64EimPNS0_2io17CodedOutputStreamE(i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #13

declare { ptr, i8 } @_ZN6google8protobuf8internal18EpsCopyInputStream12DoneFallbackILb0EEESt4pairIPKcbEii(ptr noundef nonnull align 8 dereferenceable(88), i32 noundef, i32 noundef) local_unnamed_addr #13

declare { ptr, i32 } @_ZN6google8protobuf8internal16ReadSizeFallbackEPKcj(ptr noundef, i32 noundef) local_unnamed_addr #13

declare noundef zeroext i1 @_ZN6google8protobuf8internal18EpsCopyInputStream14CanReadFromPtrEiPKc(ptr noundef nonnull align 8 dereferenceable(88), i32 noundef, ptr noundef) local_unnamed_addr #13

declare noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream18ReadStringFallbackEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #13

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsItEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 2 dereferenceable(2)) local_unnamed_addr #13

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal8TcParser20WriteVarintToUnknownINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPNS0_11MessageLiteEii(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i64 %i.b, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZN6google8protobuf8internal16InternalMetadata27mutable_unknown_fields_slowINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit

_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  %i.h = sext i32 %2 to i64
  tail call void @_ZN6google8protobuf8internal11WriteVarintEjmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef %1, i64 noundef %i.h, ptr noundef %.0.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal8TcParser29WriteLengthDelimitedToUnknownINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPNS0_11MessageLiteEiSt17basic_string_viewIcS7_E(ptr noundef %0, i32 noundef %1, i64 %2, ptr %3) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i64 %i.b, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZN6google8protobuf8internal16InternalMetadata27mutable_unknown_fields_slowINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit

_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  tail call void @_ZN6google8protobuf8internal20WriteLengthDelimitedEjSt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS4_SaIcEEE(i32 noundef %1, i64 %2, ptr %3, ptr noundef %.0.i)
  ret void
}

declare noundef ptr @_ZN6google8protobuf8internal12ExtensionSet10ParseFieldEmPKcPKNS0_11MessageLiteEPNS1_16InternalMetadataEPNS1_12ParseContextE(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #13

declare void @_ZN6google8protobuf8internal11WriteVarintEjmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #13

declare void @_ZN6google8protobuf8internal20WriteLengthDelimitedEjSt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS4_SaIcEEE(i32 noundef, i64, ptr, ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal16InternalMetadata27mutable_unknown_fields_slowINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !27     ; 3 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i64 %i.a, -1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !152
  br label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit

bb.c:                                             ; preds = %bb.a
  %i.f = inttoptr i64 %i.a to ptr
  br label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit

_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.e, %bb.b ], [ %i.f, %bb.c ] ; 3 uses
  %i.g = icmp eq ptr %.0.i, null
  br i1 %i.g, label %bb.d, label %bb.e, !prof !7

bb.d:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit
  %i.h = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #33
  br label %_ZN6google8protobuf5Arena6CreateINS0_8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJEEEPT_PS1_DpOT0_.exit

bb.e:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit
  %i.i = tail call noundef ptr @_ZN6google8protobuf5Arena26AllocateAlignedWithCleanupEmmPFvPvE(ptr noundef nonnull align 8 dereferenceable(168) %.0.i, i64 noundef 40, i64 noundef 8, ptr noundef nonnull @_ZN6google8protobuf8internal7cleanup21arena_destruct_objectINS1_16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPv)
  br label %_ZN6google8protobuf5Arena6CreateINS0_8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJEEEPT_PS1_DpOT0_.exit

_ZN6google8protobuf5Arena6CreateINS0_8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJEEEPT_PS1_DpOT0_.exit: ; preds = %bb.d, %bb.e
  %.sink10 = phi ptr [ %i.h, %bb.d ], [ %i.i, %bb.e ] ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sink10, i8 0, i64 40, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %.sink10, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %.sink10, i64 24 ; 2 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !359
  store i8 0, ptr %i.k, align 8, !tbaa !39
  %i.l = ptrtoint ptr %.sink10 to i64
  %i.m = or i64 %i.l, 1
  store i64 %i.m, ptr %0, align 8, !tbaa !27
  store ptr %.0.i, ptr %.sink10, align 8, !tbaa !152
  %i.n = getelementptr inbounds nuw i8, ptr %.sink10, i64 8
  ret ptr %i.n
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal7cleanup21arena_destruct_objectINS1_16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPv(ptr noundef %0) #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN6google8protobuf8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !39
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #27
  br label %_ZN6google8protobuf8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN6google8protobuf8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

declare noundef ptr @_ZN6google8protobuf5Arena26AllocateAlignedWithCleanupEmmPFvPvE(ptr noundef nonnull align 8 dereferenceable(168), i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN6google8protobuf8internal8TcParser8MpVarintILb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) #7 comdat align 2 {
bb.a:
  %i.a = lshr i64 %3, 32
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 %i.a ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.d = load i16, ptr %i.c, align 2, !tbaa !55   ; 4 uses
  %i.e = and i16 %i.d, 48                         ; 2 uses
  %i.f = icmp eq i16 %i.e, 32
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser16MpRepeatedVarintILb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef nonnull %4, i64 noundef %5)
  ret ptr %i.g

bb.c:                                             ; preds = %bb.a
  %i.h = trunc i64 %3 to i32                      ; 2 uses
  %i.i = and i32 %i.h, 7
  %.not = icmp eq i32 %i.i, 0
end_hunk_0
