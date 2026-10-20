Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/pattern_inference?download=true
inline.NumInlined: 1223
inline.NumDeleted: 587
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN21pattern_inference_cfg7collectclEP4exprj:bb.a

_ZNK6vectorIN21pattern_inference_cfg7collect5entryELb0EjE5emptyEv.exit.thread: ; preds = %_ZNK6vectorIN21pattern_inference_cfg7collect5entryELb0EjE5emptyEv.exit, %bb.e
  tail call void @_ZN21pattern_inference_cfg7collect5resetEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN21pattern_inference_cfg7collect14visit_childrenEP4exprj(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %struct._key_data, align 8          ; 6 uses
  %4 = alloca %struct._key_data, align 8          ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %trunc = trunc i32 %i.b to i16
  switch i16 %trunc, label %_ZN21pattern_inference_cfg7collect5visitEP4exprjRb.exit17 [
    i16 0, label %bb.b
    i16 2, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %.not19 = icmp eq i32 %i.d, 0
  br i1 %.not19, label %_ZN21pattern_inference_cfg7collect5visitEP4exprjRb.exit17, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.5.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.i = zext i32 %i.d to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN21pattern_inference_cfg7collect5visitEP4exprjRb.exit
  %indvars.iv = phi i64 [ %i.i, %.lr.ph ], [ %i.j, %_ZN21pattern_inference_cfg7collect5visitEP4exprjRb.exit ]
  %.01820 = phi i1 [ true, %.lr.ph ], [ %.2, %_ZN21pattern_inference_cfg7collect5visitEP4exprjRb.exit ]
  %i.j = add nsw i64 %indvars.iv, -1              ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !48   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store ptr %i.l, ptr %4, align 8, !tbaa !48
  store i32 %2, ptr %.sroa.5.0..sroa_idx4.i, align 8, !tbaa !30
  store ptr null, ptr %i.g, align 8, !tbaa !161
  %i.m = call noundef ptr @_ZNK14core_hashtableI17default_map_entryIN21pattern_inference_cfg7collect5entryEPNS2_4infoEEN9table2mapIS6_8obj_hashIS3_E10default_eqIS3_EE15entry_hash_procENSC_13entry_eq_procEE9find_coreERK9_key_dataIS3_S5_E(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.d, label %_ZN21pattern_inference_cfg7collect5visitEP4exprjRb.exit

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !152  ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !30   ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.n, i64 -8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !30
  %i.t = icmp eq i32 %i.q, %i.s
  br i1 %i.t, label %bb.f, label %_ZN6vectorIN21pattern_inference_cfg7collect5entryELb0EjE9push_backERKS2_.exit.i

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @_ZN6vectorIN21pattern_inference_cfg7collect5entryELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %.pre.i.i = load ptr, ptr %i.h, align 8, !tbaa !152 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !30
  br label %_ZN6vectorIN21pattern_inference_cfg7collect5entryELb0EjE9push_backERKS2_.exit.i

_ZN6vectorIN21pattern_inference_cfg7collect5entryELb0EjE9push_backERKS2_.exit.i: ; preds = %bb.f, %bb.e
  %i.u = phi i32 [ %.pre2.i.i, %bb.f ], [ %i.q, %bb.e ] ; 2 uses
  %i.v = phi ptr [ %.pre.i.i, %bb.f ], [ %i.n, %bb.e ] ; 2 uses
  %i.w = zext i32 %i.u to i64
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.w ; 2 uses
  store ptr %i.l, ptr %i.x, align 8, !tbaa !48
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i32 %2, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !30
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 -4
  %i.z = add i32 %i.u, 1
  store i32 %i.z, ptr %i.y, align 4, !tbaa !30
  br label %_ZN21pattern_inference_cfg7collect5visitEP4exprjRb.exit

_ZN21pattern_inference_cfg7collect5visitEP4exprjRb.exit: ; preds = %bb.c, %_ZN6vectorIN21pattern_inference_cfg7collect5entryELb0EjE9push_backERKS2_.exit.i
  %.2 = phi i1 [ false, %_ZN6vectorIN21pattern_inference_cfg7collect5entryELb0EjE9push_backERKS2_.exit.i ], [ %.01820, %bb.c ] ; 2 uses
  %.not.wide = icmp eq i64 %i.j, 0
  br i1 %.not.wide, label %_ZN21pattern_inference_cfg7collect5visitEP4exprjRb.exit17, label %bb.c, !llvm.loop !318

bb.g:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !166 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !167
  %i.ae = add i32 %i.ad, %2                       ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr %i.ab, ptr %3, align 8, !tbaa !48
  %.sroa.5.0..sroa_idx4.i10 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.ae, ptr %.sroa.5.0..sroa_idx4.i10, align 8, !tbaa !30
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.ag, align 8, !tbaa !161
  %i.ah = call noundef ptr @_ZNK14core_hashtableI17default_map_entryIN21pattern_inference_cfg7collect5entryEPNS2_4infoEEN9table2mapIS6_8obj_hashIS3_E10default_eqIS3_EE15entry_hash_procENSC_13entry_eq_procEE9find_coreERK9_key_dataIS3_S5_E(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %.not.i11 = icmp eq ptr %i.ah, null
  br i1 %.not.i11, label %bb.h, label %_ZN21pattern_inference_cfg7collect5visitEP4exprjRb.exit17

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !152 ; 4 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !30 ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.aj, i64 -8
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !30
  %i.ap = icmp eq i32 %i.am, %i.ao
  br i1 %i.ap, label %bb.j, label %_ZN6vectorIN21pattern_inference_cfg7collect5entryELb0EjE9push_backERKS2_.exit.i12

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @_ZN6vectorIN21pattern_inference_cfg7collect5entryELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ai)
  %.pre.i.i14 = load ptr, ptr %i.ai, align 8, !tbaa !152 ; 2 uses
  %.phi.trans.insert.i.i15 = getelementptr inbounds i8, ptr %.pre.i.i14, i64 -4
  %.pre2.i.i16 = load i32, ptr %.phi.trans.insert.i.i15, align 4, !tbaa !30
  br label %_ZN6vectorIN21pattern_inference_cfg7collect5entryELb0EjE9push_backERKS2_.exit.i12

_ZN6vectorIN21pattern_inference_cfg7collect5entryELb0EjE9push_backERKS2_.exit.i12: ; preds = %bb.j, %bb.i
  %i.aq = phi i32 [ %.pre2.i.i16, %bb.j ], [ %i.am, %bb.i ] ; 2 uses
  %i.ar = phi ptr [ %.pre.i.i14, %bb.j ], [ %i.aj, %bb.i ] ; 2 uses
  %i.as = zext i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %i.as ; 2 uses
  store ptr %i.ab, ptr %i.at, align 8, !tbaa !48
  %.sroa.5.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 %i.ae, ptr %.sroa.5.0..sroa_idx.i13, align 8, !tbaa !30
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 -4
  %i.av = add i32 %i.aq, 1
  store i32 %i.av, ptr %i.au, align 4, !tbaa !30
  br label %_ZN21pattern_inference_cfg7collect5visitEP4exprjRb.exit17

_ZN21pattern_inference_cfg7collect5visitEP4exprjRb.exit17: ; preds = %_ZN21pattern_inference_cfg7collect5visitEP4exprjRb.exit, %bb.b, %_ZN6vectorIN21pattern_inference_cfg7collect5entryELb0EjE9push_backERKS2_.exit.i12, %bb.g, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ true, %bb.g ], [ false, %_ZN6vectorIN21pattern_inference_cfg7collect5entryELb0EjE9push_backERKS2_.exit.i12 ], [ true, %bb.b ], [ %.2, %_ZN21pattern_inference_cfg7collect5visitEP4exprjRb.exit ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN21pattern_inference_cfg7collect14save_candidateEP4exprj(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::allocator", align 1    ; 4 uses
  %5 = alloca %struct._key_data, align 8          ; 6 uses
  %6 = alloca %struct._key_data, align 8          ; 6 uses
  %7 = alloca %"class.uint_set::iterator", align 8 ; 6 uses
  %8 = alloca %"class.uint_set::iterator", align 8 ; 7 uses
  %9 = alloca %struct._key_data, align 8          ; 6 uses
  %10 = alloca %struct._key_data, align 8         ; 6 uses
  %11 = alloca %struct._key_data, align 8         ; 6 uses
  %12 = alloca %struct._key_data, align 8         ; 6 uses
  %13 = alloca %struct._key_data, align 8         ; 6 uses
  %14 = alloca %struct._key_data, align 8         ; 6 uses
  %15 = alloca %struct._key_data, align 8         ; 6 uses
  %16 = alloca %struct._key_data, align 8         ; 6 uses
  %17 = alloca %class.uint_set, align 8           ; 9 uses
  %18 = alloca %class.uint_set, align 8           ; 9 uses
  %19 = alloca %class.uint_set, align 8           ; 7 uses
  %20 = alloca %class.uint_set, align 8           ; 7 uses
  %21 = alloca %class.uint_set, align 8           ; 12 uses
  %22 = alloca %class.uint_set, align 8           ; 11 uses
  %23 = alloca %class.inv_var_shifter, align 8    ; 9 uses
  %24 = alloca %class.obj_ref, align 8            ; 9 uses
  %25 = alloca %class.uint_set, align 8           ; 10 uses
  %26 = alloca %"class.uint_set::iterator", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %trunc = trunc i32 %i.b to i16
  switch i16 %trunc, label %bb.ck [
    i16 1, label %bb.b
    i16 0, label %bb.q
    i16 2, label %bb.bh
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  store ptr null, ptr %17, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  store ptr null, ptr %18, align 8, !tbaa !147
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !51   ; 5 uses
  %.not120 = icmp ugt i32 %2, %i.d
  br i1 %.not120, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i136, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !137
  %i.g = add i32 %i.f, %2
  %i.h = icmp ult i32 %i.d, %i.g
  br i1 %i.h, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i, label %bb.f

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i:              ; preds = %bb.c
  %i.i = sub nuw i32 %i.d, %2                     ; 2 uses
  %i.j = lshr i32 %i.i, 5                         ; 2 uses
  br label %bb.d

thread-pre-split.i.i:                             ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i
  %.pr.pre.i.i = load ptr, ptr %17, align 8, !tbaa !147
  br label %bb.d

bb.d:                                             ; preds = %thread-pre-split.i.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i
  %i.k = phi ptr [ %.pr.pre.i.i, %thread-pre-split.i.i ], [ null, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i ] ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i

_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i:          ; preds = %bb.d
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 -8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !30
  %.not301 = icmp ult i32 %i.j, %i.n
  br i1 %.not301, label %.sink.split, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i

_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i:   ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i, %bb.d
  invoke void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %thread-pre-split.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i136:           ; preds = %bb.b
  %i.o = lshr i32 %i.d, 5                         ; 2 uses
  br label %bb.e

thread-pre-split.i.i127:                          ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i134
  %.pr.pre.i.i135 = load ptr, ptr %18, align 8, !tbaa !147
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split.i.i127, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i136
  %i.p = phi ptr [ %.pr.pre.i.i135, %thread-pre-split.i.i127 ], [ null, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i136 ] ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i134, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i131

_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i131:       ; preds = %bb.e
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !30
  %.not302 = icmp ult i32 %i.o, %i.s
  br i1 %.not302, label %.sink.split, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i134

_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i134: ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i131, %bb.e
  invoke void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %thread-pre-split.i.i127 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.sink.split:                                      ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i, %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i131
  %.lcssa.sink430 = phi ptr [ %i.p, %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i131 ], [ %i.k, %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i ] ; 3 uses
  %.sink423 = phi i32 [ %i.d, %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i131 ], [ %i.i, %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i ]
  %.sink.a = phi i32 [ %i.o, %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i131 ], [ %i.j, %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i ] ; 2 uses
  %.sink428 = add nuw nsw i32 %.sink.a, 1         ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %.lcssa.sink430, i64 -4
  store i32 %.sink428, ptr %i.t, align 4, !tbaa !30
  %i.u = shl nuw nsw i32 %.sink428, 2
  %i.v = zext nneg i32 %i.u to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.lcssa.sink430, i8 0, i64 %i.v, i1 false), !tbaa !30
  %i.w = and i32 %.sink423, 31
  %i.x = shl nuw i32 1, %i.w
  %i.y = zext nneg i32 %.sink.a to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.lcssa.sink430, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !30
  %i.ab = or i32 %i.aa, %i.x
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !30
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.c
  %i.ac = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN21pattern_inference_cfg7collect4infoC2ERK8uint_setS4_j(ptr noundef nonnull align 8 dereferenceable(20) %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef 1)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  store ptr %1, ptr %16, align 8, !tbaa !48
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %2, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !30
  %i.ae = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %i.ac, ptr %i.ae, align 8, !tbaa !161
  invoke void @_ZN14core_hashtableI17default_map_entryIN21pattern_inference_cfg7collect5entryEPNS2_4infoEEN9table2mapIS6_8obj_hashIS3_E10default_eqIS3_EE15entry_hash_procENSC_13entry_eq_procEE6insertEO9_key_dataIS3_S5_E(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !153 ; 4 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !30 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !30
  %i.am = icmp eq i32 %i.aj, %i.al
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  invoke void @_ZN6vectorIPN21pattern_inference_cfg7collect4infoELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %.noexc141 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc141:                                        ; preds = %bb.k
  %.pre.i.i = load ptr, ptr %i.af, align 8, !tbaa !153 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !30
  br label %bb.l

bb.l:                                             ; preds = %.noexc141, %bb.j
  %i.an = phi i32 [ %.pre2.i.i, %.noexc141 ], [ %i.aj, %bb.j ] ; 2 uses
  %i.ao = phi ptr [ %.pre.i.i, %.noexc141 ], [ %i.ag, %bb.j ] ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -4
  %i.aq = zext i32 %i.an to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.aq
  store ptr %i.ac, ptr %i.ar, align 8, !tbaa !168
  %i.as = add i32 %i.an, 1
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !30
  %i.at = load ptr, ptr %18, align 8, !tbaa !147  ; 2 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %_ZN6vectorIjLb0EjED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.au)
          to label %_ZN6vectorIjLb0EjED2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #20
  unreachable

_ZN6vectorIjLb0EjED2Ev.exit:                      ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  %i.ax = load ptr, ptr %17, align 8, !tbaa !147  ; 2 uses
  %.not.i.i142 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i142, label %_ZN6vectorIjLb0EjED2Ev.exit143, label %bb.o

bb.o:                                             ; preds = %_ZN6vectorIjLb0EjED2Ev.exit
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ay)
          to label %_ZN6vectorIjLb0EjED2Ev.exit143 unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #20
  unreachable

_ZN6vectorIjLb0EjED2Ev.exit143:                   ; preds = %_ZN6vectorIjLb0EjED2Ev.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %bb.cl

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i134, %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i, %bb.k, %bb.h, %bb.g, %bb.f
  %lpad.loopexit.split-lp480 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6vectorIjLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  call void @_ZN6vectorIjLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %bb.cm

bb.q:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !332, !nonnull !127, !align !149
  %i.be = tail call noundef zeroext i1 @_ZNK21pattern_inference_cfg12is_forbiddenEP3app(ptr noundef nonnull align 8 dereferenceable(504) %i.bd, ptr noundef nonnull %1)
  br i1 %i.be, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  store ptr %1, ptr %15, align 8, !tbaa !48
  %.sroa.4.0..sroa_idx.i144 = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 %2, ptr %.sroa.4.0..sroa_idx.i144, align 8, !tbaa !30
  %i.bg = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr null, ptr %i.bg, align 8, !tbaa !161
  call void @_ZN14core_hashtableI17default_map_entryIN21pattern_inference_cfg7collect5entryEPNS2_4infoEEN9table2mapIS6_8obj_hashIS3_E10default_eqIS3_EE15entry_hash_procENSC_13entry_eq_procEE6insertEO9_key_dataIS3_S5_E(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %bb.cl

bb.s:                                             ; preds = %bb.q
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !46 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.t, label %.lr.ph

bb.t:                                             ; preds = %bb.s
  %i.bk = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  store ptr null, ptr %19, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  store ptr null, ptr %20, align 8, !tbaa !147
  invoke void @_ZN21pattern_inference_cfg7collect4infoC2ERK8uint_setS4_j(ptr noundef nonnull align 8 dereferenceable(20) %i.bk, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef 1)
          to label %bb.u unwind label %bb.ad

bb.u:                                             ; preds = %bb.t
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  store ptr %1, ptr %14, align 8, !tbaa !48
  %.sroa.4.0..sroa_idx.i145 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %2, ptr %.sroa.4.0..sroa_idx.i145, align 8, !tbaa !30
  %i.bm = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !161
  invoke void @_ZN14core_hashtableI17default_map_entryIN21pattern_inference_cfg7collect5entryEPNS2_4infoEEN9table2mapIS6_8obj_hashIS3_E10default_eqIS3_EE15entry_hash_procENSC_13entry_eq_procEE6insertEO9_key_dataIS3_S5_E(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %bb.v unwind label %bb.ad

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !153 ; 4 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 -4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !30 ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %i.bo, i64 -8
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !30
  %i.bu = icmp eq i32 %i.br, %i.bt
  br i1 %i.bu, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  invoke void @_ZN6vectorIPN21pattern_inference_cfg7collect4infoELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bn)
          to label %.noexc152 unwind label %bb.ad

.noexc152:                                        ; preds = %bb.x
  %.pre.i.i148 = load ptr, ptr %i.bn, align 8, !tbaa !153 ; 2 uses
  %.phi.trans.insert.i.i149 = getelementptr inbounds i8, ptr %.pre.i.i148, i64 -4
  %.pre2.i.i150 = load i32, ptr %.phi.trans.insert.i.i149, align 4, !tbaa !30
  br label %bb.y

bb.y:                                             ; preds = %.noexc152, %bb.w
  %i.bv = phi i32 [ %.pre2.i.i150, %.noexc152 ], [ %i.br, %bb.w ] ; 2 uses
  %i.bw = phi ptr [ %.pre.i.i148, %.noexc152 ], [ %i.bo, %bb.w ] ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -4
  %i.by = zext i32 %i.bv to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.by
  store ptr %i.bk, ptr %i.bz, align 8, !tbaa !168
  %i.ca = add i32 %i.bv, 1
  store i32 %i.ca, ptr %i.bx, align 4, !tbaa !30
  %i.cb = load ptr, ptr %20, align 8, !tbaa !147  ; 2 uses
  %.not.i.i154 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i154, label %_ZN6vectorIjLb0EjED2Ev.exit155, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.cc)
          to label %_ZN6vectorIjLb0EjED2Ev.exit155 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  call void @__clang_call_terminate(ptr %i.ce) #20
  unreachable
end_hunk_0
begin_hunk_1_@_ZN21pattern_inference_cfg7collect14save_candidateEP4exprj:bb.a
  store ptr null, ptr %24, align 8, !tbaa !205
  %i.jk = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %i.jj, ptr %i.jk, align 8, !tbaa !57
  invoke void @_ZN15inv_var_shifterclEP4exprjR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(148) %23, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %24)
          to label %bb.ay unwind label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %i.jl = load ptr, ptr %i.bc, align 8, !tbaa !332, !nonnull !127, !align !149
  %i.jm = load ptr, ptr %24, align 8, !tbaa !205
  invoke void @_ZN21pattern_inference_cfg13add_candidateEP3appRK8uint_setj(ptr noundef nonnull align 8 dereferenceable(504) %i.jl, ptr noundef %i.jm, ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef %i.hn)
          to label %bb.az unwind label %bb.bb

bb.az:                                            ; preds = %bb.ay
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %24) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  call void @_ZN13rewriter_coreD2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %23) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  br label %_ZNK8uint_set5emptyEv.exit225

.loopexit.split-lp310.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i171, %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i195, %bb.ae, %_ZNK9table2mapI17default_map_entryIN21pattern_inference_cfg7collect5entryEPNS2_4infoEE8obj_hashIS3_E10default_eqIS3_EE4findERKS3_RS5_.exit, %bb.af, %.thread287, %bb.ar, %bb.ao, %bb.an, %._crit_edge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp310

bb.ba:                                            ; preds = %bb.aw
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.bb:                                            ; preds = %bb.ay, %bb.ax
  %i.jo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %24) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  call void @_ZN13rewriter_coreD2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %23) #19
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.pn113 = phi { ptr, i32 } [ %i.jo, %bb.bb ], [ %i.jn, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  br label %.loopexit.split-lp310

_ZNK8uint_set5emptyEv.exit225:                    ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i213, %.lr.ph452, %.split.i, %_ZNK3app13get_decl_kindEv.exit, %bb.am, %bb.au, %bb.az, %bb.av
  %i.jp = load ptr, ptr %22, align 8, !tbaa !147  ; 2 uses
  %.not.i.i227 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i227, label %_ZN6vectorIjLb0EjED2Ev.exit228, label %bb.bd

bb.bd:                                            ; preds = %_ZNK8uint_set5emptyEv.exit225
  %i.jq = getelementptr inbounds i8, ptr %i.jp, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.jq)
          to label %_ZN6vectorIjLb0EjED2Ev.exit228 unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jr = landingpad { ptr, i32 }
          catch ptr null
  %i.js = extractvalue { ptr, i32 } %i.jr, 0
  call void @__clang_call_terminate(ptr %i.js) #20
  unreachable

_ZN6vectorIjLb0EjED2Ev.exit228:                   ; preds = %_ZNK8uint_set5emptyEv.exit225, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  %i.jt = load ptr, ptr %21, align 8, !tbaa !147  ; 2 uses
  %.not.i.i229 = icmp eq ptr %i.jt, null
  br i1 %.not.i.i229, label %_ZN6vectorIjLb0EjED2Ev.exit230, label %bb.bf

bb.bf:                                            ; preds = %_ZN6vectorIjLb0EjED2Ev.exit228
  %i.ju = getelementptr inbounds i8, ptr %i.jt, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ju)
          to label %_ZN6vectorIjLb0EjED2Ev.exit230 unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.jv = landingpad { ptr, i32 }
          catch ptr null
  %i.jw = extractvalue { ptr, i32 } %i.jv, 0
  call void @__clang_call_terminate(ptr %i.jw) #20
  unreachable

_ZN6vectorIjLb0EjED2Ev.exit230:                   ; preds = %_ZN6vectorIjLb0EjED2Ev.exit228, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  br label %bb.cl

.loopexit.split-lp310:                            ; preds = %.loopexit.split-lp310.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bc
  %.pn113.pn.pn.pn = phi { ptr, i32 } [ %.pn113, %bb.bc ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp310.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6vectorIjLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  call void @_ZN6vectorIjLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  br label %bb.cm

bb.bh:                                            ; preds = %bb.a
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !167 ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !166
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.kc = add i32 %i.jy, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  store ptr %i.ka, ptr %10, align 8, !tbaa !48
  %.sroa.4275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %i.kc, ptr %.sroa.4275.0..sroa_idx, align 8, !tbaa !30
  %i.kd = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr null, ptr %i.kd, align 8, !tbaa !161
  %i.ke = call noundef ptr @_ZNK14core_hashtableI17default_map_entryIN21pattern_inference_cfg7collect5entryEPNS2_4infoEEN9table2mapIS6_8obj_hashIS3_E10default_eqIS3_EE15entry_hash_procENSC_13entry_eq_procEE9find_coreERK9_key_dataIS3_S5_E(ptr noundef nonnull align 8 dereferenceable(24) %i.kb, ptr noundef nonnull align 8 dereferenceable(24) %10) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %.not298 = icmp eq ptr %i.ke, null
  br i1 %.not298, label %_ZNK9table2mapI17default_map_entryIN21pattern_inference_cfg7collect5entryEPNS2_4infoEE8obj_hashIS3_E10default_eqIS3_EE4findERKS3_RS5_.exit231.thread, label %_ZNK9table2mapI17default_map_entryIN21pattern_inference_cfg7collect5entryEPNS2_4infoEE8obj_hashIS3_E10default_eqIS3_EE4findERKS3_RS5_.exit231

_ZNK9table2mapI17default_map_entryIN21pattern_inference_cfg7collect5entryEPNS2_4infoEE8obj_hashIS3_E10default_eqIS3_EE4findERKS3_RS5_.exit231: ; preds = %bb.bh
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 24
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !161 ; 4 uses
  %.not = icmp eq ptr %i.kg, null
  br i1 %.not, label %_ZNK9table2mapI17default_map_entryIN21pattern_inference_cfg7collect5entryEPNS2_4infoEE8obj_hashIS3_E10default_eqIS3_EE4findERKS3_RS5_.exit231.thread, label %bb.bi

_ZNK9table2mapI17default_map_entryIN21pattern_inference_cfg7collect5entryEPNS2_4infoEE8obj_hashIS3_E10default_eqIS3_EE4findERKS3_RS5_.exit231.thread: ; preds = %bb.bh, %_ZNK9table2mapI17default_map_entryIN21pattern_inference_cfg7collect5entryEPNS2_4infoEE8obj_hashIS3_E10default_eqIS3_EE4findERKS3_RS5_.exit231
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store ptr %1, ptr %9, align 8, !tbaa !48
  %.sroa.4.0..sroa_idx.i232 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %2, ptr %.sroa.4.0..sroa_idx.i232, align 8, !tbaa !30
  %i.kh = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr null, ptr %i.kh, align 8, !tbaa !161
  call void @_ZN14core_hashtableI17default_map_entryIN21pattern_inference_cfg7collect5entryEPNS2_4infoEEN9table2mapIS6_8obj_hashIS3_E10default_eqIS3_EE15entry_hash_procENSC_13entry_eq_procEE6insertEO9_key_dataIS3_S5_E(ptr noundef nonnull align 8 dereferenceable(24) %i.kb, ptr noundef nonnull align 8 dereferenceable(24) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.cl

bb.bi:                                            ; preds = %_ZNK9table2mapI17default_map_entryIN21pattern_inference_cfg7collect5entryEPNS2_4infoEE8obj_hashIS3_E10default_eqIS3_EE4findERKS3_RS5_.exit231
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  store ptr null, ptr %25, align 8, !tbaa !147
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.ki, ptr %8, align 8, !tbaa !208
  %.pr.pre.i.i233 = load ptr, ptr %i.ki, align 8, !tbaa !147 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i32 0, ptr %i.kj, align 8, !tbaa !209
  %i.kk = icmp eq ptr %.pr.pre.i.i233, null
  br i1 %i.kk, label %_ZN8uint_set8iteratorC2ERKS_b.exit.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.kl = getelementptr inbounds i8, ptr %.pr.pre.i.i233, i64 -4
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !30
  %i.kn = shl i32 %i.km, 5
  br label %_ZN8uint_set8iteratorC2ERKS_b.exit.i

_ZN8uint_set8iteratorC2ERKS_b.exit.i:             ; preds = %bb.bj, %bb.bi
  %.0.i.i4.i.i = phi i32 [ %i.kn, %bb.bj ], [ 0, %bb.bi ]
  %i.ko = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 %.0.i.i4.i.i, ptr %i.ko, align 4, !tbaa !210
  invoke void @_ZN8uint_set8iterator4scanEv(ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.bk unwind label %.loopexit.split-lp314.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bk:                                            ; preds = %_ZN8uint_set8iteratorC2ERKS_b.exit.i
  %.fca.0.load.i = load ptr, ptr %8, align 8
  %.fca.1.load.i = load i64, ptr %i.kj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  store ptr %.fca.0.load.i, ptr %26, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 4 uses
  store i64 %.fca.1.load.i, ptr %i.kp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.ki, ptr %7, align 8, !tbaa !208
  %.pr.pre.i.i235 = load ptr, ptr %i.ki, align 8, !tbaa !147 ; 2 uses
  %i.kq = icmp eq ptr %.pr.pre.i.i235, null
  br i1 %i.kq, label %_ZN8uint_set8iteratorC2ERKS_b.exit.i236, label %_ZNK8uint_set12get_max_elemEv.exit.thread6.i.i

_ZNK8uint_set12get_max_elemEv.exit.thread6.i.i:   ; preds = %bb.bk
  %i.kr = getelementptr inbounds i8, ptr %.pr.pre.i.i235, i64 -4
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !30
  %i.kt = shl i32 %i.ks, 5
  br label %_ZN8uint_set8iteratorC2ERKS_b.exit.i236

_ZN8uint_set8iteratorC2ERKS_b.exit.i236:          ; preds = %_ZNK8uint_set12get_max_elemEv.exit.thread6.i.i, %bb.bk
  %.sink.i = phi i32 [ %i.kt, %_ZNK8uint_set12get_max_elemEv.exit.thread6.i.i ], [ 0, %bb.bk ] ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 %.sink.i, ptr %i.ku, align 8, !tbaa !209
  %i.kv = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %.sink.i, ptr %i.kv, align 4, !tbaa !210
  invoke void @_ZN8uint_set8iterator4scanEv(ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.bl unwind label %.loopexit.split-lp314.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bl:                                            ; preds = %_ZN8uint_set8iteratorC2ERKS_b.exit.i236
  %.fca.1.load.i239 = load i64, ptr %i.ku, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.sroa.4.8.extract.trunc = trunc i64 %.fca.1.load.i239 to i32
  br label %_ZN8uint_set8iteratorppEv.exit

_ZN8uint_set8iteratorppEv.exit:                   ; preds = %bb.bz, %bb.bl
  %i.kw = load i32, ptr %i.kp, align 8, !tbaa !209 ; 4 uses
  %.not299 = icmp eq i32 %i.kw, %.sroa.4.8.extract.trunc
  br i1 %.not299, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %_ZN8uint_set8iteratorppEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  %i.kx = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24)
          to label %bb.ca unwind label %bb.ci     ; 3 uses

bb.bn:                                            ; preds = %_ZN8uint_set8iteratorppEv.exit
  %.not104 = icmp ult i32 %i.kw, %i.jy
  br i1 %.not104, label %bb.bz, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ky = sub nuw i32 %i.kw, %i.jy                ; 2 uses
  %i.kz = lshr i32 %i.ky, 5                       ; 4 uses
  %i.la = load ptr, ptr %25, align 8, !tbaa !147  ; 4 uses
  %i.lb = icmp eq ptr %i.la, null
  br i1 %i.lb, label %thread-pre-split.i.i245.preheader, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i242

_ZNK6vectorIjLb0EjE4sizeEv.exit.i242:             ; preds = %bb.bo
  %i.lc = getelementptr inbounds i8, ptr %i.la, i64 -4
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !30 ; 2 uses
  %.not.i243 = icmp ult i32 %i.kz, %i.ld
  br i1 %.not.i243, label %_ZN8uint_set6insertEj.exit257, label %thread-pre-split.i.i245.preheader

thread-pre-split.i.i245.preheader:                ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i242, %bb.bo
  %.ph500 = phi ptr [ null, %bb.bo ], [ %i.la, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i242 ]
  %.0.i16.i.i248.ph = phi i32 [ 0, %bb.bo ], [ %i.ld, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i242 ] ; 2 uses
  %.ph501 = add nuw nsw i32 %i.kz, 1              ; 3 uses
  br label %thread-pre-split.i.i245

thread-pre-split.i.i245:                          ; preds = %thread-pre-split.i.i245.backedge, %thread-pre-split.i.i245.preheader
  %i.le = phi ptr [ %.ph500, %thread-pre-split.i.i245.preheader ], [ %.be, %thread-pre-split.i.i245.backedge ] ; 7 uses
  %i.lf = icmp eq ptr %i.le, null
  br i1 %i.lf, label %bb.bp, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i249

_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i249:       ; preds = %thread-pre-split.i.i245
  %i.lg = getelementptr inbounds i8, ptr %i.le, i64 -8
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !30
  %.not514 = icmp ult i32 %i.kz, %i.lh
  br i1 %.not514, label %bb.by, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i253

bb.bp:                                            ; preds = %thread-pre-split.i.i245
  %i.li = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16)
          to label %.noexc272 unwind label %.loopexit.split-lp314.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc272:                                        ; preds = %bb.bp
  store i32 2, ptr %i.li, align 4, !tbaa !30
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 4
  store i32 0, ptr %i.lj, align 4, !tbaa !30
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 8 ; 2 uses
  store ptr %i.lk, ptr %25, align 8, !tbaa !147
  br label %thread-pre-split.i.i245.backedge

thread-pre-split.i.i245.backedge:                 ; preds = %.noexc272, %.noexc273
  %.be = phi ptr [ %i.mq, %.noexc273 ], [ %i.lk, %.noexc272 ]
  br label %thread-pre-split.i.i245, !llvm.loop !4

_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i253: ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i249
  %i.ll = getelementptr inbounds i8, ptr %i.le, i64 -8 ; 2 uses
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !30 ; 3 uses
  %i.ln = mul i32 %i.lm, 3
  %i.lo = add i32 %i.ln, 1
  %i.lp = lshr i32 %i.lo, 1                       ; 3 uses
  %i.lq = shl i32 %i.lp, 2
  %i.lr = add i32 %i.lq, 8                        ; 2 uses
  %.not.i271 = icmp ugt i32 %i.lp, %i.lm
  br i1 %.not.i271, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i253
  %i.ls = shl i32 %i.lm, 2
  %i.lt = add i32 %i.ls, 8
  %.not27.i = icmp ugt i32 %i.lr, %i.lt
  br i1 %.not27.i, label %bb.bw, label %bb.br

bb.br:                                            ; preds = %bb.bq, %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i253
  %i.lu = call ptr @__cxa_allocate_exception(i64 40) #19 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.bs unwind label %bb.bv

bb.bs:                                            ; preds = %bb.br
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.lu, align 8, !tbaa !183
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 8 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 24 ; 3 uses
  store ptr %i.lw, ptr %i.lv, align 8, !tbaa !212
  %i.lx = load ptr, ptr %3, align 8, !tbaa !215   ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.lz = icmp eq ptr %i.lx, %i.ly
  br i1 %i.lz, label %bb.bt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.bt:                                            ; preds = %bb.bs
  %i.ma = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !216 ; 3 uses
  %i.mc = icmp ult i64 %i.mb, 16
  call void @llvm.assume(i1 %i.mc)
  %i.md = add nuw nsw i64 %i.mb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.lw, ptr noundef nonnull align 8 dereferenceable(1) %i.ly, i64 %i.md, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.bs
  store ptr %i.lx, ptr %i.lv, align 8, !tbaa !215
  %i.me = load i64, ptr %i.ly, align 8, !tbaa !217
  store i64 %i.me, ptr %i.lw, align 8, !tbaa !217
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !216
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.bt
  %i.mf = phi i64 [ %i.mb, %bb.bt ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.mg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  store i64 %i.mf, ptr %i.mh, align 8, !tbaa !216
  store ptr %i.ly, ptr %3, align 8, !tbaa !215
  store i64 0, ptr %i.mg, align 8, !tbaa !216
  store i8 0, ptr %i.ly, align 8, !tbaa !217
  invoke void @__cxa_throw(ptr nonnull %i.lu, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #21
          to label %bb.bx unwind label %bb.bu

bb.bu:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.mi = landingpad { ptr, i32 }
          cleanup
  %i.mj = load ptr, ptr %3, align 8, !tbaa !215   ; 2 uses
  %i.mk = icmp eq ptr %i.mj, %i.ly
  br i1 %i.mk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.bu
  %i.ml = load i64, ptr %i.ly, align 8, !tbaa !217
  %i.mm = add i64 %i.ml, 1
  call void @_ZdlPvm(ptr noundef %i.mj, i64 noundef %i.mm) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %.body

bb.bv:                                            ; preds = %bb.br
  %i.mn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @__cxa_free_exception(ptr %i.lu) #19
  br label %.body

bb.bw:                                            ; preds = %bb.bq
  %i.mo = zext i32 %i.lr to i64
  %i.mp = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.ll, i64 noundef %i.mo)
          to label %.noexc273 unwind label %.loopexit.split-lp314.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc273:                                        ; preds = %bb.bw
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 8 ; 2 uses
  store ptr %i.mq, ptr %25, align 8, !tbaa !147
  store i32 %i.lp, ptr %i.mp, align 4, !tbaa !30
  br label %thread-pre-split.i.i245.backedge

bb.bx:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

bb.by:                                            ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i249
  %i.mr = getelementptr inbounds i8, ptr %i.le, i64 -4
  store i32 %.ph501, ptr %i.mr, align 4, !tbaa !30
  %.not1218.i.i250 = icmp eq i32 %.0.i16.i.i248.ph, %.ph501
  br i1 %.not1218.i.i250, label %_ZN8uint_set6insertEj.exit257, label %.lr.ph.preheader.i.i251

.lr.ph.preheader.i.i251:                          ; preds = %bb.by
  %i.ms = zext nneg i32 %.ph501 to i64
  %i.mt = zext nneg i32 %.0.i16.i.i248.ph to i64  ; 2 uses
  %i.mu = getelementptr [4 x i8], ptr %i.le, i64 %i.mt
  %i.mv = sub nsw i64 %i.ms, %i.mt
  %i.mw = shl nsw i64 %i.mv, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.mu, i8 0, i64 %i.mw, i1 false), !tbaa !30
  br label %_ZN8uint_set6insertEj.exit257

_ZN8uint_set6insertEj.exit257:                    ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i242, %bb.by, %.lr.ph.preheader.i.i251
  %i.mx = phi ptr [ %i.le, %.lr.ph.preheader.i.i251 ], [ %i.le, %bb.by ], [ %i.la, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i242 ]
  %i.my = and i32 %i.ky, 31
  %i.mz = shl nuw i32 1, %i.my
  %i.na = zext nneg i32 %i.kz to i64
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %i.na ; 2 uses
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !30
  %i.nd = or i32 %i.nc, %i.mz
  store i32 %i.nd, ptr %i.nb, align 4, !tbaa !30
  %.pre = load i32, ptr %i.kp, align 8, !tbaa !209
  br label %bb.bz

.loopexit.split-lp314.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bw, %bb.bp, %bb.bz, %_ZN8uint_set8iteratorC2ERKS_b.exit.i236, %_ZN8uint_set8iteratorC2ERKS_b.exit.i
  %lpad.loopexit.split-lp506 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bz:                                            ; preds = %_ZN8uint_set6insertEj.exit257, %bb.bn
  %i.ne = phi i32 [ %.pre, %_ZN8uint_set6insertEj.exit257 ], [ %i.kw, %bb.bn ]
  %i.nf = add i32 %i.ne, 1
  store i32 %i.nf, ptr %i.kp, align 8, !tbaa !209
  invoke void @_ZN8uint_set8iterator4scanEv(ptr noundef nonnull align 8 dereferenceable(16) %26)
          to label %_ZN8uint_set8iteratorppEv.exit unwind label %.loopexit.split-lp314.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.body:                                            ; preds = %.loopexit.split-lp314.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn.pn = phi { ptr, i32 } [ %i.mn, %bb.bv ], [ %i.mi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %lpad.loopexit.split-lp506, %.loopexit.split-lp314.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  br label %bb.cj

bb.ca:                                            ; preds = %bb.bm
  %i.ng = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  %i.nh = load i32, ptr %i.ng, align 8, !tbaa !173
  %i.ni = add i32 %i.nh, 1
  invoke void @_ZN21pattern_inference_cfg7collect4infoC2ERK8uint_setS4_j(ptr noundef nonnull align 8 dereferenceable(20) %i.kx, ptr noundef nonnull align 8 dereferenceable(8) %i.kg, ptr noundef nonnull align 8 dereferenceable(8) %25, i32 noundef %i.ni)
          to label %bb.cb unwind label %bb.ci

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store ptr %1, ptr %6, align 8, !tbaa !48
  %.sroa.4.0..sroa_idx.i259 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %2, ptr %.sroa.4.0..sroa_idx.i259, align 8, !tbaa !30
  %i.nj = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.kx, ptr %i.nj, align 8, !tbaa !161
  invoke void @_ZN14core_hashtableI17default_map_entryIN21pattern_inference_cfg7collect5entryEPNS2_4infoEEN9table2mapIS6_8obj_hashIS3_E10default_eqIS3_EE15entry_hash_procENSC_13entry_eq_procEE6insertEO9_key_dataIS3_S5_E(ptr noundef nonnull align 8 dereferenceable(24) %i.kb, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.cc unwind label %bb.ci

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !153 ; 4 uses
  %i.nm = icmp eq ptr %i.nl, null
  br i1 %i.nm, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.nn = getelementptr inbounds i8, ptr %i.nl, i64 -4
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !30 ; 2 uses
  %i.np = getelementptr inbounds i8, ptr %i.nl, i64 -8
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !30
  %i.nr = icmp eq i32 %i.no, %i.nq
  br i1 %i.nr, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  invoke void @_ZN6vectorIPN21pattern_inference_cfg7collect4infoELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.nk)
          to label %.noexc266 unwind label %bb.ci

.noexc266:                                        ; preds = %bb.ce
end_hunk_1
