Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/obmalloc?download=true
inline.NumInlined: 1359
inline.NumDeleted: 295
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 45
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_PyObject_Realloc:bb.a
  br i1 %.not.i10, label %bb.m, label %bb.l

bb.l:                                             ; preds = %address_in_range.exit.thread2.i
  %i.bu = shl nuw nsw i64 %2, 2
  %i.bv = mul nuw nsw i64 %i.bt, 3
  %i.bw = icmp samesign ugt i64 %i.bu, %i.bv
  br i1 %i.bw, label %_PyObject_Malloc.exit, label %bb.m

bb.m:                                             ; preds = %bb.l, %address_in_range.exit.thread2.i
  %.0.i11 = phi i64 [ %i.bt, %address_in_range.exit.thread2.i ], [ %2, %bb.l ]
  %i.bx = add i64 %2, -513
  %or.cond.i.i.i = icmp ult i64 %i.bx, -512
  br i1 %or.cond.i.i.i, label %bb.s, label %bb.n, !prof !372

bb.n:                                             ; preds = %bb.m
  %i.by = trunc nuw nsw i64 %2 to i32
  %i.bz = add nsw i32 %i.by, -1                   ; 2 uses
  %i.ca = lshr i32 %i.bz, 4                       ; 2 uses
  %i.cb = shl nuw nsw i32 %i.ca, 1
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr [8 x i8], ptr %i.e, i64 %i.cc
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !689 ; 9 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !691 ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.ce, %i.cg
  br i1 %.not.i.i.i12, label %pymalloc_alloc.exit.i.i, label %bb.o, !prof !314

bb.o:                                             ; preds = %bb.n
  %i.ch = load i32, ptr %i.ce, align 8, !tbaa !354
  %i.ci = add i32 %i.ch, 1
  store i32 %i.ci, ptr %i.ce, align 8, !tbaa !354
  %i.cj = getelementptr i8, ptr %i.ce, i64 8      ; 3 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !692 ; 4 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !383 ; 2 uses
  store ptr %i.cl, ptr %i.cj, align 8, !tbaa !692
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.p, label %bb.u, !prof !314

bb.p:                                             ; preds = %bb.o
  %i.cn = getelementptr i8, ptr %i.ce, i64 40     ; 2 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !693 ; 3 uses
  %i.cp = getelementptr i8, ptr %i.ce, i64 44
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !694
  %.not.i.i.i.i = icmp ugt i32 %i.co, %i.cq
  br i1 %.not.i.i.i.i, label %bb.r, label %bb.q, !prof !349

bb.q:                                             ; preds = %bb.p
  %i.cr = zext i32 %i.co to i64
  %i.cs = getelementptr i8, ptr %i.ce, i64 %i.cr  ; 2 uses
  store ptr %i.cs, ptr %i.cj, align 8, !tbaa !692
  %i.ct = and i32 %i.bz, -16
  %i.cu = add nuw nsw i32 %i.ct, 16
  %i.cv = add i32 %i.cu, %i.co
  store i32 %i.cv, ptr %i.cn, align 8, !tbaa !693
  store ptr null, ptr %i.cs, align 8, !tbaa !383
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.cw = getelementptr i8, ptr %i.ce, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !695 ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cg, i64 24
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !695
  %i.cz = getelementptr i8, ptr %i.cx, i64 16
  store ptr %i.cg, ptr %i.cz, align 8, !tbaa !691
  br label %bb.u

pymalloc_alloc.exit.i.i:                          ; preds = %bb.n
  %i.da = tail call fastcc ptr @allocate_from_new_pool(ptr noundef nonnull %i.e, i32 noundef %i.ca), !inline_history !1246 ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.da, null
  br i1 %.not.i.i13, label %PyMem_RawMalloc.exit.i.i, label %bb.u, !prof !345

bb.s:                                             ; preds = %bb.m
  %i.db = icmp slt i64 %2, 0
  br i1 %i.db, label %_PyObject_Malloc.exit, label %PyMem_RawMalloc.exit.i.i

PyMem_RawMalloc.exit.i.i:                         ; preds = %bb.s, %pymalloc_alloc.exit.i.i
  %i.dc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 952), align 8, !tbaa !642
  %i.dd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 944), align 8, !tbaa !649
  %i.de = tail call ptr %i.dc(ptr noundef %i.dd, i64 noundef %2) #52, !inline_history !1247 ; 2 uses
  %.not10.i.i = icmp eq ptr %i.de, null
  br i1 %.not10.i.i, label %_PyObject_Malloc.exit, label %bb.t

bb.t:                                             ; preds = %PyMem_RawMalloc.exit.i.i
  %i.df = getelementptr i8, ptr %i.e, i64 1088    ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !676
  %i.dh = add i64 %i.dg, 1
  store i64 %i.dh, ptr %i.df, align 8, !tbaa !676
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %pymalloc_alloc.exit.i.i, %bb.r, %bb.q, %bb.o
  %.0.i.ph.i = phi ptr [ %i.ck, %bb.q ], [ %i.ck, %bb.o ], [ %i.ck, %bb.r ], [ %i.de, %bb.t ], [ %i.da, %pymalloc_alloc.exit.i.i ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.ph.i, ptr nonnull align 1 %1, i64 %.0.i11, i1 false)
  %i.di = load ptr, ptr %i.b, align 8, !tbaa !688
  %i.dj = getelementptr i8, ptr %i.di, i64 10952
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !669 ; 4 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 1096
  %i.dm = getelementptr [8 x i8], ptr %i.dl, i64 %i.at
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !685 ; 2 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %bb.z, label %bb.v, !prof !457

bb.v:                                             ; preds = %bb.u
  %i.dp = getelementptr [8 x i8], ptr %i.dn, i64 %i.az
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !687 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %bb.z, label %arena_map_get.exit.i.i.i.i.i, !prof !457

arena_map_get.exit.i.i.i.i.i:                     ; preds = %bb.v
  %i.ds = getelementptr [8 x i8], ptr %i.dq, i64 %i.be ; 2 uses
  %i.dt = getelementptr i8, ptr %i.ds, i64 4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !697
  %i.dv = icmp slt i32 %i.bj, %i.du
  br i1 %i.dv, label %address_in_range.exit.thread2.i.i.i, label %address_in_range.exit.i.i.i

address_in_range.exit.i.i.i:                      ; preds = %arena_map_get.exit.i.i.i.i.i
  %i.dw = load i32, ptr %i.ds, align 4, !tbaa !698 ; 2 uses
  %i.dx = icmp sge i32 %i.bj, %i.dw
  %i.dy = icmp ne i32 %i.dw, 0
  %i.dz = and i1 %i.dx, %i.dy
  br i1 %i.dz, label %address_in_range.exit.thread2.i.i.i, label %bb.z, !prof !343

address_in_range.exit.thread2.i.i.i:              ; preds = %address_in_range.exit.i.i.i, %arena_map_get.exit.i.i.i.i.i
  %i.ea = getelementptr i8, ptr %i.as, i64 8      ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !692 ; 2 uses
  store ptr %i.eb, ptr %1, align 8, !tbaa !383
  store ptr %1, ptr %i.ea, align 8, !tbaa !692
  %i.ec = load i32, ptr %i.as, align 16384, !tbaa !354
  %i.ed = add i32 %i.ec, -1                       ; 2 uses
  store i32 %i.ed, ptr %i.as, align 16384, !tbaa !354
  %i.ee = icmp eq ptr %i.eb, null
  br i1 %i.ee, label %bb.w, label %bb.x, !prof !314

bb.w:                                             ; preds = %address_in_range.exit.thread2.i.i.i
  %i.ef = load i32, ptr %i.bp, align 4, !tbaa !699
  %i.eg = shl i32 %i.ef, 1
  %i.eh = zext i32 %i.eg to i64
  %i.ei = getelementptr [8 x i8], ptr %i.dk, i64 %i.eh
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !689 ; 2 uses
  %i.ek = getelementptr i8, ptr %i.ej, i64 24     ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !695 ; 2 uses
  %i.em = getelementptr i8, ptr %i.as, i64 16
  store ptr %i.ej, ptr %i.em, align 16, !tbaa !691
  %i.en = getelementptr i8, ptr %i.as, i64 24
  store ptr %i.el, ptr %i.en, align 8, !tbaa !695
  store ptr %i.as, ptr %i.ek, align 8, !tbaa !695
  %i.eo = getelementptr i8, ptr %i.el, i64 16
  store ptr %i.as, ptr %i.eo, align 8, !tbaa !691
  br label %_PyObject_Malloc.exit

bb.x:                                             ; preds = %address_in_range.exit.thread2.i.i.i
  %.not.i.i27.i = icmp eq i32 %i.ed, 0
  br i1 %.not.i.i27.i, label %bb.y, label %_PyObject_Malloc.exit, !prof !314

bb.y:                                             ; preds = %bb.x
  tail call fastcc void @insert_to_freepool(ptr noundef nonnull %i.dk, ptr noundef nonnull %i.as)
  br label %_PyObject_Malloc.exit

bb.z:                                             ; preds = %address_in_range.exit.i.i.i, %bb.v, %bb.u
  %i.ep = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 976), align 8, !tbaa !652
  %i.eq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 944), align 8, !tbaa !649
  tail call void %i.ep(ptr noundef %i.eq, ptr noundef nonnull %1) #52, !inline_history !1248
  %i.er = getelementptr i8, ptr %i.dk, i64 1088   ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !676
  %i.et = add i64 %i.es, -1
  store i64 %i.et, ptr %i.er, align 8, !tbaa !676
  br label %_PyObject_Malloc.exit

pymalloc_realloc.exit:                            ; preds = %address_in_range.exit.i, %bb.k, %bb.j
  %i.eu = icmp slt i64 %2, 0
  br i1 %i.eu, label %_PyObject_Malloc.exit, label %bb.aa

bb.aa:                                            ; preds = %pymalloc_realloc.exit
  %i.ev = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 968), align 8, !tbaa !651
  %i.ew = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 944), align 8, !tbaa !649
  %i.ex = tail call ptr %i.ev(ptr noundef %i.ew, ptr noundef nonnull %1, i64 noundef %2) #52, !inline_history !700
  br label %_PyObject_Malloc.exit

_PyObject_Malloc.exit:                            ; preds = %bb.aa, %pymalloc_realloc.exit, %bb.l, %bb.s, %PyMem_RawMalloc.exit.i.i, %bb.w, %bb.x, %bb.y, %bb.z, %bb.i, %PyMem_RawMalloc.exit.i, %bb.h, %pymalloc_alloc.exit.i, %bb.g, %bb.f, %bb.d
  %.1 = phi ptr [ %1, %bb.l ], [ null, %bb.h ], [ %i.ai, %pymalloc_alloc.exit.i ], [ %i.am, %bb.i ], [ null, %PyMem_RawMalloc.exit.i ], [ %i.s, %bb.g ], [ %i.s, %bb.d ], [ %i.s, %bb.f ], [ %.0.i.ph.i, %bb.z ], [ %.0.i.ph.i, %bb.y ], [ %.0.i.ph.i, %bb.x ], [ %.0.i.ph.i, %bb.w ], [ null, %PyMem_RawMalloc.exit.i.i ], [ null, %bb.s ], [ %i.ex, %bb.aa ], [ null, %pymalloc_realloc.exit ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyMem_DebugRawMalloc(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #2 !guid !1251 {
bb.a:
  %i.a = icmp ugt i64 %1, 9223372036854775783
  br i1 %i.a, label %_PyMem_DebugRawAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 24
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !701
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !702
  %i.g = tail call ptr %i.f(ptr noundef %i.d, i64 noundef %i.b) #52, !inline_history !42 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_PyMem_DebugRawAlloc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.g, i64 16       ; 3 uses
  %2 = tail call i64 @llvm.bswap.i64(i64 %1)
  store i64 %2, ptr %i.g, align 1, !tbaa !354
  %i.j = load i8, ptr %0, align 8, !tbaa !703
  %i.k = getelementptr i8, ptr %i.g, i64 8
  store i8 %i.j, ptr %i.k, align 1, !tbaa !354
  %i.l = getelementptr i8, ptr %i.g, i64 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.l, i8 -3, i64 7, i1 false)
  %i.m = icmp eq i64 %1, 0
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.i, i8 -51, i64 %1, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = getelementptr i8, ptr %i.i, i64 %1
  store i64 -144680345676153347, ptr %i.n, align 1
  br label %_PyMem_DebugRawAlloc.exit

_PyMem_DebugRawAlloc.exit:                        ; preds = %bb.a, %bb.b, %bb.e
  %.027.i = phi ptr [ %i.i, %bb.e ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.027.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyMem_DebugRawCalloc(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) #2 !guid !1252 {
bb.a:
  %i.a = mul i64 %2, %1                           ; 4 uses
  %i.b = icmp ugt i64 %i.a, 9223372036854775783
  br i1 %i.b, label %_PyMem_DebugRawAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nuw nsw i64 %i.a, 24
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !701
  %i.f = getelementptr i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !704
  %i.h = tail call ptr %i.g(ptr noundef %i.e, i64 noundef 1, i64 noundef %i.c) #52, !inline_history !42 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_PyMem_DebugRawAlloc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.h, i64 16       ; 2 uses
  %3 = tail call i64 @llvm.bswap.i64(i64 %i.a)
  store i64 %3, ptr %i.h, align 1, !tbaa !354
  %i.k = load i8, ptr %0, align 8, !tbaa !703
  %i.l = getelementptr i8, ptr %i.h, i64 8
  store i8 %i.k, ptr %i.l, align 1, !tbaa !354
  %i.m = getelementptr i8, ptr %i.h, i64 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.m, i8 -3, i64 7, i1 false)
  %i.n = getelementptr i8, ptr %i.j, i64 %i.a
  store i64 -144680345676153347, ptr %i.n, align 1
  br label %_PyMem_DebugRawAlloc.exit

_PyMem_DebugRawAlloc.exit:                        ; preds = %bb.a, %bb.b, %bb.c
  %.027.i = phi ptr [ %i.j, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.027.i
}

; Function Attrs: nounwind uwtable
define hidden void @_PyMem_DebugRawFree(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #2 !guid !1253 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 -16        ; 3 uses
  %i.c = load i8, ptr %0, align 8, !tbaa !703
  tail call fastcc void @_PyMem_DebugCheckAddress(ptr noundef nonnull @__func__._PyMem_DebugRawFree, i8 noundef signext %i.c, ptr noundef %1)
  %i.d = load i8, ptr %i.b, align 1, !tbaa !354
  %i.e = zext i8 %i.d to i64
  %.07.i = getelementptr i8, ptr %1, i64 -15
  %i.f = load i8, ptr %.07.i, align 1, !tbaa !354
  %i.g = zext i8 %i.f to i64
  %.07.1.i = getelementptr i8, ptr %1, i64 -14
  %i.h = shl nuw nsw i64 %i.e, 16
  %i.i = shl nuw nsw i64 %i.g, 8
  %i.j = or disjoint i64 %i.i, %i.h
  %i.k = load i8, ptr %.07.1.i, align 1, !tbaa !354
  %i.l = zext i8 %i.k to i64
  %i.m = or disjoint i64 %i.j, %i.l
  %.07.2.i = getelementptr i8, ptr %1, i64 -13
  %i.n = load i32, ptr %.07.2.i, align 1
  %i.o = tail call i32 @llvm.bswap.i32(i32 %i.n)
  %i.p = zext i32 %i.o to i64
  %.07.6.i = getelementptr i8, ptr %1, i64 -9
  %i.q = shl nuw i64 %i.m, 40
  %i.r = shl nuw nsw i64 %i.p, 8
  %i.s = or disjoint i64 %i.q, %i.r
  %i.t = load i8, ptr %.07.6.i, align 1, !tbaa !354
  %i.u = zext i8 %i.t to i64
  %i.v = or disjoint i64 %i.s, %i.u
  %i.w = add i64 %i.v, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.b, i8 -35, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1, i8 -35, i64 %i.w, i1 false)
  %i.x = getelementptr i8, ptr %0, i64 8
  %i.y = getelementptr i8, ptr %0, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !705
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !701
  tail call void %i.z(ptr noundef %i.aa, ptr noundef nonnull %i.b) #52
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_PyMem_DebugCheckAddress(ptr noundef %0, i8 noundef signext %1, ptr noundef nonnull %2) unnamed_addr #2 !guid !1254 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 -8
  %i.b = load i8, ptr %i.a, align 1, !tbaa !354   ; 2 uses
  %.not = icmp eq i8 %i.b, %1
  br i1 %.not, label %.preheader.preheader, label %bb.b

.preheader.preheader:                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %2, i64 -7
  %i.d = load i8, ptr %i.c, align 1, !tbaa !354
  %.not25 = icmp eq i8 %i.d, -3
  br i1 %.not25, label %.preheader.1, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = sext i8 %1 to i32
  %i.f = sext i8 %i.b to i32
  tail call fastcc void @_PyObject_DebugDumpAddress(ptr noundef %2)
  tail call void (ptr, ptr, ...) @_Py_FatalErrorFormat(ptr noundef %0, ptr noundef nonnull @.str.164, i32 noundef %i.f, i32 noundef %i.e) #59
  unreachable

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.g = getelementptr i8, ptr %2, i64 -6
  %i.h = load i8, ptr %i.g, align 1, !tbaa !354
  %.not25.1 = icmp eq i8 %i.h, -3
  br i1 %.not25.1, label %.preheader.2, label %bb.d

.preheader.2:                                     ; preds = %.preheader.1
  %i.i = getelementptr i8, ptr %2, i64 -5
  %i.j = load i8, ptr %i.i, align 1, !tbaa !354
  %.not25.2 = icmp eq i8 %i.j, -3
  br i1 %.not25.2, label %.preheader.3, label %bb.d

.preheader.3:                                     ; preds = %.preheader.2
  %i.k = getelementptr i8, ptr %2, i64 -4
  %i.l = load i8, ptr %i.k, align 1, !tbaa !354
  %.not25.3 = icmp eq i8 %i.l, -3
  br i1 %.not25.3, label %.preheader.4, label %bb.d

.preheader.4:                                     ; preds = %.preheader.3
  %i.m = getelementptr i8, ptr %2, i64 -3
  %i.n = load i8, ptr %i.m, align 1, !tbaa !354
  %.not25.4 = icmp eq i8 %i.n, -3
  br i1 %.not25.4, label %.preheader.5, label %bb.d

.preheader.5:                                     ; preds = %.preheader.4
  %i.o = getelementptr i8, ptr %2, i64 -2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !354
  %.not25.5 = icmp eq i8 %i.p, -3
  br i1 %.not25.5, label %.preheader.6, label %bb.d

.preheader.6:                                     ; preds = %.preheader.5
  %i.q = getelementptr i8, ptr %2, i64 -1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !354
  %.not25.6 = icmp eq i8 %i.r, -3
  br i1 %.not25.6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader.6
  %i.s = getelementptr i8, ptr %2, i64 -16
  %i.t = load i8, ptr %i.s, align 1, !tbaa !354
  %i.u = zext i8 %i.t to i64
  %.07.i = getelementptr i8, ptr %2, i64 -15
  %i.v = load i8, ptr %.07.i, align 1, !tbaa !354
  %i.w = zext i8 %i.v to i64
  %.07.1.i = getelementptr i8, ptr %2, i64 -14
  %i.x = shl nuw nsw i64 %i.u, 16
  %i.y = shl nuw nsw i64 %i.w, 8
  %i.z = or disjoint i64 %i.y, %i.x
  %i.aa = load i8, ptr %.07.1.i, align 1, !tbaa !354
  %i.ab = zext i8 %i.aa to i64
  %i.ac = or disjoint i64 %i.z, %i.ab
  %.07.2.i = getelementptr i8, ptr %2, i64 -13
  %i.ad = load i32, ptr %.07.2.i, align 1
  %i.ae = tail call i32 @llvm.bswap.i32(i32 %i.ad)
  %i.af = zext i32 %i.ae to i64
  %.07.6.i = getelementptr i8, ptr %2, i64 -9
  %i.ag = shl nuw i64 %i.ac, 40
  %i.ah = shl nuw nsw i64 %i.af, 8
  %i.ai = load i8, ptr %.07.6.i, align 1, !tbaa !354
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr i8, ptr %2, i64 %i.ag
  %i.al = getelementptr i8, ptr %i.ak, i64 %i.ah
  %i.am = getelementptr i8, ptr %i.al, i64 %i.aj  ; 8 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !354
  %.not24 = icmp eq i8 %i.an, -3
  br i1 %.not24, label %bb.e, label %bb.m

bb.d:                                             ; preds = %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  tail call fastcc void @_PyObject_DebugDumpAddress(ptr noundef %2)
  tail call void @_Py_FatalErrorFunc(ptr noundef %0, ptr noundef nonnull @.str.165) #59
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ao = getelementptr i8, ptr %i.am, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !354
  %.not24.1 = icmp eq i8 %i.ap, -3
  br i1 %.not24.1, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr i8, ptr %i.am, i64 2
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !354
  %.not24.2 = icmp eq i8 %i.ar, -3
  br i1 %.not24.2, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr i8, ptr %i.am, i64 3
  %i.at = load i8, ptr %i.as, align 1, !tbaa !354
  %.not24.3 = icmp eq i8 %i.at, -3
  br i1 %.not24.3, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr i8, ptr %i.am, i64 4
  %i.av = load i8, ptr %i.au, align 1, !tbaa !354
  %.not24.4 = icmp eq i8 %i.av, -3
  br i1 %.not24.4, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr i8, ptr %i.am, i64 5
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !354
  %.not24.5 = icmp eq i8 %i.ax, -3
  br i1 %.not24.5, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr i8, ptr %i.am, i64 6
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !354
  %.not24.6 = icmp eq i8 %i.az, -3
  br i1 %.not24.6, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr i8, ptr %i.am, i64 7
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !354
  %.not24.7 = icmp eq i8 %i.bb, -3
  br i1 %.not24.7, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  ret void

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.c
  tail call fastcc void @_PyObject_DebugDumpAddress(ptr noundef %2)
  tail call void @_Py_FatalErrorFunc(ptr noundef %0, ptr noundef nonnull @.str.166) #59
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyMem_DebugRawRealloc(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) #2 !guid !1255 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 8 uses
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %2, 9223372036854775783
  br i1 %i.c, label %_PyMem_DebugRawAlloc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw nsw i64 %2, 24
  %i.e = getelementptr i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !701
  %i.g = getelementptr i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !702
  %i.i = tail call ptr %i.h(ptr noundef %i.f, i64 noundef %i.d) #52, !inline_history !42 ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_PyMem_DebugRawAlloc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.i, i64 16       ; 3 uses
  %3 = tail call i64 @llvm.bswap.i64(i64 %2)
  store i64 %3, ptr %i.i, align 1, !tbaa !354
  %i.l = load i8, ptr %0, align 8, !tbaa !703
  %i.m = getelementptr i8, ptr %i.i, i64 8
  store i8 %i.l, ptr %i.m, align 1, !tbaa !354
  %i.n = getelementptr i8, ptr %i.i, i64 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.n, i8 -3, i64 7, i1 false)
  %i.o = icmp eq i64 %2, 0
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.k, i8 -51, i64 %2, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = getelementptr i8, ptr %i.k, i64 %2
  store i64 -144680345676153347, ptr %i.p, align 1
  br label %_PyMem_DebugRawAlloc.exit

bb.g:                                             ; preds = %bb.a
  %i.q = load i8, ptr %0, align 8, !tbaa !703
  tail call fastcc void @_PyMem_DebugCheckAddress(ptr noundef nonnull @__func__._PyMem_DebugRawRealloc, i8 noundef signext %i.q, ptr noundef %1)
  %i.r = getelementptr i8, ptr %1, i64 -16        ; 5 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !354
  %i.t = zext i8 %i.s to i64
  %.07.i = getelementptr i8, ptr %1, i64 -15
  %i.u = load i8, ptr %.07.i, align 1, !tbaa !354
  %i.v = zext i8 %i.u to i64
  %.07.1.i = getelementptr i8, ptr %1, i64 -14
  %i.w = shl nuw nsw i64 %i.t, 16
  %i.x = shl nuw nsw i64 %i.v, 8
  %i.y = or disjoint i64 %i.x, %i.w
  %i.z = load i8, ptr %.07.1.i, align 1, !tbaa !354
  %i.aa = zext i8 %i.z to i64
  %i.ab = or disjoint i64 %i.y, %i.aa
  %.07.2.i = getelementptr i8, ptr %1, i64 -13
  %i.ac = load i8, ptr %.07.2.i, align 1, !tbaa !354
  %i.ad = zext i8 %i.ac to i64
  %.07.3.i = getelementptr i8, ptr %1, i64 -12
  %i.ae = load i8, ptr %.07.3.i, align 1, !tbaa !354
  %i.af = zext i8 %i.ae to i64
  %.07.4.i = getelementptr i8, ptr %1, i64 -11
  %i.ag = load i8, ptr %.07.4.i, align 1, !tbaa !354
  %i.ah = zext i8 %i.ag to i64
  %.07.5.i = getelementptr i8, ptr %1, i64 -10
  %i.ai = shl nuw nsw i64 %i.ab, 32
  %i.aj = shl nuw nsw i64 %i.ad, 24
  %i.ak = shl nuw nsw i64 %i.af, 16
  %i.al = or disjoint i64 %i.aj, %i.ak
  %i.am = or disjoint i64 %i.ai, %i.al
  %i.an = shl nuw nsw i64 %i.ah, 8
  %i.ao = load i8, ptr %.07.5.i, align 1, !tbaa !354
  %i.ap = zext i8 %i.ao to i64
  %i.aq = or disjoint i64 %i.an, %i.ap
  %i.ar = or disjoint i64 %i.aq, %i.am
  %.07.6.i = getelementptr i8, ptr %1, i64 -9
  %i.as = shl nuw i64 %i.ar, 8
  %i.at = load i8, ptr %.07.6.i, align 1, !tbaa !354
  %i.au = zext i8 %i.at to i64
  %i.av = or disjoint i64 %i.as, %i.au            ; 10 uses
  %i.aw = icmp ugt i64 %2, 9223372036854775783
  br i1 %i.aw, label %_PyMem_DebugRawAlloc.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = add nuw nsw i64 %2, 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ay = icmp ult i64 %i.av, 129                 ; 2 uses
  br i1 %i.ay, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 1 %1, i64 %i.av, i1 false)
  %i.az = add nuw nsw i64 %i.av, 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.r, i8 -35, i64 %i.az, i1 false)
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ba = getelementptr i8, ptr %1, i64 %i.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 1 dereferenceable(64) %1, i64 64, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(80) %i.r, i8 -35, i64 80, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bc = getelementptr i8, ptr %i.ba, i64 -64    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bb, ptr noundef nonnull align 1 dereferenceable(64) %i.bc, i64 64, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %i.bc, i8 -35, i64 72, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bd = getelementptr i8, ptr %0, i64 8
  %i.be = getelementptr i8, ptr %0, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !1256
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !701
  %i.bh = tail call ptr %i.bf(ptr noundef %i.bg, ptr noundef nonnull %i.r, i64 noundef %i.ax) #52 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null                 ; 3 uses
  %. = select i1 %i.bi, i64 %i.av, i64 %2         ; 6 uses
  %.73 = select i1 %i.bi, ptr %i.r, ptr %i.bh     ; 4 uses
  %i.bj = getelementptr i8, ptr %.73, i64 16      ; 7 uses
  %4 = tail call i64 @llvm.bswap.i64(i64 %.)
  store i64 %4, ptr %.73, align 1, !tbaa !354
  %i.bk = load i8, ptr %0, align 8, !tbaa !703
  %i.bl = getelementptr i8, ptr %.73, i64 8
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !354
  %i.bm = getelementptr i8, ptr %.73, i64 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.bm, i8 -3, i64 7, i1 false)
  %i.bn = getelementptr i8, ptr %i.bj, i64 %.
  store i64 -144680345676153347, ptr %i.bn, align 1
  br i1 %i.ay, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bo = tail call i64 @llvm.umin.i64(i64 %., i64 %i.av)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr nonnull align 16 %i.a, i64 %i.bo, i1 false)
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.bp = add i64 %i.av, -64                      ; 3 uses
  %i.bq = tail call i64 @llvm.umin.i64(i64 %., i64 64)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr nonnull align 16 %i.a, i64 %i.bq, i1 false)
  %i.br = icmp ugt i64 %., %i.bp
  br i1 %i.br, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bs = getelementptr i8, ptr %i.bj, i64 %i.bp
  %i.bt = sub nuw i64 %., %i.bp
  %i.bu = tail call i64 @llvm.umin.i64(i64 %i.bt, i64 64)
  %.64..64..64..64..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bs, ptr nonnull align 16 %.64..64..64..64..sroa_idx, i64 %i.bu, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.l
  br i1 %i.bi, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bv = icmp ugt i64 %2, %i.av
  br i1 %i.bv, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bw = getelementptr i8, ptr %i.bj, i64 %i.av
  %i.bx = sub nuw nsw i64 %2, %i.av
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bw, i8 -51, i64 %i.bx, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.o
  %.065 = phi ptr [ null, %bb.o ], [ %i.bj, %bb.q ], [ %i.bj, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_PyMem_DebugRawAlloc.exit

_PyMem_DebugRawAlloc.exit:                        ; preds = %bb.f, %bb.c, %bb.b, %bb.r, %bb.g
  %.2 = phi ptr [ null, %bb.g ], [ %.065, %bb.r ], [ %i.k, %bb.f ], [ null, %bb.b ], [ null, %bb.c ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyMem_DebugMalloc(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #2 !guid !1258 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !666
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_PyMem_DebugCheckGIL.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__._PyMem_DebugMalloc, ptr noundef nonnull @.str.163) #59
  unreachable

_PyMem_DebugCheckGIL.exit:                        ; preds = %bb.a
  %i.d = icmp ugt i64 %1, 9223372036854775783
  br i1 %i.d, label %_PyMem_DebugRawMalloc.exit, label %bb.c

bb.c:                                             ; preds = %_PyMem_DebugCheckGIL.exit
  %i.e = add nuw nsw i64 %1, 24
  %i.f = getelementptr i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !701
  %i.h = getelementptr i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !702
  %i.j = tail call ptr %i.i(ptr noundef %i.g, i64 noundef %i.e) #52, !inline_history !1257 ; 5 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_PyMem_DebugRawMalloc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.j, i64 16       ; 3 uses
  %2 = tail call i64 @llvm.bswap.i64(i64 %1)
  store i64 %2, ptr %i.j, align 1, !tbaa !354
  %i.m = load i8, ptr %0, align 8, !tbaa !703
  %i.n = getelementptr i8, ptr %i.j, i64 8
  store i8 %i.m, ptr %i.n, align 1, !tbaa !354
  %i.o = getelementptr i8, ptr %i.j, i64 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.o, i8 -3, i64 7, i1 false)
  %i.p = icmp eq i64 %1, 0
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.l, i8 -51, i64 %1, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = getelementptr i8, ptr %i.l, i64 %1
  store i64 -144680345676153347, ptr %i.q, align 1
  br label %_PyMem_DebugRawMalloc.exit

_PyMem_DebugRawMalloc.exit:                       ; preds = %_PyMem_DebugCheckGIL.exit, %bb.c, %bb.f
  %.027.i.i = phi ptr [ %i.l, %bb.f ], [ null, %_PyMem_DebugCheckGIL.exit ], [ null, %bb.c ]
  ret ptr %.027.i.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyMem_DebugCalloc(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) #2 !guid !1260 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !666
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_PyMem_DebugCheckGIL.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__._PyMem_DebugCalloc, ptr noundef nonnull @.str.163) #59
  unreachable

_PyMem_DebugCheckGIL.exit:                        ; preds = %bb.a
  %i.d = mul i64 %2, %1                           ; 4 uses
  %i.e = icmp ugt i64 %i.d, 9223372036854775783
  br i1 %i.e, label %_PyMem_DebugRawCalloc.exit, label %bb.c

bb.c:                                             ; preds = %_PyMem_DebugCheckGIL.exit
  %i.f = add nuw nsw i64 %i.d, 24
  %i.g = getelementptr i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !701
  %i.i = getelementptr i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !704
  %i.k = tail call ptr %i.j(ptr noundef %i.h, i64 noundef 1, i64 noundef %i.f) #52, !inline_history !1259 ; 5 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_PyMem_DebugRawCalloc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.k, i64 16       ; 2 uses
  %3 = tail call i64 @llvm.bswap.i64(i64 %i.d)
  store i64 %3, ptr %i.k, align 1, !tbaa !354
  %i.n = load i8, ptr %0, align 8, !tbaa !703
  %i.o = getelementptr i8, ptr %i.k, i64 8
  store i8 %i.n, ptr %i.o, align 1, !tbaa !354
  %i.p = getelementptr i8, ptr %i.k, i64 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.p, i8 -3, i64 7, i1 false)
  %i.q = getelementptr i8, ptr %i.m, i64 %i.d
  store i64 -144680345676153347, ptr %i.q, align 1
  br label %_PyMem_DebugRawCalloc.exit

_PyMem_DebugRawCalloc.exit:                       ; preds = %_PyMem_DebugCheckGIL.exit, %bb.c, %bb.d
  %.027.i.i = phi ptr [ %i.m, %bb.d ], [ null, %_PyMem_DebugCheckGIL.exit ], [ null, %bb.c ]
  ret ptr %.027.i.i
}

; Function Attrs: nounwind uwtable
define hidden void @_PyMem_DebugFree(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #2 !guid !1261 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !666
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_PyMem_DebugCheckGIL.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__._PyMem_DebugFree, ptr noundef nonnull @.str.163) #59
  unreachable

_PyMem_DebugCheckGIL.exit:                        ; preds = %bb.a
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %_PyMem_DebugRawFree.exit, label %bb.c

bb.c:                                             ; preds = %_PyMem_DebugCheckGIL.exit
  %i.e = getelementptr i8, ptr %1, i64 -16        ; 3 uses
  %i.f = load i8, ptr %0, align 8, !tbaa !703
  tail call fastcc void @_PyMem_DebugCheckAddress(ptr noundef nonnull @__func__._PyMem_DebugRawFree, i8 noundef signext %i.f, ptr noundef %1)
  %i.g = load i8, ptr %i.e, align 1, !tbaa !354
  %i.h = zext i8 %i.g to i64
  %.07.i.i = getelementptr i8, ptr %1, i64 -15
  %i.i = load i8, ptr %.07.i.i, align 1, !tbaa !354
  %i.j = zext i8 %i.i to i64
  %.07.1.i.i = getelementptr i8, ptr %1, i64 -14
  %i.k = shl nuw nsw i64 %i.h, 16
  %i.l = shl nuw nsw i64 %i.j, 8
  %i.m = or disjoint i64 %i.l, %i.k
  %i.n = load i8, ptr %.07.1.i.i, align 1, !tbaa !354
  %i.o = zext i8 %i.n to i64
  %i.p = or disjoint i64 %i.m, %i.o
  %.07.2.i.i = getelementptr i8, ptr %1, i64 -13
  %i.q = load i8, ptr %.07.2.i.i, align 1, !tbaa !354
  %i.r = zext i8 %i.q to i64
  %.07.3.i.i = getelementptr i8, ptr %1, i64 -12
  %i.s = load i8, ptr %.07.3.i.i, align 1, !tbaa !354
  %i.t = zext i8 %i.s to i64
  %.07.4.i.i = getelementptr i8, ptr %1, i64 -11
  %i.u = load i8, ptr %.07.4.i.i, align 1, !tbaa !354
  %i.v = zext i8 %i.u to i64
  %.07.5.i.i = getelementptr i8, ptr %1, i64 -10
  %i.w = shl nuw nsw i64 %i.p, 32
  %i.x = shl nuw nsw i64 %i.r, 24
  %i.y = shl nuw nsw i64 %i.t, 16
  %i.z = or disjoint i64 %i.y, %i.x
  %i.aa = or disjoint i64 %i.z, %i.w
  %i.ab = load i8, ptr %.07.5.i.i, align 1, !tbaa !354
  %i.ac = zext i8 %i.ab to i64
  %i.ad = or disjoint i64 %i.aa, %i.ac
  %.07.6.i.i = getelementptr i8, ptr %1, i64 -9
  %i.ae = shl nuw nsw i64 %i.v, 16
  %i.af = shl nuw i64 %i.ad, 8
  %i.ag = or disjoint i64 %i.ae, %i.af
  %i.ah = load i8, ptr %.07.6.i.i, align 1, !tbaa !354
  %i.ai = zext i8 %i.ah to i64
  %i.aj = or disjoint i64 %i.ag, %i.ai
  %i.ak = add i64 %i.aj, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.e, i8 -35, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1, i8 -35, i64 %i.ak, i1 false)
  %i.al = getelementptr i8, ptr %0, i64 8
  %i.am = getelementptr i8, ptr %0, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !705
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !701
  tail call void %i.an(ptr noundef %i.ao, ptr noundef nonnull %i.e) #52, !inline_history !1262
  br label %_PyMem_DebugRawFree.exit

_PyMem_DebugRawFree.exit:                         ; preds = %_PyMem_DebugCheckGIL.exit, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyMem_DebugRealloc(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) #2 !guid !1263 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !666
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_PyMem_DebugCheckGIL.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__._PyMem_DebugRealloc, ptr noundef nonnull @.str.163) #59
  unreachable

_PyMem_DebugCheckGIL.exit:                        ; preds = %bb.a
  %i.d = tail call ptr @_PyMem_DebugRawRealloc(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define hidden void @_PyDebugAllocatorStats(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #2 !guid !1264 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  %i.b = alloca [128 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #52
  %i.c = call i32 (ptr, i64, ptr, ...) @PyOS_snprintf(ptr noundef nonnull %i.a, i64 noundef 128, ptr noundef nonnull @.str.45, i32 noundef %2, ptr noundef %1, i64 noundef %3) #52 ; 0 uses
  %i.d = call i32 (ptr, i64, ptr, ...) @PyOS_snprintf(ptr noundef nonnull %i.b, i64 noundef 128, ptr noundef nonnull @.str.46, ptr noundef nonnull %i.a) #52 ; 0 uses
  %i.e = sext i32 %2 to i64
  %i.f = mul i64 %3, %i.e
  %i.g = call fastcc i64 @printone(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef %i.f) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #52
  ret void
}

declare i32 @PyOS_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #45

; Function Attrs: nofree nounwind uwtable
define internal fastcc noundef i64 @printone(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef returned %2) unnamed_addr #29 !guid !1267 {
bb.a:
  %i.a = alloca [100 x i8], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #52
  %i.b = tail call i32 @fputs(ptr noundef %1, ptr noundef %0) ; 0 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #58
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = icmp slt i32 %i.d, 35
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.02934 = phi i32 [ %i.g, %.lr.ph ], [ %i.d, %bb.a ]
  %i.f = tail call i32 @fputc(i32 noundef 32, ptr noundef %0) ; 0 uses
  %i.g = add i32 %.02934, 1                       ; 2 uses
  %exitcond.not = icmp eq i32 %i.g, 35
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1265

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.h = tail call i32 @fputc(i32 noundef 61, ptr noundef %0) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  store i8 0, ptr %i.i, align 2, !tbaa !354
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  store i8 10, ptr %i.j, align 1, !tbaa !354
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %._crit_edge
  %.031 = phi i64 [ %2, %._crit_edge ], [ %i.k, %bb.d ] ; 3 uses
  %.130 = phi i32 [ 20, %._crit_edge ], [ %.2, %bb.d ] ; 4 uses
  %.0 = phi i32 [ 3, %._crit_edge ], [ %.1, %bb.d ]
  %i.k = udiv i64 %.031, 10                       ; 2 uses
  %.neg = mul i64 %i.k, 246
  %i.l = add i64 %.neg, %.031
  %i.m = trunc i64 %i.l to i8
  %i.n = add i8 %i.m, 48
  %i.o = add nsw i32 %.130, -1                    ; 2 uses
  %i.p = zext nneg i32 %.130 to i64
  %i.q = getelementptr i8, ptr %i.a, i64 %i.p
  store i8 %i.n, ptr %i.q, align 1, !tbaa !354
  %i.r = add i32 %.0, -1                          ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  %i.t = icmp ugt i64 %.031, 9                    ; 2 uses
  %or.cond = select i1 %i.s, i1 %i.t, i1 false
  %i.u = icmp ne i32 %.130, 0
  %or.cond3 = and i1 %i.u, %or.cond
  br i1 %or.cond3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = add nsw i32 %.130, -2
  %i.w = zext nneg i32 %i.o to i64
  %i.x = getelementptr i8, ptr %i.a, i64 %i.w
  store i8 44, ptr %i.x, align 1, !tbaa !354
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.2 = phi i32 [ %i.v, %bb.c ], [ %i.o, %bb.b ]  ; 3 uses
  %.1 = phi i32 [ 3, %bb.c ], [ %i.r, %bb.b ]
  %i.y = icmp sgt i32 %.2, -1                     ; 2 uses
  %i.z = and i1 %i.t, %i.y
  br i1 %i.z, label %bb.b, label %.preheader, !llvm.loop !1266

.preheader:                                       ; preds = %bb.d
  br i1 %i.y, label %.lr.ph36.preheader, label %._crit_edge37

.lr.ph36.preheader:                               ; preds = %.preheader
  %i.aa = add nuw i32 %.2, 1
  %i.ab = zext i32 %i.aa to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, i8 32, i64 %i.ab, i1 false), !tbaa !354
  br label %._crit_edge37

._crit_edge37:                                    ; preds = %.lr.ph36.preheader, %.preheader
  %i.ac = call i32 @fputs(ptr noundef nonnull %i.a, ptr noundef %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #52
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @_PyMem_init_obmalloc(ptr noundef %0) local_unnamed_addr #2 !guid !1268 {
bb.a:
end_hunk_0
begin_hunk_1_@_PyObject_DebugDumpAddress:bb.a
  %fwrite64.3 = tail call i64 @fwrite(ptr nonnull @.str.174, i64 9, i64 1, ptr %i.ex) #61 ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ey = load ptr, ptr @stderr, align 8, !tbaa !443
  %i.ez = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.ey) ; 0 uses
  %i.fa = getelementptr i8, ptr %i.da, i64 4
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !354 ; 2 uses
  %i.fc = load ptr, ptr @stderr, align 8, !tbaa !443
  %i.fd = zext i8 %i.fb to i32
  %i.fe = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fc, ptr noundef nonnull @.str.177, i32 noundef 4, i32 noundef %i.fd) #65 ; 0 uses
  %.not63.4 = icmp eq i8 %i.fb, -3
  br i1 %.not63.4, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ff = load ptr, ptr @stderr, align 8, !tbaa !443
  %fwrite64.4 = tail call i64 @fwrite(ptr nonnull @.str.174, i64 9, i64 1, ptr %i.ff) #61 ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.fg = load ptr, ptr @stderr, align 8, !tbaa !443
  %i.fh = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.fg) ; 0 uses
  %i.fi = getelementptr i8, ptr %i.da, i64 5
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !354 ; 2 uses
  %i.fk = load ptr, ptr @stderr, align 8, !tbaa !443
  %i.fl = zext i8 %i.fj to i32
  %i.fm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fk, ptr noundef nonnull @.str.177, i32 noundef 5, i32 noundef %i.fl) #65 ; 0 uses
  %.not63.5 = icmp eq i8 %i.fj, -3
  br i1 %.not63.5, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fn = load ptr, ptr @stderr, align 8, !tbaa !443
  %fwrite64.5 = tail call i64 @fwrite(ptr nonnull @.str.174, i64 9, i64 1, ptr %i.fn) #61 ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.fo = load ptr, ptr @stderr, align 8, !tbaa !443
  %i.fp = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.fo) ; 0 uses
  %i.fq = getelementptr i8, ptr %i.da, i64 6
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !354 ; 2 uses
  %i.fs = load ptr, ptr @stderr, align 8, !tbaa !443
  %i.ft = zext i8 %i.fr to i32
  %i.fu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fs, ptr noundef nonnull @.str.177, i32 noundef 6, i32 noundef %i.ft) #65 ; 0 uses
  %.not63.6 = icmp eq i8 %i.fr, -3
  br i1 %.not63.6, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fv = load ptr, ptr @stderr, align 8, !tbaa !443
  %fwrite64.6 = tail call i64 @fwrite(ptr nonnull @.str.174, i64 9, i64 1, ptr %i.fv) #61 ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.fw = load ptr, ptr @stderr, align 8, !tbaa !443
  %i.fx = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.fw) ; 0 uses
  %i.fy = getelementptr i8, ptr %i.da, i64 7
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !354 ; 2 uses
  %i.ga = load ptr, ptr @stderr, align 8, !tbaa !443
  %i.gb = zext i8 %i.fz to i32
  %i.gc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ga, ptr noundef nonnull @.str.177, i32 noundef 7, i32 noundef %i.gb) #65 ; 0 uses
  %.not63.7 = icmp eq i8 %i.fz, -3
  br i1 %.not63.7, label %.loopexit71.loopexit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gd = load ptr, ptr @stderr, align 8, !tbaa !443
  %fwrite64.7 = tail call i64 @fwrite(ptr nonnull @.str.174, i64 9, i64 1, ptr %i.gd) #61 ; 0 uses
  br label %.loopexit71.loopexit

.loopexit71.loopexit:                             ; preds = %bb.at, %bb.as
  %i.ge = load ptr, ptr @stderr, align 8, !tbaa !443
  %i.gf = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.ge) ; 0 uses
  br label %.loopexit71

.loopexit71:                                      ; preds = %.loopexit71.loopexit, %.critedge70
  %.not66 = icmp eq i64 %i.aa, 0
  br i1 %.not66, label %bb.ay, label %bb.au

bb.au:                                            ; preds = %.loopexit71
  %i.gg = load ptr, ptr @stderr, align 8, !tbaa !443
  %fwrite67 = tail call i64 @fwrite(ptr nonnull @.str.178, i64 14, i64 1, ptr %i.gg) #61 ; 0 uses
  %i.gh = icmp ult ptr %0, %i.da
  br i1 %i.gh, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.au, %.lr.ph
  %.477 = phi i32 [ %i.gm, %.lr.ph ], [ 0, %bb.au ] ; 2 uses
  %.05276 = phi ptr [ %i.gn, %.lr.ph ], [ %0, %bb.au ] ; 2 uses
  %i.gi = load ptr, ptr @stderr, align 8, !tbaa !443
  %i.gj = load i8, ptr %.05276, align 1, !tbaa !354
  %i.gk = zext i8 %i.gj to i32
  %i.gl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gi, ptr noundef nonnull @.str.179, i32 noundef %i.gk) #65 ; 0 uses
  %i.gm = add nuw nsw i32 %.477, 1
  %i.gn = getelementptr i8, ptr %.05276, i64 1    ; 4 uses
  %i.go = icmp ult ptr %i.gn, %i.da               ; 2 uses
  %i.gp = icmp samesign ult i32 %.477, 7
  %i.gq = select i1 %i.go, i1 %i.gp, i1 false
  br i1 %i.gq, label %.lr.ph, label %._crit_edge, !llvm.loop !1332

._crit_edge:                                      ; preds = %.lr.ph
  br i1 %i.go, label %bb.av, label %.loopexit

bb.av:                                            ; preds = %._crit_edge
  %i.gr = ptrtoint ptr %i.da to i64
  %i.gs = ptrtoint ptr %i.gn to i64
  %i.gt = sub i64 %i.gr, %i.gs
  %i.gu = icmp sgt i64 %i.gt, 8
  br i1 %i.gu, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.gv = load ptr, ptr @stderr, align 8, !tbaa !443
  %fwrite68 = tail call i64 @fwrite(ptr nonnull @.str.180, i64 4, i64 1, ptr %i.gv) #61 ; 0 uses
  %i.gw = getelementptr i8, ptr %i.da, i64 -8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.153 = phi ptr [ %i.gw, %bb.aw ], [ %i.gn, %bb.av ] ; 2 uses
  %i.gx = icmp ult ptr %.153, %i.da
  br i1 %i.gx, label %.lr.ph81, label %.loopexit

.lr.ph81:                                         ; preds = %bb.ax, %.lr.ph81
  %.25479 = phi ptr [ %i.hc, %.lr.ph81 ], [ %.153, %bb.ax ] ; 2 uses
  %i.gy = load ptr, ptr @stderr, align 8, !tbaa !443
  %i.gz = load i8, ptr %.25479, align 1, !tbaa !354
  %i.ha = zext i8 %i.gz to i32
  %i.hb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gy, ptr noundef nonnull @.str.179, i32 noundef %i.ha) #65 ; 0 uses
  %i.hc = getelementptr i8, ptr %.25479, i64 1    ; 2 uses
  %i.hd = icmp ult ptr %i.hc, %i.da
  br i1 %i.hd, label %.lr.ph81, label %.loopexit, !llvm.loop !1333

.loopexit:                                        ; preds = %.lr.ph81, %bb.au, %bb.ax, %._crit_edge
  %i.he = load ptr, ptr @stderr, align 8, !tbaa !443
  %i.hf = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.he) ; 0 uses
  br label %bb.ay

bb.ay:                                            ; preds = %.loopexit, %.loopexit71
  %i.hg = load ptr, ptr @stderr, align 8, !tbaa !443
  %i.hh = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.hg) ; 0 uses
  %i.hi = load ptr, ptr @stderr, align 8, !tbaa !443
  %i.hj = tail call i32 @fflush(ptr noundef %i.hi) ; 0 uses
  %i.hk = load ptr, ptr @stderr, align 8, !tbaa !443
  %i.hl = tail call i32 @fileno(ptr noundef %i.hk) #52
  tail call void @_PyMem_DumpTraceback(i32 noundef %i.hl, ptr noundef nonnull %0) #52
  ret void
}

; Function Attrs: noreturn
declare void @_Py_FatalErrorFormat(ptr noundef, ptr noundef, ...) local_unnamed_addr #44

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #8

declare void @_PyMem_DumpTraceback(i32 noundef, ptr noundef) local_unnamed_addr #45

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #48

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #48

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #48

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #48

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #48

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #48

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #48

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #55

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #48

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #56

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #48

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1>, i1 immarg) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #48

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #48

attributes #0 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nocallback nofree nosync nounwind willreturn }
attributes #31 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #44 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #45 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #46 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #47 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #48 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #49 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #50 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #51 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #52 = { nounwind }
attributes #53 = { nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #54 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #55 = { nofree nounwind }
attributes #56 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #57 = { nounwind memory(read) }
attributes #58 = { nounwind willreturn memory(read) }
attributes #59 = { noreturn nounwind }
attributes #60 = { nounwind willreturn memory(none) }
attributes #61 = { cold }
attributes #62 = { nounwind allocsize(0) }
attributes #63 = { nounwind allocsize(0,1) }
attributes #64 = { nounwind allocsize(1) }
attributes #65 = { cold nounwind }

!llvm.module.flags = !{!44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}
!llvm.errno.tbaa = !{!54}

!0 = distinct !{!0, !342}
!1 = distinct !{!1, !342}
!2 = distinct !{!2, !342}
!3 = distinct !{!3, !342}
!4 = distinct !{!4, !342}
!5 = distinct !{!5, !342}
!6 = distinct !{!6, !342}
!7 = distinct !{null}
!8 = distinct !{!8, !342}
!9 = distinct !{!9, !342}
!10 = distinct !{!10, !342}
!11 = distinct !{!11, !342}
!12 = distinct !{!12, !342}
!13 = distinct !{!13, !342}
!14 = distinct !{null, ptr @_mi_fputs}
!15 = distinct !{!15, !342}
!16 = distinct !{!16, !342}
!17 = distinct !{!17, !342}
!18 = distinct !{!18, !342}
!19 = distinct !{!19, !342}
!20 = distinct !{!20, !342}
!21 = distinct !{null, ptr @mi_heap_get_default, ptr @mi_thread_init}
!22 = distinct !{!22, !342}
!23 = distinct !{!23, !342}
!24 = distinct !{!24, !342}
!25 = distinct !{!25, !342}
!26 = distinct !{!26, !342}
!27 = distinct !{!27, !342}
!28 = distinct !{!28, !342}
!29 = distinct !{!29, !342}
!30 = distinct !{!30, !342}
!31 = distinct !{!31, !342}
!32 = distinct !{!32, !342}
!33 = distinct !{!33, !342}
!34 = distinct !{!34, !342}
!35 = distinct !{!35, !342}
!36 = distinct !{!36, !342}
!37 = distinct !{!37, !342}
!38 = distinct !{!38, !342}
!39 = distinct !{!39, !342}
!40 = distinct !{null, ptr @PyMem_Free}
!41 = distinct !{null}
!42 = distinct !{null}
!43 = distinct !{!43, !342, !461}
!44 = !{i32 7, !"Dwarf Version", i32 5}
!45 = !{i32 2, !"Debug Info Version", i32 3}
!46 = !{i32 8, !"PIC Level", i32 2}
!47 = !{i32 7, !"PIE Level", i32 2}
!48 = !{i32 7, !"uwtable", i32 2}
!49 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!50 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!51 = !{!"Simple C/C++ TBAA"}
!52 = !{!"omnipotent char", !51, i64 0}
!53 = !{!"int", !52, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{i64 -2817121755766617140}
!56 = !{i64 -245224639769400813}
!57 = !{i64 5322878510935259940}
!58 = !{i64 5254141851210463162}
!59 = !{i64 -3663220376069482654}
!60 = !{i64 8002447591444663051}
!61 = !{i64 5297699873221144481}
!62 = !{i64 2637911861918705121}
!63 = !{i64 223656352941034062}
!64 = !{i64 7197756306131265183}
!65 = !{i64 -2271001758138420024}
!66 = !{i64 1370246104368136243}
!67 = !{i64 2031252511340360126}
!68 = !{i64 -2234184766813595776}
!69 = !{i64 -2936504237445261026}
!70 = !{i64 -5081104429082154786}
!71 = !{i64 -5215749102381837605}
!72 = !{i64 -7913151934259112549}
!73 = !{i64 -1119289812654829243}
!74 = !{i64 8570074352716965550}
!75 = !{i64 9025360393307031444}
!76 = !{i64 -6486226047345068647}
!77 = !{i64 778364634387495535}
!78 = !{i64 4874055319070661047}
!79 = !{i64 -2307158997625832907}
!80 = !{i64 9040800505238848133}
!81 = !{i64 5615434859842022787}
!82 = !{i64 -7221798669492494068}
!83 = !{i64 -2264212435792439989}
!84 = !{i64 -8612511042807280859}
!85 = !{i64 -7547585817275429305}
!86 = !{i64 -6601095975222190482}
!87 = !{i64 -7746211740611888299}
!88 = !{i64 6678975382764647476}
!89 = !{i64 -3559429209386067174}
!90 = !{i64 -6286846259821155520}
!91 = !{i64 -5327690909900986652}
!92 = !{i64 3782023846361409099}
!93 = !{i64 -8130153686449145603}
!94 = !{i64 8875868881961670251}
!95 = !{i64 17703375343132759}
!96 = !{i64 1140567709779446190}
!97 = !{i64 7473345857959615947}
!98 = !{i64 5176578675303720697}
!99 = !{i64 780425662564888884}
!100 = !{i64 -5439467079649398642}
!101 = !{i64 -6609813818009354202}
!102 = !{i64 2553900630835209165}
!103 = !{i64 -6433993184045409532}
!104 = !{i64 6456853848376954704}
!105 = !{i64 -5963429608795906466}
!106 = !{i64 -388601078787552132}
!107 = !{i64 2273314878192901857}
!108 = !{i64 6826038953880851579}
!109 = !{i64 8098582011227600333}
!110 = !{i64 -195175838853801655}
!111 = !{i64 7395185256633980306}
!112 = !{i64 93147857746454120}
!113 = !{i64 -3696672535798219300}
!114 = !{i64 -7878882436193535326}
!115 = !{i64 275081265396000252}
!116 = !{i64 2938286366788604854}
!117 = !{i64 6170990152829613527}
!118 = !{i64 5100008034372148184}
!119 = !{i64 -715460884465519518}
!120 = !{i64 5005938144850335925}
!121 = !{i64 1805340474356969317}
!122 = !{i64 -4096809000795651798}
!123 = !{i64 -9170921201348494586}
!124 = !{i64 -3718071116976238880}
!125 = !{i64 3052022480628715259}
!126 = !{i64 -6425945867225532566}
end_hunk_1
