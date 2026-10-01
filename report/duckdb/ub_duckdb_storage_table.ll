Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_storage_table?download=true
inline.NumInlined: 22010
inline.NumDeleted: 8913
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 651
loop-unroll.NumUnrolled: 661
begin_hunk_0_@_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_10interval_tEEEvv:bb.a
  %i.d = icmp eq i8 %i.c, 21
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.179, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i8 21, ptr %i.a, align 1, !tbaa !1900
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeERKS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.h = load ptr, ptr %1, align 8, !tbaa !227    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #37
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_8string_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.17", align 1 ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !1264
  %i.d = icmp eq i8 %i.c, -56
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.179, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i8 -56, ptr %i.a, align 1, !tbaa !1900
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeERKS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.h = load ptr, ptr %1, align 8, !tbaa !227    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #37
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdbL17MergeValidityLoopERNS_10UpdateInfoERNS_6VectorES1_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(73) %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, i64 noundef %7) #1 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 16 uses
  %i.b = alloca [2048 x i32], align 16            ; 23 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !959    ; 3 uses
  %.val = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !943
  %i.h = shl i64 %i.g, 11
  %i.i = add i64 %i.h, %7                         ; 13 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.l = load i32, ptr %i.k, align 4, !tbaa !938
  %i.m = zext i32 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 2                  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.n ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.r = load i32, ptr %i.q, align 4, !tbaa !938
  %i.s = zext i32 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 2                  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %.not.i = icmp ne i64 %5, 0                     ; 2 uses
  br i1 %.not.i, label %.lr.ph80.i, label %..preheader_crit_edge.i

..preheader_crit_edge.i:                          ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !932
  %.pre117.i = zext i32 %.pre.i to i64
  br label %.preheader.i

.lr.ph80.i:                                       ; preds = %bb.a
  %i.v = load ptr, ptr %6, align 8, !tbaa !305    ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.x = load i32, ptr %i.w, align 8, !tbaa !932
  %i.y = zext i32 %i.x to i64                     ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = zext i32 %i.aa to i64                   ; 3 uses
  %.not.i.i.i = icmp eq ptr %.val, null
  br label %bb.b

.preheader.i:                                     ; preds = %bb.k, %..preheader_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre117.i, %..preheader_crit_edge.i ], [ %i.y, %bb.k ] ; 3 uses
  %.046.lcssa.i = phi i64 [ 0, %..preheader_crit_edge.i ], [ %.248.i, %bb.k ] ; 4 uses
  %.072.lcssa.i = phi i64 [ 0, %..preheader_crit_edge.i ], [ %.274.i, %bb.k ] ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ad = icmp ult i64 %.072.lcssa.i, %.pre-phi.i
  br i1 %i.ad, label %.lr.ph85.preheader.i, label %._crit_edge.i

.lr.ph85.preheader.i:                             ; preds = %.preheader.i
  %scevgep.i = getelementptr i8, ptr %i.a, i64 %.046.lcssa.i
  %i.ae = getelementptr i8, ptr %2, i64 %.072.lcssa.i
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.t
  %scevgep107.i = getelementptr i8, ptr %i.af, i64 88
  %i.ag = sub nuw nsw i64 %.pre-phi.i, %.072.lcssa.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep.i, ptr align 1 %scevgep107.i, i64 %i.ag, i1 false), !tbaa !1213
  %i.ah = shl i64 %.046.lcssa.i, 2
  %scevgep108.i = getelementptr i8, ptr %i.b, i64 %i.ah
  %i.ai = shl nuw nsw i64 %.072.lcssa.i, 2
  %i.aj = getelementptr i8, ptr %2, i64 %i.ai
  %scevgep109.i = getelementptr i8, ptr %i.aj, i64 88
  %i.ak = shl nuw nsw i64 %i.ag, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep108.i, ptr align 4 %scevgep109.i, i64 %i.ak, i1 false), !tbaa !206
  %i.al = add i64 %.046.lcssa.i, %.pre-phi.i
  %i.am = sub i64 %i.al, %.072.lcssa.i
  br label %._crit_edge.i

bb.b:                                             ; preds = %bb.k, %.lr.ph80.i
  %.079.i = phi i64 [ 0, %.lr.ph80.i ], [ %.2.i, %bb.k ] ; 4 uses
  %.07278.i = phi i64 [ 0, %.lr.ph80.i ], [ %.274.i, %bb.k ] ; 3 uses
  %.07577.i = phi i64 [ 0, %.lr.ph80.i ], [ %i.ce, %bb.k ] ; 3 uses
  %.04676.i = phi i64 [ 0, %.lr.ph80.i ], [ %.248.i, %bb.k ] ; 2 uses
  br i1 %.not.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.07577.i
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !206
  %i.ap = zext i32 %i.ao to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %bb.c, %bb.b
  %i.aq = phi i64 [ %i.ap, %bb.c ], [ %.07577.i, %bb.b ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !218
  %i.at = sub i64 %i.as, %i.i                     ; 7 uses
  %i.au = icmp ult i64 %.07278.i, %i.y
  br i1 %i.au, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, %bb.d
  %.17371.i = phi i64 [ %i.be, %bb.d ], [ %.07278.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 6 uses
  %.14770.i = phi i64 [ %i.bc, %bb.d ], [ %.04676.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 7 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.17371.i
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !206 ; 3 uses
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %i.ay = icmp ugt i64 %i.at, %i.ax
  br i1 %i.ay, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 %.17371.i
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !1213, !range !315, !noundef !248
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.14770.i
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !1213
  %i.bc = add nuw nsw i64 %.14770.i, 1            ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.14770.i
  store i32 %i.aw, ptr %i.bd, align 4, !tbaa !206
  %i.be = add i64 %.17371.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.be, %i.y
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !4629

bb.e:                                             ; preds = %.lr.ph.i
  %i.bf = icmp eq i64 %i.at, %i.ax
  br i1 %i.bf, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %i.u, i64 %.17371.i
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !1213, !range !315, !noundef !248
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 %.14770.i
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !1213
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.14770.i
  store i32 %i.aw, ptr %i.bj, align 4, !tbaa !206
  %i.bk = add nuw nsw i64 %.17371.i, 1
  br label %bb.k

.critedge.i:                                      ; preds = %bb.d, %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %.14766.i = phi i64 [ %.14770.i, %bb.e ], [ %.04676.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.bc, %bb.d ] ; 3 uses
  %.17363.i = phi i64 [ %.17371.i, %bb.e ], [ %.07278.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.y, %bb.d ]
  %i.bl = icmp ult i64 %.079.i, %i.ab
  br i1 %i.bl, label %.lr.ph74.i, label %.critedge2.i

.lr.ph74.i:                                       ; preds = %.critedge.i, %bb.g
  %.173.i = phi i64 [ %i.bq, %bb.g ], [ %.079.i, %.critedge.i ] ; 5 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.173.i
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !206
  %i.bo = zext i32 %i.bn to i64                   ; 2 uses
  %i.bp = icmp ugt i64 %i.at, %i.bo
  br i1 %i.bp, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph74.i
  %i.bq = add i64 %.173.i, 1                      ; 2 uses
  %exitcond105.not.i = icmp eq i64 %i.bq, %i.ab
  br i1 %exitcond105.not.i, label %.critedge2.i, label %.lr.ph74.i, !llvm.loop !4630

bb.h:                                             ; preds = %.lr.ph74.i
  %i.br = icmp eq i64 %i.at, %i.bo
  br i1 %i.br, label %bb.i, label %.critedge2.i

bb.i:                                             ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %i.o, i64 %.173.i
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !1213, !range !315, !noundef !248
  br label %_ZN6duckdb20ExtractValidityEntry7ExtractIbNS_12ValidityMaskEEET_PKT0_m.exit.i

.critedge2.i:                                     ; preds = %bb.g, %bb.h, %.critedge.i
  %.169.i = phi i64 [ %.173.i, %bb.h ], [ %.079.i, %.critedge.i ], [ %i.ab, %bb.g ] ; 2 uses
  br i1 %.not.i.i.i, label %_ZN6duckdb20ExtractValidityEntry7ExtractIbNS_12ValidityMaskEEET_PKT0_m.exit.i, label %bb.j

bb.j:                                             ; preds = %.critedge2.i
  %i.bu = lshr i64 %i.at, 6
  %i.bv = and i64 %i.at, 63
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.bu
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !218
  %i.by = lshr i64 %i.bx, %i.bv
  %i.bz = trunc i64 %i.by to i8
  %i.ca = and i8 %i.bz, 1
  br label %_ZN6duckdb20ExtractValidityEntry7ExtractIbNS_12ValidityMaskEEET_PKT0_m.exit.i

_ZN6duckdb20ExtractValidityEntry7ExtractIbNS_12ValidityMaskEEET_PKT0_m.exit.i: ; preds = %bb.j, %.critedge2.i, %bb.i
  %.0.i.i.sink.i = phi i8 [ %i.bt, %bb.i ], [ %i.ca, %bb.j ], [ 1, %.critedge2.i ]
  %.168.i = phi i64 [ %.173.i, %bb.i ], [ %.169.i, %bb.j ], [ %.169.i, %.critedge2.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.14766.i
  store i8 %.0.i.i.sink.i, ptr %i.cb, align 1, !tbaa !1213
  %i.cc = trunc i64 %i.at to i32
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.14766.i
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !206
  br label %bb.k

bb.k:                                             ; preds = %_ZN6duckdb20ExtractValidityEntry7ExtractIbNS_12ValidityMaskEEET_PKT0_m.exit.i, %bb.f
  %.14765.i = phi i64 [ %.14770.i, %bb.f ], [ %.14766.i, %_ZN6duckdb20ExtractValidityEntry7ExtractIbNS_12ValidityMaskEEET_PKT0_m.exit.i ]
  %.274.i = phi i64 [ %i.bk, %bb.f ], [ %.17363.i, %_ZN6duckdb20ExtractValidityEntry7ExtractIbNS_12ValidityMaskEEET_PKT0_m.exit.i ] ; 2 uses
  %.2.i = phi i64 [ %.079.i, %bb.f ], [ %.168.i, %_ZN6duckdb20ExtractValidityEntry7ExtractIbNS_12ValidityMaskEEET_PKT0_m.exit.i ]
  %.248.i = add i64 %.14765.i, 1                  ; 2 uses
  %i.ce = add nuw i64 %.07577.i, 1                ; 2 uses
  %exitcond106.not.i = icmp eq i64 %i.ce, %5
  br i1 %exitcond106.not.i, label %.preheader.i, label %bb.b, !llvm.loop !4631

._crit_edge.i:                                    ; preds = %.lr.ph85.preheader.i, %.preheader.i
  %.349.lcssa.i = phi i64 [ %.046.lcssa.i, %.preheader.i ], [ %i.am, %.lr.ph85.preheader.i ] ; 3 uses
  %i.cf = trunc i64 %.349.lcssa.i to i32
  store i32 %i.cf, ptr %i.ac, align 8, !tbaa !932
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.u, ptr nonnull align 16 %i.a, i64 %.349.lcssa.i, i1 false)
  %i.cg = shl i64 %.349.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull align 16 %i.b, i64 %i.cg, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !932 ; 2 uses
  %i.cj = zext i32 %i.ci to i64                   ; 3 uses
  %.val.i = load ptr, ptr %6, align 8             ; 11 uses
  %i.ck = icmp ne i32 %i.ci, 0
  %i.cl = and i1 %.not.i, %i.ck
  br i1 %i.cl, label %.lr.ph.i.i, label %.preheader1.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i
  %.not.i.i77.i = icmp eq ptr %.val.i, null
  br label %bb.m

.preheader1.i.i:                                  ; preds = %bb.w, %._crit_edge.i
  %.4.i = phi i64 [ 0, %._crit_edge.i ], [ %.6.i, %bb.w ] ; 14 uses
  %.054.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.155.i.i, %bb.w ] ; 4 uses
  %.0.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.1.i.i, %bb.w ] ; 19 uses
  %i.cm = icmp ult i64 %.0.lcssa.i.i, %5
  br i1 %i.cm, label %.lr.ph9.i.i, label %.preheader.i.i

.lr.ph9.i.i:                                      ; preds = %.preheader1.i.i
  %.not.i61.i.i = icmp eq ptr %.val.i, null       ; 2 uses
  %i.cn = load ptr, ptr %i.e, align 8, !tbaa !305 ; 3 uses
  %.not.i.i63.i.i = icmp eq ptr %i.cn, null       ; 3 uses
  %i.co = load ptr, ptr %i.d, align 8, !tbaa !267 ; 4 uses
  %.not.i.i.i65.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i65.i.i, label %.lr.ph9.split.us.i.i, label %.lr.ph9.split.i.i

.lr.ph9.split.us.i.i:                             ; preds = %.lr.ph9.i.i
  %scevgep112.i = getelementptr i8, ptr %i.a, i64 %.4.i
  %i.cp = sub nuw i64 %5, %.0.lcssa.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep112.i, i8 1, i64 %i.cp, i1 false), !tbaa !1213
  br i1 %.not.i61.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us.i.i.preheader, label %.lr.ph9.split.us.split.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us.i.i.preheader: ; preds = %.lr.ph9.split.us.i.i
  %i.cq = sub i64 %5, %.0.lcssa.i.i               ; 3 uses
  %min.iters.check = icmp ult i64 %i.cq, 4
  br i1 %min.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us.i.i.preheader114, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us.i.i.preheader
  %n.vec = and i64 %i.cq, -4                      ; 4 uses
  %i.cr = add i64 %.4.i, %n.vec                   ; 2 uses
  %i.cs = add i64 %.0.lcssa.i.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %index ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %wide.load = load <2 x i64>, ptr %i.cv, align 8, !tbaa !218
  %wide.load112 = load <2 x i64>, ptr %i.cw, align 8, !tbaa !218
  %i.cx = sub <2 x i64> %wide.load, %broadcast.splat
  %i.cy = sub <2 x i64> %wide.load112, %broadcast.splat
  %i.cz = trunc <2 x i64> %i.cx to <2 x i32>
  %i.da = trunc <2 x i64> %i.cy to <2 x i32>
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %index ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store <2 x i32> %i.cz, ptr %i.db, align 4, !tbaa !206
  store <2 x i32> %i.da, ptr %i.dc, align 4, !tbaa !206
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %middle.block, label %vector.body, !llvm.loop !4632

end_hunk_0
begin_hunk_1_@_ZN6duckdbL17MergeValidityLoopERNS_10UpdateInfoERNS_6VectorES1_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm:bb.a
  br i1 %exitcond49.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.i.i, !llvm.loop !4634

.lr.ph9.split.i.i:                                ; preds = %.lr.ph9.i.i
  br i1 %.not.i61.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us13.i.i, label %.lr.ph9.split.split.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us13.i.i: ; preds = %.lr.ph9.split.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i64.us14.i.i
  %i.ga = phi i64 [ %i.gs, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i64.us14.i.i ], [ %.4.i, %.lr.ph9.split.i.i ] ; 3 uses
  %.28.us11.i.i = phi i64 [ %i.gt, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i64.us14.i.i ], [ %.0.lcssa.i.i, %.lr.ph9.split.i.i ] ; 4 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.28.us11.i.i
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !218
  %i.gd = sub i64 %i.gc, %i.i
  br i1 %.not.i.i63.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i64.us14.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us13.i.i
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.28.us11.i.i
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !206
  %i.gg = zext i32 %i.gf to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i64.us14.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i64.us14.i.i: ; preds = %bb.l, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us13.i.i
  %i.gh = phi i64 [ %i.gg, %bb.l ], [ %.28.us11.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us13.i.i ] ; 2 uses
  %i.gi = lshr i64 %i.gh, 6
  %i.gj = and i64 %i.gh, 63
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.gi
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !218
  %i.gm = lshr i64 %i.gl, %i.gj
  %i.gn = trunc i64 %i.gm to i8
  %i.go = and i8 %i.gn, 1
  %i.gp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ga
  store i8 %i.go, ptr %i.gp, align 1, !tbaa !1213
  %i.gq = trunc i64 %i.gd to i32
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ga
  store i32 %i.gq, ptr %i.gr, align 4, !tbaa !206
  %i.gs = add nuw nsw i64 %i.ga, 1                ; 2 uses
  %i.gt = add nuw i64 %.28.us11.i.i, 1            ; 2 uses
  %exitcond48.not.i.i = icmp eq i64 %i.gt, %5
  br i1 %exitcond48.not.i.i, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us13.i.i, !llvm.loop !4634

.lr.ph9.split.split.i.i:                          ; preds = %.lr.ph9.split.i.i
  br i1 %.not.i.i63.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us17.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us17.i.i: ; preds = %.lr.ph9.split.split.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us17.i.i
  %i.gu = phi i64 [ %i.hl, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us17.i.i ], [ %.4.i, %.lr.ph9.split.split.i.i ] ; 3 uses
  %.28.us18.i.i = phi i64 [ %i.hm, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us17.i.i ], [ %.0.lcssa.i.i, %.lr.ph9.split.split.i.i ] ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.us18.i.i
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !206
  %i.gx = zext i32 %i.gw to i64                   ; 3 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gx
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !218
  %i.ha = sub i64 %i.gz, %i.i
  %i.hb = lshr i64 %i.gx, 6
  %i.hc = and i64 %i.gx, 63
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.hb
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !218
  %i.hf = lshr i64 %i.he, %i.hc
  %i.hg = trunc i64 %i.hf to i8
  %i.hh = and i8 %i.hg, 1
  %i.hi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gu
  store i8 %i.hh, ptr %i.hi, align 1, !tbaa !1213
  %i.hj = trunc i64 %i.ha to i32
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gu
  store i32 %i.hj, ptr %i.hk, align 4, !tbaa !206
  %i.hl = add nuw nsw i64 %i.gu, 1                ; 2 uses
  %i.hm = add nuw i64 %.28.us18.i.i, 1            ; 2 uses
  %exitcond47.not.i.i = icmp eq i64 %i.hm, %5
  br i1 %exitcond47.not.i.i, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us17.i.i, !llvm.loop !4634

bb.m:                                             ; preds = %bb.w, %.lr.ph.i.i
  %.5.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.6.i, %bb.w ] ; 7 uses
  %.04.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %bb.w ] ; 5 uses
  %.0542.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.155.i.i, %bb.w ] ; 5 uses
  br i1 %.not.i.i77.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !206
  %i.hp = zext i32 %i.ho to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i: ; preds = %bb.n, %bb.m
  %i.hq = phi i64 [ %i.hp, %bb.n ], [ %.04.i.i, %bb.m ] ; 5 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.hq
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !218
  %i.ht = sub i64 %i.hs, %i.i                     ; 4 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.0542.i.i
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !206 ; 2 uses
  %i.hw = zext i32 %i.hv to i64                   ; 2 uses
  %i.hx = icmp eq i64 %i.ht, %i.hw
  br i1 %i.hx, label %bb.o, label %bb.r

bb.o:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.hy = load ptr, ptr %i.e, align 8, !tbaa !305 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hy, null
  br i1 %.not.i.i.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.hq
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !206
  %i.ib = zext i32 %i.ia to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i.i: ; preds = %bb.p, %bb.o
  %i.ic = phi i64 [ %i.ib, %bb.p ], [ %i.hq, %bb.o ] ; 2 uses
  %i.id = load ptr, ptr %i.d, align 8, !tbaa !267 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.id, null
  br i1 %.not.i.i.i.i.i.i, label %_ZZN6duckdbL23MergeUpdateLoopInternalIbNS_12ValidityMaskENS_20ExtractValidityEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmmE_clEmmmm.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i.i
  %i.ie = lshr i64 %i.ic, 6
  %i.if = and i64 %i.ic, 63
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.ie
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !218
  %i.ii = lshr i64 %i.ih, %i.if
  %i.ij = trunc i64 %i.ii to i8
  %i.ik = and i8 %i.ij, 1
  br label %_ZZN6duckdbL23MergeUpdateLoopInternalIbNS_12ValidityMaskENS_20ExtractValidityEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmmE_clEmmmm.exit.i.i

_ZZN6duckdbL23MergeUpdateLoopInternalIbNS_12ValidityMaskENS_20ExtractValidityEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmmE_clEmmmm.exit.i.i: ; preds = %bb.q, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i.i
  %.0.i.i.i.i.i.i = phi i8 [ %i.ik, %bb.q ], [ 1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i.i ]
  %i.il = getelementptr inbounds nuw i8, ptr %i.a, i64 %.5.i
  store i8 %.0.i.i.i.i.i.i, ptr %i.il, align 1, !tbaa !1213
  %i.im = trunc nuw i64 %i.ht to i32
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.5.i
  store i32 %i.im, ptr %i.in, align 4, !tbaa !206
  %i.io = add nuw i64 %.04.i.i, 1
  %i.ip = add nuw nsw i64 %.0542.i.i, 1
  br label %bb.w

bb.r:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.iq = icmp ult i64 %i.ht, %i.hw
  br i1 %i.iq, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.ir = load ptr, ptr %i.e, align 8, !tbaa !305 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ir, null
  br i1 %.not.i.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.hq
  %i.it = load i32, ptr %i.is, align 4, !tbaa !206
  %i.iu = zext i32 %i.it to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i: ; preds = %bb.t, %bb.s
  %i.iv = phi i64 [ %i.iu, %bb.t ], [ %i.hq, %bb.s ] ; 2 uses
  %i.iw = load ptr, ptr %i.d, align 8, !tbaa !267 ; 2 uses
  %.not.i.i.i60.i.i = icmp eq ptr %i.iw, null
  br i1 %.not.i.i.i60.i.i, label %_ZZN6duckdbL23MergeUpdateLoopInternalIbNS_12ValidityMaskENS_20ExtractValidityEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmE_clEmmm.exit.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i
  %i.ix = lshr i64 %i.iv, 6
  %i.iy = and i64 %i.iv, 63
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.ix
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !218
  %i.jb = lshr i64 %i.ja, %i.iy
  %i.jc = trunc i64 %i.jb to i8
  %i.jd = and i8 %i.jc, 1
  br label %_ZZN6duckdbL23MergeUpdateLoopInternalIbNS_12ValidityMaskENS_20ExtractValidityEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmE_clEmmm.exit.i.i

_ZZN6duckdbL23MergeUpdateLoopInternalIbNS_12ValidityMaskENS_20ExtractValidityEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmE_clEmmm.exit.i.i: ; preds = %bb.u, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i
  %.0.i.i.i.i.i = phi i8 [ %i.jd, %bb.u ], [ 1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i ]
  %i.je = getelementptr inbounds nuw i8, ptr %i.a, i64 %.5.i
  store i8 %.0.i.i.i.i.i, ptr %i.je, align 1, !tbaa !1213
  %i.jf = trunc nuw i64 %i.ht to i32
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.5.i
  store i32 %i.jf, ptr %i.jg, align 4, !tbaa !206
  %i.jh = add nuw i64 %.04.i.i, 1
  br label %bb.w

bb.v:                                             ; preds = %bb.r
  %i.ji = getelementptr inbounds nuw i8, ptr %i.o, i64 %.0542.i.i
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !1213, !range !315, !noundef !248
  %i.jk = getelementptr inbounds nuw i8, ptr %i.a, i64 %.5.i
  store i8 %i.jj, ptr %i.jk, align 1, !tbaa !1213
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.5.i
  store i32 %i.hv, ptr %i.jl, align 4, !tbaa !206
  %i.jm = add nuw nsw i64 %.0542.i.i, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZZN6duckdbL23MergeUpdateLoopInternalIbNS_12ValidityMaskENS_20ExtractValidityEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmE_clEmmm.exit.i.i, %_ZZN6duckdbL23MergeUpdateLoopInternalIbNS_12ValidityMaskENS_20ExtractValidityEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmmE_clEmmmm.exit.i.i
  %.155.i.i = phi i64 [ %i.ip, %_ZZN6duckdbL23MergeUpdateLoopInternalIbNS_12ValidityMaskENS_20ExtractValidityEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmmE_clEmmmm.exit.i.i ], [ %.0542.i.i, %_ZZN6duckdbL23MergeUpdateLoopInternalIbNS_12ValidityMaskENS_20ExtractValidityEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmE_clEmmm.exit.i.i ], [ %i.jm, %bb.v ] ; 3 uses
  %.1.i.i = phi i64 [ %i.io, %_ZZN6duckdbL23MergeUpdateLoopInternalIbNS_12ValidityMaskENS_20ExtractValidityEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmmE_clEmmmm.exit.i.i ], [ %i.jh, %_ZZN6duckdbL23MergeUpdateLoopInternalIbNS_12ValidityMaskENS_20ExtractValidityEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmE_clEmmm.exit.i.i ], [ %.04.i.i, %bb.v ] ; 3 uses
  %.6.i = add i64 %.5.i, 1                        ; 2 uses
  %i.jn = icmp ult i64 %.1.i.i, %5
  %i.jo = icmp ult i64 %.155.i.i, %i.cj
  %i.jp = select i1 %i.jn, i1 %i.jo, i1 false
  br i1 %i.jp, label %bb.m, label %.preheader1.i.i, !llvm.loop !4635

.preheader.i.i:                                   ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us17.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i64.us14.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us.i.i, %middle.block, %.preheader1.i.i
  %.7.i = phi i64 [ %.4.i, %.preheader1.i.i ], [ %i.hl, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us17.i.i ], [ %i.dk, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us.i.i ], [ %i.fd, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i ], [ %i.fy, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.i.i ], [ %i.gs, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i64.us14.i.i ], [ %i.cr, %middle.block ], [ %.lcssa116.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i.prol.loopexit ], [ %.lcssa118.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.i.i.prol.loopexit ], [ %i.kt, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.i.i ] ; 4 uses
  %i.jq = icmp ult i64 %.054.lcssa.i.i, %i.cj
  br i1 %i.jq, label %.lr.ph32.i.preheader.i, label %_ZN6duckdbL23MergeUpdateLoopInternalIbNS_12ValidityMaskENS_20ExtractValidityEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_m.exit

.lr.ph32.i.preheader.i:                           ; preds = %.preheader.i.i
  %scevgep113.i = getelementptr i8, ptr %i.a, i64 %.7.i
  %i.jr = getelementptr i8, ptr %0, i64 %.054.lcssa.i.i
  %i.js = getelementptr i8, ptr %i.jr, i64 %i.n
  %scevgep114.i = getelementptr i8, ptr %i.js, i64 88
  %i.jt = sub nuw nsw i64 %i.cj, %.054.lcssa.i.i  ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep113.i, ptr align 1 %scevgep114.i, i64 %i.jt, i1 false), !tbaa !1213
  %i.ju = shl i64 %.7.i, 2
  %scevgep115.i = getelementptr i8, ptr %i.b, i64 %i.ju
  %i.jv = shl nuw nsw i64 %.054.lcssa.i.i, 2
  %i.jw = getelementptr i8, ptr %0, i64 %i.jv
  %scevgep116.i = getelementptr i8, ptr %i.jw, i64 88
  %i.jx = shl nuw nsw i64 %i.jt, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep115.i, ptr align 4 %scevgep116.i, i64 %i.jx, i1 false), !tbaa !206
  %i.jy = add i64 %i.jt, %.7.i
  br label %_ZN6duckdbL23MergeUpdateLoopInternalIbNS_12ValidityMaskENS_20ExtractValidityEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_m.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit62.i.i: ; preds = %.lr.ph9.split.split.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.i.i
  %i.jz = phi i64 [ %i.kt, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.i.i ], [ %.4.i, %.lr.ph9.split.split.i.i ] ; 3 uses
  %.28.i.i = phi i64 [ %i.ku, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.i.i ], [ %.0.lcssa.i.i, %.lr.ph9.split.split.i.i ] ; 2 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.i.i
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !206
  %i.kc = zext i32 %i.kb to i64                   ; 2 uses
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.kc
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !218
  %i.kf = sub i64 %i.ke, %i.i
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.kc
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !206
  %i.ki = zext i32 %i.kh to i64                   ; 2 uses
  %i.kj = lshr i64 %i.ki, 6
  %i.kk = and i64 %i.ki, 63
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.kj
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !218
  %i.kn = lshr i64 %i.km, %i.kk
  %i.ko = trunc i64 %i.kn to i8
  %i.kp = and i8 %i.ko, 1
  %i.kq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.jz
  store i8 %i.kp, ptr %i.kq, align 1, !tbaa !1213
  %i.kr = trunc i64 %i.kf to i32
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.jz
  store i32 %i.kr, ptr %i.ks, align 4, !tbaa !206
  %i.kt = add nuw nsw i64 %i.jz, 1                ; 2 uses
  %i.ku = add nuw i64 %.28.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ku, %5
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.i.i, !llvm.loop !4634

_ZN6duckdbL23MergeUpdateLoopInternalIbNS_12ValidityMaskENS_20ExtractValidityEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_m.exit: ; preds = %.preheader.i.i, %.lr.ph32.i.preheader.i
  %.8.i = phi i64 [ %.7.i, %.preheader.i.i ], [ %i.jy, %.lr.ph32.i.preheader.i ] ; 3 uses
  %i.kv = trunc i64 %.8.i to i32
  store i32 %i.kv, ptr %i.ch, align 8, !tbaa !932
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr nonnull align 16 %i.a, i64 %.8.i, i1 false)
  %i.kw = shl i64 %.8.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr nonnull align 16 %i.b, i64 %i.kw, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdbL15MergeUpdateLoopIaEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(73) %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, i64 noundef %7) #1 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 22 uses
  %i.b = alloca [2048 x i32], align 16            ; 23 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIaEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1260
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIaEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1209 ; 12 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !959    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !943
  %i.j = shl i64 %i.i, 11
  %i.k = add i64 %i.j, %7                         ; 13 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.n = load i32, ptr %i.m, align 4, !tbaa !938
  %i.o = zext i32 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 2                  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.p ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.t = load i32, ptr %i.s, align 4, !tbaa !938
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2                  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %.not.i = icmp ne i64 %5, 0                     ; 2 uses
  br i1 %.not.i, label %.lr.ph152.i, label %..preheader_crit_edge.i

..preheader_crit_edge.i:                          ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !932
  %.pre193.i = zext i32 %.pre.i to i64
  br label %.preheader.i

.lr.ph152.i:                                      ; preds = %bb.a
  %i.x = load ptr, ptr %6, align 8, !tbaa !305    ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, null
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.z = load i32, ptr %i.y, align 8, !tbaa !932
  %i.aa = zext i32 %i.z to i64                    ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = zext i32 %i.ac to i64                   ; 3 uses
  br label %bb.b

.preheader.i:                                     ; preds = %bb.k, %..preheader_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre193.i, %..preheader_crit_edge.i ], [ %i.aa, %bb.k ] ; 3 uses
  %.0128.lcssa.i = phi i64 [ 0, %..preheader_crit_edge.i ], [ %.2130.i, %bb.k ] ; 4 uses
  %.072.lcssa.i = phi i64 [ 0, %..preheader_crit_edge.i ], [ %.274.i, %bb.k ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.af = icmp ult i64 %.072.lcssa.i, %.pre-phi.i
  br i1 %i.af, label %.lr.ph157.preheader.i, label %._crit_edge.i

.lr.ph157.preheader.i:                            ; preds = %.preheader.i
  %scevgep.i = getelementptr i8, ptr %i.a, i64 %.0128.lcssa.i
  %i.ag = getelementptr i8, ptr %2, i64 %.072.lcssa.i
  %i.ah = getelementptr i8, ptr %i.ag, i64 %i.v
  %scevgep184.i = getelementptr i8, ptr %i.ah, i64 88
  %i.ai = sub nuw nsw i64 %.pre-phi.i, %.072.lcssa.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep.i, ptr align 1 %scevgep184.i, i64 %i.ai, i1 false), !tbaa !273
  %i.aj = shl i64 %.0128.lcssa.i, 2
  %scevgep185.i = getelementptr i8, ptr %i.b, i64 %i.aj
  %i.ak = shl nuw nsw i64 %.072.lcssa.i, 2
  %i.al = getelementptr i8, ptr %2, i64 %i.ak
  %scevgep186.i = getelementptr i8, ptr %i.al, i64 88
  %i.am = shl nuw nsw i64 %i.ai, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep185.i, ptr align 4 %scevgep186.i, i64 %i.am, i1 false), !tbaa !206
  %i.an = add i64 %.0128.lcssa.i, %.pre-phi.i
  %i.ao = sub i64 %i.an, %.072.lcssa.i
  br label %._crit_edge.i

bb.b:                                             ; preds = %bb.k, %.lr.ph152.i
  %.0151.i = phi i64 [ 0, %.lr.ph152.i ], [ %.2.i, %bb.k ] ; 4 uses
  %.072150.i = phi i64 [ 0, %.lr.ph152.i ], [ %.274.i, %bb.k ] ; 3 uses
  %.075149.i = phi i64 [ 0, %.lr.ph152.i ], [ %i.bz, %bb.k ] ; 3 uses
  %.0128148.i = phi i64 [ 0, %.lr.ph152.i ], [ %.2130.i, %bb.k ] ; 2 uses
  br i1 %.not.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.075149.i
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !206
  %i.ar = zext i32 %i.aq to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %bb.c, %bb.b
  %i.as = phi i64 [ %i.ar, %bb.c ], [ %.075149.i, %bb.b ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !218
  %i.av = sub i64 %i.au, %i.k                     ; 6 uses
  %i.aw = icmp ult i64 %.072150.i, %i.aa
  br i1 %i.aw, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, %bb.d
  %.173143.i = phi i64 [ %i.bg, %bb.d ], [ %.072150.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 6 uses
  %.1129142.i = phi i64 [ %i.be, %bb.d ], [ %.0128148.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 7 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.173143.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !206 ; 3 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = icmp ugt i64 %i.av, %i.az
  br i1 %i.ba, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.w, i64 %.173143.i
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !273
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1129142.i
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !273
  %i.be = add nuw nsw i64 %.1129142.i, 1          ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1129142.i
  store i32 %i.ay, ptr %i.bf, align 4, !tbaa !206
  %i.bg = add i64 %.173143.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bg, %i.aa
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !4636

bb.e:                                             ; preds = %.lr.ph.i
  %i.bh = icmp eq i64 %i.av, %i.az
  br i1 %i.bh, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %i.w, i64 %.173143.i
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !273
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1129142.i
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !273
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1129142.i
  store i32 %i.ay, ptr %i.bl, align 4, !tbaa !206
  %i.bm = add nuw nsw i64 %.173143.i, 1
  br label %bb.k

.critedge.i:                                      ; preds = %bb.d, %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %.1129138.i = phi i64 [ %.1129142.i, %bb.e ], [ %.0128148.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.be, %bb.d ] ; 3 uses
  %.173135.i = phi i64 [ %.173143.i, %bb.e ], [ %.072150.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.aa, %bb.d ]
  %i.bn = icmp ult i64 %.0151.i, %i.ad
  br i1 %i.bn, label %.lr.ph146.i, label %.critedge2.i

.lr.ph146.i:                                      ; preds = %.critedge.i, %bb.g
  %.1145.i = phi i64 [ %i.bs, %bb.g ], [ %.0151.i, %.critedge.i ] ; 5 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.1145.i
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !206
  %i.bq = zext i32 %i.bp to i64                   ; 2 uses
  %i.br = icmp ugt i64 %i.av, %i.bq
  br i1 %i.br, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph146.i
  %i.bs = add i64 %.1145.i, 1                     ; 2 uses
  %exitcond182.not.i = icmp eq i64 %i.bs, %i.ad
  br i1 %exitcond182.not.i, label %.critedge2.i, label %.lr.ph146.i, !llvm.loop !4637

bb.h:                                             ; preds = %.lr.ph146.i
  %i.bt = icmp eq i64 %i.av, %i.bq
  br i1 %i.bt, label %bb.i, label %.critedge2.i

bb.i:                                             ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %i.q, i64 %.1145.i
  br label %bb.j

.critedge2.i:                                     ; preds = %bb.g, %bb.h, %.critedge.i
  %.1141.i = phi i64 [ %.1145.i, %bb.h ], [ %.0151.i, %.critedge.i ], [ %i.ad, %bb.g ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.av
  br label %bb.j

bb.j:                                             ; preds = %.critedge2.i, %bb.i
  %.sink.in.i = phi ptr [ %i.bv, %.critedge2.i ], [ %i.bu, %bb.i ]
  %.1140.i = phi i64 [ %.1141.i, %.critedge2.i ], [ %.1145.i, %bb.i ]
  %.sink.i = load i8, ptr %.sink.in.i, align 1, !tbaa !273
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1129138.i
  store i8 %.sink.i, ptr %i.bw, align 1, !tbaa !273
  %i.bx = trunc i64 %i.av to i32
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1129138.i
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !206
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.1129137.i = phi i64 [ %.1129142.i, %bb.f ], [ %.1129138.i, %bb.j ]
  %.274.i = phi i64 [ %i.bm, %bb.f ], [ %.173135.i, %bb.j ] ; 2 uses
  %.2.i = phi i64 [ %.0151.i, %bb.f ], [ %.1140.i, %bb.j ]
  %.2130.i = add i64 %.1129137.i, 1               ; 2 uses
  %i.bz = add nuw i64 %.075149.i, 1               ; 2 uses
  %exitcond183.not.i = icmp eq i64 %i.bz, %5
  br i1 %exitcond183.not.i, label %.preheader.i, label %bb.b, !llvm.loop !4638

._crit_edge.i:                                    ; preds = %.lr.ph157.preheader.i, %.preheader.i
  %.3131.lcssa.i = phi i64 [ %.0128.lcssa.i, %.preheader.i ], [ %i.ao, %.lr.ph157.preheader.i ] ; 3 uses
  %i.ca = trunc i64 %.3131.lcssa.i to i32
  store i32 %i.ca, ptr %i.ae, align 8, !tbaa !932
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.w, ptr nonnull align 16 %i.a, i64 %.3131.lcssa.i, i1 false)
  %i.cb = shl i64 %.3131.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 16 %i.b, i64 %i.cb, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !932 ; 2 uses
  %i.ce = zext i32 %i.cd to i64                   ; 3 uses
  %i.cf = icmp ne i32 %i.cd, 0
  %i.cg = and i1 %.not.i, %i.cf
  br i1 %i.cg, label %.lr.ph.i.preheader.i, label %.preheader64.i.i

.lr.ph.i.preheader.i:                             ; preds = %._crit_edge.i
  %i.ch = load ptr, ptr %6, align 8, !tbaa !305   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ch, null
  br label %.lr.ph.i.i

.preheader64.i.i:                                 ; preds = %bb.s, %._crit_edge.i
  %.4.i = phi i64 [ 0, %._crit_edge.i ], [ %.9.i, %bb.s ] ; 17 uses
  %.054.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.155.i.i, %bb.s ] ; 4 uses
  %.0.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.1.i.i, %bb.s ] ; 22 uses
  %i.ci = icmp ult i64 %.0.lcssa.i.i, %5
  br i1 %i.ci, label %.lr.ph72.i.preheader.i, label %.preheader.i.i

.lr.ph72.i.preheader.i:                           ; preds = %.preheader64.i.i
  %i.cj = load ptr, ptr %6, align 8, !tbaa !305   ; 7 uses
  %.not.i60.i.i = icmp eq ptr %i.cj, null
  %i.ck = load ptr, ptr %i.g, align 8, !tbaa !305 ; 7 uses
  %.not.i.i62.i.i = icmp eq ptr %i.ck, null       ; 2 uses
  br i1 %.not.i60.i.i, label %.lr.ph72.i.preheader.split.us.i, label %.lr.ph72.i.preheader.split.i

.lr.ph72.i.preheader.split.us.i:                  ; preds = %.lr.ph72.i.preheader.i
  br i1 %.not.i.i62.i.i, label %.lr.ph72.i.us.us.preheader.i, label %.lr.ph72.i.us.i.preheader

.lr.ph72.i.us.i.preheader:                        ; preds = %.lr.ph72.i.preheader.split.us.i
  %i.cl = sub i64 %5, %.0.lcssa.i.i
  %.neg117 = add i64 %.0.lcssa.i.i, 1
  %xtraiter114 = and i64 %i.cl, 1
  %lcmp.mod115.not = icmp eq i64 %xtraiter114, 0
  br i1 %lcmp.mod115.not, label %.lr.ph72.i.us.i.prol.loopexit, label %.lr.ph72.i.us.i.prol

.lr.ph72.i.us.i.prol:                             ; preds = %.lr.ph72.i.us.i.preheader
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !218
  %i.co = sub i64 %i.cn, %i.k
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %.0.lcssa.i.i
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !206
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !273
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 %.4.i
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !273
  %i.cv = trunc i64 %i.co to i32
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !206
  %i.cx = add nuw nsw i64 %.4.i, 1                ; 2 uses
  %i.cy = add nuw i64 %.0.lcssa.i.i, 1
  br label %.lr.ph72.i.us.i.prol.loopexit

.lr.ph72.i.us.i.prol.loopexit:                    ; preds = %.lr.ph72.i.us.i.prol, %.lr.ph72.i.us.i.preheader
  %.lcssa97.unr = phi i64 [ poison, %.lr.ph72.i.us.i.preheader ], [ %i.cx, %.lr.ph72.i.us.i.prol ]
  %.7.us.i.unr = phi i64 [ %.4.i, %.lr.ph72.i.us.i.preheader ], [ %i.cx, %.lr.ph72.i.us.i.prol ]
  %.271.i.us.i.unr = phi i64 [ %.0.lcssa.i.i, %.lr.ph72.i.us.i.preheader ], [ %i.cy, %.lr.ph72.i.us.i.prol ]
  %i.cz = icmp eq i64 %5, %.neg117
  br i1 %i.cz, label %.preheader.i.i, label %.lr.ph72.i.us.i

.lr.ph72.i.us.us.preheader.i:                     ; preds = %.lr.ph72.i.preheader.split.us.i
  %scevgep187.i = getelementptr i8, ptr %i.a, i64 %.4.i
  %scevgep188.i = getelementptr i8, ptr %i.f, i64 %.0.lcssa.i.i
  %i.da = sub i64 %5, %.0.lcssa.i.i               ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep187.i, ptr readonly align 1 %scevgep188.i, i64 %i.da, i1 false), !tbaa !273
  %min.iters.check = icmp ult i64 %i.da, 4
  br i1 %min.iters.check, label %.lr.ph72.i.us.us.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph72.i.us.us.preheader.i
  %n.vec = and i64 %i.da, -4                      ; 4 uses
  %i.db = add i64 %.4.i, %n.vec                   ; 2 uses
  %i.dc = add i64 %.0.lcssa.i.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.k, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6duckdbL15MergeUpdateLoopIaEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm:bb.a
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.0.lcssa.i.i
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !206
  %i.ey = zext i32 %i.ex to i64                   ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ey
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !218
  %i.fb = sub i64 %i.fa, %i.k
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.ey
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !206
  %i.fe = zext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !273
  %i.fh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.4.i
  store i8 %i.fg, ptr %i.fh, align 1, !tbaa !273
  %i.fi = trunc i64 %i.fb to i32
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !206
  %i.fk = add nuw nsw i64 %.4.i, 1                ; 2 uses
  %i.fl = add nuw i64 %.0.lcssa.i.i, 1
  br label %.lr.ph72.i.i.prol.loopexit

.lr.ph72.i.i.prol.loopexit:                       ; preds = %.lr.ph72.i.i.prol, %.lr.ph72.i.i.preheader
  %.lcssa101.unr = phi i64 [ poison, %.lr.ph72.i.i.preheader ], [ %i.fk, %.lr.ph72.i.i.prol ]
  %.7.i.unr = phi i64 [ %.4.i, %.lr.ph72.i.i.preheader ], [ %i.fk, %.lr.ph72.i.i.prol ]
  %.271.i.i.unr = phi i64 [ %.0.lcssa.i.i, %.lr.ph72.i.i.preheader ], [ %i.fl, %.lr.ph72.i.i.prol ]
  %i.fm = icmp eq i64 %5, %.neg
  br i1 %i.fm, label %.preheader.i.i, label %.lr.ph72.i.i

.lr.ph72.i.us159.i.preheader:                     ; preds = %.lr.ph72.i.preheader.split.i
  %i.fn = sub i64 %5, %.0.lcssa.i.i
  %.neg116 = add i64 %.0.lcssa.i.i, 1
  %xtraiter112 = and i64 %i.fn, 1
  %lcmp.mod113.not = icmp eq i64 %xtraiter112, 0
  br i1 %lcmp.mod113.not, label %.lr.ph72.i.us159.i.prol.loopexit, label %.lr.ph72.i.us159.i.prol

.lr.ph72.i.us159.i.prol:                          ; preds = %.lr.ph72.i.us159.i.preheader
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.0.lcssa.i.i
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !206
  %i.fq = zext i32 %i.fp to i64                   ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fq
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !218
  %i.ft = sub i64 %i.fs, %i.k
  %i.fu = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.fq
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !273
  %i.fw = getelementptr inbounds nuw i8, ptr %i.a, i64 %.4.i
  store i8 %i.fv, ptr %i.fw, align 1, !tbaa !273
  %i.fx = trunc i64 %i.ft to i32
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.fx, ptr %i.fy, align 4, !tbaa !206
  %i.fz = add nuw nsw i64 %.4.i, 1                ; 2 uses
  %i.ga = add nuw i64 %.0.lcssa.i.i, 1
  br label %.lr.ph72.i.us159.i.prol.loopexit

.lr.ph72.i.us159.i.prol.loopexit:                 ; preds = %.lr.ph72.i.us159.i.prol, %.lr.ph72.i.us159.i.preheader
  %.lcssa99.unr = phi i64 [ poison, %.lr.ph72.i.us159.i.preheader ], [ %i.fz, %.lr.ph72.i.us159.i.prol ]
  %.7.us160.i.unr = phi i64 [ %.4.i, %.lr.ph72.i.us159.i.preheader ], [ %i.fz, %.lr.ph72.i.us159.i.prol ]
  %.271.i.us161.i.unr = phi i64 [ %.0.lcssa.i.i, %.lr.ph72.i.us159.i.preheader ], [ %i.ga, %.lr.ph72.i.us159.i.prol ]
  %i.gb = icmp eq i64 %5, %.neg116
  br i1 %i.gb, label %.preheader.i.i, label %.lr.ph72.i.us159.i

.lr.ph72.i.us159.i:                               ; preds = %.lr.ph72.i.us159.i.prol.loopexit, %.lr.ph72.i.us159.i
  %.7.us160.i = phi i64 [ %i.ha, %.lr.ph72.i.us159.i ], [ %.7.us160.i.unr, %.lr.ph72.i.us159.i.prol.loopexit ] ; 4 uses
  %.271.i.us161.i = phi i64 [ %i.hb, %.lr.ph72.i.us159.i ], [ %.271.i.us161.i.unr, %.lr.ph72.i.us159.i.prol.loopexit ] ; 3 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.271.i.us161.i
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !206
  %i.ge = zext i32 %i.gd to i64                   ; 2 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ge
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !218
  %i.gh = sub i64 %i.gg, %i.k
  %i.gi = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ge
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !273
  %i.gk = getelementptr inbounds nuw i8, ptr %i.a, i64 %.7.us160.i
  store i8 %i.gj, ptr %i.gk, align 1, !tbaa !273
  %i.gl = trunc i64 %i.gh to i32
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.7.us160.i
  store i32 %i.gl, ptr %i.gm, align 4, !tbaa !206
  %i.gn = add nuw nsw i64 %.7.us160.i, 1          ; 2 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.271.i.us161.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !206
  %i.gr = zext i32 %i.gq to i64                   ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gr
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !218
  %i.gu = sub i64 %i.gt, %i.k
  %i.gv = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gr
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !273
  %i.gx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gn
  store i8 %i.gw, ptr %i.gx, align 1, !tbaa !273
  %i.gy = trunc i64 %i.gu to i32
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gn
  store i32 %i.gy, ptr %i.gz, align 4, !tbaa !206
  %i.ha = add nuw nsw i64 %.7.us160.i, 2          ; 2 uses
  %i.hb = add nuw i64 %.271.i.us161.i, 2          ; 2 uses
  %exitcond.not.i.us163.i.1 = icmp eq i64 %i.hb, %5
  br i1 %exitcond.not.i.us163.i.1, label %.preheader.i.i, label %.lr.ph72.i.us159.i, !llvm.loop !4641

.lr.ph.i.i:                                       ; preds = %bb.s, %.lr.ph.i.preheader.i
  %.8.i = phi i64 [ %.9.i, %bb.s ], [ 0, %.lr.ph.i.preheader.i ] ; 7 uses
  %.067.i.i = phi i64 [ %.1.i.i, %bb.s ], [ 0, %.lr.ph.i.preheader.i ] ; 5 uses
  %.05465.i.i = phi i64 [ %.155.i.i, %bb.s ], [ 0, %.lr.ph.i.preheader.i ] ; 5 uses
  br i1 %.not.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.067.i.i
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !206
  %i.he = zext i32 %i.hd to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i: ; preds = %bb.l, %.lr.ph.i.i
  %i.hf = phi i64 [ %i.he, %bb.l ], [ %.067.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.hf
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !218
  %i.hi = sub i64 %i.hh, %i.k                     ; 4 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.05465.i.i
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !206 ; 2 uses
  %i.hl = zext i32 %i.hk to i64                   ; 2 uses
  %i.hm = icmp eq i64 %i.hi, %i.hl
  br i1 %i.hm, label %bb.m, label %bb.o

bb.m:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.hn = load ptr, ptr %i.g, align 8, !tbaa !305 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hn, null
  br i1 %.not.i.i.i.i.i, label %_ZZN6duckdbL23MergeUpdateLoopInternalIaaNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.hf
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !206
  %i.hq = zext i32 %i.hp to i64
  br label %_ZZN6duckdbL23MergeUpdateLoopInternalIaaNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i

_ZZN6duckdbL23MergeUpdateLoopInternalIaaNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i: ; preds = %bb.n, %bb.m
  %i.hr = phi i64 [ %i.hq, %bb.n ], [ %i.hf, %bb.m ]
  %i.hs = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.hr
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !273
  %i.hu = getelementptr inbounds nuw i8, ptr %i.a, i64 %.8.i
  store i8 %i.ht, ptr %i.hu, align 1, !tbaa !273
  %i.hv = trunc nuw i64 %i.hi to i32
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.8.i
  store i32 %i.hv, ptr %i.hw, align 4, !tbaa !206
  %i.hx = add nuw i64 %.067.i.i, 1
  %i.hy = add nuw nsw i64 %.05465.i.i, 1
  br label %bb.s

bb.o:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.hz = icmp ult i64 %i.hi, %i.hl
  br i1 %i.hz, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ia = load ptr, ptr %i.g, align 8, !tbaa !305 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ia, null
  br i1 %.not.i.i.i.i, label %_ZZN6duckdbL23MergeUpdateLoopInternalIaaNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.hf
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !206
  %i.id = zext i32 %i.ic to i64
  br label %_ZZN6duckdbL23MergeUpdateLoopInternalIaaNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i

_ZZN6duckdbL23MergeUpdateLoopInternalIaaNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i: ; preds = %bb.q, %bb.p
  %i.ie = phi i64 [ %i.id, %bb.q ], [ %i.hf, %bb.p ]
  %i.if = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ie
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !273
  %i.ih = getelementptr inbounds nuw i8, ptr %i.a, i64 %.8.i
  store i8 %i.ig, ptr %i.ih, align 1, !tbaa !273
  %i.ii = trunc nuw i64 %i.hi to i32
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.8.i
  store i32 %i.ii, ptr %i.ij, align 4, !tbaa !206
  %i.ik = add nuw i64 %.067.i.i, 1
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.il = getelementptr inbounds nuw i8, ptr %i.q, i64 %.05465.i.i
  %i.im = load i8, ptr %i.il, align 1, !tbaa !273
  %i.in = getelementptr inbounds nuw i8, ptr %i.a, i64 %.8.i
  store i8 %i.im, ptr %i.in, align 1, !tbaa !273
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.8.i
  store i32 %i.hk, ptr %i.io, align 4, !tbaa !206
  %i.ip = add nuw nsw i64 %.05465.i.i, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZZN6duckdbL23MergeUpdateLoopInternalIaaNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i, %_ZZN6duckdbL23MergeUpdateLoopInternalIaaNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i
  %.155.i.i = phi i64 [ %i.hy, %_ZZN6duckdbL23MergeUpdateLoopInternalIaaNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i ], [ %.05465.i.i, %_ZZN6duckdbL23MergeUpdateLoopInternalIaaNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i ], [ %i.ip, %bb.r ] ; 3 uses
  %.1.i.i = phi i64 [ %i.hx, %_ZZN6duckdbL23MergeUpdateLoopInternalIaaNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i ], [ %i.ik, %_ZZN6duckdbL23MergeUpdateLoopInternalIaaNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i ], [ %.067.i.i, %bb.r ] ; 3 uses
  %.9.i = add i64 %.8.i, 1                        ; 2 uses
  %i.iq = icmp ult i64 %.1.i.i, %5
  %i.ir = icmp ult i64 %.155.i.i, %i.ce
  %i.is = select i1 %i.iq, i1 %i.ir, i1 false
  br i1 %i.is, label %.lr.ph.i.i, label %.preheader64.i.i, !llvm.loop !4642

.preheader.i.i:                                   ; preds = %.lr.ph72.i.i.prol.loopexit, %.lr.ph72.i.i, %.lr.ph72.i.us159.i.prol.loopexit, %.lr.ph72.i.us159.i, %.lr.ph72.i.us.i.prol.loopexit, %.lr.ph72.i.us.i, %.lr.ph72.i.us.us.i, %middle.block, %.preheader64.i.i
  %.5.i = phi i64 [ %.4.i, %.preheader64.i.i ], [ %i.ha, %.lr.ph72.i.us159.i ], [ %i.et, %.lr.ph72.i.us.i ], [ %i.dt, %.lr.ph72.i.us.us.i ], [ %i.db, %middle.block ], [ %.lcssa97.unr, %.lr.ph72.i.us.i.prol.loopexit ], [ %.lcssa99.unr, %.lr.ph72.i.us159.i.prol.loopexit ], [ %.lcssa101.unr, %.lr.ph72.i.i.prol.loopexit ], [ %i.kg, %.lr.ph72.i.i ] ; 4 uses
  %i.it = icmp ult i64 %.054.lcssa.i.i, %i.ce
  br i1 %i.it, label %.lr.ph76.i.preheader.i, label %_ZN6duckdbL23MergeUpdateLoopInternalIaaNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_m.exit

.lr.ph76.i.preheader.i:                           ; preds = %.preheader.i.i
  %scevgep189.i = getelementptr i8, ptr %i.a, i64 %.5.i
  %i.iu = getelementptr i8, ptr %0, i64 %.054.lcssa.i.i
  %i.iv = getelementptr i8, ptr %i.iu, i64 %i.p
  %scevgep190.i = getelementptr i8, ptr %i.iv, i64 88
  %i.iw = sub nuw nsw i64 %i.ce, %.054.lcssa.i.i  ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep189.i, ptr align 1 %scevgep190.i, i64 %i.iw, i1 false), !tbaa !273
  %i.ix = shl i64 %.5.i, 2
  %scevgep191.i = getelementptr i8, ptr %i.b, i64 %i.ix
  %i.iy = shl nuw nsw i64 %.054.lcssa.i.i, 2
  %i.iz = getelementptr i8, ptr %0, i64 %i.iy
  %scevgep192.i = getelementptr i8, ptr %i.iz, i64 88
  %i.ja = shl nuw nsw i64 %i.iw, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep191.i, ptr align 4 %scevgep192.i, i64 %i.ja, i1 false), !tbaa !206
  %i.jb = add i64 %i.iw, %.5.i
  br label %_ZN6duckdbL23MergeUpdateLoopInternalIaaNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_m.exit

.lr.ph72.i.i:                                     ; preds = %.lr.ph72.i.i.prol.loopexit, %.lr.ph72.i.i
  %.7.i = phi i64 [ %i.kg, %.lr.ph72.i.i ], [ %.7.i.unr, %.lr.ph72.i.i.prol.loopexit ] ; 4 uses
  %.271.i.i = phi i64 [ %i.kh, %.lr.ph72.i.i ], [ %.271.i.i.unr, %.lr.ph72.i.i.prol.loopexit ] ; 3 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.271.i.i
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !206
  %i.je = zext i32 %i.jd to i64                   ; 2 uses
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.je
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !218
  %i.jh = sub i64 %i.jg, %i.k
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.je
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !206
  %i.jk = zext i32 %i.jj to i64
  %i.jl = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.jk
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !273
  %i.jn = getelementptr inbounds nuw i8, ptr %i.a, i64 %.7.i
  store i8 %i.jm, ptr %i.jn, align 1, !tbaa !273
  %i.jo = trunc i64 %i.jh to i32
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.7.i
  store i32 %i.jo, ptr %i.jp, align 4, !tbaa !206
  %i.jq = add nuw nsw i64 %.7.i, 1                ; 2 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.271.i.i
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 4
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !206
  %i.ju = zext i32 %i.jt to i64                   ; 2 uses
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ju
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !218
  %i.jx = sub i64 %i.jw, %i.k
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.ju
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !206
  %i.ka = zext i32 %i.jz to i64
  %i.kb = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ka
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !273
  %i.kd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.jq
  store i8 %i.kc, ptr %i.kd, align 1, !tbaa !273
  %i.ke = trunc i64 %i.jx to i32
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.jq
  store i32 %i.ke, ptr %i.kf, align 4, !tbaa !206
  %i.kg = add nuw nsw i64 %.7.i, 2                ; 2 uses
  %i.kh = add nuw i64 %.271.i.i, 2                ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.kh, %5
  br i1 %exitcond.not.i.i.1, label %.preheader.i.i, label %.lr.ph72.i.i, !llvm.loop !4641

_ZN6duckdbL23MergeUpdateLoopInternalIaaNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_m.exit: ; preds = %.preheader.i.i, %.lr.ph76.i.preheader.i
  %.10.i = phi i64 [ %.5.i, %.preheader.i.i ], [ %i.jb, %.lr.ph76.i.preheader.i ] ; 3 uses
  %i.ki = trunc i64 %.10.i to i32
  store i32 %i.ki, ptr %i.cc, align 8, !tbaa !932
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.q, ptr nonnull align 16 %i.a, i64 %.10.i, i1 false)
  %i.kj = shl i64 %.10.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 16 %i.b, i64 %i.kj, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdbL15MergeUpdateLoopIsEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(73) %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, i64 noundef %7) #1 {
bb.a:
  %i.a = alloca [2048 x i16], align 16            ; 22 uses
  %i.b = alloca [2048 x i32], align 16            ; 23 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIsEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1260
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIsEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1209 ; 12 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !959    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !943
  %i.j = shl i64 %i.i, 11
  %i.k = add i64 %i.j, %7                         ; 13 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.n = load i32, ptr %i.m, align 4, !tbaa !938
  %i.o = zext i32 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 2                  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.p ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.t = load i32, ptr %i.s, align 4, !tbaa !938
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2                  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %.not.i = icmp ne i64 %5, 0                     ; 2 uses
  br i1 %.not.i, label %.lr.ph152.i, label %..preheader_crit_edge.i

..preheader_crit_edge.i:                          ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !932
  %.pre184.i = zext i32 %.pre.i to i64
  br label %.preheader.i

.lr.ph152.i:                                      ; preds = %bb.a
  %i.x = load ptr, ptr %6, align 8, !tbaa !305    ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, null
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.z = load i32, ptr %i.y, align 8, !tbaa !932
  %i.aa = zext i32 %i.z to i64                    ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = zext i32 %i.ac to i64                   ; 3 uses
  br label %bb.b

.preheader.i:                                     ; preds = %bb.k, %..preheader_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre184.i, %..preheader_crit_edge.i ], [ %i.aa, %bb.k ] ; 3 uses
  %.0122.lcssa.i = phi i64 [ 0, %..preheader_crit_edge.i ], [ %.2124.i, %bb.k ] ; 4 uses
  %.072.lcssa.i = phi i64 [ 0, %..preheader_crit_edge.i ], [ %.274.i, %bb.k ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.af = icmp ult i64 %.072.lcssa.i, %.pre-phi.i
  br i1 %i.af, label %.lr.ph157.preheader.i, label %._crit_edge.i

.lr.ph157.preheader.i:                            ; preds = %.preheader.i
  %i.ag = shl i64 %.0122.lcssa.i, 1
  %scevgep.i = getelementptr i8, ptr %i.a, i64 %i.ag
  %i.ah = shl nuw nsw i64 %.072.lcssa.i, 1
  %i.ai = getelementptr i8, ptr %2, i64 %i.v
  %i.aj = getelementptr i8, ptr %i.ai, i64 %i.ah
  %scevgep175.i = getelementptr i8, ptr %i.aj, i64 88
  %i.ak = sub nuw nsw i64 %.pre-phi.i, %.072.lcssa.i ; 2 uses
  %i.al = shl nuw nsw i64 %i.ak, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %scevgep.i, ptr align 2 %scevgep175.i, i64 %i.al, i1 false), !tbaa !317
  %i.am = shl i64 %.0122.lcssa.i, 2
  %scevgep176.i = getelementptr i8, ptr %i.b, i64 %i.am
  %i.an = shl nuw nsw i64 %.072.lcssa.i, 2
  %i.ao = getelementptr i8, ptr %2, i64 %i.an
  %scevgep177.i = getelementptr i8, ptr %i.ao, i64 88
  %i.ap = shl nuw nsw i64 %i.ak, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep176.i, ptr align 4 %scevgep177.i, i64 %i.ap, i1 false), !tbaa !206
  %i.aq = add i64 %.0122.lcssa.i, %.pre-phi.i
  %i.ar = sub i64 %i.aq, %.072.lcssa.i
  br label %._crit_edge.i

bb.b:                                             ; preds = %bb.k, %.lr.ph152.i
  %.0151.i = phi i64 [ 0, %.lr.ph152.i ], [ %.2.i, %bb.k ] ; 4 uses
  %.072150.i = phi i64 [ 0, %.lr.ph152.i ], [ %.274.i, %bb.k ] ; 3 uses
  %.075149.i = phi i64 [ 0, %.lr.ph152.i ], [ %i.cc, %bb.k ] ; 3 uses
  %.0122148.i = phi i64 [ 0, %.lr.ph152.i ], [ %.2124.i, %bb.k ] ; 2 uses
  br i1 %.not.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.075149.i
  %i.at = load i32, ptr %i.as, align 4, !tbaa !206
  %i.au = zext i32 %i.at to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %bb.c, %bb.b
  %i.av = phi i64 [ %i.au, %bb.c ], [ %.075149.i, %bb.b ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !218
  %i.ay = sub i64 %i.ax, %i.k                     ; 6 uses
  %i.az = icmp ult i64 %.072150.i, %i.aa
  br i1 %i.az, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, %bb.d
  %.173143.i = phi i64 [ %i.bj, %bb.d ], [ %.072150.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 6 uses
  %.1123142.i = phi i64 [ %i.bh, %bb.d ], [ %.0122148.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 7 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.173143.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !206 ; 3 uses
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = icmp ugt i64 %i.ay, %i.bc
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %.173143.i
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !317
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.1123142.i
  store i16 %i.bf, ptr %i.bg, align 2, !tbaa !317
  %i.bh = add nuw nsw i64 %.1123142.i, 1          ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1123142.i
  store i32 %i.bb, ptr %i.bi, align 4, !tbaa !206
  %i.bj = add i64 %.173143.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bj, %i.aa
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !4643

bb.e:                                             ; preds = %.lr.ph.i
  %i.bk = icmp eq i64 %i.ay, %i.bc
  br i1 %i.bk, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %.173143.i
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !317
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.1123142.i
  store i16 %i.bm, ptr %i.bn, align 2, !tbaa !317
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1123142.i
  store i32 %i.bb, ptr %i.bo, align 4, !tbaa !206
  %i.bp = add nuw nsw i64 %.173143.i, 1
  br label %bb.k

.critedge.i:                                      ; preds = %bb.d, %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %.1123138.i = phi i64 [ %.1123142.i, %bb.e ], [ %.0122148.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.bh, %bb.d ] ; 3 uses
  %.173135.i = phi i64 [ %.173143.i, %bb.e ], [ %.072150.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.aa, %bb.d ]
  %i.bq = icmp ult i64 %.0151.i, %i.ad
  br i1 %i.bq, label %.lr.ph146.i, label %.critedge2.i

.lr.ph146.i:                                      ; preds = %.critedge.i, %bb.g
  %.1145.i = phi i64 [ %i.bv, %bb.g ], [ %.0151.i, %.critedge.i ] ; 5 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.1145.i
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !206
  %i.bt = zext i32 %i.bs to i64                   ; 2 uses
  %i.bu = icmp ugt i64 %i.ay, %i.bt
  br i1 %i.bu, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph146.i
  %i.bv = add i64 %.1145.i, 1                     ; 2 uses
  %exitcond173.not.i = icmp eq i64 %i.bv, %i.ad
  br i1 %exitcond173.not.i, label %.critedge2.i, label %.lr.ph146.i, !llvm.loop !4644

bb.h:                                             ; preds = %.lr.ph146.i
  %i.bw = icmp eq i64 %i.ay, %i.bt
  br i1 %i.bw, label %bb.i, label %.critedge2.i

bb.i:                                             ; preds = %bb.h
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.1145.i
  br label %bb.j

.critedge2.i:                                     ; preds = %bb.g, %bb.h, %.critedge.i
  %.1141.i = phi i64 [ %.1145.i, %bb.h ], [ %.0151.i, %.critedge.i ], [ %i.ad, %bb.g ]
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ay
  br label %bb.j

bb.j:                                             ; preds = %.critedge2.i, %bb.i
  %.sink.in.i = phi ptr [ %i.by, %.critedge2.i ], [ %i.bx, %bb.i ]
  %.1140.i = phi i64 [ %.1141.i, %.critedge2.i ], [ %.1145.i, %bb.i ]
  %.sink.i = load i16, ptr %.sink.in.i, align 2, !tbaa !317
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.1123138.i
  store i16 %.sink.i, ptr %i.bz, align 2, !tbaa !317
  %i.ca = trunc i64 %i.ay to i32
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1123138.i
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !206
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.1123137.i = phi i64 [ %.1123142.i, %bb.f ], [ %.1123138.i, %bb.j ]
  %.274.i = phi i64 [ %i.bp, %bb.f ], [ %.173135.i, %bb.j ] ; 2 uses
  %.2.i = phi i64 [ %.0151.i, %bb.f ], [ %.1140.i, %bb.j ]
  %.2124.i = add i64 %.1123137.i, 1               ; 2 uses
  %i.cc = add nuw i64 %.075149.i, 1               ; 2 uses
  %exitcond174.not.i = icmp eq i64 %i.cc, %5
  br i1 %exitcond174.not.i, label %.preheader.i, label %bb.b, !llvm.loop !4645

._crit_edge.i:                                    ; preds = %.lr.ph157.preheader.i, %.preheader.i
  %.3125.lcssa.i = phi i64 [ %.0122.lcssa.i, %.preheader.i ], [ %i.ar, %.lr.ph157.preheader.i ] ; 3 uses
  %i.cd = trunc i64 %.3125.lcssa.i to i32
  store i32 %i.cd, ptr %i.ae, align 8, !tbaa !932
  %i.ce = shl i64 %.3125.lcssa.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.w, ptr nonnull align 16 %i.a, i64 %i.ce, i1 false)
  %i.cf = shl i64 %.3125.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 16 %i.b, i64 %i.cf, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !932 ; 2 uses
  %i.ci = zext i32 %i.ch to i64                   ; 3 uses
  %.val.i = load ptr, ptr %6, align 8             ; 9 uses
  %i.cj = icmp ne i32 %i.ch, 0
  %i.ck = and i1 %.not.i, %i.cj
  br i1 %i.ck, label %.lr.ph.i.i, label %.preheader1.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i
  %.not.i.i.i = icmp eq ptr %.val.i, null
  br label %bb.l

.preheader1.i.i:                                  ; preds = %bb.t, %._crit_edge.i
  %.4.i = phi i64 [ 0, %._crit_edge.i ], [ %.7.i, %bb.t ] ; 17 uses
  %.054.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.155.i.i, %bb.t ] ; 4 uses
  %.0.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.1.i.i, %bb.t ] ; 22 uses
  %i.cl = icmp ult i64 %.0.lcssa.i.i, %5
  br i1 %i.cl, label %.lr.ph9.i.i, label %.preheader.i.i

.lr.ph9.i.i:                                      ; preds = %.preheader1.i.i
  %.not.i60.i.i = icmp eq ptr %.val.i, null
  %i.cm = load ptr, ptr %i.g, align 8, !tbaa !305 ; 7 uses
  %.not.i.i62.i.i = icmp eq ptr %i.cm, null       ; 2 uses
  br i1 %.not.i60.i.i, label %.lr.ph9.split.us.i.i, label %.lr.ph9.split.i.i

.lr.ph9.split.us.i.i:                             ; preds = %.lr.ph9.i.i
  br i1 %.not.i.i62.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader: ; preds = %.lr.ph9.split.us.i.i
  %i.cn = sub i64 %5, %.0.lcssa.i.i
  %.neg117 = add i64 %.0.lcssa.i.i, 1
  %xtraiter113 = and i64 %i.cn, 1
  %lcmp.mod114.not = icmp eq i64 %xtraiter113, 0
  br i1 %lcmp.mod114.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !218
  %i.cq = sub i64 %i.cp, %i.k
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.0.lcssa.i.i
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !206
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.ct
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !317
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.4.i
  store i16 %i.cv, ptr %i.cw, align 2, !tbaa !317
  %i.cx = trunc i64 %i.cq to i32
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !206
  %i.cz = add nuw nsw i64 %.4.i, 1                ; 2 uses
  %i.da = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader
  %.lcssa95.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.cz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %.unr115 = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.cz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %.28.us.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.da, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %i.db = icmp eq i64 %5, %.neg117
  br i1 %i.db, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i: ; preds = %.lr.ph9.split.us.i.i
  %i.dc = shl i64 %.4.i, 1
  %scevgep178.i = getelementptr i8, ptr %i.a, i64 %i.dc
  %i.dd = shl i64 %.0.lcssa.i.i, 1
  %scevgep179.i = getelementptr i8, ptr %i.f, i64 %i.dd
  %i.de = sub i64 %5, %.0.lcssa.i.i               ; 4 uses
  %i.df = shl i64 %i.de, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %scevgep178.i, ptr readonly align 2 %scevgep179.i, i64 %i.df, i1 false), !tbaa !317
  %min.iters.check = icmp ult i64 %i.de, 4
  br i1 %min.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i
  %n.vec = and i64 %i.de, -4                      ; 4 uses
  %i.dg = add i64 %.4.i, %n.vec                   ; 2 uses
  %i.dh = add i64 %.0.lcssa.i.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.k, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %index ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %wide.load = load <2 x i64>, ptr %i.dk, align 8, !tbaa !218
  %wide.load92 = load <2 x i64>, ptr %i.dl, align 8, !tbaa !218
  %i.dm = sub <2 x i64> %wide.load, %broadcast.splat
  %i.dn = sub <2 x i64> %wide.load92, %broadcast.splat
  %i.do = trunc <2 x i64> %i.dm to <2 x i32>
  %i.dp = trunc <2 x i64> %i.dn to <2 x i32>
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %index ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store <2 x i32> %i.do, ptr %i.dq, align 4, !tbaa !206
  store <2 x i32> %i.dp, ptr %i.dr, align 4, !tbaa !206
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !4646

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.de, %n.vec
  br i1 %cmp.n, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i, %middle.block
  %.ph = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i ], [ %i.dg, %middle.block ]
  %.28.us.us.i.i.ph = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i ], [ %i.dh, %middle.block ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i
  %i.dt = phi i64 [ %i.dz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i ], [ %.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader ] ; 2 uses
  %.28.us.us.i.i = phi i64 [ %i.ea, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i ], [ %.28.us.us.i.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader ] ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.28.us.us.i.i
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !218
  %i.dw = sub i64 %i.dv, %i.k
  %i.dx = trunc i64 %i.dw to i32
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dt
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !206
  %i.dz = add nuw nsw i64 %i.dt, 1                ; 2 uses
  %i.ea = add nuw i64 %.28.us.us.i.i, 1           ; 2 uses
  %exitcond33.not.i.i = icmp eq i64 %i.ea, %5
  br i1 %exitcond33.not.i.i, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i, !llvm.loop !4647

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i
  %i.eb = phi i64 [ %i.fa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i ], [ %.unr115, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit ] ; 4 uses
  %.28.us.i.i = phi i64 [ %i.fb, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i ], [ %.28.us.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit ] ; 4 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.28.us.i.i
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !218
  %i.ee = sub i64 %i.ed, %i.k
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.28.us.i.i
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !206
  %i.eh = zext i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.eh
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !317
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.eb
  store i16 %i.ej, ptr %i.ek, align 2, !tbaa !317
  %i.el = trunc i64 %i.ee to i32
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.eb
  store i32 %i.el, ptr %i.em, align 4, !tbaa !206
  %i.en = add nuw nsw i64 %i.eb, 1                ; 2 uses
  %i.eo = add nuw i64 %.28.us.i.i, 1              ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.eo
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !218
  %i.er = sub i64 %i.eq, %i.k
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.eo
  %i.et = load i32, ptr %i.es, align 4, !tbaa !206
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.eu
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !317
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.en
  store i16 %i.ew, ptr %i.ex, align 2, !tbaa !317
  %i.ey = trunc i64 %i.er to i32
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.en
  store i32 %i.ey, ptr %i.ez, align 4, !tbaa !206
  %i.fa = add nuw nsw i64 %i.eb, 2                ; 2 uses
  %i.fb = add nuw i64 %.28.us.i.i, 2              ; 2 uses
  %exitcond32.not.i.i.1 = icmp eq i64 %i.fb, %5
  br i1 %exitcond32.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i, !llvm.loop !4648

.lr.ph9.split.i.i:                                ; preds = %.lr.ph9.i.i
  br i1 %.not.i.i62.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader: ; preds = %.lr.ph9.split.i.i
  %i.fc = sub i64 %5, %.0.lcssa.i.i
  %.neg = add i64 %.0.lcssa.i.i, 1
  %xtraiter = and i64 %i.fc, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0.lcssa.i.i
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !206
  %i.ff = zext i32 %i.fe to i64                   ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ff
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !218
  %i.fi = sub i64 %i.fh, %i.k
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.ff
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !206
  %i.fl = zext i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.fl
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !317
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.4.i
  store i16 %i.fn, ptr %i.fo, align 2, !tbaa !317
  %i.fp = trunc i64 %i.fi to i32
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !206
  %i.fr = add nuw nsw i64 %.4.i, 1                ; 2 uses
  %i.fs = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader
  %.lcssa99.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %.unr = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %.28.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fs, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %i.ft = icmp eq i64 %5, %.neg
  br i1 %i.ft, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader: ; preds = %.lr.ph9.split.i.i
  %i.fu = sub i64 %5, %.0.lcssa.i.i
  %.neg116 = add i64 %.0.lcssa.i.i, 1
  %xtraiter110 = and i64 %i.fu, 1
  %lcmp.mod111.not = icmp eq i64 %xtraiter110, 0
  br i1 %lcmp.mod111.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0.lcssa.i.i
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !206
  %i.fx = zext i32 %i.fw to i64                   ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fx
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !218
  %i.ga = sub i64 %i.fz, %i.k
  %i.gb = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.fx
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !317
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.4.i
  store i16 %i.gc, ptr %i.gd, align 2, !tbaa !317
  %i.ge = trunc i64 %i.ga to i32
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.ge, ptr %i.gf, align 4, !tbaa !206
  %i.gg = add nuw nsw i64 %.4.i, 1                ; 2 uses
  %i.gh = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader
  %.lcssa97.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.gg, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %.unr112 = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.gg, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %.28.us12.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.gh, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %i.gi = icmp eq i64 %5, %.neg116
  br i1 %i.gi, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i
  %i.gj = phi i64 [ %i.hi, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i ], [ %.unr112, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit ] ; 4 uses
  %.28.us12.i.i = phi i64 [ %i.hj, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i ], [ %.28.us12.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit ] ; 3 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.us12.i.i
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !206
  %i.gm = zext i32 %i.gl to i64                   ; 2 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gm
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !218
  %i.gp = sub i64 %i.go, %i.k
  %i.gq = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.gm
  %i.gr = load i16, ptr %i.gq, align 2, !tbaa !317
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.gj
  store i16 %i.gr, ptr %i.gs, align 2, !tbaa !317
  %i.gt = trunc i64 %i.gp to i32
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gj
  store i32 %i.gt, ptr %i.gu, align 4, !tbaa !206
  %i.gv = add nuw nsw i64 %i.gj, 1                ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.us12.i.i
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !206
  %i.gz = zext i32 %i.gy to i64                   ; 2 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gz
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !218
  %i.hc = sub i64 %i.hb, %i.k
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.gz
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !317
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.gv
  store i16 %i.he, ptr %i.hf, align 2, !tbaa !317
  %i.hg = trunc i64 %i.hc to i32
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gv
  store i32 %i.hg, ptr %i.hh, align 4, !tbaa !206
  %i.hi = add nuw nsw i64 %i.gj, 2                ; 2 uses
  %i.hj = add nuw i64 %.28.us12.i.i, 2            ; 2 uses
  %exitcond31.not.i.i.1 = icmp eq i64 %i.hj, %5
  br i1 %exitcond31.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i, !llvm.loop !4648

bb.l:                                             ; preds = %bb.t, %.lr.ph.i.i
  %.6.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.7.i, %bb.t ] ; 7 uses
  %.04.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %bb.t ] ; 5 uses
  %.0542.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.155.i.i, %bb.t ] ; 5 uses
  br i1 %.not.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !206
  %i.hm = zext i32 %i.hl to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i: ; preds = %bb.m, %bb.l
  %i.hn = phi i64 [ %i.hm, %bb.m ], [ %.04.i.i, %bb.l ] ; 5 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.hn
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !218
  %i.hq = sub i64 %i.hp, %i.k                     ; 4 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.0542.i.i
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !206 ; 2 uses
  %i.ht = zext i32 %i.hs to i64                   ; 2 uses
  %i.hu = icmp eq i64 %i.hq, %i.ht
  br i1 %i.hu, label %bb.n, label %bb.p

bb.n:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.hv = load ptr, ptr %i.g, align 8, !tbaa !305 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hv, null
  br i1 %.not.i.i.i.i.i, label %_ZZN6duckdbL23MergeUpdateLoopInternalIssNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.hn
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !206
  %i.hy = zext i32 %i.hx to i64
  br label %_ZZN6duckdbL23MergeUpdateLoopInternalIssNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i

_ZZN6duckdbL23MergeUpdateLoopInternalIssNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i: ; preds = %bb.o, %bb.n
  %i.hz = phi i64 [ %i.hy, %bb.o ], [ %i.hn, %bb.n ]
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.hz
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !317
  %i.ic = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.6.i
  store i16 %i.ib, ptr %i.ic, align 2, !tbaa !317
  %i.id = trunc nuw i64 %i.hq to i32
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.6.i
  store i32 %i.id, ptr %i.ie, align 4, !tbaa !206
  %i.if = add nuw i64 %.04.i.i, 1
  %i.ig = add nuw nsw i64 %.0542.i.i, 1
  br label %bb.t

bb.p:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.ih = icmp ult i64 %i.hq, %i.ht
  br i1 %i.ih, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ii = load ptr, ptr %i.g, align 8, !tbaa !305 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ii, null
  br i1 %.not.i.i.i.i, label %_ZZN6duckdbL23MergeUpdateLoopInternalIssNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.hn
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !206
  %i.il = zext i32 %i.ik to i64
  br label %_ZZN6duckdbL23MergeUpdateLoopInternalIssNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i

_ZZN6duckdbL23MergeUpdateLoopInternalIssNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i: ; preds = %bb.r, %bb.q
  %i.im = phi i64 [ %i.il, %bb.r ], [ %i.hn, %bb.q ]
  %i.in = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.im
  %i.io = load i16, ptr %i.in, align 2, !tbaa !317
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.6.i
  store i16 %i.io, ptr %i.ip, align 2, !tbaa !317
  %i.iq = trunc nuw i64 %i.hq to i32
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.6.i
  store i32 %i.iq, ptr %i.ir, align 4, !tbaa !206
  %i.is = add nuw i64 %.04.i.i, 1
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.0542.i.i
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !317
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.6.i
  store i16 %i.iu, ptr %i.iv, align 2, !tbaa !317
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.6.i
  store i32 %i.hs, ptr %i.iw, align 4, !tbaa !206
  %i.ix = add nuw nsw i64 %.0542.i.i, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZZN6duckdbL23MergeUpdateLoopInternalIssNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i, %_ZZN6duckdbL23MergeUpdateLoopInternalIssNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i
  %.155.i.i = phi i64 [ %i.ig, %_ZZN6duckdbL23MergeUpdateLoopInternalIssNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i ], [ %.0542.i.i, %_ZZN6duckdbL23MergeUpdateLoopInternalIssNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i ], [ %i.ix, %bb.s ] ; 3 uses
  %.1.i.i = phi i64 [ %i.if, %_ZZN6duckdbL23MergeUpdateLoopInternalIssNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i ], [ %i.is, %_ZZN6duckdbL23MergeUpdateLoopInternalIssNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i ], [ %.04.i.i, %bb.s ] ; 3 uses
  %.7.i = add i64 %.6.i, 1                        ; 2 uses
  %i.iy = icmp ult i64 %.1.i.i, %5
  %i.iz = icmp ult i64 %.155.i.i, %i.ci
  %i.ja = select i1 %i.iy, i1 %i.iz, i1 false
  br i1 %i.ja, label %bb.l, label %.preheader1.i.i, !llvm.loop !4649

.preheader.i.i:                                   ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i, %middle.block, %.preheader1.i.i
  %.5.i = phi i64 [ %.4.i, %.preheader1.i.i ], [ %i.hi, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i ], [ %i.dz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i ], [ %i.fa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i ], [ %i.dg, %middle.block ], [ %.lcssa95.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit ], [ %.lcssa97.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit ], [ %.lcssa99.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit ], [ %i.ks, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i ] ; 4 uses
  %i.jb = icmp ult i64 %.054.lcssa.i.i, %i.ci
  br i1 %i.jb, label %.lr.ph20.i.preheader.i, label %_ZN6duckdbL23MergeUpdateLoopInternalIssNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_m.exit

.lr.ph20.i.preheader.i:                           ; preds = %.preheader.i.i
  %i.jc = shl i64 %.5.i, 1
  %scevgep180.i = getelementptr i8, ptr %i.a, i64 %i.jc
  %i.jd = shl nuw nsw i64 %.054.lcssa.i.i, 1
  %i.je = getelementptr i8, ptr %0, i64 %i.p
  %i.jf = getelementptr i8, ptr %i.je, i64 %i.jd
  %scevgep181.i = getelementptr i8, ptr %i.jf, i64 88
  %i.jg = sub nuw nsw i64 %i.ci, %.054.lcssa.i.i  ; 3 uses
  %i.jh = shl nuw nsw i64 %i.jg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %scevgep180.i, ptr align 2 %scevgep181.i, i64 %i.jh, i1 false), !tbaa !317
  %i.ji = shl i64 %.5.i, 2
  %scevgep182.i = getelementptr i8, ptr %i.b, i64 %i.ji
  %i.jj = shl nuw nsw i64 %.054.lcssa.i.i, 2
  %i.jk = getelementptr i8, ptr %0, i64 %i.jj
  %scevgep183.i = getelementptr i8, ptr %i.jk, i64 88
  %i.jl = shl nuw nsw i64 %i.jg, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep182.i, ptr align 4 %scevgep183.i, i64 %i.jl, i1 false), !tbaa !206
  %i.jm = add i64 %i.jg, %.5.i
  br label %_ZN6duckdbL23MergeUpdateLoopInternalIssNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_m.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i
  %i.jn = phi i64 [ %i.ks, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i ], [ %.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit ] ; 4 uses
  %.28.i.i = phi i64 [ %i.kt, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i ], [ %.28.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit ] ; 3 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.i.i
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !206
  %i.jq = zext i32 %i.jp to i64                   ; 2 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.jq
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !218
  %i.jt = sub i64 %i.js, %i.k
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.jq
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !206
  %i.jw = zext i32 %i.jv to i64
  %i.jx = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.jw
  %i.jy = load i16, ptr %i.jx, align 2, !tbaa !317
  %i.jz = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.jn
  store i16 %i.jy, ptr %i.jz, align 2, !tbaa !317
  %i.ka = trunc i64 %i.jt to i32
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.jn
  store i32 %i.ka, ptr %i.kb, align 4, !tbaa !206
  %i.kc = add nuw nsw i64 %i.jn, 1                ; 2 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.i.i
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 4
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !206
  %i.kg = zext i32 %i.kf to i64                   ; 2 uses
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.kg
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !218
  %i.kj = sub i64 %i.ki, %i.k
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.kg
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !206
  %i.km = zext i32 %i.kl to i64
  %i.kn = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.km
  %i.ko = load i16, ptr %i.kn, align 2, !tbaa !317
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.kc
  store i16 %i.ko, ptr %i.kp, align 2, !tbaa !317
  %i.kq = trunc i64 %i.kj to i32
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.kc
  store i32 %i.kq, ptr %i.kr, align 4, !tbaa !206
  %i.ks = add nuw nsw i64 %i.jn, 2                ; 2 uses
  %i.kt = add nuw i64 %.28.i.i, 2                 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.kt, %5
  br i1 %exitcond.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i, !llvm.loop !4648

_ZN6duckdbL23MergeUpdateLoopInternalIssNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_m.exit: ; preds = %.preheader.i.i, %.lr.ph20.i.preheader.i
  %.8.i = phi i64 [ %.5.i, %.preheader.i.i ], [ %i.jm, %.lr.ph20.i.preheader.i ] ; 3 uses
  %i.ku = trunc i64 %.8.i to i32
  store i32 %i.ku, ptr %i.cg, align 8, !tbaa !932
  %i.kv = shl i64 %.8.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.q, ptr nonnull align 16 %i.a, i64 %i.kv, i1 false)
  %i.kw = shl i64 %.8.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 16 %i.b, i64 %i.kw, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdbL15MergeUpdateLoopIiEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(73) %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, i64 noundef %7) #1 {
bb.a:
  %i.a = alloca [2048 x i32], align 16            ; 22 uses
  %i.b = alloca [2048 x i32], align 16            ; 23 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIiEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1260
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIiEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1209 ; 12 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !959    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !943
  %i.j = shl i64 %i.i, 11
  %i.k = add i64 %i.j, %7                         ; 13 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.n = load i32, ptr %i.m, align 4, !tbaa !938
  %i.o = zext i32 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 2                  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.p ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.t = load i32, ptr %i.s, align 4, !tbaa !938
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2                  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %.not.i = icmp ne i64 %5, 0                     ; 2 uses
  br i1 %.not.i, label %.lr.ph152.i, label %..preheader_crit_edge.i

..preheader_crit_edge.i:                          ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !932
  %.pre184.i = zext i32 %.pre.i to i64
  br label %.preheader.i

.lr.ph152.i:                                      ; preds = %bb.a
  %i.x = load ptr, ptr %6, align 8, !tbaa !305    ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, null
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.z = load i32, ptr %i.y, align 8, !tbaa !932
  %i.aa = zext i32 %i.z to i64                    ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = zext i32 %i.ac to i64                   ; 3 uses
  br label %bb.b

.preheader.i:                                     ; preds = %bb.k, %..preheader_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre184.i, %..preheader_crit_edge.i ], [ %i.aa, %bb.k ] ; 3 uses
  %.0122.lcssa.i = phi i64 [ 0, %..preheader_crit_edge.i ], [ %.2124.i, %bb.k ] ; 3 uses
  %.072.lcssa.i = phi i64 [ 0, %..preheader_crit_edge.i ], [ %.274.i, %bb.k ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.af = icmp ult i64 %.072.lcssa.i, %.pre-phi.i
  br i1 %i.af, label %.lr.ph157.preheader.i, label %._crit_edge.i

.lr.ph157.preheader.i:                            ; preds = %.preheader.i
  %i.ag = shl i64 %.0122.lcssa.i, 2               ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.a, i64 %i.ag
  %i.ah = shl nuw nsw i64 %.072.lcssa.i, 2
  %i.ai = getelementptr i8, ptr %2, i64 %i.ah     ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 %i.v
  %scevgep175.i = getelementptr i8, ptr %i.aj, i64 88
  %i.ak = sub nuw nsw i64 %.pre-phi.i, %.072.lcssa.i
  %i.al = shl nuw nsw i64 %i.ak, 2                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep.i, ptr align 4 %scevgep175.i, i64 %i.al, i1 false), !tbaa !206
  %scevgep176.i = getelementptr i8, ptr %i.b, i64 %i.ag
  %scevgep177.i = getelementptr i8, ptr %i.ai, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep176.i, ptr align 4 %scevgep177.i, i64 %i.al, i1 false), !tbaa !206
  %i.am = add i64 %.0122.lcssa.i, %.pre-phi.i
  %i.an = sub i64 %i.am, %.072.lcssa.i
  br label %._crit_edge.i

bb.b:                                             ; preds = %bb.k, %.lr.ph152.i
  %.0151.i = phi i64 [ 0, %.lr.ph152.i ], [ %.2.i, %bb.k ] ; 4 uses
  %.072150.i = phi i64 [ 0, %.lr.ph152.i ], [ %.274.i, %bb.k ] ; 3 uses
  %.075149.i = phi i64 [ 0, %.lr.ph152.i ], [ %i.by, %bb.k ] ; 3 uses
  %.0122148.i = phi i64 [ 0, %.lr.ph152.i ], [ %.2124.i, %bb.k ] ; 2 uses
  br i1 %.not.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.075149.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !206
  %i.aq = zext i32 %i.ap to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %bb.c, %bb.b
  %i.ar = phi i64 [ %i.aq, %bb.c ], [ %.075149.i, %bb.b ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !218
  %i.au = sub i64 %i.at, %i.k                     ; 6 uses
  %i.av = icmp ult i64 %.072150.i, %i.aa
  br i1 %i.av, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, %bb.d
  %.173143.i = phi i64 [ %i.bf, %bb.d ], [ %.072150.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 6 uses
  %.1123142.i = phi i64 [ %i.bd, %bb.d ], [ %.0122148.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 7 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.173143.i
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !206 ; 3 uses
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = icmp ugt i64 %i.au, %i.ay
  br i1 %i.az, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.173143.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !206
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.1123142.i
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !206
  %i.bd = add nuw nsw i64 %.1123142.i, 1          ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1123142.i
  store i32 %i.ax, ptr %i.be, align 4, !tbaa !206
  %i.bf = add i64 %.173143.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bf, %i.aa
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !4650

bb.e:                                             ; preds = %.lr.ph.i
  %i.bg = icmp eq i64 %i.au, %i.ay
  br i1 %i.bg, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.173143.i
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !206
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.1123142.i
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !206
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1123142.i
  store i32 %i.ax, ptr %i.bk, align 4, !tbaa !206
  %i.bl = add nuw nsw i64 %.173143.i, 1
  br label %bb.k

.critedge.i:                                      ; preds = %bb.d, %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %.1123138.i = phi i64 [ %.1123142.i, %bb.e ], [ %.0122148.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.bd, %bb.d ] ; 3 uses
  %.173135.i = phi i64 [ %.173143.i, %bb.e ], [ %.072150.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.aa, %bb.d ]
  %i.bm = icmp ult i64 %.0151.i, %i.ad
  br i1 %i.bm, label %.lr.ph146.i, label %.critedge2.i

.lr.ph146.i:                                      ; preds = %.critedge.i, %bb.g
  %.1145.i = phi i64 [ %i.br, %bb.g ], [ %.0151.i, %.critedge.i ] ; 5 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.1145.i
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !206
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = icmp ugt i64 %i.au, %i.bp
  br i1 %i.bq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph146.i
  %i.br = add i64 %.1145.i, 1                     ; 2 uses
  %exitcond173.not.i = icmp eq i64 %i.br, %i.ad
  br i1 %exitcond173.not.i, label %.critedge2.i, label %.lr.ph146.i, !llvm.loop !4651

bb.h:                                             ; preds = %.lr.ph146.i
  %i.bs = icmp eq i64 %i.au, %i.bp
  br i1 %i.bs, label %bb.i, label %.critedge2.i

bb.i:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.1145.i
  br label %bb.j

.critedge2.i:                                     ; preds = %bb.g, %bb.h, %.critedge.i
  %.1141.i = phi i64 [ %.1145.i, %bb.h ], [ %.0151.i, %.critedge.i ], [ %i.ad, %bb.g ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.au
  br label %bb.j

bb.j:                                             ; preds = %.critedge2.i, %bb.i
  %.sink.in.i = phi ptr [ %i.bu, %.critedge2.i ], [ %i.bt, %bb.i ]
  %.1140.i = phi i64 [ %.1141.i, %.critedge2.i ], [ %.1145.i, %bb.i ]
  %.sink.i = load i32, ptr %.sink.in.i, align 4, !tbaa !206
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.1123138.i
  store i32 %.sink.i, ptr %i.bv, align 4, !tbaa !206
  %i.bw = trunc i64 %i.au to i32
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1123138.i
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !206
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.1123137.i = phi i64 [ %.1123142.i, %bb.f ], [ %.1123138.i, %bb.j ]
  %.274.i = phi i64 [ %i.bl, %bb.f ], [ %.173135.i, %bb.j ] ; 2 uses
  %.2.i = phi i64 [ %.0151.i, %bb.f ], [ %.1140.i, %bb.j ]
  %.2124.i = add i64 %.1123137.i, 1               ; 2 uses
  %i.by = add nuw i64 %.075149.i, 1               ; 2 uses
  %exitcond174.not.i = icmp eq i64 %i.by, %5
  br i1 %exitcond174.not.i, label %.preheader.i, label %bb.b, !llvm.loop !4652

._crit_edge.i:                                    ; preds = %.lr.ph157.preheader.i, %.preheader.i
  %.3125.lcssa.i = phi i64 [ %.0122.lcssa.i, %.preheader.i ], [ %i.an, %.lr.ph157.preheader.i ] ; 2 uses
  %i.bz = trunc i64 %.3125.lcssa.i to i32
  store i32 %i.bz, ptr %i.ae, align 8, !tbaa !932
  %i.ca = shl i64 %.3125.lcssa.i, 2               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.w, ptr nonnull align 16 %i.a, i64 %i.ca, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 16 %i.b, i64 %i.ca, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !932 ; 2 uses
  %i.cd = zext i32 %i.cc to i64                   ; 3 uses
  %.val.i = load ptr, ptr %6, align 8             ; 9 uses
  %i.ce = icmp ne i32 %i.cc, 0
  %i.cf = and i1 %.not.i, %i.ce
  br i1 %i.cf, label %.lr.ph.i.i, label %.preheader1.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i
  %.not.i.i.i = icmp eq ptr %.val.i, null
  br label %bb.l

.preheader1.i.i:                                  ; preds = %bb.t, %._crit_edge.i
  %.4.i = phi i64 [ 0, %._crit_edge.i ], [ %.7.i, %bb.t ] ; 17 uses
  %.054.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.155.i.i, %bb.t ] ; 3 uses
  %.0.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.1.i.i, %bb.t ] ; 22 uses
  %i.cg = icmp ult i64 %.0.lcssa.i.i, %5
  br i1 %i.cg, label %.lr.ph9.i.i, label %.preheader.i.i

.lr.ph9.i.i:                                      ; preds = %.preheader1.i.i
  %.not.i60.i.i = icmp eq ptr %.val.i, null
  %i.ch = load ptr, ptr %i.g, align 8, !tbaa !305 ; 7 uses
  %.not.i.i62.i.i = icmp eq ptr %i.ch, null       ; 2 uses
  br i1 %.not.i60.i.i, label %.lr.ph9.split.us.i.i, label %.lr.ph9.split.i.i

.lr.ph9.split.us.i.i:                             ; preds = %.lr.ph9.i.i
  br i1 %.not.i.i62.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader: ; preds = %.lr.ph9.split.us.i.i
  %i.ci = sub i64 %5, %.0.lcssa.i.i
  %.neg117 = add i64 %.0.lcssa.i.i, 1
  %xtraiter113 = and i64 %i.ci, 1
  %lcmp.mod114.not = icmp eq i64 %xtraiter113, 0
  br i1 %lcmp.mod114.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !218
  %i.cl = sub i64 %i.ck, %i.k
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.0.lcssa.i.i
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !206
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !206
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.4.i
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !206
  %i.cs = trunc i64 %i.cl to i32
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !206
  %i.cu = add nuw nsw i64 %.4.i, 1                ; 2 uses
  %i.cv = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader
  %.lcssa95.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.cu, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %.unr115 = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.cu, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %.28.us.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.cv, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %i.cw = icmp eq i64 %5, %.neg117
  br i1 %i.cw, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i: ; preds = %.lr.ph9.split.us.i.i
  %i.cx = shl i64 %.4.i, 2
  %scevgep178.i = getelementptr i8, ptr %i.a, i64 %i.cx
  %i.cy = shl i64 %.0.lcssa.i.i, 2
  %scevgep179.i = getelementptr i8, ptr %i.f, i64 %i.cy
  %i.cz = sub i64 %5, %.0.lcssa.i.i               ; 4 uses
  %i.da = shl i64 %i.cz, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep178.i, ptr readonly align 4 %scevgep179.i, i64 %i.da, i1 false), !tbaa !206
  %min.iters.check = icmp ult i64 %i.cz, 4
  br i1 %min.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i
  %n.vec = and i64 %i.cz, -4                      ; 4 uses
  %i.db = add i64 %.4.i, %n.vec                   ; 2 uses
  %i.dc = add i64 %.0.lcssa.i.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.k, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %index ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %wide.load = load <2 x i64>, ptr %i.df, align 8, !tbaa !218
  %wide.load92 = load <2 x i64>, ptr %i.dg, align 8, !tbaa !218
  %i.dh = sub <2 x i64> %wide.load, %broadcast.splat
  %i.di = sub <2 x i64> %wide.load92, %broadcast.splat
  %i.dj = trunc <2 x i64> %i.dh to <2 x i32>
  %i.dk = trunc <2 x i64> %i.di to <2 x i32>
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %index ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store <2 x i32> %i.dj, ptr %i.dl, align 4, !tbaa !206
  store <2 x i32> %i.dk, ptr %i.dm, align 4, !tbaa !206
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !4653

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cz, %n.vec
  br i1 %cmp.n, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i, %middle.block
  %.ph = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i ], [ %i.db, %middle.block ]
  %.28.us.us.i.i.ph = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i ], [ %i.dc, %middle.block ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i
  %i.do = phi i64 [ %i.du, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i ], [ %.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader ] ; 2 uses
  %.28.us.us.i.i = phi i64 [ %i.dv, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i ], [ %.28.us.us.i.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.28.us.us.i.i
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !218
  %i.dr = sub i64 %i.dq, %i.k
  %i.ds = trunc i64 %i.dr to i32
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.do
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !206
  %i.du = add nuw nsw i64 %i.do, 1                ; 2 uses
  %i.dv = add nuw i64 %.28.us.us.i.i, 1           ; 2 uses
  %exitcond33.not.i.i = icmp eq i64 %i.dv, %5
  br i1 %exitcond33.not.i.i, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i, !llvm.loop !4654

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i
  %i.dw = phi i64 [ %i.ev, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i ], [ %.unr115, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit ] ; 4 uses
  %.28.us.i.i = phi i64 [ %i.ew, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i ], [ %.28.us.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit ] ; 4 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.28.us.i.i
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !218
  %i.dz = sub i64 %i.dy, %i.k
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.28.us.i.i
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !206
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !206
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dw
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !206
  %i.eg = trunc i64 %i.dz to i32
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dw
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !206
  %i.ei = add nuw nsw i64 %i.dw, 1                ; 2 uses
  %i.ej = add nuw i64 %.28.us.i.i, 1              ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ej
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !218
  %i.em = sub i64 %i.el, %i.k
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.ej
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !206
  %i.ep = zext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !206
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ei
  store i32 %i.er, ptr %i.es, align 4, !tbaa !206
  %i.et = trunc i64 %i.em to i32
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ei
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !206
  %i.ev = add nuw nsw i64 %i.dw, 2                ; 2 uses
  %i.ew = add nuw i64 %.28.us.i.i, 2              ; 2 uses
  %exitcond32.not.i.i.1 = icmp eq i64 %i.ew, %5
  br i1 %exitcond32.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i, !llvm.loop !4655

.lr.ph9.split.i.i:                                ; preds = %.lr.ph9.i.i
  br i1 %.not.i.i62.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader: ; preds = %.lr.ph9.split.i.i
  %i.ex = sub i64 %5, %.0.lcssa.i.i
  %.neg = add i64 %.0.lcssa.i.i, 1
  %xtraiter = and i64 %i.ex, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0.lcssa.i.i
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !206
  %i.fa = zext i32 %i.ez to i64                   ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fa
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !218
  %i.fd = sub i64 %i.fc, %i.k
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.fa
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !206
  %i.fg = zext i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !206
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.4.i
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !206
  %i.fk = trunc i64 %i.fd to i32
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.fk, ptr %i.fl, align 4, !tbaa !206
  %i.fm = add nuw nsw i64 %.4.i, 1                ; 2 uses
  %i.fn = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader
  %.lcssa99.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fm, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %.unr = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fm, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %.28.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fn, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %i.fo = icmp eq i64 %5, %.neg
  br i1 %i.fo, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader: ; preds = %.lr.ph9.split.i.i
  %i.fp = sub i64 %5, %.0.lcssa.i.i
  %.neg116 = add i64 %.0.lcssa.i.i, 1
  %xtraiter110 = and i64 %i.fp, 1
  %lcmp.mod111.not = icmp eq i64 %xtraiter110, 0
  br i1 %lcmp.mod111.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0.lcssa.i.i
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !206
  %i.fs = zext i32 %i.fr to i64                   ; 2 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fs
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !218
  %i.fv = sub i64 %i.fu, %i.k
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.fs
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !206
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.4.i
  store i32 %i.fx, ptr %i.fy, align 4, !tbaa !206
  %i.fz = trunc i64 %i.fv to i32
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !206
  %i.gb = add nuw nsw i64 %.4.i, 1                ; 2 uses
  %i.gc = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader
  %.lcssa97.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.gb, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %.unr112 = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.gb, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %.28.us12.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.gc, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %i.gd = icmp eq i64 %5, %.neg116
  br i1 %i.gd, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i
  %i.ge = phi i64 [ %i.hd, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i ], [ %.unr112, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit ] ; 4 uses
  %.28.us12.i.i = phi i64 [ %i.he, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i ], [ %.28.us12.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit ] ; 3 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.us12.i.i
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !206
  %i.gh = zext i32 %i.gg to i64                   ; 2 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gh
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !218
  %i.gk = sub i64 %i.gj, %i.k
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.gh
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !206
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ge
  store i32 %i.gm, ptr %i.gn, align 4, !tbaa !206
  %i.go = trunc i64 %i.gk to i32
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ge
  store i32 %i.go, ptr %i.gp, align 4, !tbaa !206
  %i.gq = add nuw nsw i64 %i.ge, 1                ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.us12.i.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !206
  %i.gu = zext i32 %i.gt to i64                   ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gu
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !218
  %i.gx = sub i64 %i.gw, %i.k
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.gu
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !206
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gq
  store i32 %i.gz, ptr %i.ha, align 4, !tbaa !206
  %i.hb = trunc i64 %i.gx to i32
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gq
  store i32 %i.hb, ptr %i.hc, align 4, !tbaa !206
  %i.hd = add nuw nsw i64 %i.ge, 2                ; 2 uses
  %i.he = add nuw i64 %.28.us12.i.i, 2            ; 2 uses
  %exitcond31.not.i.i.1 = icmp eq i64 %i.he, %5
  br i1 %exitcond31.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i, !llvm.loop !4655

bb.l:                                             ; preds = %bb.t, %.lr.ph.i.i
  %.6.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.7.i, %bb.t ] ; 7 uses
  %.04.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %bb.t ] ; 5 uses
  %.0542.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.155.i.i, %bb.t ] ; 5 uses
  br i1 %.not.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !206
  %i.hh = zext i32 %i.hg to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i: ; preds = %bb.m, %bb.l
  %i.hi = phi i64 [ %i.hh, %bb.m ], [ %.04.i.i, %bb.l ] ; 5 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.hi
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !218
  %i.hl = sub i64 %i.hk, %i.k                     ; 4 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.0542.i.i
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !206 ; 2 uses
  %i.ho = zext i32 %i.hn to i64                   ; 2 uses
  %i.hp = icmp eq i64 %i.hl, %i.ho
  br i1 %i.hp, label %bb.n, label %bb.p

bb.n:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.hq = load ptr, ptr %i.g, align 8, !tbaa !305 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hq, null
  br i1 %.not.i.i.i.i.i, label %_ZZN6duckdbL23MergeUpdateLoopInternalIiiNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %i.hi
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !206
  %i.ht = zext i32 %i.hs to i64
  br label %_ZZN6duckdbL23MergeUpdateLoopInternalIiiNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i

_ZZN6duckdbL23MergeUpdateLoopInternalIiiNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i: ; preds = %bb.o, %bb.n
  %i.hu = phi i64 [ %i.ht, %bb.o ], [ %i.hi, %bb.n ]
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.hu
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !206
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.6.i
  store i32 %i.hw, ptr %i.hx, align 4, !tbaa !206
  %i.hy = trunc nuw i64 %i.hl to i32
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.6.i
  store i32 %i.hy, ptr %i.hz, align 4, !tbaa !206
  %i.ia = add nuw i64 %.04.i.i, 1
  %i.ib = add nuw nsw i64 %.0542.i.i, 1
  br label %bb.t

bb.p:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.ic = icmp ult i64 %i.hl, %i.ho
  br i1 %i.ic, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.id = load ptr, ptr %i.g, align 8, !tbaa !305 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.id, null
  br i1 %.not.i.i.i.i, label %_ZZN6duckdbL23MergeUpdateLoopInternalIiiNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.hi
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !206
  %i.ig = zext i32 %i.if to i64
  br label %_ZZN6duckdbL23MergeUpdateLoopInternalIiiNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i

_ZZN6duckdbL23MergeUpdateLoopInternalIiiNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i: ; preds = %bb.r, %bb.q
  %i.ih = phi i64 [ %i.ig, %bb.r ], [ %i.hi, %bb.q ]
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ih
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !206
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.6.i
  store i32 %i.ij, ptr %i.ik, align 4, !tbaa !206
  %i.il = trunc nuw i64 %i.hl to i32
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.6.i
  store i32 %i.il, ptr %i.im, align 4, !tbaa !206
  %i.in = add nuw i64 %.04.i.i, 1
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.0542.i.i
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !206
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.6.i
  store i32 %i.ip, ptr %i.iq, align 4, !tbaa !206
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.6.i
  store i32 %i.hn, ptr %i.ir, align 4, !tbaa !206
  %i.is = add nuw nsw i64 %.0542.i.i, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZZN6duckdbL23MergeUpdateLoopInternalIiiNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i, %_ZZN6duckdbL23MergeUpdateLoopInternalIiiNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i
  %.155.i.i = phi i64 [ %i.ib, %_ZZN6duckdbL23MergeUpdateLoopInternalIiiNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i ], [ %.0542.i.i, %_ZZN6duckdbL23MergeUpdateLoopInternalIiiNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i ], [ %i.is, %bb.s ] ; 3 uses
  %.1.i.i = phi i64 [ %i.ia, %_ZZN6duckdbL23MergeUpdateLoopInternalIiiNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i ], [ %i.in, %_ZZN6duckdbL23MergeUpdateLoopInternalIiiNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i ], [ %.04.i.i, %bb.s ] ; 3 uses
  %.7.i = add i64 %.6.i, 1                        ; 2 uses
  %i.it = icmp ult i64 %.1.i.i, %5
  %i.iu = icmp ult i64 %.155.i.i, %i.cd
  %i.iv = select i1 %i.it, i1 %i.iu, i1 false
  br i1 %i.iv, label %bb.l, label %.preheader1.i.i, !llvm.loop !4656

.preheader.i.i:                                   ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i, %middle.block, %.preheader1.i.i
  %.5.i = phi i64 [ %.4.i, %.preheader1.i.i ], [ %i.hd, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i ], [ %i.du, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i ], [ %i.ev, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i ], [ %i.db, %middle.block ], [ %.lcssa95.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit ], [ %.lcssa97.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit ], [ %.lcssa99.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit ], [ %i.kj, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i ] ; 3 uses
  %i.iw = icmp ult i64 %.054.lcssa.i.i, %i.cd
  br i1 %i.iw, label %.lr.ph20.i.preheader.i, label %_ZN6duckdbL23MergeUpdateLoopInternalIiiNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_m.exit

.lr.ph20.i.preheader.i:                           ; preds = %.preheader.i.i
  %i.ix = shl i64 %.5.i, 2                        ; 2 uses
  %scevgep180.i = getelementptr i8, ptr %i.a, i64 %i.ix
  %i.iy = shl nuw nsw i64 %.054.lcssa.i.i, 2
  %i.iz = getelementptr i8, ptr %0, i64 %i.iy     ; 2 uses
  %i.ja = getelementptr i8, ptr %i.iz, i64 %i.p
  %scevgep181.i = getelementptr i8, ptr %i.ja, i64 88
  %i.jb = sub nuw nsw i64 %i.cd, %.054.lcssa.i.i  ; 2 uses
  %i.jc = shl nuw nsw i64 %i.jb, 2                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep180.i, ptr align 4 %scevgep181.i, i64 %i.jc, i1 false), !tbaa !206
  %scevgep182.i = getelementptr i8, ptr %i.b, i64 %i.ix
  %scevgep183.i = getelementptr i8, ptr %i.iz, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep182.i, ptr align 4 %scevgep183.i, i64 %i.jc, i1 false), !tbaa !206
  %i.jd = add i64 %i.jb, %.5.i
  br label %_ZN6duckdbL23MergeUpdateLoopInternalIiiNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_m.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i
  %i.je = phi i64 [ %i.kj, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i ], [ %.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit ] ; 4 uses
  %.28.i.i = phi i64 [ %i.kk, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i ], [ %.28.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit ] ; 3 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.i.i
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !206
  %i.jh = zext i32 %i.jg to i64                   ; 2 uses
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.jh
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !218
  %i.jk = sub i64 %i.jj, %i.k
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.jh
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !206
  %i.jn = zext i32 %i.jm to i64
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.jn
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !206
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.je
  store i32 %i.jp, ptr %i.jq, align 4, !tbaa !206
  %i.jr = trunc i64 %i.jk to i32
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.je
  store i32 %i.jr, ptr %i.js, align 4, !tbaa !206
  %i.jt = add nuw nsw i64 %i.je, 1                ; 2 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.i.i
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 4
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !206
  %i.jx = zext i32 %i.jw to i64                   ; 2 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.jx
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !218
  %i.ka = sub i64 %i.jz, %i.k
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.jx
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !206
  %i.kd = zext i32 %i.kc to i64
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.kd
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !206
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.jt
  store i32 %i.kf, ptr %i.kg, align 4, !tbaa !206
  %i.kh = trunc i64 %i.ka to i32
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.jt
  store i32 %i.kh, ptr %i.ki, align 4, !tbaa !206
  %i.kj = add nuw nsw i64 %i.je, 2                ; 2 uses
  %i.kk = add nuw i64 %.28.i.i, 2                 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.kk, %5
  br i1 %exitcond.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i, !llvm.loop !4655

_ZN6duckdbL23MergeUpdateLoopInternalIiiNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_m.exit: ; preds = %.preheader.i.i, %.lr.ph20.i.preheader.i
  %.8.i = phi i64 [ %.5.i, %.preheader.i.i ], [ %i.jd, %.lr.ph20.i.preheader.i ] ; 2 uses
  %i.kl = trunc i64 %.8.i to i32
  store i32 %i.kl, ptr %i.cb, align 8, !tbaa !932
  %i.km = shl i64 %.8.i, 2                        ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.q, ptr nonnull align 16 %i.a, i64 %i.km, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 16 %i.b, i64 %i.km, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdbL15MergeUpdateLoopIlEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(73) %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, i64 noundef %7) #1 {
bb.a:
  %i.a = alloca [2048 x i64], align 16            ; 22 uses
  %i.b = alloca [2048 x i32], align 16            ; 23 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1260
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIlEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1209 ; 12 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !959    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !943
  %i.j = shl i64 %i.i, 11
  %i.k = add i64 %i.j, %7                         ; 13 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.n = load i32, ptr %i.m, align 4, !tbaa !938
  %i.o = zext i32 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 2                  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.p ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.t = load i32, ptr %i.s, align 4, !tbaa !938
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2                  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %.not.i = icmp ne i64 %5, 0                     ; 2 uses
  br i1 %.not.i, label %.lr.ph160.i, label %..preheader_crit_edge.i

..preheader_crit_edge.i:                          ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !932
  %.pre192.i = zext i32 %.pre.i to i64
  br label %.preheader.i

.lr.ph160.i:                                      ; preds = %bb.a
  %i.x = load ptr, ptr %6, align 8, !tbaa !305    ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, null
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.z = load i32, ptr %i.y, align 8, !tbaa !932
  %i.aa = zext i32 %i.z to i64                    ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = zext i32 %i.ac to i64                   ; 3 uses
  br label %bb.b

.preheader.i:                                     ; preds = %bb.k, %..preheader_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre192.i, %..preheader_crit_edge.i ], [ %i.aa, %bb.k ] ; 3 uses
  %.0130.lcssa.i = phi i64 [ 0, %..preheader_crit_edge.i ], [ %.2132.i, %bb.k ] ; 4 uses
  %.072.lcssa.i = phi i64 [ 0, %..preheader_crit_edge.i ], [ %.274.i, %bb.k ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.af = icmp ult i64 %.072.lcssa.i, %.pre-phi.i
  br i1 %i.af, label %.lr.ph165.preheader.i, label %._crit_edge.i

.lr.ph165.preheader.i:                            ; preds = %.preheader.i
  %i.ag = shl i64 %.0130.lcssa.i, 3
  %scevgep.i = getelementptr i8, ptr %i.a, i64 %i.ag
  %i.ah = shl nuw nsw i64 %.072.lcssa.i, 3
  %i.ai = getelementptr i8, ptr %2, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 %i.v
  %scevgep183.i = getelementptr i8, ptr %i.aj, i64 88
  %i.ak = sub nuw nsw i64 %.pre-phi.i, %.072.lcssa.i ; 2 uses
  %i.al = shl nuw nsw i64 %i.ak, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scevgep.i, ptr align 8 %scevgep183.i, i64 %i.al, i1 false), !tbaa !218
  %i.am = shl i64 %.0130.lcssa.i, 2
  %scevgep184.i = getelementptr i8, ptr %i.b, i64 %i.am
  %i.an = shl nuw nsw i64 %.072.lcssa.i, 2
  %i.ao = getelementptr i8, ptr %2, i64 %i.an
  %scevgep185.i = getelementptr i8, ptr %i.ao, i64 88
  %i.ap = shl nuw nsw i64 %i.ak, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep184.i, ptr align 4 %scevgep185.i, i64 %i.ap, i1 false), !tbaa !206
  %i.aq = add i64 %.0130.lcssa.i, %.pre-phi.i
  %i.ar = sub i64 %i.aq, %.072.lcssa.i
  br label %._crit_edge.i

bb.b:                                             ; preds = %bb.k, %.lr.ph160.i
  %.0159.i = phi i64 [ 0, %.lr.ph160.i ], [ %.2.i, %bb.k ] ; 4 uses
  %.072158.i = phi i64 [ 0, %.lr.ph160.i ], [ %.274.i, %bb.k ] ; 3 uses
  %.075157.i = phi i64 [ 0, %.lr.ph160.i ], [ %i.cc, %bb.k ] ; 3 uses
  %.0130156.i = phi i64 [ 0, %.lr.ph160.i ], [ %.2132.i, %bb.k ] ; 2 uses
  br i1 %.not.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.075157.i
  %i.at = load i32, ptr %i.as, align 4, !tbaa !206
  %i.au = zext i32 %i.at to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %bb.c, %bb.b
  %i.av = phi i64 [ %i.au, %bb.c ], [ %.075157.i, %bb.b ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !218
  %i.ay = sub i64 %i.ax, %i.k                     ; 6 uses
  %i.az = icmp ult i64 %.072158.i, %i.aa
  br i1 %i.az, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, %bb.d
  %.173151.i = phi i64 [ %i.bj, %bb.d ], [ %.072158.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 6 uses
  %.1131150.i = phi i64 [ %i.bh, %bb.d ], [ %.0130156.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 7 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.173151.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !206 ; 3 uses
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = icmp ugt i64 %i.ay, %i.bc
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.173151.i
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !218
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.1131150.i
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !218
  %i.bh = add nuw nsw i64 %.1131150.i, 1          ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1131150.i
  store i32 %i.bb, ptr %i.bi, align 4, !tbaa !206
  %i.bj = add i64 %.173151.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bj, %i.aa
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !4657

bb.e:                                             ; preds = %.lr.ph.i
  %i.bk = icmp eq i64 %i.ay, %i.bc
  br i1 %i.bk, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.173151.i
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !218
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.1131150.i
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !218
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1131150.i
  store i32 %i.bb, ptr %i.bo, align 4, !tbaa !206
  %i.bp = add nuw nsw i64 %.173151.i, 1
  br label %bb.k

.critedge.i:                                      ; preds = %bb.d, %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %.1131146.i = phi i64 [ %.1131150.i, %bb.e ], [ %.0130156.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.bh, %bb.d ] ; 3 uses
  %.173143.i = phi i64 [ %.173151.i, %bb.e ], [ %.072158.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.aa, %bb.d ]
  %i.bq = icmp ult i64 %.0159.i, %i.ad
  br i1 %i.bq, label %.lr.ph154.i, label %.critedge2.i

.lr.ph154.i:                                      ; preds = %.critedge.i, %bb.g
  %.1153.i = phi i64 [ %i.bv, %bb.g ], [ %.0159.i, %.critedge.i ] ; 5 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.1153.i
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !206
  %i.bt = zext i32 %i.bs to i64                   ; 2 uses
  %i.bu = icmp ugt i64 %i.ay, %i.bt
  br i1 %i.bu, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph154.i
  %i.bv = add i64 %.1153.i, 1                     ; 2 uses
  %exitcond181.not.i = icmp eq i64 %i.bv, %i.ad
  br i1 %exitcond181.not.i, label %.critedge2.i, label %.lr.ph154.i, !llvm.loop !4658

bb.h:                                             ; preds = %.lr.ph154.i
  %i.bw = icmp eq i64 %i.ay, %i.bt
  br i1 %i.bw, label %bb.i, label %.critedge2.i

bb.i:                                             ; preds = %bb.h
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.1153.i
  br label %bb.j

.critedge2.i:                                     ; preds = %bb.g, %bb.h, %.critedge.i
  %.1149.i = phi i64 [ %.1153.i, %bb.h ], [ %.0159.i, %.critedge.i ], [ %i.ad, %bb.g ]
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ay
  br label %bb.j

bb.j:                                             ; preds = %.critedge2.i, %bb.i
  %.sink.in.i = phi ptr [ %i.by, %.critedge2.i ], [ %i.bx, %bb.i ]
  %.1148.i = phi i64 [ %.1149.i, %.critedge2.i ], [ %.1153.i, %bb.i ]
  %.sink.i = load i64, ptr %.sink.in.i, align 8, !tbaa !218
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.1131146.i
  store i64 %.sink.i, ptr %i.bz, align 8, !tbaa !218
  %i.ca = trunc i64 %i.ay to i32
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1131146.i
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !206
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.1131145.i = phi i64 [ %.1131150.i, %bb.f ], [ %.1131146.i, %bb.j ]
  %.274.i = phi i64 [ %i.bp, %bb.f ], [ %.173143.i, %bb.j ] ; 2 uses
  %.2.i = phi i64 [ %.0159.i, %bb.f ], [ %.1148.i, %bb.j ]
  %.2132.i = add i64 %.1131145.i, 1               ; 2 uses
  %i.cc = add nuw i64 %.075157.i, 1               ; 2 uses
  %exitcond182.not.i = icmp eq i64 %i.cc, %5
  br i1 %exitcond182.not.i, label %.preheader.i, label %bb.b, !llvm.loop !4659

._crit_edge.i:                                    ; preds = %.lr.ph165.preheader.i, %.preheader.i
  %.3133.lcssa.i = phi i64 [ %.0130.lcssa.i, %.preheader.i ], [ %i.ar, %.lr.ph165.preheader.i ] ; 3 uses
  %i.cd = trunc i64 %.3133.lcssa.i to i32
  store i32 %i.cd, ptr %i.ae, align 8, !tbaa !932
  %i.ce = shl i64 %.3133.lcssa.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 16 %i.a, i64 %i.ce, i1 false)
  %i.cf = shl i64 %.3133.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 16 %i.b, i64 %i.cf, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !932 ; 2 uses
  %i.ci = zext i32 %i.ch to i64                   ; 3 uses
  %.val.i = load ptr, ptr %6, align 8             ; 9 uses
  %i.cj = icmp ne i32 %i.ch, 0
  %i.ck = and i1 %.not.i, %i.cj
  br i1 %i.ck, label %.lr.ph.i.i, label %.preheader1.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i
  %.not.i.i.i = icmp eq ptr %.val.i, null
  br label %bb.l

.preheader1.i.i:                                  ; preds = %bb.t, %._crit_edge.i
  %.4.i = phi i64 [ 0, %._crit_edge.i ], [ %.12.i, %bb.t ] ; 17 uses
  %.054.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.155.i.i, %bb.t ] ; 4 uses
  %.0.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.1.i.i, %bb.t ] ; 22 uses
  %i.cl = icmp ult i64 %.0.lcssa.i.i, %5
  br i1 %i.cl, label %.lr.ph9.i.i, label %.preheader.i.i

.lr.ph9.i.i:                                      ; preds = %.preheader1.i.i
  %.not.i60.i.i = icmp eq ptr %.val.i, null
  %i.cm = load ptr, ptr %i.g, align 8, !tbaa !305 ; 7 uses
  %.not.i.i62.i.i = icmp eq ptr %i.cm, null       ; 2 uses
  br i1 %.not.i60.i.i, label %.lr.ph9.split.us.i.i, label %.lr.ph9.split.i.i

.lr.ph9.split.us.i.i:                             ; preds = %.lr.ph9.i.i
  br i1 %.not.i.i62.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader: ; preds = %.lr.ph9.split.us.i.i
  %i.cn = sub i64 %5, %.0.lcssa.i.i
  %.neg115 = add i64 %.0.lcssa.i.i, 1
  %xtraiter112 = and i64 %i.cn, 1
  %lcmp.mod113.not = icmp eq i64 %xtraiter112, 0
  br i1 %lcmp.mod113.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !218
  %i.cq = sub i64 %i.cp, %i.k
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.0.lcssa.i.i
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !206
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ct
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !218
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.4.i
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !218
  %i.cx = trunc i64 %i.cq to i32
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !206
  %i.cz = add nuw nsw i64 %.4.i, 1                ; 2 uses
  %i.da = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader
  %.lcssa95.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.cz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %.9.i.unr = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.cz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %.28.us.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.da, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %i.db = icmp eq i64 %5, %.neg115
  br i1 %i.db, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i: ; preds = %.lr.ph9.split.us.i.i
  %i.dc = shl i64 %.4.i, 3
  %scevgep186.i = getelementptr i8, ptr %i.a, i64 %i.dc
  %i.dd = shl i64 %.0.lcssa.i.i, 3
  %scevgep187.i = getelementptr i8, ptr %i.f, i64 %i.dd
  %i.de = sub i64 %5, %.0.lcssa.i.i               ; 4 uses
  %i.df = shl i64 %i.de, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scevgep186.i, ptr readonly align 8 %scevgep187.i, i64 %i.df, i1 false), !tbaa !218
  %min.iters.check = icmp ult i64 %i.de, 4
  br i1 %min.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i
  %n.vec = and i64 %i.de, -4                      ; 4 uses
  %i.dg = add i64 %.4.i, %n.vec                   ; 2 uses
  %i.dh = add i64 %.0.lcssa.i.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.k, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %index ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %wide.load = load <2 x i64>, ptr %i.dk, align 8, !tbaa !218
  %wide.load92 = load <2 x i64>, ptr %i.dl, align 8, !tbaa !218
  %i.dm = sub <2 x i64> %wide.load, %broadcast.splat
  %i.dn = sub <2 x i64> %wide.load92, %broadcast.splat
  %i.do = trunc <2 x i64> %i.dm to <2 x i32>
  %i.dp = trunc <2 x i64> %i.dn to <2 x i32>
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %index ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store <2 x i32> %i.do, ptr %i.dq, align 4, !tbaa !206
  store <2 x i32> %i.dp, ptr %i.dr, align 4, !tbaa !206
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !4660

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.de, %n.vec
  br i1 %cmp.n, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i, %middle.block
  %.10.i.ph = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i ], [ %i.dg, %middle.block ]
  %.28.us.us.i.i.ph = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i ], [ %i.dh, %middle.block ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i
  %.10.i = phi i64 [ %i.dy, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i ], [ %.10.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader ] ; 2 uses
  %.28.us.us.i.i = phi i64 [ %i.dz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i ], [ %.28.us.us.i.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader ] ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.28.us.us.i.i
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !218
  %i.dv = sub i64 %i.du, %i.k
  %i.dw = trunc i64 %i.dv to i32
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.10.i
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !206
  %i.dy = add nuw nsw i64 %.10.i, 1               ; 2 uses
  %i.dz = add nuw i64 %.28.us.us.i.i, 1           ; 2 uses
  %exitcond31.not.i.i = icmp eq i64 %i.dz, %5
  br i1 %exitcond31.not.i.i, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i, !llvm.loop !4661

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i
  %.9.i = phi i64 [ %i.ey, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i ], [ %.9.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit ] ; 4 uses
  %.28.us.i.i = phi i64 [ %i.ez, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i ], [ %.28.us.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit ] ; 4 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.28.us.i.i
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !218
  %i.ec = sub i64 %i.eb, %i.k
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.28.us.i.i
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !206
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ef
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !218
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.9.i
  store i64 %i.eh, ptr %i.ei, align 8, !tbaa !218
  %i.ej = trunc i64 %i.ec to i32
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.9.i
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !206
  %i.el = add nuw nsw i64 %.9.i, 1                ; 2 uses
  %i.em = add nuw i64 %.28.us.i.i, 1              ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.em
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !218
  %i.ep = sub i64 %i.eo, %i.k
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.em
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !206
  %i.es = zext i32 %i.er to i64
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.es
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !218
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.el
  store i64 %i.eu, ptr %i.ev, align 8, !tbaa !218
  %i.ew = trunc i64 %i.ep to i32
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.el
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !206
  %i.ey = add nuw nsw i64 %.9.i, 2                ; 2 uses
  %i.ez = add nuw i64 %.28.us.i.i, 2              ; 2 uses
  %exitcond30.not.i.i.1 = icmp eq i64 %i.ez, %5
  br i1 %exitcond30.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i, !llvm.loop !4662

.lr.ph9.split.i.i:                                ; preds = %.lr.ph9.i.i
  br i1 %.not.i.i62.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader: ; preds = %.lr.ph9.split.i.i
  %i.fa = sub i64 %5, %.0.lcssa.i.i
  %.neg = add i64 %.0.lcssa.i.i, 1
  %xtraiter = and i64 %i.fa, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0.lcssa.i.i
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !206
  %i.fd = zext i32 %i.fc to i64                   ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fd
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !218
  %i.fg = sub i64 %i.ff, %i.k
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.fd
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !206
  %i.fj = zext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.fj
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !218
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.4.i
  store i64 %i.fl, ptr %i.fm, align 8, !tbaa !218
  %i.fn = trunc i64 %i.fg to i32
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.fn, ptr %i.fo, align 4, !tbaa !206
  %i.fp = add nuw nsw i64 %.4.i, 1                ; 2 uses
  %i.fq = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader
  %.lcssa99.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fp, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %.7.i.unr = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fp, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %.28.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fq, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %i.fr = icmp eq i64 %5, %.neg
  br i1 %i.fr, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader: ; preds = %.lr.ph9.split.i.i
  %i.fs = sub i64 %5, %.0.lcssa.i.i
  %.neg114 = add i64 %.0.lcssa.i.i, 1
  %xtraiter110 = and i64 %i.fs, 1
  %lcmp.mod111.not = icmp eq i64 %xtraiter110, 0
  br i1 %lcmp.mod111.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0.lcssa.i.i
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !206
  %i.fv = zext i32 %i.fu to i64                   ; 2 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fv
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !218
  %i.fy = sub i64 %i.fx, %i.k
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.fv
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !218
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.4.i
  store i64 %i.ga, ptr %i.gb, align 8, !tbaa !218
  %i.gc = trunc i64 %i.fy to i32
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.gc, ptr %i.gd, align 4, !tbaa !206
  %i.ge = add nuw nsw i64 %.4.i, 1                ; 2 uses
  %i.gf = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader
  %.lcssa97.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.ge, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %.8.i.unr = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.ge, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %.28.us12.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.gf, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %i.gg = icmp eq i64 %5, %.neg114
  br i1 %i.gg, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i
  %.8.i = phi i64 [ %i.hf, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i ], [ %.8.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit ] ; 4 uses
  %.28.us12.i.i = phi i64 [ %i.hg, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i ], [ %.28.us12.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit ] ; 3 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.us12.i.i
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !206
  %i.gj = zext i32 %i.gi to i64                   ; 2 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gj
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !218
  %i.gm = sub i64 %i.gl, %i.k
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.gj
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !218
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.8.i
  store i64 %i.go, ptr %i.gp, align 8, !tbaa !218
  %i.gq = trunc i64 %i.gm to i32
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.8.i
  store i32 %i.gq, ptr %i.gr, align 4, !tbaa !206
  %i.gs = add nuw nsw i64 %.8.i, 1                ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.us12.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 4
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !206
  %i.gw = zext i32 %i.gv to i64                   ; 2 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gw
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !218
  %i.gz = sub i64 %i.gy, %i.k
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.gw
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !218
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.gs
  store i64 %i.hb, ptr %i.hc, align 8, !tbaa !218
  %i.hd = trunc i64 %i.gz to i32
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gs
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !206
  %i.hf = add nuw nsw i64 %.8.i, 2                ; 2 uses
  %i.hg = add nuw i64 %.28.us12.i.i, 2            ; 2 uses
  %exitcond29.not.i.i.1 = icmp eq i64 %i.hg, %5
  br i1 %exitcond29.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i, !llvm.loop !4662

bb.l:                                             ; preds = %bb.t, %.lr.ph.i.i
  %.11.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.12.i, %bb.t ] ; 7 uses
  %.04.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %bb.t ] ; 5 uses
  %.0542.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.155.i.i, %bb.t ] ; 5 uses
  br i1 %.not.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !206
  %i.hj = zext i32 %i.hi to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i: ; preds = %bb.m, %bb.l
  %i.hk = phi i64 [ %i.hj, %bb.m ], [ %.04.i.i, %bb.l ] ; 5 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.hk
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !218
  %i.hn = sub i64 %i.hm, %i.k                     ; 4 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.0542.i.i
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !206 ; 2 uses
  %i.hq = zext i32 %i.hp to i64                   ; 2 uses
  %i.hr = icmp eq i64 %i.hn, %i.hq
  br i1 %i.hr, label %bb.n, label %bb.p

bb.n:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.hs = load ptr, ptr %i.g, align 8, !tbaa !305 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hs, null
  br i1 %.not.i.i.i.i.i, label %_ZZN6duckdbL23MergeUpdateLoopInternalIllNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %i.hk
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !206
  %i.hv = zext i32 %i.hu to i64
  br label %_ZZN6duckdbL23MergeUpdateLoopInternalIllNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i

_ZZN6duckdbL23MergeUpdateLoopInternalIllNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i: ; preds = %bb.o, %bb.n
  %i.hw = phi i64 [ %i.hv, %bb.o ], [ %i.hk, %bb.n ]
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.hw
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !218
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.11.i
  store i64 %i.hy, ptr %i.hz, align 8, !tbaa !218
  %i.ia = trunc nuw i64 %i.hn to i32
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.11.i
  store i32 %i.ia, ptr %i.ib, align 4, !tbaa !206
  %i.ic = add nuw i64 %.04.i.i, 1
  %i.id = add nuw nsw i64 %.0542.i.i, 1
  br label %bb.t

bb.p:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.ie = icmp ult i64 %i.hn, %i.hq
  br i1 %i.ie, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.if = load ptr, ptr %i.g, align 8, !tbaa !305 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.if, null
  br i1 %.not.i.i.i.i, label %_ZZN6duckdbL23MergeUpdateLoopInternalIllNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.hk
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !206
  %i.ii = zext i32 %i.ih to i64
  br label %_ZZN6duckdbL23MergeUpdateLoopInternalIllNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i

_ZZN6duckdbL23MergeUpdateLoopInternalIllNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i: ; preds = %bb.r, %bb.q
  %i.ij = phi i64 [ %i.ii, %bb.r ], [ %i.hk, %bb.q ]
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ij
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !218
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.11.i
  store i64 %i.il, ptr %i.im, align 8, !tbaa !218
  %i.in = trunc nuw i64 %i.hn to i32
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.11.i
  store i32 %i.in, ptr %i.io, align 4, !tbaa !206
  %i.ip = add nuw i64 %.04.i.i, 1
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.0542.i.i
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !218
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.11.i
  store i64 %i.ir, ptr %i.is, align 8, !tbaa !218
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.11.i
  store i32 %i.hp, ptr %i.it, align 4, !tbaa !206
  %i.iu = add nuw nsw i64 %.0542.i.i, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZZN6duckdbL23MergeUpdateLoopInternalIllNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i, %_ZZN6duckdbL23MergeUpdateLoopInternalIllNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i
  %.155.i.i = phi i64 [ %i.id, %_ZZN6duckdbL23MergeUpdateLoopInternalIllNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i ], [ %.0542.i.i, %_ZZN6duckdbL23MergeUpdateLoopInternalIllNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i ], [ %i.iu, %bb.s ] ; 3 uses
  %.1.i.i = phi i64 [ %i.ic, %_ZZN6duckdbL23MergeUpdateLoopInternalIllNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i ], [ %i.ip, %_ZZN6duckdbL23MergeUpdateLoopInternalIllNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i ], [ %.04.i.i, %bb.s ] ; 3 uses
  %.12.i = add i64 %.11.i, 1                      ; 2 uses
  %i.iv = icmp ult i64 %.1.i.i, %5
  %i.iw = icmp ult i64 %.155.i.i, %i.ci
  %i.ix = select i1 %i.iv, i1 %i.iw, i1 false
  br i1 %i.ix, label %bb.l, label %.preheader1.i.i, !llvm.loop !4663

.preheader.i.i:                                   ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i, %middle.block, %.preheader1.i.i
  %.5.i = phi i64 [ %.4.i, %.preheader1.i.i ], [ %i.hf, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i ], [ %i.dy, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i ], [ %i.ey, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i ], [ %i.dg, %middle.block ], [ %.lcssa95.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit ], [ %.lcssa97.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit ], [ %.lcssa99.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit ], [ %i.ko, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i ] ; 4 uses
  %i.iy = icmp ult i64 %.054.lcssa.i.i, %i.ci
  br i1 %i.iy, label %.lr.ph20.i.preheader.i, label %_ZN6duckdbL23MergeUpdateLoopInternalIllNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_m.exit

.lr.ph20.i.preheader.i:                           ; preds = %.preheader.i.i
  %i.iz = shl i64 %.5.i, 3
  %scevgep188.i = getelementptr i8, ptr %i.a, i64 %i.iz
  %i.ja = shl nuw nsw i64 %.054.lcssa.i.i, 3
  %i.jb = getelementptr i8, ptr %0, i64 %i.ja
  %i.jc = getelementptr i8, ptr %i.jb, i64 %i.p
  %scevgep189.i = getelementptr i8, ptr %i.jc, i64 88
  %i.jd = sub nuw nsw i64 %i.ci, %.054.lcssa.i.i  ; 3 uses
  %i.je = shl nuw nsw i64 %i.jd, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scevgep188.i, ptr align 8 %scevgep189.i, i64 %i.je, i1 false), !tbaa !218
  %i.jf = shl i64 %.5.i, 2
  %scevgep190.i = getelementptr i8, ptr %i.b, i64 %i.jf
  %i.jg = shl nuw nsw i64 %.054.lcssa.i.i, 2
  %i.jh = getelementptr i8, ptr %0, i64 %i.jg
  %scevgep191.i = getelementptr i8, ptr %i.jh, i64 88
  %i.ji = shl nuw nsw i64 %i.jd, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep190.i, ptr align 4 %scevgep191.i, i64 %i.ji, i1 false), !tbaa !206
  %i.jj = add i64 %i.jd, %.5.i
  br label %_ZN6duckdbL23MergeUpdateLoopInternalIllNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_m.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i
  %.7.i = phi i64 [ %i.ko, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i ], [ %.7.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit ] ; 4 uses
  %.28.i.i = phi i64 [ %i.kp, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i ], [ %.28.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit ] ; 3 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.i.i
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !206
  %i.jm = zext i32 %i.jl to i64                   ; 2 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.jm
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !218
  %i.jp = sub i64 %i.jo, %i.k
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.jm
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !206
  %i.js = zext i32 %i.jr to i64
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.js
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !218
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.7.i
  store i64 %i.ju, ptr %i.jv, align 8, !tbaa !218
  %i.jw = trunc i64 %i.jp to i32
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.7.i
  store i32 %i.jw, ptr %i.jx, align 4, !tbaa !206
  %i.jy = add nuw nsw i64 %.7.i, 1                ; 2 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.i.i
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 4
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !206
  %i.kc = zext i32 %i.kb to i64                   ; 2 uses
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.kc
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !218
  %i.kf = sub i64 %i.ke, %i.k
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.kc
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !206
  %i.ki = zext i32 %i.kh to i64
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ki
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !218
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.jy
  store i64 %i.kk, ptr %i.kl, align 8, !tbaa !218
  %i.km = trunc i64 %i.kf to i32
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.jy
  store i32 %i.km, ptr %i.kn, align 4, !tbaa !206
  %i.ko = add nuw nsw i64 %.7.i, 2                ; 2 uses
  %i.kp = add nuw i64 %.28.i.i, 2                 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.kp, %5
  br i1 %exitcond.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i, !llvm.loop !4662

_ZN6duckdbL23MergeUpdateLoopInternalIllNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_m.exit: ; preds = %.preheader.i.i, %.lr.ph20.i.preheader.i
  %.13.i = phi i64 [ %.5.i, %.preheader.i.i ], [ %i.jj, %.lr.ph20.i.preheader.i ] ; 3 uses
  %i.kq = trunc i64 %.13.i to i32
  store i32 %i.kq, ptr %i.cg, align 8, !tbaa !932
  %i.kr = shl i64 %.13.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 16 %i.a, i64 %i.kr, i1 false)
  %i.ks = shl i64 %.13.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 16 %i.b, i64 %i.ks, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdbL15MergeUpdateLoopIhEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(73) %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, i64 noundef %7) #1 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 22 uses
  %i.b = alloca [2048 x i32], align 16            ; 23 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1260
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIhEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1209 ; 12 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !959    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !943
  %i.j = shl i64 %i.i, 11
  %i.k = add i64 %i.j, %7                         ; 13 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.n = load i32, ptr %i.m, align 4, !tbaa !938
  %i.o = zext i32 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 2                  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.p ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.t = load i32, ptr %i.s, align 4, !tbaa !938
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2                  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %.not.i = icmp ne i64 %5, 0                     ; 2 uses
  br i1 %.not.i, label %.lr.ph152.i, label %..preheader_crit_edge.i

..preheader_crit_edge.i:                          ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !932
  %.pre193.i = zext i32 %.pre.i to i64
  br label %.preheader.i

.lr.ph152.i:                                      ; preds = %bb.a
  %i.x = load ptr, ptr %6, align 8, !tbaa !305    ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, null
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.z = load i32, ptr %i.y, align 8, !tbaa !932
  %i.aa = zext i32 %i.z to i64                    ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = zext i32 %i.ac to i64                   ; 3 uses
  br label %bb.b

.preheader.i:                                     ; preds = %bb.k, %..preheader_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre193.i, %..preheader_crit_edge.i ], [ %i.aa, %bb.k ] ; 3 uses
  %.0128.lcssa.i = phi i64 [ 0, %..preheader_crit_edge.i ], [ %.2130.i, %bb.k ] ; 4 uses
  %.072.lcssa.i = phi i64 [ 0, %..preheader_crit_edge.i ], [ %.274.i, %bb.k ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.af = icmp ult i64 %.072.lcssa.i, %.pre-phi.i
  br i1 %i.af, label %.lr.ph157.preheader.i, label %._crit_edge.i

.lr.ph157.preheader.i:                            ; preds = %.preheader.i
  %scevgep.i = getelementptr i8, ptr %i.a, i64 %.0128.lcssa.i
  %i.ag = getelementptr i8, ptr %2, i64 %.072.lcssa.i
  %i.ah = getelementptr i8, ptr %i.ag, i64 %i.v
  %scevgep184.i = getelementptr i8, ptr %i.ah, i64 88
  %i.ai = sub nuw nsw i64 %.pre-phi.i, %.072.lcssa.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep.i, ptr align 1 %scevgep184.i, i64 %i.ai, i1 false), !tbaa !273
  %i.aj = shl i64 %.0128.lcssa.i, 2
  %scevgep185.i = getelementptr i8, ptr %i.b, i64 %i.aj
  %i.ak = shl nuw nsw i64 %.072.lcssa.i, 2
  %i.al = getelementptr i8, ptr %2, i64 %i.ak
  %scevgep186.i = getelementptr i8, ptr %i.al, i64 88
  %i.am = shl nuw nsw i64 %i.ai, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep185.i, ptr align 4 %scevgep186.i, i64 %i.am, i1 false), !tbaa !206
  %i.an = add i64 %.0128.lcssa.i, %.pre-phi.i
  %i.ao = sub i64 %i.an, %.072.lcssa.i
  br label %._crit_edge.i

bb.b:                                             ; preds = %bb.k, %.lr.ph152.i
  %.0151.i = phi i64 [ 0, %.lr.ph152.i ], [ %.2.i, %bb.k ] ; 4 uses
  %.072150.i = phi i64 [ 0, %.lr.ph152.i ], [ %.274.i, %bb.k ] ; 3 uses
  %.075149.i = phi i64 [ 0, %.lr.ph152.i ], [ %i.bz, %bb.k ] ; 3 uses
  %.0128148.i = phi i64 [ 0, %.lr.ph152.i ], [ %.2130.i, %bb.k ] ; 2 uses
  br i1 %.not.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.075149.i
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !206
  %i.ar = zext i32 %i.aq to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %bb.c, %bb.b
  %i.as = phi i64 [ %i.ar, %bb.c ], [ %.075149.i, %bb.b ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !218
  %i.av = sub i64 %i.au, %i.k                     ; 6 uses
  %i.aw = icmp ult i64 %.072150.i, %i.aa
  br i1 %i.aw, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, %bb.d
  %.173143.i = phi i64 [ %i.bg, %bb.d ], [ %.072150.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 6 uses
  %.1129142.i = phi i64 [ %i.be, %bb.d ], [ %.0128148.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 7 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.173143.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !206 ; 3 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = icmp ugt i64 %i.av, %i.az
  br i1 %i.ba, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.w, i64 %.173143.i
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !273
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1129142.i
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !273
  %i.be = add nuw nsw i64 %.1129142.i, 1          ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1129142.i
  store i32 %i.ay, ptr %i.bf, align 4, !tbaa !206
  %i.bg = add i64 %.173143.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bg, %i.aa
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !4664

bb.e:                                             ; preds = %.lr.ph.i
  %i.bh = icmp eq i64 %i.av, %i.az
  br i1 %i.bh, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %i.w, i64 %.173143.i
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !273
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1129142.i
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !273
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1129142.i
  store i32 %i.ay, ptr %i.bl, align 4, !tbaa !206
  %i.bm = add nuw nsw i64 %.173143.i, 1
  br label %bb.k

.critedge.i:                                      ; preds = %bb.d, %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %.1129138.i = phi i64 [ %.1129142.i, %bb.e ], [ %.0128148.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.be, %bb.d ] ; 3 uses
  %.173135.i = phi i64 [ %.173143.i, %bb.e ], [ %.072150.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.aa, %bb.d ]
  %i.bn = icmp ult i64 %.0151.i, %i.ad
  br i1 %i.bn, label %.lr.ph146.i, label %.critedge2.i

.lr.ph146.i:                                      ; preds = %.critedge.i, %bb.g
  %.1145.i = phi i64 [ %i.bs, %bb.g ], [ %.0151.i, %.critedge.i ] ; 5 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.1145.i
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !206
  %i.bq = zext i32 %i.bp to i64                   ; 2 uses
  %i.br = icmp ugt i64 %i.av, %i.bq
  br i1 %i.br, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph146.i
  %i.bs = add i64 %.1145.i, 1                     ; 2 uses
  %exitcond182.not.i = icmp eq i64 %i.bs, %i.ad
  br i1 %exitcond182.not.i, label %.critedge2.i, label %.lr.ph146.i, !llvm.loop !4665

bb.h:                                             ; preds = %.lr.ph146.i
  %i.bt = icmp eq i64 %i.av, %i.bq
  br i1 %i.bt, label %bb.i, label %.critedge2.i

bb.i:                                             ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %i.q, i64 %.1145.i
  br label %bb.j

.critedge2.i:                                     ; preds = %bb.g, %bb.h, %.critedge.i
  %.1141.i = phi i64 [ %.1145.i, %bb.h ], [ %.0151.i, %.critedge.i ], [ %i.ad, %bb.g ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.av
  br label %bb.j

bb.j:                                             ; preds = %.critedge2.i, %bb.i
  %.sink.in.i = phi ptr [ %i.bv, %.critedge2.i ], [ %i.bu, %bb.i ]
  %.1140.i = phi i64 [ %.1141.i, %.critedge2.i ], [ %.1145.i, %bb.i ]
  %.sink.i = load i8, ptr %.sink.in.i, align 1, !tbaa !273
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1129138.i
  store i8 %.sink.i, ptr %i.bw, align 1, !tbaa !273
  %i.bx = trunc i64 %i.av to i32
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1129138.i
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !206
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.1129137.i = phi i64 [ %.1129142.i, %bb.f ], [ %.1129138.i, %bb.j ]
  %.274.i = phi i64 [ %i.bm, %bb.f ], [ %.173135.i, %bb.j ] ; 2 uses
  %.2.i = phi i64 [ %.0151.i, %bb.f ], [ %.1140.i, %bb.j ]
  %.2130.i = add i64 %.1129137.i, 1               ; 2 uses
  %i.bz = add nuw i64 %.075149.i, 1               ; 2 uses
  %exitcond183.not.i = icmp eq i64 %i.bz, %5
  br i1 %exitcond183.not.i, label %.preheader.i, label %bb.b, !llvm.loop !4666

._crit_edge.i:                                    ; preds = %.lr.ph157.preheader.i, %.preheader.i
  %.3131.lcssa.i = phi i64 [ %.0128.lcssa.i, %.preheader.i ], [ %i.ao, %.lr.ph157.preheader.i ] ; 3 uses
  %i.ca = trunc i64 %.3131.lcssa.i to i32
  store i32 %i.ca, ptr %i.ae, align 8, !tbaa !932
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.w, ptr nonnull align 16 %i.a, i64 %.3131.lcssa.i, i1 false)
  %i.cb = shl i64 %.3131.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 16 %i.b, i64 %i.cb, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !932 ; 2 uses
  %i.ce = zext i32 %i.cd to i64                   ; 3 uses
  %i.cf = icmp ne i32 %i.cd, 0
  %i.cg = and i1 %.not.i, %i.cf
  br i1 %i.cg, label %.lr.ph.i.preheader.i, label %.preheader64.i.i

.lr.ph.i.preheader.i:                             ; preds = %._crit_edge.i
  %i.ch = load ptr, ptr %6, align 8, !tbaa !305   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ch, null
  br label %.lr.ph.i.i

.preheader64.i.i:                                 ; preds = %bb.s, %._crit_edge.i
  %.4.i = phi i64 [ 0, %._crit_edge.i ], [ %.9.i, %bb.s ] ; 17 uses
  %.054.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.155.i.i, %bb.s ] ; 4 uses
  %.0.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.1.i.i, %bb.s ] ; 22 uses
  %i.ci = icmp ult i64 %.0.lcssa.i.i, %5
  br i1 %i.ci, label %.lr.ph72.i.preheader.i, label %.preheader.i.i

.lr.ph72.i.preheader.i:                           ; preds = %.preheader64.i.i
  %i.cj = load ptr, ptr %6, align 8, !tbaa !305   ; 7 uses
  %.not.i60.i.i = icmp eq ptr %i.cj, null
  %i.ck = load ptr, ptr %i.g, align 8, !tbaa !305 ; 7 uses
  %.not.i.i62.i.i = icmp eq ptr %i.ck, null       ; 2 uses
  br i1 %.not.i60.i.i, label %.lr.ph72.i.preheader.split.us.i, label %.lr.ph72.i.preheader.split.i

.lr.ph72.i.preheader.split.us.i:                  ; preds = %.lr.ph72.i.preheader.i
  br i1 %.not.i.i62.i.i, label %.lr.ph72.i.us.us.preheader.i, label %.lr.ph72.i.us.i.preheader

.lr.ph72.i.us.i.preheader:                        ; preds = %.lr.ph72.i.preheader.split.us.i
  %i.cl = sub i64 %5, %.0.lcssa.i.i
  %.neg117 = add i64 %.0.lcssa.i.i, 1
  %xtraiter114 = and i64 %i.cl, 1
  %lcmp.mod115.not = icmp eq i64 %xtraiter114, 0
  br i1 %lcmp.mod115.not, label %.lr.ph72.i.us.i.prol.loopexit, label %.lr.ph72.i.us.i.prol

.lr.ph72.i.us.i.prol:                             ; preds = %.lr.ph72.i.us.i.preheader
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !218
  %i.co = sub i64 %i.cn, %i.k
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %.0.lcssa.i.i
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !206
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !273
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 %.4.i
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !273
  %i.cv = trunc i64 %i.co to i32
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !206
  %i.cx = add nuw nsw i64 %.4.i, 1                ; 2 uses
  %i.cy = add nuw i64 %.0.lcssa.i.i, 1
  br label %.lr.ph72.i.us.i.prol.loopexit

.lr.ph72.i.us.i.prol.loopexit:                    ; preds = %.lr.ph72.i.us.i.prol, %.lr.ph72.i.us.i.preheader
  %.lcssa97.unr = phi i64 [ poison, %.lr.ph72.i.us.i.preheader ], [ %i.cx, %.lr.ph72.i.us.i.prol ]
  %.7.us.i.unr = phi i64 [ %.4.i, %.lr.ph72.i.us.i.preheader ], [ %i.cx, %.lr.ph72.i.us.i.prol ]
  %.271.i.us.i.unr = phi i64 [ %.0.lcssa.i.i, %.lr.ph72.i.us.i.preheader ], [ %i.cy, %.lr.ph72.i.us.i.prol ]
  %i.cz = icmp eq i64 %5, %.neg117
  br i1 %i.cz, label %.preheader.i.i, label %.lr.ph72.i.us.i

.lr.ph72.i.us.us.preheader.i:                     ; preds = %.lr.ph72.i.preheader.split.us.i
  %scevgep187.i = getelementptr i8, ptr %i.a, i64 %.4.i
  %scevgep188.i = getelementptr i8, ptr %i.f, i64 %.0.lcssa.i.i
  %i.da = sub i64 %5, %.0.lcssa.i.i               ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep187.i, ptr readonly align 1 %scevgep188.i, i64 %i.da, i1 false), !tbaa !273
  %min.iters.check = icmp ult i64 %i.da, 4
  br i1 %min.iters.check, label %.lr.ph72.i.us.us.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph72.i.us.us.preheader.i
  %n.vec = and i64 %i.da, -4                      ; 4 uses
  %i.db = add i64 %.4.i, %n.vec                   ; 2 uses
  %i.dc = add i64 %.0.lcssa.i.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.k, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN6duckdbL15MergeUpdateLoopIhEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm:bb.a
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.0.lcssa.i.i
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !206
  %i.ey = zext i32 %i.ex to i64                   ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ey
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !218
  %i.fb = sub i64 %i.fa, %i.k
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.ey
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !206
  %i.fe = zext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !273
  %i.fh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.4.i
  store i8 %i.fg, ptr %i.fh, align 1, !tbaa !273
  %i.fi = trunc i64 %i.fb to i32
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !206
  %i.fk = add nuw nsw i64 %.4.i, 1                ; 2 uses
  %i.fl = add nuw i64 %.0.lcssa.i.i, 1
  br label %.lr.ph72.i.i.prol.loopexit

.lr.ph72.i.i.prol.loopexit:                       ; preds = %.lr.ph72.i.i.prol, %.lr.ph72.i.i.preheader
  %.lcssa101.unr = phi i64 [ poison, %.lr.ph72.i.i.preheader ], [ %i.fk, %.lr.ph72.i.i.prol ]
  %.7.i.unr = phi i64 [ %.4.i, %.lr.ph72.i.i.preheader ], [ %i.fk, %.lr.ph72.i.i.prol ]
  %.271.i.i.unr = phi i64 [ %.0.lcssa.i.i, %.lr.ph72.i.i.preheader ], [ %i.fl, %.lr.ph72.i.i.prol ]
  %i.fm = icmp eq i64 %5, %.neg
  br i1 %i.fm, label %.preheader.i.i, label %.lr.ph72.i.i

.lr.ph72.i.us159.i.preheader:                     ; preds = %.lr.ph72.i.preheader.split.i
  %i.fn = sub i64 %5, %.0.lcssa.i.i
  %.neg116 = add i64 %.0.lcssa.i.i, 1
  %xtraiter112 = and i64 %i.fn, 1
  %lcmp.mod113.not = icmp eq i64 %xtraiter112, 0
  br i1 %lcmp.mod113.not, label %.lr.ph72.i.us159.i.prol.loopexit, label %.lr.ph72.i.us159.i.prol

.lr.ph72.i.us159.i.prol:                          ; preds = %.lr.ph72.i.us159.i.preheader
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.0.lcssa.i.i
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !206
  %i.fq = zext i32 %i.fp to i64                   ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fq
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !218
  %i.ft = sub i64 %i.fs, %i.k
  %i.fu = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.fq
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !273
  %i.fw = getelementptr inbounds nuw i8, ptr %i.a, i64 %.4.i
  store i8 %i.fv, ptr %i.fw, align 1, !tbaa !273
  %i.fx = trunc i64 %i.ft to i32
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.fx, ptr %i.fy, align 4, !tbaa !206
  %i.fz = add nuw nsw i64 %.4.i, 1                ; 2 uses
  %i.ga = add nuw i64 %.0.lcssa.i.i, 1
  br label %.lr.ph72.i.us159.i.prol.loopexit

.lr.ph72.i.us159.i.prol.loopexit:                 ; preds = %.lr.ph72.i.us159.i.prol, %.lr.ph72.i.us159.i.preheader
  %.lcssa99.unr = phi i64 [ poison, %.lr.ph72.i.us159.i.preheader ], [ %i.fz, %.lr.ph72.i.us159.i.prol ]
  %.7.us160.i.unr = phi i64 [ %.4.i, %.lr.ph72.i.us159.i.preheader ], [ %i.fz, %.lr.ph72.i.us159.i.prol ]
  %.271.i.us161.i.unr = phi i64 [ %.0.lcssa.i.i, %.lr.ph72.i.us159.i.preheader ], [ %i.ga, %.lr.ph72.i.us159.i.prol ]
  %i.gb = icmp eq i64 %5, %.neg116
  br i1 %i.gb, label %.preheader.i.i, label %.lr.ph72.i.us159.i

.lr.ph72.i.us159.i:                               ; preds = %.lr.ph72.i.us159.i.prol.loopexit, %.lr.ph72.i.us159.i
  %.7.us160.i = phi i64 [ %i.ha, %.lr.ph72.i.us159.i ], [ %.7.us160.i.unr, %.lr.ph72.i.us159.i.prol.loopexit ] ; 4 uses
  %.271.i.us161.i = phi i64 [ %i.hb, %.lr.ph72.i.us159.i ], [ %.271.i.us161.i.unr, %.lr.ph72.i.us159.i.prol.loopexit ] ; 3 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.271.i.us161.i
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !206
  %i.ge = zext i32 %i.gd to i64                   ; 2 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ge
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !218
  %i.gh = sub i64 %i.gg, %i.k
  %i.gi = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ge
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !273
  %i.gk = getelementptr inbounds nuw i8, ptr %i.a, i64 %.7.us160.i
  store i8 %i.gj, ptr %i.gk, align 1, !tbaa !273
  %i.gl = trunc i64 %i.gh to i32
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.7.us160.i
  store i32 %i.gl, ptr %i.gm, align 4, !tbaa !206
  %i.gn = add nuw nsw i64 %.7.us160.i, 1          ; 2 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.271.i.us161.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !206
  %i.gr = zext i32 %i.gq to i64                   ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gr
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !218
  %i.gu = sub i64 %i.gt, %i.k
  %i.gv = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gr
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !273
  %i.gx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gn
  store i8 %i.gw, ptr %i.gx, align 1, !tbaa !273
  %i.gy = trunc i64 %i.gu to i32
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gn
  store i32 %i.gy, ptr %i.gz, align 4, !tbaa !206
  %i.ha = add nuw nsw i64 %.7.us160.i, 2          ; 2 uses
  %i.hb = add nuw i64 %.271.i.us161.i, 2          ; 2 uses
  %exitcond.not.i.us163.i.1 = icmp eq i64 %i.hb, %5
  br i1 %exitcond.not.i.us163.i.1, label %.preheader.i.i, label %.lr.ph72.i.us159.i, !llvm.loop !4669

.lr.ph.i.i:                                       ; preds = %bb.s, %.lr.ph.i.preheader.i
  %.8.i = phi i64 [ %.9.i, %bb.s ], [ 0, %.lr.ph.i.preheader.i ] ; 7 uses
  %.067.i.i = phi i64 [ %.1.i.i, %bb.s ], [ 0, %.lr.ph.i.preheader.i ] ; 5 uses
  %.05465.i.i = phi i64 [ %.155.i.i, %bb.s ], [ 0, %.lr.ph.i.preheader.i ] ; 5 uses
  br i1 %.not.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.067.i.i
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !206
  %i.he = zext i32 %i.hd to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i: ; preds = %bb.l, %.lr.ph.i.i
  %i.hf = phi i64 [ %i.he, %bb.l ], [ %.067.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.hf
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !218
  %i.hi = sub i64 %i.hh, %i.k                     ; 4 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.05465.i.i
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !206 ; 2 uses
  %i.hl = zext i32 %i.hk to i64                   ; 2 uses
  %i.hm = icmp eq i64 %i.hi, %i.hl
  br i1 %i.hm, label %bb.m, label %bb.o

bb.m:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.hn = load ptr, ptr %i.g, align 8, !tbaa !305 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hn, null
  br i1 %.not.i.i.i.i.i, label %_ZZN6duckdbL23MergeUpdateLoopInternalIhhNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.hf
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !206
  %i.hq = zext i32 %i.hp to i64
  br label %_ZZN6duckdbL23MergeUpdateLoopInternalIhhNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i

_ZZN6duckdbL23MergeUpdateLoopInternalIhhNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i: ; preds = %bb.n, %bb.m
  %i.hr = phi i64 [ %i.hq, %bb.n ], [ %i.hf, %bb.m ]
  %i.hs = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.hr
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !273
  %i.hu = getelementptr inbounds nuw i8, ptr %i.a, i64 %.8.i
  store i8 %i.ht, ptr %i.hu, align 1, !tbaa !273
  %i.hv = trunc nuw i64 %i.hi to i32
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.8.i
  store i32 %i.hv, ptr %i.hw, align 4, !tbaa !206
  %i.hx = add nuw i64 %.067.i.i, 1
  %i.hy = add nuw nsw i64 %.05465.i.i, 1
  br label %bb.s

bb.o:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.hz = icmp ult i64 %i.hi, %i.hl
  br i1 %i.hz, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ia = load ptr, ptr %i.g, align 8, !tbaa !305 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ia, null
  br i1 %.not.i.i.i.i, label %_ZZN6duckdbL23MergeUpdateLoopInternalIhhNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.hf
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !206
  %i.id = zext i32 %i.ic to i64
  br label %_ZZN6duckdbL23MergeUpdateLoopInternalIhhNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i

_ZZN6duckdbL23MergeUpdateLoopInternalIhhNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i: ; preds = %bb.q, %bb.p
  %i.ie = phi i64 [ %i.id, %bb.q ], [ %i.hf, %bb.p ]
  %i.if = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ie
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !273
  %i.ih = getelementptr inbounds nuw i8, ptr %i.a, i64 %.8.i
  store i8 %i.ig, ptr %i.ih, align 1, !tbaa !273
  %i.ii = trunc nuw i64 %i.hi to i32
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.8.i
  store i32 %i.ii, ptr %i.ij, align 4, !tbaa !206
  %i.ik = add nuw i64 %.067.i.i, 1
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.il = getelementptr inbounds nuw i8, ptr %i.q, i64 %.05465.i.i
  %i.im = load i8, ptr %i.il, align 1, !tbaa !273
  %i.in = getelementptr inbounds nuw i8, ptr %i.a, i64 %.8.i
  store i8 %i.im, ptr %i.in, align 1, !tbaa !273
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.8.i
  store i32 %i.hk, ptr %i.io, align 4, !tbaa !206
  %i.ip = add nuw nsw i64 %.05465.i.i, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZZN6duckdbL23MergeUpdateLoopInternalIhhNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i, %_ZZN6duckdbL23MergeUpdateLoopInternalIhhNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i
  %.155.i.i = phi i64 [ %i.hy, %_ZZN6duckdbL23MergeUpdateLoopInternalIhhNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i ], [ %.05465.i.i, %_ZZN6duckdbL23MergeUpdateLoopInternalIhhNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i ], [ %i.ip, %bb.r ] ; 3 uses
  %.1.i.i = phi i64 [ %i.hx, %_ZZN6duckdbL23MergeUpdateLoopInternalIhhNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i ], [ %i.ik, %_ZZN6duckdbL23MergeUpdateLoopInternalIhhNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i ], [ %.067.i.i, %bb.r ] ; 3 uses
  %.9.i = add i64 %.8.i, 1                        ; 2 uses
  %i.iq = icmp ult i64 %.1.i.i, %5
  %i.ir = icmp ult i64 %.155.i.i, %i.ce
  %i.is = select i1 %i.iq, i1 %i.ir, i1 false
  br i1 %i.is, label %.lr.ph.i.i, label %.preheader64.i.i, !llvm.loop !4670

.preheader.i.i:                                   ; preds = %.lr.ph72.i.i.prol.loopexit, %.lr.ph72.i.i, %.lr.ph72.i.us159.i.prol.loopexit, %.lr.ph72.i.us159.i, %.lr.ph72.i.us.i.prol.loopexit, %.lr.ph72.i.us.i, %.lr.ph72.i.us.us.i, %middle.block, %.preheader64.i.i
  %.5.i = phi i64 [ %.4.i, %.preheader64.i.i ], [ %i.ha, %.lr.ph72.i.us159.i ], [ %i.et, %.lr.ph72.i.us.i ], [ %i.dt, %.lr.ph72.i.us.us.i ], [ %i.db, %middle.block ], [ %.lcssa97.unr, %.lr.ph72.i.us.i.prol.loopexit ], [ %.lcssa99.unr, %.lr.ph72.i.us159.i.prol.loopexit ], [ %.lcssa101.unr, %.lr.ph72.i.i.prol.loopexit ], [ %i.kg, %.lr.ph72.i.i ] ; 4 uses
  %i.it = icmp ult i64 %.054.lcssa.i.i, %i.ce
  br i1 %i.it, label %.lr.ph76.i.preheader.i, label %_ZN6duckdbL23MergeUpdateLoopInternalIhhNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_m.exit

.lr.ph76.i.preheader.i:                           ; preds = %.preheader.i.i
  %scevgep189.i = getelementptr i8, ptr %i.a, i64 %.5.i
  %i.iu = getelementptr i8, ptr %0, i64 %.054.lcssa.i.i
  %i.iv = getelementptr i8, ptr %i.iu, i64 %i.p
  %scevgep190.i = getelementptr i8, ptr %i.iv, i64 88
  %i.iw = sub nuw nsw i64 %i.ce, %.054.lcssa.i.i  ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep189.i, ptr align 1 %scevgep190.i, i64 %i.iw, i1 false), !tbaa !273
  %i.ix = shl i64 %.5.i, 2
  %scevgep191.i = getelementptr i8, ptr %i.b, i64 %i.ix
  %i.iy = shl nuw nsw i64 %.054.lcssa.i.i, 2
  %i.iz = getelementptr i8, ptr %0, i64 %i.iy
  %scevgep192.i = getelementptr i8, ptr %i.iz, i64 88
  %i.ja = shl nuw nsw i64 %i.iw, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep191.i, ptr align 4 %scevgep192.i, i64 %i.ja, i1 false), !tbaa !206
  %i.jb = add i64 %i.iw, %.5.i
  br label %_ZN6duckdbL23MergeUpdateLoopInternalIhhNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_m.exit

.lr.ph72.i.i:                                     ; preds = %.lr.ph72.i.i.prol.loopexit, %.lr.ph72.i.i
  %.7.i = phi i64 [ %i.kg, %.lr.ph72.i.i ], [ %.7.i.unr, %.lr.ph72.i.i.prol.loopexit ] ; 4 uses
  %.271.i.i = phi i64 [ %i.kh, %.lr.ph72.i.i ], [ %.271.i.i.unr, %.lr.ph72.i.i.prol.loopexit ] ; 3 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.271.i.i
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !206
  %i.je = zext i32 %i.jd to i64                   ; 2 uses
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.je
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !218
  %i.jh = sub i64 %i.jg, %i.k
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.je
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !206
  %i.jk = zext i32 %i.jj to i64
  %i.jl = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.jk
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !273
  %i.jn = getelementptr inbounds nuw i8, ptr %i.a, i64 %.7.i
  store i8 %i.jm, ptr %i.jn, align 1, !tbaa !273
  %i.jo = trunc i64 %i.jh to i32
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.7.i
  store i32 %i.jo, ptr %i.jp, align 4, !tbaa !206
  %i.jq = add nuw nsw i64 %.7.i, 1                ; 2 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.271.i.i
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 4
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !206
  %i.ju = zext i32 %i.jt to i64                   ; 2 uses
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ju
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !218
  %i.jx = sub i64 %i.jw, %i.k
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.ju
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !206
  %i.ka = zext i32 %i.jz to i64
  %i.kb = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ka
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !273
  %i.kd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.jq
  store i8 %i.kc, ptr %i.kd, align 1, !tbaa !273
  %i.ke = trunc i64 %i.jx to i32
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.jq
  store i32 %i.ke, ptr %i.kf, align 4, !tbaa !206
  %i.kg = add nuw nsw i64 %.7.i, 2                ; 2 uses
  %i.kh = add nuw i64 %.271.i.i, 2                ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.kh, %5
  br i1 %exitcond.not.i.i.1, label %.preheader.i.i, label %.lr.ph72.i.i, !llvm.loop !4669

_ZN6duckdbL23MergeUpdateLoopInternalIhhNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_m.exit: ; preds = %.preheader.i.i, %.lr.ph76.i.preheader.i
  %.10.i = phi i64 [ %.5.i, %.preheader.i.i ], [ %i.jb, %.lr.ph76.i.preheader.i ] ; 3 uses
  %i.ki = trunc i64 %.10.i to i32
  store i32 %i.ki, ptr %i.cc, align 8, !tbaa !932
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.q, ptr nonnull align 16 %i.a, i64 %.10.i, i1 false)
  %i.kj = shl i64 %.10.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 16 %i.b, i64 %i.kj, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdbL15MergeUpdateLoopItEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(73) %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, i64 noundef %7) #1 {
bb.a:
  %i.a = alloca [2048 x i16], align 16            ; 22 uses
  %i.b = alloca [2048 x i32], align 16            ; 23 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeItEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1260
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeItEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1209 ; 12 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !959    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !943
  %i.j = shl i64 %i.i, 11
  %i.k = add i64 %i.j, %7                         ; 13 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.n = load i32, ptr %i.m, align 4, !tbaa !938
  %i.o = zext i32 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 2                  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.p ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.t = load i32, ptr %i.s, align 4, !tbaa !938
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2                  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %.not.i = icmp ne i64 %5, 0                     ; 2 uses
  br i1 %.not.i, label %.lr.ph152.i, label %..preheader_crit_edge.i

..preheader_crit_edge.i:                          ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !932
  %.pre184.i = zext i32 %.pre.i to i64
  br label %.preheader.i

.lr.ph152.i:                                      ; preds = %bb.a
  %i.x = load ptr, ptr %6, align 8, !tbaa !305    ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, null
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.z = load i32, ptr %i.y, align 8, !tbaa !932
  %i.aa = zext i32 %i.z to i64                    ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = zext i32 %i.ac to i64                   ; 3 uses
  br label %bb.b

.preheader.i:                                     ; preds = %bb.k, %..preheader_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre184.i, %..preheader_crit_edge.i ], [ %i.aa, %bb.k ] ; 3 uses
  %.0122.lcssa.i = phi i64 [ 0, %..preheader_crit_edge.i ], [ %.2124.i, %bb.k ] ; 4 uses
  %.072.lcssa.i = phi i64 [ 0, %..preheader_crit_edge.i ], [ %.274.i, %bb.k ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.af = icmp ult i64 %.072.lcssa.i, %.pre-phi.i
  br i1 %i.af, label %.lr.ph157.preheader.i, label %._crit_edge.i

.lr.ph157.preheader.i:                            ; preds = %.preheader.i
  %i.ag = shl i64 %.0122.lcssa.i, 1
  %scevgep.i = getelementptr i8, ptr %i.a, i64 %i.ag
  %i.ah = shl nuw nsw i64 %.072.lcssa.i, 1
  %i.ai = getelementptr i8, ptr %2, i64 %i.v
  %i.aj = getelementptr i8, ptr %i.ai, i64 %i.ah
  %scevgep175.i = getelementptr i8, ptr %i.aj, i64 88
  %i.ak = sub nuw nsw i64 %.pre-phi.i, %.072.lcssa.i ; 2 uses
  %i.al = shl nuw nsw i64 %i.ak, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %scevgep.i, ptr align 2 %scevgep175.i, i64 %i.al, i1 false), !tbaa !317
  %i.am = shl i64 %.0122.lcssa.i, 2
  %scevgep176.i = getelementptr i8, ptr %i.b, i64 %i.am
  %i.an = shl nuw nsw i64 %.072.lcssa.i, 2
  %i.ao = getelementptr i8, ptr %2, i64 %i.an
  %scevgep177.i = getelementptr i8, ptr %i.ao, i64 88
  %i.ap = shl nuw nsw i64 %i.ak, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep176.i, ptr align 4 %scevgep177.i, i64 %i.ap, i1 false), !tbaa !206
  %i.aq = add i64 %.0122.lcssa.i, %.pre-phi.i
  %i.ar = sub i64 %i.aq, %.072.lcssa.i
  br label %._crit_edge.i

bb.b:                                             ; preds = %bb.k, %.lr.ph152.i
  %.0151.i = phi i64 [ 0, %.lr.ph152.i ], [ %.2.i, %bb.k ] ; 4 uses
  %.072150.i = phi i64 [ 0, %.lr.ph152.i ], [ %.274.i, %bb.k ] ; 3 uses
  %.075149.i = phi i64 [ 0, %.lr.ph152.i ], [ %i.cc, %bb.k ] ; 3 uses
  %.0122148.i = phi i64 [ 0, %.lr.ph152.i ], [ %.2124.i, %bb.k ] ; 2 uses
  br i1 %.not.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.075149.i
  %i.at = load i32, ptr %i.as, align 4, !tbaa !206
  %i.au = zext i32 %i.at to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %bb.c, %bb.b
  %i.av = phi i64 [ %i.au, %bb.c ], [ %.075149.i, %bb.b ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !218
  %i.ay = sub i64 %i.ax, %i.k                     ; 6 uses
  %i.az = icmp ult i64 %.072150.i, %i.aa
  br i1 %i.az, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, %bb.d
  %.173143.i = phi i64 [ %i.bj, %bb.d ], [ %.072150.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 6 uses
  %.1123142.i = phi i64 [ %i.bh, %bb.d ], [ %.0122148.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 7 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.173143.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !206 ; 3 uses
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = icmp ugt i64 %i.ay, %i.bc
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %.173143.i
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !317
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.1123142.i
  store i16 %i.bf, ptr %i.bg, align 2, !tbaa !317
  %i.bh = add nuw nsw i64 %.1123142.i, 1          ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1123142.i
  store i32 %i.bb, ptr %i.bi, align 4, !tbaa !206
  %i.bj = add i64 %.173143.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bj, %i.aa
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !4671

bb.e:                                             ; preds = %.lr.ph.i
  %i.bk = icmp eq i64 %i.ay, %i.bc
  br i1 %i.bk, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %.173143.i
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !317
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.1123142.i
  store i16 %i.bm, ptr %i.bn, align 2, !tbaa !317
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1123142.i
  store i32 %i.bb, ptr %i.bo, align 4, !tbaa !206
  %i.bp = add nuw nsw i64 %.173143.i, 1
  br label %bb.k

.critedge.i:                                      ; preds = %bb.d, %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %.1123138.i = phi i64 [ %.1123142.i, %bb.e ], [ %.0122148.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.bh, %bb.d ] ; 3 uses
  %.173135.i = phi i64 [ %.173143.i, %bb.e ], [ %.072150.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.aa, %bb.d ]
  %i.bq = icmp ult i64 %.0151.i, %i.ad
  br i1 %i.bq, label %.lr.ph146.i, label %.critedge2.i

.lr.ph146.i:                                      ; preds = %.critedge.i, %bb.g
  %.1145.i = phi i64 [ %i.bv, %bb.g ], [ %.0151.i, %.critedge.i ] ; 5 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.1145.i
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !206
  %i.bt = zext i32 %i.bs to i64                   ; 2 uses
  %i.bu = icmp ugt i64 %i.ay, %i.bt
  br i1 %i.bu, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph146.i
  %i.bv = add i64 %.1145.i, 1                     ; 2 uses
  %exitcond173.not.i = icmp eq i64 %i.bv, %i.ad
  br i1 %exitcond173.not.i, label %.critedge2.i, label %.lr.ph146.i, !llvm.loop !4672

bb.h:                                             ; preds = %.lr.ph146.i
  %i.bw = icmp eq i64 %i.ay, %i.bt
  br i1 %i.bw, label %bb.i, label %.critedge2.i

bb.i:                                             ; preds = %bb.h
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.1145.i
  br label %bb.j

.critedge2.i:                                     ; preds = %bb.g, %bb.h, %.critedge.i
  %.1141.i = phi i64 [ %.1145.i, %bb.h ], [ %.0151.i, %.critedge.i ], [ %i.ad, %bb.g ]
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ay
  br label %bb.j

bb.j:                                             ; preds = %.critedge2.i, %bb.i
  %.sink.in.i = phi ptr [ %i.by, %.critedge2.i ], [ %i.bx, %bb.i ]
  %.1140.i = phi i64 [ %.1141.i, %.critedge2.i ], [ %.1145.i, %bb.i ]
  %.sink.i = load i16, ptr %.sink.in.i, align 2, !tbaa !317
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.1123138.i
  store i16 %.sink.i, ptr %i.bz, align 2, !tbaa !317
  %i.ca = trunc i64 %i.ay to i32
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1123138.i
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !206
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.1123137.i = phi i64 [ %.1123142.i, %bb.f ], [ %.1123138.i, %bb.j ]
  %.274.i = phi i64 [ %i.bp, %bb.f ], [ %.173135.i, %bb.j ] ; 2 uses
  %.2.i = phi i64 [ %.0151.i, %bb.f ], [ %.1140.i, %bb.j ]
  %.2124.i = add i64 %.1123137.i, 1               ; 2 uses
  %i.cc = add nuw i64 %.075149.i, 1               ; 2 uses
  %exitcond174.not.i = icmp eq i64 %i.cc, %5
  br i1 %exitcond174.not.i, label %.preheader.i, label %bb.b, !llvm.loop !4673

._crit_edge.i:                                    ; preds = %.lr.ph157.preheader.i, %.preheader.i
  %.3125.lcssa.i = phi i64 [ %.0122.lcssa.i, %.preheader.i ], [ %i.ar, %.lr.ph157.preheader.i ] ; 3 uses
  %i.cd = trunc i64 %.3125.lcssa.i to i32
  store i32 %i.cd, ptr %i.ae, align 8, !tbaa !932
  %i.ce = shl i64 %.3125.lcssa.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.w, ptr nonnull align 16 %i.a, i64 %i.ce, i1 false)
  %i.cf = shl i64 %.3125.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 16 %i.b, i64 %i.cf, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !932 ; 2 uses
  %i.ci = zext i32 %i.ch to i64                   ; 3 uses
  %.val.i = load ptr, ptr %6, align 8             ; 9 uses
  %i.cj = icmp ne i32 %i.ch, 0
  %i.ck = and i1 %.not.i, %i.cj
  br i1 %i.ck, label %.lr.ph.i.i, label %.preheader1.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i
  %.not.i.i.i = icmp eq ptr %.val.i, null
  br label %bb.l

.preheader1.i.i:                                  ; preds = %bb.t, %._crit_edge.i
  %.4.i = phi i64 [ 0, %._crit_edge.i ], [ %.7.i, %bb.t ] ; 17 uses
  %.054.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.155.i.i, %bb.t ] ; 4 uses
  %.0.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.1.i.i, %bb.t ] ; 22 uses
  %i.cl = icmp ult i64 %.0.lcssa.i.i, %5
  br i1 %i.cl, label %.lr.ph9.i.i, label %.preheader.i.i

.lr.ph9.i.i:                                      ; preds = %.preheader1.i.i
  %.not.i60.i.i = icmp eq ptr %.val.i, null
  %i.cm = load ptr, ptr %i.g, align 8, !tbaa !305 ; 7 uses
  %.not.i.i62.i.i = icmp eq ptr %i.cm, null       ; 2 uses
  br i1 %.not.i60.i.i, label %.lr.ph9.split.us.i.i, label %.lr.ph9.split.i.i

.lr.ph9.split.us.i.i:                             ; preds = %.lr.ph9.i.i
  br i1 %.not.i.i62.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader: ; preds = %.lr.ph9.split.us.i.i
  %i.cn = sub i64 %5, %.0.lcssa.i.i
  %.neg117 = add i64 %.0.lcssa.i.i, 1
  %xtraiter113 = and i64 %i.cn, 1
  %lcmp.mod114.not = icmp eq i64 %xtraiter113, 0
  br i1 %lcmp.mod114.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !218
  %i.cq = sub i64 %i.cp, %i.k
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.0.lcssa.i.i
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !206
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.ct
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !317
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.4.i
  store i16 %i.cv, ptr %i.cw, align 2, !tbaa !317
  %i.cx = trunc i64 %i.cq to i32
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !206
  %i.cz = add nuw nsw i64 %.4.i, 1                ; 2 uses
  %i.da = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader
  %.lcssa95.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.cz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %.unr115 = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.cz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %.28.us.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.da, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %i.db = icmp eq i64 %5, %.neg117
  br i1 %i.db, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i: ; preds = %.lr.ph9.split.us.i.i
  %i.dc = shl i64 %.4.i, 1
  %scevgep178.i = getelementptr i8, ptr %i.a, i64 %i.dc
  %i.dd = shl i64 %.0.lcssa.i.i, 1
  %scevgep179.i = getelementptr i8, ptr %i.f, i64 %i.dd
  %i.de = sub i64 %5, %.0.lcssa.i.i               ; 4 uses
  %i.df = shl i64 %i.de, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %scevgep178.i, ptr readonly align 2 %scevgep179.i, i64 %i.df, i1 false), !tbaa !317
  %min.iters.check = icmp ult i64 %i.de, 4
  br i1 %min.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i
  %n.vec = and i64 %i.de, -4                      ; 4 uses
  %i.dg = add i64 %.4.i, %n.vec                   ; 2 uses
  %i.dh = add i64 %.0.lcssa.i.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.k, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %index ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %wide.load = load <2 x i64>, ptr %i.dk, align 8, !tbaa !218
  %wide.load92 = load <2 x i64>, ptr %i.dl, align 8, !tbaa !218
  %i.dm = sub <2 x i64> %wide.load, %broadcast.splat
  %i.dn = sub <2 x i64> %wide.load92, %broadcast.splat
  %i.do = trunc <2 x i64> %i.dm to <2 x i32>
  %i.dp = trunc <2 x i64> %i.dn to <2 x i32>
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %index ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store <2 x i32> %i.do, ptr %i.dq, align 4, !tbaa !206
  store <2 x i32> %i.dp, ptr %i.dr, align 4, !tbaa !206
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !4674

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.de, %n.vec
  br i1 %cmp.n, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i, %middle.block
  %.ph = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i ], [ %i.dg, %middle.block ]
  %.28.us.us.i.i.ph = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i ], [ %i.dh, %middle.block ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i
  %i.dt = phi i64 [ %i.dz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i ], [ %.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader ] ; 2 uses
  %.28.us.us.i.i = phi i64 [ %i.ea, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i ], [ %.28.us.us.i.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader ] ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.28.us.us.i.i
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !218
  %i.dw = sub i64 %i.dv, %i.k
  %i.dx = trunc i64 %i.dw to i32
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dt
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !206
  %i.dz = add nuw nsw i64 %i.dt, 1                ; 2 uses
  %i.ea = add nuw i64 %.28.us.us.i.i, 1           ; 2 uses
  %exitcond33.not.i.i = icmp eq i64 %i.ea, %5
  br i1 %exitcond33.not.i.i, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i, !llvm.loop !4675

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i
  %i.eb = phi i64 [ %i.fa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i ], [ %.unr115, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit ] ; 4 uses
  %.28.us.i.i = phi i64 [ %i.fb, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i ], [ %.28.us.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit ] ; 4 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.28.us.i.i
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !218
  %i.ee = sub i64 %i.ed, %i.k
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.28.us.i.i
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !206
  %i.eh = zext i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.eh
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !317
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.eb
  store i16 %i.ej, ptr %i.ek, align 2, !tbaa !317
  %i.el = trunc i64 %i.ee to i32
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.eb
  store i32 %i.el, ptr %i.em, align 4, !tbaa !206
  %i.en = add nuw nsw i64 %i.eb, 1                ; 2 uses
  %i.eo = add nuw i64 %.28.us.i.i, 1              ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.eo
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !218
  %i.er = sub i64 %i.eq, %i.k
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.eo
  %i.et = load i32, ptr %i.es, align 4, !tbaa !206
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.eu
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !317
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.en
  store i16 %i.ew, ptr %i.ex, align 2, !tbaa !317
  %i.ey = trunc i64 %i.er to i32
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.en
  store i32 %i.ey, ptr %i.ez, align 4, !tbaa !206
  %i.fa = add nuw nsw i64 %i.eb, 2                ; 2 uses
  %i.fb = add nuw i64 %.28.us.i.i, 2              ; 2 uses
  %exitcond32.not.i.i.1 = icmp eq i64 %i.fb, %5
  br i1 %exitcond32.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i, !llvm.loop !4676

.lr.ph9.split.i.i:                                ; preds = %.lr.ph9.i.i
  br i1 %.not.i.i62.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader: ; preds = %.lr.ph9.split.i.i
  %i.fc = sub i64 %5, %.0.lcssa.i.i
  %.neg = add i64 %.0.lcssa.i.i, 1
  %xtraiter = and i64 %i.fc, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0.lcssa.i.i
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !206
  %i.ff = zext i32 %i.fe to i64                   ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ff
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !218
  %i.fi = sub i64 %i.fh, %i.k
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.ff
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !206
  %i.fl = zext i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.fl
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !317
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.4.i
  store i16 %i.fn, ptr %i.fo, align 2, !tbaa !317
  %i.fp = trunc i64 %i.fi to i32
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !206
  %i.fr = add nuw nsw i64 %.4.i, 1                ; 2 uses
  %i.fs = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader
  %.lcssa99.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %.unr = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %.28.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fs, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %i.ft = icmp eq i64 %5, %.neg
  br i1 %i.ft, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader: ; preds = %.lr.ph9.split.i.i
  %i.fu = sub i64 %5, %.0.lcssa.i.i
  %.neg116 = add i64 %.0.lcssa.i.i, 1
  %xtraiter110 = and i64 %i.fu, 1
  %lcmp.mod111.not = icmp eq i64 %xtraiter110, 0
  br i1 %lcmp.mod111.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0.lcssa.i.i
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !206
  %i.fx = zext i32 %i.fw to i64                   ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fx
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !218
  %i.ga = sub i64 %i.fz, %i.k
  %i.gb = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.fx
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !317
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.4.i
  store i16 %i.gc, ptr %i.gd, align 2, !tbaa !317
  %i.ge = trunc i64 %i.ga to i32
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.ge, ptr %i.gf, align 4, !tbaa !206
  %i.gg = add nuw nsw i64 %.4.i, 1                ; 2 uses
  %i.gh = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader
  %.lcssa97.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.gg, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %.unr112 = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.gg, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %.28.us12.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.gh, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %i.gi = icmp eq i64 %5, %.neg116
  br i1 %i.gi, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i
  %i.gj = phi i64 [ %i.hi, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i ], [ %.unr112, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit ] ; 4 uses
  %.28.us12.i.i = phi i64 [ %i.hj, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i ], [ %.28.us12.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit ] ; 3 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.us12.i.i
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !206
  %i.gm = zext i32 %i.gl to i64                   ; 2 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gm
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !218
  %i.gp = sub i64 %i.go, %i.k
  %i.gq = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.gm
  %i.gr = load i16, ptr %i.gq, align 2, !tbaa !317
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.gj
  store i16 %i.gr, ptr %i.gs, align 2, !tbaa !317
  %i.gt = trunc i64 %i.gp to i32
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gj
  store i32 %i.gt, ptr %i.gu, align 4, !tbaa !206
  %i.gv = add nuw nsw i64 %i.gj, 1                ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.us12.i.i
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !206
  %i.gz = zext i32 %i.gy to i64                   ; 2 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gz
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !218
  %i.hc = sub i64 %i.hb, %i.k
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.gz
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !317
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.gv
  store i16 %i.he, ptr %i.hf, align 2, !tbaa !317
  %i.hg = trunc i64 %i.hc to i32
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gv
  store i32 %i.hg, ptr %i.hh, align 4, !tbaa !206
  %i.hi = add nuw nsw i64 %i.gj, 2                ; 2 uses
  %i.hj = add nuw i64 %.28.us12.i.i, 2            ; 2 uses
  %exitcond31.not.i.i.1 = icmp eq i64 %i.hj, %5
  br i1 %exitcond31.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i, !llvm.loop !4676

bb.l:                                             ; preds = %bb.t, %.lr.ph.i.i
  %.6.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.7.i, %bb.t ] ; 7 uses
  %.04.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %bb.t ] ; 5 uses
  %.0542.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.155.i.i, %bb.t ] ; 5 uses
  br i1 %.not.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !206
  %i.hm = zext i32 %i.hl to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i: ; preds = %bb.m, %bb.l
  %i.hn = phi i64 [ %i.hm, %bb.m ], [ %.04.i.i, %bb.l ] ; 5 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.hn
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !218
  %i.hq = sub i64 %i.hp, %i.k                     ; 4 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.0542.i.i
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !206 ; 2 uses
  %i.ht = zext i32 %i.hs to i64                   ; 2 uses
  %i.hu = icmp eq i64 %i.hq, %i.ht
  br i1 %i.hu, label %bb.n, label %bb.p

bb.n:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.hv = load ptr, ptr %i.g, align 8, !tbaa !305 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hv, null
  br i1 %.not.i.i.i.i.i, label %_ZZN6duckdbL23MergeUpdateLoopInternalIttNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.hn
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !206
  %i.hy = zext i32 %i.hx to i64
  br label %_ZZN6duckdbL23MergeUpdateLoopInternalIttNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i

_ZZN6duckdbL23MergeUpdateLoopInternalIttNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i: ; preds = %bb.o, %bb.n
  %i.hz = phi i64 [ %i.hy, %bb.o ], [ %i.hn, %bb.n ]
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.hz
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !317
  %i.ic = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.6.i
  store i16 %i.ib, ptr %i.ic, align 2, !tbaa !317
  %i.id = trunc nuw i64 %i.hq to i32
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.6.i
  store i32 %i.id, ptr %i.ie, align 4, !tbaa !206
  %i.if = add nuw i64 %.04.i.i, 1
  %i.ig = add nuw nsw i64 %.0542.i.i, 1
  br label %bb.t

bb.p:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.ih = icmp ult i64 %i.hq, %i.ht
  br i1 %i.ih, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ii = load ptr, ptr %i.g, align 8, !tbaa !305 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ii, null
  br i1 %.not.i.i.i.i, label %_ZZN6duckdbL23MergeUpdateLoopInternalIttNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.hn
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !206
  %i.il = zext i32 %i.ik to i64
  br label %_ZZN6duckdbL23MergeUpdateLoopInternalIttNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i

_ZZN6duckdbL23MergeUpdateLoopInternalIttNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i: ; preds = %bb.r, %bb.q
  %i.im = phi i64 [ %i.il, %bb.r ], [ %i.hn, %bb.q ]
  %i.in = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.im
  %i.io = load i16, ptr %i.in, align 2, !tbaa !317
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.6.i
  store i16 %i.io, ptr %i.ip, align 2, !tbaa !317
  %i.iq = trunc nuw i64 %i.hq to i32
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.6.i
  store i32 %i.iq, ptr %i.ir, align 4, !tbaa !206
  %i.is = add nuw i64 %.04.i.i, 1
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.0542.i.i
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !317
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.6.i
  store i16 %i.iu, ptr %i.iv, align 2, !tbaa !317
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.6.i
  store i32 %i.hs, ptr %i.iw, align 4, !tbaa !206
  %i.ix = add nuw nsw i64 %.0542.i.i, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZZN6duckdbL23MergeUpdateLoopInternalIttNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i, %_ZZN6duckdbL23MergeUpdateLoopInternalIttNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i
  %.155.i.i = phi i64 [ %i.ig, %_ZZN6duckdbL23MergeUpdateLoopInternalIttNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i ], [ %.0542.i.i, %_ZZN6duckdbL23MergeUpdateLoopInternalIttNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i ], [ %i.ix, %bb.s ] ; 3 uses
  %.1.i.i = phi i64 [ %i.if, %_ZZN6duckdbL23MergeUpdateLoopInternalIttNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i ], [ %i.is, %_ZZN6duckdbL23MergeUpdateLoopInternalIttNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i ], [ %.04.i.i, %bb.s ] ; 3 uses
  %.7.i = add i64 %.6.i, 1                        ; 2 uses
  %i.iy = icmp ult i64 %.1.i.i, %5
  %i.iz = icmp ult i64 %.155.i.i, %i.ci
  %i.ja = select i1 %i.iy, i1 %i.iz, i1 false
  br i1 %i.ja, label %bb.l, label %.preheader1.i.i, !llvm.loop !4677

.preheader.i.i:                                   ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i, %middle.block, %.preheader1.i.i
  %.5.i = phi i64 [ %.4.i, %.preheader1.i.i ], [ %i.hi, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i ], [ %i.dz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i ], [ %i.fa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i ], [ %i.dg, %middle.block ], [ %.lcssa95.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit ], [ %.lcssa97.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit ], [ %.lcssa99.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit ], [ %i.ks, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i ] ; 4 uses
  %i.jb = icmp ult i64 %.054.lcssa.i.i, %i.ci
  br i1 %i.jb, label %.lr.ph20.i.preheader.i, label %_ZN6duckdbL23MergeUpdateLoopInternalIttNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_m.exit

.lr.ph20.i.preheader.i:                           ; preds = %.preheader.i.i
  %i.jc = shl i64 %.5.i, 1
  %scevgep180.i = getelementptr i8, ptr %i.a, i64 %i.jc
  %i.jd = shl nuw nsw i64 %.054.lcssa.i.i, 1
  %i.je = getelementptr i8, ptr %0, i64 %i.p
  %i.jf = getelementptr i8, ptr %i.je, i64 %i.jd
  %scevgep181.i = getelementptr i8, ptr %i.jf, i64 88
  %i.jg = sub nuw nsw i64 %i.ci, %.054.lcssa.i.i  ; 3 uses
  %i.jh = shl nuw nsw i64 %i.jg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %scevgep180.i, ptr align 2 %scevgep181.i, i64 %i.jh, i1 false), !tbaa !317
  %i.ji = shl i64 %.5.i, 2
  %scevgep182.i = getelementptr i8, ptr %i.b, i64 %i.ji
  %i.jj = shl nuw nsw i64 %.054.lcssa.i.i, 2
  %i.jk = getelementptr i8, ptr %0, i64 %i.jj
  %scevgep183.i = getelementptr i8, ptr %i.jk, i64 88
  %i.jl = shl nuw nsw i64 %i.jg, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep182.i, ptr align 4 %scevgep183.i, i64 %i.jl, i1 false), !tbaa !206
  %i.jm = add i64 %i.jg, %.5.i
  br label %_ZN6duckdbL23MergeUpdateLoopInternalIttNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_m.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i
  %i.jn = phi i64 [ %i.ks, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i ], [ %.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit ] ; 4 uses
  %.28.i.i = phi i64 [ %i.kt, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i ], [ %.28.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit ] ; 3 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.i.i
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !206
  %i.jq = zext i32 %i.jp to i64                   ; 2 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.jq
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !218
  %i.jt = sub i64 %i.js, %i.k
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.jq
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !206
  %i.jw = zext i32 %i.jv to i64
  %i.jx = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.jw
  %i.jy = load i16, ptr %i.jx, align 2, !tbaa !317
  %i.jz = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.jn
  store i16 %i.jy, ptr %i.jz, align 2, !tbaa !317
  %i.ka = trunc i64 %i.jt to i32
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.jn
  store i32 %i.ka, ptr %i.kb, align 4, !tbaa !206
  %i.kc = add nuw nsw i64 %i.jn, 1                ; 2 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.i.i
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 4
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !206
  %i.kg = zext i32 %i.kf to i64                   ; 2 uses
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.kg
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !218
  %i.kj = sub i64 %i.ki, %i.k
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.kg
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !206
  %i.km = zext i32 %i.kl to i64
  %i.kn = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.km
  %i.ko = load i16, ptr %i.kn, align 2, !tbaa !317
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.kc
  store i16 %i.ko, ptr %i.kp, align 2, !tbaa !317
  %i.kq = trunc i64 %i.kj to i32
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.kc
  store i32 %i.kq, ptr %i.kr, align 4, !tbaa !206
  %i.ks = add nuw nsw i64 %i.jn, 2                ; 2 uses
  %i.kt = add nuw i64 %.28.i.i, 2                 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.kt, %5
  br i1 %exitcond.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i, !llvm.loop !4676

_ZN6duckdbL23MergeUpdateLoopInternalIttNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_m.exit: ; preds = %.preheader.i.i, %.lr.ph20.i.preheader.i
  %.8.i = phi i64 [ %.5.i, %.preheader.i.i ], [ %i.jm, %.lr.ph20.i.preheader.i ] ; 3 uses
  %i.ku = trunc i64 %.8.i to i32
  store i32 %i.ku, ptr %i.cg, align 8, !tbaa !932
  %i.kv = shl i64 %.8.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.q, ptr nonnull align 16 %i.a, i64 %i.kv, i1 false)
  %i.kw = shl i64 %.8.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 16 %i.b, i64 %i.kw, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdbL15MergeUpdateLoopIjEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(73) %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, i64 noundef %7) #1 {
bb.a:
  %i.a = alloca [2048 x i32], align 16            ; 22 uses
  %i.b = alloca [2048 x i32], align 16            ; 23 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIjEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1260
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIjEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1209 ; 12 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !959    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !943
  %i.j = shl i64 %i.i, 11
  %i.k = add i64 %i.j, %7                         ; 13 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.n = load i32, ptr %i.m, align 4, !tbaa !938
  %i.o = zext i32 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 2                  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.p ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.t = load i32, ptr %i.s, align 4, !tbaa !938
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2                  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %.not.i = icmp ne i64 %5, 0                     ; 2 uses
  br i1 %.not.i, label %.lr.ph152.i, label %..preheader_crit_edge.i

..preheader_crit_edge.i:                          ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !932
  %.pre184.i = zext i32 %.pre.i to i64
  br label %.preheader.i

.lr.ph152.i:                                      ; preds = %bb.a
  %i.x = load ptr, ptr %6, align 8, !tbaa !305    ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, null
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.z = load i32, ptr %i.y, align 8, !tbaa !932
  %i.aa = zext i32 %i.z to i64                    ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = zext i32 %i.ac to i64                   ; 3 uses
  br label %bb.b

.preheader.i:                                     ; preds = %bb.k, %..preheader_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre184.i, %..preheader_crit_edge.i ], [ %i.aa, %bb.k ] ; 3 uses
  %.0122.lcssa.i = phi i64 [ 0, %..preheader_crit_edge.i ], [ %.2124.i, %bb.k ] ; 3 uses
  %.072.lcssa.i = phi i64 [ 0, %..preheader_crit_edge.i ], [ %.274.i, %bb.k ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.af = icmp ult i64 %.072.lcssa.i, %.pre-phi.i
  br i1 %i.af, label %.lr.ph157.preheader.i, label %._crit_edge.i

.lr.ph157.preheader.i:                            ; preds = %.preheader.i
  %i.ag = shl i64 %.0122.lcssa.i, 2               ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.a, i64 %i.ag
  %i.ah = shl nuw nsw i64 %.072.lcssa.i, 2
  %i.ai = getelementptr i8, ptr %2, i64 %i.ah     ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 %i.v
  %scevgep175.i = getelementptr i8, ptr %i.aj, i64 88
  %i.ak = sub nuw nsw i64 %.pre-phi.i, %.072.lcssa.i
  %i.al = shl nuw nsw i64 %i.ak, 2                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep.i, ptr align 4 %scevgep175.i, i64 %i.al, i1 false), !tbaa !206
  %scevgep176.i = getelementptr i8, ptr %i.b, i64 %i.ag
  %scevgep177.i = getelementptr i8, ptr %i.ai, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep176.i, ptr align 4 %scevgep177.i, i64 %i.al, i1 false), !tbaa !206
  %i.am = add i64 %.0122.lcssa.i, %.pre-phi.i
  %i.an = sub i64 %i.am, %.072.lcssa.i
  br label %._crit_edge.i

bb.b:                                             ; preds = %bb.k, %.lr.ph152.i
  %.0151.i = phi i64 [ 0, %.lr.ph152.i ], [ %.2.i, %bb.k ] ; 4 uses
  %.072150.i = phi i64 [ 0, %.lr.ph152.i ], [ %.274.i, %bb.k ] ; 3 uses
  %.075149.i = phi i64 [ 0, %.lr.ph152.i ], [ %i.by, %bb.k ] ; 3 uses
  %.0122148.i = phi i64 [ 0, %.lr.ph152.i ], [ %.2124.i, %bb.k ] ; 2 uses
  br i1 %.not.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.075149.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !206
  %i.aq = zext i32 %i.ap to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %bb.c, %bb.b
  %i.ar = phi i64 [ %i.aq, %bb.c ], [ %.075149.i, %bb.b ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !218
  %i.au = sub i64 %i.at, %i.k                     ; 6 uses
  %i.av = icmp ult i64 %.072150.i, %i.aa
  br i1 %i.av, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, %bb.d
  %.173143.i = phi i64 [ %i.bf, %bb.d ], [ %.072150.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 6 uses
  %.1123142.i = phi i64 [ %i.bd, %bb.d ], [ %.0122148.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 7 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.173143.i
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !206 ; 3 uses
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = icmp ugt i64 %i.au, %i.ay
  br i1 %i.az, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.173143.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !206
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.1123142.i
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !206
  %i.bd = add nuw nsw i64 %.1123142.i, 1          ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1123142.i
  store i32 %i.ax, ptr %i.be, align 4, !tbaa !206
  %i.bf = add i64 %.173143.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bf, %i.aa
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !4678

bb.e:                                             ; preds = %.lr.ph.i
  %i.bg = icmp eq i64 %i.au, %i.ay
  br i1 %i.bg, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.173143.i
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !206
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.1123142.i
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !206
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1123142.i
  store i32 %i.ax, ptr %i.bk, align 4, !tbaa !206
  %i.bl = add nuw nsw i64 %.173143.i, 1
  br label %bb.k

.critedge.i:                                      ; preds = %bb.d, %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %.1123138.i = phi i64 [ %.1123142.i, %bb.e ], [ %.0122148.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.bd, %bb.d ] ; 3 uses
  %.173135.i = phi i64 [ %.173143.i, %bb.e ], [ %.072150.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.aa, %bb.d ]
  %i.bm = icmp ult i64 %.0151.i, %i.ad
  br i1 %i.bm, label %.lr.ph146.i, label %.critedge2.i

.lr.ph146.i:                                      ; preds = %.critedge.i, %bb.g
  %.1145.i = phi i64 [ %i.br, %bb.g ], [ %.0151.i, %.critedge.i ] ; 5 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.1145.i
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !206
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = icmp ugt i64 %i.au, %i.bp
  br i1 %i.bq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph146.i
  %i.br = add i64 %.1145.i, 1                     ; 2 uses
  %exitcond173.not.i = icmp eq i64 %i.br, %i.ad
  br i1 %exitcond173.not.i, label %.critedge2.i, label %.lr.ph146.i, !llvm.loop !4679

bb.h:                                             ; preds = %.lr.ph146.i
  %i.bs = icmp eq i64 %i.au, %i.bp
  br i1 %i.bs, label %bb.i, label %.critedge2.i

bb.i:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.1145.i
  br label %bb.j

.critedge2.i:                                     ; preds = %bb.g, %bb.h, %.critedge.i
  %.1141.i = phi i64 [ %.1145.i, %bb.h ], [ %.0151.i, %.critedge.i ], [ %i.ad, %bb.g ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.au
  br label %bb.j

bb.j:                                             ; preds = %.critedge2.i, %bb.i
  %.sink.in.i = phi ptr [ %i.bu, %.critedge2.i ], [ %i.bt, %bb.i ]
  %.1140.i = phi i64 [ %.1141.i, %.critedge2.i ], [ %.1145.i, %bb.i ]
  %.sink.i = load i32, ptr %.sink.in.i, align 4, !tbaa !206
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.1123138.i
  store i32 %.sink.i, ptr %i.bv, align 4, !tbaa !206
  %i.bw = trunc i64 %i.au to i32
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1123138.i
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !206
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.1123137.i = phi i64 [ %.1123142.i, %bb.f ], [ %.1123138.i, %bb.j ]
  %.274.i = phi i64 [ %i.bl, %bb.f ], [ %.173135.i, %bb.j ] ; 2 uses
  %.2.i = phi i64 [ %.0151.i, %bb.f ], [ %.1140.i, %bb.j ]
  %.2124.i = add i64 %.1123137.i, 1               ; 2 uses
  %i.by = add nuw i64 %.075149.i, 1               ; 2 uses
  %exitcond174.not.i = icmp eq i64 %i.by, %5
  br i1 %exitcond174.not.i, label %.preheader.i, label %bb.b, !llvm.loop !4680

._crit_edge.i:                                    ; preds = %.lr.ph157.preheader.i, %.preheader.i
  %.3125.lcssa.i = phi i64 [ %.0122.lcssa.i, %.preheader.i ], [ %i.an, %.lr.ph157.preheader.i ] ; 2 uses
  %i.bz = trunc i64 %.3125.lcssa.i to i32
  store i32 %i.bz, ptr %i.ae, align 8, !tbaa !932
  %i.ca = shl i64 %.3125.lcssa.i, 2               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.w, ptr nonnull align 16 %i.a, i64 %i.ca, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 16 %i.b, i64 %i.ca, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !932 ; 2 uses
  %i.cd = zext i32 %i.cc to i64                   ; 3 uses
  %.val.i = load ptr, ptr %6, align 8             ; 9 uses
  %i.ce = icmp ne i32 %i.cc, 0
  %i.cf = and i1 %.not.i, %i.ce
  br i1 %i.cf, label %.lr.ph.i.i, label %.preheader1.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i
  %.not.i.i.i = icmp eq ptr %.val.i, null
  br label %bb.l

.preheader1.i.i:                                  ; preds = %bb.t, %._crit_edge.i
  %.4.i = phi i64 [ 0, %._crit_edge.i ], [ %.7.i, %bb.t ] ; 17 uses
  %.054.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.155.i.i, %bb.t ] ; 3 uses
  %.0.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.1.i.i, %bb.t ] ; 22 uses
  %i.cg = icmp ult i64 %.0.lcssa.i.i, %5
  br i1 %i.cg, label %.lr.ph9.i.i, label %.preheader.i.i

.lr.ph9.i.i:                                      ; preds = %.preheader1.i.i
  %.not.i60.i.i = icmp eq ptr %.val.i, null
  %i.ch = load ptr, ptr %i.g, align 8, !tbaa !305 ; 7 uses
  %.not.i.i62.i.i = icmp eq ptr %i.ch, null       ; 2 uses
  br i1 %.not.i60.i.i, label %.lr.ph9.split.us.i.i, label %.lr.ph9.split.i.i

.lr.ph9.split.us.i.i:                             ; preds = %.lr.ph9.i.i
  br i1 %.not.i.i62.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader: ; preds = %.lr.ph9.split.us.i.i
  %i.ci = sub i64 %5, %.0.lcssa.i.i
  %.neg117 = add i64 %.0.lcssa.i.i, 1
  %xtraiter113 = and i64 %i.ci, 1
  %lcmp.mod114.not = icmp eq i64 %xtraiter113, 0
  br i1 %lcmp.mod114.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !218
  %i.cl = sub i64 %i.ck, %i.k
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.0.lcssa.i.i
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !206
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !206
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.4.i
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !206
  %i.cs = trunc i64 %i.cl to i32
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !206
  %i.cu = add nuw nsw i64 %.4.i, 1                ; 2 uses
  %i.cv = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader
  %.lcssa95.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.cu, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %.unr115 = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.cu, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %.28.us.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.cv, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %i.cw = icmp eq i64 %5, %.neg117
  br i1 %i.cw, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i: ; preds = %.lr.ph9.split.us.i.i
  %i.cx = shl i64 %.4.i, 2
  %scevgep178.i = getelementptr i8, ptr %i.a, i64 %i.cx
  %i.cy = shl i64 %.0.lcssa.i.i, 2
  %scevgep179.i = getelementptr i8, ptr %i.f, i64 %i.cy
  %i.cz = sub i64 %5, %.0.lcssa.i.i               ; 4 uses
  %i.da = shl i64 %i.cz, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep178.i, ptr readonly align 4 %scevgep179.i, i64 %i.da, i1 false), !tbaa !206
  %min.iters.check = icmp ult i64 %i.cz, 4
  br i1 %min.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i
  %n.vec = and i64 %i.cz, -4                      ; 4 uses
  %i.db = add i64 %.4.i, %n.vec                   ; 2 uses
  %i.dc = add i64 %.0.lcssa.i.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.k, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %index ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %wide.load = load <2 x i64>, ptr %i.df, align 8, !tbaa !218
  %wide.load92 = load <2 x i64>, ptr %i.dg, align 8, !tbaa !218
  %i.dh = sub <2 x i64> %wide.load, %broadcast.splat
  %i.di = sub <2 x i64> %wide.load92, %broadcast.splat
  %i.dj = trunc <2 x i64> %i.dh to <2 x i32>
  %i.dk = trunc <2 x i64> %i.di to <2 x i32>
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %index ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store <2 x i32> %i.dj, ptr %i.dl, align 4, !tbaa !206
  store <2 x i32> %i.dk, ptr %i.dm, align 4, !tbaa !206
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !4681

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cz, %n.vec
  br i1 %cmp.n, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i, %middle.block
  %.ph = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i ], [ %i.db, %middle.block ]
  %.28.us.us.i.i.ph = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i ], [ %i.dc, %middle.block ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i
  %i.do = phi i64 [ %i.du, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i ], [ %.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader ] ; 2 uses
  %.28.us.us.i.i = phi i64 [ %i.dv, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i ], [ %.28.us.us.i.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.28.us.us.i.i
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !218
  %i.dr = sub i64 %i.dq, %i.k
  %i.ds = trunc i64 %i.dr to i32
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.do
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !206
  %i.du = add nuw nsw i64 %i.do, 1                ; 2 uses
  %i.dv = add nuw i64 %.28.us.us.i.i, 1           ; 2 uses
  %exitcond33.not.i.i = icmp eq i64 %i.dv, %5
  br i1 %exitcond33.not.i.i, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i, !llvm.loop !4682

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i
  %i.dw = phi i64 [ %i.ev, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i ], [ %.unr115, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit ] ; 4 uses
  %.28.us.i.i = phi i64 [ %i.ew, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i ], [ %.28.us.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit ] ; 4 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.28.us.i.i
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !218
  %i.dz = sub i64 %i.dy, %i.k
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.28.us.i.i
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !206
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !206
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dw
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !206
  %i.eg = trunc i64 %i.dz to i32
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dw
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !206
  %i.ei = add nuw nsw i64 %i.dw, 1                ; 2 uses
  %i.ej = add nuw i64 %.28.us.i.i, 1              ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ej
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !218
  %i.em = sub i64 %i.el, %i.k
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.ej
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !206
  %i.ep = zext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !206
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ei
  store i32 %i.er, ptr %i.es, align 4, !tbaa !206
  %i.et = trunc i64 %i.em to i32
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ei
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !206
  %i.ev = add nuw nsw i64 %i.dw, 2                ; 2 uses
  %i.ew = add nuw i64 %.28.us.i.i, 2              ; 2 uses
  %exitcond32.not.i.i.1 = icmp eq i64 %i.ew, %5
  br i1 %exitcond32.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i, !llvm.loop !4683

.lr.ph9.split.i.i:                                ; preds = %.lr.ph9.i.i
  br i1 %.not.i.i62.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader: ; preds = %.lr.ph9.split.i.i
  %i.ex = sub i64 %5, %.0.lcssa.i.i
  %.neg = add i64 %.0.lcssa.i.i, 1
  %xtraiter = and i64 %i.ex, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0.lcssa.i.i
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !206
  %i.fa = zext i32 %i.ez to i64                   ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fa
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !218
  %i.fd = sub i64 %i.fc, %i.k
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.fa
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !206
  %i.fg = zext i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !206
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.4.i
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !206
  %i.fk = trunc i64 %i.fd to i32
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.fk, ptr %i.fl, align 4, !tbaa !206
  %i.fm = add nuw nsw i64 %.4.i, 1                ; 2 uses
  %i.fn = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader
  %.lcssa99.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fm, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %.unr = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fm, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %.28.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fn, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %i.fo = icmp eq i64 %5, %.neg
  br i1 %i.fo, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader: ; preds = %.lr.ph9.split.i.i
  %i.fp = sub i64 %5, %.0.lcssa.i.i
  %.neg116 = add i64 %.0.lcssa.i.i, 1
  %xtraiter110 = and i64 %i.fp, 1
  %lcmp.mod111.not = icmp eq i64 %xtraiter110, 0
  br i1 %lcmp.mod111.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0.lcssa.i.i
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !206
  %i.fs = zext i32 %i.fr to i64                   ; 2 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fs
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !218
  %i.fv = sub i64 %i.fu, %i.k
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.fs
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !206
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.4.i
  store i32 %i.fx, ptr %i.fy, align 4, !tbaa !206
  %i.fz = trunc i64 %i.fv to i32
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !206
  %i.gb = add nuw nsw i64 %.4.i, 1                ; 2 uses
  %i.gc = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader
  %.lcssa97.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.gb, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %.unr112 = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.gb, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %.28.us12.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.gc, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %i.gd = icmp eq i64 %5, %.neg116
  br i1 %i.gd, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i
  %i.ge = phi i64 [ %i.hd, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i ], [ %.unr112, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit ] ; 4 uses
  %.28.us12.i.i = phi i64 [ %i.he, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i ], [ %.28.us12.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit ] ; 3 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.us12.i.i
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !206
  %i.gh = zext i32 %i.gg to i64                   ; 2 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gh
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !218
  %i.gk = sub i64 %i.gj, %i.k
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.gh
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !206
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ge
  store i32 %i.gm, ptr %i.gn, align 4, !tbaa !206
  %i.go = trunc i64 %i.gk to i32
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ge
  store i32 %i.go, ptr %i.gp, align 4, !tbaa !206
  %i.gq = add nuw nsw i64 %i.ge, 1                ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.us12.i.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !206
  %i.gu = zext i32 %i.gt to i64                   ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gu
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !218
  %i.gx = sub i64 %i.gw, %i.k
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.gu
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !206
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gq
  store i32 %i.gz, ptr %i.ha, align 4, !tbaa !206
  %i.hb = trunc i64 %i.gx to i32
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gq
  store i32 %i.hb, ptr %i.hc, align 4, !tbaa !206
  %i.hd = add nuw nsw i64 %i.ge, 2                ; 2 uses
  %i.he = add nuw i64 %.28.us12.i.i, 2            ; 2 uses
  %exitcond31.not.i.i.1 = icmp eq i64 %i.he, %5
  br i1 %exitcond31.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i, !llvm.loop !4683

bb.l:                                             ; preds = %bb.t, %.lr.ph.i.i
  %.6.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.7.i, %bb.t ] ; 7 uses
  %.04.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %bb.t ] ; 5 uses
  %.0542.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.155.i.i, %bb.t ] ; 5 uses
  br i1 %.not.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !206
  %i.hh = zext i32 %i.hg to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i: ; preds = %bb.m, %bb.l
  %i.hi = phi i64 [ %i.hh, %bb.m ], [ %.04.i.i, %bb.l ] ; 5 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.hi
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !218
  %i.hl = sub i64 %i.hk, %i.k                     ; 4 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.0542.i.i
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !206 ; 2 uses
  %i.ho = zext i32 %i.hn to i64                   ; 2 uses
  %i.hp = icmp eq i64 %i.hl, %i.ho
  br i1 %i.hp, label %bb.n, label %bb.p

bb.n:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.hq = load ptr, ptr %i.g, align 8, !tbaa !305 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hq, null
  br i1 %.not.i.i.i.i.i, label %_ZZN6duckdbL23MergeUpdateLoopInternalIjjNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %i.hi
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !206
  %i.ht = zext i32 %i.hs to i64
  br label %_ZZN6duckdbL23MergeUpdateLoopInternalIjjNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i

_ZZN6duckdbL23MergeUpdateLoopInternalIjjNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i: ; preds = %bb.o, %bb.n
  %i.hu = phi i64 [ %i.ht, %bb.o ], [ %i.hi, %bb.n ]
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.hu
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !206
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.6.i
  store i32 %i.hw, ptr %i.hx, align 4, !tbaa !206
  %i.hy = trunc nuw i64 %i.hl to i32
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.6.i
  store i32 %i.hy, ptr %i.hz, align 4, !tbaa !206
  %i.ia = add nuw i64 %.04.i.i, 1
  %i.ib = add nuw nsw i64 %.0542.i.i, 1
  br label %bb.t

bb.p:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.ic = icmp ult i64 %i.hl, %i.ho
  br i1 %i.ic, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.id = load ptr, ptr %i.g, align 8, !tbaa !305 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.id, null
  br i1 %.not.i.i.i.i, label %_ZZN6duckdbL23MergeUpdateLoopInternalIjjNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.hi
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !206
  %i.ig = zext i32 %i.if to i64
  br label %_ZZN6duckdbL23MergeUpdateLoopInternalIjjNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i

_ZZN6duckdbL23MergeUpdateLoopInternalIjjNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i: ; preds = %bb.r, %bb.q
  %i.ih = phi i64 [ %i.ig, %bb.r ], [ %i.hi, %bb.q ]
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ih
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !206
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.6.i
  store i32 %i.ij, ptr %i.ik, align 4, !tbaa !206
  %i.il = trunc nuw i64 %i.hl to i32
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.6.i
  store i32 %i.il, ptr %i.im, align 4, !tbaa !206
  %i.in = add nuw i64 %.04.i.i, 1
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.0542.i.i
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !206
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.6.i
  store i32 %i.ip, ptr %i.iq, align 4, !tbaa !206
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.6.i
  store i32 %i.hn, ptr %i.ir, align 4, !tbaa !206
  %i.is = add nuw nsw i64 %.0542.i.i, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZZN6duckdbL23MergeUpdateLoopInternalIjjNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i, %_ZZN6duckdbL23MergeUpdateLoopInternalIjjNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i
  %.155.i.i = phi i64 [ %i.ib, %_ZZN6duckdbL23MergeUpdateLoopInternalIjjNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i ], [ %.0542.i.i, %_ZZN6duckdbL23MergeUpdateLoopInternalIjjNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i ], [ %i.is, %bb.s ] ; 3 uses
  %.1.i.i = phi i64 [ %i.ia, %_ZZN6duckdbL23MergeUpdateLoopInternalIjjNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i ], [ %i.in, %_ZZN6duckdbL23MergeUpdateLoopInternalIjjNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i ], [ %.04.i.i, %bb.s ] ; 3 uses
  %.7.i = add i64 %.6.i, 1                        ; 2 uses
  %i.it = icmp ult i64 %.1.i.i, %5
  %i.iu = icmp ult i64 %.155.i.i, %i.cd
  %i.iv = select i1 %i.it, i1 %i.iu, i1 false
  br i1 %i.iv, label %bb.l, label %.preheader1.i.i, !llvm.loop !4684

.preheader.i.i:                                   ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i, %middle.block, %.preheader1.i.i
  %.5.i = phi i64 [ %.4.i, %.preheader1.i.i ], [ %i.hd, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i ], [ %i.du, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i ], [ %i.ev, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i ], [ %i.db, %middle.block ], [ %.lcssa95.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit ], [ %.lcssa97.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit ], [ %.lcssa99.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit ], [ %i.kj, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i ] ; 3 uses
  %i.iw = icmp ult i64 %.054.lcssa.i.i, %i.cd
  br i1 %i.iw, label %.lr.ph20.i.preheader.i, label %_ZN6duckdbL23MergeUpdateLoopInternalIjjNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_m.exit

.lr.ph20.i.preheader.i:                           ; preds = %.preheader.i.i
  %i.ix = shl i64 %.5.i, 2                        ; 2 uses
  %scevgep180.i = getelementptr i8, ptr %i.a, i64 %i.ix
  %i.iy = shl nuw nsw i64 %.054.lcssa.i.i, 2
  %i.iz = getelementptr i8, ptr %0, i64 %i.iy     ; 2 uses
  %i.ja = getelementptr i8, ptr %i.iz, i64 %i.p
  %scevgep181.i = getelementptr i8, ptr %i.ja, i64 88
  %i.jb = sub nuw nsw i64 %i.cd, %.054.lcssa.i.i  ; 2 uses
  %i.jc = shl nuw nsw i64 %i.jb, 2                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep180.i, ptr align 4 %scevgep181.i, i64 %i.jc, i1 false), !tbaa !206
  %scevgep182.i = getelementptr i8, ptr %i.b, i64 %i.ix
  %scevgep183.i = getelementptr i8, ptr %i.iz, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep182.i, ptr align 4 %scevgep183.i, i64 %i.jc, i1 false), !tbaa !206
  %i.jd = add i64 %i.jb, %.5.i
  br label %_ZN6duckdbL23MergeUpdateLoopInternalIjjNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_m.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i
  %i.je = phi i64 [ %i.kj, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i ], [ %.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit ] ; 4 uses
  %.28.i.i = phi i64 [ %i.kk, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i ], [ %.28.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit ] ; 3 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.i.i
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !206
  %i.jh = zext i32 %i.jg to i64                   ; 2 uses
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.jh
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !218
  %i.jk = sub i64 %i.jj, %i.k
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.jh
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !206
  %i.jn = zext i32 %i.jm to i64
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.jn
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !206
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.je
  store i32 %i.jp, ptr %i.jq, align 4, !tbaa !206
  %i.jr = trunc i64 %i.jk to i32
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.je
  store i32 %i.jr, ptr %i.js, align 4, !tbaa !206
  %i.jt = add nuw nsw i64 %i.je, 1                ; 2 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.i.i
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 4
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !206
  %i.jx = zext i32 %i.jw to i64                   ; 2 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.jx
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !218
  %i.ka = sub i64 %i.jz, %i.k
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.jx
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !206
  %i.kd = zext i32 %i.kc to i64
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.kd
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !206
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.jt
  store i32 %i.kf, ptr %i.kg, align 4, !tbaa !206
  %i.kh = trunc i64 %i.ka to i32
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.jt
  store i32 %i.kh, ptr %i.ki, align 4, !tbaa !206
  %i.kj = add nuw nsw i64 %i.je, 2                ; 2 uses
  %i.kk = add nuw i64 %.28.i.i, 2                 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.kk, %5
  br i1 %exitcond.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i, !llvm.loop !4683

_ZN6duckdbL23MergeUpdateLoopInternalIjjNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_m.exit: ; preds = %.preheader.i.i, %.lr.ph20.i.preheader.i
  %.8.i = phi i64 [ %.5.i, %.preheader.i.i ], [ %i.jd, %.lr.ph20.i.preheader.i ] ; 2 uses
  %i.kl = trunc i64 %.8.i to i32
  store i32 %i.kl, ptr %i.cb, align 8, !tbaa !932
  %i.km = shl i64 %.8.i, 2                        ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.q, ptr nonnull align 16 %i.a, i64 %i.km, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 16 %i.b, i64 %i.km, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdbL15MergeUpdateLoopImEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(73) %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, i64 noundef %7) #1 {
bb.a:
  %i.a = alloca [2048 x i64], align 16            ; 22 uses
  %i.b = alloca [2048 x i32], align 16            ; 23 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1260
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeImEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1209 ; 12 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !959    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !943
  %i.j = shl i64 %i.i, 11
  %i.k = add i64 %i.j, %7                         ; 13 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.n = load i32, ptr %i.m, align 4, !tbaa !938
  %i.o = zext i32 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 2                  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.p ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.t = load i32, ptr %i.s, align 4, !tbaa !938
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2                  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %.not.i = icmp ne i64 %5, 0                     ; 2 uses
  br i1 %.not.i, label %.lr.ph160.i, label %..preheader_crit_edge.i

..preheader_crit_edge.i:                          ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !932
  %.pre192.i = zext i32 %.pre.i to i64
  br label %.preheader.i

.lr.ph160.i:                                      ; preds = %bb.a
  %i.x = load ptr, ptr %6, align 8, !tbaa !305    ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, null
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.z = load i32, ptr %i.y, align 8, !tbaa !932
  %i.aa = zext i32 %i.z to i64                    ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = zext i32 %i.ac to i64                   ; 3 uses
  br label %bb.b

.preheader.i:                                     ; preds = %bb.k, %..preheader_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre192.i, %..preheader_crit_edge.i ], [ %i.aa, %bb.k ] ; 3 uses
  %.0130.lcssa.i = phi i64 [ 0, %..preheader_crit_edge.i ], [ %.2132.i, %bb.k ] ; 4 uses
  %.072.lcssa.i = phi i64 [ 0, %..preheader_crit_edge.i ], [ %.274.i, %bb.k ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.af = icmp ult i64 %.072.lcssa.i, %.pre-phi.i
  br i1 %i.af, label %.lr.ph165.preheader.i, label %._crit_edge.i

.lr.ph165.preheader.i:                            ; preds = %.preheader.i
  %i.ag = shl i64 %.0130.lcssa.i, 3
  %scevgep.i = getelementptr i8, ptr %i.a, i64 %i.ag
  %i.ah = shl nuw nsw i64 %.072.lcssa.i, 3
  %i.ai = getelementptr i8, ptr %2, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 %i.v
  %scevgep183.i = getelementptr i8, ptr %i.aj, i64 88
  %i.ak = sub nuw nsw i64 %.pre-phi.i, %.072.lcssa.i ; 2 uses
  %i.al = shl nuw nsw i64 %i.ak, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scevgep.i, ptr align 8 %scevgep183.i, i64 %i.al, i1 false), !tbaa !218
  %i.am = shl i64 %.0130.lcssa.i, 2
  %scevgep184.i = getelementptr i8, ptr %i.b, i64 %i.am
  %i.an = shl nuw nsw i64 %.072.lcssa.i, 2
  %i.ao = getelementptr i8, ptr %2, i64 %i.an
  %scevgep185.i = getelementptr i8, ptr %i.ao, i64 88
  %i.ap = shl nuw nsw i64 %i.ak, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep184.i, ptr align 4 %scevgep185.i, i64 %i.ap, i1 false), !tbaa !206
  %i.aq = add i64 %.0130.lcssa.i, %.pre-phi.i
  %i.ar = sub i64 %i.aq, %.072.lcssa.i
  br label %._crit_edge.i

bb.b:                                             ; preds = %bb.k, %.lr.ph160.i
  %.0159.i = phi i64 [ 0, %.lr.ph160.i ], [ %.2.i, %bb.k ] ; 4 uses
  %.072158.i = phi i64 [ 0, %.lr.ph160.i ], [ %.274.i, %bb.k ] ; 3 uses
  %.075157.i = phi i64 [ 0, %.lr.ph160.i ], [ %i.cc, %bb.k ] ; 3 uses
  %.0130156.i = phi i64 [ 0, %.lr.ph160.i ], [ %.2132.i, %bb.k ] ; 2 uses
  br i1 %.not.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.075157.i
  %i.at = load i32, ptr %i.as, align 4, !tbaa !206
  %i.au = zext i32 %i.at to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %bb.c, %bb.b
  %i.av = phi i64 [ %i.au, %bb.c ], [ %.075157.i, %bb.b ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !218
  %i.ay = sub i64 %i.ax, %i.k                     ; 6 uses
  %i.az = icmp ult i64 %.072158.i, %i.aa
  br i1 %i.az, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, %bb.d
  %.173151.i = phi i64 [ %i.bj, %bb.d ], [ %.072158.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 6 uses
  %.1131150.i = phi i64 [ %i.bh, %bb.d ], [ %.0130156.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 7 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.173151.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !206 ; 3 uses
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = icmp ugt i64 %i.ay, %i.bc
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.173151.i
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !218
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.1131150.i
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !218
  %i.bh = add nuw nsw i64 %.1131150.i, 1          ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1131150.i
  store i32 %i.bb, ptr %i.bi, align 4, !tbaa !206
  %i.bj = add i64 %.173151.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bj, %i.aa
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !4685

bb.e:                                             ; preds = %.lr.ph.i
  %i.bk = icmp eq i64 %i.ay, %i.bc
  br i1 %i.bk, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.173151.i
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !218
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.1131150.i
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !218
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1131150.i
  store i32 %i.bb, ptr %i.bo, align 4, !tbaa !206
  %i.bp = add nuw nsw i64 %.173151.i, 1
  br label %bb.k

.critedge.i:                                      ; preds = %bb.d, %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %.1131146.i = phi i64 [ %.1131150.i, %bb.e ], [ %.0130156.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.bh, %bb.d ] ; 3 uses
  %.173143.i = phi i64 [ %.173151.i, %bb.e ], [ %.072158.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.aa, %bb.d ]
  %i.bq = icmp ult i64 %.0159.i, %i.ad
  br i1 %i.bq, label %.lr.ph154.i, label %.critedge2.i

.lr.ph154.i:                                      ; preds = %.critedge.i, %bb.g
  %.1153.i = phi i64 [ %i.bv, %bb.g ], [ %.0159.i, %.critedge.i ] ; 5 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.1153.i
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !206
  %i.bt = zext i32 %i.bs to i64                   ; 2 uses
  %i.bu = icmp ugt i64 %i.ay, %i.bt
  br i1 %i.bu, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph154.i
  %i.bv = add i64 %.1153.i, 1                     ; 2 uses
  %exitcond181.not.i = icmp eq i64 %i.bv, %i.ad
  br i1 %exitcond181.not.i, label %.critedge2.i, label %.lr.ph154.i, !llvm.loop !4686

bb.h:                                             ; preds = %.lr.ph154.i
  %i.bw = icmp eq i64 %i.ay, %i.bt
  br i1 %i.bw, label %bb.i, label %.critedge2.i

bb.i:                                             ; preds = %bb.h
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.1153.i
  br label %bb.j

.critedge2.i:                                     ; preds = %bb.g, %bb.h, %.critedge.i
  %.1149.i = phi i64 [ %.1153.i, %bb.h ], [ %.0159.i, %.critedge.i ], [ %i.ad, %bb.g ]
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ay
  br label %bb.j

bb.j:                                             ; preds = %.critedge2.i, %bb.i
  %.sink.in.i = phi ptr [ %i.by, %.critedge2.i ], [ %i.bx, %bb.i ]
  %.1148.i = phi i64 [ %.1149.i, %.critedge2.i ], [ %.1153.i, %bb.i ]
  %.sink.i = load i64, ptr %.sink.in.i, align 8, !tbaa !218
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.1131146.i
  store i64 %.sink.i, ptr %i.bz, align 8, !tbaa !218
  %i.ca = trunc i64 %i.ay to i32
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1131146.i
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !206
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.1131145.i = phi i64 [ %.1131150.i, %bb.f ], [ %.1131146.i, %bb.j ]
  %.274.i = phi i64 [ %i.bp, %bb.f ], [ %.173143.i, %bb.j ] ; 2 uses
  %.2.i = phi i64 [ %.0159.i, %bb.f ], [ %.1148.i, %bb.j ]
  %.2132.i = add i64 %.1131145.i, 1               ; 2 uses
  %i.cc = add nuw i64 %.075157.i, 1               ; 2 uses
  %exitcond182.not.i = icmp eq i64 %i.cc, %5
  br i1 %exitcond182.not.i, label %.preheader.i, label %bb.b, !llvm.loop !4687

._crit_edge.i:                                    ; preds = %.lr.ph165.preheader.i, %.preheader.i
  %.3133.lcssa.i = phi i64 [ %.0130.lcssa.i, %.preheader.i ], [ %i.ar, %.lr.ph165.preheader.i ] ; 3 uses
  %i.cd = trunc i64 %.3133.lcssa.i to i32
  store i32 %i.cd, ptr %i.ae, align 8, !tbaa !932
  %i.ce = shl i64 %.3133.lcssa.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 16 %i.a, i64 %i.ce, i1 false)
  %i.cf = shl i64 %.3133.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 16 %i.b, i64 %i.cf, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !932 ; 2 uses
  %i.ci = zext i32 %i.ch to i64                   ; 3 uses
  %.val.i = load ptr, ptr %6, align 8             ; 9 uses
  %i.cj = icmp ne i32 %i.ch, 0
  %i.ck = and i1 %.not.i, %i.cj
  br i1 %i.ck, label %.lr.ph.i.i, label %.preheader1.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i
  %.not.i.i.i = icmp eq ptr %.val.i, null
  br label %bb.l

.preheader1.i.i:                                  ; preds = %bb.t, %._crit_edge.i
  %.4.i = phi i64 [ 0, %._crit_edge.i ], [ %.12.i, %bb.t ] ; 17 uses
  %.054.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.155.i.i, %bb.t ] ; 4 uses
  %.0.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.1.i.i, %bb.t ] ; 22 uses
  %i.cl = icmp ult i64 %.0.lcssa.i.i, %5
  br i1 %i.cl, label %.lr.ph9.i.i, label %.preheader.i.i

.lr.ph9.i.i:                                      ; preds = %.preheader1.i.i
  %.not.i60.i.i = icmp eq ptr %.val.i, null
  %i.cm = load ptr, ptr %i.g, align 8, !tbaa !305 ; 7 uses
  %.not.i.i62.i.i = icmp eq ptr %i.cm, null       ; 2 uses
  br i1 %.not.i60.i.i, label %.lr.ph9.split.us.i.i, label %.lr.ph9.split.i.i

.lr.ph9.split.us.i.i:                             ; preds = %.lr.ph9.i.i
  br i1 %.not.i.i62.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader: ; preds = %.lr.ph9.split.us.i.i
  %i.cn = sub i64 %5, %.0.lcssa.i.i
  %.neg115 = add i64 %.0.lcssa.i.i, 1
  %xtraiter112 = and i64 %i.cn, 1
  %lcmp.mod113.not = icmp eq i64 %xtraiter112, 0
  br i1 %lcmp.mod113.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !218
  %i.cq = sub i64 %i.cp, %i.k
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.0.lcssa.i.i
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !206
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ct
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !218
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.4.i
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !218
  %i.cx = trunc i64 %i.cq to i32
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !206
  %i.cz = add nuw nsw i64 %.4.i, 1                ; 2 uses
  %i.da = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader
  %.lcssa95.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.cz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %.9.i.unr = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.cz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %.28.us.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.da, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %i.db = icmp eq i64 %5, %.neg115
  br i1 %i.db, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i: ; preds = %.lr.ph9.split.us.i.i
  %i.dc = shl i64 %.4.i, 3
  %scevgep186.i = getelementptr i8, ptr %i.a, i64 %i.dc
  %i.dd = shl i64 %.0.lcssa.i.i, 3
  %scevgep187.i = getelementptr i8, ptr %i.f, i64 %i.dd
  %i.de = sub i64 %5, %.0.lcssa.i.i               ; 4 uses
  %i.df = shl i64 %i.de, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scevgep186.i, ptr readonly align 8 %scevgep187.i, i64 %i.df, i1 false), !tbaa !218
  %min.iters.check = icmp ult i64 %i.de, 4
  br i1 %min.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i
  %n.vec = and i64 %i.de, -4                      ; 4 uses
  %i.dg = add i64 %.4.i, %n.vec                   ; 2 uses
  %i.dh = add i64 %.0.lcssa.i.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.k, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %index ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %wide.load = load <2 x i64>, ptr %i.dk, align 8, !tbaa !218
  %wide.load92 = load <2 x i64>, ptr %i.dl, align 8, !tbaa !218
  %i.dm = sub <2 x i64> %wide.load, %broadcast.splat
  %i.dn = sub <2 x i64> %wide.load92, %broadcast.splat
  %i.do = trunc <2 x i64> %i.dm to <2 x i32>
  %i.dp = trunc <2 x i64> %i.dn to <2 x i32>
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %index ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store <2 x i32> %i.do, ptr %i.dq, align 4, !tbaa !206
  store <2 x i32> %i.dp, ptr %i.dr, align 4, !tbaa !206
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !4688

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.de, %n.vec
  br i1 %cmp.n, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i, %middle.block
  %.10.i.ph = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i ], [ %i.dg, %middle.block ]
  %.28.us.us.i.i.ph = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i ], [ %i.dh, %middle.block ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i
  %.10.i = phi i64 [ %i.dy, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i ], [ %.10.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader ] ; 2 uses
  %.28.us.us.i.i = phi i64 [ %i.dz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i ], [ %.28.us.us.i.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader ] ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.28.us.us.i.i
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !218
  %i.dv = sub i64 %i.du, %i.k
  %i.dw = trunc i64 %i.dv to i32
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.10.i
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !206
  %i.dy = add nuw nsw i64 %.10.i, 1               ; 2 uses
  %i.dz = add nuw i64 %.28.us.us.i.i, 1           ; 2 uses
  %exitcond31.not.i.i = icmp eq i64 %i.dz, %5
  br i1 %exitcond31.not.i.i, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i, !llvm.loop !4689

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i
  %.9.i = phi i64 [ %i.ey, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i ], [ %.9.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit ] ; 4 uses
  %.28.us.i.i = phi i64 [ %i.ez, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i ], [ %.28.us.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit ] ; 4 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.28.us.i.i
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !218
  %i.ec = sub i64 %i.eb, %i.k
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.28.us.i.i
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !206
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ef
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !218
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.9.i
  store i64 %i.eh, ptr %i.ei, align 8, !tbaa !218
  %i.ej = trunc i64 %i.ec to i32
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.9.i
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !206
  %i.el = add nuw nsw i64 %.9.i, 1                ; 2 uses
  %i.em = add nuw i64 %.28.us.i.i, 1              ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.em
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !218
  %i.ep = sub i64 %i.eo, %i.k
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.em
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !206
  %i.es = zext i32 %i.er to i64
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.es
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !218
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.el
  store i64 %i.eu, ptr %i.ev, align 8, !tbaa !218
  %i.ew = trunc i64 %i.ep to i32
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.el
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !206
  %i.ey = add nuw nsw i64 %.9.i, 2                ; 2 uses
  %i.ez = add nuw i64 %.28.us.i.i, 2              ; 2 uses
  %exitcond30.not.i.i.1 = icmp eq i64 %i.ez, %5
  br i1 %exitcond30.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i, !llvm.loop !4690

.lr.ph9.split.i.i:                                ; preds = %.lr.ph9.i.i
  br i1 %.not.i.i62.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader: ; preds = %.lr.ph9.split.i.i
  %i.fa = sub i64 %5, %.0.lcssa.i.i
  %.neg = add i64 %.0.lcssa.i.i, 1
  %xtraiter = and i64 %i.fa, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0.lcssa.i.i
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !206
  %i.fd = zext i32 %i.fc to i64                   ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fd
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !218
  %i.fg = sub i64 %i.ff, %i.k
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.fd
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !206
  %i.fj = zext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.fj
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !218
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.4.i
  store i64 %i.fl, ptr %i.fm, align 8, !tbaa !218
  %i.fn = trunc i64 %i.fg to i32
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.fn, ptr %i.fo, align 4, !tbaa !206
  %i.fp = add nuw nsw i64 %.4.i, 1                ; 2 uses
  %i.fq = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader
  %.lcssa99.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fp, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %.7.i.unr = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fp, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %.28.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fq, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %i.fr = icmp eq i64 %5, %.neg
  br i1 %i.fr, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader: ; preds = %.lr.ph9.split.i.i
  %i.fs = sub i64 %5, %.0.lcssa.i.i
  %.neg114 = add i64 %.0.lcssa.i.i, 1
  %xtraiter110 = and i64 %i.fs, 1
  %lcmp.mod111.not = icmp eq i64 %xtraiter110, 0
  br i1 %lcmp.mod111.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0.lcssa.i.i
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !206
  %i.fv = zext i32 %i.fu to i64                   ; 2 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fv
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !218
  %i.fy = sub i64 %i.fx, %i.k
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.fv
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !218
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.4.i
  store i64 %i.ga, ptr %i.gb, align 8, !tbaa !218
  %i.gc = trunc i64 %i.fy to i32
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.gc, ptr %i.gd, align 4, !tbaa !206
  %i.ge = add nuw nsw i64 %.4.i, 1                ; 2 uses
  %i.gf = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader
  %.lcssa97.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.ge, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %.8.i.unr = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.ge, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %.28.us12.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.gf, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %i.gg = icmp eq i64 %5, %.neg114
  br i1 %i.gg, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i
  %.8.i = phi i64 [ %i.hf, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i ], [ %.8.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit ] ; 4 uses
  %.28.us12.i.i = phi i64 [ %i.hg, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i ], [ %.28.us12.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit ] ; 3 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.us12.i.i
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !206
  %i.gj = zext i32 %i.gi to i64                   ; 2 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gj
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !218
  %i.gm = sub i64 %i.gl, %i.k
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.gj
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !218
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.8.i
  store i64 %i.go, ptr %i.gp, align 8, !tbaa !218
  %i.gq = trunc i64 %i.gm to i32
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.8.i
  store i32 %i.gq, ptr %i.gr, align 4, !tbaa !206
  %i.gs = add nuw nsw i64 %.8.i, 1                ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.us12.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 4
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !206
  %i.gw = zext i32 %i.gv to i64                   ; 2 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gw
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !218
  %i.gz = sub i64 %i.gy, %i.k
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.gw
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !218
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.gs
  store i64 %i.hb, ptr %i.hc, align 8, !tbaa !218
  %i.hd = trunc i64 %i.gz to i32
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gs
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !206
  %i.hf = add nuw nsw i64 %.8.i, 2                ; 2 uses
  %i.hg = add nuw i64 %.28.us12.i.i, 2            ; 2 uses
  %exitcond29.not.i.i.1 = icmp eq i64 %i.hg, %5
  br i1 %exitcond29.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i, !llvm.loop !4690

bb.l:                                             ; preds = %bb.t, %.lr.ph.i.i
  %.11.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.12.i, %bb.t ] ; 7 uses
  %.04.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %bb.t ] ; 5 uses
  %.0542.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.155.i.i, %bb.t ] ; 5 uses
  br i1 %.not.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !206
  %i.hj = zext i32 %i.hi to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i: ; preds = %bb.m, %bb.l
  %i.hk = phi i64 [ %i.hj, %bb.m ], [ %.04.i.i, %bb.l ] ; 5 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.hk
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !218
  %i.hn = sub i64 %i.hm, %i.k                     ; 4 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.0542.i.i
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !206 ; 2 uses
  %i.hq = zext i32 %i.hp to i64                   ; 2 uses
  %i.hr = icmp eq i64 %i.hn, %i.hq
  br i1 %i.hr, label %bb.n, label %bb.p

bb.n:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.hs = load ptr, ptr %i.g, align 8, !tbaa !305 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hs, null
  br i1 %.not.i.i.i.i.i, label %_ZZN6duckdbL23MergeUpdateLoopInternalImmNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %i.hk
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !206
  %i.hv = zext i32 %i.hu to i64
  br label %_ZZN6duckdbL23MergeUpdateLoopInternalImmNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i

_ZZN6duckdbL23MergeUpdateLoopInternalImmNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i: ; preds = %bb.o, %bb.n
  %i.hw = phi i64 [ %i.hv, %bb.o ], [ %i.hk, %bb.n ]
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.hw
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !218
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.11.i
  store i64 %i.hy, ptr %i.hz, align 8, !tbaa !218
  %i.ia = trunc nuw i64 %i.hn to i32
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.11.i
  store i32 %i.ia, ptr %i.ib, align 4, !tbaa !206
  %i.ic = add nuw i64 %.04.i.i, 1
  %i.id = add nuw nsw i64 %.0542.i.i, 1
  br label %bb.t

bb.p:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.ie = icmp ult i64 %i.hn, %i.hq
  br i1 %i.ie, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.if = load ptr, ptr %i.g, align 8, !tbaa !305 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.if, null
  br i1 %.not.i.i.i.i, label %_ZZN6duckdbL23MergeUpdateLoopInternalImmNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.hk
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !206
  %i.ii = zext i32 %i.ih to i64
  br label %_ZZN6duckdbL23MergeUpdateLoopInternalImmNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i

_ZZN6duckdbL23MergeUpdateLoopInternalImmNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i: ; preds = %bb.r, %bb.q
  %i.ij = phi i64 [ %i.ii, %bb.r ], [ %i.hk, %bb.q ]
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ij
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !218
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.11.i
  store i64 %i.il, ptr %i.im, align 8, !tbaa !218
  %i.in = trunc nuw i64 %i.hn to i32
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.11.i
  store i32 %i.in, ptr %i.io, align 4, !tbaa !206
  %i.ip = add nuw i64 %.04.i.i, 1
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.0542.i.i
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !218
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.11.i
  store i64 %i.ir, ptr %i.is, align 8, !tbaa !218
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.11.i
  store i32 %i.hp, ptr %i.it, align 4, !tbaa !206
  %i.iu = add nuw nsw i64 %.0542.i.i, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZZN6duckdbL23MergeUpdateLoopInternalImmNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i, %_ZZN6duckdbL23MergeUpdateLoopInternalImmNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i
  %.155.i.i = phi i64 [ %i.id, %_ZZN6duckdbL23MergeUpdateLoopInternalImmNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i ], [ %.0542.i.i, %_ZZN6duckdbL23MergeUpdateLoopInternalImmNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i ], [ %i.iu, %bb.s ] ; 3 uses
  %.1.i.i = phi i64 [ %i.ic, %_ZZN6duckdbL23MergeUpdateLoopInternalImmNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i ], [ %i.ip, %_ZZN6duckdbL23MergeUpdateLoopInternalImmNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i ], [ %.04.i.i, %bb.s ] ; 3 uses
  %.12.i = add i64 %.11.i, 1                      ; 2 uses
  %i.iv = icmp ult i64 %.1.i.i, %5
  %i.iw = icmp ult i64 %.155.i.i, %i.ci
  %i.ix = select i1 %i.iv, i1 %i.iw, i1 false
  br i1 %i.ix, label %bb.l, label %.preheader1.i.i, !llvm.loop !4691

.preheader.i.i:                                   ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i, %middle.block, %.preheader1.i.i
  %.5.i = phi i64 [ %.4.i, %.preheader1.i.i ], [ %i.hf, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i ], [ %i.dy, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i ], [ %i.ey, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i ], [ %i.dg, %middle.block ], [ %.lcssa95.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit ], [ %.lcssa97.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit ], [ %.lcssa99.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit ], [ %i.ko, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i ] ; 4 uses
  %i.iy = icmp ult i64 %.054.lcssa.i.i, %i.ci
  br i1 %i.iy, label %.lr.ph20.i.preheader.i, label %_ZN6duckdbL23MergeUpdateLoopInternalImmNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_m.exit

.lr.ph20.i.preheader.i:                           ; preds = %.preheader.i.i
  %i.iz = shl i64 %.5.i, 3
  %scevgep188.i = getelementptr i8, ptr %i.a, i64 %i.iz
  %i.ja = shl nuw nsw i64 %.054.lcssa.i.i, 3
  %i.jb = getelementptr i8, ptr %0, i64 %i.ja
  %i.jc = getelementptr i8, ptr %i.jb, i64 %i.p
  %scevgep189.i = getelementptr i8, ptr %i.jc, i64 88
  %i.jd = sub nuw nsw i64 %i.ci, %.054.lcssa.i.i  ; 3 uses
  %i.je = shl nuw nsw i64 %i.jd, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scevgep188.i, ptr align 8 %scevgep189.i, i64 %i.je, i1 false), !tbaa !218
  %i.jf = shl i64 %.5.i, 2
  %scevgep190.i = getelementptr i8, ptr %i.b, i64 %i.jf
  %i.jg = shl nuw nsw i64 %.054.lcssa.i.i, 2
  %i.jh = getelementptr i8, ptr %0, i64 %i.jg
  %scevgep191.i = getelementptr i8, ptr %i.jh, i64 88
  %i.ji = shl nuw nsw i64 %i.jd, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep190.i, ptr align 4 %scevgep191.i, i64 %i.ji, i1 false), !tbaa !206
  %i.jj = add i64 %i.jd, %.5.i
  br label %_ZN6duckdbL23MergeUpdateLoopInternalImmNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_m.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i
  %.7.i = phi i64 [ %i.ko, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i ], [ %.7.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit ] ; 4 uses
  %.28.i.i = phi i64 [ %i.kp, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i ], [ %.28.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit ] ; 3 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.i.i
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !206
  %i.jm = zext i32 %i.jl to i64                   ; 2 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.jm
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !218
  %i.jp = sub i64 %i.jo, %i.k
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.jm
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !206
  %i.js = zext i32 %i.jr to i64
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.js
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !218
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.7.i
  store i64 %i.ju, ptr %i.jv, align 8, !tbaa !218
  %i.jw = trunc i64 %i.jp to i32
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.7.i
  store i32 %i.jw, ptr %i.jx, align 4, !tbaa !206
  %i.jy = add nuw nsw i64 %.7.i, 1                ; 2 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.i.i
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 4
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !206
  %i.kc = zext i32 %i.kb to i64                   ; 2 uses
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.kc
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !218
  %i.kf = sub i64 %i.ke, %i.k
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.kc
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !206
  %i.ki = zext i32 %i.kh to i64
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ki
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !218
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.jy
  store i64 %i.kk, ptr %i.kl, align 8, !tbaa !218
  %i.km = trunc i64 %i.kf to i32
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.jy
  store i32 %i.km, ptr %i.kn, align 4, !tbaa !206
  %i.ko = add nuw nsw i64 %.7.i, 2                ; 2 uses
  %i.kp = add nuw i64 %.28.i.i, 2                 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.kp, %5
  br i1 %exitcond.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i, !llvm.loop !4690

_ZN6duckdbL23MergeUpdateLoopInternalImmNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_m.exit: ; preds = %.preheader.i.i, %.lr.ph20.i.preheader.i
  %.13.i = phi i64 [ %.5.i, %.preheader.i.i ], [ %i.jj, %.lr.ph20.i.preheader.i ] ; 3 uses
  %i.kq = trunc i64 %.13.i to i32
  store i32 %i.kq, ptr %i.cg, align 8, !tbaa !932
  %i.kr = shl i64 %.13.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 16 %i.a, i64 %i.kr, i1 false)
  %i.ks = shl i64 %.13.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 16 %i.b, i64 %i.ks, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdbL15MergeUpdateLoopINS_9hugeint_tEEEvRNS_10UpdateInfoERNS_6VectorES3_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(73) %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, i64 noundef %7) #1 {
bb.a:
  %8 = alloca [2048 x %"struct.duckdb::hugeint_t"], align 16 ; 25 uses
  %i.a = alloca [2048 x i32], align 16            ; 24 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_9hugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1260
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_9hugeint_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1209 ; 14 uses
  %i.f = load ptr, ptr %3, align 8, !tbaa !959    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !943
  %i.i = shl i64 %i.h, 11
  %i.j = add i64 %i.i, %7                         ; 14 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.m = load i32, ptr %i.l, align 4, !tbaa !938
  %i.n = zext i32 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 2                  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.s = load i32, ptr %i.r, align 4, !tbaa !938
  %i.t = zext i32 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 2                  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %.not.i = icmp ne i64 %5, 0                     ; 2 uses
  br i1 %.not.i, label %.lr.ph165.i, label %..preheader_crit_edge.i

..preheader_crit_edge.i:                          ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !932
  %.pre195.i = zext i32 %.pre.i to i64
  br label %.preheader.i

.lr.ph165.i:                                      ; preds = %bb.a
  %i.w = load ptr, ptr %6, align 8, !tbaa !305    ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.y = load i32, ptr %i.x, align 8, !tbaa !932
  %i.z = zext i32 %i.y to i64                     ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = zext i32 %i.ab to i64                   ; 3 uses
  br label %bb.b

.preheader.i:                                     ; preds = %bb.k, %..preheader_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre195.i, %..preheader_crit_edge.i ], [ %i.z, %bb.k ] ; 3 uses
  %.0135.lcssa.i = phi i64 [ 0, %..preheader_crit_edge.i ], [ %.2137.i, %bb.k ] ; 4 uses
  %.075.lcssa.i = phi i64 [ 0, %..preheader_crit_edge.i ], [ %.277.i, %bb.k ] ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ae = icmp ult i64 %.075.lcssa.i, %.pre-phi.i
  br i1 %i.ae, label %.lr.ph170.preheader.i, label %._crit_edge.i

.lr.ph170.preheader.i:                            ; preds = %.preheader.i
  %i.af = shl i64 %.0135.lcssa.i, 2
  %scevgep.i = getelementptr i8, ptr %i.a, i64 %i.af
  %i.ag = shl nuw nsw i64 %.075.lcssa.i, 2
  %i.ah = getelementptr i8, ptr %2, i64 %i.ag
  %scevgep188.i = getelementptr i8, ptr %i.ah, i64 88
  %i.ai = sub nuw nsw i64 %.pre-phi.i, %.075.lcssa.i ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep.i, ptr align 4 %scevgep188.i, i64 %i.aj, i1 false), !tbaa !206
  %i.ak = shl i64 %.0135.lcssa.i, 4
  %scevgep189.i = getelementptr i8, ptr %8, i64 %i.ak
  %i.al = shl nuw nsw i64 %.075.lcssa.i, 4
  %i.am = getelementptr i8, ptr %2, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 %i.u
  %scevgep190.i = getelementptr i8, ptr %i.an, i64 88
  %i.ao = shl nuw nsw i64 %i.ai, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %scevgep189.i, ptr align 8 %scevgep190.i, i64 %i.ao, i1 false)
  %i.ap = add i64 %.0135.lcssa.i, %.pre-phi.i
  %i.aq = sub i64 %i.ap, %.075.lcssa.i
  br label %._crit_edge.i

bb.b:                                             ; preds = %bb.k, %.lr.ph165.i
  %.0164.i = phi i64 [ 0, %.lr.ph165.i ], [ %.2.i, %bb.k ] ; 4 uses
  %.075163.i = phi i64 [ 0, %.lr.ph165.i ], [ %.277.i, %bb.k ] ; 3 uses
  %.078162.i = phi i64 [ 0, %.lr.ph165.i ], [ %i.cb, %bb.k ] ; 3 uses
  %.0135161.i = phi i64 [ 0, %.lr.ph165.i ], [ %.2137.i, %bb.k ] ; 2 uses
  br i1 %.not.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.078162.i
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !206
  %i.at = zext i32 %i.as to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %bb.c, %bb.b
  %i.au = phi i64 [ %i.at, %bb.c ], [ %.078162.i, %bb.b ]
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !218
  %i.ax = sub i64 %i.aw, %i.j                     ; 6 uses
  %i.ay = icmp ult i64 %.075163.i, %i.z
  br i1 %i.ay, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, %bb.d
  %.176156.i = phi i64 [ %i.bh, %bb.d ], [ %.075163.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 6 uses
  %.1136155.i = phi i64 [ %i.bf, %bb.d ], [ %.0135161.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 7 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.176156.i
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !206 ; 3 uses
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %i.bc = icmp ugt i64 %i.ax, %i.bb
  br i1 %i.bc, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.176156.i
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.1136155.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i64 16, i1 false), !tbaa.struct !450
  %i.bf = add nuw nsw i64 %.1136155.i, 1          ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.1136155.i
  store i32 %i.ba, ptr %i.bg, align 4, !tbaa !206
  %i.bh = add i64 %.176156.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bh, %i.z
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !4692

bb.e:                                             ; preds = %.lr.ph.i
  %i.bi = icmp eq i64 %i.ax, %i.bb
  br i1 %i.bi, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.176156.i
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.1136155.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bk, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false), !tbaa.struct !450
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.1136155.i
  store i32 %i.ba, ptr %i.bl, align 4, !tbaa !206
  %i.bm = add nuw nsw i64 %.176156.i, 1
  br label %bb.k

.critedge.i:                                      ; preds = %bb.d, %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %.1136151.i = phi i64 [ %.1136155.i, %bb.e ], [ %.0135161.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.bf, %bb.d ] ; 4 uses
  %.176148.i = phi i64 [ %.176156.i, %bb.e ], [ %.075163.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.z, %bb.d ]
  %i.bn = icmp ult i64 %.0164.i, %i.ac
  br i1 %i.bn, label %.lr.ph159.i, label %.critedge2.i

.lr.ph159.i:                                      ; preds = %.critedge.i, %bb.g
  %.1158.i = phi i64 [ %i.bs, %bb.g ], [ %.0164.i, %.critedge.i ] ; 5 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.1158.i
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !206
  %i.bq = zext i32 %i.bp to i64                   ; 2 uses
  %i.br = icmp ugt i64 %i.ax, %i.bq
  br i1 %i.br, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph159.i
  %i.bs = add i64 %.1158.i, 1                     ; 2 uses
  %exitcond186.not.i = icmp eq i64 %i.bs, %i.ac
  br i1 %exitcond186.not.i, label %.critedge2.i, label %.lr.ph159.i, !llvm.loop !4693

bb.h:                                             ; preds = %.lr.ph159.i
  %i.bt = icmp eq i64 %i.ax, %i.bq
  br i1 %i.bt, label %bb.i, label %.critedge2.i

bb.i:                                             ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.1158.i
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.1136151.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bv, ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i64 16, i1 false), !tbaa.struct !450
  br label %bb.j

.critedge2.i:                                     ; preds = %bb.g, %bb.h, %.critedge.i
  %.1154.i = phi i64 [ %.1158.i, %bb.h ], [ %.0164.i, %.critedge.i ], [ %i.ac, %bb.g ]
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.ax
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.1136151.i
  %i.by = load <2 x i64>, ptr %i.bw, align 8, !tbaa !218
  store <2 x i64> %i.by, ptr %i.bx, align 16, !tbaa !218
  br label %bb.j

bb.j:                                             ; preds = %.critedge2.i, %bb.i
  %.1153.i = phi i64 [ %.1154.i, %.critedge2.i ], [ %.1158.i, %bb.i ]
  %i.bz = trunc i64 %i.ax to i32
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.1136151.i
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !206
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.1136150.i = phi i64 [ %.1136155.i, %bb.f ], [ %.1136151.i, %bb.j ]
  %.277.i = phi i64 [ %i.bm, %bb.f ], [ %.176148.i, %bb.j ] ; 2 uses
  %.2.i = phi i64 [ %.0164.i, %bb.f ], [ %.1153.i, %bb.j ]
  %.2137.i = add i64 %.1136150.i, 1               ; 2 uses
  %i.cb = add nuw i64 %.078162.i, 1               ; 2 uses
  %exitcond187.not.i = icmp eq i64 %i.cb, %5
  br i1 %exitcond187.not.i, label %.preheader.i, label %bb.b, !llvm.loop !4694

._crit_edge.i:                                    ; preds = %.lr.ph170.preheader.i, %.preheader.i
  %.3138.lcssa.i = phi i64 [ %.0135.lcssa.i, %.preheader.i ], [ %i.aq, %.lr.ph170.preheader.i ] ; 3 uses
  %i.cc = trunc i64 %.3138.lcssa.i to i32
  store i32 %i.cc, ptr %i.ad, align 8, !tbaa !932
  %i.cd = shl i64 %.3138.lcssa.i, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 16 %8, i64 %i.cd, i1 false)
  %i.ce = shl i64 %.3138.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 16 %i.a, i64 %i.ce, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !932 ; 2 uses
  %i.ch = zext i32 %i.cg to i64                   ; 3 uses
  %i.ci = icmp ne i32 %i.cg, 0
  %i.cj = and i1 %.not.i, %i.ci
  br i1 %i.cj, label %.lr.ph.i.preheader.i, label %.preheader68.i.i

.lr.ph.i.preheader.i:                             ; preds = %._crit_edge.i
  %i.ck = load ptr, ptr %6, align 8, !tbaa !305   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ck, null
  br label %.lr.ph.i.i

.preheader68.i.i:                                 ; preds = %bb.s, %._crit_edge.i
  %.4.i = phi i64 [ 0, %._crit_edge.i ], [ %.12.i, %bb.s ] ; 17 uses
  %.054.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.155.i.i, %bb.s ] ; 4 uses
  %.0.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.1.i.i, %bb.s ] ; 23 uses
  %i.cl = icmp ult i64 %.0.lcssa.i.i, %5
  br i1 %i.cl, label %.lr.ph76.i.i, label %.preheader.i.i

.lr.ph76.i.i:                                     ; preds = %.preheader68.i.i
  %i.cm = load ptr, ptr %6, align 8, !tbaa !305   ; 7 uses
  %.not.i60.i.i = icmp eq ptr %i.cm, null
  %i.cn = load ptr, ptr %i.f, align 8, !tbaa !305 ; 7 uses
  %.not.i.i62.i.i = icmp eq ptr %i.cn, null       ; 2 uses
  br i1 %.not.i60.i.i, label %.lr.ph76.split.us.i.i, label %.lr.ph76.split.i.i

.lr.ph76.split.us.i.i:                            ; preds = %.lr.ph76.i.i
  br i1 %.not.i.i62.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader: ; preds = %.lr.ph76.split.us.i.i
  %i.co = sub i64 %5, %.0.lcssa.i.i
  %.neg117 = add i64 %.0.lcssa.i.i, 1
  %xtraiter112 = and i64 %i.co, 1
  %lcmp.mod113.not = icmp eq i64 %xtraiter112, 0
  br i1 %lcmp.mod113.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !218
  %i.cr = sub i64 %i.cq, %i.j
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.0.lcssa.i.i
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !206
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.cu
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.4.i
  %i.cx = load <2 x i64>, ptr %i.cv, align 8, !tbaa !218
  store <2 x i64> %i.cx, ptr %i.cw, align 16, !tbaa !218
  %i.cy = trunc i64 %i.cr to i32
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.4.i
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !206
  %i.da = add nuw nsw i64 %.4.i, 1                ; 2 uses
  %i.db = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader
  %.lcssa95.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.da, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %.9.i.unr = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.da, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %.275.us.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.db, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %i.dc = icmp eq i64 %5, %.neg117
  br i1 %i.dc, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader: ; preds = %.lr.ph76.split.us.i.i
  %i.dd = sub i64 %5, %.0.lcssa.i.i
  %.neg118 = add i64 %.0.lcssa.i.i, 1
  %xtraiter114 = and i64 %i.dd, 1
  %lcmp.mod115.not = icmp eq i64 %xtraiter114, 0
  br i1 %lcmp.mod115.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.df = load i64, ptr %i.de, align 8, !tbaa !218
  %i.dg = sub i64 %i.df, %i.j
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.0.lcssa.i.i
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.4.i
end_hunk_3
begin_hunk_4_@_ZN6duckdbL15MergeUpdateLoopINS_9hugeint_tEEEvRNS_10UpdateInfoERNS_6VectorES3_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm:bb.a
  %i.fj = sub i64 %5, %.0.lcssa.i.i
  %.neg = add i64 %.0.lcssa.i.i, 1
  %xtraiter = and i64 %i.fj, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.0.lcssa.i.i
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !206
  %i.fm = zext i32 %i.fl to i64                   ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fm
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !218
  %i.fp = sub i64 %i.fo, %i.j
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.fm
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !206
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.fs
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.4.i
  %i.fv = load <2 x i64>, ptr %i.ft, align 8, !tbaa !218
  store <2 x i64> %i.fv, ptr %i.fu, align 16, !tbaa !218
  %i.fw = trunc i64 %i.fp to i32
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.4.i
  store i32 %i.fw, ptr %i.fx, align 4, !tbaa !206
  %i.fy = add nuw nsw i64 %.4.i, 1                ; 2 uses
  %i.fz = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader
  %.lcssa99.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fy, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %.7.i.unr = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fy, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %.275.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %i.ga = icmp eq i64 %5, %.neg
  br i1 %i.ga, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.preheader: ; preds = %.lr.ph76.split.i.i
  %i.gb = sub i64 %5, %.0.lcssa.i.i
  %.neg116 = add i64 %.0.lcssa.i.i, 1
  %xtraiter110 = and i64 %i.gb, 1
  %lcmp.mod111.not = icmp eq i64 %xtraiter110, 0
  br i1 %lcmp.mod111.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.preheader
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.0.lcssa.i.i
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !206
  %i.ge = zext i32 %i.gd to i64                   ; 2 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ge
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !218
  %i.gh = sub i64 %i.gg, %i.j
  %i.gi = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.ge
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.4.i
  %i.gk = load <2 x i64>, ptr %i.gi, align 8, !tbaa !218
  store <2 x i64> %i.gk, ptr %i.gj, align 16, !tbaa !218
  %i.gl = trunc i64 %i.gh to i32
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.4.i
  store i32 %i.gl, ptr %i.gm, align 4, !tbaa !206
  %i.gn = add nuw nsw i64 %.4.i, 1                ; 2 uses
  %i.go = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.preheader
  %.lcssa97.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.preheader ], [ %i.gn, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.prol ]
  %.8.i.unr = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.preheader ], [ %i.gn, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.prol ]
  %.275.us79.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.preheader ], [ %i.go, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.prol ]
  %i.gp = icmp eq i64 %5, %.neg116
  br i1 %i.gp, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i
  %.8.i = phi i64 [ %i.ho, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i ], [ %.8.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.prol.loopexit ] ; 4 uses
  %.275.us79.i.i = phi i64 [ %i.hp, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i ], [ %.275.us79.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.prol.loopexit ] ; 3 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.275.us79.i.i
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !206
  %i.gs = zext i32 %i.gr to i64                   ; 2 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gs
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !218
  %i.gv = sub i64 %i.gu, %i.j
  %i.gw = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.gs
  %i.gx = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.8.i
  %i.gy = load <2 x i64>, ptr %i.gw, align 8, !tbaa !218
  store <2 x i64> %i.gy, ptr %i.gx, align 16, !tbaa !218
  %i.gz = trunc i64 %i.gv to i32
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.8.i
  store i32 %i.gz, ptr %i.ha, align 4, !tbaa !206
  %i.hb = add nuw nsw i64 %.8.i, 1                ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.275.us79.i.i
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !206
  %i.hf = zext i32 %i.he to i64                   ; 2 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.hf
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !218
  %i.hi = sub i64 %i.hh, %i.j
  %i.hj = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.hf
  %i.hk = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %i.hb
  %i.hl = load <2 x i64>, ptr %i.hj, align 8, !tbaa !218
  store <2 x i64> %i.hl, ptr %i.hk, align 16, !tbaa !218
  %i.hm = trunc i64 %i.hi to i32
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hb
  store i32 %i.hm, ptr %i.hn, align 4, !tbaa !206
  %i.ho = add nuw nsw i64 %.8.i, 2                ; 2 uses
  %i.hp = add nuw i64 %.275.us79.i.i, 2           ; 2 uses
  %exitcond100.not.i.i.1 = icmp eq i64 %i.hp, %5
  br i1 %exitcond100.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i, !llvm.loop !4695

.lr.ph.i.i:                                       ; preds = %bb.s, %.lr.ph.i.preheader.i
  %.11.i = phi i64 [ %.12.i, %bb.s ], [ 0, %.lr.ph.i.preheader.i ] ; 7 uses
  %.071.i.i = phi i64 [ %.1.i.i, %bb.s ], [ 0, %.lr.ph.i.preheader.i ] ; 5 uses
  %.05469.i.i = phi i64 [ %.155.i.i, %bb.s ], [ 0, %.lr.ph.i.preheader.i ] ; 5 uses
  br i1 %.not.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %.071.i.i
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !206
  %i.hs = zext i32 %i.hr to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i: ; preds = %bb.l, %.lr.ph.i.i
  %i.ht = phi i64 [ %i.hs, %bb.l ], [ %.071.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ht
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !218
  %i.hw = sub i64 %i.hv, %i.j                     ; 4 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.05469.i.i
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !206 ; 2 uses
  %i.hz = zext i32 %i.hy to i64                   ; 2 uses
  %i.ia = icmp eq i64 %i.hw, %i.hz
  br i1 %i.ia, label %bb.m, label %bb.o

bb.m:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.ib = load ptr, ptr %i.f, align 8, !tbaa !305 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ib, null
  br i1 %.not.i.i.i.i.i, label %_ZZN6duckdbL23MergeUpdateLoopInternalINS_9hugeint_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmmE_clEmmmm.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %i.ht
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !206
  %i.ie = zext i32 %i.id to i64
  br label %_ZZN6duckdbL23MergeUpdateLoopInternalINS_9hugeint_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmmE_clEmmmm.exit.i.i

_ZZN6duckdbL23MergeUpdateLoopInternalINS_9hugeint_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmmE_clEmmmm.exit.i.i: ; preds = %bb.n, %bb.m
  %i.if = phi i64 [ %i.ie, %bb.n ], [ %i.ht, %bb.m ]
  %i.ig = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.if
  %i.ih = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.11.i
  %i.ii = load <2 x i64>, ptr %i.ig, align 8, !tbaa !218
  store <2 x i64> %i.ii, ptr %i.ih, align 16, !tbaa !218
  %i.ij = trunc nuw i64 %i.hw to i32
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.11.i
  store i32 %i.ij, ptr %i.ik, align 4, !tbaa !206
  %i.il = add nuw i64 %.071.i.i, 1
  %i.im = add nuw nsw i64 %.05469.i.i, 1
  br label %bb.s

bb.o:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.in = icmp ult i64 %i.hw, %i.hz
  br i1 %i.in, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.io = load ptr, ptr %i.f, align 8, !tbaa !305 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.io, null
  br i1 %.not.i.i.i.i, label %_ZZN6duckdbL23MergeUpdateLoopInternalINS_9hugeint_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmE_clEmmm.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.ht
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !206
  %i.ir = zext i32 %i.iq to i64
  br label %_ZZN6duckdbL23MergeUpdateLoopInternalINS_9hugeint_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmE_clEmmm.exit.i.i

_ZZN6duckdbL23MergeUpdateLoopInternalINS_9hugeint_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmE_clEmmm.exit.i.i: ; preds = %bb.q, %bb.p
  %i.is = phi i64 [ %i.ir, %bb.q ], [ %i.ht, %bb.p ]
  %i.it = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.is
  %i.iu = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.11.i
  %i.iv = load <2 x i64>, ptr %i.it, align 8, !tbaa !218
  store <2 x i64> %i.iv, ptr %i.iu, align 16, !tbaa !218
  %i.iw = trunc nuw i64 %i.hw to i32
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.11.i
  store i32 %i.iw, ptr %i.ix, align 4, !tbaa !206
  %i.iy = add nuw i64 %.071.i.i, 1
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.iz = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.05469.i.i
  %i.ja = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.11.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ja, ptr noundef nonnull align 8 dereferenceable(16) %i.iz, i64 16, i1 false), !tbaa.struct !450
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.11.i
  store i32 %i.hy, ptr %i.jb, align 4, !tbaa !206
  %i.jc = add nuw nsw i64 %.05469.i.i, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZZN6duckdbL23MergeUpdateLoopInternalINS_9hugeint_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmE_clEmmm.exit.i.i, %_ZZN6duckdbL23MergeUpdateLoopInternalINS_9hugeint_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmmE_clEmmmm.exit.i.i
  %.155.i.i = phi i64 [ %i.im, %_ZZN6duckdbL23MergeUpdateLoopInternalINS_9hugeint_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmmE_clEmmmm.exit.i.i ], [ %.05469.i.i, %_ZZN6duckdbL23MergeUpdateLoopInternalINS_9hugeint_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmE_clEmmm.exit.i.i ], [ %i.jc, %bb.r ] ; 3 uses
  %.1.i.i = phi i64 [ %i.il, %_ZZN6duckdbL23MergeUpdateLoopInternalINS_9hugeint_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmmE_clEmmmm.exit.i.i ], [ %i.iy, %_ZZN6duckdbL23MergeUpdateLoopInternalINS_9hugeint_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmE_clEmmm.exit.i.i ], [ %.071.i.i, %bb.r ] ; 3 uses
  %.12.i = add i64 %.11.i, 1                      ; 2 uses
  %i.jd = icmp ult i64 %.1.i.i, %5
  %i.je = icmp ult i64 %.155.i.i, %i.ch
  %i.jf = select i1 %i.jd, i1 %i.je, i1 false
  br i1 %i.jf, label %.lr.ph.i.i, label %.preheader68.i.i, !llvm.loop !4696

.preheader.i.i:                                   ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i, %.preheader68.i.i
  %.5.i = phi i64 [ %.4.i, %.preheader68.i.i ], [ %i.ho, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i ], [ %i.eh, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i ], [ %i.fh, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i ], [ %.lcssa.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.prol.loopexit ], [ %.lcssa95.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit ], [ %.lcssa97.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.prol.loopexit ], [ %.lcssa99.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit ], [ %i.kw, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i ] ; 4 uses
  %i.jg = icmp ult i64 %.054.lcssa.i.i, %i.ch
  br i1 %i.jg, label %.lr.ph91.i.preheader.i, label %_ZN6duckdbL23MergeUpdateLoopInternalINS_9hugeint_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_m.exit

.lr.ph91.i.preheader.i:                           ; preds = %.preheader.i.i
  %i.jh = shl i64 %.5.i, 2
  %scevgep191.i = getelementptr i8, ptr %i.a, i64 %i.jh
  %i.ji = shl nuw nsw i64 %.054.lcssa.i.i, 2
  %i.jj = getelementptr i8, ptr %0, i64 %i.ji
  %scevgep192.i = getelementptr i8, ptr %i.jj, i64 88
  %i.jk = sub nuw nsw i64 %i.ch, %.054.lcssa.i.i  ; 3 uses
  %i.jl = shl nuw nsw i64 %i.jk, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep191.i, ptr align 4 %scevgep192.i, i64 %i.jl, i1 false), !tbaa !206
  %i.jm = shl i64 %.5.i, 4
  %scevgep193.i = getelementptr i8, ptr %8, i64 %i.jm
  %i.jn = shl nuw nsw i64 %.054.lcssa.i.i, 4
  %i.jo = getelementptr i8, ptr %0, i64 %i.jn
  %i.jp = getelementptr i8, ptr %i.jo, i64 %i.o
  %scevgep194.i = getelementptr i8, ptr %i.jp, i64 88
  %i.jq = shl nuw nsw i64 %i.jk, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %scevgep193.i, ptr align 8 %scevgep194.i, i64 %i.jq, i1 false)
  %i.jr = add i64 %i.jk, %.5.i
  br label %_ZN6duckdbL23MergeUpdateLoopInternalINS_9hugeint_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_m.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i
  %.7.i = phi i64 [ %i.kw, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i ], [ %.7.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit ] ; 4 uses
  %.275.i.i = phi i64 [ %i.kx, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i ], [ %.275.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit ] ; 3 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.275.i.i
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !206
  %i.ju = zext i32 %i.jt to i64                   ; 2 uses
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ju
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !218
  %i.jx = sub i64 %i.jw, %i.j
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.ju
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !206
  %i.ka = zext i32 %i.jz to i64
  %i.kb = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.ka
  %i.kc = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.7.i
  %i.kd = load <2 x i64>, ptr %i.kb, align 8, !tbaa !218
  store <2 x i64> %i.kd, ptr %i.kc, align 16, !tbaa !218
  %i.ke = trunc i64 %i.jx to i32
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.7.i
  store i32 %i.ke, ptr %i.kf, align 4, !tbaa !206
  %i.kg = add nuw nsw i64 %.7.i, 1                ; 2 uses
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.275.i.i
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !206
  %i.kk = zext i32 %i.kj to i64                   ; 2 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.kk
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !218
  %i.kn = sub i64 %i.km, %i.j
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.kk
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !206
  %i.kq = zext i32 %i.kp to i64
  %i.kr = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.kq
  %i.ks = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %i.kg
  %i.kt = load <2 x i64>, ptr %i.kr, align 8, !tbaa !218
  store <2 x i64> %i.kt, ptr %i.ks, align 16, !tbaa !218
  %i.ku = trunc i64 %i.kn to i32
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.kg
  store i32 %i.ku, ptr %i.kv, align 4, !tbaa !206
  %i.kw = add nuw nsw i64 %.7.i, 2                ; 2 uses
  %i.kx = add nuw i64 %.275.i.i, 2                ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.kx, %5
  br i1 %exitcond.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i, !llvm.loop !4695

_ZN6duckdbL23MergeUpdateLoopInternalINS_9hugeint_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_m.exit: ; preds = %.preheader.i.i, %.lr.ph91.i.preheader.i
  %.13.i = phi i64 [ %.5.i, %.preheader.i.i ], [ %i.jr, %.lr.ph91.i.preheader.i ] ; 3 uses
  %i.ky = trunc i64 %.13.i to i32
  store i32 %i.ky, ptr %i.cf, align 8, !tbaa !932
  %i.kz = shl i64 %.13.i, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull align 16 %8, i64 %i.kz, i1 false)
  %i.la = shl i64 %.13.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr nonnull align 16 %i.a, i64 %i.la, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdbL15MergeUpdateLoopINS_10uhugeint_tEEEvRNS_10UpdateInfoERNS_6VectorES3_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(73) %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, i64 noundef %7) #1 {
bb.a:
  %8 = alloca [2048 x %"struct.duckdb::uhugeint_t"], align 16 ; 25 uses
  %i.a = alloca [2048 x i32], align 16            ; 24 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10uhugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1260
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_10uhugeint_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1209 ; 14 uses
  %i.f = load ptr, ptr %3, align 8, !tbaa !959    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !943
  %i.i = shl i64 %i.h, 11
  %i.j = add i64 %i.i, %7                         ; 14 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.m = load i32, ptr %i.l, align 4, !tbaa !938
  %i.n = zext i32 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 2                  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.s = load i32, ptr %i.r, align 4, !tbaa !938
  %i.t = zext i32 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 2                  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %.not.i = icmp ne i64 %5, 0                     ; 2 uses
  br i1 %.not.i, label %.lr.ph165.i, label %..preheader_crit_edge.i

..preheader_crit_edge.i:                          ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !932
  %.pre195.i = zext i32 %.pre.i to i64
  br label %.preheader.i

.lr.ph165.i:                                      ; preds = %bb.a
  %i.w = load ptr, ptr %6, align 8, !tbaa !305    ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.y = load i32, ptr %i.x, align 8, !tbaa !932
  %i.z = zext i32 %i.y to i64                     ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = zext i32 %i.ab to i64                   ; 3 uses
  br label %bb.b

.preheader.i:                                     ; preds = %bb.k, %..preheader_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre195.i, %..preheader_crit_edge.i ], [ %i.z, %bb.k ] ; 3 uses
  %.0135.lcssa.i = phi i64 [ 0, %..preheader_crit_edge.i ], [ %.2137.i, %bb.k ] ; 4 uses
  %.075.lcssa.i = phi i64 [ 0, %..preheader_crit_edge.i ], [ %.277.i, %bb.k ] ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ae = icmp ult i64 %.075.lcssa.i, %.pre-phi.i
  br i1 %i.ae, label %.lr.ph170.preheader.i, label %._crit_edge.i

.lr.ph170.preheader.i:                            ; preds = %.preheader.i
  %i.af = shl i64 %.0135.lcssa.i, 2
  %scevgep.i = getelementptr i8, ptr %i.a, i64 %i.af
  %i.ag = shl nuw nsw i64 %.075.lcssa.i, 2
  %i.ah = getelementptr i8, ptr %2, i64 %i.ag
  %scevgep188.i = getelementptr i8, ptr %i.ah, i64 88
  %i.ai = sub nuw nsw i64 %.pre-phi.i, %.075.lcssa.i ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep.i, ptr align 4 %scevgep188.i, i64 %i.aj, i1 false), !tbaa !206
  %i.ak = shl i64 %.0135.lcssa.i, 4
  %scevgep189.i = getelementptr i8, ptr %8, i64 %i.ak
  %i.al = shl nuw nsw i64 %.075.lcssa.i, 4
  %i.am = getelementptr i8, ptr %2, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 %i.u
  %scevgep190.i = getelementptr i8, ptr %i.an, i64 88
  %i.ao = shl nuw nsw i64 %i.ai, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %scevgep189.i, ptr align 8 %scevgep190.i, i64 %i.ao, i1 false)
  %i.ap = add i64 %.0135.lcssa.i, %.pre-phi.i
  %i.aq = sub i64 %i.ap, %.075.lcssa.i
  br label %._crit_edge.i

bb.b:                                             ; preds = %bb.k, %.lr.ph165.i
  %.0164.i = phi i64 [ 0, %.lr.ph165.i ], [ %.2.i, %bb.k ] ; 4 uses
  %.075163.i = phi i64 [ 0, %.lr.ph165.i ], [ %.277.i, %bb.k ] ; 3 uses
  %.078162.i = phi i64 [ 0, %.lr.ph165.i ], [ %i.cb, %bb.k ] ; 3 uses
  %.0135161.i = phi i64 [ 0, %.lr.ph165.i ], [ %.2137.i, %bb.k ] ; 2 uses
  br i1 %.not.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.078162.i
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !206
  %i.at = zext i32 %i.as to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %bb.c, %bb.b
  %i.au = phi i64 [ %i.at, %bb.c ], [ %.078162.i, %bb.b ]
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !218
  %i.ax = sub i64 %i.aw, %i.j                     ; 6 uses
  %i.ay = icmp ult i64 %.075163.i, %i.z
  br i1 %i.ay, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, %bb.d
  %.176156.i = phi i64 [ %i.bh, %bb.d ], [ %.075163.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 6 uses
  %.1136155.i = phi i64 [ %i.bf, %bb.d ], [ %.0135161.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 7 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.176156.i
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !206 ; 3 uses
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %i.bc = icmp ugt i64 %i.ax, %i.bb
  br i1 %i.bc, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.176156.i
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.1136155.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i64 16, i1 false), !tbaa.struct !450
  %i.bf = add nuw nsw i64 %.1136155.i, 1          ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.1136155.i
  store i32 %i.ba, ptr %i.bg, align 4, !tbaa !206
  %i.bh = add i64 %.176156.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bh, %i.z
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !4697

bb.e:                                             ; preds = %.lr.ph.i
  %i.bi = icmp eq i64 %i.ax, %i.bb
  br i1 %i.bi, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.176156.i
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.1136155.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bk, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false), !tbaa.struct !450
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.1136155.i
  store i32 %i.ba, ptr %i.bl, align 4, !tbaa !206
  %i.bm = add nuw nsw i64 %.176156.i, 1
  br label %bb.k

.critedge.i:                                      ; preds = %bb.d, %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %.1136151.i = phi i64 [ %.1136155.i, %bb.e ], [ %.0135161.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.bf, %bb.d ] ; 4 uses
  %.176148.i = phi i64 [ %.176156.i, %bb.e ], [ %.075163.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.z, %bb.d ]
  %i.bn = icmp ult i64 %.0164.i, %i.ac
  br i1 %i.bn, label %.lr.ph159.i, label %.critedge2.i

.lr.ph159.i:                                      ; preds = %.critedge.i, %bb.g
  %.1158.i = phi i64 [ %i.bs, %bb.g ], [ %.0164.i, %.critedge.i ] ; 5 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.1158.i
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !206
  %i.bq = zext i32 %i.bp to i64                   ; 2 uses
  %i.br = icmp ugt i64 %i.ax, %i.bq
  br i1 %i.br, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph159.i
  %i.bs = add i64 %.1158.i, 1                     ; 2 uses
  %exitcond186.not.i = icmp eq i64 %i.bs, %i.ac
  br i1 %exitcond186.not.i, label %.critedge2.i, label %.lr.ph159.i, !llvm.loop !4698

bb.h:                                             ; preds = %.lr.ph159.i
  %i.bt = icmp eq i64 %i.ax, %i.bq
  br i1 %i.bt, label %bb.i, label %.critedge2.i

bb.i:                                             ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.1158.i
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.1136151.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bv, ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i64 16, i1 false), !tbaa.struct !450
  br label %bb.j

.critedge2.i:                                     ; preds = %bb.g, %bb.h, %.critedge.i
  %.1154.i = phi i64 [ %.1158.i, %bb.h ], [ %.0164.i, %.critedge.i ], [ %i.ac, %bb.g ]
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.ax
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.1136151.i
  %i.by = load <2 x i64>, ptr %i.bw, align 8, !tbaa !218
  store <2 x i64> %i.by, ptr %i.bx, align 16, !tbaa !218
  br label %bb.j

bb.j:                                             ; preds = %.critedge2.i, %bb.i
  %.1153.i = phi i64 [ %.1154.i, %.critedge2.i ], [ %.1158.i, %bb.i ]
  %i.bz = trunc i64 %i.ax to i32
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.1136151.i
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !206
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.1136150.i = phi i64 [ %.1136155.i, %bb.f ], [ %.1136151.i, %bb.j ]
  %.277.i = phi i64 [ %i.bm, %bb.f ], [ %.176148.i, %bb.j ] ; 2 uses
  %.2.i = phi i64 [ %.0164.i, %bb.f ], [ %.1153.i, %bb.j ]
  %.2137.i = add i64 %.1136150.i, 1               ; 2 uses
  %i.cb = add nuw i64 %.078162.i, 1               ; 2 uses
  %exitcond187.not.i = icmp eq i64 %i.cb, %5
  br i1 %exitcond187.not.i, label %.preheader.i, label %bb.b, !llvm.loop !4699

._crit_edge.i:                                    ; preds = %.lr.ph170.preheader.i, %.preheader.i
  %.3138.lcssa.i = phi i64 [ %.0135.lcssa.i, %.preheader.i ], [ %i.aq, %.lr.ph170.preheader.i ] ; 3 uses
  %i.cc = trunc i64 %.3138.lcssa.i to i32
  store i32 %i.cc, ptr %i.ad, align 8, !tbaa !932
  %i.cd = shl i64 %.3138.lcssa.i, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 16 %8, i64 %i.cd, i1 false)
  %i.ce = shl i64 %.3138.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 16 %i.a, i64 %i.ce, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !932 ; 2 uses
  %i.ch = zext i32 %i.cg to i64                   ; 3 uses
  %i.ci = icmp ne i32 %i.cg, 0
  %i.cj = and i1 %.not.i, %i.ci
  br i1 %i.cj, label %.lr.ph.i.preheader.i, label %.preheader68.i.i

.lr.ph.i.preheader.i:                             ; preds = %._crit_edge.i
  %i.ck = load ptr, ptr %6, align 8, !tbaa !305   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ck, null
  br label %.lr.ph.i.i

.preheader68.i.i:                                 ; preds = %bb.s, %._crit_edge.i
  %.4.i = phi i64 [ 0, %._crit_edge.i ], [ %.12.i, %bb.s ] ; 17 uses
  %.054.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.155.i.i, %bb.s ] ; 4 uses
  %.0.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.1.i.i, %bb.s ] ; 23 uses
  %i.cl = icmp ult i64 %.0.lcssa.i.i, %5
  br i1 %i.cl, label %.lr.ph76.i.i, label %.preheader.i.i

.lr.ph76.i.i:                                     ; preds = %.preheader68.i.i
  %i.cm = load ptr, ptr %6, align 8, !tbaa !305   ; 7 uses
  %.not.i60.i.i = icmp eq ptr %i.cm, null
  %i.cn = load ptr, ptr %i.f, align 8, !tbaa !305 ; 7 uses
  %.not.i.i62.i.i = icmp eq ptr %i.cn, null       ; 2 uses
  br i1 %.not.i60.i.i, label %.lr.ph76.split.us.i.i, label %.lr.ph76.split.i.i

.lr.ph76.split.us.i.i:                            ; preds = %.lr.ph76.i.i
  br i1 %.not.i.i62.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader: ; preds = %.lr.ph76.split.us.i.i
  %i.co = sub i64 %5, %.0.lcssa.i.i
  %.neg117 = add i64 %.0.lcssa.i.i, 1
  %xtraiter112 = and i64 %i.co, 1
  %lcmp.mod113.not = icmp eq i64 %xtraiter112, 0
  br i1 %lcmp.mod113.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !218
  %i.cr = sub i64 %i.cq, %i.j
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.0.lcssa.i.i
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !206
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.cu
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.4.i
  %i.cx = load <2 x i64>, ptr %i.cv, align 8, !tbaa !218
  store <2 x i64> %i.cx, ptr %i.cw, align 16, !tbaa !218
  %i.cy = trunc i64 %i.cr to i32
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.4.i
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !206
  %i.da = add nuw nsw i64 %.4.i, 1                ; 2 uses
  %i.db = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader
  %.lcssa95.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.da, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %.9.i.unr = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.da, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %.275.us.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.db, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %i.dc = icmp eq i64 %5, %.neg117
  br i1 %i.dc, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader: ; preds = %.lr.ph76.split.us.i.i
  %i.dd = sub i64 %5, %.0.lcssa.i.i
  %.neg118 = add i64 %.0.lcssa.i.i, 1
  %xtraiter114 = and i64 %i.dd, 1
  %lcmp.mod115.not = icmp eq i64 %xtraiter114, 0
  br i1 %lcmp.mod115.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.df = load i64, ptr %i.de, align 8, !tbaa !218
  %i.dg = sub i64 %i.df, %i.j
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.0.lcssa.i.i
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.4.i
end_hunk_4
begin_hunk_5_@_ZN6duckdbL15MergeUpdateLoopINS_10uhugeint_tEEEvRNS_10UpdateInfoERNS_6VectorES3_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm:bb.a
  %i.fj = sub i64 %5, %.0.lcssa.i.i
  %.neg = add i64 %.0.lcssa.i.i, 1
  %xtraiter = and i64 %i.fj, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.0.lcssa.i.i
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !206
  %i.fm = zext i32 %i.fl to i64                   ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fm
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !218
  %i.fp = sub i64 %i.fo, %i.j
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.fm
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !206
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.fs
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.4.i
  %i.fv = load <2 x i64>, ptr %i.ft, align 8, !tbaa !218
  store <2 x i64> %i.fv, ptr %i.fu, align 16, !tbaa !218
  %i.fw = trunc i64 %i.fp to i32
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.4.i
  store i32 %i.fw, ptr %i.fx, align 4, !tbaa !206
  %i.fy = add nuw nsw i64 %.4.i, 1                ; 2 uses
  %i.fz = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader
  %.lcssa99.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fy, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %.7.i.unr = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fy, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %.275.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %i.ga = icmp eq i64 %5, %.neg
  br i1 %i.ga, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.preheader: ; preds = %.lr.ph76.split.i.i
  %i.gb = sub i64 %5, %.0.lcssa.i.i
  %.neg116 = add i64 %.0.lcssa.i.i, 1
  %xtraiter110 = and i64 %i.gb, 1
  %lcmp.mod111.not = icmp eq i64 %xtraiter110, 0
  br i1 %lcmp.mod111.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.preheader
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.0.lcssa.i.i
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !206
  %i.ge = zext i32 %i.gd to i64                   ; 2 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ge
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !218
  %i.gh = sub i64 %i.gg, %i.j
  %i.gi = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.ge
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.4.i
  %i.gk = load <2 x i64>, ptr %i.gi, align 8, !tbaa !218
  store <2 x i64> %i.gk, ptr %i.gj, align 16, !tbaa !218
  %i.gl = trunc i64 %i.gh to i32
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.4.i
  store i32 %i.gl, ptr %i.gm, align 4, !tbaa !206
  %i.gn = add nuw nsw i64 %.4.i, 1                ; 2 uses
  %i.go = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.preheader
  %.lcssa97.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.preheader ], [ %i.gn, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.prol ]
  %.8.i.unr = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.preheader ], [ %i.gn, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.prol ]
  %.275.us79.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.preheader ], [ %i.go, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.prol ]
  %i.gp = icmp eq i64 %5, %.neg116
  br i1 %i.gp, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i
  %.8.i = phi i64 [ %i.ho, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i ], [ %.8.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.prol.loopexit ] ; 4 uses
  %.275.us79.i.i = phi i64 [ %i.hp, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i ], [ %.275.us79.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.prol.loopexit ] ; 3 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.275.us79.i.i
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !206
  %i.gs = zext i32 %i.gr to i64                   ; 2 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gs
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !218
  %i.gv = sub i64 %i.gu, %i.j
  %i.gw = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.gs
  %i.gx = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.8.i
  %i.gy = load <2 x i64>, ptr %i.gw, align 8, !tbaa !218
  store <2 x i64> %i.gy, ptr %i.gx, align 16, !tbaa !218
  %i.gz = trunc i64 %i.gv to i32
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.8.i
  store i32 %i.gz, ptr %i.ha, align 4, !tbaa !206
  %i.hb = add nuw nsw i64 %.8.i, 1                ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.275.us79.i.i
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !206
  %i.hf = zext i32 %i.he to i64                   ; 2 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.hf
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !218
  %i.hi = sub i64 %i.hh, %i.j
  %i.hj = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.hf
  %i.hk = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %i.hb
  %i.hl = load <2 x i64>, ptr %i.hj, align 8, !tbaa !218
  store <2 x i64> %i.hl, ptr %i.hk, align 16, !tbaa !218
  %i.hm = trunc i64 %i.hi to i32
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hb
  store i32 %i.hm, ptr %i.hn, align 4, !tbaa !206
  %i.ho = add nuw nsw i64 %.8.i, 2                ; 2 uses
  %i.hp = add nuw i64 %.275.us79.i.i, 2           ; 2 uses
  %exitcond100.not.i.i.1 = icmp eq i64 %i.hp, %5
  br i1 %exitcond100.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i, !llvm.loop !4700

.lr.ph.i.i:                                       ; preds = %bb.s, %.lr.ph.i.preheader.i
  %.11.i = phi i64 [ %.12.i, %bb.s ], [ 0, %.lr.ph.i.preheader.i ] ; 7 uses
  %.071.i.i = phi i64 [ %.1.i.i, %bb.s ], [ 0, %.lr.ph.i.preheader.i ] ; 5 uses
  %.05469.i.i = phi i64 [ %.155.i.i, %bb.s ], [ 0, %.lr.ph.i.preheader.i ] ; 5 uses
  br i1 %.not.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %.071.i.i
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !206
  %i.hs = zext i32 %i.hr to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i: ; preds = %bb.l, %.lr.ph.i.i
  %i.ht = phi i64 [ %i.hs, %bb.l ], [ %.071.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ht
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !218
  %i.hw = sub i64 %i.hv, %i.j                     ; 4 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.05469.i.i
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !206 ; 2 uses
  %i.hz = zext i32 %i.hy to i64                   ; 2 uses
  %i.ia = icmp eq i64 %i.hw, %i.hz
  br i1 %i.ia, label %bb.m, label %bb.o

bb.m:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.ib = load ptr, ptr %i.f, align 8, !tbaa !305 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ib, null
  br i1 %.not.i.i.i.i.i, label %_ZZN6duckdbL23MergeUpdateLoopInternalINS_10uhugeint_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmmE_clEmmmm.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %i.ht
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !206
  %i.ie = zext i32 %i.id to i64
  br label %_ZZN6duckdbL23MergeUpdateLoopInternalINS_10uhugeint_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmmE_clEmmmm.exit.i.i

_ZZN6duckdbL23MergeUpdateLoopInternalINS_10uhugeint_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmmE_clEmmmm.exit.i.i: ; preds = %bb.n, %bb.m
  %i.if = phi i64 [ %i.ie, %bb.n ], [ %i.ht, %bb.m ]
  %i.ig = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.if
  %i.ih = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.11.i
  %i.ii = load <2 x i64>, ptr %i.ig, align 8, !tbaa !218
  store <2 x i64> %i.ii, ptr %i.ih, align 16, !tbaa !218
  %i.ij = trunc nuw i64 %i.hw to i32
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.11.i
  store i32 %i.ij, ptr %i.ik, align 4, !tbaa !206
  %i.il = add nuw i64 %.071.i.i, 1
  %i.im = add nuw nsw i64 %.05469.i.i, 1
  br label %bb.s

bb.o:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.in = icmp ult i64 %i.hw, %i.hz
  br i1 %i.in, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.io = load ptr, ptr %i.f, align 8, !tbaa !305 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.io, null
  br i1 %.not.i.i.i.i, label %_ZZN6duckdbL23MergeUpdateLoopInternalINS_10uhugeint_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmE_clEmmm.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.ht
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !206
  %i.ir = zext i32 %i.iq to i64
  br label %_ZZN6duckdbL23MergeUpdateLoopInternalINS_10uhugeint_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmE_clEmmm.exit.i.i

_ZZN6duckdbL23MergeUpdateLoopInternalINS_10uhugeint_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmE_clEmmm.exit.i.i: ; preds = %bb.q, %bb.p
  %i.is = phi i64 [ %i.ir, %bb.q ], [ %i.ht, %bb.p ]
  %i.it = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.is
  %i.iu = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.11.i
  %i.iv = load <2 x i64>, ptr %i.it, align 8, !tbaa !218
  store <2 x i64> %i.iv, ptr %i.iu, align 16, !tbaa !218
  %i.iw = trunc nuw i64 %i.hw to i32
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.11.i
  store i32 %i.iw, ptr %i.ix, align 4, !tbaa !206
  %i.iy = add nuw i64 %.071.i.i, 1
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.iz = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.05469.i.i
  %i.ja = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.11.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ja, ptr noundef nonnull align 8 dereferenceable(16) %i.iz, i64 16, i1 false), !tbaa.struct !450
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.11.i
  store i32 %i.hy, ptr %i.jb, align 4, !tbaa !206
  %i.jc = add nuw nsw i64 %.05469.i.i, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZZN6duckdbL23MergeUpdateLoopInternalINS_10uhugeint_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmE_clEmmm.exit.i.i, %_ZZN6duckdbL23MergeUpdateLoopInternalINS_10uhugeint_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmmE_clEmmmm.exit.i.i
  %.155.i.i = phi i64 [ %i.im, %_ZZN6duckdbL23MergeUpdateLoopInternalINS_10uhugeint_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmmE_clEmmmm.exit.i.i ], [ %.05469.i.i, %_ZZN6duckdbL23MergeUpdateLoopInternalINS_10uhugeint_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmE_clEmmm.exit.i.i ], [ %i.jc, %bb.r ] ; 3 uses
  %.1.i.i = phi i64 [ %i.il, %_ZZN6duckdbL23MergeUpdateLoopInternalINS_10uhugeint_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmmE_clEmmmm.exit.i.i ], [ %i.iy, %_ZZN6duckdbL23MergeUpdateLoopInternalINS_10uhugeint_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmE_clEmmm.exit.i.i ], [ %.071.i.i, %bb.r ] ; 3 uses
  %.12.i = add i64 %.11.i, 1                      ; 2 uses
  %i.jd = icmp ult i64 %.1.i.i, %5
  %i.je = icmp ult i64 %.155.i.i, %i.ch
  %i.jf = select i1 %i.jd, i1 %i.je, i1 false
  br i1 %i.jf, label %.lr.ph.i.i, label %.preheader68.i.i, !llvm.loop !4701

.preheader.i.i:                                   ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i, %.preheader68.i.i
  %.5.i = phi i64 [ %.4.i, %.preheader68.i.i ], [ %i.ho, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i ], [ %i.eh, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i ], [ %i.fh, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i ], [ %.lcssa.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.prol.loopexit ], [ %.lcssa95.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit ], [ %.lcssa97.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.prol.loopexit ], [ %.lcssa99.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit ], [ %i.kw, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i ] ; 4 uses
  %i.jg = icmp ult i64 %.054.lcssa.i.i, %i.ch
  br i1 %i.jg, label %.lr.ph91.i.preheader.i, label %_ZN6duckdbL23MergeUpdateLoopInternalINS_10uhugeint_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_m.exit

.lr.ph91.i.preheader.i:                           ; preds = %.preheader.i.i
  %i.jh = shl i64 %.5.i, 2
  %scevgep191.i = getelementptr i8, ptr %i.a, i64 %i.jh
  %i.ji = shl nuw nsw i64 %.054.lcssa.i.i, 2
  %i.jj = getelementptr i8, ptr %0, i64 %i.ji
  %scevgep192.i = getelementptr i8, ptr %i.jj, i64 88
  %i.jk = sub nuw nsw i64 %i.ch, %.054.lcssa.i.i  ; 3 uses
  %i.jl = shl nuw nsw i64 %i.jk, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep191.i, ptr align 4 %scevgep192.i, i64 %i.jl, i1 false), !tbaa !206
  %i.jm = shl i64 %.5.i, 4
  %scevgep193.i = getelementptr i8, ptr %8, i64 %i.jm
  %i.jn = shl nuw nsw i64 %.054.lcssa.i.i, 4
  %i.jo = getelementptr i8, ptr %0, i64 %i.jn
  %i.jp = getelementptr i8, ptr %i.jo, i64 %i.o
  %scevgep194.i = getelementptr i8, ptr %i.jp, i64 88
  %i.jq = shl nuw nsw i64 %i.jk, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %scevgep193.i, ptr align 8 %scevgep194.i, i64 %i.jq, i1 false)
  %i.jr = add i64 %i.jk, %.5.i
  br label %_ZN6duckdbL23MergeUpdateLoopInternalINS_10uhugeint_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_m.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i
  %.7.i = phi i64 [ %i.kw, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i ], [ %.7.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit ] ; 4 uses
  %.275.i.i = phi i64 [ %i.kx, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i ], [ %.275.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit ] ; 3 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.275.i.i
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !206
  %i.ju = zext i32 %i.jt to i64                   ; 2 uses
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ju
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !218
  %i.jx = sub i64 %i.jw, %i.j
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.ju
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !206
  %i.ka = zext i32 %i.jz to i64
  %i.kb = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.ka
  %i.kc = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.7.i
  %i.kd = load <2 x i64>, ptr %i.kb, align 8, !tbaa !218
  store <2 x i64> %i.kd, ptr %i.kc, align 16, !tbaa !218
  %i.ke = trunc i64 %i.jx to i32
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.7.i
  store i32 %i.ke, ptr %i.kf, align 4, !tbaa !206
  %i.kg = add nuw nsw i64 %.7.i, 1                ; 2 uses
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.275.i.i
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !206
  %i.kk = zext i32 %i.kj to i64                   ; 2 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.kk
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !218
  %i.kn = sub i64 %i.km, %i.j
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.kk
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !206
  %i.kq = zext i32 %i.kp to i64
  %i.kr = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.kq
  %i.ks = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %i.kg
  %i.kt = load <2 x i64>, ptr %i.kr, align 8, !tbaa !218
  store <2 x i64> %i.kt, ptr %i.ks, align 16, !tbaa !218
  %i.ku = trunc i64 %i.kn to i32
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.kg
  store i32 %i.ku, ptr %i.kv, align 4, !tbaa !206
  %i.kw = add nuw nsw i64 %.7.i, 2                ; 2 uses
  %i.kx = add nuw i64 %.275.i.i, 2                ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.kx, %5
  br i1 %exitcond.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i, !llvm.loop !4700

_ZN6duckdbL23MergeUpdateLoopInternalINS_10uhugeint_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_m.exit: ; preds = %.preheader.i.i, %.lr.ph91.i.preheader.i
  %.13.i = phi i64 [ %.5.i, %.preheader.i.i ], [ %i.jr, %.lr.ph91.i.preheader.i ] ; 3 uses
  %i.ky = trunc i64 %.13.i to i32
  store i32 %i.ky, ptr %i.cf, align 8, !tbaa !932
  %i.kz = shl i64 %.13.i, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull align 16 %8, i64 %i.kz, i1 false)
  %i.la = shl i64 %.13.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr nonnull align 16 %i.a, i64 %i.la, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdbL15MergeUpdateLoopIfEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(73) %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, i64 noundef %7) #1 {
bb.a:
  %i.a = alloca [2048 x float], align 16          ; 22 uses
  %i.b = alloca [2048 x i32], align 16            ; 23 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIfEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1260
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIfEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1209 ; 12 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !959    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !943
  %i.j = shl i64 %i.i, 11
  %i.k = add i64 %i.j, %7                         ; 13 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.n = load i32, ptr %i.m, align 4, !tbaa !938
  %i.o = zext i32 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 2                  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.p ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.t = load i32, ptr %i.s, align 4, !tbaa !938
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2                  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %.not.i = icmp ne i64 %5, 0                     ; 2 uses
  br i1 %.not.i, label %.lr.ph152.i, label %..preheader_crit_edge.i

..preheader_crit_edge.i:                          ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !932
  %.pre184.i = zext i32 %.pre.i to i64
  br label %.preheader.i

.lr.ph152.i:                                      ; preds = %bb.a
  %i.x = load ptr, ptr %6, align 8, !tbaa !305    ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, null
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.z = load i32, ptr %i.y, align 8, !tbaa !932
  %i.aa = zext i32 %i.z to i64                    ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = zext i32 %i.ac to i64                   ; 3 uses
  br label %bb.b

.preheader.i:                                     ; preds = %bb.k, %..preheader_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre184.i, %..preheader_crit_edge.i ], [ %i.aa, %bb.k ] ; 3 uses
  %.0122.lcssa.i = phi i64 [ 0, %..preheader_crit_edge.i ], [ %.2124.i, %bb.k ] ; 3 uses
  %.072.lcssa.i = phi i64 [ 0, %..preheader_crit_edge.i ], [ %.274.i, %bb.k ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.af = icmp ult i64 %.072.lcssa.i, %.pre-phi.i
  br i1 %i.af, label %.lr.ph157.preheader.i, label %._crit_edge.i

.lr.ph157.preheader.i:                            ; preds = %.preheader.i
  %i.ag = shl i64 %.0122.lcssa.i, 2               ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.a, i64 %i.ag
  %i.ah = shl nuw nsw i64 %.072.lcssa.i, 2
  %i.ai = getelementptr i8, ptr %2, i64 %i.ah     ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 %i.v
  %scevgep175.i = getelementptr i8, ptr %i.aj, i64 88
  %i.ak = sub nuw nsw i64 %.pre-phi.i, %.072.lcssa.i
  %i.al = shl nuw nsw i64 %i.ak, 2                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep.i, ptr align 4 %scevgep175.i, i64 %i.al, i1 false), !tbaa !1210
  %scevgep176.i = getelementptr i8, ptr %i.b, i64 %i.ag
  %scevgep177.i = getelementptr i8, ptr %i.ai, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep176.i, ptr align 4 %scevgep177.i, i64 %i.al, i1 false), !tbaa !206
  %i.am = add i64 %.0122.lcssa.i, %.pre-phi.i
  %i.an = sub i64 %i.am, %.072.lcssa.i
  br label %._crit_edge.i

bb.b:                                             ; preds = %bb.k, %.lr.ph152.i
  %.0151.i = phi i64 [ 0, %.lr.ph152.i ], [ %.2.i, %bb.k ] ; 4 uses
  %.072150.i = phi i64 [ 0, %.lr.ph152.i ], [ %.274.i, %bb.k ] ; 3 uses
  %.075149.i = phi i64 [ 0, %.lr.ph152.i ], [ %i.by, %bb.k ] ; 3 uses
  %.0122148.i = phi i64 [ 0, %.lr.ph152.i ], [ %.2124.i, %bb.k ] ; 2 uses
  br i1 %.not.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.075149.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !206
  %i.aq = zext i32 %i.ap to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %bb.c, %bb.b
  %i.ar = phi i64 [ %i.aq, %bb.c ], [ %.075149.i, %bb.b ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !218
  %i.au = sub i64 %i.at, %i.k                     ; 6 uses
  %i.av = icmp ult i64 %.072150.i, %i.aa
  br i1 %i.av, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, %bb.d
  %.173143.i = phi i64 [ %i.bf, %bb.d ], [ %.072150.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 6 uses
  %.1123142.i = phi i64 [ %i.bd, %bb.d ], [ %.0122148.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 7 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.173143.i
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !206 ; 3 uses
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = icmp ugt i64 %i.au, %i.ay
  br i1 %i.az, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.173143.i
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !1210
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.1123142.i
  store float %i.bb, ptr %i.bc, align 4, !tbaa !1210
  %i.bd = add nuw nsw i64 %.1123142.i, 1          ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1123142.i
  store i32 %i.ax, ptr %i.be, align 4, !tbaa !206
  %i.bf = add i64 %.173143.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bf, %i.aa
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !4702

bb.e:                                             ; preds = %.lr.ph.i
  %i.bg = icmp eq i64 %i.au, %i.ay
  br i1 %i.bg, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.173143.i
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !1210
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.1123142.i
  store float %i.bi, ptr %i.bj, align 4, !tbaa !1210
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1123142.i
  store i32 %i.ax, ptr %i.bk, align 4, !tbaa !206
  %i.bl = add nuw nsw i64 %.173143.i, 1
  br label %bb.k

.critedge.i:                                      ; preds = %bb.d, %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %.1123138.i = phi i64 [ %.1123142.i, %bb.e ], [ %.0122148.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.bd, %bb.d ] ; 3 uses
  %.173135.i = phi i64 [ %.173143.i, %bb.e ], [ %.072150.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.aa, %bb.d ]
  %i.bm = icmp ult i64 %.0151.i, %i.ad
  br i1 %i.bm, label %.lr.ph146.i, label %.critedge2.i

.lr.ph146.i:                                      ; preds = %.critedge.i, %bb.g
  %.1145.i = phi i64 [ %i.br, %bb.g ], [ %.0151.i, %.critedge.i ] ; 5 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.1145.i
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !206
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = icmp ugt i64 %i.au, %i.bp
  br i1 %i.bq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph146.i
  %i.br = add i64 %.1145.i, 1                     ; 2 uses
  %exitcond173.not.i = icmp eq i64 %i.br, %i.ad
  br i1 %exitcond173.not.i, label %.critedge2.i, label %.lr.ph146.i, !llvm.loop !4703

bb.h:                                             ; preds = %.lr.ph146.i
  %i.bs = icmp eq i64 %i.au, %i.bp
  br i1 %i.bs, label %bb.i, label %.critedge2.i

bb.i:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.1145.i
  br label %bb.j

.critedge2.i:                                     ; preds = %bb.g, %bb.h, %.critedge.i
  %.1141.i = phi i64 [ %.1145.i, %bb.h ], [ %.0151.i, %.critedge.i ], [ %i.ad, %bb.g ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.au
  br label %bb.j

bb.j:                                             ; preds = %.critedge2.i, %bb.i
  %.sink.in.i = phi ptr [ %i.bu, %.critedge2.i ], [ %i.bt, %bb.i ]
  %.1140.i = phi i64 [ %.1141.i, %.critedge2.i ], [ %.1145.i, %bb.i ]
  %.sink.i = load float, ptr %.sink.in.i, align 4, !tbaa !1210
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.1123138.i
  store float %.sink.i, ptr %i.bv, align 4, !tbaa !1210
  %i.bw = trunc i64 %i.au to i32
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1123138.i
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !206
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.1123137.i = phi i64 [ %.1123142.i, %bb.f ], [ %.1123138.i, %bb.j ]
  %.274.i = phi i64 [ %i.bl, %bb.f ], [ %.173135.i, %bb.j ] ; 2 uses
  %.2.i = phi i64 [ %.0151.i, %bb.f ], [ %.1140.i, %bb.j ]
  %.2124.i = add i64 %.1123137.i, 1               ; 2 uses
  %i.by = add nuw i64 %.075149.i, 1               ; 2 uses
  %exitcond174.not.i = icmp eq i64 %i.by, %5
  br i1 %exitcond174.not.i, label %.preheader.i, label %bb.b, !llvm.loop !4704

._crit_edge.i:                                    ; preds = %.lr.ph157.preheader.i, %.preheader.i
  %.3125.lcssa.i = phi i64 [ %.0122.lcssa.i, %.preheader.i ], [ %i.an, %.lr.ph157.preheader.i ] ; 2 uses
  %i.bz = trunc i64 %.3125.lcssa.i to i32
  store i32 %i.bz, ptr %i.ae, align 8, !tbaa !932
  %i.ca = shl i64 %.3125.lcssa.i, 2               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.w, ptr nonnull align 16 %i.a, i64 %i.ca, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 16 %i.b, i64 %i.ca, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !932 ; 2 uses
  %i.cd = zext i32 %i.cc to i64                   ; 3 uses
  %.val.i = load ptr, ptr %6, align 8             ; 9 uses
  %i.ce = icmp ne i32 %i.cc, 0
  %i.cf = and i1 %.not.i, %i.ce
  br i1 %i.cf, label %.lr.ph.i.i, label %.preheader1.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i
  %.not.i.i.i = icmp eq ptr %.val.i, null
  br label %bb.l

.preheader1.i.i:                                  ; preds = %bb.t, %._crit_edge.i
  %.4.i = phi i64 [ 0, %._crit_edge.i ], [ %.7.i, %bb.t ] ; 17 uses
  %.054.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.155.i.i, %bb.t ] ; 3 uses
  %.0.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.1.i.i, %bb.t ] ; 22 uses
  %i.cg = icmp ult i64 %.0.lcssa.i.i, %5
  br i1 %i.cg, label %.lr.ph9.i.i, label %.preheader.i.i

.lr.ph9.i.i:                                      ; preds = %.preheader1.i.i
  %.not.i60.i.i = icmp eq ptr %.val.i, null
  %i.ch = load ptr, ptr %i.g, align 8, !tbaa !305 ; 7 uses
  %.not.i.i62.i.i = icmp eq ptr %i.ch, null       ; 2 uses
  br i1 %.not.i60.i.i, label %.lr.ph9.split.us.i.i, label %.lr.ph9.split.i.i

.lr.ph9.split.us.i.i:                             ; preds = %.lr.ph9.i.i
  br i1 %.not.i.i62.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader: ; preds = %.lr.ph9.split.us.i.i
  %i.ci = sub i64 %5, %.0.lcssa.i.i
  %.neg117 = add i64 %.0.lcssa.i.i, 1
  %xtraiter113 = and i64 %i.ci, 1
  %lcmp.mod114.not = icmp eq i64 %xtraiter113, 0
  br i1 %lcmp.mod114.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !218
  %i.cl = sub i64 %i.ck, %i.k
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.0.lcssa.i.i
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !206
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.co
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !1210
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.4.i
  store float %i.cq, ptr %i.cr, align 4, !tbaa !1210
  %i.cs = trunc i64 %i.cl to i32
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !206
  %i.cu = add nuw nsw i64 %.4.i, 1                ; 2 uses
  %i.cv = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader
  %.lcssa95.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.cu, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %.unr115 = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.cu, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %.28.us.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.cv, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %i.cw = icmp eq i64 %5, %.neg117
  br i1 %i.cw, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i: ; preds = %.lr.ph9.split.us.i.i
  %i.cx = shl i64 %.4.i, 2
  %scevgep178.i = getelementptr i8, ptr %i.a, i64 %i.cx
  %i.cy = shl i64 %.0.lcssa.i.i, 2
  %scevgep179.i = getelementptr i8, ptr %i.f, i64 %i.cy
  %i.cz = sub i64 %5, %.0.lcssa.i.i               ; 4 uses
  %i.da = shl i64 %i.cz, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep178.i, ptr readonly align 4 %scevgep179.i, i64 %i.da, i1 false), !tbaa !1210
  %min.iters.check = icmp ult i64 %i.cz, 4
  br i1 %min.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i
  %n.vec = and i64 %i.cz, -4                      ; 4 uses
  %i.db = add i64 %.4.i, %n.vec                   ; 2 uses
  %i.dc = add i64 %.0.lcssa.i.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.k, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %index ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %wide.load = load <2 x i64>, ptr %i.df, align 8, !tbaa !218
  %wide.load92 = load <2 x i64>, ptr %i.dg, align 8, !tbaa !218
  %i.dh = sub <2 x i64> %wide.load, %broadcast.splat
  %i.di = sub <2 x i64> %wide.load92, %broadcast.splat
  %i.dj = trunc <2 x i64> %i.dh to <2 x i32>
  %i.dk = trunc <2 x i64> %i.di to <2 x i32>
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %index ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store <2 x i32> %i.dj, ptr %i.dl, align 4, !tbaa !206
  store <2 x i32> %i.dk, ptr %i.dm, align 4, !tbaa !206
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !4705

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cz, %n.vec
  br i1 %cmp.n, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i, %middle.block
  %.ph = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i ], [ %i.db, %middle.block ]
  %.28.us.us.i.i.ph = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i ], [ %i.dc, %middle.block ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i
  %i.do = phi i64 [ %i.du, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i ], [ %.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader ] ; 2 uses
  %.28.us.us.i.i = phi i64 [ %i.dv, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i ], [ %.28.us.us.i.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.28.us.us.i.i
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !218
  %i.dr = sub i64 %i.dq, %i.k
  %i.ds = trunc i64 %i.dr to i32
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.do
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !206
  %i.du = add nuw nsw i64 %i.do, 1                ; 2 uses
  %i.dv = add nuw i64 %.28.us.us.i.i, 1           ; 2 uses
  %exitcond33.not.i.i = icmp eq i64 %i.dv, %5
  br i1 %exitcond33.not.i.i, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i, !llvm.loop !4706

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i
  %i.dw = phi i64 [ %i.ev, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i ], [ %.unr115, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit ] ; 4 uses
  %.28.us.i.i = phi i64 [ %i.ew, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i ], [ %.28.us.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit ] ; 4 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.28.us.i.i
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !218
  %i.dz = sub i64 %i.dy, %i.k
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.28.us.i.i
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !206
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ec
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !1210
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dw
  store float %i.ee, ptr %i.ef, align 4, !tbaa !1210
  %i.eg = trunc i64 %i.dz to i32
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dw
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !206
  %i.ei = add nuw nsw i64 %i.dw, 1                ; 2 uses
  %i.ej = add nuw i64 %.28.us.i.i, 1              ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ej
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !218
  %i.em = sub i64 %i.el, %i.k
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.ej
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !206
  %i.ep = zext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ep
  %i.er = load float, ptr %i.eq, align 4, !tbaa !1210
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ei
  store float %i.er, ptr %i.es, align 4, !tbaa !1210
  %i.et = trunc i64 %i.em to i32
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ei
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !206
  %i.ev = add nuw nsw i64 %i.dw, 2                ; 2 uses
  %i.ew = add nuw i64 %.28.us.i.i, 2              ; 2 uses
  %exitcond32.not.i.i.1 = icmp eq i64 %i.ew, %5
  br i1 %exitcond32.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i, !llvm.loop !4707

.lr.ph9.split.i.i:                                ; preds = %.lr.ph9.i.i
  br i1 %.not.i.i62.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader: ; preds = %.lr.ph9.split.i.i
  %i.ex = sub i64 %5, %.0.lcssa.i.i
  %.neg = add i64 %.0.lcssa.i.i, 1
  %xtraiter = and i64 %i.ex, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0.lcssa.i.i
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !206
  %i.fa = zext i32 %i.ez to i64                   ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fa
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !218
  %i.fd = sub i64 %i.fc, %i.k
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.fa
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !206
  %i.fg = zext i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.fg
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !1210
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.4.i
  store float %i.fi, ptr %i.fj, align 4, !tbaa !1210
  %i.fk = trunc i64 %i.fd to i32
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.fk, ptr %i.fl, align 4, !tbaa !206
  %i.fm = add nuw nsw i64 %.4.i, 1                ; 2 uses
  %i.fn = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader
  %.lcssa99.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fm, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %.unr = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fm, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %.28.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fn, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %i.fo = icmp eq i64 %5, %.neg
  br i1 %i.fo, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader: ; preds = %.lr.ph9.split.i.i
  %i.fp = sub i64 %5, %.0.lcssa.i.i
  %.neg116 = add i64 %.0.lcssa.i.i, 1
  %xtraiter110 = and i64 %i.fp, 1
  %lcmp.mod111.not = icmp eq i64 %xtraiter110, 0
  br i1 %lcmp.mod111.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0.lcssa.i.i
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !206
  %i.fs = zext i32 %i.fr to i64                   ; 2 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fs
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !218
  %i.fv = sub i64 %i.fu, %i.k
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.fs
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !1210
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.4.i
  store float %i.fx, ptr %i.fy, align 4, !tbaa !1210
  %i.fz = trunc i64 %i.fv to i32
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !206
  %i.gb = add nuw nsw i64 %.4.i, 1                ; 2 uses
  %i.gc = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader
  %.lcssa97.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.gb, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %.unr112 = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.gb, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %.28.us12.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.gc, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %i.gd = icmp eq i64 %5, %.neg116
  br i1 %i.gd, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i
  %i.ge = phi i64 [ %i.hd, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i ], [ %.unr112, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit ] ; 4 uses
  %.28.us12.i.i = phi i64 [ %i.he, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i ], [ %.28.us12.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit ] ; 3 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.us12.i.i
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !206
  %i.gh = zext i32 %i.gg to i64                   ; 2 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gh
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !218
  %i.gk = sub i64 %i.gj, %i.k
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.gh
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !1210
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ge
  store float %i.gm, ptr %i.gn, align 4, !tbaa !1210
  %i.go = trunc i64 %i.gk to i32
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ge
  store i32 %i.go, ptr %i.gp, align 4, !tbaa !206
  %i.gq = add nuw nsw i64 %i.ge, 1                ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.us12.i.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !206
  %i.gu = zext i32 %i.gt to i64                   ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gu
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !218
  %i.gx = sub i64 %i.gw, %i.k
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.gu
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !1210
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gq
  store float %i.gz, ptr %i.ha, align 4, !tbaa !1210
  %i.hb = trunc i64 %i.gx to i32
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gq
  store i32 %i.hb, ptr %i.hc, align 4, !tbaa !206
  %i.hd = add nuw nsw i64 %i.ge, 2                ; 2 uses
  %i.he = add nuw i64 %.28.us12.i.i, 2            ; 2 uses
  %exitcond31.not.i.i.1 = icmp eq i64 %i.he, %5
  br i1 %exitcond31.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i, !llvm.loop !4707

bb.l:                                             ; preds = %bb.t, %.lr.ph.i.i
  %.6.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.7.i, %bb.t ] ; 7 uses
  %.04.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %bb.t ] ; 5 uses
  %.0542.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.155.i.i, %bb.t ] ; 5 uses
  br i1 %.not.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !206
  %i.hh = zext i32 %i.hg to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i: ; preds = %bb.m, %bb.l
  %i.hi = phi i64 [ %i.hh, %bb.m ], [ %.04.i.i, %bb.l ] ; 5 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.hi
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !218
  %i.hl = sub i64 %i.hk, %i.k                     ; 4 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.0542.i.i
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !206 ; 2 uses
  %i.ho = zext i32 %i.hn to i64                   ; 2 uses
  %i.hp = icmp eq i64 %i.hl, %i.ho
  br i1 %i.hp, label %bb.n, label %bb.p

bb.n:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.hq = load ptr, ptr %i.g, align 8, !tbaa !305 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hq, null
  br i1 %.not.i.i.i.i.i, label %_ZZN6duckdbL23MergeUpdateLoopInternalIffNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %i.hi
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !206
  %i.ht = zext i32 %i.hs to i64
  br label %_ZZN6duckdbL23MergeUpdateLoopInternalIffNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i

_ZZN6duckdbL23MergeUpdateLoopInternalIffNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i: ; preds = %bb.o, %bb.n
  %i.hu = phi i64 [ %i.ht, %bb.o ], [ %i.hi, %bb.n ]
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.hu
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !1210
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.6.i
  store float %i.hw, ptr %i.hx, align 4, !tbaa !1210
  %i.hy = trunc nuw i64 %i.hl to i32
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.6.i
  store i32 %i.hy, ptr %i.hz, align 4, !tbaa !206
  %i.ia = add nuw i64 %.04.i.i, 1
  %i.ib = add nuw nsw i64 %.0542.i.i, 1
  br label %bb.t

bb.p:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.ic = icmp ult i64 %i.hl, %i.ho
  br i1 %i.ic, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.id = load ptr, ptr %i.g, align 8, !tbaa !305 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.id, null
  br i1 %.not.i.i.i.i, label %_ZZN6duckdbL23MergeUpdateLoopInternalIffNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.hi
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !206
  %i.ig = zext i32 %i.if to i64
  br label %_ZZN6duckdbL23MergeUpdateLoopInternalIffNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i

_ZZN6duckdbL23MergeUpdateLoopInternalIffNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i: ; preds = %bb.r, %bb.q
  %i.ih = phi i64 [ %i.ig, %bb.r ], [ %i.hi, %bb.q ]
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ih
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !1210
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.6.i
  store float %i.ij, ptr %i.ik, align 4, !tbaa !1210
  %i.il = trunc nuw i64 %i.hl to i32
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.6.i
  store i32 %i.il, ptr %i.im, align 4, !tbaa !206
  %i.in = add nuw i64 %.04.i.i, 1
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.0542.i.i
  %i.ip = load float, ptr %i.io, align 4, !tbaa !1210
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.6.i
  store float %i.ip, ptr %i.iq, align 4, !tbaa !1210
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.6.i
  store i32 %i.hn, ptr %i.ir, align 4, !tbaa !206
  %i.is = add nuw nsw i64 %.0542.i.i, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZZN6duckdbL23MergeUpdateLoopInternalIffNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i, %_ZZN6duckdbL23MergeUpdateLoopInternalIffNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i
  %.155.i.i = phi i64 [ %i.ib, %_ZZN6duckdbL23MergeUpdateLoopInternalIffNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i ], [ %.0542.i.i, %_ZZN6duckdbL23MergeUpdateLoopInternalIffNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i ], [ %i.is, %bb.s ] ; 3 uses
  %.1.i.i = phi i64 [ %i.ia, %_ZZN6duckdbL23MergeUpdateLoopInternalIffNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i ], [ %i.in, %_ZZN6duckdbL23MergeUpdateLoopInternalIffNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i ], [ %.04.i.i, %bb.s ] ; 3 uses
  %.7.i = add i64 %.6.i, 1                        ; 2 uses
  %i.it = icmp ult i64 %.1.i.i, %5
  %i.iu = icmp ult i64 %.155.i.i, %i.cd
  %i.iv = select i1 %i.it, i1 %i.iu, i1 false
  br i1 %i.iv, label %bb.l, label %.preheader1.i.i, !llvm.loop !4708

.preheader.i.i:                                   ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i, %middle.block, %.preheader1.i.i
  %.5.i = phi i64 [ %.4.i, %.preheader1.i.i ], [ %i.hd, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i ], [ %i.du, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i ], [ %i.ev, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i ], [ %i.db, %middle.block ], [ %.lcssa95.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit ], [ %.lcssa97.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit ], [ %.lcssa99.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit ], [ %i.kj, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i ] ; 3 uses
  %i.iw = icmp ult i64 %.054.lcssa.i.i, %i.cd
  br i1 %i.iw, label %.lr.ph20.i.preheader.i, label %_ZN6duckdbL23MergeUpdateLoopInternalIffNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_m.exit

.lr.ph20.i.preheader.i:                           ; preds = %.preheader.i.i
  %i.ix = shl i64 %.5.i, 2                        ; 2 uses
  %scevgep180.i = getelementptr i8, ptr %i.a, i64 %i.ix
  %i.iy = shl nuw nsw i64 %.054.lcssa.i.i, 2
  %i.iz = getelementptr i8, ptr %0, i64 %i.iy     ; 2 uses
  %i.ja = getelementptr i8, ptr %i.iz, i64 %i.p
  %scevgep181.i = getelementptr i8, ptr %i.ja, i64 88
  %i.jb = sub nuw nsw i64 %i.cd, %.054.lcssa.i.i  ; 2 uses
  %i.jc = shl nuw nsw i64 %i.jb, 2                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep180.i, ptr align 4 %scevgep181.i, i64 %i.jc, i1 false), !tbaa !1210
  %scevgep182.i = getelementptr i8, ptr %i.b, i64 %i.ix
  %scevgep183.i = getelementptr i8, ptr %i.iz, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep182.i, ptr align 4 %scevgep183.i, i64 %i.jc, i1 false), !tbaa !206
  %i.jd = add i64 %i.jb, %.5.i
  br label %_ZN6duckdbL23MergeUpdateLoopInternalIffNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_m.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i
  %i.je = phi i64 [ %i.kj, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i ], [ %.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit ] ; 4 uses
  %.28.i.i = phi i64 [ %i.kk, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i ], [ %.28.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit ] ; 3 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.i.i
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !206
  %i.jh = zext i32 %i.jg to i64                   ; 2 uses
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.jh
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !218
  %i.jk = sub i64 %i.jj, %i.k
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.jh
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !206
  %i.jn = zext i32 %i.jm to i64
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.jn
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !1210
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.je
  store float %i.jp, ptr %i.jq, align 4, !tbaa !1210
  %i.jr = trunc i64 %i.jk to i32
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.je
  store i32 %i.jr, ptr %i.js, align 4, !tbaa !206
  %i.jt = add nuw nsw i64 %i.je, 1                ; 2 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.i.i
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 4
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !206
  %i.jx = zext i32 %i.jw to i64                   ; 2 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.jx
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !218
  %i.ka = sub i64 %i.jz, %i.k
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.jx
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !206
  %i.kd = zext i32 %i.kc to i64
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.kd
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !1210
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.jt
  store float %i.kf, ptr %i.kg, align 4, !tbaa !1210
  %i.kh = trunc i64 %i.ka to i32
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.jt
  store i32 %i.kh, ptr %i.ki, align 4, !tbaa !206
  %i.kj = add nuw nsw i64 %i.je, 2                ; 2 uses
  %i.kk = add nuw i64 %.28.i.i, 2                 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.kk, %5
  br i1 %exitcond.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i, !llvm.loop !4707

_ZN6duckdbL23MergeUpdateLoopInternalIffNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_m.exit: ; preds = %.preheader.i.i, %.lr.ph20.i.preheader.i
  %.8.i = phi i64 [ %.5.i, %.preheader.i.i ], [ %i.jd, %.lr.ph20.i.preheader.i ] ; 2 uses
  %i.kl = trunc i64 %.8.i to i32
  store i32 %i.kl, ptr %i.cb, align 8, !tbaa !932
  %i.km = shl i64 %.8.i, 2                        ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.q, ptr nonnull align 16 %i.a, i64 %i.km, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 16 %i.b, i64 %i.km, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdbL15MergeUpdateLoopIdEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(73) %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, i64 noundef %7) #1 {
bb.a:
  %i.a = alloca [2048 x double], align 16         ; 22 uses
  %i.b = alloca [2048 x i32], align 16            ; 23 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1260
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1209 ; 12 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !959    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !943
  %i.j = shl i64 %i.i, 11
  %i.k = add i64 %i.j, %7                         ; 13 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.n = load i32, ptr %i.m, align 4, !tbaa !938
  %i.o = zext i32 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 2                  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.p ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.t = load i32, ptr %i.s, align 4, !tbaa !938
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2                  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %.not.i = icmp ne i64 %5, 0                     ; 2 uses
  br i1 %.not.i, label %.lr.ph152.i, label %..preheader_crit_edge.i

..preheader_crit_edge.i:                          ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !932
  %.pre184.i = zext i32 %.pre.i to i64
  br label %.preheader.i

.lr.ph152.i:                                      ; preds = %bb.a
  %i.x = load ptr, ptr %6, align 8, !tbaa !305    ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, null
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.z = load i32, ptr %i.y, align 8, !tbaa !932
  %i.aa = zext i32 %i.z to i64                    ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = zext i32 %i.ac to i64                   ; 3 uses
  br label %bb.b

.preheader.i:                                     ; preds = %bb.k, %..preheader_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre184.i, %..preheader_crit_edge.i ], [ %i.aa, %bb.k ] ; 3 uses
  %.0122.lcssa.i = phi i64 [ 0, %..preheader_crit_edge.i ], [ %.2124.i, %bb.k ] ; 4 uses
  %.072.lcssa.i = phi i64 [ 0, %..preheader_crit_edge.i ], [ %.274.i, %bb.k ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.af = icmp ult i64 %.072.lcssa.i, %.pre-phi.i
  br i1 %i.af, label %.lr.ph157.preheader.i, label %._crit_edge.i

.lr.ph157.preheader.i:                            ; preds = %.preheader.i
  %i.ag = shl i64 %.0122.lcssa.i, 3
  %scevgep.i = getelementptr i8, ptr %i.a, i64 %i.ag
  %i.ah = shl nuw nsw i64 %.072.lcssa.i, 3
  %i.ai = getelementptr i8, ptr %2, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 %i.v
  %scevgep175.i = getelementptr i8, ptr %i.aj, i64 88
  %i.ak = sub nuw nsw i64 %.pre-phi.i, %.072.lcssa.i ; 2 uses
  %i.al = shl nuw nsw i64 %i.ak, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scevgep.i, ptr align 8 %scevgep175.i, i64 %i.al, i1 false), !tbaa !1212
  %i.am = shl i64 %.0122.lcssa.i, 2
  %scevgep176.i = getelementptr i8, ptr %i.b, i64 %i.am
  %i.an = shl nuw nsw i64 %.072.lcssa.i, 2
  %i.ao = getelementptr i8, ptr %2, i64 %i.an
  %scevgep177.i = getelementptr i8, ptr %i.ao, i64 88
  %i.ap = shl nuw nsw i64 %i.ak, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep176.i, ptr align 4 %scevgep177.i, i64 %i.ap, i1 false), !tbaa !206
  %i.aq = add i64 %.0122.lcssa.i, %.pre-phi.i
  %i.ar = sub i64 %i.aq, %.072.lcssa.i
  br label %._crit_edge.i

bb.b:                                             ; preds = %bb.k, %.lr.ph152.i
  %.0151.i = phi i64 [ 0, %.lr.ph152.i ], [ %.2.i, %bb.k ] ; 4 uses
  %.072150.i = phi i64 [ 0, %.lr.ph152.i ], [ %.274.i, %bb.k ] ; 3 uses
  %.075149.i = phi i64 [ 0, %.lr.ph152.i ], [ %i.cc, %bb.k ] ; 3 uses
  %.0122148.i = phi i64 [ 0, %.lr.ph152.i ], [ %.2124.i, %bb.k ] ; 2 uses
  br i1 %.not.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.075149.i
  %i.at = load i32, ptr %i.as, align 4, !tbaa !206
  %i.au = zext i32 %i.at to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %bb.c, %bb.b
  %i.av = phi i64 [ %i.au, %bb.c ], [ %.075149.i, %bb.b ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !218
  %i.ay = sub i64 %i.ax, %i.k                     ; 6 uses
  %i.az = icmp ult i64 %.072150.i, %i.aa
  br i1 %i.az, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, %bb.d
  %.173143.i = phi i64 [ %i.bj, %bb.d ], [ %.072150.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 6 uses
  %.1123142.i = phi i64 [ %i.bh, %bb.d ], [ %.0122148.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 7 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.173143.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !206 ; 3 uses
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = icmp ugt i64 %i.ay, %i.bc
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.173143.i
  %i.bf = load double, ptr %i.be, align 8, !tbaa !1212
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.1123142.i
  store double %i.bf, ptr %i.bg, align 8, !tbaa !1212
  %i.bh = add nuw nsw i64 %.1123142.i, 1          ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1123142.i
  store i32 %i.bb, ptr %i.bi, align 4, !tbaa !206
  %i.bj = add i64 %.173143.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bj, %i.aa
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !4709

bb.e:                                             ; preds = %.lr.ph.i
  %i.bk = icmp eq i64 %i.ay, %i.bc
  br i1 %i.bk, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.173143.i
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !1212
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.1123142.i
  store double %i.bm, ptr %i.bn, align 8, !tbaa !1212
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1123142.i
  store i32 %i.bb, ptr %i.bo, align 4, !tbaa !206
  %i.bp = add nuw nsw i64 %.173143.i, 1
  br label %bb.k

.critedge.i:                                      ; preds = %bb.d, %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %.1123138.i = phi i64 [ %.1123142.i, %bb.e ], [ %.0122148.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.bh, %bb.d ] ; 3 uses
  %.173135.i = phi i64 [ %.173143.i, %bb.e ], [ %.072150.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.aa, %bb.d ]
  %i.bq = icmp ult i64 %.0151.i, %i.ad
  br i1 %i.bq, label %.lr.ph146.i, label %.critedge2.i

.lr.ph146.i:                                      ; preds = %.critedge.i, %bb.g
  %.1145.i = phi i64 [ %i.bv, %bb.g ], [ %.0151.i, %.critedge.i ] ; 5 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.1145.i
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !206
  %i.bt = zext i32 %i.bs to i64                   ; 2 uses
  %i.bu = icmp ugt i64 %i.ay, %i.bt
  br i1 %i.bu, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph146.i
  %i.bv = add i64 %.1145.i, 1                     ; 2 uses
  %exitcond173.not.i = icmp eq i64 %i.bv, %i.ad
  br i1 %exitcond173.not.i, label %.critedge2.i, label %.lr.ph146.i, !llvm.loop !4710

bb.h:                                             ; preds = %.lr.ph146.i
  %i.bw = icmp eq i64 %i.ay, %i.bt
  br i1 %i.bw, label %bb.i, label %.critedge2.i

bb.i:                                             ; preds = %bb.h
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.1145.i
  br label %bb.j

.critedge2.i:                                     ; preds = %bb.g, %bb.h, %.critedge.i
  %.1141.i = phi i64 [ %.1145.i, %bb.h ], [ %.0151.i, %.critedge.i ], [ %i.ad, %bb.g ]
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ay
  br label %bb.j

bb.j:                                             ; preds = %.critedge2.i, %bb.i
  %.sink.in.i = phi ptr [ %i.by, %.critedge2.i ], [ %i.bx, %bb.i ]
  %.1140.i = phi i64 [ %.1141.i, %.critedge2.i ], [ %.1145.i, %bb.i ]
  %.sink.i = load double, ptr %.sink.in.i, align 8, !tbaa !1212
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.1123138.i
  store double %.sink.i, ptr %i.bz, align 8, !tbaa !1212
  %i.ca = trunc i64 %i.ay to i32
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1123138.i
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !206
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.1123137.i = phi i64 [ %.1123142.i, %bb.f ], [ %.1123138.i, %bb.j ]
  %.274.i = phi i64 [ %i.bp, %bb.f ], [ %.173135.i, %bb.j ] ; 2 uses
  %.2.i = phi i64 [ %.0151.i, %bb.f ], [ %.1140.i, %bb.j ]
  %.2124.i = add i64 %.1123137.i, 1               ; 2 uses
  %i.cc = add nuw i64 %.075149.i, 1               ; 2 uses
  %exitcond174.not.i = icmp eq i64 %i.cc, %5
  br i1 %exitcond174.not.i, label %.preheader.i, label %bb.b, !llvm.loop !4711

._crit_edge.i:                                    ; preds = %.lr.ph157.preheader.i, %.preheader.i
  %.3125.lcssa.i = phi i64 [ %.0122.lcssa.i, %.preheader.i ], [ %i.ar, %.lr.ph157.preheader.i ] ; 3 uses
  %i.cd = trunc i64 %.3125.lcssa.i to i32
  store i32 %i.cd, ptr %i.ae, align 8, !tbaa !932
  %i.ce = shl i64 %.3125.lcssa.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 16 %i.a, i64 %i.ce, i1 false)
  %i.cf = shl i64 %.3125.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 16 %i.b, i64 %i.cf, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !932 ; 2 uses
  %i.ci = zext i32 %i.ch to i64                   ; 3 uses
  %.val.i = load ptr, ptr %6, align 8             ; 9 uses
  %i.cj = icmp ne i32 %i.ch, 0
  %i.ck = and i1 %.not.i, %i.cj
  br i1 %i.ck, label %.lr.ph.i.i, label %.preheader1.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i
  %.not.i.i.i = icmp eq ptr %.val.i, null
  br label %bb.l

.preheader1.i.i:                                  ; preds = %bb.t, %._crit_edge.i
  %.4.i = phi i64 [ 0, %._crit_edge.i ], [ %.7.i, %bb.t ] ; 17 uses
  %.054.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.155.i.i, %bb.t ] ; 4 uses
  %.0.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.1.i.i, %bb.t ] ; 22 uses
  %i.cl = icmp ult i64 %.0.lcssa.i.i, %5
  br i1 %i.cl, label %.lr.ph9.i.i, label %.preheader.i.i

.lr.ph9.i.i:                                      ; preds = %.preheader1.i.i
  %.not.i60.i.i = icmp eq ptr %.val.i, null
  %i.cm = load ptr, ptr %i.g, align 8, !tbaa !305 ; 7 uses
  %.not.i.i62.i.i = icmp eq ptr %i.cm, null       ; 2 uses
  br i1 %.not.i60.i.i, label %.lr.ph9.split.us.i.i, label %.lr.ph9.split.i.i

.lr.ph9.split.us.i.i:                             ; preds = %.lr.ph9.i.i
  br i1 %.not.i.i62.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader: ; preds = %.lr.ph9.split.us.i.i
  %i.cn = sub i64 %5, %.0.lcssa.i.i
  %.neg117 = add i64 %.0.lcssa.i.i, 1
  %xtraiter113 = and i64 %i.cn, 1
  %lcmp.mod114.not = icmp eq i64 %xtraiter113, 0
  br i1 %lcmp.mod114.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !218
  %i.cq = sub i64 %i.cp, %i.k
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.0.lcssa.i.i
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !206
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ct
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !1212
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.4.i
  store double %i.cv, ptr %i.cw, align 8, !tbaa !1212
  %i.cx = trunc i64 %i.cq to i32
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !206
  %i.cz = add nuw nsw i64 %.4.i, 1                ; 2 uses
  %i.da = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader
  %.lcssa95.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.cz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %.unr115 = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.cz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %.28.us.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.da, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %i.db = icmp eq i64 %5, %.neg117
  br i1 %i.db, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i: ; preds = %.lr.ph9.split.us.i.i
  %i.dc = shl i64 %.4.i, 3
  %scevgep178.i = getelementptr i8, ptr %i.a, i64 %i.dc
  %i.dd = shl i64 %.0.lcssa.i.i, 3
  %scevgep179.i = getelementptr i8, ptr %i.f, i64 %i.dd
  %i.de = sub i64 %5, %.0.lcssa.i.i               ; 4 uses
  %i.df = shl i64 %i.de, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scevgep178.i, ptr readonly align 8 %scevgep179.i, i64 %i.df, i1 false), !tbaa !1212
  %min.iters.check = icmp ult i64 %i.de, 4
  br i1 %min.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i
  %n.vec = and i64 %i.de, -4                      ; 4 uses
  %i.dg = add i64 %.4.i, %n.vec                   ; 2 uses
  %i.dh = add i64 %.0.lcssa.i.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.k, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %index ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %wide.load = load <2 x i64>, ptr %i.dk, align 8, !tbaa !218
  %wide.load92 = load <2 x i64>, ptr %i.dl, align 8, !tbaa !218
  %i.dm = sub <2 x i64> %wide.load, %broadcast.splat
  %i.dn = sub <2 x i64> %wide.load92, %broadcast.splat
  %i.do = trunc <2 x i64> %i.dm to <2 x i32>
  %i.dp = trunc <2 x i64> %i.dn to <2 x i32>
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %index ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store <2 x i32> %i.do, ptr %i.dq, align 4, !tbaa !206
  store <2 x i32> %i.dp, ptr %i.dr, align 4, !tbaa !206
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !4712

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.de, %n.vec
  br i1 %cmp.n, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i, %middle.block
  %.ph = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i ], [ %i.dg, %middle.block ]
  %.28.us.us.i.i.ph = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i ], [ %i.dh, %middle.block ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i
  %i.dt = phi i64 [ %i.dz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i ], [ %.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader ] ; 2 uses
  %.28.us.us.i.i = phi i64 [ %i.ea, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i ], [ %.28.us.us.i.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader ] ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.28.us.us.i.i
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !218
  %i.dw = sub i64 %i.dv, %i.k
  %i.dx = trunc i64 %i.dw to i32
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dt
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !206
  %i.dz = add nuw nsw i64 %i.dt, 1                ; 2 uses
  %i.ea = add nuw i64 %.28.us.us.i.i, 1           ; 2 uses
  %exitcond33.not.i.i = icmp eq i64 %i.ea, %5
  br i1 %exitcond33.not.i.i, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i, !llvm.loop !4713

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i
  %i.eb = phi i64 [ %i.fa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i ], [ %.unr115, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit ] ; 4 uses
  %.28.us.i.i = phi i64 [ %i.fb, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i ], [ %.28.us.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit ] ; 4 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.28.us.i.i
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !218
  %i.ee = sub i64 %i.ed, %i.k
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.28.us.i.i
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !206
  %i.eh = zext i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.eh
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !1212
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.eb
  store double %i.ej, ptr %i.ek, align 8, !tbaa !1212
  %i.el = trunc i64 %i.ee to i32
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.eb
  store i32 %i.el, ptr %i.em, align 4, !tbaa !206
  %i.en = add nuw nsw i64 %i.eb, 1                ; 2 uses
  %i.eo = add nuw i64 %.28.us.i.i, 1              ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.eo
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !218
  %i.er = sub i64 %i.eq, %i.k
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.eo
  %i.et = load i32, ptr %i.es, align 4, !tbaa !206
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.eu
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !1212
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.en
  store double %i.ew, ptr %i.ex, align 8, !tbaa !1212
  %i.ey = trunc i64 %i.er to i32
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.en
  store i32 %i.ey, ptr %i.ez, align 4, !tbaa !206
  %i.fa = add nuw nsw i64 %i.eb, 2                ; 2 uses
  %i.fb = add nuw i64 %.28.us.i.i, 2              ; 2 uses
  %exitcond32.not.i.i.1 = icmp eq i64 %i.fb, %5
  br i1 %exitcond32.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i, !llvm.loop !4714

.lr.ph9.split.i.i:                                ; preds = %.lr.ph9.i.i
  br i1 %.not.i.i62.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader: ; preds = %.lr.ph9.split.i.i
  %i.fc = sub i64 %5, %.0.lcssa.i.i
  %.neg = add i64 %.0.lcssa.i.i, 1
  %xtraiter = and i64 %i.fc, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0.lcssa.i.i
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !206
  %i.ff = zext i32 %i.fe to i64                   ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ff
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !218
  %i.fi = sub i64 %i.fh, %i.k
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.ff
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !206
  %i.fl = zext i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.fl
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !1212
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.4.i
  store double %i.fn, ptr %i.fo, align 8, !tbaa !1212
  %i.fp = trunc i64 %i.fi to i32
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !206
  %i.fr = add nuw nsw i64 %.4.i, 1                ; 2 uses
  %i.fs = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader
  %.lcssa99.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %.unr = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %.28.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fs, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %i.ft = icmp eq i64 %5, %.neg
  br i1 %i.ft, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader: ; preds = %.lr.ph9.split.i.i
  %i.fu = sub i64 %5, %.0.lcssa.i.i
  %.neg116 = add i64 %.0.lcssa.i.i, 1
  %xtraiter110 = and i64 %i.fu, 1
  %lcmp.mod111.not = icmp eq i64 %xtraiter110, 0
  br i1 %lcmp.mod111.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0.lcssa.i.i
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !206
  %i.fx = zext i32 %i.fw to i64                   ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fx
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !218
  %i.ga = sub i64 %i.fz, %i.k
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.fx
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !1212
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.4.i
  store double %i.gc, ptr %i.gd, align 8, !tbaa !1212
  %i.ge = trunc i64 %i.ga to i32
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.ge, ptr %i.gf, align 4, !tbaa !206
  %i.gg = add nuw nsw i64 %.4.i, 1                ; 2 uses
  %i.gh = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader
  %.lcssa97.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.gg, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %.unr112 = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.gg, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %.28.us12.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.gh, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %i.gi = icmp eq i64 %5, %.neg116
  br i1 %i.gi, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i
  %i.gj = phi i64 [ %i.hi, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i ], [ %.unr112, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit ] ; 4 uses
  %.28.us12.i.i = phi i64 [ %i.hj, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i ], [ %.28.us12.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit ] ; 3 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.us12.i.i
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !206
  %i.gm = zext i32 %i.gl to i64                   ; 2 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gm
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !218
  %i.gp = sub i64 %i.go, %i.k
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.gm
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !1212
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.gj
  store double %i.gr, ptr %i.gs, align 8, !tbaa !1212
  %i.gt = trunc i64 %i.gp to i32
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gj
  store i32 %i.gt, ptr %i.gu, align 4, !tbaa !206
  %i.gv = add nuw nsw i64 %i.gj, 1                ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.us12.i.i
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !206
  %i.gz = zext i32 %i.gy to i64                   ; 2 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gz
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !218
  %i.hc = sub i64 %i.hb, %i.k
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.gz
  %i.he = load double, ptr %i.hd, align 8, !tbaa !1212
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.gv
  store double %i.he, ptr %i.hf, align 8, !tbaa !1212
  %i.hg = trunc i64 %i.hc to i32
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gv
  store i32 %i.hg, ptr %i.hh, align 4, !tbaa !206
  %i.hi = add nuw nsw i64 %i.gj, 2                ; 2 uses
  %i.hj = add nuw i64 %.28.us12.i.i, 2            ; 2 uses
  %exitcond31.not.i.i.1 = icmp eq i64 %i.hj, %5
  br i1 %exitcond31.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i, !llvm.loop !4714

bb.l:                                             ; preds = %bb.t, %.lr.ph.i.i
  %.6.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.7.i, %bb.t ] ; 7 uses
  %.04.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %bb.t ] ; 5 uses
  %.0542.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.155.i.i, %bb.t ] ; 5 uses
  br i1 %.not.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !206
  %i.hm = zext i32 %i.hl to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i: ; preds = %bb.m, %bb.l
  %i.hn = phi i64 [ %i.hm, %bb.m ], [ %.04.i.i, %bb.l ] ; 5 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.hn
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !218
  %i.hq = sub i64 %i.hp, %i.k                     ; 4 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.0542.i.i
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !206 ; 2 uses
  %i.ht = zext i32 %i.hs to i64                   ; 2 uses
  %i.hu = icmp eq i64 %i.hq, %i.ht
  br i1 %i.hu, label %bb.n, label %bb.p

bb.n:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.hv = load ptr, ptr %i.g, align 8, !tbaa !305 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hv, null
  br i1 %.not.i.i.i.i.i, label %_ZZN6duckdbL23MergeUpdateLoopInternalIddNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.hn
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !206
  %i.hy = zext i32 %i.hx to i64
  br label %_ZZN6duckdbL23MergeUpdateLoopInternalIddNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i

_ZZN6duckdbL23MergeUpdateLoopInternalIddNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i: ; preds = %bb.o, %bb.n
  %i.hz = phi i64 [ %i.hy, %bb.o ], [ %i.hn, %bb.n ]
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.hz
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !1212
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.6.i
  store double %i.ib, ptr %i.ic, align 8, !tbaa !1212
  %i.id = trunc nuw i64 %i.hq to i32
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.6.i
  store i32 %i.id, ptr %i.ie, align 4, !tbaa !206
  %i.if = add nuw i64 %.04.i.i, 1
  %i.ig = add nuw nsw i64 %.0542.i.i, 1
  br label %bb.t

bb.p:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.ih = icmp ult i64 %i.hq, %i.ht
  br i1 %i.ih, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ii = load ptr, ptr %i.g, align 8, !tbaa !305 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ii, null
  br i1 %.not.i.i.i.i, label %_ZZN6duckdbL23MergeUpdateLoopInternalIddNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.hn
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !206
  %i.il = zext i32 %i.ik to i64
  br label %_ZZN6duckdbL23MergeUpdateLoopInternalIddNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i

_ZZN6duckdbL23MergeUpdateLoopInternalIddNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i: ; preds = %bb.r, %bb.q
  %i.im = phi i64 [ %i.il, %bb.r ], [ %i.hn, %bb.q ]
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.im
  %i.io = load double, ptr %i.in, align 8, !tbaa !1212
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.6.i
  store double %i.io, ptr %i.ip, align 8, !tbaa !1212
  %i.iq = trunc nuw i64 %i.hq to i32
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.6.i
  store i32 %i.iq, ptr %i.ir, align 4, !tbaa !206
  %i.is = add nuw i64 %.04.i.i, 1
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.0542.i.i
  %i.iu = load double, ptr %i.it, align 8, !tbaa !1212
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.6.i
  store double %i.iu, ptr %i.iv, align 8, !tbaa !1212
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.6.i
  store i32 %i.hs, ptr %i.iw, align 4, !tbaa !206
  %i.ix = add nuw nsw i64 %.0542.i.i, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZZN6duckdbL23MergeUpdateLoopInternalIddNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i, %_ZZN6duckdbL23MergeUpdateLoopInternalIddNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i
  %.155.i.i = phi i64 [ %i.ig, %_ZZN6duckdbL23MergeUpdateLoopInternalIddNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i ], [ %.0542.i.i, %_ZZN6duckdbL23MergeUpdateLoopInternalIddNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i ], [ %i.ix, %bb.s ] ; 3 uses
  %.1.i.i = phi i64 [ %i.if, %_ZZN6duckdbL23MergeUpdateLoopInternalIddNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmmE_clEmmmm.exit.i.i ], [ %i.is, %_ZZN6duckdbL23MergeUpdateLoopInternalIddNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_mENKUlmmmE_clEmmm.exit.i.i ], [ %.04.i.i, %bb.s ] ; 3 uses
  %.7.i = add i64 %.6.i, 1                        ; 2 uses
  %i.iy = icmp ult i64 %.1.i.i, %5
  %i.iz = icmp ult i64 %.155.i.i, %i.ci
  %i.ja = select i1 %i.iy, i1 %i.iz, i1 false
  br i1 %i.ja, label %bb.l, label %.preheader1.i.i, !llvm.loop !4715

.preheader.i.i:                                   ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i, %middle.block, %.preheader1.i.i
  %.5.i = phi i64 [ %.4.i, %.preheader1.i.i ], [ %i.hi, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i ], [ %i.dz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i ], [ %i.fa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i ], [ %i.dg, %middle.block ], [ %.lcssa95.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit ], [ %.lcssa97.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit ], [ %.lcssa99.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit ], [ %i.ks, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i ] ; 4 uses
  %i.jb = icmp ult i64 %.054.lcssa.i.i, %i.ci
  br i1 %i.jb, label %.lr.ph20.i.preheader.i, label %_ZN6duckdbL23MergeUpdateLoopInternalIddNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_m.exit

.lr.ph20.i.preheader.i:                           ; preds = %.preheader.i.i
  %i.jc = shl i64 %.5.i, 3
  %scevgep180.i = getelementptr i8, ptr %i.a, i64 %i.jc
  %i.jd = shl nuw nsw i64 %.054.lcssa.i.i, 3
  %i.je = getelementptr i8, ptr %0, i64 %i.jd
  %i.jf = getelementptr i8, ptr %i.je, i64 %i.p
  %scevgep181.i = getelementptr i8, ptr %i.jf, i64 88
  %i.jg = sub nuw nsw i64 %i.ci, %.054.lcssa.i.i  ; 3 uses
  %i.jh = shl nuw nsw i64 %i.jg, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scevgep180.i, ptr align 8 %scevgep181.i, i64 %i.jh, i1 false), !tbaa !1212
  %i.ji = shl i64 %.5.i, 2
  %scevgep182.i = getelementptr i8, ptr %i.b, i64 %i.ji
  %i.jj = shl nuw nsw i64 %.054.lcssa.i.i, 2
  %i.jk = getelementptr i8, ptr %0, i64 %i.jj
  %scevgep183.i = getelementptr i8, ptr %i.jk, i64 88
  %i.jl = shl nuw nsw i64 %i.jg, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep182.i, ptr align 4 %scevgep183.i, i64 %i.jl, i1 false), !tbaa !206
  %i.jm = add i64 %i.jg, %.5.i
  br label %_ZN6duckdbL23MergeUpdateLoopInternalIddNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_m.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i
  %i.jn = phi i64 [ %i.ks, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i ], [ %.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit ] ; 4 uses
  %.28.i.i = phi i64 [ %i.kt, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i ], [ %.28.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit ] ; 3 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.i.i
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !206
  %i.jq = zext i32 %i.jp to i64                   ; 2 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.jq
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !218
  %i.jt = sub i64 %i.js, %i.k
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.jq
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !206
  %i.jw = zext i32 %i.jv to i64
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.jw
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !1212
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.jn
  store double %i.jy, ptr %i.jz, align 8, !tbaa !1212
  %i.ka = trunc i64 %i.jt to i32
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.jn
  store i32 %i.ka, ptr %i.kb, align 4, !tbaa !206
  %i.kc = add nuw nsw i64 %i.jn, 1                ; 2 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.i.i
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 4
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !206
  %i.kg = zext i32 %i.kf to i64                   ; 2 uses
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.kg
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !218
  %i.kj = sub i64 %i.ki, %i.k
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.kg
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !206
  %i.km = zext i32 %i.kl to i64
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.km
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !1212
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.kc
  store double %i.ko, ptr %i.kp, align 8, !tbaa !1212
  %i.kq = trunc i64 %i.kj to i32
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.kc
  store i32 %i.kq, ptr %i.kr, align 4, !tbaa !206
  %i.ks = add nuw nsw i64 %i.jn, 2                ; 2 uses
  %i.kt = add nuw i64 %.28.i.i, 2                 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.kt, %5
  br i1 %exitcond.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i, !llvm.loop !4714

_ZN6duckdbL23MergeUpdateLoopInternalIddNS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S3_RKNS_15SelectionVectorEPKS4_PlmS8_m.exit: ; preds = %.preheader.i.i, %.lr.ph20.i.preheader.i
  %.8.i = phi i64 [ %.5.i, %.preheader.i.i ], [ %i.jm, %.lr.ph20.i.preheader.i ] ; 3 uses
  %i.ku = trunc i64 %.8.i to i32
  store i32 %i.ku, ptr %i.cg, align 8, !tbaa !932
  %i.kv = shl i64 %.8.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 16 %i.a, i64 %i.kv, i1 false)
  %i.kw = shl i64 %.8.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 16 %i.b, i64 %i.kw, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdbL15MergeUpdateLoopINS_10interval_tEEEvRNS_10UpdateInfoERNS_6VectorES3_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(73) %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, i64 noundef %7) #1 {
bb.a:
  %8 = alloca [2048 x %"struct.duckdb::interval_t"], align 16 ; 25 uses
  %i.a = alloca [2048 x i32], align 16            ; 24 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10interval_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1260
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_10interval_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1209 ; 14 uses
  %i.f = load ptr, ptr %3, align 8, !tbaa !959    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !943
  %i.i = shl i64 %i.h, 11
  %i.j = add i64 %i.i, %7                         ; 14 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.m = load i32, ptr %i.l, align 4, !tbaa !938
  %i.n = zext i32 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 2                  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.s = load i32, ptr %i.r, align 4, !tbaa !938
  %i.t = zext i32 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 2                  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %.not.i = icmp ne i64 %5, 0                     ; 2 uses
  br i1 %.not.i, label %.lr.ph165.i, label %..preheader_crit_edge.i

..preheader_crit_edge.i:                          ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !932
  %.pre195.i = zext i32 %.pre.i to i64
  br label %.preheader.i

.lr.ph165.i:                                      ; preds = %bb.a
  %i.w = load ptr, ptr %6, align 8, !tbaa !305    ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.y = load i32, ptr %i.x, align 8, !tbaa !932
  %i.z = zext i32 %i.y to i64                     ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = zext i32 %i.ab to i64                   ; 3 uses
  br label %bb.b

.preheader.i:                                     ; preds = %bb.k, %..preheader_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre195.i, %..preheader_crit_edge.i ], [ %i.z, %bb.k ] ; 3 uses
  %.0135.lcssa.i = phi i64 [ 0, %..preheader_crit_edge.i ], [ %.2137.i, %bb.k ] ; 4 uses
  %.075.lcssa.i = phi i64 [ 0, %..preheader_crit_edge.i ], [ %.277.i, %bb.k ] ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ae = icmp ult i64 %.075.lcssa.i, %.pre-phi.i
  br i1 %i.ae, label %.lr.ph170.preheader.i, label %._crit_edge.i

.lr.ph170.preheader.i:                            ; preds = %.preheader.i
  %i.af = shl i64 %.0135.lcssa.i, 2
  %scevgep.i = getelementptr i8, ptr %i.a, i64 %i.af
  %i.ag = shl nuw nsw i64 %.075.lcssa.i, 2
  %i.ah = getelementptr i8, ptr %2, i64 %i.ag
  %scevgep188.i = getelementptr i8, ptr %i.ah, i64 88
  %i.ai = sub nuw nsw i64 %.pre-phi.i, %.075.lcssa.i ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep.i, ptr align 4 %scevgep188.i, i64 %i.aj, i1 false), !tbaa !206
  %i.ak = shl i64 %.0135.lcssa.i, 4
  %scevgep189.i = getelementptr i8, ptr %8, i64 %i.ak
  %i.al = shl nuw nsw i64 %.075.lcssa.i, 4
  %i.am = getelementptr i8, ptr %2, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 %i.u
  %scevgep190.i = getelementptr i8, ptr %i.an, i64 88
  %i.ao = shl nuw nsw i64 %i.ai, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %scevgep189.i, ptr align 8 %scevgep190.i, i64 %i.ao, i1 false)
  %i.ap = add i64 %.0135.lcssa.i, %.pre-phi.i
  %i.aq = sub i64 %i.ap, %.075.lcssa.i
  br label %._crit_edge.i

bb.b:                                             ; preds = %bb.k, %.lr.ph165.i
  %.0164.i = phi i64 [ 0, %.lr.ph165.i ], [ %.2.i, %bb.k ] ; 4 uses
  %.075163.i = phi i64 [ 0, %.lr.ph165.i ], [ %.277.i, %bb.k ] ; 3 uses
  %.078162.i = phi i64 [ 0, %.lr.ph165.i ], [ %i.cb, %bb.k ] ; 3 uses
  %.0135161.i = phi i64 [ 0, %.lr.ph165.i ], [ %.2137.i, %bb.k ] ; 2 uses
  br i1 %.not.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.078162.i
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !206
  %i.at = zext i32 %i.as to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %bb.c, %bb.b
  %i.au = phi i64 [ %i.at, %bb.c ], [ %.078162.i, %bb.b ]
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !218
  %i.ax = sub i64 %i.aw, %i.j                     ; 6 uses
  %i.ay = icmp ult i64 %.075163.i, %i.z
  br i1 %i.ay, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, %bb.d
  %.176156.i = phi i64 [ %i.bh, %bb.d ], [ %.075163.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 6 uses
  %.1136155.i = phi i64 [ %i.bf, %bb.d ], [ %.0135161.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 7 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.176156.i
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !206 ; 3 uses
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %i.bc = icmp ugt i64 %i.ax, %i.bb
  br i1 %i.bc, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.176156.i
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.1136155.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i64 16, i1 false), !tbaa.struct !1898
  %i.bf = add nuw nsw i64 %.1136155.i, 1          ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.1136155.i
  store i32 %i.ba, ptr %i.bg, align 4, !tbaa !206
  %i.bh = add i64 %.176156.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bh, %i.z
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !4716

bb.e:                                             ; preds = %.lr.ph.i
  %i.bi = icmp eq i64 %i.ax, %i.bb
  br i1 %i.bi, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.176156.i
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.1136155.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bk, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false), !tbaa.struct !1898
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.1136155.i
  store i32 %i.ba, ptr %i.bl, align 4, !tbaa !206
  %i.bm = add nuw nsw i64 %.176156.i, 1
  br label %bb.k

.critedge.i:                                      ; preds = %bb.d, %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %.1136151.i = phi i64 [ %.1136155.i, %bb.e ], [ %.0135161.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.bf, %bb.d ] ; 4 uses
  %.176148.i = phi i64 [ %.176156.i, %bb.e ], [ %.075163.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.z, %bb.d ]
  %i.bn = icmp ult i64 %.0164.i, %i.ac
  br i1 %i.bn, label %.lr.ph159.i, label %.critedge2.i

.lr.ph159.i:                                      ; preds = %.critedge.i, %bb.g
  %.1158.i = phi i64 [ %i.bs, %bb.g ], [ %.0164.i, %.critedge.i ] ; 5 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.1158.i
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !206
  %i.bq = zext i32 %i.bp to i64                   ; 2 uses
  %i.br = icmp ugt i64 %i.ax, %i.bq
  br i1 %i.br, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph159.i
  %i.bs = add i64 %.1158.i, 1                     ; 2 uses
  %exitcond186.not.i = icmp eq i64 %i.bs, %i.ac
  br i1 %exitcond186.not.i, label %.critedge2.i, label %.lr.ph159.i, !llvm.loop !4717

bb.h:                                             ; preds = %.lr.ph159.i
  %i.bt = icmp eq i64 %i.ax, %i.bq
  br i1 %i.bt, label %bb.i, label %.critedge2.i

bb.i:                                             ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.1158.i
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.1136151.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bv, ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i64 16, i1 false), !tbaa.struct !1898
  br label %bb.j

.critedge2.i:                                     ; preds = %bb.g, %bb.h, %.critedge.i
  %.1154.i = phi i64 [ %.1158.i, %bb.h ], [ %.0164.i, %.critedge.i ], [ %i.ac, %bb.g ]
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.ax
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.1136151.i
  %i.by = load <2 x i64>, ptr %i.bw, align 8, !tbaa !273
  store <2 x i64> %i.by, ptr %i.bx, align 16, !tbaa !273
  br label %bb.j

bb.j:                                             ; preds = %.critedge2.i, %bb.i
  %.1153.i = phi i64 [ %.1154.i, %.critedge2.i ], [ %.1158.i, %bb.i ]
  %i.bz = trunc i64 %i.ax to i32
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.1136151.i
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !206
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.1136150.i = phi i64 [ %.1136155.i, %bb.f ], [ %.1136151.i, %bb.j ]
  %.277.i = phi i64 [ %i.bm, %bb.f ], [ %.176148.i, %bb.j ] ; 2 uses
  %.2.i = phi i64 [ %.0164.i, %bb.f ], [ %.1153.i, %bb.j ]
  %.2137.i = add i64 %.1136150.i, 1               ; 2 uses
  %i.cb = add nuw i64 %.078162.i, 1               ; 2 uses
  %exitcond187.not.i = icmp eq i64 %i.cb, %5
  br i1 %exitcond187.not.i, label %.preheader.i, label %bb.b, !llvm.loop !4718

._crit_edge.i:                                    ; preds = %.lr.ph170.preheader.i, %.preheader.i
  %.3138.lcssa.i = phi i64 [ %.0135.lcssa.i, %.preheader.i ], [ %i.aq, %.lr.ph170.preheader.i ] ; 3 uses
  %i.cc = trunc i64 %.3138.lcssa.i to i32
  store i32 %i.cc, ptr %i.ad, align 8, !tbaa !932
  %i.cd = shl i64 %.3138.lcssa.i, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 16 %8, i64 %i.cd, i1 false)
  %i.ce = shl i64 %.3138.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 16 %i.a, i64 %i.ce, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !932 ; 2 uses
  %i.ch = zext i32 %i.cg to i64                   ; 3 uses
  %i.ci = icmp ne i32 %i.cg, 0
  %i.cj = and i1 %.not.i, %i.ci
  br i1 %i.cj, label %.lr.ph.i.preheader.i, label %.preheader68.i.i

.lr.ph.i.preheader.i:                             ; preds = %._crit_edge.i
  %i.ck = load ptr, ptr %6, align 8, !tbaa !305   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ck, null
  br label %.lr.ph.i.i

.preheader68.i.i:                                 ; preds = %bb.s, %._crit_edge.i
  %.4.i = phi i64 [ 0, %._crit_edge.i ], [ %.12.i, %bb.s ] ; 17 uses
  %.054.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.155.i.i, %bb.s ] ; 4 uses
  %.0.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.1.i.i, %bb.s ] ; 23 uses
  %i.cl = icmp ult i64 %.0.lcssa.i.i, %5
  br i1 %i.cl, label %.lr.ph76.i.i, label %.preheader.i.i

.lr.ph76.i.i:                                     ; preds = %.preheader68.i.i
  %i.cm = load ptr, ptr %6, align 8, !tbaa !305   ; 7 uses
  %.not.i60.i.i = icmp eq ptr %i.cm, null
  %i.cn = load ptr, ptr %i.f, align 8, !tbaa !305 ; 7 uses
  %.not.i.i62.i.i = icmp eq ptr %i.cn, null       ; 2 uses
  br i1 %.not.i60.i.i, label %.lr.ph76.split.us.i.i, label %.lr.ph76.split.i.i

.lr.ph76.split.us.i.i:                            ; preds = %.lr.ph76.i.i
  br i1 %.not.i.i62.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader: ; preds = %.lr.ph76.split.us.i.i
  %i.co = sub i64 %5, %.0.lcssa.i.i
  %.neg117 = add i64 %.0.lcssa.i.i, 1
  %xtraiter112 = and i64 %i.co, 1
  %lcmp.mod113.not = icmp eq i64 %xtraiter112, 0
  br i1 %lcmp.mod113.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !218
  %i.cr = sub i64 %i.cq, %i.j
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.0.lcssa.i.i
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !206
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.cu
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.4.i
  %i.cx = load <2 x i64>, ptr %i.cv, align 8, !tbaa !273
  store <2 x i64> %i.cx, ptr %i.cw, align 16, !tbaa !273
  %i.cy = trunc i64 %i.cr to i32
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.4.i
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !206
  %i.da = add nuw nsw i64 %.4.i, 1                ; 2 uses
  %i.db = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader
  %.lcssa95.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.da, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %.9.i.unr = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.da, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %.275.us.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.db, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %i.dc = icmp eq i64 %5, %.neg117
  br i1 %i.dc, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader: ; preds = %.lr.ph76.split.us.i.i
  %i.dd = sub i64 %5, %.0.lcssa.i.i
  %.neg118 = add i64 %.0.lcssa.i.i, 1
  %xtraiter114 = and i64 %i.dd, 1
  %lcmp.mod115.not = icmp eq i64 %xtraiter114, 0
  br i1 %lcmp.mod115.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.df = load i64, ptr %i.de, align 8, !tbaa !218
  %i.dg = sub i64 %i.df, %i.j
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.0.lcssa.i.i
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.4.i
end_hunk_5
begin_hunk_6_@_ZN6duckdbL15MergeUpdateLoopINS_10interval_tEEEvRNS_10UpdateInfoERNS_6VectorES3_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm:bb.a
  %i.fj = sub i64 %5, %.0.lcssa.i.i
  %.neg = add i64 %.0.lcssa.i.i, 1
  %xtraiter = and i64 %i.fj, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.0.lcssa.i.i
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !206
  %i.fm = zext i32 %i.fl to i64                   ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fm
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !218
  %i.fp = sub i64 %i.fo, %i.j
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.fm
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !206
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.fs
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.4.i
  %i.fv = load <2 x i64>, ptr %i.ft, align 8, !tbaa !273
  store <2 x i64> %i.fv, ptr %i.fu, align 16, !tbaa !273
  %i.fw = trunc i64 %i.fp to i32
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.4.i
  store i32 %i.fw, ptr %i.fx, align 4, !tbaa !206
  %i.fy = add nuw nsw i64 %.4.i, 1                ; 2 uses
  %i.fz = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader
  %.lcssa99.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fy, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %.7.i.unr = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fy, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %.275.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %i.ga = icmp eq i64 %5, %.neg
  br i1 %i.ga, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.preheader: ; preds = %.lr.ph76.split.i.i
  %i.gb = sub i64 %5, %.0.lcssa.i.i
  %.neg116 = add i64 %.0.lcssa.i.i, 1
  %xtraiter110 = and i64 %i.gb, 1
  %lcmp.mod111.not = icmp eq i64 %xtraiter110, 0
  br i1 %lcmp.mod111.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.preheader
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.0.lcssa.i.i
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !206
  %i.ge = zext i32 %i.gd to i64                   ; 2 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ge
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !218
  %i.gh = sub i64 %i.gg, %i.j
  %i.gi = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.ge
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.4.i
  %i.gk = load <2 x i64>, ptr %i.gi, align 8, !tbaa !273
  store <2 x i64> %i.gk, ptr %i.gj, align 16, !tbaa !273
  %i.gl = trunc i64 %i.gh to i32
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.4.i
  store i32 %i.gl, ptr %i.gm, align 4, !tbaa !206
  %i.gn = add nuw nsw i64 %.4.i, 1                ; 2 uses
  %i.go = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.preheader
  %.lcssa97.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.preheader ], [ %i.gn, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.prol ]
  %.8.i.unr = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.preheader ], [ %i.gn, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.prol ]
  %.275.us79.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.preheader ], [ %i.go, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.prol ]
  %i.gp = icmp eq i64 %5, %.neg116
  br i1 %i.gp, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i
  %.8.i = phi i64 [ %i.ho, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i ], [ %.8.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.prol.loopexit ] ; 4 uses
  %.275.us79.i.i = phi i64 [ %i.hp, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i ], [ %.275.us79.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.prol.loopexit ] ; 3 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.275.us79.i.i
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !206
  %i.gs = zext i32 %i.gr to i64                   ; 2 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gs
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !218
  %i.gv = sub i64 %i.gu, %i.j
  %i.gw = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.gs
  %i.gx = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.8.i
  %i.gy = load <2 x i64>, ptr %i.gw, align 8, !tbaa !273
  store <2 x i64> %i.gy, ptr %i.gx, align 16, !tbaa !273
  %i.gz = trunc i64 %i.gv to i32
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.8.i
  store i32 %i.gz, ptr %i.ha, align 4, !tbaa !206
  %i.hb = add nuw nsw i64 %.8.i, 1                ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.275.us79.i.i
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !206
  %i.hf = zext i32 %i.he to i64                   ; 2 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.hf
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !218
  %i.hi = sub i64 %i.hh, %i.j
  %i.hj = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.hf
  %i.hk = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %i.hb
  %i.hl = load <2 x i64>, ptr %i.hj, align 8, !tbaa !273
  store <2 x i64> %i.hl, ptr %i.hk, align 16, !tbaa !273
  %i.hm = trunc i64 %i.hi to i32
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hb
  store i32 %i.hm, ptr %i.hn, align 4, !tbaa !206
  %i.ho = add nuw nsw i64 %.8.i, 2                ; 2 uses
  %i.hp = add nuw i64 %.275.us79.i.i, 2           ; 2 uses
  %exitcond100.not.i.i.1 = icmp eq i64 %i.hp, %5
  br i1 %exitcond100.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i, !llvm.loop !4719

.lr.ph.i.i:                                       ; preds = %bb.s, %.lr.ph.i.preheader.i
  %.11.i = phi i64 [ %.12.i, %bb.s ], [ 0, %.lr.ph.i.preheader.i ] ; 7 uses
  %.071.i.i = phi i64 [ %.1.i.i, %bb.s ], [ 0, %.lr.ph.i.preheader.i ] ; 5 uses
  %.05469.i.i = phi i64 [ %.155.i.i, %bb.s ], [ 0, %.lr.ph.i.preheader.i ] ; 5 uses
  br i1 %.not.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %.071.i.i
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !206
  %i.hs = zext i32 %i.hr to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i: ; preds = %bb.l, %.lr.ph.i.i
  %i.ht = phi i64 [ %i.hs, %bb.l ], [ %.071.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ht
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !218
  %i.hw = sub i64 %i.hv, %i.j                     ; 4 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.05469.i.i
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !206 ; 2 uses
  %i.hz = zext i32 %i.hy to i64                   ; 2 uses
  %i.ia = icmp eq i64 %i.hw, %i.hz
  br i1 %i.ia, label %bb.m, label %bb.o

bb.m:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.ib = load ptr, ptr %i.f, align 8, !tbaa !305 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ib, null
  br i1 %.not.i.i.i.i.i, label %_ZZN6duckdbL23MergeUpdateLoopInternalINS_10interval_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmmE_clEmmmm.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %i.ht
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !206
  %i.ie = zext i32 %i.id to i64
  br label %_ZZN6duckdbL23MergeUpdateLoopInternalINS_10interval_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmmE_clEmmmm.exit.i.i

_ZZN6duckdbL23MergeUpdateLoopInternalINS_10interval_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmmE_clEmmmm.exit.i.i: ; preds = %bb.n, %bb.m
  %i.if = phi i64 [ %i.ie, %bb.n ], [ %i.ht, %bb.m ]
  %i.ig = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.if
  %i.ih = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.11.i
  %i.ii = load <2 x i64>, ptr %i.ig, align 8, !tbaa !273
  store <2 x i64> %i.ii, ptr %i.ih, align 16, !tbaa !273
  %i.ij = trunc nuw i64 %i.hw to i32
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.11.i
  store i32 %i.ij, ptr %i.ik, align 4, !tbaa !206
  %i.il = add nuw i64 %.071.i.i, 1
  %i.im = add nuw nsw i64 %.05469.i.i, 1
  br label %bb.s

bb.o:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.in = icmp ult i64 %i.hw, %i.hz
  br i1 %i.in, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.io = load ptr, ptr %i.f, align 8, !tbaa !305 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.io, null
  br i1 %.not.i.i.i.i, label %_ZZN6duckdbL23MergeUpdateLoopInternalINS_10interval_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmE_clEmmm.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.ht
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !206
  %i.ir = zext i32 %i.iq to i64
  br label %_ZZN6duckdbL23MergeUpdateLoopInternalINS_10interval_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmE_clEmmm.exit.i.i

_ZZN6duckdbL23MergeUpdateLoopInternalINS_10interval_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmE_clEmmm.exit.i.i: ; preds = %bb.q, %bb.p
  %i.is = phi i64 [ %i.ir, %bb.q ], [ %i.ht, %bb.p ]
  %i.it = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.is
  %i.iu = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.11.i
  %i.iv = load <2 x i64>, ptr %i.it, align 8, !tbaa !273
  store <2 x i64> %i.iv, ptr %i.iu, align 16, !tbaa !273
  %i.iw = trunc nuw i64 %i.hw to i32
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.11.i
  store i32 %i.iw, ptr %i.ix, align 4, !tbaa !206
  %i.iy = add nuw i64 %.071.i.i, 1
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.iz = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.05469.i.i
  %i.ja = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.11.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ja, ptr noundef nonnull align 8 dereferenceable(16) %i.iz, i64 16, i1 false), !tbaa.struct !1898
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.11.i
  store i32 %i.hy, ptr %i.jb, align 4, !tbaa !206
  %i.jc = add nuw nsw i64 %.05469.i.i, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZZN6duckdbL23MergeUpdateLoopInternalINS_10interval_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmE_clEmmm.exit.i.i, %_ZZN6duckdbL23MergeUpdateLoopInternalINS_10interval_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmmE_clEmmmm.exit.i.i
  %.155.i.i = phi i64 [ %i.im, %_ZZN6duckdbL23MergeUpdateLoopInternalINS_10interval_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmmE_clEmmmm.exit.i.i ], [ %.05469.i.i, %_ZZN6duckdbL23MergeUpdateLoopInternalINS_10interval_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmE_clEmmm.exit.i.i ], [ %i.jc, %bb.r ] ; 3 uses
  %.1.i.i = phi i64 [ %i.il, %_ZZN6duckdbL23MergeUpdateLoopInternalINS_10interval_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmmE_clEmmmm.exit.i.i ], [ %i.iy, %_ZZN6duckdbL23MergeUpdateLoopInternalINS_10interval_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmE_clEmmm.exit.i.i ], [ %.071.i.i, %bb.r ] ; 3 uses
  %.12.i = add i64 %.11.i, 1                      ; 2 uses
  %i.jd = icmp ult i64 %.1.i.i, %5
  %i.je = icmp ult i64 %.155.i.i, %i.ch
  %i.jf = select i1 %i.jd, i1 %i.je, i1 false
  br i1 %i.jf, label %.lr.ph.i.i, label %.preheader68.i.i, !llvm.loop !4720

.preheader.i.i:                                   ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i, %.preheader68.i.i
  %.5.i = phi i64 [ %.4.i, %.preheader68.i.i ], [ %i.ho, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i ], [ %i.eh, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i ], [ %i.fh, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i ], [ %.lcssa.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.prol.loopexit ], [ %.lcssa95.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit ], [ %.lcssa97.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us78.i.i.prol.loopexit ], [ %.lcssa99.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit ], [ %i.kw, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i ] ; 4 uses
  %i.jg = icmp ult i64 %.054.lcssa.i.i, %i.ch
  br i1 %i.jg, label %.lr.ph91.i.preheader.i, label %_ZN6duckdbL23MergeUpdateLoopInternalINS_10interval_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_m.exit

.lr.ph91.i.preheader.i:                           ; preds = %.preheader.i.i
  %i.jh = shl i64 %.5.i, 2
  %scevgep191.i = getelementptr i8, ptr %i.a, i64 %i.jh
  %i.ji = shl nuw nsw i64 %.054.lcssa.i.i, 2
  %i.jj = getelementptr i8, ptr %0, i64 %i.ji
  %scevgep192.i = getelementptr i8, ptr %i.jj, i64 88
  %i.jk = sub nuw nsw i64 %i.ch, %.054.lcssa.i.i  ; 3 uses
  %i.jl = shl nuw nsw i64 %i.jk, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep191.i, ptr align 4 %scevgep192.i, i64 %i.jl, i1 false), !tbaa !206
  %i.jm = shl i64 %.5.i, 4
  %scevgep193.i = getelementptr i8, ptr %8, i64 %i.jm
  %i.jn = shl nuw nsw i64 %.054.lcssa.i.i, 4
  %i.jo = getelementptr i8, ptr %0, i64 %i.jn
  %i.jp = getelementptr i8, ptr %i.jo, i64 %i.o
  %scevgep194.i = getelementptr i8, ptr %i.jp, i64 88
  %i.jq = shl nuw nsw i64 %i.jk, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %scevgep193.i, ptr align 8 %scevgep194.i, i64 %i.jq, i1 false)
  %i.jr = add i64 %i.jk, %.5.i
  br label %_ZN6duckdbL23MergeUpdateLoopInternalINS_10interval_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_m.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i
  %.7.i = phi i64 [ %i.kw, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i ], [ %.7.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit ] ; 4 uses
  %.275.i.i = phi i64 [ %i.kx, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i ], [ %.275.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit ] ; 3 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.275.i.i
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !206
  %i.ju = zext i32 %i.jt to i64                   ; 2 uses
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ju
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !218
  %i.jx = sub i64 %i.jw, %i.j
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.ju
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !206
  %i.ka = zext i32 %i.jz to i64
  %i.kb = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.ka
  %i.kc = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.7.i
  %i.kd = load <2 x i64>, ptr %i.kb, align 8, !tbaa !273
  store <2 x i64> %i.kd, ptr %i.kc, align 16, !tbaa !273
  %i.ke = trunc i64 %i.jx to i32
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.7.i
  store i32 %i.ke, ptr %i.kf, align 4, !tbaa !206
  %i.kg = add nuw nsw i64 %.7.i, 1                ; 2 uses
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.275.i.i
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !206
  %i.kk = zext i32 %i.kj to i64                   ; 2 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.kk
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !218
  %i.kn = sub i64 %i.km, %i.j
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.kk
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !206
  %i.kq = zext i32 %i.kp to i64
  %i.kr = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.kq
  %i.ks = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %i.kg
  %i.kt = load <2 x i64>, ptr %i.kr, align 8, !tbaa !273
  store <2 x i64> %i.kt, ptr %i.ks, align 16, !tbaa !273
  %i.ku = trunc i64 %i.kn to i32
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.kg
  store i32 %i.ku, ptr %i.kv, align 4, !tbaa !206
  %i.kw = add nuw nsw i64 %.7.i, 2                ; 2 uses
  %i.kx = add nuw i64 %.275.i.i, 2                ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.kx, %5
  br i1 %exitcond.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i, !llvm.loop !4719

_ZN6duckdbL23MergeUpdateLoopInternalINS_10interval_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_m.exit: ; preds = %.preheader.i.i, %.lr.ph91.i.preheader.i
  %.13.i = phi i64 [ %.5.i, %.preheader.i.i ], [ %i.jr, %.lr.ph91.i.preheader.i ] ; 3 uses
  %i.ky = trunc i64 %.13.i to i32
  store i32 %i.ky, ptr %i.cf, align 8, !tbaa !932
  %i.kz = shl i64 %.13.i, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull align 16 %8, i64 %i.kz, i1 false)
  %i.la = shl i64 %.13.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr nonnull align 16 %i.a, i64 %i.la, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdbL15MergeUpdateLoopINS_8string_tEEEvRNS_10UpdateInfoERNS_6VectorES3_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(73) %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, i64 noundef %7) #1 {
bb.a:
  %8 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %9 = alloca [2048 x %"struct.duckdb::string_t"], align 16 ; 19 uses
  %i.a = alloca [2048 x i32], align 16            ; 18 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1260
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_8string_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1209 ; 8 uses
  %i.f = load ptr, ptr %3, align 8, !tbaa !959    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !943
  %i.i = shl i64 %i.h, 11
  %i.j = add i64 %i.i, %7                         ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.m = load i32, ptr %i.l, align 4, !tbaa !938
  %i.n = zext i32 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 2                  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.s = load i32, ptr %i.r, align 4, !tbaa !938
  %i.t = zext i32 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 2                  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %.not.i = icmp ne i64 %5, 0                     ; 2 uses
  br i1 %.not.i, label %.lr.ph155.i, label %.preheader.i

.lr.ph155.i:                                      ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.b

.preheader.i:                                     ; preds = %bb.l, %bb.a
  %.0131.lcssa.i = phi i64 [ 0, %bb.a ], [ %.2133.i, %bb.l ] ; 4 uses
  %.075.lcssa.i = phi i64 [ 0, %bb.a ], [ %.277.i, %bb.l ] ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !932
  %i.ab = zext i32 %i.aa to i64                   ; 3 uses
  %i.ac = icmp ult i64 %.075.lcssa.i, %i.ab
  br i1 %i.ac, label %.lr.ph160.preheader.i, label %._crit_edge.i

.lr.ph160.preheader.i:                            ; preds = %.preheader.i
  %i.ad = shl i64 %.0131.lcssa.i, 2
  %scevgep.i = getelementptr i8, ptr %i.a, i64 %i.ad
  %i.ae = shl nuw nsw i64 %.075.lcssa.i, 2
  %i.af = getelementptr i8, ptr %2, i64 %i.ae
  %scevgep178.i = getelementptr i8, ptr %i.af, i64 88
  %i.ag = sub nuw nsw i64 %i.ab, %.075.lcssa.i    ; 2 uses
  %i.ah = shl nuw nsw i64 %i.ag, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep.i, ptr align 4 %scevgep178.i, i64 %i.ah, i1 false), !tbaa !206
  %i.ai = shl i64 %.0131.lcssa.i, 4
  %scevgep179.i = getelementptr i8, ptr %9, i64 %i.ai
  %i.aj = shl nuw nsw i64 %.075.lcssa.i, 4
  %i.ak = getelementptr i8, ptr %2, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 %i.u
  %scevgep180.i = getelementptr i8, ptr %i.al, i64 88
  %i.am = shl nuw nsw i64 %i.ag, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %scevgep179.i, ptr align 8 %scevgep180.i, i64 %i.am, i1 false)
  %i.an = sub i64 %.0131.lcssa.i, %.075.lcssa.i
  %i.ao = add i64 %i.an, %i.ab
  br label %._crit_edge.i

bb.b:                                             ; preds = %bb.l, %.lr.ph155.i
  %.0154.i = phi i64 [ 0, %.lr.ph155.i ], [ %.2.i, %bb.l ] ; 4 uses
  %.075153.i = phi i64 [ 0, %.lr.ph155.i ], [ %.277.i, %bb.l ] ; 3 uses
  %.078152.i = phi i64 [ 0, %.lr.ph155.i ], [ %i.ck, %bb.l ] ; 3 uses
  %.0131151.i = phi i64 [ 0, %.lr.ph155.i ], [ %.2133.i, %bb.l ] ; 2 uses
  %i.ap = load ptr, ptr %6, align 8, !tbaa !305   ; 2 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.078152.i
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !206
  %i.as = zext i32 %i.ar to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %bb.c, %bb.b
  %i.at = phi i64 [ %i.as, %bb.c ], [ %.078152.i, %bb.b ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !218
  %i.aw = sub i64 %i.av, %i.j                     ; 6 uses
  %i.ax = load i32, ptr %i.w, align 8, !tbaa !932
  %i.ay = zext i32 %i.ax to i64                   ; 3 uses
  %i.az = icmp ult i64 %.075153.i, %i.ay
  br i1 %i.az, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, %bb.d
  %.176146.i = phi i64 [ %i.bi, %bb.d ], [ %.075153.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 6 uses
  %.1132145.i = phi i64 [ %i.bg, %bb.d ], [ %.0131151.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 7 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.176146.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !206 ; 3 uses
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = icmp ugt i64 %i.aw, %i.bc
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.176146.i
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %9, i64 %.1132145.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %i.be, i64 16, i1 false), !tbaa.struct !1899
  %i.bg = add nuw nsw i64 %.1132145.i, 1          ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.1132145.i
  store i32 %i.bb, ptr %i.bh, align 4, !tbaa !206
  %i.bi = add i64 %.176146.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bi, %i.ay
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !4721

bb.e:                                             ; preds = %.lr.ph.i
  %i.bj = icmp eq i64 %i.aw, %i.bc
  br i1 %i.bj, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.176146.i
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %9, i64 %.1132145.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i64 16, i1 false), !tbaa.struct !1899
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.1132145.i
  store i32 %i.bb, ptr %i.bm, align 4, !tbaa !206
  %i.bn = add nuw nsw i64 %.176146.i, 1
  br label %bb.l

.critedge.i:                                      ; preds = %bb.d, %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %.1132141.i = phi i64 [ %.1132145.i, %bb.e ], [ %.0131151.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.bg, %bb.d ] ; 4 uses
  %.176138.i = phi i64 [ %.176146.i, %bb.e ], [ %.075153.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.ay, %bb.d ]
  %i.bo = load i32, ptr %i.x, align 8, !tbaa !932
  %i.bp = zext i32 %i.bo to i64                   ; 3 uses
  %i.bq = icmp ult i64 %.0154.i, %i.bp
  br i1 %i.bq, label %.lr.ph149.i, label %.critedge2.i

.lr.ph149.i:                                      ; preds = %.critedge.i, %bb.g
  %.1148.i = phi i64 [ %i.bv, %bb.g ], [ %.0154.i, %.critedge.i ] ; 5 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.1148.i
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !206
  %i.bt = zext i32 %i.bs to i64                   ; 2 uses
  %i.bu = icmp ugt i64 %i.aw, %i.bt
  br i1 %i.bu, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph149.i
  %i.bv = add i64 %.1148.i, 1                     ; 2 uses
  %exitcond176.not.i = icmp eq i64 %i.bv, %i.bp
  br i1 %exitcond176.not.i, label %.critedge2.i, label %.lr.ph149.i, !llvm.loop !4722

bb.h:                                             ; preds = %.lr.ph149.i
  %i.bw = icmp eq i64 %i.aw, %i.bt
  br i1 %i.bw, label %bb.i, label %.critedge2.i

bb.i:                                             ; preds = %bb.h
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.1148.i
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %9, i64 %.1132141.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.by, ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i64 16, i1 false), !tbaa.struct !1899
  br label %bb.k

.critedge2.i:                                     ; preds = %bb.g, %bb.h, %.critedge.i
  %.1144.i = phi i64 [ %.1148.i, %bb.h ], [ %.0154.i, %.critedge.i ], [ %i.bp, %bb.g ]
  %i.bz = load ptr, ptr %0, align 8, !tbaa !941
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.aw ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ca, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !273 ; 2 uses
  %.fca.0.insert.i.i = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.copyload.i.i, 0
  %.fca.1.insert.i.i = insertvalue { i64, ptr } %.fca.0.insert.i.i, ptr %.sroa.2.0.copyload.i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i64 %.sroa.0.0.copyload.i.i, ptr %8, align 8
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.y, align 8
  %i.cb = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %i.cc = icmp ult i32 %i.cb, 13
  br i1 %i.cc, label %_ZN6duckdb19UpdateSelectElement9OperationINS_8string_tEEET_RNS_13UpdateSegmentES3_.exit.i, label %bb.j

bb.j:                                             ; preds = %.critedge2.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 208
  %i.ce = call { i64, ptr } @_ZN6duckdb10StringHeap7AddBlobERKNS_8string_tE(ptr noundef nonnull align 8 dereferenceable(72) %i.cd, ptr noundef nonnull align 8 dereferenceable(16) %8)
  br label %_ZN6duckdb19UpdateSelectElement9OperationINS_8string_tEEET_RNS_13UpdateSegmentES3_.exit.i

_ZN6duckdb19UpdateSelectElement9OperationINS_8string_tEEET_RNS_13UpdateSegmentES3_.exit.i: ; preds = %bb.j, %.critedge2.i
  %.fca.1.insert.merged.i.i = phi { i64, ptr } [ %i.ce, %bb.j ], [ %.fca.1.insert.i.i, %.critedge2.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.cf = extractvalue { i64, ptr } %.fca.1.insert.merged.i.i, 0
  %i.cg = extractvalue { i64, ptr } %.fca.1.insert.merged.i.i, 1
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %9, i64 %.1132141.i ; 2 uses
  store i64 %i.cf, ptr %i.ch, align 16
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %i.cg, ptr %.sroa.47.0..sroa_idx.i, align 8, !tbaa !273
  br label %bb.k

bb.k:                                             ; preds = %_ZN6duckdb19UpdateSelectElement9OperationINS_8string_tEEET_RNS_13UpdateSegmentES3_.exit.i, %bb.i
  %.1143.i = phi i64 [ %.1144.i, %_ZN6duckdb19UpdateSelectElement9OperationINS_8string_tEEET_RNS_13UpdateSegmentES3_.exit.i ], [ %.1148.i, %bb.i ]
  %i.ci = trunc i64 %i.aw to i32
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.1132141.i
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !206
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.1132140.i = phi i64 [ %.1132145.i, %bb.f ], [ %.1132141.i, %bb.k ]
  %.277.i = phi i64 [ %i.bn, %bb.f ], [ %.176138.i, %bb.k ] ; 2 uses
  %.2.i = phi i64 [ %.0154.i, %bb.f ], [ %.1143.i, %bb.k ]
  %.2133.i = add i64 %.1132140.i, 1               ; 2 uses
  %i.ck = add nuw i64 %.078152.i, 1               ; 2 uses
  %exitcond177.not.i = icmp eq i64 %i.ck, %5
  br i1 %exitcond177.not.i, label %.preheader.i, label %bb.b, !llvm.loop !4723

._crit_edge.i:                                    ; preds = %.lr.ph160.preheader.i, %.preheader.i
  %.3134.lcssa.i = phi i64 [ %.0131.lcssa.i, %.preheader.i ], [ %i.ao, %.lr.ph160.preheader.i ] ; 3 uses
  %i.cl = trunc i64 %.3134.lcssa.i to i32
  store i32 %i.cl, ptr %i.z, align 8, !tbaa !932
  %i.cm = shl i64 %.3134.lcssa.i, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 16 %9, i64 %i.cm, i1 false)
  %i.cn = shl i64 %.3134.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 16 %i.a, i64 %i.cn, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !932 ; 2 uses
  %i.cq = zext i32 %i.cp to i64                   ; 3 uses
  %i.cr = icmp ne i32 %i.cp, 0
  %i.cs = and i1 %.not.i, %i.cr
  br i1 %i.cs, label %.lr.ph.i.preheader.i, label %.preheader68.i.i

.lr.ph.i.preheader.i:                             ; preds = %._crit_edge.i
  %i.ct = load ptr, ptr %6, align 8, !tbaa !305   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ct, null
  br label %.lr.ph.i.i

.preheader68.i.i:                                 ; preds = %bb.t, %._crit_edge.i
  %.4.i = phi i64 [ 0, %._crit_edge.i ], [ %.9.i, %bb.t ] ; 8 uses
  %.054.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.155.i.i, %bb.t ] ; 4 uses
  %.0.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.1.i.i, %bb.t ] ; 10 uses
  %i.cu = icmp ult i64 %.0.lcssa.i.i, %5
  br i1 %i.cu, label %.lr.ph76.i.preheader.i, label %.preheader.i.i

.lr.ph76.i.preheader.i:                           ; preds = %.preheader68.i.i
  %i.cv = load ptr, ptr %6, align 8, !tbaa !305   ; 3 uses
  %.not.i60.i.i = icmp eq ptr %i.cv, null
  %i.cw = load ptr, ptr %i.f, align 8, !tbaa !305 ; 3 uses
  %.not.i.i62.i.i = icmp eq ptr %i.cw, null       ; 2 uses
  br i1 %.not.i60.i.i, label %.lr.ph76.i.preheader.split.us.i, label %.lr.ph76.i.i.preheader

.lr.ph76.i.i.preheader:                           ; preds = %.lr.ph76.i.preheader.i
  br i1 %.not.i.i62.i.i, label %.lr.ph76.i.i.us, label %.lr.ph76.i.i

.lr.ph76.i.i.us:                                  ; preds = %.lr.ph76.i.i.preheader, %.lr.ph76.i.i.us
  %.7.i.us = phi i64 [ %i.dh, %.lr.ph76.i.i.us ], [ %.4.i, %.lr.ph76.i.i.preheader ] ; 3 uses
  %.275.i.i.us = phi i64 [ %i.di, %.lr.ph76.i.i.us ], [ %.0.lcssa.i.i, %.lr.ph76.i.i.preheader ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.275.i.i.us
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !206
  %i.cz = zext i32 %i.cy to i64                   ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.cz
  %i.db = load i64, ptr %i.da, align 8, !tbaa !218
  %i.dc = sub i64 %i.db, %i.j
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.cz ; 2 uses
  %.sroa.0.0.copyload.i.i63.i.i.us = load i64, ptr %i.dd, align 8
  %.sroa.2.0..sroa_idx.i.i64.i.i.us = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.sroa.2.0.copyload.i.i65.i.i.us = load ptr, ptr %.sroa.2.0..sroa_idx.i.i64.i.i.us, align 8, !tbaa !273
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %9, i64 %.7.i.us ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i63.i.i.us, ptr %i.de, align 16
end_hunk_6
begin_hunk_7_@_ZN6duckdbL15MergeUpdateLoopINS_8string_tEEEvRNS_10UpdateInfoERNS_6VectorES3_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm:bb.a
  %.neg = add i64 %.0.lcssa.i.i, 1
  %xtraiter = and i64 %i.dj, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph76.i.us.us.i.prol.loopexit, label %.lr.ph76.i.us.us.i.prol

.lr.ph76.i.us.us.i.prol:                          ; preds = %.lr.ph76.i.us.us.i.preheader
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !218
  %i.dm = sub i64 %i.dl, %i.j
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.0.lcssa.i.i ; 2 uses
  %.sroa.0.0.copyload.i.i63.i.us.us.i.prol = load i64, ptr %i.dn, align 8
  %.sroa.2.0..sroa_idx.i.i64.i.us.us.i.prol = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %.sroa.2.0.copyload.i.i65.i.us.us.i.prol = load ptr, ptr %.sroa.2.0..sroa_idx.i.i64.i.us.us.i.prol, align 8, !tbaa !273
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %9, i64 %.4.i ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i63.i.us.us.i.prol, ptr %i.do, align 16
  %.sroa.4.0..sroa_idx.i66.i.us.us.i.prol = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store ptr %.sroa.2.0.copyload.i.i65.i.us.us.i.prol, ptr %.sroa.4.0..sroa_idx.i66.i.us.us.i.prol, align 8, !tbaa !273
  %i.dp = trunc i64 %i.dm to i32
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.4.i
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !206
  %i.dr = add nuw nsw i64 %.4.i, 1                ; 2 uses
  %i.ds = add nuw i64 %.0.lcssa.i.i, 1
  br label %.lr.ph76.i.us.us.i.prol.loopexit

.lr.ph76.i.us.us.i.prol.loopexit:                 ; preds = %.lr.ph76.i.us.us.i.prol, %.lr.ph76.i.us.us.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph76.i.us.us.i.preheader ], [ %i.dr, %.lr.ph76.i.us.us.i.prol ]
  %.7.us.us.i.unr = phi i64 [ %.4.i, %.lr.ph76.i.us.us.i.preheader ], [ %i.dr, %.lr.ph76.i.us.us.i.prol ]
  %.275.i.us.us.i.unr = phi i64 [ %.0.lcssa.i.i, %.lr.ph76.i.us.us.i.preheader ], [ %i.ds, %.lr.ph76.i.us.us.i.prol ]
  %i.dt = icmp eq i64 %5, %.neg
  br i1 %i.dt, label %.preheader.i.i, label %.lr.ph76.i.us.us.i

.lr.ph76.i.us.us.i:                               ; preds = %.lr.ph76.i.us.us.i.prol.loopexit, %.lr.ph76.i.us.us.i
  %.7.us.us.i = phi i64 [ %i.ek, %.lr.ph76.i.us.us.i ], [ %.7.us.us.i.unr, %.lr.ph76.i.us.us.i.prol.loopexit ] ; 4 uses
  %.275.i.us.us.i = phi i64 [ %i.el, %.lr.ph76.i.us.us.i ], [ %.275.i.us.us.i.unr, %.lr.ph76.i.us.us.i.prol.loopexit ] ; 4 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.275.i.us.us.i
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !218
  %i.dw = sub i64 %i.dv, %i.j
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.275.i.us.us.i ; 2 uses
  %.sroa.0.0.copyload.i.i63.i.us.us.i = load i64, ptr %i.dx, align 8
  %.sroa.2.0..sroa_idx.i.i64.i.us.us.i = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %.sroa.2.0.copyload.i.i65.i.us.us.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i64.i.us.us.i, align 8, !tbaa !273
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %9, i64 %.7.us.us.i ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i63.i.us.us.i, ptr %i.dy, align 16
  %.sroa.4.0..sroa_idx.i66.i.us.us.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store ptr %.sroa.2.0.copyload.i.i65.i.us.us.i, ptr %.sroa.4.0..sroa_idx.i66.i.us.us.i, align 8, !tbaa !273
  %i.dz = trunc i64 %i.dw to i32
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.7.us.us.i
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !206
  %i.eb = add nuw nsw i64 %.7.us.us.i, 1          ; 2 uses
  %i.ec = add nuw i64 %.275.i.us.us.i, 1          ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ec
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !218
  %i.ef = sub i64 %i.ee, %i.j
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.ec ; 2 uses
  %.sroa.0.0.copyload.i.i63.i.us.us.i.1 = load i64, ptr %i.eg, align 8
  %.sroa.2.0..sroa_idx.i.i64.i.us.us.i.1 = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %.sroa.2.0.copyload.i.i65.i.us.us.i.1 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i64.i.us.us.i.1, align 8, !tbaa !273
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %9, i64 %i.eb ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i63.i.us.us.i.1, ptr %i.eh, align 16
  %.sroa.4.0..sroa_idx.i66.i.us.us.i.1 = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store ptr %.sroa.2.0.copyload.i.i65.i.us.us.i.1, ptr %.sroa.4.0..sroa_idx.i66.i.us.us.i.1, align 8, !tbaa !273
  %i.ei = trunc i64 %i.ef to i32
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.eb
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !206
  %i.ek = add nuw nsw i64 %.7.us.us.i, 2          ; 2 uses
  %i.el = add nuw i64 %.275.i.us.us.i, 2          ; 2 uses
  %exitcond.not.i.us.us.i.1 = icmp eq i64 %i.el, %5
  br i1 %exitcond.not.i.us.us.i.1, label %.preheader.i.i, label %.lr.ph76.i.us.us.i, !llvm.loop !4724

.lr.ph76.i.us.i:                                  ; preds = %.lr.ph76.i.preheader.split.us.i, %.lr.ph76.i.us.i
  %.7.us.i = phi i64 [ %i.ew, %.lr.ph76.i.us.i ], [ %.4.i, %.lr.ph76.i.preheader.split.us.i ] ; 3 uses
  %.275.i.us.i = phi i64 [ %i.ex, %.lr.ph76.i.us.i ], [ %.0.lcssa.i.i, %.lr.ph76.i.preheader.split.us.i ] ; 3 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.275.i.us.i
  %i.en = load i64, ptr %i.em, align 8, !tbaa !218
  %i.eo = sub i64 %i.en, %i.j
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %.275.i.us.i
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !206
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.er ; 2 uses
  %.sroa.0.0.copyload.i.i63.i.us.i = load i64, ptr %i.es, align 8
  %.sroa.2.0..sroa_idx.i.i64.i.us.i = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %.sroa.2.0.copyload.i.i65.i.us.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i64.i.us.i, align 8, !tbaa !273
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %9, i64 %.7.us.i ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i63.i.us.i, ptr %i.et, align 16
  %.sroa.4.0..sroa_idx.i66.i.us.i = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store ptr %.sroa.2.0.copyload.i.i65.i.us.i, ptr %.sroa.4.0..sroa_idx.i66.i.us.i, align 8, !tbaa !273
  %i.eu = trunc i64 %i.eo to i32
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.7.us.i
  store i32 %i.eu, ptr %i.ev, align 4, !tbaa !206
  %i.ew = add nuw nsw i64 %.7.us.i, 1             ; 2 uses
  %i.ex = add nuw i64 %.275.i.us.i, 1             ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %i.ex, %5
  br i1 %exitcond.not.i.us.i, label %.preheader.i.i, label %.lr.ph76.i.us.i, !llvm.loop !4724

.lr.ph.i.i:                                       ; preds = %bb.t, %.lr.ph.i.preheader.i
  %.8.i = phi i64 [ %.9.i, %bb.t ], [ 0, %.lr.ph.i.preheader.i ] ; 7 uses
  %.071.i.i = phi i64 [ %.1.i.i, %bb.t ], [ 0, %.lr.ph.i.preheader.i ] ; 5 uses
  %.05469.i.i = phi i64 [ %.155.i.i, %bb.t ], [ 0, %.lr.ph.i.preheader.i ] ; 5 uses
  br i1 %.not.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %.071.i.i
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !206
  %i.fa = zext i32 %i.ez to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i: ; preds = %bb.m, %.lr.ph.i.i
  %i.fb = phi i64 [ %i.fa, %bb.m ], [ %.071.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fb
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !218
  %i.fe = sub i64 %i.fd, %i.j                     ; 4 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.05469.i.i
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !206 ; 2 uses
  %i.fh = zext i32 %i.fg to i64                   ; 2 uses
  %i.fi = icmp eq i64 %i.fe, %i.fh
  br i1 %i.fi, label %bb.n, label %bb.p

bb.n:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.fj = load ptr, ptr %i.f, align 8, !tbaa !305 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i.i.i, label %_ZZN6duckdbL23MergeUpdateLoopInternalINS_8string_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmmE_clEmmmm.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.fb
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !206
  %i.fm = zext i32 %i.fl to i64
  br label %_ZZN6duckdbL23MergeUpdateLoopInternalINS_8string_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmmE_clEmmmm.exit.i.i

_ZZN6duckdbL23MergeUpdateLoopInternalINS_8string_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmmE_clEmmmm.exit.i.i: ; preds = %bb.o, %bb.n
  %i.fn = phi i64 [ %i.fm, %bb.o ], [ %i.fb, %bb.n ]
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.fn ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.fo, align 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !273
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %9, i64 %.8.i ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.fp, align 16
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store ptr %.sroa.2.0.copyload.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !273
  %i.fq = trunc nuw i64 %i.fe to i32
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.8.i
  store i32 %i.fq, ptr %i.fr, align 4, !tbaa !206
  %i.fs = add nuw i64 %.071.i.i, 1
  %i.ft = add nuw nsw i64 %.05469.i.i, 1
  br label %bb.t

bb.p:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.fu = icmp ult i64 %i.fe, %i.fh
  br i1 %i.fu, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.fv = load ptr, ptr %i.f, align 8, !tbaa !305 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fv, null
  br i1 %.not.i.i.i.i, label %_ZZN6duckdbL23MergeUpdateLoopInternalINS_8string_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmE_clEmmm.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.fb
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !206
  %i.fy = zext i32 %i.fx to i64
  br label %_ZZN6duckdbL23MergeUpdateLoopInternalINS_8string_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmE_clEmmm.exit.i.i

_ZZN6duckdbL23MergeUpdateLoopInternalINS_8string_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmE_clEmmm.exit.i.i: ; preds = %bb.r, %bb.q
  %i.fz = phi i64 [ %i.fy, %bb.r ], [ %i.fb, %bb.q ]
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.fz ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ga, align 8
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !273
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %9, i64 %.8.i ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %i.gb, align 16
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  store ptr %.sroa.2.0.copyload.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !273
  %i.gc = trunc nuw i64 %i.fe to i32
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.8.i
  store i32 %i.gc, ptr %i.gd, align 4, !tbaa !206
  %i.ge = add nuw i64 %.071.i.i, 1
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.gf = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.05469.i.i
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %9, i64 %.8.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.gg, ptr noundef nonnull align 8 dereferenceable(16) %i.gf, i64 16, i1 false), !tbaa.struct !1899
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.8.i
  store i32 %i.fg, ptr %i.gh, align 4, !tbaa !206
  %i.gi = add nuw nsw i64 %.05469.i.i, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZZN6duckdbL23MergeUpdateLoopInternalINS_8string_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmE_clEmmm.exit.i.i, %_ZZN6duckdbL23MergeUpdateLoopInternalINS_8string_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmmE_clEmmmm.exit.i.i
  %.155.i.i = phi i64 [ %i.ft, %_ZZN6duckdbL23MergeUpdateLoopInternalINS_8string_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmmE_clEmmmm.exit.i.i ], [ %.05469.i.i, %_ZZN6duckdbL23MergeUpdateLoopInternalINS_8string_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmE_clEmmm.exit.i.i ], [ %i.gi, %bb.s ] ; 3 uses
  %.1.i.i = phi i64 [ %i.fs, %_ZZN6duckdbL23MergeUpdateLoopInternalINS_8string_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmmE_clEmmmm.exit.i.i ], [ %i.ge, %_ZZN6duckdbL23MergeUpdateLoopInternalINS_8string_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_mENKUlmmmE_clEmmm.exit.i.i ], [ %.071.i.i, %bb.s ] ; 3 uses
  %.9.i = add i64 %.8.i, 1                        ; 2 uses
  %i.gj = icmp ult i64 %.1.i.i, %5
  %i.gk = icmp ult i64 %.155.i.i, %i.cq
  %i.gl = select i1 %i.gj, i1 %i.gk, i1 false
  br i1 %i.gl, label %.lr.ph.i.i, label %.preheader68.i.i, !llvm.loop !4725

.preheader.i.i:                                   ; preds = %.lr.ph76.i.i, %.lr.ph76.i.i.us, %.lr.ph76.i.us.i, %.lr.ph76.i.us.us.i.prol.loopexit, %.lr.ph76.i.us.us.i, %.preheader68.i.i
  %.5.i = phi i64 [ %.4.i, %.preheader68.i.i ], [ %i.dh, %.lr.ph76.i.i.us ], [ %i.ew, %.lr.ph76.i.us.i ], [ %i.ek, %.lr.ph76.i.us.us.i ], [ %.lcssa.unr, %.lr.ph76.i.us.us.i.prol.loopexit ], [ %i.hl, %.lr.ph76.i.i ] ; 4 uses
  %i.gm = icmp ult i64 %.054.lcssa.i.i, %i.cq
  br i1 %i.gm, label %.lr.ph80.i.preheader.i, label %_ZN6duckdbL23MergeUpdateLoopInternalINS_8string_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_m.exit

.lr.ph80.i.preheader.i:                           ; preds = %.preheader.i.i
  %i.gn = shl i64 %.5.i, 2
  %scevgep181.i = getelementptr i8, ptr %i.a, i64 %i.gn
  %i.go = shl nuw nsw i64 %.054.lcssa.i.i, 2
  %i.gp = getelementptr i8, ptr %0, i64 %i.go
  %scevgep182.i = getelementptr i8, ptr %i.gp, i64 88
  %i.gq = sub nuw nsw i64 %i.cq, %.054.lcssa.i.i  ; 3 uses
  %i.gr = shl nuw nsw i64 %i.gq, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep181.i, ptr align 4 %scevgep182.i, i64 %i.gr, i1 false), !tbaa !206
  %i.gs = shl i64 %.5.i, 4
  %scevgep183.i = getelementptr i8, ptr %9, i64 %i.gs
  %i.gt = shl nuw nsw i64 %.054.lcssa.i.i, 4
  %i.gu = getelementptr i8, ptr %0, i64 %i.gt
  %i.gv = getelementptr i8, ptr %i.gu, i64 %i.o
  %scevgep184.i = getelementptr i8, ptr %i.gv, i64 88
  %i.gw = shl nuw nsw i64 %i.gq, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %scevgep183.i, ptr align 8 %scevgep184.i, i64 %i.gw, i1 false)
  %i.gx = add i64 %i.gq, %.5.i
  br label %_ZN6duckdbL23MergeUpdateLoopInternalINS_8string_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_m.exit

.lr.ph76.i.i:                                     ; preds = %.lr.ph76.i.i.preheader, %.lr.ph76.i.i
  %.7.i = phi i64 [ %i.hl, %.lr.ph76.i.i ], [ %.4.i, %.lr.ph76.i.i.preheader ] ; 3 uses
  %.275.i.i = phi i64 [ %i.hm, %.lr.ph76.i.i ], [ %.0.lcssa.i.i, %.lr.ph76.i.i.preheader ] ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.275.i.i
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !206
  %i.ha = zext i32 %i.gz to i64                   ; 2 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ha
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !218
  %i.hd = sub i64 %i.hc, %i.j
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.ha
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !206
  %i.hg = zext i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.hg ; 2 uses
  %.sroa.0.0.copyload.i.i63.i.i = load i64, ptr %i.hh, align 8
  %.sroa.2.0..sroa_idx.i.i64.i.i = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %.sroa.2.0.copyload.i.i65.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i64.i.i, align 8, !tbaa !273
  %i.hi = getelementptr inbounds nuw [16 x i8], ptr %9, i64 %.7.i ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i63.i.i, ptr %i.hi, align 16
  %.sroa.4.0..sroa_idx.i66.i.i = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  store ptr %.sroa.2.0.copyload.i.i65.i.i, ptr %.sroa.4.0..sroa_idx.i66.i.i, align 8, !tbaa !273
  %i.hj = trunc i64 %i.hd to i32
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.7.i
  store i32 %i.hj, ptr %i.hk, align 4, !tbaa !206
  %i.hl = add nuw nsw i64 %.7.i, 1                ; 2 uses
  %i.hm = add nuw i64 %.275.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.hm, %5
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %.lr.ph76.i.i, !llvm.loop !4724

_ZN6duckdbL23MergeUpdateLoopInternalINS_8string_tES1_NS_20ExtractStandardEntryEEEvRNS_10UpdateInfoEPT0_S4_RKNS_15SelectionVectorEPKS5_PlmS9_m.exit: ; preds = %.preheader.i.i, %.lr.ph80.i.preheader.i
  %.10.i = phi i64 [ %.5.i, %.preheader.i.i ], [ %i.gx, %.lr.ph80.i.preheader.i ] ; 3 uses
  %i.hn = trunc i64 %.10.i to i32
  store i32 %i.hn, ptr %i.co, align 8, !tbaa !932
  %i.ho = shl i64 %.10.i, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull align 16 %9, i64 %i.ho, i1 false)
  %i.hp = shl i64 %.10.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr nonnull align 16 %i.a, i64 %i.hp, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10shared_ptrINS_13SelectionDataELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.17", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !956    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EE13AssertNotNullEb.exit, !prof !274

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.180, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !227    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #37
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb13SelectionDataESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb13SelectionDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #37
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb13SelectionDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb13SelectionDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb13SelectionDataESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1903 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !273
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #37
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

declare void @_ZN6duckdb13SelectionDataC1Em(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #31

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN6duckdb32TemplatedUpdateNumericStatisticsIaEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(73) %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIaEEvv(ptr noundef nonnull align 8 dereferenceable(73) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1209 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !267
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 25
  store i8 1, ptr %i.e, align 1, !tbaa !1314
  %.not47 = icmp eq i64 %3, 0
  br i1 %.not47, label %._crit_edge, label %.lr.ph45

.lr.ph45:                                         ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
end_hunk_7
