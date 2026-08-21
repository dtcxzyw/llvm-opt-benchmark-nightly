Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/crossinterp?download=true
inline.NumInlined: 270
inline.NumDeleted: 99
begin_hunk_0_@_PyXIData_Lookup:bb.a
  %i.f = getelementptr i8, ptr %.val, i64 10696   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %get_lookup_context.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.d, ptr %2, align 8, !tbaa !109
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.f, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !109
  %i.h = getelementptr i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.h, align 8, !tbaa !111
  %i.i = call fastcc { ptr, ptr } @lookup_getdata(ptr noundef %2, ptr %.val2) ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  br label %get_lookup_context.exit.thread

get_lookup_context.exit.thread:                   ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.0.0 = phi ptr [ %i.j, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  %.sroa.3.0 = phi ptr [ %i.k, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal fastcc { ptr, ptr } @lookup_getdata(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree readonly captures(address) %.8.val) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %.8.val, i64 168
  %.val9.i = load i64, ptr %i.a, align 8, !tbaa !112
  %i.b = lshr i64 %.val9.i, 6
  %.0.in.idx.i.i = and i64 %i.b, 8
  %.0.in.i.i = getelementptr i8, ptr %0, i64 %.0.in.idx.i.i
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8, !tbaa !109 ; 5 uses
  %i.c = load i32, ptr %.0.i.i, align 8, !tbaa !118
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_xidregistry_lock.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.0.i.i, i64 8     ; 2 uses
  %i.e = cmpxchg ptr %i.d, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.f = extractvalue { i8, i1 } %i.e, 1
  br i1 %i.f, label %_xidregistry_lock.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @PyMutex_Lock(ptr noundef %i.d) #14
  br label %_xidregistry_lock.exit.i

_xidregistry_lock.exit.i:                         ; preds = %bb.c, %bb.b, %bb.a
  %i.g = getelementptr i8, ptr %.0.i.i, i64 16    ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !119  ; 2 uses
  %.not23.i.i = icmp eq ptr %i.h, null
  br i1 %.not23.i.i, label %_xidregistry_find_type.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_xidregistry_lock.exit.i, %.backedge.i.i
  %.01324.i.i = phi ptr [ %.013.be.i.i, %.backedge.i.i ], [ %i.h, %_xidregistry_lock.exit.i ] ; 8 uses
  %i.i = getelementptr i8, ptr %.01324.i.i, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !120  ; 5 uses
  %.not17.i.i = icmp eq ptr %i.j, null
  br i1 %.not17.i.i, label %Py_DECREF.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.k = getelementptr i8, ptr %i.j, i64 16
  %.val.i.i = load ptr, ptr %i.k, align 8, !tbaa !123 ; 3 uses
  %i.l = icmp eq ptr %.val.i.i, @_Py_NoneStruct
  br i1 %i.l, label %_PyWeakref_GET_REF.exit.thread.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val.i.i.i.i = load i32, ptr %.val.i.i, align 8, !tbaa !35 ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %.val.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_PyWeakref_GET_REF.exit.thread.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = icmp ugt i32 %.val.i.i.i.i, -1073741825
  br i1 %i.m, label %Py_DECREF.exit.thread.i.i, label %_PyWeakref_GET_REF.exit.i.i

_PyWeakref_GET_REF.exit.thread.i.i:               ; preds = %bb.e, %bb.d
  %i.n = getelementptr i8, ptr %.01324.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !126  ; 5 uses
  %i.p = load ptr, ptr %.01324.i.i, align 8, !tbaa !127 ; 3 uses
  %.not.i18.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i18.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_PyWeakref_GET_REF.exit.thread.i.i
  %i.q = getelementptr i8, ptr %i.p, i64 8
  store ptr %i.o, ptr %i.q, align 8, !tbaa !126
  br label %bb.i

bb.h:                                             ; preds = %_PyWeakref_GET_REF.exit.thread.i.i
  store ptr %i.o, ptr %i.g, align 8, !tbaa !119
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not13.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not13.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.p, ptr %i.o, align 8, !tbaa !127
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = load i32, ptr %i.j, align 8, !tbaa !35   ; 2 uses
  %.not.i.i.i.i.i = icmp sgt i32 %i.r, -1
  br i1 %.not.i.i.i.i.i, label %bb.l, label %Py_DECREF.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.j, align 8, !tbaa !35
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.m, label %Py_DECREF.exit.i.i

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.j) #14
  br label %Py_DECREF.exit.i.i

_PyWeakref_GET_REF.exit.i.i:                      ; preds = %bb.f
  %i.u = add nuw i32 %.val.i.i.i.i, 1             ; 2 uses
  %.not.i.i3.i = icmp slt i32 %i.u, 0
  %spec.store.select.i = select i1 %.not.i.i3.i, i32 %i.u, i32 %.val.i.i.i.i
  store i32 %spec.store.select.i, ptr %.val.i.i, align 8
  br label %Py_DECREF.exit.thread.i.i

Py_DECREF.exit.i.i:                               ; preds = %bb.m, %bb.l, %bb.k
  tail call void @PyMem_RawFree(ptr noundef nonnull %.01324.i.i) #14
  br label %.backedge.i.i

Py_DECREF.exit.thread.i.i:                        ; preds = %_PyWeakref_GET_REF.exit.i.i, %bb.f, %.lr.ph.i.i
  %i.v = getelementptr i8, ptr %.01324.i.i, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !128
  %i.x = icmp eq ptr %i.w, %.8.val
  br i1 %i.x, label %_xidregistry_find_type.exit.i, label %bb.n

bb.n:                                             ; preds = %Py_DECREF.exit.thread.i.i
  %i.y = getelementptr i8, ptr %.01324.i.i, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !126
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %bb.n, %Py_DECREF.exit.i.i
  %.013.be.i.i = phi ptr [ %i.z, %bb.n ], [ %i.o, %Py_DECREF.exit.i.i ] ; 2 uses
  %.not.i10.i = icmp eq ptr %.013.be.i.i, null
  br i1 %.not.i10.i, label %_xidregistry_find_type.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !129

_xidregistry_find_type.exit.i:                    ; preds = %Py_DECREF.exit.thread.i.i
  %i.aa = getelementptr i8, ptr %.01324.i.i, i64 40
  %.sroa.0.0.copyload.i = load ptr, ptr %i.aa, align 8, !tbaa !131
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %.01324.i.i, i64 48
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !131
  br label %_xidregistry_find_type.exit.thread.i

_xidregistry_find_type.exit.thread.i:             ; preds = %.backedge.i.i, %_xidregistry_find_type.exit.i, %_xidregistry_lock.exit.i
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.copyload.i, %_xidregistry_find_type.exit.i ], [ null, %_xidregistry_lock.exit.i ], [ null, %.backedge.i.i ]
  %.sroa.3.0.i = phi ptr [ %.sroa.3.0.copyload.i, %_xidregistry_find_type.exit.i ], [ null, %_xidregistry_lock.exit.i ], [ null, %.backedge.i.i ]
  %i.ab = load i32, ptr %.0.i.i, align 8, !tbaa !118
  %.not.i11.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i11.i, label %_lookup_getdata_from_registry.exit, label %bb.o

bb.o:                                             ; preds = %_xidregistry_find_type.exit.thread.i
  %i.ac = getelementptr i8, ptr %.0.i.i, i64 8    ; 2 uses
  %i.ad = cmpxchg ptr %i.ac, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.ae = extractvalue { i8, i1 } %i.ad, 1
  br i1 %i.ae, label %_lookup_getdata_from_registry.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @PyMutex_Unlock(ptr noundef %i.ac) #14
  br label %_lookup_getdata_from_registry.exit

_lookup_getdata_from_registry.exit:               ; preds = %_xidregistry_find_type.exit.thread.i, %bb.o, %bb.p
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %.sroa.3.0.i, 1
  ret { ptr, ptr } %.fca.1.insert.i
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @_PyXIData_RegisterClass(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct._dlcontext, align 8         ; 5 uses
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val20 = load ptr, ptr %i.a, align 8, !tbaa !111
  %i.b = getelementptr i8, ptr %.val20, i64 168
  %.val20.val = load i64, ptr %i.b, align 8, !tbaa !112
  %i.c = and i64 %.val20.val, 2147483648
  %.not29 = icmp eq i64 %i.c, 0
  br i1 %.not29, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !34
  %i.e = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str) #14 ; 0 uses
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  %i.f = icmp eq ptr %2, null
  %i.g = icmp eq ptr %3, null
  %or.cond = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !34
  %i.i = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.h, ptr noundef nonnull @.str.1) #14 ; 0 uses
  br label %bb.ac

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.j = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.j, align 8, !tbaa !11  ; 2 uses
  %i.k = getelementptr i8, ptr %.val, i64 7376
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !39
  %i.m = getelementptr i8, ptr %i.l, i64 912      ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_xidregistry_unlock.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %.val, i64 10696   ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_xidregistry_unlock.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.m, ptr %4, align 8, !tbaa !109
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.o, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !109
  %i.q = getelementptr i8, ptr %1, i64 168        ; 2 uses
  %.val19 = load i64, ptr %i.q, align 8, !tbaa !112
  %i.r = lshr i64 %.val19, 6
  %.0.in.idx.i = and i64 %i.r, 8
  %.0.in.i = getelementptr i8, ptr %4, i64 %.0.in.idx.i
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !109 ; 5 uses
  %i.s = load i32, ptr %.0.i, align 8, !tbaa !118
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %_xidregistry_lock.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %.0.i, i64 8       ; 2 uses
  %i.u = cmpxchg ptr %i.t, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.v = extractvalue { i8, i1 } %i.u, 1
  br i1 %i.v, label %_xidregistry_lock.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @PyMutex_Lock(ptr noundef %i.t) #14
  br label %_xidregistry_lock.exit

_xidregistry_lock.exit:                           ; preds = %bb.g, %bb.h, %bb.i
  %i.w = getelementptr i8, ptr %.0.i, i64 16      ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !119  ; 2 uses
  %.not23.i = icmp eq ptr %i.x, null
  br i1 %.not23.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_xidregistry_lock.exit, %.backedge.i
  %.01324.i = phi ptr [ %.013.be.i, %.backedge.i ], [ %i.x, %_xidregistry_lock.exit ] ; 7 uses
  %i.y = getelementptr i8, ptr %.01324.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !120  ; 5 uses
  %.not17.i = icmp eq ptr %i.z, null
  br i1 %.not17.i, label %Py_DECREF.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.aa = getelementptr i8, ptr %i.z, i64 16
  %.val.i = load ptr, ptr %i.aa, align 8, !tbaa !123 ; 3 uses
  %i.ab = icmp eq ptr %.val.i, @_Py_NoneStruct
  br i1 %i.ab, label %_PyWeakref_GET_REF.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val.i.i.i = load i32, ptr %.val.i, align 8, !tbaa !35 ; 4 uses
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %_PyWeakref_GET_REF.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = icmp ugt i32 %.val.i.i.i, -1073741825
  br i1 %i.ac, label %Py_DECREF.exit.thread.i, label %_PyWeakref_GET_REF.exit.i

_PyWeakref_GET_REF.exit.thread.i:                 ; preds = %bb.k, %bb.j
  %i.ad = getelementptr i8, ptr %.01324.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !126 ; 5 uses
  %i.af = load ptr, ptr %.01324.i, align 8, !tbaa !127 ; 3 uses
  %.not.i18.i = icmp eq ptr %i.af, null
  br i1 %.not.i18.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_PyWeakref_GET_REF.exit.thread.i
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  store ptr %i.ae, ptr %i.ag, align 8, !tbaa !126
  br label %bb.o

bb.n:                                             ; preds = %_PyWeakref_GET_REF.exit.thread.i
  store ptr %i.ae, ptr %i.w, align 8, !tbaa !119
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.not13.i.i = icmp eq ptr %i.ae, null
  br i1 %.not13.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !127
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ah = load i32, ptr %i.z, align 8, !tbaa !35  ; 2 uses
  %.not.i.i.i.i = icmp sgt i32 %i.ah, -1
  br i1 %.not.i.i.i.i, label %bb.r, label %Py_DECREF.exit.i

bb.r:                                             ; preds = %bb.q
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.z, align 8, !tbaa !35
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.s, label %Py_DECREF.exit.i

bb.s:                                             ; preds = %bb.r
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.z) #14
  br label %Py_DECREF.exit.i

_PyWeakref_GET_REF.exit.i:                        ; preds = %bb.l
  %i.ak = add nuw i32 %.val.i.i.i, 1              ; 2 uses
  %.not.i.i30 = icmp slt i32 %i.ak, 0
  %spec.store.select = select i1 %.not.i.i30, i32 %i.ak, i32 %.val.i.i.i
  store i32 %spec.store.select, ptr %.val.i, align 8
  br label %Py_DECREF.exit.thread.i

Py_DECREF.exit.i:                                 ; preds = %bb.s, %bb.r, %bb.q
  tail call void @PyMem_RawFree(ptr noundef nonnull %.01324.i) #14
  br label %.backedge.i

Py_DECREF.exit.thread.i:                          ; preds = %_PyWeakref_GET_REF.exit.i, %bb.l, %.lr.ph.i
  %i.al = getelementptr i8, ptr %.01324.i, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !128
  %i.an = icmp eq ptr %i.am, %1
  br i1 %i.an, label %_xidregistry_find_type.exit, label %bb.t

bb.t:                                             ; preds = %Py_DECREF.exit.thread.i
  %i.ao = getelementptr i8, ptr %.01324.i, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !126
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.t, %Py_DECREF.exit.i
  %.013.be.i = phi ptr [ %i.ap, %bb.t ], [ %i.ae, %Py_DECREF.exit.i ] ; 2 uses
  %.not.i21 = icmp eq ptr %.013.be.i, null
  br i1 %.not.i21, label %.loopexit, label %.lr.ph.i, !llvm.loop !129

_xidregistry_find_type.exit:                      ; preds = %Py_DECREF.exit.thread.i
  %i.aq = getelementptr i8, ptr %.01324.i, i64 32 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !132
  %i.as = add i64 %i.ar, 1
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !132
  br label %_xidregistry_add_type.exit

.loopexit:                                        ; preds = %.backedge.i, %_xidregistry_lock.exit
  %i.at = tail call ptr @PyMem_RawMalloc(i64 noundef 56) #14 ; 11 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_xidregistry_add_type.exit, label %bb.u

bb.u:                                             ; preds = %.loopexit
  %.sroa.2.0..sroa_idx.i22 = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  store ptr %1, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !133
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 2 uses
  store ptr null, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !34
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  store i64 1, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !36
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  store ptr %2, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !131
  %.sroa.6.sroa.2.0..sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  store ptr %3, ptr %.sroa.6.sroa.2.0..sroa.6.0..sroa_idx.sroa_idx.i, align 8, !tbaa !131
  %i.av = load i64, ptr %i.q, align 8, !tbaa !112
  %i.aw = and i64 %i.av, 512
  %.not.i23 = icmp eq i64 %i.aw, 0
  br i1 %.not.i23, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ax = tail call ptr @PyWeakref_NewRef(ptr noundef nonnull %1, ptr noundef null) #14 ; 2 uses
  store ptr %i.ax, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !120
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @PyMem_RawFree(ptr noundef nonnull %i.at) #14
  br label %_xidregistry_add_type.exit

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.az = load ptr, ptr %i.w, align 8, !tbaa !119 ; 3 uses
  store ptr %i.az, ptr %.sroa.2.0..sroa_idx.i22, align 8, !tbaa !126
  %.not19.i = icmp eq ptr %i.az, null
  br i1 %.not19.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store ptr %i.at, ptr %i.az, align 8, !tbaa !127
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  store ptr %i.at, ptr %i.w, align 8, !tbaa !119
  br label %_xidregistry_add_type.exit

_xidregistry_add_type.exit:                       ; preds = %bb.z, %bb.w, %.loopexit, %_xidregistry_find_type.exit
  %.0 = phi i32 [ 0, %_xidregistry_find_type.exit ], [ 0, %bb.z ], [ -1, %bb.w ], [ -1, %.loopexit ] ; 3 uses
  %i.ba = load i32, ptr %.0.i, align 8, !tbaa !118
  %.not.i25 = icmp eq i32 %i.ba, 0
  br i1 %.not.i25, label %_xidregistry_unlock.exit, label %bb.aa

bb.aa:                                            ; preds = %_xidregistry_add_type.exit
  %i.bb = getelementptr i8, ptr %.0.i, i64 8      ; 2 uses
  %i.bc = cmpxchg ptr %i.bb, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.bd = extractvalue { i8, i1 } %i.bc, 1
  br i1 %i.bd, label %_xidregistry_unlock.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @PyMutex_Unlock(ptr noundef %i.bb) #14
  br label %_xidregistry_unlock.exit

_xidregistry_unlock.exit:                         ; preds = %bb.f, %bb.e, %bb.ab, %bb.aa, %_xidregistry_add_type.exit
  %.016 = phi i32 [ %.0, %bb.ab ], [ %.0, %_xidregistry_add_type.exit ], [ %.0, %bb.aa ], [ -1, %bb.e ], [ -1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.ac

bb.ac:                                            ; preds = %_xidregistry_unlock.exit, %bb.d, %bb.b
  %.1 = phi i32 [ -1, %bb.d ], [ %.016, %_xidregistry_unlock.exit ], [ -1, %bb.b ]
  ret i32 %.1
}

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 2) i32 @_PyXIData_UnregisterClass(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct._dlcontext, align 8         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %i.b = getelementptr i8, ptr %.val, i64 7376
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.d = getelementptr i8, ptr %i.c, i64 912      ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_xidregistry_unlock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val, i64 10696   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_xidregistry_unlock.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.d, ptr %2, align 8, !tbaa !109
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.f, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !109
  %i.h = getelementptr i8, ptr %1, i64 168
  %.val14 = load i64, ptr %i.h, align 8, !tbaa !112
  %i.i = lshr i64 %.val14, 6
  %.0.in.idx.i = and i64 %i.i, 8
  %.0.in.i = getelementptr i8, ptr %2, i64 %.0.in.idx.i
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !109 ; 5 uses
  %i.j = load i32, ptr %.0.i, align 8, !tbaa !118
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %_xidregistry_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %.0.i, i64 8       ; 2 uses
  %i.l = cmpxchg ptr %i.k, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.m = extractvalue { i8, i1 } %i.l, 1
  br i1 %i.m, label %_xidregistry_lock.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @PyMutex_Lock(ptr noundef %i.k) #14
  br label %_xidregistry_lock.exit

_xidregistry_lock.exit:                           ; preds = %bb.c, %bb.d, %bb.e
  %i.n = getelementptr i8, ptr %.0.i, i64 16      ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !119  ; 2 uses
  %.not23.i = icmp eq ptr %i.o, null
  br i1 %.not23.i, label %_xidregistry_find_type.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_xidregistry_lock.exit, %.backedge.i
  %.01324.i = phi ptr [ %.013.be.i, %.backedge.i ], [ %i.o, %_xidregistry_lock.exit ] ; 11 uses
  %i.p = getelementptr i8, ptr %.01324.i, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !120  ; 5 uses
  %.not17.i = icmp eq ptr %i.q, null
  br i1 %.not17.i, label %Py_DECREF.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.r = getelementptr i8, ptr %i.q, i64 16
  %.val.i = load ptr, ptr %i.r, align 8, !tbaa !123 ; 3 uses
  %i.s = icmp eq ptr %.val.i, @_Py_NoneStruct
  br i1 %i.s, label %_PyWeakref_GET_REF.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val.i.i.i = load i32, ptr %.val.i, align 8, !tbaa !35 ; 4 uses
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %_PyWeakref_GET_REF.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = icmp ugt i32 %.val.i.i.i, -1073741825
  br i1 %i.t, label %Py_DECREF.exit.thread.i, label %_PyWeakref_GET_REF.exit.i

_PyWeakref_GET_REF.exit.thread.i:                 ; preds = %bb.g, %bb.f
  %i.u = getelementptr i8, ptr %.01324.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !126  ; 5 uses
  %i.w = load ptr, ptr %.01324.i, align 8, !tbaa !127 ; 3 uses
  %.not.i18.i = icmp eq ptr %i.w, null
  br i1 %.not.i18.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_PyWeakref_GET_REF.exit.thread.i
  %i.x = getelementptr i8, ptr %i.w, i64 8
  store ptr %i.v, ptr %i.x, align 8, !tbaa !126
  br label %bb.k

bb.j:                                             ; preds = %_PyWeakref_GET_REF.exit.thread.i
  store ptr %i.v, ptr %i.n, align 8, !tbaa !119
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.not13.i.i = icmp eq ptr %i.v, null
  br i1 %.not13.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.w, ptr %i.v, align 8, !tbaa !127
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.y = load i32, ptr %i.q, align 8, !tbaa !35   ; 2 uses
  %.not.i.i.i.i = icmp sgt i32 %i.y, -1
  br i1 %.not.i.i.i.i, label %bb.n, label %Py_DECREF.exit.i

bb.n:                                             ; preds = %bb.m
  %i.z = add nsw i32 %i.y, -1                     ; 2 uses
  store i32 %i.z, ptr %i.q, align 8, !tbaa !35
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.o, label %Py_DECREF.exit.i

bb.o:                                             ; preds = %bb.n
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.q) #14
  br label %Py_DECREF.exit.i

_PyWeakref_GET_REF.exit.i:                        ; preds = %bb.h
  %i.ab = add nuw i32 %.val.i.i.i, 1              ; 2 uses
  %.not.i.i23 = icmp slt i32 %i.ab, 0
  %spec.store.select = select i1 %.not.i.i23, i32 %i.ab, i32 %.val.i.i.i
  store i32 %spec.store.select, ptr %.val.i, align 8
  br label %Py_DECREF.exit.thread.i

Py_DECREF.exit.i:                                 ; preds = %bb.o, %bb.n, %bb.m
  tail call void @PyMem_RawFree(ptr noundef nonnull %.01324.i) #14
  br label %.backedge.i

Py_DECREF.exit.thread.i:                          ; preds = %_PyWeakref_GET_REF.exit.i, %bb.h, %.lr.ph.i
  %i.ac = getelementptr i8, ptr %.01324.i, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !128
  %i.ae = icmp eq ptr %i.ad, %1
  br i1 %i.ae, label %_xidregistry_find_type.exit, label %bb.p

bb.p:                                             ; preds = %Py_DECREF.exit.thread.i
  %i.af = getelementptr i8, ptr %.01324.i, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !126
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.p, %Py_DECREF.exit.i
  %.013.be.i = phi ptr [ %i.ag, %bb.p ], [ %i.v, %Py_DECREF.exit.i ] ; 2 uses
  %.not.i15 = icmp eq ptr %.013.be.i, null
  br i1 %.not.i15, label %_xidregistry_find_type.exit.thread, label %.lr.ph.i, !llvm.loop !129

_xidregistry_find_type.exit:                      ; preds = %Py_DECREF.exit.thread.i
  %i.ah = getelementptr i8, ptr %.01324.i, i64 24
  %i.ai = getelementptr i8, ptr %.01324.i, i64 32 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !132
  %i.ak = add i64 %i.aj, -1                       ; 2 uses
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !132
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.q, label %_xidregistry_find_type.exit.thread

bb.q:                                             ; preds = %_xidregistry_find_type.exit
  %i.am = getelementptr i8, ptr %.01324.i, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !126 ; 4 uses
  %i.ao = load ptr, ptr %.01324.i, align 8, !tbaa !127 ; 3 uses
  %.not.i16 = icmp eq ptr %i.ao, null
  br i1 %.not.i16, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !126
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  store ptr %i.an, ptr %i.n, align 8, !tbaa !119
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.not13.i = icmp eq ptr %i.an, null
  br i1 %.not13.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !127
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !120 ; 4 uses
  %.not.i.i17 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i17, label %_xidregistry_remove_entry.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !35 ; 2 uses
  %.not.i.i.i18 = icmp sgt i32 %i.ar, -1
  br i1 %.not.i.i.i18, label %bb.x, label %_xidregistry_remove_entry.exit

bb.x:                                             ; preds = %bb.w
  %i.as = add nsw i32 %i.ar, -1                   ; 2 uses
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !35
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.y, label %_xidregistry_remove_entry.exit

bb.y:                                             ; preds = %bb.x
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.aq) #14
  br label %_xidregistry_remove_entry.exit

_xidregistry_remove_entry.exit:                   ; preds = %bb.v, %bb.w, %bb.x, %bb.y
  tail call void @PyMem_RawFree(ptr noundef nonnull %.01324.i) #14
  br label %_xidregistry_find_type.exit.thread

_xidregistry_find_type.exit.thread:               ; preds = %.backedge.i, %_xidregistry_lock.exit, %_xidregistry_find_type.exit, %_xidregistry_remove_entry.exit
  %.0 = phi i32 [ 1, %_xidregistry_find_type.exit ], [ 1, %_xidregistry_remove_entry.exit ], [ 0, %_xidregistry_lock.exit ], [ 0, %.backedge.i ] ; 3 uses
  %i.au = load i32, ptr %.0.i, align 8, !tbaa !118
  %.not.i19 = icmp eq i32 %i.au, 0
  br i1 %.not.i19, label %_xidregistry_unlock.exit, label %bb.z

bb.z:                                             ; preds = %_xidregistry_find_type.exit.thread
  %i.av = getelementptr i8, ptr %.0.i, i64 8      ; 2 uses
  %i.aw = cmpxchg ptr %i.av, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.ax = extractvalue { i8, i1 } %i.aw, 1
  br i1 %i.ax, label %_xidregistry_unlock.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @PyMutex_Unlock(ptr noundef %i.av) #14
  br label %_xidregistry_unlock.exit

_xidregistry_unlock.exit:                         ; preds = %bb.b, %bb.a, %bb.aa, %bb.z, %_xidregistry_find_type.exit.thread
  %.012 = phi i32 [ %.0, %bb.aa ], [ %.0, %_xidregistry_find_type.exit.thread ], [ %.0, %bb.z ], [ -1, %bb.a ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret i32 %.012
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @_PyBytes_GetData(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !111
  %i.d = getelementptr i8, ptr %.val, i64 168
  %.val4 = load i64, ptr %i.d, align 8, !tbaa !112
  %i.e = and i64 %.val4, 134217728
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !34
  %i.g = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.f, ptr noundef nonnull @.str.2, ptr noundef nonnull %0) #14 ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.h = call i32 @PyBytes_AsStringAndSize(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #14
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.k = load i64, ptr %i.b, align 8, !tbaa !36
  store ptr %i.j, ptr %1, align 8, !tbaa !37
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.k, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !36
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.1 = phi i32 [ %.0, %bb.e ], [ -1, %bb.b ]
  ret i32 %.1
}

declare i32 @PyBytes_AsStringAndSize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyBytes_FromData(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !134
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !136
  %i.d = tail call ptr @PyBytes_FromStringAndSize(ptr noundef %i.a, i64 noundef %i.c) #14
  ret ptr %i.d
}

declare ptr @PyBytes_FromStringAndSize(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyBytes_FromXIData(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !137    ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !134
  %i.c = getelementptr i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !136
  %i.e = tail call ptr @PyBytes_FromStringAndSize(ptr noundef %i.b, i64 noundef %i.d) #14
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @_PyBytes_GetXIData(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !111
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val6 = load i64, ptr %i.b, align 8, !tbaa !112
  %i.c = and i64 %.val6, 134217728
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !34
  %i.e = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str.2, ptr noundef nonnull %1) #14 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call fastcc i32 @_bytes_shared(ptr noundef %0, ptr noundef nonnull %1, i64 noundef 16, ptr noundef nonnull @_PyBytes_FromXIData, ptr noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.f, %bb.c ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @_bytes_shared(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef range(i64 16, 0) %2, ptr noundef %3, ptr nofree noundef captures(none) initializes((0, 40)) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.f = getelementptr i8, ptr %4, i64 16         ; 2 uses
  store i64 -1, ptr %i.f, align 8, !tbaa !139
  store ptr null, ptr %4, align 8, !tbaa !137
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %1, align 8, !tbaa !35     ; 2 uses
  %i.h = icmp ugt i32 %i.g, -1073741825
  br i1 %i.h, label %_Py_NewRef.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = add nuw i32 %i.g, 1
  store i32 %i.i, ptr %1, align 8, !tbaa !35
  br label %_Py_NewRef.exit.i.i

_Py_NewRef.exit.i.i:                              ; preds = %bb.c, %bb.b
  store ptr %1, ptr %i.e, align 8, !tbaa !140
  br label %bb.d

bb.d:                                             ; preds = %_Py_NewRef.exit.i.i, %bb.a
  %.not12.i.i = icmp eq ptr %i.d, null
  br i1 %.not12.i.i, label %_PyXIData_Init.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i64 @PyInterpreterState_GetID(ptr noundef nonnull %i.d) #14
  br label %_PyXIData_Init.exit.i

_PyXIData_Init.exit.i:                            ; preds = %bb.e, %bb.d
  %i.k = phi i64 [ %i.j, %bb.e ], [ -1, %bb.d ]
  store i64 %i.k, ptr %i.f, align 8, !tbaa !139
  %i.l = getelementptr i8, ptr %4, i64 24
  store ptr %3, ptr %i.l, align 8, !tbaa !141
  %i.m = tail call ptr @PyMem_RawCalloc(i64 noundef 1, i64 noundef %2) #14 ; 4 uses
  store ptr %i.m, ptr %4, align 8, !tbaa !137
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_PyXIData_Clear.exit, label %bb.f

bb.f:                                             ; preds = %_PyXIData_Init.exit.i
  %i.o = getelementptr i8, ptr %4, i64 32         ; 2 uses
  store ptr @PyMem_RawFree, ptr %i.o, align 8, !tbaa !142
  %i.p = getelementptr i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.p, align 8, !tbaa !111
  %i.q = getelementptr i8, ptr %.val.i, i64 168
  %.val4.i = load i64, ptr %i.q, align 8, !tbaa !112
  %i.r = and i64 %.val4.i, 134217728
  %.not.i = icmp eq i64 %i.r, 0
  br i1 %.not.i, label %_PyBytes_GetData.exit.thread, label %bb.g

_PyBytes_GetData.exit.thread:                     ; preds = %bb.f
  %i.s = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !34
  %i.t = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.s, ptr noundef nonnull @.str.2, ptr noundef nonnull %1) #14 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.u = call i32 @PyBytes_AsStringAndSize(ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #14
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %_PyBytes_GetData.exit.thread15, label %_PyBytes_GetData.exit

_PyBytes_GetData.exit.thread15:                   ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.h

_PyBytes_GetData.exit:                            ; preds = %bb.g
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.x = load i64, ptr %i.b, align 8, !tbaa !36
  store ptr %i.w, ptr %i.m, align 8, !tbaa !37
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.x, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %_PyXIData_Clear.exit

bb.h:                                             ; preds = %_PyBytes_GetData.exit.thread15, %_PyBytes_GetData.exit.thread
  %i.y = load ptr, ptr %4, align 8, !tbaa !137    ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.y, null
  br i1 %.not.i.i11, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !142  ; 2 uses
  %.not12.i.i12 = icmp eq ptr %i.z, null
  br i1 %.not12.i.i12, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void %i.z(ptr noundef nonnull %i.y) #14, !inline_history !143
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
end_hunk_0
