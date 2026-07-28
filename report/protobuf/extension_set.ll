inline.NumInlined: 3767
inline.NumDeleted: 1290
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN6google8protobuf8internal12ExtensionSet5ClearEv:bb.a
  %i.z = load i8, ptr %i.y, align 2
  %i.aa = trunc i8 %i.z to i1
  %i.ab = load ptr, ptr %i.x, align 8
  %spec.select.i22.i.i = select i1 %i.aa, ptr %i.ab, ptr %i.x
  tail call void @llvm.prefetch.p0(ptr %spec.select.i22.i.i, i32 0, i32 3, i32 1)
  %i.ac = getelementptr inbounds nuw i8, ptr %.01927.i.i, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.128.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, %i.l
  br i1 %.not.i.i, label %.preheader.i.i, label %.lr.ph29.i.i, !llvm.loop !154

.lr.ph33.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph33.i.i
  %.12032.i.i = phi ptr [ %i.af, %.lr.ph33.i.i ], [ %.019.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.12032.i.i, i64 8
  tail call void @_ZN6google8protobuf8internal12ExtensionSet9Extension5ClearEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %.12032.i.i, i64 32 ; 2 uses
  %.not21.i.i = icmp eq ptr %i.af, %i.l
  br i1 %.not21.i.i, label %"_ZN6google8protobuf8internal12ExtensionSet7ForEachIZNS2_5ClearEvE3$_0NS2_8PrefetchEEEvT_T0_.exit", label %.lr.ph33.i.i, !llvm.loop !155

"_ZN6google8protobuf8internal12ExtensionSet7ForEachIZNS2_5ClearEvE3$_0NS2_8PrefetchEEEvT_T0_.exit": ; preds = %.lr.ph33.i.i, %bb.b, %.preheader.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal12ExtensionSet9MergeFromEPNS0_5ArenaEPKNS0_11MessageLiteERKS2_S4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %4) local_unnamed_addr #3 align 2 {
_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_23Prefetch5LinesFrom1LineEPKvE5kOptsEvvEEvPKT1_.exit:
  %i.a = ptrtoint ptr %3 to i64                   ; 5 uses
  %i.b = add i64 %i.a, 64
  %i.c = inttoptr i64 %i.b to ptr
  tail call void @llvm.prefetch.p0(ptr %i.c, i32 0, i32 3, i32 1)
  %i.d = add i64 %i.a, 128
  %i.e = inttoptr i64 %i.d to ptr
  tail call void @llvm.prefetch.p0(ptr %i.e, i32 0, i32 3, i32 1)
  %i.f = add i64 %i.a, 192
  %i.g = inttoptr i64 %i.f to ptr
  tail call void @llvm.prefetch.p0(ptr %i.g, i32 0, i32 3, i32 1)
  %i.h = add i64 %i.a, 256
  %i.i = inttoptr i64 %i.h to ptr
  tail call void @llvm.prefetch.p0(ptr %i.i, i32 0, i32 3, i32 1)
  %i.j = add i64 %i.a, 320
  %i.k = inttoptr i64 %i.j to ptr
  tail call void @llvm.prefetch.p0(ptr %i.k, i32 0, i32 3, i32 1)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.m = load i16, ptr %i.l, align 2, !tbaa !86
  %i.n = icmp eq i16 %i.m, 0
  %i.o = load i16, ptr %0, align 8
  %i.p = icmp eq i16 %i.o, 0
  %i.q = select i1 %i.n, i1 %i.p, i1 false
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.s = load i16, ptr %i.r, align 2
  %i.t = icmp sgt i16 %i.s, -1
  %or.cond = select i1 %i.q, i1 %i.t, i1 false, !prof !156
  br i1 %or.cond, label %bb.a, label %.critedge, !prof !156

bb.a:                                             ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_23Prefetch5LinesFrom1LineEPKvE5kOptsEvvEEvPKT1_.exit
  tail call void @_ZN6google8protobuf8internal12ExtensionSet29InternalMergeFromSmallToEmptyEPNS0_5ArenaEPKNS0_11MessageLiteERKS2_S4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %4)
  br label %bb.b

.critedge:                                        ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_23Prefetch5LinesFrom1LineEPKvE5kOptsEvvEEvPKT1_.exit
  tail call void @_ZN6google8protobuf8internal12ExtensionSet21InternalMergeFromSlowEPNS0_5ArenaEPKNS0_11MessageLiteERKS2_S4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %4)
  br label %bb.b

bb.b:                                             ; preds = %.critedge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal12ExtensionSet29InternalMergeFromSmallToEmptyEPNS0_5ArenaEPKNS0_11MessageLiteERKS2_S4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.35, align 8             ; 9 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  %.val.i = load i16, ptr %i.d, align 2, !tbaa !86 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.val1.i = load ptr, ptr %i.e, align 8          ; 13 uses
  %i.f = icmp slt i16 %.val.i, 0
  br i1 %i.f, label %bb.b, label %bb.c, !prof !35

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %.val1.i, align 8, !tbaa !89
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !95
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !95   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 10
  %i.l = load i8, ptr %i.k, align 1, !tbaa !13
  %i.m = zext i8 %i.l to i32
  call fastcc void @"_ZN6google8protobuf8internal12ExtensionSet17ForEachNoPrefetchIN4absl12lts_2025051218container_internal14btree_iteratorINS6_10btree_nodeINS6_10map_paramsIiNS2_9ExtensionESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EEZNKS2_13NumExtensionsEvE3$_0EEvT_SN_T0_"(ptr %i.h, i32 0, ptr %i.j, i32 %i.m, ptr nonnull %i.a)
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !3
  br label %_ZNK6google8protobuf8internal12ExtensionSet13NumExtensionsEv.exit

bb.c:                                             ; preds = %bb.a
  %i.n = zext nneg i16 %.val.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.n, 5             ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i, i64 %.idx.i.i
  %.not7.i.i.i = icmp eq i16 %.val.i, 0
  br i1 %.not7.i.i.i, label %_ZNK6google8protobuf8internal12ExtensionSet13NumExtensionsEv.exit.thread, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.c
  %i.p = add nsw i64 %.idx.i.i, -32               ; 2 uses
  %i.q = lshr exact i64 %i.p, 5
  %i.r = add nuw nsw i64 %i.q, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.p, 224
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader35, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.r, 1152921504606846968      ; 3 uses
  %i.s = shl i64 %n.vec, 5
  %i.t = getelementptr i8, ptr %.val1.i, i64 %i.s
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bg, %vector.body ]
  %vec.phi25 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bh, %vector.body ]
  %i.u = shl i64 %index, 5                        ; 8 uses
  %next.gep = getelementptr i8, ptr %.val1.i, i64 %i.u
  %i.v = getelementptr i8, ptr %.val1.i, i64 %i.u
  %i.w = getelementptr i8, ptr %.val1.i, i64 %i.u
  %i.x = getelementptr i8, ptr %.val1.i, i64 %i.u
  %i.y = getelementptr i8, ptr %.val1.i, i64 %i.u
  %i.z = getelementptr i8, ptr %.val1.i, i64 %i.u
  %i.aa = getelementptr i8, ptr %.val1.i, i64 %i.u
  %i.ab = getelementptr i8, ptr %.val1.i, i64 %i.u
  %i.ac = getelementptr i8, ptr %next.gep, i64 18
  %i.ad = getelementptr i8, ptr %i.v, i64 50
  %i.ae = getelementptr i8, ptr %i.w, i64 82
  %i.af = getelementptr i8, ptr %i.x, i64 114
  %i.ag = getelementptr i8, ptr %i.y, i64 146
  %i.ah = getelementptr i8, ptr %i.z, i64 178
  %i.ai = getelementptr i8, ptr %i.aa, i64 210
  %i.aj = getelementptr i8, ptr %i.ab, i64 242
  %i.ak = load i8, ptr %i.ac, align 2
  %i.al = load i8, ptr %i.ad, align 2
  %i.am = load i8, ptr %i.ae, align 2
  %i.an = load i8, ptr %i.af, align 2
  %i.ao = insertelement <4 x i8> poison, i8 %i.ak, i64 0
  %i.ap = insertelement <4 x i8> %i.ao, i8 %i.al, i64 1
  %i.aq = insertelement <4 x i8> %i.ap, i8 %i.am, i64 2
  %i.ar = insertelement <4 x i8> %i.aq, i8 %i.an, i64 3
  %i.as = load i8, ptr %i.ag, align 2
  %i.at = load i8, ptr %i.ah, align 2
  %i.au = load i8, ptr %i.ai, align 2
  %i.av = load i8, ptr %i.aj, align 2
  %i.aw = insertelement <4 x i8> poison, i8 %i.as, i64 0
  %i.ax = insertelement <4 x i8> %i.aw, i8 %i.at, i64 1
  %i.ay = insertelement <4 x i8> %i.ax, i8 %i.au, i64 2
  %i.az = insertelement <4 x i8> %i.ay, i8 %i.av, i64 3
  %i.ba = and <4 x i8> %i.ar, splat (i8 2)
  %i.bb = and <4 x i8> %i.az, splat (i8 2)
  %i.bc = icmp eq <4 x i8> %i.ba, zeroinitializer
  %i.bd = icmp eq <4 x i8> %i.bb, zeroinitializer
  %i.be = zext <4 x i1> %i.bc to <4 x i32>
  %i.bf = zext <4 x i1> %i.bd to <4 x i32>
  %i.bg = add <4 x i32> %vec.phi, %i.be           ; 2 uses
  %i.bh = add <4 x i32> %vec.phi25, %i.bf         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !157

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bh, %i.bg
  %i.bj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %_ZNK6google8protobuf8internal12ExtensionSet13NumExtensionsEv.exit, label %.lr.ph.i.i.i.preheader35

.lr.ph.i.i.i.preheader35:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.ph = phi i32 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.bj, %middle.block ]
  %.08.i.i.i.ph = phi ptr [ %.val1.i, %.lr.ph.i.i.i.preheader ], [ %i.t, %middle.block ]
  br label %.lr.ph.i.i.i

_ZNK6google8protobuf8internal12ExtensionSet13NumExtensionsEv.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  br label %bb.k

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader35, %.lr.ph.i.i.i
  %i.bk = phi i32 [ %spec.select.i, %.lr.ph.i.i.i ], [ %.ph, %.lr.ph.i.i.i.preheader35 ]
  %.08.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i ], [ %.08.i.i.i.ph, %.lr.ph.i.i.i.preheader35 ] ; 2 uses
  %i.bl = getelementptr i8, ptr %.08.i.i.i, i64 18
  %.val6.i.i.i = load i8, ptr %i.bl, align 2
  %i.bm = and i8 %.val6.i.i.i, 2
  %.not.i.i.i.i = icmp eq i8 %i.bm, 0
  %i.bn = zext i1 %.not.i.i.i.i to i32
  %spec.select.i = add nuw nsw i32 %i.bk, %i.bn   ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bo, %i.o
  br i1 %.not.i.i.i, label %_ZNK6google8protobuf8internal12ExtensionSet13NumExtensionsEv.exit, label %.lr.ph.i.i.i, !llvm.loop !158

_ZNK6google8protobuf8internal12ExtensionSet13NumExtensionsEv.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %bb.b
  %i.bp = phi i32 [ %.pre.i, %bb.b ], [ %i.bj, %middle.block ], [ %spec.select.i, %.lr.ph.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.k, label %bb.d

bb.d:                                             ; preds = %_ZNK6google8protobuf8internal12ExtensionSet13NumExtensionsEv.exit
  %i.br = sext i32 %i.bp to i64                   ; 2 uses
  %i.bs = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.br)
  %or.cond.i.i = icmp eq i64 %i.bs, 1
  %i.bt = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.br, i1 true)
  %..i.i = select i1 %or.cond.i.i, i64 63, i64 64
  %i.bu = sub nuw nsw i64 %..i.i, %i.bt           ; 2 uses
  %i.bv = shl nuw i64 1, %i.bu
  %i.bw = trunc i64 %i.bv to i16
  store i16 %i.bw, ptr %0, align 8, !tbaa !99
  %i.bx = icmp eq ptr %1, null
  %i.by = shl i64 32, %i.bu
  %i.bz = and i64 %i.by, 2097120                  ; 2 uses
  br i1 %i.bx, label %bb.e, label %bb.f, !prof !35

bb.e:                                             ; preds = %bb.d
  %i.ca = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bz) #38
  br label %_ZN6google8protobuf8internal12ExtensionSet37InternalReserveSmallCapacityFromEmptyEPNS0_5ArenaEm.exit

bb.f:                                             ; preds = %bb.d
  %i.cb = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.bz)
  br label %_ZN6google8protobuf8internal12ExtensionSet37InternalReserveSmallCapacityFromEmptyEPNS0_5ArenaEm.exit

_ZN6google8protobuf8internal12ExtensionSet37InternalReserveSmallCapacityFromEmptyEPNS0_5ArenaEm.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i = phi ptr [ %i.ca, %bb.e ], [ %i.cb, %bb.f ] ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i.i, ptr %i.cc, align 8, !tbaa !13
  %i.cd = trunc i32 %i.bp to i16
  store i16 %i.cd, ptr %i.c, align 2, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  store ptr %.0.i.i.i, ptr %i.b, align 8, !tbaa !159
  %.val = load i16, ptr %i.d, align 2, !tbaa !86  ; 3 uses
  %.val13 = load ptr, ptr %i.e, align 8           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %2, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %1, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.b, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %3, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %4, ptr %.sroa.6.0..sroa_idx, align 8
  %i.ce = icmp slt i16 %.val, 0
  br i1 %i.ce, label %bb.g, label %bb.h, !prof !35

bb.g:                                             ; preds = %_ZN6google8protobuf8internal12ExtensionSet37InternalReserveSmallCapacityFromEmptyEPNS0_5ArenaEm.exit
  %i.cf = load ptr, ptr %.val13, align 8, !tbaa !89
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !95
  %i.ch = getelementptr inbounds nuw i8, ptr %.val13, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !95 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 10
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !13
  %i.cl = zext i8 %i.ck to i32
  call fastcc void @"_ZN6google8protobuf8internal12ExtensionSet19ForEachPrefetchImplIN4absl12lts_2025051218container_internal14btree_iteratorINS6_10btree_nodeINS6_10map_paramsIiNS2_9ExtensionESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EEZNS2_29InternalMergeFromSmallToEmptyEPNS0_5ArenaEPKNS0_11MessageLiteERKS2_SN_E3$_0NS2_8PrefetchEEEvT_SV_T0_T1_"(ptr %i.cg, i32 0, ptr %i.ci, i32 %i.cl, ptr noundef nonnull byval(%class.anon.35) align 8 %5)
  br label %"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNS2_29InternalMergeFromSmallToEmptyEPNS0_5ArenaEPKNS0_11MessageLiteERKS2_S5_E3$_0NS2_8PrefetchEEEvT_T0_.exit"

bb.h:                                             ; preds = %_ZN6google8protobuf8internal12ExtensionSet37InternalReserveSmallCapacityFromEmptyEPNS0_5ArenaEm.exit
  %i.cm = zext nneg i16 %.val to i64
  %.idx.i = shl nuw nsw i64 %i.cm, 5
  %i.cn = getelementptr inbounds nuw i8, ptr %.val13, i64 %.idx.i ; 5 uses
  %.not36.i.i = icmp eq i16 %.val, 0
  br i1 %.not36.i.i, label %.preheader25.i.i, label %.lr.ph.i.i

.preheader25.i.i:                                 ; preds = %.lr.ph.i.i, %bb.h
  %.018.lcssa.i.i = phi ptr [ %.val13, %bb.h ], [ %i.ct, %.lr.ph.i.i ] ; 2 uses
  %.not28.i.i = icmp eq ptr %.018.lcssa.i.i, %i.cn
  br i1 %.not28.i.i, label %.preheader.i.i, label %.lr.ph31.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.i.i
  %.027.i.i = phi i32 [ %i.cu, %.lr.ph.i.i ], [ 0, %bb.h ] ; 2 uses
  %.01826.i.i = phi ptr [ %i.ct, %.lr.ph.i.i ], [ %.val13, %bb.h ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.01826.i.i, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.01826.i.i, i64 18
  %i.cq = load i8, ptr %i.cp, align 2
  %i.cr = trunc i8 %i.cq to i1
  %i.cs = load ptr, ptr %i.co, align 8
  %spec.select.i.i.i = select i1 %i.cr, ptr %i.cs, ptr %i.co
  call void @llvm.prefetch.p0(ptr %spec.select.i.i.i, i32 0, i32 3, i32 1)
  %i.ct = getelementptr inbounds nuw i8, ptr %.01826.i.i, i64 32 ; 3 uses
  %i.cu = add nuw nsw i32 %.027.i.i, 1
  %i.cv = icmp ne ptr %i.ct, %i.cn
  %i.cw = icmp samesign ult i32 %.027.i.i, 15
  %i.cx = select i1 %i.cv, i1 %i.cw, i1 false
  br i1 %i.cx, label %.lr.ph.i.i, label %.preheader25.i.i, !llvm.loop !161

.preheader.i.i:                                   ; preds = %"_ZZN6google8protobuf8internal12ExtensionSet29InternalMergeFromSmallToEmptyEPNS0_5ArenaEPKNS0_11MessageLiteERKS2_S4_ENK3$_0clEiRKNS2_9ExtensionE.exit.i.i", %.preheader25.i.i
  %i.cy = phi ptr [ %.0.i.i.i, %.preheader25.i.i ], [ %i.di, %"_ZZN6google8protobuf8internal12ExtensionSet29InternalMergeFromSmallToEmptyEPNS0_5ArenaEPKNS0_11MessageLiteERKS2_S4_ENK3$_0clEiRKNS2_9ExtensionE.exit.i.i" ]
  %.019.lcssa.i.i = phi ptr [ %.val13, %.preheader25.i.i ], [ %i.do, %"_ZZN6google8protobuf8internal12ExtensionSet29InternalMergeFromSmallToEmptyEPNS0_5ArenaEPKNS0_11MessageLiteERKS2_S4_ENK3$_0clEiRKNS2_9ExtensionE.exit.i.i" ] ; 2 uses
  %.not2133.i.i = icmp eq ptr %.019.lcssa.i.i, %i.cn
  br i1 %.not2133.i.i, label %"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNS2_29InternalMergeFromSmallToEmptyEPNS0_5ArenaEPKNS0_11MessageLiteERKS2_S5_E3$_0NS2_8PrefetchEEEvT_T0_.exit", label %.lr.ph35.i.i

.lr.ph31.i.i:                                     ; preds = %.preheader25.i.i, %"_ZZN6google8protobuf8internal12ExtensionSet29InternalMergeFromSmallToEmptyEPNS0_5ArenaEPKNS0_11MessageLiteERKS2_S4_ENK3$_0clEiRKNS2_9ExtensionE.exit.i.i"
  %i.cz = phi ptr [ %i.di, %"_ZZN6google8protobuf8internal12ExtensionSet29InternalMergeFromSmallToEmptyEPNS0_5ArenaEPKNS0_11MessageLiteERKS2_S4_ENK3$_0clEiRKNS2_9ExtensionE.exit.i.i" ], [ %.0.i.i.i, %.preheader25.i.i ] ; 3 uses
  %.130.i.i = phi ptr [ %i.dp, %"_ZZN6google8protobuf8internal12ExtensionSet29InternalMergeFromSmallToEmptyEPNS0_5ArenaEPKNS0_11MessageLiteERKS2_S4_ENK3$_0clEiRKNS2_9ExtensionE.exit.i.i" ], [ %.018.lcssa.i.i, %.preheader25.i.i ] ; 3 uses
  %.01929.i.i = phi ptr [ %i.do, %"_ZZN6google8protobuf8internal12ExtensionSet29InternalMergeFromSmallToEmptyEPNS0_5ArenaEPKNS0_11MessageLiteERKS2_S4_ENK3$_0clEiRKNS2_9ExtensionE.exit.i.i" ], [ %.val13, %.preheader25.i.i ] ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.01929.i.i, i64 18
  %i.db = load i8, ptr %i.da, align 2
  %i.dc = and i8 %i.db, 2
  %.not.i.i.i14 = icmp eq i8 %i.dc, 0
  br i1 %.not.i.i.i14, label %bb.i, label %"_ZZN6google8protobuf8internal12ExtensionSet29InternalMergeFromSmallToEmptyEPNS0_5ArenaEPKNS0_11MessageLiteERKS2_S4_ENK3$_0clEiRKNS2_9ExtensionE.exit.i.i"

bb.i:                                             ; preds = %.lr.ph31.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %.01929.i.i, i64 8
  %i.de = load i32, ptr %.01929.i.i, align 8, !tbaa !109
  store i32 %i.de, ptr %i.cz, align 8, !tbaa !109
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  call void @_ZN6google8protobuf8internal12ExtensionSet52InternalExtensionMergeFromIntoUninitializedExtensionEPNS0_5ArenaERNS2_9ExtensionEPKNS0_11MessageLiteEiRKS5_S4_(ptr nonnull align 8 poison, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %i.df, ptr poison, i32 poison, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.dd, ptr noundef %4)
  %i.dg = load ptr, ptr %i.b, align 8, !tbaa !159
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32 ; 2 uses
  store ptr %i.dh, ptr %i.b, align 8, !tbaa !159
  br label %"_ZZN6google8protobuf8internal12ExtensionSet29InternalMergeFromSmallToEmptyEPNS0_5ArenaEPKNS0_11MessageLiteERKS2_S4_ENK3$_0clEiRKNS2_9ExtensionE.exit.i.i"

"_ZZN6google8protobuf8internal12ExtensionSet29InternalMergeFromSmallToEmptyEPNS0_5ArenaEPKNS0_11MessageLiteERKS2_S4_ENK3$_0clEiRKNS2_9ExtensionE.exit.i.i": ; preds = %bb.i, %.lr.ph31.i.i
  %i.di = phi ptr [ %i.dh, %bb.i ], [ %i.cz, %.lr.ph31.i.i ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 18
  %i.dl = load i8, ptr %i.dk, align 2
  %i.dm = trunc i8 %i.dl to i1
  %i.dn = load ptr, ptr %i.dj, align 8
  %spec.select.i22.i.i = select i1 %i.dm, ptr %i.dn, ptr %i.dj
  call void @llvm.prefetch.p0(ptr %spec.select.i22.i.i, i32 0, i32 3, i32 1)
  %i.do = getelementptr inbounds nuw i8, ptr %.01929.i.i, i64 32 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dp, %i.cn
  br i1 %.not.i.i, label %.preheader.i.i, label %.lr.ph31.i.i, !llvm.loop !162

.lr.ph35.i.i:                                     ; preds = %.preheader.i.i, %"_ZZN6google8protobuf8internal12ExtensionSet29InternalMergeFromSmallToEmptyEPNS0_5ArenaEPKNS0_11MessageLiteERKS2_S4_ENK3$_0clEiRKNS2_9ExtensionE.exit24.i.i"
  %i.dq = phi ptr [ %i.dz, %"_ZZN6google8protobuf8internal12ExtensionSet29InternalMergeFromSmallToEmptyEPNS0_5ArenaEPKNS0_11MessageLiteERKS2_S4_ENK3$_0clEiRKNS2_9ExtensionE.exit24.i.i" ], [ %i.cy, %.preheader.i.i ] ; 3 uses
  %.12034.i.i = phi ptr [ %i.ea, %"_ZZN6google8protobuf8internal12ExtensionSet29InternalMergeFromSmallToEmptyEPNS0_5ArenaEPKNS0_11MessageLiteERKS2_S4_ENK3$_0clEiRKNS2_9ExtensionE.exit24.i.i" ], [ %.019.lcssa.i.i, %.preheader.i.i ] ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.12034.i.i, i64 18
  %i.ds = load i8, ptr %i.dr, align 2
  %i.dt = and i8 %i.ds, 2
  %.not.i23.i.i = icmp eq i8 %i.dt, 0
  br i1 %.not.i23.i.i, label %bb.j, label %"_ZZN6google8protobuf8internal12ExtensionSet29InternalMergeFromSmallToEmptyEPNS0_5ArenaEPKNS0_11MessageLiteERKS2_S4_ENK3$_0clEiRKNS2_9ExtensionE.exit24.i.i"

bb.j:                                             ; preds = %.lr.ph35.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %.12034.i.i, i64 8
  %i.dv = load i32, ptr %.12034.i.i, align 8, !tbaa !109
  store i32 %i.dv, ptr %i.dq, align 8, !tbaa !109
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  call void @_ZN6google8protobuf8internal12ExtensionSet52InternalExtensionMergeFromIntoUninitializedExtensionEPNS0_5ArenaERNS2_9ExtensionEPKNS0_11MessageLiteEiRKS5_S4_(ptr nonnull align 8 poison, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %i.dw, ptr poison, i32 poison, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.du, ptr noundef %4)
  %i.dx = load ptr, ptr %i.b, align 8, !tbaa !159
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 32 ; 2 uses
  store ptr %i.dy, ptr %i.b, align 8, !tbaa !159
  br label %"_ZZN6google8protobuf8internal12ExtensionSet29InternalMergeFromSmallToEmptyEPNS0_5ArenaEPKNS0_11MessageLiteERKS2_S4_ENK3$_0clEiRKNS2_9ExtensionE.exit24.i.i"

"_ZZN6google8protobuf8internal12ExtensionSet29InternalMergeFromSmallToEmptyEPNS0_5ArenaEPKNS0_11MessageLiteERKS2_S4_ENK3$_0clEiRKNS2_9ExtensionE.exit24.i.i": ; preds = %bb.j, %.lr.ph35.i.i
  %i.dz = phi ptr [ %i.dy, %bb.j ], [ %i.dq, %.lr.ph35.i.i ]
  %i.ea = getelementptr inbounds nuw i8, ptr %.12034.i.i, i64 32 ; 2 uses
  %.not21.i.i = icmp eq ptr %i.ea, %i.cn
  br i1 %.not21.i.i, label %"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNS2_29InternalMergeFromSmallToEmptyEPNS0_5ArenaEPKNS0_11MessageLiteERKS2_S5_E3$_0NS2_8PrefetchEEEvT_T0_.exit", label %.lr.ph35.i.i, !llvm.loop !163

"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNS2_29InternalMergeFromSmallToEmptyEPNS0_5ArenaEPKNS0_11MessageLiteERKS2_S5_E3$_0NS2_8PrefetchEEEvT_T0_.exit": ; preds = %"_ZZN6google8protobuf8internal12ExtensionSet29InternalMergeFromSmallToEmptyEPNS0_5ArenaEPKNS0_11MessageLiteERKS2_S4_ENK3$_0clEiRKNS2_9ExtensionE.exit24.i.i", %bb.g, %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  br label %bb.k

bb.k:                                             ; preds = %_ZNK6google8protobuf8internal12ExtensionSet13NumExtensionsEv.exit.thread, %_ZNK6google8protobuf8internal12ExtensionSet13NumExtensionsEv.exit, %"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNS2_29InternalMergeFromSmallToEmptyEPNS0_5ArenaEPKNS0_11MessageLiteERKS2_S5_E3$_0NS2_8PrefetchEEEvT_T0_.exit"
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal12ExtensionSet21InternalMergeFromSlowEPNS0_5ArenaEPKNS0_11MessageLiteERKS2_S4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %4) local_unnamed_addr #3 align 2 {
bb.a:
  %5 = alloca %class.anon.36, align 8             ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !86   ; 2 uses
  %i.c = icmp slt i16 %i.b, 0
  br i1 %i.c, label %bb.h, label %bb.b, !prof !35

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.e = load i16, ptr %i.d, align 2, !tbaa !86   ; 3 uses
  %i.f = icmp slt i16 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13   ; 3 uses
  %i.i = zext nneg i16 %i.b to i64                ; 3 uses
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.i ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !13   ; 4 uses
  br i1 %i.f, label %bb.g, label %bb.c, !prof !35

bb.c:                                             ; preds = %bb.b
  %i.m = zext nneg i16 %i.e to i64
  %.idx = shl nuw nsw i64 %i.m, 5
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx
  %.not25.i = icmp eq i16 %i.e, 0
  br i1 %.not25.i, label %.sink.split, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %bb.f
  %.028.i = phi i64 [ %i.y, %bb.f ], [ %i.i, %bb.c ]
  %.01627.i = phi ptr [ %.121.i, %bb.f ], [ %i.h, %bb.c ] ; 2 uses
  %.01726.i = phi ptr [ %i.z, %bb.f ], [ %i.l, %bb.c ] ; 3 uses
  %.not1823.i = icmp eq ptr %.01627.i, %i.j
  br i1 %.not1823.i, label %.critedge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.o = load i32, ptr %.01726.i, align 8, !tbaa !109 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i
  %.124.i = phi ptr [ %.01627.i, %.lr.ph.i ], [ %i.r, %bb.e ] ; 4 uses
  %i.p = load i32, ptr %.124.i, align 8, !tbaa !109 ; 2 uses
  %i.q = icmp slt i32 %i.p, %i.o
  br i1 %i.q, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.124.i, i64 32 ; 2 uses
  %.not18.i = icmp eq ptr %i.r, %i.j
  br i1 %.not18.i, label %.critedge.thread.i, label %bb.d, !llvm.loop !164

.critedge.i:                                      ; preds = %bb.d
  %i.s = icmp sgt i32 %i.p, %i.o
  br i1 %i.s, label %.critedge.thread.i, label %bb.f

.critedge.thread.i:                               ; preds = %bb.e, %.critedge.i, %.preheader.i
  %.122.i = phi ptr [ %.124.i, %.critedge.i ], [ %i.j, %.preheader.i ], [ %i.j, %bb.e ]
  %i.t = getelementptr inbounds nuw i8, ptr %.01726.i, i64 18
  %i.u = load i8, ptr %i.t, align 2
  %i.v = and i8 %i.u, 2
  %.not19.i = icmp eq i8 %i.v, 0
  %i.w = zext i1 %.not19.i to i64
  br label %bb.f

bb.f:                                             ; preds = %.critedge.thread.i, %.critedge.i
  %.121.i = phi ptr [ %.124.i, %.critedge.i ], [ %.122.i, %.critedge.thread.i ]
  %i.x = phi i64 [ 0, %.critedge.i ], [ %i.w, %.critedge.thread.i ]
  %i.y = add i64 %i.x, %.028.i                    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01726.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.z, %i.n
  br i1 %.not.i, label %.sink.split, label %.preheader.i, !llvm.loop !165

bb.g:                                             ; preds = %bb.b
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !89
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !95
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !95 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 10
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !13
  %i.ag = zext i8 %i.af to i32
  %i.ah = tail call fastcc noundef i64 @_ZN6google8protobuf8internal12_GLOBAL__N_111SizeOfUnionIPNS1_12ExtensionSet8KeyValueEN4absl12lts_2025051218container_internal14btree_iteratorINS9_10btree_nodeINS9_10map_paramsIiNS4_9ExtensionESt4lessIiESaISt4pairIKiSD_EELi256ELb0EEEEERSI_PSI_EEEEmT_SP_T0_SQ_(ptr noundef %i.h, ptr noundef %i.j, ptr %i.ab, i32 0, ptr %i.ad, i32 %i.ag)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.c, %bb.g
  %.0.lcssa.i.sink = phi i64 [ %i.ah, %bb.g ], [ %i.i, %bb.c ], [ %i.y, %bb.f ]
  tail call void @_ZN6google8protobuf8internal12ExtensionSet12GrowCapacityEPNS0_5ArenaEm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %.0.lcssa.i.sink)
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 2
  %.val = load i16, ptr %i.ai, align 2, !tbaa !86 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val24 = load ptr, ptr %i.aj, align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %2, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %1, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %3, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %4, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ak = icmp slt i16 %.val, 0
  br i1 %i.ak, label %bb.i, label %bb.j, !prof !35

bb.i:                                             ; preds = %bb.h
  %i.al = load ptr, ptr %.val24, align 8, !tbaa !89
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !95
  %i.an = getelementptr inbounds nuw i8, ptr %.val24, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !95 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 10
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !13
  %i.ar = zext i8 %i.aq to i32
  tail call fastcc void @"_ZN6google8protobuf8internal12ExtensionSet19ForEachPrefetchImplIN4absl12lts_2025051218container_internal14btree_iteratorINS6_10btree_nodeINS6_10map_paramsIiNS2_9ExtensionESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EEZNS2_21InternalMergeFromSlowEPNS0_5ArenaEPKNS0_11MessageLiteERKS2_SN_E3$_0NS2_8PrefetchEEEvT_SV_T0_T1_"(ptr %i.am, i32 0, ptr %i.ao, i32 %i.ar, ptr noundef nonnull byval(%class.anon.36) align 8 %5)
  br label %"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNS2_21InternalMergeFromSlowEPNS0_5ArenaEPKNS0_11MessageLiteERKS2_S5_E3$_0NS2_8PrefetchEEEvT_T0_.exit"

bb.j:                                             ; preds = %bb.h
  %i.as = zext nneg i16 %.val to i64
  %.idx.i = shl nuw nsw i64 %i.as, 5
  %i.at = getelementptr inbounds nuw i8, ptr %.val24, i64 %.idx.i ; 5 uses
  %.not34.i.i = icmp eq i16 %.val, 0
  br i1 %.not34.i.i, label %.preheader23.i.i, label %.lr.ph.i.i

.preheader23.i.i:                                 ; preds = %.lr.ph.i.i, %bb.j
  %.018.lcssa.i.i = phi ptr [ %.val24, %bb.j ], [ %i.az, %.lr.ph.i.i ] ; 2 uses
  %.not26.i.i = icmp eq ptr %.018.lcssa.i.i, %i.at
  br i1 %.not26.i.i, label %.preheader.i.i, label %.lr.ph29.i.i

.lr.ph.i.i:                                       ; preds = %bb.j, %.lr.ph.i.i
  %.025.i.i = phi i32 [ %i.ba, %.lr.ph.i.i ], [ 0, %bb.j ] ; 2 uses
  %.01824.i.i = phi ptr [ %i.az, %.lr.ph.i.i ], [ %.val24, %bb.j ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.01824.i.i, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.01824.i.i, i64 18
  %i.aw = load i8, ptr %i.av, align 2
  %i.ax = trunc i8 %i.aw to i1
  %i.ay = load ptr, ptr %i.au, align 8
  %spec.select.i.i.i = select i1 %i.ax, ptr %i.ay, ptr %i.au
  tail call void @llvm.prefetch.p0(ptr %spec.select.i.i.i, i32 0, i32 3, i32 1)
  %i.az = getelementptr inbounds nuw i8, ptr %.01824.i.i, i64 32 ; 3 uses
  %i.ba = add nuw nsw i32 %.025.i.i, 1
  %i.bb = icmp ne ptr %i.az, %i.at
  %i.bc = icmp samesign ult i32 %.025.i.i, 15
  %i.bd = select i1 %i.bb, i1 %i.bc, i1 false
  br i1 %i.bd, label %.lr.ph.i.i, label %.preheader23.i.i, !llvm.loop !166

.preheader.i.i:                                   ; preds = %.lr.ph29.i.i, %.preheader23.i.i
  %.019.lcssa.i.i = phi ptr [ %.val24, %.preheader23.i.i ], [ %i.bl, %.lr.ph29.i.i ] ; 2 uses
  %.not2131.i.i = icmp eq ptr %.019.lcssa.i.i, %i.at
  br i1 %.not2131.i.i, label %"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNS2_21InternalMergeFromSlowEPNS0_5ArenaEPKNS0_11MessageLiteERKS2_S5_E3$_0NS2_8PrefetchEEEvT_T0_.exit", label %.lr.ph33.i.i

.lr.ph29.i.i:                                     ; preds = %.preheader23.i.i, %.lr.ph29.i.i
  %.128.i.i = phi ptr [ %i.bm, %.lr.ph29.i.i ], [ %.018.lcssa.i.i, %.preheader23.i.i ] ; 3 uses
  %.01927.i.i = phi ptr [ %i.bl, %.lr.ph29.i.i ], [ %.val24, %.preheader23.i.i ] ; 3 uses
  %i.be = load i32, ptr %.01927.i.i, align 8, !tbaa !109
  %i.bf = getelementptr inbounds nuw i8, ptr %.01927.i.i, i64 8
  tail call void @_ZN6google8protobuf8internal12ExtensionSet26InternalExtensionMergeFromEPNS0_5ArenaEPKNS0_11MessageLiteEiRKNS2_9ExtensionES4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.be, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bf, ptr noundef %4)
  %i.bg = getelementptr inbounds nuw i8, ptr %.128.i.i, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.128.i.i, i64 18
  %i.bi = load i8, ptr %i.bh, align 2
  %i.bj = trunc i8 %i.bi to i1
  %i.bk = load ptr, ptr %i.bg, align 8
  %spec.select.i22.i.i = select i1 %i.bj, ptr %i.bk, ptr %i.bg
  tail call void @llvm.prefetch.p0(ptr %spec.select.i22.i.i, i32 0, i32 3, i32 1)
  %i.bl = getelementptr inbounds nuw i8, ptr %.01927.i.i, i64 32 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.128.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bm, %i.at
  br i1 %.not.i.i, label %.preheader.i.i, label %.lr.ph29.i.i, !llvm.loop !167

.lr.ph33.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph33.i.i
  %.12032.i.i = phi ptr [ %i.bp, %.lr.ph33.i.i ], [ %.019.lcssa.i.i, %.preheader.i.i ] ; 3 uses
  %i.bn = load i32, ptr %.12032.i.i, align 8, !tbaa !109
  %i.bo = getelementptr inbounds nuw i8, ptr %.12032.i.i, i64 8
  tail call void @_ZN6google8protobuf8internal12ExtensionSet26InternalExtensionMergeFromEPNS0_5ArenaEPKNS0_11MessageLiteEiRKNS2_9ExtensionES4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.bn, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bo, ptr noundef %4)
  %i.bp = getelementptr inbounds nuw i8, ptr %.12032.i.i, i64 32 ; 2 uses
  %.not21.i.i = icmp eq ptr %i.bp, %i.at
  br i1 %.not21.i.i, label %"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNS2_21InternalMergeFromSlowEPNS0_5ArenaEPKNS0_11MessageLiteERKS2_S5_E3$_0NS2_8PrefetchEEEvT_T0_.exit", label %.lr.ph33.i.i, !llvm.loop !168

"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNS2_21InternalMergeFromSlowEPNS0_5ArenaEPKNS0_11MessageLiteERKS2_S5_E3$_0NS2_8PrefetchEEEvT_T0_.exit": ; preds = %.lr.ph33.i.i, %bb.i, %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal12ExtensionSet37InternalReserveSmallCapacityFromEmptyEPNS0_5ArenaEm(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 2), (8, 16)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %2)
  %or.cond.i = icmp eq i64 %3, 1
  %4 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %2, i1 false)
  %..i = select i1 %or.cond.i, i64 63, i64 64
  %5 = sub nuw nsw i64 %..i, %4                   ; 2 uses
  %6 = shl nuw i64 1, %5
  %i.a = trunc i64 %6 to i16
  store i16 %i.a, ptr %0, align 8, !tbaa !99
  %i.b = icmp eq ptr %1, null
  %i.c = shl i64 32, %5
  %i.d = and i64 %i.c, 2097120                    ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c, !prof !35

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.d) #38
  br label %_ZN6google8protobuf8internal12ExtensionSet15AllocateFlatMapEPNS0_5ArenaEt.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.d)
  br label %_ZN6google8protobuf8internal12ExtensionSet15AllocateFlatMapEPNS0_5ArenaEt.exit

_ZN6google8protobuf8internal12ExtensionSet15AllocateFlatMapEPNS0_5ArenaEt.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i, ptr %i.g, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal12ExtensionSet12GrowCapacityEPNS0_5ArenaEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::pair.53", align 8     ; 5 uses
  %4 = alloca %"struct.std::pair.41", align 8     ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !86   ; 5 uses
  %i.c = icmp sgt i16 %i.b, -1
  %i.d = load i16, ptr %0, align 8                ; 2 uses
  %i.e = zext i16 %i.d to i64
  %.not = icmp ugt i64 %2, %i.e
  %or.cond = select i1 %i.c, i1 %.not, i1 false, !prof !169
  br i1 %or.cond, label %.preheader, label %bb.u, !prof !169

.preheader:                                       ; preds = %bb.a, %.preheader
  %.0 = phi i16 [ %i.h, %.preheader ], [ %i.d, %bb.a ] ; 2 uses
  %i.f = icmp eq i16 %.0, 0
  %i.g = shl i16 %.0, 2
  %i.h = select i1 %i.f, i16 1, i16 %i.g          ; 4 uses
  %i.i = zext i16 %i.h to i64                     ; 2 uses
  %i.j = icmp ugt i64 %2, %i.i
  br i1 %i.j, label %.preheader, label %bb.b, !llvm.loop !170

bb.b:                                             ; preds = %.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !13   ; 11 uses
  %i.m = zext nneg i16 %i.b to i64
  %.idx50 = shl nuw nsw i64 %i.m, 5               ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx50
  %i.o = icmp ugt i16 %i.h, 256
  %i.p = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.o, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  br i1 %i.p, label %bb.d, label %bb.e, !prof !35

bb.d:                                             ; preds = %bb.c
  %i.q = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #38
  br label %_ZN6google8protobuf5Arena6CreateIN4absl12lts_202505129btree_mapIiNS0_8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EEEEJEEEPT_PS1_DpOT0_.exit

bb.e:                                             ; preds = %bb.c
  %i.r = tail call noundef ptr @_ZN6google8protobuf5Arena26AllocateAlignedWithCleanupEmmPFvPvE(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef 24, i64 noundef 8, ptr noundef nonnull @_ZN6google8protobuf8internal7cleanup21arena_destruct_objectIN4absl12lts_202505129btree_mapIiNS1_12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EEEEEEvPv)
  br label %_ZN6google8protobuf5Arena6CreateIN4absl12lts_202505129btree_mapIiNS0_8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EEEEJEEEPT_PS1_DpOT0_.exit

_ZN6google8protobuf5Arena6CreateIN4absl12lts_202505129btree_mapIiNS0_8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EEEEJEEEPT_PS1_DpOT0_.exit: ; preds = %bb.d, %bb.e
  %.sink = phi ptr [ %i.q, %bb.d ], [ %i.r, %bb.e ] ; 5 uses
  store ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE9EmptyNodeEvE10empty_node, ptr %.sink, align 8, !tbaa !89
  %i.s = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  store ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE9EmptyNodeEvE10empty_node, ptr %i.s, align 8, !tbaa !171
  %i.t = getelementptr inbounds nuw i8, ptr %.sink, i64 16
  store i64 0, ptr %i.t, align 8, !tbaa !100
  %.not3946 = icmp eq i16 %i.b, 0
  br i1 %.not3946, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6google8protobuf5Arena6CreateIN4absl12lts_202505129btree_mapIiNS0_8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EEEEJEEEPT_PS1_DpOT0_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.f

._crit_edge:                                      ; preds = %bb.f, %_ZN6google8protobuf5Arena6CreateIN4absl12lts_202505129btree_mapIiNS0_8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EEEEJEEEPT_PS1_DpOT0_.exit
  store i16 -1, ptr %i.a, align 2, !tbaa !86
  br label %_ZSt4copyIPN6google8protobuf8internal12ExtensionSet8KeyValueES5_ET0_T_S7_S6_.exit

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.pn4249 = phi i32 [ 0, %.lr.ph ], [ %.sroa.26.0.copyload.i, %bb.f ]
  %.pn4448 = phi ptr [ @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE9EmptyNodeEvE10empty_node, %.lr.ph ], [ %.sroa.05.0.copyload.i, %bb.f ]
  %.03547 = phi ptr [ %i.l, %.lr.ph ], [ %i.x, %bb.f ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.v = getelementptr inbounds nuw i8, ptr %.03547, i64 8
  %i.w = load i32, ptr %.03547, align 4, !tbaa !3
  store i32 %i.w, ptr %4, align 8, !tbaa !172
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !tbaa.struct !174
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE18insert_hint_uniqueIiJSD_EEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbESN_RKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.53") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %.sink, ptr %.pn4448, i32 %.pn4249, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4)
  %.sroa.05.0.copyload.i = load ptr, ptr %3, align 8
  %.sroa.26.0.copyload.i = load i32, ptr %.sroa.26.0..sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %i.x = getelementptr inbounds nuw i8, ptr %.03547, i64 32 ; 2 uses
  %.not39 = icmp eq ptr %i.x, %i.n
  br i1 %.not39, label %._crit_edge, label %bb.f, !llvm.loop !175

bb.g:                                             ; preds = %bb.b
  %i.y = shl nuw nsw i64 %i.i, 5                  ; 2 uses
  br i1 %i.p, label %bb.h, label %bb.i, !prof !35

bb.h:                                             ; preds = %bb.g
  %i.z = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.y) #38
  br label %_ZN6google8protobuf8internal12ExtensionSet15AllocateFlatMapEPNS0_5ArenaEt.exit

bb.i:                                             ; preds = %bb.g
  %i.aa = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.y)
  br label %_ZN6google8protobuf8internal12ExtensionSet15AllocateFlatMapEPNS0_5ArenaEt.exit

_ZN6google8protobuf8internal12ExtensionSet15AllocateFlatMapEPNS0_5ArenaEt.exit: ; preds = %bb.h, %bb.i
  %.0.i.i = phi ptr [ %i.z, %bb.h ], [ %i.aa, %bb.i ] ; 5 uses
  %i.ab = icmp samesign ugt i16 %i.b, 1
  br i1 %i.ab, label %bb.j, label %bb.k, !prof !34

bb.j:                                             ; preds = %_ZN6google8protobuf8internal12ExtensionSet15AllocateFlatMapEPNS0_5ArenaEt.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.i.i, ptr align 8 %i.l, i64 %.idx50, i1 false)
  br label %_ZSt4copyIPN6google8protobuf8internal12ExtensionSet8KeyValueES5_ET0_T_S7_S6_.exit

bb.k:                                             ; preds = %_ZN6google8protobuf8internal12ExtensionSet15AllocateFlatMapEPNS0_5ArenaEt.exit
  %i.ac = icmp eq i16 %i.b, 1
  br i1 %i.ac, label %bb.l, label %_ZSt4copyIPN6google8protobuf8internal12ExtensionSet8KeyValueES5_ET0_T_S7_S6_.exit

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !tbaa.struct !141
  br label %_ZSt4copyIPN6google8protobuf8internal12ExtensionSet8KeyValueES5_ET0_T_S7_S6_.exit

_ZSt4copyIPN6google8protobuf8internal12ExtensionSet8KeyValueES5_ET0_T_S7_S6_.exit: ; preds = %bb.l, %bb.k, %bb.j, %._crit_edge
  %.sroa.013.0 = phi ptr [ %.sink, %._crit_edge ], [ %.0.i.i, %bb.j ], [ %.0.i.i, %bb.k ], [ %.0.i.i, %bb.l ]
  %i.ad = load i16, ptr %0, align 8, !tbaa !99    ; 2 uses
  %.not40 = icmp eq i16 %i.ad, 0
  br i1 %.not40, label %_ZN6google8protobuf5Arena17ReturnArrayMemoryEPvm.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt4copyIPN6google8protobuf8internal12ExtensionSet8KeyValueES5_ET0_T_S7_S6_.exit
  %i.ae = icmp eq ptr %1, null
  %i.af = zext i16 %i.ad to i64                   ; 2 uses
  %i.ag = shl nuw nsw i64 %i.af, 5                ; 3 uses
  br i1 %i.ae, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @_ZdaPvm(ptr noundef %i.l, i64 noundef %i.ag) #35
  br label %_ZN6google8protobuf5Arena17ReturnArrayMemoryEPvm.exit

bb.o:                                             ; preds = %bb.m
  %i.ah = call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !176
  %i.ak = load i64, ptr %1, align 8, !tbaa !179
  %i.al = icmp eq i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.p, label %_ZN6google8protobuf5Arena17ReturnArrayMemoryEPvm.exit, !prof !34

bb.p:                                             ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.an = load ptr, ptr %i.am, align 16, !tbaa !206 ; 5 uses
  %i.ao = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ag, i1 true)
  %i.ap = sub nuw nsw i64 59, %i.ao               ; 2 uses
  %i.aq = load i8, ptr %i.an, align 8, !tbaa !207 ; 3 uses
  %i.ar = zext i8 %i.aq to i64                    ; 2 uses
  %.not.i.i.i = icmp samesign ult i64 %i.ap, %i.ar
  br i1 %.not.i.i.i, label %bb.t, label %bb.q, !prof !34

bb.q:                                             ; preds = %bb.p
  %i.as = shl nuw nsw i64 %i.af, 2                ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 48 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !208 ; 2 uses
  %i.av = icmp ugt i8 %i.aq, 1
  br i1 %i.av, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i, label %bb.r, !prof !34

bb.r:                                             ; preds = %bb.q
  %i.aw = icmp eq i8 %i.aq, 1
  br i1 %i.aw, label %bb.s, label %.lr.ph.preheader.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !209
  store ptr %i.ax, ptr %i.l, align 8, !tbaa !209
  br label %.lr.ph.preheader.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i: ; preds = %bb.q
  %.idx.i.i.i = shl nuw nsw i64 %i.ar, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.l, ptr align 8 %i.au, i64 %.idx.i.i.i, i1 false)
  %.pre.i.i.i = load i8, ptr %i.an, align 8, !tbaa !207
  %i.ay = zext i8 %.pre.i.i.i to i64              ; 2 uses
  %.not4.i.i.i.i.i.i = icmp samesign eq i64 %i.as, %i.ay
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i, %bb.s, %bb.r
  %i.az = phi i64 [ %i.ay, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i ], [ 1, %bb.s ], [ 0, %bb.r ]
  %.idx24.i.i.i = shl nuw nsw i64 %i.az, 3        ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx24.i.i.i
  %gepdiff.i.i.i = sub nsw i64 %i.ag, %.idx24.i.i.i
  call void @llvm.memset.p0.i64(ptr align 8 %i.ba, i8 0, i64 %gepdiff.i.i.i, i1 false), !tbaa !209
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i
  store ptr %i.l, ptr %i.at, align 8, !tbaa !208
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.as, i64 64)
  %i.bb = trunc nuw nsw i64 %.sroa.speculated.i.i.i to i8
  store i8 %i.bb, ptr %i.an, align 8, !tbaa !207
end_hunk_0
