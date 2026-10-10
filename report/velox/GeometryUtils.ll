Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/GeometryUtils?download=true
inline.NumInlined: 1537
inline.NumDeleted: 798
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE17_M_initialize_mapEm:_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE15_M_allocate_mapEm.exit
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
  %.sroa.01.08 = phi ptr [ %1, %.lr.ph ], [ %i.fj, %"_ZZN8facebook5velox9functions10geospatial12_GLOBAL__N_127getRawTilesCoveringGeometryERKN4geos4geom8GeometryEiENK3$_0clEl.exit" ] ; 2 uses
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
  %.val4.i = load i64, ptr %4, align 16, !tbaa !100 ; 2 uses
  %.val5.i = load ptr, ptr %i.b, align 8          ; 2 uses
  %i.al = trunc i64 %.val4.i to i32               ; 2 uses
  %i.am = lshr i32 %i.al, 26
  %notmask.i.i = shl nsw i32 -1, %i.am
  %i.an = xor i32 %notmask.i.i, -1                ; 2 uses
  %i.ao = and i32 %i.al, 16777215
  %i.ap = icmp samesign ult i32 %i.ao, %i.an
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryC2ElPN4geos4geom15GeometryFactoryE.exit.i
  %i.aq = getelementptr i8, ptr %i.ak, i64 24
  %.val3.i = load double, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.val5.i, i64 16
  %i.as = load double, ptr %i.ar, align 8, !tbaa !107
  %i.at = fcmp oeq double %.val3.i, %i.as
  br i1 %i.at, label %_ZN8facebook5velox9functions10geospatial12_GLOBAL__N_126satisfiesTileEdgeConditionERKN4geos4geom8EnvelopeERKNS3_11TilingEntryE.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryC2ElPN4geos4geom15GeometryFactoryE.exit.i
  %i.au = lshr i64 %.val4.i, 32
  %i.av = trunc nuw i64 %i.au to i32
  %i.aw = and i32 %i.av, 16777215
  %i.ax = icmp samesign ult i32 %i.aw, %i.an
  br i1 %i.ax, label %bb.f, label %_ZN8facebook5velox9functions10geospatial12_GLOBAL__N_126satisfiesTileEdgeConditionERKN4geos4geom8EnvelopeERKNS3_11TilingEntryE.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8
  %i.az = load double, ptr %i.ay, align 8, !tbaa !108
  %i.ba = fcmp oeq double %.val.i, %i.az
  br i1 %i.ba, label %_ZN8facebook5velox9functions10geospatial12_GLOBAL__N_126satisfiesTileEdgeConditionERKN4geos4geom8EnvelopeERKNS3_11TilingEntryE.exit.thread.i, label %_ZN8facebook5velox9functions10geospatial12_GLOBAL__N_126satisfiesTileEdgeConditionERKN4geos4geom8EnvelopeERKNS3_11TilingEntryE.exit.i

_ZN8facebook5velox9functions10geospatial12_GLOBAL__N_126satisfiesTileEdgeConditionERKN4geos4geom8EnvelopeERKNS3_11TilingEntryE.exit.i: ; preds = %bb.f, %bb.e
  %i.bb = load ptr, ptr %i.e, align 8, !tbaa !270, !nonnull !65, !align !269
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !103 ; 2 uses
  %i.bd = load ptr, ptr %i.c, align 16, !tbaa !13
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !33
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef %i.bd)
          to label %bb.g unwind label %.loopexit

bb.g:                                             ; preds = %_ZN8facebook5velox9functions10geospatial12_GLOBAL__N_126satisfiesTileEdgeConditionERKN4geos4geom8EnvelopeERKNS3_11TilingEntryE.exit.i
  br i1 %i.bh, label %bb.h, label %_ZN8facebook5velox9functions10geospatial12_GLOBAL__N_126satisfiesTileEdgeConditionERKN4geos4geom8EnvelopeERKNS3_11TilingEntryE.exit.thread.i

bb.h:                                             ; preds = %bb.g
  %i.bi = load ptr, ptr %i.f, align 8, !tbaa !271, !nonnull !65, !align !269 ; 12 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 48 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !77 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 64 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !272
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -24
  %.not.i.i.i.i = icmp eq ptr %i.bk, %i.bn
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 56 ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.ac

bb.i:                                             ; preds = %bb.h
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 72 ; 5 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !74 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 40 ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !74 ; 6 uses
  %i.bu = ptrtoint ptr %i.br to i64               ; 2 uses
  %i.bv = ptrtoint ptr %i.bt to i64               ; 3 uses
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 3                 ; 4 uses
  %i.by = icmp ne ptr %i.br, null
  %.neg.i.i.i.i.i.i.i = sext i1 %i.by to i64
  %i.bz = add nsw i64 %i.bx, %.neg.i.i.i.i.i.i.i
  %i.ca = mul nsw i64 %i.bz, 21
  %i.cb = load ptr, ptr %i.bo, align 8, !tbaa !75
  %i.cc = ptrtoint ptr %i.bk to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = sdiv exact i64 %i.ce, 24
  %i.cg = add nsw i64 %i.ca, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bi, i64 32 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !76
  %i.cj = load ptr, ptr %i.bp, align 8, !tbaa !86
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = sdiv exact i64 %i.cm, 24
  %i.co = add nsw i64 %i.cg, %i.cn
  %i.cp = icmp eq i64 %i.co, 768614336404564650
  br i1 %i.cp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #25
          to label %.noexc.i unwind label %.loopexit.split-lp

.noexc.i:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 3 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !71 ; 5 uses
  %i.cs = load ptr, ptr %i.bi, align 8, !tbaa !72 ; 2 uses
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = sub i64 %i.bu, %i.ct
  %i.cv = ashr exact i64 %i.cu, 3
  %i.cw = sub i64 %i.cr, %i.cv
  %i.cx = icmp ult i64 %i.cw, 2
  br i1 %i.cx, label %bb.l, label %.thread.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.cy = add nsw i64 %i.bx, 1                    ; 2 uses
  %i.cz = add nsw i64 %i.bx, 2                    ; 2 uses
  %i.da = shl nsw i64 %i.cz, 1
  %i.db = icmp ugt i64 %i.cr, %i.da
  br i1 %i.db, label %bb.m, label %bb.v

bb.m:                                             ; preds = %bb.l
  %i.dc = sub i64 %i.cr, %i.cz
  %i.dd = lshr i64 %i.dc, 1
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.dd ; 10 uses
  %i.df = icmp ult ptr %i.de, %i.bt
  %i.dg = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  br i1 %i.df, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = sub i64 %i.dh, %i.bv                    ; 3 uses
  %i.dj = icmp sgt i64 %i.di, 8
  br i1 %i.dj, label %bb.o, label %bb.p, !prof !120

bb.o:                                             ; preds = %bb.n
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.de, ptr nonnull align 8 %i.bt, i64 %i.di, i1 false)
  br label %_ZNSt5dequeIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryESaIS5_EE17_M_reallocate_mapEmb.exit.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.dk = icmp eq i64 %i.di, 8
  br i1 %i.dk, label %bb.q, label %_ZNSt5dequeIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryESaIS5_EE17_M_reallocate_mapEmb.exit.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bt, align 8, !tbaa !73
  store ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.de, align 8, !tbaa !73
  br label %_ZNSt5dequeIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryESaIS5_EE17_M_reallocate_mapEmb.exit.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.m
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.cy ; 2 uses
  %i.dm = ptrtoint ptr %i.dg to i64
  %i.dn = sub i64 %i.dm, %i.bv                    ; 3 uses
  %i.do = ashr exact i64 %i.dn, 3                 ; 2 uses
  %i.dp = icmp sgt i64 %i.do, 1
  br i1 %i.dp, label %bb.s, label %bb.t, !prof !120

bb.s:                                             ; preds = %bb.r
  %i.dq = sub nsw i64 0, %i.do
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.dq
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dr, ptr align 8 %i.bt, i64 %i.dn, i1 false)
  br label %_ZNSt5dequeIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryESaIS5_EE17_M_reallocate_mapEmb.exit.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.ds = icmp eq i64 %i.dn, 8
  br i1 %i.ds, label %bb.u, label %_ZNSt5dequeIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryESaIS5_EE17_M_reallocate_mapEmb.exit.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.dt = getelementptr inbounds i8, ptr %i.dl, i64 -8
  %.val.i.i.i.i.i24.i.i.i.i.i.i.i = load ptr, ptr %i.bt, align 8, !tbaa !73
  store ptr %.val.i.i.i.i.i24.i.i.i.i.i.i.i, ptr %i.dt, align 8, !tbaa !73
  br label %_ZNSt5dequeIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryESaIS5_EE17_M_reallocate_mapEmb.exit.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.l
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cr, i64 1)
  %i.du = add i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.cr ; 2 uses
  %i.dv = add i64 %i.du, 2                        ; 4 uses
  %i.dw = icmp ugt i64 %i.dv, 1152921504606846975
  br i1 %i.dw, label %bb.w, label %_ZNSt11_Deque_baseIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryESaIS5_EE15_M_allocate_mapEm.exit.i.i.i.i.i.i.i, !prof !56

bb.w:                                             ; preds = %bb.v
  %i.dx = icmp ugt i64 %i.dv, 2305843009213693951
  br i1 %i.dx, label %bb.x, label %bb.y

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
  %i.dy = shl nuw nsw i64 %i.dv, 3
  %i.dz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dy) #28
          to label %.noexc8.i unwind label %.loopexit ; 2 uses

.noexc8.i:                                        ; preds = %_ZNSt11_Deque_baseIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryESaIS5_EE15_M_allocate_mapEm.exit.i.i.i.i.i.i.i
  %i.ea = sub nsw i64 %i.du, %i.bx
  %i.eb = lshr i64 %i.ea, 1
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.eb ; 3 uses
  %i.ed = load ptr, ptr %i.bs, align 8, !tbaa !126 ; 3 uses
  %i.ee = load ptr, ptr %i.bq, align 8, !tbaa !101
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = ptrtoint ptr %i.ed to i64
  %i.ei = sub i64 %i.eg, %i.eh                    ; 3 uses
  %i.ej = icmp sgt i64 %i.ei, 8
  br i1 %i.ej, label %bb.z, label %bb.aa, !prof !120

bb.z:                                             ; preds = %.noexc8.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ec, ptr align 8 %i.ed, i64 %i.ei, i1 false)
  br label %_ZSt4copyIPPN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryES7_ET0_T_S9_S8_.exit26.i.i.i.i.i.i.i

bb.aa:                                            ; preds = %.noexc8.i
  %i.ek = icmp eq i64 %i.ei, 8
  br i1 %i.ek, label %bb.ab, label %_ZSt4copyIPPN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryES7_ET0_T_S9_S8_.exit26.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %.val.i.i.i.i.i25.i.i.i.i.i.i.i = load ptr, ptr %i.ed, align 8, !tbaa !73
  store ptr %.val.i.i.i.i.i25.i.i.i.i.i.i.i, ptr %i.ec, align 8, !tbaa !73
  br label %_ZSt4copyIPPN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryES7_ET0_T_S9_S8_.exit26.i.i.i.i.i.i.i

_ZSt4copyIPPN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryES7_ET0_T_S9_S8_.exit26.i.i.i.i.i.i.i: ; preds = %bb.ab, %bb.aa, %bb.z
  %i.el = load ptr, ptr %i.bi, align 8, !tbaa !72
  %i.em = load i64, ptr %i.cq, align 8, !tbaa !71
  %i.en = shl i64 %i.em, 3
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.en) #27
  store ptr %i.dz, ptr %i.bi, align 8, !tbaa !72
  store i64 %i.dv, ptr %i.cq, align 8, !tbaa !71
  br label %_ZNSt5dequeIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryESaIS5_EE17_M_reallocate_mapEmb.exit.i.i.i.i.i.i

_ZNSt5dequeIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryESaIS5_EE17_M_reallocate_mapEmb.exit.i.i.i.i.i.i: ; preds = %_ZSt4copyIPPN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryES7_ET0_T_S9_S8_.exit26.i.i.i.i.i.i.i, %bb.u, %bb.t, %bb.s, %bb.q, %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.ec, %_ZSt4copyIPPN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryES7_ET0_T_S9_S8_.exit26.i.i.i.i.i.i.i ], [ %i.de, %bb.q ], [ %i.de, %bb.o ], [ %i.de, %bb.p ], [ %i.de, %bb.s ], [ %i.de, %bb.t ], [ %i.de, %bb.u ] ; 3 uses
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.bs, align 8, !tbaa !74
  %5 = load ptr, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !73 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store ptr %5, ptr %i.eo, align 8, !tbaa !75
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 504
  store ptr %6, ptr %i.ch, align 8, !tbaa !76
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i.i.i, i64 %i.cy
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 -8 ; 2 uses
  store ptr %i.eq, ptr %i.bq, align 8, !tbaa !74
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !73 ; 2 uses
  store ptr %i.er, ptr %i.bo, align 8, !tbaa !75
  %7 = getelementptr inbounds nuw i8, ptr %i.er, i64 504
  store ptr %7, ptr %i.bl, align 8, !tbaa !76
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %_ZNSt5dequeIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryESaIS5_EE17_M_reallocate_mapEmb.exit.i.i.i.i.i.i, %bb.k
  %i.es = invoke noalias noundef nonnull dereferenceable(504) ptr @_Znwm(i64 noundef 504) #28
          to label %.noexc9.i unwind label %.loopexit ; 4 uses

.noexc9.i:                                        ; preds = %.thread.i.i.i.i
  %i.et = load ptr, ptr %i.bq, align 8, !tbaa !101
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 2 uses
  store ptr %i.es, ptr %i.eu, align 8, !tbaa !73
  %i.ev = load ptr, ptr %i.bj, align 8, !tbaa !77 ; 2 uses
  %i.ew = load <2 x i64>, ptr %4, align 16, !tbaa !41
  store <2 x i64> %i.ew, ptr %i.ev, align 8, !tbaa !41
  store ptr null, ptr %i.b, align 8, !tbaa !61
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ey = load i64, ptr %i.c, align 16, !tbaa !13
  store i64 %i.ey, ptr %i.ex, align 8, !tbaa !13
  store ptr null, ptr %i.c, align 16, !tbaa !13
  store ptr %i.eu, ptr %i.bq, align 8, !tbaa !74
  store ptr %i.es, ptr %i.bo, align 8, !tbaa !75
  %i.ez = getelementptr inbounds nuw i8, ptr %i.es, i64 504
  store ptr %i.ez, ptr %i.bl, align 8, !tbaa !76
  br label %_ZNSt5stackIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit.i

bb.ac:                                            ; preds = %bb.h
  %i.fa = load <2 x i64>, ptr %4, align 16, !tbaa !41
  store <2 x i64> %i.fa, ptr %i.bk, align 8, !tbaa !41
  store ptr null, ptr %i.b, align 8, !tbaa !61
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.fc = load i64, ptr %i.c, align 16, !tbaa !13
  store i64 %i.fc, ptr %i.fb, align 8, !tbaa !13
  store ptr null, ptr %i.c, align 16, !tbaa !13
  %i.fd = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  br label %_ZNSt5stackIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit.i

_ZNSt5stackIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit.i: ; preds = %bb.ac, %.noexc9.i
  %storemerge.i.i.i = phi ptr [ %i.fd, %bb.ac ], [ %i.es, %.noexc9.i ]
  store ptr %storemerge.i.i.i, ptr %i.bj, align 8, !tbaa !77
  br label %_ZN8facebook5velox9functions10geospatial12_GLOBAL__N_126satisfiesTileEdgeConditionERKN4geos4geom8EnvelopeERKNS3_11TilingEntryE.exit.thread.i

.loopexit:                                        ; preds = %_ZN8facebook5velox9functions10geospatial12_GLOBAL__N_126satisfiesTileEdgeConditionERKN4geos4geom8EnvelopeERKNS3_11TilingEntryE.exit.i, %_ZNSt11_Deque_baseIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryESaIS5_EE15_M_allocate_mapEm.exit.i.i.i.i.i.i.i, %.thread.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit.split-lp:                               ; preds = %bb.j, %bb.x, %bb.y
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call fastcc void @_ZN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %common.resume.i

_ZN8facebook5velox9functions10geospatial12_GLOBAL__N_126satisfiesTileEdgeConditionERKN4geos4geom8EnvelopeERKNS3_11TilingEntryE.exit.thread.i: ; preds = %_ZNSt5stackIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit.i, %bb.g, %bb.f, %bb.d
  %i.fe = load ptr, ptr %i.c, align 16, !tbaa !13 ; 3 uses
  %.not.i.i10.i = icmp eq ptr %i.fe, null
  br i1 %.not.i.i10.i, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i: ; preds = %_ZN8facebook5velox9functions10geospatial12_GLOBAL__N_126satisfiesTileEdgeConditionERKN4geos4geom8EnvelopeERKNS3_11TilingEntryE.exit.thread.i
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !33
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(40) %i.fe) #26, !inline_history !261
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i, %_ZN8facebook5velox9functions10geospatial12_GLOBAL__N_126satisfiesTileEdgeConditionERKN4geos4geom8EnvelopeERKNS3_11TilingEntryE.exit.thread.i
  %i.fi = load ptr, ptr %i.b, align 8, !tbaa !61  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.fi, null
  br i1 %.not.i1.i.i, label %"_ZZN8facebook5velox9functions10geospatial12_GLOBAL__N_127getRawTilesCoveringGeometryERKN4geos4geom8GeometryEiENK3$_0clEl.exit", label %_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i.i11.i

_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i.i11.i: ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fi, i64 noundef 32) #27
  br label %"_ZZN8facebook5velox9functions10geospatial12_GLOBAL__N_127getRawTilesCoveringGeometryERKN4geos4geom8GeometryEiENK3$_0clEl.exit"

"_ZZN8facebook5velox9functions10geospatial12_GLOBAL__N_127getRawTilesCoveringGeometryERKN4geos4geom8GeometryEiENK3$_0clEl.exit": ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.i.i, %_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i.i11.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.01.08, i64 8 ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %2
  br i1 %i.fk, label %._crit_edge, label %bb.b, !llvm.loop !262

._crit_edge:                                      ; preds = %"_ZZN8facebook5velox9functions10geospatial12_GLOBAL__N_127getRawTilesCoveringGeometryERKN4geos4geom8GeometryEiENK3$_0clEl.exit", %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !273
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #26, !inline_history !274
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !61   ; 2 uses
  %.not.i1 = icmp eq ptr %i.g, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i: ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 32) #27
  br label %_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZNSt5stackIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryESt5dequeIS5_SaIS5_EEED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(80) dereferenceable(80) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86, !noalias !283 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76, !noalias !283 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !74, !noalias !283 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !86, !noalias !284 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !75, !noalias !284 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !74, !noalias !284 ; 3 uses
  %.02.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.m = icmp ult ptr %.02.i.i.i, %i.l
  br i1 %i.m, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZSt8_DestroyIPN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryEEvT_S7_.exit.i.i.i, %bb.a
  %.not.i.i.i = icmp eq ptr %i.f, %i.l
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIPN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryEEvT_S7_.exit.i.i.i
  %.03.i.i.i = phi ptr [ %.0.i.i.i, %_ZSt8_DestroyIPN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryEEvT_S7_.exit.i.i.i ], [ %.02.i.i.i, %bb.a ] ; 2 uses
  %i.n = load ptr, ptr %.03.i.i.i, align 8, !tbaa !73
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt8_DestroyIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryEEvPT_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %.05.i.i.idx.i.i.i = phi i64 [ %.05.i.i.add.i.i.i, %_ZSt8_DestroyIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryEEvPT_.exit.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i ] ; 2 uses
  %.05.i.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 %.05.i.i.idx.i.i.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.ptr.i.i.i, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !13   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(40) %i.p) #26, !inline_history !279
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.ptr.i.i.i, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !61   ; 2 uses
  %.not.i1.i.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i1.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryEEvPT_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.i.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 32) #27
  br label %_ZSt8_DestroyIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i.i.i.i.i.i.i.i.i, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.i.i.i.i.i.i.i.i
  %.05.i.i.add.i.i.i = add nuw nsw i64 %.05.i.i.idx.i.i.i, 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.05.i.i.add.i.i.i, 504
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryEEvT_S7_.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !280

_ZSt8_DestroyIPN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryEEvT_S7_.exit.i.i.i: ; preds = %_ZSt8_DestroyIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryEEvPT_.exit.i.i.i.i.i
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 8 ; 2 uses
  %i.v = icmp ult ptr %.0.i.i.i, %i.l
  br i1 %i.v, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !281

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %.not4.i.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryEEvT_S7_.exit15.i.i.i, label %.lr.ph.i.i6.i.i.i

.lr.ph.i.i6.i.i.i:                                ; preds = %bb.b, %_ZSt8_DestroyIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryEEvPT_.exit.i.i13.i.i.i
  %.05.i.i7.i.i.i = phi ptr [ %i.ad, %_ZSt8_DestroyIN8facebook5velox9functions10geospatial12_GLOBAL__N_111TilingEntryEEvPT_.exit.i.i13.i.i.i ], [ %i.b, %bb.b ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i7.i.i.i, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !13   ; 3 uses
  %.not.i.i.i.i.i.i8.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i8.i.i.i, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.i.i.i.i.i10.i.i.i, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i.i9.i.i.i

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i.i9.i.i.i: ; preds = %.lr.ph.i.i6.i.i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(40) %i.x) #26, !inline_history !279
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.i.i.i.i.i10.i.i.i

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.i.i.i.i.i10.i.i.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i.i9.i.i.i, %.lr.ph.i.i6.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i7.i.i.i, i64 8
end_hunk_0
