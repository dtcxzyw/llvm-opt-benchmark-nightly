Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/imgtool?download=true
inline.NumInlined: 9676
inline.NumDeleted: 2116
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 158
loop-unroll.NumUnrolled: 216
begin_hunk_0_@_ZN4pbrt6detail21stringPrintfRecursiveIRA44_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_:bb.a
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  ret void

bb.z:                                             ; preds = %.body42, %bb.q, %bb.b
  %.pn24 = phi { ptr, i32 } [ %i.e, %bb.b ], [ %.pn19.pn.pn.pn, %bb.q ], [ %.pn, %.body42 ]
  %i.ea = load ptr, ptr %3, align 8, !tbaa !48    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.z
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !46
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  resume { ptr, i32 } %.pn24
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(41) ptr @_ZN4pstd8optionalIN4pbrt11ThreadLocalINS1_7Array2DISt6vectorINS1_17VarianceEstimatorIdEESaIS6_EEEEE5EntryEEaSEOSB_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !262, !range !161, !noundef !162
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS1_7Array2DISt6vectorINS1_17VarianceEstimatorIdEESaIS6_EEEEE5EntryEE5valueEv.exit.i, label %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS1_7Array2DISt6vectorINS1_17VarianceEstimatorIdEESaIS6_EEEEE5EntryEE5resetEv.exit

_ZN4pstd8optionalIN4pbrt11ThreadLocalINS1_7Array2DISt6vectorINS1_17VarianceEstimatorIdEESaIS6_EEEEE5EntryEE5valueEv.exit.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.d, align 8 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i.i.i = trunc i64 %.sroa.0.0.copyload.i.i.i.i to i32
  %.sroa.2.0.extract.shift.i.i.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i.i.i, 32
  %.sroa.2.0.extract.trunc.i.i.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i.i to i32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !151
  %i.g = sub nsw i32 %i.f, %.sroa.0.0.extract.trunc.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !152
  %i.j = sub nsw i32 %i.i, %.sroa.2.0.extract.trunc.i.i.i.i.i
  %i.k = mul nsw i32 %i.j, %i.g                   ; 3 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS1_7Array2DISt6vectorINS1_17VarianceEstimatorIdEESaIS6_EEEEE5EntryEE5valueEv.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %wide.trip.count.i.i.i = zext nneg i32 %i.k to i64
  br label %bb.c

._crit_edge.i.i.i:                                ; preds = %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE7destroyISt6vectorIN4pbrt17VarianceEstimatorIdEESaIS8_EEEEvPT_.exit.i.i.i, %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS1_7Array2DISt6vectorINS1_17VarianceEstimatorIdEESaIS6_EEEEE5EntryEE5valueEv.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !259  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4pbrt11ThreadLocalINS_7Array2DISt6vectorINS_17VarianceEstimatorIdEESaIS4_EEEEE5EntryD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.p = sext i32 %i.k to i64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = mul nsw i64 %i.p, 24
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !277  ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !122
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  invoke void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull %i.o, i64 noundef %i.r, i64 noundef 8)
          to label %_ZN4pbrt11ThreadLocalINS_7Array2DISt6vectorINS_17VarianceEstimatorIdEESaIS4_EEEEE5EntryD2Ev.exit.i unwind label %bb.e, !inline_history !14

bb.c:                                             ; preds = %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE7destroyISt6vectorIN4pbrt17VarianceEstimatorIdEESaIS8_EEEEvPT_.exit.i.i.i, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE7destroyISt6vectorIN4pbrt17VarianceEstimatorIdEESaIS8_EEEEvPT_.exit.i.i.i ] ; 2 uses
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !259
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %indvars.iv.i.i.i ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !265  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE7destroyISt6vectorIN4pbrt17VarianceEstimatorIdEESaIS8_EEEEvPT_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !271
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #38
  br label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE7destroyISt6vectorIN4pbrt17VarianceEstimatorIdEESaIS8_EEEEvPT_.exit.i.i.i

_ZN4pstd3pmr21polymorphic_allocatorISt4byteE7destroyISt6vectorIN4pbrt17VarianceEstimatorIdEESaIS8_EEEEvPT_.exit.i.i.i: ; preds = %bb.d, %bb.c
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %bb.c, !llvm.loop !15

bb.e:                                             ; preds = %bb.b
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.af) #40
  unreachable

_ZN4pbrt11ThreadLocalINS_7Array2DISt6vectorINS_17VarianceEstimatorIdEESaIS4_EEEEE5EntryD2Ev.exit.i: ; preds = %bb.b, %._crit_edge.i.i.i
  store i8 0, ptr %i.a, align 8, !tbaa !262
  br label %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS1_7Array2DISt6vectorINS1_17VarianceEstimatorIdEESaIS6_EEEEE5EntryEE5resetEv.exit

_ZN4pstd8optionalIN4pbrt11ThreadLocalINS1_7Array2DISt6vectorINS1_17VarianceEstimatorIdEESaIS6_EEEEE5EntryEE5resetEv.exit: ; preds = %bb.a, %_ZN4pbrt11ThreadLocalINS_7Array2DISt6vectorINS_17VarianceEstimatorIdEESaIS4_EEEEE5EntryD2Ev.exit.i
  %i.ag = load i64, ptr %1, align 8, !tbaa !47
  store i64 %i.ag, ptr %0, align 8, !tbaa !47
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.aj = tail call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #37 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.cast.i.i = ptrtoint ptr %i.aj to i64
  store i64 %.cast.i.i, ptr %i.ak, align 8, !tbaa !153
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !277
  %i.an = icmp eq ptr %i.aj, %i.am
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS1_7Array2DISt6vectorINS1_17VarianceEstimatorIdEESaIS6_EEEEE5EntryEE5resetEv.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !259
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !259
  store ptr null, ptr %i.ao, align 8, !tbaa !259
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i8 0, i64 16, i1 false)
  br label %_ZN4pbrt11ThreadLocalINS_7Array2DISt6vectorINS_17VarianceEstimatorIdEESaIS4_EEEEE5EntryC2EOS9_.exit

bb.g:                                             ; preds = %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS1_7Array2DISt6vectorINS1_17VarianceEstimatorIdEESaIS6_EEEEE5EntryEE5resetEv.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ah, align 8 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i8.i.i = trunc i64 %.sroa.0.0.copyload.i.i.i to i32
  %.sroa.2.0.extract.shift.i.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i.i, 32
  %.sroa.2.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i to i32
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !151
  %i.at = sub nsw i32 %i.as, %.sroa.0.0.extract.trunc.i.i8.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.av = load i32, ptr %i.au, align 4, !tbaa !152
  %i.aw = sub nsw i32 %i.av, %.sroa.2.0.extract.trunc.i.i.i.i
  %i.ax = mul nsw i32 %i.aw, %i.at                ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectISt6vectorIN4pbrt17VarianceEstimatorIdEESaIS8_EEEEPT_m.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = sext i32 %i.ax to i64
  %i.ba = mul nsw i64 %i.az, 24
  %i.bb = load ptr, ptr %i.aj, align 8, !tbaa !122
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = tail call noundef ptr %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, i64 noundef %i.ba, i64 noundef 8), !inline_history !2650
  br label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectISt6vectorIN4pbrt17VarianceEstimatorIdEESaIS8_EEEEPT_m.exit.i.i

_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectISt6vectorIN4pbrt17VarianceEstimatorIdEESaIS8_EEEEPT_m.exit.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i = phi ptr [ %i.be, %bb.h ], [ null, %bb.g ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.0.i.i.i.i.i, ptr %i.bf, align 8, !tbaa !259
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.ai, align 8 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i.i.i.i = trunc i64 %.sroa.0.0.copyload.i.i.i.i.i to i32
  %.sroa.2.0.extract.shift.i.i.i.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i.i.i.i, 32
  %.sroa.2.0.extract.trunc.i.i.i.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i.i.i to i32
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !151
  %i.bi = sub nsw i32 %i.bh, %.sroa.0.0.extract.trunc.i.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !152
  %i.bl = sub nsw i32 %i.bk, %.sroa.2.0.extract.trunc.i.i.i.i.i.i
  %i.bm = mul nsw i32 %i.bl, %i.bi                ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %_ZN4pbrt11ThreadLocalINS_7Array2DISt6vectorINS_17VarianceEstimatorIdEESaIS4_EEEEE5EntryC2EOS9_.exit

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectISt6vectorIN4pbrt17VarianceEstimatorIdEESaIS8_EEEEPT_m.exit.i.i
  %i.bo = zext nneg i32 %i.bm to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !259
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.bu, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bo, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bq, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %i.br = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4pbrt17VarianceEstimatorIdEESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %.0811.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0910.i.i.i.i.i.i.i) ; 0 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 24
  %i.bu = add nsw i64 %.012.i.i.i.i.i.i.i, -1
  %i.bv = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i, 1
  br i1 %i.bv, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN4pbrt11ThreadLocalINS_7Array2DISt6vectorINS_17VarianceEstimatorIdEESaIS4_EEEEE5EntryC2EOS9_.exit, !llvm.loop !29

_ZN4pbrt11ThreadLocalINS_7Array2DISt6vectorINS_17VarianceEstimatorIdEESaIS4_EEEEE5EntryC2EOS9_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.f, %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectISt6vectorIN4pbrt17VarianceEstimatorIdEESaIS8_EEEEPT_m.exit.i.i
  store i8 1, ptr %i.a, align 8, !tbaa !262
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4pbrt17VarianceEstimatorIdEESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !270
  %i.c = load ptr, ptr %1, align 8, !tbaa !265    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !271
  %i.i = load ptr, ptr %0, align 8, !tbaa !265    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 24
  %i.o = icmp ugt i64 %i.n, 384307168202282325
  br i1 %i.o, label %bb.d, label %.lr.ph.i.i.i.i.preheader.i, !prof !308

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #39
  unreachable

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #44 ; 3 uses
  %i.p = add i64 %i.d, -24
  %i.q = sub i64 %i.p, %i.e
  %.fr.i = freeze i64 %i.q                        ; 2 uses
  %i.r = urem i64 %.fr.i, 24
  %i.s = add i64 %.fr.i, 24
  %i.t = sub i64 %i.s, %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr align 8 %i.c, i64 %i.t, i1 false)
  %3 = load ptr, ptr %0, align 8, !tbaa !265      ; 3 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4pbrt17VarianceEstimatorIdEESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.preheader.i
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !271
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %3 to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %i.x) #38
  br label %_ZNSt12_Vector_baseIN4pbrt17VarianceEstimatorIdEESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4pbrt17VarianceEstimatorIdEESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %.lr.ph.i.i.i.i.preheader.i, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !265
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.y, ptr %i.g, align 8, !tbaa !271
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4pbrt17VarianceEstimatorIdEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.f:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !270
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.ac, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp sgt i64 %i.f, 24
  br i1 %i.ad, label %bb.h, label %bb.i, !prof !272

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4pbrt17VarianceEstimatorIdEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.i:                                             ; preds = %bb.g
  %i.ae = icmp eq i64 %i.f, 24
  br i1 %i.ae, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4pbrt17VarianceEstimatorIdEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !350
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4pbrt17VarianceEstimatorIdEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.k:                                             ; preds = %bb.f
  %i.af = icmp sgt i64 %i.ac, 24
  br i1 %i.af, label %bb.l, label %bb.m, !prof !272

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.ac, i1 false)
  br label %_ZSt4copyIPN4pbrt17VarianceEstimatorIdEES3_ET0_T_S5_S4_.exit

bb.m:                                             ; preds = %bb.k
  %i.ag = icmp eq i64 %i.ac, 24
  br i1 %i.ag, label %bb.n, label %_ZSt4copyIPN4pbrt17VarianceEstimatorIdEES3_ET0_T_S5_S4_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !350
  br label %_ZSt4copyIPN4pbrt17VarianceEstimatorIdEES3_ET0_T_S5_S4_.exit

_ZSt4copyIPN4pbrt17VarianceEstimatorIdEES3_ET0_T_S5_S4_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.ah = load ptr, ptr %1, align 8, !tbaa !265
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !270 ; 2 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !265
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.am ; 2 uses
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !270 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.an, %i.ao
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4pbrt17VarianceEstimatorIdEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN4pbrt17VarianceEstimatorIdEES3_ET0_T_S5_S4_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %i.ai, %_ZSt4copyIPN4pbrt17VarianceEstimatorIdEES3_ET0_T_S5_S4_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i ], [ %i.an, %_ZSt4copyIPN4pbrt17VarianceEstimatorIdEES3_ET0_T_S5_S4_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0810.i.i.i.i, i64 24, i1 false), !tbaa.struct !350
  %i.ap = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 24 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.ap, %i.ao
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4pbrt17VarianceEstimatorIdEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2651

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4pbrt17VarianceEstimatorIdEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPN4pbrt17VarianceEstimatorIdEES3_ET0_T_S5_S4_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN4pbrt17VarianceEstimatorIdEESaIS2_EE13_M_deallocateEPS2_m.exit
  %i.ar = load ptr, ptr %0, align 8, !tbaa !265
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.f
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.at, align 8, !tbaa !270
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4pbrt17VarianceEstimatorIdEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt6detail21stringPrintfRecursiveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRiS8_S9_EEEvPS7_PKcOT_DpOT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %7 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  store ptr %1, ptr %i.c, align 8, !tbaa !195
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  call void @_ZN4pbrt6detail18copyToFormatStringEPPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull %i.c, ptr noundef %0)
  %i.d = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 noundef signext 42, i64 noundef 0) #37
  %.not = icmp eq i64 %i.d, -1
  %i.e = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 noundef signext 115, i64 noundef 0) #37
  %.not19 = icmp eq i64 %i.e, -1
  %i.f = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 noundef signext 100, i64 noundef 0) #37
  br i1 %.not, label %bb.c, label %.invoke

bb.b:                                             ; preds = %.invoke, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %.not20 = icmp eq i64 %i.f, -1
  br i1 %.not20, label %bb.d, label %.invoke

bb.d:                                             ; preds = %bb.c
  br i1 %.not19, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %7)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !48
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !45
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %i.i, i64 noundef %i.k)
          to label %_ZN4pbrt6detaillsERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.n ; 0 uses

_ZN4pbrt6detaillsERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  %i.m = load ptr, ptr %6, align 8, !tbaa !48     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !2658)
  call void @llvm.experimental.noalias.scope.decl(metadata !2659)
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.n, ptr %9, align 8, !tbaa !42, !alias.scope !2660
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !45, !alias.scope !2660
  store i8 0, ptr %i.n, align 8, !tbaa !46, !alias.scope !2660
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !314, !noalias !2660 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.q, null
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !noalias !2660 ; 2 uses
  %i.t = icmp ugt ptr %i.q, %i.s
  %.08.i.i.i = select i1 %i.t, ptr %i.q, ptr %i.s ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN4pbrt6detaillsERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !315, !noalias !2660 ; 2 uses
  %i.w = ptrtoint ptr %.08.i.i.i to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.v, i64 noundef %i.y)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %9, align 8, !tbaa !48, !alias.scope !2660 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.n
  br i1 %i.ac, label %.body, label %.body.sink.split

bb.i:                                             ; preds = %_ZN4pbrt6detaillsERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.i, %bb.g
  %i.ae = load ptr, ptr %9, align 8, !tbaa !48    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2661)
  %i.af = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef %i.m, ptr noundef %i.ae) #37, !noalias !2661
  %i.ag = add nsw i32 %i.af, 1
  %i.ah = sext i32 %i.ag to i64                   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.ai, ptr %8, align 8, !tbaa !42, !alias.scope !2661
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 0, ptr %i.aj, align 8, !tbaa !45, !alias.scope !2661
  store i8 0, ptr %i.ai, align 8, !tbaa !46, !alias.scope !2661
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.ah, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ak = load ptr, ptr %8, align 8, !tbaa !48, !alias.scope !2661
  %i.al = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ak, i64 noundef %i.ah, ptr noundef %i.m, ptr noundef %i.ae) #37 ; 0 uses
  %i.am = load i64, ptr %i.aj, align 8, !tbaa !45, !alias.scope !2661
  %i.an = add i64 %i.am, -1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.an, i64 noundef 1)
          to label %_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit unwind label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #40
  unreachable

bb.k:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %8, align 8, !tbaa !48, !alias.scope !2661 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ai
  br i1 %i.as, label %.body29, label %.body29.sink.split
end_hunk_0
