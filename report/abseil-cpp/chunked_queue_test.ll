Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/chunked_queue_test?download=true
inline.NumInlined: 6731
inline.NumDeleted: 2085
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN12_GLOBAL__N_131ChunkedQueue_AssignShrinks_Test8TestBodyEv:bb.a

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %bb.ai, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 8) #24
  %i.ch = load ptr, ptr %1, align 8, !tbaa !152   ; 2 uses
  %.not7.i = icmp eq ptr %i.ch, null
  br i1 %.not7.i, label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEED2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %.lr.ph.i
  %.08.i = phi ptr [ %i.ci, %.lr.ph.i ], [ %i.ch, %_ZNSt6vectorIlSaIlEED2Ev.exit ] ; 2 uses
  %i.ci = load ptr, ptr %.08.i, align 8, !tbaa !58 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.08.i) #22
  %.not.i = icmp eq ptr %i.ci, null
  br i1 %.not.i, label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEED2Ev.exit, label %.lr.ph.i

_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEED2Ev.exit: ; preds = %.lr.ph.i, %_ZNSt6vectorIlSaIlEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void

bb.ak:                                            ; preds = %_ZN7testing7MessageD2Ev.exit38, %bb.y
  %.pn17.pn.pn = phi { ptr, i32 } [ %.pn17.pn, %_ZN7testing7MessageD2Ev.exit38 ], [ %i.bk, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit48

_ZNSt6vectorIlSaIlEED2Ev.exit48:                  ; preds = %bb.ak, %bb.x, %bb.i
  %.pn17.pn.pn.pn = phi { ptr, i32 } [ %.pn17.pn.pn, %bb.ak ], [ %.pn.pn.pn, %bb.x ], [ %i.ai, %bb.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 8) #24
  br label %.body

.body:                                            ; preds = %_ZNSt12_Vector_baseIlSaIlEED2Ev.exit.i, %_ZNSt6vectorIlSaIlEED2Ev.exit48
  %.pn17.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn17.pn.pn.pn, %_ZNSt6vectorIlSaIlEED2Ev.exit48 ], [ %i.ae, %_ZNSt12_Vector_baseIlSaIlEED2Ev.exit.i ]
  %i.cj = load ptr, ptr %1, align 8, !tbaa !152   ; 2 uses
  %.not7.i49 = icmp eq ptr %i.cj, null
  br i1 %.not7.i49, label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEED2Ev.exit53, label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %.body, %.lr.ph.i50
  %.08.i51 = phi ptr [ %i.ck, %.lr.ph.i50 ], [ %i.cj, %.body ] ; 2 uses
  %i.ck = load ptr, ptr %.08.i51, align 8, !tbaa !58 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.08.i51) #22
  %.not.i52 = icmp eq ptr %i.ck, null
  br i1 %.not.i52, label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEED2Ev.exit53, label %.lr.ph.i50

_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEED2Ev.exit53: ; preds = %.lr.ph.i50, %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  resume { ptr, i32 } %.pn17.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_141ChunkedQueue_AssignBoundaryCondition_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_141ChunkedQueue_AssignBoundaryCondition_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_141ChunkedQueue_AssignBoundaryCondition_TestE, i64 16), ptr %i.a, align 8, !tbaa !43
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #24
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_141ChunkedQueue_AssignBoundaryCondition_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_141ChunkedQueue_AssignBoundaryCondition_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20260526::chunked_queue.322", align 8 ; 16 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"class.testing::Message", align 8  ; 7 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"class.testing::Message", align 8  ; 7 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %14 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %15 = alloca %"class.testing::Message", align 8 ; 7 uses
  %16 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false)
  %.sroa.45.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.56.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 8 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.critedge.i.i.i, %bb.a
  %i.j = phi i64 [ 0, %bb.a ], [ %.lcssa, %.critedge.i.i.i ] ; 6 uses
  %i.k = phi ptr [ null, %bb.a ], [ %i.aa, %.critedge.i.i.i ] ; 2 uses
  %i.l = phi ptr [ null, %bb.a ], [ %i.u, %.critedge.i.i.i ] ; 4 uses
  %.015.i.i.i.idx = phi i64 [ 0, %bb.a ], [ %.111.i.i.i.idx.lcssa, %.critedge.i.i.i ] ; 9 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE12NewBlockSizeEv.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !195
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = ptrtoint ptr %i.n to i64
  %reass.sub = sub i64 %i.p, %i.o
  %i.q = add i64 %reass.sub, -16
  %i.r = ashr exact i64 %i.q, 1
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.r, i64 4)
  %i.s = shl nuw nsw i64 %.sroa.speculated.i.i.i.i.i, 2
  br label %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE12NewBlockSizeEv.exit.i.i.i.i

_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE12NewBlockSizeEv.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i.i.i = phi i64 [ %i.s, %bb.c ], [ 16, %bb.b ] ; 4 uses
  %i.t = add nuw nsw i64 %.0.i.i.i.i.i, 16
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #26 ; 8 uses
  store ptr null, ptr %i.u, align 8, !tbaa !196
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = add i64 %i.w, 16                         ; 2 uses
  %i.y = inttoptr i64 %i.x to ptr                 ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.0.i.i.i.i.i ; 4 uses
  store ptr %i.z, ptr %i.v, align 8, !tbaa !195
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE12NewBlockSizeEv.exit.i.i.i.i
  store ptr %i.u, ptr %1, align 8
  store ptr %i.y, ptr %.sroa.45.0..sroa_idx.i.i.i.i, align 8
  store ptr %i.z, ptr %.sroa.56.0..sroa_idx.i.i.i.i, align 8
  br label %.lr.ph.i.i.i.preheader

bb.e:                                             ; preds = %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE12NewBlockSizeEv.exit.i.i.i.i
  store ptr %i.u, ptr %i.l, align 8, !tbaa !196
  br label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d, %bb.e
  %i.aa = phi ptr [ %i.k, %bb.e ], [ %i.u, %bb.d ]
  store ptr %i.u, ptr %i.h, align 8
  store ptr %i.y, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  store ptr %i.z, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8
  %.not9.i.i.i193 = icmp samesign eq i64 %.0.i.i.i.i.i, 0
  br i1 %.not9.i.i.i193, label %.critedge.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.preheader
  %i.ab = add nsw i64 %.0.i.i.i.i.i, -4
  %i.ac = lshr exact i64 %i.ab, 2
  %i.ad = sub i64 44, %.015.i.i.i.idx
  %i.ae = lshr i64 %i.ad, 2
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.ae) ; 2 uses
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.af, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.ah = sub i64 0, %.015.i.i.i.idx
  %i.ai = and i64 %i.ah, 3
  %ident.check.not = icmp eq i64 %i.ai, 0
  br i1 %ident.check.not, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.aj = add i64 %.015.i.i.i.idx, ptrtoaddr (ptr @constinit.214 to i64)
  %i.ak = sub i64 %i.aj, %i.x
  %diff.check = icmp ugt i64 %i.ak, -16
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.al = and i64 %i.ag, 3                        ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  %i.an = select i1 %i.am, i64 4, i64 %i.al
  %n.vec = sub nsw i64 %i.ag, %i.an               ; 3 uses
  %i.ao = shl i64 %n.vec, 2                       ; 2 uses
  %i.ap = add i64 %.015.i.i.i.idx, %i.ao
  %i.aq = getelementptr i8, ptr %i.y, i64 %i.ao
  %i.ar = add i64 %i.j, %n.vec
  %i.as = add i64 %i.j, 1
  %i.at = getelementptr inbounds nuw i8, ptr @constinit.214, i64 %.015.i.i.i.idx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %i.y, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %i.au = phi i64 [ %i.as, %vector.ph ], [ %i.bd, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <2 x i64> <i64 0, i64 4> ; 2 uses
  %i.av = extractelement <2 x ptr> %vector.gep, i64 0 ; 2 uses
  %i.aw = shl nuw i64 %index, 2
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.aw ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %wide.load = load <2 x i32>, ptr %i.ax, align 4, !tbaa !128
  %wide.load197 = load <2 x i32>, ptr %i.ay, align 4, !tbaa !128
  %i.az = getelementptr i8, ptr %i.av, i64 8
  store <2 x i32> %wide.load, ptr %i.av, align 4, !tbaa !128
  store <2 x i32> %wide.load197, ptr %i.az, align 4, !tbaa !128
  %i.ba = add i64 %i.au, 3
  %i.bb = extractelement <2 x ptr> %vector.gep, i64 1
  %i.bc = getelementptr i8, ptr %i.bb, i64 12
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 16
  %i.bd = add i64 %i.au, 4
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %scalar.ph.preheader.loopexit, label %vector.body, !llvm.loop !1072

scalar.ph.preheader.loopexit:                     ; preds = %vector.body
  store i64 %i.ba, ptr %i.i, align 8, !tbaa !203
  store ptr %i.bc, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !204
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.loopexit, %vector.memcheck, %vector.scevcheck, %.lr.ph
  %.111.i.i.i.idx194.ph = phi i64 [ %.015.i.i.i.idx, %vector.memcheck ], [ %.015.i.i.i.idx, %vector.scevcheck ], [ %.015.i.i.i.idx, %.lr.ph ], [ %i.ap, %scalar.ph.preheader.loopexit ]
  %.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %vector.scevcheck ], [ %i.y, %.lr.ph ], [ %i.aq, %scalar.ph.preheader.loopexit ]
  %.ph201 = phi i64 [ %i.j, %vector.memcheck ], [ %i.j, %vector.scevcheck ], [ %i.j, %.lr.ph ], [ %i.ar, %scalar.ph.preheader.loopexit ]
  br label %scalar.ph

.lr.ph.i.i.i:                                     ; preds = %scalar.ph
  %.not9.i.i.i = icmp eq ptr %i.bj, %i.z
  br i1 %.not9.i.i.i, label %.critedge.i.i.i.loopexit, label %scalar.ph, !llvm.loop !1073

scalar.ph:                                        ; preds = %scalar.ph.preheader, %.lr.ph.i.i.i
  %.111.i.i.i.idx194 = phi i64 [ %.111.i.i.i.add, %.lr.ph.i.i.i ], [ %.111.i.i.i.idx194.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bf = phi ptr [ %i.bj, %.lr.ph.i.i.i ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bg = phi i64 [ %i.bi, %.lr.ph.i.i.i ], [ %.ph201, %scalar.ph.preheader ]
  %.111.i.i.i.ptr = getelementptr inbounds nuw i8, ptr @constinit.214, i64 %.111.i.i.i.idx194
  %i.bh = load i32, ptr %.111.i.i.i.ptr, align 4, !tbaa !128
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !128
  %i.bi = add i64 %i.bg, 1                        ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 4 uses
  %.111.i.i.i.add = add nuw nsw i64 %.111.i.i.i.idx194, 4 ; 3 uses
  %.not8.i.i.i = icmp samesign eq i64 %.111.i.i.i.add, 48
  br i1 %.not8.i.i.i, label %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEEC2ESt16initializer_listIiERKS2_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !1074

.critedge.i.i.i.loopexit:                         ; preds = %.lr.ph.i.i.i
  store i64 %i.bi, ptr %i.i, align 8, !tbaa !203
  store ptr %i.bj, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !204
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.critedge.i.i.i.loopexit, %.lr.ph.i.i.i.preheader
  %.lcssa = phi i64 [ %i.j, %.lr.ph.i.i.i.preheader ], [ %i.bi, %.critedge.i.i.i.loopexit ]
  %.111.i.i.i.idx.lcssa = phi i64 [ %.015.i.i.i.idx, %.lr.ph.i.i.i.preheader ], [ %.111.i.i.i.add, %.critedge.i.i.i.loopexit ] ; 2 uses
  %.not.i.i.i = icmp samesign eq i64 %.111.i.i.i.idx.lcssa, 48
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEEC2ESt16initializer_listIiERKS2_.exit, label %bb.b, !llvm.loop !1075

_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEEC2ESt16initializer_listIiERKS2_.exit.loopexit: ; preds = %scalar.ph
  store i64 %i.bi, ptr %i.i, align 8, !tbaa !203
  store ptr %i.bj, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !204
  br label %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEEC2ESt16initializer_listIiERKS2_.exit

_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEEC2ESt16initializer_listIiERKS2_.exit: ; preds = %.critedge.i.i.i, %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEEC2ESt16initializer_listIiERKS2_.exit.loopexit
  %i.bk = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25
          to label %bb.f unwind label %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i ; 5 uses

_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i:           ; preds = %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEEC2ESt16initializer_listIiERKS2_.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEEC2ESt16initializer_listIiERKS2_.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store <4 x i32> <i32 101, i32 102, i32 103, i32 104>, ptr %i.bk, align 4
  invoke void @_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiS2_EEEvEEvT_SB_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr nonnull %i.bk, ptr nonnull %i.bm)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.bn = load i64, ptr %i.i, align 8, !tbaa !203 ; 2 uses
  store i64 %i.bn, ptr %i.a, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 4, ptr %i.b, align 4, !tbaa !128
  %i.bo = icmp eq i64 %i.bn, 4
  br i1 %i.bo, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2)
          to label %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.k

bb.i:                                             ; preds = %bb.g
  invoke void @_ZN7testing8internal18CmpHelperEQFailureImiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.206, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.k

_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.bp = load i8, ptr %2, align 8, !tbaa !78, !range !79, !noundef !80
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.u, label %bb.l

bb.j:                                             ; preds = %bb.f
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit131

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.z

bb.l:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !81 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !85
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.n, %bb.m
  %i.bw = phi ptr [ %i.bv, %bb.n ], [ @.str.159, %bb.m ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 470, ptr noundef %i.bw)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %bb.o
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bx = load ptr, ptr %3, align 8, !tbaa !87    ; 3 uses
  %.not.i.i49 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i49, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.p
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !43
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(128) %i.bx) #22, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.p, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.u

bb.q:                                             ; preds = %bb.l
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit52

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.o
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #22
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.cd, %bb.s ], [ %i.cc, %bb.r ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ce = load ptr, ptr %3, align 8, !tbaa !87    ; 3 uses
  %.not.i.i50 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i50, label %_ZN7testing7MessageD2Ev.exit52, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i51

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i51: ; preds = %bb.t
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !43
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(128) %i.ce) #22, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit52

_ZN7testing7MessageD2Ev.exit52:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i51, %bb.t, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.cb, %bb.q ], [ %.pn, %bb.t ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i51 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #22
  br label %bb.z

bb.u:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !81 ; 4 uses
  %.not.i.i53 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i53, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !85 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
end_hunk_0
