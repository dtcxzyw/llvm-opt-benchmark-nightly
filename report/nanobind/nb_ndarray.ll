Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/nb_ndarray?download=true
inline.NumInlined: 379
inline.NumDeleted: 121
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN8nanobind6detailL19ndarray_import_implEPNS0_12nb_internalsEP7_objectRKNS0_14ndarray_configEbPNS0_12cleanup_listE:bb.a
  unreachable

_ZNKR8nanobind6handle7dec_refEv.exit334:          ; preds = %bb.cm, %_ZNSt10unique_ptrIN8nanobind6detail26managed_dltensor_versionedEPFvPS2_EED2Ev.exit331, %bb.jj, %bb.jk, %bb.jl
  %.12442446 = phi ptr [ %.12442.ph, %bb.jl ], [ %.12442.ph, %_ZNSt10unique_ptrIN8nanobind6detail26managed_dltensor_versionedEPFvPS2_EED2Ev.exit331 ], [ %.12442.ph, %bb.jj ], [ %.12442.ph, %bb.jk ], [ null, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  ret ptr %.12442446

bb.jn:                                            ; preds = %bb.im, %bb.ad, %bb.t, %bb.i, %bb.iz, %bb.ix, %bb.is, %bb.cw, %bb.cu, %bb.ct, %bb.cr, %bb.cg, %bb.z, %bb.s, %bb.q, %bb.o
  %i.xc = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.jn, %bb.ia, %_ZN8nanobind6detail15scoped_pymallocINS0_26managed_dltensor_versionedEED2Ev.exit.i
  %eh.lpad-body = phi { ptr, i32 } [ %.pn101.i, %_ZN8nanobind6detail15scoped_pymallocINS0_26managed_dltensor_versionedEED2Ev.exit.i ], [ %i.xc, %bb.jn ], [ %i.tx, %bb.ia ]
  %i.xd = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.xd) #25
  unreachable
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define noundef ptr @_ZN8nanobind6detail15ndarray_inc_refEPNS0_14ndarray_handleE(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = atomicrmw add ptr %i.a, i64 1 seq_cst, align 8 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i8, ptr %i.c, align 8, !range !4, !noundef !5
  %i.e = load ptr, ptr %0, align 8
  %i.f = shl nuw nsw i8 %i.d, 5
  %.idx.i = zext nneg i8 %i.f to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %_ZN8nanobind6detail13cleanup_guardD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = atomicrmw sub ptr %i.a, i64 1 seq_cst, align 8
  switch i64 %i.b, label %_ZN8nanobind6detail13cleanup_guardD2Ev.exit [
    i64 0, label %bb.c
    i64 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN8nanobind6detail16fail_unspecifiedEv() #25
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = tail call noundef zeroext i1 @_ZN8nanobind6detail8is_aliveEv() #26
  br i1 %i.c, label %_ZN8nanobind6detail13cleanup_guardC2Ev.exit, label %_ZN8nanobind6detail13cleanup_guardD2Ev.exit

_ZN8nanobind6detail13cleanup_guardC2Ev.exit:      ; preds = %bb.d
  %i.d = tail call noundef ptr @_ZN8nanobind6detail13tstate_ensureEv() #26 ; 2 uses
  %.not8 = icmp eq ptr %i.d, null
  br i1 %.not8, label %_ZN8nanobind6detail13cleanup_guardD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN8nanobind6detail13cleanup_guardC2Ev.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZL10Py_XDECREFP7_object.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = and i64 %i.g, 2147483648
  %.not2.i.i = icmp eq i64 %i.h, 0
  br i1 %.not2.i.i, label %bb.g, label %_ZL10Py_XDECREFP7_object.exit.i

bb.g:                                             ; preds = %bb.f
  %i.i = add nsw i64 %i.g, -1                     ; 2 uses
  store i64 %i.i, ptr %i.f, align 8
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.h, label %_ZL10Py_XDECREFP7_object.exit.i

bb.h:                                             ; preds = %bb.g
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.f)
          to label %_ZL10Py_XDECREFP7_object.exit.i unwind label %bb.w

_ZL10Py_XDECREFP7_object.exit.i:                  ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8              ; 4 uses
  %.not.i22.i = icmp eq ptr %i.l, null
  br i1 %.not.i22.i, label %_ZL10Py_XDECREFP7_object.exit25.i, label %bb.i

bb.i:                                             ; preds = %_ZL10Py_XDECREFP7_object.exit.i
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = and i64 %i.m, 2147483648
  %.not2.i23.i = icmp eq i64 %i.n, 0
  br i1 %.not2.i23.i, label %bb.j, label %_ZL10Py_XDECREFP7_object.exit25.i

bb.j:                                             ; preds = %bb.i
  %i.o = add nsw i64 %i.m, -1                     ; 2 uses
  store i64 %i.o, ptr %i.l, align 8
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.k, label %_ZL10Py_XDECREFP7_object.exit25.i

bb.k:                                             ; preds = %bb.j
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.l)
          to label %_ZL10Py_XDECREFP7_object.exit25.i unwind label %bb.w

_ZL10Py_XDECREFP7_object.exit25.i:                ; preds = %bb.k, %bb.j, %bb.i, %_ZL10Py_XDECREFP7_object.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load i8, ptr %i.q, align 8, !range !4, !noundef !5
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = load ptr, ptr %0, align 8                ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.v = load i8, ptr %i.u, align 1, !range !4, !noundef !5
  %i.w = trunc nuw i8 %i.v to i1                  ; 2 uses
  br i1 %i.s, label %bb.l, label %bb.r

bb.l:                                             ; preds = %_ZL10Py_XDECREFP7_object.exit25.i
  br i1 %i.w, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 64 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  invoke void @PyMem_Free(ptr noundef %i.y)
          to label %bb.n unwind label %bb.w

bb.n:                                             ; preds = %bb.m
  store ptr null, ptr %i.x, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.aa = load i8, ptr %i.z, align 2, !range !4, !noundef !5
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not21.i = icmp eq ptr %i.ad, null
  br i1 %.not21.i, label %bb.v, label %.invoke.i

bb.q:                                             ; preds = %bb.o
  invoke void @PyMem_Free(ptr noundef %i.t)
          to label %bb.v unwind label %bb.w

bb.r:                                             ; preds = %_ZL10Py_XDECREFP7_object.exit25.i
  br i1 %i.w, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void @PyMem_Free(ptr noundef %i.af)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %bb.s
  store ptr null, ptr %i.ae, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %bb.v, label %.invoke.i

.invoke.i:                                        ; preds = %bb.u, %bb.p
  %i.ai = phi ptr [ %i.ad, %bb.p ], [ %i.ah, %bb.u ]
  invoke void %i.ai(ptr noundef nonnull %i.t)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %.invoke.i, %bb.u, %bb.q, %bb.p
  invoke void @PyMem_Free(ptr noundef nonnull %0)
          to label %_ZN8nanobind6detailL20ndarray_dec_ref_freeEPNS0_14ndarray_handleE.exit unwind label %bb.w

bb.w:                                             ; preds = %bb.v, %.invoke.i, %bb.s, %bb.q, %bb.m, %bb.k, %bb.h
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #25
  unreachable

_ZN8nanobind6detailL20ndarray_dec_ref_freeEPNS0_14ndarray_handleE.exit: ; preds = %bb.v
  tail call void @_ZN8nanobind6detail14tstate_releaseEPv(ptr noundef nonnull %i.d) #26
  br label %_ZN8nanobind6detail13cleanup_guardD2Ev.exit

_ZN8nanobind6detail13cleanup_guardD2Ev.exit:      ; preds = %bb.d, %_ZN8nanobind6detail13cleanup_guardC2Ev.exit, %_ZN8nanobind6detailL20ndarray_dec_ref_freeEPNS0_14ndarray_handleE.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN8nanobind6detail14ndarray_createEPNS0_12nb_internalsEPKNS0_19ndarray_create_argsE(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.035.0.copyload = load ptr, ptr %1, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 13 uses
  %.sroa.5.0.copyload119 = ptrtoaddr ptr %.sroa.5.0.copyload to i64
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8 ; 8 uses
  %.sroa.8.0.copyload122 = ptrtoaddr ptr %.sroa.8.0.copyload to i64
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8 ; 4 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 8 ; 7 uses
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.25.0.copyload = load i32, ptr %.sroa.25.0..sroa_idx, align 4
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.a = load i32, ptr %.sroa.26.0..sroa_idx, align 8
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.27.0.copyload = load i8, ptr %.sroa.27.0..sroa_idx, align 4
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 61
  %.sroa.31.0.copyload = load i8, ptr %.sroa.31.0..sroa_idx, align 1
  %i.b = zext i32 %.sroa.12.0.copyload to i64     ; 16 uses
  %i.c = icmp ugt i32 %.sroa.12.0.copyload, 128
  br i1 %i.c, label %bb.b, label %bb.c, !prof !3

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8nanobind6detail16fail_unspecifiedEv() #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.2248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.2248.0.copyload = load i32, ptr %.sroa.2248.0..sroa_idx, align 8
  %spec.select = tail call i32 @llvm.umax.i32(i32 %.sroa.2248.0.copyload, i32 1)
  %i.d = shl nuw nsw i64 %i.b, 4
  %i.e = add nuw nsw i64 %i.d, 80                 ; 2 uses
  %i.f = tail call ptr @PyMem_Malloc(i64 noundef %i.e) ; 18 uses
  %2 = ptrtoaddr ptr %i.f to i64                  ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.d, label %_ZN8nanobind6detail15scoped_pymallocINS0_26managed_dltensor_versionedEEC2Emm.exit, !prof !3

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN8nanobind6detail4failEPKcz(ptr noundef nonnull @.str.31, i64 noundef %i.e) #25
  unreachable

_ZN8nanobind6detail15scoped_pymallocINS0_26managed_dltensor_versionedEEC2Emm.exit: ; preds = %bb.c
  %.not = icmp eq i32 %.sroa.12.0.copyload, 0     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 8 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.b ; 13 uses
  %.062 = select i1 %.not, ptr null, ptr %i.g
  %.061 = select i1 %.not, ptr null, ptr %i.h
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN8nanobind6detail15scoped_pymallocINS0_26managed_dltensor_versionedEEC2Emm.exit
  %min.iters.check = icmp ult i32 %.sroa.12.0.copyload, 10
  br i1 %min.iters.check, label %.lr.ph.preheader140, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.i = sub i64 %2, %.sroa.5.0.copyload119
  %i.j = add i64 %i.i, 79
  %diff.check = icmp ult i64 %i.j, 31
  br i1 %diff.check, label %.lr.ph.preheader140, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, 252                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.copyload, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <2 x i64>, ptr %i.k, align 8
  %wide.load120 = load <2 x i64>, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <2 x i64> %wide.load, ptr %i.m, align 8
  store <2 x i64> %wide.load120, ptr %i.n, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !58

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.b
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader140

.lr.ph.preheader140:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.058101.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.b, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader140, %.lr.ph.prol
  %.058101.prol = phi i64 [ %i.s, %.lr.ph.prol ], [ %.058101.ph, %.lr.ph.preheader140 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader140 ]
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.copyload, i64 %.058101.prol
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.058101.prol
  store i64 %i.q, ptr %i.r, align 8
  %i.s = add nuw nsw i64 %.058101.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !59

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader140
  %.058101.unr = phi i64 [ %.058101.ph, %.lr.ph.preheader140 ], [ %i.s, %.lr.ph.prol ]
  %i.t = sub nsw i64 %.058101.ph, %i.b
  %i.u = icmp ugt i64 %i.t, -4
  br i1 %i.u, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.058101 = phi i64 [ %i.ak, %.lr.ph ], [ %.058101.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.copyload, i64 %.058101
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.058101
  store i64 %i.w, ptr %i.x, align 8
  %i.y = add nuw nsw i64 %.058101, 1              ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.copyload, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.y
  store i64 %i.aa, ptr %i.ab, align 8
  %i.ac = add nuw nsw i64 %.058101, 2             ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.copyload, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ac
  store i64 %i.ae, ptr %i.af, align 8
  %i.ag = add nuw nsw i64 %.058101, 3             ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.copyload, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ag
  store i64 %i.ai, ptr %i.aj, align 8
  %i.ak = add nuw nsw i64 %.058101, 4             ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ak, %i.b
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !60

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block
  %.not65 = icmp eq ptr %.sroa.8.0.copyload, null
  br i1 %.not65, label %bb.e, label %.preheader99.preheader

.preheader99.preheader:                           ; preds = %._crit_edge
  %min.iters.check125 = icmp ult i32 %.sroa.12.0.copyload, 16
  br i1 %min.iters.check125, label %.preheader99.preheader138, label %vector.memcheck121

vector.memcheck121:                               ; preds = %.preheader99.preheader
  %i.al = shl nuw nsw i64 %i.b, 3
  %i.am = add i64 %i.al, %2
  %i.an = sub i64 %i.am, %.sroa.8.0.copyload122
  %i.ao = add i64 %i.an, 79
  %diff.check123 = icmp ult i64 %i.ao, 31
  br i1 %diff.check123, label %.preheader99.preheader138, label %vector.ph126

vector.ph126:                                     ; preds = %vector.memcheck121
  %n.vec127 = and i64 %i.b, 252                   ; 3 uses
  br label %vector.body128

vector.body128:                                   ; preds = %vector.body128, %vector.ph126
  %index129 = phi i64 [ 0, %vector.ph126 ], [ %index.next132, %vector.body128 ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %index129 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load130 = load <2 x i64>, ptr %i.ap, align 8
  %wide.load131 = load <2 x i64>, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index129 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store <2 x i64> %wide.load130, ptr %i.ar, align 8
  store <2 x i64> %wide.load131, ptr %i.as, align 8
  %index.next132 = add nuw i64 %index129, 4       ; 2 uses
  %i.at = icmp eq i64 %index.next132, %n.vec127
  br i1 %i.at, label %middle.block133, label %vector.body128, !llvm.loop !61

middle.block133:                                  ; preds = %vector.body128
  %cmp.n134 = icmp eq i64 %n.vec127, %i.b
  br i1 %cmp.n134, label %.loopexit, label %.preheader99.preheader138

.preheader99.preheader138:                        ; preds = %vector.memcheck121, %.preheader99.preheader, %middle.block133
  %.056102.ph = phi i64 [ 0, %vector.memcheck121 ], [ 0, %.preheader99.preheader ], [ %n.vec127, %middle.block133 ] ; 3 uses
  %xtraiter141 = and i64 %i.b, 3                  ; 2 uses
  %lcmp.mod142.not = icmp eq i64 %xtraiter141, 0
  br i1 %lcmp.mod142.not, label %.preheader99.prol.loopexit, label %.preheader99.prol

.preheader99.prol:                                ; preds = %.preheader99.preheader138, %.preheader99.prol
  %.056102.prol = phi i64 [ %i.ax, %.preheader99.prol ], [ %.056102.ph, %.preheader99.preheader138 ] ; 3 uses
  %prol.iter143 = phi i64 [ %prol.iter143.next, %.preheader99.prol ], [ 0, %.preheader99.preheader138 ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %.056102.prol
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.056102.prol
  store i64 %i.av, ptr %i.aw, align 8
  %i.ax = add nuw nsw i64 %.056102.prol, 1        ; 2 uses
  %prol.iter143.next = add i64 %prol.iter143, 1   ; 2 uses
  %prol.iter143.cmp.not = icmp eq i64 %prol.iter143.next, %xtraiter141
  br i1 %prol.iter143.cmp.not, label %.preheader99.prol.loopexit, label %.preheader99.prol, !llvm.loop !62

.preheader99.prol.loopexit:                       ; preds = %.preheader99.prol, %.preheader99.preheader138
  %.056102.unr = phi i64 [ %.056102.ph, %.preheader99.preheader138 ], [ %i.ax, %.preheader99.prol ]
  %i.ay = sub nsw i64 %.056102.ph, %i.b
  %i.az = icmp ugt i64 %i.ay, -4
  br i1 %i.az, label %.loopexit, label %.preheader99

.preheader99:                                     ; preds = %.preheader99.prol.loopexit, %.preheader99
  %.056102 = phi i64 [ %i.bp, %.preheader99 ], [ %.056102.unr, %.preheader99.prol.loopexit ] ; 6 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %.056102
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.056102
  store i64 %i.bb, ptr %i.bc, align 8
  %i.bd = add nuw nsw i64 %.056102, 1             ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %i.bd
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bd
  store i64 %i.bf, ptr %i.bg, align 8
  %i.bh = add nuw nsw i64 %.056102, 2             ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bh
  store i64 %i.bj, ptr %i.bk, align 8
  %i.bl = add nuw nsw i64 %.056102, 3             ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bl
  store i64 %i.bn, ptr %i.bo, align 8
  %i.bp = add nuw nsw i64 %.056102, 4             ; 2 uses
  %exitcond110.not.3 = icmp eq i64 %i.bp, %i.b
  br i1 %exitcond110.not.3, label %.loopexit, label %.preheader99, !llvm.loop !63

bb.e:                                             ; preds = %._crit_edge
  switch i8 %.sroa.27.0.copyload, label %bb.g [
    i8 70, label %.preheader.preheader
    i8 67, label %.preheader136
    i8 65, label %.preheader136
    i8 0, label %.preheader136
  ]

.preheader136:                                    ; preds = %bb.e, %bb.e, %bb.e
  br label %bb.f

.preheader.preheader:                             ; preds = %bb.e
  %xtraiter144 = and i64 %i.b, 3                  ; 3 uses
  %i.bq = icmp ult i32 %.sroa.12.0.copyload, 4
  br i1 %i.bq, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %i.b, 252
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.055106 = phi i64 [ 0, %.preheader.preheader.new ], [ %i.ck, %.preheader ] ; 6 uses
  %.057105 = phi i64 [ 1, %.preheader.preheader.new ], [ %i.cj, %.preheader ] ; 2 uses
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.055106
  store i64 %.057105, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.copyload, i64 %.055106
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = mul nsw i64 %i.bt, %.057105             ; 2 uses
  %i.bv = or disjoint i64 %.055106, 1             ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bv
  store i64 %i.bu, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.copyload, i64 %i.bv
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = mul nsw i64 %i.by, %i.bu                ; 2 uses
  %i.ca = or disjoint i64 %.055106, 2             ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ca
  store i64 %i.bz, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.copyload, i64 %i.ca
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = mul nsw i64 %i.cd, %i.bz                ; 2 uses
  %i.cf = or disjoint i64 %.055106, 3             ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.cf
  store i64 %i.ce, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.copyload, i64 %i.cf
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = mul nsw i64 %i.ci, %i.ce                ; 2 uses
  %i.ck = add nuw nsw i64 %.055106, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.preheader, !llvm.loop !64

bb.f:                                             ; preds = %.preheader136, %bb.f
  %.0.in104 = phi i64 [ %.0, %bb.f ], [ %i.b, %.preheader136 ] ; 2 uses
  %.1103 = phi i64 [ %i.co, %bb.f ], [ 1, %.preheader136 ] ; 2 uses
  %.0 = add nsw i64 %.0.in104, -1                 ; 3 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.0
  store i64 %.1103, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.copyload, i64 %.0
  %i.cn = load i64, ptr %i.cm, align 8
  %i.co = mul nsw i64 %i.cn, %.1103
  %i.cp = icmp samesign ugt i64 %.0.in104, 1
  br i1 %i.cp, label %bb.f, label %.loopexit, !llvm.loop !65

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN8nanobind6detail16fail_unspecifiedEv() #25
  unreachable

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader
  %lcmp.mod145.not = icmp eq i64 %xtraiter144, 0
  br i1 %lcmp.mod145.not, label %.loopexit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.preheader
  %.055106.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.ck, %.loopexit.loopexit.unr-lcssa ]
  %.057105.epil.init = phi i64 [ 1, %.preheader.preheader ], [ %i.cj, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod146 = icmp ne i64 %xtraiter144, 0
  tail call void @llvm.assume(i1 %lcmp.mod146)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.055106.epil = phi i64 [ %i.cu, %.preheader.epil ], [ %.055106.epil.init, %.preheader.epil.preheader ] ; 3 uses
  %.057105.epil = phi i64 [ %i.ct, %.preheader.epil ], [ %.057105.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.055106.epil
  store i64 %.057105.epil, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.copyload, i64 %.055106.epil
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = mul nsw i64 %i.cs, %.057105.epil
  %i.cu = add nuw nsw i64 %.055106.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter144
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.preheader.epil, !llvm.loop !66

.loopexit:                                        ; preds = %.preheader99.prol.loopexit, %.preheader99, %bb.f, %.loopexit.loopexit.unr-lcssa, %.preheader.epil, %middle.block133, %_ZN8nanobind6detail15scoped_pymallocINS0_26managed_dltensor_versionedEEC2Emm.exit
  %i.cv = invoke ptr @PyMem_Malloc(i64 noundef 40)
          to label %.noexc unwind label %bb.m     ; 11 uses

.noexc:                                           ; preds = %.loopexit
  %.not.i67 = icmp eq ptr %i.cv, null
  br i1 %.not.i67, label %bb.h, label %_ZN8nanobind6detail15scoped_pymallocINS0_14ndarray_handleEEC2Emm.exit, !prof !3

bb.h:                                             ; preds = %.noexc
  tail call void (ptr, ...) @_ZN8nanobind6detail4failEPKcz(ptr noundef nonnull @.str.31, i64 noundef 40) #25
  unreachable

_ZN8nanobind6detail15scoped_pymallocINS0_14ndarray_handleEEC2Emm.exit: ; preds = %.noexc
  store i32 1, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 1, ptr %.sroa.4.0..sroa_idx, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.cv, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr @"_ZZN8nanobind6detail14ndarray_createEPNS0_12nb_internalsEPKNS0_19ndarray_create_argsEEN3$_08__invokeEPNS0_26managed_dltensor_versionedE", ptr %i.cx, align 8
  %.mask = and i8 %.sroa.31.0.copyload, 1         ; 2 uses
  %i.cy = zext nneg i8 %.mask to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %i.cy, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %.sroa.035.0.copyload, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i32 %spec.select, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  store i32 %.sroa.25.0.copyload, ptr %i.dc, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i32 %.sroa.12.0.copyload, ptr %i.dd, align 8
end_hunk_0
