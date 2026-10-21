Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/bin?download=true
inline.NumInlined: 9544
inline.NumDeleted: 2682
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 531
loop-unroll.NumUnrolled: 532
begin_hunk_0_@_ZN8LightGBM16MultiValDenseBinIhE9CopyInnerILb1ELb0EEEvPKNS_11MultiValBinEPKiiRKSt6vectorIiSaIiEE:bb.a
  %i.i = phi i32 [ %.pre, %bb.b ], [ %3, %bb.a ]  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.j = tail call i32 @OMP_NUM_THREADS()
  %i.k = add i32 %i.i, 1023
  %i.l = sdiv i32 %i.k, 1024
  %.sroa.speculated.i.i = tail call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 4 uses
  store i32 %.sroa.speculated.i.i, ptr %i.c, align 4, !tbaa !58
  %i.m = icmp sgt i32 %.sroa.speculated.i.i, 1
  br i1 %i.m, label %bb.d, label %_ZN8LightGBM9Threading9BlockInfoIiEEvT_S2_PiPS2_.exit

bb.d:                                             ; preds = %bb.c
  %i.n = add i32 %i.i, -1
  %i.o = add i32 %i.n, %.sroa.speculated.i.i
  %i.p = sdiv i32 %i.o, %.sroa.speculated.i.i
  %i.q = add nsw i32 %i.p, 31
  %i.r = sdiv i32 %i.q, 32
  %i.s = shl nsw i32 %i.r, 5
  br label %_ZN8LightGBM9Threading9BlockInfoIiEEvT_S2_PiPS2_.exit

_ZN8LightGBM9Threading9BlockInfoIiEEvT_S2_PiPS2_.exit: ; preds = %bb.c, %bb.d
  %storemerge.i.i = phi i32 [ %i.s, %bb.d ], [ %i.i, %bb.c ]
  store i32 %storemerge.i.i, ptr %i.d, align 4, !tbaa !58
  %i.t = tail call i32 @OMP_NUM_THREADS()
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.t)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZN8LightGBM16MultiValDenseBinIhE9CopyInnerILb1ELb0EEEvPKNS_11MultiValBinEPKiiRKSt6vectorIiSaIiEE.omp_outlined, ptr nonnull %i.c, ptr nonnull %i.d, ptr nonnull %0, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef %0, ...) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.b = alloca [1024 x i8], align 16             ; 7 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.c = call i32 @vsnprintf(ptr noundef nonnull %i.b, i64 noundef 1024, ptr noundef %0, ptr noundef nonnull %1) #19 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !272
  %i.e = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.d, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.b) #42 ; 0 uses
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !272
  %i.g = call i32 @fflush(ptr noundef %i.f)       ; 0 uses
  %i.h = call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !274
  %i.j = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.j, ptr %i.a, align 8, !tbaa !91
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.l = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.l, ptr %2, align 8, !tbaa !276
  %i.m = load i64, ptr %i.a, align 8, !tbaa !91
  store i64 %i.m, ptr %i.i, align 8, !tbaa !57
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.n = phi ptr [ %i.l, %.noexc ], [ %i.i, %bb.a ] ; 2 uses
  switch i64 %i.j, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.o = load i8, ptr %i.b, align 16, !tbaa !57
  store i8 %i.o, ptr %i.n, align 1, !tbaa !57
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 16 %i.b, i64 %i.j, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !91   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !277
  %i.r = load ptr, ptr %2, align 8, !tbaa !276
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #40
          to label %bb.i unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.v = load ptr, ptr %2, align 8, !tbaa !276    ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.i
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.x = load i64, ptr %i.i, align 8, !tbaa !57
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br i1 %.0, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br i1 %.0, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.h) #19
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn8 = phi { ptr, i32 } [ %.pn9, %bb.g ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM16MultiValDenseBinIhE9CopyInnerILb1ELb0EEEvPKNS_11MultiValBinEPKiiRKSt6vectorIiSaIiEE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree nonnull readnone align 8 captures(none) %7) #18 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !58     ; 2 uses
  %i.f = add nsw i32 %i.e, -1                     ; 3 uses
  %i.g = icmp sgt i32 %i.e, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 %i.f, ptr %i.b, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 1, ptr %i.c, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !58
  %i.h = load i32, ptr %0, align 4, !tbaa !58     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !58
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.f) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !58
  %i.k = load i32, ptr %i.a, align 4, !tbaa !58   ; 2 uses
  %.not44 = icmp sgt i32 %i.k, %i.j
  br i1 %.not44, label %._crit_edge45, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge43
  %i.o = phi i32 [ %i.j, %.preheader.lr.ph ], [ %i.bd, %._crit_edge43 ] ; 3 uses
  %i.p = phi i32 [ %i.k, %.preheader.lr.ph ], [ %i.bb, %._crit_edge43 ] ; 3 uses
  %.not3340 = icmp sgt i32 %i.p, %i.o
  br i1 %.not3340, label %._crit_edge43, label %.lr.ph42

.lr.ph42:                                         ; preds = %.preheader, %._crit_edge39
  %i.q = phi i32 [ %i.aa, %._crit_edge39 ], [ %i.o, %.preheader ] ; 2 uses
  %.03141 = phi i32 [ %i.ab, %._crit_edge39 ], [ %i.p, %.preheader ] ; 3 uses
  %i.r = load i32, ptr %3, align 4, !tbaa !58     ; 2 uses
  %i.s = mul nsw i32 %i.r, %.03141                ; 3 uses
  %i.t = add nsw i32 %i.s, %i.r
  %i.u = load i32, ptr %i.l, align 4, !tbaa !58
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.t, i32 %i.u) ; 2 uses
  %i.v = icmp slt i32 %i.s, %.sroa.speculated
  br i1 %i.v, label %.lr.ph38, label %._crit_edge39

.lr.ph38:                                         ; preds = %.lr.ph42
  %i.w = load i32, ptr %i.m, align 8, !tbaa !240  ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph38.split.preheader, label %._crit_edge39

.lr.ph38.split.preheader:                         ; preds = %.lr.ph38
  %i.y = sext i32 %i.s to i64
  %i.z = sext i32 %.sroa.speculated to i64
  %.pre52 = load ptr, ptr %5, align 8, !tbaa !270
  %.pre54 = load ptr, ptr %6, align 8, !tbaa !71
  br label %.lr.ph38.split

._crit_edge39.loopexit:                           ; preds = %._crit_edge
  %.pre.a = load i32, ptr %i.b, align 4, !tbaa !58
  br label %._crit_edge39

._crit_edge39:                                    ; preds = %.lr.ph38, %._crit_edge39.loopexit, %.lr.ph42
  %i.aa = phi i32 [ %i.q, %.lr.ph42 ], [ %.pre.a, %._crit_edge39.loopexit ], [ %i.q, %.lr.ph38 ] ; 3 uses
  %i.ab = add nsw i32 %.03141, 1
  %.not33.not = icmp slt i32 %.03141, %i.aa
  br i1 %.not33.not, label %.lr.ph42, label %._crit_edge43.loopexit

.lr.ph38.split:                                   ; preds = %.lr.ph38.split.preheader, %._crit_edge
  %i.ac = phi i32 [ %i.w, %.lr.ph38.split.preheader ], [ %i.al, %._crit_edge ] ; 3 uses
  %8 = phi ptr [ %.pre54, %.lr.ph38.split.preheader ], [ %12, %._crit_edge ] ; 2 uses
  %9 = phi ptr [ %.pre52, %.lr.ph38.split.preheader ], [ %13, %._crit_edge ] ; 2 uses
  %indvars.iv49 = phi i64 [ %i.y, %.lr.ph38.split.preheader ], [ %indvars.iv.next50, %._crit_edge ] ; 3 uses
  %10 = zext nneg i32 %i.ac to i64
  %11 = mul nsw i64 %indvars.iv49, %10
  %i.ad = getelementptr inbounds [4 x i8], ptr %8, i64 %indvars.iv49
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !58
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !240
  %i.ai = sext i32 %i.ah to i64
  %i.aj = mul nsw i64 %i.ai, %i.af
  %i.ak = icmp sgt i32 %i.ac, 0
  br i1 %i.ak, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %5, align 8, !tbaa !270
  %.pre53 = load ptr, ptr %6, align 8, !tbaa !71
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph38.split
  %i.al = phi i32 [ %i.aw, %._crit_edge.loopexit ], [ %i.ac, %.lr.ph38.split ]
  %12 = phi ptr [ %.pre53, %._crit_edge.loopexit ], [ %8, %.lr.ph38.split ]
  %13 = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %9, %.lr.ph38.split ]
  %indvars.iv.next50 = add nsw i64 %indvars.iv49, 1 ; 2 uses
  %i.am = icmp slt i64 %indvars.iv.next50, %i.z
  br i1 %i.am, label %.lr.ph38.split, label %._crit_edge39.loopexit, !llvm.loop !1344

.lr.ph:                                           ; preds = %.lr.ph38.split, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph38.split ] ; 3 uses
  %i.an = load ptr, ptr %5, align 8, !tbaa !270
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !60
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.aj
  %i.ar = getelementptr i8, ptr %i.aq, i64 %indvars.iv
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !57
  %i.at = load ptr, ptr %i.n, align 8, !tbaa !60
  %i.au = getelementptr i8, ptr %i.at, i64 %11
  %i.av = getelementptr i8, ptr %i.au, i64 %indvars.iv
  store i8 %i.as, ptr %i.av, align 1, !tbaa !57
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aw = load i32, ptr %i.m, align 8, !tbaa !240 ; 2 uses
  %i.ax = sext i32 %i.aw to i64
  %i.ay = icmp slt i64 %indvars.iv.next, %i.ax
  br i1 %i.ay, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !1345

._crit_edge43.loopexit:                           ; preds = %._crit_edge39
  %.pre52.a = load i32, ptr %i.a, align 4, !tbaa !58
  br label %._crit_edge43

._crit_edge43:                                    ; preds = %._crit_edge43.loopexit, %.preheader
  %i.az = phi i32 [ %i.p, %.preheader ], [ %.pre52.a, %._crit_edge43.loopexit ]
  %.lcssa = phi i32 [ %i.o, %.preheader ], [ %i.aa, %._crit_edge43.loopexit ]
  %i.ba = load i32, ptr %i.c, align 4, !tbaa !58  ; 2 uses
  %i.bb = add nsw i32 %i.ba, %i.az                ; 3 uses
  store i32 %i.bb, ptr %i.a, align 4, !tbaa !58
  %i.bc = add nsw i32 %i.ba, %.lcssa
  %i.bd = call i32 @llvm.smin.i32(i32 %i.bc, i32 %i.f) ; 3 uses
  store i32 %i.bd, ptr %i.b, align 4, !tbaa !58
  %.not = icmp sgt i32 %i.bb, %i.bd
  br i1 %.not, label %._crit_edge45, label %.preheader

._crit_edge45:                                    ; preds = %._crit_edge43, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge45, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #19

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #19

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #19

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #19

; Function Attrs: nounwind
declare !callback !279 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #20

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #20

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #21

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #16

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #22

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #23

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #24

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM16MultiValDenseBinIhE9CopyInnerILb0ELb1EEEvPKNS_11MultiValBinEPKiiRKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %2, ptr %i.a, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store ptr %1, ptr %i.b, align 8, !tbaa !270
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !238  ; 3 uses
  %i.h = tail call i32 @OMP_NUM_THREADS()
  %i.i = add i32 %i.g, 1023
  %i.j = sdiv i32 %i.i, 1024
  %.sroa.speculated.i.i = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 4 uses
  store i32 %.sroa.speculated.i.i, ptr %i.c, align 4, !tbaa !58
  %i.k = icmp sgt i32 %.sroa.speculated.i.i, 1
  br i1 %i.k, label %bb.b, label %_ZN8LightGBM9Threading9BlockInfoIiEEvT_S2_PiPS2_.exit

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %i.g, -1
  %i.m = add i32 %i.l, %.sroa.speculated.i.i
  %i.n = sdiv i32 %i.m, %.sroa.speculated.i.i
  %i.o = add nsw i32 %i.n, 31
  %i.p = sdiv i32 %i.o, 32
  %i.q = shl nsw i32 %i.p, 5
  br label %_ZN8LightGBM9Threading9BlockInfoIiEEvT_S2_PiPS2_.exit

_ZN8LightGBM9Threading9BlockInfoIiEEvT_S2_PiPS2_.exit: ; preds = %bb.a, %bb.b
  %storemerge.i.i = phi i32 [ %i.q, %bb.b ], [ %i.g, %bb.a ]
  store i32 %storemerge.i.i, ptr %i.d, align 4, !tbaa !58
  %i.r = tail call i32 @OMP_NUM_THREADS()
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.r)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZN8LightGBM16MultiValDenseBinIhE9CopyInnerILb0ELb1EEEvPKNS_11MultiValBinEPKiiRKSt6vectorIiSaIiEE.omp_outlined, ptr nonnull %i.c, ptr nonnull %i.d, ptr nonnull %0, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM16MultiValDenseBinIhE9CopyInnerILb0ELb1EEEvPKNS_11MultiValBinEPKiiRKSt6vectorIiSaIiEE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree nonnull readnone align 8 captures(none) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %7) #18 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !58     ; 2 uses
  %i.f = add nsw i32 %i.e, -1                     ; 3 uses
  %i.g = icmp sgt i32 %i.e, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 %i.f, ptr %i.b, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 1, ptr %i.c, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !58
  %i.h = load i32, ptr %0, align 4, !tbaa !58     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !58
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.f) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !58
  %i.k = load i32, ptr %i.a, align 4, !tbaa !58   ; 2 uses
  %.not50 = icmp sgt i32 %i.k, %i.j
  br i1 %.not50, label %._crit_edge51, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge49
  %i.o = phi i32 [ %i.j, %.preheader.lr.ph ], [ %i.bh, %._crit_edge49 ] ; 3 uses
  %i.p = phi i32 [ %i.k, %.preheader.lr.ph ], [ %i.bf, %._crit_edge49 ] ; 3 uses
  %.not3846 = icmp sgt i32 %i.p, %i.o
  br i1 %.not3846, label %._crit_edge49, label %.lr.ph48

.lr.ph48:                                         ; preds = %.preheader, %._crit_edge45
  %i.q = phi i32 [ %i.aa, %._crit_edge45 ], [ %i.o, %.preheader ] ; 2 uses
  %.03647 = phi i32 [ %i.ab, %._crit_edge45 ], [ %i.p, %.preheader ] ; 3 uses
  %i.r = load i32, ptr %3, align 4, !tbaa !58     ; 2 uses
  %i.s = mul nsw i32 %i.r, %.03647                ; 3 uses
  %i.t = add nsw i32 %i.s, %i.r
  %i.u = load i32, ptr %i.l, align 4, !tbaa !58
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.t, i32 %i.u) ; 2 uses
  %i.v = icmp slt i32 %i.s, %.sroa.speculated
  br i1 %i.v, label %.lr.ph44, label %._crit_edge45

.lr.ph44:                                         ; preds = %.lr.ph48
  %i.w = load i32, ptr %i.m, align 8, !tbaa !240  ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph44.split.preheader, label %._crit_edge45

.lr.ph44.split.preheader:                         ; preds = %.lr.ph44
  %i.y = sext i32 %i.s to i64
  %i.z = sext i32 %.sroa.speculated to i64
  br label %.lr.ph44.split

._crit_edge45.loopexit:                           ; preds = %._crit_edge
  %.pre = load i32, ptr %i.b, align 4, !tbaa !58
  br label %._crit_edge45

._crit_edge45:                                    ; preds = %.lr.ph44, %._crit_edge45.loopexit, %.lr.ph48
  %i.aa = phi i32 [ %i.q, %.lr.ph48 ], [ %.pre, %._crit_edge45.loopexit ], [ %i.q, %.lr.ph44 ] ; 3 uses
  %i.ab = add nsw i32 %.03647, 1
  %.not38.not = icmp slt i32 %.03647, %i.aa
  br i1 %.not38.not, label %.lr.ph48, label %._crit_edge49.loopexit

.lr.ph44.split:                                   ; preds = %.lr.ph44.split.preheader, %._crit_edge
  %i.ac = phi i32 [ %i.w, %.lr.ph44.split.preheader ], [ %i.al, %._crit_edge ] ; 3 uses
  %indvars.iv55 = phi i64 [ %i.y, %.lr.ph44.split.preheader ], [ %indvars.iv.next56, %._crit_edge ] ; 3 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = mul nsw i64 %indvars.iv55, %i.ad
  %i.af = load ptr, ptr %5, align 8, !tbaa !270
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
end_hunk_0
