Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/GeometryUtils?download=true
inline.NumInlined: 1537
inline.NumDeleted: 798
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE17_M_initialize_mapEm:_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE15_M_allocate_mapEm.exit
  %i.r = icmp ult ptr %i.j, %.011.i
  br i1 %i.r, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %i.j, %bb.a ] ; 2 uses
  %i.s = load ptr, ptr %.06.i.i, align 8, !tbaa !26
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef 512) #27
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.u = icmp ult ptr %i.t, %.011.i
  br i1 %i.u, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i, !llvm.loop !0

_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  invoke void @__cxa_rethrow() #25
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #29
  unreachable

bb.d:                                             ; preds = %_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i
  unreachable

.body:                                            ; preds = %bb.b
  %i.y = extractvalue { ptr, i32 } %i.v, 0
  %i.z = tail call ptr @__cxa_begin_catch(ptr %i.y) #26 ; 0 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !23
  %i.ab = load i64, ptr %i.d, align 8, !tbaa !28
  %i.ac = shl i64 %i.ab, 3
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ac) #27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #25
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %.body
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ad

_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE15_M_create_nodesEPPS4_S8_.exit: ; preds = %_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE16_M_allocate_nodeEv.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.j, ptr %i.af, align 8, !tbaa !31
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !26  ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !30
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 512
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !34
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = getelementptr inbounds i8, ptr %i.k, i64 -8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.al, ptr %i.am, align 8, !tbaa !31
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !26 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !30
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 512
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !34
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !256
  %i.ar = and i64 %1, 63
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ar
  store ptr %i.as, ptr %i.ak, align 8, !tbaa !21
  ret void

bb.g:                                             ; preds = %bb.e
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #29
  unreachable

bb.h:                                             ; preds = %.body
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #15 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #26 ; 0 uses
  tail call void @_ZSt9terminatev() #29
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #17

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4geos9algorithm16BoundaryNodeRule19getBoundaryRuleMod2Ev() local_unnamed_addr #5

declare void @_ZN4geos4geom15GeometryFactory6createEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.112") align 8) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN8facebook5velox9functions10geospatial12_GLOBAL__N_127getRawTilesCoveringGeometryERKN4geos4geom8GeometryEiE3$_0ET0_T_SJ_SI_"(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree readonly captures(address) %1, ptr nofree readnone captures(address) %2, ptr nofree noundef readonly byval(%class.anon.135) align 8 captures(none) %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.facebook::velox::functions::geospatial::(anonymous namespace)::TilingEntry", align 16 ; 10 uses
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre = load ptr, ptr %3, align 8, !tbaa !264
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %"_ZZN8facebook5velox9functions10geospatial12_GLOBAL__N_127getRawTilesCoveringGeometryERKN4geos4geom8GeometryEiENK3$_0clEl.exit"
  %.sroa.01.08 = phi ptr [ %1, %.lr.ph ], [ %i.fl, %"_ZZN8facebook5velox9functions10geospatial12_GLOBAL__N_127getRawTilesCoveringGeometryERKN4geos4geom8GeometryEiENK3$_0clEl.exit" ] ; 2 uses
  %i.g = load i64, ptr %.sroa.01.08, align 8, !tbaa !50 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.h = load ptr, ptr %.pre, align 8, !tbaa !105
  store i64 %i.g, ptr %4, align 16, !tbaa !100
  call void @llvm.experimental.noalias.scope.decl(metadata !265)
  %i.i = lshr i64 %i.g, 26
  %i.j = trunc i64 %i.i to i8
  %i.k = and i8 %i.j, 63                          ; 4 uses
  %i.l = lshr i64 %i.g, 32
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = and i32 %i.m, 16777215                   ; 2 uses
  %i.o = trunc i64 %i.g to i32
  %i.p = and i32 %i.o, 16777215                   ; 2 uses
  %i.q = call noundef double @_ZN8facebook5velox12BingTileType16tileXToLongitudeEjh(i32 noundef %i.n, i8 noundef zeroext %i.k), !noalias !265
  %i.r = add nuw nsw i32 %i.n, 1
  %i.s = call noundef double @_ZN8facebook5velox12BingTileType16tileXToLongitudeEjh(i32 noundef %i.r, i8 noundef zeroext %i.k), !noalias !265
  %i.t = call noundef double @_ZN8facebook5velox12BingTileType15tileYToLatitudeEjh(i32 noundef %i.p, i8 noundef zeroext %i.k), !noalias !265
  %i.u = add nuw nsw i32 %i.p, 1
  %i.v = call noundef double @_ZN8facebook5velox12BingTileType15tileYToLatitudeEjh(i32 noundef %i.u, i8 noundef zeroext %i.k), !noalias !265
  call void @llvm.experimental.noalias.scope.decl(metadata !266)
  %i.w = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28, !noalias !267 ; 3 uses
  %i.x = insertelement <2 x double> poison, double %i.q, i64 0
  %i.y = insertelement <2 x double> %i.x, double %i.t, i64 1 ; 3 uses
  %i.z = insertelement <2 x double> poison, double %i.s, i64 0
  %i.aa = insertelement <2 x double> %i.z, double %i.v, i64 1 ; 3 uses
  %i.ab = fcmp olt <2 x double> %i.y, %i.aa
  %i.ac = shufflevector <2 x i1> %i.ab, <2 x i1> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ad = shufflevector <2 x double> %i.aa, <2 x double> %i.y, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ae = shufflevector <2 x double> %i.y, <2 x double> %i.aa, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.af = select <4 x i1> %i.ac, <4 x double> %i.ad, <4 x double> %i.ae
  %i.ag = shufflevector <4 x double> %i.af, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x double> %i.ag, ptr %i.w, align 8, !tbaa !44, !noalias !267
  store ptr %i.w, ptr %i.b, align 8, !tbaa !61, !alias.scope !267
  invoke void @_ZNK4geos4geom15GeometryFactory10toGeometryEPKNS0_8EnvelopeE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.136") align 8 %i.c, ptr noundef nonnull align 8 dereferenceable(45) %i.h, ptr noundef nonnull %i.w)
          to label %_ZN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryC2ElPN4geos4geom15GeometryFactoryE.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !61  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i, label %common.resume.i, label %_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i.i.i: ; preds = %bb.c
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef 32) #27
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.ad, %_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i.i.i, %bb.c
  %common.resume.op.i = phi { ptr, i32 } [ %lpad.phi, %bb.ad ], [ %i.ah, %_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i.i.i ], [ %i.ah, %bb.c ]
  resume { ptr, i32 } %common.resume.op.i

_ZN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryC2ElPN4geos4geom15GeometryFactoryE.exit.i: ; preds = %bb.b
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !268, !nonnull !65, !align !269
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !61 ; 2 uses
  %.val.i = load double, ptr %i.ak, align 8
  %.val4.i = load i64, ptr %4, align 16, !tbaa !100 ; 3 uses
  %.val5.i = load ptr, ptr %i.b, align 8          ; 2 uses
  %5 = lshr i64 %.val4.i, 26
  %i.al = trunc i64 %5 to i32
  %6 = and i32 %i.al, 63
  %notmask.i.i = shl nsw i32 -1, %6
  %i.am = xor i32 %notmask.i.i, -1                ; 2 uses
  %7 = trunc i64 %.val4.i to i32
  %i.an = and i32 %7, 16777215
  %i.ao = icmp samesign ult i32 %i.an, %i.am
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryC2ElPN4geos4geom15GeometryFactoryE.exit.i
  %i.ap = getelementptr i8, ptr %i.ak, i64 24
  %.val3.i = load double, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.val5.i, i64 16
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !107
  %i.as = fcmp oeq double %.val3.i, %i.ar
  br i1 %i.as, label %_ZN8facebook5velox9functions10geospatial12_GLOBAL__N_126satisfiesTileEdgeConditionERKN4geos4geom8EnvelopeERKNS3_11TilingEntryE.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryC2ElPN4geos4geom15GeometryFactoryE.exit.i
  %i.at = lshr i64 %.val4.i, 32
  %i.au = trunc nuw i64 %i.at to i32
  %i.av = and i32 %i.au, 16777215
  %i.aw = icmp samesign ult i32 %i.av, %i.am
  br i1 %i.aw, label %bb.f, label %_ZN8facebook5velox9functions10geospatial12_GLOBAL__N_126satisfiesTileEdgeConditionERKN4geos4geom8EnvelopeERKNS3_11TilingEntryE.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !108
  %i.az = fcmp oeq double %.val.i, %i.ay
  br i1 %i.az, label %_ZN8facebook5velox9functions10geospatial12_GLOBAL__N_126satisfiesTileEdgeConditionERKN4geos4geom8EnvelopeERKNS3_11TilingEntryE.exit.thread.i, label %_ZN8facebook5velox9functions10geospatial12_GLOBAL__N_126satisfiesTileEdgeConditionERKN4geos4geom8EnvelopeERKNS3_11TilingEntryE.exit.i

_ZN8facebook5velox9functions10geospatial12_GLOBAL__N_126satisfiesTileEdgeConditionERKN4geos4geom8EnvelopeERKNS3_11TilingEntryE.exit.i: ; preds = %bb.f, %bb.e
  %i.ba = load ptr, ptr %i.e, align 8, !tbaa !270, !nonnull !65, !align !269
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !103 ; 2 uses
  %i.bc = load ptr, ptr %i.c, align 16, !tbaa !13
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !33
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = invoke noundef zeroext i1 %i.bf(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef %i.bc)
          to label %bb.g unwind label %.loopexit

bb.g:                                             ; preds = %_ZN8facebook5velox9functions10geospatial12_GLOBAL__N_126satisfiesTileEdgeConditionERKN4geos4geom8EnvelopeERKNS3_11TilingEntryE.exit.i
  br i1 %i.bg, label %bb.h, label %_ZN8facebook5velox9functions10geospatial12_GLOBAL__N_126satisfiesTileEdgeConditionERKN4geos4geom8EnvelopeERKNS3_11TilingEntryE.exit.thread.i

bb.h:                                             ; preds = %bb.g
  %i.bh = load ptr, ptr %i.f, align 8, !tbaa !271, !nonnull !65, !align !269 ; 12 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 48 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !77 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 64 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !272
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -24
  %.not.i.i.i.i = icmp eq ptr %i.bj, %i.bm
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 56 ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.ac

bb.i:                                             ; preds = %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 72 ; 5 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !74 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 40 ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !74 ; 6 uses
  %i.bt = ptrtoint ptr %i.bq to i64               ; 2 uses
  %i.bu = ptrtoint ptr %i.bs to i64               ; 3 uses
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = ashr exact i64 %i.bv, 3                 ; 4 uses
  %i.bx = icmp ne ptr %i.bq, null
  %.neg.i.i.i.i.i.i.i = sext i1 %i.bx to i64
  %i.by = add nsw i64 %i.bw, %.neg.i.i.i.i.i.i.i
  %i.bz = mul nsw i64 %i.by, 21
  %i.ca = load ptr, ptr %i.bn, align 8, !tbaa !75
  %i.cb = ptrtoint ptr %i.bj to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = sdiv exact i64 %i.cd, 24
  %i.cf = add nsw i64 %i.bz, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bh, i64 32 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !76
  %i.ci = load ptr, ptr %i.bo, align 8, !tbaa !86
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = sdiv exact i64 %i.cl, 24
  %i.cn = add nsw i64 %i.cf, %i.cm
  %i.co = icmp eq i64 %i.cn, 768614336404564650
  br i1 %i.co, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #25
          to label %.noexc.i unwind label %.loopexit.split-lp

.noexc.i:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 3 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !71 ; 5 uses
  %i.cr = load ptr, ptr %i.bh, align 8, !tbaa !72 ; 2 uses
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = sub i64 %i.bt, %i.cs
  %i.cu = ashr exact i64 %i.ct, 3
  %i.cv = sub i64 %i.cq, %i.cu
  %i.cw = icmp ult i64 %i.cv, 2
  br i1 %i.cw, label %bb.l, label %.thread.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.cx = add nsw i64 %i.bw, 1                    ; 2 uses
  %i.cy = add nsw i64 %i.bw, 2                    ; 2 uses
  %i.cz = shl nsw i64 %i.cy, 1
  %i.da = icmp ugt i64 %i.cq, %i.cz
  br i1 %i.da, label %bb.m, label %bb.v

bb.m:                                             ; preds = %bb.l
  %i.db = sub i64 %i.cq, %i.cy
  %i.dc = lshr i64 %i.db, 1
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.dc ; 10 uses
  %i.de = icmp ult ptr %i.dd, %i.bs
  %i.df = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  br i1 %i.de, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = sub i64 %i.dg, %i.bu                    ; 3 uses
  %i.di = icmp sgt i64 %i.dh, 8
  br i1 %i.di, label %bb.o, label %bb.p, !prof !120

bb.o:                                             ; preds = %bb.n
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.dd, ptr nonnull align 8 %i.bs, i64 %i.dh, i1 false)
  br label %_ZNSt5dequeIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryESaIS5_EE17_M_reallocate_mapEmb.exit.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.dj = icmp eq i64 %i.dh, 8
  br i1 %i.dj, label %bb.q, label %_ZNSt5dequeIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryESaIS5_EE17_M_reallocate_mapEmb.exit.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bs, align 8, !tbaa !73
  store ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.dd, align 8, !tbaa !73
  br label %_ZNSt5dequeIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryESaIS5_EE17_M_reallocate_mapEmb.exit.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.m
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.cx ; 2 uses
  %i.dl = ptrtoint ptr %i.df to i64
  %i.dm = sub i64 %i.dl, %i.bu                    ; 3 uses
  %i.dn = ashr exact i64 %i.dm, 3                 ; 2 uses
  %i.do = icmp sgt i64 %i.dn, 1
  br i1 %i.do, label %bb.s, label %bb.t, !prof !120

bb.s:                                             ; preds = %bb.r
  %i.dp = sub nsw i64 0, %i.dn
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.dp
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dq, ptr align 8 %i.bs, i64 %i.dm, i1 false)
  br label %_ZNSt5dequeIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryESaIS5_EE17_M_reallocate_mapEmb.exit.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.dr = icmp eq i64 %i.dm, 8
  br i1 %i.dr, label %bb.u, label %_ZNSt5dequeIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryESaIS5_EE17_M_reallocate_mapEmb.exit.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.ds = getelementptr inbounds i8, ptr %i.dk, i64 -8
  %.val.i.i.i.i.i24.i.i.i.i.i.i.i = load ptr, ptr %i.bs, align 8, !tbaa !73
  store ptr %.val.i.i.i.i.i24.i.i.i.i.i.i.i, ptr %i.ds, align 8, !tbaa !73
  br label %_ZNSt5dequeIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryESaIS5_EE17_M_reallocate_mapEmb.exit.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.l
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cq, i64 1)
  %i.dt = add i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.cq ; 2 uses
  %i.du = add i64 %i.dt, 2                        ; 4 uses
  %i.dv = icmp ugt i64 %i.du, 1152921504606846975
  br i1 %i.dv, label %bb.w, label %_ZNSt11_Deque_baseIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryESaIS5_EE15_M_allocate_mapEm.exit.i.i.i.i.i.i.i, !prof !56

bb.w:                                             ; preds = %bb.v
  %i.dw = icmp ugt i64 %i.du, 2305843009213693951
  br i1 %i.dw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc6.i unwind label %.loopexit.split-lp

.noexc6.i:                                        ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.w
  invoke void @_ZSt17__throw_bad_allocv() #25
          to label %.noexc7.i unwind label %.loopexit.split-lp

.noexc7.i:                                        ; preds = %bb.y
  unreachable

_ZNSt11_Deque_baseIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryESaIS5_EE15_M_allocate_mapEm.exit.i.i.i.i.i.i.i: ; preds = %bb.v
  %i.dx = shl nuw nsw i64 %i.du, 3
  %i.dy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dx) #28
          to label %.noexc8.i unwind label %.loopexit ; 2 uses

.noexc8.i:                                        ; preds = %_ZNSt11_Deque_baseIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryESaIS5_EE15_M_allocate_mapEm.exit.i.i.i.i.i.i.i
  %i.dz = sub nsw i64 %i.dt, %i.bw
  %i.ea = lshr i64 %i.dz, 1
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.ea ; 3 uses
  %i.ec = load ptr, ptr %i.br, align 8, !tbaa !126 ; 3 uses
  %i.ed = load ptr, ptr %i.bp, align 8, !tbaa !101
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = ptrtoint ptr %i.ec to i64
  %i.eh = sub i64 %i.ef, %i.eg                    ; 3 uses
  %i.ei = icmp sgt i64 %i.eh, 8
  br i1 %i.ei, label %bb.z, label %bb.aa, !prof !120

bb.z:                                             ; preds = %.noexc8.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eb, ptr align 8 %i.ec, i64 %i.eh, i1 false)
end_hunk_0
