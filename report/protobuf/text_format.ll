inline.NumInlined: 5149
inline.NumDeleted: 1899
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES7_lET_SC_SC_SC_T1_SD_T0_SD_:bb.a
  br i1 %i.w, label %bb.p, label %bb.q, !prof !135

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %0, i64 %i.v, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit37

bb.q:                                             ; preds = %bb.o
  %i.x = icmp eq i64 %i.v, 8
  br i1 %i.x, label %bb.r, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit37

bb.r:                                             ; preds = %bb.q
  %i.y = load ptr, ptr %0, align 8, !tbaa !506
  store ptr %i.y, ptr %5, align 8, !tbaa !506
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit37

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit37: ; preds = %bb.p, %bb.q, %bb.r
  %i.z = ptrtoint ptr %2 to i64
  %i.aa = sub i64 %i.z, %i.t                      ; 3 uses
  %i.ab = icmp sgt i64 %i.aa, 8
  br i1 %i.ab, label %bb.s, label %bb.t, !prof !135

bb.s:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit37
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %0, ptr align 8 %1, i64 %i.aa, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

bb.t:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit37
  %i.ac = icmp eq i64 %i.aa, 8
  br i1 %i.ac, label %bb.u, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

bb.u:                                             ; preds = %bb.t
  %i.ad = load ptr, ptr %1, align 8, !tbaa !506
  store ptr %i.ad, ptr %0, align 8, !tbaa !506
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit: ; preds = %bb.s, %bb.t, %bb.u
  %i.ae = ashr exact i64 %i.v, 3                  ; 3 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.v, label %bb.w, !prof !135

bb.v:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %5, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPPKN6google8protobuf7MessageEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit

bb.w:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit
  %i.ai = icmp eq i64 %i.v, 8
  br i1 %i.ai, label %bb.x, label %_ZSt13move_backwardIPPKN6google8protobuf7MessageEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit

bb.x:                                             ; preds = %bb.w
  %i.aj = getelementptr inbounds i8, ptr %2, i64 -8
  %i.ak = load ptr, ptr %5, align 8, !tbaa !506
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !506
  br label %_ZSt13move_backwardIPPKN6google8protobuf7MessageEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit

_ZSt13move_backwardIPPKN6google8protobuf7MessageEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit: ; preds = %bb.v, %bb.w, %bb.x
  %i.al = sub nsw i64 0, %i.ae
  %i.am = getelementptr inbounds [8 x i8], ptr %2, i64 %i.al
  br label %bb.z

bb.y:                                             ; preds = %bb.m
  %i.an = tail call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS7_SaIS7_EEEEEET_SD_SD_SD_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2)
  br label %bb.z

bb.z:                                             ; preds = %bb.n, %bb.b, %bb.y, %_ZSt13move_backwardIPPKN6google8protobuf7MessageEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit, %_ZSt4moveIPPKN6google8protobuf7MessageEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit
  %.sroa.032.0 = phi ptr [ %i.s, %_ZSt4moveIPPKN6google8protobuf7MessageEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit ], [ %i.an, %bb.y ], [ %i.am, %_ZSt13move_backwardIPPKN6google8protobuf7MessageEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit ], [ %0, %bb.b ], [ %2, %bb.n ]
  ret ptr %.sroa.032.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051213AbslStringifyINS0_16strings_internal13StringifySinkEEEvRT_NS0_3HexE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %1, i64 %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = lshr i64 %1, 55
  %i.e = and i64 %i.d, 510
  %i.f = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051216numbers_internal9kHexTableE, i64 %i.e
  %i.g = load i16, ptr %i.f, align 2
  store i16 %i.g, ptr %i.c, align 16
  %i.h = lshr i64 %1, 47
  %i.i = and i64 %i.h, 510
  %i.j = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051216numbers_internal9kHexTableE, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %i.l = load i16, ptr %i.j, align 2
  store i16 %i.l, ptr %i.k, align 2
  %i.m = lshr i64 %1, 39
  %i.n = and i64 %i.m, 510
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051216numbers_internal9kHexTableE, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.q = load i16, ptr %i.o, align 2
  store i16 %i.q, ptr %i.p, align 4
  %i.r = lshr i64 %1, 31
  %i.s = and i64 %i.r, 510
  %i.t = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051216numbers_internal9kHexTableE, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %i.v = load i16, ptr %i.t, align 2
  store i16 %i.v, ptr %i.u, align 2
  %i.w = lshr i64 %1, 23
  %i.x = and i64 %i.w, 510
  %i.y = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051216numbers_internal9kHexTableE, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.aa = load i16, ptr %i.y, align 2
  store i16 %i.aa, ptr %i.z, align 8
  %i.ab = lshr i64 %1, 15
  %i.ac = and i64 %i.ab, 510
  %i.ad = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051216numbers_internal9kHexTableE, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.af = load i16, ptr %i.ad, align 2
  store i16 %i.af, ptr %i.ae, align 2
  %i.ag = lshr i64 %1, 7
  %i.ah = and i64 %i.ag, 510
  %i.ai = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051216numbers_internal9kHexTableE, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.ak = load i16, ptr %i.ai, align 2
  store i16 %i.ak, ptr %i.aj, align 4
  %i.al = shl i64 %1, 1
  %i.am = and i64 %i.al, 510
  %i.an = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051216numbers_internal9kHexTableE, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  %i.ap = load i16, ptr %i.an, align 2
  store i16 %i.ap, ptr %i.ao, align 2
  %i.aq = or i64 %1, 1
  %i.ar = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.aq, i1 true)
  %.neg8.lhs.trunc.i = trunc nuw nsw i64 %i.ar to i32
  %.neg8910.i = lshr i32 %.neg8.lhs.trunc.i, 2
  %narrow.i = sub nuw nsw i32 16, %.neg8910.i
  %i.as = zext nneg i32 %narrow.i to i64          ; 3 uses
  %i.at = and i64 %2, 255                         ; 2 uses
  %.not = icmp samesign ugt i64 %i.at, %i.as
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.6.8.extract.shift = lshr i64 %2, 8
  %.sroa.6.8.extract.trunc = trunc i64 %.sroa.6.8.extract.shift to i8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 %.sroa.6.8.extract.trunc, i64 16, i1 false)
  %i.au = sub nsw i64 0, %i.as
  %i.av = getelementptr inbounds i8, ptr %i.b, i64 %i.au
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.aw, i8 %.sroa.6.8.extract.trunc, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink19 = phi i64 [ %i.at, %bb.b ], [ %i.as, %bb.a ] ; 2 uses
  %i.ax = sub nsw i64 0, %.sink19
  %i.ay = getelementptr inbounds i8, ptr %i.b, i64 %i.ax
  call void @_ZN4absl12lts_2025051216strings_internal13StringifySink6AppendESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sink19, ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret void
}

declare void @_ZN4absl12lts_2025051216strings_internal13StringifySink6AppendESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(32), i64, ptr) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv(ptr noundef nonnull align 8 dereferenceable(2504) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2496 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !634  ; 2 uses
  %i.c = icmp ugt i64 %i.b, 311
  br i1 %i.c, label %vector.ph, label %bb.b

vector.ph:                                        ; preds = %bb.a
  %.pre.i = load i64, ptr %0, align 8, !tbaa !243
  %vector.recur.init = insertelement <2 x i64> poison, i64 %.pre.i, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph ], [ %wide.load, %vector.body ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %wide.load = load <2 x i64>, ptr %i.f, align 8, !tbaa !243 ; 4 uses
  %i.g = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.h = and <2 x i64> %i.g, splat (i64 -2147483648)
  %i.i = and <2 x i64> %wide.load, splat (i64 2147483646)
  %i.j = or disjoint <2 x i64> %i.i, %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 1248
  %wide.load9 = load <2 x i64>, ptr %i.k, align 8, !tbaa !243
  %i.l = lshr exact <2 x i64> %i.j, splat (i64 1)
  %i.m = xor <2 x i64> %i.l, %wide.load9
  %i.n = and <2 x i64> %wide.load, splat (i64 1)
  %i.o = icmp eq <2 x i64> %i.n, zeroinitializer
  %i.p = select <2 x i1> %i.o, <2 x i64> zeroinitializer, <2 x i64> splat (i64 -5403634167711393303)
  %i.q = xor <2 x i64> %i.m, %i.p
  store <2 x i64> %i.q, ptr %i.d, align 8, !tbaa !243
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.r = icmp eq i64 %index.next, 156
  br i1 %i.r, label %vector.ph10, label %vector.body, !llvm.loop !971

vector.ph10:                                      ; preds = %vector.body
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %.pre24.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !243
  %vector.recur.init13 = insertelement <2 x i64> poison, i64 %.pre24.i, i64 1
  br label %vector.body11

vector.body11:                                    ; preds = %vector.body11, %vector.ph10
  %index12 = phi i64 [ 0, %vector.ph10 ], [ %index.next17, %vector.body11 ] ; 3 uses
  %vector.recur14 = phi <2 x i64> [ %vector.recur.init13, %vector.ph10 ], [ %wide.load15, %vector.body11 ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index12 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1248
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index12
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1256
  %wide.load15 = load <2 x i64>, ptr %i.v, align 8, !tbaa !243 ; 5 uses
  %i.w = shufflevector <2 x i64> %vector.recur14, <2 x i64> %wide.load15, <2 x i32> <i32 1, i32 2>
  %i.x = and <2 x i64> %i.w, splat (i64 -2147483648)
  %i.y = and <2 x i64> %wide.load15, splat (i64 2147483646)
  %i.z = or disjoint <2 x i64> %i.y, %i.x
  %wide.load16 = load <2 x i64>, ptr %i.s, align 8, !tbaa !243
  %i.aa = lshr exact <2 x i64> %i.z, splat (i64 1)
  %i.ab = xor <2 x i64> %i.aa, %wide.load16
  %i.ac = and <2 x i64> %wide.load15, splat (i64 1)
  %i.ad = icmp eq <2 x i64> %i.ac, zeroinitializer
  %i.ae = select <2 x i1> %i.ad, <2 x i64> zeroinitializer, <2 x i64> splat (i64 -5403634167711393303)
  %i.af = xor <2 x i64> %i.ab, %i.ae
  store <2 x i64> %i.af, ptr %i.t, align 8, !tbaa !243
  %index.next17 = add nuw i64 %index12, 2         ; 2 uses
  %i.ag = icmp eq i64 %index.next17, 154
  br i1 %i.ag, label %.preheader.i, label %vector.body11, !llvm.loop !972

.preheader.i:                                     ; preds = %vector.body11
  %vector.recur.extract = extractelement <2 x i64> %wide.load15, i64 1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2480
  %i.ai = and i64 %vector.recur.extract, -2147483648
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2488
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !243 ; 2 uses
  %i.al = and i64 %i.ak, 2147483646
  %i.am = or disjoint i64 %i.al, %i.ai
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !243
  %i.ap = lshr exact i64 %i.am, 1
  %i.aq = xor i64 %i.ap, %i.ao
  %i.ar = and i64 %i.ak, 1
  %.not19.i = icmp eq i64 %i.ar, 0
  %i.as = select i1 %.not19.i, i64 0, i64 -5403634167711393303
  %i.at = xor i64 %i.aq, %i.as
  store i64 %i.at, ptr %i.ah, align 8, !tbaa !243
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 2488 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !243
  %i.aw = and i64 %i.av, -2147483648
  %i.ax = load i64, ptr %0, align 8, !tbaa !243   ; 2 uses
  %i.ay = and i64 %i.ax, 2147483646
  %i.az = or disjoint i64 %i.ay, %i.aw
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !243
  %i.bc = lshr exact i64 %i.az, 1
  %i.bd = xor i64 %i.bc, %i.bb
  %i.be = and i64 %i.ax, 1
  %.not.i = icmp eq i64 %i.be, 0
  %i.bf = select i1 %.not.i, i64 0, i64 -5403634167711393303
  %i.bg = xor i64 %i.bd, %i.bf
  store i64 %i.bg, ptr %i.au, align 8, !tbaa !243
  br label %bb.b

bb.b:                                             ; preds = %.preheader.i, %bb.a
  %i.bh = phi i64 [ 0, %.preheader.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.bi = add nuw nsw i64 %i.bh, 1
  store i64 %i.bi, ptr %i.a, align 8, !tbaa !634
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bh
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !243 ; 2 uses
  %i.bl = lshr i64 %i.bk, 29
  %i.bm = and i64 %i.bl, 22906492245
  %i.bn = xor i64 %i.bm, %i.bk                    ; 2 uses
  %i.bo = shl i64 %i.bn, 17
  %i.bp = and i64 %i.bo, 8202884508482404352
  %i.bq = xor i64 %i.bp, %i.bn                    ; 2 uses
  %i.br = shl i64 %i.bq, 37
  %i.bs = and i64 %i.br, -2270628950310912
  %i.bt = xor i64 %i.bs, %i.bq                    ; 2 uses
  %i.bu = lshr i64 %i.bt, 43
  %i.bv = xor i64 %i.bu, %i.bt
  ret i64 %i.bv
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #36

attributes #0 = { mustprogress norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { cold nofree noreturn }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #32 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nobuiltin nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #36 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #37 = { nounwind }
attributes #38 = { builtin allocsize(0) }
attributes #39 = { noreturn nounwind }
attributes #40 = { builtin nounwind }
attributes #41 = { noreturn }
attributes #42 = { cold }
attributes #43 = { cold nounwind }
attributes #44 = { nounwind willreturn memory(none) }
attributes #45 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"_ZTSN6google8protobuf8internal14ReflectionModeE", !5, i64 0}
!9 = !{!10, !11, i64 4}
!10 = !{!"_ZTSN6google8protobuf10TextFormat7PrinterE", !4, i64 0, !11, i64 4, !11, i64 5, !11, i64 6, !11, i64 7, !11, i64 8, !11, i64 9, !12, i64 12, !11, i64 16, !11, i64 17, !11, i64 18, !13, i64 24, !14, i64 32, !22, i64 40, !30, i64 72, !35, i64 104}
!11 = !{!"bool", !5, i64 0}
!12 = !{!"_ZTSN6google8protobuf8internal18FieldReporterLevelE", !5, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"_ZTSSt10unique_ptrIKN6google8protobuf10TextFormat21FastFieldValuePrinterESt14default_deleteIS4_EE", !15, i64 0}
!15 = !{!"_ZTSSt15__uniq_ptr_dataIKN6google8protobuf10TextFormat21FastFieldValuePrinterESt14default_deleteIS4_ELb1ELb1EE", !16, i64 0}
!16 = !{!"_ZTSSt15__uniq_ptr_implIKN6google8protobuf10TextFormat21FastFieldValuePrinterESt14default_deleteIS4_EE", !17, i64 0}
!17 = !{!"_ZTSSt5tupleIJPKN6google8protobuf10TextFormat21FastFieldValuePrinterESt14default_deleteIS4_EEE", !18, i64 0}
!18 = !{!"_ZTSSt11_Tuple_implILm0EJPKN6google8protobuf10TextFormat21FastFieldValuePrinterESt14default_deleteIS4_EEE", !19, i64 0}
!19 = !{!"_ZTSSt10_Head_baseILm0EPKN6google8protobuf10TextFormat21FastFieldValuePrinterELb0EE", !20, i64 0}
!20 = !{!"p1 _ZTSN6google8protobuf10TextFormat21FastFieldValuePrinterE", !21, i64 0}
!21 = !{!"any pointer", !5, i64 0}
!22 = !{!"_ZTSN4absl12lts_2025051213flat_hash_mapIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS3_10TextFormat21FastFieldValuePrinterESt14default_deleteISA_EENS0_18container_internal6HashEqIS6_vE4HashENSG_2EqESaISt4pairIKS6_SD_EEEE", !23, i64 0}
!23 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEEE", !24, i64 0}
!24 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEEE", !25, i64 0}
!25 = !{!"_ZTSN4absl12lts_2025051218container_internal15CompressedTupleIJNS1_12CommonFieldsENS1_6HashEqIPKN6google8protobuf15FieldDescriptorEvE4HashENSA_2EqESaIcEEEE", !26, i64 0}
!26 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple19CompressedTupleImplINS1_15CompressedTupleIJNS1_12CommonFieldsENS1_6HashEqIPKN6google8protobuf15FieldDescriptorEvE4HashENSC_2EqESaIcEEEESt16integer_sequenceImJLm0ELm1ELm2ELm3EEELb1EEE", !27, i64 0}
!27 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple7StorageINS1_12CommonFieldsELm0ELb0EEE", !28, i64 0}
!28 = !{!"_ZTSN4absl12lts_2025051218container_internal12CommonFieldsE", !13, i64 0, !29, i64 8, !5, i64 16}
!29 = !{!"_ZTSN4absl12lts_2025051218container_internal13HashtableSizeE", !13, i64 0}
!30 = !{!"_ZTSN4absl12lts_2025051213flat_hash_mapIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS3_10TextFormat14MessagePrinterESt14default_deleteISA_EENS0_18container_internal6HashEqIS6_vE4HashENSG_2EqESaISt4pairIKS6_SD_EEEE", !31, i64 0}
!31 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEEE", !32, i64 0}
!32 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEEE", !33, i64 0}
!33 = !{!"_ZTSN4absl12lts_2025051218container_internal15CompressedTupleIJNS1_12CommonFieldsENS1_6HashEqIPKN6google8protobuf10DescriptorEvE4HashENSA_2EqESaIcEEEE", !34, i64 0}
!34 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple19CompressedTupleImplINS1_15CompressedTupleIJNS1_12CommonFieldsENS1_6HashEqIPKN6google8protobuf10DescriptorEvE4HashENSC_2EqESaIcEEEESt16integer_sequenceImJLm0ELm1ELm2ELm3EEELb1EEE", !27, i64 0}
!35 = !{!"p1 _ZTSN6google8protobuf10TextFormat6FinderE", !21, i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"vtable pointer", !6, i64 0}
!38 = !{!20, !20, i64 0}
!39 = distinct !{ptr @_ZN6google8protobuf10TextFormat7Printer24SetUseUtf8StringEscapingEb, ptr @_ZN6google8protobuf10TextFormat7Printer27SetDefaultFieldValuePrinterEPKNS1_21FastFieldValuePrinterE, null, null, null}
!40 = !{!10, !11, i64 18}
!41 = !{!10, !11, i64 8}
!42 = !{!10, !11, i64 9}
!43 = !{!10, !12, i64 12}
!44 = !{!45, !46, i64 0}
!45 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !46, i64 0}
!46 = !{!"p1 omnipotent char", !21, i64 0}
!47 = !{!48, !13, i64 8}
!48 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !45, i64 0, !13, i64 8, !5, i64 16}
!49 = !{!48, !46, i64 0}
!50 = !{!5, !5, i64 0}
!51 = distinct !{ptr @_ZN6google8protobuf10TextFormat7Printer27SetDefaultFieldValuePrinterEPKNS1_21FastFieldValuePrinterE, null, null, null}
!52 = !{!28, !13, i64 0}
!53 = !{!29, !13, i64 0}
!54 = !{!55, !55, i64 0}
!55 = !{!"p1 _ZTSN6google8protobuf10TextFormat14MessagePrinterE", !21, i64 0}
!56 = distinct !{ptr @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEED2Ev, null, null, null, null, null, null, null, null, null, null}
!57 = !{!58, !59, i64 0}
!58 = !{!"_ZTSZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE13destroy_slotsEvEUlPKNS1_6ctrl_tEPvE_", !59, i64 0}
!59 = !{!"p1 _ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEEE", !21, i64 0}
end_hunk_0
