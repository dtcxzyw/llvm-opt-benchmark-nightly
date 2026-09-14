Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/hpack_parser_table?download=true
inline.NumInlined: 1805
inline.NumDeleted: 877
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN9grpc_core10HPackTable17MementoRingBuffer7RebuildEj:bb.a
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.l ], [ %i.at, %bb.h ]
  call void @_ZNSt6vectorIN9grpc_core10HPackTable7MementoESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN9grpc_core10HPackTable7MementoESaIS2_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 164703072086692425
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.129) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.d = load ptr, ptr %0, align 8, !tbaa !36
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 56
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseIN9grpc_core10HPackTable7MementoESaIS2_EE11_M_allocateEm.exit, label %bb.f

_ZNSt12_Vector_baseIN9grpc_core10HPackTable7MementoESaIS2_EE11_M_allocateEm.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !35
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = mul nuw nsw i64 %1, 56
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #34 ; 4 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !36     ; 3 uses
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !35   ; 2 uses
  %.not11.i.i.i = icmp eq ptr %i.p, %i.q
  br i1 %.not11.i.i.i, label %_ZNSt6vectorIN9grpc_core10HPackTable7MementoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseIN9grpc_core10HPackTable7MementoESaIS2_EE11_M_allocateEm.exit, %_ZSt19__relocate_object_aIN9grpc_core10HPackTable7MementoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.013.i.i.i = phi ptr [ %i.ad, %_ZSt19__relocate_object_aIN9grpc_core10HPackTable7MementoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseIN9grpc_core10HPackTable7MementoESaIS2_EE11_M_allocateEm.exit ] ; 5 uses
  %.0912.i.i.i = phi ptr [ %i.ac, %_ZSt19__relocate_object_aIN9grpc_core10HPackTable7MementoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseIN9grpc_core10HPackTable7MementoESaIS2_EE11_M_allocateEm.exit ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %i.r = load ptr, ptr %.0912.i.i.i, align 8, !tbaa !40, !alias.scope !131, !noalias !130
  store ptr %i.r, ptr %.013.i.i.i, align 8, !tbaa !40, !alias.scope !130, !noalias !131
  %i.s = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false), !tbaa.struct !42, !alias.scope !132
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !43, !alias.scope !131, !noalias !130
  store i32 %i.w, ptr %i.u, align 8, !tbaa !43, !alias.scope !130, !noalias !131
  store ptr @_ZZN9grpc_core14ParsedMetadataI19grpc_metadata_batchE11EmptyVTableEvE6vtable, ptr %.0912.i.i.i, align 8, !tbaa !40, !alias.scope !131, !noalias !130
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 48 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !44, !alias.scope !131, !noalias !130
  store i64 0, ptr %i.y, align 8, !tbaa !44, !alias.scope !131, !noalias !130
  store i64 %i.z, ptr %i.x, align 8, !tbaa !46, !alias.scope !130, !noalias !131
  invoke void @_ZN9grpc_core15metadata_detail21DestroyTrivialMementoERKNS0_6BufferE(ptr noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_ZSt19__relocate_object_aIN9grpc_core10HPackTable7MementoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i unwind label %bb.d, !noalias !130

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #31, !noalias !130
  unreachable

_ZSt19__relocate_object_aIN9grpc_core10HPackTable7MementoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 56 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 56
  %.not.i.i.i = icmp eq ptr %i.ac, %i.q
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN9grpc_core10HPackTable7MementoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exitthread-pre-split, label %.lr.ph.i.i.i, !llvm.loop !3

_ZNSt6vectorIN9grpc_core10HPackTable7MementoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exitthread-pre-split: ; preds = %_ZSt19__relocate_object_aIN9grpc_core10HPackTable7MementoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !36
  br label %_ZNSt6vectorIN9grpc_core10HPackTable7MementoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit

_ZNSt6vectorIN9grpc_core10HPackTable7MementoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZNSt6vectorIN9grpc_core10HPackTable7MementoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exitthread-pre-split, %_ZNSt12_Vector_baseIN9grpc_core10HPackTable7MementoESaIS2_EE11_M_allocateEm.exit
  %i.ae = phi ptr [ %.pr, %_ZNSt6vectorIN9grpc_core10HPackTable7MementoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exitthread-pre-split ], [ %i.p, %_ZNSt12_Vector_baseIN9grpc_core10HPackTable7MementoESaIS2_EE11_M_allocateEm.exit ] ; 3 uses
  %.not.i8 = icmp eq ptr %i.ae, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseIN9grpc_core10HPackTable7MementoESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN9grpc_core10HPackTable7MementoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ai) #32
  br label %_ZNSt12_Vector_baseIN9grpc_core10HPackTable7MementoESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN9grpc_core10HPackTable7MementoESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN9grpc_core10HPackTable7MementoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !36
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.aj, ptr %i.j, align 8, !tbaa !35
  %i.ak = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %1
  store ptr %i.ak, ptr %i.b, align 8, !tbaa !37
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIN9grpc_core10HPackTable7MementoESaIS2_EE13_M_deallocateEPS2_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN9grpc_core10HPackTable7MementoESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !36     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN9grpc_core10HPackTable7MementoES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN9grpc_core10HPackTable7MementoEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.v, %_ZSt8_DestroyIN9grpc_core10HPackTable7MementoEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48
  %i.e = load i64, ptr %i.d, align 8, !tbaa !46
  %i.f = and i64 %i.e, -2                         ; 2 uses
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %_ZN9grpc_core19UniquePtrWithBitsetINS_16HpackParseResultELm1EED2Ev.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !56   ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN9grpc_core16HpackParseResultD2Ev.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = atomicrmw sub ptr %i.j, i64 1 acq_rel, align 8
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.d, label %_ZN9grpc_core16HpackParseResultD2Ev.exit.i.i.i.i.i, !prof !53

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(88) %i.i) #29, !inline_history !133
  br label %_ZN9grpc_core16HpackParseResultD2Ev.exit.i.i.i.i.i

_ZN9grpc_core16HpackParseResultD2Ev.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 8) #32
  br label %_ZN9grpc_core19UniquePtrWithBitsetINS_16HpackParseResultELm1EED2Ev.exit.i.i.i.i

_ZN9grpc_core19UniquePtrWithBitsetINS_16HpackParseResultELm1EED2Ev.exit.i.i.i.i: ; preds = %_ZN9grpc_core16HpackParseResultD2Ev.exit.i.i.i.i.i, %.lr.ph.i.i
  %i.p = load ptr, ptr %.05.i.i, align 8, !tbaa !40
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !61
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  invoke void %i.r(ptr noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %_ZSt8_DestroyIN9grpc_core10HPackTable7MementoEEvPT_.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %_ZN9grpc_core19UniquePtrWithBitsetINS_16HpackParseResultELm1EED2Ev.exit.i.i.i.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #31
  unreachable

_ZSt8_DestroyIN9grpc_core10HPackTable7MementoEEvPT_.exit.i.i: ; preds = %_ZN9grpc_core19UniquePtrWithBitsetINS_16HpackParseResultELm1EED2Ev.exit.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN9grpc_core10HPackTable7MementoES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !2

_ZSt8_DestroyIPN9grpc_core10HPackTable7MementoES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN9grpc_core10HPackTable7MementoEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !36
  br label %_ZSt8_DestroyIPN9grpc_core10HPackTable7MementoES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN9grpc_core10HPackTable7MementoES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN9grpc_core10HPackTable7MementoES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.w = phi ptr [ %.pr, %_ZSt8_DestroyIPN9grpc_core10HPackTable7MementoES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.w, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN9grpc_core10HPackTable7MementoESaIS2_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN9grpc_core10HPackTable7MementoES2_EvT_S4_RSaIT0_E.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !37
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #32
  br label %_ZNSt12_Vector_baseIN9grpc_core10HPackTable7MementoESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN9grpc_core10HPackTable7MementoESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN9grpc_core10HPackTable7MementoES2_EvT_S4_RSaIT0_E.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN9grpc_core10HPackTable17MementoRingBufferD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(64) dereferenceable(64) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !33   ; 2 uses
  %.not.i12.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i12.not.i, label %"_ZNK9grpc_core10HPackTable17MementoRingBuffer7ForEachIZNS1_D1EvE3$_0EEvT_.exit", label %_ZNK9grpc_core10HPackTable17MementoRingBuffer4PeekEj.exit.lr.ph.i

_ZNK9grpc_core10HPackTable17MementoRingBuffer4PeekEj.exit.lr.ph.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZNK9grpc_core10HPackTable17MementoRingBuffer4PeekEj.exit.i

_ZNK9grpc_core10HPackTable17MementoRingBuffer4PeekEj.exit.i: ; preds = %"_ZZN9grpc_core10HPackTable17MementoRingBufferD1EvENK3$_0clEjRKNS0_7MementoE.exit.i", %_ZNK9grpc_core10HPackTable17MementoRingBuffer4PeekEj.exit.lr.ph.i
  %i.e = phi i32 [ %i.c, %_ZNK9grpc_core10HPackTable17MementoRingBuffer4PeekEj.exit.lr.ph.i ], [ %i.r, %"_ZZN9grpc_core10HPackTable17MementoRingBufferD1EvENK3$_0clEjRKNS0_7MementoE.exit.i" ] ; 2 uses
  %.0513.i = phi i32 [ 1, %_ZNK9grpc_core10HPackTable17MementoRingBuffer4PeekEj.exit.lr.ph.i ], [ %i.s, %"_ZZN9grpc_core10HPackTable17MementoRingBufferD1EvENK3$_0clEjRKNS0_7MementoE.exit.i" ] ; 3 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %"_ZNK9grpc_core10HPackTable17MementoRingBuffer7ForEachIZNS1_D1EvE3$_0EEvT_.exit", label %bb.b

bb.b:                                             ; preds = %_ZNK9grpc_core10HPackTable17MementoRingBuffer4PeekEj.exit.i
  %1 = sub i32 %i.e, %.0513.i
  %i.g = load i32, ptr %0, align 8, !tbaa !47
  %i.h = add i32 %1, %i.g
  %i.i = load i32, ptr %i.d, align 8, !tbaa !34
  %i.j = urem i32 %i.h, %i.i
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [56 x i8], ptr %i.f, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 48
  %.val7.i = load i64, ptr %i.m, align 8, !tbaa !46
  %i.n = and i64 %.val7.i, 1
  %.not.i8.i = icmp eq i64 %i.n, 0
  br i1 %.not.i8.i, label %bb.c, label %"_ZZN9grpc_core10HPackTable17MementoRingBufferD1EvENK3$_0clEjRKNS0_7MementoE.exit.i"

bb.c:                                             ; preds = %bb.b
  %i.o = invoke noundef nonnull align 8 dereferenceable(4024) ptr @_ZN9grpc_core6PerCpuINS_25Http2GlobalStatsCollector4DataEE8this_cpuEv(ptr noundef nonnull align 8 dereferenceable(24) @_ZN9grpc_core19NoDestructSingletonINS_25Http2GlobalStatsCollectorEE6value_E)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = atomicrmw add ptr %i.p, i64 1 monotonic, align 8 ; 0 uses
  %.pre.i = load i32, ptr %i.b, align 4, !tbaa !33
  br label %"_ZZN9grpc_core10HPackTable17MementoRingBufferD1EvENK3$_0clEjRKNS0_7MementoE.exit.i"

"_ZZN9grpc_core10HPackTable17MementoRingBufferD1EvENK3$_0clEjRKNS0_7MementoE.exit.i": ; preds = %.noexc, %bb.b
  %i.r = phi i32 [ %.pre.i, %.noexc ], [ %i.e, %bb.b ] ; 2 uses
  %i.s = add nuw i32 %.0513.i, 1
  %.not.i.i = icmp ult i32 %.0513.i, %i.r
  br i1 %.not.i.i, label %_ZNK9grpc_core10HPackTable17MementoRingBuffer4PeekEj.exit.i, label %"_ZNK9grpc_core10HPackTable17MementoRingBuffer7ForEachIZNS1_D1EvE3$_0EEvT_.exit"

"_ZNK9grpc_core10HPackTable17MementoRingBuffer7ForEachIZNS1_D1EvE3$_0EEvT_.exit": ; preds = %"_ZZN9grpc_core10HPackTable17MementoRingBufferD1EvENK3$_0clEjRKNS0_7MementoE.exit.i", %_ZNK9grpc_core10HPackTable17MementoRingBuffer4PeekEj.exit.i, %bb.a
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !36   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !35   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.t, %i.v
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN9grpc_core10HPackTable7MementoES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZNK9grpc_core10HPackTable17MementoRingBuffer7ForEachIZNS1_D1EvE3$_0EEvT_.exit", %_ZSt8_DestroyIN9grpc_core10HPackTable7MementoEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ao, %_ZSt8_DestroyIN9grpc_core10HPackTable7MementoEEvPT_.exit.i.i.i ], [ %i.t, %"_ZNK9grpc_core10HPackTable17MementoRingBuffer7ForEachIZNS1_D1EvE3$_0EEvT_.exit" ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48
  %i.x = load i64, ptr %i.w, align 8, !tbaa !46
  %i.y = and i64 %i.x, -2                         ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 2 uses
  %i.aa = icmp eq i64 %i.y, 0
  br i1 %i.aa, label %_ZN9grpc_core19UniquePtrWithBitsetINS_16HpackParseResultELm1EED2Ev.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !56  ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN9grpc_core16HpackParseResultD2Ev.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = atomicrmw sub ptr %i.ac, i64 1 acq_rel, align 8
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.f, label %_ZN9grpc_core16HpackParseResultD2Ev.exit.i.i.i.i.i.i, !prof !53

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !52
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(88) %i.ab) #29, !inline_history !1
  br label %_ZN9grpc_core16HpackParseResultD2Ev.exit.i.i.i.i.i.i

_ZN9grpc_core16HpackParseResultD2Ev.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef 8) #32
  br label %_ZN9grpc_core19UniquePtrWithBitsetINS_16HpackParseResultELm1EED2Ev.exit.i.i.i.i.i

_ZN9grpc_core19UniquePtrWithBitsetINS_16HpackParseResultELm1EED2Ev.exit.i.i.i.i.i: ; preds = %_ZN9grpc_core16HpackParseResultD2Ev.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ai = load ptr, ptr %.05.i.i.i, align 8, !tbaa !40
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !61
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  invoke void %i.ak(ptr noundef nonnull align 8 dereferenceable(32) %i.al)
          to label %_ZSt8_DestroyIN9grpc_core10HPackTable7MementoEEvPT_.exit.i.i.i unwind label %bb.g

bb.g:                                             ; preds = %_ZN9grpc_core19UniquePtrWithBitsetINS_16HpackParseResultELm1EED2Ev.exit.i.i.i.i.i
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  tail call void @__clang_call_terminate(ptr %i.an) #31
  unreachable

_ZSt8_DestroyIN9grpc_core10HPackTable7MementoEEvPT_.exit.i.i.i: ; preds = %_ZN9grpc_core19UniquePtrWithBitsetINS_16HpackParseResultELm1EED2Ev.exit.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, %i.v
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN9grpc_core10HPackTable7MementoES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN9grpc_core10HPackTable7MementoES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN9grpc_core10HPackTable7MementoEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !36
  br label %_ZSt8_DestroyIPN9grpc_core10HPackTable7MementoES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN9grpc_core10HPackTable7MementoES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN9grpc_core10HPackTable7MementoES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %"_ZNK9grpc_core10HPackTable17MementoRingBuffer7ForEachIZNS1_D1EvE3$_0EEvT_.exit"
  %i.ap = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN9grpc_core10HPackTable7MementoES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.t, %"_ZNK9grpc_core10HPackTable17MementoRingBuffer7ForEachIZNS1_D1EvE3$_0EEvT_.exit" ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN9grpc_core10HPackTable7MementoESaIS2_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN9grpc_core10HPackTable7MementoES2_EvT_S4_RSaIT0_E.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !37
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #32
  br label %_ZNSt6vectorIN9grpc_core10HPackTable7MementoESaIS2_EED2Ev.exit

_ZNSt6vectorIN9grpc_core10HPackTable7MementoESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN9grpc_core10HPackTable7MementoES2_EvT_S4_RSaIT0_E.exit.i, %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !63 ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN9grpc_core19Http2StatsCollectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN9grpc_core10HPackTable7MementoESaIS2_EED2Ev.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 4 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 4294967297
  %i.ba = trunc i64 %i.ay to i32                  ; 2 uses
  br i1 %i.az, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ax, align 8, !tbaa !65
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 0, ptr %i.bb, align 4, !tbaa !66
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !52
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  tail call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #29, !inline_history !4
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !52
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #29, !inline_history !4
  br label %_ZNSt12__shared_ptrIN9grpc_core19Http2StatsCollectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.bi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i2 = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i.i2, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = add nsw i32 %i.ba, -1
  store i32 %i.bj, ptr %i.ax, align 8, !tbaa !67
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bk = atomicrmw volatile add ptr %i.ax, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.ba, %bb.l ], [ %i.bk, %bb.m ]
  %i.bl = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bl, label %bb.n, label %_ZNSt12__shared_ptrIN9grpc_core19Http2StatsCollectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !53

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #29
  br label %_ZNSt12__shared_ptrIN9grpc_core19Http2StatsCollectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN9grpc_core19Http2StatsCollectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIN9grpc_core10HPackTable7MementoESaIS2_EED2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  ret void

bb.o:                                             ; preds = %bb.c
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  tail call void @__clang_call_terminate(ptr %i.bn) #31
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #29 ; 0 uses
  tail call void @_ZSt9terminatev() #31
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core10HPackTable8EvictOneEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.grpc_core::HPackTable::Memento", align 8 ; 9 uses
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZN9grpc_core10HPackTable17MementoRingBuffer6PopOneEv(ptr dead_on_unwind nonnull writable sret(%"struct.grpc_core::HPackTable::Memento") align 8 %1, ptr noundef nonnull align 8 dereferenceable(64) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !43   ; 2 uses
  %i.d = load i32, ptr %0, align 8, !tbaa !70     ; 2 uses
  %.not = icmp ugt i32 %i.c, %i.d
  br i1 %.not, label %bb.b, label %.critedge, !prof !53

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.1, i32 noundef 124, ptr noundef nonnull @.str.3) #30
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.e

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.c
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #31
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @_ZN9grpc_core10HPackTable7MementoD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  resume { ptr, i32 } %i.e

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #31
  unreachable

.critedge:                                        ; preds = %bb.a
  %i.g = sub nuw i32 %i.d, %i.c
  store i32 %i.g, ptr %0, align 8, !tbaa !70
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load i64, ptr %i.h, align 8, !tbaa !46
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN9grpc_core10HPackTable19SetCurrentTableSizeEj:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZN9grpc_core10HPackTable17MementoRingBuffer7RebuildEj(ptr noundef nonnull align 8 dereferenceable(64) %i.r, i32 noundef %.sroa.speculated)
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.a, %._crit_edge
  %.0 = phi i1 [ true, %._crit_edge ], [ true, %bb.a ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN9grpc_core10HPackTable3AddENS0_7MementoE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nofree noundef align 8 captures(none) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.grpc_core::HPackTable::Memento", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !74   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !71
  %i.e = icmp ule i32 %i.b, %i.d                  ; 2 uses
  br i1 %i.e, label %bb.b, label %_ZN9grpc_core10HPackTable29AddLargerThanCurrentTableSizeEv.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !43   ; 3 uses
  %i.h = icmp ugt i32 %i.g, %i.b
  br i1 %i.h, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.i = zext i32 %i.g to i64
  %i.j = zext i32 %i.b to i64
  %i.k = load i32, ptr %0, align 8, !tbaa !70     ; 2 uses
  %i.l = zext i32 %i.k to i64
  %i.m = sub nsw i64 %i.j, %i.l
  %i.n = icmp ult i64 %i.m, %i.i
  br i1 %i.n, label %.lr.ph, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !33
  %.not1.i = icmp eq i32 %i.p, 0
  br i1 %.not1.i, label %_ZN9grpc_core10HPackTable29AddLargerThanCurrentTableSizeEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  tail call void @_ZN9grpc_core10HPackTable8EvictOneEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.q = load i32, ptr %i.o, align 4, !tbaa !33
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %_ZN9grpc_core10HPackTable29AddLargerThanCurrentTableSizeEv.exit, label %.lr.ph.i, !llvm.loop !6

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  tail call void @_ZN9grpc_core10HPackTable8EvictOneEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.r = load i32, ptr %i.f, align 8, !tbaa !43   ; 2 uses
  %i.s = zext i32 %i.r to i64
  %i.t = load i32, ptr %i.a, align 8, !tbaa !74
  %i.u = zext i32 %i.t to i64
  %i.v = load i32, ptr %0, align 8, !tbaa !70     ; 2 uses
  %i.w = zext i32 %i.v to i64
  %i.x = sub nsw i64 %i.u, %i.w
  %i.y = icmp ult i64 %i.x, %i.s
  br i1 %i.y, label %.lr.ph, label %._crit_edge, !llvm.loop !139

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.lcssa3 = phi i32 [ %i.g, %.preheader ], [ %i.r, %.lr.ph ] ; 2 uses
  %.lcssa = phi i32 [ %i.k, %.preheader ], [ %i.v, %.lr.ph ]
  %i.z = add i32 %.lcssa, %.lcssa3
  store i32 %i.z, ptr %0, align 8, !tbaa !70
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %1, align 8, !tbaa !40
  store ptr %i.ab, ptr %2, align 8, !tbaa !40
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 32, i1 false), !tbaa.struct !42
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %.lcssa3, ptr %i.ae, align 8, !tbaa !43
  store ptr @_ZZN9grpc_core14ParsedMetadataI19grpc_metadata_batchE11EmptyVTableEvE6vtable, ptr %1, align 8, !tbaa !40
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !44
  store i64 0, ptr %i.ag, align 8, !tbaa !44
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !46
  invoke void @_ZN9grpc_core10HPackTable17MementoRingBuffer3PutENS0_7MementoE(ptr noundef nonnull align 8 dereferenceable(64) %i.aa, ptr noundef nonnull align 8 %2)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %._crit_edge
  %i.ai = load i64, ptr %i.af, align 8, !tbaa !46
  %i.aj = and i64 %i.ai, -2                       ; 2 uses
  %i.ak = inttoptr i64 %i.aj to ptr               ; 2 uses
  %i.al = icmp eq i64 %i.aj, 0
  br i1 %i.al, label %_ZN9grpc_core19UniquePtrWithBitsetINS_16HpackParseResultELm1EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !56 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i, label %_ZN9grpc_core16HpackParseResultD2Ev.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = atomicrmw sub ptr %i.an, i64 1 acq_rel, align 8
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.g, label %_ZN9grpc_core16HpackParseResultD2Ev.exit.i.i, !prof !53

bb.g:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !52
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(88) %i.am) #29, !inline_history !5
  br label %_ZN9grpc_core16HpackParseResultD2Ev.exit.i.i

_ZN9grpc_core16HpackParseResultD2Ev.exit.i.i:     ; preds = %bb.g, %bb.f, %bb.e
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef 8) #32
  br label %_ZN9grpc_core19UniquePtrWithBitsetINS_16HpackParseResultELm1EED2Ev.exit.i

_ZN9grpc_core19UniquePtrWithBitsetINS_16HpackParseResultELm1EED2Ev.exit.i: ; preds = %_ZN9grpc_core16HpackParseResultD2Ev.exit.i.i, %bb.d
  %i.at = load ptr, ptr %2, align 8, !tbaa !40
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !61
  invoke void %i.av(ptr noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %_ZN9grpc_core10HPackTable29AddLargerThanCurrentTableSizeEv.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZN9grpc_core19UniquePtrWithBitsetINS_16HpackParseResultELm1EED2Ev.exit.i
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  call void @__clang_call_terminate(ptr %i.ax) #31
  unreachable

bb.i:                                             ; preds = %._crit_edge
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core10HPackTable7MementoD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #29
  resume { ptr, i32 } %i.ay

_ZN9grpc_core10HPackTable29AddLargerThanCurrentTableSizeEv.exit: ; preds = %.lr.ph.i, %_ZN9grpc_core19UniquePtrWithBitsetINS_16HpackParseResultELm1EED2Ev.exit.i, %bb.c, %bb.a
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core10HPackTable29AddLargerThanCurrentTableSizeEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !33
  %.not1 = icmp eq i32 %i.b, 0
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  tail call void @_ZN9grpc_core10HPackTable8EvictOneEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.c = load i32, ptr %i.a, align 4, !tbaa !33
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !6

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK9grpc_core10HPackTable28TestOnlyDynamicTableAsStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %3 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %4 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %9 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.absl::lts_20250512::Status", align 8 ; 7 uses
  %12 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !76
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !78
  store i8 0, ptr %i.a, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !33   ; 2 uses
  %.not.i12.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i12.not.i, label %"_ZNK9grpc_core10HPackTable17MementoRingBuffer7ForEachIZNKS0_28TestOnlyDynamicTableAsStringB5cxx11EvE3$_0EEvT_.exit", label %_ZNK9grpc_core10HPackTable17MementoRingBuffer4PeekEj.exit.lr.ph.i

_ZNK9grpc_core10HPackTable17MementoRingBuffer4PeekEj.exit.lr.ph.i: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 18
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  br label %_ZNK9grpc_core10HPackTable17MementoRingBuffer4PeekEj.exit.i

_ZNK9grpc_core10HPackTable17MementoRingBuffer4PeekEj.exit.i: ; preds = %"_ZZNK9grpc_core10HPackTable28TestOnlyDynamicTableAsStringB5cxx11EvENK3$_0clEjRKNS0_7MementoE.exit.i", %_ZNK9grpc_core10HPackTable17MementoRingBuffer4PeekEj.exit.lr.ph.i
  %i.x = phi i32 [ %i.e, %_ZNK9grpc_core10HPackTable17MementoRingBuffer4PeekEj.exit.lr.ph.i ], [ %i.ca, %"_ZZNK9grpc_core10HPackTable28TestOnlyDynamicTableAsStringB5cxx11EvENK3$_0clEjRKNS0_7MementoE.exit.i" ]
  %.0513.i = phi i32 [ 1, %_ZNK9grpc_core10HPackTable17MementoRingBuffer4PeekEj.exit.lr.ph.i ], [ %i.bz, %"_ZZNK9grpc_core10HPackTable28TestOnlyDynamicTableAsStringB5cxx11EvENK3$_0clEjRKNS0_7MementoE.exit.i" ] ; 5 uses
  %13 = sub i32 %i.x, %.0513.i
  %i.y = load i32, ptr %i.c, align 8, !tbaa !47
  %i.z = add i32 %13, %i.y
  %i.aa = load i32, ptr %i.f, align 8, !tbaa !34
  %i.ab = urem i32 %i.z, %i.aa
  %i.ac = zext i32 %i.ab to i64
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !36  ; 2 uses
  %i.ae = getelementptr inbounds nuw [56 x i8], ptr %i.ad, i64 %i.ac ; 3 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %"_ZNK9grpc_core10HPackTable17MementoRingBuffer7ForEachIZNKS0_28TestOnlyDynamicTableAsStringB5cxx11EvE3$_0EEvT_.exit", label %bb.b

bb.b:                                             ; preds = %_ZNK9grpc_core10HPackTable17MementoRingBuffer4PeekEj.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !46
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.ai = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEjPc(i32 noundef %.0513.i, ptr noundef nonnull %i.p)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.c
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %i.q
  store i64 %i.ak, ptr %2, align 8, !tbaa !79
  store ptr %i.p, ptr %i.r, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store i64 2, ptr %3, align 8
  store ptr @.str.125, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !40, !noalias !145
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !81, !noalias !145
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  invoke void %i.an(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %i.ao)
          to label %.noexc3 unwind label %bb.n, !inline_history !142

.noexc3:                                          ; preds = %.noexc
  %i.ap = load ptr, ptr %5, align 8, !tbaa !82
  %i.aq = load i64, ptr %i.t, align 8, !tbaa !78
  store i64 %i.aq, ptr %4, align 8
  store ptr %i.ap, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  store i64 1, ptr %6, align 8
  store ptr @.str.130, ptr %i.v, align 8
  invoke void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_SA_SA_(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.noexc3
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.ar = load ptr, ptr %5, align 8, !tbaa !82    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.w
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.at = load i64, ptr %i.w, align 8, !tbaa !41
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %"_ZZNK9grpc_core10HPackTable28TestOnlyDynamicTableAsStringB5cxx11EvENK3$_0clEjRKNS0_7MementoE.exit.i"

bb.e:                                             ; preds = %.noexc3
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.aw = load ptr, ptr %5, align 8, !tbaa !82    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.w
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i: ; preds = %bb.e
  %i.ay = load i64, ptr %i.w, align 8, !tbaa !41
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %.body

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.ba = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEjPc(i32 noundef %.0513.i, ptr noundef nonnull %i.h)
          to label %.noexc4 unwind label %bb.n

.noexc4:                                          ; preds = %bb.f
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.i
  store i64 %i.bc, ptr %7, align 8, !tbaa !79
  store ptr %i.h, ptr %i.j, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  store i64 2, ptr %8, align 8
  store ptr @.str.125, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.bd = load i64, ptr %i.af, align 8, !tbaa !46
  %i.be = and i64 %i.bd, -2
  %i.bf = inttoptr i64 %i.be to ptr
  invoke void @_ZNK9grpc_core16HpackParseResult11MaterializeEv(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %i.bf)
          to label %.noexc5 unwind label %bb.n

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %i.bg = load i64, ptr %11, align 8, !tbaa !84, !noalias !146 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 1
  br i1 %i.bh, label %._crit_edge.i.i.i.i.i, label %bb.g

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc5
  store ptr %i.l, ptr %10, align 8, !tbaa !76, !alias.scope !146
  store i16 19279, ptr %i.l, align 8, !alias.scope !146
  store i64 2, ptr %.phi.trans.insert.i.i, align 8, !tbaa !78, !alias.scope !146
  store i8 0, ptr %i.m, align 2, !tbaa !41, !alias.scope !146
  br label %bb.h

bb.g:                                             ; preds = %.noexc5
  invoke void @_ZN4absl12lts_202505126Status12ToStringSlowB5cxx11EmNS0_18StatusToStringModeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i64 noundef %i.bg, i32 noundef 1)
          to label %._crit_edge.i.i unwind label %bb.l

._crit_edge.i.i:                                  ; preds = %bb.g
  %.pre.i.i = load ptr, ptr %10, align 8, !tbaa !82
  %.pre2.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !78
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i, %._crit_edge.i.i.i.i.i
  %i.bi = phi i64 [ %.pre2.i.i, %._crit_edge.i.i ], [ 2, %._crit_edge.i.i.i.i.i ]
  %i.bj = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.l, %._crit_edge.i.i.i.i.i ]
  store i64 %i.bi, ptr %9, align 8
  store ptr %i.bj, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  store i64 1, ptr %12, align 8
  store ptr @.str.130, ptr %i.o, align 8
  invoke void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_SA_SA_(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(48) %12)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  %i.bk = load ptr, ptr %10, align 8, !tbaa !82   ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.l
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i.i: ; preds = %bb.i
  %i.bm = load i64, ptr %i.l, align 8, !tbaa !41
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i.i
  %i.bo = load i64, ptr %11, align 8, !tbaa !84   ; 2 uses
  %i.bp = trunc i64 %i.bo to i1
  br i1 %i.bp, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i
  %i.bq = inttoptr i64 %i.bo to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bq)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #31
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit.i.i:       ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %"_ZZNK9grpc_core10HPackTable28TestOnlyDynamicTableAsStringB5cxx11EvENK3$_0clEjRKNS0_7MementoE.exit.i"

bb.l:                                             ; preds = %bb.g
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i

bb.m:                                             ; preds = %bb.h
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  %i.bv = load ptr, ptr %10, align 8, !tbaa !82   ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.l
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i: ; preds = %bb.m
  %i.bx = load i64, ptr %i.l, align 8, !tbaa !41
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i, %bb.l
  %.pn.i.i = phi { ptr, i32 } [ %i.bt, %bb.l ], [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i ], [ %i.bu, %bb.m ]
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %.body

"_ZZNK9grpc_core10HPackTable28TestOnlyDynamicTableAsStringB5cxx11EvENK3$_0clEjRKNS0_7MementoE.exit.i": ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.bz = add nuw i32 %.0513.i, 1
  %i.ca = load i32, ptr %i.d, align 4, !tbaa !33  ; 2 uses
  %.not.i.i = icmp ult i32 %.0513.i, %i.ca
  br i1 %.not.i.i, label %_ZNK9grpc_core10HPackTable17MementoRingBuffer4PeekEj.exit.i, label %"_ZNK9grpc_core10HPackTable17MementoRingBuffer7ForEachIZNKS0_28TestOnlyDynamicTableAsStringB5cxx11EvE3$_0EEvT_.exit"

bb.n:                                             ; preds = %.noexc4, %bb.f, %.noexc, %bb.c
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.cb, %bb.n ], [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i ], [ %.pn.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i ]
  %i.cc = load ptr, ptr %0, align 8, !tbaa !82    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.a
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body
  %i.ce = load i64, ptr %i.a, align 8, !tbaa !41
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %eh.lpad-body

"_ZNK9grpc_core10HPackTable17MementoRingBuffer7ForEachIZNKS0_28TestOnlyDynamicTableAsStringB5cxx11EvE3$_0EEvT_.exit": ; preds = %"_ZZNK9grpc_core10HPackTable28TestOnlyDynamicTableAsStringB5cxx11EvENK3$_0clEjRKNS0_7MementoE.exit.i", %_ZNK9grpc_core10HPackTable17MementoRingBuffer4PeekEj.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core10HPackTable14StaticMementosC2Ev(ptr noundef nonnull align 8 dereferenceable(3416) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.grpc_core::metadata_detail::ParseHelper", align 8 ; 11 uses
  %2 = alloca %"class.grpc_core::Slice", align 8  ; 5 uses
  %3 = alloca %"class.grpc_core::Slice", align 8  ; 8 uses
  %4 = alloca %class.anon.29, align 1             ; 4 uses
  %5 = alloca %"struct.grpc_core::HPackTable::Memento", align 8 ; 9 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.idx = phi i64 [ 0, %bb.a ], [ %.add.3, %bb.c ] ; 5 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 3 uses
  store ptr @_ZZN9grpc_core14ParsedMetadataI19grpc_metadata_batchE11EmptyVTableEvE6vtable, ptr %.ptr, align 8, !tbaa !40
  %i.a = getelementptr inbounds nuw i8, ptr %.ptr, i64 40
  store i32 0, ptr %i.a, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %.ptr, i64 48
  store i64 0, ptr %i.b, align 8, !tbaa !46
  %.add = add nuw nsw i64 %.idx, 56               ; 2 uses
  %i.c = icmp eq i64 %.add, 3416
  br i1 %i.c, label %.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 %.add ; 3 uses
  store ptr @_ZZN9grpc_core14ParsedMetadataI19grpc_metadata_batchE11EmptyVTableEvE6vtable, ptr %.ptr.1, align 8, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %.ptr.1, i64 40
  store i32 0, ptr %i.d, align 8, !tbaa !43
  %i.e = getelementptr inbounds nuw i8, ptr %.ptr.1, i64 48
  store i64 0, ptr %i.e, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 3 uses
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  store ptr @_ZZN9grpc_core14ParsedMetadataI19grpc_metadata_batchE11EmptyVTableEvE6vtable, ptr %.ptr.2, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  store i32 0, ptr %i.g, align 8, !tbaa !43
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  store i64 0, ptr %i.h, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 3 uses
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  store ptr @_ZZN9grpc_core14ParsedMetadataI19grpc_metadata_batchE11EmptyVTableEvE6vtable, ptr %.ptr.3, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 208
  store i32 0, ptr %i.j, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 216
  store i64 0, ptr %i.k, align 8, !tbaa !46
  %.add.3 = add nuw nsw i64 %.idx, 224
  br label %bb.b

.preheader:                                       ; preds = %bb.b
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 40
  br label %bb.e

bb.d:                                             ; preds = %_ZN9grpc_core10HPackTable7MementoD2Ev.exit
  ret void

bb.e:                                             ; preds = %.preheader, %_ZN9grpc_core10HPackTable7MementoD2Ev.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZN9grpc_core10HPackTable7MementoD2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !158)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.r = getelementptr inbounds nuw [16 x i8], ptr @_ZN9grpc_core12_GLOBAL__N_112kStaticTableE, i64 %indvars.iv ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.r, align 16, !tbaa !85, !noalias !158 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !85, !noalias !158 ; 2 uses
  %i.s = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sroa.0.0.copyload.i) #29, !noalias !158 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %i.t = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sroa.6.0.copyload.i) #36, !noalias !160 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %3, align 8, !tbaa !87, !alias.scope !161, !noalias !158
  store i64 %i.t, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !161, !noalias !158
  store ptr %.sroa.6.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !161, !noalias !158
  %i.u = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sroa.0.0.copyload.i) #36, !noalias !158
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29, !noalias !158
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !158
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29, !noalias !162
  invoke void @grpc_slice_copy(ptr dead_on_unwind nonnull writable sret(%struct.grpc_slice) align 8 %2, ptr noundef nonnull byval(%struct.grpc_slice) align 8 %3)
          to label %_ZN9grpc_core5SliceD2Ev.exit.i.i unwind label %bb.n, !noalias !158

_ZN9grpc_core5SliceD2Ev.exit.i.i:                 ; preds = %bb.e
  %i.v = add i64 %i.t, 32
  %i.w = add i64 %i.v, %i.u
  %i.x = and i64 %i.w, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !noalias !162
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false), !noalias !163
  store i8 1, ptr %i.l, align 8, !tbaa !93, !noalias !162
  store ptr %4, ptr %i.m, align 8, !tbaa !41, !noalias !162
  store ptr @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN9grpc_core12_GLOBAL__N_111MakeMementoEmE3$_0vJSt17basic_string_viewIcSt11char_traitsIcEERKNS3_5SliceEEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE", ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !94, !noalias !162
  store i64 %i.x, ptr %i.n, align 8, !tbaa !95, !noalias !162
  invoke void @_ZN9grpc_core6IfListISt17basic_string_viewIcSt11char_traitsIcEEPNS_15metadata_detail11ParseHelperI19grpc_metadata_batchEEZNS5_19EncodableNameLookupIJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataEEE6LookupIS8_EEDaS4_PT_EUlS9_E_NS5_32EncodableNameLookupKeyComparisonISB_EENS18_ISC_EENS18_ISD_EENS18_ISE_EENS18_ISF_EENS18_ISG_EENS18_ISH_EENS18_ISI_EENS18_ISJ_EENS18_ISK_EENS18_ISL_EENS18_ISM_EENS18_ISN_EENS18_ISO_EENS18_ISP_EENS18_ISQ_EENS18_ISR_EENS18_ISS_EENS18_IST_EENS18_ISU_EENS18_ISV_EENS18_ISW_EENS18_ISX_EENS18_ISY_EENS18_ISZ_EENS18_IS10_EENS18_IS11_EENS18_IS12_EENS5_26EncodableNameLookupOnFoundISB_S8_EENS21_ISC_S8_EENS21_ISD_S8_EENS21_ISE_S8_EENS21_ISF_S8_EENS21_ISG_S8_EENS21_ISH_S8_EENS21_ISI_S8_EENS21_ISJ_S8_EENS21_ISK_S8_EENS21_ISL_S8_EENS21_ISM_S8_EENS21_ISN_S8_EENS21_ISO_S8_EENS21_ISP_S8_EENS21_ISQ_S8_EENS21_ISR_S8_EENS21_ISS_S8_EENS21_IST_S8_EENS21_ISU_S8_EENS21_ISV_S8_EENS21_ISW_S8_EENS21_ISX_S8_EENS21_ISY_S8_EENS21_ISZ_S8_EENS21_IS10_S8_EENS21_IS11_S8_EENS21_IS12_S8_EEEEDaS15_T0_T1_T2_T3_T4_T5_T6_T7_T8_T9_T10_T11_T12_T13_T14_T15_T16_T17_T18_T19_T20_T21_T22_T23_T24_T25_T26_T27_T28_T29_T30_T31_T32_T33_T34_T35_T36_T37_T38_T39_T40_T41_T42_T43_T44_T45_T46_T47_T48_T49_T50_T51_T52_T53_T54_T55_T56_T57_(ptr dead_on_unwind nonnull writable sret(%"class.grpc_core::ParsedMetadata") align 8 %5, i64 %i.s, ptr nonnull %.sroa.0.0.copyload.i, ptr noundef nonnull %1, i64 %i.s, ptr nonnull %.sroa.0.0.copyload.i)
          to label %_ZN9grpc_core15metadata_detail19EncodableNameLookupIJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataEEE6LookupINS0_11ParseHelperI19grpc_metadata_batchEEEEDaSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit.i.i unwind label %bb.i

_ZN9grpc_core15metadata_detail19EncodableNameLookupIJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataEEE6LookupINS0_11ParseHelperI19grpc_metadata_batchEEEEDaSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit.i.i: ; preds = %_ZN9grpc_core5SliceD2Ev.exit.i.i
  %i.y = load ptr, ptr %1, align 8, !tbaa !96, !noalias !162 ; 4 uses
  %i.z = icmp ugt ptr %i.y, inttoptr (i64 1 to ptr)
  br i1 %i.z, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZN9grpc_core15metadata_detail19EncodableNameLookupIJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataEEE6LookupINS0_11ParseHelperI19grpc_metadata_batchEEEEDaSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit.i.i
  %i.aa = atomicrmw sub ptr %i.y, i64 1 acq_rel, align 8
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !100
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.y)
          to label %bb.j unwind label %bb.h, !inline_history !7

bb.h:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #31
  unreachable

bb.i:                                             ; preds = %_ZN9grpc_core5SliceD2Ev.exit.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core15metadata_detail11ParseHelperI19grpc_metadata_batchED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29, !noalias !162
  br label %.body.i

bb.j:                                             ; preds = %bb.g, %bb.f, %_ZN9grpc_core15metadata_detail19EncodableNameLookupIJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataEEE6LookupINS0_11ParseHelperI19grpc_metadata_batchEEEEDaSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29, !noalias !162
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !158
  store i64 0, ptr %i.o, align 8, !tbaa !46, !alias.scope !158
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29, !noalias !158
  %i.ah = load ptr, ptr %3, align 8, !tbaa !96, !noalias !158 ; 4 uses
  %i.ai = icmp ugt ptr %i.ah, inttoptr (i64 1 to ptr)
  br i1 %i.ai, label %bb.k, label %_ZN9grpc_core19UniquePtrWithBitsetINS_16HpackParseResultELm1EED2Ev.exit.i

bb.k:                                             ; preds = %bb.j
  %i.aj = atomicrmw sub ptr %i.ah, i64 1 acq_rel, align 8
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.l, label %_ZN9grpc_core19UniquePtrWithBitsetINS_16HpackParseResultELm1EED2Ev.exit.i

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !100
  invoke void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ah)
          to label %_ZN9grpc_core19UniquePtrWithBitsetINS_16HpackParseResultELm1EED2Ev.exit.i unwind label %bb.m, !inline_history !7

bb.m:                                             ; preds = %bb.l
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #31
  unreachable

bb.n:                                             ; preds = %bb.e
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.n, %bb.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ap, %bb.n ], [ %i.ag, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29, !noalias !158
  call void @_ZN9grpc_core5SliceD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 3360
  call void @_ZN9grpc_core10HPackTable7MementoD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.aq) #29
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 3304
  call void @_ZN9grpc_core10HPackTable7MementoD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ar) #29
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 3248
  call void @_ZN9grpc_core10HPackTable7MementoD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.as) #29
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 3192
  call void @_ZN9grpc_core10HPackTable7MementoD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.at) #29
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 3136
  call void @_ZN9grpc_core10HPackTable7MementoD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.au) #29
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 3080
end_hunk_1
