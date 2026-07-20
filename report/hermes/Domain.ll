inline.NumInlined: 605
inline.NumDeleted: 359
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN6hermes2vm6Domain15_mallocSizeImplEPNS0_6GCCellE:bb.a
  %i.s = add i64 %.016, 192
  %i.t = add i64 %i.s, %i.r                       ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01315, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.u, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm15DomainBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) initializes((216, 224)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr @_ZN6hermes2vm6Domain2vtE, ptr %i.a, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @_ZN6hermes2vm8Metadata7Builder8addFieldEPKcPKNS0_13GCPointerBaseE(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull @.str, ptr noundef nonnull %i.b) #11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZN6hermes2vm8Metadata7Builder8addFieldEPKcPKNS0_13GCPointerBaseE(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.c) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN6hermes2vm8Metadata7Builder8addFieldEPKcPKNS0_13GCPointerBaseE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN6hermes2vm6Domain6createERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.b = tail call noundef ptr @_ZN6hermes2vm6GCBase5makeAINS0_6DomainELb1ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJEEEPT_jDpOT3_(ptr noundef nonnull align 8 dereferenceable(717) %i.a, i32 noundef 96)
  ret ptr %i.b
}

declare void @_ZN6hermes2vm6GCBase9IDTracker13untrackNativeEPKv(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden ptr @_ZNK6hermes2vm6Domain18getThrowingRequireERNS0_7RuntimeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.a, align 8, !tbaa !3 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i, 0
  %i.b = ptrtoint ptr %1 to i64
  %i.c = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.d = add i64 %i.c, %i.b
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = select i1 %.not.i.i.i.i, ptr null, ptr %i.e
  ret ptr %i.f
}

declare noundef i64 @_ZNK6hermes2vm13RuntimeModule20additionalMemorySizeEv(ptr noundef nonnull align 8 dereferenceable(192)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes2vm6Domain20importCJSModuleTableENS0_6HandleIS1_EERNS0_7RuntimeEPNS0_13RuntimeModuleE(ptr nofree readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.hermes::StringTableEntry", align 8 ; 4 uses
  %4 = alloca %"class.hermes::StringTableEntry", align 8 ; 4 uses
  %5 = alloca %"class.hermes::vm::MutableHandle", align 8 ; 13 uses
  %6 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %7 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %8 = alloca %"class.hermes::vm::SymbolID", align 4 ; 4 uses
  %9 = alloca %"struct.std::pair.214", align 8    ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 8 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39   ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !44
  %i.d = icmp eq i64 %.sroa.2.0.copyload.i, 0
  br i1 %i.d, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i119 = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  %.sroa.2.0.copyload.i120 = load i64, ptr %.sroa.2.0..sroa_idx.i119, align 8, !tbaa !44
  %i.e = icmp eq i64 %.sroa.2.0.copyload.i120, 0
  br i1 %i.e, label %bb.bc, label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !45   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 192 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !58
  %i.l = icmp ult ptr %i.i, %i.k
  br i1 %i.l, label %bb.c, label %bb.d, !prof !59

bb.c:                                             ; preds = %.critedge
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.m, ptr %i.h, align 8, !tbaa !48
  store i64 -281474976710656, ptr %i.i, align 8, !tbaa !44
  br label %_ZN6hermes2vm13MutableHandleINS0_16ArrayStorageBaseINS0_11HermesValueEEEEC2ERNS0_15HandleRootOwnerEPS4_.exit

bb.d:                                             ; preds = %.critedge
  %i.n = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.g, i64 -281474976710656) #11
  br label %_ZN6hermes2vm13MutableHandleINS0_16ArrayStorageBaseINS0_11HermesValueEEEEC2ERNS0_15HandleRootOwnerEPS4_.exit

_ZN6hermes2vm13MutableHandleINS0_16ArrayStorageBaseINS0_11HermesValueEEEEC2ERNS0_15HandleRootOwnerEPS4_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 3 uses
  store ptr %.0.i.i.i.i.i.i, ptr %5, align 8, !tbaa !60
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !44
  %i.o = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !62   ; 2 uses
  %.not282 = icmp eq i32 %i.r, 0
  br i1 %.not282, label %bb.e, label %bb.t

bb.e:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_16ArrayStorageBaseINS0_11HermesValueEEEEC2ERNS0_15HandleRootOwnerEPS4_.exit
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !39   ; 2 uses
  %.sroa.2.0..sroa_idx.i124 = getelementptr inbounds nuw i8, ptr %i.s, i64 200
  %.sroa.2.0.copyload.i125 = load i64, ptr %.sroa.2.0..sroa_idx.i124, align 8, !tbaa !44
  %.sroa.2.0..sroa_idx.i129 = getelementptr inbounds nuw i8, ptr %i.s, i64 216
  %.sroa.2.0.copyload.i130 = load i64, ptr %.sroa.2.0..sroa_idx.i129, align 8, !tbaa !44
  %i.t = add i64 %.sroa.2.0.copyload.i130, %.sroa.2.0.copyload.i125 ; 7 uses
  %i.u = mul i64 %i.t, 3                          ; 3 uses
  %i.v = icmp ugt i64 %i.u, 4294967295
  br i1 %i.v, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %bb.f

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 1, ptr %i.w, align 8, !tbaa !64
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 34, ptr %i.x, align 8, !tbaa !67
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 0, ptr %i.y, align 8, !tbaa !68
  store ptr @.str.2, ptr %6, align 8, !tbaa !69
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 3, ptr %i.z, align 8, !tbaa !70
  %i.aa = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ab = trunc nuw i64 %i.u to i32               ; 2 uses
  %i.ac = icmp samesign ugt i64 %i.u, 513535
  br i1 %i.ac, label %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit, label %bb.g, !prof !71

bb.g:                                             ; preds = %bb.f
  %i.ad = shl nuw nsw i32 %i.ab, 3
  %i.ae = add nuw nsw i32 %i.ad, 8                ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 1648 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !72 ; 2 uses
  %i.ah = zext nneg i32 %i.ae to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 1656
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !76
  %.not.i.not.i.i.i.i.i.i = icmp ugt ptr %i.ai, %i.ak
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.h, label %bb.i, !prof !71

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.am = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.al, i32 noundef %i.ae) #11
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit.thread

bb.i:                                             ; preds = %bb.g
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !72
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit.thread

_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit.thread: ; preds = %bb.h, %bb.i
  %i.an = phi ptr [ %i.am, %bb.h ], [ %i.ag, %bb.i ] ; 3 uses
  store i64 0, ptr %i.an, align 8
  %i.ao = or disjoint i32 %i.ae, 234881024
  store i32 %i.ao, ptr %i.an, align 8, !tbaa !69
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = or i64 %i.ap, -281474976710656
  %.pre = load ptr, ptr %5, align 8, !tbaa !77
  br label %bb.j

_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit: ; preds = %bb.f
  %i.ar = tail call noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE27throwExcessiveCapacityErrorERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.ab) #11
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %.thread, label %bb.j, !prof !78

bb.j:                                             ; preds = %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit.thread, %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit
  %i.at = phi ptr [ %.pre, %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit.thread ], [ %.0.i.i.i.i.i.i, %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit ] ; 2 uses
  %.sroa.3.0.i279 = phi i64 [ %i.aq, %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit.thread ], [ -281474976710656, %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit ]
  store i64 %.sroa.3.0.i279, ptr %i.at, align 8, !tbaa !79
  %.sroa.0.0.copyload.i.i135 = load i64, ptr %0, align 8, !tbaa !44
  %i.au = and i64 %.sroa.0.0.copyload.i.i135, 281474976710655
  %i.av = inttoptr i64 %i.au to ptr               ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 24 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !19
  %i.az = icmp ugt i64 %i.t, %i.ay
  br i1 %i.az, label %bb.k, label %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE7reserveEm.exit

bb.k:                                             ; preds = %bb.j
  %mul.ov.i.i.i = icmp ugt i64 %i.t, 2305843009213693951
  br i1 %mul.ov.i.i.i, label %bb.l, label %_ZN6hermes14checkedMalloc2Emm.exit.i.i, !prof !71

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.3) #12
  unreachable

_ZN6hermes14checkedMalloc2Emm.exit.i.i:           ; preds = %bb.k
  %mul.val.i.i.i = shl nuw i64 %i.t, 3
  %i.ba = tail call noalias noundef nonnull ptr @_ZN6hermes13checkedMallocEm(i64 noundef %mul.val.i.i.i) #11 ; 5 uses
  %i.bb = load ptr, ptr %i.aw, align 8, !tbaa !7  ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !13 ; 2 uses
  %.idx.i.i = shl i64 %i.bd, 3                    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx.i.i
  %.not.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i, label %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE11setCapacityEm.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN6hermes14checkedMalloc2Emm.exit.i.i
  %i.bf = ptrtoaddr ptr %i.bb to i64              ; 4 uses
  %i.bg = ptrtoaddr ptr %i.ba to i64
  %i.bh = add i64 %.idx.i.i, %i.bf
  %i.bi = add i64 %i.bf, 8
  %i.bj = tail call i64 @llvm.umax.i64(i64 %i.bh, i64 %i.bi)
  %i.bk = xor i64 %i.bf, -1
  %i.bl = add i64 %i.bj, %i.bk                    ; 2 uses
  %i.bm = lshr i64 %i.bl, 3
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bl, 72
  %i.bo = sub i64 %i.bf, %i.bg
  %diff.check = icmp ugt i64 %i.bo, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader385, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.bn, 4611686018427387900     ; 3 uses
  %i.bp = shl i64 %n.vec, 3                       ; 2 uses
  %i.bq = getelementptr i8, ptr %i.ba, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bb, i64 %i.bp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bs = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ba, i64 %i.bs ; 2 uses
  %next.gep362 = getelementptr i8, ptr %i.bb, i64 %i.bs ; 2 uses
  %i.bt = getelementptr i8, ptr %next.gep362, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep362, align 8, !tbaa !17
  %wide.load363 = load <2 x ptr>, ptr %i.bt, align 8, !tbaa !17
  %i.bu = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !17
  store <2 x ptr> %wide.load363, ptr %i.bu, align 8, !tbaa !17
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !81

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bn, %n.vec
  br i1 %cmp.n, label %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE11setCapacityEm.exit.i, label %.lr.ph.i.i.preheader385

.lr.ph.i.i.preheader385:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.012.i.i.ph = phi ptr [ %i.ba, %.lr.ph.i.i.preheader ], [ %i.bq, %middle.block ]
  %.01011.i.i.ph = phi ptr [ %i.bb, %.lr.ph.i.i.preheader ], [ %i.br, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader385, %.lr.ph.i.i
  %.012.i.i = phi ptr [ %i.by, %.lr.ph.i.i ], [ %.012.i.i.ph, %.lr.ph.i.i.preheader385 ] ; 2 uses
  %.01011.i.i = phi ptr [ %i.bx, %.lr.ph.i.i ], [ %.01011.i.i.ph, %.lr.ph.i.i.preheader385 ] ; 2 uses
  %i.bw = load ptr, ptr %.01011.i.i, align 8, !tbaa !17
  store ptr %i.bw, ptr %.012.i.i, align 8, !tbaa !17
  %i.bx = getelementptr inbounds nuw i8, ptr %.01011.i.i, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 8
  %i.bz = icmp ult ptr %i.bx, %i.be
  br i1 %i.bz, label %.lr.ph.i.i, label %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE11setCapacityEm.exit.i, !llvm.loop !85

_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE11setCapacityEm.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %_ZN6hermes14checkedMalloc2Emm.exit.i.i
  tail call void @free(ptr noundef %i.bb) #11
  store ptr %i.ba, ptr %i.aw, align 8, !tbaa !7
  store i64 %i.t, ptr %i.ax, align 8, !tbaa !19
  %.sroa.0.0.copyload.i.i136.pre = load i64, ptr %0, align 8, !tbaa !44
  %.pre328 = and i64 %.sroa.0.0.copyload.i.i136.pre, 281474976710655
  %.pre329 = inttoptr i64 %.pre328 to ptr
  br label %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE7reserveEm.exit

_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE7reserveEm.exit: ; preds = %bb.j, %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE11setCapacityEm.exit.i
  %.pre-phi330 = phi ptr [ %i.av, %bb.j ], [ %.pre329, %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE11setCapacityEm.exit.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.pre-phi330, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !13 ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %i.t
  br i1 %i.cc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE7reserveEm.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 856
  br label %bb.o

._crit_edge:                                      ; preds = %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE9push_backEOS3_RNS0_7HadesGCE.exit, %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE7reserveEm.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.cf = tail call ptr @_ZN6hermes2vm14NativeFunction6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S3_NS0_10NativeArgsEENS0_8SymbolIDEjS6_j(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.ce, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull @_ZN6hermes2vm14throwTypeErrorEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 14, i32 noundef 0, i64 ptrtoint (ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E to i64), i32 noundef 0) #11 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.ch = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.cg, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 14) #11
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = or i64 %i.ci, -844424930131968          ; 2 uses
  %i.ck = load ptr, ptr %i.f, align 8, !tbaa !45  ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 192 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !48 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 200
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !58
  %i.cp = icmp ult ptr %i.cm, %i.co
  br i1 %i.cp, label %bb.m, label %bb.n, !prof !59

bb.m:                                             ; preds = %._crit_edge
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr %i.cq, ptr %i.cl, align 8, !tbaa !48
  store i64 %i.cj, ptr %i.cm, align 8, !tbaa !44
  br label %_ZN6hermes2vm7Runtime25getPredefinedStringHandleENS0_10Predefined3StrE.exit

bb.n:                                             ; preds = %._crit_edge
  %i.cr = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ck, i64 %i.cj) #11
  br label %_ZN6hermes2vm7Runtime25getPredefinedStringHandleENS0_10Predefined3StrE.exit

_ZN6hermes2vm7Runtime25getPredefinedStringHandleENS0_10Predefined3StrE.exit: ; preds = %bb.m, %bb.n
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.cm, %bb.m ], [ %i.cr, %bb.n ]
  %i.cs = tail call ptr @_ZN6hermes2vm14RequireContext6createERNS0_7RuntimeENS0_6HandleINS0_6DomainEEENS4_INS0_15StringPrimitiveEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %0, ptr %.0.i.i.i.i.i.i.i)
  %i.ct = tail call noundef i32 @_ZN6hermes2vm8JSObject20defineNewOwnPropertyENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsENS2_INS0_11HermesValueEEE(ptr %i.cf, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 472, i16 2, ptr %i.cs) #11
  %.not283 = icmp eq i32 %i.ct, 0
  br i1 %.not283, label %.thread, label %bb.q, !prof !71

bb.o:                                             ; preds = %.lr.ph, %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE9push_backEOS3_RNS0_7HadesGCE.exit
  %.0101285 = phi i64 [ %i.cb, %.lr.ph ], [ %i.dg, %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE9push_backEOS3_RNS0_7HadesGCE.exit ]
  %.sroa.0.0.copyload.i.i137 = load i64, ptr %0, align 8, !tbaa !44
  %i.cu = and i64 %.sroa.0.0.copyload.i.i137, 281474976710655
  %i.cv = inttoptr i64 %i.cu to ptr               ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 3 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !13 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !19
  %i.db = icmp eq i64 %i.cy, %i.da
  br i1 %i.db, label %bb.p, label %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE9push_backEOS3_RNS0_7HadesGCE.exit, !prof !71

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE4growERNS0_7HadesGCE(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull align 8 dereferenceable(8112) %i.cd)
  %.pre.i = load i64, ptr %i.cx, align 8, !tbaa !13
  br label %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE9push_backEOS3_RNS0_7HadesGCE.exit

_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE9push_backEOS3_RNS0_7HadesGCE.exit: ; preds = %bb.o, %bb.p
  %i.dc = phi i64 [ %.pre.i, %bb.p ], [ %i.cy, %bb.o ] ; 2 uses
  %i.dd = load ptr, ptr %i.cw, align 8, !tbaa !7
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.dc
  store ptr null, ptr %i.de, align 8, !tbaa !17
  %i.df = add i64 %i.dc, 1
  store i64 %i.df, ptr %i.cx, align 8, !tbaa !13
  %i.dg = add i64 %.0101285, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.dg, %i.t
  br i1 %exitcond.not, label %._crit_edge, label %bb.o, !llvm.loop !86

bb.q:                                             ; preds = %_ZN6hermes2vm7Runtime25getPredefinedStringHandleENS0_10Predefined3StrE.exit
  %.sroa.0.0.copyload.i.i138 = load i64, ptr %0, align 8, !tbaa !44
  %i.dh = and i64 %.sroa.0.0.copyload.i.i138, 281474976710655
  %i.di = inttoptr i64 %i.dh to ptr
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 80 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.cf, align 8, !tbaa !44 ; 2 uses
  %i.dk = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !87
  %i.dn = ptrtoint ptr %i.dj to i64
  %i.do = and i64 %i.dn, 562949949227008
  %i.dp = inttoptr i64 %i.do to ptr
  %i.dq = icmp eq ptr %i.dm, %i.dp
  br i1 %i.dq, label %bb.s, label %bb.r, !prof !59

bb.r:                                             ; preds = %bb.q
  %i.dr = inttoptr i64 %i.dk to ptr
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 856
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_13GCPointerBaseEPKNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112) %i.ds, ptr noundef nonnull align 4 dereferenceable(4) %i.dj, ptr noundef %i.dr) #11
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.not.i.i.i.i.i = icmp eq i64 %i.dk, 0
  %i.dt = ptrtoint ptr %1 to i64
  %i.du = sub i64 %.sroa.0.0.copyload.i.i.i, %i.dt
  %i.dv = trunc i64 %i.du to i32
  %.sroa.0.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 0, i32 %i.dv
  store i32 %.sroa.0.0.i.i.i.i.i, ptr %i.dj, align 4, !tbaa !3
  %.sroa.0.0.copyload.i.i141.pre = load i64, ptr %i.at, align 8, !tbaa !44
  br label %bb.u

bb.t:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_16ArrayStorageBaseINS0_11HermesValueEEEEC2ERNS0_15HandleRootOwnerEPS4_.exit
  %i.dw = ptrtoint ptr %1 to i64
  %i.dx = zext i32 %i.r to i64
  %i.dy = add i64 %i.dx, %i.dw
  %i.dz = or i64 %i.dy, -281474976710656          ; 2 uses
  store i64 %i.dz, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !79
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.sroa.0.0.copyload.i.i141 = phi i64 [ %.sroa.0.0.copyload.i.i141.pre, %bb.s ], [ %i.dz, %bb.t ]
  %i.ea = and i64 %.sroa.0.0.copyload.i.i141, 281474976710655
  %i.eb = inttoptr i64 %i.ea to ptr
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.ed = load atomic i32, ptr %i.ec monotonic, align 4
  %i.ee = udiv i32 %i.ed, 3
  %i.ef = zext nneg i32 %i.ee to i64              ; 2 uses
  %i.eg = load ptr, ptr %i.b, align 8, !tbaa !39  ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 192
  %.sroa.0.0.copyload.i142 = load ptr, ptr %i.eh, align 8, !tbaa !88 ; 2 uses
  %.sroa.2.0..sroa_idx.i143 = getelementptr inbounds nuw i8, ptr %i.eg, i64 200
  %.sroa.2.0.copyload.i144 = load i64, ptr %.sroa.2.0..sroa_idx.i143, align 8, !tbaa !44 ; 2 uses
  %.idx = shl nuw nsw i64 %.sroa.2.0.copyload.i144, 3
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i142, i64 %.idx
  %.not287 = icmp eq i64 %.sroa.2.0.copyload.i144, 0
  br i1 %.not287, label %._crit_edge292, label %.lr.ph291

.lr.ph291:                                        ; preds = %bb.u
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.v

._crit_edge292.loopexit:                          ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findERKS4_.exit
  %.pre318 = load ptr, ptr %i.b, align 8, !tbaa !39
  br label %._crit_edge292

._crit_edge292:                                   ; preds = %._crit_edge292.loopexit, %bb.u
  %i.ek = phi ptr [ %i.eg, %bb.u ], [ %.pre318, %._crit_edge292.loopexit ] ; 2 uses
  %.0102.lcssa = phi i64 [ %i.ef, %bb.u ], [ %spec.select, %._crit_edge292.loopexit ] ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 208
  %.sroa.0.0.copyload.i147 = load ptr, ptr %i.el, align 8, !tbaa !88 ; 3 uses
  %.sroa.2.0..sroa_idx.i148 = getelementptr inbounds nuw i8, ptr %i.ek, i64 216
  %.sroa.2.0.copyload.i149 = load i64, ptr %.sroa.2.0..sroa_idx.i148, align 8, !tbaa !44 ; 2 uses
  %.idx313 = shl i64 %.sroa.2.0.copyload.i149, 3  ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i147, i64 %.idx313
  %.not113293 = icmp eq i64 %.sroa.2.0.copyload.i149, 0
  br i1 %.not113293, label %._crit_edge298, label %.lr.ph297.preheader
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm6Domain20importCJSModuleTableENS0_6HandleIS1_EERNS0_7RuntimeEPNS0_13RuntimeModuleE:bb.a

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.fa = load ptr, ptr %i.b, align 8, !tbaa !39  ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 304
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !97
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.ev
  %i.fe = load i32, ptr %i.fd, align 1            ; 5 uses
  %i.ff = icmp ugt i32 %i.fe, -16777217
  br i1 %i.ff, label %bb.x, label %bb.y, !prof !71

bb.x:                                             ; preds = %bb.w
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 312
  %i.fh = lshr i32 %i.fe, 1
  %i.fi = and i32 %i.fh, 8388607
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = load ptr, ptr %i.fg, align 8, !tbaa !137
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.fj ; 2 uses
  %.sroa.0.0.copyload.i.i153 = load i32, ptr %i.fl, align 1, !tbaa !3
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !tbaa !3
  br label %_ZNK6hermes3hbc20BCProviderFromBuffer19getStringTableEntryEj.exit.i

bb.y:                                             ; preds = %bb.w
  %i.fm = lshr i32 %i.fe, 1
  %i.fn = and i32 %i.fm, 8388607
  %i.fo = lshr i32 %i.fe, 24
  br label %_ZNK6hermes3hbc20BCProviderFromBuffer19getStringTableEntryEj.exit.i

_ZNK6hermes3hbc20BCProviderFromBuffer19getStringTableEntryEj.exit.i: ; preds = %bb.y, %bb.x
  %.sink.i.i152 = phi i32 [ %i.fo, %bb.y ], [ %.sroa.4.0.copyload.i.i, %bb.x ]
  %.sroa.0.0.i.i = phi i32 [ %i.fn, %bb.y ], [ %.sroa.0.0.copyload.i.i153, %bb.x ]
  %i.fp = shl i32 %i.fe, 31
  %spec.select.i7.i.i = or i32 %.sink.i.i152, %i.fp
  %.sroa.3.0.insert.ext.i.i = zext i32 %spec.select.i7.i.i to i64
  %.sroa.3.0.insert.shift.i.i = shl nuw i64 %.sroa.3.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %.sroa.0.0.i.i to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.3.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %4, align 8
  %i.fq = call i32 @_ZN6hermes2vm13RuntimeModule35createSymbolFromStringIDMayAllocateEjRKNS_16StringTableEntryENS_8OptValueIjEE(ptr noundef nonnull align 8 dereferenceable(192) %2, i32 noundef %i.eu, ptr noundef nonnull align 4 dereferenceable(8) %4, i64 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %_ZN6hermes2vm13RuntimeModule34getSymbolIDFromStringIDMayAllocateEj.exit

_ZN6hermes2vm13RuntimeModule34getSymbolIDFromStringIDMayAllocateEj.exit: ; preds = %bb.v, %_ZNK6hermes3hbc20BCProviderFromBuffer19getStringTableEntryEj.exit.i
  %.sroa.03.0.i = phi i32 [ %i.ey, %bb.v ], [ %i.fq, %_ZNK6hermes3hbc20BCProviderFromBuffer19getStringTableEntryEj.exit.i ] ; 3 uses
  %.sroa.0.0.copyload.i.i154 = load i64, ptr %0, align 8, !tbaa !44
  %i.fr = and i64 %.sroa.0.0.copyload.i.i154, 281474976710655
  %i.fs = inttoptr i64 %i.fr to ptr               ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 32
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !14 ; 5 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 48
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !20 ; 4 uses
  %i.fx = icmp eq i32 %i.fw, 0
  br i1 %i.fx, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit.i, label %bb.z

bb.z:                                             ; preds = %_ZN6hermes2vm13RuntimeModule34getSymbolIDFromStringIDMayAllocateEj.exit
  %i.fy = mul i32 %.sroa.03.0.i, 37
  %i.fz = add i32 %i.fw, -1                       ; 2 uses
  %.03649.i.i.i = and i32 %i.fz, %i.fy            ; 2 uses
  %i.ga = zext i32 %.03649.i.i.i to i64
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.ga ; 2 uses
  %.sroa.05.0.copyload50.i.i.i = load i32, ptr %i.gb, align 4, !tbaa !3 ; 2 uses
  %i.gc = icmp eq i32 %.sroa.03.0.i, %.sroa.05.0.copyload50.i.i.i
  br i1 %i.gc, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findERKS4_.exit, label %.lr.ph.i.i.i, !prof !138

.lr.ph.i.i.i:                                     ; preds = %bb.z, %bb.aa
  %.sroa.05.0.copyload54.i.i.i = phi i32 [ %.sroa.05.0.copyload.i.i.i, %bb.aa ], [ %.sroa.05.0.copyload50.i.i.i, %bb.z ]
  %.03653.i.i.i = phi i32 [ %.036.i.i.i, %bb.aa ], [ %.03649.i.i.i, %bb.z ]
  %.03851.i.i.i = phi i32 [ %i.ge, %bb.aa ], [ 1, %bb.z ] ; 2 uses
  %i.gd = icmp eq i32 %.sroa.05.0.copyload54.i.i.i, 536870911
  br i1 %i.gd, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit.i, label %bb.aa, !prof !59

bb.aa:                                            ; preds = %.lr.ph.i.i.i
  %i.ge = add i32 %.03851.i.i.i, 1
  %i.gf = add i32 %.03851.i.i.i, %.03653.i.i.i
  %.036.i.i.i = and i32 %i.gf, %i.fz              ; 2 uses
  %i.gg = zext i32 %.036.i.i.i to i64             ; 2 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.gg
  %.sroa.05.0.copyload.i.i.i = load i32, ptr %i.gh, align 4, !tbaa !3 ; 2 uses
  %i.gi = icmp eq i32 %.sroa.03.0.i, %.sroa.05.0.copyload.i.i.i
  br i1 %i.gi, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findERKS4_.exit.loopexit, label %.lr.ph.i.i.i, !prof !139, !llvm.loop !140

_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit.i: ; preds = %.lr.ph.i.i.i, %_ZN6hermes2vm13RuntimeModule34getSymbolIDFromStringIDMayAllocateEj.exit
  %i.gj = zext i32 %i.fw to i64
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.gj
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findERKS4_.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findERKS4_.exit.loopexit: ; preds = %bb.aa
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.gg
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findERKS4_.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findERKS4_.exit: ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findERKS4_.exit.loopexit, %bb.z, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit.i
  %.sink.i.i.ph.pn.i = phi ptr [ %i.gk, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit.i ], [ %i.gb, %bb.z ], [ %i.gl, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findERKS4_.exit.loopexit ]
  %i.gm = zext i32 %i.fw to i64
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.gm
  %i.go = icmp eq ptr %.sink.i.i.ph.pn.i, %i.gn
  %i.gp = zext i1 %i.go to i64
  %spec.select = add i64 %.0102289, %i.gp         ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.0107288, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.gq, %i.ei
  br i1 %.not, label %._crit_edge292.loopexit, label %bb.v

._crit_edge298:                                   ; preds = %.lr.ph297.prol.loopexit, %.lr.ph297, %._crit_edge292
  %.2104.lcssa = phi i64 [ %.0102.lcssa, %._crit_edge292 ], [ %spec.select117.lcssa.unr, %.lr.ph297.prol.loopexit ], [ %spec.select117.7, %.lr.ph297 ] ; 3 uses
  %i.gr = add i64 %.2104.lcssa, 1                 ; 5 uses
  %i.gs = mul i64 %i.gr, 3                        ; 3 uses
  %i.gt = icmp ugt i64 %i.gs, 4294967295
  br i1 %i.gt, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit157, label %bb.ab

.lr.ph297:                                        ; preds = %.lr.ph297.prol.loopexit, %.lr.ph297
  %.2104295 = phi i64 [ %spec.select117.7, %.lr.ph297 ], [ %.2104295.unr, %.lr.ph297.prol.loopexit ]
  %.0108294 = phi ptr [ %i.hr, %.lr.ph297 ], [ %.0108294.unr, %.lr.ph297.prol.loopexit ] ; 9 uses
  %i.gu = load i32, ptr %.0108294, align 4, !tbaa !3
  %i.gv = zext i32 %i.gu to i64
  %spec.select117 = call i64 @llvm.umax.i64(i64 %.2104295, i64 %i.gv)
  %i.gw = getelementptr inbounds nuw i8, ptr %.0108294, i64 8
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !3
  %i.gy = zext i32 %i.gx to i64
  %spec.select117.1 = call i64 @llvm.umax.i64(i64 %spec.select117, i64 %i.gy)
  %i.gz = getelementptr inbounds nuw i8, ptr %.0108294, i64 16
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !3
  %i.hb = zext i32 %i.ha to i64
  %spec.select117.2 = call i64 @llvm.umax.i64(i64 %spec.select117.1, i64 %i.hb)
  %i.hc = getelementptr inbounds nuw i8, ptr %.0108294, i64 24
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !3
  %i.he = zext i32 %i.hd to i64
  %spec.select117.3 = call i64 @llvm.umax.i64(i64 %spec.select117.2, i64 %i.he)
  %i.hf = getelementptr inbounds nuw i8, ptr %.0108294, i64 32
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !3
  %i.hh = zext i32 %i.hg to i64
  %spec.select117.4 = call i64 @llvm.umax.i64(i64 %spec.select117.3, i64 %i.hh)
  %i.hi = getelementptr inbounds nuw i8, ptr %.0108294, i64 40
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !3
  %i.hk = zext i32 %i.hj to i64
  %spec.select117.5 = call i64 @llvm.umax.i64(i64 %spec.select117.4, i64 %i.hk)
  %i.hl = getelementptr inbounds nuw i8, ptr %.0108294, i64 48
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !3
  %i.hn = zext i32 %i.hm to i64
  %spec.select117.6 = call i64 @llvm.umax.i64(i64 %spec.select117.5, i64 %i.hn)
  %i.ho = getelementptr inbounds nuw i8, ptr %.0108294, i64 56
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !3
  %i.hq = zext i32 %i.hp to i64
  %spec.select117.7 = call i64 @llvm.umax.i64(i64 %spec.select117.6, i64 %i.hq) ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.0108294, i64 64 ; 2 uses
  %.not113.7 = icmp eq ptr %i.hr, %i.em
  br i1 %.not113.7, label %._crit_edge298, label %.lr.ph297

_ZN6hermes2vm11TwineChar16C2EPKc.exit157:         ; preds = %._crit_edge298
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.hs = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 1, ptr %i.hs, align 8, !tbaa !64
  %i.ht = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 34, ptr %i.ht, align 8, !tbaa !67
  %i.hu = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.hu, align 8, !tbaa !68
  store ptr @.str.2, ptr %7, align 8, !tbaa !69
  %i.hv = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 3, ptr %i.hv, align 8, !tbaa !70
  %i.hw = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %.thread

bb.ab:                                            ; preds = %._crit_edge298
  %i.hx = load ptr, ptr %5, align 8, !tbaa !60
  %.sroa.0.0.copyload.i.i158 = load i64, ptr %i.hx, align 8, !tbaa !44
  %i.hy = and i64 %.sroa.0.0.copyload.i.i158, 281474976710655
  %i.hz = inttoptr i64 %i.hy to ptr
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  %i.ib = load atomic i32, ptr %i.ia monotonic, align 4
  %i.ic = zext i32 %i.ib to i64
  %i.id = icmp samesign ugt i64 %i.gs, %i.ic
  br i1 %i.id, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %bb.ab
  %i.ie = trunc nuw i64 %i.gs to i32
  %i.if = call noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE5shiftERNS0_13MutableHandleIS3_EERNS0_7RuntimeEjjj(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 0, i32 noundef 0, i32 noundef %i.ie) #11
  %i.ig = icmp eq i32 %i.if, 0
  br i1 %i.ig, label %.thread, label %bb.ad, !prof !71

bb.ad:                                            ; preds = %bb.ac
  %.sroa.0.0.copyload.i.i159 = load i64, ptr %0, align 8, !tbaa !44
  %i.ih = and i64 %.sroa.0.0.copyload.i.i159, 281474976710655
  %i.ii = inttoptr i64 %i.ih to ptr               ; 4 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 24 ; 2 uses
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !19
  %i.im = icmp ugt i64 %i.gr, %i.il
  br i1 %i.im, label %bb.ae, label %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE7reserveEm.exit169

bb.ae:                                            ; preds = %bb.ad
  %mul.ov.i.i.i160 = icmp ugt i64 %i.gr, 2305843009213693951
  br i1 %mul.ov.i.i.i160, label %bb.af, label %_ZN6hermes14checkedMalloc2Emm.exit.i.i161, !prof !71

bb.af:                                            ; preds = %bb.ae
  call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.3) #12
  unreachable

_ZN6hermes14checkedMalloc2Emm.exit.i.i161:        ; preds = %bb.ae
  %mul.val.i.i.i162 = shl nuw i64 %i.gr, 3
  %i.in = call noalias noundef nonnull ptr @_ZN6hermes13checkedMallocEm(i64 noundef %mul.val.i.i.i162) #11 ; 5 uses
  %i.io = load ptr, ptr %i.ij, align 8, !tbaa !7  ; 6 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !13 ; 2 uses
  %.idx.i.i163 = shl i64 %i.iq, 3                 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 %.idx.i.i163
  %.not.i.i164 = icmp eq i64 %i.iq, 0
  br i1 %.not.i.i164, label %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE11setCapacityEm.exit.i168, label %.lr.ph.i.i165.preheader

.lr.ph.i.i165.preheader:                          ; preds = %_ZN6hermes14checkedMalloc2Emm.exit.i.i161
  %i.is = ptrtoaddr ptr %i.io to i64              ; 4 uses
  %i.it = ptrtoaddr ptr %i.in to i64
  %i.iu = add i64 %.idx.i.i163, %i.is
  %i.iv = add i64 %i.is, 8
  %i.iw = call i64 @llvm.umax.i64(i64 %i.iu, i64 %i.iv)
  %i.ix = xor i64 %i.is, -1
  %i.iy = add i64 %i.iw, %i.ix                    ; 2 uses
  %i.iz = lshr i64 %i.iy, 3
  %i.ja = add nuw nsw i64 %i.iz, 1                ; 2 uses
  %min.iters.check368 = icmp ult i64 %i.iy, 72
  %i.jb = sub i64 %i.is, %i.it
  %diff.check366 = icmp ugt i64 %i.jb, -32
  %or.cond383 = or i1 %min.iters.check368, %diff.check366
  br i1 %or.cond383, label %.lr.ph.i.i165.preheader384, label %vector.ph369

vector.ph369:                                     ; preds = %.lr.ph.i.i165.preheader
  %n.vec371 = and i64 %i.ja, 4611686018427387900  ; 3 uses
  %i.jc = shl i64 %n.vec371, 3                    ; 2 uses
  %i.jd = getelementptr i8, ptr %i.in, i64 %i.jc
  %i.je = getelementptr i8, ptr %i.io, i64 %i.jc
  br label %vector.body372

vector.body372:                                   ; preds = %vector.body372, %vector.ph369
  %index373 = phi i64 [ 0, %vector.ph369 ], [ %index.next378, %vector.body372 ] ; 2 uses
  %i.jf = shl i64 %index373, 3                    ; 2 uses
  %next.gep374 = getelementptr i8, ptr %i.in, i64 %i.jf ; 2 uses
  %next.gep375 = getelementptr i8, ptr %i.io, i64 %i.jf ; 2 uses
  %i.jg = getelementptr i8, ptr %next.gep375, i64 16
  %wide.load376 = load <2 x ptr>, ptr %next.gep375, align 8, !tbaa !17
  %wide.load377 = load <2 x ptr>, ptr %i.jg, align 8, !tbaa !17
  %i.jh = getelementptr i8, ptr %next.gep374, i64 16
  store <2 x ptr> %wide.load376, ptr %next.gep374, align 8, !tbaa !17
  store <2 x ptr> %wide.load377, ptr %i.jh, align 8, !tbaa !17
  %index.next378 = add nuw i64 %index373, 4       ; 2 uses
  %i.ji = icmp eq i64 %index.next378, %n.vec371
  br i1 %i.ji, label %middle.block379, label %vector.body372, !llvm.loop !141

middle.block379:                                  ; preds = %vector.body372
  %cmp.n380 = icmp eq i64 %i.ja, %n.vec371
  br i1 %cmp.n380, label %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE11setCapacityEm.exit.i168, label %.lr.ph.i.i165.preheader384

.lr.ph.i.i165.preheader384:                       ; preds = %.lr.ph.i.i165.preheader, %middle.block379
  %.012.i.i166.ph = phi ptr [ %i.in, %.lr.ph.i.i165.preheader ], [ %i.jd, %middle.block379 ]
  %.01011.i.i167.ph = phi ptr [ %i.io, %.lr.ph.i.i165.preheader ], [ %i.je, %middle.block379 ]
  br label %.lr.ph.i.i165

.lr.ph.i.i165:                                    ; preds = %.lr.ph.i.i165.preheader384, %.lr.ph.i.i165
  %.012.i.i166 = phi ptr [ %i.jl, %.lr.ph.i.i165 ], [ %.012.i.i166.ph, %.lr.ph.i.i165.preheader384 ] ; 2 uses
  %.01011.i.i167 = phi ptr [ %i.jk, %.lr.ph.i.i165 ], [ %.01011.i.i167.ph, %.lr.ph.i.i165.preheader384 ] ; 2 uses
  %i.jj = load ptr, ptr %.01011.i.i167, align 8, !tbaa !17
  store ptr %i.jj, ptr %.012.i.i166, align 8, !tbaa !17
  %i.jk = getelementptr inbounds nuw i8, ptr %.01011.i.i167, i64 8 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.012.i.i166, i64 8
  %i.jm = icmp ult ptr %i.jk, %i.ir
  br i1 %i.jm, label %.lr.ph.i.i165, label %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE11setCapacityEm.exit.i168, !llvm.loop !142

_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE11setCapacityEm.exit.i168: ; preds = %.lr.ph.i.i165, %middle.block379, %_ZN6hermes14checkedMalloc2Emm.exit.i.i161
  call void @free(ptr noundef %i.io) #11
  store ptr %i.in, ptr %i.ij, align 8, !tbaa !7
  store i64 %i.gr, ptr %i.ik, align 8, !tbaa !19
  %.sroa.0.0.copyload.i.i170.pre = load i64, ptr %0, align 8, !tbaa !44
  %.pre331 = and i64 %.sroa.0.0.copyload.i.i170.pre, 281474976710655
  %.pre333 = inttoptr i64 %.pre331 to ptr
  br label %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE7reserveEm.exit169

_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE7reserveEm.exit169: ; preds = %bb.ad, %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE11setCapacityEm.exit.i168
  %.pre-phi334 = phi ptr [ %i.ii, %bb.ad ], [ %.pre333, %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE11setCapacityEm.exit.i168 ]
  %i.jn = getelementptr inbounds nuw i8, ptr %.pre-phi334, i64 16
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !13 ; 2 uses
  %.not114300 = icmp ugt i64 %i.jo, %.2104.lcssa
  br i1 %.not114300, label %.loopexit, label %.lr.ph302

.lr.ph302:                                        ; preds = %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE7reserveEm.exit169
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 856
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph302, %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE9push_backEOS3_RNS0_7HadesGCE.exit173
  %.0109301 = phi i64 [ %i.jo, %.lr.ph302 ], [ %i.kc, %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE9push_backEOS3_RNS0_7HadesGCE.exit173 ]
  %.sroa.0.0.copyload.i.i171 = load i64, ptr %0, align 8, !tbaa !44
  %i.jq = and i64 %.sroa.0.0.copyload.i.i171, 281474976710655
  %i.jr = inttoptr i64 %i.jq to ptr               ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 16 ; 3 uses
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !13 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jr, i64 24
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !19
  %i.jx = icmp eq i64 %i.ju, %i.jw
  br i1 %i.jx, label %bb.ah, label %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE9push_backEOS3_RNS0_7HadesGCE.exit173, !prof !71

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE4growERNS0_7HadesGCE(ptr noundef nonnull align 8 dereferenceable(24) %i.js, ptr noundef nonnull align 8 dereferenceable(8112) %i.jp)
  %.pre.i172 = load i64, ptr %i.jt, align 8, !tbaa !13
  br label %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE9push_backEOS3_RNS0_7HadesGCE.exit173

_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE9push_backEOS3_RNS0_7HadesGCE.exit173: ; preds = %bb.ag, %bb.ah
  %i.jy = phi i64 [ %.pre.i172, %bb.ah ], [ %i.ju, %bb.ag ] ; 2 uses
  %i.jz = load ptr, ptr %i.js, align 8, !tbaa !7
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %i.jy
  store ptr null, ptr %i.ka, align 8, !tbaa !17
  %i.kb = add i64 %i.jy, 1
  store i64 %i.kb, ptr %i.jt, align 8, !tbaa !13
  %i.kc = add i64 %.0109301, 1                    ; 2 uses
  %.not114 = icmp ugt i64 %i.kc, %.2104.lcssa
  br i1 %.not114, label %.loopexit, label %bb.ag, !llvm.loop !143

.loopexit:                                        ; preds = %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE9push_backEOS3_RNS0_7HadesGCE.exit173, %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE7reserveEm.exit169, %bb.ab
  %.sroa.0.0.copyload.i.i174 = load i64, ptr %0, align 8, !tbaa !44
  %i.kd = and i64 %.sroa.0.0.copyload.i.i174, 281474976710655
  %i.ke = inttoptr i64 %i.kd to ptr               ; 4 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 84 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 8 ; 2 uses
  %i.kh = load ptr, ptr %i.b, align 8, !tbaa !39  ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 192
  %.sroa.0.0.copyload.i176 = load ptr, ptr %i.ki, align 8, !tbaa !88 ; 2 uses
  %.sroa.2.0..sroa_idx.i177 = getelementptr inbounds nuw i8, ptr %i.kh, i64 200
  %.sroa.2.0.copyload.i178 = load i64, ptr %.sroa.2.0..sroa_idx.i177, align 8, !tbaa !44 ; 2 uses
  %.idx314 = shl nuw nsw i64 %.sroa.2.0.copyload.i178, 3
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i176, i64 %.idx314
  %.not115303 = icmp eq i64 %.sroa.2.0.copyload.i178, 0
  br i1 %.not115303, label %._crit_edge307, label %.lr.ph306

.lr.ph306:                                        ; preds = %.loopexit
  %i.kk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.kl = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.km = getelementptr inbounds nuw i8, ptr %i.ke, i64 88 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 1632 ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 856 ; 3 uses
  br label %bb.ai

._crit_edge307.loopexit:                          ; preds = %bb.as
  %.pre320 = load ptr, ptr %i.b, align 8, !tbaa !39
  br label %._crit_edge307

._crit_edge307:                                   ; preds = %._crit_edge307.loopexit, %.loopexit
  %i.kp = phi ptr [ %.pre320, %._crit_edge307.loopexit ], [ %i.kh, %.loopexit ] ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 208
  %.sroa.0.0.copyload.i181 = load ptr, ptr %i.kq, align 8, !tbaa !88 ; 2 uses
  %.sroa.2.0..sroa_idx.i182 = getelementptr inbounds nuw i8, ptr %i.kp, i64 216
  %.sroa.2.0.copyload.i183 = load i64, ptr %.sroa.2.0..sroa_idx.i182, align 8, !tbaa !44 ; 2 uses
  %.idx315 = shl nuw nsw i64 %.sroa.2.0.copyload.i183, 3
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i181, i64 %.idx315
  %.not116308 = icmp eq i64 %.sroa.2.0.copyload.i183, 0
  %.pre327 = load ptr, ptr %5, align 8, !tbaa !60 ; 2 uses
  br i1 %.not116308, label %._crit_edge312, label %.lr.ph311

.lr.ph311:                                        ; preds = %._crit_edge307
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ke, i64 88 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 1632 ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 856 ; 3 uses
  br label %bb.au

bb.ai:                                            ; preds = %.lr.ph306, %bb.as
  %.0110304 = phi ptr [ %.sroa.0.0.copyload.i176, %.lr.ph306 ], [ %i.nx, %bb.as ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.kv = load i32, ptr %.0110304, align 4, !tbaa !92 ; 2 uses
  %i.kw = zext i32 %i.kv to i64                   ; 2 uses
  %i.kx = load ptr, ptr %i.kk, align 8, !tbaa !94
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %i.kw
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !3  ; 2 uses
  %i.la = icmp ult i32 %i.kz, 536870910
  br i1 %i.la, label %_ZN6hermes2vm13RuntimeModule34getSymbolIDFromStringIDMayAllocateEj.exit198, label %bb.aj, !prof !59

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.lb = load ptr, ptr %i.b, align 8, !tbaa !39  ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 304
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !97
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %i.kw
  %i.lf = load i32, ptr %i.le, align 1            ; 5 uses
  %i.lg = icmp ugt i32 %i.lf, -16777217
  br i1 %i.lg, label %bb.ak, label %bb.al, !prof !71

bb.ak:                                            ; preds = %bb.aj
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lb, i64 312
  %i.li = lshr i32 %i.lf, 1
  %i.lj = and i32 %i.li, 8388607
  %i.lk = zext nneg i32 %i.lj to i64
  %i.ll = load ptr, ptr %i.lh, align 8, !tbaa !137
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %i.lk ; 2 uses
  %.sroa.0.0.copyload.i.i195 = load i32, ptr %i.lm, align 1, !tbaa !3
  %.sroa.4.0..sroa_idx.i.i196 = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %.sroa.4.0.copyload.i.i197 = load i32, ptr %.sroa.4.0..sroa_idx.i.i196, align 1, !tbaa !3
  br label %_ZNK6hermes3hbc20BCProviderFromBuffer19getStringTableEntryEj.exit.i186

bb.al:                                            ; preds = %bb.aj
  %i.ln = lshr i32 %i.lf, 1
  %i.lo = and i32 %i.ln, 8388607
  %i.lp = lshr i32 %i.lf, 24
  br label %_ZNK6hermes3hbc20BCProviderFromBuffer19getStringTableEntryEj.exit.i186

_ZNK6hermes3hbc20BCProviderFromBuffer19getStringTableEntryEj.exit.i186: ; preds = %bb.al, %bb.ak
  %.sink.i.i187 = phi i32 [ %i.lp, %bb.al ], [ %.sroa.4.0.copyload.i.i197, %bb.ak ]
  %.sroa.0.0.i.i188 = phi i32 [ %i.lo, %bb.al ], [ %.sroa.0.0.copyload.i.i195, %bb.ak ]
  %i.lq = shl i32 %i.lf, 31
  %spec.select.i7.i.i189 = or i32 %.sink.i.i187, %i.lq
  %.sroa.3.0.insert.ext.i.i190 = zext i32 %spec.select.i7.i.i189 to i64
  %.sroa.3.0.insert.shift.i.i191 = shl nuw i64 %.sroa.3.0.insert.ext.i.i190, 32
  %.sroa.0.0.insert.ext.i.i192 = zext i32 %.sroa.0.0.i.i188 to i64
  %.sroa.0.0.insert.insert.i.i193 = or disjoint i64 %.sroa.3.0.insert.shift.i.i191, %.sroa.0.0.insert.ext.i.i192
  store i64 %.sroa.0.0.insert.insert.i.i193, ptr %3, align 8
  %i.lr = call i32 @_ZN6hermes2vm13RuntimeModule35createSymbolFromStringIDMayAllocateEjRKNS_16StringTableEntryENS_8OptValueIjEE(ptr noundef nonnull align 8 dereferenceable(192) %2, i32 noundef %i.kv, ptr noundef nonnull align 4 dereferenceable(8) %3, i64 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %_ZN6hermes2vm13RuntimeModule34getSymbolIDFromStringIDMayAllocateEj.exit198

_ZN6hermes2vm13RuntimeModule34getSymbolIDFromStringIDMayAllocateEj.exit198: ; preds = %bb.ai, %_ZNK6hermes3hbc20BCProviderFromBuffer19getStringTableEntryEj.exit.i186
  %.sroa.03.0.i194 = phi i32 [ %i.kz, %bb.ai ], [ %i.lr, %_ZNK6hermes3hbc20BCProviderFromBuffer19getStringTableEntryEj.exit.i186 ]
  store i32 %.sroa.03.0.i194, ptr %8, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  %.sroa.0.0.copyload.i.i199 = load i64, ptr %0, align 8, !tbaa !44
  %i.ls = and i64 %.sroa.0.0.copyload.i.i199, 281474976710655
  %i.lt = inttoptr i64 %i.ls to ptr
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
end_hunk_1
begin_hunk_2_@_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E11try_emplaceIJjEEESt4pairINS_16DenseMapIteratorIS4_jS6_S9_Lb0EEEbERKS4_DpOT_:bb.a
  ret void
}

declare i64 @_ZN6hermes2vm8JSObject23_getOwnIndexedRangeImplEPS1_RNS0_7RuntimeE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(9816)) #2

declare noundef zeroext i1 @_ZN6hermes2vm8JSObject19_haveOwnIndexedImplEPS1_RNS0_7RuntimeEj(ptr noundef, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) #2

declare i32 @_ZN6hermes2vm8JSObject31_getOwnIndexedPropertyFlagsImplEPS1_RNS0_7RuntimeEj(ptr noundef, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) #2

declare i64 @_ZN6hermes2vm8JSObject18_getOwnIndexedImplENS0_12PseudoHandleIS1_EERNS0_7RuntimeEj(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) #2

declare i32 @_ZN6hermes2vm8JSObject18_setOwnIndexedImplENS0_6HandleIS1_EERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef, ptr) #2

declare noundef zeroext i1 @_ZN6hermes2vm8JSObject21_deleteOwnIndexedImplENS0_6HandleIS1_EERNS0_7RuntimeEj(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) #2

declare noundef zeroext i1 @_ZN6hermes2vm8JSObject23_checkAllOwnIndexedImplEPS1_RNS0_7RuntimeENS0_12ObjectVTable22CheckAllOwnIndexedModeE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm23RequireContextBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 212 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !151, !range !147, !noundef !148
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm8Metadata7Builder23addJSObjectOverlapSlotsEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 208
  store i32 2, ptr %i.d, align 8, !tbaa !3
  store i8 1, ptr %i.a, align 4, !tbaa !152
  br label %_ZN6hermes2vm8Metadata7Builder23addJSObjectOverlapSlotsEj.exit

_ZN6hermes2vm8Metadata7Builder23addJSObjectOverlapSlotsEj.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN6hermes2vm17JSObjectBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) %1) #11
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr @_ZN6hermes2vm14RequireContext2vtE, ptr %i.e, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @_ZN6hermes2vm8Metadata7Builder8addFieldEPKNS0_13GCPointerBaseE(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull %i.f) #11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN6hermes2vm8Metadata7Builder8addFieldEPKNS0_13GCPointerBaseE(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull %i.g) #11
  ret void
}

declare void @_ZN6hermes2vm17JSObjectBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #2

declare void @_ZN6hermes2vm8Metadata7Builder8addFieldEPKNS0_13GCPointerBaseE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212), i64) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(9816), i32) local_unnamed_addr #2

declare i32 @_ZN6hermes2vm13RuntimeModule35createSymbolFromStringIDMayAllocateEjRKNS_16StringTableEntryENS_8OptValueIjEE(ptr noundef nonnull align 8 dereferenceable(192), i32 noundef, ptr noundef nonnull align 4 dereferenceable(8), i64) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_11HermesValueEEES3_(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes2vm6GCBase5makeAINS0_6DomainELb1ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJEEEPT_jDpOT3_(ptr noundef nonnull align 8 dereferenceable(717) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 2 uses
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !76
  %.not.i.not.i.i = icmp ugt ptr %i.d, %i.f
  br i1 %.not.i.not.i.i, label %bb.b, label %bb.c, !prof !71

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %0, i32 noundef %1) #11
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8, !tbaa !72
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.c ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !159  ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !162
  %.not.i4.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i4.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.h, ptr %i.k, align 8, !tbaa !163
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.n, ptr %i.j, align 8, !tbaa !159
  br label %_ZN6hermes2vm7HadesGC5makeAINS0_6DomainELb1ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJEEEPT_jDpOT3_.exit

bb.f:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !165  ; 4 uses
  %i.p = ptrtoint ptr %i.k to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 6 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.g, label %_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #12
  unreachable

_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.f
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #13 ; 4 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.r ; 2 uses
  store ptr %i.h, ptr %i.aa, align 8, !tbaa !163
  %i.ab = icmp sgt i64 %i.r, 0
  br i1 %i.ab, label %bb.h, label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %i.o, i64 %i.r, i1 false)
  br label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i

_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.not.i17.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.r) #14
  br label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i: ; preds = %bb.i, %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i
  store ptr %i.z, ptr %i.i, align 8, !tbaa !165
  store ptr %i.ac, ptr %i.j, align 8, !tbaa !159
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  store ptr %i.ad, ptr %i.l, align 8, !tbaa !162
  br label %_ZN6hermes2vm7HadesGC5makeAINS0_6DomainELb1ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJEEEPT_jDpOT3_.exit

_ZN6hermes2vm7HadesGC5makeAINS0_6DomainELb1ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJEEEPT_jDpOT3_.exit: ; preds = %bb.e, %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i
  %i.ae = and i32 %1, 16777215
  %i.af = or disjoint i32 %i.ae, 201326592
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.h, i8 0, i64 96, i1 false)
  store i32 %i.af, ptr %i.h, align 4, !tbaa !69
  ret ptr %i.h
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: noreturn
declare void @_ZN6hermes12hermes_fatalEPKc(ptr noundef) local_unnamed_addr #7

declare noalias noundef nonnull ptr @_ZN6hermes13checkedMallocEm(i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

declare noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112), i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE27throwExcessiveCapacityErrorERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE4growERNS0_7HadesGCE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8112) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19   ; 4 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = sub i64 %i.b, %i.c
  %i.e = add i64 %i.d, %i.b                       ; 3 uses
  %i.f = icmp ult i64 %i.e, %i.b
  %i.g = icmp ugt i64 %i.e, 2305843009213693951
  %or.cond = or i1 %i.f, %i.g
  br i1 %or.cond, label %bb.b, label %_ZN6hermes14checkedMalloc2Emm.exit.i

bb.b:                                             ; preds = %bb.a
  %i.h = tail call { i32, ptr } @_ZN6hermes15make_error_codeENS_8OOMErrorE(i32 noundef 5) #11 ; 2 uses
  %i.i = extractvalue { i32, ptr } %i.h, 0
  %i.j = extractvalue { i32, ptr } %i.h, 1
  tail call void @_ZN6hermes2vm6GCBase3oomESt10error_code(ptr noundef nonnull align 8 dereferenceable(717) %1, i32 %i.i, ptr %i.j) #12
  unreachable

_ZN6hermes14checkedMalloc2Emm.exit.i:             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.e, i64 1) ; 2 uses
  %mul.val.i.i = shl nuw i64 %.sroa.speculated, 3
  %i.k = tail call noalias noundef nonnull ptr @_ZN6hermes13checkedMallocEm(i64 noundef %mul.val.i.i) #11 ; 5 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !7      ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !13   ; 2 uses
  %.idx.i = shl i64 %i.n, 3                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE11setCapacityEm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN6hermes14checkedMalloc2Emm.exit.i
  %i.p = ptrtoaddr ptr %i.l to i64                ; 4 uses
  %i.q = ptrtoaddr ptr %i.k to i64
  %i.r = add i64 %.idx.i, %i.p
  %i.s = add i64 %i.p, 8
  %i.t = tail call i64 @llvm.umax.i64(i64 %i.r, i64 %i.s)
  %i.u = xor i64 %i.p, -1
  %i.v = add i64 %i.t, %i.u                       ; 2 uses
  %i.w = lshr i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 72
  %i.y = sub i64 %i.p, %i.q
  %diff.check = icmp ugt i64 %i.y, -32
  %or.cond9 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond9, label %.lr.ph.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.x, 4611686018427387900      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %i.aa = getelementptr i8, ptr %i.k, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.l, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.ac ; 2 uses
  %next.gep6 = getelementptr i8, ptr %i.l, i64 %i.ac ; 2 uses
  %i.ad = getelementptr i8, ptr %next.gep6, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep6, align 8, !tbaa !17
  %wide.load7 = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !17
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !17
  store <2 x ptr> %wide.load7, ptr %i.ae, align 8, !tbaa !17
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !166

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE11setCapacityEm.exit, label %.lr.ph.i.preheader10

.lr.ph.i.preheader10:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.012.i.ph = phi ptr [ %i.k, %.lr.ph.i.preheader ], [ %i.aa, %middle.block ]
  %.01011.i.ph = phi ptr [ %i.l, %.lr.ph.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader10, %.lr.ph.i
  %.012.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %.012.i.ph, %.lr.ph.i.preheader10 ] ; 2 uses
  %.01011.i = phi ptr [ %i.ah, %.lr.ph.i ], [ %.01011.i.ph, %.lr.ph.i.preheader10 ] ; 2 uses
  %i.ag = load ptr, ptr %.01011.i, align 8, !tbaa !17
  store ptr %i.ag, ptr %.012.i, align 8, !tbaa !17
  %i.ah = getelementptr inbounds nuw i8, ptr %.01011.i, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i, i64 8
  %i.aj = icmp ult ptr %i.ah, %i.o
  br i1 %i.aj, label %.lr.ph.i, label %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE11setCapacityEm.exit, !llvm.loop !167

_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE11setCapacityEm.exit: ; preds = %.lr.ph.i, %middle.block, %_ZN6hermes14checkedMalloc2Emm.exit.i
  tail call void @free(ptr noundef %i.l) #11
  store ptr %i.k, ptr %0, align 8, !tbaa !7
  store i64 %.sroa.speculated, ptr %i.a, align 8, !tbaa !19
  ret void
}

; Function Attrs: noreturn
declare void @_ZN6hermes2vm6GCBase3oomESt10error_code(ptr noundef nonnull align 8 dereferenceable(717), i32, ptr) local_unnamed_addr #7

declare { i32, ptr } @_ZN6hermes15make_error_codeENS_8OOMErrorE(i32 noundef) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_13GCPointerBaseEPKNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i = load i32, ptr %1, align 4, !tbaa !3 ; 3 uses
  %i.e = mul i32 %.sroa.0.0.copyload.i.i, 37
  %i.f = add i32 %i.c, -1                         ; 2 uses
  %.03649.i = and i32 %i.e, %i.f                  ; 2 uses
  %i.g = zext i32 %.03649.i to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.g ; 3 uses
  %.sroa.05.0.copyload50.i = load i32, ptr %i.h, align 4, !tbaa !3 ; 2 uses
  %i.i = icmp eq i32 %.sroa.0.0.copyload.i.i, %.sroa.05.0.copyload50.i
  br i1 %i.i, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit, label %.lr.ph.i, !prof !138

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %.sroa.05.0.copyload54.i = phi i32 [ %.sroa.05.0.copyload.i, %bb.d ], [ %.sroa.05.0.copyload50.i, %bb.b ] ; 2 uses
  %i.j = phi ptr [ %i.r, %bb.d ], [ %i.h, %bb.b ] ; 2 uses
  %.03653.i = phi i32 [ %.036.i, %bb.d ], [ %.03649.i, %bb.b ]
  %.03352.i = phi ptr [ %spec.select.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %.03851.i = phi i32 [ %i.o, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %i.k = icmp eq i32 %.sroa.05.0.copyload54.i, 536870911
  br i1 %i.k, label %bb.c, label %bb.d, !prof !59

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq ptr %.03352.i, null
  %i.l = select i1 %.not.i, ptr %i.j, ptr %.03352.i
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.m = icmp eq i32 %.sroa.05.0.copyload54.i, 536870910
  %i.n = icmp eq ptr %.03352.i, null
  %or.cond.not.i = select i1 %i.m, i1 %i.n, i1 false
  %spec.select.i = select i1 %or.cond.not.i, ptr %i.j, ptr %.03352.i
  %i.o = add i32 %.03851.i, 1
  %i.p = add i32 %.03851.i, %.03653.i
  %.036.i = and i32 %i.p, %i.f                    ; 2 uses
  %i.q = zext i32 %.036.i to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.q ; 3 uses
  %.sroa.05.0.copyload.i = load i32, ptr %i.r, align 4, !tbaa !3 ; 2 uses
  %i.s = icmp eq i32 %.sroa.0.0.copyload.i.i, %.sroa.05.0.copyload.i
  br i1 %i.s, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit, label %.lr.ph.i, !prof !139, !llvm.loop !140

_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit: ; preds = %bb.d, %bb.a, %bb.b, %bb.c
  %.sink.i = phi ptr [ %i.l, %bb.c ], [ null, %bb.a ], [ %i.h, %bb.b ], [ %i.r, %bb.d ]
  %.2.i = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ true, %bb.b ], [ true, %bb.d ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !157
  ret i1 %.2.i
}

declare noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE5shiftERNS0_13MutableHandleIS3_EERNS0_7RuntimeEjjj(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
_ZN4llvh8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEE15allocateBucketsEj.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !14     ; 4 uses
  %i.d = add i32 %1, -1
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = or i64 %i.f, %i.e                        ; 2 uses
  %i.h = lshr i64 %i.g, 2
  %i.i = or i64 %i.h, %i.g                        ; 2 uses
  %i.j = lshr i64 %i.i, 4
  %i.k = or i64 %i.j, %i.i                        ; 2 uses
  %i.l = lshr i64 %i.k, 8
  %i.m = or i64 %i.l, %i.k                        ; 2 uses
  %i.n = lshr i64 %i.m, 16
  %i.o = or i64 %i.n, %i.m
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = add i32 %i.p, 1
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.q, i32 64) ; 2 uses
  store i32 %.sroa.speculated, ptr %i.a, align 8, !tbaa !20
  %i.r = zext i32 %.sroa.speculated to i64
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #15 ; 9 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !14
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN4llvh8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEE15allocateBucketsEj.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !149
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !158
  %i.w = load i32, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx.i = shl nuw nsw i64 %i.x, 3               ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i
  %.not5.i = icmp eq i32 %i.w, 0
  br i1 %.not5.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.z = add nsw i64 %.idx.i, -8                  ; 2 uses
  %i.aa = lshr exact i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1
  %xtraiter27 = and i64 %i.ab, 7                  ; 2 uses
  %lcmp.mod28.not = icmp eq i64 %xtraiter27, 0
  br i1 %lcmp.mod28.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.06.i.prol = phi ptr [ %i.ac, %.lr.ph.i.prol ], [ %i.t, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter29 = phi i64 [ %prol.iter29.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  store i32 536870911, ptr %.06.i.prol, align 4, !tbaa !3
  %i.ac = getelementptr inbounds nuw i8, ptr %.06.i.prol, i64 8 ; 2 uses
  %prol.iter29.next = add i64 %prol.iter29, 1     ; 2 uses
  %prol.iter29.cmp.not = icmp eq i64 %prol.iter29.next, %xtraiter27
  br i1 %prol.iter29.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !168

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.06.i.unr = phi ptr [ %i.t, %.lr.ph.i.preheader ], [ %i.ac, %.lr.ph.i.prol ]
  %i.ad = icmp ult i64 %i.z, 56
  br i1 %i.ad, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.06.i = phi ptr [ %i.al, %.lr.ph.i ], [ %.06.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  store i32 536870911, ptr %.06.i, align 4, !tbaa !3
  %i.ae = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  store i32 536870911, ptr %i.ae, align 4, !tbaa !3
  %i.af = getelementptr inbounds nuw i8, ptr %.06.i, i64 16
  store i32 536870911, ptr %i.af, align 4, !tbaa !3
  %i.ag = getelementptr inbounds nuw i8, ptr %.06.i, i64 24
  store i32 536870911, ptr %i.ag, align 4, !tbaa !3
  %i.ah = getelementptr inbounds nuw i8, ptr %.06.i, i64 32
  store i32 536870911, ptr %i.ah, align 4, !tbaa !3
  %i.ai = getelementptr inbounds nuw i8, ptr %.06.i, i64 40
  store i32 536870911, ptr %i.ai, align 4, !tbaa !3
  %i.aj = getelementptr inbounds nuw i8, ptr %.06.i, i64 48
  store i32 536870911, ptr %i.aj, align 4, !tbaa !3
  %i.ak = getelementptr inbounds nuw i8, ptr %.06.i, i64 56
  store i32 536870911, ptr %i.ak, align 4, !tbaa !3
  %i.al = getelementptr inbounds nuw i8, ptr %.06.i, i64 64 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.al, %i.y
  br i1 %.not.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !169

bb.b:                                             ; preds = %_ZN4llvh8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEE15allocateBucketsEj.exit
  %i.am = zext i32 %i.b to i64
end_hunk_2
