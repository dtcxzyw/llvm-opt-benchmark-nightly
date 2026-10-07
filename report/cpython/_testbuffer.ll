Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/_testbuffer?download=true
inline.NumInlined: 175
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@pack_single:bb.a
bb.ah:                                            ; preds = %Py_XDECREF.exit104.thread174
  %i.fq = add nsw i32 %i.fp, -1                   ; 2 uses
  store i32 %i.fq, ptr %i.c, align 8, !tbaa !19
  %i.fr = icmp eq i32 %i.fq, 0
  br i1 %i.fr, label %bb.ai, label %Py_XDECREF.exit107

bb.ai:                                            ; preds = %bb.ah
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #15
  br label %Py_XDECREF.exit107

Py_XDECREF.exit107:                               ; preds = %bb.a, %Py_XDECREF.exit104.thread174, %bb.ah, %bb.ai
  %.1117135153165173 = phi i32 [ %.1117135153165176, %bb.ai ], [ -1, %bb.a ], [ %.1117135153165176, %Py_XDECREF.exit104.thread174 ], [ %.1117135153165176, %bb.ah ]
  ret i32 %.1117135153165173
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @copy_buffer(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  %spec.select.i = select i1 %i.c, ptr @.str.16, ptr %i.b
  %i.d = getelementptr i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = select i1 %i.f, ptr @.str.16, ptr %i.e
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.select.i, ptr noundef nonnull dereferenceable(1) %i.g) #16
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !41   ; 5 uses
  %i.k = getelementptr i8, ptr %1, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !41
  %.not21.i = icmp eq i64 %i.j, %i.l
  br i1 %.not21.i, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %0, i64 36         ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !32   ; 5 uses
  %i.o = getelementptr i8, ptr %1, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !32
  %.not22.i = icmp eq i32 %i.n, %i.p
  br i1 %.not22.i, label %.preheader.i, label %.loopexit

.preheader.i:                                     ; preds = %bb.c
  %i.q = sext i32 %i.n to i64                     ; 2 uses
  %i.r = icmp sgt i32 %i.n, 0
  br i1 %i.r, label %.lr.ph.i, label %cmp_structure.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.s = getelementptr i8, ptr %0, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !38
  %i.u = getelementptr i8, ptr %1, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !38
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i
  %.024.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ab, %bb.e ] ; 3 uses
  %i.w = getelementptr [8 x i8], ptr %i.t, i64 %.024.i
  %i.x = load i64, ptr %i.w, align 8, !tbaa !21   ; 2 uses
  %i.y = getelementptr [8 x i8], ptr %i.v, i64 %.024.i
  %i.z = load i64, ptr %i.y, align 8, !tbaa !21
  %.not23.i = icmp eq i64 %i.x, %i.z
  br i1 %.not23.i, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.aa = icmp eq i64 %i.x, 0
  %i.ab = add nuw nsw i64 %.024.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ab, %i.q
  %or.cond.i = select i1 %i.aa, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %cmp_structure.exit, label %bb.d, !llvm.loop !98

.loopexit:                                        ; preds = %bb.d, %bb.b, %bb.a, %bb.c
  %i.ac = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !18
  tail call void @PyErr_SetString(ptr noundef %i.ac, ptr noundef nonnull @.str.35) #15
  br label %bb.m

cmp_structure.exit:                               ; preds = %bb.e, %.preheader.i
  %i.ad = getelementptr i8, ptr %0, i64 64        ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !48 ; 3 uses
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %cmp_structure.exit
  %i.af = add i32 %i.n, -1
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr [8 x i8], ptr %i.ae, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !21
  %i.aj = icmp sgt i64 %i.ai, -1
  br i1 %i.aj, label %._crit_edge50, label %bb.g

bb.g:                                             ; preds = %bb.f, %cmp_structure.exit
  %i.ak = getelementptr i8, ptr %1, i64 64
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !48 ; 3 uses
  %.not34 = icmp eq ptr %i.al, null
  %.pre51 = add i32 %i.n, -1
  %.pre53 = sext i32 %.pre51 to i64               ; 6 uses
  br i1 %.not34, label %._crit_edge49, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr [8 x i8], ptr %i.al, i64 %.pre53
  %i.an = load i64, ptr %i.am, align 8, !tbaa !21
  %i.ao = icmp sgt i64 %i.an, -1
  br i1 %i.ao, label %._crit_edge50, label %._crit_edge49

._crit_edge49:                                    ; preds = %bb.g, %bb.h
  %i.ap = getelementptr i8, ptr %0, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !47 ; 2 uses
  %i.ar = getelementptr [8 x i8], ptr %i.aq, i64 %.pre53
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !21
  %.not35 = icmp eq i64 %i.as, %i.j
  br i1 %.not35, label %bb.i, label %._crit_edge50

bb.i:                                             ; preds = %._crit_edge49
  %i.at = getelementptr i8, ptr %1, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !47 ; 2 uses
  %i.av = getelementptr [8 x i8], ptr %i.au, i64 %.pre53
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !21
  %.not36 = icmp eq i64 %i.aw, %i.j
  br i1 %.not36, label %bb.k, label %._crit_edge50

._crit_edge50:                                    ; preds = %bb.h, %bb.i, %._crit_edge49, %bb.f
  %.pre-phi = phi i64 [ %.pre53, %bb.i ], [ %.pre53, %._crit_edge49 ], [ %i.ag, %bb.f ], [ %.pre53, %bb.h ]
  %i.ax = getelementptr i8, ptr %0, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !38
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %.pre-phi
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !21
  %i.bb = mul i64 %i.j, %i.ba
  %i.bc = tail call ptr @PyMem_Malloc(i64 noundef %i.bb) #15 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.j, label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge50
  %.pre = load i32, ptr %i.m, align 4, !tbaa !32
  %.pre39 = load i64, ptr %i.i, align 8, !tbaa !41
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 56
  %.pre40 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !47
  %.pre41 = load ptr, ptr %i.ad, align 8, !tbaa !48
  %.phi.trans.insert42 = getelementptr i8, ptr %1, i64 56
  %.pre43 = load ptr, ptr %.phi.trans.insert42, align 8, !tbaa !47
  %.phi.trans.insert44 = getelementptr i8, ptr %1, i64 64
  %.pre45 = load ptr, ptr %.phi.trans.insert44, align 8, !tbaa !48
  %.pre46 = sext i32 %.pre to i64
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge50
  %i.be = tail call ptr @PyErr_NoMemory() #15     ; 0 uses
  br label %bb.m

bb.k:                                             ; preds = %._crit_edge, %bb.i
  %.pre-phi47 = phi i64 [ %.pre46, %._crit_edge ], [ %i.q, %bb.i ]
  %i.bf = phi ptr [ %.pre45, %._crit_edge ], [ %i.al, %bb.i ]
  %i.bg = phi ptr [ %.pre43, %._crit_edge ], [ %i.au, %bb.i ]
  %i.bh = phi ptr [ %.pre41, %._crit_edge ], [ %i.ae, %bb.i ]
  %i.bi = phi ptr [ %.pre40, %._crit_edge ], [ %i.aq, %bb.i ]
  %i.bj = phi i64 [ %.pre39, %._crit_edge ], [ %i.j, %bb.i ]
  %.0 = phi ptr [ %i.bc, %._crit_edge ], [ null, %bb.i ] ; 3 uses
  %i.bk = getelementptr i8, ptr %0, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !38
  %i.bm = load ptr, ptr %0, align 8, !tbaa !49
  %i.bn = load ptr, ptr %1, align 8, !tbaa !49
  tail call fastcc void @copy_rec(ptr noundef %i.bl, i64 noundef %.pre-phi47, i64 noundef %i.bj, ptr noundef %i.bm, ptr noundef %i.bi, ptr noundef %i.bh, ptr noundef %i.bn, ptr noundef %i.bg, ptr noundef %i.bf, ptr noundef %.0)
  %.not37 = icmp eq ptr %.0, null
  br i1 %.not37, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @PyMem_Free(ptr noundef nonnull %.0) #15
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j, %.loopexit
  %.030 = phi i32 [ -1, %.loopexit ], [ -1, %bb.j ], [ 0, %bb.l ], [ 0, %bb.k ]
  ret i32 %.030
}

declare ptr @PyUnicode_FromString(ptr noundef) local_unnamed_addr #2

declare ptr @PyObject_CallFunctionObjArgs(ptr noundef, ...) local_unnamed_addr #2

declare ptr @PyLong_FromLong(i64 noundef) local_unnamed_addr #2

declare i64 @PySequence_Size(ptr noundef) local_unnamed_addr #2

declare ptr @PyObject_CallObject(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PyType_IsSubtype(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @copy_rec(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(address_is_null) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(address_is_null) %8, ptr nofree noundef captures(none) %9) unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.f, label %.preheader95

.preheader95:                                     ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8, !tbaa !21
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader95
  %.not = icmp eq ptr %5, null                    ; 2 uses
  %.not91 = icmp eq ptr %8, null                  ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 8          ; 4 uses
  %i.e = add i64 %1, -1                           ; 4 uses
  %i.f = getelementptr i8, ptr %4, i64 8          ; 4 uses
  %i.g = getelementptr i8, ptr %5, i64 8          ; 3 uses
  %10 = select i1 %.not, ptr null, ptr %i.g
  %i.h = getelementptr i8, ptr %7, i64 8          ; 4 uses
  %i.i = getelementptr i8, ptr %8, i64 8          ; 3 uses
  %i.j = select i1 %.not91, ptr null, ptr %i.i
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not91, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %.lr.ph.split.us.split.us
  %.299.us.us = phi i64 [ %i.o, %.lr.ph.split.us.split.us ], [ 0, %.lr.ph.split.us ]
  %.17698.us.us = phi ptr [ %i.l, %.lr.ph.split.us.split.us ], [ %3, %.lr.ph.split.us ] ; 2 uses
  %.17897.us.us = phi ptr [ %i.n, %.lr.ph.split.us.split.us ], [ %6, %.lr.ph.split.us ] ; 2 uses
  tail call fastcc void @copy_rec(ptr noundef %i.d, i64 noundef %i.e, i64 noundef %2, ptr noundef %.17698.us.us, ptr noundef %i.f, ptr noundef null, ptr noundef %.17897.us.us, ptr noundef %i.h, ptr noundef null, ptr noundef %9)
  %i.k = load i64, ptr %4, align 8, !tbaa !21
  %i.l = getelementptr i8, ptr %.17698.us.us, i64 %i.k
  %i.m = load i64, ptr %7, align 8, !tbaa !21
  %i.n = getelementptr i8, ptr %.17897.us.us, i64 %i.m
  %i.o = add nuw nsw i64 %.299.us.us, 1           ; 2 uses
  %i.p = load i64, ptr %0, align 8, !tbaa !21
  %i.q = icmp slt i64 %i.o, %i.p
  br i1 %i.q, label %.lr.ph.split.us.split.us, label %.loopexit, !llvm.loop !99

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %bb.c
  %.299.us = phi i64 [ %i.aa, %bb.c ], [ 0, %.lr.ph.split.us ]
  %.17698.us = phi ptr [ %i.x, %bb.c ], [ %3, %.lr.ph.split.us ] ; 2 uses
  %.17897.us = phi ptr [ %i.z, %bb.c ], [ %6, %.lr.ph.split.us ] ; 3 uses
  %i.r = load i64, ptr %8, align 8, !tbaa !21     ; 2 uses
  %i.s = icmp sgt i64 %i.r, -1
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us.split
  %i.t = load ptr, ptr %.17897.us, align 8, !tbaa !58
  %i.u = getelementptr i8, ptr %i.t, i64 %i.r
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.split
  %i.v = phi ptr [ %i.u, %bb.b ], [ %.17897.us, %.lr.ph.split.us.split ]
  tail call fastcc void @copy_rec(ptr noundef %i.d, i64 noundef %i.e, i64 noundef %2, ptr noundef %.17698.us, ptr noundef %i.f, ptr noundef %10, ptr noundef %i.v, ptr noundef %i.h, ptr noundef %i.i, ptr noundef %9)
  %i.w = load i64, ptr %4, align 8, !tbaa !21
  %i.x = getelementptr i8, ptr %.17698.us, i64 %i.w
  %i.y = load i64, ptr %7, align 8, !tbaa !21
  %i.z = getelementptr i8, ptr %.17897.us, i64 %i.y
  %i.aa = add nuw nsw i64 %.299.us, 1             ; 2 uses
  %i.ab = load i64, ptr %0, align 8, !tbaa !21
  %i.ac = icmp slt i64 %i.aa, %i.ab
  br i1 %i.ac, label %.lr.ph.split.us.split, label %.loopexit, !llvm.loop !99

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not91, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.e
  %.299.us100 = phi i64 [ %i.am, %bb.e ], [ 0, %.lr.ph.split ]
  %.17698.us101 = phi ptr [ %i.aj, %bb.e ], [ %3, %.lr.ph.split ] ; 3 uses
  %.17897.us102 = phi ptr [ %i.al, %bb.e ], [ %6, %.lr.ph.split ] ; 2 uses
  %i.ad = load i64, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, -1
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.split.split.us
  %i.af = load ptr, ptr %.17698.us101, align 8, !tbaa !58
  %i.ag = getelementptr i8, ptr %i.af, i64 %i.ad
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split.split.us
  %i.ah = phi ptr [ %i.ag, %bb.d ], [ %.17698.us101, %.lr.ph.split.split.us ]
  tail call fastcc void @copy_rec(ptr noundef %i.d, i64 noundef %i.e, i64 noundef %2, ptr noundef %i.ah, ptr noundef %i.f, ptr noundef %i.g, ptr noundef %.17897.us102, ptr noundef %i.h, ptr noundef %i.j, ptr noundef %9)
  %i.ai = load i64, ptr %4, align 8, !tbaa !21
  %i.aj = getelementptr i8, ptr %.17698.us101, i64 %i.ai
  %i.ak = load i64, ptr %7, align 8, !tbaa !21
  %i.al = getelementptr i8, ptr %.17897.us102, i64 %i.ak
  %i.am = add nuw nsw i64 %.299.us100, 1          ; 2 uses
  %i.an = load i64, ptr %0, align 8, !tbaa !21
  %i.ao = icmp slt i64 %i.am, %i.an
  br i1 %i.ao, label %.lr.ph.split.split.us, label %.loopexit, !llvm.loop !99

bb.f:                                             ; preds = %bb.a
  %.not92 = icmp eq ptr %5, null                  ; 2 uses
  br i1 %.not92, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = load i64, ptr %5, align 8, !tbaa !21
  %i.aq = icmp sgt i64 %i.ap, -1
  br i1 %i.aq, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not93 = icmp eq ptr %8, null
  br i1 %.not93, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = load i64, ptr %8, align 8, !tbaa !21
  %i.as = icmp sgt i64 %i.ar, -1
  br i1 %i.as, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.at = load i64, ptr %4, align 8, !tbaa !21
  %i.au = icmp eq i64 %i.at, %2
  br i1 %i.au, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.av = load i64, ptr %7, align 8, !tbaa !21
  %i.aw = icmp eq i64 %i.av, %2
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ax = load i64, ptr %0, align 8, !tbaa !21
  %i.ay = mul i64 %i.ax, %2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %3, ptr align 1 %6, i64 %i.ay, i1 false)
  br label %.loopexit

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.g
  %i.az = load i64, ptr %0, align 8, !tbaa !21
  %i.ba = icmp sgt i64 %i.az, 0
  br i1 %i.ba, label %.lr.ph106, label %.loopexit

.lr.ph106:                                        ; preds = %bb.m
  %.not94 = icmp eq ptr %8, null
  br i1 %.not94, label %.lr.ph106.split.us, label %.lr.ph106.split

.lr.ph106.split.us:                               ; preds = %.lr.ph106, %.lr.ph106.split.us
  %.0105.us = phi ptr [ %i.bb, %.lr.ph106.split.us ], [ %9, %.lr.ph106 ] ; 2 uses
  %.073104.us = phi i64 [ %i.be, %.lr.ph106.split.us ], [ 0, %.lr.ph106 ]
  %.077103.us = phi ptr [ %i.bd, %.lr.ph106.split.us ], [ %6, %.lr.ph106 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0105.us, ptr align 1 %.077103.us, i64 %2, i1 false)
  %i.bb = getelementptr i8, ptr %.0105.us, i64 %2
  %i.bc = load i64, ptr %7, align 8, !tbaa !21
  %i.bd = getelementptr i8, ptr %.077103.us, i64 %i.bc
  %i.be = add nuw nsw i64 %.073104.us, 1          ; 2 uses
  %i.bf = load i64, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.bg = icmp slt i64 %i.be, %i.bf
  br i1 %i.bg, label %.lr.ph106.split.us, label %.preheader, !llvm.loop !100

.preheader:                                       ; preds = %bb.o, %.lr.ph106.split.us
  %i.bh = phi i64 [ %i.bf, %.lr.ph106.split.us ], [ %i.by, %bb.o ]
  %i.bi = icmp sgt i64 %i.bh, 0
  br i1 %i.bi, label %.lr.ph110, label %.loopexit

.lr.ph110:                                        ; preds = %.preheader
  br i1 %.not92, label %.lr.ph110.split.us, label %.lr.ph110.split

.lr.ph110.split.us:                               ; preds = %.lr.ph110, %.lr.ph110.split.us
  %.1109.us = phi ptr [ %i.bj, %.lr.ph110.split.us ], [ %9, %.lr.ph110 ] ; 2 uses
  %.174108.us = phi i64 [ %i.bm, %.lr.ph110.split.us ], [ 0, %.lr.ph110 ]
  %.075107.us = phi ptr [ %i.bl, %.lr.ph110.split.us ], [ %3, %.lr.ph110 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.075107.us, ptr align 1 %.1109.us, i64 %2, i1 false)
  %i.bj = getelementptr i8, ptr %.1109.us, i64 %2
  %i.bk = load i64, ptr %4, align 8, !tbaa !21
  %i.bl = getelementptr i8, ptr %.075107.us, i64 %i.bk
  %i.bm = add nuw nsw i64 %.174108.us, 1          ; 2 uses
  %i.bn = load i64, ptr %0, align 8, !tbaa !21
  %i.bo = icmp slt i64 %i.bm, %i.bn
  br i1 %i.bo, label %.lr.ph110.split.us, label %.loopexit, !llvm.loop !101

.lr.ph106.split:                                  ; preds = %.lr.ph106, %bb.o
  %.0105 = phi ptr [ %i.bu, %bb.o ], [ %9, %.lr.ph106 ] ; 2 uses
  %.073104 = phi i64 [ %i.bx, %bb.o ], [ 0, %.lr.ph106 ]
  %.077103 = phi ptr [ %i.bw, %bb.o ], [ %6, %.lr.ph106 ] ; 3 uses
  %i.bp = load i64, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.bq = icmp sgt i64 %i.bp, -1
  br i1 %i.bq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph106.split
  %i.br = load ptr, ptr %.077103, align 8, !tbaa !58
  %i.bs = getelementptr i8, ptr %i.br, i64 %i.bp
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph106.split, %bb.n
  %i.bt = phi ptr [ %i.bs, %bb.n ], [ %.077103, %.lr.ph106.split ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0105, ptr align 1 %i.bt, i64 %2, i1 false)
  %i.bu = getelementptr i8, ptr %.0105, i64 %2
  %i.bv = load i64, ptr %7, align 8, !tbaa !21
  %i.bw = getelementptr i8, ptr %.077103, i64 %i.bv
  %i.bx = add nuw nsw i64 %.073104, 1             ; 2 uses
  %i.by = load i64, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.bz = icmp slt i64 %i.bx, %i.by
  br i1 %i.bz, label %.lr.ph106.split, label %.preheader, !llvm.loop !100

.lr.ph110.split:                                  ; preds = %.lr.ph110, %bb.q
  %.1109 = phi ptr [ %i.cf, %bb.q ], [ %9, %.lr.ph110 ] ; 2 uses
  %.174108 = phi i64 [ %i.ci, %bb.q ], [ 0, %.lr.ph110 ]
  %.075107 = phi ptr [ %i.ch, %bb.q ], [ %3, %.lr.ph110 ] ; 3 uses
  %i.ca = load i64, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.cb = icmp sgt i64 %i.ca, -1
  br i1 %i.cb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph110.split
  %i.cc = load ptr, ptr %.075107, align 8, !tbaa !58
  %i.cd = getelementptr i8, ptr %i.cc, i64 %i.ca
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph110.split, %bb.p
  %i.ce = phi ptr [ %i.cd, %bb.p ], [ %.075107, %.lr.ph110.split ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ce, ptr align 1 %.1109, i64 %2, i1 false)
  %i.cf = getelementptr i8, ptr %.1109, i64 %2
  %i.cg = load i64, ptr %4, align 8, !tbaa !21
  %i.ch = getelementptr i8, ptr %.075107, i64 %i.cg
  %i.ci = add nuw nsw i64 %.174108, 1             ; 2 uses
  %i.cj = load i64, ptr %0, align 8, !tbaa !21
  %i.ck = icmp slt i64 %i.ci, %i.cj
  br i1 %i.ck, label %.lr.ph110.split, label %.loopexit, !llvm.loop !101

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.u
  %.299 = phi i64 [ %i.cz, %bb.u ], [ 0, %.lr.ph.split ]
  %.17698 = phi ptr [ %i.cw, %bb.u ], [ %3, %.lr.ph.split ] ; 3 uses
  %.17897 = phi ptr [ %i.cy, %bb.u ], [ %6, %.lr.ph.split ] ; 3 uses
  %i.cl = load i64, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.cm = icmp sgt i64 %i.cl, -1
  br i1 %i.cm, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.split.split
  %i.cn = load ptr, ptr %.17698, align 8, !tbaa !58
  %i.co = getelementptr i8, ptr %i.cn, i64 %i.cl
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph.split.split, %bb.r
  %i.cp = phi ptr [ %i.co, %bb.r ], [ %.17698, %.lr.ph.split.split ]
  %i.cq = load i64, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.cr = icmp sgt i64 %i.cq, -1
  br i1 %i.cr, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cs = load ptr, ptr %.17897, align 8, !tbaa !58
  %i.ct = getelementptr i8, ptr %i.cs, i64 %i.cq
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.cu = phi ptr [ %i.ct, %bb.t ], [ %.17897, %bb.s ]
  tail call fastcc void @copy_rec(ptr noundef %i.d, i64 noundef %i.e, i64 noundef %2, ptr noundef %i.cp, ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.cu, ptr noundef %i.h, ptr noundef %i.i, ptr noundef %9)
  %i.cv = load i64, ptr %4, align 8, !tbaa !21
  %i.cw = getelementptr i8, ptr %.17698, i64 %i.cv
  %i.cx = load i64, ptr %7, align 8, !tbaa !21
  %i.cy = getelementptr i8, ptr %.17897, i64 %i.cx
  %i.cz = add nuw nsw i64 %.299, 1                ; 2 uses
  %i.da = load i64, ptr %0, align 8, !tbaa !21
  %i.db = icmp slt i64 %i.cz, %i.da
  br i1 %i.db, label %.lr.ph.split.split, label %.loopexit, !llvm.loop !99

.loopexit:                                        ; preds = %bb.u, %bb.e, %bb.c, %.lr.ph.split.us.split.us, %bb.q, %.lr.ph110.split.us, %bb.m, %.preheader95, %.preheader, %bb.l
  ret void
end_hunk_0
begin_hunk_1_@ndarray_add_suboffsets:bb.a

bb.g:                                             ; preds = %._crit_edge, %bb.f, %bb.d, %bb.b
  %.013 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.f ], [ @_Py_NoneStruct, %._crit_edge ]
  ret ptr %.013
}

; Function Attrs: nounwind uwtable
define internal ptr @ndarray_memoryview_from_buffer(ptr nofree noundef readonly captures(address) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 9 uses
  %i.c = getelementptr i8, ptr %i.b, i64 56       ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.b, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54   ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %.val = load ptr, ptr %i.h, align 8, !tbaa !16
  %.not = icmp eq ptr %.val, @NDArray_Type
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.g, i64 160
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !46   ; 2 uses
  %i.k = getelementptr i8, ptr %i.g, i64 24
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !18
  tail call void @PyErr_SetString(ptr noundef %i.m, ptr noundef nonnull @.str.83) #15
  br label %bb.t

bb.e:                                             ; preds = %bb.c, %bb.a
  %.0 = phi ptr [ %i.b, %bb.a ], [ %i.j, %bb.c ]  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @ndarray_memoryview_from_buffer.info, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false), !tbaa.struct !68
  %i.n = load ptr, ptr @infobuf, align 8, !tbaa !58
  %i.o = getelementptr i8, ptr %.0, i64 16        ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !70
  %i.q = tail call ptr @PyMem_Realloc(ptr noundef %i.n, i64 noundef %i.p) #15 ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr @infobuf, align 8, !tbaa !58
  tail call void @PyMem_Free(ptr noundef %i.s) #15
  %i.t = tail call ptr @PyErr_NoMemory() #15      ; 0 uses
  store ptr null, ptr @infobuf, align 8, !tbaa !58
  br label %bb.t

bb.g:                                             ; preds = %bb.e
  store ptr %i.q, ptr @infobuf, align 8, !tbaa !58
  %i.u = getelementptr i8, ptr %.0, i64 32        ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !55
  %i.w = load i64, ptr %i.o, align 8, !tbaa !70
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %i.v, i64 %i.w, i1 false)
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !55
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = getelementptr i8, ptr %i.q, i64 %i.ab
  store ptr %i.ac, ptr @ndarray_memoryview_from_buffer.info, align 8, !tbaa !49
  %i.ad = getelementptr i8, ptr %i.b, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !40 ; 3 uses
  %.not40 = icmp eq ptr %i.ae, null
  br i1 %.not40, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ae) #16
  %i.ag = icmp ugt i64 %i.af, 128
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !18
  %i.ai = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ah, ptr noundef nonnull @.str.84, i32 noundef 128) #15 ; 0 uses
  br label %bb.t

bb.j:                                             ; preds = %bb.h
  %i.aj = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @ndarray_memoryview_from_buffer.format, ptr noundef nonnull dereferenceable(1) %i.ae) #15 ; 0 uses
  store ptr @ndarray_memoryview_from_buffer.format, ptr getelementptr inbounds nuw (i8, ptr @ndarray_memoryview_from_buffer.info, i64 40), align 8, !tbaa !40
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.ak = getelementptr i8, ptr %i.b, i64 92      ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !32 ; 2 uses
  %i.am = icmp sgt i32 %i.al, 128
  br i1 %i.am, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.an = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !18
  %i.ao = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.an, ptr noundef nonnull @.str.85, i32 noundef 128) #15 ; 0 uses
  br label %bb.t

bb.m:                                             ; preds = %bb.k
  %i.ap = getelementptr i8, ptr %i.b, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !38 ; 2 uses
  %.not41 = icmp eq ptr %i.aq, null
  br i1 %.not41, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = sext i32 %i.al to i64
  %i.as = shl nsw i64 %i.ar, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 @ndarray_memoryview_from_buffer.shape, ptr nonnull align 8 %i.aq, i64 %i.as, i1 false)
  store ptr @ndarray_memoryview_from_buffer.shape, ptr getelementptr inbounds nuw (i8, ptr @ndarray_memoryview_from_buffer.info, i64 48), align 8, !tbaa !38
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.at = getelementptr i8, ptr %i.b, i64 112
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !47 ; 2 uses
  %.not42 = icmp eq ptr %i.au, null
  br i1 %.not42, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = load i32, ptr %i.ak, align 4, !tbaa !32
  %i.aw = sext i32 %i.av to i64
  %i.ax = shl nsw i64 %i.aw, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 @ndarray_memoryview_from_buffer.strides, ptr nonnull align 8 %i.au, i64 %i.ax, i1 false)
  store ptr @ndarray_memoryview_from_buffer.strides, ptr getelementptr inbounds nuw (i8, ptr @ndarray_memoryview_from_buffer.info, i64 56), align 8, !tbaa !47
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ay = getelementptr i8, ptr %i.b, i64 120
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !48 ; 2 uses
  %.not43 = icmp eq ptr %i.az, null
  br i1 %.not43, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = load i32, ptr %i.ak, align 4, !tbaa !32
  %i.bb = sext i32 %i.ba to i64
  %i.bc = shl nsw i64 %i.bb, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 @ndarray_memoryview_from_buffer.suboffsets, ptr nonnull align 8 %i.az, i64 %i.bc, i1 false)
  store ptr @ndarray_memoryview_from_buffer.suboffsets, ptr getelementptr inbounds nuw (i8, ptr @ndarray_memoryview_from_buffer.info, i64 64), align 8, !tbaa !48
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bd = tail call ptr @PyMemoryView_FromBuffer(ptr noundef nonnull @ndarray_memoryview_from_buffer.info) #15
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.l, %bb.i, %bb.f, %bb.d
  %.031 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.i ], [ null, %bb.l ], [ %i.bd, %bb.s ]
  ret ptr %.031
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @unpack_rec(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull %2, ptr nofree noundef nonnull writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(address_is_null) %6, i64 noundef %7, i64 noundef %8) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %7, 0
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr align 1 %1, i64 %8, i1 false)
  %i.b = tail call ptr (ptr, ...) @PyObject_CallFunctionObjArgs(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef null) #15 ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %Py_DECREF.exit53, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %i.b, i64 16
  %.val = load i64, ptr %i.d, align 8, !tbaa !33
  %i.e = icmp eq i64 %.val, 1
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit53

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %i.b, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18   ; 5 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  %i.i = icmp ugt i32 %i.h, -1073741825
  br i1 %i.i, label %Py_INCREF.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = add nuw i32 %i.h, 1
  store i32 %i.j, ptr %i.g, align 8, !tbaa !19
  br label %Py_INCREF.exit

Py_INCREF.exit:                                   ; preds = %bb.d, %bb.e
  %i.k = load i32, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %.not.i52 = icmp sgt i32 %i.k, -1
  br i1 %.not.i52, label %bb.f, label %Py_DECREF.exit53

bb.f:                                             ; preds = %Py_INCREF.exit
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.l, ptr %i.b, align 8, !tbaa !19
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %Py_DECREF.exit53.sink.split, label %Py_DECREF.exit53

bb.g:                                             ; preds = %bb.a
  %i.n = load i64, ptr %4, align 8, !tbaa !21
  %i.o = tail call ptr @PyList_New(i64 noundef %i.n) #15 ; 8 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %Py_DECREF.exit53, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.q = load i64, ptr %4, align 8, !tbaa !21
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %.lr.ph, label %Py_DECREF.exit53

.lr.ph:                                           ; preds = %.preheader
  %.not = icmp eq ptr %6, null                    ; 2 uses
  %i.s = getelementptr i8, ptr %4, i64 8          ; 2 uses
  %i.t = getelementptr i8, ptr %5, i64 8          ; 2 uses
  %i.u = getelementptr i8, ptr %6, i64 8          ; 2 uses
  %9 = select i1 %.not, ptr null, ptr %i.u
  %i.v = add i64 %7, -1                           ; 2 uses
  %i.w = getelementptr i8, ptr %i.o, i64 24       ; 2 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.h
  %.04357.us = phi i64 [ %i.ab, %bb.h ], [ 0, %.lr.ph ] ; 2 uses
  %.04456.us = phi ptr [ %i.aa, %bb.h ], [ %1, %.lr.ph ] ; 2 uses
  %i.x = tail call fastcc ptr @unpack_rec(ptr noundef %0, ptr noundef %.04456.us, ptr noundef %2, ptr noundef %3, ptr noundef %i.s, ptr noundef %i.t, ptr noundef %9, i64 noundef %i.v, i64 noundef %8) ; 2 uses
  %.not51.us = icmp eq ptr %i.x, null
  br i1 %.not51.us, label %.split.us, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.us
  %.val55.us = load ptr, ptr %i.w, align 8, !tbaa !37
  %i.y = getelementptr [8 x i8], ptr %.val55.us, i64 %.04357.us
  store ptr %i.x, ptr %i.y, align 8, !tbaa !18
  %i.z = load i64, ptr %5, align 8, !tbaa !21
  %i.aa = getelementptr i8, ptr %.04456.us, i64 %i.z
  %i.ab = add nuw nsw i64 %.04357.us, 1           ; 2 uses
  %i.ac = load i64, ptr %4, align 8, !tbaa !21
  %i.ad = icmp slt i64 %i.ab, %i.ac
  br i1 %i.ad, label %.lr.ph.split.us, label %Py_DECREF.exit53, !llvm.loop !104

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.l
  %.04357 = phi i64 [ %i.aq, %bb.l ], [ 0, %.lr.ph ] ; 2 uses
  %.04456 = phi ptr [ %i.ap, %bb.l ], [ %1, %.lr.ph ] ; 3 uses
  %i.ae = load i64, ptr %6, align 8, !tbaa !21    ; 2 uses
  %i.af = icmp sgt i64 %i.ae, -1
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.split
  %i.ag = load ptr, ptr %.04456, align 8, !tbaa !58
  %i.ah = getelementptr i8, ptr %i.ag, i64 %i.ae
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph.split, %bb.i
  %i.ai = phi ptr [ %i.ah, %bb.i ], [ %.04456, %.lr.ph.split ]
  %i.aj = tail call fastcc ptr @unpack_rec(ptr noundef %0, ptr noundef %i.ai, ptr noundef %2, ptr noundef %3, ptr noundef %i.s, ptr noundef %i.t, ptr noundef %i.u, i64 noundef %i.v, i64 noundef %8) ; 2 uses
  %.not51 = icmp eq ptr %i.aj, null
  br i1 %.not51, label %.split.us, label %bb.l

.split.us:                                        ; preds = %bb.j, %.lr.ph.split.us
  %i.ak = load i32, ptr %i.o, align 8, !tbaa !19  ; 2 uses
  %.not.i = icmp sgt i32 %i.ak, -1
  br i1 %.not.i, label %bb.k, label %Py_DECREF.exit53

bb.k:                                             ; preds = %.split.us
  %i.al = add nsw i32 %i.ak, -1                   ; 2 uses
  store i32 %i.al, ptr %i.o, align 8, !tbaa !19
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %Py_DECREF.exit53.sink.split, label %Py_DECREF.exit53

bb.l:                                             ; preds = %bb.j
  %.val55 = load ptr, ptr %i.w, align 8, !tbaa !37
  %i.an = getelementptr [8 x i8], ptr %.val55, i64 %.04357
  store ptr %i.aj, ptr %i.an, align 8, !tbaa !18
  %i.ao = load i64, ptr %5, align 8, !tbaa !21
  %i.ap = getelementptr i8, ptr %.04456, i64 %i.ao
  %i.aq = add nuw nsw i64 %.04357, 1              ; 2 uses
  %i.ar = load i64, ptr %4, align 8, !tbaa !21
  %i.as = icmp slt i64 %i.aq, %i.ar
  br i1 %i.as, label %.lr.ph.split, label %Py_DECREF.exit53, !llvm.loop !104

Py_DECREF.exit53.sink.split:                      ; preds = %bb.k, %bb.f
  %.sink = phi ptr [ %i.b, %bb.f ], [ %i.o, %bb.k ]
  %.2.ph = phi ptr [ %i.g, %bb.f ], [ null, %bb.k ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.sink) #15
  br label %Py_DECREF.exit53

Py_DECREF.exit53:                                 ; preds = %bb.l, %bb.h, %Py_DECREF.exit53.sink.split, %.preheader, %.split.us, %bb.k, %bb.f, %Py_INCREF.exit, %bb.g, %bb.c, %bb.b
  %.2 = phi ptr [ null, %bb.g ], [ null, %.split.us ], [ null, %bb.b ], [ %i.b, %bb.c ], [ %.2.ph, %Py_DECREF.exit53.sink.split ], [ %i.g, %Py_INCREF.exit ], [ %i.g, %bb.f ], [ %i.o, %bb.h ], [ null, %bb.k ], [ %i.o, %.preheader ], [ %i.o, %bb.l ]
  ret ptr %.2
}

declare ptr @PyList_New(i64 noundef) local_unnamed_addr #2

declare i32 @PyArg_ParseTupleAndKeywords(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @ndarray_push_base(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(address) %3, i64 noundef %4, ptr noundef %5, i32 noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %.val86.i = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.b = getelementptr i8, ptr %.val86.i, i64 168
  %.val96.i = load i64, ptr %i.b, align 8, !tbaa !29
  %i.c = and i64 %.val96.i, 100663296
  %or.cond138.i = icmp eq i64 %i.c, 0
  br i1 %or.cond138.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !18
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.65) #15
  br label %init_ndbuf.exit.thread

bb.c:                                             ; preds = %bb.a
  %.in.i = getelementptr i8, ptr %2, i64 16
  %i.e = load i64, ptr %.in.i, align 8, !tbaa !33 ; 13 uses
  %i.f = icmp sgt i64 %i.e, 128
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !18
  %i.h = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.g, ptr noundef nonnull @.str.66, i32 noundef 128) #15 ; 0 uses
  br label %init_ndbuf.exit.thread

bb.e:                                             ; preds = %bb.c
  %.not60.i = icmp eq ptr %3, null
  br i1 %.not60.i, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr i8, ptr %3, i64 8
  %.val83.i = load ptr, ptr %i.i, align 8, !tbaa !16
  %i.j = getelementptr i8, ptr %.val83.i, i64 168
  %.val93.i = load i64, ptr %i.j, align 8, !tbaa !29
  %i.k = and i64 %.val93.i, 100663296
  %or.cond139.i = icmp eq i64 %i.k, 0
  br i1 %or.cond139.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !18
  tail call void @PyErr_SetString(ptr noundef %i.l, ptr noundef nonnull @.str.67) #15
  br label %init_ndbuf.exit.thread

bb.h:                                             ; preds = %bb.f
  %.in135.i = getelementptr i8, ptr %3, i64 16
  %i.m = load i64, ptr %.in135.i, align 8, !tbaa !33 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = and i32 %6, 4
  %.not64.i = icmp eq i32 %i.o, 0
  br i1 %.not64.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !18
  tail call void @PyErr_SetString(ptr noundef %i.p, ptr noundef nonnull @.str.68) #15
  br label %init_ndbuf.exit.thread

bb.k:                                             ; preds = %bb.i
  %.not66.i = icmp eq i64 %i.m, %i.e
  br i1 %.not66.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !18
  tail call void @PyErr_SetString(ptr noundef %i.q, ptr noundef nonnull @.str.69) #15
  br label %init_ndbuf.exit.thread

bb.m:                                             ; preds = %bb.k, %bb.h, %bb.e
  %.050.i = phi ptr [ null, %bb.e ], [ %3, %bb.k ], [ null, %bb.h ] ; 2 uses
  %i.r = load ptr, ptr @calcsize, align 8, !tbaa !18
  %i.s = tail call ptr (ptr, ...) @PyObject_CallFunctionObjArgs(ptr noundef %i.r, ptr noundef %5, ptr noundef null) #15 ; 5 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %init_ndbuf.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = tail call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.s) #15 ; 7 uses
  %i.v = load i32, ptr %i.s, align 8, !tbaa !19   ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.v, -1
  br i1 %.not.i.i.i, label %bb.o, label %get_itemsize.exit.i

bb.o:                                             ; preds = %bb.n
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr %i.s, align 8, !tbaa !19
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.p, label %get_itemsize.exit.i

bb.p:                                             ; preds = %bb.o
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.s) #15
  br label %get_itemsize.exit.i

get_itemsize.exit.i:                              ; preds = %bb.p, %bb.o, %bb.n
  %i.y = icmp slt i64 %i.u, 1
  br i1 %i.y, label %bb.q, label %bb.s

bb.q:                                             ; preds = %get_itemsize.exit.i
  %i.z = icmp eq i64 %i.u, 0
  br i1 %i.z, label %bb.r, label %init_ndbuf.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.aa = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !18
  tail call void @PyErr_SetString(ptr noundef %i.aa, ptr noundef nonnull @.str.70) #15
  br label %init_ndbuf.exit.thread

bb.s:                                             ; preds = %get_itemsize.exit.i
  %i.ab = icmp eq i64 %i.e, 0                     ; 2 uses
  br i1 %i.ab, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ac = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 1, ptr noundef %1) #15 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %init_ndbuf.exit.thread, label %Py_INCREF.exit.i

bb.u:                                             ; preds = %bb.s
  %i.ae = getelementptr i8, ptr %1, i64 8
  %.val79.i = load ptr, ptr %i.ae, align 8, !tbaa !16
  %i.af = getelementptr i8, ptr %.val79.i, i64 168
  %.val89.i = load i64, ptr %i.af, align 8, !tbaa !29
  %i.ag = and i64 %.val89.i, 100663296
  %or.cond.i = icmp eq i64 %i.ag, 0
  br i1 %or.cond.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ah = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !18
  tail call void @PyErr_SetString(ptr noundef %i.ah, ptr noundef nonnull @.str.71) #15
  br label %init_ndbuf.exit.thread

bb.w:                                             ; preds = %bb.u
  %i.ai = load i32, ptr %1, align 8, !tbaa !19    ; 2 uses
end_hunk_1
