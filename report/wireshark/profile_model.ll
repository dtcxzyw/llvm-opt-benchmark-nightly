inline.NumInlined: 2126
inline.NumDeleted: 689
begin_hunk_0_@_ZSt16__introsort_loopIN5QListIiE8iteratorExN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S9_T0_T1_:bb.a
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub i64 %i.l, %i.a                       ; 3 uses
  %i.n = ashr exact i64 %i.m, 2                   ; 3 uses
  %i.o = add nsw i64 %i.n, -1
  %i.p = lshr i64 %i.o, 1
  %i.q = icmp sgt i64 %i.n, 2
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.035.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.r = shl i64 %.035.i.i.i.i, 1                 ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr [4 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr [4 x i8], ptr %0, i64 %i.u
  %i.w = load i32, ptr %i.t, align 4
  %i.x = load i32, ptr %i.v, align 4
  %i.y = icmp sgt i32 %i.w, %i.x
  %spec.select.i.i.i.i = select i1 %i.y, i64 %i.u, i64 %i.s ; 4 uses
  %i.z = getelementptr [4 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = getelementptr [4 x i8], ptr %0, i64 %.035.i.i.i.i
  store i32 %i.aa, ptr %i.ab, align 4
  %i.ac = icmp slt i64 %spec.select.i.i.i.i, %i.p
  br i1 %i.ac, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !249

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ad = and i64 %i.m, 4
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.af = add nsw i64 %i.n, -2
  %i.ag = ashr exact i64 %i.af, 1
  %i.ah = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ag
  br i1 %i.ah, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ai = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.aj = or disjoint i64 %i.ai, 1                ; 2 uses
  %i.ak = getelementptr [4 x i8], ptr %0, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = getelementptr [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i32 %i.al, ptr %i.am, align 4
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN5QListIiE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.019.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.aj, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.019.i.i.i.i.i = phi i64 [ %.0920.i.i67.i.i.i, %bb.e ], [ %.019.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i67.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.an = getelementptr [4 x i8], ptr %0, i64 %.0920.i.i67.i.i.i
  %i.ao = load i32, ptr %i.an, align 4            ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, %i.j
  br i1 %i.ap, label %bb.e, label %_ZSt10__pop_heapIN5QListIiE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S9_S9_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aq = getelementptr [4 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store i32 %i.ao, ptr %i.aq, align 4
  %.not8.i.i.i = icmp eq i64 %.0920.i.i67.i.i.i, 0
  br i1 %.not8.i.i.i, label %_ZSt10__pop_heapIN5QListIiE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !250

_ZSt10__pop_heapIN5QListIiE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S9_S9_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.ar = getelementptr [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i32 %i.j, ptr %i.ar, align 4
  %i.as = icmp sgt i64 %i.m, 4
  br i1 %i.as, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN5QListIiE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S9_S9_T0_.exit, !llvm.loop !251

.lr.ph50:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2449 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02548 = phi i64 [ %i.au, %bb.b ], [ %2, %.lr.ph ]
  %i.at = phi i64 [ %i.bt, %bb.b ], [ %i.d, %.lr.ph ]
  %i.au = add i64 %.02548, -1                     ; 3 uses
  %i.av = lshr i64 %i.at, 1
  %i.aw = getelementptr [4 x i8], ptr %0, i64 %i.av ; 3 uses
  %i.ax = getelementptr i8, ptr %storemerge2449, i64 -4 ; 3 uses
  %i.ay = load i32, ptr %i.f, align 4             ; 5 uses
  %i.az = load i32, ptr %i.aw, align 4            ; 5 uses
  %i.ba = icmp sgt i32 %i.ay, %i.az
  %i.bb = load i32, ptr %i.ax, align 4            ; 6 uses
  br i1 %i.ba, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph50
  %i.bc = icmp sgt i32 %i.az, %i.bb
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bd = load i32, ptr %0, align 4
  store i32 %i.az, ptr %0, align 4
  store i32 %i.bd, ptr %i.aw, align 4
  br label %_ZSt22__move_median_to_firstIN5QListIiE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.be = icmp sgt i32 %i.ay, %i.bb
  %i.bf = load i32, ptr %0, align 4               ; 2 uses
  br i1 %i.be, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.bb, ptr %0, align 4
  store i32 %i.bf, ptr %i.ax, align 4
  br label %_ZSt22__move_median_to_firstIN5QListIiE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store i32 %i.ay, ptr %0, align 4
  store i32 %i.bf, ptr %i.f, align 4
  br label %_ZSt22__move_median_to_firstIN5QListIiE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph50
  %i.bg = icmp sgt i32 %i.ay, %i.bb
  br i1 %i.bg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bh = load i32, ptr %0, align 4
  store i32 %i.ay, ptr %0, align 4
  store i32 %i.bh, ptr %i.f, align 4
  br label %_ZSt22__move_median_to_firstIN5QListIiE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bi = icmp sgt i32 %i.az, %i.bb
  %i.bj = load i32, ptr %0, align 4               ; 2 uses
  br i1 %i.bi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 %i.bb, ptr %0, align 4
  store i32 %i.bj, ptr %i.ax, align 4
  br label %_ZSt22__move_median_to_firstIN5QListIiE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  store i32 %i.az, ptr %0, align 4
  store i32 %i.bj, ptr %i.aw, align 4
  br label %_ZSt22__move_median_to_firstIN5QListIiE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S9_S9_S9_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN5QListIiE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S9_S9_S9_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIN5QListIiE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S9_S9_S9_T0_.exit.i

_ZSt22__move_median_to_firstIN5QListIiE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S9_S9_S9_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN5QListIiE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S9_S9_S9_T0_.exit.i.preheader, %bb.r
  %.sroa.010.0.i.i = phi ptr [ %i.bn, %bb.r ], [ %i.f, %_ZSt22__move_median_to_firstIN5QListIiE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.r ], [ %storemerge2449, %_ZSt22__move_median_to_firstIN5QListIiE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %i.bk = load i32, ptr %0, align 4               ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIN5QListIiE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S9_S9_S9_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN5QListIiE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S9_S9_S9_T0_.exit.i ], [ %i.bn, %bb.p ] ; 8 uses
  %i.bl = load i32, ptr %.sroa.010.1.i.i, align 4 ; 2 uses
  %i.bm = icmp sgt i32 %i.bl, %i.bk
  %i.bn = getelementptr i8, ptr %.sroa.010.1.i.i, i64 4 ; 2 uses
  br i1 %i.bm, label %bb.p, label %.preheader.i.i, !llvm.loop !252

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.p ]
  %.sroa.0.1.i.i = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -4 ; 5 uses
  %i.bo = load i32, ptr %.sroa.0.1.i.i, align 4   ; 2 uses
  %i.bp = icmp sgt i32 %i.bk, %i.bo
  br i1 %i.bp, label %.preheader.i.i, label %bb.q, !llvm.loop !253

bb.q:                                             ; preds = %.preheader.i.i
  %i.bq = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.bq, label %bb.r, label %_ZSt27__unguarded_partition_pivotIN5QListIiE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEET_S9_S9_T0_.exit

bb.r:                                             ; preds = %bb.q
  store i32 %i.bo, ptr %.sroa.010.1.i.i, align 4
  store i32 %i.bl, ptr %.sroa.0.1.i.i, align 4
  br label %_ZSt22__move_median_to_firstIN5QListIiE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S9_S9_S9_T0_.exit.i, !llvm.loop !254

_ZSt27__unguarded_partition_pivotIN5QListIiE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEET_S9_S9_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIN5QListIiE8iteratorExN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S9_T0_T1_(ptr %.sroa.010.1.i.i, ptr %storemerge2449, i64 noundef %i.au)
  %i.br = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.bs = sub i64 %i.br, %i.a
  %i.bt = ashr exact i64 %i.bs, 2                 ; 2 uses
  %i.bu = icmp sgt i64 %i.bt, 16
  br i1 %i.bu, label %bb.b, label %_ZSt14__partial_sortIN5QListIiE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S9_S9_T0_.exit, !llvm.loop !248

_ZSt14__partial_sortIN5QListIiE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S9_S9_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN5QListIiE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEET_S9_S9_T0_.exit, %_ZSt10__pop_heapIN5QListIiE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S9_S9_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN5QListIiE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S9_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  %.sroa.0.017.i = getelementptr i8, ptr %0, i64 4 ; 3 uses
  br i1 %i.d, label %.lr.ph.i, label %bb.e

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 64         ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN5QListIiE8iteratorES2_ET0_T_S4_S3_.exit.i, %.lr.ph.i
  %.sroa.0.020.i = phi ptr [ %.sroa.0.017.i, %.lr.ph.i ], [ %.sroa.0.0.i, %_ZSt13move_backwardIN5QListIiE8iteratorES2_ET0_T_S4_S3_.exit.i ] ; 7 uses
  %.pn19.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.020.i, %_ZSt13move_backwardIN5QListIiE8iteratorES2_ET0_T_S4_S3_.exit.i ] ; 3 uses
  %i.f = load i32, ptr %.sroa.0.020.i, align 4    ; 4 uses
  %i.g = load i32, ptr %0, align 4
  %i.h = icmp sgt i32 %i.f, %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = ptrtoint ptr %.sroa.0.020.i to i64
  %i.j = sub i64 %i.i, %i.b                       ; 2 uses
  %i.k = ashr exact i64 %i.j, 2                   ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph.i.i.i.i.i.preheader.i, label %_ZSt13move_backwardIN5QListIiE8iteratorES2_ET0_T_S4_S3_.exit.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.c
  %2 = getelementptr i8, ptr %.pn19.i, i64 8
  %i.m = mul nsw i64 %i.k, -4                     ; 2 uses
  %scevgep22.i.a = getelementptr i8, ptr %2, i64 %i.m
  %scevgep23.i = getelementptr i8, ptr %.sroa.0.020.i, i64 %i.m
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %scevgep22.i.a, ptr align 4 %scevgep23.i, i64 %i.j, i1 false)
  br label %_ZSt13move_backwardIN5QListIiE8iteratorES2_ET0_T_S4_S3_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i32, ptr %.pn19.i, align 4          ; 2 uses
  %i.o = icmp sgt i32 %i.f, %i.n
  br i1 %i.o, label %.lr.ph.i.i, label %_ZSt13move_backwardIN5QListIiE8iteratorES2_ET0_T_S4_S3_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %i.p = phi i32 [ %i.q, %.lr.ph.i.i ], [ %i.n, %bb.d ]
  %.sroa.0.09.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn19.i, %bb.d ] ; 3 uses
  %.sroa.04.08.i.i = phi ptr [ %.sroa.0.09.i.i, %.lr.ph.i.i ], [ %.sroa.0.020.i, %bb.d ]
  store i32 %i.p, ptr %.sroa.04.08.i.i, align 4
  %.sroa.0.0.i.i = getelementptr i8, ptr %.sroa.0.09.i.i, i64 -4 ; 2 uses
  %i.q = load i32, ptr %.sroa.0.0.i.i, align 4    ; 2 uses
  %i.r = icmp sgt i32 %i.f, %i.q
  br i1 %i.r, label %.lr.ph.i.i, label %_ZSt13move_backwardIN5QListIiE8iteratorES2_ET0_T_S4_S3_.exit.i, !llvm.loop !255

_ZSt13move_backwardIN5QListIiE8iteratorES2_ET0_T_S4_S3_.exit.i: ; preds = %.lr.ph.i.i, %bb.d, %.lr.ph.i.i.i.i.i.preheader.i, %bb.c
  %.sink.i = phi ptr [ %0, %bb.c ], [ %0, %.lr.ph.i.i.i.i.i.preheader.i ], [ %.sroa.0.020.i, %bb.d ], [ %.sroa.0.09.i.i, %.lr.ph.i.i ]
  store i32 %i.f, ptr %.sink.i, align 4
  %.sroa.0.0.i = getelementptr i8, ptr %.sroa.0.020.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i, %i.e
  br i1 %.not.i, label %_ZSt16__insertion_sortIN5QListIiE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S9_T0_.exit, label %bb.b, !llvm.loop !256

_ZSt16__insertion_sortIN5QListIiE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S9_T0_.exit: ; preds = %_ZSt13move_backwardIN5QListIiE8iteratorES2_ET0_T_S4_S3_.exit.i
  %.not7.i = icmp eq ptr %i.e, %1
  br i1 %.not7.i, label %_ZSt26__unguarded_insertion_sortIN5QListIiE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S9_T0_.exit, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %_ZSt16__insertion_sortIN5QListIiE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S9_T0_.exit, %_ZSt25__unguarded_linear_insertIN5QListIiE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEEEvT_T0_.exit.i
  %.sroa.0.08.i = phi ptr [ %i.y, %_ZSt25__unguarded_linear_insertIN5QListIiE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEEEvT_T0_.exit.i ], [ %i.e, %_ZSt16__insertion_sortIN5QListIiE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S9_T0_.exit ] ; 5 uses
  %i.s = load i32, ptr %.sroa.0.08.i, align 4     ; 3 uses
  %.sroa.0.07.i.i = getelementptr i8, ptr %.sroa.0.08.i, i64 -4 ; 2 uses
  %i.t = load i32, ptr %.sroa.0.07.i.i, align 4   ; 2 uses
  %i.u = icmp sgt i32 %i.s, %i.t
  br i1 %i.u, label %.lr.ph.i.i15, label %_ZSt25__unguarded_linear_insertIN5QListIiE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEEEvT_T0_.exit.i

.lr.ph.i.i15:                                     ; preds = %.lr.ph.i13, %.lr.ph.i.i15
  %i.v = phi i32 [ %i.w, %.lr.ph.i.i15 ], [ %i.t, %.lr.ph.i13 ]
  %.sroa.0.09.i.i16 = phi ptr [ %.sroa.0.0.i.i18, %.lr.ph.i.i15 ], [ %.sroa.0.07.i.i, %.lr.ph.i13 ] ; 3 uses
  %.sroa.04.08.i.i17 = phi ptr [ %.sroa.0.09.i.i16, %.lr.ph.i.i15 ], [ %.sroa.0.08.i, %.lr.ph.i13 ]
  store i32 %i.v, ptr %.sroa.04.08.i.i17, align 4
  %.sroa.0.0.i.i18 = getelementptr i8, ptr %.sroa.0.09.i.i16, i64 -4 ; 2 uses
  %i.w = load i32, ptr %.sroa.0.0.i.i18, align 4  ; 2 uses
  %i.x = icmp sgt i32 %i.s, %i.w
  br i1 %i.x, label %.lr.ph.i.i15, label %_ZSt25__unguarded_linear_insertIN5QListIiE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEEEvT_T0_.exit.i, !llvm.loop !255

_ZSt25__unguarded_linear_insertIN5QListIiE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i15, %.lr.ph.i13
  %.sroa.04.0.lcssa.i.i = phi ptr [ %.sroa.0.08.i, %.lr.ph.i13 ], [ %.sroa.0.09.i.i16, %.lr.ph.i.i15 ]
  store i32 %i.s, ptr %.sroa.04.0.lcssa.i.i, align 4
  %i.y = getelementptr i8, ptr %.sroa.0.08.i, i64 4 ; 2 uses
  %.not.i14 = icmp eq ptr %i.y, %1
  br i1 %.not.i14, label %_ZSt26__unguarded_insertion_sortIN5QListIiE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S9_T0_.exit, label %.lr.ph.i13, !llvm.loop !257

bb.e:                                             ; preds = %bb.a
  %i.z = icmp eq ptr %0, %1
  %.not18.i21 = icmp eq ptr %.sroa.0.017.i, %1
  %or.cond = or i1 %i.z, %.not18.i21
  br i1 %or.cond, label %_ZSt26__unguarded_insertion_sortIN5QListIiE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S9_T0_.exit, label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %bb.e, %_ZSt13move_backwardIN5QListIiE8iteratorES2_ET0_T_S4_S3_.exit.i27
  %.sroa.0.020.i24 = phi ptr [ %.sroa.0.0.i29, %_ZSt13move_backwardIN5QListIiE8iteratorES2_ET0_T_S4_S3_.exit.i27 ], [ %.sroa.0.017.i, %bb.e ] ; 7 uses
  %.pn19.i25 = phi ptr [ %.sroa.0.020.i24, %_ZSt13move_backwardIN5QListIiE8iteratorES2_ET0_T_S4_S3_.exit.i27 ], [ %0, %bb.e ] ; 3 uses
  %i.aa = load i32, ptr %.sroa.0.020.i24, align 4 ; 4 uses
  %i.ab = load i32, ptr %0, align 4
  %i.ac = icmp sgt i32 %i.aa, %i.ab
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i22
  %i.ad = ptrtoint ptr %.sroa.0.020.i24 to i64
  %i.ae = sub i64 %i.ad, %i.b                     ; 2 uses
  %i.af = ashr exact i64 %i.ae, 2                 ; 2 uses
  %i.ag = icmp sgt i64 %i.af, 0
  br i1 %i.ag, label %.lr.ph.i.i.i.i.i.preheader.i36, label %_ZSt13move_backwardIN5QListIiE8iteratorES2_ET0_T_S4_S3_.exit.i27

.lr.ph.i.i.i.i.i.preheader.i36:                   ; preds = %bb.f
  %3 = getelementptr i8, ptr %.pn19.i25, i64 8
  %i.ah = mul nsw i64 %i.af, -4                   ; 2 uses
  %scevgep22.i37 = getelementptr i8, ptr %3, i64 %i.ah
  %scevgep23.i38 = getelementptr i8, ptr %.sroa.0.020.i24, i64 %i.ah
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %scevgep22.i37, ptr align 4 %scevgep23.i38, i64 %i.ae, i1 false)
  br label %_ZSt13move_backwardIN5QListIiE8iteratorES2_ET0_T_S4_S3_.exit.i27

bb.g:                                             ; preds = %.lr.ph.i22
  %i.ai = load i32, ptr %.pn19.i25, align 4       ; 2 uses
  %i.aj = icmp sgt i32 %i.aa, %i.ai
  br i1 %i.aj, label %.lr.ph.i.i32, label %_ZSt13move_backwardIN5QListIiE8iteratorES2_ET0_T_S4_S3_.exit.i27

.lr.ph.i.i32:                                     ; preds = %bb.g, %.lr.ph.i.i32
  %i.ak = phi i32 [ %i.al, %.lr.ph.i.i32 ], [ %i.ai, %bb.g ]
  %.sroa.0.09.i.i33 = phi ptr [ %.sroa.0.0.i.i35, %.lr.ph.i.i32 ], [ %.pn19.i25, %bb.g ] ; 3 uses
  %.sroa.04.08.i.i34 = phi ptr [ %.sroa.0.09.i.i33, %.lr.ph.i.i32 ], [ %.sroa.0.020.i24, %bb.g ]
  store i32 %i.ak, ptr %.sroa.04.08.i.i34, align 4
  %.sroa.0.0.i.i35 = getelementptr i8, ptr %.sroa.0.09.i.i33, i64 -4 ; 2 uses
  %i.al = load i32, ptr %.sroa.0.0.i.i35, align 4 ; 2 uses
  %i.am = icmp sgt i32 %i.aa, %i.al
  br i1 %i.am, label %.lr.ph.i.i32, label %_ZSt13move_backwardIN5QListIiE8iteratorES2_ET0_T_S4_S3_.exit.i27, !llvm.loop !255

_ZSt13move_backwardIN5QListIiE8iteratorES2_ET0_T_S4_S3_.exit.i27: ; preds = %.lr.ph.i.i32, %bb.g, %.lr.ph.i.i.i.i.i.preheader.i36, %bb.f
  %.sink.i28 = phi ptr [ %0, %bb.f ], [ %0, %.lr.ph.i.i.i.i.i.preheader.i36 ], [ %.sroa.0.020.i24, %bb.g ], [ %.sroa.0.09.i.i33, %.lr.ph.i.i32 ]
  store i32 %i.aa, ptr %.sink.i28, align 4
  %.sroa.0.0.i29 = getelementptr i8, ptr %.sroa.0.020.i24, i64 4 ; 2 uses
  %.not.i30 = icmp eq ptr %.sroa.0.0.i29, %1
  br i1 %.not.i30, label %_ZSt26__unguarded_insertion_sortIN5QListIiE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S9_T0_.exit, label %.lr.ph.i22, !llvm.loop !256

_ZSt26__unguarded_insertion_sortIN5QListIiE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S9_T0_.exit: ; preds = %_ZSt13move_backwardIN5QListIiE8iteratorES2_ET0_T_S4_S3_.exit.i27, %_ZSt25__unguarded_linear_insertIN5QListIiE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEEEvT_T0_.exit.i, %bb.e, %_ZSt16__insertion_sortIN5QListIiE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S9_T0_.exit
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZSt11__make_heapIN5QListIiE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S9_RT0_(ptr %0, ptr %1, ptr noundef align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 2 uses
  %i.d = ashr exact i64 %.fr, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr [4 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr [4 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN5QListIiE8iteratorExiN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_SA_T1_T2_.exit.us
  %.011.us = phi i64 [ %i.al, %_ZSt13__adjust_heapIN5QListIiE8iteratorExiN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_SA_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr [4 x i8], ptr %0, i64 %.011.us
  %i.q = load i32, ptr %i.p, align 4              ; 2 uses
  %i.r = icmp slt i64 %.011.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN5QListIiE8iteratorExiN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_SA_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.035.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.011.us, %.split.us ] ; 2 uses
  %i.s = shl i64 %.035.i.us, 1                    ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr [4 x i8], ptr %0, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr [4 x i8], ptr %0, i64 %i.v
  %i.x = load i32, ptr %i.u, align 4
  %i.y = load i32, ptr %i.w, align 4
  %i.z = icmp sgt i32 %i.x, %i.y
  %spec.select.i.us = select i1 %i.z, i64 %i.v, i64 %i.t ; 6 uses
  %i.aa = getelementptr [4 x i8], ptr %0, i64 %spec.select.i.us
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = getelementptr [4 x i8], ptr %0, i64 %.035.i.us
  store i32 %i.ab, ptr %i.ac, align 4
  %i.ad = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ad, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !249

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ae = icmp sgt i64 %spec.select.i.us, %.011.us
  br i1 %i.ae, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN5QListIiE8iteratorExiN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_SA_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.019.i.i.us = phi i64 [ %.0920.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.af = getelementptr [4 x i8], ptr %0, i64 %.0920.i.i.us
  %i.ag = load i32, ptr %i.af, align 4            ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, %i.q
  br i1 %i.ah, label %bb.c, label %_ZSt13__adjust_heapIN5QListIiE8iteratorExiN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_SA_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ai = getelementptr [4 x i8], ptr %0, i64 %.019.i.i.us
  store i32 %i.ag, ptr %i.ai, align 4
  %i.aj = icmp sgt i64 %.0920.i.i.us, %.011.us
  br i1 %i.aj, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN5QListIiE8iteratorExiN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_SA_T1_T2_.exit.us, !llvm.loop !250

_ZSt13__adjust_heapIN5QListIiE8iteratorExiN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_SA_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.0.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.011.us, %.split.us ], [ %.019.i.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.c ]
  %i.ak = getelementptr [4 x i8], ptr %0, i64 %.0.lcssa.i.i.us
  store i32 %i.q, ptr %i.ak, align 4
  %.not.us = icmp eq i64 %.011.us, 0
  %i.al = add nsw i64 %.011.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !258

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIN5QListIiE8iteratorExiN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_SA_T1_T2_.exit
  %.011 = phi i64 [ %i.bk, %_ZSt13__adjust_heapIN5QListIiE8iteratorExiN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_SA_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.am = getelementptr [4 x i8], ptr %0, i64 %.011
  %i.an = load i32, ptr %i.am, align 4            ; 2 uses
  %i.ao = icmp slt i64 %.011, %i.i
  br i1 %i.ao, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.035.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.011, %.split ] ; 2 uses
  %i.ap = shl i64 %.035.i, 1                      ; 2 uses
  %i.aq = add i64 %i.ap, 2                        ; 2 uses
  %i.ar = getelementptr [4 x i8], ptr %0, i64 %i.aq
  %i.as = or disjoint i64 %i.ap, 1                ; 2 uses
  %i.at = getelementptr [4 x i8], ptr %0, i64 %i.as
  %i.au = load i32, ptr %i.ar, align 4
  %i.av = load i32, ptr %i.at, align 4
  %i.aw = icmp sgt i32 %i.au, %i.av
  %spec.select.i = select i1 %i.aw, i64 %i.as, i64 %i.aq ; 4 uses
  %i.ax = getelementptr [4 x i8], ptr %0, i64 %spec.select.i
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = getelementptr [4 x i8], ptr %0, i64 %.035.i
  store i32 %i.ay, ptr %i.az, align 4
  %i.ba = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ba, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !249

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.011, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bb = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bb, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.bc = load i32, ptr %i.n, align 4
  store i32 %i.bc, ptr %i.o, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bd = icmp sgt i64 %.1.i, %.011
  br i1 %i.bd, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN5QListIiE8iteratorExiN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_SA_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.be = getelementptr [4 x i8], ptr %0, i64 %.0920.i.i
  %i.bf = load i32, ptr %i.be, align 4            ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, %i.an
  br i1 %i.bg, label %bb.f, label %_ZSt13__adjust_heapIN5QListIiE8iteratorExiN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_SA_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bh = getelementptr [4 x i8], ptr %0, i64 %.019.i.i
  store i32 %i.bf, ptr %i.bh, align 4
  %i.bi = icmp sgt i64 %.0920.i.i, %.011
  br i1 %i.bi, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN5QListIiE8iteratorExiN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_SA_T1_T2_.exit, !llvm.loop !250

_ZSt13__adjust_heapIN5QListIiE8iteratorExiN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_SA_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.bj = getelementptr [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.an, ptr %i.bj, align 4
  %.not = icmp eq i64 %.011, 0
  %i.bk = add nsw i64 %.011, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !258

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN5QListIiE8iteratorExiN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_SA_T1_T2_.exit.us, %_ZSt13__adjust_heapIN5QListIiE8iteratorExiN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_SA_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #23

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN9QtPrivate16QMovableArrayOpsI9QFileInfoE7emplaceIJS1_EEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %0, i64 noundef %1, ptr noundef align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.QFileInfo, align 8           ; 8 uses
  %4 = alloca %"struct.QtPrivate::QMovableArrayOps<QFileInfo>::Inserter", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8                ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNK17QArrayDataPointerI9QFileInfoE11needsDetachEv.exit.thread, label %_ZNK17QArrayDataPointerI9QFileInfoE11needsDetachEv.exit

_ZNK17QArrayDataPointerI9QFileInfoE11needsDetachEv.exit: ; preds = %bb.a
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %_ZNK17QArrayDataPointerI9QFileInfoE11needsDetachEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK17QArrayDataPointerI9QFileInfoE11needsDetachEv.exit
  %i.d = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp eq i64 %1, %i.e
  br i1 %i.f, label %_ZNK17QArrayDataPointerI9QFileInfoE14freeSpaceAtEndEv.exit, label %bb.d

_ZNK17QArrayDataPointerI9QFileInfoE14freeSpaceAtEndEv.exit: ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = ptrtoint ptr %i.a to i64
  %i.l = add i64 %i.k, 23
  %i.m = and i64 %i.l, -8
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.n, %i.m
  %i.p = ashr exact i64 %i.o, 3
  %i.q = add i64 %i.p, %1
  %.not = icmp eq i64 %i.h, %i.q
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK17QArrayDataPointerI9QFileInfoE14freeSpaceAtEndEv.exit
  %i.r = getelementptr [8 x i8], ptr %i.j, i64 %1
  tail call void @_ZN9QFileInfoC1ERKS_(ptr noundef align 8 dereferenceable_or_null(8) %i.r, ptr noundef align 8 dereferenceable(8) %2)
  %i.s = load i64, ptr %i.d, align 8
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.d, align 8
  br label %bb.m

bb.d:                                             ; preds = %_ZNK17QArrayDataPointerI9QFileInfoE14freeSpaceAtEndEv.exit, %bb.b
  %i.u = icmp eq i64 %1, 0
end_hunk_0
