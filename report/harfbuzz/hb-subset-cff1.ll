inline.NumInlined: 2708
inline.NumDeleted: 1363
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN11hb_vector_tI10hb_array_tIKhELb0EE6extendI13hb_map_iter_tIS0_IKjERKN3CFF15CFF1StringIndexEL24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSD_0EEEvRKSG_b:bb.a
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.ci
  %i.ck = load i16, ptr %i.cj, align 1, !tbaa !211
  %i.cl = tail call noundef i16 @llvm.bswap.i16(i16 %i.ck)
  %i.cm = zext i16 %i.cl to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13.i

bb.g:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread.i
  %i.cn = zext i16 %i.cd to i64
  %i.co = getelementptr inbounds nuw [3 x i8], ptr %i.g, i64 %i.cn ; 3 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !81
  %i.cq = zext i8 %i.cp to i32
  %i.cr = shl nuw nsw i32 %i.cq, 16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !81
  %i.cu = zext i8 %i.ct to i32
  %i.cv = shl nuw nsw i32 %i.cu, 8
  %i.cw = or disjoint i32 %i.cv, %i.cr
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 2
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !81
  %i.cz = zext i8 %i.cy to i32
  %i.da = or disjoint i32 %i.cw, %i.cz
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13.i

bb.h:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread.i
  %i.db = zext i16 %i.cd to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 1, !tbaa !236
  %i.de = tail call noundef i32 @llvm.bswap.i32(i32 %i.dd)
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13.i

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread.i
  %.0.i12.i = phi i32 [ %i.de, %bb.h ], [ %i.ch, %bb.e ], [ %i.cm, %bb.f ], [ %i.da, %bb.g ], [ 0, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread.i ]
  %i.df = icmp ugt i32 %.0.i1029.i, %.0.i12.i
  br i1 %i.df, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEEixEj.exit, label %bb.i, !prof !70

bb.i:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13.i
  %i.dg = zext i8 %i.ac to i64
  %i.dh = zext i16 %i.cd to i64
  %i.di = add nuw nsw i64 %i.dh, 1
  %i.dj = mul nuw nsw i64 %i.di, %i.dg
  %i.dk = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.dj
  %i.dl = zext i32 %.0.i1628.i to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dl
  %i.dn = sub i32 %.0.i1029.i, %.0.i1628.i
  %.sroa.6.8.insert.ext.i = zext i32 %i.dn to i64
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEEixEj.exit

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEEixEj.exit: ; preds = %_ZN9hb_iter_tI13hb_map_iter_tI10hb_array_tIKjERKN3CFF15CFF1StringIndexEL24hb_function_sortedness_t0ELPv0EES1_IKhEEppEi.exit11, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.i, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13.i, %bb.i
  %.sroa.0.0.i = phi ptr [ null, %_ZN9hb_iter_tI13hb_map_iter_tI10hb_array_tIKjERKN3CFF15CFF1StringIndexEL24hb_function_sortedness_t0ELPv0EES1_IKhEEppEi.exit11 ], [ %i.dm, %bb.i ], [ null, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.i ], [ null, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13.i ]
  %.sroa.6.0.i = phi i64 [ 0, %_ZN9hb_iter_tI13hb_map_iter_tI10hb_array_tIKjERKN3CFF15CFF1StringIndexEL24hb_function_sortedness_t0ELPv0EES1_IKhEEppEi.exit11 ], [ %.sroa.6.8.insert.ext.i, %bb.i ], [ 0, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.i ], [ 0, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13.i ]
  %i.do = load ptr, ptr %i.h, align 8, !tbaa !227
  %i.dp = load i32, ptr %i.a, align 4, !tbaa !226 ; 2 uses
  %i.dq = add i32 %i.dp, 1
  store i32 %i.dq, ptr %i.a, align 4, !tbaa !226
  %i.dr = zext i32 %i.dp to i64
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.dr ; 2 uses
  store ptr %.sroa.0.0.i, ptr %i.ds, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store i64 %.sroa.6.0.i, ptr %.sroa.417.0..sroa_idx, align 8
  %i.dt = add nuw i32 %.039, 1                    ; 2 uses
  %i.du = icmp ult i32 %i.dt, %i.w
  %i.dv = icmp ne i32 %i.x, 0
  %or.cond = select i1 %i.du, i1 %i.dv, i1 false
  br i1 %or.cond, label %_ZN9hb_iter_tI13hb_map_iter_tI10hb_array_tIKjERKN3CFF15CFF1StringIndexEL24hb_function_sortedness_t0ELPv0EES1_IKhEEppEi.exit11, label %.critedge.loopexit, !llvm.loop !433

.loopexit:                                        ; preds = %bb.b, %.critedge.loopexit, %.critedge.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tI10hb_array_tIKhELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !223    ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !70

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !105
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !70

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !434

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 268435455
  br i1 %i.j, label %.critedge, label %bb.e, !prof !70

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tI10hb_array_tIKhELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS2_j11hb_priorityILj1EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !227
  tail call void @hb_free(ptr noundef %i.m) #10
  br label %_ZN11hb_vector_tI10hb_array_tIKhELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS2_j11hb_priorityILj1EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !227  ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tI10hb_array_tIKhELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS2_j11hb_priorityILj1EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tI10hb_array_tIKhELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS2_j11hb_priorityILj1EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw i32 %.138, 4
  %i.q = zext i32 %i.p to i64
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #10 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tI10hb_array_tIKhELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS2_j11hb_priorityILj1EE.exit.thread53, label %bb.k, !prof !70

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !226  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tI10hb_array_tIKhELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS2_j11hb_priorityILj1EE.exit.thread, label %bb.l, !prof !70

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 4
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !227
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 %i.v, i1 false), !alias.scope !435
  br label %_ZN11hb_vector_tI10hb_array_tIKhELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS2_j11hb_priorityILj1EE.exit.thread

_ZN11hb_vector_tI10hb_array_tIKhELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS2_j11hb_priorityILj1EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = shl nuw i32 %.138, 4
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #10 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tI10hb_array_tIKhELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS2_j11hb_priorityILj1EE.exit.thread53, label %_ZN11hb_vector_tI10hb_array_tIKhELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS2_j11hb_priorityILj1EE.exit.thread, !prof !399

_ZN11hb_vector_tI10hb_array_tIKhELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS2_j11hb_priorityILj1EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tI10hb_array_tIKhELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS2_j11hb_priorityILj1EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !223   ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tI10hb_array_tIKhELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS2_j11hb_priorityILj1EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tI10hb_array_tIKhELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS2_j11hb_priorityILj1EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tI10hb_array_tIKhELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS2_j11hb_priorityILj1EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tI10hb_array_tIKhELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS2_j11hb_priorityILj1EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !227
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tI10hb_array_tIKhELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS2_j11hb_priorityILj1EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tI10hb_array_tIKhELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS2_j11hb_priorityILj1EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tI10hb_array_tIKhELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS2_j11hb_priorityILj1EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !223
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tI10hb_array_tIKhELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS2_j11hb_priorityILj1EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tI10hb_array_tIKhELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS2_j11hb_priorityILj1EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEEixEj(ptr noundef nonnull align 1 dereferenceable(4) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 1, !tbaa !211
  %i.b = tail call noundef i16 @llvm.bswap.i16(i16 %i.a)
  %i.c = zext i16 %i.b to i32
  %.not = icmp ult i32 %1, %i.c
  br i1 %.not, label %bb.b, label %.critedge, !prof !66

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !207
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !205   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 8 uses
  switch i8 %i.e, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread [
    i8 1, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread
    i8 2, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread17
    i8 3, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread20
    i8 4, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread23
  ]

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread: ; preds = %bb.b
  %i.g = zext nneg i32 %1 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !205
  %i.j = zext i8 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !205
  %i.m = zext i8 %i.l to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread17: ; preds = %bb.b
  %i.n = zext nneg i32 %1 to i64
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.n ; 2 uses
  %i.p = load i16, ptr %i.o, align 1, !tbaa !211
  %i.q = tail call noundef i16 @llvm.bswap.i16(i16 %i.p)
  %i.r = zext i16 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.t = load i16, ptr %i.s, align 1, !tbaa !211
  %i.u = tail call noundef i16 @llvm.bswap.i16(i16 %i.t)
  %i.v = zext i16 %i.u to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread20: ; preds = %bb.b
  %i.w = zext nneg i32 %1 to i64
  %i.x = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %i.w ; 6 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !81
  %i.z = zext i8 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !81
  %i.ad = zext i8 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 8
  %i.af = or disjoint i32 %i.ae, %i.aa
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !81
  %i.ai = zext i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.af, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !81
  %i.am = zext i8 %i.al to i32
  %i.an = shl nuw nsw i32 %i.am, 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !81
  %i.aq = zext i8 %i.ap to i32
  %i.ar = shl nuw nsw i32 %i.aq, 8
  %i.as = or disjoint i32 %i.ar, %i.an
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 5
  %i.au = load i8, ptr %i.at, align 1, !tbaa !81
  %i.av = zext i8 %i.au to i32
  %i.aw = or disjoint i32 %i.as, %i.av
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread23: ; preds = %bb.b
  %i.ax = zext nneg i32 %1 to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ax ; 2 uses
  %i.az = load i32, ptr %i.ay, align 1, !tbaa !236
  %i.ba = tail call noundef i32 @llvm.bswap.i32(i32 %i.az)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bc = load i32, ptr %i.bb, align 1, !tbaa !236
  %i.bd = tail call noundef i32 @llvm.bswap.i32(i32 %i.bc)
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11: ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread17, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread20, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread23
  %.0.i16 = phi i32 [ %i.ba, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread23 ], [ %i.j, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread ], [ %i.r, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread17 ], [ %i.aj, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread20 ] ; 2 uses
  %.0.i10 = phi i32 [ %i.bd, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread23 ], [ %i.m, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread ], [ %i.v, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread17 ], [ %i.aw, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread20 ] ; 2 uses
  %i.be = icmp ult i32 %.0.i10, %.0.i16
  br i1 %i.be, label %.critedge, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread, !prof !432

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread: ; preds = %bb.b, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11
  %.0.i1029 = phi i32 [ %.0.i10, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11 ], [ 0, %bb.b ] ; 2 uses
  %.0.i1628 = phi i32 [ %.0.i16, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11 ], [ 0, %bb.b ] ; 2 uses
  %i.bf = load i16, ptr %0, align 1, !tbaa !211
  %i.bg = tail call noundef i16 @llvm.bswap.i16(i16 %i.bf) ; 5 uses
  switch i8 %i.e, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13 [
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.c:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread
  %i.bh = zext i16 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !205
  %i.bk = zext i8 %i.bj to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13

bb.d:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread
  %i.bl = zext i16 %i.bg to i64
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.bl
  %i.bn = load i16, ptr %i.bm, align 1, !tbaa !211
  %i.bo = tail call noundef i16 @llvm.bswap.i16(i16 %i.bn)
  %i.bp = zext i16 %i.bo to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13

bb.e:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread
  %i.bq = zext i16 %i.bg to i64
  %i.br = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %i.bq ; 3 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !81
  %i.bt = zext i8 %i.bs to i32
  %i.bu = shl nuw nsw i32 %i.bt, 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !81
  %i.bx = zext i8 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 8
  %i.bz = or disjoint i32 %i.by, %i.bu
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !81
  %i.cc = zext i8 %i.cb to i32
  %i.cd = or disjoint i32 %i.bz, %i.cc
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13

bb.f:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread
  %i.ce = zext i16 %i.bg to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 1, !tbaa !236
  %i.ch = tail call noundef i32 @llvm.bswap.i32(i32 %i.cg)
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13: ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i12 = phi i32 [ %i.ch, %bb.f ], [ %i.bk, %bb.c ], [ %i.bp, %bb.d ], [ %i.cd, %bb.e ], [ 0, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread ]
  %i.ci = icmp ugt i32 %.0.i1029, %.0.i12
  br i1 %i.ci, label %.critedge, label %bb.g, !prof !70

bb.g:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13
  %i.cj = zext i8 %i.e to i64
  %i.ck = zext i16 %i.bg to i64
  %i.cl = add nuw nsw i64 %i.ck, 1
  %i.cm = mul nuw nsw i64 %i.cl, %i.cj
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cm
  %i.co = zext i32 %.0.i1628 to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.co
  %i.cq = sub i32 %.0.i1029, %.0.i1628
  %.sroa.6.8.insert.ext = zext i32 %i.cq to i64
  br label %.critedge

.critedge:                                        ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11, %bb.a, %bb.g
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.cp, %bb.g ], [ null, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11 ], [ null, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13 ]
  %.sroa.6.0 = phi i64 [ 0, %bb.a ], [ %.sroa.6.8.insert.ext, %bb.g ], [ 0, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11 ], [ 0, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13 ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.6.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE16serialize_headerI10hb_array_tIKS5_IKhEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSB_6item_tEEE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tSB_jj(ptr noundef nonnull align 1 dereferenceable(4) %0, ptr noundef %1, ptr %2, i64 %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = add i32 %4, 1
  %i.b = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.a, i1 false)
  %i.c = sub nuw nsw i32 39, %i.b
  %i.d = lshr i32 %i.c, 3
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %5, i32 %i.d) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 6 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !54
  %.not11.i.i = icmp eq i32 %i.f, 0
  br i1 %.not11.i.i, label %bb.b, label %select.unfold, !prof !66

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69   ; 4 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %i.m = icmp ugt i64 %i.l, 2147483647
  br i1 %i.m, label %.critedge.i.i.i, label %bb.c, !prof !70

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !68
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.p, %i.k
  %i.r = icmp slt i64 %i.q, %i.l
  br i1 %i.r, label %.critedge.i.i.i, label %bb.d, !prof !70

.critedge.i.i.i:                                  ; preds = %bb.c, %bb.b
  store i32 4, ptr %i.e, align 4, !tbaa !54
  br label %select.unfold

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.not.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i.i.not.i, label %_ZL9hb_memsetPvij.exit.i.i.i, label %bb.e, !prof !128

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.i, i8 0, i64 %i.l, i1 false)
  %.pre.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !69
  br label %_ZL9hb_memsetPvij.exit.i.i.i

_ZL9hb_memsetPvij.exit.i.i.i:                     ; preds = %bb.e, %bb.d
  %i.s = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.i, %bb.d ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.l
  store ptr %i.t, ptr %i.h, align 8, !tbaa !69
  %i.u = icmp eq ptr %i.s, null
  br i1 %i.u, label %select.unfold, label %_ZN22hb_serialize_context_t10extend_minIN2OT8CFFIndexINS1_7NumTypeILb1EtLj2EEEEEEEPT_S7_.exit, !prof !70

_ZN22hb_serialize_context_t10extend_minIN2OT8CFFIndexINS1_7NumTypeILb1EtLj2EEEEEEEPT_S7_.exit: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i
  %i.v = trunc i64 %3 to i16
  %i.w = tail call i16 @llvm.bswap.i16(i16 %i.v)
  store i16 %i.w, ptr %0, align 1, !tbaa !81
  %i.x = and i64 %3, 65535
  %.not62 = icmp eq i64 %i.x, 0
  br i1 %.not62, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %_ZN22hb_serialize_context_t10extend_minIN2OT8CFFIndexINS1_7NumTypeILb1EtLj2EEEEEEEPT_S7_.exit
  %i.y = load i32, ptr %i.e, align 4, !tbaa !54
  %.not11.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not11.i.i.i, label %bb.g, label %select.unfold, !prof !66

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 14 uses
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !69  ; 4 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 4 uses
  %i.ae = icmp ugt i64 %i.ad, 2147483647
  br i1 %i.ae, label %.critedge.i.i.i.i, label %bb.h, !prof !70

bb.h:                                             ; preds = %bb.g
  %i.af = load ptr, ptr %i.n, align 8, !tbaa !68
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %i.ac
  %i.ai = icmp slt i64 %i.ah, %i.ad
  br i1 %i.ai, label %.critedge.i.i.i.i, label %bb.i, !prof !70

.critedge.i.i.i.i:                                ; preds = %bb.h, %bb.g
  store i32 4, ptr %i.e, align 4, !tbaa !54
  br label %select.unfold

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i.not.i.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i.i.i.not.i.i, label %_ZL9hb_memsetPvij.exit.i.i.i.i, label %bb.j, !prof !128

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aa, i8 0, i64 %i.ad, i1 false)
  %.pre.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !69
  br label %_ZL9hb_memsetPvij.exit.i.i.i.i

_ZL9hb_memsetPvij.exit.i.i.i.i:                   ; preds = %bb.j, %bb.i
  %i.aj = phi ptr [ %.pre.i.i.i.i, %bb.j ], [ %i.aa, %bb.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ad
  store ptr %i.ak, ptr %i.h, align 8, !tbaa !69
  %i.al = icmp eq ptr %i.aj, null
  br i1 %i.al, label %select.unfold, label %_ZN22hb_serialize_context_t6extendIN2OT7NumTypeILb1EhLj1EEEJEEEPT_RS4_DpOT0_.exit, !prof !70

_ZN22hb_serialize_context_t6extendIN2OT7NumTypeILb1EhLj1EEEJEEEPT_RS4_DpOT0_.exit: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i.i
  %i.am = trunc i32 %.sroa.speculated to i8
  store i8 %i.am, ptr %i.g, align 1, !tbaa !81
  %i.an = load i16, ptr %0, align 1, !tbaa !211
  %i.ao = tail call noundef i16 @llvm.bswap.i16(i16 %i.an)
  %i.ap = zext i16 %i.ao to i32
  %i.aq = add nuw nsw i32 %i.ap, 1
  %i.ar = mul i32 %i.aq, %.sroa.speculated        ; 2 uses
  %i.as = zext i32 %i.ar to i64                   ; 2 uses
  %i.at = load i32, ptr %i.e, align 4, !tbaa !54
  %.not.i73 = icmp eq i32 %i.at, 0
end_hunk_0
begin_hunk_1_@_ZNK3CFF7Charset24collect_glyph_to_sid_mapEP11hb_vector_tINS_11code_pair_tELb0EEj:bb.a
vector.ph:                                        ; preds = %bb.l
  %n.vec = and i32 %i.cx, 131068                  ; 4 uses
  %i.da = add i32 %.0.i12, %n.vec
  %i.db = add nuw nsw i32 %n.vec, %i.cr
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.cw, i64 0 ; 2 uses
  %broadcast.splatinsert30 = insertelement <2 x i32> poison, i32 %i.cr, i64 0
  %broadcast.splat31 = shufflevector <2 x i32> %broadcast.splatinsert30, <2 x i32> poison, <2 x i32> zeroinitializer
  %induction = add nuw nsw <2 x i32> %broadcast.splat31, <i32 0, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw nsw <2 x i32> %vec.ind, splat (i32 2)
  %i.dc = add i32 %.0.i12, %index                 ; 2 uses
  %i.dd = add i32 %i.dc, 2
  %i.de = zext i32 %i.dc to i64
  %i.df = zext i32 %i.dd to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.de
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.df
  %interleaved.vec = shufflevector <2 x i32> %vec.ind, <2 x i32> %broadcast.splatinsert, <4 x i32> <i32 0, i32 2, i32 1, i32 2>
  store <4 x i32> %interleaved.vec, ptr %i.dg, align 4, !tbaa !105
  %interleaved.vec32 = shufflevector <2 x i32> %step.add, <2 x i32> %broadcast.splatinsert, <4 x i32> <i32 0, i32 2, i32 1, i32 2>
  store <4 x i32> %interleaved.vec32, ptr %i.dh, align 4, !tbaa !105
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i32> %vec.ind, splat (i32 4)
  %i.di = icmp eq i32 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !611

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.cx, %n.vec
  br i1 %cmp.n, label %.loopexit72, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.l, %middle.block
  %.127.i13.ph = phi i32 [ %.0.i12, %bb.l ], [ %i.da, %middle.block ] ; 4 uses
  %.02125.i14.ph = phi i32 [ %i.cr, %bb.l ], [ %i.db, %middle.block ] ; 2 uses
  %i.dj = add i32 %.0.i12, 1
  %i.dk = add i32 %i.dj, %i.cv
  %i.dl = sub i32 %i.dk, %.127.i13.ph
  %i.dm = add i32 %.0.i12, %i.cv
  %i.dn = sub i32 %i.dm, %.127.i13.ph
  %xtraiter = and i32 %i.dl, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.127.i13.prol = phi i32 [ %i.dp, %scalar.ph.prol ], [ %.127.i13.ph, %scalar.ph.preheader ] ; 2 uses
  %.02125.i14.prol = phi i32 [ %i.do, %scalar.ph.prol ], [ %.02125.i14.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.do = add nuw nsw i32 %.02125.i14.prol, 1     ; 2 uses
  %i.dp = add i32 %.127.i13.prol, 1               ; 2 uses
  %i.dq = zext i32 %.127.i13.prol to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.dq ; 2 uses
  store i32 %.02125.i14.prol, ptr %i.dr, align 4, !tbaa !105
  %.sroa.4.0..sroa_idx.i15.prol = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  store i32 %i.cw, ptr %.sroa.4.0..sroa_idx.i15.prol, align 4, !tbaa !105
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !612

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.127.i13.unr = phi i32 [ %.127.i13.ph, %scalar.ph.preheader ], [ %i.dp, %scalar.ph.prol ]
  %.02125.i14.unr = phi i32 [ %.02125.i14.ph, %scalar.ph.preheader ], [ %i.do, %scalar.ph.prol ]
  %i.ds = icmp ult i32 %i.dn, 3
  br i1 %i.ds, label %.loopexit72, label %scalar.ph

.loopexit72:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.dt = add i32 %i.cw, 1                        ; 2 uses
  %.not.i17 = icmp ult i32 %i.dt, %2
  %i.du = add i32 %.022.i11, 1
  br i1 %.not.i17, label %bb.l, label %_ZNK3CFF8Charset024collect_glyph_to_sid_mapEP11hb_vector_tINS_11code_pair_tELb0EEj.exit, !llvm.loop !613

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.127.i13 = phi i32 [ %i.ei, %scalar.ph ], [ %.127.i13.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.02125.i14 = phi i32 [ %i.eh, %scalar.ph ], [ %.02125.i14.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.dv = add nuw nsw i32 %.02125.i14, 1
  %i.dw = add i32 %.127.i13, 1
  %i.dx = zext i32 %.127.i13 to i64
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.dx ; 2 uses
  store i32 %.02125.i14, ptr %i.dy, align 4, !tbaa !105
  %.sroa.4.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  store i32 %i.cw, ptr %.sroa.4.0..sroa_idx.i15, align 4, !tbaa !105
  %i.dz = add nuw nsw i32 %.02125.i14, 2
  %i.ea = add i32 %.127.i13, 2
  %i.eb = zext i32 %i.dw to i64
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.eb ; 2 uses
  store i32 %i.dv, ptr %i.ec, align 4, !tbaa !105
  %.sroa.4.0..sroa_idx.i15.1 = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  store i32 %i.cw, ptr %.sroa.4.0..sroa_idx.i15.1, align 4, !tbaa !105
  %i.ed = add nuw nsw i32 %.02125.i14, 3
  %i.ee = add i32 %.127.i13, 3                    ; 2 uses
  %i.ef = zext i32 %i.ea to i64
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.ef ; 2 uses
  store i32 %i.dz, ptr %i.eg, align 4, !tbaa !105
  %.sroa.4.0..sroa_idx.i15.2 = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  store i32 %i.cw, ptr %.sroa.4.0..sroa_idx.i15.2, align 4, !tbaa !105
  %i.eh = add nuw nsw i32 %.02125.i14, 4
  %i.ei = add i32 %.127.i13, 4
  %i.ej = zext i32 %i.ee to i64
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.ej ; 2 uses
  store i32 %i.ed, ptr %i.ek, align 4, !tbaa !105
  %.sroa.4.0..sroa_idx.i15.3 = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  store i32 %i.cw, ptr %.sroa.4.0..sroa_idx.i15.3, align 4, !tbaa !105
  %exitcond.not.i16.3 = icmp eq i32 %i.ee, %i.cw
  br i1 %exitcond.not.i16.3, label %.loopexit72, label %scalar.ph, !llvm.loop !614

_ZNK3CFF8Charset024collect_glyph_to_sid_mapEP11hb_vector_tINS_11code_pair_tELb0EEj.exit: ; preds = %.loopexit72, %.loopexit, %scalar.ph56, %middle.block69, %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE12resize_dirtyEi.exit.i9, %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE12resize_dirtyEi.exit.i6, %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE12resize_dirtyEi.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK3CFF7Charset7get_sidEjjPNS_11code_pair_tE(ptr noundef nonnull align 1 dereferenceable(5) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !205
  switch i8 %i.a, label %_ZNK3CFF8Charset07get_sidEjj.exit [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !207
  %.not.i = icmp uge i32 %1, %2
  %i.b = icmp eq i32 %1, 0
  %or.cond.i = or i1 %i.b, %.not.i
  br i1 %or.cond.i, label %_ZNK3CFF8Charset07get_sidEjj.exit, label %bb.c, !prof !615

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = add i32 %1, -1
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.e
  %i.g = load i16, ptr %i.f, align 1, !tbaa !211
  %i.h = tail call noundef i16 @llvm.bswap.i16(i16 %i.g)
  %i.i = zext i16 %i.h to i32
  br label %_ZNK3CFF8Charset07get_sidEjj.exit

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !207
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not.i9 = icmp ult i32 %1, %2
  br i1 %.not.i9, label %bb.e, label %_ZNK3CFF8Charset07get_sidEjj.exit, !prof !66

bb.e:                                             ; preds = %bb.d
  %.not40.i = icmp eq ptr %3, null                ; 2 uses
  br i1 %.not40.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !190  ; 2 uses
  %.not41.i = icmp ugt i32 %i.l, %1
  br i1 %.not41.i, label %bb.h, label %bb.g, !prof !70

bb.g:                                             ; preds = %bb.f
  %i.m = load i32, ptr %3, align 4, !tbaa !192
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.n = icmp eq i32 %1, 0
  br i1 %i.n, label %_ZNK3CFF8Charset07get_sidEjj.exit, label %bb.i, !prof !70

bb.i:                                             ; preds = %bb.h, %bb.g
  %.033.i = phi i32 [ %i.m, %bb.g ], [ 0, %bb.h ] ; 3 uses
  %.030.i = phi i32 [ %i.l, %bb.g ], [ 1, %bb.h ] ; 3 uses
  %i.o = sub i32 %1, %.030.i                      ; 3 uses
  %i.p = zext i32 %.033.i to i64
  %i.q = getelementptr inbounds nuw [3 x i8], ptr %i.j, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !205
  %i.t = zext i8 %i.s to i32                      ; 2 uses
  %.not4249.i = icmp ugt i32 %i.o, %i.t
  br i1 %.not4249.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.i
  %.134.lcssa.i = phi i32 [ %.033.i, %bb.i ], [ %i.ac, %.lr.ph.i ]
  %.131.lcssa.i = phi i32 [ %.030.i, %bb.i ], [ %i.aa, %.lr.ph.i ]
  %.027.lcssa.i = phi i32 [ %i.o, %bb.i ], [ %i.ab, %.lr.ph.i ]
  %.lcssa.i = phi ptr [ %i.q, %bb.i ], [ %i.ae, %.lr.ph.i ]
  br i1 %.not40.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i
  store i32 %.134.lcssa.i, ptr %3, align 4, !tbaa !105
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.131.lcssa.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !105
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i
  %i.u = load i16, ptr %.lcssa.i, align 1, !tbaa !211
  %i.v = tail call noundef i16 @llvm.bswap.i16(i16 %i.u)
  %i.w = zext i16 %i.v to i32
  %i.x = add nuw nsw i32 %.027.lcssa.i, %i.w
  br label %_ZNK3CFF8Charset07get_sidEjj.exit

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %i.y = phi i32 [ %i.ah, %.lr.ph.i ], [ %i.t, %bb.i ]
  %.02752.i = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.o, %bb.i ]
  %.13151.i = phi i32 [ %i.aa, %.lr.ph.i ], [ %.030.i, %bb.i ]
  %.13450.i = phi i32 [ %i.ac, %.lr.ph.i ], [ %.033.i, %bb.i ]
  %i.z = add nuw nsw i32 %i.y, 1                  ; 2 uses
  %i.aa = add i32 %.13151.i, %i.z                 ; 2 uses
  %i.ab = sub nuw i32 %.02752.i, %i.z             ; 3 uses
  %i.ac = add i32 %.13450.i, 1                    ; 3 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [3 x i8], ptr %i.j, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !205
  %i.ah = zext i8 %i.ag to i32                    ; 2 uses
  %.not42.i = icmp ugt i32 %i.ab, %i.ah
  br i1 %.not42.i, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !616

bb.l:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !207
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not.i10 = icmp ult i32 %1, %2
  br i1 %.not.i10, label %bb.m, label %_ZNK3CFF8Charset07get_sidEjj.exit, !prof !66

bb.m:                                             ; preds = %bb.l
  %.not40.i12 = icmp eq ptr %3, null              ; 2 uses
  br i1 %.not40.i12, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !190 ; 2 uses
  %.not41.i13 = icmp ugt i32 %i.ak, %1
  br i1 %.not41.i13, label %bb.p, label %bb.o, !prof !70

bb.o:                                             ; preds = %bb.n
  %i.al = load i32, ptr %3, align 4, !tbaa !192
  br label %bb.q

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.am = icmp eq i32 %1, 0
  br i1 %i.am, label %_ZNK3CFF8Charset07get_sidEjj.exit, label %bb.q, !prof !70

bb.q:                                             ; preds = %bb.p, %bb.o
  %.033.i14 = phi i32 [ %i.al, %bb.o ], [ 0, %bb.p ] ; 3 uses
  %.030.i15 = phi i32 [ %i.ak, %bb.o ], [ 1, %bb.p ] ; 3 uses
  %i.an = sub i32 %1, %.030.i15                   ; 3 uses
  %i.ao = zext i32 %.033.i14 to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.ar = load i16, ptr %i.aq, align 1, !tbaa !211
  %i.as = tail call noundef i16 @llvm.bswap.i16(i16 %i.ar)
  %i.at = zext i16 %i.as to i32                   ; 2 uses
  %.not4249.i16 = icmp ugt i32 %i.an, %i.at
  br i1 %.not4249.i16, label %.lr.ph.i23, label %._crit_edge.i17

._crit_edge.i17:                                  ; preds = %.lr.ph.i23, %bb.q
  %.134.lcssa.i18 = phi i32 [ %.033.i14, %bb.q ], [ %i.bc, %.lr.ph.i23 ]
  %.131.lcssa.i19 = phi i32 [ %.030.i15, %bb.q ], [ %i.ba, %.lr.ph.i23 ]
  %.027.lcssa.i20 = phi i32 [ %i.an, %bb.q ], [ %i.bb, %.lr.ph.i23 ]
  %.lcssa.i21 = phi ptr [ %i.ap, %bb.q ], [ %i.be, %.lr.ph.i23 ]
  br i1 %.not40.i12, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i17
  store i32 %.134.lcssa.i18, ptr %3, align 4, !tbaa !105
  %.sroa.4.0..sroa_idx.i22 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.131.lcssa.i19, ptr %.sroa.4.0..sroa_idx.i22, align 4, !tbaa !105
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i17
  %i.au = load i16, ptr %.lcssa.i21, align 1, !tbaa !211
  %i.av = tail call noundef i16 @llvm.bswap.i16(i16 %i.au)
  %i.aw = zext i16 %i.av to i32
  %i.ax = add nuw nsw i32 %.027.lcssa.i20, %i.aw
  br label %_ZNK3CFF8Charset07get_sidEjj.exit

.lr.ph.i23:                                       ; preds = %bb.q, %.lr.ph.i23
  %i.ay = phi i32 [ %i.bi, %.lr.ph.i23 ], [ %i.at, %bb.q ]
  %.02752.i24 = phi i32 [ %i.bb, %.lr.ph.i23 ], [ %i.an, %bb.q ]
  %.13151.i25 = phi i32 [ %i.ba, %.lr.ph.i23 ], [ %.030.i15, %bb.q ]
  %.13450.i26 = phi i32 [ %i.bc, %.lr.ph.i23 ], [ %.033.i14, %bb.q ]
  %i.az = add nuw nsw i32 %i.ay, 1                ; 2 uses
  %i.ba = add i32 %.13151.i25, %i.az              ; 2 uses
  %i.bb = sub nuw i32 %.02752.i24, %i.az          ; 3 uses
  %i.bc = add i32 %.13450.i26, 1                  ; 3 uses
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.bd ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %i.bg = load i16, ptr %i.bf, align 1, !tbaa !211
  %i.bh = tail call noundef i16 @llvm.bswap.i16(i16 %i.bg)
  %i.bi = zext i16 %i.bh to i32                   ; 2 uses
  %.not42.i27 = icmp ugt i32 %i.bb, %i.bi
  br i1 %.not42.i27, label %.lr.ph.i23, label %._crit_edge.i17, !llvm.loop !617

_ZNK3CFF8Charset07get_sidEjj.exit:                ; preds = %bb.s, %bb.p, %bb.l, %bb.k, %bb.h, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.h ], [ 0, %bb.a ], [ 0, %bb.b ], [ %i.i, %bb.c ], [ 0, %bb.d ], [ %i.x, %bb.k ], [ 0, %bb.l ], [ %i.ax, %bb.s ], [ 0, %bb.p ]
  ret i32 %.0
}

declare hidden noundef i32 @_ZN2OT4cff129lookup_expert_charset_for_sidEj(i32 noundef) local_unnamed_addr #2

declare hidden noundef i32 @_ZN2OT4cff136lookup_expert_subset_charset_for_sidEj(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIS_IhLb0EELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !387    ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !70

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !105
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !70

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !618

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 268435455
  br i1 %i.j, label %.critedge, label %bb.e, !prof !70

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tIS_IhLb0EELb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !48
  tail call void @hb_free(ptr noundef %i.m) #10
  br label %_ZN11hb_vector_tIS_IhLb0EELb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !48   ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tIS_IhLb0EELb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIS_IhLb0EELb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw i32 %.138, 4
  %i.q = zext i32 %i.p to i64
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #10 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIS_IhLb0EELb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit.thread53, label %bb.k, !prof !70

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !47   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIS_IhLb0EELb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit.thread, label %bb.l, !prof !70

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 4
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !48
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 %i.v, i1 false), !alias.scope !619
  br label %_ZN11hb_vector_tIS_IhLb0EELb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit.thread

_ZN11hb_vector_tIS_IhLb0EELb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = shl nuw i32 %.138, 4
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #10 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tIS_IhLb0EELb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit.thread53, label %_ZN11hb_vector_tIS_IhLb0EELb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit.thread, !prof !399

_ZN11hb_vector_tIS_IhLb0EELb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tIS_IhLb0EELb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !387   ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIS_IhLb0EELb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tIS_IhLb0EELb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIS_IhLb0EELb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tIS_IhLb0EELb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !48
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIS_IhLb0EELb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tIS_IhLb0EELb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIS_IhLb0EELb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !387
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIS_IhLb0EELb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIS_IhLb0EELb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF10cs_opset_tINS_8number_tE23cff1_cs_opset_flatten_tNS_20cff1_cs_interp_env_tENS_15flatten_param_tENS_17path_procs_null_tIS3_S4_EEE17flush_args_and_opEjRS3_RS4_(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(4481) %1, ptr noundef nonnull align 8 dereferenceable(41) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"struct.CFF::str_encoder_t", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.d = load ptr, ptr %2, align 8, !tbaa !512, !nonnull !122, !align !460 ; 2 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !500
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4468 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !494  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !510  ; 2 uses
  %i.j = icmp ult i32 %i.f, %i.i
  br i1 %i.j, label %.lr.ph.i, label %_ZN23cff1_cs_opset_flatten_t10flush_argsERN3CFF20cff1_cs_interp_env_tERNS0_15flatten_param_tE.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.k = load i64, ptr @_hb_NullPool, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = zext i32 %i.f to i64
  br label %bb.b

bb.b:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit.i, %.lr.ph.i
  %i.n = phi i32 [ %i.i, %.lr.ph.i ], [ %i.q, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit.i ]
  %indvars.iv.i = phi i64 [ %i.m, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit.i ] ; 3 uses
  %i.o = zext i32 %i.n to i64
  %.not.i.i.i = icmp samesign ult i64 %indvars.iv.i, %i.o
  br i1 %.not.i.i.i, label %bb.d, label %bb.c, !prof !66

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.g, align 8, !tbaa !513
  store i64 %i.k, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit.i

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi ptr [ @_hb_CrapPool, %bb.c ], [ %i.p, %bb.d ]
  call void @_ZN3CFF13str_encoder_t13encode_num_csERKNS_8number_tE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.i)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.q = load i32, ptr %i.h, align 4, !tbaa !510  ; 2 uses
  %i.r = zext i32 %i.q to i64
  %i.s = icmp samesign ult i64 %indvars.iv.next.i, %i.r
  br i1 %i.s, label %bb.b, label %_ZN23cff1_cs_opset_flatten_t10flush_argsERN3CFF20cff1_cs_interp_env_tERNS0_15flatten_param_tE.exit.loopexit, !llvm.loop !514

_ZN23cff1_cs_opset_flatten_t10flush_argsERN3CFF20cff1_cs_interp_env_tERNS0_15flatten_param_tE.exit.loopexit: ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit.i
  %.pre = load ptr, ptr %2, align 8, !tbaa !512
  br label %_ZN23cff1_cs_opset_flatten_t10flush_argsERN3CFF20cff1_cs_interp_env_tERNS0_15flatten_param_tE.exit

_ZN23cff1_cs_opset_flatten_t10flush_argsERN3CFF20cff1_cs_interp_env_tERNS0_15flatten_param_tE.exit: ; preds = %_ZN23cff1_cs_opset_flatten_t10flush_argsERN3CFF20cff1_cs_interp_env_tERNS0_15flatten_param_tE.exit.loopexit, %bb.a
  %i.t = phi ptr [ %.pre, %_ZN23cff1_cs_opset_flatten_t10flush_argsERN3CFF20cff1_cs_interp_env_tERNS0_15flatten_param_tE.exit.loopexit ], [ %i.d, %bb.a ] ; 11 uses
  store i32 0, ptr %i.e, align 4, !tbaa !494
  store i32 0, ptr %i.h, align 4, !tbaa !510
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.u = icmp ugt i32 %0, 255
  br i1 %i.u, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZN23cff1_cs_opset_flatten_t10flush_argsERN3CFF20cff1_cs_interp_env_tERNS0_15flatten_param_tE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
end_hunk_1
begin_hunk_2_@_ZNK3CFF16subr_subsetter_tI21cff1_subr_subsetter_tNS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEKNS3_4cff120accelerator_subset_tENS_20cff1_cs_interp_env_tE27cff1_cs_opset_subr_subset_tLj14EE10encode_strERKNS_15parsed_cs_str_tEjR11hb_vector_tIhLb0EEb:bb.a
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !80
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hu, i64 4
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !49
  %i.hz = zext i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.hz
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ia, ptr readonly align 1 %i.hs, i64 %i.ht, i1 false), !alias.scope !767
  br label %_ZN3CFF13str_encoder_t8copy_strEPKhj.exit65

_ZN3CFF13str_encoder_t8copy_strEPKhj.exit65:      ; preds = %_ZNK3CFF12subr_remap_t10biased_numEj.exit63, %bb.am
  %i.ib = load ptr, ptr %5, align 8, !tbaa !623, !nonnull !122, !align !460
  br label %.sink.split

bb.an:                                            ; preds = %bb.ae
  %i.ic = getelementptr inbounds nuw i8, ptr %.085, i64 12
  %i.id = load i8, ptr %i.ic, align 4, !tbaa !127 ; 4 uses
  %.not.i.i66 = icmp eq i8 %i.id, 0
  %.pre95 = load ptr, ptr %5, align 8, !tbaa !623 ; 3 uses
  br i1 %.not.i.i66, label %.sink.split, label %bb.ao, !prof !70

bb.ao:                                            ; preds = %bb.an
  %i.ie = load ptr, ptr %.085, align 8, !tbaa !129
  %i.if = zext i8 %i.id to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %.pre95, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !80
  %i.ii = getelementptr inbounds nuw i8, ptr %.pre95, i64 4
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !49
  %i.ik = zext i32 %i.ij to i64
  %i.il = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.ik
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.il, ptr readonly align 1 %i.ie, i64 %i.if, i1 false), !alias.scope !771
  %.pre = load ptr, ptr %5, align 8, !tbaa !623
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ao, %bb.an, %_ZN3CFF13str_encoder_t8copy_strEPKhj.exit65, %_ZN3CFF13str_encoder_t8copy_strEPKhj.exit
  %.sink123 = phi ptr [ %i.gi, %_ZN3CFF13str_encoder_t8copy_strEPKhj.exit ], [ %i.ib, %_ZN3CFF13str_encoder_t8copy_strEPKhj.exit65 ], [ %.pre95, %bb.an ], [ %.pre, %bb.ao ]
  %.sink122.in = phi i8 [ %i.fy, %_ZN3CFF13str_encoder_t8copy_strEPKhj.exit ], [ %i.hr, %_ZN3CFF13str_encoder_t8copy_strEPKhj.exit65 ], [ %i.id, %bb.an ], [ %i.id, %bb.ao ]
  %.sink122 = zext i8 %.sink122.in to i32
  %i.im = getelementptr inbounds nuw i8, ptr %.sink123, i64 4 ; 2 uses
  %i.in = load i32, ptr %i.im, align 4, !tbaa !49
  %i.io = add i32 %i.in, %.sink122
  store i32 %i.io, ptr %i.im, align 4, !tbaa !49
  br label %bb.ap

bb.ap:                                            ; preds = %.sink.split, %bb.ad
  %i.ip = getelementptr inbounds nuw i8, ptr %.085, i64 16 ; 2 uses
  %.not50 = icmp eq ptr %i.ip, %i.dt
  br i1 %.not50, label %._crit_edge87, label %bb.ac

_ZN11hb_vector_tIhLb0EE11alloc_exactEj.exit.thread69: ; preds = %._crit_edge, %_ZN11hb_vector_tIhLb0EE11alloc_exactEj.exit, %._crit_edge87
  %.046 = phi i1 [ %i.ed, %._crit_edge87 ], [ false, %_ZN11hb_vector_tIhLb0EE11alloc_exactEj.exit ], [ false, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret i1 %.046
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3CFF16subr_subsetter_tI21cff1_subr_subsetter_tNS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEKNS3_4cff120accelerator_subset_tENS_20cff1_cs_interp_env_tE27cff1_cs_opset_subr_subset_tLj14EE12encode_subrsERKNS_19parsed_cs_str_vec_tERKNS_12subr_remap_tEjR11hb_vector_tISJ_IhLb0EELb0EE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(68) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !322  ; 10 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %_ZN11hb_vector_tIS_IhLb0EELb0EE12resize_exactEi.exit.thread, label %bb.b, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN11hb_vector_tIS_IhLb0EELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.b, i1 noundef zeroext true)
  br i1 %i.d, label %bb.c, label %_ZN11hb_vector_tIS_IhLb0EELb0EE12resize_exactEi.exit.thread, !prof !79

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !47   ; 6 uses
  %i.g = icmp ugt i32 %i.b, %i.f
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = sub nuw nsw i32 %i.b, %i.f
  %i.i = shl i32 %i.h, 4                          ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i, label %_ZN11hb_vector_tIS_IhLb0EELb0EE12resize_exactEi.exit.thread30, label %bb.e, !prof !70

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  %i.l = zext nneg i32 %i.f to i64
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.l
  %i.n = zext i32 %i.i to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.m, i8 0, i64 %i.n, i1 false)
  br label %_ZN11hb_vector_tIS_IhLb0EELb0EE12resize_exactEi.exit.thread30

bb.f:                                             ; preds = %bb.c
  %i.o = icmp ult i32 %i.b, %i.f
  br i1 %i.o, label %.lr.ph.preheader.i.i.i, label %_ZN11hb_vector_tIS_IhLb0EELb0EE12resize_exactEi.exit

.lr.ph.preheader.i.i.i:                           ; preds = %bb.f
  %i.p = sub nuw i32 %i.f, %i.b
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !48
  %i.s = zext i32 %i.f to i64
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.s
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.07.i.i.i = phi ptr [ %i.v, %_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i ], [ %i.t, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.046.i.i.i = phi i32 [ %i.u, %_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i ], [ %i.p, %.lr.ph.preheader.i.i.i ]
  %i.u = add i32 %.046.i.i.i, -1                  ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -16 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !388
  %i.x = add i32 %i.w, -1
  %spec.select.i.i.i.i.i.i = icmp ult i32 %i.x, -2
  br i1 %spec.select.i.i.i.i.i.i, label %bb.g, label %_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.y = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -12
  store i32 0, ptr %i.y, align 4, !tbaa !49
  %i.z = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !80
  tail call void @hb_free(ptr noundef %i.aa) #10
  br label %_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i

_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i:           ; preds = %bb.g, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIS_IhLb0EELb0EE12resize_exactEi.exit, label %.lr.ph.i.i.i, !llvm.loop !389

_ZN11hb_vector_tIS_IhLb0EELb0EE12resize_exactEi.exit.thread30: ; preds = %bb.d, %bb.e
  store i32 %i.b, ptr %i.e, align 4, !tbaa !47
  br label %.lr.ph

_ZN11hb_vector_tIS_IhLb0EELb0EE12resize_exactEi.exit: ; preds = %_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i, %bb.f
  store i32 %i.b, ptr %i.e, align 4, !tbaa !47
  %.not23 = icmp eq i32 %i.b, 0
  br i1 %.not23, label %_ZN11hb_vector_tIS_IhLb0EELb0EE12resize_exactEi.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN11hb_vector_tIS_IhLb0EELb0EE12resize_exactEi.exit.thread30, %_ZN11hb_vector_tIS_IhLb0EELb0EE12resize_exactEi.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.h

bb.h:                                             ; preds = %_ZN11hb_vector_tIS_IhLb0EELb0EEixEi.exit, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN11hb_vector_tIS_IhLb0EELb0EEixEi.exit ] ; 5 uses
  %i.ag = load i32, ptr %i.ab, align 4, !tbaa !213
  %i.ah = zext i32 %i.ag to i64
  %.not.i.i = icmp samesign ult i64 %indvars.iv, %i.ah
  %i.ai = load ptr, ptr %i.ac, align 8
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv
  %.0.i.i = select i1 %.not.i.i, ptr %i.aj, ptr @_hb_NullPool, !prof !66
  %i.ak = load i32, ptr %.0.i.i, align 4, !tbaa !105 ; 2 uses
  %i.al = load i32, ptr %i.ad, align 4, !tbaa !529
  %.not.i = icmp ult i32 %i.ak, %i.al
  %i.am = load ptr, ptr %i.ae, align 8
  %i.an = zext i32 %i.ak to i64
  %i.ao = getelementptr inbounds nuw [40 x i8], ptr %i.am, i64 %i.an
  %.0.i = select i1 %.not.i, ptr %i.ao, ptr @_hb_NullPool, !prof !66
  %i.ap = load i32, ptr %i.e, align 4, !tbaa !47
  %i.aq = zext i32 %i.ap to i64
  %.not.i20 = icmp samesign ult i64 %indvars.iv, %i.aq
  br i1 %.not.i20, label %bb.j, label %bb.i, !prof !66

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %_ZN11hb_vector_tIS_IhLb0EELb0EEixEi.exit

bb.j:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr %i.af, align 8, !tbaa !48
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %indvars.iv
  br label %_ZN11hb_vector_tIS_IhLb0EELb0EEixEi.exit

_ZN11hb_vector_tIS_IhLb0EELb0EEixEi.exit:         ; preds = %bb.i, %bb.j
  %.0.i21 = phi ptr [ @_hb_CrapPool, %bb.i ], [ %i.as, %bb.j ]
  %i.at = tail call noundef zeroext i1 @_ZNK3CFF16subr_subsetter_tI21cff1_subr_subsetter_tNS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEKNS3_4cff120accelerator_subset_tENS_20cff1_cs_interp_env_tE27cff1_cs_opset_subr_subset_tLj14EE10encode_strERKNS_15parsed_cs_str_tEjR11hb_vector_tIhLb0EEb(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(40) %.0.i, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %.0.i21, i1 noundef zeroext true) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, %wide.trip.count
  %or.cond.not = select i1 %i.at, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %bb.h, label %_ZN11hb_vector_tIS_IhLb0EELb0EE12resize_exactEi.exit.thread, !llvm.loop !775

_ZN11hb_vector_tIS_IhLb0EELb0EE12resize_exactEi.exit.thread: ; preds = %_ZN11hb_vector_tIS_IhLb0EELb0EEixEi.exit, %_ZN11hb_vector_tIS_IhLb0EELb0EE12resize_exactEi.exit, %bb.b, %bb.a
  %.3 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ true, %_ZN11hb_vector_tIS_IhLb0EELb0EE12resize_exactEi.exit ], [ %i.at, %_ZN11hb_vector_tIS_IhLb0EELb0EEixEi.exit ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE11resize_fullEibb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.j, label %bb.b, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %3)
  br i1 %i.b, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !108  ; 6 uses
  %i.e = icmp ugt i32 %1, %i.d
  br i1 %i.e, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  br i1 %2, label %bb.e, label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE11grow_vectorIS1_TnPN12hb_enable_ifIXoosr10hb_is_sameIT_S_INS5_6item_tELb0EEEE5valuesr10hb_is_sameIS5_10hb_array_tIS6_EEE5valueEvE4typeELPv0EEEvj11hb_priorityILj1EE.exit

bb.e:                                             ; preds = %bb.d
  %i.f = sub nuw nsw i32 %1, %i.d
  %i.g = shl i32 %i.f, 4                          ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE11grow_vectorIS1_TnPN12hb_enable_ifIXoosr10hb_is_sameIT_S_INS5_6item_tELb0EEEE5valuesr10hb_is_sameIS5_10hb_array_tIS6_EEE5valueEvE4typeELPv0EEEvj11hb_priorityILj1EE.exit, label %bb.f, !prof !70

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !109
  %i.j = zext nneg i32 %i.d to i64
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.j
  %i.l = zext i32 %i.g to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.k, i8 0, i64 %i.l, i1 false)
  br label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE11grow_vectorIS1_TnPN12hb_enable_ifIXoosr10hb_is_sameIT_S_INS5_6item_tELb0EEEE5valuesr10hb_is_sameIS5_10hb_array_tIS6_EEE5valueEvE4typeELPv0EEEvj11hb_priorityILj1EE.exit

bb.g:                                             ; preds = %bb.c
  %i.m = icmp ult i32 %1, %i.d
  %or.cond = and i1 %2, %i.m
  br i1 %or.cond, label %.lr.ph.preheader.i, label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE11grow_vectorIS1_TnPN12hb_enable_ifIXoosr10hb_is_sameIT_S_INS5_6item_tELb0EEEE5valuesr10hb_is_sameIS5_10hb_array_tIS6_EEE5valueEvE4typeELPv0EEEvj11hb_priorityILj1EE.exit

.lr.ph.preheader.i:                               ; preds = %bb.g
  %i.n = sub nuw i32 %i.d, %1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !109
  %i.q = zext i32 %i.d to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.q
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN11hb_vector_tIS_IhLb0EELb0EED2Ev.exit.i, %.lr.ph.preheader.i
  %.07.i = phi ptr [ %i.t, %_ZN11hb_vector_tIS_IhLb0EELb0EED2Ev.exit.i ], [ %i.r, %.lr.ph.preheader.i ] ; 4 uses
  %.046.i = phi i32 [ %i.s, %_ZN11hb_vector_tIS_IhLb0EELb0EED2Ev.exit.i ], [ %i.n, %.lr.ph.preheader.i ]
  %i.s = add i32 %.046.i, -1                      ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %.07.i, i64 -16 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !387
  %i.v = add i32 %i.u, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.v, -2
  br i1 %spec.select.i.i.i.i, label %bb.h, label %_ZN11hb_vector_tIS_IhLb0EELb0EED2Ev.exit.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds i8, ptr %.07.i, i64 -12 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !47   ; 3 uses
  %.not5.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not5.i.i.i.i, label %_ZN11hb_vector_tIS_IhLb0EELb0EE13shrink_vectorEj.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.h
  %i.y = getelementptr inbounds i8, ptr %.07.i, i64 -8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !48
  %i.aa = zext i32 %i.x to i64
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.aa
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.ad, %_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i.i ], [ %i.ab, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.046.i.i.i.i = phi i32 [ %i.ac, %_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i.i ], [ %i.x, %.lr.ph.preheader.i.i.i.i ]
  %i.ac = add i32 %.046.i.i.i.i, -1               ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -16 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !388
  %i.af = add i32 %i.ae, -1
  %spec.select.i.i.i.i.i.i.i = icmp ult i32 %i.af, -2
  br i1 %spec.select.i.i.i.i.i.i.i, label %bb.i, label %_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ag = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -12
  store i32 0, ptr %i.ag, align 4, !tbaa !49
  %i.ah = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !80
  tail call void @hb_free(ptr noundef %i.ai) #10
  br label %_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i.i

_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i.i:         ; preds = %bb.i, %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i, label %_ZN11hb_vector_tIS_IhLb0EELb0EE13shrink_vectorEj.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !389

_ZN11hb_vector_tIS_IhLb0EELb0EE13shrink_vectorEj.exit.i.i.i: ; preds = %_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i.i, %bb.h
  store i32 0, ptr %i.w, align 4, !tbaa !47
  %i.aj = getelementptr inbounds i8, ptr %.07.i, i64 -8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !48
  tail call void @hb_free(ptr noundef %i.ak) #10
  br label %_ZN11hb_vector_tIS_IhLb0EELb0EED2Ev.exit.i

_ZN11hb_vector_tIS_IhLb0EELb0EED2Ev.exit.i:       ; preds = %_ZN11hb_vector_tIS_IhLb0EELb0EE13shrink_vectorEj.exit.i.i.i, %.lr.ph.i
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE11grow_vectorIS1_TnPN12hb_enable_ifIXoosr10hb_is_sameIT_S_INS5_6item_tELb0EEEE5valuesr10hb_is_sameIS5_10hb_array_tIS6_EEE5valueEvE4typeELPv0EEEvj11hb_priorityILj1EE.exit, label %.lr.ph.i, !llvm.loop !390

_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE11grow_vectorIS1_TnPN12hb_enable_ifIXoosr10hb_is_sameIT_S_INS5_6item_tELb0EEEE5valuesr10hb_is_sameIS5_10hb_array_tIS6_EEE5valueEvE4typeELPv0EEEvj11hb_priorityILj1EE.exit: ; preds = %_ZN11hb_vector_tIS_IhLb0EELb0EED2Ev.exit.i, %bb.f, %bb.e, %bb.g, %bb.d
  store i32 %1, ptr %i.c, align 4, !tbaa !108
  br label %bb.j

bb.j:                                             ; preds = %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE11grow_vectorIS1_TnPN12hb_enable_ifIXoosr10hb_is_sameIT_S_INS5_6item_tELb0EEEE5valuesr10hb_is_sameIS5_10hb_array_tIS6_EEE5valueEvE4typeELPv0EEEvj11hb_priorityILj1EE.exit, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE11grow_vectorIS1_TnPN12hb_enable_ifIXoosr10hb_is_sameIT_S_INS5_6item_tELb0EEEE5valuesr10hb_is_sameIS5_10hb_array_tIS6_EEE5valueEvE4typeELPv0EEEvj11hb_priorityILj1EE.exit ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !386    ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !70

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !105
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !70

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !776

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 268435455
  br i1 %i.j, label %.critedge, label %bb.e, !prof !70

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !109
  tail call void @hb_free(ptr noundef %i.m) #10
  br label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !109  ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw i32 %.138, 4
  %i.q = zext i32 %i.p to i64
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #10 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread53, label %bb.k, !prof !70

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !108  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread, label %bb.l, !prof !70

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 4
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !109
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 %i.v, i1 false), !alias.scope !777
  br label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread

_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = shl nuw i32 %.138, 4
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #10 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread53, label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread, !prof !399

_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !386   ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !109
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread ], [ %i.k, %.critedge ]
end_hunk_2
