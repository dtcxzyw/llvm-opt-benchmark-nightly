inline.NumInlined: 7943
inline.NumDeleted: 2416
begin_hunk_0_@_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox13AlignedBuffer13fillNewMemoryIiEEvmmRKSt8optionalIT_E(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.217", align 16 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !270  ; 2 uses
  %.not = icmp ugt i64 %2, %i.b
  br i1 %.not, label %bb.b, label %bb.e, !prof !37

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !812
  store i64 %2, ptr %4, align 16, !tbaa !36, !alias.scope !815, !noalias !812
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.b, ptr %i.c, align 16, !tbaa !36, !alias.scope !815, !noalias !812
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.24, i64 11, i64 68, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !812
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox13AlignedBuffer13fillNewMemoryIiEEvmmRKSt8optionalIT_EE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull @.str.24) #36
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %5, align 8, !tbaa !63     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !36
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.a
  %.not8 = icmp ugt i64 %2, %1
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.k = load i8, ptr %i.j, align 4, !range !71
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond = select i1 %.not8, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.f, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.n = load i8, ptr %i.m, align 4, !tbaa !276
  %i.o = and i8 %i.n, 2
  %.not.i = icmp eq i8 %i.o, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit, label %bb.g, !prof !67

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #36
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit: ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !277  ; 2 uses
  %i.r = lshr i64 %1, 2                           ; 2 uses
  %i.s = lshr i64 %2, 2                           ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.s
  %i.u = load i32, ptr %3, align 4, !tbaa !3      ; 3 uses
  %.not5.i.i.i = icmp samesign eq i64 %i.r, %i.s
  br i1 %.not5.i.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %iter.check

iter.check:                                       ; preds = %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.r ; 5 uses
  %i.w = add i64 %2, -4
  %i.x = and i64 %1, -4
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  %i.z = lshr i64 %i.y, 2
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 5 uses
  %min.iters.check = icmp ult i64 %i.y, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check19 = icmp ult i64 %i.y, 124
  br i1 %min.iters.check19, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.aa, 24
  %n.vec = and i64 %i.aa, 9223372036854775776     ; 4 uses
  %i.ab = shl i64 %n.vec, 2
  %i.ac = getelementptr i8, ptr %i.v, i64 %i.ab
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.u, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ad ; 4 uses
  %i.ae = getelementptr i8, ptr %next.gep, i64 32
  %i.af = getelementptr i8, ptr %next.gep, i64 64
  %i.ag = getelementptr i8, ptr %next.gep, i64 96
  store <8 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat, ptr %i.ae, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat, ptr %i.af, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat, ptr %i.ag, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !818

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !819

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec21 = and i64 %i.aa, 9223372036854775800   ; 3 uses
  %i.ai = shl i64 %n.vec21, 2
  %i.aj = getelementptr i8, ptr %i.v, i64 %i.ai
  %broadcast.splatinsert22 = insertelement <8 x i32> poison, i32 %i.u, i64 0
  %broadcast.splat23 = shufflevector <8 x i32> %broadcast.splatinsert22, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index24 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next26, %vec.epilog.vector.body ] ; 2 uses
  %i.ak = shl i64 %index24, 2
  %next.gep25 = getelementptr i8, ptr %i.v, i64 %i.ak
  store <8 x i32> %broadcast.splat23, ptr %next.gep25, align 4, !tbaa !3
  %index.next26 = add nuw i64 %index24, 8         ; 2 uses
  %i.al = icmp eq i64 %index.next26, %n.vec21
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !820

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n27 = icmp eq i64 %i.aa, %n.vec21
  br i1 %cmp.n27, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06.i.i.i.ph = phi ptr [ %i.v, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.u, ptr %.06.i.i.i, align 4, !tbaa !3
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.t
  br i1 %.not.i.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !821

_ZSt4fillIPiiEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNKS0_9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUlT_E_EEvPKmiibSH_EUlimE_ZNS3_ISI_EEvSK_iibSH_EUliE_EEviiSH_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.285) align 8 %2, ptr noundef byval(%class.anon.286) align 8 %3) local_unnamed_addr #11 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUlT_E_EEvPKmiibSG_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !384, !range !71, !noundef !72
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !388
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !134
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUlT_E_EEvPKmiibSG_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !822, !nonnull !72, !align !212
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !363
  %4 = sext i32 %i.d to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !72, !align !212
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !72, !align !212
  br label %bb.d

bb.d:                                             ; preds = %_ZZNK8facebook5velox9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSE_.exit.i, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bl, %_ZZNK8facebook5velox9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSE_.exit.i ] ; 3 uses
  %i.ai = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %5 = or disjoint i64 %i.ai, %4                  ; 2 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %5
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3  ; 5 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %iter.check249, label %_ZZNK8facebook5velox9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSE_.exit.i

iter.check249:                                    ; preds = %bb.d
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !363
  %i.an = getelementptr inbounds [4 x i8], ptr %i.am, i64 %5
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !3  ; 2 uses
  %i.ap = add nsw i32 %i.ao, %i.ak                ; 3 uses
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !363
  %i.ar = sext i32 %i.ao to i64
  %wide.trip.count.i.i = zext nneg i32 %i.ak to i64 ; 6 uses
  %invariant.gep.i.i = getelementptr [4 x i8], ptr %i.aq, i64 %i.ar ; 3 uses
  %min.iters.check230 = icmp ult i32 %i.ak, 4
  br i1 %min.iters.check230, label %vec.epilog.scalar.ph250.preheader, label %vector.main.loop.iter.check231

vector.main.loop.iter.check231:                   ; preds = %iter.check249
  %min.iters.check232 = icmp ult i32 %i.ak, 32
  br i1 %min.iters.check232, label %vec.epilog.ph253, label %vector.ph233

vector.ph233:                                     ; preds = %vector.main.loop.iter.check231
  %n.mod.vf234 = and i64 %wide.trip.count.i.i, 28
  %n.vec235 = and i64 %wide.trip.count.i.i, 2147483616 ; 4 uses
  %broadcast.splatinsert236 = insertelement <8 x i32> poison, i32 %i.ap, i64 0
  %broadcast.splat237 = shufflevector <8 x i32> %broadcast.splatinsert236, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body238

vector.body238:                                   ; preds = %vector.body238, %vector.ph233
  %index239 = phi i64 [ 0, %vector.ph233 ], [ %index.next244, %vector.body238 ] ; 2 uses
  %vec.ind240 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph233 ], [ %vec.ind.next245, %vector.body238 ] ; 5 uses
  %i.as = xor <8 x i32> %vec.ind240, splat (i32 -1)
  %i.at = add <8 x i32> %broadcast.splat237, %i.as
  %reass.sub280 = sub <8 x i32> %broadcast.splat237, %vec.ind240
  %i.au = add <8 x i32> %reass.sub280, splat (i32 -9)
  %reass.sub281 = sub <8 x i32> %broadcast.splat237, %vec.ind240
  %i.av = add <8 x i32> %reass.sub281, splat (i32 -17)
  %reass.sub282 = sub <8 x i32> %broadcast.splat237, %vec.ind240
  %i.aw = add <8 x i32> %reass.sub282, splat (i32 -25)
  %i.ax = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %index239 ; 4 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 32
  %i.az = getelementptr i8, ptr %i.ax, i64 64
  %i.ba = getelementptr i8, ptr %i.ax, i64 96
  store <8 x i32> %i.at, ptr %i.ax, align 4, !tbaa !3
  store <8 x i32> %i.au, ptr %i.ay, align 4, !tbaa !3
  store <8 x i32> %i.av, ptr %i.az, align 4, !tbaa !3
  store <8 x i32> %i.aw, ptr %i.ba, align 4, !tbaa !3
  %index.next244 = add nuw i64 %index239, 32      ; 2 uses
  %vec.ind.next245 = add <8 x i32> %vec.ind240, splat (i32 32)
  %i.bb = icmp eq i64 %index.next244, %n.vec235
  br i1 %i.bb, label %middle.block246, label %vector.body238, !llvm.loop !823

middle.block246:                                  ; preds = %vector.body238
  %cmp.n247 = icmp eq i64 %n.vec235, %wide.trip.count.i.i
  br i1 %cmp.n247, label %_ZZNK8facebook5velox9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSE_.exit.i, label %vec.epilog.iter.check251

vec.epilog.iter.check251:                         ; preds = %middle.block246
  %min.epilog.iters.check252 = icmp eq i64 %n.mod.vf234, 0
  br i1 %min.epilog.iters.check252, label %vec.epilog.scalar.ph250.preheader, label %vec.epilog.ph253, !prof !380

vec.epilog.ph253:                                 ; preds = %vector.main.loop.iter.check231, %vec.epilog.iter.check251
  %vec.epilog.resume.val248 = phi i64 [ %n.vec235, %vec.epilog.iter.check251 ], [ 0, %vector.main.loop.iter.check231 ] ; 2 uses
  %n.vec255 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert256 = insertelement <4 x i32> poison, i32 %i.ap, i64 0
  %broadcast.splat257 = shufflevector <4 x i32> %broadcast.splatinsert256, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bc = trunc nuw nsw i64 %vec.epilog.resume.val248 to i32
  %broadcast.splatinsert258 = insertelement <4 x i32> poison, i32 %i.bc, i64 0
  %broadcast.splat259 = shufflevector <4 x i32> %broadcast.splatinsert258, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction260 = or disjoint <4 x i32> %broadcast.splat259, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body261

vec.epilog.vector.body261:                        ; preds = %vec.epilog.vector.body261, %vec.epilog.ph253
  %index262 = phi i64 [ %vec.epilog.resume.val248, %vec.epilog.ph253 ], [ %index.next264, %vec.epilog.vector.body261 ] ; 2 uses
  %vec.ind263 = phi <4 x i32> [ %induction260, %vec.epilog.ph253 ], [ %vec.ind.next265, %vec.epilog.vector.body261 ] ; 2 uses
  %i.bd = xor <4 x i32> %vec.ind263, splat (i32 -1)
  %i.be = add <4 x i32> %broadcast.splat257, %i.bd
  %i.bf = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %index262
  store <4 x i32> %i.be, ptr %i.bf, align 4, !tbaa !3
  %index.next264 = add nuw i64 %index262, 4       ; 2 uses
  %vec.ind.next265 = add <4 x i32> %vec.ind263, splat (i32 4)
  %i.bg = icmp eq i64 %index.next264, %n.vec255
  br i1 %i.bg, label %vec.epilog.middle.block266, label %vec.epilog.vector.body261, !llvm.loop !824

vec.epilog.middle.block266:                       ; preds = %vec.epilog.vector.body261
  %cmp.n267 = icmp eq i64 %n.vec255, %wide.trip.count.i.i
  br i1 %cmp.n267, label %_ZZNK8facebook5velox9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSE_.exit.i, label %vec.epilog.scalar.ph250.preheader

vec.epilog.scalar.ph250.preheader:                ; preds = %iter.check249, %vec.epilog.iter.check251, %vec.epilog.middle.block266
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check249 ], [ %n.vec235, %vec.epilog.iter.check251 ], [ %n.vec255, %vec.epilog.middle.block266 ]
  br label %vec.epilog.scalar.ph250

vec.epilog.scalar.ph250:                          ; preds = %vec.epilog.scalar.ph250.preheader, %vec.epilog.scalar.ph250
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %vec.epilog.scalar.ph250 ], [ %indvars.iv.i.i.ph, %vec.epilog.scalar.ph250.preheader ] ; 3 uses
  %i.bh = trunc i64 %indvars.iv.i.i to i32
  %i.bi = xor i32 %i.bh, -1
  %i.bj = add i32 %i.ap, %i.bi
  %gep.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  store i32 %i.bj, ptr %gep.i.i, align 4, !tbaa !3
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZZNK8facebook5velox9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSE_.exit.i, label %vec.epilog.scalar.ph250, !llvm.loop !825

_ZZNK8facebook5velox9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSE_.exit.i: ; preds = %vec.epilog.scalar.ph250, %middle.block246, %vec.epilog.middle.block266, %bb.d
  %i.bk = add nsw i64 %.011.i, -1
  %i.bl = and i64 %i.bk, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bl, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUlT_E_EEvPKmiibSG_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !826

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUlT_E_EEvPKmiibSG_ENKUlimE_clEim.exit48, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bm = sdiv i32 %0, 64                         ; 2 uses
  %i.bn = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bo = zext nneg i32 %i.bn to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.bo
  %i.bp = xor i64 %notmask.i.i35, -1
  %i.bq = sub nsw i32 64, %i.bn
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = shl i64 %i.bp, %i.br
  %i.bt = load i8, ptr %2, align 8, !tbaa !384, !range !71, !noundef !72
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !388
  %i.bw = sext i32 %i.bm to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !134
  %i.bz = xor i8 %i.bt, 1
  %i.ca = zext nneg i8 %i.bz to i64
  %i.cb = sub nsw i64 0, %i.ca
  %i.cc = xor i64 %i.by, %i.cb
  %i.cd = and i64 %i.cc, %i.bs                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.cd, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUlT_E_EEvPKmiibSG_ENKUlimE_clEim.exit48, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cf = shl nsw i32 %i.bm, 6
  %i.cg = load ptr, ptr %i.ce, align 8, !tbaa !822, !nonnull !72, !align !212
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !363
  %6 = sext i32 %i.cf to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !nonnull !72, !align !212
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8, !nonnull !72, !align !212
  br label %bb.g

bb.g:                                             ; preds = %_ZZNK8facebook5velox9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSE_.exit.i39, %.preheader.i37
  %.011.i38 = phi i64 [ %i.cd, %.preheader.i37 ], [ %i.dp, %_ZZNK8facebook5velox9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSE_.exit.i39 ] ; 3 uses
  %i.cm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %7 = or disjoint i64 %i.cm, %6                  ; 2 uses
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %7
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !3  ; 5 uses
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %iter.check, label %_ZZNK8facebook5velox9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSE_.exit.i39

iter.check:                                       ; preds = %bb.g
  %i.cq = load ptr, ptr %i.cj, align 8, !tbaa !363
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %7
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3  ; 2 uses
  %i.ct = add nsw i32 %i.cs, %i.co                ; 3 uses
  %i.cu = load ptr, ptr %i.cl, align 8, !tbaa !363
  %i.cv = sext i32 %i.cs to i64
  %wide.trip.count.i.i42 = zext nneg i32 %i.co to i64 ; 6 uses
  %invariant.gep.i.i43 = getelementptr [4 x i8], ptr %i.cu, i64 %i.cv ; 3 uses
  %min.iters.check = icmp ult i32 %i.co, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check101 = icmp ult i32 %i.co, 32
  br i1 %min.iters.check101, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count.i.i42, 28
  %n.vec = and i64 %wide.trip.count.i.i42, 2147483616 ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ct, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %i.cw = xor <8 x i32> %vec.ind, splat (i32 -1)
  %i.cx = add <8 x i32> %broadcast.splat, %i.cw
  %reass.sub = sub <8 x i32> %broadcast.splat, %vec.ind
  %i.cy = add <8 x i32> %reass.sub, splat (i32 -9)
  %reass.sub269 = sub <8 x i32> %broadcast.splat, %vec.ind
  %i.cz = add <8 x i32> %reass.sub269, splat (i32 -17)
  %reass.sub270 = sub <8 x i32> %broadcast.splat, %vec.ind
  %i.da = add <8 x i32> %reass.sub270, splat (i32 -25)
  %i.db = getelementptr [4 x i8], ptr %invariant.gep.i.i43, i64 %index ; 4 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 32
  %i.dd = getelementptr i8, ptr %i.db, i64 64
  %i.de = getelementptr i8, ptr %i.db, i64 96
  store <8 x i32> %i.cx, ptr %i.db, align 4, !tbaa !3
  store <8 x i32> %i.cy, ptr %i.dc, align 4, !tbaa !3
  store <8 x i32> %i.cz, ptr %i.dd, align 4, !tbaa !3
  store <8 x i32> %i.da, ptr %i.de, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !827

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i42
  br i1 %cmp.n, label %_ZZNK8facebook5velox9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSE_.exit.i39, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !380

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec103 = and i64 %wide.trip.count.i.i42, 2147483644 ; 3 uses
  %broadcast.splatinsert104 = insertelement <4 x i32> poison, i32 %i.ct, i64 0
  %broadcast.splat105 = shufflevector <4 x i32> %broadcast.splatinsert104, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dg = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert106 = insertelement <4 x i32> poison, i32 %i.dg, i64 0
  %broadcast.splat107 = shufflevector <4 x i32> %broadcast.splatinsert106, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat107, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index108 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next110, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind109 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next111, %vec.epilog.vector.body ] ; 2 uses
  %i.dh = xor <4 x i32> %vec.ind109, splat (i32 -1)
  %i.di = add <4 x i32> %broadcast.splat105, %i.dh
  %i.dj = getelementptr [4 x i8], ptr %invariant.gep.i.i43, i64 %index108
  store <4 x i32> %i.di, ptr %i.dj, align 4, !tbaa !3
  %index.next110 = add nuw i64 %index108, 4       ; 2 uses
  %vec.ind.next111 = add <4 x i32> %vec.ind109, splat (i32 4)
  %i.dk = icmp eq i64 %index.next110, %n.vec103
  br i1 %i.dk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !828

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n112 = icmp eq i64 %n.vec103, %wide.trip.count.i.i42
  br i1 %cmp.n112, label %_ZZNK8facebook5velox9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSE_.exit.i39, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i44.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec103, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i.i44 = phi i64 [ %indvars.iv.next.i.i46, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i44.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.dl = trunc i64 %indvars.iv.i.i44 to i32
  %i.dm = xor i32 %i.dl, -1
  %i.dn = add i32 %i.ct, %i.dm
  %gep.i.i45 = getelementptr [4 x i8], ptr %invariant.gep.i.i43, i64 %indvars.iv.i.i44
  store i32 %i.dn, ptr %gep.i.i45, align 4, !tbaa !3
  %indvars.iv.next.i.i46 = add nuw nsw i64 %indvars.iv.i.i44, 1 ; 2 uses
  %exitcond.not.i.i47 = icmp eq i64 %indvars.iv.next.i.i46, %wide.trip.count.i.i42
  br i1 %exitcond.not.i.i47, label %_ZZNK8facebook5velox9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSE_.exit.i39, label %vec.epilog.scalar.ph, !llvm.loop !829

_ZZNK8facebook5velox9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSE_.exit.i39: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.g
  %i.do = add i64 %.011.i38, -1
  %i.dp = and i64 %i.do, %.011.i38                ; 2 uses
  %.not10.i40 = icmp eq i64 %i.dp, 0
  br i1 %.not10.i40, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUlT_E_EEvPKmiibSG_ENKUlimE_clEim.exit48, label %bb.g, !llvm.loop !826

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUlT_E_EEvPKmiibSG_ENKUlimE_clEim.exit48: ; preds = %_ZZNK8facebook5velox9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSE_.exit.i39, %bb.f, %bb.e
  %i.dq = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3374 = icmp sgt i32 %i.dq, %i.d
  br i1 %.not3374, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUlT_E_EEvPKmiibSG_ENKUlimE_clEim.exit48
  %i.dr = load i8, ptr %3, align 8, !tbaa !389, !range !71, !noundef !72
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !391
  %i.du = xor i8 %i.dr, 1
  %i.dv = zext nneg i8 %i.du to i64
  %i.dw = sub nsw i64 0, %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !nonnull !72, !align !212 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8, !nonnull !72, !align !212 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ec = load ptr, ptr %i.eb, align 8, !nonnull !72, !align !212 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUlT_E_EEvPKmiibSG_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUlT_E_EEvPKmiibSG_ENKUlimE_clEim.exit48
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUlT_E_EEvPKmiibSG_ENKUlimE_clEim.exit, label %bb.l

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUlT_E_EEvPKmiibSG_ENKUliE_clEi.exit
  %i.ed = phi i32 [ %i.dq, %.lr.ph ], [ %i.gx, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUlT_E_EEvPKmiibSG_ENKUliE_clEi.exit ] ; 2 uses
  %.075 = phi i32 [ %i.c, %.lr.ph ], [ %i.ed, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUlT_E_EEvPKmiibSG_ENKUliE_clEi.exit ] ; 2 uses
  %i.ee = sdiv i32 %.075, 64                      ; 3 uses
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.ef
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !134
  %i.ei = xor i64 %i.eh, %i.dw                    ; 2 uses
  switch i64 %i.ei, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUlT_E_EEvPKmiibSG_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.ej = shl nsw i32 %i.ee, 6
  %i.ek = load ptr, ptr %i.dy, align 8, !tbaa !363
  %8 = sext i32 %i.ej to i64
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.el = shl nsw i32 %i.ee, 6                    ; 2 uses
  %i.em = add i32 %i.el, 64
  %i.en = sext i32 %i.em to i64
  %.0.off = add i32 %.075, 127
  %.not29.i = icmp ult i32 %.0.off, 64
  br i1 %.not29.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUlT_E_EEvPKmiibSG_ENKUliE_clEi.exit, label %.lr.ph28.i

.lr.ph28.i:                                       ; preds = %bb.i
  %i.eo = sext i32 %i.el to i64
  %i.ep = load ptr, ptr %i.dy, align 8, !tbaa !363
  br label %bb.j

bb.j:                                             ; preds = %_ZZNK8facebook5velox9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUlT_E_clImEEDaSE_.exit.i, %.lr.ph28.i
  %.027.i = phi i64 [ %i.eo, %.lr.ph28.i ], [ %i.fr, %_ZZNK8facebook5velox9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUlT_E_clImEEDaSE_.exit.i ] ; 3 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %.027.i
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !3  ; 5 uses
  %i.es = icmp sgt i32 %i.er, 0
  br i1 %i.es, label %iter.check171, label %_ZZNK8facebook5velox9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUlT_E_clImEEDaSE_.exit.i

iter.check171:                                    ; preds = %bb.j
  %i.et = load ptr, ptr %i.ea, align 8, !tbaa !363
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %.027.i
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !3  ; 2 uses
  %i.ew = add nsw i32 %i.ev, %i.er                ; 3 uses
  %i.ex = load ptr, ptr %i.ec, align 8, !tbaa !363
  %i.ey = sext i32 %i.ev to i64
  %wide.trip.count.i.i50 = zext nneg i32 %i.er to i64 ; 6 uses
  %invariant.gep.i.i51 = getelementptr [4 x i8], ptr %i.ex, i64 %i.ey ; 3 uses
  %min.iters.check152 = icmp ult i32 %i.er, 4
  br i1 %min.iters.check152, label %vec.epilog.scalar.ph172.preheader, label %vector.main.loop.iter.check153

vector.main.loop.iter.check153:                   ; preds = %iter.check171
  %min.iters.check154 = icmp ult i32 %i.er, 32
  br i1 %min.iters.check154, label %vec.epilog.ph175, label %vector.ph155

vector.ph155:                                     ; preds = %vector.main.loop.iter.check153
  %n.mod.vf156 = and i64 %wide.trip.count.i.i50, 28
  %n.vec157 = and i64 %wide.trip.count.i.i50, 2147483616 ; 4 uses
  %broadcast.splatinsert158 = insertelement <8 x i32> poison, i32 %i.ew, i64 0
  %broadcast.splat159 = shufflevector <8 x i32> %broadcast.splatinsert158, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body160

vector.body160:                                   ; preds = %vector.body160, %vector.ph155
  %index161 = phi i64 [ 0, %vector.ph155 ], [ %index.next166, %vector.body160 ] ; 2 uses
  %vec.ind162 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph155 ], [ %vec.ind.next167, %vector.body160 ] ; 5 uses
  %i.ez = xor <8 x i32> %vec.ind162, splat (i32 -1)
  %i.fa = add <8 x i32> %broadcast.splat159, %i.ez
  %reass.sub271 = sub <8 x i32> %broadcast.splat159, %vec.ind162
  %i.fb = add <8 x i32> %reass.sub271, splat (i32 -9)
  %reass.sub272 = sub <8 x i32> %broadcast.splat159, %vec.ind162
  %i.fc = add <8 x i32> %reass.sub272, splat (i32 -17)
  %reass.sub273 = sub <8 x i32> %broadcast.splat159, %vec.ind162
  %i.fd = add <8 x i32> %reass.sub273, splat (i32 -25)
  %i.fe = getelementptr [4 x i8], ptr %invariant.gep.i.i51, i64 %index161 ; 4 uses
  %i.ff = getelementptr i8, ptr %i.fe, i64 32
  %i.fg = getelementptr i8, ptr %i.fe, i64 64
  %i.fh = getelementptr i8, ptr %i.fe, i64 96
  store <8 x i32> %i.fa, ptr %i.fe, align 4, !tbaa !3
  store <8 x i32> %i.fb, ptr %i.ff, align 4, !tbaa !3
  store <8 x i32> %i.fc, ptr %i.fg, align 4, !tbaa !3
  store <8 x i32> %i.fd, ptr %i.fh, align 4, !tbaa !3
  %index.next166 = add nuw i64 %index161, 32      ; 2 uses
  %vec.ind.next167 = add <8 x i32> %vec.ind162, splat (i32 32)
  %i.fi = icmp eq i64 %index.next166, %n.vec157
  br i1 %i.fi, label %middle.block168, label %vector.body160, !llvm.loop !830

middle.block168:                                  ; preds = %vector.body160
  %cmp.n169 = icmp eq i64 %n.vec157, %wide.trip.count.i.i50
  br i1 %cmp.n169, label %_ZZNK8facebook5velox9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUlT_E_clImEEDaSE_.exit.i, label %vec.epilog.iter.check173

vec.epilog.iter.check173:                         ; preds = %middle.block168
  %min.epilog.iters.check174 = icmp eq i64 %n.mod.vf156, 0
  br i1 %min.epilog.iters.check174, label %vec.epilog.scalar.ph172.preheader, label %vec.epilog.ph175, !prof !380

vec.epilog.ph175:                                 ; preds = %vector.main.loop.iter.check153, %vec.epilog.iter.check173
  %vec.epilog.resume.val170 = phi i64 [ %n.vec157, %vec.epilog.iter.check173 ], [ 0, %vector.main.loop.iter.check153 ] ; 2 uses
  %n.vec177 = and i64 %wide.trip.count.i.i50, 2147483644 ; 3 uses
  %broadcast.splatinsert178 = insertelement <4 x i32> poison, i32 %i.ew, i64 0
  %broadcast.splat179 = shufflevector <4 x i32> %broadcast.splatinsert178, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.fj = trunc nuw nsw i64 %vec.epilog.resume.val170 to i32
  %broadcast.splatinsert180 = insertelement <4 x i32> poison, i32 %i.fj, i64 0
  %broadcast.splat181 = shufflevector <4 x i32> %broadcast.splatinsert180, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction182 = or disjoint <4 x i32> %broadcast.splat181, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body183

vec.epilog.vector.body183:                        ; preds = %vec.epilog.vector.body183, %vec.epilog.ph175
  %index184 = phi i64 [ %vec.epilog.resume.val170, %vec.epilog.ph175 ], [ %index.next186, %vec.epilog.vector.body183 ] ; 2 uses
  %vec.ind185 = phi <4 x i32> [ %induction182, %vec.epilog.ph175 ], [ %vec.ind.next187, %vec.epilog.vector.body183 ] ; 2 uses
  %i.fk = xor <4 x i32> %vec.ind185, splat (i32 -1)
  %i.fl = add <4 x i32> %broadcast.splat179, %i.fk
  %i.fm = getelementptr [4 x i8], ptr %invariant.gep.i.i51, i64 %index184
  store <4 x i32> %i.fl, ptr %i.fm, align 4, !tbaa !3
  %index.next186 = add nuw i64 %index184, 4       ; 2 uses
  %vec.ind.next187 = add <4 x i32> %vec.ind185, splat (i32 4)
  %i.fn = icmp eq i64 %index.next186, %n.vec177
  br i1 %i.fn, label %vec.epilog.middle.block188, label %vec.epilog.vector.body183, !llvm.loop !831

vec.epilog.middle.block188:                       ; preds = %vec.epilog.vector.body183
  %cmp.n189 = icmp eq i64 %n.vec177, %wide.trip.count.i.i50
  br i1 %cmp.n189, label %_ZZNK8facebook5velox9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUlT_E_clImEEDaSE_.exit.i, label %vec.epilog.scalar.ph172.preheader

vec.epilog.scalar.ph172.preheader:                ; preds = %iter.check171, %vec.epilog.iter.check173, %vec.epilog.middle.block188
  %indvars.iv.i.i52.ph = phi i64 [ 0, %iter.check171 ], [ %n.vec157, %vec.epilog.iter.check173 ], [ %n.vec177, %vec.epilog.middle.block188 ]
  br label %vec.epilog.scalar.ph172

vec.epilog.scalar.ph172:                          ; preds = %vec.epilog.scalar.ph172.preheader, %vec.epilog.scalar.ph172
  %indvars.iv.i.i52 = phi i64 [ %indvars.iv.next.i.i54, %vec.epilog.scalar.ph172 ], [ %indvars.iv.i.i52.ph, %vec.epilog.scalar.ph172.preheader ] ; 3 uses
  %i.fo = trunc i64 %indvars.iv.i.i52 to i32
  %i.fp = xor i32 %i.fo, -1
  %i.fq = add i32 %i.ew, %i.fp
  %gep.i.i53 = getelementptr [4 x i8], ptr %invariant.gep.i.i51, i64 %indvars.iv.i.i52
  store i32 %i.fq, ptr %gep.i.i53, align 4, !tbaa !3
  %indvars.iv.next.i.i54 = add nuw nsw i64 %indvars.iv.i.i52, 1 ; 2 uses
  %exitcond.not.i.i55 = icmp eq i64 %indvars.iv.next.i.i54, %wide.trip.count.i.i50
  br i1 %exitcond.not.i.i55, label %_ZZNK8facebook5velox9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUlT_E_clImEEDaSE_.exit.i, label %vec.epilog.scalar.ph172, !llvm.loop !832

_ZZNK8facebook5velox9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUlT_E_clImEEDaSE_.exit.i: ; preds = %vec.epilog.scalar.ph172, %middle.block168, %vec.epilog.middle.block188, %bb.j
  %i.fr = add nuw i64 %.027.i, 1                  ; 2 uses
  %i.fs = icmp ult i64 %i.fr, %i.en
  br i1 %i.fs, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUlT_E_EEvPKmiibSG_ENKUliE_clEi.exit, !llvm.loop !833

bb.k:                                             ; preds = %_ZZNK8facebook5velox9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSE_.exit.i56, %.lr.ph.i
  %.01526.i = phi i64 [ %i.ei, %.lr.ph.i ], [ %i.gw, %_ZZNK8facebook5velox9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSE_.exit.i56 ] ; 3 uses
  %i.ft = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01526.i, i1 true)
  %9 = or disjoint i64 %i.ft, %8                  ; 2 uses
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %9
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !3  ; 5 uses
  %i.fw = icmp sgt i32 %i.fv, 0
  br i1 %i.fw, label %iter.check132, label %_ZZNK8facebook5velox9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSE_.exit.i56

iter.check132:                                    ; preds = %bb.k
  %i.fx = load ptr, ptr %i.ea, align 8, !tbaa !363
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %9
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !3  ; 2 uses
  %i.ga = add nsw i32 %i.fz, %i.fv                ; 3 uses
  %i.gb = load ptr, ptr %i.ec, align 8, !tbaa !363
  %i.gc = sext i32 %i.fz to i64
  %wide.trip.count.i18.i = zext nneg i32 %i.fv to i64 ; 6 uses
  %invariant.gep.i19.i = getelementptr [4 x i8], ptr %i.gb, i64 %i.gc ; 3 uses
  %min.iters.check113 = icmp ult i32 %i.fv, 4
  br i1 %min.iters.check113, label %vec.epilog.scalar.ph133.preheader, label %vector.main.loop.iter.check114

vector.main.loop.iter.check114:                   ; preds = %iter.check132
  %min.iters.check115 = icmp ult i32 %i.fv, 32
  br i1 %min.iters.check115, label %vec.epilog.ph136, label %vector.ph116

vector.ph116:                                     ; preds = %vector.main.loop.iter.check114
  %n.mod.vf117 = and i64 %wide.trip.count.i18.i, 28
  %n.vec118 = and i64 %wide.trip.count.i18.i, 2147483616 ; 4 uses
  %broadcast.splatinsert119 = insertelement <8 x i32> poison, i32 %i.ga, i64 0
  %broadcast.splat120 = shufflevector <8 x i32> %broadcast.splatinsert119, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body121

vector.body121:                                   ; preds = %vector.body121, %vector.ph116
  %index122 = phi i64 [ 0, %vector.ph116 ], [ %index.next127, %vector.body121 ] ; 2 uses
  %vec.ind123 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph116 ], [ %vec.ind.next128, %vector.body121 ] ; 5 uses
  %i.gd = xor <8 x i32> %vec.ind123, splat (i32 -1)
  %i.ge = add <8 x i32> %broadcast.splat120, %i.gd
  %reass.sub274 = sub <8 x i32> %broadcast.splat120, %vec.ind123
  %i.gf = add <8 x i32> %reass.sub274, splat (i32 -9)
  %reass.sub275 = sub <8 x i32> %broadcast.splat120, %vec.ind123
  %i.gg = add <8 x i32> %reass.sub275, splat (i32 -17)
  %reass.sub276 = sub <8 x i32> %broadcast.splat120, %vec.ind123
  %i.gh = add <8 x i32> %reass.sub276, splat (i32 -25)
  %i.gi = getelementptr [4 x i8], ptr %invariant.gep.i19.i, i64 %index122 ; 4 uses
  %i.gj = getelementptr i8, ptr %i.gi, i64 32
  %i.gk = getelementptr i8, ptr %i.gi, i64 64
  %i.gl = getelementptr i8, ptr %i.gi, i64 96
  store <8 x i32> %i.ge, ptr %i.gi, align 4, !tbaa !3
  store <8 x i32> %i.gf, ptr %i.gj, align 4, !tbaa !3
  store <8 x i32> %i.gg, ptr %i.gk, align 4, !tbaa !3
  store <8 x i32> %i.gh, ptr %i.gl, align 4, !tbaa !3
  %index.next127 = add nuw i64 %index122, 32      ; 2 uses
  %vec.ind.next128 = add <8 x i32> %vec.ind123, splat (i32 32)
  %i.gm = icmp eq i64 %index.next127, %n.vec118
  br i1 %i.gm, label %middle.block129, label %vector.body121, !llvm.loop !834

middle.block129:                                  ; preds = %vector.body121
  %cmp.n130 = icmp eq i64 %n.vec118, %wide.trip.count.i18.i
  br i1 %cmp.n130, label %_ZZNK8facebook5velox9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSE_.exit.i56, label %vec.epilog.iter.check134

vec.epilog.iter.check134:                         ; preds = %middle.block129
  %min.epilog.iters.check135 = icmp eq i64 %n.mod.vf117, 0
  br i1 %min.epilog.iters.check135, label %vec.epilog.scalar.ph133.preheader, label %vec.epilog.ph136, !prof !380

vec.epilog.ph136:                                 ; preds = %vector.main.loop.iter.check114, %vec.epilog.iter.check134
  %vec.epilog.resume.val131 = phi i64 [ %n.vec118, %vec.epilog.iter.check134 ], [ 0, %vector.main.loop.iter.check114 ] ; 2 uses
  %n.vec138 = and i64 %wide.trip.count.i18.i, 2147483644 ; 3 uses
  %broadcast.splatinsert139 = insertelement <4 x i32> poison, i32 %i.ga, i64 0
  %broadcast.splat140 = shufflevector <4 x i32> %broadcast.splatinsert139, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.gn = trunc nuw nsw i64 %vec.epilog.resume.val131 to i32
  %broadcast.splatinsert141 = insertelement <4 x i32> poison, i32 %i.gn, i64 0
  %broadcast.splat142 = shufflevector <4 x i32> %broadcast.splatinsert141, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction143 = or disjoint <4 x i32> %broadcast.splat142, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body144

vec.epilog.vector.body144:                        ; preds = %vec.epilog.vector.body144, %vec.epilog.ph136
  %index145 = phi i64 [ %vec.epilog.resume.val131, %vec.epilog.ph136 ], [ %index.next147, %vec.epilog.vector.body144 ] ; 2 uses
  %vec.ind146 = phi <4 x i32> [ %induction143, %vec.epilog.ph136 ], [ %vec.ind.next148, %vec.epilog.vector.body144 ] ; 2 uses
  %i.go = xor <4 x i32> %vec.ind146, splat (i32 -1)
  %i.gp = add <4 x i32> %broadcast.splat140, %i.go
  %i.gq = getelementptr [4 x i8], ptr %invariant.gep.i19.i, i64 %index145
  store <4 x i32> %i.gp, ptr %i.gq, align 4, !tbaa !3
  %index.next147 = add nuw i64 %index145, 4       ; 2 uses
  %vec.ind.next148 = add <4 x i32> %vec.ind146, splat (i32 4)
  %i.gr = icmp eq i64 %index.next147, %n.vec138
  br i1 %i.gr, label %vec.epilog.middle.block149, label %vec.epilog.vector.body144, !llvm.loop !835

vec.epilog.middle.block149:                       ; preds = %vec.epilog.vector.body144
  %cmp.n150 = icmp eq i64 %n.vec138, %wide.trip.count.i18.i
  br i1 %cmp.n150, label %_ZZNK8facebook5velox9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSE_.exit.i56, label %vec.epilog.scalar.ph133.preheader

vec.epilog.scalar.ph133.preheader:                ; preds = %iter.check132, %vec.epilog.iter.check134, %vec.epilog.middle.block149
  %indvars.iv.i20.i.ph = phi i64 [ 0, %iter.check132 ], [ %n.vec118, %vec.epilog.iter.check134 ], [ %n.vec138, %vec.epilog.middle.block149 ]
  br label %vec.epilog.scalar.ph133

vec.epilog.scalar.ph133:                          ; preds = %vec.epilog.scalar.ph133.preheader, %vec.epilog.scalar.ph133
  %indvars.iv.i20.i = phi i64 [ %indvars.iv.next.i22.i, %vec.epilog.scalar.ph133 ], [ %indvars.iv.i20.i.ph, %vec.epilog.scalar.ph133.preheader ] ; 3 uses
  %i.gs = trunc i64 %indvars.iv.i20.i to i32
  %i.gt = xor i32 %i.gs, -1
  %i.gu = add i32 %i.ga, %i.gt
  %gep.i21.i = getelementptr [4 x i8], ptr %invariant.gep.i19.i, i64 %indvars.iv.i20.i
  store i32 %i.gu, ptr %gep.i21.i, align 4, !tbaa !3
  %indvars.iv.next.i22.i = add nuw nsw i64 %indvars.iv.i20.i, 1 ; 2 uses
  %exitcond.not.i23.i = icmp eq i64 %indvars.iv.next.i22.i, %wide.trip.count.i18.i
  br i1 %exitcond.not.i23.i, label %_ZZNK8facebook5velox9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSE_.exit.i56, label %vec.epilog.scalar.ph133, !llvm.loop !836

_ZZNK8facebook5velox9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSE_.exit.i56: ; preds = %vec.epilog.scalar.ph133, %middle.block129, %vec.epilog.middle.block149, %bb.k
  %i.gv = add i64 %.01526.i, -1
  %i.gw = and i64 %i.gv, %.01526.i                ; 2 uses
  %.not.i57 = icmp eq i64 %i.gw, 0
  br i1 %.not.i57, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUlT_E_EEvPKmiibSG_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !837

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUlT_E_EEvPKmiibSG_ENKUliE_clEi.exit: ; preds = %_ZZNK8facebook5velox9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUlT_E_clImEEDaSE_.exit.i, %_ZZNK8facebook5velox9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSE_.exit.i56, %bb.h, %bb.i
  %i.gx = add nsw i32 %i.ed, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.gx, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !838

bb.l:                                             ; preds = %._crit_edge
  %i.gy = ashr i32 %1, 6
  %i.gz = and i32 %1, 63
  %i.ha = zext nneg i32 %i.gz to i64
  %notmask.i58 = shl nsw i64 -1, %i.ha
  %i.hb = xor i64 %notmask.i58, -1
  %i.hc = load i8, ptr %2, align 8, !tbaa !384, !range !71, !noundef !72
  %i.hd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !388
  %i.hf = sext i32 %i.gy to i64
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.he, i64 %i.hf
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !134
  %i.hi = xor i8 %i.hc, 1
  %i.hj = zext nneg i8 %i.hi to i64
  %i.hk = sub nsw i64 0, %i.hj
  %i.hl = xor i64 %i.hh, %i.hk
  %i.hm = and i64 %i.hl, %i.hb                    ; 2 uses
  %.not.i59 = icmp eq i64 %i.hm, 0
  br i1 %.not.i59, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUlT_E_EEvPKmiibSG_ENKUlimE_clEim.exit, label %.preheader.i60

.preheader.i60:                                   ; preds = %bb.l
  %i.hn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !822, !nonnull !72, !align !212
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !363
  %10 = sext i32 %i.d to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.hr = load ptr, ptr %i.hq, align 8, !nonnull !72, !align !212
  %i.hs = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ht = load ptr, ptr %i.hs, align 8, !nonnull !72, !align !212
  br label %bb.m

bb.m:                                             ; preds = %_ZZNK8facebook5velox9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSE_.exit.i62, %.preheader.i60
  %.011.i61 = phi i64 [ %i.hm, %.preheader.i60 ], [ %i.ix, %_ZZNK8facebook5velox9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSE_.exit.i62 ] ; 3 uses
  %i.hu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i61, i1 true)
  %11 = or disjoint i64 %i.hu, %10                ; 2 uses
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %11
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !3  ; 5 uses
  %i.hx = icmp sgt i32 %i.hw, 0
  br i1 %i.hx, label %iter.check210, label %_ZZNK8facebook5velox9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSE_.exit.i62

iter.check210:                                    ; preds = %bb.m
  %i.hy = load ptr, ptr %i.hr, align 8, !tbaa !363
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %11
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !3  ; 2 uses
  %i.ib = add nsw i32 %i.ia, %i.hw                ; 3 uses
  %i.ic = load ptr, ptr %i.ht, align 8, !tbaa !363
  %i.id = sext i32 %i.ia to i64
  %wide.trip.count.i.i65 = zext nneg i32 %i.hw to i64 ; 6 uses
  %invariant.gep.i.i66 = getelementptr [4 x i8], ptr %i.ic, i64 %i.id ; 3 uses
  %min.iters.check191 = icmp ult i32 %i.hw, 4
  br i1 %min.iters.check191, label %vec.epilog.scalar.ph211.preheader, label %vector.main.loop.iter.check192

vector.main.loop.iter.check192:                   ; preds = %iter.check210
  %min.iters.check193 = icmp ult i32 %i.hw, 32
  br i1 %min.iters.check193, label %vec.epilog.ph214, label %vector.ph194

vector.ph194:                                     ; preds = %vector.main.loop.iter.check192
  %n.mod.vf195 = and i64 %wide.trip.count.i.i65, 28
  %n.vec196 = and i64 %wide.trip.count.i.i65, 2147483616 ; 4 uses
  %broadcast.splatinsert197 = insertelement <8 x i32> poison, i32 %i.ib, i64 0
  %broadcast.splat198 = shufflevector <8 x i32> %broadcast.splatinsert197, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body199

vector.body199:                                   ; preds = %vector.body199, %vector.ph194
  %index200 = phi i64 [ 0, %vector.ph194 ], [ %index.next205, %vector.body199 ] ; 2 uses
  %vec.ind201 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph194 ], [ %vec.ind.next206, %vector.body199 ] ; 5 uses
  %i.ie = xor <8 x i32> %vec.ind201, splat (i32 -1)
  %i.if = add <8 x i32> %broadcast.splat198, %i.ie
  %reass.sub277 = sub <8 x i32> %broadcast.splat198, %vec.ind201
  %i.ig = add <8 x i32> %reass.sub277, splat (i32 -9)
  %reass.sub278 = sub <8 x i32> %broadcast.splat198, %vec.ind201
  %i.ih = add <8 x i32> %reass.sub278, splat (i32 -17)
  %reass.sub279 = sub <8 x i32> %broadcast.splat198, %vec.ind201
  %i.ii = add <8 x i32> %reass.sub279, splat (i32 -25)
  %i.ij = getelementptr [4 x i8], ptr %invariant.gep.i.i66, i64 %index200 ; 4 uses
  %i.ik = getelementptr i8, ptr %i.ij, i64 32
  %i.il = getelementptr i8, ptr %i.ij, i64 64
  %i.im = getelementptr i8, ptr %i.ij, i64 96
  store <8 x i32> %i.if, ptr %i.ij, align 4, !tbaa !3
  store <8 x i32> %i.ig, ptr %i.ik, align 4, !tbaa !3
  store <8 x i32> %i.ih, ptr %i.il, align 4, !tbaa !3
  store <8 x i32> %i.ii, ptr %i.im, align 4, !tbaa !3
  %index.next205 = add nuw i64 %index200, 32      ; 2 uses
  %vec.ind.next206 = add <8 x i32> %vec.ind201, splat (i32 32)
  %i.in = icmp eq i64 %index.next205, %n.vec196
  br i1 %i.in, label %middle.block207, label %vector.body199, !llvm.loop !839

middle.block207:                                  ; preds = %vector.body199
  %cmp.n208 = icmp eq i64 %n.vec196, %wide.trip.count.i.i65
  br i1 %cmp.n208, label %_ZZNK8facebook5velox9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSE_.exit.i62, label %vec.epilog.iter.check212

vec.epilog.iter.check212:                         ; preds = %middle.block207
  %min.epilog.iters.check213 = icmp eq i64 %n.mod.vf195, 0
  br i1 %min.epilog.iters.check213, label %vec.epilog.scalar.ph211.preheader, label %vec.epilog.ph214, !prof !380

vec.epilog.ph214:                                 ; preds = %vector.main.loop.iter.check192, %vec.epilog.iter.check212
  %vec.epilog.resume.val209 = phi i64 [ %n.vec196, %vec.epilog.iter.check212 ], [ 0, %vector.main.loop.iter.check192 ] ; 2 uses
  %n.vec216 = and i64 %wide.trip.count.i.i65, 2147483644 ; 3 uses
  %broadcast.splatinsert217 = insertelement <4 x i32> poison, i32 %i.ib, i64 0
  %broadcast.splat218 = shufflevector <4 x i32> %broadcast.splatinsert217, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.io = trunc nuw nsw i64 %vec.epilog.resume.val209 to i32
  %broadcast.splatinsert219 = insertelement <4 x i32> poison, i32 %i.io, i64 0
  %broadcast.splat220 = shufflevector <4 x i32> %broadcast.splatinsert219, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction221 = or disjoint <4 x i32> %broadcast.splat220, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body222

vec.epilog.vector.body222:                        ; preds = %vec.epilog.vector.body222, %vec.epilog.ph214
  %index223 = phi i64 [ %vec.epilog.resume.val209, %vec.epilog.ph214 ], [ %index.next225, %vec.epilog.vector.body222 ] ; 2 uses
  %vec.ind224 = phi <4 x i32> [ %induction221, %vec.epilog.ph214 ], [ %vec.ind.next226, %vec.epilog.vector.body222 ] ; 2 uses
  %i.ip = xor <4 x i32> %vec.ind224, splat (i32 -1)
  %i.iq = add <4 x i32> %broadcast.splat218, %i.ip
  %i.ir = getelementptr [4 x i8], ptr %invariant.gep.i.i66, i64 %index223
  store <4 x i32> %i.iq, ptr %i.ir, align 4, !tbaa !3
  %index.next225 = add nuw i64 %index223, 4       ; 2 uses
  %vec.ind.next226 = add <4 x i32> %vec.ind224, splat (i32 4)
  %i.is = icmp eq i64 %index.next225, %n.vec216
  br i1 %i.is, label %vec.epilog.middle.block227, label %vec.epilog.vector.body222, !llvm.loop !840

vec.epilog.middle.block227:                       ; preds = %vec.epilog.vector.body222
  %cmp.n228 = icmp eq i64 %n.vec216, %wide.trip.count.i.i65
  br i1 %cmp.n228, label %_ZZNK8facebook5velox9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSE_.exit.i62, label %vec.epilog.scalar.ph211.preheader

vec.epilog.scalar.ph211.preheader:                ; preds = %iter.check210, %vec.epilog.iter.check212, %vec.epilog.middle.block227
  %indvars.iv.i.i67.ph = phi i64 [ 0, %iter.check210 ], [ %n.vec196, %vec.epilog.iter.check212 ], [ %n.vec216, %vec.epilog.middle.block227 ]
  br label %vec.epilog.scalar.ph211

vec.epilog.scalar.ph211:                          ; preds = %vec.epilog.scalar.ph211.preheader, %vec.epilog.scalar.ph211
  %indvars.iv.i.i67 = phi i64 [ %indvars.iv.next.i.i69, %vec.epilog.scalar.ph211 ], [ %indvars.iv.i.i67.ph, %vec.epilog.scalar.ph211.preheader ] ; 3 uses
  %i.it = trunc i64 %indvars.iv.i.i67 to i32
  %i.iu = xor i32 %i.it, -1
  %i.iv = add i32 %i.ib, %i.iu
  %gep.i.i68 = getelementptr [4 x i8], ptr %invariant.gep.i.i66, i64 %indvars.iv.i.i67
  store i32 %i.iv, ptr %gep.i.i68, align 4, !tbaa !3
  %indvars.iv.next.i.i69 = add nuw nsw i64 %indvars.iv.i.i67, 1 ; 2 uses
  %exitcond.not.i.i70 = icmp eq i64 %indvars.iv.next.i.i69, %wide.trip.count.i.i65
  br i1 %exitcond.not.i.i70, label %_ZZNK8facebook5velox9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSE_.exit.i62, label %vec.epilog.scalar.ph211, !llvm.loop !841

_ZZNK8facebook5velox9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSE_.exit.i62: ; preds = %vec.epilog.scalar.ph211, %middle.block207, %vec.epilog.middle.block227, %bb.m
  %i.iw = add nsw i64 %.011.i61, -1
  %i.ix = and i64 %i.iw, %.011.i61                ; 2 uses
  %.not10.i63 = icmp eq i64 %i.ix, 0
  br i1 %.not10.i63, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUlT_E_EEvPKmiibSG_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !826

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUlT_E_EEvPKmiibSG_ENKUlimE_clEim.exit: ; preds = %_ZZNK8facebook5velox9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSE_.exit.i62, %_ZZNK8facebook5velox9functions15ReverseFunction14applyArrayFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSE_.exit.i, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #35
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN8facebook5velox11ArrayVectorEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(144) %i.a) #30, !inline_history !842
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #35
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !629  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !36
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #30
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt10_ConstructIN8facebook5velox11ArrayVectorEJRPNS1_6memory10MemoryPoolERKSt10shared_ptrIKNS1_4TypeEERKN5boost13intrusive_ptrINS1_6BufferEEEiSI_SI_RS7_INS1_10BaseVectorEESt8optionalIiEEEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(8) %8) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr.74", align 16 ; 4 uses
  %10 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %11 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %12 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %13 = alloca %"class.std::shared_ptr.71", align 16 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !370
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29   ; 2 uses
  %i.e = load <2 x ptr>, ptr %2, align 8, !tbaa !61
  store <2 x ptr> %i.e, ptr %9, align 16, !tbaa !61
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !3
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.k = load ptr, ptr %3, align 8, !tbaa !375    ; 3 uses
  store ptr %i.k, ptr %10, align 8, !tbaa !375
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox13DecodedVectorD2Ev:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !254
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1586 ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1588
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits8andRangeILb1EEEvPmPKmS5_ii(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 comdat {
bb.a:
  %.not.i = icmp slt i32 %3, %4
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_8andRangeILb1EEEvPmPKmS6_iiEUlimE_ZNS3_ILb1EEEvS4_S6_S6_iiEUliE_EEviiT_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %3, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %4, -64                          ; 4 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %4, 6
  %i.g = and i32 %4, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i.i, -1
  %i.j = sub nsw i32 %i.c, %3                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i                       ; 2 uses
  %i.q = sext i32 %i.f to i64                     ; 3 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %0, i64 %i.q ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !134
  %i.t = xor i64 %i.p, -1
  %i.u = and i64 %i.s, %i.t
  %i.v = getelementptr inbounds [8 x i8], ptr %1, i64 %i.q
  %i.w = load i64, ptr %i.v, align 8, !tbaa !134
  %i.x = getelementptr inbounds [8 x i8], ptr %2, i64 %i.q
  %i.y = load i64, ptr %i.x, align 8, !tbaa !134
  %i.z = xor i64 %i.y, -1
  %i.aa = and i64 %i.w, %i.z
  %i.ab = and i64 %i.aa, %i.p
  %i.ac = or disjoint i64 %i.ab, %i.u
  store i64 %i.ac, ptr %i.r, align 8, !tbaa !134
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_8andRangeILb1EEEvPmPKmS6_iiEUlimE_ZNS3_ILb1EEEvS4_S6_S6_iiEUliE_EEviiT_T0_.exit

bb.d:                                             ; preds = %bb.b
  %.not32.i = icmp eq i32 %3, %i.c
  br i1 %.not32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = sdiv i32 %3, 64
  %i.ae = sub nsw i32 %i.c, %3                    ; 2 uses
  %i.af = zext nneg i32 %i.ae to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.af
  %i.ag = xor i64 %notmask.i.i35.i, -1
  %i.ah = sub nsw i32 64, %i.ae
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = shl i64 %i.ag, %i.ai                    ; 2 uses
  %i.ak = sext i32 %i.ad to i64                   ; 3 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ak ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !134
  %i.an = xor i64 %i.aj, -1
  %i.ao = and i64 %i.am, %i.an
  %i.ap = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ak
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !134
  %i.ar = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ak
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !134
  %i.at = xor i64 %i.as, -1
  %i.au = and i64 %i.aq, %i.at
  %i.av = and i64 %i.au, %i.aj
  %i.aw = or disjoint i64 %i.av, %i.ao
  store i64 %i.aw, ptr %i.al, align 8, !tbaa !134
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ax = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3337.i = icmp sgt i32 %i.ax, %i.d
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %4, %i.d
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_8andRangeILb1EEEvPmPKmS6_iiEUlimE_ZNS3_ILb1EEEvS4_S6_S6_iiEUliE_EEviiT_T0_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.ay = phi i32 [ %i.bi, %.lr.ph.i ], [ %i.ax, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.ay, %.lr.ph.i ], [ %i.c, %bb.f ]
  %i.az = sdiv i32 %.038.i, 64
  %i.ba = sext i32 %i.az to i64                   ; 3 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !134
  %i.bd = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ba
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !134
  %i.bf = xor i64 %i.be, -1
  %i.bg = and i64 %i.bc, %i.bf
  %i.bh = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ba
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !134
  %i.bi = add nsw i32 %i.ay, 64                   ; 2 uses
  %.not33.i = icmp sgt i32 %i.bi, %i.d
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1627

bb.g:                                             ; preds = %._crit_edge.i
  %i.bj = ashr i32 %4, 6
  %i.bk = and i32 %4, 63
  %i.bl = zext nneg i32 %i.bk to i64
  %notmask.i36.i = shl nsw i64 -1, %i.bl          ; 2 uses
  %i.bm = sext i32 %i.bj to i64                   ; 3 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bm ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !134
  %i.bp = and i64 %i.bo, %notmask.i36.i
  %i.bq = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bm
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !134
  %i.bs = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bm
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !134
  %i.bu = or i64 %i.bt, %notmask.i36.i
  %i.bv = xor i64 %i.bu, -1
  %i.bw = and i64 %i.br, %i.bv
  %i.bx = or disjoint i64 %i.bw, %i.bp
  store i64 %i.bx, ptr %i.bn, align 8, !tbaa !134
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_8andRangeILb1EEEvPmPKmS6_iiEUlimE_ZNS3_ILb1EEEvS4_S6_S6_iiEUliE_EEviiT_T0_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_8andRangeILb1EEEvPmPKmS6_iiEUlimE_ZNS3_ILb1EEEvS4_S6_S6_iiEUliE_EEviiT_T0_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.480) align 8 %2, ptr noundef byval(%class.anon.481) align 8 %3) local_unnamed_addr #11 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !1554, !range !71, !noundef !72
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1557
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !134
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1628
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !1629, !nonnull !72, !align !212
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !363
  %4 = sext i32 %i.d to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1630, !nonnull !72, !align !212
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !439
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1245
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.at, %bb.d ] ; 3 uses
  %i.al = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %5 = or disjoint i64 %i.al, %4                  ; 2 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %i.af, i64 %5
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !134
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %5
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !134
  %i.as = add nsw i64 %.011.i, -1
  %i.at = and i64 %i.as, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.at, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1631

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = sdiv i32 %0, 64                         ; 2 uses
  %i.av = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.aw = zext nneg i32 %i.av to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.aw
  %i.ax = xor i64 %notmask.i.i35, -1
  %i.ay = sub nsw i32 64, %i.av
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = shl i64 %i.ax, %i.az
  %i.bb = load i8, ptr %2, align 8, !tbaa !1554, !range !71, !noundef !72
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1557
  %i.be = sext i32 %i.au to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !134
  %i.bh = xor i8 %i.bb, 1
  %i.bi = zext nneg i8 %i.bh to i64
  %i.bj = sub nsw i64 0, %i.bi
  %i.bk = xor i64 %i.bg, %i.bj
  %i.bl = and i64 %i.bk, %i.ba                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bl, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bn = shl nsw i32 %i.au, 6
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1628
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !1629, !nonnull !72, !align !212
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !363
  %6 = sext i32 %i.bn to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !1630, !nonnull !72, !align !212
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !439
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 144
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1245
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bl, %.preheader.i37 ], [ %i.cf, %bb.g ] ; 3 uses
  %i.bx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %7 = or disjoint i64 %i.bx, %6                  ; 2 uses
  %i.by = getelementptr inbounds [4 x i8], ptr %i.br, i64 %7
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !134
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %7
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !134
  %i.ce = add i64 %.011.i38, -1
  %i.cf = and i64 %i.ce, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.cf, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !1631

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.cg = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.cg, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %i.ch = load i8, ptr %3, align 8, !tbaa !1558, !range !71, !noundef !72
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1560
  %i.ck = xor i8 %i.ch, 1
  %i.cl = zext nneg i8 %i.ck to i64
  %i.cm = sub nsw i64 0, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = load ptr, ptr %i.cn, align 8, !nonnull !72, !align !212 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !nonnull !72, !align !212 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit
  %i.cu = phi i32 [ %i.cg, %.lr.ph ], [ %i.ec, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.cu, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %i.cv = sdiv i32 %.051, 64                      ; 3 uses
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.cw
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !134
  %i.cz = xor i64 %i.cy, %i.cm                    ; 2 uses
  switch i64 %i.cz, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.da = shl nsw i32 %i.cv, 6
  %i.db = load ptr, ptr %i.cq, align 8, !tbaa !363
  %8 = sext i32 %i.da to i64
  %i.dc = load ptr, ptr %i.cs, align 8, !tbaa !439
  %i.dd = load ptr, ptr %i.ct, align 8, !tbaa !1245
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.de = shl nsw i32 %i.cv, 6                    ; 2 uses
  %i.df = add i32 %i.de, 64
  %i.dg = sext i32 %i.df to i64
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.i
  %i.dh = sext i32 %i.de to i64
  %i.di = load ptr, ptr %i.cq, align 8, !tbaa !363
  %i.dj = load ptr, ptr %i.cs, align 8, !tbaa !439
  %i.dk = load ptr, ptr %i.ct, align 8, !tbaa !1245
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i
  %.020.i = phi i64 [ %i.dh, %.lr.ph21.i ], [ %i.dr, %bb.j ] ; 3 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %.020.i
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !3
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %i.dn
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !134
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %.020.i
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !134
  %i.dr = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.ds = icmp ult i64 %i.dr, %i.dg
  br i1 %i.ds, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, !llvm.loop !1632

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cz, %.lr.ph.i ], [ %i.eb, %bb.k ] ; 3 uses
  %i.dt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %9 = or disjoint i64 %i.dt, %8                  ; 2 uses
  %i.du = getelementptr inbounds [4 x i8], ptr %i.db, i64 %9
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !3
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.dw
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !134
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %9
  store i64 %i.dy, ptr %i.dz, align 8, !tbaa !134
  %i.ea = add i64 %.01519.i, -1
  %i.eb = and i64 %i.ea, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.eb, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !1633

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit: ; preds = %bb.j, %bb.k, %bb.h, %bb.i
  %i.ec = add nsw i32 %i.cu, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.ec, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1634

bb.l:                                             ; preds = %._crit_edge
  %i.ed = ashr i32 %1, 6
  %i.ee = and i32 %1, 63
  %i.ef = zext nneg i32 %i.ee to i64
  %notmask.i42 = shl nsw i64 -1, %i.ef
  %i.eg = xor i64 %notmask.i42, -1
  %i.eh = load i8, ptr %2, align 8, !tbaa !1554, !range !71, !noundef !72
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !1557
  %i.ek = sext i32 %i.ed to i64
  %i.el = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %i.ek
  %i.em = load i64, ptr %i.el, align 8, !tbaa !134
  %i.en = xor i8 %i.eh, 1
  %i.eo = zext nneg i8 %i.en to i64
  %i.ep = sub nsw i64 0, %i.eo
  %i.eq = xor i64 %i.em, %i.ep
  %i.er = and i64 %i.eq, %i.eg                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.er, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.l
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !1628
  %i.ev = load ptr, ptr %i.es, align 8, !tbaa !1629, !nonnull !72, !align !212
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !363
  %10 = sext i32 %i.d to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !1630, !nonnull !72, !align !212
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !439
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 144
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !1245
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader.i44
  %.011.i45 = phi i64 [ %i.er, %.preheader.i44 ], [ %i.fk, %bb.m ] ; 3 uses
  %i.fc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %11 = or disjoint i64 %i.fc, %10                ; 2 uses
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %11
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !3
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.ez, i64 %i.ff
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !134
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %11
  store i64 %i.fh, ptr %i.fi, align 8, !tbaa !134
  %i.fj = add nsw i64 %.011.i45, -1
  %i.fk = and i64 %i.fj, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fk, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !1631

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.m, %bb.d, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.482) align 8 %2, ptr noundef byval(%class.anon.483) align 8 %3) local_unnamed_addr #11 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !1565, !range !71, !noundef !72
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1568
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !134
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1635
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1636, !nonnull !72, !align !212
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !439
  %4 = sext i32 %i.d to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1245
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.an, %bb.d ] ; 3 uses
  %i.ai = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %5 = or disjoint i64 %i.ai, %4                  ; 2 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.af, i64 %5
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !134
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %5
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !134
  %i.am = add nsw i64 %.011.i, -1
  %i.an = and i64 %i.am, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.an, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1637

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = sdiv i32 %0, 64                         ; 2 uses
  %i.ap = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.aq = zext nneg i32 %i.ap to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.aq
  %i.ar = xor i64 %notmask.i.i35, -1
  %i.as = sub nsw i32 64, %i.ap
  %i.at = zext nneg i32 %i.as to i64
  %i.au = shl i64 %i.ar, %i.at
  %i.av = load i8, ptr %2, align 8, !tbaa !1565, !range !71, !noundef !72
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1568
  %i.ay = sext i32 %i.ao to i64
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !134
  %i.bb = xor i8 %i.av, 1
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = sub nsw i64 0, %i.bc
  %i.be = xor i64 %i.ba, %i.bd
  %i.bf = and i64 %i.be, %i.au                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bf, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bh = shl nsw i32 %i.ao, 6
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !1635
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1636, !nonnull !72, !align !212
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !439
  %6 = sext i32 %i.bh to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 144
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1245
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bf, %.preheader.i37 ], [ %i.bt, %bb.g ] ; 3 uses
  %i.bo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %7 = or disjoint i64 %i.bo, %6                  ; 2 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %7
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !134
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %7
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !134
  %i.bs = add i64 %.011.i38, -1
  %i.bt = and i64 %i.bs, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bt, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !1637

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.bu = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.bu, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %i.bv = load i8, ptr %3, align 8, !tbaa !1569, !range !71, !noundef !72
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !1571
  %i.by = xor i8 %i.bv, 1
  %i.bz = zext nneg i8 %i.by to i64
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !72, !align !212 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  %i.cg = phi i32 [ %i.bu, %.lr.ph ], [ %i.ea, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.cg, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %i.ch = sdiv i32 %.051, 64                      ; 3 uses
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !134
  %i.cl = xor i64 %i.ck, %i.ca                    ; 2 uses
  switch i64 %i.cl, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cm = shl nsw i32 %i.ch, 6
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !439
  %8 = sext i32 %i.cm to i64
  %i.co = load ptr, ptr %i.cf, align 8, !tbaa !1245
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cp = shl nsw i32 %i.ch, 6                    ; 2 uses
  %i.cq = add i32 %i.cp, 64
  %i.cr = sext i32 %i.cq to i64                   ; 2 uses
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cs = sext i32 %i.cp to i64                   ; 6 uses
  %i.ct = load ptr, ptr %i.ce, align 8, !tbaa !439 ; 4 uses
  %i.cu = load ptr, ptr %i.cf, align 8, !tbaa !1245 ; 4 uses
  %i.cv = or disjoint i64 %i.cs, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cv, i64 %i.cr) ; 2 uses
  %i.cw = sub i64 %umax, %i.cs                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.cw, 4
  %i.cx = ptrtoaddr ptr %i.cu to i64
  %i.cy = ptrtoaddr ptr %i.ct to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %diff.check = icmp ult i64 %i.cz, 128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check68 = icmp ult i64 %i.cw, 16
  %n.mod.vf72 = and i64 %umax, 1                  ; 3 uses
  %n.vec73 = sub nuw i64 %i.cw, %n.mod.vf72       ; 3 uses
  %i.da = add i64 %n.vec73, %i.cs                 ; 2 uses
  br i1 %min.iters.check68, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.db = add i64 %index, %i.cs                   ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.db ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 96
  %wide.load = load <4 x i64>, ptr %i.dc, align 8, !tbaa !134
  %wide.load69 = load <4 x i64>, ptr %i.dd, align 8, !tbaa !134
  %wide.load70 = load <4 x i64>, ptr %i.de, align 8, !tbaa !134
  %wide.load71 = load <4 x i64>, ptr %i.df, align 8, !tbaa !134
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.db ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 96
  store <4 x i64> %wide.load, ptr %i.dg, align 8, !tbaa !134
  store <4 x i64> %wide.load69, ptr %i.dh, align 8, !tbaa !134
  store <4 x i64> %wide.load70, ptr %i.di, align 8, !tbaa !134
  store <4 x i64> %wide.load71, ptr %i.dj, align 8, !tbaa !134
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec73
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !1638

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index74 = phi i64 [ %index.next76, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dl = add i64 %index74, %i.cs                 ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.dl
  %wide.load75 = load <4 x i64>, ptr %i.dm, align 8, !tbaa !134
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.dl
  store <4 x i64> %wide.load75, ptr %i.dn, align 8, !tbaa !134
  %index.next76 = add nuw i64 %index74, 4         ; 2 uses
  %i.do = icmp eq i64 %index.next76, %n.vec73
  br i1 %i.do, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1639

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n77 = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n77, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.da, %middle.block ], [ %i.cs, %iter.check ], [ %i.da, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.ds, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %.020.i
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !134
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %.020.i
  store i64 %i.dq, ptr %i.dr, align 8, !tbaa !134
  %i.ds = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %i.cr
  br i1 %i.dt, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, !llvm.loop !1640

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cl, %.lr.ph.i ], [ %i.dz, %bb.j ] ; 3 uses
  %i.du = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %9 = or disjoint i64 %i.du, %8                  ; 2 uses
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %9
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !134
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.co, i64 %9
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !134
  %i.dy = add i64 %.01519.i, -1
  %i.dz = and i64 %i.dy, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.dz, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !1641

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.ea = add nsw i32 %i.cg, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.ea, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1642

bb.k:                                             ; preds = %._crit_edge
  %i.eb = ashr i32 %1, 6
  %i.ec = and i32 %1, 63
  %i.ed = zext nneg i32 %i.ec to i64
  %notmask.i42 = shl nsw i64 -1, %i.ed
  %i.ee = xor i64 %notmask.i42, -1
  %i.ef = load i8, ptr %2, align 8, !tbaa !1565, !range !71, !noundef !72
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !1568
  %i.ei = sext i32 %i.eb to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.ei
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !134
  %i.el = xor i8 %i.ef, 1
  %i.em = zext nneg i8 %i.el to i64
  %i.en = sub nsw i64 0, %i.em
  %i.eo = xor i64 %i.ek, %i.en
  %i.ep = and i64 %i.eo, %i.ee                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ep, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.k
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !1635
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !1636, !nonnull !72, !align !212
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !439
  %10 = sext i32 %i.d to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 144
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !1245
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.ep, %.preheader.i44 ], [ %i.fc, %bb.l ] ; 3 uses
  %i.ex = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %11 = or disjoint i64 %i.ex, %10                ; 2 uses
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %11
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !134
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %11
  store i64 %i.ez, ptr %i.fa, align 8, !tbaa !134
  %i.fb = add nsw i64 %.011.i45, -1
  %i.fc = and i64 %i.fb, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fc, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !1637

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.486) align 8 %2, ptr noundef byval(%class.anon.487) align 8 %3) local_unnamed_addr #11 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !1595, !range !71, !noundef !72
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1597
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !134
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !1590, !nonnull !72, !align !212
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !1592, !nonnull !72, !align !212
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !1593, !nonnull !72, !align !212
  br label %bb.d

bb.d:                                             ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bk, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i ] ; 3 uses
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true) ; 2 uses
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = or disjoint i32 %i.d, %i.ai             ; 2 uses
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !363
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !439
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !439
  %i.aq = zext i32 %i.an to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 6
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !134
  %i.au = and i64 %i.aq, 63
  %i.av = shl nuw i64 1, %i.au
  %i.aw = and i64 %i.at, %i.av
  %.not.i.i.i = icmp eq i64 %i.aw, 0
  %i.ax = zext i32 %i.aj to i64                   ; 2 uses
  %i.ay = lshr i64 %i.ax, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ay ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !36  ; 2 uses
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = trunc nuw nsw i64 %i.ah to i8
  %i.bc = and i8 %i.bb, 7
  %i.bd = shl nuw i8 1, %i.bc
  %i.be = or i8 %i.ba, %i.bd
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.bf = and i64 %i.ax, 7
  %i.bg = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !36
  %i.bi = and i8 %i.bh, %i.ba
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i: ; preds = %bb.f, %bb.e
  %.sink.i.i.i.i = phi i8 [ %i.bi, %bb.f ], [ %i.be, %bb.e ]
  store i8 %.sink.i.i.i.i, ptr %i.az, align 1, !tbaa !36
  %i.bj = add nsw i64 %.011.i, -1
  %i.bk = and i64 %i.bj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bk, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1643

bb.g:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = sdiv i32 %0, 64                         ; 2 uses
  %i.bm = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bn = zext nneg i32 %i.bm to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.bn
  %i.bo = xor i64 %notmask.i.i35, -1
  %i.bp = sub nsw i32 64, %i.bm
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = shl i64 %i.bo, %i.bq
  %i.bs = load i8, ptr %2, align 8, !tbaa !1595, !range !71, !noundef !72
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !1597
  %i.bv = sext i32 %i.bl to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !134
  %i.by = xor i8 %i.bs, 1
  %i.bz = zext nneg i8 %i.by to i64
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = xor i64 %i.bx, %i.ca
  %i.cc = and i64 %i.cb, %i.br                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.cc, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.h
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ce = shl nsw i32 %i.bl, 6
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !1590, !nonnull !72, !align !212
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !1592, !nonnull !72, !align !212
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !1593, !nonnull !72, !align !212
  br label %bb.i

bb.i:                                             ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40, %.preheader.i37
  %.011.i38 = phi i64 [ %i.cc, %.preheader.i37 ], [ %i.dn, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40 ] ; 3 uses
  %i.ck = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true) ; 2 uses
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = or disjoint i32 %i.ce, %i.cl            ; 2 uses
  %i.cn = load ptr, ptr %i.ch, align 8, !tbaa !363
  %i.co = sext i32 %i.cm to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !3
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !439
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !439
  %i.ct = zext i32 %i.cq to i64                   ; 2 uses
  %i.cu = lshr i64 %i.ct, 6
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !134
  %i.cx = and i64 %i.ct, 63
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = and i64 %i.cw, %i.cy
  %.not.i.i.i39 = icmp eq i64 %i.cz, 0
  %i.da = zext i32 %i.cm to i64                   ; 2 uses
  %i.db = lshr i64 %i.da, 3
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.db ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !36  ; 2 uses
  br i1 %.not.i.i.i39, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.de = trunc nuw nsw i64 %i.ck to i8
  %i.df = and i8 %i.de, 7
  %i.dg = shl nuw i8 1, %i.df
  %i.dh = or i8 %i.dd, %i.dg
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40

bb.k:                                             ; preds = %bb.i
  %i.di = and i64 %i.da, 7
  %i.dj = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !36
  %i.dl = and i8 %i.dk, %i.dd
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40: ; preds = %bb.k, %bb.j
  %.sink.i.i.i.i41 = phi i8 [ %i.dl, %bb.k ], [ %i.dh, %bb.j ]
  store i8 %.sink.i.i.i.i41, ptr %i.dc, align 1, !tbaa !36
  %i.dm = add i64 %.011.i38, -1
  %i.dn = and i64 %i.dm, %.011.i38                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.dn, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %bb.i, !llvm.loop !1643

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43: ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40, %bb.h, %bb.g
  %i.do = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3354 = icmp sgt i32 %i.do, %i.d
  br i1 %.not3354, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_:bb.a

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49: ; preds = %bb.o, %bb.n
  %.sink.i.i.i.i50 = phi i8 [ %i.fo, %bb.o ], [ %i.fk, %bb.n ]
  store i8 %.sink.i.i.i.i50, ptr %i.ff, align 1, !tbaa !36
  %i.fp = add nsw i64 %.011.i47, -1
  %i.fq = and i64 %i.fp, %.011.i47                ; 2 uses
  %.not10.i51 = icmp eq i64 %i.fq, 0
  br i1 %.not10.i51, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !1643

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !1598, !range !71, !noundef !72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1600
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !134
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.o = shl i32 %1, 6                            ; 3 uses
  %i.p = add i32 %i.o, 64
  %i.q = sext i32 %i.p to i64
  %.not24 = icmp eq i32 %i.o, -64
  br i1 %.not24, label %.loopexit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.b
  %i.r = sext i32 %i.o to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph23, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit
  %.022 = phi i64 [ %i.r, %.lr.ph23 ], [ %i.aw, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit ] ; 5 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !1590, !nonnull !72, !align !212
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !363
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.022
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !1592, !nonnull !72, !align !212
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !439
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !1593, !nonnull !72, !align !212
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !439
  %i.ad = zext i32 %i.y to i64                    ; 2 uses
  %i.ae = lshr i64 %i.ad, 6
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !134
  %i.ah = and i64 %i.ad, 63
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = and i64 %i.ag, %i.ai
  %.not.i.i = icmp eq i64 %i.aj, 0
  %i.ak = lshr i64 %.022, 3
  %i.al = and i64 %i.ak, 536870911
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.al ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !36  ; 2 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = trunc i64 %.022 to i8
  %i.ap = and i8 %i.ao, 7
  %i.aq = shl nuw i8 1, %i.ap
  %i.ar = or i8 %i.an, %i.aq
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit

bb.e:                                             ; preds = %bb.c
  %i.as = and i64 %.022, 7
  %i.at = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !36
  %i.av = and i8 %i.au, %i.an
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit: ; preds = %bb.d, %bb.e
  %.sink.i.i.i = phi i8 [ %i.av, %bb.e ], [ %i.ar, %bb.d ]
  store i8 %.sink.i.i.i, ptr %i.am, align 1, !tbaa !36
  %i.aw = add nuw i64 %.022, 1                    ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.q
  br i1 %i.ax, label %bb.c, label %.loopexit, !llvm.loop !1645

bb.f:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit
  %.01521 = phi i64 [ %i.j, %.lr.ph ], [ %i.ce, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit ] ; 3 uses
  %i.ay = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01521, i1 true) ; 2 uses
  %i.az = trunc nuw nsw i64 %i.ay to i32
  %i.ba = or disjoint i32 %i.l, %i.az             ; 2 uses
  %i.bb = load ptr, ptr %i.k, align 8, !tbaa !1590, !nonnull !72, !align !212
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !363
  %i.bd = sext i32 %i.ba to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !3
  %i.bg = load ptr, ptr %i.m, align 8, !tbaa !1592, !nonnull !72, !align !212
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !439
  %i.bi = load ptr, ptr %i.n, align 8, !tbaa !1593, !nonnull !72, !align !212
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !439
  %i.bk = zext i32 %i.bf to i64                   ; 2 uses
  %i.bl = lshr i64 %i.bk, 6
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !134
  %i.bo = and i64 %i.bk, 63
  %i.bp = shl nuw i64 1, %i.bo
  %i.bq = and i64 %i.bn, %i.bp
  %.not.i.i17 = icmp eq i64 %i.bq, 0
  %i.br = zext i32 %i.ba to i64                   ; 2 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !36  ; 2 uses
  br i1 %.not.i.i17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bv = trunc nuw nsw i64 %i.ay to i8
  %i.bw = and i8 %i.bv, 7
  %i.bx = shl nuw i8 1, %i.bw
  %i.by = or i8 %i.bu, %i.bx
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit

bb.h:                                             ; preds = %bb.f
  %i.bz = and i64 %i.br, 7
  %i.ca = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !36
  %i.cc = and i8 %i.cb, %i.bu
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit: ; preds = %bb.g, %bb.h
  %.sink.i.i.i18 = phi i8 [ %i.cc, %bb.h ], [ %i.by, %bb.g ]
  store i8 %.sink.i.i.i18, ptr %i.bt, align 1, !tbaa !36
  %i.cd = add i64 %.01521, -1
  %i.ce = and i64 %i.cd, %.01521                  ; 2 uses
  %.not = icmp eq i64 %i.ce, 0
  br i1 %.not, label %.loopexit, label %bb.f, !llvm.loop !1646

.loopexit:                                        ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit, %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_EUlimE_ZNS3_ISE_EEvSG_iibSH_EUliE_EEviiSH_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.488) align 8 %2, ptr noundef byval(%class.anon.489) align 8 %3) local_unnamed_addr #11 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !1575, !range !71, !noundef !72
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1578
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !134
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1647
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1648, !nonnull !72, !align !212
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1245
  %4 = sext i32 %i.d to i64
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.ag, i64 %4
  %.pre.i = load i64, ptr %i.ae, align 8, !tbaa !134
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ak, %bb.d ] ; 3 uses
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ai = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.ah
  store i64 %.pre.i, ptr %i.ai, align 8, !tbaa !134
  %i.aj = add nsw i64 %.011.i, -1
  %i.ak = and i64 %i.aj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ak, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1649

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit41, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = sdiv i32 %0, 64                         ; 2 uses
  %i.am = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.an = zext nneg i32 %i.am to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.an
  %i.ao = xor i64 %notmask.i.i35, -1
  %i.ap = sub nsw i32 64, %i.am
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl i64 %i.ao, %i.aq
  %i.as = load i8, ptr %2, align 8, !tbaa !1575, !range !71, !noundef !72
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1578
  %i.av = sext i32 %i.al to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !134
  %i.ay = xor i8 %i.as, 1
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = xor i64 %i.ax, %i.ba
  %i.bc = and i64 %i.bb, %i.ar                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bc, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit41, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.be = shl nsw i32 %i.al, 6
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !1647
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1648, !nonnull !72, !align !212
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 144
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1245
  %5 = sext i32 %i.be to i64
  %invariant.gep.i38 = getelementptr [8 x i8], ptr %i.bj, i64 %5
  %.pre.i38 = load i64, ptr %i.bh, align 8, !tbaa !134
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i39 = phi i64 [ %i.bc, %.preheader.i37 ], [ %i.bn, %bb.g ] ; 3 uses
  %i.bk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i39, i1 true)
  %i.bl = getelementptr [8 x i8], ptr %invariant.gep.i38, i64 %i.bk
  store i64 %.pre.i38, ptr %i.bl, align 8, !tbaa !134
  %i.bm = add i64 %.011.i39, -1
  %i.bn = and i64 %i.bm, %.011.i39                ; 2 uses
  %.not10.i40 = icmp eq i64 %i.bn, 0
  br i1 %.not10.i40, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit41, label %bb.g, !llvm.loop !1649

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit41: ; preds = %bb.g, %bb.f, %bb.e
  %i.bo = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3353 = icmp sgt i32 %i.bo, %i.d
  br i1 %.not3353, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit41
  %i.bp = load i8, ptr %3, align 8, !tbaa !1579, !range !71, !noundef !72
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1581
  %i.bs = xor i8 %i.bp, 1
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = sub nsw i64 0, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !72, !align !212 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit41
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ca = phi i32 [ %i.bo, %.lr.ph ], [ %i.dw, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.054 = phi i32 [ %i.c, %.lr.ph ], [ %i.ca, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cb = sdiv i32 %.054, 64                      ; 3 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !134
  %i.cf = xor i64 %i.ce, %i.bu                    ; 2 uses
  switch i64 %i.cf, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cg = shl nsw i32 %i.cb, 6
  %i.ch = load ptr, ptr %i.bz, align 8, !tbaa !1245
  %6 = sext i32 %i.cg to i64
  %invariant.gep.i45 = getelementptr [8 x i8], ptr %i.ch, i64 %6
  %.pre24.i = load i64, ptr %i.by, align 8, !tbaa !134
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ci = shl nsw i32 %i.cb, 6                    ; 3 uses
  %i.cj = add i32 %i.ci, 64
  %i.ck = sext i32 %i.cj to i64                   ; 3 uses
  %.0.off = add i32 %.054, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cl = sext i32 %i.ci to i64                   ; 9 uses
  %i.cm = load ptr, ptr %i.bz, align 8, !tbaa !1245 ; 3 uses
  %.pre.i42 = load i64, ptr %i.by, align 8, !tbaa !134 ; 2 uses
  %i.cn = or disjoint i64 %i.cl, 1
  %umax70 = tail call i64 @llvm.umax.i64(i64 %i.cn, i64 %i.ck) ; 2 uses
  %i.co = sub i64 %umax70, %i.cl                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.co, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.cp = or disjoint i64 %i.cl, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cp, i64 %i.ck)
  %i.cq = xor i64 %i.cl, -1
  %i.cr = add i64 %umax, %i.cq                    ; 2 uses
  %i.cs = sext i32 %i.ci to i35                   ; 2 uses
  %i.ct = shl nsw i35 %i.cs, 3
  %i.cu = trunc i64 %i.cr to i35
  %i.cv = add i35 %i.cs, %i.cu
  %i.cw = shl i35 %i.cv, 3
  %i.cx = icmp slt i35 %i.cw, %i.ct
  %i.cy = icmp ugt i64 %i.cr, 4294967295
  %i.cz = or i1 %i.cx, %i.cy
  br i1 %i.cz, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check71 = icmp ult i64 %i.co, 16
  %n.mod.vf72 = and i64 %umax70, 1                ; 3 uses
  %n.vec73 = sub i64 %i.co, %n.mod.vf72           ; 3 uses
  %i.da = add i64 %n.vec73, %i.cl                 ; 2 uses
  %broadcast.splatinsert74 = insertelement <4 x i64> poison, i64 %.pre.i42, i64 0
  %broadcast.splat75 = shufflevector <4 x i64> %broadcast.splatinsert74, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check71, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.db = add i64 %index, %i.cl
  %i.dc = shl i64 %i.db, 32
  %i.dd = ashr exact i64 %i.dc, 29
  %i.de = getelementptr inbounds i8, ptr %i.cm, i64 %i.dd ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 96
  store <4 x i64> %broadcast.splat75, ptr %i.de, align 8, !tbaa !134
  store <4 x i64> %broadcast.splat75, ptr %i.df, align 8, !tbaa !134
  store <4 x i64> %broadcast.splat75, ptr %i.dg, align 8, !tbaa !134
  store <4 x i64> %broadcast.splat75, ptr %i.dh, align 8, !tbaa !134
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec73
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !1650

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index76 = phi i64 [ %index.next77, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dj = add i64 %index76, %i.cl
  %i.dk = shl i64 %i.dj, 32
  %i.dl = ashr exact i64 %i.dk, 29
  %i.dm = getelementptr inbounds i8, ptr %i.cm, i64 %i.dl
  store <4 x i64> %broadcast.splat75, ptr %i.dm, align 8, !tbaa !134
  %index.next77 = add nuw i64 %index76, 4         ; 2 uses
  %i.dn = icmp eq i64 %index.next77, %n.vec73
  br i1 %i.dn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1651

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n78 = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n78, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.da, %middle.block ], [ %i.cl, %vector.scevcheck ], [ %i.cl, %iter.check ], [ %i.da, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.dq, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %sext.i = shl i64 %.020.i, 32
  %i.do = ashr exact i64 %sext.i, 29
  %i.dp = getelementptr inbounds i8, ptr %i.cm, i64 %i.do
  store i64 %.pre.i42, ptr %i.dp, align 8, !tbaa !134
  %i.dq = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dr = icmp ult i64 %i.dq, %i.ck
  br i1 %i.dr, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !1652

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cf, %.lr.ph.i ], [ %i.dv, %bb.j ] ; 3 uses
  %i.ds = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.dt = getelementptr [8 x i8], ptr %invariant.gep.i45, i64 %i.ds
  store i64 %.pre24.i, ptr %i.dt, align 8, !tbaa !134
  %i.du = add i64 %.01519.i, -1
  %i.dv = and i64 %i.du, %.01519.i                ; 2 uses
  %.not.i43 = icmp eq i64 %i.dv, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !1653

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.dw = add nsw i32 %i.ca, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dw, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1654

bb.k:                                             ; preds = %._crit_edge
  %i.dx = ashr i32 %1, 6
  %i.dy = and i32 %1, 63
  %i.dz = zext nneg i32 %i.dy to i64
  %notmask.i44 = shl nsw i64 -1, %i.dz
  %i.ea = xor i64 %notmask.i44, -1
  %i.eb = load i8, ptr %2, align 8, !tbaa !1575, !range !71, !noundef !72
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !1578
  %i.ee = sext i32 %i.dx to i64
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.ee
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !134
  %i.eh = xor i8 %i.eb, 1
  %i.ei = zext nneg i8 %i.eh to i64
  %i.ej = sub nsw i64 0, %i.ei
  %i.ek = xor i64 %i.eg, %i.ej
  %i.el = and i64 %i.ek, %i.ea                    ; 2 uses
  %.not.i45 = icmp eq i64 %i.el, 0
  br i1 %.not.i45, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i46

.preheader.i46:                                   ; preds = %bb.k
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !1647
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !1648, !nonnull !72, !align !212
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 144
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !1245
  %7 = sext i32 %i.d to i64
  %invariant.gep.i51 = getelementptr [8 x i8], ptr %i.er, i64 %7
  %.pre.i47 = load i64, ptr %i.ep, align 8, !tbaa !134
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i46
  %.011.i48 = phi i64 [ %i.el, %.preheader.i46 ], [ %i.ev, %bb.l ] ; 3 uses
  %i.es = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i48, i1 true)
  %i.et = getelementptr [8 x i8], ptr %invariant.gep.i51, i64 %i.es
  store i64 %.pre.i47, ptr %i.et, align 8, !tbaa !134
  %i.eu = add nsw i64 %.011.i48, -1
  %i.ev = and i64 %i.eu, %.011.i48                ; 2 uses
  %.not10.i49 = icmp eq i64 %i.ev, 0
  br i1 %.not10.i49, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !1649

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %6 = alloca %class.anon.491, align 8            ; 7 uses
  %7 = alloca %class.anon.490, align 8            ; 9 uses
  %i.a = zext i1 %3 to i8                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i8 %i.a, ptr %6, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %.sroa.3.0..sroa_idx9, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %5, ptr %.sroa.4.0..sroa_idx, align 8
  store i8 %i.a, ptr %7, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %.sroa.212.0..sroa_idx, align 8
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %4, ptr %.sroa.313.0..sroa_idx, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %5, ptr %.sroa.414.0..sroa_idx, align 8
  %.not.i = icmp slt i32 %1, %2
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, 63                           ; 2 uses
  %i.c = srem i32 %i.b, 64
  %i.d = sub nsw i32 %i.b, %i.c                   ; 6 uses
  %i.e = and i32 %2, -64                          ; 4 uses
  %i.f = icmp slt i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ashr i32 %2, 6
  %i.h = and i32 %2, 63
  %i.i = zext nneg i32 %i.h to i64
  %notmask.i.i = shl nsw i64 -1, %i.i
  %i.j = xor i64 %notmask.i.i, -1
  %i.k = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask.i.i.i, -1
  %i.n = sub nsw i32 64, %i.k
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  %i.q = and i64 %i.p, %i.j
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

bb.d:                                             ; preds = %bb.b
  %.not32.i = icmp eq i32 %1, %i.d
  br i1 %.not32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sdiv i32 %1, 64
  %i.s = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask.i.i35.i, -1
  %i.v = sub nsw i32 64, %i.s
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %i.u, %i.w
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1655

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !1656, !range !71, !noundef !72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1659
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !134
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 6 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6                        ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1660
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !1661, !nonnull !72, !align !212 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1601 ; 5 uses
  %.not.i.i = icmp eq ptr %i.r, null
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.p, i64 58
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 2, !tbaa !1610, !range !71
  %.pre.i.fr = freeze i8 %.pre.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 57
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 59 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 5 uses
  %i.w = trunc i8 %.pre.i.fr to i1                ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 144 ; 3 uses
  br i1 %.not.i.i, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !1611 ; 3 uses
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !1245 ; 3 uses
  br i1 %i.w, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader, label %.preheader.split.us.split

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader: ; preds = %.preheader.split.us
  %3 = sext i32 %i.m to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us
  %.011.us.us = phi i64 [ %i.ag, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us ], [ %i.k, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader ] ; 3 uses
  %i.ab = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us.us, i1 true)
  %4 = or disjoint i64 %i.ab, %3                  ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.z, i64 %4
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !134
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %4
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !134
  %i.af = add i64 %.011.us.us, -1
  %i.ag = and i64 %i.af, %.011.us.us              ; 2 uses
  %.not10.us.us = icmp eq i64 %i.ag, 0
  br i1 %.not10.us.us, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us, !llvm.loop !1662

.preheader.split.us.split:                        ; preds = %.preheader.split.us
  %i.ah = load i8, ptr %i.t, align 1, !tbaa !1616, !range !71, !noundef !72
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %.preheader.split.us.split.split.us, label %.preheader.split.us.split.split

.preheader.split.us.split.split.us:               ; preds = %.preheader.split.us.split
  %i.aj = load i32, ptr %i.x, align 8, !tbaa !1617
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ak
  %.pre29 = load i64, ptr %i.al, align 8, !tbaa !134
  %5 = sext i32 %i.m to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.aa, i64 %5
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19, %.preheader.split.us.split.split.us
  %.011.us.us20 = phi i64 [ %i.k, %.preheader.split.us.split.split.us ], [ %i.ap, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19 ] ; 3 uses
  %i.am = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us.us20, i1 true)
  %i.an = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.am
  store i64 %.pre29, ptr %i.an, align 8, !tbaa !134
  %i.ao = add i64 %.011.us.us20, -1
  %i.ap = and i64 %i.ao, %.011.us.us20            ; 2 uses
  %.not10.us.us23 = icmp eq i64 %i.ap, 0
  br i1 %.not10.us.us23, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19, !llvm.loop !1662

.preheader.split.us.split.split:                  ; preds = %.preheader.split.us.split
  %i.aq = load ptr, ptr %i.u, align 8, !tbaa !1621
  %6 = sext i32 %i.m to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us, %.preheader.split.us.split.split
  %.011.us = phi i64 [ %i.k, %.preheader.split.us.split.split ], [ %i.az, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us ] ; 3 uses
  %i.ar = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us, i1 true)
  %7 = or disjoint i64 %i.ar, %6                  ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %7
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !134
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %7
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !134
  %i.ay = add i64 %.011.us, -1
  %i.az = and i64 %i.ay, %.011.us                 ; 2 uses
  %.not10.us = icmp eq i64 %i.az, 0
  br i1 %.not10.us, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us, !llvm.loop !1662

.preheader.split:                                 ; preds = %.preheader
  br i1 %i.w, label %.preheader.split.split.us.split.us, label %.preheader.split.split

.preheader.split.split.us.split.us:               ; preds = %.preheader.split, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit.us16.us
  %.011.us12.us = phi i64 [ %i.br, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit.us16.us ], [ %i.k, %.preheader.split ] ; 3 uses
  %i.ba = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us12.us, i1 true)
  %i.bb = trunc nuw nsw i64 %i.ba to i32
  %i.bc = or disjoint i32 %i.m, %i.bb             ; 2 uses
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = lshr i64 %i.bd, 6
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !134
  %i.bh = and i64 %i.bd, 63
  %i.bi = shl nuw i64 1, %i.bh
  %i.bj = and i64 %i.bg, %i.bi
  %.not.i.i.i.us.us = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i.us.us, label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit.us16.us, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us13.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us13.us: ; preds = %.preheader.split.split.us.split.us
  %i.bk = load ptr, ptr %i.v, align 8, !tbaa !1611
  %i.bl = sext i32 %i.bc to i64                   ; 2 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !134
  %i.bo = load ptr, ptr %i.y, align 8, !tbaa !1245
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.bl
  store i64 %i.bn, ptr %i.bp, align 8, !tbaa !134
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit.us16.us

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit.us16.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us13.us, %.preheader.split.split.us.split.us
  %i.bq = add i64 %.011.us12.us, -1
  %i.br = and i64 %i.bq, %.011.us12.us            ; 2 uses
  %.not10.us17.us = icmp eq i64 %i.br, 0
  br i1 %.not10.us17.us, label %.loopexit, label %.preheader.split.split.us.split.us, !llvm.loop !1662

.preheader.split.split:                           ; preds = %.preheader.split, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit
  %.011 = phi i64 [ %i.dj, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit ], [ %i.k, %.preheader.split ] ; 3 uses
  %i.bs = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011, i1 true)
  %i.bt = trunc nuw nsw i64 %i.bs to i32
  %i.bu = or disjoint i32 %i.m, %i.bt             ; 4 uses
  %i.bv = load i8, ptr %i.s, align 1, !range !71
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader.split.split
  %i.bx = zext i32 %i.bu to i64                   ; 2 uses
  %i.by = lshr i64 %i.bx, 6
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !134
  %i.cb = and i64 %i.bx, 63
  %i.cc = shl nuw i64 1, %i.cb
  %i.cd = and i64 %i.ca, %i.cc
  %.not.i.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i.i, label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i

bb.c:                                             ; preds = %.preheader.split.split
  %i.ce = load i8, ptr %i.t, align 1, !tbaa !1616, !range !71, !noundef !72
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cg = load ptr, ptr %i.u, align 8, !tbaa !1621
  %i.ch = sext i32 %i.bu to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = zext i32 %i.cj to i64                   ; 2 uses
  %i.cl = lshr i64 %i.ck, 6
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.cl
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !134
  %i.co = and i64 %i.ck, 63
  %i.cp = shl nuw i64 1, %i.co
  %i.cq = and i64 %i.cp, %i.cn
  %.not.i7.i.i = icmp eq i64 %i.cq, 0
  br i1 %.not.i7.i.i, label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.thread35

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.thread35: ; preds = %bb.d
  %i.cr = load ptr, ptr %i.v, align 8, !tbaa !1611
  br label %bb.e

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i: ; preds = %bb.c
  %i.cs = load i64, ptr %i.r, align 8, !tbaa !134
  %i.ct = and i64 %i.cs, 1
  %.not.i6.i.i = icmp eq i64 %i.ct, 0
  br i1 %.not.i6.i.i, label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.thread: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i
  %i.cu = load ptr, ptr %i.v, align 8, !tbaa !1611
  br label %_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i: ; preds = %bb.b
  %.pre = load i8, ptr %i.t, align 1, !tbaa !1616, !range !71
  %i.cv = load ptr, ptr %i.v, align 8, !tbaa !1611 ; 2 uses
  %i.cw = trunc nuw i8 %.pre to i1
  br i1 %i.cw, label %_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.thread35, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i
  %i.cx = phi ptr [ %i.cr, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.thread35 ], [ %i.cv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i ]
  %i.cy = load ptr, ptr %i.u, align 8, !tbaa !1621
  %i.cz = sext i32 %i.bu to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.cz
  br label %_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i

_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.thread, %bb.e
  %i.db = phi ptr [ %i.cx, %bb.e ], [ %i.cu, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.thread ], [ %i.cv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i ]
  %.0.i.i.i.in = phi ptr [ %i.da, %bb.e ], [ %i.x, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.thread ], [ %i.x, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i ]
  %.0.i.i.i = load i32, ptr %.0.i.i.i.in, align 4, !tbaa !3
  %i.dc = sext i32 %.0.i.i.i to i64
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.dc
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !134
  %i.df = load ptr, ptr %i.y, align 8, !tbaa !1245
  %i.dg = sext i32 %i.bu to i64
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.dg
  store i64 %i.de, ptr %i.dh, align 8, !tbaa !134
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit: ; preds = %bb.b, %bb.d, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i
  %i.di = add i64 %.011, -1
  %i.dj = and i64 %i.di, %.011                    ; 2 uses
  %.not10 = icmp eq i64 %i.dj, 0
  br i1 %.not10, label %.loopexit, label %.preheader.split.split, !llvm.loop !1662

.loopexit:                                        ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit.us16.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !1663, !range !71, !noundef !72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1665
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !134
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 6 uses
  switch i64 %i.j, label %.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6                        ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1660
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !1661, !nonnull !72, !align !212 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1601 ; 5 uses
  %.not.i.i17 = icmp eq ptr %i.q, null
  %.phi.trans.insert.i18 = getelementptr inbounds nuw i8, ptr %i.o, i64 58
  %.pre.i19 = load i8, ptr %.phi.trans.insert.i18, align 2, !tbaa !1610, !range !71
  %.pre.i19.fr = freeze i8 %.pre.i19
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 57
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 59 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 5 uses
  %i.v = trunc i8 %.pre.i19.fr to i1              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 64 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 144 ; 3 uses
  br i1 %.not.i.i17, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !1611 ; 3 uses
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !1245 ; 3 uses
  br i1 %i.v, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us.preheader, label %.lr.ph.split.us.split

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us.preheader: ; preds = %.lr.ph.split.us
  %2 = sext i32 %i.l to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us
  %.01531.us.us = phi i64 [ %i.af, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us ], [ %i.j, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us.preheader ] ; 3 uses
  %i.aa = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01531.us.us, i1 true)
  %3 = or disjoint i64 %i.aa, %2                  ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.y, i64 %3
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !134
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.z, i64 %3
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !134
  %i.ae = add i64 %.01531.us.us, -1
  %i.af = and i64 %i.ae, %.01531.us.us            ; 2 uses
  %.not.us.us = icmp eq i64 %i.af, 0
  br i1 %.not.us.us, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us, !llvm.loop !1666

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.ag = load i8, ptr %i.s, align 1, !tbaa !1616, !range !71, !noundef !72
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.split.us.split.split.us, label %.lr.ph.split.us.split.split

.lr.ph.split.us.split.split.us:                   ; preds = %.lr.ph.split.us.split
  %i.ai = load i32, ptr %i.w, align 8, !tbaa !1617
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.aj
  %.pre57 = load i64, ptr %i.ak, align 8, !tbaa !134
  %4 = sext i32 %i.l to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.z, i64 %4
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us39

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us39: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us39, %.lr.ph.split.us.split.split.us
  %.01531.us.us40 = phi i64 [ %i.j, %.lr.ph.split.us.split.split.us ], [ %i.ao, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us39 ] ; 3 uses
  %i.al = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01531.us.us40, i1 true)
  %i.am = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.al
  store i64 %.pre57, ptr %i.am, align 8, !tbaa !134
  %i.an = add i64 %.01531.us.us40, -1
  %i.ao = and i64 %i.an, %.01531.us.us40          ; 2 uses
  %.not.us.us43 = icmp eq i64 %i.ao, 0
  br i1 %.not.us.us43, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us39, !llvm.loop !1666

.lr.ph.split.us.split.split:                      ; preds = %.lr.ph.split.us.split
  %i.ap = load ptr, ptr %i.t, align 8, !tbaa !1621
  %5 = sext i32 %i.l to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us, %.lr.ph.split.us.split.split
  %.01531.us = phi i64 [ %i.j, %.lr.ph.split.us.split.split ], [ %i.ay, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us ] ; 3 uses
  %i.aq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01531.us, i1 true)
  %6 = or disjoint i64 %i.aq, %5                  ; 2 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %6
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !134
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.z, i64 %6
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !134
  %i.ax = add i64 %.01531.us, -1
  %i.ay = and i64 %i.ax, %.01531.us               ; 2 uses
  %.not.us = icmp eq i64 %i.ay, 0
  br i1 %.not.us, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us, !llvm.loop !1666

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.v, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit.us36.us
  %.01531.us32.us = phi i64 [ %i.bq, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit.us36.us ], [ %i.j, %.lr.ph.split ] ; 3 uses
  %i.az = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01531.us32.us, i1 true)
  %i.ba = trunc nuw nsw i64 %i.az to i32
  %i.bb = or disjoint i32 %i.l, %i.ba             ; 2 uses
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = lshr i64 %i.bc, 6
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.bd
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !134
  %i.bg = and i64 %i.bc, 63
  %i.bh = shl nuw i64 1, %i.bg
  %i.bi = and i64 %i.bf, %i.bh
  %.not.i.i.i27.us.us = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i.i27.us.us, label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit.us36.us, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us33.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us33.us: ; preds = %.lr.ph.split.split.us.split.us
  %i.bj = load ptr, ptr %i.u, align 8, !tbaa !1611
  %i.bk = sext i32 %i.bb to i64                   ; 2 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !134
  %i.bn = load ptr, ptr %i.x, align 8, !tbaa !1245
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bk
  store i64 %i.bm, ptr %i.bo, align 8, !tbaa !134
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit.us36.us

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit.us36.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us33.us, %.lr.ph.split.split.us.split.us
  %i.bp = add i64 %.01531.us32.us, -1
  %i.bq = and i64 %i.bp, %.01531.us32.us          ; 2 uses
  %.not.us37.us = icmp eq i64 %i.bq, 0
  br i1 %.not.us37.us, label %.loopexit, label %.lr.ph.split.split.us.split.us, !llvm.loop !1666

bb.b:                                             ; preds = %bb.a
  %i.br = shl i32 %1, 6                           ; 3 uses
  %i.bs = add i32 %i.br, 64
  %i.bt = sext i32 %i.bs to i64
  %.not49 = icmp eq i32 %i.br, -64
  br i1 %.not49, label %.loopexit, label %.lr.ph48

.lr.ph48:                                         ; preds = %bb.b
  %i.bu = sext i32 %i.br to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !1660
  %i.by = load ptr, ptr %i.bv, align 8, !tbaa !1661, !nonnull !72, !align !212 ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1601 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ca, null
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.by, i64 58
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 2, !tbaa !1610, !range !71
  %i.cb = trunc nuw i8 %.pre.i to i1              ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 57
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 59 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 144
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph48, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clImEEDaSB_.exit
  %.044 = phi i64 [ %i.bu, %.lr.ph48 ], [ %i.dx, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clImEEDaSB_.exit ] ; 7 uses
  %i.ci = trunc i64 %.044 to i32
  br i1 %.not.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cj = load i8, ptr %i.cc, align 1, !range !71
  %i.ck = trunc nuw i8 %i.cj to i1
  %or.cond.i.i = select i1 %i.cb, i1 true, i1 %i.ck
  br i1 %or.cond.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cl = lshr i64 %.044, 6
  %i.cm = and i64 %i.cl, 67108863
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !134
  %i.cp = and i64 %.044, 63
  %i.cq = shl nuw i64 1, %i.cp
  %i.cr = and i64 %i.co, %i.cq
  %.not.i.i.i = icmp eq i64 %i.cr, 0
  br i1 %.not.i.i.i, label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clImEEDaSB_.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i

bb.f:                                             ; preds = %bb.d
  %i.cs = load i8, ptr %i.cd, align 1, !tbaa !1616, !range !71, !noundef !72 ; 2 uses
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cu = load ptr, ptr %i.ce, align 8, !tbaa !1621
  %sext.i = shl i64 %.044, 32
  %i.cv = ashr exact i64 %sext.i, 30
  %i.cw = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !3
  %i.cy = zext i32 %i.cx to i64                   ; 2 uses
  %i.cz = lshr i64 %i.cy, 6
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cz
  %i.db = load i64, ptr %i.da, align 8, !tbaa !134
  %i.dc = and i64 %i.cy, 63
  %i.dd = shl nuw i64 1, %i.dc
  %i.de = and i64 %i.dd, %i.db
  %.not.i7.i.i = icmp eq i64 %i.de, 0
  br i1 %.not.i7.i.i, label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clImEEDaSB_.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i: ; preds = %bb.f
  %i.df = load i64, ptr %i.ca, align 8, !tbaa !134
  %i.dg = and i64 %i.df, 1
  %.not.i6.i.i = icmp eq i64 %i.dg, 0
  br i1 %.not.i6.i.i, label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clImEEDaSB_.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %bb.g
  %i.dh = load ptr, ptr %i.cf, align 8, !tbaa !1611
  br label %bb.h

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i: ; preds = %bb.e, %bb.c
  %i.di = load ptr, ptr %i.cf, align 8, !tbaa !1611 ; 2 uses
  br i1 %i.cb, label %_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i
  %.pre = load i8, ptr %i.cd, align 1, !tbaa !1616, !range !71
  br label %bb.h

bb.h:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i
  %i.dj = phi i8 [ %i.cs, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i ], [ %.pre, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge ]
  %i.dk = phi ptr [ %i.dh, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i ], [ %i.di, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge ] ; 2 uses
  %i.dl = trunc nuw i8 %i.dj to i1
  br i1 %i.dl, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dm = load i32, ptr %i.cg, align 8, !tbaa !1617
  br label %_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i

bb.j:                                             ; preds = %bb.h
  %i.dn = load ptr, ptr %i.ce, align 8, !tbaa !1621
  %sext4.i = shl i64 %.044, 32
  %i.do = ashr exact i64 %sext4.i, 30
  %i.dp = getelementptr inbounds i8, ptr %i.dn, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i

_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i: ; preds = %bb.j, %bb.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i
  %i.dr = phi ptr [ %i.dk, %bb.j ], [ %i.dk, %bb.i ], [ %i.di, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ]
  %.0.i.i.i = phi i32 [ %i.dq, %bb.j ], [ %i.dm, %bb.i ], [ %i.ci, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ]
  %i.ds = sext i32 %.0.i.i.i to i64
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.ds
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !134
  %i.dv = load ptr, ptr %i.ch, align 8, !tbaa !1245
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.044
  store i64 %i.du, ptr %i.dw, align 8, !tbaa !134
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clImEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clImEEDaSB_.exit: ; preds = %bb.e, %bb.g, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i
  %i.dx = add nuw i64 %.044, 1                    ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.bt
  br i1 %i.dy, label %bb.c, label %.loopexit, !llvm.loop !1667

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit
  %.01531 = phi i64 [ %i.fq, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit ], [ %i.j, %.lr.ph.split ] ; 3 uses
  %i.dz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01531, i1 true)
  %i.ea = trunc nuw nsw i64 %i.dz to i32
  %i.eb = or disjoint i32 %i.l, %i.ea             ; 4 uses
  %i.ec = load i8, ptr %i.r, align 1, !range !71
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.split.split
  %i.ee = zext i32 %i.eb to i64                   ; 2 uses
  %i.ef = lshr i64 %i.ee, 6
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ef
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !134
  %i.ei = and i64 %i.ee, 63
  %i.ej = shl nuw i64 1, %i.ei
  %i.ek = and i64 %i.eh, %i.ej
  %.not.i.i.i27 = icmp eq i64 %i.ek, 0
  br i1 %.not.i.i.i27, label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSB_.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i22

bb.l:                                             ; preds = %.lr.ph.split.split
  %i.el = load i8, ptr %i.s, align 1, !tbaa !1616, !range !71, !noundef !72
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i25, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.en = load ptr, ptr %i.t, align 8, !tbaa !1621
  %i.eo = sext i32 %i.eb to i64
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.en, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !3
  %i.er = zext i32 %i.eq to i64                   ; 2 uses
  %i.es = lshr i64 %i.er, 6
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.es
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !134
  %i.ev = and i64 %i.er, 63
  %i.ew = shl nuw i64 1, %i.ev
  %i.ex = and i64 %i.ew, %i.eu
  %.not.i7.i.i21 = icmp eq i64 %i.ex, 0
end_hunk_2
begin_hunk_3_@_ZSt10_ConstructIN8facebook5velox10FlatVectorImEEJRKPNS1_6memory10MemoryPoolERKSt10shared_ptrIKNS1_4TypeEEN5boost13intrusive_ptrINS1_6BufferEEERiSI_St6vectorISI_SaISI_EEEEvPT_DpOT0_:bb.a
  br i1 %.not.i8, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13, label %bb.e

bb.e:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = atomicrmw sub ptr %i.v, i32 1 acq_rel, align 4
  %i.x = icmp eq i32 %i.w, 1
  br i1 %i.x, label %.sink.split.i.i9, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13

.sink.split.i.i9:                                 ; preds = %bb.e
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(64) %i.u)
          to label %.noexc.i10 unwind label %bb.f, !inline_history !392

.noexc.i10:                                       ; preds = %.sink.split.i.i9
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !393
  %.not.i.i11 = icmp eq ptr %i.ac, null
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !7
  %..i.i12 = select i1 %.not.i.i11, i64 8, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %..i.i12
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(64) %i.u)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13 unwind label %bb.f, !inline_history !392

bb.f:                                             ; preds = %.noexc.i10, %.sink.split.i.i9
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #37
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.e, %.noexc.i10
  ret void

bb.g:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #30
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #30
  resume { ptr, i32 } %i.ai
}

declare void @_ZN8facebook5velox6Buffer5sliceIbEEN5boost13intrusive_ptrIS1_EERKS5_mmPNS0_6memory10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.boost::intrusive_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox17SelectivityVector8deselectERKS1_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef nonnull align 8 dereferenceable(38) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %2 = alloca %class.anon.275, align 8            ; 6 uses
  %3 = alloca %class.anon.277, align 8            ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !253    ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !253
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !256
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !310
  %i.i = load i32, ptr %i.f, align 8, !tbaa !3
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.h, i32 %i.i)
  tail call void @_ZN8facebook5velox4bits8andRangeILb1EEEvPmPKmS5_ii(ptr noundef %i.b, ptr noundef %i.b, ptr noundef %i.c, i32 noundef %i.e, i32 noundef %.sroa.speculated)
  %i.j = load ptr, ptr %0, align 8, !tbaa !253    ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !310  ; 6 uses
  %.not.i.i.i = icmp sgt i32 %i.l, 0
  br i1 %.not.i.i.i, label %bb.b, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.m = and i32 %i.l, 2147483584                 ; 4 uses
  %i.n = zext nneg i32 %i.m to i64
  %.not37.i.i.not.i11.not = icmp eq i32 %i.m, 0
  br i1 %.not37.i.i.not.i11.not, label %.critedge.i.i.i, label %.lr.ph

_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i: ; preds = %.lr.ph
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i12, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.n
  br i1 %.not37.i.i.not.i, label %.lr.ph, label %.critedge.i.i.i, !llvm.loop !359

.lr.ph:                                           ; preds = %bb.b, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i
  %indvars.iv.i12 = phi i64 [ %indvars.iv.next.i, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i ], [ 0, %bb.b ] ; 3 uses
  %i.o = lshr exact i64 %indvars.iv.i12, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !134  ; 2 uses
  %.not.i42.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i42.i.i.i, label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i, !llvm.loop !359

.critedge.i.i.i:                                  ; preds = %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i, %bb.b
  %.not38.i.i.i = icmp eq i32 %i.l, %i.m
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %.critedge.i.i.i
  %i.r = lshr i32 %i.l, 6
  %i.s = and i32 %i.l, 63
  %i.t = zext nneg i32 %i.s to i64
  %notmask.i43.i.i.i = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask.i43.i.i.i, -1
  %i.v = zext nneg i32 %i.r to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !134
  %i.y = and i64 %i.x, %i.u                       ; 2 uses
  %.not.i44.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i44.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i: ; preds = %bb.c, %.critedge.i.i.i, %bb.a
  store i32 0, ptr %i.d, align 4, !tbaa !256
  store i32 0, ptr %i.f, align 8, !tbaa !197
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i16 256, ptr %i.z, align 4
  br label %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i: ; preds = %.lr.ph
  %i.aa = trunc nuw nsw i64 %indvars.iv.i12 to i32
  br label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i: ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i, %bb.c
  %.sink67.i.i.i = phi i64 [ %i.y, %bb.c ], [ %i.q, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i ]
  %.sink65.i.i.i = phi i32 [ %i.m, %bb.c ], [ %i.aa, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i ]
  %i.ab = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sink67.i.i.i, i1 true)
  %i.ac = trunc nuw nsw i64 %i.ab to i32
  %i.ad = or disjoint i32 %.sink65.i.i.i, %i.ac   ; 2 uses
  store i32 %i.ad, ptr %i.d, align 4, !tbaa !256
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i32 -1, ptr %i.a, align 4, !tbaa !3
  store ptr %i.j, ptr %2, align 8, !tbaa !360
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %i.ae, align 8, !tbaa !363
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 1, ptr %i.af, align 8, !tbaa !364
  store ptr %i.j, ptr %3, align 8, !tbaa !365
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.a, ptr %i.ag, align 8, !tbaa !363
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 1, ptr %i.ah, align 8, !tbaa !367
  %i.ai = call noundef zeroext i1 @_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_(i32 noundef %i.ad, i32 noundef %i.l, ptr noundef nonnull byval(%class.anon.275) align 8 %2, ptr noundef nonnull byval(%class.anon.277) align 8 %3) ; 0 uses
  %i.aj = load i32, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.f, align 8, !tbaa !197
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i8 0, ptr %i.al, align 1, !tbaa !309
  br label %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit

_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit: ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_EUlimE_ZNS3_IS9_EEvSB_iibSC_EUliE_EEviiSC_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.516) align 8 %2, ptr noundef byval(%class.anon.517) align 8 %3) local_unnamed_addr #11 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !1319, !range !71, !noundef !72
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1323
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !134
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1697
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1245
  %4 = sext i32 %i.d to i64
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !1698, !nonnull !72, !align !212
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !439
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.an, %bb.d ] ; 3 uses
  %i.ai = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %5 = or disjoint i64 %i.ai, %4                  ; 2 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.af, i64 %5
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !134
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %5
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !134
  %i.am = add nsw i64 %.011.i, -1
  %i.an = and i64 %i.am, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.an, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1699

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = sdiv i32 %0, 64                         ; 2 uses
  %i.ap = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.aq = zext nneg i32 %i.ap to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.aq
  %i.ar = xor i64 %notmask.i.i35, -1
  %i.as = sub nsw i32 64, %i.ap
  %i.at = zext nneg i32 %i.as to i64
  %i.au = shl i64 %i.ar, %i.at
  %i.av = load i8, ptr %2, align 8, !tbaa !1319, !range !71, !noundef !72
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1323
  %i.ay = sext i32 %i.ao to i64
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !134
  %i.bb = xor i8 %i.av, 1
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = sub nsw i64 0, %i.bc
  %i.be = xor i64 %i.ba, %i.bd
  %i.bf = and i64 %i.be, %i.au                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bf, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bh = shl nsw i32 %i.ao, 6
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1697
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 144
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1245
  %6 = sext i32 %i.bh to i64
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !1698, !nonnull !72, !align !212
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !439
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bf, %.preheader.i37 ], [ %i.bt, %bb.g ] ; 3 uses
  %i.bo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %7 = or disjoint i64 %i.bo, %6                  ; 2 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %7
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !134
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %7
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !134
  %i.bs = add i64 %.011.i38, -1
  %i.bt = and i64 %i.bs, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bt, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !1699

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.bu = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.bu, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %i.bv = load i8, ptr %3, align 8, !tbaa !1325, !range !71, !noundef !72
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !1327
  %i.by = xor i8 %i.bv, 1
  %i.bz = zext nneg i8 %i.by to i64
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 144 ; 2 uses
  %i.cf = load ptr, ptr %i.cb, align 8, !nonnull !72, !align !212 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.cg = phi i32 [ %i.bu, %.lr.ph ], [ %i.en, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.cg, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.ch = sdiv i32 %.051, 64                      ; 3 uses
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !134
  %i.cl = xor i64 %i.ck, %i.ca                    ; 2 uses
  switch i64 %i.cl, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cm = shl nsw i32 %i.ch, 6
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !1245
  %8 = sext i32 %i.cm to i64
  %i.co = load ptr, ptr %i.cf, align 8, !tbaa !439
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cp = shl nsw i32 %i.ch, 6                    ; 4 uses
  %i.cq = add i32 %i.cp, 64
  %i.cr = sext i32 %i.cq to i64                   ; 3 uses
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cs = sext i32 %i.cp to i64                   ; 9 uses
  %i.ct = load ptr, ptr %i.ce, align 8, !tbaa !1245 ; 4 uses
  %i.cu = load ptr, ptr %i.cf, align 8, !tbaa !439 ; 4 uses
  %i.cv = or disjoint i64 %i.cs, 1
  %umax67 = tail call i64 @llvm.umax.i64(i64 %i.cv, i64 %i.cr) ; 2 uses
  %i.cw = sub i64 %umax67, %i.cs                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.cw, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.cx = ptrtoaddr ptr %i.cu to i64
  %i.cy = ptrtoaddr ptr %i.ct to i64
  %i.cz = or disjoint i64 %i.cs, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cz, i64 %i.cr)
  %i.da = xor i64 %i.cs, -1
  %i.db = add i64 %umax, %i.da                    ; 2 uses
  %i.dc = trunc i64 %i.db to i32
  %i.dd = add i32 %i.cp, %i.dc
  %i.de = icmp slt i32 %i.dd, %i.cp
  %i.df = icmp ugt i64 %i.db, 4294967295
  %i.dg = or i1 %i.de, %i.df
  %i.dh = sub i64 %i.cx, %i.cy
  %diff.check = icmp ult i64 %i.dh, 128
  %or.cond = select i1 %i.dg, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check68 = icmp ult i64 %i.cw, 16
  %n.mod.vf72 = and i64 %umax67, 1                ; 3 uses
  %n.vec73 = sub i64 %i.cw, %n.mod.vf72           ; 3 uses
  %i.di = add i64 %n.vec73, %i.cs                 ; 2 uses
  br i1 %min.iters.check68, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dj = add i64 %index, %i.cs
  %i.dk = shl i64 %i.dj, 32
  %i.dl = ashr exact i64 %i.dk, 32                ; 2 uses
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.dl ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 96
  %wide.load = load <4 x i64>, ptr %i.dm, align 8, !tbaa !134
  %wide.load69 = load <4 x i64>, ptr %i.dn, align 8, !tbaa !134
  %wide.load70 = load <4 x i64>, ptr %i.do, align 8, !tbaa !134
  %wide.load71 = load <4 x i64>, ptr %i.dp, align 8, !tbaa !134
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.dl ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 96
  store <4 x i64> %wide.load, ptr %i.dq, align 8, !tbaa !134
  store <4 x i64> %wide.load69, ptr %i.dr, align 8, !tbaa !134
  store <4 x i64> %wide.load70, ptr %i.ds, align 8, !tbaa !134
  store <4 x i64> %wide.load71, ptr %i.dt, align 8, !tbaa !134
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.du = icmp eq i64 %index.next, %n.vec73
  br i1 %i.du, label %middle.block, label %vector.body, !llvm.loop !1700

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index74 = phi i64 [ %index.next76, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dv = add i64 %index74, %i.cs
  %i.dw = shl i64 %i.dv, 32
  %i.dx = ashr exact i64 %i.dw, 32                ; 2 uses
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.dx
  %wide.load75 = load <4 x i64>, ptr %i.dy, align 8, !tbaa !134
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.dx
  store <4 x i64> %wide.load75, ptr %i.dz, align 8, !tbaa !134
  %index.next76 = add nuw i64 %index74, 4         ; 2 uses
  %i.ea = icmp eq i64 %index.next76, %n.vec73
  br i1 %i.ea, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1701

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n77 = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n77, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.di, %middle.block ], [ %i.cs, %iter.check ], [ %i.cs, %vector.scevcheck ], [ %i.di, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.ef, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %sext.i = shl i64 %.020.i, 32
  %i.eb = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.eb
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !134
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.eb
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !134
  %i.ef = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.eg = icmp ult i64 %i.ef, %i.cr
  br i1 %i.eg, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !1702

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cl, %.lr.ph.i ], [ %i.em, %bb.j ] ; 3 uses
  %i.eh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %9 = or disjoint i64 %i.eh, %8                  ; 2 uses
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %9
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !134
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.co, i64 %9
  store i64 %i.ej, ptr %i.ek, align 8, !tbaa !134
  %i.el = add i64 %.01519.i, -1
  %i.em = and i64 %i.el, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.em, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !1703

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.en = add nsw i32 %i.cg, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.en, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1704

bb.k:                                             ; preds = %._crit_edge
  %i.eo = ashr i32 %1, 6
  %i.ep = and i32 %1, 63
  %i.eq = zext nneg i32 %i.ep to i64
  %notmask.i42 = shl nsw i64 -1, %i.eq
  %i.er = xor i64 %notmask.i42, -1
  %i.es = load i8, ptr %2, align 8, !tbaa !1319, !range !71, !noundef !72
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !1323
  %i.ev = sext i32 %i.eo to i64
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %i.ev
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !134
  %i.ey = xor i8 %i.es, 1
  %i.ez = zext nneg i8 %i.ey to i64
  %i.fa = sub nsw i64 0, %i.ez
  %i.fb = xor i64 %i.ex, %i.fa
  %i.fc = and i64 %i.fb, %i.er                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.fc, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.k
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !1697
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 144
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !1245
  %10 = sext i32 %i.d to i64
  %i.fi = load ptr, ptr %i.fd, align 8, !tbaa !1698, !nonnull !72, !align !212
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !439
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.fc, %.preheader.i44 ], [ %i.fp, %bb.l ] ; 3 uses
  %i.fk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %11 = or disjoint i64 %i.fk, %10                ; 2 uses
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.fh, i64 %11
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !134
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.fj, i64 %11
  store i64 %i.fm, ptr %i.fn, align 8, !tbaa !134
  %i.fo = add nsw i64 %.011.i45, -1
  %i.fp = and i64 %i.fo, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fp, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !1699

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE12resizeValuesEiiRKSt8optionalIS2_E(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::intrusive_ptr", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !375  ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.d = load i8, ptr %i.c, align 4, !tbaa !276
  %i.e = and i8 %i.d, 2
  %.not27 = icmp eq i8 %i.e, 0
  br i1 %.not27, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.f = sext i32 %1 to i64                       ; 2 uses
  %i.g = shl nsw i64 %i.f, 4                      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !270
  %i.j = icmp ult i64 %i.i, %i.g
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN8facebook5velox13AlignedBuffer10reallocateINS0_10StringViewEEEvPN5boost13intrusive_ptrINS0_6BufferEEEmRKSt8optionalIT_E(ptr noundef nonnull %i.a, i64 noundef %i.f, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 noundef %i.g)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !375  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  %i.p = load i8, ptr %i.o, align 4, !tbaa !276
  %i.q = and i8 %i.p, 2
  %.not.i = icmp eq i8 %i.q, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9asMutableINS0_10StringViewEEEPT_v.exit, label %bb.g, !prof !67

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableINS0_10StringViewEEEPT_vE18veloxCheckFailArgs) #36
  unreachable

_ZNK8facebook5velox6Buffer9asMutableINS0_10StringViewEEEPT_v.exit: ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !277
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.s, ptr %i.t, align 8, !tbaa !911
  br label %bb.s

bb.h:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.u = sext i32 %1 to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !398
  call void @_ZN8facebook5velox13AlignedBuffer8allocateINS0_10StringViewEEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %4, i64 noundef %i.u, ptr noundef %i.w, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext false)
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !375  ; 2 uses
  %.not28 = icmp eq ptr %i.x, null
  %i.y = load ptr, ptr %4, align 8, !tbaa !375    ; 3 uses
  br i1 %.not28, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.h
  store ptr null, ptr %4, align 8, !tbaa !375
  store ptr %i.y, ptr %i.a, align 8, !tbaa !375
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 44
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !276
  %i.ab = and i8 %i.aa, 2
  %.not.i13 = icmp eq i8 %i.ab, 0
  br i1 %.not.i13, label %bb.l, label %bb.j, !prof !67

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableINS0_10StringViewEEEPT_vE18veloxCheckFailArgs) #36
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.l:                                             ; preds = %bb.i
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %2, i32 %1)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !277
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !277
  %i.ah = sext i32 %.sroa.speculated to i64
  %i.ai = shl nsw i64 %i.ah, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ae, ptr align 8 %i.ag, i64 %i.ai, i1 false)
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !375  ; 7 uses
  %i.aj = load ptr, ptr %4, align 8, !tbaa !375
  store ptr null, ptr %4, align 8, !tbaa !375
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !375
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %.pr, i64 40
  %i.al = atomicrmw sub ptr %i.ak, i32 1 acq_rel, align 4
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %.sink.split.i.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit

.sink.split.i.i.i:                                ; preds = %bb.m
  %i.an = load ptr, ptr %.pr, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8
  invoke void %i.ap(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %.noexc.i.i unwind label %bb.n, !inline_history !392

.noexc.i.i:                                       ; preds = %.sink.split.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !393
  %.not.i.i.i = icmp eq ptr %i.ar, null
  %i.as = load ptr, ptr %.pr, align 8, !tbaa !7
  %..i.i.i = select i1 %.not.i.i.i, i64 8, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %..i.i.i
  %i.au = load ptr, ptr %i.at, align 8
  invoke void %i.au(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit unwind label %bb.n, !inline_history !392

bb.n:                                             ; preds = %.noexc.i.i, %.sink.split.i.i.i
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #37
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit: ; preds = %.thread, %bb.l, %bb.m, %.noexc.i.i
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !375 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 44
  %i.az = load i8, ptr %i.ay, align 4, !tbaa !276
  %i.ba = and i8 %i.az, 2
  %.not.i15 = icmp eq i8 %i.ba, 0
  br i1 %.not.i15, label %bb.p, label %bb.o, !prof !67

bb.o:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableINS0_10StringViewEEEPT_vE18veloxCheckFailArgs) #36
          to label %.noexc16 unwind label %bb.t

.noexc16:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !277
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !911
  %i.be = load ptr, ptr %4, align 8, !tbaa !375   ; 7 uses
  %.not.i18 = icmp eq ptr %i.be, null
  br i1 %.not.i18, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bg = atomicrmw sub ptr %i.bf, i32 1 acq_rel, align 4
  %i.bh = icmp eq i32 %i.bg, 1
  br i1 %i.bh, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.q
  %i.bi = load ptr, ptr %i.be, align 8, !tbaa !7
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %i.bk = load ptr, ptr %i.bj, align 8
  invoke void %i.bk(ptr noundef nonnull align 8 dereferenceable(64) %i.be)
          to label %.noexc.i unwind label %bb.r, !inline_history !392

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !393
  %.not.i.i19 = icmp eq ptr %i.bm, null
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !7
  %..i.i = select i1 %.not.i.i19, i64 8, i64 48
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %..i.i
  %i.bp = load ptr, ptr %i.bo, align 8
  invoke void %i.bp(ptr noundef nonnull align 8 dereferenceable(64) %i.be)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.r, !inline_history !392

bb.r:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #37
  unreachable
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox10FlatVectorINS0_10StringViewEEC2EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSG_OSt6vectorISG_SaISG_EERKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESQ_SP_IbESQ_SQ_:bb.a
  %i.fp = load ptr, ptr %i.fo, align 8
  invoke void %i.fp(ptr noundef nonnull align 8 dereferenceable(64) %i.bz, i64 noundef %i.ez)
          to label %.thread unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.thread:                                          ; preds = %bb.z, %bb.am, %bb.an, %bb.ab
  ret void

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.y, %bb.x
  %.pn30 = phi { ptr, i32 } [ %i.ce, %bb.y ], [ %i.cd, %bb.x ], [ %i.fq, %bb.ao ], [ %.pn27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ]
  call void @_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.aw) #30
  call void @_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.av) #30
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #30
  call void @_ZN8facebook5velox12SimpleVectorINS0_10StringViewEED2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) #30
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.w
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %bb.ap ], [ %i.cc, %bb.w ]
  resume { ptr, i32 } %.pn30.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorINS0_10StringViewEEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESM_SL_IbESM_SM_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 %7, i64 %8, i16 %9, i64 %10, i64 %11) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %12 = alloca %"class.std::shared_ptr.74", align 16 ; 4 uses
  %13 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load <2 x ptr>, ptr %2, align 8, !tbaa !61
  store ptr null, ptr %i.b, align 8, !tbaa !29
  store <2 x ptr> %i.c, ptr %12, align 16, !tbaa !61
  store ptr null, ptr %2, align 8, !tbaa !169
  %i.d = load ptr, ptr %4, align 8, !tbaa !375
  store ptr %i.d, ptr %13, align 8, !tbaa !375
  store ptr null, ptr %4, align 8, !tbaa !375
  invoke void @_ZN8facebook5velox10BaseVectorC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiSt8optionalIiESG_SG_SG_(ptr noundef nonnull align 8 dereferenceable(94) %0, ptr noundef %1, ptr noundef nonnull %12, i32 noundef %3, ptr noundef nonnull %13, i32 noundef %5, i64 %7, i64 %8, i64 %10, i64 %11)
          to label %bb.b unwind label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %13, align 8, !tbaa !375   ; 7 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.c
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %.noexc.i unwind label %bb.d, !inline_history !392

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !393
  %.not.i.i = icmp eq ptr %i.m, null
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !7
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %..i.i
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.d, !inline_history !392

bb.d:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #37
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.b, %bb.c, %.noexc.i
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !29   ; 8 uses
  %.not.i.i16 = icmp eq ptr %i.s, null
  br i1 %.not.i.i16, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.t, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !34
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #30, !inline_history !575
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #30, !inline_history !575
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.w, %bb.h ], [ %i.ag, %bb.i ]
  %i.ah = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ah, label %bb.j, label %bb.k, !prof !37

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #30
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.f, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox12SimpleVectorINS0_10StringViewEEE, i64 16), ptr %0, align 8, !tbaa !7
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 94
  store i16 %9, ptr %i.ai, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 16, ptr %i.aj, align 8, !tbaa !1024
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 0, ptr %i.ak, align 8, !tbaa !1875
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 105
  store i8 1, ptr %i.al, align 1, !tbaa !1875
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 149
  store i8 0, ptr %i.an, align 1, !tbaa !309
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.am, i8 0, i64 36, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 0, ptr %i.ao, align 8, !tbaa !1876
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ap, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 48, i1 false)
  ret void

bb.l:                                             ; preds = %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #30
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #30
  resume { ptr, i32 } %i.aq
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_EUlimE_ZNS3_ISA_EEvSC_iibSD_EUliE_EEviiSD_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.563) align 8 %2, ptr noundef byval(%class.anon.564) align 8 %3) local_unnamed_addr #11 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !985, !range !71, !noundef !72
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !988
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !134
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %4 = sext i32 %i.d to i64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1877
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 216
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !1878, !nonnull !72, !align !212
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.am, %bb.d ] ; 3 uses
  %i.ag = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !911
  %5 = or disjoint i64 %i.ag, %4                  ; 2 uses
  %i.ai = getelementptr inbounds [16 x i8], ptr %i.ah, i64 %5
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !307
  %i.ak = getelementptr inbounds [16 x i8], ptr %i.aj, i64 %5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false), !tbaa.struct !255
  %i.al = add nsw i64 %.011.i, -1
  %i.am = and i64 %i.al, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.am, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1879

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = sdiv i32 %0, 64                         ; 2 uses
  %i.ao = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.ap = zext nneg i32 %i.ao to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.ap
  %i.aq = xor i64 %notmask.i.i35, -1
  %i.ar = sub nsw i32 64, %i.ao
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = shl i64 %i.aq, %i.as
  %i.au = load i8, ptr %2, align 8, !tbaa !985, !range !71, !noundef !72
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !988
  %i.ax = sext i32 %i.an to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !134
  %i.ba = xor i8 %i.au, 1
  %i.bb = zext nneg i8 %i.ba to i64
  %i.bc = sub nsw i64 0, %i.bb
  %i.bd = xor i64 %i.az, %i.bc
  %i.be = and i64 %i.bd, %i.at                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.be, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bg = shl nsw i32 %i.an, 6
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %6 = sext i32 %i.bg to i64
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1877
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 216
  %i.bk = load ptr, ptr %i.bf, align 8, !tbaa !1878, !nonnull !72, !align !212
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.be, %.preheader.i37 ], [ %i.br, %bb.g ] ; 3 uses
  %i.bl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !911
  %7 = or disjoint i64 %i.bl, %6                  ; 2 uses
  %i.bn = getelementptr inbounds [16 x i8], ptr %i.bm, i64 %7
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !307
  %i.bp = getelementptr inbounds [16 x i8], ptr %i.bo, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i64 16, i1 false), !tbaa.struct !255
  %i.bq = add i64 %.011.i38, -1
  %i.br = and i64 %i.bq, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.br, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !1879

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.bs = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.bs, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %i.bt = load i8, ptr %3, align 8, !tbaa !989, !range !71, !noundef !72
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !991
  %i.bw = xor i8 %i.bt, 1
  %i.bx = zext nneg i8 %i.bw to i64
  %i.by = sub nsw i64 0, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 216 ; 2 uses
  %i.cd = load ptr, ptr %i.bz, align 8, !nonnull !72, !align !212 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ce = phi i32 [ %i.bs, %.lr.ph ], [ %i.dd, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ce, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cf = sdiv i32 %.051, 64                      ; 3 uses
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !134
  %i.cj = xor i64 %i.ci, %i.by                    ; 2 uses
  switch i64 %i.cj, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.ck = shl nsw i32 %i.cf, 6
  %8 = sext i32 %i.ck to i64
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.cl = shl nsw i32 %i.cf, 6                    ; 2 uses
  %i.cm = add i32 %i.cl, 64
  %i.cn = sext i32 %i.cm to i64
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.i
  %i.co = sext i32 %i.cl to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i
  %.020.i = phi i64 [ %i.co, %.lr.ph21.i ], [ %i.cu, %bb.j ] ; 2 uses
  %i.cp = load ptr, ptr %i.cc, align 8, !tbaa !911
  %sext.i = shl i64 %.020.i, 32
  %i.cq = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.cr = getelementptr inbounds [16 x i8], ptr %i.cp, i64 %i.cq
  %i.cs = load ptr, ptr %i.cd, align 8, !tbaa !307
  %i.ct = getelementptr inbounds [16 x i8], ptr %i.cs, i64 %i.cq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noundef nonnull align 8 dereferenceable(16) %i.cr, i64 16, i1 false), !tbaa.struct !255
  %i.cu = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.cn
  br i1 %i.cv, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !1880

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cj, %.lr.ph.i ], [ %i.dc, %bb.k ] ; 3 uses
  %i.cw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.cx = load ptr, ptr %i.cc, align 8, !tbaa !911
  %9 = or disjoint i64 %i.cw, %8                  ; 2 uses
  %i.cy = getelementptr inbounds [16 x i8], ptr %i.cx, i64 %9
  %i.cz = load ptr, ptr %i.cd, align 8, !tbaa !307
  %i.da = getelementptr inbounds [16 x i8], ptr %i.cz, i64 %9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.da, ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i64 16, i1 false), !tbaa.struct !255
  %i.db = add i64 %.01519.i, -1
  %i.dc = and i64 %i.db, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.dc, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !1881

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %bb.j, %bb.k, %bb.h, %bb.i
  %i.dd = add nsw i32 %i.ce, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dd, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1882

bb.l:                                             ; preds = %._crit_edge
  %i.de = ashr i32 %1, 6
  %i.df = and i32 %1, 63
  %i.dg = zext nneg i32 %i.df to i64
  %notmask.i42 = shl nsw i64 -1, %i.dg
  %i.dh = xor i64 %notmask.i42, -1
  %i.di = load i8, ptr %2, align 8, !tbaa !985, !range !71, !noundef !72
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !988
  %i.dl = sext i32 %i.de to i64
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !134
  %i.do = xor i8 %i.di, 1
  %i.dp = zext nneg i8 %i.do to i64
  %i.dq = sub nsw i64 0, %i.dp
  %i.dr = xor i64 %i.dn, %i.dq
  %i.ds = and i64 %i.dr, %i.dh                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ds, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.l
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 24
  %10 = sext i32 %i.d to i64
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !1877
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 216
  %i.dx = load ptr, ptr %i.dt, align 8, !tbaa !1878, !nonnull !72, !align !212
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader.i44
  %.011.i45 = phi i64 [ %i.ds, %.preheader.i44 ], [ %i.ee, %bb.m ] ; 3 uses
  %i.dy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.dz = load ptr, ptr %i.dw, align 8, !tbaa !911
  %11 = or disjoint i64 %i.dy, %10                ; 2 uses
  %i.ea = getelementptr inbounds [16 x i8], ptr %i.dz, i64 %11
  %i.eb = load ptr, ptr %i.dx, align 8, !tbaa !307
  %i.ec = getelementptr inbounds [16 x i8], ptr %i.eb, i64 %11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ec, ptr noundef nonnull align 8 dereferenceable(16) %i.ea, i64 16, i1 false), !tbaa.struct !255
  %i.ed = add nsw i64 %.011.i45, -1
  %i.ee = and i64 %i.ed, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.ee, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !1879

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.m, %bb.d, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox4exec12StringWriterD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook5velox4exec12StringWriterE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN8facebook5velox4exec12StringWriterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !36
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #35, !inline_history !323
  br label %_ZN8facebook5velox4exec12StringWriterD2Ev.exit

_ZN8facebook5velox4exec12StringWriterD2Ev.exit:   ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #35
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4exec12StringWriter7reserveEm(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !279
  %.not = icmp ugt i64 %1, %i.b
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !262
  %i.e = tail call noundef ptr @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE18getBufferWithSpaceEmb(ptr noundef nonnull align 8 dereferenceable(272) %i.d, i64 noundef %1, i1 noundef zeroext false) ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !270
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !275  ; 2 uses
  %i.j = sub i64 %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.l = load i8, ptr %i.k, align 4, !tbaa !276
  %i.m = and i8 %i.l, 2
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit, label %bb.c, !prof !67

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIcEEPT_vE18veloxCheckFailArgs) #36
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !277
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.i ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !269  ; 2 uses
  %.not10 = icmp eq i64 %i.r, 0
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !278
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.t, i64 %i.r, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit
  store i64 %i.j, ptr %i.a, align 8, !tbaa !279
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.u, align 8, !tbaa !278
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.e, ptr %i.v, align 8, !tbaa !261
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret void
}

declare noundef ptr @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE18getBufferWithSpaceEmb(ptr noundef nonnull align 8 dereferenceable(272), i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNKS0_9functions15ReverseFunction12applyVarcharERKNS0_17SelectivityVectorERSt10shared_ptrINS0_10BaseVectorEEbRNS0_4exec7EvalCtxESC_EUlT_E_EEvPKmiibSG_EUlimE_ZNS3_ISH_EEvSJ_iibSG_EUliE_EEviiSG_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.576) align 8 %2, ptr noundef byval(%class.anon.577) align 8 %3) local_unnamed_addr #11 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions15ReverseFunction12applyVarcharERKNS0_17SelectivityVectorERSt10shared_ptrINS0_10BaseVectorEEbRNS0_4exec7EvalCtxESB_EUlT_E_EEvPKmiibSF_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !314, !range !71, !noundef !72
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !318
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !134
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions15ReverseFunction12applyVarcharERKNS0_17SelectivityVectorERSt10shared_ptrINS0_10BaseVectorEEbRNS0_4exec7EvalCtxESB_EUlT_E_EEvPKmiibSF_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %4 = sext i32 %i.d to i64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1883, !nonnull !72, !align !212
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !1884, !nonnull !72, !align !212
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.aj, %bb.d ] ; 3 uses
  %i.af = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !307
  %5 = getelementptr [16 x i8], ptr %i.ag, i64 %i.af
  %i.ah = getelementptr [16 x i8], ptr %5, i64 %4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !tbaa.struct !255
  %i.ai = add nsw i64 %.011.i, -1
  %i.aj = and i64 %i.ai, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.aj, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions15ReverseFunction12applyVarcharERKNS0_17SelectivityVectorERSt10shared_ptrINS0_10BaseVectorEEbRNS0_4exec7EvalCtxESB_EUlT_E_EEvPKmiibSF_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1885

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions15ReverseFunction12applyVarcharERKNS0_17SelectivityVectorERSt10shared_ptrINS0_10BaseVectorEEbRNS0_4exec7EvalCtxESB_EUlT_E_EEvPKmiibSF_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = sdiv i32 %0, 64                         ; 2 uses
  %i.al = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.am = zext nneg i32 %i.al to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.am
  %i.an = xor i64 %notmask.i.i35, -1
  %i.ao = sub nsw i32 64, %i.al
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = shl i64 %i.an, %i.ap
  %i.ar = load i8, ptr %2, align 8, !tbaa !314, !range !71, !noundef !72
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !318
  %i.au = sext i32 %i.ak to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !134
  %i.ax = xor i8 %i.ar, 1
  %i.ay = zext nneg i8 %i.ax to i64
  %i.az = sub nsw i64 0, %i.ay
  %i.ba = xor i64 %i.aw, %i.az
  %i.bb = and i64 %i.ba, %i.aq                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bb, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions15ReverseFunction12applyVarcharERKNS0_17SelectivityVectorERSt10shared_ptrINS0_10BaseVectorEEbRNS0_4exec7EvalCtxESB_EUlT_E_EEvPKmiibSF_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bd = shl nsw i32 %i.ak, 6
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 24
  %6 = sext i32 %i.bd to i64
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !1883, !nonnull !72, !align !212
  %i.bg = load ptr, ptr %i.bc, align 8, !tbaa !1884, !nonnull !72, !align !212
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bb, %.preheader.i37 ], [ %i.bl, %bb.g ] ; 3 uses
  %i.bh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !307
  %7 = getelementptr [16 x i8], ptr %i.bi, i64 %i.bh
  %i.bj = getelementptr [16 x i8], ptr %7, i64 %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i64 16, i1 false), !tbaa.struct !255
  %i.bk = add i64 %.011.i38, -1
  %i.bl = and i64 %i.bk, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bl, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions15ReverseFunction12applyVarcharERKNS0_17SelectivityVectorERSt10shared_ptrINS0_10BaseVectorEEbRNS0_4exec7EvalCtxESB_EUlT_E_EEvPKmiibSF_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !1885

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions15ReverseFunction12applyVarcharERKNS0_17SelectivityVectorERSt10shared_ptrINS0_10BaseVectorEEbRNS0_4exec7EvalCtxESB_EUlT_E_EEvPKmiibSF_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.bm = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.bm, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions15ReverseFunction12applyVarcharERKNS0_17SelectivityVectorERSt10shared_ptrINS0_10BaseVectorEEbRNS0_4exec7EvalCtxESB_EUlT_E_EEvPKmiibSF_ENKUlimE_clEim.exit40
  %i.bn = load i8, ptr %3, align 8, !tbaa !320, !range !71, !noundef !72
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !322
  %i.bq = xor i8 %i.bn, 1
  %i.br = zext nneg i8 %i.bq to i64
  %i.bs = sub nsw i64 0, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !72, !align !212 ; 2 uses
  %i.bw = load ptr, ptr %i.bt, align 8, !nonnull !72, !align !212 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions15ReverseFunction12applyVarcharERKNS0_17SelectivityVectorERSt10shared_ptrINS0_10BaseVectorEEbRNS0_4exec7EvalCtxESB_EUlT_E_EEvPKmiibSF_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions15ReverseFunction12applyVarcharERKNS0_17SelectivityVectorERSt10shared_ptrINS0_10BaseVectorEEbRNS0_4exec7EvalCtxESB_EUlT_E_EEvPKmiibSF_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions15ReverseFunction12applyVarcharERKNS0_17SelectivityVectorERSt10shared_ptrINS0_10BaseVectorEEbRNS0_4exec7EvalCtxESB_EUlT_E_EEvPKmiibSF_ENKUlimE_clEim.exit, label %bb.l

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions15ReverseFunction12applyVarcharERKNS0_17SelectivityVectorERSt10shared_ptrINS0_10BaseVectorEEbRNS0_4exec7EvalCtxESB_EUlT_E_EEvPKmiibSF_ENKUliE_clEi.exit
  %i.bx = phi i32 [ %i.bm, %.lr.ph ], [ %i.cr, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions15ReverseFunction12applyVarcharERKNS0_17SelectivityVectorERSt10shared_ptrINS0_10BaseVectorEEbRNS0_4exec7EvalCtxESB_EUlT_E_EEvPKmiibSF_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.bx, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions15ReverseFunction12applyVarcharERKNS0_17SelectivityVectorERSt10shared_ptrINS0_10BaseVectorEEbRNS0_4exec7EvalCtxESB_EUlT_E_EEvPKmiibSF_ENKUliE_clEi.exit ] ; 2 uses
  %i.by = sdiv i32 %.051, 64                      ; 3 uses
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !134
  %i.cc = xor i64 %i.cb, %i.bs                    ; 2 uses
  switch i64 %i.cc, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions15ReverseFunction12applyVarcharERKNS0_17SelectivityVectorERSt10shared_ptrINS0_10BaseVectorEEbRNS0_4exec7EvalCtxESB_EUlT_E_EEvPKmiibSF_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cd = shl nsw i32 %i.by, 6
  %8 = sext i32 %i.cd to i64
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ce = shl nsw i32 %i.by, 6                    ; 2 uses
  %i.cf = add i32 %i.ce, 64
  %i.cg = sext i32 %i.cf to i64
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions15ReverseFunction12applyVarcharERKNS0_17SelectivityVectorERSt10shared_ptrINS0_10BaseVectorEEbRNS0_4exec7EvalCtxESB_EUlT_E_EEvPKmiibSF_ENKUliE_clEi.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.i
  %i.ch = sext i32 %i.ce to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i
  %.020.i = phi i64 [ %i.ch, %.lr.ph21.i ], [ %i.ck, %bb.j ] ; 2 uses
  %i.ci = load ptr, ptr %i.bw, align 8, !tbaa !307
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %.020.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i64 16, i1 false), !tbaa.struct !255
  %i.ck = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.cl = icmp ult i64 %i.ck, %i.cg
  br i1 %i.cl, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions15ReverseFunction12applyVarcharERKNS0_17SelectivityVectorERSt10shared_ptrINS0_10BaseVectorEEbRNS0_4exec7EvalCtxESB_EUlT_E_EEvPKmiibSF_ENKUliE_clEi.exit, !llvm.loop !1886

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cc, %.lr.ph.i ], [ %i.cq, %bb.k ] ; 3 uses
  %i.cm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.cn = load ptr, ptr %i.bw, align 8, !tbaa !307
  %9 = getelementptr [16 x i8], ptr %i.cn, i64 %i.cm
  %i.co = getelementptr [16 x i8], ptr %9, i64 %8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i64 16, i1 false), !tbaa.struct !255
  %i.cp = add i64 %.01519.i, -1
  %i.cq = and i64 %i.cp, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.cq, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions15ReverseFunction12applyVarcharERKNS0_17SelectivityVectorERSt10shared_ptrINS0_10BaseVectorEEbRNS0_4exec7EvalCtxESB_EUlT_E_EEvPKmiibSF_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !1887

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions15ReverseFunction12applyVarcharERKNS0_17SelectivityVectorERSt10shared_ptrINS0_10BaseVectorEEbRNS0_4exec7EvalCtxESB_EUlT_E_EEvPKmiibSF_ENKUliE_clEi.exit: ; preds = %bb.j, %bb.k, %bb.h, %bb.i
  %i.cr = add nsw i32 %i.bx, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.cr, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1888

bb.l:                                             ; preds = %._crit_edge
  %i.cs = ashr i32 %1, 6
  %i.ct = and i32 %1, 63
  %i.cu = zext nneg i32 %i.ct to i64
  %notmask.i42 = shl nsw i64 -1, %i.cu
  %i.cv = xor i64 %notmask.i42, -1
  %i.cw = load i8, ptr %2, align 8, !tbaa !314, !range !71, !noundef !72
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !318
  %i.cz = sext i32 %i.cs to i64
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.cz
  %i.db = load i64, ptr %i.da, align 8, !tbaa !134
  %i.dc = xor i8 %i.cw, 1
  %i.dd = zext nneg i8 %i.dc to i64
  %i.de = sub nsw i64 0, %i.dd
  %i.df = xor i64 %i.db, %i.de
  %i.dg = and i64 %i.df, %i.cv                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.dg, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions15ReverseFunction12applyVarcharERKNS0_17SelectivityVectorERSt10shared_ptrINS0_10BaseVectorEEbRNS0_4exec7EvalCtxESB_EUlT_E_EEvPKmiibSF_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.l
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 24
  %10 = sext i32 %i.d to i64
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !1883, !nonnull !72, !align !212
  %i.dk = load ptr, ptr %i.dh, align 8, !tbaa !1884, !nonnull !72, !align !212
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader.i44
  %.011.i45 = phi i64 [ %i.dg, %.preheader.i44 ], [ %i.dp, %bb.m ] ; 3 uses
  %i.dl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.dm = load ptr, ptr %i.dk, align 8, !tbaa !307
  %11 = getelementptr [16 x i8], ptr %i.dm, i64 %i.dl
  %i.dn = getelementptr [16 x i8], ptr %11, i64 %10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr noundef nonnull align 8 dereferenceable(16) %i.dj, i64 16, i1 false), !tbaa.struct !255
  %i.do = add nsw i64 %.011.i45, -1
  %i.dp = and i64 %i.do, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.dp, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions15ReverseFunction12applyVarcharERKNS0_17SelectivityVectorERSt10shared_ptrINS0_10BaseVectorEEbRNS0_4exec7EvalCtxESB_EUlT_E_EEvPKmiibSF_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !1885

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions15ReverseFunction12applyVarcharERKNS0_17SelectivityVectorERSt10shared_ptrINS0_10BaseVectorEEbRNS0_4exec7EvalCtxESB_EUlT_E_EEvPKmiibSF_ENKUlimE_clEim.exit: ; preds = %bb.m, %bb.d, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox9functions15ReverseFunction20ApplyVarcharInternalILb1EE5applyERKNS0_17SelectivityVectorEPKNS0_10FlatVectorINS0_10StringViewEEEPSA_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.facebook::velox::exec::StringWriter", align 8 ; 19 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = load ptr, ptr %0, align 8, !tbaa !1889, !nonnull !72, !align !212
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !326  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook5velox4exec12StringWriterE, i64 16), ptr %2, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 0, ptr %i.d, align 8, !tbaa !257
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !261
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.b, ptr %i.f, align 8, !tbaa !262
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 %1, ptr %i.g, align 8, !tbaa !263
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 6 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !57
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i64 0, ptr %i.j, align 8, !tbaa !59
  store i8 0, ptr %i.i, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1890, !nonnull !72, !align !212
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !326
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 216
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !911
  %i.p = sext i32 %1 to i64
  %i.q = getelementptr inbounds [16 x i8], ptr %i.o, i64 %i.p ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1891)
  %i.r = load i32, ptr %i.q, align 8, !tbaa !267, !noalias !1891 ; 4 uses
  %i.s = icmp ult i32 %i.r, 13
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !noalias !1891
  %i.w = select i1 %i.s, ptr %i.t, ptr %i.v       ; 2 uses
  %i.x = zext i32 %i.r to i64                     ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.y, ptr %3, align 8, !tbaa !57, !alias.scope !1891
  %i.z = icmp eq ptr %i.w, null
  br i1 %i.z, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.10) #36
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.aa = icmp ugt i32 %i.r, 15
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i: ; preds = %bb.b
  %i.ab = add nuw nsw i64 %i.x, 1
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #34
          to label %.noexc9 unwind label %bb.j    ; 2 uses

.noexc9:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i
  store ptr %i.ac, ptr %3, align 8, !tbaa !63, !alias.scope !1891
  store i64 %i.x, ptr %i.y, align 8, !tbaa !36, !alias.scope !1891
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc9, %bb.b
  %i.ad = phi ptr [ %i.ac, %.noexc9 ], [ %i.y, %bb.b ] ; 3 uses
  switch i32 %i.r, label %bb.d [
    i32 1, label %bb.c
    i32 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ae = load i8, ptr %i.t, align 4, !tbaa !36, !noalias !1891
  store i8 %i.ae, ptr %i.ad, align 1, !tbaa !36
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull align 1 %i.w, i64 %i.x, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.x, ptr %i.af, align 8, !tbaa !59, !alias.scope !1891
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.x
  store i8 0, ptr %i.ag, align 1, !tbaa !36
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !59 ; 21 uses
  %.not29 = icmp eq i64 %i.ah, 0
  br i1 %.not29, label %_ZN8facebook5velox9functions10stringImpl7reverseILb1ENS0_4exec12StringWriterENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT0_RKT1_.exit.thread, label %bb.f

_ZN8facebook5velox9functions10stringImpl7reverseILb1ENS0_4exec12StringWriterENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT0_RKT1_.exit.thread: ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.ai, align 8, !tbaa !269
  br label %_ZN8facebook5velox9functions10stringCoreL12reverseAsciiEPcPKcm.exit

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ak = invoke noundef ptr @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE18getBufferWithSpaceEmb(ptr noundef nonnull align 8 dereferenceable(272) %i.b, i64 noundef %i.ah, i1 noundef zeroext false)
          to label %.noexc31 unwind label %bb.k   ; 5 uses

.noexc31:                                         ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load i64, ptr %i.al, align 8, !tbaa !270
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !275 ; 3 uses
  %i.ap = sub i64 %i.am, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 44
  %i.ar = load i8, ptr %i.aq, align 4, !tbaa !276
  %i.as = and i8 %i.ar, 2
  %.not.i.i = icmp eq i8 %i.as, 0
  br i1 %.not.i.i, label %_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit.i, label %bb.g, !prof !67

bb.g:                                             ; preds = %.noexc31
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIcEEPT_vE18veloxCheckFailArgs) #36
          to label %.noexc32 unwind label %bb.k

.noexc32:                                         ; preds = %bb.g
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit.i: ; preds = %.noexc31
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !277 ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 %i.ao  ; 10 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !269 ; 2 uses
  %.not10.i = icmp eq i64 %i.ax, 0
  br i1 %.not10.i, label %iter.check, label %bb.h

bb.h:                                             ; preds = %_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit.i
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !278
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr align 1 %i.ay, i64 %i.ax, i1 false)
  br label %iter.check

iter.check:                                       ; preds = %_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit.i, %bb.h
  store i64 %i.ap, ptr %i.aj, align 8, !tbaa !279
  store ptr %i.av, ptr %i.c, align 8, !tbaa !278
  store ptr %i.ak, ptr %i.e, align 8, !tbaa !261
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.ah, ptr %i.az, align 8, !tbaa !269
  %i.ba = load ptr, ptr %3, align 8, !tbaa !63    ; 9 uses
  %min.iters.check = icmp ult i64 %i.ah, 16
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bb = getelementptr i8, ptr %i.au, i64 %i.ah
  %scevgep = getelementptr i8, ptr %i.bb, i64 %i.ao
  %scevgep43 = getelementptr i8, ptr %i.ba, i64 %i.ah
  %bound0 = icmp ult ptr %i.av, %scevgep43
  %bound1 = icmp ult ptr %i.ba, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check44 = icmp ult i64 %i.ah, 128
  br i1 %min.iters.check44, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ah, 112
  %n.vec = and i64 %i.ah, -128                    ; 4 uses
  %i.bc = and i64 %i.ah, 127
  %i.bd = getelementptr i8, ptr %i.ba, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.be = xor i64 %index, -1
  %i.bf = getelementptr i8, ptr %i.bd, i64 %i.be  ; 4 uses
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -31
  %i.bh = getelementptr inbounds i8, ptr %i.bf, i64 -63
  %i.bi = getelementptr inbounds i8, ptr %i.bf, i64 -95
  %i.bj = getelementptr inbounds i8, ptr %i.bf, i64 -127
  %wide.load = load <32 x i8>, ptr %i.bg, align 1, !tbaa !36, !alias.scope !1894
  %wide.load45 = load <32 x i8>, ptr %i.bh, align 1, !tbaa !36, !alias.scope !1894
  %wide.load46 = load <32 x i8>, ptr %i.bi, align 1, !tbaa !36, !alias.scope !1894
  %wide.load47 = load <32 x i8>, ptr %i.bj, align 1, !tbaa !36, !alias.scope !1894
  %reverse = shufflevector <32 x i8> %wide.load, <32 x i8> poison, <32 x i32> <i32 31, i32 30, i32 29, i32 28, i32 27, i32 26, i32 25, i32 24, i32 23, i32 22, i32 21, i32 20, i32 19, i32 18, i32 17, i32 16, i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse48 = shufflevector <32 x i8> %wide.load45, <32 x i8> poison, <32 x i32> <i32 31, i32 30, i32 29, i32 28, i32 27, i32 26, i32 25, i32 24, i32 23, i32 22, i32 21, i32 20, i32 19, i32 18, i32 17, i32 16, i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse49 = shufflevector <32 x i8> %wide.load46, <32 x i8> poison, <32 x i32> <i32 31, i32 30, i32 29, i32 28, i32 27, i32 26, i32 25, i32 24, i32 23, i32 22, i32 21, i32 20, i32 19, i32 18, i32 17, i32 16, i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse50 = shufflevector <32 x i8> %wide.load47, <32 x i8> poison, <32 x i32> <i32 31, i32 30, i32 29, i32 28, i32 27, i32 26, i32 25, i32 24, i32 23, i32 22, i32 21, i32 20, i32 19, i32 18, i32 17, i32 16, i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.bk = getelementptr inbounds nuw i8, ptr %i.av, i64 %index ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 96
  store <32 x i8> %reverse, ptr %i.bk, align 1, !tbaa !36, !alias.scope !1897, !noalias !1894
  store <32 x i8> %reverse48, ptr %i.bl, align 1, !tbaa !36, !alias.scope !1897, !noalias !1894
  store <32 x i8> %reverse49, ptr %i.bm, align 1, !tbaa !36, !alias.scope !1897, !noalias !1894
  store <32 x i8> %reverse50, ptr %i.bn, align 1, !tbaa !36, !alias.scope !1897, !noalias !1894
  %index.next = add nuw i64 %index, 128           ; 2 uses
end_hunk_4
