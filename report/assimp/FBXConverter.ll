Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/FBXConverter?download=true
inline.NumInlined: 7596
inline.NumDeleted: 2895
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN6Assimp3FBX12FBXConverter13GetUniqueNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS7_:bb.a
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #29
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjED2Ev.exit38

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjED2Ev.exit38: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36, %bb.u
  %.pn = phi { ptr, i32 } [ %i.dz, %bb.u ], [ %i.ea, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36 ], [ %i.ea, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.w

bb.w:                                             ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjED2Ev.exit38, %.body
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjED2Ev.exit38 ], [ %i.cb, %.body ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.x

._crit_edge:                                      ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjED2Ev.exit
  ret void

bb.x:                                             ; preds = %bb.w, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjED2Ev.exit35
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.w ], [ %i.du, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjED2Ev.exit35 ]
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.203) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.d, ptr %i.a, align 8
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8
  %i.g = load i64, ptr %i.a, align 8
  store i64 %i.g, ptr %i.b, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1
  store i8 %i.i, ptr %i.h, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX12FBXConverter12ConvertNodesEmP6aiNodeS3_RK12aiMatrix4x4tIfE(ptr noundef nonnull align 8 dereferenceable(529) %0, i64 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.std::vector.222", align 8   ; 11 uses
  %6 = alloca %"class.std::vector.227", align 8   ; 19 uses
  %7 = alloca %"class.std::vector.227", align 8   ; 17 uses
  %8 = alloca %"class.std::vector.227", align 8   ; 13 uses
  %9 = alloca %class.aiMatrix4x4t, align 4        ; 26 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::vector.222", align 8  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !25, !align !28
  call void @_ZNK6Assimp3FBX8Document36GetConnectionsByDestinationSequencedEmPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.222") align 8 %5, ptr noundef nonnull align 8 dereferenceable(368) %i.d, i64 noundef %1, ptr noundef nonnull @.str.1)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = load ptr, ptr %5, align 8                ; 3 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = ashr exact i64 %i.j, 3                   ; 2 uses
  %i.l = icmp ugt i64 %i.k, 576460752303423487
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.223) #31
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %.not305 = icmp eq ptr %i.f, %i.g
  br i1 %.not305, label %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.o = shl nuw nsw i64 %i.j, 1
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #30
          to label %.noexc94 unwind label %bb.e   ; 4 uses

.noexc94:                                         ; preds = %_ZNSt12_Vector_baseIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE11_M_allocateEm.exit.i
  %i.q = load ptr, ptr %6, align 8                ; 3 uses
  %i.r = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc94, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i ], [ %i.p, %.noexc94 ] ; 3 uses
  %.0911.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i ], [ %i.q, %.noexc94 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.s = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !115, !noalias !114
  store i64 %i.s, ptr %.012.i.i.i.i, align 8, !alias.scope !114, !noalias !115
  store ptr null, ptr %.0911.i.i.i.i, align 8, !alias.scope !115, !noalias !114
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !115, !noalias !114
  store ptr %i.v, ptr %i.t, align 8, !alias.scope !114, !noalias !115
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.w, %i.r
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exitthread-pre-split.i, label %.lr.ph.i.i.i.i, !llvm.loop !7

_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i = load ptr, ptr %6, align 8
  br label %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i

_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exitthread-pre-split.i, %.noexc94
  %i.y = phi ptr [ %.pr.i, %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exitthread-pre-split.i ], [ %i.q, %.noexc94 ] ; 3 uses
  %.not.i8.i = icmp eq ptr %i.y, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %i.z = load ptr, ptr %i.m, align 8
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #29
  br label %_ZNSt12_Vector_baseIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  store ptr %i.p, ptr %6, align 8
  store ptr %i.p, ptr %i.n, align 8
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.k
  store ptr %i.ad, ptr %i.m, align 8
  %.pre = load ptr, ptr %5, align 8
  %.pre225 = load ptr, ptr %i.e, align 8
  br label %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE7reserveEm.exit

_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE13_M_deallocateEPS3_m.exit.i, %bb.c
  %i.ae = phi ptr [ %.pre225, %_ZNSt12_Vector_baseIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ %i.f, %bb.c ] ; 2 uses
  %i.af = phi ptr [ %.pre, %_ZNSt12_Vector_baseIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ %i.g, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %.not191212 = icmp eq ptr %i.af, %i.ae
  br i1 %.not191212, label %._crit_edge215.thread, label %.lr.ph214

._crit_edge215.thread:                            ; preds = %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE7reserveEm.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.ay

.lr.ph214:                                        ; preds = %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE7reserveEm.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 10 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 28 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 7 uses
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 36
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 52
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 60
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  br label %bb.f

._crit_edge215:                                   ; preds = %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogInfoIJRA56_KcEEEvDpOT_.exit
  %.pre231 = load ptr, ptr %6, align 8            ; 2 uses
  %.pre232 = load ptr, ptr %i.ba, align 8         ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.be = icmp eq ptr %.pre231, %.pre232
  br i1 %i.be, label %bb.ay, label %bb.az

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE11_M_allocateEm.exit.i, %bb.b
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.f:                                             ; preds = %.lr.ph214, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogInfoIJRA56_KcEEEvDpOT_.exit
  %.sroa.0188.0213 = phi ptr [ %i.af, %.lr.ph214 ], [ %i.ni, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogInfoIJRA56_KcEEEvDpOT_.exit ] ; 2 uses
  %i.bg = load ptr, ptr %.sroa.0188.0213, align 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load i64, ptr %i.bh, align 8
  %.not = icmp eq i64 %i.bi, 0
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bj = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc95 unwind label %bb.i

.noexc95:                                         ; preds = %bb.g
  br i1 %i.bj, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogInfoIJRA56_KcEEEvDpOT_.exit, label %bb.h

bb.h:                                             ; preds = %.noexc95
  %i.bk = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc96 unwind label %bb.i

.noexc96:                                         ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.bl = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE6PrefixEv()
          to label %.noexc97 unwind label %bb.i

.noexc97:                                         ; preds = %.noexc96
  store ptr %i.bl, ptr %i.b, align 8
  invoke void @_ZN6Assimp6Logger4infoIJPKcRA56_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.bk, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(56) @.str.2)
          to label %.noexc98 unwind label %bb.i

.noexc98:                                         ; preds = %.noexc97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogInfoIJRA56_KcEEEvDpOT_.exit

bb.i:                                             ; preds = %.noexc97, %.noexc96, %bb.h, %bb.g
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.j:                                             ; preds = %bb.f
  %i.bn = invoke noundef ptr @_ZNK6Assimp3FBX10Connection12SourceObjectEv(ptr noundef nonnull align 8 dereferenceable(64) %i.bg)
          to label %bb.k unwind label %bb.n       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bp = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc99 unwind label %bb.n

.noexc99:                                         ; preds = %bb.l
  br i1 %i.bp, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogInfoIJRA56_KcEEEvDpOT_.exit, label %bb.m

bb.m:                                             ; preds = %.noexc99
  %i.bq = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc100 unwind label %bb.n

.noexc100:                                        ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.br = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE6PrefixEv()
          to label %.noexc101 unwind label %bb.n

.noexc101:                                        ; preds = %.noexc100
  store ptr %i.br, ptr %i.a, align 8
  invoke void @_ZN6Assimp6Logger5errorIJPKcRA47_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.bq, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(47) @.str.3)
          to label %.noexc102 unwind label %bb.n

.noexc102:                                        ; preds = %.noexc101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogInfoIJRA56_KcEEEvDpOT_.exit

bb.n:                                             ; preds = %.noexc101, %.noexc100, %bb.m, %bb.l, %bb.j
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.o:                                             ; preds = %bb.k
  %i.bt = call ptr @__dynamic_cast(ptr nonnull %i.bn, ptr nonnull @_ZTIN6Assimp3FBX6ObjectE, ptr nonnull @_ZTIN6Assimp3FBX5ModelE, i64 0) #27 ; 10 uses
  %.not78 = icmp eq ptr %i.bt, null
  br i1 %.not78, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogInfoIJRA56_KcEEEvDpOT_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bu = load ptr, ptr %7, align 8               ; 3 uses
  %i.bv = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.bv, %i.bu
  br i1 %.not.i.i, label %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE5clearEv.exit, label %.lr.ph.i.i.i.i103

.lr.ph.i.i.i.i103:                                ; preds = %bb.p, %_ZSt8_DestroyIN6Assimp3FBX12FBXConverter13PotentialNodeEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bx, %_ZSt8_DestroyIN6Assimp3FBX12FBXConverter13PotentialNodeEEvPT_.exit.i.i.i.i ], [ %i.bu, %bb.p ] ; 2 uses
  %i.bw = load ptr, ptr %.05.i.i.i.i, align 8     ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6Assimp3FBX12FBXConverter13PotentialNodeEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i103
  call void @_ZN6aiNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(1144) dereferenceable(1144) %i.bw) #27
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef 1144) #29
  br label %_ZSt8_DestroyIN6Assimp3FBX12FBXConverter13PotentialNodeEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6Assimp3FBX12FBXConverter13PotentialNodeEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i103
  %i.bx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i104 = icmp eq ptr %i.bx, %i.bv
  br i1 %.not.i.i.i.i104, label %_ZSt8_DestroyIPN6Assimp3FBX12FBXConverter13PotentialNodeES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i103, !llvm.loop !8

_ZSt8_DestroyIPN6Assimp3FBX12FBXConverter13PotentialNodeES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN6Assimp3FBX12FBXConverter13PotentialNodeEEvPT_.exit.i.i.i.i
  store ptr %i.bu, ptr %i.ah, align 8
  br label %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE5clearEv.exit

_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE5clearEv.exit: ; preds = %bb.p, %_ZSt8_DestroyIPN6Assimp3FBX12FBXConverter13PotentialNodeES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.by = load ptr, ptr %8, align 8               ; 3 uses
  %i.bz = load ptr, ptr %i.ai, align 8            ; 2 uses
  %.not.i.i105 = icmp eq ptr %i.bz, %i.by
  br i1 %.not.i.i105, label %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE5clearEv.exit113, label %.lr.ph.i.i.i.i106

.lr.ph.i.i.i.i106:                                ; preds = %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE5clearEv.exit, %_ZSt8_DestroyIN6Assimp3FBX12FBXConverter13PotentialNodeEEvPT_.exit.i.i.i.i110
  %.05.i.i.i.i107 = phi ptr [ %i.cb, %_ZSt8_DestroyIN6Assimp3FBX12FBXConverter13PotentialNodeEEvPT_.exit.i.i.i.i110 ], [ %i.by, %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE5clearEv.exit ] ; 2 uses
  %i.ca = load ptr, ptr %.05.i.i.i.i107, align 8  ; 3 uses
  %.not.i.i.i.i.i.i.i108 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i.i.i.i108, label %_ZSt8_DestroyIN6Assimp3FBX12FBXConverter13PotentialNodeEEvPT_.exit.i.i.i.i110, label %_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i.i.i.i.i.i.i109

_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i.i.i.i.i.i.i109: ; preds = %.lr.ph.i.i.i.i106
  call void @_ZN6aiNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(1144) dereferenceable(1144) %i.ca) #27
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef 1144) #29
  br label %_ZSt8_DestroyIN6Assimp3FBX12FBXConverter13PotentialNodeEEvPT_.exit.i.i.i.i110

_ZSt8_DestroyIN6Assimp3FBX12FBXConverter13PotentialNodeEEvPT_.exit.i.i.i.i110: ; preds = %_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i.i.i.i.i.i.i109, %.lr.ph.i.i.i.i106
  %i.cb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i107, i64 16 ; 2 uses
  %.not.i.i.i.i111 = icmp eq ptr %i.cb, %i.bz
  br i1 %.not.i.i.i.i111, label %_ZSt8_DestroyIPN6Assimp3FBX12FBXConverter13PotentialNodeES3_EvT_S5_RSaIT0_E.exit.i.i112, label %.lr.ph.i.i.i.i106, !llvm.loop !8

_ZSt8_DestroyIPN6Assimp3FBX12FBXConverter13PotentialNodeES3_EvT_S5_RSaIT0_E.exit.i.i112: ; preds = %_ZSt8_DestroyIN6Assimp3FBX12FBXConverter13PotentialNodeEEvPT_.exit.i.i.i.i110
  store ptr %i.by, ptr %i.ai, align 8
  br label %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE5clearEv.exit113

_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE5clearEv.exit113: ; preds = %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE5clearEv.exit, %_ZSt8_DestroyIPN6Assimp3FBX12FBXConverter13PotentialNodeES3_EvT_S5_RSaIT0_E.exit.i.i112
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %9, ptr noundef nonnull align 4 dereferenceable(64) %4, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  invoke void @_ZN6Assimp3FBX12FBXConverter11FixNodeNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %i.cc)
          to label %bb.q unwind label %bb.w

bb.q:                                             ; preds = %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE5clearEv.exit113
  %i.cd = invoke noundef zeroext i1 @_ZN6Assimp3FBX12FBXConverter31GenerateTransformationNodeChainERKNS0_5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorINS1_13PotentialNodeESaISE_EESH_(ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef nonnull align 8 dereferenceable(208) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.r unwind label %bb.x

bb.r:                                             ; preds = %bb.q
  %.pre227 = load ptr, ptr %i.ah, align 8         ; 5 uses
  br i1 %i.cd, label %bb.s, label %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS3_DpOT_.exit

bb.s:                                             ; preds = %bb.r
  %i.ce = load ptr, ptr %i.aj, align 8
  %.not.i = icmp eq ptr %.pre227, %i.ce
  br i1 %.not.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cf = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #30
          to label %.noexc114 unwind label %bb.x  ; 4 uses

.noexc114:                                        ; preds = %bb.t
  invoke void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %_ZN6Assimp3FBX12FBXConverter13PotentialNodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i unwind label %bb.u

bb.u:                                             ; preds = %.noexc114
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef 1144) #29
  br label %.body

_ZN6Assimp3FBX12FBXConverter13PotentialNodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %.noexc114
  store ptr %i.cf, ptr %.pre227, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %.pre227, i64 8
  store ptr %i.cf, ptr %i.ch, align 8
  %i.ci = load ptr, ptr %i.ah, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 2 uses
  store ptr %i.cj, ptr %i.ah, align 8
  br label %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS3_DpOT_.exit

bb.v:                                             ; preds = %bb.s
  invoke void @_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE17_M_realloc_insertIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %.pre227, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %._ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS3_DpOT_.exit_crit_edge unwind label %bb.x

._ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS3_DpOT_.exit_crit_edge: ; preds = %bb.v
  %.pre226 = load ptr, ptr %i.ah, align 8
  br label %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS3_DpOT_.exit

bb.w:                                             ; preds = %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE5clearEv.exit113
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

bb.x:                                             ; preds = %bb.v, %bb.t, %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS3_DpOT_.exit, %bb.q
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS3_DpOT_.exit: ; preds = %._ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS3_DpOT_.exit_crit_edge, %_ZN6Assimp3FBX12FBXConverter13PotentialNodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %bb.r
  %i.cm = phi ptr [ %.pre226, %._ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS3_DpOT_.exit_crit_edge ], [ %i.cj, %_ZN6Assimp3FBX12FBXConverter13PotentialNodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ], [ %.pre227, %bb.r ]
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -8
  %i.co = load ptr, ptr %i.cn, align 8
  invoke void @_ZN6Assimp3FBX12FBXConverter17SetupNodeMetadataERKNS0_5ModelER6aiNode(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(208) %i.bt, ptr noundef nonnull align 8 dereferenceable(1144) %i.co)
          to label %bb.y unwind label %bb.x

bb.y:                                             ; preds = %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS3_DpOT_.exit
  %i.cp = load ptr, ptr %7, align 8               ; 2 uses
  %i.cq = load ptr, ptr %i.ah, align 8            ; 3 uses
  %.promoted = load float, ptr %9, align 4        ; 3 uses
  %.not192202 = icmp eq ptr %i.cp, %i.cq
  br i1 %.not192202, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.y
  %i.cr = load <2 x float>, ptr %i.ak, align 4    ; 2 uses
  %i.cs = load <2 x float>, ptr %i.am, align 4    ; 2 uses
  %i.ct = load <2 x float>, ptr %i.ao, align 4    ; 2 uses
  %.promoted327 = load float, ptr %i.aq, align 4
  %12 = load <4 x float>, ptr %i.ar, align 4
  %13 = load <4 x float>, ptr %i.av, align 4
  %i.cu = insertelement <2 x float> %i.cs, float %.promoted, i64 0
  %i.cv = shufflevector <2 x float> %i.cr, <2 x float> %i.ct, <2 x i32> <i32 0, i32 2>
  %i.cw = shufflevector <2 x float> %i.cr, <2 x float> %i.ct, <2 x i32> <i32 1, i32 3>
  %i.cx = insertelement <2 x float> %i.cs, float %.promoted327, i64 1
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.ac
  %i.cy = shufflevector <2 x float> %i.dh, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.cz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.es, <4 x float> %i.cy, <4 x float> %i.fi)
  %i.da = shufflevector <4 x float> %i.cz, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x float> %i.da, ptr %i.ak, align 4
  %i.db = shufflevector <2 x float> %i.gg, <2 x float> %i.gi, <2 x i32> <i32 1, i32 3>
  store <2 x float> %i.db, ptr %i.ao, align 4
  %i.dc = extractelement <2 x float> %i.gk, i64 1
  store float %i.dc, ptr %i.aq, align 4
  store <4 x float> %i.gs, ptr %i.ar, align 4
  store <4 x float> %i.gw, ptr %i.av, align 4
  %.pre228 = load ptr, ptr %i.ah, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.y
  %i.dd = phi ptr [ %i.cq, %bb.y ], [ %.pre228, %._crit_edge.loopexit ]
  %.lcssa200 = phi float [ %.promoted, %bb.y ], [ %i.fv, %._crit_edge.loopexit ] ; 2 uses
  %.061.lcssa = phi ptr [ %2, %bb.y ], [ %i.ej, %._crit_edge.loopexit ] ; 4 uses
  store float %.lcssa200, ptr %9, align 4
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -8
  %i.df = load ptr, ptr %i.de, align 8
  invoke void @_ZN6Assimp3FBX12FBXConverter12ConvertModelERKNS0_5ModelEP6aiNodeS6_RK12aiMatrix4x4tIfE(ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef nonnull align 8 dereferenceable(208) %i.bt, ptr noundef %i.df, ptr noundef %3, ptr noundef nonnull align 4 dereferenceable(64) %9)
          to label %bb.ad unwind label %bb.ag

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ac
  %.061204 = phi ptr [ %i.ej, %bb.ac ], [ %2, %.lr.ph.preheader ] ; 4 uses
  %.sroa.0184.0203 = phi ptr [ %i.gx, %bb.ac ], [ %i.cp, %.lr.ph.preheader ] ; 4 uses
  %i.dg = phi float [ %i.fv, %bb.ac ], [ %.promoted, %.lr.ph.preheader ]
  %i.dh = phi <2 x float> [ %i.gk, %bb.ac ], [ %i.cx, %.lr.ph.preheader ] ; 7 uses
  %i.di = phi <2 x float> [ %i.gi, %bb.ac ], [ %i.cw, %.lr.ph.preheader ] ; 7 uses
  %i.dj = phi <2 x float> [ %i.fu, %bb.ac ], [ %i.cu, %.lr.ph.preheader ] ; 5 uses
  %i.dk = phi <2 x float> [ %i.gg, %bb.ac ], [ %i.cv, %.lr.ph.preheader ] ; 6 uses
  %14 = phi <4 x float> [ %i.gs, %bb.ac ], [ %12, %.lr.ph.preheader ] ; 8 uses
  %15 = phi <4 x float> [ %i.gw, %bb.ac ], [ %13, %.lr.ph.preheader ] ; 8 uses
  %.not83 = icmp eq ptr %.061204, %2
  br i1 %.not83, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %.lr.ph
  %i.dl = getelementptr inbounds nuw i8, ptr %.061204, i64 1104
  store i32 1, ptr %i.dl, align 8
  %i.dm = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #30
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dn = getelementptr inbounds nuw i8, ptr %.061204, i64 1112 ; 2 uses
  store ptr %i.dm, ptr %i.dn, align 8
  %i.do = load ptr, ptr %.sroa.0184.0203, align 8
  store ptr null, ptr %.sroa.0184.0203, align 8
  %i.dp = load ptr, ptr %i.dn, align 8
  store ptr %i.do, ptr %i.dp, align 8
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.dq = landingpad { ptr, i32 }
          cleanup
  %i.dr = extractelement <2 x float> %i.dk, i64 0
  store float %i.dr, ptr %i.ak, align 4
  %i.ds = extractelement <2 x float> %i.di, i64 0
  store float %i.ds, ptr %i.al, align 4
  %i.dt = extractelement <2 x float> %i.dh, i64 0
  store float %i.dt, ptr %i.am, align 4
  %i.du = extractelement <2 x float> %i.dj, i64 1
  store float %i.du, ptr %i.an, align 4
  %i.dv = extractelement <2 x float> %i.dk, i64 1
  store float %i.dv, ptr %i.ao, align 4
  %i.dw = extractelement <2 x float> %i.di, i64 1
  store float %i.dw, ptr %i.ap, align 4
  %i.dx = extractelement <2 x float> %i.dh, i64 1
  store float %i.dx, ptr %i.aq, align 4
  %i.dy = extractelement <4 x float> %14, i64 0
  store float %i.dy, ptr %i.ar, align 4
  %i.dz = extractelement <4 x float> %14, i64 1
  store float %i.dz, ptr %i.as, align 4
  %i.ea = extractelement <4 x float> %14, i64 2
  store float %i.ea, ptr %i.at, align 4
  %i.eb = extractelement <4 x float> %14, i64 3
  store float %i.eb, ptr %i.au, align 4
  %i.ec = extractelement <4 x float> %15, i64 0
  store float %i.ec, ptr %i.av, align 4
  %i.ed = extractelement <4 x float> %15, i64 1
  store float %i.ed, ptr %i.aw, align 4
  %i.ee = extractelement <4 x float> %15, i64 2
  store float %i.ee, ptr %i.ax, align 4
  %i.ef = extractelement <4 x float> %15, i64 3
  store float %i.ef, ptr %i.ay, align 4
  br label %.body

bb.ac:                                            ; preds = %.lr.ph, %bb.aa
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0184.0203, i64 8 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 1096
  store ptr %.061204, ptr %i.ei, align 8
  %i.ej = load ptr, ptr %i.eg, align 8            ; 6 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 1028
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 1044
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 1060
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 1076
  %i.eo = load <4 x float>, ptr %i.el, align 4    ; 6 uses
  %i.ep = load <4 x float>, ptr %i.ek, align 4    ; 7 uses
  %i.eq = extractelement <4 x float> %i.ep, i64 0
  %i.er = load <4 x float>, ptr %i.em, align 4    ; 7 uses
  %i.es = load <4 x float>, ptr %i.en, align 4    ; 7 uses
  %i.et = shufflevector <2 x float> %i.dk, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.eu = fmul <4 x float> %i.eo, %i.et
  %i.ev = shufflevector <4 x float> %i.eo, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ew = fmul <2 x float> %i.dk, %i.ev
  %i.ex = shufflevector <4 x float> %i.eo, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.ey = fmul <2 x float> %i.dk, %i.ex
  %i.ez = shufflevector <2 x float> %i.dj, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.fa = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ep, <4 x float> %i.ez, <4 x float> %i.eu) ; 2 uses
  %i.fb = shufflevector <4 x float> %i.er, <4 x float> poison, <2 x i32> zeroinitializer
  %i.fc = shufflevector <4 x float> %i.fa, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fd = shufflevector <4 x float> %i.ep, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.fe = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fd, <2 x float> %i.dj, <2 x float> %i.ew)
  %i.ff = shufflevector <4 x float> %i.ep, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.fg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ff, <2 x float> %i.dj, <2 x float> %i.ey)
  %i.fh = shufflevector <2 x float> %i.di, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.fi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.er, <4 x float> %i.fh, <4 x float> %i.fa) ; 2 uses
  %i.fj = shufflevector <4 x float> %i.er, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.fk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fj, <2 x float> %i.di, <2 x float> %i.fe)
  %i.fl = shufflevector <4 x float> %i.er, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.fm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fl, <2 x float> %i.di, <2 x float> %i.fg)
  %i.fn = shufflevector <4 x float> %i.es, <4 x float> poison, <2 x i32> zeroinitializer
  %i.fo = shufflevector <4 x float> %i.eo, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.fp = fmul <2 x float> %i.fo, %i.dk           ; 2 uses
  %i.fq = extractelement <2 x float> %i.fp, i64 0
  %i.fr = call float @llvm.fmuladd.f32(float %i.eq, float %i.dg, float %i.fq)
  %i.fs = insertelement <2 x float> %i.fc, float %i.fr, i64 0
  %i.ft = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fb, <2 x float> %i.di, <2 x float> %i.fs)
  %i.fu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fn, <2 x float> %i.dh, <2 x float> %i.ft) ; 2 uses
  %i.fv = extractelement <2 x float> %i.fu, i64 0 ; 2 uses
  %i.fw = extractelement <2 x float> %i.dj, i64 1
  %i.fx = extractelement <4 x float> %i.ep, i64 1
  %i.fy = extractelement <2 x float> %i.fp, i64 1
  %i.fz = call float @llvm.fmuladd.f32(float %i.fx, float %i.fw, float %i.fy)
  %i.ga = extractelement <2 x float> %i.di, i64 1
  %i.gb = extractelement <4 x float> %i.er, i64 1
  %i.gc = call float @llvm.fmuladd.f32(float %i.gb, float %i.ga, float %i.fz)
  %i.gd = shufflevector <4 x float> %i.es, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ge = shufflevector <4 x float> %i.fi, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gf = insertelement <2 x float> %i.ge, float %i.gc, i64 1
  %i.gg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gd, <2 x float> %i.dh, <2 x float> %i.gf) ; 2 uses
  %i.gh = shufflevector <4 x float> %i.es, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.gi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gh, <2 x float> %i.dh, <2 x float> %i.fk) ; 2 uses
  %i.gj = shufflevector <4 x float> %i.es, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.gk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gj, <2 x float> %i.dh, <2 x float> %i.fm) ; 2 uses
  %i.gl = shufflevector <4 x float> %14, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gm = fmul <4 x float> %i.eo, %i.gl
  %i.gn = shufflevector <4 x float> %14, <4 x float> poison, <4 x i32> zeroinitializer
  %i.go = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ep, <4 x float> %i.gn, <4 x float> %i.gm)
  %i.gp = shufflevector <4 x float> %14, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.er, <4 x float> %i.gp, <4 x float> %i.go)
  %i.gr = shufflevector <4 x float> %14, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.gs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.es, <4 x float> %i.gr, <4 x float> %i.gq) ; 2 uses
  %16 = shufflevector <4 x float> %15, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gt = fmul <4 x float> %i.eo, %16
  %17 = shufflevector <4 x float> %15, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ep, <4 x float> %17, <4 x float> %i.gt)
  %18 = shufflevector <4 x float> %15, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.er, <4 x float> %18, <4 x float> %i.gu)
  %19 = shufflevector <4 x float> %15, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.gw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.es, <4 x float> %19, <4 x float> %i.gv) ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0184.0203, i64 16 ; 2 uses
  %.not192 = icmp eq ptr %i.gx, %i.cq
  br i1 %.not192, label %._crit_edge.loopexit, label %.lr.ph

bb.ad:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  %i.gy = load ptr, ptr %i.c, align 8, !nonnull !25, !align !28
  %i.gz = getelementptr inbounds nuw i8, ptr %i.bt, i64 48 ; 2 uses
  %i.ha = load i64, ptr %i.gz, align 8
  invoke void @_ZNK6Assimp3FBX8Document36GetConnectionsByDestinationSequencedEmPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.222") align 8 %11, ptr noundef nonnull align 8 dereferenceable(368) %i.gy, i64 noundef %i.ha, ptr noundef nonnull @.str.1)
          to label %bb.ae unwind label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.hb = load ptr, ptr %i.az, align 8
  %i.hc = load ptr, ptr %11, align 8
  %.not79 = icmp eq ptr %i.hb, %i.hc
  %i.hd = load ptr, ptr %8, align 8               ; 4 uses
  %i.he = load ptr, ptr %i.ai, align 8            ; 3 uses
  %.not.i.i116 = icmp eq ptr %i.he, %i.hd         ; 2 uses
  br i1 %.not79, label %bb.am, label %bb.af

bb.af:                                            ; preds = %bb.ae
  br i1 %.not.i.i116, label %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE5clearEv.exit124, label %.lr.ph210.preheader

.lr.ph210.preheader:                              ; preds = %bb.af
  %.promoted354 = load float, ptr %i.ak, align 4
  %i.hf = load <4 x float>, ptr %i.al, align 4
  %i.hg = load <4 x float>, ptr %i.an, align 4
  %i.hh = load <4 x float>, ptr %i.ar, align 4
  %i.hi = load <4 x float>, ptr %i.av, align 4
  %i.hj = insertelement <4 x float> poison, float %.lcssa200, i64 0
  %i.hk = insertelement <4 x float> %i.hj, float %.promoted354, i64 1
  %i.hl = shufflevector <4 x float> %i.hk, <4 x float> %i.hf, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %.promoted486 = load float, ptr %9, align 1
  %.promoted489 = load float, ptr %i.am, align 1
  %.promoted492 = load <4 x float>, ptr %i.an, align 1
  %.promoted495 = load <4 x float>, ptr %i.ar, align 1
  %.promoted498 = load <4 x float>, ptr %i.av, align 1
  br label %.lr.ph210

bb.ag:                                            ; preds = %._crit_edge
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ah:                                            ; preds = %bb.ad
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph210:                                        ; preds = %.lr.ph210.preheader, %bb.al
  %i.ho = phi <4 x float> [ %i.kr, %bb.al ], [ %.promoted498, %.lr.ph210.preheader ]
  %i.hp = phi <4 x float> [ %i.ki, %bb.al ], [ %.promoted495, %.lr.ph210.preheader ]
  %i.hq = phi <4 x float> [ %i.jz, %bb.al ], [ %.promoted492, %.lr.ph210.preheader ]
  %i.hr = phi float [ %i.ji, %bb.al ], [ %.promoted489, %.lr.ph210.preheader ]
  %i.hs = phi float [ %i.jh, %bb.al ], [ %.promoted486, %.lr.ph210.preheader ]
  %.1208 = phi ptr [ %i.ii, %bb.al ], [ %.061.lcssa, %.lr.ph210.preheader ] ; 4 uses
  %.sroa.0180.0207 = phi ptr [ %i.ks, %bb.al ], [ %i.hd, %.lr.ph210.preheader ] ; 4 uses
  %i.ht = phi <4 x float> [ %i.jg, %bb.al ], [ %i.hl, %.lr.ph210.preheader ] ; 10 uses
  %i.hu = phi <4 x float> [ %i.jz, %bb.al ], [ %i.hg, %.lr.ph210.preheader ] ; 4 uses
  %i.hv = phi <4 x float> [ %i.ki, %bb.al ], [ %i.hh, %.lr.ph210.preheader ] ; 4 uses
  %i.hw = phi <4 x float> [ %i.kr, %bb.al ], [ %i.hi, %.lr.ph210.preheader ] ; 4 uses
  %.not80 = icmp eq ptr %.1208, %2
  br i1 %.not80, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph210
  %i.hx = getelementptr inbounds nuw i8, ptr %.1208, i64 1104
  store i32 1, ptr %i.hx, align 8
  %i.hy = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #30
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.hz = getelementptr inbounds nuw i8, ptr %.1208, i64 1112 ; 2 uses
  store ptr %i.hy, ptr %i.hz, align 8
  %i.ia = load ptr, ptr %.sroa.0180.0207, align 8
  store ptr null, ptr %.sroa.0180.0207, align 8
  %i.ib = load ptr, ptr %i.hz, align 8
  store ptr %i.ia, ptr %i.ib, align 8
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.ic = landingpad { ptr, i32 }
          cleanup
  store float %i.hs, ptr %9, align 1
  store float %i.hr, ptr %i.am, align 1
  store <4 x float> %i.hq, ptr %i.an, align 1
  store <4 x float> %i.hp, ptr %i.ar, align 1
  store <4 x float> %i.ho, ptr %i.av, align 1
  %i.id = extractelement <4 x float> %i.ht, i64 1
  store float %i.id, ptr %i.ak, align 4
  %i.ie = extractelement <4 x float> %i.ht, i64 2
  store float %i.ie, ptr %i.al, align 4
  br label %.loopexit.split-lp

bb.al:                                            ; preds = %.lr.ph210, %bb.aj
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.0180.0207, i64 8 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 1096
  store ptr %.1208, ptr %i.ih, align 8
  %i.ii = load ptr, ptr %i.if, align 8            ; 10 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 1028
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 1044
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 1060
  %i.im = getelementptr inbounds nuw i8, ptr %i.ii, i64 1076
  %i.in = getelementptr inbounds nuw i8, ptr %i.ii, i64 1032
  %i.io = getelementptr inbounds nuw i8, ptr %i.ii, i64 1048
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ii, i64 1064
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ii, i64 1080
  %i.ir = load <4 x float>, ptr %i.ik, align 4    ; 2 uses
  %i.is = load <2 x float>, ptr %i.in, align 4    ; 2 uses
  %i.it = load <2 x float>, ptr %i.io, align 4    ; 2 uses
  %i.iu = load <4 x float>, ptr %i.ij, align 4    ; 2 uses
  %i.iv = shufflevector <4 x float> %i.ht, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.iw = fmul <4 x float> %i.ir, %i.iv
  %i.ix = shufflevector <4 x float> %i.ht, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.iu, <4 x float> %i.ix, <4 x float> %i.iw)
  %i.iz = load <2 x float>, ptr %i.ip, align 4    ; 2 uses
  %i.ja = load <4 x float>, ptr %i.il, align 4    ; 2 uses
  %i.jb = shufflevector <4 x float> %i.ht, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.jc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ja, <4 x float> %i.jb, <4 x float> %i.iy)
  %i.jd = load <2 x float>, ptr %i.iq, align 4    ; 2 uses
  %i.je = load <4 x float>, ptr %i.im, align 4    ; 2 uses
  %i.jf = shufflevector <4 x float> %i.ht, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.jg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.je, <4 x float> %i.jf, <4 x float> %i.jc) ; 3 uses
  %i.jh = extractelement <4 x float> %i.jg, i64 0 ; 2 uses
  %i.ji = extractelement <4 x float> %i.jg, i64 3 ; 2 uses
  %i.jj = shufflevector <2 x float> %i.it, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.jk = shufflevector <4 x float> %i.jj, <4 x float> %i.ir, <4 x i32> <i32 1, i32 7, i32 0, i32 4> ; 3 uses
  %i.jl = shufflevector <4 x float> %i.hu, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.jm = fmul <4 x float> %i.jk, %i.jl
  %i.jn = shufflevector <2 x float> %i.is, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.jo = shufflevector <4 x float> %i.jn, <4 x float> %i.iu, <4 x i32> <i32 1, i32 7, i32 0, i32 4> ; 3 uses
  %i.jp = shufflevector <4 x float> %i.hu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jo, <4 x float> %i.jp, <4 x float> %i.jm)
  %i.jr = shufflevector <2 x float> %i.iz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.js = shufflevector <4 x float> %i.jr, <4 x float> %i.ja, <4 x i32> <i32 1, i32 7, i32 0, i32 4> ; 3 uses
  %i.jt = shufflevector <4 x float> %i.hu, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ju = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.js, <4 x float> %i.jt, <4 x float> %i.jq)
  %i.jv = shufflevector <2 x float> %i.jd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.jw = shufflevector <4 x float> %i.jv, <4 x float> %i.je, <4 x i32> <i32 1, i32 7, i32 0, i32 4> ; 3 uses
  %i.jx = shufflevector <4 x float> %i.hu, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.jy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jw, <4 x float> %i.jx, <4 x float> %i.ju)
  %i.jz = shufflevector <4 x float> %i.jy, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 0, i32 1> ; 3 uses
  %i.ka = shufflevector <4 x float> %i.hv, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.kb = fmul <4 x float> %i.jk, %i.ka
  %i.kc = shufflevector <4 x float> %i.hv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jo, <4 x float> %i.kc, <4 x float> %i.kb)
  %i.ke = shufflevector <4 x float> %i.hv, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.kf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.js, <4 x float> %i.ke, <4 x float> %i.kd)
  %i.kg = shufflevector <4 x float> %i.hv, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.kh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jw, <4 x float> %i.kg, <4 x float> %i.kf)
  %i.ki = shufflevector <4 x float> %i.kh, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 0, i32 1> ; 3 uses
  %i.kj = shufflevector <4 x float> %i.hw, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.kk = fmul <4 x float> %i.jk, %i.kj
  %i.kl = shufflevector <4 x float> %i.hw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.km = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jo, <4 x float> %i.kl, <4 x float> %i.kk)
  %i.kn = shufflevector <4 x float> %i.hw, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ko = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.js, <4 x float> %i.kn, <4 x float> %i.km)
  %i.kp = shufflevector <4 x float> %i.hw, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.kq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jw, <4 x float> %i.kp, <4 x float> %i.ko)
  %i.kr = shufflevector <4 x float> %i.kq, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 0, i32 1> ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.0180.0207, i64 16 ; 2 uses
  %.not193 = icmp eq ptr %i.ks, %i.he
  br i1 %.not193, label %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE5clearEv.exit124.loopexit, label %.lr.ph210

bb.am:                                            ; preds = %bb.ae
  br i1 %.not.i.i116, label %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE5clearEv.exit124, label %.lr.ph.i.i.i.i117

.lr.ph.i.i.i.i117:                                ; preds = %bb.am, %_ZSt8_DestroyIN6Assimp3FBX12FBXConverter13PotentialNodeEEvPT_.exit.i.i.i.i121
  %.05.i.i.i.i118 = phi ptr [ %i.ku, %_ZSt8_DestroyIN6Assimp3FBX12FBXConverter13PotentialNodeEEvPT_.exit.i.i.i.i121 ], [ %i.hd, %bb.am ] ; 2 uses
  %i.kt = load ptr, ptr %.05.i.i.i.i118, align 8  ; 3 uses
  %.not.i.i.i.i.i.i.i119 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i.i.i.i.i.i119, label %_ZSt8_DestroyIN6Assimp3FBX12FBXConverter13PotentialNodeEEvPT_.exit.i.i.i.i121, label %_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i.i.i.i.i.i.i120

_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i.i.i.i.i.i.i120: ; preds = %.lr.ph.i.i.i.i117
  call void @_ZN6aiNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(1144) dereferenceable(1144) %i.kt) #27
  call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef 1144) #29
  br label %_ZSt8_DestroyIN6Assimp3FBX12FBXConverter13PotentialNodeEEvPT_.exit.i.i.i.i121

_ZSt8_DestroyIN6Assimp3FBX12FBXConverter13PotentialNodeEEvPT_.exit.i.i.i.i121: ; preds = %_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i.i.i.i.i.i.i120, %.lr.ph.i.i.i.i117
  %i.ku = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i118, i64 16 ; 2 uses
  %.not.i.i.i.i122 = icmp eq ptr %i.ku, %i.he
  br i1 %.not.i.i.i.i122, label %_ZSt8_DestroyIPN6Assimp3FBX12FBXConverter13PotentialNodeES3_EvT_S5_RSaIT0_E.exit.i.i123, label %.lr.ph.i.i.i.i117, !llvm.loop !8

_ZSt8_DestroyIPN6Assimp3FBX12FBXConverter13PotentialNodeES3_EvT_S5_RSaIT0_E.exit.i.i123: ; preds = %_ZSt8_DestroyIN6Assimp3FBX12FBXConverter13PotentialNodeEEvPT_.exit.i.i.i.i121
  store ptr %i.hd, ptr %i.ai, align 8
  br label %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE5clearEv.exit124

_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE5clearEv.exit124.loopexit: ; preds = %bb.al
  store float %i.jh, ptr %9, align 1
  store float %i.ji, ptr %i.am, align 1
  store <4 x float> %i.jz, ptr %i.an, align 1
  store <4 x float> %i.ki, ptr %i.ar, align 1
  store <4 x float> %i.kr, ptr %i.av, align 1
  %i.kv = shufflevector <4 x float> %i.ht, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.kw = shufflevector <4 x float> %i.ht, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.kx = shufflevector <4 x float> %i.ht, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ky = shufflevector <4 x float> %i.ht, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.kz = fmul <2 x float> %i.ky, %i.it
  %i.la = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.is, <2 x float> %i.kx, <2 x float> %i.kz)
  %i.lb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iz, <2 x float> %i.kw, <2 x float> %i.la)
  %i.lc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jd, <2 x float> %i.kv, <2 x float> %i.lb)
end_hunk_0
