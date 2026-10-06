Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/cord?download=true
inline.NumInlined: 1757
inline.NumDeleted: 506
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZNK4absl12lts_202605264Cord19CopyToArraySlowPathEPc:bb.a
_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i: ; preds = %bb.x
  %.pre.i.i.i = load i64, ptr %i.l, align 8, !tbaa !81
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i: ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i, %bb.y
  %i.eg = phi i64 [ %i.cq, %bb.y ], [ %.pre.i.i.i, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i ]
  %.lcssa12.sink.i.i.i.i = phi ptr [ %i.da, %bb.y ], [ %i.dx, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i.i = phi i64 [ %i.ef, %bb.y ], [ %i.eb, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i ]
  %i.eh = getelementptr inbounds nuw i8, ptr %.lcssa12.sink.i.i.i.i, i64 16
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.lcssa.sink.i.i.i.i
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !39 ; 5 uses
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !31 ; 2 uses
  %i.el = sub i64 %i.eg, %i.ek                    ; 2 uses
  store i64 %i.el, ptr %i.l, align 8, !tbaa !81
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  %i.en = load i8, ptr %i.em, align 4, !tbaa !32  ; 2 uses
  %i.eo = icmp eq i8 %i.en, 1
  br i1 %i.eo, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !82
  %i.er = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !42 ; 2 uses
  %.phi.trans.insert.i.i.i.i6 = getelementptr inbounds nuw i8, ptr %i.es, i64 12
  %.pre.i.i.i.i7 = load i8, ptr %.phi.trans.insert.i.i.i.i6, align 4, !tbaa !32
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i
  %i.et = phi i8 [ %.pre.i.i.i.i7, %bb.z ], [ %i.en, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i ]
  %.010.i.i.i.i = phi ptr [ %i.es, %bb.z ], [ %i.ej, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i = phi i64 [ %i.eq, %bb.z ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i ]
  %i.eu = icmp ugt i8 %i.et, 5
  br i1 %i.eu, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ev = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.ew = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !33
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i

_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i: ; preds = %bb.ac, %bb.ab
  %.pn.i.i.i.i = phi ptr [ %i.ev, %bb.ab ], [ %i.ex, %bb.ac ]
  %.sroa.3.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 %.0.i.i.i.i
  %.pre28.pre = load i64, ptr %i.k, align 8, !tbaa !77
  br label %_ZN4absl12lts_202605264Cord13ChunkIterator12AdvanceBtreeEv.exit.i

_ZN4absl12lts_202605264Cord13ChunkIterator12AdvanceBtreeEv.exit.i: ; preds = %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i, %bb.u
  %.pre28 = phi i64 [ %.pre28.pre, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ %i.ct, %bb.u ]
  %i.ey = phi i64 [ %i.el, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ 0, %bb.u ]
  %.sroa.0.0.i.i.i = phi i64 [ %i.ek, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ 0, %bb.u ] ; 2 uses
  %.sroa.3.0.i.i.i = phi ptr [ %.sroa.3.0.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ null, %bb.u ] ; 2 uses
  store i64 %.sroa.0.0.i.i.i, ptr %3, align 8, !tbaa !86
  store ptr %.sroa.3.0.i.i.i, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !88
  br label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit

_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i: ; preds = %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i, %bb.t
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %3, i8 0, i64 16, i1 false)
  br label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit

_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit: ; preds = %_ZN4absl12lts_202605264Cord13ChunkIterator12AdvanceBtreeEv.exit.i, %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i
  %i.ez = phi i64 [ %i.ct, %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i ], [ %.pre28, %_ZN4absl12lts_202605264Cord13ChunkIterator12AdvanceBtreeEv.exit.i ] ; 2 uses
  %i.fa = phi i64 [ %i.cq, %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i ], [ %i.ey, %_ZN4absl12lts_202605264Cord13ChunkIterator12AdvanceBtreeEv.exit.i ]
  %.sroa.2.0.copyload.i26 = phi ptr [ null, %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i ], [ %.sroa.3.0.i.i.i, %_ZN4absl12lts_202605264Cord13ChunkIterator12AdvanceBtreeEv.exit.i ]
  %.sroa.0.0.copyload.i23 = phi i64 [ 0, %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i ], [ %.sroa.0.0.i.i.i, %_ZN4absl12lts_202605264Cord13ChunkIterator12AdvanceBtreeEv.exit.i ]
  %.not = icmp eq i64 %i.ez, 0
  br i1 %.not, label %._crit_edge, label %bb.s

bb.ad:                                            ; preds = %._crit_edge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4absl12lts_202605264Cord10GetFlatAuxEPNS0_13cord_internal7CordRepEPSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !31
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i8, ptr %i.c, align 4, !tbaa !32    ; 2 uses
  %i.e = icmp eq i8 %i.d, 2
  br i1 %i.e, label %bb.d, label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit, !prof !68

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !67   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %.pre = load i8, ptr %.phi.trans.insert, align 4, !tbaa !32
  br label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit

_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit: ; preds = %bb.c, %bb.d
  %i.h = phi i8 [ %.pre, %bb.d ], [ %i.d, %bb.c ] ; 2 uses
  %.0.i = phi ptr [ %i.g, %bb.d ], [ %0, %bb.c ]  ; 12 uses
  %i.i = icmp ugt i8 %i.h, 5
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i, i64 13
  %i.k = load i64, ptr %.0.i, align 8, !tbaa !31
  store i64 %i.k, ptr %1, align 8, !tbaa !86
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.j, ptr %.sroa.438.0..sroa_idx, align 8, !tbaa !88
  br label %.thread

bb.f:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit
  switch i8 %i.h, label %.thread [
    i8 5, label %bb.g
    i8 3, label %bb.h
    i8 1, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !33
  %i.n = load i64, ptr %.0.i, align 8, !tbaa !31
  store i64 %i.n, ptr %1, align 8, !tbaa !86
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.m, ptr %.sroa.436.0..sroa_idx, align 8, !tbaa !88
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.o = tail call noundef zeroext i1 @_ZNK4absl12lts_2026052613cord_internal12CordRepBtree6IsFlatEPSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %.0.i, ptr noundef %1)
  br label %.thread

bb.i:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !42   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.s = load i8, ptr %i.r, align 4, !tbaa !32    ; 2 uses
  %i.t = icmp ugt i8 %i.s, 5
  br i1 %i.t, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 13
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !82
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w
  %i.y = load i64, ptr %.0.i, align 8, !tbaa !31
  store i64 %i.y, ptr %1, align 8, !tbaa !86
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.x, ptr %.sroa.434.0..sroa_idx, align 8, !tbaa !88
  br label %.thread

bb.k:                                             ; preds = %bb.i
  switch i8 %i.s, label %.thread [
    i8 5, label %bb.l
    i8 3, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !33
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !82
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ac
  %i.ae = load i64, ptr %.0.i, align 8, !tbaa !31
  store i64 %i.ae, ptr %1, align 8, !tbaa !86
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.ad, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !88
  br label %.thread

bb.m:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !82
  %i.ah = load i64, ptr %.0.i, align 8, !tbaa !31
  %i.ai = tail call noundef zeroext i1 @_ZNK4absl12lts_2026052613cord_internal12CordRepBtree6IsFlatEmmPSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %i.q, i64 noundef %i.ag, i64 noundef %i.ah, ptr noundef %1)
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.f, %bb.m, %bb.l, %bb.j, %bb.h, %bb.g, %bb.e, %bb.b
  %.1 = phi i1 [ true, %bb.b ], [ true, %bb.e ], [ true, %bb.g ], [ %i.o, %bb.h ], [ false, %bb.f ], [ false, %bb.k ], [ %i.ai, %bb.m ], [ true, %bb.l ], [ true, %bb.j ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @_ZN4absl12lts_2026052614CopyCordToSpanERKNS0_4CordENS0_4SpanIcEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree writeonly captures(none) %1, i64 %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.absl::lts_20260526::Cord::ChunkIterator", align 8 ; 20 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !23      ; 5 uses
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %_ZNK4absl12lts_202605264Cord4sizeEv.exit, label %_ZNK4absl12lts_202605264Cord4sizeEv.exit.thread

_ZNK4absl12lts_202605264Cord4sizeEv.exit:         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23   ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !31   ; 3 uses
  %.not = icmp ugt i64 %i.e, %2
  br i1 %.not, label %bb.j, label %bb.g

_ZNK4absl12lts_202605264Cord4sizeEv.exit.thread:  ; preds = %bb.a
  %i.f = sext i8 %i.a to i64                      ; 2 uses
  %i.g = lshr exact i64 %i.f, 1                   ; 10 uses
  %.not33 = icmp ugt i64 %i.g, %2
  br i1 %.not33, label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread, label %_ZNK4absl12lts_202605264Cord5emptyEv.exit.i

_ZNK4absl12lts_202605264Cord5emptyEv.exit.i:      ; preds = %_ZNK4absl12lts_202605264Cord4sizeEv.exit.thread
  %i.h = icmp eq i8 %i.a, 0
  br i1 %i.h, label %_ZNK4absl12lts_202605264Cord15CopyToArrayImplEPc.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK4absl12lts_202605264Cord5emptyEv.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 6 uses
  %i.j = icmp ugt i8 %i.a, 15
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.0.copyload6.i.i.i = load i64, ptr %i.i, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -8
  %.0.copyload4.i.i.i = load i64, ptr %i.l, align 1
  store i64 %.0.copyload6.i.i.i, ptr %1, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %i.g
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -8
  store i64 %.0.copyload4.i.i.i, ptr %i.n, align 1
  br label %_ZNK4absl12lts_202605264Cord15CopyToArrayImplEPc.exit

bb.d:                                             ; preds = %bb.b
  %i.o = icmp samesign ugt i8 %i.a, 7
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.0.copyload2.i.i.i = load i32, ptr %i.i, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -4
  %.0.copyload.i.i.i = load i32, ptr %i.q, align 1
  store i32 %.0.copyload2.i.i.i, ptr %1, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.g
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -4
  store i32 %.0.copyload.i.i.i, ptr %i.s, align 1
  br label %_ZNK4absl12lts_202605264Cord15CopyToArrayImplEPc.exit

bb.f:                                             ; preds = %bb.d
  %i.t = load i8, ptr %i.i, align 1, !tbaa !23
  store i8 %i.t, ptr %1, align 1, !tbaa !23
  %i.u = lshr i64 %i.f, 2                         ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.u
  store i8 %i.w, ptr %i.x, align 1, !tbaa !23
  %i.y = getelementptr i8, ptr %0, i64 %i.g
  %i.z = load i8, ptr %i.y, align 1, !tbaa !23
  %i.aa = getelementptr i8, ptr %1, i64 %i.g
  %i.ab = getelementptr i8, ptr %i.aa, i64 -1
  store i8 %i.z, ptr %i.ab, align 1, !tbaa !23
  br label %_ZNK4absl12lts_202605264Cord15CopyToArrayImplEPc.exit

bb.g:                                             ; preds = %_ZNK4absl12lts_202605264Cord4sizeEv.exit
  tail call void @_ZNK4absl12lts_202605264Cord19CopyToArraySlowPathEPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  br label %_ZNK4absl12lts_202605264Cord15CopyToArrayImplEPc.exit

_ZNK4absl12lts_202605264Cord15CopyToArrayImplEPc.exit: ; preds = %_ZNK4absl12lts_202605264Cord5emptyEv.exit.i, %bb.c, %bb.e, %bb.f, %bb.g
  %i.ac = load i8, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.ad = trunc i8 %i.ac to i1
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK4absl12lts_202605264Cord15CopyToArrayImplEPc.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !23
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !31
  br label %_ZNK4absl12lts_202605264Cord4sizeEv.exit16

bb.i:                                             ; preds = %_ZNK4absl12lts_202605264Cord15CopyToArrayImplEPc.exit
  %i.ah = sext i8 %i.ac to i64
  %i.ai = lshr exact i64 %i.ah, 1
  br label %_ZNK4absl12lts_202605264Cord4sizeEv.exit16

bb.j:                                             ; preds = %_ZNK4absl12lts_202605264Cord4sizeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %3, i8 0, i64 40, i1 false), !alias.scope !191
  store i32 -1, ptr %i.al, align 8, !tbaa !73, !alias.scope !191
  store i64 %i.e, ptr %i.aj, align 8, !tbaa !77, !alias.scope !191
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.an = load i8, ptr %i.am, align 4, !tbaa !32, !noalias !191 ; 2 uses
  %i.ao = icmp eq i8 %i.an, 2
  br i1 %i.ao, label %bb.k, label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i, !prof !68

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !67, !noalias !191 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !32, !noalias !191
  br label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i

_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %i.ar = phi i8 [ %.pre.i.i.i.i, %bb.k ], [ %i.an, %bb.j ] ; 3 uses
  %.0.i.i.i.i.i = phi ptr [ %i.aq, %bb.k ], [ %i.d, %bb.j ] ; 10 uses
  %i.as = icmp eq i8 %i.ar, 3
  br i1 %i.as, label %bb.l, label %bb.q

bb.l:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 13
  %i.au = load i8, ptr %i.at, align 1, !tbaa !23, !noalias !191 ; 4 uses
  %i.av = zext i8 %i.au to i32
  store i32 %i.av, ptr %i.al, align 8, !tbaa !73, !alias.scope !191
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 14
  %i.ax = load i8, ptr %i.aw, align 1, !noalias !191 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 5 uses
  %i.az = zext i8 %i.au to i64                    ; 5 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.az
  store ptr %.0.i.i.i.i.i, ptr %i.ba, align 8, !tbaa !79, !alias.scope !191
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.az
  store i8 %i.ax, ptr %i.bc, align 1, !tbaa !23, !alias.scope !191
  %.018.i.i.i.i.i.i.i = zext i8 %i.ax to i64      ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.au, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.l
  %xtraiter = and i64 %i.az, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i.i.i.prol = add nsw i64 %i.az, -1 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.018.i.i.i.i.i.i.i
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !39, !noalias !191 ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !79, !alias.scope !191
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 14
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !191 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !23, !alias.scope !191
  %.0.i.i.i.i.i.i.i.prol = zext i8 %i.bi to i64   ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.i.i.unr = phi i64 [ %i.az, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.i.i.unr = phi ptr [ %.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bf, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.bk = icmp eq i8 %i.au, 1
  br i1 %i.bk, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ], [ %.021.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i.i ], [ %.01619.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i.i, i64 16
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.021.i.i.i.i.i.i.i
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !39, !noalias !191 ; 3 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !79, !alias.scope !191
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 14
  %i.bq = load i8, ptr %i.bp, align 1, !noalias !191 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !23, !alias.scope !191
  %.0.i.i.i.i.i.i.i = zext i8 %i.bq to i64
  %indvars.iv.next.i.i.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -2 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.0.i.i.i.i.i.i.i
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !39, !noalias !191 ; 3 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !79, !alias.scope !191
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 14
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !191 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !23, !alias.scope !191
  %.0.i.i.i.i.i.i.i.1 = zext i8 %i.bx to i64      ; 2 uses
  %i.bz = icmp sgt i64 %indvars.iv.i.i.i.i.i.i.i, 2
  br i1 %i.bz, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, !llvm.loop !0

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.l
  %.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i.i.i, %bb.l ], [ %.0.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ca = load ptr, ptr %i.ay, align 8, !tbaa !79, !alias.scope !191
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %.0.lcssa.i.i.i.i.i.i.i
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !39, !noalias !191 ; 5 uses
  %i.ce = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !31, !noalias !191
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !31, !noalias !191 ; 2 uses
  %i.cg = sub i64 %i.ce, %i.cf
  store i64 %i.cg, ptr %i.ak, align 8, !tbaa !81, !alias.scope !191
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.ci = load i8, ptr %i.ch, align 4, !tbaa !32, !noalias !191 ; 2 uses
  %i.cj = icmp eq i8 %i.ci, 1
  br i1 %i.cj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !82, !noalias !191
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !42, !noalias !191 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  %.pre.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i, align 4, !tbaa !32, !noalias !191
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i
  %i.co = phi i8 [ %.pre.i.i.i.i.i.i, %bb.m ], [ %i.ci, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ]
  %.010.i.i.i.i.i.i = phi ptr [ %i.cn, %bb.m ], [ %i.cd, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i = phi i64 [ %i.cl, %bb.m ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ]
  %i.cp = icmp ugt i8 %i.co, 5
  br i1 %i.cp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 13
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit

bb.p:                                             ; preds = %bb.n
  %i.cr = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !33, !noalias !191
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit

bb.q:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  %i.ct = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !31, !noalias !191
  %i.cu = icmp eq i8 %i.ar, 1
  br i1 %i.cu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !82, !noalias !191
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !42, !noalias !191 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !tbaa !32, !noalias !191
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cz = phi i8 [ %.pre.i.i.i.i.i, %bb.r ], [ %i.ar, %bb.q ]
  %.010.i.i.i.i.i = phi ptr [ %i.cy, %bb.r ], [ %.0.i.i.i.i.i, %bb.q ] ; 2 uses
  %.0.i8.i.i.i.i = phi i64 [ %i.cw, %bb.r ], [ 0, %bb.q ]
  %i.da = icmp ugt i8 %i.cz, 5
  br i1 %i.da, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.db = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 13
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread70

bb.u:                                             ; preds = %bb.s
  %i.dc = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !33, !noalias !191
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread70

_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread70: ; preds = %bb.t, %bb.u
  %.pn.i.i.i.i.i = phi ptr [ %i.db, %bb.t ], [ %i.dd, %bb.u ]
  %.sroa.3.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 %.0.i8.i.i.i.i
  br label %.lr.ph.sink.split

_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread: ; preds = %_ZNK4absl12lts_202605264Cord4sizeEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.df, i8 0, i64 32, i1 false), !alias.scope !192
  store i32 -1, ptr %i.de, align 8, !tbaa !73, !alias.scope !192
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i64 %i.g, ptr %i.dh, align 8, !tbaa !77, !alias.scope !191
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %.lr.ph.sink.split

_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit: ; preds = %bb.o, %bb.p
  %.pn.i.i.i.i.i.i = phi ptr [ %i.cq, %bb.o ], [ %i.cs, %bb.p ]
  %.sroa.3.0.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i, i64 %.0.i.i.i.i.i.i
  %.pre.pre = load i64, ptr %i.aj, align 8, !tbaa !77 ; 2 uses
  store i64 %i.cf, ptr %3, align 8, !tbaa !86, !alias.scope !191
  %.not3742 = icmp eq i64 %.pre.pre, 0
  br i1 %.not3742, label %.critedge, label %.lr.ph

.lr.ph.sink.split:                                ; preds = %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread70
  %.sink = phi i64 [ %i.ct, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread70 ], [ %i.g, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread ]
  %.ph = phi ptr [ %i.aj, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread70 ], [ %i.dh, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread ]
  %.ph82 = phi ptr [ %i.ak, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread70 ], [ %i.dg, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread ]
  %.ph83 = phi ptr [ %i.al, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread70 ], [ %i.de, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread ]
  %.ph84 = phi i64 [ %i.e, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread70 ], [ %i.g, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread ]
  %.sroa.2.0.copyload.i5169.ph = phi ptr [ %.sroa.3.0.i.i.i.i.i, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread70 ], [ %i.di, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit.thread ]
  store i64 %.sink, ptr %3, align 8, !tbaa !86, !alias.scope !191
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.sink.split, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit
  %i.dj = phi ptr [ %i.aj, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit ], [ %.ph, %.lr.ph.sink.split ] ; 2 uses
  %i.dk = phi ptr [ %i.ak, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit ], [ %.ph82, %.lr.ph.sink.split ] ; 3 uses
  %i.dl = phi ptr [ %i.al, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit ], [ %.ph83, %.lr.ph.sink.split ]
  %i.dm = phi i64 [ %.pre.pre, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit ], [ %.ph84, %.lr.ph.sink.split ]
  %.sroa.2.0.copyload.i5169 = phi ptr [ %.sroa.3.0.i.i.i.i.i.i, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit ], [ %.sroa.2.0.copyload.i5169.ph, %.lr.ph.sink.split ]
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 5 uses
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit
  %.sroa.2.0.copyload.i = phi ptr [ %.sroa.2.0.copyload.i5169, %.lr.ph ], [ %.sroa.2.0.copyload.i50.ph, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ]
  %i.dp = phi i64 [ %i.dm, %.lr.ph ], [ %.pr, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ] ; 2 uses
  %.sroa.529.044 = phi i64 [ %2, %.lr.ph ], [ %i.dr, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ] ; 2 uses
  %.sroa.026.043 = phi ptr [ %1, %.lr.ph ], [ %i.dq, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ] ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %3, align 8, !tbaa !86 ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.sroa.529.044, i64 %.sroa.0.0.copyload.i) ; 4 uses
  %.not15 = icmp eq i64 %.sroa.speculated, 0
  br i1 %.not15, label %.critedge, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.026.043, ptr align 1 %.sroa.2.0.copyload.i, i64 %.sroa.speculated, i1 false)
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.026.043, i64 %.sroa.speculated
  %i.dr = sub nuw i64 %.sroa.529.044, %.sroa.speculated
  %i.ds = sub i64 %i.dp, %.sroa.0.0.copyload.i
  store i64 %i.ds, ptr %i.dj, align 8, !tbaa !77
  %.not.i = icmp eq i64 %i.dp, %.sroa.0.0.copyload.i
  br i1 %.not.i, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dt = load i32, ptr %i.dl, align 8, !tbaa !73 ; 2 uses
  %i.du = icmp sgt i32 %i.dt, -1
  br i1 %i.du, label %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i, label %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i

_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i: ; preds = %bb.x
  %i.dv = zext nneg i32 %i.dt to i64              ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.dv
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !79
  %.not2.i = icmp eq ptr %i.dx, null
  br i1 %.not2.i, label %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i, label %bb.y

bb.y:                                             ; preds = %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i
  %i.dy = load i64, ptr %i.dk, align 8, !tbaa !81 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %_ZN4absl12lts_202605264Cord13ChunkIterator12AdvanceBtreeEv.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ea = load ptr, ptr %i.dn, align 8, !tbaa !79 ; 2 uses
  %i.eb = load i8, ptr %i.do, align 4, !tbaa !23  ; 2 uses
  %i.ec = zext i8 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 15
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !23
  %i.ef = zext i8 %i.ee to i64
  %i.eg = add nsw i64 %i.ef, -1
  %i.eh = icmp eq i64 %i.eg, %i.ec
  br i1 %i.eh, label %.preheader, label %bb.ac

.preheader:                                       ; preds = %bb.z, %.preheader
  %indvars.iv37.i.i.i.i.i = phi i32 [ %indvars.iv.next38.i.i.i.i.i, %.preheader ], [ 1, %bb.z ] ; 2 uses
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.preheader ], [ 0, %bb.z ] ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp ne i64 %indvars.iv.i.i.i.i.i, %i.dv
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i.i.i)
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 4 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv.next.i.i.i.i.i
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !79 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv.next.i.i.i.i.i
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !23
  %i.em = zext i8 %i.el to i64
  %i.en = add nuw nsw i64 %i.em, 1                ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 15
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !23
  %i.eq = zext i8 %i.ep to i64
  %i.er = icmp eq i64 %i.en, %i.eq
  %indvars.iv.next38.i.i.i.i.i = add nuw i32 %indvars.iv37.i.i.i.i.i, 1
  br i1 %i.er, label %.preheader, label %bb.aa, !llvm.loop !1

bb.aa:                                            ; preds = %.preheader
  %i.es = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv.next.i.i.i.i.i
  %i.et = trunc i64 %i.en to i8
  store i8 %i.et, ptr %i.es, align 1, !tbaa !23
  %i.eu = sext i32 %indvars.iv37.i.i.i.i.i to i64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %bb.aa
  %indvars.iv40.i.i.i.i.i = phi i64 [ %indvars.iv.next41.i.i.i.i.i, %bb.ab ], [ %i.eu, %bb.aa ] ; 2 uses
  %.017.i.i.i.i.i = phi ptr [ %i.ex, %bb.ab ], [ %i.ej, %bb.aa ]
  %.016.i.i.i.i.i = phi i64 [ %i.fb, %bb.ab ], [ %i.en, %bb.aa ]
  %i.ev = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i, i64 16
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %.016.i.i.i.i.i
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !39 ; 4 uses
  %indvars.iv.next41.i.i.i.i.i = add nsw i64 %indvars.iv40.i.i.i.i.i, -1 ; 3 uses
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %indvars.iv.next41.i.i.i.i.i
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !79
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 14
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !23  ; 2 uses
  %i.fb = zext i8 %i.fa to i64                    ; 2 uses
  %i.fc = getelementptr inbounds i8, ptr %i.do, i64 %indvars.iv.next41.i.i.i.i.i
  store i8 %i.fa, ptr %i.fc, align 1, !tbaa !23
  %i.fd = icmp sgt i64 %indvars.iv40.i.i.i.i.i, 1
  br i1 %i.fd, label %bb.ab, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i, !llvm.loop !2

bb.ac:                                            ; preds = %bb.z
  %i.fe = add i8 %i.eb, 1                         ; 2 uses
  store i8 %i.fe, ptr %i.do, align 4, !tbaa !23
  %i.ff = zext i8 %i.fe to i64
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i: ; preds = %bb.ab
  %.pre.i.i.i = load i64, ptr %i.dk, align 8, !tbaa !81
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i: ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i, %bb.ac
  %i.fg = phi i64 [ %i.dy, %bb.ac ], [ %.pre.i.i.i, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i ]
  %.lcssa12.sink.i.i.i.i = phi ptr [ %i.ea, %bb.ac ], [ %i.ex, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i.i = phi i64 [ %i.ff, %bb.ac ], [ %i.fb, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i ]
  %i.fh = getelementptr inbounds nuw i8, ptr %.lcssa12.sink.i.i.i.i, i64 16
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %.lcssa.sink.i.i.i.i
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !39 ; 5 uses
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !31 ; 2 uses
  %i.fl = sub i64 %i.fg, %i.fk
  store i64 %i.fl, ptr %i.dk, align 8, !tbaa !81
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 12
  %i.fn = load i8, ptr %i.fm, align 4, !tbaa !32  ; 2 uses
  %i.fo = icmp eq i8 %i.fn, 1
  br i1 %i.fo, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !82
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !42 ; 2 uses
  %.phi.trans.insert.i.i.i.i17 = getelementptr inbounds nuw i8, ptr %i.fs, i64 12
  %.pre.i.i.i.i18 = load i8, ptr %.phi.trans.insert.i.i.i.i17, align 4, !tbaa !32
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i
  %i.ft = phi i8 [ %.pre.i.i.i.i18, %bb.ad ], [ %i.fn, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i ]
  %.010.i.i.i.i = phi ptr [ %i.fs, %bb.ad ], [ %i.fj, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i = phi i64 [ %i.fq, %bb.ad ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i ]
  %i.fu = icmp ugt i8 %i.ft, 5
  br i1 %i.fu, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fv = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.fw = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !33
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i

_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i: ; preds = %bb.ag, %bb.af
  %.pn.i.i.i.i = phi ptr [ %i.fv, %bb.af ], [ %i.fx, %bb.ag ]
  %.sroa.3.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 %.0.i.i.i.i
  br label %_ZN4absl12lts_202605264Cord13ChunkIterator12AdvanceBtreeEv.exit.i

_ZN4absl12lts_202605264Cord13ChunkIterator12AdvanceBtreeEv.exit.i: ; preds = %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i, %bb.y
  %.sroa.0.0.i.i.i = phi i64 [ %i.fk, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ 0, %bb.y ]
  %.sroa.3.0.i.i.i = phi ptr [ %.sroa.3.0.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ null, %bb.y ]
  store i64 %.sroa.0.0.i.i.i, ptr %3, align 8, !tbaa !86
  br label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit

_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i: ; preds = %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i, %bb.x
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %3, i8 0, i64 16, i1 false)
  br label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit

_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit: ; preds = %_ZN4absl12lts_202605264Cord13ChunkIterator12AdvanceBtreeEv.exit.i, %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i
  %.sroa.2.0.copyload.i50.ph = phi ptr [ null, %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i ], [ %.sroa.3.0.i.i.i, %_ZN4absl12lts_202605264Cord13ChunkIterator12AdvanceBtreeEv.exit.i ]
  %.pr = load i64, ptr %i.dj, align 8, !tbaa !77  ; 2 uses
  %.not37 = icmp eq i64 %.pr, 0
  br i1 %.not37, label %.critedge, label %bb.v

.critedge:                                        ; preds = %bb.w, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit, %bb.v, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZNK4absl12lts_202605264Cord4sizeEv.exit16

_ZNK4absl12lts_202605264Cord4sizeEv.exit16:       ; preds = %bb.i, %bb.h, %.critedge
  %.013 = phi i64 [ %2, %.critedge ], [ %i.ag, %bb.h ], [ %i.ai, %bb.i ]
  ret i64 %.013
end_hunk_0
