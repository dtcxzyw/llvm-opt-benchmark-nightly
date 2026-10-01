Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/nb_ndarray?download=true
inline.NumInlined: 379
inline.NumDeleted: 121
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN8nanobind6detailL19ndarray_import_implEPNS0_12nb_internalsEP7_objectRKNS0_14ndarray_configEbPNS0_12cleanup_listE:bb.a
  call void @__clang_call_terminate(ptr %i.xb) #25
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
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 17 uses
  %.sroa.5.0.copyload119 = ptrtoaddr ptr %.sroa.5.0.copyload to i64
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8 ; 8 uses
  %.sroa.8.0.copyload122 = ptrtoaddr ptr %.sroa.8.0.copyload to i64
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8 ; 4 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 8 ; 8 uses
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.25.0.copyload = load i32, ptr %.sroa.25.0..sroa_idx, align 4
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.a = load i32, ptr %.sroa.26.0..sroa_idx, align 8
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.27.0.copyload = load i8, ptr %.sroa.27.0..sroa_idx, align 4
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 61
  %.sroa.31.0.copyload = load i8, ptr %.sroa.31.0..sroa_idx, align 1
  %i.b = zext i32 %.sroa.12.0.copyload to i64     ; 19 uses
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
  %i.g = ptrtoaddr ptr %i.f to i64                ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.d, label %_ZN8nanobind6detail15scoped_pymallocINS0_26managed_dltensor_versionedEEC2Emm.exit, !prof !3

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN8nanobind6detail4failEPKcz(ptr noundef nonnull @.str.31, i64 noundef %i.e) #25
  unreachable

_ZN8nanobind6detail15scoped_pymallocINS0_26managed_dltensor_versionedEEC2Emm.exit: ; preds = %bb.c
  %.not = icmp eq i32 %.sroa.12.0.copyload, 0     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 8 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.b ; 17 uses
  %.062 = select i1 %.not, ptr null, ptr %i.h
  %.061 = select i1 %.not, ptr null, ptr %i.i
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN8nanobind6detail15scoped_pymallocINS0_26managed_dltensor_versionedEEC2Emm.exit
  %min.iters.check = icmp ult i32 %.sroa.12.0.copyload, 10
  br i1 %min.iters.check, label %.lr.ph.preheader140, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.j = sub i64 %i.g, %.sroa.5.0.copyload119
  %i.k = add i64 %i.j, 79
  %diff.check = icmp ult i64 %i.k, 31
  br i1 %diff.check, label %.lr.ph.preheader140, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, 252                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.copyload, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load = load <2 x i64>, ptr %i.l, align 8
  %wide.load120 = load <2 x i64>, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <2 x i64> %wide.load, ptr %i.n, align 8
  store <2 x i64> %wide.load120, ptr %i.o, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !58

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.b
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader140

.lr.ph.preheader140:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.058101.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.b, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader140, %.lr.ph.prol
  %.058101.prol = phi i64 [ %i.t, %.lr.ph.prol ], [ %.058101.ph, %.lr.ph.preheader140 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader140 ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.copyload, i64 %.058101.prol
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.058101.prol
  store i64 %i.r, ptr %i.s, align 8
  %i.t = add nuw nsw i64 %.058101.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !59

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader140
  %.058101.unr = phi i64 [ %.058101.ph, %.lr.ph.preheader140 ], [ %i.t, %.lr.ph.prol ]
  %i.u = sub nsw i64 %.058101.ph, %i.b
  %i.v = icmp ugt i64 %i.u, -4
  br i1 %i.v, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.058101 = phi i64 [ %i.al, %.lr.ph ], [ %.058101.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.copyload, i64 %.058101
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.058101
  store i64 %i.x, ptr %i.y, align 8
  %i.z = add nuw nsw i64 %.058101, 1              ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.copyload, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.z
  store i64 %i.ab, ptr %i.ac, align 8
  %i.ad = add nuw nsw i64 %.058101, 2             ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.copyload, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ad
  store i64 %i.af, ptr %i.ag, align 8
  %i.ah = add nuw nsw i64 %.058101, 3             ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.copyload, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ah
  store i64 %i.aj, ptr %i.ak, align 8
  %i.al = add nuw nsw i64 %.058101, 4             ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.al, %i.b
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !60

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block
  %.not65 = icmp eq ptr %.sroa.8.0.copyload, null
  br i1 %.not65, label %bb.e, label %.preheader99.preheader

.preheader99.preheader:                           ; preds = %._crit_edge
  %min.iters.check125 = icmp ult i32 %.sroa.12.0.copyload, 16
  br i1 %min.iters.check125, label %.preheader99.preheader138, label %vector.memcheck121

vector.memcheck121:                               ; preds = %.preheader99.preheader
  %i.am = shl nuw nsw i64 %i.b, 3
  %i.an = add i64 %i.am, %i.g
  %i.ao = sub i64 %i.an, %.sroa.8.0.copyload122
  %i.ap = add i64 %i.ao, 79
  %diff.check123 = icmp ult i64 %i.ap, 31
  br i1 %diff.check123, label %.preheader99.preheader138, label %vector.ph126

vector.ph126:                                     ; preds = %vector.memcheck121
  %n.vec127 = and i64 %i.b, 252                   ; 3 uses
  br label %vector.body128

vector.body128:                                   ; preds = %vector.body128, %vector.ph126
  %index129 = phi i64 [ 0, %vector.ph126 ], [ %index.next132, %vector.body128 ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %index129 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load130 = load <2 x i64>, ptr %i.aq, align 8
  %wide.load131 = load <2 x i64>, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index129 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store <2 x i64> %wide.load130, ptr %i.as, align 8
  store <2 x i64> %wide.load131, ptr %i.at, align 8
  %index.next132 = add nuw i64 %index129, 4       ; 2 uses
  %i.au = icmp eq i64 %index.next132, %n.vec127
  br i1 %i.au, label %middle.block133, label %vector.body128, !llvm.loop !61

middle.block133:                                  ; preds = %vector.body128
  %cmp.n134 = icmp eq i64 %n.vec127, %i.b
  br i1 %cmp.n134, label %.loopexit, label %.preheader99.preheader138

.preheader99.preheader138:                        ; preds = %vector.memcheck121, %.preheader99.preheader, %middle.block133
  %.056102.ph = phi i64 [ 0, %vector.memcheck121 ], [ 0, %.preheader99.preheader ], [ %n.vec127, %middle.block133 ] ; 3 uses
  %xtraiter141 = and i64 %i.b, 3                  ; 2 uses
  %lcmp.mod142.not = icmp eq i64 %xtraiter141, 0
  br i1 %lcmp.mod142.not, label %.preheader99.prol.loopexit, label %.preheader99.prol

.preheader99.prol:                                ; preds = %.preheader99.preheader138, %.preheader99.prol
  %.056102.prol = phi i64 [ %i.ay, %.preheader99.prol ], [ %.056102.ph, %.preheader99.preheader138 ] ; 3 uses
  %prol.iter143 = phi i64 [ %prol.iter143.next, %.preheader99.prol ], [ 0, %.preheader99.preheader138 ]
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %.056102.prol
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.056102.prol
  store i64 %i.aw, ptr %i.ax, align 8
  %i.ay = add nuw nsw i64 %.056102.prol, 1        ; 2 uses
  %prol.iter143.next = add i64 %prol.iter143, 1   ; 2 uses
  %prol.iter143.cmp.not = icmp eq i64 %prol.iter143.next, %xtraiter141
  br i1 %prol.iter143.cmp.not, label %.preheader99.prol.loopexit, label %.preheader99.prol, !llvm.loop !62

.preheader99.prol.loopexit:                       ; preds = %.preheader99.prol, %.preheader99.preheader138
  %.056102.unr = phi i64 [ %.056102.ph, %.preheader99.preheader138 ], [ %i.ay, %.preheader99.prol ]
  %i.az = sub nsw i64 %.056102.ph, %i.b
  %i.ba = icmp ugt i64 %i.az, -4
  br i1 %i.ba, label %.loopexit, label %.preheader99

.preheader99:                                     ; preds = %.preheader99.prol.loopexit, %.preheader99
  %.056102 = phi i64 [ %i.bq, %.preheader99 ], [ %.056102.unr, %.preheader99.prol.loopexit ] ; 6 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %.056102
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.056102
  store i64 %i.bc, ptr %i.bd, align 8
  %i.be = add nuw nsw i64 %.056102, 1             ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.be
  store i64 %i.bg, ptr %i.bh, align 8
  %i.bi = add nuw nsw i64 %.056102, 2             ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.bi
  store i64 %i.bk, ptr %i.bl, align 8
  %i.bm = add nuw nsw i64 %.056102, 3             ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.bm
  store i64 %i.bo, ptr %i.bp, align 8
  %i.bq = add nuw nsw i64 %.056102, 4             ; 2 uses
  %exitcond110.not.3 = icmp eq i64 %i.bq, %i.b
  br i1 %exitcond110.not.3, label %.loopexit, label %.preheader99, !llvm.loop !63

bb.e:                                             ; preds = %._crit_edge
  switch i8 %.sroa.27.0.copyload, label %bb.g [
    i8 70, label %.preheader.preheader
    i8 67, label %.preheader136
    i8 65, label %.preheader136
    i8 0, label %.preheader136
  ]

.preheader136:                                    ; preds = %bb.e, %bb.e, %bb.e
  %xtraiter144 = and i64 %i.b, 3                  ; 3 uses
  %2 = icmp ult i32 %.sroa.12.0.copyload, 4
  br i1 %2, label %.epil.preheader, label %.preheader136.a

.preheader136.a:                                  ; preds = %.preheader136
  %unroll_iter = and i64 %i.b, 252
  br label %bb.f

.preheader.preheader:                             ; preds = %bb.e
  %xtraiter144.a = and i64 %i.b, 3                ; 3 uses
  %i.br = icmp ult i32 %.sroa.12.0.copyload, 4
  br i1 %i.br, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter.a = and i64 %i.b, 252
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.055106 = phi i64 [ 0, %.preheader.preheader.new ], [ %i.cl, %.preheader ] ; 6 uses
  %.057105 = phi i64 [ 1, %.preheader.preheader.new ], [ %i.ck, %.preheader ] ; 2 uses
  %niter.a = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3.a, %.preheader ]
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.055106
  store i64 %.057105, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.copyload, i64 %.055106
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = mul nsw i64 %i.bu, %.057105             ; 2 uses
  %i.bw = or disjoint i64 %.055106, 1             ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.bw
  store i64 %i.bv, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.copyload, i64 %i.bw
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = mul nsw i64 %i.bz, %i.bv                ; 2 uses
  %i.cb = or disjoint i64 %.055106, 2             ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.cb
  store i64 %i.ca, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.copyload, i64 %i.cb
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = mul nsw i64 %i.ce, %i.ca                ; 2 uses
  %i.cg = or disjoint i64 %.055106, 3             ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.cg
  store i64 %i.cf, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.copyload, i64 %i.cg
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = mul nsw i64 %i.cj, %i.cf                ; 2 uses
  %i.cl = add nuw nsw i64 %.055106, 4             ; 2 uses
  %niter.next.3.a = add i64 %niter.a, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3.a, %unroll_iter.a
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.preheader, !llvm.loop !64

bb.f:                                             ; preds = %bb.f, %.preheader136.a
  %.0.in104 = phi i64 [ %i.b, %.preheader136.a ], [ %.0.a, %bb.f ] ; 4 uses
  %.0.in104.a = phi i64 [ 1, %.preheader136.a ], [ %i.cp, %bb.f ] ; 2 uses
  %.1103 = phi i64 [ 0, %.preheader136.a ], [ %niter.next.3, %bb.f ]
  %.0 = add nsw i64 %.0.in104, -1                 ; 2 uses
  %3 = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.0
  store i64 %.0.in104.a, ptr %3, align 8
  %4 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.copyload, i64 %.0
  %5 = load i64, ptr %4, align 8
  %6 = mul nsw i64 %5, %.0.in104.a                ; 2 uses
  %.0.1 = add nsw i64 %.0.in104, -2               ; 2 uses
  %7 = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.0.1
  store i64 %6, ptr %7, align 8
  %8 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.copyload, i64 %.0.1
  %9 = load i64, ptr %8, align 8
  %10 = mul nsw i64 %9, %6                        ; 2 uses
  %.0.2 = add nsw i64 %.0.in104, -3               ; 2 uses
  %11 = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.0.2
  store i64 %10, ptr %11, align 8
  %12 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.copyload, i64 %.0.2
  %13 = load i64, ptr %12, align 8
  %14 = mul nsw i64 %13, %10                      ; 2 uses
  %.0.a = add nsw i64 %.0.in104, -4               ; 4 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.0.a
  store i64 %14, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.copyload, i64 %.0.a
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = mul nsw i64 %i.co, %14                  ; 2 uses
  %niter.next.3 = add i64 %.1103, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.loopexit.loopexit137.unr-lcssa, label %bb.f, !llvm.loop !65

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN8nanobind6detail16fail_unspecifiedEv() #25
  unreachable

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader
  %lcmp.mod145.not.a = icmp eq i64 %xtraiter144.a, 0
  br i1 %lcmp.mod145.not.a, label %.loopexit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.preheader
  %.055106.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.cl, %.loopexit.loopexit.unr-lcssa ]
  %.057105.epil.init = phi i64 [ 1, %.preheader.preheader ], [ %i.ck, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod146.a = icmp ne i64 %xtraiter144.a, 0
  tail call void @llvm.assume(i1 %lcmp.mod146.a)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.055106.epil = phi i64 [ %i.cu, %.preheader.epil ], [ %.055106.epil.init, %.preheader.epil.preheader ] ; 3 uses
  %.057105.epil = phi i64 [ %i.ct, %.preheader.epil ], [ %.057105.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %epil.iter.a = phi i64 [ %epil.iter.next.a, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.055106.epil
  store i64 %.057105.epil, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.copyload, i64 %.055106.epil
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = mul nsw i64 %i.cs, %.057105.epil
  %i.cu = add nuw nsw i64 %.055106.epil, 1
  %epil.iter.next.a = add i64 %epil.iter.a, 1     ; 2 uses
  %epil.iter.cmp.not.a = icmp eq i64 %epil.iter.next.a, %xtraiter144.a
  br i1 %epil.iter.cmp.not.a, label %.loopexit, label %.preheader.epil, !llvm.loop !66

.loopexit.loopexit137.unr-lcssa:                  ; preds = %bb.f
  %lcmp.mod145.not = icmp eq i64 %xtraiter144, 0
  br i1 %lcmp.mod145.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit137.unr-lcssa, %.preheader136
  %.0.in104.epil.init = phi i64 [ %i.b, %.preheader136 ], [ %.0.a, %.loopexit.loopexit137.unr-lcssa ]
  %.1103.epil.init = phi i64 [ 1, %.preheader136 ], [ %i.cp, %.loopexit.loopexit137.unr-lcssa ]
  %lcmp.mod146 = icmp ne i64 %xtraiter144, 0
  tail call void @llvm.assume(i1 %lcmp.mod146)
  br label %15

15:                                               ; preds = %15, %.epil.preheader
  %.0.in104.epil = phi i64 [ %.0.epil, %15 ], [ %.0.in104.epil.init, %.epil.preheader ]
  %.1103.epil = phi i64 [ %19, %15 ], [ %.1103.epil.init, %.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %15 ], [ 0, %.epil.preheader ]
  %.0.epil = add nsw i64 %.0.in104.epil, -1       ; 3 uses
  %16 = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.0.epil
  store i64 %.1103.epil, ptr %16, align 8
  %17 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.copyload, i64 %.0.epil
  %18 = load i64, ptr %17, align 8
  %19 = mul nsw i64 %18, %.1103.epil
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter144
  br i1 %epil.iter.cmp.not, label %.loopexit, label %15, !llvm.loop !67

.loopexit:                                        ; preds = %.preheader99.prol.loopexit, %.preheader99, %.loopexit.loopexit137.unr-lcssa, %15, %.loopexit.loopexit.unr-lcssa, %.preheader.epil, %middle.block133, %_ZN8nanobind6detail15scoped_pymallocINS0_26managed_dltensor_versionedEEC2Emm.exit
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
  %i.de = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  store i32 %i.a, ptr %i.de, align 4
  %i.df = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store ptr %.062, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store ptr %.061, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store i64 %.sroa.11.0.copyload, ptr %i.dh, align 8
  store ptr %i.f, ptr %i.cv, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store atomic i64 0, ptr %i.di seq_cst, align 8
  %.not.i.i = icmp eq ptr %.sroa.10.0.copyload, null
  br i1 %.not.i.i, label %_ZL11_Py_XNewRefP7_object.exit, label %bb.i

bb.i:                                             ; preds = %_ZN8nanobind6detail15scoped_pymallocINS0_14ndarray_handleEEC2Emm.exit
  %i.dj = load i32, ptr %.sroa.10.0.copyload, align 8
  %i.dk = add i32 %i.dj, 1                        ; 2 uses
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %_ZL11_Py_XNewRefP7_object.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %i.dk, ptr %.sroa.10.0.copyload, align 8
  br label %_ZL11_Py_XNewRefP7_object.exit

_ZL11_Py_XNewRefP7_object.exit:                   ; preds = %bb.j, %bb.i, %_ZN8nanobind6detail15scoped_pymallocINS0_14ndarray_handleEEC2Emm.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store ptr %.sroa.10.0.copyload, ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  store ptr null, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  store i8 1, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cv, i64 33
  store i8 0, ptr %i.dp, align 1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cv, i64 34
  store i8 0, ptr %i.dq, align 2
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cv, i64 35
  store i8 %.mask, ptr %i.dr, align 1
  invoke void @PyMem_Free(ptr noundef null)
          to label %_ZN8nanobind6detail15scoped_pymallocINS0_14ndarray_handleEED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %_ZL11_Py_XNewRefP7_object.exit
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  tail call void @__clang_call_terminate(ptr %i.dt) #25
  unreachable

_ZN8nanobind6detail15scoped_pymallocINS0_14ndarray_handleEED2Ev.exit: ; preds = %_ZL11_Py_XNewRefP7_object.exit
  invoke void @PyMem_Free(ptr noundef null)
          to label %_ZN8nanobind6detail15scoped_pymallocINS0_26managed_dltensor_versionedEED2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %_ZN8nanobind6detail15scoped_pymallocINS0_14ndarray_handleEED2Ev.exit
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  tail call void @__clang_call_terminate(ptr %i.dv) #25
  unreachable

_ZN8nanobind6detail15scoped_pymallocINS0_26managed_dltensor_versionedEED2Ev.exit: ; preds = %_ZN8nanobind6detail15scoped_pymallocINS0_14ndarray_handleEED2Ev.exit
  ret ptr %i.cv

bb.m:                                             ; preds = %.loopexit
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke void @PyMem_Free(ptr noundef nonnull %i.f)
          to label %_ZN8nanobind6detail15scoped_pymallocINS0_26managed_dltensor_versionedEED2Ev.exit69 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  tail call void @__clang_call_terminate(ptr %i.dy) #25
  unreachable

_ZN8nanobind6detail15scoped_pymallocINS0_26managed_dltensor_versionedEED2Ev.exit69: ; preds = %bb.m
  resume { ptr, i32 } %i.dw
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @_ZN8nanobind6detail14ndarray_exportEPNS0_12nb_internalsEPNS0_14ndarray_handleEiNS_9rv_policyEPNS0_12cleanup_listE(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  %5 = alloca [5 x %struct.PyType_Slot], align 16 ; 4 uses
  %6 = alloca %struct.PyType_Spec, align 8        ; 8 uses
  %i.b = alloca [2 x ptr], align 16               ; 5 uses
  %i.c = alloca [2 x ptr], align 16               ; 5 uses
  %7 = alloca %"class.nanobind::object", align 8  ; 6 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZNKR8nanobind6handle7dec_refEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i8 %3, label %.thread [
    i8 6, label %bb.c
    i8 0, label %bb.i
    i8 1, label %bb.i
    i8 3, label %.critedge
    i8 4, label %.critedge
  ]

bb.c:                                             ; preds = %bb.b
  %.not103 = icmp eq ptr %4, null
  br i1 %.not103, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not104 = icmp eq ptr %i.e, %i.g
  br i1 %.not104, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %.not105 = icmp eq ptr %i.i, null
  br i1 %.not105, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %.not106 = icmp eq ptr %i.g, null
  br i1 %.not106, label %bb.g, label %.invoke249

bb.g:                                             ; preds = %bb.f
  %i.j = load i32, ptr %i.e, align 8
  %i.k = add i32 %i.j, 1                          ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZL10_Py_NewRefP7_object.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.k, ptr %i.e, align 8
  br label %_ZL10_Py_NewRefP7_object.exit

_ZL10_Py_NewRefP7_object.exit:                    ; preds = %bb.g, %bb.h
  store ptr %i.e, ptr %i.f, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.d, %bb.e, %_ZL10_Py_NewRefP7_object.exit, %bb.b, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.critedge, label %.thread

.thread:                                          ; preds = %bb.b, %bb.i, %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8              ; 5 uses
  %.not107 = icmp eq ptr %i.t, null
  br i1 %.not107, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.thread
  %i.u = load i32, ptr %i.t, align 8
  %i.v = add i32 %i.u, 1                          ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %_ZNKR8nanobind6handle7dec_refEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.v, ptr %i.t, align 8
  br label %_ZNKR8nanobind6handle7dec_refEv.exit

bb.m:                                             ; preds = %.thread
  %i.x = icmp eq i8 %3, 7
  br i1 %i.x, label %_ZNKR8nanobind6handle7dec_refEv.exit, label %.thread202
end_hunk_0
begin_hunk_1_@_ZN8nanobind6detail14ndarray_exportEPNS0_12nb_internalsEPNS0_14ndarray_handleEiNS_9rv_policyEPNS0_12cleanup_listE:bb.a
  br label %_ZN8nanobind6detailL13nb_ndarray_tpEPNS0_12nb_internalsE.exit

bb.w:                                             ; preds = %bb.s
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #25
  unreachable

_ZN8nanobind6detailL13nb_ndarray_tpEPNS0_12nb_internalsE.exit: ; preds = %bb.r, %bb.v
  %.114.i = phi ptr [ %i.aj, %bb.r ], [ %i.ao, %bb.v ]
  %i.ar = invoke ptr @_PyObject_New(ptr noundef nonnull %.114.i)
          to label %bb.x unwind label %bb.bn      ; 4 uses

bb.x:                                             ; preds = %_ZN8nanobind6detailL13nb_ndarray_tpEPNS0_12nb_internalsE.exit
  %.not110.not = icmp eq ptr %i.ar, null
  br i1 %.not110.not, label %_ZNKR8nanobind6handle7dec_refEv.exit, label %_ZNKR8nanobind6handle7dec_refEv.exit140

_ZNKR8nanobind6handle7dec_refEv.exit140:          ; preds = %bb.x
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %1, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr %0, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = atomicrmw add ptr %i.au, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZNKR8nanobind6handle7dec_refEv.exit127

_ZNKR8nanobind6handle7dec_refEv.exit127:          ; preds = %.thread207, %_ZNKR8nanobind6handle7dec_refEv.exit140
  %.sroa.0177.0 = phi ptr [ %i.ar, %_ZNKR8nanobind6handle7dec_refEv.exit140 ], [ %i.ah, %.thread207 ] ; 11 uses
  switch i32 %2, label %_ZNKR8nanobind6handle7dec_refEv.exit127.thread [
    i32 1, label %bb.y
    i32 2, label %bb.ah
    i32 3, label %bb.ah
    i32 4, label %bb.ah
    i32 5, label %bb.ah
    i32 8, label %bb.ae
    i32 6, label %bb.af
  ]

bb.y:                                             ; preds = %_ZNKR8nanobind6handle7dec_refEv.exit127
  %i.aw = zext i1 %.097197206 to i32
  %i.ax = invoke fastcc noundef ptr @_ZN8nanobind6detailL17ndarray_export_fnEPNS0_12nb_internalsENS0_19ndarray_export_slotE(ptr noundef %0, i32 noundef %i.aw)
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store ptr null, ptr %i.b, align 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %.sroa.0177.0, ptr %i.ay, align 8
  %i.az = invoke ptr @PyObject_Vectorcall(ptr noundef %i.ax, ptr noundef nonnull %i.ay, i64 noundef -9223372036854775807, ptr noundef null)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %.critedge120

bb.ab:                                            ; preds = %bb.y
  %i.ba = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.ad

bb.ac:                                            ; preds = %bb.z
  %i.bb = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn117 = phi { ptr, i32 } [ %i.bb, %bb.ac ], [ %i.ba, %bb.ab ] ; 2 uses
  %.082 = extractvalue { ptr, i32 } %.pn117, 1
  %.087 = extractvalue { ptr, i32 } %.pn117, 0    ; 2 uses
  %i.bc = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #26
  %i.bd = icmp eq i32 %.082, %i.bc
  br i1 %i.bd, label %.invoke250, label %bb.bo

bb.ae:                                            ; preds = %_ZNKR8nanobind6handle7dec_refEv.exit127
  br label %bb.ah

bb.af:                                            ; preds = %_ZNKR8nanobind6handle7dec_refEv.exit127
  %i.be = invoke ptr @PyMemoryView_FromObject(ptr noundef %.sroa.0177.0)
          to label %.critedge120 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bf = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.ar

bb.ah:                                            ; preds = %_ZNKR8nanobind6handle7dec_refEv.exit127, %_ZNKR8nanobind6handle7dec_refEv.exit127, %_ZNKR8nanobind6handle7dec_refEv.exit127, %bb.ae, %_ZNKR8nanobind6handle7dec_refEv.exit127
  %.081 = phi i32 [ %2, %_ZNKR8nanobind6handle7dec_refEv.exit127 ], [ 6, %bb.ae ], [ %2, %_ZNKR8nanobind6handle7dec_refEv.exit127 ], [ %2, %_ZNKR8nanobind6handle7dec_refEv.exit127 ], [ %2, %_ZNKR8nanobind6handle7dec_refEv.exit127 ]
  %i.bg = invoke fastcc noundef ptr @_ZN8nanobind6detailL17ndarray_export_fnEPNS0_12nb_internalsENS0_19ndarray_export_slotE(ptr noundef %0, i32 noundef %.081)
          to label %bb.ai unwind label %bb.ao

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store ptr null, ptr %i.c, align 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %.sroa.0177.0, ptr %i.bh, align 8
  %i.bi = invoke ptr @PyObject_Vectorcall(ptr noundef %i.bg, ptr noundef nonnull %i.bh, i64 noundef -9223372036854775807, ptr noundef null)
          to label %bb.aj unwind label %bb.ap     ; 2 uses

bb.aj:                                            ; preds = %bb.ai
  %.not.i.i.i141 = icmp eq ptr %.sroa.0177.0, null
  br i1 %.not.i.i.i141, label %bb.aq, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bj = load i64, ptr %.sroa.0177.0, align 8    ; 2 uses
  %i.bk = and i64 %i.bj, 2147483648
  %.not2.i.i.i142 = icmp eq i64 %i.bk, 0
  br i1 %.not2.i.i.i142, label %bb.al, label %bb.aq

bb.al:                                            ; preds = %bb.ak
  %i.bl = add nsw i64 %i.bj, -1                   ; 2 uses
  store i64 %i.bl, ptr %.sroa.0177.0, align 8
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %bb.al
  invoke void @_Py_Dealloc(ptr noundef nonnull %.sroa.0177.0)
          to label %bb.aq unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #25
  unreachable

bb.ao:                                            ; preds = %bb.ah
  %i.bp = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.ar

bb.ap:                                            ; preds = %bb.ai
  %i.bq = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.ar

bb.aq:                                            ; preds = %bb.aj, %bb.ak, %bb.al, %bb.am
  %.not233 = icmp eq ptr %i.bi, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br i1 %.not233, label %_ZNKR8nanobind6handle7dec_refEv.exit, label %_ZNKR8nanobind6handle7dec_refEv.exit127.thread

bb.ar:                                            ; preds = %bb.ao, %bb.ap, %bb.ag
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bf, %bb.ag ], [ %i.bq, %bb.ap ], [ %i.bp, %bb.ao ] ; 2 uses
  %.385 = extractvalue { ptr, i32 } %.pn.pn.pn, 1
  %.390 = extractvalue { ptr, i32 } %.pn.pn.pn, 0 ; 2 uses
  %i.br = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #26
  %i.bs = icmp eq i32 %.385, %i.br
  br i1 %i.bs, label %.invoke250, label %bb.bo

.invoke250:                                       ; preds = %bb.ar, %bb.ad
  %.087.sink = phi ptr [ %.087, %bb.ad ], [ %.390, %bb.ar ]
  %i.bt = call ptr @__cxa_begin_catch(ptr %.087.sink) #26 ; 2 uses
  %i.bu = load ptr, ptr @PyExc_TypeError, align 8
  %i.bv = load ptr, ptr %i.bt, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = call noundef ptr %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %i.bt) #26
  %i.bz = invoke ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bu, ptr noundef nonnull @.str.2, ptr noundef %i.by)
          to label %.invoke unwind label %bb.bn   ; 0 uses

.invoke:                                          ; preds = %.invoke250
  invoke void @__cxa_end_catch()
          to label %.critedge120 unwind label %bb.bn

_ZNKR8nanobind6handle7dec_refEv.exit127.thread:   ; preds = %bb.aq, %bb.q, %bb.p, %_ZNKR8nanobind6handle7dec_refEv.exit127
  %.097197205212.ph = phi i1 [ true, %bb.q ], [ %.097197206, %_ZNKR8nanobind6handle7dec_refEv.exit127 ], [ true, %bb.p ], [ %.097197206, %bb.aq ]
  %.sroa.0177.2.ph = phi ptr [ %i.z, %bb.q ], [ %.sroa.0177.0, %_ZNKR8nanobind6handle7dec_refEv.exit127 ], [ %i.z, %bb.p ], [ %i.bi, %bb.aq ] ; 7 uses
  %i.ca = icmp ne i32 %2, 8
  %or.cond14 = and i1 %i.ca, %.097197205212.ph
  br i1 %or.cond14, label %bb.as, label %_ZNKR8nanobind6handle7dec_refEv.exit

bb.as:                                            ; preds = %_ZNKR8nanobind6handle7dec_refEv.exit127.thread
  %i.cb = icmp eq i32 %2, 2
  %.in.v = select i1 %i.cb, i64 696, i64 712
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.cc = load ptr, ptr %.in, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.cd = invoke ptr @PyObject_GetAttr(ptr noundef %.sroa.0177.2.ph, ptr noundef %i.cc)
          to label %.noexc unwind label %bb.be    ; 3 uses

.noexc:                                           ; preds = %bb.as
  %.not.i.i147 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i147, label %bb.at, label %bb.au, !prof !3

bb.at:                                            ; preds = %.noexc
  invoke void @_ZN8nanobind6detail18raise_python_errorEv() #28
          to label %.noexc148 unwind label %bb.be

.noexc148:                                        ; preds = %bb.at
  unreachable

bb.au:                                            ; preds = %.noexc
  store ptr %i.cd, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !70
  store i64 0, ptr %i.a, align 8, !noalias !70
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cf = invoke noundef ptr @_ZN8nanobind6detail14obj_vectorcallEPNS0_12nb_internalsEP7_objectPKS4_mmj(ptr noundef nonnull %0, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.ce, i64 noundef -9223372036854775808, i64 noundef 0, i32 noundef 0)
          to label %bb.av unwind label %bb.bf

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !70
  %.not.i.i.i150 = icmp eq ptr %.sroa.0177.2.ph, null
  br i1 %.not.i.i.i150, label %_ZNKR8nanobind6handle7dec_refEv.exit155, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cg = load i64, ptr %.sroa.0177.2.ph, align 8 ; 2 uses
  %i.ch = and i64 %i.cg, 2147483648
  %.not2.i.i.i151 = icmp eq i64 %i.ch, 0
  br i1 %.not2.i.i.i151, label %bb.ax, label %_ZNKR8nanobind6handle7dec_refEv.exit155

bb.ax:                                            ; preds = %bb.aw
  %i.ci = add nsw i64 %i.cg, -1                   ; 2 uses
  store i64 %i.ci, ptr %.sroa.0177.2.ph, align 8
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.ay, label %_ZNKR8nanobind6handle7dec_refEv.exit155

bb.ay:                                            ; preds = %bb.ax
  invoke void @_Py_Dealloc(ptr noundef nonnull %.sroa.0177.2.ph)
          to label %_ZNKR8nanobind6handle7dec_refEv.exit155 unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  call void @__clang_call_terminate(ptr %i.cl) #25
  unreachable

_ZNKR8nanobind6handle7dec_refEv.exit155:          ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.av
  %i.cm = load ptr, ptr %7, align 8               ; 4 uses
  %.not.i.i156 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i156, label %.thread225, label %bb.ba

bb.ba:                                            ; preds = %_ZNKR8nanobind6handle7dec_refEv.exit155
  %i.cn = load i64, ptr %i.cm, align 8            ; 2 uses
  %i.co = and i64 %i.cn, 2147483648
  %.not2.i.i157 = icmp eq i64 %i.co, 0
  br i1 %.not2.i.i157, label %bb.bb, label %.thread225

bb.bb:                                            ; preds = %bb.ba
  %i.cp = add nsw i64 %i.cn, -1                   ; 2 uses
  store i64 %i.cp, ptr %i.cm, align 8
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %bb.bc, label %.thread225

bb.bc:                                            ; preds = %bb.bb
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.cm)
          to label %.thread225 unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #25
  unreachable

.thread225:                                       ; preds = %bb.bc, %bb.bb, %bb.ba, %_ZNKR8nanobind6handle7dec_refEv.exit155
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %_ZNKR8nanobind6handle7dec_refEv.exit

bb.be:                                            ; preds = %bb.at, %bb.as
  %i.ct = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.bg

bb.bf:                                            ; preds = %bb.au
  %i.cu = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  %i.cv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #26 ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.pn115 = phi { ptr, i32 } [ %i.cu, %bb.bf ], [ %i.ct, %bb.be ] ; 2 uses
  %.486 = extractvalue { ptr, i32 } %.pn115, 1
  %.491 = extractvalue { ptr, i32 } %.pn115, 0    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.cw = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #26
  %i.cx = icmp eq i32 %.486, %i.cw
  br i1 %i.cx, label %bb.bh, label %bb.bo

bb.bh:                                            ; preds = %bb.bg
  %i.cy = call ptr @__cxa_begin_catch(ptr %.491) #26 ; 2 uses
  %i.cz = load ptr, ptr @PyExc_RuntimeError, align 8
  %i.da = load ptr, ptr %i.cy, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = call noundef ptr %i.dc(ptr noundef nonnull align 8 dereferenceable(8) %i.cy) #26
  %i.de = invoke ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.cz, ptr noundef nonnull @.str.3, ptr noundef %i.dd)
          to label %bb.bi unwind label %bb.bn     ; 0 uses

bb.bi:                                            ; preds = %bb.bh
  invoke void @__cxa_end_catch()
          to label %.critedge120 unwind label %bb.bn

.critedge120:                                     ; preds = %.invoke, %bb.bi, %bb.af, %bb.aa
  %.sroa.0177.5 = phi ptr [ %.sroa.0177.0, %bb.aa ], [ %.sroa.0177.0, %.invoke ], [ %.sroa.0177.2.ph, %bb.bi ], [ %.sroa.0177.0, %bb.af ] ; 4 uses
  %.6 = phi ptr [ %i.az, %bb.aa ], [ null, %.invoke ], [ null, %bb.bi ], [ %i.be, %bb.af ] ; 4 uses
  %.not.i.i159 = icmp eq ptr %.sroa.0177.5, null
  br i1 %.not.i.i159, label %_ZNKR8nanobind6handle7dec_refEv.exit, label %bb.bj

bb.bj:                                            ; preds = %.critedge120
  %i.df = load i64, ptr %.sroa.0177.5, align 8    ; 2 uses
  %i.dg = and i64 %i.df, 2147483648
  %.not2.i.i160 = icmp eq i64 %i.dg, 0
  br i1 %.not2.i.i160, label %bb.bk, label %_ZNKR8nanobind6handle7dec_refEv.exit

bb.bk:                                            ; preds = %bb.bj
  %i.dh = add nsw i64 %i.df, -1                   ; 2 uses
  store i64 %i.dh, ptr %.sroa.0177.5, align 8
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %bb.bl, label %_ZNKR8nanobind6handle7dec_refEv.exit

bb.bl:                                            ; preds = %bb.bk
  invoke void @_Py_Dealloc(ptr noundef nonnull %.sroa.0177.5)
          to label %_ZNKR8nanobind6handle7dec_refEv.exit unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  call void @__clang_call_terminate(ptr %i.dk) #25
  unreachable

_ZNKR8nanobind6handle7dec_refEv.exit:             ; preds = %.invoke249, %.thread225, %_ZNKR8nanobind6handle7dec_refEv.exit127.thread, %bb.aq, %bb.x, %bb.bl, %bb.bk, %bb.bj, %.critedge120, %bb.l, %bb.k, %bb.a, %bb.m
  %.8 = phi ptr [ null, %.invoke249 ], [ %i.t, %bb.l ], [ null, %bb.m ], [ @_Py_NoneStruct, %bb.a ], [ null, %bb.aq ], [ %i.t, %bb.k ], [ %.6, %bb.bl ], [ %.6, %.critedge120 ], [ %.6, %bb.bj ], [ %.6, %bb.bk ], [ %.sroa.0177.2.ph, %_ZNKR8nanobind6handle7dec_refEv.exit127.thread ], [ %i.cf, %.thread225 ], [ null, %bb.x ]
  ret ptr %.8

bb.bn:                                            ; preds = %.invoke250, %.invoke249, %.invoke, %bb.bi, %bb.bh, %_ZN8nanobind6detailL13nb_ndarray_tpEPNS0_12nb_internalsE.exit, %.thread207
  %i.dl = landingpad { ptr, i32 }
          catch ptr null
  %i.dm = extractvalue { ptr, i32 } %i.dl, 0
  call void @__clang_call_terminate(ptr %i.dm) #25
  unreachable

bb.bo:                                            ; preds = %bb.bg, %bb.ar, %bb.ad
  %.592 = phi ptr [ %.087, %bb.ad ], [ %.491, %bb.bg ], [ %.390, %bb.ar ]
  call void @__clang_call_terminate(ptr %.592) #25
  unreachable
}

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN8nanobind6detail14ndarray_handle12make_capsuleILb0EEEP7_objectv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !4, !noundef !5
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8
  %.not = icmp eq ptr %i.f, %0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @PyCapsule_New(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.18, ptr noundef nonnull @_ZN8nanobind6detailL14capsule_deleteILb0EEEvP7_object)
  br label %_ZN8nanobind6detail15scoped_pymallocINS0_16managed_dltensorEED2Ev.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.h = tail call ptr @PyMem_Malloc(i64 noundef 64) ; 5 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.e, label %_ZN8nanobind6detail15scoped_pymallocINS0_16managed_dltensorEEC2Emm.exit, !prof !3

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_ZN8nanobind6detail4failEPKcz(ptr noundef nonnull @.str.31, i64 noundef 64) #25
  unreachable

_ZN8nanobind6detail15scoped_pymallocINS0_16managed_dltensorEEC2Emm.exit: ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr %0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store ptr @_ZN8nanobind6detailL21mt_from_handle_deleteINS0_16managed_dltensorEEEvPT_, ptr %i.j, align 8
  %i.k = load i8, ptr %i.a, align 8, !range !4, !noundef !5
  %i.l = load ptr, ptr %0, align 8
  %i.m = shl nuw nsw i8 %i.k, 5
  %.idx.i = zext nneg i8 %i.m to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 48, i1 false)
  %i.o = invoke ptr @PyCapsule_New(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.18, ptr noundef nonnull @_ZN8nanobind6detailL14capsule_deleteILb0EEEvP7_object)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZN8nanobind6detail15scoped_pymallocINS0_16managed_dltensorEEC2Emm.exit
  invoke void @PyMem_Free(ptr noundef null)
          to label %_ZN8nanobind6detail15scoped_pymallocINS0_16managed_dltensorEED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #25
  unreachable

bb.h:                                             ; preds = %_ZN8nanobind6detail15scoped_pymallocINS0_16managed_dltensorEEC2Emm.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @PyMem_Free(ptr noundef null)
          to label %_ZN8nanobind6detail15scoped_pymallocINS0_16managed_dltensorEED2Ev.exit12 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #25
  unreachable

_ZN8nanobind6detail15scoped_pymallocINS0_16managed_dltensorEED2Ev.exit12: ; preds = %bb.h
  resume { ptr, i32 } %i.r

_ZN8nanobind6detail15scoped_pymallocINS0_16managed_dltensorEED2Ev.exit: ; preds = %bb.f, %bb.c
  %.09 = phi ptr [ %i.g, %bb.c ], [ %i.o, %bb.f ] ; 2 uses
  %.not11 = icmp eq ptr %.09, null
  br i1 %.not11, label %bb.j, label %bb.k, !prof !3

bb.j:                                             ; preds = %_ZN8nanobind6detail15scoped_pymallocINS0_16managed_dltensorEED2Ev.exit
  tail call void @_ZN8nanobind6detail16fail_unspecifiedEv() #25
  unreachable

bb.k:                                             ; preds = %_ZN8nanobind6detail15scoped_pymallocINS0_16managed_dltensorEED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = atomicrmw add ptr %i.u, i64 1 seq_cst, align 8 ; 0 uses
  ret ptr %.09
}

declare ptr @_PyObject_New(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZN8nanobind6detailL17ndarray_export_fnEPNS0_12nb_internalsENS0_19ndarray_export_slotE(ptr noundef %0, i32 noundef range(i32 0, 7) %1) unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.nanobind::object", align 8  ; 7 uses
  %3 = alloca %"class.nanobind::object", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = zext nneg i32 %1 to i64                  ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.b ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.k, !prof !3

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.e = getelementptr inbounds nuw [16 x i8], ptr @_ZN8nanobind6detailL19ndarray_export_specE, i64 %i.b ; 2 uses
  %i.f = load ptr, ptr %i.e, align 16
  %i.g = tail call ptr @PyImport_ImportModule(ptr noundef %i.f) ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.c, label %_ZN8nanobind6detail13module_importEPKc.exit, !prof !3

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN8nanobind6detail18raise_python_errorEv() #28
  unreachable

_ZN8nanobind6detail13module_importEPKc.exit:      ; preds = %bb.b
  store ptr %i.g, ptr %3, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #27, !noalias !73
  %i.k = add i64 %i.j, 1
  %i.l = invoke noundef ptr @_ZN8nanobind6detail11getattr_strEPNS0_12nb_internalsEP7_objectPKcm(ptr noundef nonnull %0, ptr noundef nonnull %i.g, ptr noundef nonnull %i.i, i64 noundef %i.k)
          to label %bb.d unwind label %bb.e       ; 4 uses

bb.d:                                             ; preds = %_ZN8nanobind6detail13module_importEPKc.exit
  store ptr %i.l, ptr %2, align 8, !alias.scope !73
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.n = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not26 = icmp eq ptr %i.n, null
  br i1 %.not26, label %bb.g, label %bb.i

bb.e:                                             ; preds = %_ZN8nanobind6detail13module_importEPKc.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.j

bb.f:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #26 ; 0 uses
  br label %bb.j

bb.g:                                             ; preds = %bb.d
  store ptr null, ptr %2, align 8
  invoke void @_ZN8nanobind6detail10new_objectEPNS0_12nb_internalsEP7_object(ptr noundef nonnull %0, ptr noundef %i.l)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  store ptr %i.l, ptr %i.c, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.h
  %.022 = phi ptr [ %i.l, %bb.h ], [ %i.n, %bb.d ]
  %i.s = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.k

bb.j:                                             ; preds = %bb.f, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %.pn.pn

bb.k:                                             ; preds = %bb.a, %bb.i
  %.123 = phi ptr [ %.022, %bb.i ], [ %i.d, %bb.a ]
  ret ptr %.123
}

declare ptr @PyObject_Vectorcall(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #10

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

declare void @__cxa_end_catch() local_unnamed_addr

declare ptr @PyMemoryView_FromObject(ptr noundef) local_unnamed_addr #6

declare ptr @_PyType_Lookup(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZL10Py_XDECREFP7_object.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = and i64 %i.b, 2147483648
  %.not2.i = icmp eq i64 %i.c, 0
  br i1 %.not2.i, label %bb.c, label %_ZL10Py_XDECREFP7_object.exit

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i64 %i.b, -1                     ; 2 uses
  store i64 %i.d, ptr %i.a, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %_ZL10Py_XDECREFP7_object.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.a)
          to label %_ZL10Py_XDECREFP7_object.exit unwind label %bb.e

_ZL10Py_XDECREFP7_object.exit:                    ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  ret ptr %0

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #25
  unreachable
}

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal void @_ZN8nanobind6detailL21mt_from_buffer_deleteEPNS0_26managed_dltensor_versionedE(ptr noundef %0) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN8nanobind6detail8is_aliveEv() #26
  br i1 %i.a, label %_ZN8nanobind6detail13cleanup_guardC2Ev.exit, label %_ZN8nanobind6detail13cleanup_guardD2Ev.exit6

_ZN8nanobind6detail13cleanup_guardC2Ev.exit:      ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZN8nanobind6detail13tstate_ensureEv() #26 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN8nanobind6detail13cleanup_guardD2Ev.exit6, label %bb.b

bb.b:                                             ; preds = %_ZN8nanobind6detail13cleanup_guardC2Ev.exit
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  invoke void @PyBuffer_Release(ptr noundef %i.d)
          to label %bb.c unwind label %_ZN8nanobind6detail13cleanup_guardD2Ev.exit

bb.c:                                             ; preds = %bb.b
  invoke void @PyMem_Free(ptr noundef %i.d)
          to label %bb.d unwind label %_ZN8nanobind6detail13cleanup_guardD2Ev.exit

bb.d:                                             ; preds = %bb.c
  invoke void @PyMem_Free(ptr noundef nonnull %0)
          to label %bb.e unwind label %_ZN8nanobind6detail13cleanup_guardD2Ev.exit

_ZN8nanobind6detail13cleanup_guardD2Ev.exit:      ; preds = %bb.d, %bb.c, %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8nanobind6detail14tstate_releaseEPv(ptr noundef nonnull %i.b) #26
  resume { ptr, i32 } %i.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN8nanobind6detail14tstate_releaseEPv(ptr noundef nonnull %i.b) #26
  br label %_ZN8nanobind6detail13cleanup_guardD2Ev.exit6

_ZN8nanobind6detail13cleanup_guardD2Ev.exit6:     ; preds = %bb.a, %_ZN8nanobind6detail13cleanup_guardC2Ev.exit, %bb.e
  ret void
}

declare i32 @PyErr_ExceptionMatches(ptr noundef) local_unnamed_addr #6

declare void @PyErr_Clear() local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 6) i32 @_ZN8nanobind6detailL16detect_frameworkEPNS0_12nb_internalsEP11_typeobject(ptr %.640.val, ptr noundef %0) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke ptr @PyObject_GetAttr(ptr noundef %0, ptr noundef %.640.val)
          to label %bb.b unwind label %bb.h       ; 5 uses

bb.b:                                             ; preds = %bb.a
  %.not5 = icmp eq ptr %i.a, null                 ; 2 uses
  br i1 %.not5, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = invoke ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %i.a, ptr noundef null)
          to label %bb.d unwind label %bb.h       ; 6 uses

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.d
  %i.c = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(6) @.str.4, i64 noundef 5) #27
  %.not17 = icmp eq i32 %i.c, 0
  br i1 %.not17, label %.loopexit.thread, label %.preheader.1

.thread:                                          ; preds = %bb.b, %bb.d
  invoke void @PyErr_Clear()
          to label %.loopexit unwind label %bb.h

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.d = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(6) @.str.6, i64 noundef 5) #27
  %.not17.1 = icmp eq i32 %i.d, 0
  br i1 %.not17.1, label %.loopexit.thread, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.e = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(11) @.str.9, i64 noundef 10) #27
  %.not17.2 = icmp eq i32 %i.e, 0
  br i1 %.not17.2, label %.loopexit.thread, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.f = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(7) @.str.12, i64 noundef 6) #27
  %.not17.3 = icmp eq i32 %i.f, 0
  br i1 %.not17.3, label %.loopexit.thread, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.g = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(5) @.str.15, i64 noundef 4) #27
  %.not17.4 = icmp eq i32 %i.g, 0
  %spec.select = select i1 %.not17.4, i32 5, i32 0
  br label %.loopexit.thread

.loopexit:                                        ; preds = %.thread
  br i1 %.not5, label %_ZNKR8nanobind6handle7dec_refEv.exit, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader, %.loopexit
  %.310 = phi i32 [ 0, %.loopexit ], [ 4, %.preheader.3 ], [ 3, %.preheader.2 ], [ %spec.select, %.preheader.4 ], [ 2, %.preheader.1 ], [ 1, %.preheader.preheader ] ; 3 uses
  %i.h = load i64, ptr %i.a, align 8              ; 2 uses
  %i.i = and i64 %i.h, 2147483648
  %.not2.i.i = icmp eq i64 %i.i, 0
  br i1 %.not2.i.i, label %bb.e, label %_ZNKR8nanobind6handle7dec_refEv.exit

bb.e:                                             ; preds = %.loopexit.thread
  %i.j = add nsw i64 %i.h, -1                     ; 2 uses
  store i64 %i.j, ptr %i.a, align 8
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.f, label %_ZNKR8nanobind6handle7dec_refEv.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.a)
          to label %_ZNKR8nanobind6handle7dec_refEv.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #25
  unreachable

_ZNKR8nanobind6handle7dec_refEv.exit:             ; preds = %.loopexit, %.loopexit.thread, %bb.e, %bb.f
  %.311 = phi i32 [ 0, %.loopexit ], [ %.310, %.loopexit.thread ], [ %.310, %bb.e ], [ %.310, %bb.f ]
  ret i32 %.311

bb.h:                                             ; preds = %.thread, %bb.c, %bb.a
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #25
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8nanobind6object5resetEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNKR8nanobind6handle7dec_refEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = and i64 %i.b, 2147483648
  %.not2.i.i = icmp eq i64 %i.c, 0
  br i1 %.not2.i.i, label %bb.c, label %_ZNKR8nanobind6handle7dec_refEv.exit

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i64 %i.b, -1                     ; 2 uses
  store i64 %i.d, ptr %i.a, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %_ZNKR8nanobind6handle7dec_refEv.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.a)
          to label %_ZNKR8nanobind6handle7dec_refEv.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #25
  unreachable

_ZNKR8nanobind6handle7dec_refEv.exit:             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  store ptr null, ptr %0, align 8
  ret void
}

declare ptr @PyCapsule_GetPointer(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail15scoped_pymallocIlEC2Emm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #9 comdat align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  %i.a = shl i64 %1, 3                            ; 2 uses
  %i.b = icmp ugt i64 %1, 2305843009213693951
  %i.c = xor i64 %2, -1
  %i.d = icmp ugt i64 %i.a, %i.c
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c, !prof !3

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8nanobind6detail4failEPKcz(ptr noundef nonnull @.str.30) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = add i64 %i.a, %2                         ; 2 uses
  %i.g = tail call ptr @PyMem_Malloc(i64 noundef %i.f) ; 2 uses
  store ptr %i.g, ptr %0, align 8
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.e, !prof !3

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN8nanobind6detail4failEPKcz(ptr noundef nonnull @.str.31, i64 noundef %i.f) #25
  unreachable

bb.e:                                             ; preds = %bb.c
  ret void
}

declare i32 @PyCapsule_SetDestructor(ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @PyCapsule_SetName(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @PyBuffer_Release(ptr noundef) local_unnamed_addr #6

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #6

declare i32 @PyObject_GetBuffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare hidden void @_ZN8nanobind6detail4failEPKcz(ptr noundef, ...) local_unnamed_addr #5

declare ptr @PyMem_Malloc(i64 noundef) local_unnamed_addr #6

declare ptr @PyObject_GetAttr(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

declare ptr @PyImport_ImportModule(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline noreturn uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail18raise_python_errorEv() local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 32) #26 ; 2 uses
  tail call void @_ZN8nanobind4abi112python_errorC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN8nanobind4abi112python_errorE, ptr nonnull @_ZN8nanobind4abi112python_errorD2Ev) #28
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8nanobind4abi112python_errorC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8nanobind4abi112python_errorE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  tail call void @_ZN8nanobind6detail11error_fetchEPNS0_13error_payloadE(ptr noundef nonnull %i.a) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8nanobind4abi112python_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8nanobind4abi112python_errorE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN8nanobind6detail13error_releaseEPNS0_13error_payloadE(ptr noundef nonnull %i.a) #26
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #26
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @_ZN8nanobind6detail11error_fetchEPNS0_13error_payloadE(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8nanobind4abi112python_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8nanobind4abi112python_errorE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN8nanobind6detail13error_releaseEPNS0_13error_payloadE(ptr noundef nonnull %i.a) #26, !inline_history !74
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %0) #26, !inline_history !74
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK8nanobind4abi112python_error4whatEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef ptr @_ZN8nanobind6detail10error_whatEPNS0_13error_payloadE(ptr noundef nonnull %i.a) #26
  ret ptr %i.b
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare noundef ptr @_ZN8nanobind6detail10error_whatEPNS0_13error_payloadE(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN8nanobind6detail13error_releaseEPNS0_13error_payloadE(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

declare noundef ptr @_ZN8nanobind6detail14obj_vectorcallEPNS0_12nb_internalsEP7_objectPKS4_mmj(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

declare noundef ptr @_ZN8nanobind6detail11getattr_strEPNS0_12nb_internalsEP7_objectPKcm(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

declare ptr @PyUnicode_FromString(ptr noundef) local_unnamed_addr #6

declare ptr @PyUnicode_FromStringAndSize(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail12cleanup_list6expandEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = shl i32 %i.b, 1                          ; 2 uses
  %i.d = zext i32 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 3
  %i.f = invoke ptr @PyMem_Malloc(i64 noundef %i.e)
          to label %bb.b unwind label %bb.g       ; 3 uses

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.d, !prof !3

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @stderr, align 8
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.32, i64 64, i64 1, ptr %i.g) #30 ; 0 uses
  tail call void @abort() #25
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load i32, ptr %0, align 8
  %i.k = zext i32 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr align 8 %i.i, i64 %i.l, i1 false)
  %i.m = load i32, ptr %i.a, align 4
  %.not5 = icmp eq i32 %i.m, 5
  br i1 %.not5, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.h, align 8
  invoke void @PyMem_Free(ptr noundef %i.n)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr %i.f, ptr %i.h, align 8
  store i32 %i.c, ptr %i.a, align 4
  ret void

bb.g:                                             ; preds = %bb.e, %bb.a
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #25
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #17

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN8nanobind6detail8is_aliveEv() local_unnamed_addr #4

; Function Attrs: nounwind
declare noundef ptr @_ZN8nanobind6detail13tstate_ensureEv() local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN8nanobind6detail14tstate_releaseEPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN8nanobind6detail14ndarray_createEPNS0_12nb_internalsEPKNS0_19ndarray_create_argsEEN3$_08__invokeEPNS0_26managed_dltensor_versionedE"(ptr nofree noundef readonly captures(none) %0) #18 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8
  tail call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %.val) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN8nanobind6detailL18nb_ndarray_deallocEP7_object(ptr noundef %0) #9 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.c) #26
  tail call void @PyObject_Free(ptr noundef %0)
  %i.d = load i64, ptr %.val, align 8             ; 2 uses
  %i.e = and i64 %i.d, 2147483648
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %_ZL9Py_DECREFP7_object.exit

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -1                     ; 2 uses
  store i64 %i.f, ptr %.val, align 8
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZL9Py_DECREFP7_object.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val)
  br label %_ZL9Py_DECREFP7_object.exit

_ZL9Py_DECREFP7_object.exit:                      ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef range(i32 -1, 1) i32 @_ZN8nanobind6detailL20nb_ndarray_getbufferEP7_objectP9Py_bufferi(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((8, 16)) %1, i32 noundef %2) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load i8, ptr %i.d, align 8, !range !4, !noundef !5
  %i.f = load ptr, ptr %i.c, align 8
  %i.g = shl nuw nsw i8 %i.e, 5
  %.idx.i = zext nneg i8 %i.g to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8
  %.not = icmp eq i32 %i.j, 1
  br i1 %.not, label %bb.b, label %_ZN8nanobind6detail15scoped_pymallocIlED2Ev.exit.sink.split

bb.b:                                             ; preds = %bb.a
  %i.k = and i32 %2, 1
  %.not90 = icmp eq i32 %i.k, 0
  br i1 %.not90, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 35
  %i.m = load i8, ptr %i.l, align 1, !range !4, !noundef !5
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %_ZN8nanobind6detail15scoped_pymallocIlED2Ev.exit.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.p = load i8, ptr %i.o, align 4
  switch i8 %i.p, label %_ZN8nanobind6detail15scoped_pymallocIlED2Ev.exit.sink.split [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 5, label %bb.j
    i8 6, label %bb.m
  ]

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 21
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i32                      ; 2 uses
  %i.t = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.s)
  %i.u = icmp eq i32 %i.t, 1
  br i1 %i.u, label %.split, label %_ZN8nanobind6detail15scoped_pymallocIlED2Ev.exit.sink.split

.split:                                           ; preds = %bb.e
  %i.v = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.s, i1 true)
  %switch.tableidx = add nsw i32 %i.v, -3         ; 2 uses
  %i.w = icmp ult i32 %switch.tableidx, 4
  br i1 %i.w, label %switch.lookup, label %_ZN8nanobind6detail15scoped_pymallocIlED2Ev.exit.sink.split

bb.f:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 21
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i32                      ; 2 uses
  %i.aa = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.z)
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %.split1, label %_ZN8nanobind6detail15scoped_pymallocIlED2Ev.exit.sink.split

.split1:                                          ; preds = %bb.f
  %i.ac = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.z, i1 true)
  %switch.tableidx136 = add nsw i32 %i.ac, -3     ; 2 uses
  %i.ad = icmp ult i32 %switch.tableidx136, 4
  br i1 %i.ad, label %switch.lookup137, label %_ZN8nanobind6detail15scoped_pymallocIlED2Ev.exit.sink.split

bb.g:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 21
  %i.af = load i8, ptr %i.ae, align 1
  switch i8 %i.af, label %_ZN8nanobind6detail15scoped_pymallocIlED2Ev.exit.sink.split [
    i8 16, label %bb.m
    i8 32, label %bb.h
    i8 64, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  br label %bb.m

bb.j:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 21
  %i.ah = load i8, ptr %i.ag, align 1
  switch i8 %i.ah, label %_ZN8nanobind6detail15scoped_pymallocIlED2Ev.exit.sink.split [
    i8 32, label %bb.m
    i8 64, label %bb.k
    i8 -128, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  br label %bb.m

switch.lookup:                                    ; preds = %.split
  %i.ai = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN8nanobind6detailL20nb_ndarray_getbufferEP7_objectP9Py_bufferi, i64 %i.ai
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.m

switch.lookup137:                                 ; preds = %.split1
  %i.aj = zext nneg i32 %switch.tableidx136 to i64
  %switch.gep138 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN8nanobind6detailL20nb_ndarray_getbufferEP7_objectP9Py_bufferi.14, i64 %i.aj
  %switch.load139 = load ptr, ptr %switch.gep138, align 8
  br label %bb.m

bb.m:                                             ; preds = %switch.lookup137, %switch.lookup, %bb.d, %bb.j, %bb.g, %bb.i, %bb.h, %bb.l, %bb.k
  %.087 = phi ptr [ @.str.52, %bb.h ], [ @.str.53, %bb.i ], [ %switch.load139, %switch.lookup137 ], [ @.str.57, %bb.d ], [ @.str.56, %bb.l ], [ @.str.55, %bb.k ], [ @.str.54, %bb.j ], [ @.str.51, %bb.g ], [ %switch.load, %switch.lookup ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 22
  %i.al = load i16, ptr %i.ak, align 2
  %.not92 = icmp eq i16 %i.al, 1
  br i1 %.not92, label %bb.n, label %_ZN8nanobind6detail15scoped_pymallocIlED2Ev.exit.sink.split

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 21
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = lshr i8 %i.an, 3
  %i.ap = zext nneg i8 %i.ao to i64               ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  %i.ar = load i32, ptr %i.aq, align 8            ; 10 uses
  %i.as = sext i32 %i.ar to i64                   ; 3 uses
  %.not117 = icmp eq i32 %i.ar, 0
  br i1 %.not117, label %.critedge96.thread129, label %.lr.ph

.critedge96.thread129:                            ; preds = %bb.n
  %i.at = and i32 %2, 24
  %i.au = icmp ne i32 %i.at, 24
  br label %bb.x

.lr.ph:                                           ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.aw = load ptr, ptr %i.av, align 8            ; 5 uses
  %xtraiter = and i64 %i.as, 3
  %i.ax = icmp ult i32 %i.ar, 4
  br i1 %i.ax, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.as, -4
  br label %bb.p

._crit_edge.unr-lcssa:                            ; preds = %bb.p
  %i.ay = and i32 %i.ar, 3
  %lcmp.mod.not = icmp eq i32 %i.ay, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.084103.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.cb, %._crit_edge.unr-lcssa ]
  %.085102.epil.init = phi i64 [ 1, %.lr.ph ], [ %i.ca, %._crit_edge.unr-lcssa ]
  %.086101.epil.init = phi i64 [ %i.ap, %.lr.ph ], [ %i.bz, %._crit_edge.unr-lcssa ]
  %i.az = and i32 %i.ar, 3
  %lcmp.mod144 = icmp ne i32 %i.az, 0
  tail call void @llvm.assume(i1 %lcmp.mod144)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %.084103.epil = phi i64 [ %.084103.epil.init, %.epil.preheader ], [ %i.be, %bb.o ] ; 2 uses
  %.085102.epil = phi i64 [ %.085102.epil.init, %.epil.preheader ], [ %i.bd, %bb.o ]
  %.086101.epil = phi i64 [ %.086101.epil.init, %.epil.preheader ], [ %i.bc, %bb.o ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.084103.epil
  %i.bb = load i64, ptr %i.ba, align 8            ; 2 uses
  %i.bc = mul nsw i64 %i.bb, %.086101.epil        ; 2 uses
  %i.bd = mul nsw i64 %i.bb, %.085102.epil        ; 2 uses
  %i.be = add nuw i64 %.084103.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.o, !llvm.loop !75

._crit_edge:                                      ; preds = %bb.o, %._crit_edge.unr-lcssa
  %.lcssa141 = phi i64 [ %i.bz, %._crit_edge.unr-lcssa ], [ %i.bc, %bb.o ]
  %.lcssa140 = phi i64 [ %i.ca, %._crit_edge.unr-lcssa ], [ %i.bd, %bb.o ]
  %i.bf = icmp sgt i64 %.lcssa140, 1
  %i.bg = and i32 %2, 24
  %i.bh = icmp ne i32 %i.bg, 24                   ; 2 uses
  %or.cond = select i1 %i.bh, i1 %i.bf, i1 false
  br i1 %or.cond, label %bb.q, label %.critedge96

bb.p:                                             ; preds = %bb.p, %.lr.ph.new
  %.084103 = phi i64 [ 0, %.lr.ph.new ], [ %i.cb, %bb.p ] ; 5 uses
  %.085102 = phi i64 [ 1, %.lr.ph.new ], [ %i.ca, %bb.p ]
  %.086101 = phi i64 [ %i.ap, %.lr.ph.new ], [ %i.bz, %bb.p ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.p ]
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.084103
  %i.bj = load i64, ptr %i.bi, align 8            ; 2 uses
  %i.bk = mul nsw i64 %i.bj, %.086101
  %i.bl = mul nsw i64 %i.bj, %.085102
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.084103
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i64, ptr %i.bn, align 8            ; 2 uses
  %i.bp = mul nsw i64 %i.bo, %i.bk
  %i.bq = mul nsw i64 %i.bo, %i.bl
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.084103
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8            ; 2 uses
  %i.bu = mul nsw i64 %i.bt, %i.bp
  %i.bv = mul nsw i64 %i.bt, %i.bq
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.084103
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load i64, ptr %i.bx, align 8            ; 2 uses
  %i.bz = mul nsw i64 %i.by, %i.bu                ; 3 uses
  %i.ca = mul nsw i64 %i.by, %i.bv                ; 3 uses
  %i.cb = add nuw i64 %.084103, 4                 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %bb.p, !llvm.loop !76

bb.q:                                             ; preds = %._crit_edge
  %i.cc = icmp sgt i32 %i.ar, 0
  br i1 %i.cc, label %.lr.ph111, label %.critedge96.thread

.lr.ph111:                                        ; preds = %bb.q
  %i.cd = add nsw i32 %i.ar, -1                   ; 2 uses
  %i.ce = zext i32 %i.cd to i64                   ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8            ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 3 uses
  %i.ci = zext nneg i32 %i.ar to i64              ; 2 uses
  %xtraiter146 = and i64 %i.ci, 1
  %i.cj = icmp eq i32 %i.cd, 0
  br i1 %i.cj, label %.epil.preheader145, label %.lr.ph111.new

.lr.ph111.new:                                    ; preds = %.lr.ph111
  %unroll_iter151 = and i64 %i.ci, 2147483646
  br label %bb.s

._crit_edge112.unr-lcssa:                         ; preds = %bb.w
  %lcmp.mod148.not = icmp eq i64 %xtraiter146, 0
  br i1 %lcmp.mod148.not, label %._crit_edge112, label %.epil.preheader145

.epil.preheader145:                               ; preds = %._crit_edge112.unr-lcssa, %.lr.ph111
  %.081109.epil.init = phi i64 [ 1, %.lr.ph111 ], [ %i.dn, %._crit_edge112.unr-lcssa ]
  %.082108.epil.init = phi i64 [ %i.ce, %.lr.ph111 ], [ %i.do, %._crit_edge112.unr-lcssa ] ; 2 uses
  %.083107.epil.init = phi i1 [ true, %.lr.ph111 ], [ %i.dm, %._crit_edge112.unr-lcssa ]
  %lcmp.mod150 = trunc i32 %i.ar to i1
  tail call void @llvm.assume(i1 %lcmp.mod150)
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %.082108.epil.init
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = icmp eq i64 %i.cl, 1
  br i1 %i.cm, label %._crit_edge112.epilog-lcssa, label %bb.r

bb.r:                                             ; preds = %.epil.preheader145
  %i.cn = load ptr, ptr %i.ch, align 8
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.082108.epil.init
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = icmp eq i64 %i.cp, %.081109.epil.init
  br label %._crit_edge112.epilog-lcssa

._crit_edge112.epilog-lcssa:                      ; preds = %bb.r, %.epil.preheader145
  %i.cr = phi i1 [ true, %.epil.preheader145 ], [ %i.cq, %bb.r ]
  %i.cs = select i1 %.083107.epil.init, i1 %i.cr, i1 false
  br label %._crit_edge112

._crit_edge112:                                   ; preds = %._crit_edge112.unr-lcssa, %._crit_edge112.epilog-lcssa
  %.lcssa = phi i1 [ %i.dm, %._crit_edge112.unr-lcssa ], [ %i.cs, %._crit_edge112.epilog-lcssa ]
  br i1 %.lcssa, label %.critedge96, label %_ZN8nanobind6detail15scoped_pymallocIlED2Ev.exit.sink.split

bb.s:                                             ; preds = %bb.w, %.lr.ph111.new
  %.081109 = phi i64 [ 1, %.lr.ph111.new ], [ %i.dn, %bb.w ] ; 2 uses
  %.082108 = phi i64 [ %i.ce, %.lr.ph111.new ], [ %i.do, %bb.w ] ; 4 uses
  %.083107 = phi i1 [ true, %.lr.ph111.new ], [ %i.dm, %bb.w ]
  %niter152 = phi i64 [ 0, %.lr.ph111.new ], [ %niter152.next.1, %bb.w ]
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %.082108
  %i.cu = load i64, ptr %i.ct, align 8            ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 1
  br i1 %i.cv, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cw = load ptr, ptr %i.ch, align 8
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %.082108
  %i.cy = load i64, ptr %i.cx, align 8
  %i.cz = icmp eq i64 %i.cy, %.081109
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.da = phi i1 [ true, %bb.s ], [ %i.cz, %bb.t ]
  %i.db = select i1 %.083107, i1 %i.da, i1 false
  %i.dc = mul nsw i64 %i.cu, %.081109             ; 2 uses
  %i.dd = add nsw i64 %.082108, -1                ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8            ; 2 uses
  %i.dg = icmp eq i64 %i.df, 1
  br i1 %i.dg, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dh = load ptr, ptr %i.ch, align 8
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.dd
  %i.dj = load i64, ptr %i.di, align 8
  %i.dk = icmp eq i64 %i.dj, %i.dc
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dl = phi i1 [ true, %bb.u ], [ %i.dk, %bb.v ]
  %i.dm = select i1 %i.db, i1 %i.dl, i1 false     ; 3 uses
  %i.dn = mul nsw i64 %i.df, %i.dc                ; 2 uses
  %i.do = add nsw i64 %.082108, -2                ; 2 uses
  %niter152.next.1 = add i64 %niter152, 2         ; 2 uses
  %niter152.ncmp.1.not = icmp eq i64 %niter152.next.1, %unroll_iter151
  br i1 %niter152.ncmp.1.not, label %._crit_edge112.unr-lcssa, label %bb.s, !llvm.loop !77

.critedge96:                                      ; preds = %._crit_edge112, %._crit_edge
  %i.dp = shl nuw nsw i64 %i.as, 4
  %i.dq = icmp slt i32 %i.ar, 0
  br i1 %i.dq, label %.critedge96.thread, label %bb.x, !prof !10

.critedge96.thread:                               ; preds = %bb.q, %.critedge96
  tail call void (ptr, ...) @_ZN8nanobind6detail4failEPKcz(ptr noundef nonnull @.str.30) #25
  unreachable

bb.x:                                             ; preds = %.critedge96.thread129, %.critedge96
  %i.dr = phi i64 [ 0, %.critedge96.thread129 ], [ %i.dp, %.critedge96 ] ; 2 uses
  %.086.lcssa127131 = phi i64 [ %i.ap, %.critedge96.thread129 ], [ %.lcssa141, %.critedge96 ]
  %i.ds = phi i1 [ %i.au, %.critedge96.thread129 ], [ %i.bh, %.critedge96 ]
  %i.dt = tail call ptr @PyMem_Malloc(i64 noundef %i.dr) ; 5 uses
  %.not.i = icmp eq ptr %i.dt, null
  br i1 %.not.i, label %bb.y, label %_ZN8nanobind6detail15scoped_pymallocIlEC2Emm.exit, !prof !3

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, ...) @_ZN8nanobind6detail4failEPKcz(ptr noundef nonnull @.str.31, i64 noundef %i.dr) #25
  unreachable

_ZN8nanobind6detail15scoped_pymallocIlEC2Emm.exit: ; preds = %bb.x
  %i.du = load i32, ptr %i.aq, align 8            ; 2 uses
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.dv ; 2 uses
  %.not118 = icmp eq i32 %i.du, 0
  br i1 %.not118, label %._crit_edge116, label %.lr.ph115

.lr.ph115:                                        ; preds = %_ZN8nanobind6detail15scoped_pymallocIlEC2Emm.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.dy = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  br label %bb.ab

._crit_edge116:                                   ; preds = %bb.ab, %_ZN8nanobind6detail15scoped_pymallocIlEC2Emm.exit
  %i.dz = load ptr, ptr %i.h, align 8
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.ec = load i64, ptr %i.eb, align 8
  %i.ed = add i64 %i.ec, %i.ea
  %i.ee = inttoptr i64 %i.ed to ptr
  store ptr %i.ee, ptr %1, align 8
  %i.ef = load i32, ptr %0, align 8
  %i.eg = add i32 %i.ef, 1                        ; 2 uses
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %_ZL10_Py_NewRefP7_object.exit, label %bb.z

bb.z:                                             ; preds = %._crit_edge116
  store i32 %i.eg, ptr %0, align 8
  br label %_ZL10_Py_NewRefP7_object.exit

_ZL10_Py_NewRefP7_object.exit:                    ; preds = %._crit_edge116, %bb.z
  store ptr %0, ptr %i.a, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %.086.lcssa127131, ptr %i.ei, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.ap, ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.c, i64 35
  %i.el = load i8, ptr %i.ek, align 1, !range !4, !noundef !5
  %i.em = zext nneg i8 %i.el to i32
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %i.em, ptr %i.en, align 8
  %i.eo = load i32, ptr %i.aq, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 %i.eo, ptr %i.ep, align 4
  %i.eq = insertelement <2 x i32> poison, i32 %2, i64 0
  %i.er = shufflevector <2 x i32> %i.eq, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.es = and <2 x i32> %i.er, <i32 4, i32 8>
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.eu = icmp eq <2 x i32> %i.es, zeroinitializer
  %i.ev = insertelement <2 x ptr> poison, ptr %.087, i64 0
  %i.ew = insertelement <2 x ptr> %i.ev, ptr %i.dt, i64 1
  %i.ex = select <2 x i1> %i.eu, <2 x ptr> splat (ptr null), <2 x ptr> %i.ew
  store <2 x ptr> %i.ex, ptr %i.et, align 8
  %i.ey = select i1 %i.ds, ptr null, ptr %i.dw
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.ey, ptr %i.ez, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr null, ptr %i.fa, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.dt, ptr %i.fb, align 8
  invoke void @PyMem_Free(ptr noundef null)
          to label %_ZN8nanobind6detail15scoped_pymallocIlED2Ev.exit unwind label %bb.aa

bb.aa:                                            ; preds = %_ZL10_Py_NewRefP7_object.exit
  %i.fc = landingpad { ptr, i32 }
          catch ptr null
  %i.fd = extractvalue { ptr, i32 } %i.fc, 0
  tail call void @__clang_call_terminate(ptr %i.fd) #25
  unreachable

bb.ab:                                            ; preds = %.lr.ph115, %bb.ab
  %.0114 = phi i64 [ 0, %.lr.ph115 ], [ %i.fn, %bb.ab ] ; 5 uses
  %i.fe = load ptr, ptr %i.dx, align 8
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %.0114
  %i.fg = load i64, ptr %i.ff, align 8
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %.0114
  store i64 %i.fg, ptr %i.fh, align 8
  %i.fi = load ptr, ptr %i.dy, align 8
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %.0114
  %i.fk = load i64, ptr %i.fj, align 8
  %i.fl = mul nsw i64 %i.fk, %i.ap
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %.0114
  store i64 %i.fl, ptr %i.fm, align 8
  %i.fn = add nuw i64 %.0114, 1                   ; 2 uses
  %i.fo = load i32, ptr %i.aq, align 8
  %i.fp = sext i32 %i.fo to i64
  %i.fq = icmp ult i64 %i.fn, %i.fp
  br i1 %i.fq, label %bb.ab, label %._crit_edge116, !llvm.loop !78

_ZN8nanobind6detail15scoped_pymallocIlED2Ev.exit.sink.split: ; preds = %.split1, %.split, %._crit_edge112, %bb.m, %bb.j, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %.str.59.sink = phi ptr [ @.str.58, %bb.m ], [ @.str.42, %bb.c ], [ @.str.41, %bb.a ], [ @.str.58, %bb.d ], [ @.str.58, %.split ], [ @.str.58, %bb.e ], [ @.str.58, %.split1 ], [ @.str.58, %bb.f ], [ @.str.58, %bb.g ], [ @.str.58, %bb.j ], [ @.str.59, %._crit_edge112 ]
  %i.fr = load ptr, ptr @PyExc_BufferError, align 8
  tail call void @PyErr_SetString(ptr noundef %i.fr, ptr noundef nonnull %.str.59.sink)
  br label %_ZN8nanobind6detail15scoped_pymallocIlED2Ev.exit

_ZN8nanobind6detail15scoped_pymallocIlED2Ev.exit: ; preds = %_ZN8nanobind6detail15scoped_pymallocIlED2Ev.exit.sink.split, %_ZL10_Py_NewRefP7_object.exit
  %.3 = phi i32 [ 0, %_ZL10_Py_NewRefP7_object.exit ], [ -1, %_ZN8nanobind6detail15scoped_pymallocIlED2Ev.exit.sink.split ]
  ret i32 %.3
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN8nanobind6detailL24nb_ndarray_releasebufferEP7_objectP9Py_buffer(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @PyMem_Free(ptr noundef %i.b)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN8nanobind6detail8new_typeEPNS0_12nb_internalsEP11PyType_Spec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #19 comdat {
bb.a:
  %i.a = tail call ptr @PyType_FromSpec(ptr noundef %1) ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN8nanobind6detail10new_objectEPNS0_12nb_internalsEP7_object.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i32 @PyList_Append(ptr noundef %i.c, ptr noundef nonnull %i.a) ; 0 uses
  %i.e = load i64, ptr %i.a, align 8              ; 2 uses
  %i.f = and i64 %i.e, 2147483648
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.c, label %_ZN8nanobind6detail10new_objectEPNS0_12nb_internalsEP7_object.exit

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  store i64 %i.g, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.d, label %_ZN8nanobind6detail10new_objectEPNS0_12nb_internalsEP7_object.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a)
  br label %_ZN8nanobind6detail10new_objectEPNS0_12nb_internalsEP7_object.exit

_ZN8nanobind6detail10new_objectEPNS0_12nb_internalsEP7_object.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret ptr %i.a
}

declare void @PyObject_Free(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #9 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %4 = alloca %class.anon.28, align 8             ; 9 uses
  store ptr %1, ptr %i.a, align 8
  store ptr %3, ptr %i.b, align 8
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @PyExc_TypeError, align 8
  tail call void @PyErr_SetString(ptr noundef %i.e, ptr noundef nonnull @.str.36)
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %.not19 = icmp eq ptr %3, null
  br i1 %.not19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.f, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.g = phi i64 [ %.val, %bb.d ], [ 0, %bb.c ]   ; 3 uses
  store i64 %i.g, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8              ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8              ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.m = load i8, ptr %i.l, align 8, !range !4, !noundef !5
  %i.n = load ptr, ptr %i.i, align 8
  %i.o = shl nuw nsw i8 %i.m, 5
  %.idx.i = zext nneg i8 %i.o to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i64 0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %i.b, ptr %4, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.c, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.a, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.p, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.d, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %i.k, ptr %i.u, align 8
  %.not2760.i = icmp sgt i64 %i.g, 0
  br i1 %.not2760.i, label %.lr.ph.i.preheader, label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_.exit"

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 712
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 720
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 728
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 736
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.s
  %.01961.i = phi i64 [ %i.br, %bb.s ], [ 0, %.lr.ph.i.preheader ] ; 4 uses
  %i.ab = load ptr, ptr %i.b, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.01961.i
  %i.ae = load ptr, ptr %i.ad, align 8            ; 4 uses
  %i.af = load ptr, ptr %i.a, align 8
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.01961.i
  %i.ah = load ptr, ptr %i.ag, align 8            ; 11 uses
  %i.ai = load ptr, ptr %i.v, align 8
  %i.aj = icmp eq ptr %i.ae, %i.ai
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.ak = icmp eq ptr %i.ah, @_Py_TrueStruct
  br i1 %i.ak, label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_.exit.thread", label %bb.s

bb.g:                                             ; preds = %.lr.ph.i
  %i.al = load ptr, ptr %i.w, align 8
  %i.am = icmp eq ptr %i.ae, %i.al
  br i1 %i.am, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %.not24.i = icmp eq ptr %i.ah, @_Py_NoneStruct
  br i1 %.not24.i, label %bb.s, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr i8, ptr %i.ah, i64 8
  %.val.i.i = load ptr, ptr %i.an, align 8
  %i.ao = getelementptr i8, ptr %.val.i.i, i64 168
  %.val10.i.i = load i64, ptr %i.ao, align 8
  %i.ap = and i64 %.val10.i.i, 67108864
  %.not.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i, label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_.exit.thread", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr i8, ptr %i.ah, i64 16
  %.val9.i.i = load i64, ptr %i.aq, align 8
  %.not7.i.i = icmp eq i64 %.val9.i.i, 2
  br i1 %.not7.i.i, label %bb.k, label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_.exit.thread"

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = call i64 @PyLong_AsLong(ptr noundef %i.as)
  %i.au = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = call i64 @PyLong_AsLong(ptr noundef %i.av)
  %i.ax = call ptr @PyErr_Occurred()
  %.not8.i.i = icmp eq ptr %i.ax, null
  br i1 %.not8.i.i, label %"_ZZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_ENKUlS2_PlS9_E_clES2_S9_S9_.exit.i", label %.thread46.sink.split.sink.split.i

"_ZZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_ENKUlS2_PlS9_E_clES2_S9_S9_.exit.i": ; preds = %bb.k
  %i.ay = load i32, ptr %i.z, align 8
  %i.az = sext i32 %i.ay to i64
  %.not25.i = icmp eq i64 %i.at, %i.az
  br i1 %.not25.i, label %bb.l, label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_.exit.thread"

bb.l:                                             ; preds = %"_ZZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_ENKUlS2_PlS9_E_clES2_S9_S9_.exit.i"
  %i.ba = load i32, ptr %i.aa, align 4
  %i.bb = sext i32 %i.ba to i64
  %.not26.i = icmp eq i64 %i.aw, %i.bb
  br i1 %.not26.i, label %bb.s, label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_.exit.thread"

bb.m:                                             ; preds = %bb.g
  %i.bc = load ptr, ptr %i.x, align 8
  %i.bd = icmp eq ptr %i.ae, %i.bc
  br i1 %i.bd, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %.not.i = icmp eq ptr %i.ah, @_Py_NoneStruct
  br i1 %.not.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr i8, ptr %i.ah, i64 8
  %.val.i28.i = load ptr, ptr %i.be, align 8
  %i.bf = getelementptr i8, ptr %.val.i28.i, i64 168
  %.val10.i29.i = load i64, ptr %i.bf, align 8
  %i.bg = and i64 %.val10.i29.i, 67108864
  %.not.i30.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i30.i, label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_.exit.thread", label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = getelementptr i8, ptr %i.ah, i64 16
  %.val9.i31.i = load i64, ptr %i.bh, align 8
  %.not7.i32.i = icmp eq i64 %.val9.i31.i, 2
  br i1 %.not7.i32.i, label %bb.q, label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_.exit.thread"

bb.q:                                             ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = call i64 @PyLong_AsLong(ptr noundef %i.bj)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = call i64 @PyLong_AsLong(ptr noundef %i.bm) ; 0 uses
  %i.bo = call ptr @PyErr_Occurred()
  %.not8.i34.i = icmp eq ptr %i.bo, null
  br i1 %.not8.i34.i, label %"_ZZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_ENKUlS2_PlS9_E_clES2_S9_S9_.exit35.i", label %.thread46.sink.split.sink.split.i

"_ZZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_ENKUlS2_PlS9_E_clES2_S9_S9_.exit35.i": ; preds = %bb.q
  store i64 %i.bk, ptr %i.d, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.m
  %i.bp = load ptr, ptr %i.y, align 8
  %i.bq = icmp eq ptr %i.ae, %i.bp
  br i1 %i.bq, label %bb.s, label %bb.t, !prof !80

bb.s:                                             ; preds = %bb.r, %"_ZZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_ENKUlS2_PlS9_E_clES2_S9_S9_.exit35.i", %bb.n, %bb.l, %bb.h, %bb.f
  %i.br = add nuw nsw i64 %.01961.i, 1            ; 2 uses
  %i.bs = load i64, ptr %i.c, align 8             ; 2 uses
  %.not27.i = icmp slt i64 %i.br, %i.bs
  br i1 %.not27.i, label %.lr.ph.i, label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_.exit", !llvm.loop !79

.thread46.sink.split.sink.split.i:                ; preds = %bb.q, %bb.k
  %PyExc_BufferError.sink.ph.i = phi ptr [ @PyExc_BufferError, %bb.k ], [ @PyExc_TypeError, %bb.q ]
  %.str.38.sink.ph.i = phi ptr [ @.str.39, %bb.k ], [ @.str.40, %bb.q ]
  call void @PyErr_Clear()
  br label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_.exit.thread"

"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_.exit.thread": ; preds = %bb.f, %bb.i, %bb.j, %"_ZZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_ENKUlS2_PlS9_E_clES2_S9_S9_.exit.i", %bb.l, %bb.o, %bb.p, %.thread46.sink.split.sink.split.i
  %PyExc_BufferError.sink.i = phi ptr [ %PyExc_BufferError.sink.ph.i, %.thread46.sink.split.sink.split.i ], [ @PyExc_TypeError, %bb.o ], [ @PyExc_BufferError, %"_ZZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_ENKUlS2_PlS9_E_clES2_S9_S9_.exit.i" ], [ @PyExc_BufferError, %bb.l ], [ @PyExc_BufferError, %bb.i ], [ @PyExc_BufferError, %bb.j ], [ @PyExc_BufferError, %bb.f ], [ @PyExc_TypeError, %bb.p ]
  %.str.38.sink.i = phi ptr [ %.str.38.sink.ph.i, %.thread46.sink.split.sink.split.i ], [ @.str.40, %bb.o ], [ @.str.39, %"_ZZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_ENKUlS2_PlS9_E_clES2_S9_S9_.exit.i" ], [ @.str.39, %bb.l ], [ @.str.39, %bb.i ], [ @.str.39, %bb.j ], [ @.str.38, %bb.f ], [ @.str.40, %bb.p ]
  %i.bt = load ptr, ptr %PyExc_BufferError.sink.i, align 8
  call void @PyErr_SetString(ptr noundef %i.bt, ptr noundef nonnull %.str.38.sink.i)
  br label %bb.y

"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_.exit": ; preds = %bb.s, %bb.e
  %.3.i = phi i64 [ %i.g, %bb.e ], [ %i.bs, %bb.s ]
  %i.bu = icmp slt i64 %.3.i, 0
  br i1 %i.bu, label %bb.y, label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_.exit.thread21", !prof !10

bb.t:                                             ; preds = %bb.r
  %i.bv = call fastcc noundef i64 @"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_2EEllT_"(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 noundef %.01961.i) ; 3 uses
  %i.bw = icmp slt i64 %i.bv, 0
  br i1 %i.bw, label %bb.y, label %bb.u, !prof !3

bb.u:                                             ; preds = %bb.t
  %i.bx = load i64, ptr %i.c, align 8
  %i.by = icmp slt i64 %i.bv, %i.bx
  br i1 %i.by, label %bb.v, label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_.exit.thread21", !prof !3

bb.v:                                             ; preds = %bb.u
  %i.bz = load ptr, ptr @PyExc_TypeError, align 8
  %i.ca = load ptr, ptr %i.b, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.bv
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bz, ptr noundef nonnull @.str.37, ptr noundef %i.cd) ; 0 uses
  br label %bb.y

"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_.exit.thread21": ; preds = %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_.exit", %bb.u
  %i.cf = load i64, ptr %i.d, align 8
  %i.cg = icmp sgt i64 %i.cf, 0
  br i1 %i.cg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_.exit.thread21"
  %i.ch = call noundef ptr @_ZN8nanobind6detail14ndarray_handle12make_capsuleILb1EEEP7_objectv(ptr noundef nonnull align 8 dereferenceable(36) %i.i)
  br label %bb.y

bb.x:                                             ; preds = %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_.exit.thread21"
  %i.ci = call noundef ptr @_ZN8nanobind6detail14ndarray_handle12make_capsuleILb0EEEP7_objectv(ptr noundef nonnull align 8 dereferenceable(36) %i.i)
  br label %bb.y

bb.y:                                             ; preds = %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_.exit.thread", %bb.w, %bb.x, %bb.t, %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_.exit", %bb.v
  %.015 = phi ptr [ null, %bb.t ], [ null, %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_.exit" ], [ null, %bb.v ], [ %i.ch, %bb.w ], [ %i.ci, %bb.x ], [ null, %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_1EEllT_.exit.thread" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ %.015, %bb.y ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZN8nanobind6detailL24nb_ndarray_dlpack_deviceEP7_objectS2_(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i8, ptr %i.c, align 8, !range !4, !noundef !5
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = shl nuw nsw i8 %i.d, 5
  %.idx.i = zext nneg i8 %i.f to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = icmp eq i32 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp eq i32 %i.l, 0
  %or.cond29 = select i1 %i.j, i1 %i.m, i1 false
  br i1 %or.cond29, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 768
  %i.q = load ptr, ptr %i.p, align 8              ; 4 uses
  %i.r = load i32, ptr %i.q, align 8
  %i.s = add i32 %i.r, 1                          ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZL10_Py_NewRefP7_object.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.s, ptr %i.q, align 8
  br label %_ZL10_Py_NewRefP7_object.exit

bb.d:                                             ; preds = %bb.a
  %i.u = tail call ptr @PyTuple_New(i64 noundef 2) ; 7 uses
  %i.v = load i32, ptr %i.h, align 8
  %i.w = sext i32 %i.v to i64
  %i.x = tail call ptr @PyLong_FromLong(i64 noundef %i.w) ; 5 uses
  %i.y = load i32, ptr %i.k, align 4
  %i.z = sext i32 %i.y to i64
  %i.aa = tail call ptr @PyLong_FromLong(i64 noundef %i.z) ; 5 uses
  %i.ab = icmp ne ptr %i.u, null                  ; 2 uses
  %i.ac = icmp ne ptr %i.x, null                  ; 2 uses
  %or.cond = select i1 %i.ab, i1 %i.ac, i1 false
  %i.ad = icmp ne ptr %i.aa, null                 ; 2 uses
  %or.cond3 = select i1 %or.cond, i1 %i.ad, i1 false
  br i1 %or.cond3, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.ab, label %bb.f, label %_ZL10Py_XDECREFP7_object.exit

bb.f:                                             ; preds = %bb.e
  %i.ae = load i64, ptr %i.u, align 8             ; 2 uses
  %i.af = and i64 %i.ae, 2147483648
  %.not2.i = icmp eq i64 %i.af, 0
  br i1 %.not2.i, label %bb.g, label %_ZL10Py_XDECREFP7_object.exit

bb.g:                                             ; preds = %bb.f
  %i.ag = add nsw i64 %i.ae, -1                   ; 2 uses
  store i64 %i.ag, ptr %i.u, align 8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.h, label %_ZL10Py_XDECREFP7_object.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.u)
  br label %_ZL10Py_XDECREFP7_object.exit

_ZL10Py_XDECREFP7_object.exit:                    ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  br i1 %i.ac, label %bb.i, label %_ZL10Py_XDECREFP7_object.exit32

bb.i:                                             ; preds = %_ZL10Py_XDECREFP7_object.exit
  %i.ai = load i64, ptr %i.x, align 8             ; 2 uses
  %i.aj = and i64 %i.ai, 2147483648
  %.not2.i31 = icmp eq i64 %i.aj, 0
  br i1 %.not2.i31, label %bb.j, label %_ZL10Py_XDECREFP7_object.exit32

bb.j:                                             ; preds = %bb.i
  %i.ak = add nsw i64 %i.ai, -1                   ; 2 uses
  store i64 %i.ak, ptr %i.x, align 8
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.k, label %_ZL10Py_XDECREFP7_object.exit32

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.x)
  br label %_ZL10Py_XDECREFP7_object.exit32

_ZL10Py_XDECREFP7_object.exit32:                  ; preds = %_ZL10Py_XDECREFP7_object.exit, %bb.i, %bb.j, %bb.k
  br i1 %i.ad, label %bb.l, label %_ZL10_Py_NewRefP7_object.exit

bb.l:                                             ; preds = %_ZL10Py_XDECREFP7_object.exit32
  %i.am = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.an = and i64 %i.am, 2147483648
  %.not2.i34 = icmp eq i64 %i.an, 0
  br i1 %.not2.i34, label %bb.m, label %_ZL10_Py_NewRefP7_object.exit

bb.m:                                             ; preds = %bb.l
  %i.ao = add nsw i64 %i.am, -1                   ; 2 uses
  store i64 %i.ao, ptr %i.aa, align 8
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.n, label %_ZL10_Py_NewRefP7_object.exit

bb.n:                                             ; preds = %bb.m
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.aa)
  br label %_ZL10_Py_NewRefP7_object.exit

bb.o:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %i.x, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr %i.aa, ptr %i.ar, align 8
  br label %_ZL10_Py_NewRefP7_object.exit

_ZL10_Py_NewRefP7_object.exit:                    ; preds = %bb.o, %_ZL10Py_XDECREFP7_object.exit32, %bb.l, %bb.m, %bb.n, %bb.c, %bb.b
  %.1 = phi ptr [ %i.q, %bb.c ], [ %i.q, %bb.b ], [ null, %bb.n ], [ null, %bb.m ], [ null, %bb.l ], [ null, %_ZL10Py_XDECREFP7_object.exit32 ], [ %i.u, %bb.o ]
  ret ptr %.1
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef i64 @"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_2EEllT_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #19 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !82
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %.not2763 = icmp slt i64 %1, %i.c
  br i1 %.not2763, label %.lr.ph, label %.thread49

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit38.thread"
  %.01964 = phi i64 [ %1, %.lr.ph ], [ %i.bt, %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit38.thread" ] ; 4 uses
  %i.h = load ptr, ptr %0, align 8, !nonnull !5, !align !82
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01964
  %i.l = load ptr, ptr %i.k, align 8              ; 8 uses
  %i.m = load ptr, ptr %i.d, align 8, !nonnull !5, !align !82
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.01964
  %i.p = load ptr, ptr %i.o, align 8              ; 11 uses
  %i.q = load ptr, ptr %i.e, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 712
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = icmp eq ptr %i.l, %i.s
  br i1 %i.t, label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit.thread", label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit"

"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit": ; preds = %bb.b
  %i.u = tail call i32 @PyObject_RichCompareBool(ptr noundef %i.l, ptr noundef %i.s, i32 noundef 2)
  %i.v = icmp eq i32 %i.u, 1
  br i1 %i.v, label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit.thread", label %bb.c

"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit.thread": ; preds = %bb.b, %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit"
  %i.w = icmp eq ptr %i.p, @_Py_TrueStruct
  br i1 %i.w, label %.thread49.sink.split, label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit38.thread"

bb.c:                                             ; preds = %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit"
  %i.x = load ptr, ptr %i.e, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 720
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = icmp eq ptr %i.l, %i.z
  br i1 %i.aa, label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit28.thread", label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit28"

"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit28": ; preds = %bb.c
  %i.ab = tail call i32 @PyObject_RichCompareBool(ptr noundef %i.l, ptr noundef %i.z, i32 noundef 2)
  %i.ac = icmp eq i32 %i.ab, 1
  br i1 %i.ac, label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit28.thread", label %bb.h

"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit28.thread": ; preds = %bb.c, %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit28"
  %.not24 = icmp eq ptr %i.p, @_Py_NoneStruct
  br i1 %.not24, label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit38.thread", label %bb.d

bb.d:                                             ; preds = %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit28.thread"
  %i.ad = getelementptr i8, ptr %i.p, i64 8
  %.val.i = load ptr, ptr %i.ad, align 8
  %i.ae = getelementptr i8, ptr %.val.i, i64 168
  %.val10.i = load i64, ptr %i.ae, align 8
  %i.af = and i64 %.val10.i, 67108864
  %.not.i = icmp eq i64 %i.af, 0
  br i1 %.not.i, label %.thread49.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr i8, ptr %i.p, i64 16
  %.val9.i = load i64, ptr %i.ag, align 8
  %.not7.i = icmp eq i64 %.val9.i, 2
  br i1 %.not7.i, label %bb.f, label %.thread49.sink.split

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call i64 @PyLong_AsLong(ptr noundef %i.ai)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call i64 @PyLong_AsLong(ptr noundef %i.al)
  %i.an = tail call ptr @PyErr_Occurred()
  %.not8.i = icmp eq ptr %i.an, null
  br i1 %.not8.i, label %"_ZZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_2EEllT_ENKUlS2_PlS9_E_clES2_S9_S9_.exit", label %.thread49.sink.split.sink.split

"_ZZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_2EEllT_ENKUlS2_PlS9_E_clES2_S9_S9_.exit": ; preds = %bb.f
  %i.ao = load ptr, ptr %i.g, align 8, !nonnull !5, !align !82 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = sext i32 %i.aq to i64
  %.not25 = icmp eq i64 %i.aj, %i.ar
  br i1 %.not25, label %bb.g, label %.thread49.sink.split

bb.g:                                             ; preds = %"_ZZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_2EEllT_ENKUlS2_PlS9_E_clES2_S9_S9_.exit"
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.at = load i32, ptr %i.as, align 4
  %i.au = sext i32 %i.at to i64
  %.not26 = icmp eq i64 %i.am, %i.au
  br i1 %.not26, label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit38.thread", label %.thread49.sink.split

bb.h:                                             ; preds = %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit28"
  %i.av = load ptr, ptr %i.e, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 728
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = icmp eq ptr %i.l, %i.ax
  br i1 %i.ay, label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit29.thread", label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit29"

"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit29": ; preds = %bb.h
  %i.az = tail call i32 @PyObject_RichCompareBool(ptr noundef %i.l, ptr noundef %i.ax, i32 noundef 2)
  %i.ba = icmp eq i32 %i.az, 1
  br i1 %i.ba, label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit29.thread", label %bb.l

"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit29.thread": ; preds = %bb.h, %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit29"
  %.not = icmp eq ptr %i.p, @_Py_NoneStruct
  br i1 %.not, label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit38.thread", label %bb.i

bb.i:                                             ; preds = %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit29.thread"
  %i.bb = getelementptr i8, ptr %i.p, i64 8
  %.val.i30 = load ptr, ptr %i.bb, align 8
  %i.bc = getelementptr i8, ptr %.val.i30, i64 168
  %.val10.i31 = load i64, ptr %i.bc, align 8
  %i.bd = and i64 %.val10.i31, 67108864
  %.not.i32 = icmp eq i64 %i.bd, 0
  br i1 %.not.i32, label %.thread49.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr i8, ptr %i.p, i64 16
  %.val9.i33 = load i64, ptr %i.be, align 8
  %.not7.i34 = icmp eq i64 %.val9.i33, 2
  br i1 %.not7.i34, label %bb.k, label %.thread49.sink.split

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = tail call i64 @PyLong_AsLong(ptr noundef %i.bg)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = tail call i64 @PyLong_AsLong(ptr noundef %i.bj) ; 0 uses
  %i.bl = tail call ptr @PyErr_Occurred()
  %.not8.i36 = icmp eq ptr %i.bl, null
  br i1 %.not8.i36, label %"_ZZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_2EEllT_ENKUlS2_PlS9_E_clES2_S9_S9_.exit37", label %.thread49.sink.split.sink.split

"_ZZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_2EEllT_ENKUlS2_PlS9_E_clES2_S9_S9_.exit37": ; preds = %bb.k
  %i.bm = load ptr, ptr %i.f, align 8, !nonnull !5, !align !82
  store i64 %i.bh, ptr %i.bm, align 8
  br label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit38.thread"

bb.l:                                             ; preds = %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit29"
  %i.bn = load ptr, ptr %i.e, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 736
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %i.bq = icmp eq ptr %i.l, %i.bp
  br i1 %i.bq, label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit38.thread", label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit38"

"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit38": ; preds = %bb.l
  %i.br = tail call i32 @PyObject_RichCompareBool(ptr noundef %i.l, ptr noundef %i.bp, i32 noundef 2)
  %i.bs = icmp eq i32 %i.br, 1
  br i1 %i.bs, label %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit38.thread", label %.thread49

"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit38.thread": ; preds = %bb.l, %bb.g, %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit28.thread", %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit38", %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit29.thread", %"_ZZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_2EEllT_ENKUlS2_PlS9_E_clES2_S9_S9_.exit37", %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit.thread"
  %i.bt = add nuw nsw i64 %.01964, 1              ; 2 uses
  %i.bu = load ptr, ptr %i.a, align 8, !nonnull !5, !align !82
  %i.bv = load i64, ptr %i.bu, align 8            ; 2 uses
  %.not27 = icmp slt i64 %i.bt, %i.bv
  br i1 %.not27, label %bb.b, label %.thread49, !llvm.loop !81

.thread49.sink.split.sink.split:                  ; preds = %bb.k, %bb.f
  %PyExc_BufferError.sink.ph = phi ptr [ @PyExc_BufferError, %bb.f ], [ @PyExc_TypeError, %bb.k ]
  %.str.38.sink.ph = phi ptr [ @.str.39, %bb.f ], [ @.str.40, %bb.k ]
  tail call void @PyErr_Clear()
  br label %.thread49.sink.split

.thread49.sink.split:                             ; preds = %bb.j, %bb.i, %"_ZZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_2EEllT_ENKUlS2_PlS9_E_clES2_S9_S9_.exit", %bb.g, %bb.d, %bb.e, %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit.thread", %.thread49.sink.split.sink.split
  %PyExc_BufferError.sink = phi ptr [ %PyExc_BufferError.sink.ph, %.thread49.sink.split.sink.split ], [ @PyExc_TypeError, %bb.j ], [ @PyExc_BufferError, %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit.thread" ], [ @PyExc_BufferError, %bb.e ], [ @PyExc_BufferError, %bb.d ], [ @PyExc_BufferError, %bb.g ], [ @PyExc_BufferError, %"_ZZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_2EEllT_ENKUlS2_PlS9_E_clES2_S9_S9_.exit" ], [ @PyExc_TypeError, %bb.i ]
  %.str.38.sink = phi ptr [ %.str.38.sink.ph, %.thread49.sink.split.sink.split ], [ @.str.40, %bb.j ], [ @.str.38, %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit.thread" ], [ @.str.39, %bb.e ], [ @.str.39, %bb.d ], [ @.str.39, %bb.g ], [ @.str.39, %"_ZZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_0clIZNS0_L17nb_ndarray_dlpackES2_S4_lS2_E3$_2EEllT_ENKUlS2_PlS9_E_clES2_S9_S9_.exit" ], [ @.str.40, %bb.i ]
  %i.bw = load ptr, ptr %PyExc_BufferError.sink, align 8
  tail call void @PyErr_SetString(ptr noundef %i.bw, ptr noundef nonnull %.str.38.sink)
  br label %.thread49

.thread49:                                        ; preds = %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit38", %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit38.thread", %.thread49.sink.split, %bb.a
  %.3 = phi i64 [ %i.c, %bb.a ], [ -1, %.thread49.sink.split ], [ %i.bv, %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit38.thread" ], [ %.01964, %"_ZZN8nanobind6detailL17nb_ndarray_dlpackEP7_objectPKS2_lS2_ENK3$_2clES2_S2_.exit38" ]
  ret i64 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN8nanobind6detail14ndarray_handle12make_capsuleILb1EEEP7_objectv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !4, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %.not = icmp eq ptr %i.f, %0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @PyCapsule_New(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.19, ptr noundef nonnull @_ZN8nanobind6detailL14capsule_deleteILb1EEEvP7_object)
  br label %_ZN8nanobind6detail15scoped_pymallocINS0_26managed_dltensor_versionedEED2Ev.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.h = tail call ptr @PyMem_Malloc(i64 noundef 80) ; 8 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.e, label %_ZN8nanobind6detail15scoped_pymallocINS0_26managed_dltensor_versionedEEC2Emm.exit, !prof !3

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_ZN8nanobind6detail4failEPKcz(ptr noundef nonnull @.str.31, i64 noundef 80) #25
  unreachable

_ZN8nanobind6detail15scoped_pymallocINS0_26managed_dltensor_versionedEEC2Emm.exit: ; preds = %bb.d
  store i32 1, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 1, ptr %.sroa.4.0..sroa_idx, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 35
  %i.j = load i8, ptr %i.i, align 1, !range !4, !noundef !5
  %i.k = zext nneg i8 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr @_ZN8nanobind6detailL21mt_from_handle_deleteINS0_26managed_dltensor_versionedEEEvPT_, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.p = load i8, ptr %i.a, align 8, !range !4, !noundef !5
  %i.q = load ptr, ptr %0, align 8
  %i.r = shl nuw nsw i8 %i.p, 5
  %.idx.i = zext nneg i8 %i.r to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %i.s, i64 48, i1 false)
  %i.t = invoke ptr @PyCapsule_New(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.19, ptr noundef nonnull @_ZN8nanobind6detailL14capsule_deleteILb1EEEvP7_object)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZN8nanobind6detail15scoped_pymallocINS0_26managed_dltensor_versionedEEC2Emm.exit
  invoke void @PyMem_Free(ptr noundef null)
          to label %_ZN8nanobind6detail15scoped_pymallocINS0_26managed_dltensor_versionedEED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #25
  unreachable

bb.h:                                             ; preds = %_ZN8nanobind6detail15scoped_pymallocINS0_26managed_dltensor_versionedEEC2Emm.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @PyMem_Free(ptr noundef null)
          to label %_ZN8nanobind6detail15scoped_pymallocINS0_26managed_dltensor_versionedEED2Ev.exit12 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #25
  unreachable

_ZN8nanobind6detail15scoped_pymallocINS0_26managed_dltensor_versionedEED2Ev.exit12: ; preds = %bb.h
  resume { ptr, i32 } %i.w

_ZN8nanobind6detail15scoped_pymallocINS0_26managed_dltensor_versionedEED2Ev.exit: ; preds = %bb.f, %bb.c
  %.09 = phi ptr [ %i.g, %bb.c ], [ %i.t, %bb.f ] ; 2 uses
  %.not11 = icmp eq ptr %.09, null
  br i1 %.not11, label %bb.j, label %bb.k, !prof !3

bb.j:                                             ; preds = %_ZN8nanobind6detail15scoped_pymallocINS0_26managed_dltensor_versionedEED2Ev.exit
  tail call void @_ZN8nanobind6detail16fail_unspecifiedEv() #25
  unreachable

bb.k:                                             ; preds = %_ZN8nanobind6detail15scoped_pymallocINS0_26managed_dltensor_versionedEED2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = atomicrmw add ptr %i.z, i64 1 seq_cst, align 8 ; 0 uses
  ret ptr %.09
}

declare i64 @PyLong_AsLong(ptr noundef) local_unnamed_addr #6

declare ptr @PyErr_Occurred() local_unnamed_addr #6

declare i32 @PyObject_RichCompareBool(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @PyCapsule_New(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal void @_ZN8nanobind6detailL14capsule_deleteILb1EEEvP7_object(ptr noundef %0) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @PyErr_GetRaisedException() ; 2 uses
  %i.b = invoke ptr @PyCapsule_GetPointer(ptr noundef %0, ptr noundef nonnull @.str.19)
          to label %bb.b unwind label %bb.d       ; 3 uses

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr noundef nonnull %i.b)
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @PyErr_SetRaisedException(ptr noundef %i.a)
          to label %_ZN8nanobind11error_scopeD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #25
  unreachable

_ZN8nanobind11error_scopeD2Ev.exit:               ; preds = %bb.d
  resume { ptr, i32 } %i.e

bb.f:                                             ; preds = %bb.b
  invoke void @PyErr_Clear()
          to label %bb.g unwind label %bb.d

bb.g:                                             ; preds = %bb.f, %bb.c
  invoke void @PyErr_SetRaisedException(ptr noundef %i.a)
          to label %_ZN8nanobind11error_scopeD2Ev.exit6 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #25
  unreachable

_ZN8nanobind11error_scopeD2Ev.exit6:              ; preds = %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN8nanobind6detailL21mt_from_handle_deleteINS0_26managed_dltensor_versionedEEEvPT_(ptr noundef %0) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN8nanobind6detail8is_aliveEv() #26
  br i1 %i.a, label %_ZN8nanobind6detail13cleanup_guardC2Ev.exit, label %_ZN8nanobind6detail13cleanup_guardD2Ev.exit5

_ZN8nanobind6detail13cleanup_guardC2Ev.exit:      ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZN8nanobind6detail13tstate_ensureEv() #26 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN8nanobind6detail13cleanup_guardD2Ev.exit5, label %bb.b

bb.b:                                             ; preds = %_ZN8nanobind6detail13cleanup_guardC2Ev.exit
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  invoke void @PyMem_Free(ptr noundef nonnull %0)
          to label %bb.c unwind label %_ZN8nanobind6detail13cleanup_guardD2Ev.exit

_ZN8nanobind6detail13cleanup_guardD2Ev.exit:      ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8nanobind6detail14tstate_releaseEPv(ptr noundef nonnull %i.b) #26
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.d) #26
  tail call void @_ZN8nanobind6detail14tstate_releaseEPv(ptr noundef nonnull %i.b) #26
  br label %_ZN8nanobind6detail13cleanup_guardD2Ev.exit5

end_hunk_1
begin_hunk_2_@_ZN8nanobind6detailL14capsule_deleteILb0EEEvP7_object:bb.a
bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr noundef nonnull %i.b)
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @PyErr_SetRaisedException(ptr noundef %i.a)
          to label %_ZN8nanobind11error_scopeD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #25
  unreachable

_ZN8nanobind11error_scopeD2Ev.exit:               ; preds = %bb.d
  resume { ptr, i32 } %i.e

bb.f:                                             ; preds = %bb.b
  invoke void @PyErr_Clear()
          to label %bb.g unwind label %bb.d

bb.g:                                             ; preds = %bb.f, %bb.c
  invoke void @PyErr_SetRaisedException(ptr noundef %i.a)
          to label %_ZN8nanobind11error_scopeD2Ev.exit6 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #25
  unreachable

_ZN8nanobind11error_scopeD2Ev.exit6:              ; preds = %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN8nanobind6detailL21mt_from_handle_deleteINS0_16managed_dltensorEEEvPT_(ptr noundef %0) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN8nanobind6detail8is_aliveEv() #26
  br i1 %i.a, label %_ZN8nanobind6detail13cleanup_guardC2Ev.exit, label %_ZN8nanobind6detail13cleanup_guardD2Ev.exit5

_ZN8nanobind6detail13cleanup_guardC2Ev.exit:      ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZN8nanobind6detail13tstate_ensureEv() #26 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN8nanobind6detail13cleanup_guardD2Ev.exit5, label %bb.b

bb.b:                                             ; preds = %_ZN8nanobind6detail13cleanup_guardC2Ev.exit
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  invoke void @PyMem_Free(ptr noundef nonnull %0)
          to label %bb.c unwind label %_ZN8nanobind6detail13cleanup_guardD2Ev.exit

_ZN8nanobind6detail13cleanup_guardD2Ev.exit:      ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8nanobind6detail14tstate_releaseEPv(ptr noundef nonnull %i.b) #26
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.d) #26
  tail call void @_ZN8nanobind6detail14tstate_releaseEPv(ptr noundef nonnull %i.b) #26
  br label %_ZN8nanobind6detail13cleanup_guardD2Ev.exit5

_ZN8nanobind6detail13cleanup_guardD2Ev.exit5:     ; preds = %bb.a, %_ZN8nanobind6detail13cleanup_guardC2Ev.exit, %bb.c
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #21

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nofree nounwind }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { noreturn nounwind }
attributes #26 = { nounwind }
attributes #27 = { nounwind willreturn memory(read) }
attributes #28 = { noreturn }
attributes #29 = { builtin nounwind }
attributes #30 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!4 = !{i8 0, i8 2}
!5 = !{}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = !{!"llvm.loop.isvectorized", i32 1}
!9 = !{!"llvm.loop.unroll.runtime.disable"}
!10 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!11 = distinct !{!11, !"_ZN8nanobind6detailL13dlpack_methodEPNS0_12nb_internalsEP11_typeobject"}
!12 = distinct !{!12, !11, !"_ZN8nanobind6detailL13dlpack_methodEPNS0_12nb_internalsEP11_typeobject: argument 0"}
!13 = !{!12}
!14 = distinct !{!14, !"_ZN8nanobind6detailL13dlpack_methodEPNS0_12nb_internalsEP11_typeobject"}
!15 = distinct !{!15, !14, !"_ZN8nanobind6detailL13dlpack_methodEPNS0_12nb_internalsEP11_typeobject: argument 0"}
!16 = distinct !{!16, !"_ZN8nanobind6detailL28make_mt_from_buffer_protocolEP7_objectb"}
!17 = distinct !{!17, !16, !"_ZN8nanobind6detailL28make_mt_from_buffer_protocolEP7_objectb: argument 0"}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !"_ZN8nanobind6detail11str_getattrEPNS0_12nb_internalsENS_6handleEPKc"}
!20 = distinct !{!20, !19, !"_ZN8nanobind6detail11str_getattrEPNS0_12nb_internalsENS_6handleEPKc: argument 0"}
!21 = distinct !{!21, !"_ZN8nanobind6detail8obj_callIJNS_6handleEEEENS_6objectEPNS0_12nb_internalsES2_DpRKT_"}
!22 = distinct !{!22, !21, !"_ZN8nanobind6detail8obj_callIJNS_6handleEEEENS_6objectEPNS0_12nb_internalsES2_DpRKT_: argument 0"}
!23 = distinct !{!23, !6}
!24 = distinct !{!24, !6}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !6, !8, !9}
!27 = distinct !{!27, !6, !9, !8}
!28 = distinct !{!28, !6}
!29 = distinct !{!29, !6}
!30 = distinct !{!30, !"_ZN8nanobind6detailL13convert_arrayEPNS0_12nb_internalsEiP7_objectPKcc"}
!31 = distinct !{!31, !30, !"_ZN8nanobind6detailL13convert_arrayEPNS0_12nb_internalsEiP7_objectPKcc: argument 0"}
!32 = distinct !{!32, !"_ZN8nanobind6detail8obj_callIJNS_6objectES2_EEES2_PNS0_12nb_internalsENS_6handleEDpRKT_"}
!33 = distinct !{!33, !32, !"_ZN8nanobind6detail8obj_callIJNS_6objectES2_EEES2_PNS0_12nb_internalsENS_6handleEDpRKT_: argument 0"}
!34 = distinct !{!34, !"_ZN8nanobind6detail11str_getattrEPNS0_12nb_internalsENS_6handleEPKc"}
!35 = distinct !{!35, !34, !"_ZN8nanobind6detail11str_getattrEPNS0_12nb_internalsENS_6handleEPKc: argument 0"}
!36 = distinct !{!36, !"_ZN8nanobind6detail8obj_callIJNS_6objectEEEES2_PNS0_12nb_internalsENS_6handleEDpRKT_"}
!37 = distinct !{!37, !36, !"_ZN8nanobind6detail8obj_callIJNS_6objectEEEES2_PNS0_12nb_internalsENS_6handleEDpRKT_: argument 0"}
!38 = distinct !{!38, !"_ZN8nanobind6detail8obj_callIJEEENS_6objectEPNS0_12nb_internalsENS_6handleEDpRKT_"}
!39 = distinct !{!39, !38, !"_ZN8nanobind6detail8obj_callIJEEENS_6objectEPNS0_12nb_internalsENS_6handleEDpRKT_: argument 0"}
!40 = distinct !{!40, !"_ZN8nanobind6detail8obj_callIJNS_6handleENS_6objectEEEES3_PNS0_12nb_internalsES2_DpRKT_"}
!41 = distinct !{!41, !40, !"_ZN8nanobind6detail8obj_callIJNS_6handleENS_6objectEEEES3_PNS0_12nb_internalsES2_DpRKT_: argument 0"}
!42 = distinct !{!42, !"_ZN8nanobind6detail8obj_callIJNS_6objectEEEES2_PNS0_12nb_internalsENS_6handleEDpRKT_"}
!43 = distinct !{!43, !42, !"_ZN8nanobind6detail8obj_callIJNS_6objectEEEES2_PNS0_12nb_internalsENS_6handleEDpRKT_: argument 0"}
!44 = distinct !{!44, !6}
!45 = !{!15}
!46 = !{!17}
!47 = !{!20}
!48 = !{!22}
!49 = !{!31}
!50 = !{!33, !31}
!51 = !{!35}
!52 = !{!35, !31}
!53 = !{!37, !31}
!54 = !{!39, !31}
!55 = !{!41, !31}
!56 = !{!43, !31}
!57 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!58 = distinct !{!58, !6, !8, !9}
!59 = distinct !{!59, !7}
!60 = distinct !{!60, !6, !8}
!61 = distinct !{!61, !6, !8, !9}
!62 = distinct !{!62, !7}
!63 = distinct !{!63, !6, !8}
!64 = distinct !{!64, !6}
!65 = distinct !{!65, !6}
!66 = distinct !{!66, !7}
!67 = distinct !{!67, !7}
!68 = distinct !{!68, !"_ZN8nanobind6detail8obj_callIJEEENS_6objectEPNS0_12nb_internalsENS_6handleEDpRKT_"}
!69 = distinct !{!69, !68, !"_ZN8nanobind6detail8obj_callIJEEENS_6objectEPNS0_12nb_internalsENS_6handleEDpRKT_: argument 0"}
!70 = !{!69}
!71 = distinct !{!71, !"_ZN8nanobind6detail11str_getattrEPNS0_12nb_internalsENS_6handleEPKc"}
!72 = distinct !{!72, !71, !"_ZN8nanobind6detail11str_getattrEPNS0_12nb_internalsENS_6handleEPKc: argument 0"}
!73 = !{!72}
!74 = !{ptr @_ZN8nanobind4abi112python_errorD2Ev}
!75 = distinct !{!75, !7}
!76 = distinct !{!76, !6}
!77 = distinct !{!77, !6}
!78 = distinct !{!78, !6}
!79 = distinct !{!79, !6}
!80 = !{!"branch_weights", i32 2146410443, i32 1073205}
!81 = distinct !{!81, !6}
!82 = !{i64 8}
end_hunk_2
