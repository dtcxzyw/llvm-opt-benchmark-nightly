Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/CabBlockInStream?download=true
inline.NumInlined: 20
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.GUID = type { i32, i16, i16, [8 x i8] }
%"class.NArchive::NCab::CTempCabInBuffer2" = type { [8 x i8], i32 }
%"class.NArchive::NCab::CCheckSum2" = type { i32, i32, [4 x i8] }

$__clang_call_terminate = comdat any

$_ZN8NArchive4NCab17CCabBlockInStream14QueryInterfaceERK4GUIDPPv = comdat any

$_ZN8NArchive4NCab17CCabBlockInStream6AddRefEv = comdat any

$_ZN8NArchive4NCab17CCabBlockInStream7ReleaseEv = comdat any

$_ZTI19ISequentialInStream = comdat any

$_ZTS19ISequentialInStream = comdat any

$_ZTI8IUnknown = comdat any

$_ZTS8IUnknown = comdat any

$_ZTI13CMyUnknownImp = comdat any

$_ZTS13CMyUnknownImp = comdat any

@_ZTVN8NArchive4NCab17CCabBlockInStreamE = dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN8NArchive4NCab17CCabBlockInStreamE, ptr @_ZN8NArchive4NCab17CCabBlockInStream14QueryInterfaceERK4GUIDPPv, ptr @_ZN8NArchive4NCab17CCabBlockInStream6AddRefEv, ptr @_ZN8NArchive4NCab17CCabBlockInStream7ReleaseEv, ptr @_ZN8NArchive4NCab17CCabBlockInStreamD2Ev, ptr @_ZN8NArchive4NCab17CCabBlockInStreamD0Ev, ptr @_ZN8NArchive4NCab17CCabBlockInStream4ReadEPvjPj] }, align 8
@_ZTIN8NArchive4NCab17CCabBlockInStreamE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN8NArchive4NCab17CCabBlockInStreamE, i32 0, i32 2, ptr @_ZTI19ISequentialInStream, i64 2, ptr @_ZTI13CMyUnknownImp, i64 2050 }, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN8NArchive4NCab17CCabBlockInStreamE = dso_local constant [36 x i8] c"N8NArchive4NCab17CCabBlockInStreamE\00", align 1
@_ZTI19ISequentialInStream = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS19ISequentialInStream, ptr @_ZTI8IUnknown }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS19ISequentialInStream = linkonce_odr dso_local constant [22 x i8] c"19ISequentialInStream\00", comdat, align 1
@_ZTI8IUnknown = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS8IUnknown }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS8IUnknown = linkonce_odr dso_local constant [10 x i8] c"8IUnknown\00", comdat, align 1
@_ZTI13CMyUnknownImp = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13CMyUnknownImp }, comdat, align 8
@_ZTS13CMyUnknownImp = linkonce_odr dso_local constant [16 x i8] c"13CMyUnknownImp\00", comdat, align 1
@IID_IUnknown = external local_unnamed_addr global %struct.GUID, align 4

@_ZN8NArchive4NCab17CCabBlockInStreamD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN8NArchive4NCab17CCabBlockInStreamD2Ev

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8NArchive4NCab17CCabBlockInStream6CreateEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(50) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @MyAlloc(i64 noundef 65536) ; 2 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !8
  %i.d = icmp ne ptr %i.c, null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i1 [ %i.d, %bb.b ], [ true, %bb.a ]
  ret i1 %i.e
}

declare ptr @MyAlloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN8NArchive4NCab17CCabBlockInStreamD2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(50) initializes((0, 8)) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8NArchive4NCab17CCabBlockInStreamE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  invoke void @MyFree(ptr noundef %i.b)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20   ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = invoke noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #10
  unreachable

_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit:    ; preds = %bb.b, %bb.c
  ret void

bb.e:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #10
  unreachable
}

declare void @MyFree(ptr noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #11 ; 0 uses
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN8NArchive4NCab17CCabBlockInStreamD0Ev(ptr noundef nonnull align 8 dereferenceable(50) initializes((0, 8)) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8NArchive4NCab17CCabBlockInStreamE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  invoke void @MyFree(ptr noundef %i.b)
          to label %bb.b unwind label %bb.e, !inline_history !21

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20   ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN8NArchive4NCab17CCabBlockInStreamD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = invoke noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN8NArchive4NCab17CCabBlockInStreamD2Ev.exit unwind label %bb.d, !inline_history !21 ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #10, !inline_history !21
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #10, !inline_history !21
  unreachable

_ZN8NArchive4NCab17CCabBlockInStreamD2Ev.exit:    ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #12
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN8NArchive4NCab10CCheckSum26UpdateEPKvj(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(12) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !22     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 10 uses
  %.not38 = icmp eq i32 %2, 0
  br i1 %.not38, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.pre = load i32, ptr %i.b, align 4, !tbaa !24
  %i.d = load i8, ptr %i.c, align 4
  %i.e = zext i8 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 11
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %i.i = phi i32 [ %.pre, %.lr.ph ], [ %i.p, %.loopexit ] ; 2 uses
  %.041 = phi i32 [ %2, %.lr.ph ], [ %i.q, %.loopexit ] ; 4 uses
  %.02740 = phi ptr [ %1, %.lr.ph ], [ %i.j, %.loopexit ] ; 7 uses
  %.02939 = phi i32 [ %i.a, %.lr.ph ], [ %.231, %.loopexit ] ; 5 uses
  %.not33 = icmp eq i32 %i.i, 0
  br i1 %.not33, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.02740, i64 1
  %i.k = load i8, ptr %.02740, align 1, !tbaa !25
  %i.l = sext i32 %i.i to i64
  %i.m = getelementptr inbounds i8, ptr %i.c, i64 %i.l
  store i8 %i.k, ptr %i.m, align 1, !tbaa !25
  %i.n = load i32, ptr %i.b, align 4, !tbaa !24
  %i.o = add nsw i32 %i.n, 1
  %i.p = and i32 %i.o, 3                          ; 3 uses
  store i32 %i.p, ptr %i.b, align 4, !tbaa !24
  %i.q = add i32 %.041, -1                        ; 2 uses
  %i.r = icmp eq i32 %i.p, 0
  br i1 %i.r, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.c
  %i.s = load i8, ptr %i.f, align 1, !tbaa !25
  %i.t = zext i8 %i.s to i32
  %i.u = shl nuw nsw i32 %i.t, 8
  %i.v = or disjoint i32 %i.u, %i.e
  %i.w = load i8, ptr %i.g, align 2, !tbaa !25
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 16
  %i.z = or disjoint i32 %i.v, %i.y
  %i.aa = load i8, ptr %i.h, align 1, !tbaa !25
  %i.ab = zext i8 %i.aa to i32
  %i.ac = shl nuw i32 %i.ab, 24
  %i.ad = or disjoint i32 %i.z, %i.ac
  %i.ae = xor i32 %i.ad, %.02939
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.c
  %.231 = phi i32 [ %.02939, %bb.c ], [ %i.ae, %.preheader.preheader ] ; 2 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.b, !llvm.loop !26

._crit_edge.thread:                               ; preds = %.loopexit, %bb.a
  %.029.lcssa.ph = phi i32 [ %i.a, %bb.a ], [ %.231, %.loopexit ]
  store i32 %.029.lcssa.ph, ptr %0, align 4, !tbaa !22
  br label %._crit_edge60

.critedge:                                        ; preds = %bb.b
  %i.af = lshr i32 %.041, 2                       ; 5 uses
  %.not3448 = icmp eq i32 %i.af, 0
  br i1 %.not3448, label %._crit_edge, label %.lr.ph52.preheader

.lr.ph52.preheader:                               ; preds = %.critedge
  %i.ag = zext nneg i32 %i.af to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %.041, 32
  br i1 %min.iters.check, label %.lr.ph52.preheader87, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph52.preheader
  %n.vec = and i64 %i.ag, 1073741816              ; 4 uses
  %i.ah = trunc nuw nsw i64 %n.vec to i32
  %i.ai = sub nsw i32 %i.af, %i.ah
  %i.aj = shl nuw nsw i64 %n.vec, 2
  %i.ak = getelementptr i8, ptr %.02740, i64 %i.aj
  %i.al = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.02939, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.al, %vector.ph ], [ %i.ao, %vector.body ]
  %vec.phi84 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ap, %vector.body ]
  %i.am = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.02740, i64 %i.am ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 1
  %wide.load85 = load <4 x i32>, ptr %i.an, align 1
  %i.ao = xor <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.ap = xor <4 x i32> %wide.load85, %vec.phi84  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body
  %bin.rdx = xor <4 x i32> %i.ap, %i.ao
  %i.ar = tail call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ag
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph52.preheader87

.lr.ph52.preheader87:                             ; preds = %.lr.ph52.preheader, %middle.block
  %.02551.ph = phi i32 [ %i.af, %.lr.ph52.preheader ], [ %i.ai, %middle.block ]
  %.12850.ph = phi ptr [ %.02740, %.lr.ph52.preheader ], [ %i.ak, %middle.block ]
  %.349.ph = phi i32 [ %.02939, %.lr.ph52.preheader ], [ %i.ar, %middle.block ]
  br label %.lr.ph52

.lr.ph52:                                         ; preds = %.lr.ph52.preheader87, %.lr.ph52
  %.02551 = phi i32 [ %i.as, %.lr.ph52 ], [ %.02551.ph, %.lr.ph52.preheader87 ]
  %.12850 = phi ptr [ %i.au, %.lr.ph52 ], [ %.12850.ph, %.lr.ph52.preheader87 ] ; 2 uses
  %.349 = phi i32 [ %i.av, %.lr.ph52 ], [ %.349.ph, %.lr.ph52.preheader87 ]
  %i.as = add nsw i32 %.02551, -1                 ; 2 uses
  %i.at = load i32, ptr %.12850, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %.12850, i64 4
  %i.av = xor i32 %i.at, %.349                    ; 2 uses
  %.not34 = icmp eq i32 %i.as, 0
  br i1 %.not34, label %._crit_edge.loopexit, label %.lr.ph52, !llvm.loop !31

._crit_edge.loopexit:                             ; preds = %.lr.ph52, %middle.block
  %.lcssa = phi i32 [ %i.ar, %middle.block ], [ %i.av, %.lr.ph52 ]
  %i.aw = add nsw i32 %i.af, -1
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = shl nuw nsw i64 %i.ax, 2
  %i.az = getelementptr i8, ptr %.02740, i64 %i.ay
  %scevgep = getelementptr i8, ptr %i.az, i64 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.critedge
  %.3.lcssa = phi i32 [ %.02939, %.critedge ], [ %.lcssa, %._crit_edge.loopexit ]
  %.128.lcssa = phi ptr [ %.02740, %.critedge ], [ %scevgep, %._crit_edge.loopexit ] ; 3 uses
  store i32 %.3.lcssa, ptr %0, align 4, !tbaa !22
  %i.ba = and i32 %.041, 3                        ; 3 uses
  %.not3555 = icmp eq i32 %i.ba, 0
  br i1 %.not3555, label %._crit_edge60, label %.lr.ph59

.lr.ph59:                                         ; preds = %._crit_edge
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.pre64 = load i32, ptr %i.b, align 4, !tbaa !24
  %i.bc = load i8, ptr %.128.lcssa, align 1, !tbaa !25
  %i.bd = sext i32 %.pre64 to i64
  %i.be = getelementptr inbounds i8, ptr %i.bb, i64 %i.bd
  store i8 %i.bc, ptr %i.be, align 1, !tbaa !25
  %i.bf = load i32, ptr %i.b, align 4, !tbaa !24
  %i.bg = add nsw i32 %i.bf, 1
  %i.bh = and i32 %i.bg, 3                        ; 2 uses
  store i32 %i.bh, ptr %i.b, align 4, !tbaa !24
  %.not35 = icmp eq i32 %i.ba, 1
  br i1 %.not35, label %._crit_edge60, label %bb.d

bb.d:                                             ; preds = %.lr.ph59
  %i.bi = getelementptr inbounds nuw i8, ptr %.128.lcssa, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !25
  %i.bk = zext nneg i32 %i.bh to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bk
  store i8 %i.bj, ptr %i.bl, align 1, !tbaa !25
  %i.bm = load i32, ptr %i.b, align 4, !tbaa !24
  %i.bn = add nsw i32 %i.bm, 1
  %i.bo = and i32 %i.bn, 3                        ; 2 uses
  store i32 %i.bo, ptr %i.b, align 4, !tbaa !24
  %.not35.1 = icmp eq i32 %i.ba, 2
  br i1 %.not35.1, label %._crit_edge60, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bp = getelementptr inbounds nuw i8, ptr %.128.lcssa, i64 2
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !25
  %i.br = zext nneg i32 %i.bo to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.br
  store i8 %i.bq, ptr %i.bs, align 1, !tbaa !25
  %i.bt = load i32, ptr %i.b, align 4, !tbaa !24
  %i.bu = add nsw i32 %i.bt, 1
  %i.bv = and i32 %i.bu, 3
  store i32 %i.bv, ptr %i.b, align 4, !tbaa !24
  br label %._crit_edge60

._crit_edge60:                                    ; preds = %.lr.ph59, %bb.d, %bb.e, %._crit_edge.thread, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive4NCab17CCabBlockInStream7PreReadERjS2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(50) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.NArchive::NCab::CTempCabInBuffer2", align 4 ; 12 uses
  %4 = alloca %"class.NArchive::NCab::CCheckSum2", align 4 ; 16 uses
  %i.a = alloca [2 x i8], align 1                 ; 7 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 10 uses
  store i32 0, ptr %i.c, align 4, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.f = call noundef i32 @_Z16ReadStream_FALSEP19ISequentialInStreamPvm(ptr noundef %i.e, ptr noundef nonnull %3, i64 noundef 8) ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %.promoted.i = load i32, ptr %i.c, align 4, !tbaa !32 ; 9 uses
  %i.g = add i32 %.promoted.i, 1                  ; 2 uses
  store i32 %i.g, ptr %i.c, align 4, !tbaa !32
  %i.h = zext i32 %.promoted.i to i64
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !25
  %i.k = zext i8 %i.j to i32
  %i.l = add i32 %.promoted.i, 2                  ; 2 uses
  store i32 %i.l, ptr %i.c, align 4, !tbaa !32
  %i.m = zext i32 %i.g to i64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !25
  %i.p = zext i8 %i.o to i32
  %i.q = shl nuw nsw i32 %i.p, 8
  %i.r = or disjoint i32 %i.q, %i.k
  %i.s = add i32 %.promoted.i, 3                  ; 2 uses
  store i32 %i.s, ptr %i.c, align 4, !tbaa !32
  %i.t = zext i32 %i.l to i64
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !25
  %i.w = zext i8 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 16
  %i.y = or disjoint i32 %i.r, %i.x
  %i.z = add i32 %.promoted.i, 4                  ; 2 uses
  store i32 %i.z, ptr %i.c, align 4, !tbaa !32
  %i.aa = zext i32 %i.s to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !25
  %i.ad = zext i8 %i.ac to i32
  %i.ae = shl nuw i32 %i.ad, 24
  %i.af = or disjoint i32 %i.y, %i.ae             ; 2 uses
  %i.ag = add i32 %.promoted.i, 5                 ; 2 uses
  store i32 %i.ag, ptr %i.c, align 4, !tbaa !32
  %i.ah = zext i32 %i.z to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !25
  %i.ak = zext i8 %i.aj to i32
  %i.al = add i32 %.promoted.i, 6                 ; 2 uses
  store i32 %i.al, ptr %i.c, align 4, !tbaa !32
  %i.am = zext i32 %i.ag to i64
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !25
  %i.ap = zext i8 %i.ao to i32
  %i.aq = shl nuw nsw i32 %i.ap, 8
  %i.ar = or disjoint i32 %i.aq, %i.ak
  store i32 %i.ar, ptr %1, align 4, !tbaa !4
  %i.as = add i32 %.promoted.i, 7                 ; 2 uses
  store i32 %i.as, ptr %i.c, align 4, !tbaa !32
  %i.at = zext i32 %i.al to i64
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !25
  %i.aw = zext i8 %i.av to i32
  %i.ax = add i32 %.promoted.i, 8
  store i32 %i.ax, ptr %i.c, align 4, !tbaa !32
  %i.ay = zext i32 %i.as to i64
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !25
  %i.bb = zext i8 %i.ba to i32
  %i.bc = shl nuw nsw i32 %i.bb, 8
  %i.bd = or disjoint i32 %i.bc, %i.aw
  store i32 %i.bd, ptr %2, align 4, !tbaa !4
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !34 ; 2 uses
  %.not53 = icmp eq i32 %i.bf, 0
  br i1 %.not53, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bg = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !8
  %i.bj = zext i32 %i.bf to i64
  %i.bk = call noundef i32 @_Z16ReadStream_FALSEP19ISequentialInStreamPvm(ptr noundef %i.bg, ptr noundef %i.bi, i64 noundef %i.bj) ; 2 uses
  %.not54 = icmp eq i32 %i.bk, 0
  br i1 %.not54, label %bb.d, label %bb.v

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.bl, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !tbaa !22
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 9 uses
  store i32 0, ptr %i.bm, align 4, !tbaa !24
  %i.bn = load i32, ptr %1, align 4, !tbaa !4     ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !36, !range !37, !noundef !38
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !39
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.bu = icmp ult i32 %i.bn, 2
  br i1 %i.bu, label %bb.u, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.bv = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.bw = call noundef i32 @_Z16ReadStream_FALSEP19ISequentialInStreamPvm(ptr noundef %i.bv, ptr noundef nonnull %i.a, i64 noundef 2) ; 2 uses
  %.not55 = icmp eq i32 %i.bw, 0
  br i1 %.not55, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.bx = load i8, ptr %i.a, align 1, !tbaa !25
  %i.by = icmp ne i8 %i.bx, 67
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = icmp ne i8 %i.ca, 75
  %or.cond = select i1 %i.by, i1 true, i1 %i.cb
  br i1 %or.cond, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.g, %bb.h
  %.446.ph = phi i32 [ 1, %bb.h ], [ %i.bw, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.u

bb.i:                                             ; preds = %bb.h
  %i.cc = add i32 %i.bn, -2
  call void @_ZN8NArchive4NCab10CCheckSum26UpdateEPKvj(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull %i.a, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e, %bb.d
  %.1 = phi i32 [ %i.cc, %bb.i ], [ %i.bn, %bb.e ], [ %i.bn, %bb.d ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !39 ; 3 uses
  %i.cf = sub i32 65536, %i.ce
  %i.cg = icmp ult i32 %i.cf, %.1
  br i1 %i.cg, label %bb.u, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not56 = icmp eq i32 %.1, 0
  br i1 %.not56, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.ch = zext i32 %.1 to i64                     ; 2 uses
  store i64 %i.ch, ptr %i.b, align 8, !tbaa !40
  %i.ci = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !8
  %i.cl = zext i32 %i.ce to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cl
  %i.cn = call noundef i32 @_Z10ReadStreamP19ISequentialInStreamPvPm(ptr noundef %i.ci, ptr noundef %i.cm, ptr noundef nonnull %i.b) ; 2 uses
  %.not57 = icmp eq i32 %i.cn, 0
  br i1 %.not57, label %bb.m, label %.thread68

.thread68:                                        ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.co = load i32, ptr %i.cd, align 4, !tbaa !39 ; 2 uses
  %i.cp = load i64, ptr %i.b, align 8, !tbaa !40  ; 2 uses
  %i.cq = trunc i64 %i.cp to i32                  ; 3 uses
  %i.cr = load i32, ptr %4, align 4, !tbaa !22    ; 2 uses
  %.not38.i = icmp eq i32 %i.cq, 0
  br i1 %.not38.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !8
  %i.ct = zext i32 %i.co to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %.pre.i = load i32, ptr %i.bm, align 4, !tbaa !24
  %i.cw = load i8, ptr %i.cv, align 4
  %i.cx = zext i8 %i.cw to i32
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 9
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 11
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %.pre64.i = phi i32 [ %.pre.i, %.lr.ph.i ], [ %i.dh, %.loopexit.i ] ; 2 uses
  %.041.i = phi i32 [ %i.cq, %.lr.ph.i ], [ %i.di, %.loopexit.i ] ; 4 uses
  %.02740.i = phi ptr [ %i.cu, %.lr.ph.i ], [ %i.db, %.loopexit.i ] ; 7 uses
  %.02939.i = phi i32 [ %i.cr, %.lr.ph.i ], [ %.231.i, %.loopexit.i ] ; 5 uses
  %.not33.i = icmp eq i32 %.pre64.i, 0
  br i1 %.not33.i, label %.critedge.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.db = getelementptr inbounds nuw i8, ptr %.02740.i, i64 1
  %i.dc = load i8, ptr %.02740.i, align 1, !tbaa !25
  %i.dd = sext i32 %.pre64.i to i64
  %i.de = getelementptr inbounds i8, ptr %i.cv, i64 %i.dd
  store i8 %i.dc, ptr %i.de, align 1, !tbaa !25
  %i.df = load i32, ptr %i.bm, align 4, !tbaa !24
  %i.dg = add nsw i32 %i.df, 1
  %i.dh = and i32 %i.dg, 3                        ; 3 uses
  store i32 %i.dh, ptr %i.bm, align 4, !tbaa !24
  %i.di = add i32 %.041.i, -1                     ; 2 uses
  %i.dj = icmp eq i32 %i.dh, 0
  br i1 %i.dj, label %.preheader.preheader.i, label %.loopexit.i

.preheader.preheader.i:                           ; preds = %bb.o
  %i.dk = load i8, ptr %i.cy, align 1, !tbaa !25
  %i.dl = zext i8 %i.dk to i32
  %i.dm = shl nuw nsw i32 %i.dl, 8
  %i.dn = or disjoint i32 %i.dm, %i.cx
  %i.do = load i8, ptr %i.cz, align 2, !tbaa !25
  %i.dp = zext i8 %i.do to i32
  %i.dq = shl nuw nsw i32 %i.dp, 16
  %i.dr = or disjoint i32 %i.dn, %i.dq
  %i.ds = load i8, ptr %i.da, align 1, !tbaa !25
  %i.dt = zext i8 %i.ds to i32
  %i.du = shl nuw i32 %i.dt, 24
  %i.dv = or disjoint i32 %i.dr, %i.du
  %i.dw = xor i32 %i.dv, %.02939.i
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.preheader.i, %bb.o
  %.231.i = phi i32 [ %.02939.i, %bb.o ], [ %i.dw, %.preheader.preheader.i ] ; 2 uses
  %.not.i = icmp eq i32 %i.di, 0
  br i1 %.not.i, label %._crit_edge.thread.i, label %bb.n, !llvm.loop !26

._crit_edge.thread.i:                             ; preds = %.loopexit.i, %bb.m
  %.029.lcssa.ph.i = phi i32 [ %i.cr, %bb.m ], [ %.231.i, %.loopexit.i ]
  store i32 %.029.lcssa.ph.i, ptr %4, align 4, !tbaa !22
  br label %.loopexit

.critedge.i:                                      ; preds = %bb.n
  %i.dx = lshr i32 %.041.i, 2                     ; 5 uses
  %.not3448.i = icmp eq i32 %i.dx, 0
  br i1 %.not3448.i, label %._crit_edge.i, label %.lr.ph52.i.preheader

.lr.ph52.i.preheader:                             ; preds = %.critedge.i
  %5 = zext nneg i32 %i.dx to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %.041.i, 32
  br i1 %min.iters.check, label %.lr.ph52.i.preheader121, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph52.i.preheader
  %n.vec = and i64 %5, 1073741816                 ; 4 uses
  %i.dy = trunc nuw nsw i64 %n.vec to i32
  %i.dz = sub nsw i32 %i.dx, %i.dy
  %i.ea = shl nuw nsw i64 %n.vec, 2
  %i.eb = getelementptr i8, ptr %.02740.i, i64 %i.ea
  %i.ec = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.02939.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ec, %vector.ph ], [ %i.ef, %vector.body ]
  %vec.phi99 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.eg, %vector.body ]
  %i.ed = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.02740.i, i64 %i.ed ; 2 uses
  %i.ee = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 1
  %wide.load100 = load <4 x i32>, ptr %i.ee, align 1
  %i.ef = xor <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.eg = xor <4 x i32> %wide.load100, %vec.phi99 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eh = icmp eq i64 %index.next, %n.vec
  br i1 %i.eh, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  %bin.rdx = xor <4 x i32> %i.eg, %i.ef
  %i.ei = call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %5
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %.lr.ph52.i.preheader121

.lr.ph52.i.preheader121:                          ; preds = %.lr.ph52.i.preheader, %middle.block
  %.02551.i.ph = phi i32 [ %i.dx, %.lr.ph52.i.preheader ], [ %i.dz, %middle.block ]
  %.12850.i.ph = phi ptr [ %.02740.i, %.lr.ph52.i.preheader ], [ %i.eb, %middle.block ]
  %.349.i.ph = phi i32 [ %.02939.i, %.lr.ph52.i.preheader ], [ %i.ei, %middle.block ]
  br label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %.lr.ph52.i.preheader121, %.lr.ph52.i
  %.02551.i = phi i32 [ %i.ej, %.lr.ph52.i ], [ %.02551.i.ph, %.lr.ph52.i.preheader121 ]
  %.12850.i = phi ptr [ %i.el, %.lr.ph52.i ], [ %.12850.i.ph, %.lr.ph52.i.preheader121 ] ; 2 uses
  %.349.i = phi i32 [ %i.em, %.lr.ph52.i ], [ %.349.i.ph, %.lr.ph52.i.preheader121 ]
  %i.ej = add nsw i32 %.02551.i, -1               ; 2 uses
  %i.ek = load i32, ptr %.12850.i, align 1
  %i.el = getelementptr inbounds nuw i8, ptr %.12850.i, i64 4
  %i.em = xor i32 %i.ek, %.349.i                  ; 2 uses
  %.not34.i = icmp eq i32 %i.ej, 0
  br i1 %.not34.i, label %._crit_edge.loopexit.i, label %.lr.ph52.i, !llvm.loop !43

._crit_edge.loopexit.i:                           ; preds = %.lr.ph52.i, %middle.block
  %.lcssa95 = phi i32 [ %i.ei, %middle.block ], [ %i.em, %.lr.ph52.i ]
  %i.en = add nsw i32 %i.dx, -1
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = shl nuw nsw i64 %i.eo, 2
  %i.eq = getelementptr i8, ptr %.02740.i, i64 %i.ep
  %scevgep.i = getelementptr i8, ptr %i.eq, i64 4
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.critedge.i
  %.3.lcssa.i = phi i32 [ %.02939.i, %.critedge.i ], [ %.lcssa95, %._crit_edge.loopexit.i ]
  %.128.lcssa.i = phi ptr [ %.02740.i, %.critedge.i ], [ %scevgep.i, %._crit_edge.loopexit.i ] ; 3 uses
  store i32 %.3.lcssa.i, ptr %4, align 4, !tbaa !22
  %i.er = and i32 %.041.i, 3                      ; 3 uses
  %.not3555.i = icmp eq i32 %i.er, 0
  br i1 %.not3555.i, label %.loopexit, label %.lr.ph59.i

.lr.ph59.i:                                       ; preds = %._crit_edge.i
  %.promoted = load i32, ptr %i.bm, align 4, !tbaa !24 ; 2 uses
  %i.es = load i8, ptr %.128.lcssa.i, align 1, !tbaa !25
  store i8 %i.es, ptr %i.cv, align 4, !tbaa !25
  %i.et = add nsw i32 %.promoted, 1
  %i.eu = and i32 %i.et, 3                        ; 2 uses
  store i32 %i.eu, ptr %i.bm, align 4, !tbaa !24
  %.not35.i = icmp eq i32 %i.er, 1
  br i1 %.not35.i, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %.lr.ph59.i
  %i.ev = getelementptr inbounds nuw i8, ptr %.128.lcssa.i, i64 1
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !25
  %i.ex = zext nneg i32 %i.eu to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.ex
  store i8 %i.ew, ptr %i.ey, align 1, !tbaa !25
  %i.ez = and i32 %.promoted, 3
  %i.fa = xor i32 %i.ez, 2                        ; 3 uses
  store i32 %i.fa, ptr %i.bm, align 4, !tbaa !24
  %.not35.i.1 = icmp eq i32 %i.er, 2
  br i1 %.not35.i.1, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fb = getelementptr inbounds nuw i8, ptr %.128.lcssa.i, i64 2
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !25
  %i.fd = zext nneg i32 %i.fa to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.fd
  store i8 %i.fc, ptr %i.fe, align 1, !tbaa !25
  %i.ff = add nuw nsw i32 %i.fa, 1
  %i.fg = and i32 %i.ff, 3
  store i32 %i.fg, ptr %i.bm, align 4, !tbaa !24
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph59.i, %bb.p, %bb.q, %._crit_edge.i, %._crit_edge.thread.i
  %i.fh = add i32 %i.co, %i.cq                    ; 2 uses
  store i32 %i.fh, ptr %i.cd, align 4, !tbaa !39
  %.not58 = icmp eq i64 %i.cp, %i.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br i1 %.not58, label %bb.r, label %bb.u

bb.r:                                             ; preds = %.loopexit, %bb.k
  %i.fi = phi i32 [ %i.fh, %.loopexit ], [ %i.ce, %bb.k ]
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.fi, ptr %i.fj, align 8, !tbaa !44
  %i.fk = load i32, ptr %i.bm, align 4, !tbaa !24 ; 5 uses
  %i.fl = icmp sgt i32 %i.fk, 0
  br i1 %i.fl, label %.lr.ph.i62, label %_ZN8NArchive4NCab10CCheckSum216FinishDataUpdateEv.exit

.lr.ph.i62:                                       ; preds = %bb.r
  %.promoted.i63 = load i32, ptr %4, align 4      ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.fk to i64 ; 3 uses
  %min.iters.check103 = icmp ult i32 %i.fk, 8
  br i1 %min.iters.check103, label %scalar.ph102.preheader, label %vector.ph104

vector.ph104:                                     ; preds = %.lr.ph.i62
  %n.vec105 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %i.fn = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.promoted.i63, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.fk, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph104
  %index107 = phi i64 [ 0, %vector.ph104 ], [ %index.next112, %vector.body106 ] ; 2 uses
  %vec.phi108 = phi <4 x i32> [ %i.fn, %vector.ph104 ], [ %i.fz, %vector.body106 ]
  %vec.phi109 = phi <4 x i32> [ zeroinitializer, %vector.ph104 ], [ %i.ga, %vector.body106 ]
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph104 ], [ %vec.ind.next, %vector.body106 ] ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 %index107 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %wide.load110 = load <4 x i8>, ptr %i.fo, align 4, !tbaa !25
  %wide.load111 = load <4 x i8>, ptr %i.fp, align 4, !tbaa !25
  %i.fq = zext <4 x i8> %wide.load110 to <4 x i32>
  %i.fr = zext <4 x i8> %wide.load111 to <4 x i32>
  %i.fs = xor <4 x i32> %vec.ind, splat (i32 -1)
  %i.ft = add nsw <4 x i32> %broadcast.splat, %i.fs
  %reass.sub = sub <4 x i32> %broadcast.splat, %vec.ind
  %i.fu = shl nsw <4 x i32> %i.ft, splat (i32 3)
  %i.fv = shl <4 x i32> %reass.sub, splat (i32 3)
  %i.fw = add <4 x i32> %i.fv, splat (i32 -40)
  %i.fx = shl <4 x i32> %i.fq, %i.fu
  %i.fy = shl <4 x i32> %i.fr, %i.fw
  %i.fz = xor <4 x i32> %i.fx, %vec.phi108        ; 2 uses
  %i.ga = xor <4 x i32> %i.fy, %vec.phi109        ; 2 uses
  %index.next112 = add nuw i64 %index107, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.gb = icmp eq i64 %index.next112, %n.vec105
  br i1 %i.gb, label %middle.block113, label %vector.body106, !llvm.loop !45

middle.block113:                                  ; preds = %vector.body106
  %bin.rdx114 = xor <4 x i32> %i.ga, %i.fz
  %i.gc = call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx114) ; 2 uses
  %cmp.n115 = icmp eq i64 %n.vec105, %wide.trip.count.i
  br i1 %cmp.n115, label %._crit_edge.i64, label %scalar.ph102.preheader

scalar.ph102.preheader:                           ; preds = %.lr.ph.i62, %middle.block113
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i62 ], [ %n.vec105, %middle.block113 ]
  %.ph = phi i32 [ %.promoted.i63, %.lr.ph.i62 ], [ %i.gc, %middle.block113 ]
  br label %scalar.ph102

._crit_edge.i64:                                  ; preds = %scalar.ph102, %middle.block113
  %.lcssa = phi i32 [ %i.gc, %middle.block113 ], [ %i.gm, %scalar.ph102 ]
  store i32 %.lcssa, ptr %4, align 4, !tbaa !22
  br label %_ZN8NArchive4NCab10CCheckSum216FinishDataUpdateEv.exit

scalar.ph102:                                     ; preds = %scalar.ph102.preheader, %scalar.ph102
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph102 ], [ %indvars.iv.i.ph, %scalar.ph102.preheader ] ; 3 uses
  %i.gd = phi i32 [ %i.gm, %scalar.ph102 ], [ %.ph, %scalar.ph102.preheader ]
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fm, i64 %indvars.iv.i
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !25
  %i.gg = zext i8 %i.gf to i32
  %i.gh = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.gi = xor i32 %i.gh, -1
  %i.gj = add nsw i32 %i.fk, %i.gi
  %i.gk = shl nsw i32 %i.gj, 3
  %i.gl = shl i32 %i.gg, %i.gk
  %i.gm = xor i32 %i.gl, %i.gd                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i64, label %scalar.ph102, !llvm.loop !46

_ZN8NArchive4NCab10CCheckSum216FinishDataUpdateEv.exit: ; preds = %bb.r, %._crit_edge.i64
  %i.gn = icmp eq i32 %i.af, 0
  br i1 %i.gn, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN8NArchive4NCab10CCheckSum216FinishDataUpdateEv.exit
  %i.go = load i32, ptr %1, align 4, !tbaa !4
  %i.gp = load i32, ptr %2, align 4, !tbaa !4
  %i.gq = shl i32 %i.gp, 16
  %i.gr = or i32 %i.gq, %i.go
  %i.gs = load i32, ptr %4, align 4, !tbaa !22
  %i.gt = xor i32 %i.gr, %i.gs
  %i.gu = icmp ne i32 %i.gt, %i.af
  br label %bb.t

bb.t:                                             ; preds = %_ZN8NArchive4NCab10CCheckSum216FinishDataUpdateEv.exit, %bb.s
  %.0 = phi i1 [ %i.gu, %bb.s ], [ false, %_ZN8NArchive4NCab10CCheckSum216FinishDataUpdateEv.exit ] ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.gw = load i8, ptr %i.gv, align 8, !tbaa !47, !range !37, !noundef !38
  %i.gx = zext i1 %.0 to i8
  %i.gy = or i8 %i.gw, %i.gx
  store i8 %i.gy, ptr %i.gv, align 8, !tbaa !47
  %i.gz = zext i1 %.0 to i32
  br label %bb.u

bb.u:                                             ; preds = %.thread68, %.thread, %bb.t, %.loopexit, %bb.j, %bb.f
  %.9 = phi i32 [ %.446.ph, %.thread ], [ 1, %bb.f ], [ 1, %bb.j ], [ %i.gz, %bb.t ], [ 1, %.loopexit ], [ %i.cn, %.thread68 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.c, %bb.a
  %.11 = phi i32 [ %i.f, %bb.a ], [ %.9, %bb.u ], [ %i.bk, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret i32 %.11
}

declare noundef i32 @_Z16ReadStream_FALSEP19ISequentialInStreamPvm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef i32 @_Z10ReadStreamP19ISequentialInStreamPvPm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZN8NArchive4NCab17CCabBlockInStream4ReadEPvjPj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(50) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) unnamed_addr #8 align 2 {
bb.a:
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b
end_hunk_0
