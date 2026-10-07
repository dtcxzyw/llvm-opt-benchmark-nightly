Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/cap_mjpeg_encoder?download=true
inline.NumInlined: 516
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNSt5dequeIN2cv5mjpeg12mjpeg_bufferESaIS2_EE17_M_reallocate_mapEmb:bb.a
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIN2cv5mjpeg12mjpeg_bufferESaIS2_EE15_M_allocate_mapEm.exit, !prof !92

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %.noexc.i, label %.noexc3.i

.noexc.i:                                         ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

.noexc3.i:                                        ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZNSt11_Deque_baseIN2cv5mjpeg12mjpeg_bufferESaIS2_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #22 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !100 ; 3 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !99
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  %i.bc = icmp sgt i64 %i.bb, 8
  br i1 %i.bc, label %bb.m, label %bb.n, !prof !180

bb.m:                                             ; preds = %_ZNSt11_Deque_baseIN2cv5mjpeg12mjpeg_bufferESaIS2_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.aw, i64 %i.bb, i1 false)
  br label %_ZSt4copyIPPN2cv5mjpeg12mjpeg_bufferES4_ET0_T_S6_S5_.exit24

bb.n:                                             ; preds = %_ZNSt11_Deque_baseIN2cv5mjpeg12mjpeg_bufferESaIS2_EE15_M_allocate_mapEm.exit
  %i.bd = icmp eq i64 %i.bb, 8
  br i1 %i.bd, label %bb.o, label %_ZSt4copyIPPN2cv5mjpeg12mjpeg_bufferES4_ET0_T_S6_S5_.exit24

bb.o:                                             ; preds = %bb.n
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !61
  store ptr %i.be, ptr %i.av, align 8, !tbaa !61
  br label %_ZSt4copyIPPN2cv5mjpeg12mjpeg_bufferES4_ET0_T_S6_S5_.exit24

_ZSt4copyIPPN2cv5mjpeg12mjpeg_bufferES4_ET0_T_S6_S5_.exit24: ; preds = %bb.m, %bb.n, %bb.o
  %i.bf = load ptr, ptr %0, align 8, !tbaa !98
  %i.bg = load i64, ptr %i.k, align 8, !tbaa !97
  %i.bh = shl i64 %i.bg, 3
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bh) #21
  store ptr %i.aq, ptr %0, align 8, !tbaa !98
  store i64 %i.am, ptr %i.k, align 8, !tbaa !97
  br label %_ZSt4copyIPPN2cv5mjpeg12mjpeg_bufferES4_ET0_T_S6_S5_.exit

_ZSt4copyIPPN2cv5mjpeg12mjpeg_bufferES4_ET0_T_S6_S5_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPN2cv5mjpeg12mjpeg_bufferES4_ET0_T_S6_S5_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPN2cv5mjpeg12mjpeg_bufferES4_ET0_T_S6_S5_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !57
  %i.bi = load ptr, ptr %.0, align 8, !tbaa !61   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !59
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 480
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !60
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8 ; 2 uses
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !57
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !61 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !59
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 480
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !60
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !87     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !94
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !53
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !53
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !95
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #20
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #22 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i32 0, ptr %i.y, align 4, !tbaa !53
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !53
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !94
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #21
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36: ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !87
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !95
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !94
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv5mjpeg12convertToYUVEiiiPsS1_PKhiiiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = icmp sgt i32 %1, 1
  br i1 %i.a, label %bb.b, label %.preheader166

.preheader166:                                    ; preds = %bb.a
  %i.b = icmp sgt i32 %6, 0
  br i1 %i.b, label %.preheader165.lr.ph, label %.loopexit

.preheader165.lr.ph:                              ; preds = %.preheader166
  %i.c = icmp sgt i32 %7, 0
  %i.d = sext i32 %8 to i64                       ; 2 uses
  br i1 %i.c, label %.preheader165.preheader, label %.loopexit

.preheader165.preheader:                          ; preds = %.preheader165.lr.ph
  %wide.trip.count = zext nneg i32 %7 to i64      ; 10 uses
  %i.e = add nsw i32 %6, -1
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = shl nuw nsw i64 %i.f, 4
  %i.h = shl nuw nsw i64 %wide.trip.count, 1
  %i.i = getelementptr i8, ptr %4, i64 %i.g
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.h
  %i.j = mul nsw i64 %i.d, %i.f
  %i.k = getelementptr i8, ptr %5, i64 %i.j
  %scevgep260 = getelementptr i8, ptr %i.k, i64 %wide.trip.count
  %min.iters.check = icmp ult i32 %7, 4
  %bound0 = icmp ult ptr %4, %scevgep260
  %bound1 = icmp ult ptr %5, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %8, 0
  %i.l = or i1 %found.conflict, %stride.check
  %min.iters.check261 = icmp ult i32 %7, 16
  %i.m = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  %n.vec263 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n267 = icmp eq i64 %n.vec263, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check

bb.b:                                             ; preds = %bb.a
  %i.n = icmp eq i32 %0, 3
  %i.o = icmp eq i32 %6, 16
  %or.cond = and i1 %i.n, %i.o
  %i.p = icmp eq i32 %7, 16
  %or.cond3 = and i1 %or.cond, %i.p
  br i1 %or.cond3, label %.preheader161, label %.preheader163.a

.preheader163.a:                                  ; preds = %bb.b
  %i.q = icmp sgt i32 %6, 0
  br i1 %i.q, label %.preheader162.lr.ph, label %.loopexit

.preheader162.lr.ph:                              ; preds = %.preheader163.a
  %i.r = icmp sgt i32 %7, 0
  %i.s = sext i32 %10 to i64
  %i.t = sext i32 %9 to i64
  %i.u = sext i32 %2 to i64                       ; 3 uses
  %i.v = mul nsw i32 %7, %2
  %i.w = sext i32 %i.v to i64
  %i.x = sub nsw i64 0, %i.w                      ; 3 uses
  %i.y = sext i32 %8 to i64                       ; 3 uses
  br i1 %i.r, label %.preheader162.lr.ph.split, label %.loopexit

.preheader162.lr.ph.split:                        ; preds = %.preheader162.lr.ph
  %wide.trip.count236 = zext nneg i32 %7 to i64   ; 3 uses
  switch i32 %0, label %.preheader162 [
    i32 2, label %.preheader162.us
    i32 1, label %.preheader162.us195
  ]

.preheader162.us:                                 ; preds = %.preheader162.lr.ph.split, %._crit_edge174.split.us.us
  %.1188.us = phi ptr [ %spec.select.us, %._crit_edge174.split.us.us ], [ %3, %.preheader162.lr.ph.split ] ; 2 uses
  %.1143185.us = phi ptr [ %11, %._crit_edge174.split.us.us ], [ %4, %.preheader162.lr.ph.split ] ; 2 uses
  %.2147184.us = phi ptr [ %i.bu, %._crit_edge174.split.us.us ], [ %5, %.preheader162.lr.ph.split ]
  %.1149183.us = phi i32 [ %i.br, %._crit_edge174.split.us.us ], [ 0, %.preheader162.lr.ph.split ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader162.us
  %indvars.iv227 = phi i64 [ %indvars.iv.next228, %bb.c ], [ 0, %.preheader162.us ] ; 3 uses
  %.3173.us.us = phi ptr [ %i.bp, %bb.c ], [ %.2147184.us, %.preheader162.us ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.3173.us.us, i64 2
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !10
  %i.ab = zext i8 %i.aa to i32                    ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.3173.us.us, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !10
  %i.ae = zext i8 %i.ad to i32                    ; 3 uses
  %i.af = load i8, ptr %.3173.us.us, align 1, !tbaa !10
  %i.ag = zext i8 %i.af to i32                    ; 3 uses
  %i.ah = mul nuw nsw i32 %i.ab, 1225
  %i.ai = mul nuw nsw i32 %i.ae, 2404
  %i.aj = mul nuw nsw i32 %i.ag, 467
  %i.ak = add nuw nsw i32 %i.ah, 2048
  %i.al = add nuw nsw i32 %i.ak, %i.ai
  %i.am = add nuw nsw i32 %i.al, %i.aj
  %i.an = lshr i32 %i.am, 12
  %i.ao = mul i32 %i.ab, 268434765
  %i.ap = mul i32 %i.ae, 268434099
  %i.aq = shl nuw nsw i32 %i.ag, 11
  %i.ar = add i32 %i.ao, 2048
  %i.as = add i32 %i.ar, %i.ap
  %i.at = add i32 %i.as, %i.aq
  %i.au = lshr i32 %i.at, 12
  %i.av = shl nuw nsw i32 %i.ab, 11
  %i.aw = mul i32 %i.ae, 268433741
  %i.ax = mul i32 %i.ag, 268435123
  %i.ay = add nuw nsw i32 %i.av, 2048
  %i.az = add i32 %i.ay, %i.aw
  %i.ba = add i32 %i.az, %i.ax
  %i.bb = lshr i32 %i.ba, 12
  %i.bc = lshr i64 %indvars.iv227, 1
  %i.bd = trunc nuw nsw i32 %i.an to i16
  %i.be = add nsw i16 %i.bd, -128
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %.1143185.us, i64 %indvars.iv227
  store i16 %i.be, ptr %i.bf, align 2, !tbaa !55
  %i.bg = and i64 %i.bc, 2147483647
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %.1188.us, i64 %i.bg ; 3 uses
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !55
  %i.bj = trunc i32 %i.au to i16
  %i.bk = add i16 %i.bi, %i.bj
  store i16 %i.bk, ptr %i.bh, align 2, !tbaa !55
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !55
  %i.bn = trunc i32 %i.bb to i16
  %i.bo = add i16 %i.bm, %i.bn
  store i16 %i.bo, ptr %i.bl, align 2, !tbaa !55
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv227, 1 ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %.3173.us.us, i64 %i.u ; 2 uses
  %exitcond231.not = icmp eq i64 %indvars.iv.next228, %wide.trip.count236
  br i1 %exitcond231.not, label %._crit_edge174.split.us.us, label %bb.c, !llvm.loop !181

._crit_edge174.split.us.us:                       ; preds = %bb.c
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 %i.x
  %i.br = add nuw nsw i32 %.1149183.us, 1         ; 2 uses
  %i.bs = shl i32 %.1149183.us, 5
  %i.bt = and i32 %i.bs, 32
  %spec.select.idx.us = zext nneg i32 %i.bt to i64
  %spec.select.us = getelementptr inbounds nuw i8, ptr %.1188.us, i64 %spec.select.idx.us
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 %i.y
  %11 = getelementptr inbounds nuw i8, ptr %.1143185.us, i64 32
  %exitcond232.not = icmp eq i32 %i.br, %6
  br i1 %exitcond232.not, label %.loopexit, label %.preheader162.us, !llvm.loop !182

.preheader162.us195:                              ; preds = %.preheader162.lr.ph.split, %._crit_edge174.split.split.us.us
  %.1188.us196 = phi ptr [ %spec.select.us205, %._crit_edge174.split.split.us.us ], [ %3, %.preheader162.lr.ph.split ] ; 2 uses
  %.1143185.us197 = phi ptr [ %12, %._crit_edge174.split.split.us.us ], [ %4, %.preheader162.lr.ph.split ] ; 2 uses
  %.2147184.us198 = phi ptr [ %i.dq, %._crit_edge174.split.split.us.us ], [ %5, %.preheader162.lr.ph.split ]
  %.1149183.us199 = phi i32 [ %i.dn, %._crit_edge174.split.split.us.us ], [ 0, %.preheader162.lr.ph.split ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader162.us195
  %indvars.iv221 = phi i64 [ %indvars.iv.next222, %bb.d ], [ 0, %.preheader162.us195 ] ; 3 uses
  %.3173.us176.us = phi ptr [ %i.dl, %bb.d ], [ %.2147184.us198, %.preheader162.us195 ] ; 4 uses
  %i.bv = load i8, ptr %.3173.us176.us, align 1, !tbaa !10
  %i.bw = zext i8 %i.bv to i32                    ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.3173.us176.us, i64 1
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !10
  %i.bz = zext i8 %i.by to i32                    ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.3173.us176.us, i64 2
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !10
  %i.cc = zext i8 %i.cb to i32                    ; 3 uses
  %i.cd = mul nuw nsw i32 %i.bw, 1225
  %i.ce = mul nuw nsw i32 %i.bz, 2404
  %i.cf = mul nuw nsw i32 %i.cc, 467
  %i.cg = add nuw nsw i32 %i.cd, 2048
  %i.ch = add nuw nsw i32 %i.cg, %i.ce
  %i.ci = add nuw nsw i32 %i.ch, %i.cf
  %i.cj = lshr i32 %i.ci, 12
  %i.ck = mul i32 %i.bw, 268434765
  %i.cl = mul i32 %i.bz, 268434099
  %i.cm = shl nuw nsw i32 %i.cc, 11
  %i.cn = add i32 %i.ck, 2048
  %i.co = add i32 %i.cn, %i.cl
  %i.cp = add i32 %i.co, %i.cm
  %i.cq = lshr i32 %i.cp, 12
  %i.cr = shl nuw nsw i32 %i.bw, 11
  %i.cs = mul i32 %i.bz, 268433741
  %i.ct = mul i32 %i.cc, 268435123
  %i.cu = add nuw nsw i32 %i.cr, 2048
  %i.cv = add i32 %i.cu, %i.cs
  %i.cw = add i32 %i.cv, %i.ct
  %i.cx = lshr i32 %i.cw, 12
  %i.cy = lshr i64 %indvars.iv221, 1
  %i.cz = trunc nuw nsw i32 %i.cj to i16
  %i.da = add nsw i16 %i.cz, -128
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %.1143185.us197, i64 %indvars.iv221
  store i16 %i.da, ptr %i.db, align 2, !tbaa !55
  %i.dc = and i64 %i.cy, 2147483647
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %.1188.us196, i64 %i.dc ; 3 uses
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !55
  %i.df = trunc i32 %i.cq to i16
  %i.dg = add i16 %i.de, %i.df
  store i16 %i.dg, ptr %i.dd, align 2, !tbaa !55
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !55
  %i.dj = trunc i32 %i.cx to i16
  %i.dk = add i16 %i.di, %i.dj
  store i16 %i.dk, ptr %i.dh, align 2, !tbaa !55
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1 ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %.3173.us176.us, i64 %i.u ; 2 uses
  %exitcond225.not = icmp eq i64 %indvars.iv.next222, %wide.trip.count236
  br i1 %exitcond225.not, label %._crit_edge174.split.split.us.us, label %bb.d, !llvm.loop !181

._crit_edge174.split.split.us.us:                 ; preds = %bb.d
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 %i.x
  %i.dn = add nuw nsw i32 %.1149183.us199, 1      ; 2 uses
  %i.do = shl i32 %.1149183.us199, 5
  %i.dp = and i32 %i.do, 32
  %spec.select.idx.us204 = zext nneg i32 %i.dp to i64
  %spec.select.us205 = getelementptr inbounds nuw i8, ptr %.1188.us196, i64 %spec.select.idx.us204
  %i.dq = getelementptr inbounds i8, ptr %i.dm, i64 %i.y
  %12 = getelementptr inbounds nuw i8, ptr %.1143185.us197, i64 32
  %exitcond226.not = icmp eq i32 %i.dn, %6
  br i1 %exitcond226.not, label %.loopexit, label %.preheader162.us195, !llvm.loop !182

.preheader161:                                    ; preds = %bb.b
  %i.dr = sext i32 %8 to i64                      ; 8 uses
  %i.ds = sext i32 %10 to i64                     ; 8 uses
  %i.dt = add nsw i32 %10, %8
  %i.du = sext i32 %i.dt to i64                   ; 8 uses
  %i.dv = sext i32 %9 to i64                      ; 8 uses
  %i.dw = add nsw i32 %9, %8
  %i.dx = sext i32 %i.dw to i64                   ; 8 uses
  %i.dy = shl nsw i32 %2, 4
  %i.dz = sext i32 %i.dy to i64
  %i.ea = sub nsw i64 0, %i.dz
  %i.eb = shl nsw i32 %8, 1
  %i.ec = sext i32 %i.eb to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader161, %.preheader
  %.0211 = phi ptr [ %3, %.preheader161 ], [ %i.uu, %.preheader ] ; 17 uses
  %.0142210 = phi ptr [ %4, %.preheader161 ], [ %i.ut, %.preheader ] ; 33 uses
  %.0145209 = phi ptr [ %5, %.preheader161 ], [ %i.us, %.preheader ] ; 22 uses
  %.0148208 = phi i32 [ 0, %.preheader161 ], [ %i.ur, %.preheader ] ; 2 uses
  %i.ed = load i8, ptr %.0145209, align 1, !tbaa !10
  %i.ee = zext i8 %i.ed to i16
  %i.ef = add nsw i16 %i.ee, -128
  store i16 %i.ef, ptr %.0142210, align 2, !tbaa !55
  %i.eg = getelementptr inbounds nuw i8, ptr %.0145209, i64 1
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !10
  %i.ei = zext i8 %i.eh to i16
  %i.ej = add nsw i16 %i.ei, -128
  %i.ek = getelementptr inbounds nuw i8, ptr %.0142210, i64 2
  store i16 %i.ej, ptr %i.ek, align 2, !tbaa !55
  %i.el = getelementptr inbounds i8, ptr %.0145209, i64 %i.dr ; 2 uses
  %i.em = load i8, ptr %i.el, align 1, !tbaa !10
  %i.en = zext i8 %i.em to i16
  %i.eo = add nsw i16 %i.en, -128
  %13 = getelementptr inbounds nuw i8, ptr %.0142210, i64 32
  store i16 %i.eo, ptr %13, align 2, !tbaa !55
  %i.ep = getelementptr i8, ptr %i.el, i64 1
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !10
  %i.er = zext i8 %i.eq to i16
  %i.es = add nsw i16 %i.er, -128
  %i.et = getelementptr inbounds nuw i8, ptr %.0142210, i64 34
  store i16 %i.es, ptr %i.et, align 2, !tbaa !55
  %i.eu = getelementptr inbounds i8, ptr %.0145209, i64 %i.ds ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !10
  %i.ew = zext i8 %i.ev to i16
  %i.ex = getelementptr i8, ptr %i.eu, i64 1
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !10
  %i.ez = zext i8 %i.ey to i16
  %i.fa = getelementptr inbounds i8, ptr %.0145209, i64 %i.du ; 2 uses
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !10
  %i.fc = zext i8 %i.fb to i16
  %i.fd = getelementptr i8, ptr %i.fa, i64 1
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !10
  %i.ff = zext i8 %i.fe to i16
  %i.fg = or disjoint i16 %i.ew, -512
  %i.fh = add nuw nsw i16 %i.fg, %i.ez
  %i.fi = add nsw i16 %i.fh, %i.fc
  %i.fj = add nsw i16 %i.fi, %i.ff
  store i16 %i.fj, ptr %.0211, align 2, !tbaa !55
  %i.fk = getelementptr inbounds i8, ptr %.0145209, i64 %i.dv ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !10
  %i.fm = zext i8 %i.fl to i16
  %i.fn = getelementptr i8, ptr %i.fk, i64 1
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !10
  %i.fp = zext i8 %i.fo to i16
  %i.fq = getelementptr inbounds i8, ptr %.0145209, i64 %i.dx ; 2 uses
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !10
  %i.fs = zext i8 %i.fr to i16
  %i.ft = getelementptr i8, ptr %i.fq, i64 1
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !10
  %i.fv = zext i8 %i.fu to i16
  %i.fw = or disjoint i16 %i.fm, -512
  %i.fx = add nuw nsw i16 %i.fw, %i.fp
  %i.fy = add nsw i16 %i.fx, %i.fs
  %i.fz = add nsw i16 %i.fy, %i.fv
  %i.ga = getelementptr inbounds nuw i8, ptr %.0211, i64 16
  store i16 %i.fz, ptr %i.ga, align 2, !tbaa !55
  %i.gb = getelementptr inbounds nuw i8, ptr %.0145209, i64 2 ; 6 uses
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !10
  %i.gd = zext i8 %i.gc to i16
  %i.ge = add nsw i16 %i.gd, -128
  %i.gf = getelementptr inbounds nuw i8, ptr %.0142210, i64 4
  store i16 %i.ge, ptr %i.gf, align 2, !tbaa !55
  %i.gg = getelementptr inbounds nuw i8, ptr %.0145209, i64 3
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !10
  %i.gi = zext i8 %i.gh to i16
  %i.gj = add nsw i16 %i.gi, -128
  %i.gk = getelementptr inbounds nuw i8, ptr %.0142210, i64 6
  store i16 %i.gj, ptr %i.gk, align 2, !tbaa !55
  %i.gl = getelementptr inbounds i8, ptr %i.gb, i64 %i.dr ; 2 uses
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !10
  %i.gn = zext i8 %i.gm to i16
  %i.go = add nsw i16 %i.gn, -128
  %i.gp = getelementptr inbounds nuw i8, ptr %.0142210, i64 36
  store i16 %i.go, ptr %i.gp, align 2, !tbaa !55
  %i.gq = getelementptr i8, ptr %i.gl, i64 1
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !10
  %i.gs = zext i8 %i.gr to i16
  %i.gt = add nsw i16 %i.gs, -128
  %i.gu = getelementptr inbounds nuw i8, ptr %.0142210, i64 38
  store i16 %i.gt, ptr %i.gu, align 2, !tbaa !55
  %i.gv = getelementptr inbounds i8, ptr %i.gb, i64 %i.ds ; 2 uses
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !10
  %i.gx = zext i8 %i.gw to i16
  %i.gy = getelementptr i8, ptr %i.gv, i64 1
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !10
  %i.ha = zext i8 %i.gz to i16
  %i.hb = getelementptr inbounds i8, ptr %i.gb, i64 %i.du ; 2 uses
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !10
  %i.hd = zext i8 %i.hc to i16
  %i.he = getelementptr i8, ptr %i.hb, i64 1
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !10
  %i.hg = zext i8 %i.hf to i16
  %i.hh = or disjoint i16 %i.gx, -512
  %i.hi = add nuw nsw i16 %i.hh, %i.ha
  %i.hj = add nsw i16 %i.hi, %i.hd
  %i.hk = add nsw i16 %i.hj, %i.hg
  %i.hl = getelementptr inbounds nuw i8, ptr %.0211, i64 2
  store i16 %i.hk, ptr %i.hl, align 2, !tbaa !55
  %i.hm = getelementptr inbounds i8, ptr %i.gb, i64 %i.dv ; 2 uses
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !10
  %i.ho = zext i8 %i.hn to i16
  %i.hp = getelementptr i8, ptr %i.hm, i64 1
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !10
  %i.hr = zext i8 %i.hq to i16
  %i.hs = getelementptr inbounds i8, ptr %i.gb, i64 %i.dx ; 2 uses
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !10
  %i.hu = zext i8 %i.ht to i16
  %i.hv = getelementptr i8, ptr %i.hs, i64 1
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !10
  %i.hx = zext i8 %i.hw to i16
  %i.hy = or disjoint i16 %i.ho, -512
  %i.hz = add nuw nsw i16 %i.hy, %i.hr
  %i.ia = add nsw i16 %i.hz, %i.hu
  %i.ib = add nsw i16 %i.ia, %i.hx
  %i.ic = getelementptr inbounds nuw i8, ptr %.0211, i64 18
  store i16 %i.ib, ptr %i.ic, align 2, !tbaa !55
  %i.id = getelementptr inbounds nuw i8, ptr %.0145209, i64 4 ; 6 uses
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !10
  %i.if = zext i8 %i.ie to i16
  %i.ig = add nsw i16 %i.if, -128
  %i.ih = getelementptr inbounds nuw i8, ptr %.0142210, i64 8
  store i16 %i.ig, ptr %i.ih, align 2, !tbaa !55
  %i.ii = getelementptr inbounds nuw i8, ptr %.0145209, i64 5
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !10
  %i.ik = zext i8 %i.ij to i16
  %i.il = add nsw i16 %i.ik, -128
  %i.im = getelementptr inbounds nuw i8, ptr %.0142210, i64 10
  store i16 %i.il, ptr %i.im, align 2, !tbaa !55
  %i.in = getelementptr inbounds i8, ptr %i.id, i64 %i.dr ; 2 uses
  %i.io = load i8, ptr %i.in, align 1, !tbaa !10
  %i.ip = zext i8 %i.io to i16
  %i.iq = add nsw i16 %i.ip, -128
  %i.ir = getelementptr inbounds nuw i8, ptr %.0142210, i64 40
  store i16 %i.iq, ptr %i.ir, align 2, !tbaa !55
  %i.is = getelementptr i8, ptr %i.in, i64 1
  %i.it = load i8, ptr %i.is, align 1, !tbaa !10
  %i.iu = zext i8 %i.it to i16
  %i.iv = add nsw i16 %i.iu, -128
  %i.iw = getelementptr inbounds nuw i8, ptr %.0142210, i64 42
  store i16 %i.iv, ptr %i.iw, align 2, !tbaa !55
  %i.ix = getelementptr inbounds i8, ptr %i.id, i64 %i.ds ; 2 uses
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !10
  %i.iz = zext i8 %i.iy to i16
  %i.ja = getelementptr i8, ptr %i.ix, i64 1
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !10
  %i.jc = zext i8 %i.jb to i16
  %i.jd = getelementptr inbounds i8, ptr %i.id, i64 %i.du ; 2 uses
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !10
  %i.jf = zext i8 %i.je to i16
  %i.jg = getelementptr i8, ptr %i.jd, i64 1
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !10
  %i.ji = zext i8 %i.jh to i16
  %i.jj = or disjoint i16 %i.iz, -512
  %i.jk = add nuw nsw i16 %i.jj, %i.jc
  %i.jl = add nsw i16 %i.jk, %i.jf
  %i.jm = add nsw i16 %i.jl, %i.ji
  %i.jn = getelementptr inbounds nuw i8, ptr %.0211, i64 4
  store i16 %i.jm, ptr %i.jn, align 2, !tbaa !55
  %i.jo = getelementptr inbounds i8, ptr %i.id, i64 %i.dv ; 2 uses
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !10
  %i.jq = zext i8 %i.jp to i16
  %i.jr = getelementptr i8, ptr %i.jo, i64 1
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !10
  %i.jt = zext i8 %i.js to i16
  %i.ju = getelementptr inbounds i8, ptr %i.id, i64 %i.dx ; 2 uses
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !10
  %i.jw = zext i8 %i.jv to i16
  %i.jx = getelementptr i8, ptr %i.ju, i64 1
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !10
  %i.jz = zext i8 %i.jy to i16
  %i.ka = or disjoint i16 %i.jq, -512
  %i.kb = add nuw nsw i16 %i.ka, %i.jt
  %i.kc = add nsw i16 %i.kb, %i.jw
  %i.kd = add nsw i16 %i.kc, %i.jz
  %i.ke = getelementptr inbounds nuw i8, ptr %.0211, i64 20
  store i16 %i.kd, ptr %i.ke, align 2, !tbaa !55
  %i.kf = getelementptr inbounds nuw i8, ptr %.0145209, i64 6 ; 6 uses
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !10
  %i.kh = zext i8 %i.kg to i16
  %i.ki = add nsw i16 %i.kh, -128
  %i.kj = getelementptr inbounds nuw i8, ptr %.0142210, i64 12
  store i16 %i.ki, ptr %i.kj, align 2, !tbaa !55
  %i.kk = getelementptr inbounds nuw i8, ptr %.0145209, i64 7
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !10
  %i.km = zext i8 %i.kl to i16
  %i.kn = add nsw i16 %i.km, -128
  %i.ko = getelementptr inbounds nuw i8, ptr %.0142210, i64 14
  store i16 %i.kn, ptr %i.ko, align 2, !tbaa !55
  %i.kp = getelementptr inbounds i8, ptr %i.kf, i64 %i.dr ; 2 uses
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !10
  %i.kr = zext i8 %i.kq to i16
  %i.ks = add nsw i16 %i.kr, -128
  %i.kt = getelementptr inbounds nuw i8, ptr %.0142210, i64 44
  store i16 %i.ks, ptr %i.kt, align 2, !tbaa !55
  %i.ku = getelementptr i8, ptr %i.kp, i64 1
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !10
  %i.kw = zext i8 %i.kv to i16
  %i.kx = add nsw i16 %i.kw, -128
  %i.ky = getelementptr inbounds nuw i8, ptr %.0142210, i64 46
  store i16 %i.kx, ptr %i.ky, align 2, !tbaa !55
  %i.kz = getelementptr inbounds i8, ptr %i.kf, i64 %i.ds ; 2 uses
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !10
  %i.lb = zext i8 %i.la to i16
  %i.lc = getelementptr i8, ptr %i.kz, i64 1
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !10
  %i.le = zext i8 %i.ld to i16
  %i.lf = getelementptr inbounds i8, ptr %i.kf, i64 %i.du ; 2 uses
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !10
  %i.lh = zext i8 %i.lg to i16
  %i.li = getelementptr i8, ptr %i.lf, i64 1
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !10
  %i.lk = zext i8 %i.lj to i16
  %i.ll = or disjoint i16 %i.lb, -512
  %i.lm = add nuw nsw i16 %i.ll, %i.le
  %i.ln = add nsw i16 %i.lm, %i.lh
  %i.lo = add nsw i16 %i.ln, %i.lk
  %i.lp = getelementptr inbounds nuw i8, ptr %.0211, i64 6
  store i16 %i.lo, ptr %i.lp, align 2, !tbaa !55
  %i.lq = getelementptr inbounds i8, ptr %i.kf, i64 %i.dv ; 2 uses
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !10
  %i.ls = zext i8 %i.lr to i16
  %i.lt = getelementptr i8, ptr %i.lq, i64 1
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !10
  %i.lv = zext i8 %i.lu to i16
  %i.lw = getelementptr inbounds i8, ptr %i.kf, i64 %i.dx ; 2 uses
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !10
  %i.ly = zext i8 %i.lx to i16
  %i.lz = getelementptr i8, ptr %i.lw, i64 1
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !10
  %i.mb = zext i8 %i.ma to i16
  %i.mc = or disjoint i16 %i.ls, -512
  %i.md = add nuw nsw i16 %i.mc, %i.lv
  %i.me = add nsw i16 %i.md, %i.ly
  %i.mf = add nsw i16 %i.me, %i.mb
  %i.mg = getelementptr inbounds nuw i8, ptr %.0211, i64 22
  store i16 %i.mf, ptr %i.mg, align 2, !tbaa !55
  %i.mh = getelementptr inbounds nuw i8, ptr %.0145209, i64 8 ; 6 uses
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !10
  %i.mj = zext i8 %i.mi to i16
  %i.mk = add nsw i16 %i.mj, -128
  %i.ml = getelementptr inbounds nuw i8, ptr %.0142210, i64 16
  store i16 %i.mk, ptr %i.ml, align 2, !tbaa !55
  %i.mm = getelementptr inbounds nuw i8, ptr %.0145209, i64 9
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !10
  %i.mo = zext i8 %i.mn to i16
  %i.mp = add nsw i16 %i.mo, -128
  %i.mq = getelementptr inbounds nuw i8, ptr %.0142210, i64 18
  store i16 %i.mp, ptr %i.mq, align 2, !tbaa !55
  %i.mr = getelementptr inbounds i8, ptr %i.mh, i64 %i.dr ; 2 uses
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !10
  %i.mt = zext i8 %i.ms to i16
  %i.mu = add nsw i16 %i.mt, -128
  %i.mv = getelementptr inbounds nuw i8, ptr %.0142210, i64 48
  store i16 %i.mu, ptr %i.mv, align 2, !tbaa !55
  %i.mw = getelementptr i8, ptr %i.mr, i64 1
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !10
  %i.my = zext i8 %i.mx to i16
  %i.mz = add nsw i16 %i.my, -128
  %i.na = getelementptr inbounds nuw i8, ptr %.0142210, i64 50
  store i16 %i.mz, ptr %i.na, align 2, !tbaa !55
  %i.nb = getelementptr inbounds i8, ptr %i.mh, i64 %i.ds ; 2 uses
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !10
  %i.nd = zext i8 %i.nc to i16
  %i.ne = getelementptr i8, ptr %i.nb, i64 1
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !10
  %i.ng = zext i8 %i.nf to i16
  %i.nh = getelementptr inbounds i8, ptr %i.mh, i64 %i.du ; 2 uses
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !10
  %i.nj = zext i8 %i.ni to i16
  %i.nk = getelementptr i8, ptr %i.nh, i64 1
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !10
  %i.nm = zext i8 %i.nl to i16
  %i.nn = or disjoint i16 %i.nd, -512
  %i.no = add nuw nsw i16 %i.nn, %i.ng
  %i.np = add nsw i16 %i.no, %i.nj
  %i.nq = add nsw i16 %i.np, %i.nm
  %i.nr = getelementptr inbounds nuw i8, ptr %.0211, i64 8
  store i16 %i.nq, ptr %i.nr, align 2, !tbaa !55
  %i.ns = getelementptr inbounds i8, ptr %i.mh, i64 %i.dv ; 2 uses
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !10
  %i.nu = zext i8 %i.nt to i16
  %i.nv = getelementptr i8, ptr %i.ns, i64 1
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !10
  %i.nx = zext i8 %i.nw to i16
  %i.ny = getelementptr inbounds i8, ptr %i.mh, i64 %i.dx ; 2 uses
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !10
  %i.oa = zext i8 %i.nz to i16
  %i.ob = getelementptr i8, ptr %i.ny, i64 1
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !10
  %i.od = zext i8 %i.oc to i16
  %i.oe = or disjoint i16 %i.nu, -512
  %i.of = add nuw nsw i16 %i.oe, %i.nx
  %i.og = add nsw i16 %i.of, %i.oa
  %i.oh = add nsw i16 %i.og, %i.od
  %i.oi = getelementptr inbounds nuw i8, ptr %.0211, i64 24
  store i16 %i.oh, ptr %i.oi, align 2, !tbaa !55
  %i.oj = getelementptr inbounds nuw i8, ptr %.0145209, i64 10 ; 6 uses
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !10
  %i.ol = zext i8 %i.ok to i16
  %i.om = add nsw i16 %i.ol, -128
  %i.on = getelementptr inbounds nuw i8, ptr %.0142210, i64 20
  store i16 %i.om, ptr %i.on, align 2, !tbaa !55
  %i.oo = getelementptr inbounds nuw i8, ptr %.0145209, i64 11
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !10
  %i.oq = zext i8 %i.op to i16
  %i.or = add nsw i16 %i.oq, -128
  %i.os = getelementptr inbounds nuw i8, ptr %.0142210, i64 22
  store i16 %i.or, ptr %i.os, align 2, !tbaa !55
  %i.ot = getelementptr inbounds i8, ptr %i.oj, i64 %i.dr ; 2 uses
  %i.ou = load i8, ptr %i.ot, align 1, !tbaa !10
  %i.ov = zext i8 %i.ou to i16
  %i.ow = add nsw i16 %i.ov, -128
  %i.ox = getelementptr inbounds nuw i8, ptr %.0142210, i64 52
  store i16 %i.ow, ptr %i.ox, align 2, !tbaa !55
  %i.oy = getelementptr i8, ptr %i.ot, i64 1
  %i.oz = load i8, ptr %i.oy, align 1, !tbaa !10
  %i.pa = zext i8 %i.oz to i16
  %i.pb = add nsw i16 %i.pa, -128
  %i.pc = getelementptr inbounds nuw i8, ptr %.0142210, i64 54
  store i16 %i.pb, ptr %i.pc, align 2, !tbaa !55
  %i.pd = getelementptr inbounds i8, ptr %i.oj, i64 %i.ds ; 2 uses
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !10
  %i.pf = zext i8 %i.pe to i16
  %i.pg = getelementptr i8, ptr %i.pd, i64 1
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !10
  %i.pi = zext i8 %i.ph to i16
  %i.pj = getelementptr inbounds i8, ptr %i.oj, i64 %i.du ; 2 uses
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !10
  %i.pl = zext i8 %i.pk to i16
  %i.pm = getelementptr i8, ptr %i.pj, i64 1
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !10
  %i.po = zext i8 %i.pn to i16
  %i.pp = or disjoint i16 %i.pf, -512
  %i.pq = add nuw nsw i16 %i.pp, %i.pi
  %i.pr = add nsw i16 %i.pq, %i.pl
  %i.ps = add nsw i16 %i.pr, %i.po
  %i.pt = getelementptr inbounds nuw i8, ptr %.0211, i64 10
  store i16 %i.ps, ptr %i.pt, align 2, !tbaa !55
  %i.pu = getelementptr inbounds i8, ptr %i.oj, i64 %i.dv ; 2 uses
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !10
  %i.pw = zext i8 %i.pv to i16
  %i.px = getelementptr i8, ptr %i.pu, i64 1
  %i.py = load i8, ptr %i.px, align 1, !tbaa !10
  %i.pz = zext i8 %i.py to i16
  %i.qa = getelementptr inbounds i8, ptr %i.oj, i64 %i.dx ; 2 uses
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !10
  %i.qc = zext i8 %i.qb to i16
  %i.qd = getelementptr i8, ptr %i.qa, i64 1
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !10
  %i.qf = zext i8 %i.qe to i16
  %i.qg = or disjoint i16 %i.pw, -512
  %i.qh = add nuw nsw i16 %i.qg, %i.pz
  %i.qi = add nsw i16 %i.qh, %i.qc
  %i.qj = add nsw i16 %i.qi, %i.qf
  %i.qk = getelementptr inbounds nuw i8, ptr %.0211, i64 26
  store i16 %i.qj, ptr %i.qk, align 2, !tbaa !55
  %i.ql = getelementptr inbounds nuw i8, ptr %.0145209, i64 12 ; 6 uses
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !10
  %i.qn = zext i8 %i.qm to i16
  %i.qo = add nsw i16 %i.qn, -128
  %i.qp = getelementptr inbounds nuw i8, ptr %.0142210, i64 24
  store i16 %i.qo, ptr %i.qp, align 2, !tbaa !55
  %i.qq = getelementptr inbounds nuw i8, ptr %.0145209, i64 13
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !10
  %i.qs = zext i8 %i.qr to i16
  %i.qt = add nsw i16 %i.qs, -128
  %i.qu = getelementptr inbounds nuw i8, ptr %.0142210, i64 26
  store i16 %i.qt, ptr %i.qu, align 2, !tbaa !55
  %i.qv = getelementptr inbounds i8, ptr %i.ql, i64 %i.dr ; 2 uses
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !10
  %i.qx = zext i8 %i.qw to i16
  %i.qy = add nsw i16 %i.qx, -128
  %i.qz = getelementptr inbounds nuw i8, ptr %.0142210, i64 56
  store i16 %i.qy, ptr %i.qz, align 2, !tbaa !55
  %i.ra = getelementptr i8, ptr %i.qv, i64 1
  %i.rb = load i8, ptr %i.ra, align 1, !tbaa !10
  %i.rc = zext i8 %i.rb to i16
  %i.rd = add nsw i16 %i.rc, -128
  %i.re = getelementptr inbounds nuw i8, ptr %.0142210, i64 58
  store i16 %i.rd, ptr %i.re, align 2, !tbaa !55
  %i.rf = getelementptr inbounds i8, ptr %i.ql, i64 %i.ds ; 2 uses
  %i.rg = load i8, ptr %i.rf, align 1, !tbaa !10
  %i.rh = zext i8 %i.rg to i16
  %i.ri = getelementptr i8, ptr %i.rf, i64 1
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !10
  %i.rk = zext i8 %i.rj to i16
  %i.rl = getelementptr inbounds i8, ptr %i.ql, i64 %i.du ; 2 uses
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !10
  %i.rn = zext i8 %i.rm to i16
  %i.ro = getelementptr i8, ptr %i.rl, i64 1
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !10
  %i.rq = zext i8 %i.rp to i16
  %i.rr = or disjoint i16 %i.rh, -512
  %i.rs = add nuw nsw i16 %i.rr, %i.rk
  %i.rt = add nsw i16 %i.rs, %i.rn
  %i.ru = add nsw i16 %i.rt, %i.rq
  %i.rv = getelementptr inbounds nuw i8, ptr %.0211, i64 12
  store i16 %i.ru, ptr %i.rv, align 2, !tbaa !55
  %i.rw = getelementptr inbounds i8, ptr %i.ql, i64 %i.dv ; 2 uses
  %i.rx = load i8, ptr %i.rw, align 1, !tbaa !10
  %i.ry = zext i8 %i.rx to i16
  %i.rz = getelementptr i8, ptr %i.rw, i64 1
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !10
  %i.sb = zext i8 %i.sa to i16
  %i.sc = getelementptr inbounds i8, ptr %i.ql, i64 %i.dx ; 2 uses
  %i.sd = load i8, ptr %i.sc, align 1, !tbaa !10
  %i.se = zext i8 %i.sd to i16
  %i.sf = getelementptr i8, ptr %i.sc, i64 1
  %i.sg = load i8, ptr %i.sf, align 1, !tbaa !10
  %i.sh = zext i8 %i.sg to i16
  %i.si = or disjoint i16 %i.ry, -512
  %i.sj = add nuw nsw i16 %i.si, %i.sb
  %i.sk = add nsw i16 %i.sj, %i.se
  %i.sl = add nsw i16 %i.sk, %i.sh
  %i.sm = getelementptr inbounds nuw i8, ptr %.0211, i64 28
  store i16 %i.sl, ptr %i.sm, align 2, !tbaa !55
  %i.sn = getelementptr inbounds nuw i8, ptr %.0145209, i64 14 ; 6 uses
  %i.so = load i8, ptr %i.sn, align 1, !tbaa !10
  %i.sp = zext i8 %i.so to i16
  %i.sq = add nsw i16 %i.sp, -128
  %i.sr = getelementptr inbounds nuw i8, ptr %.0142210, i64 28
  store i16 %i.sq, ptr %i.sr, align 2, !tbaa !55
  %i.ss = getelementptr inbounds nuw i8, ptr %.0145209, i64 15
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !10
  %i.su = zext i8 %i.st to i16
  %i.sv = add nsw i16 %i.su, -128
  %i.sw = getelementptr inbounds nuw i8, ptr %.0142210, i64 30
  store i16 %i.sv, ptr %i.sw, align 2, !tbaa !55
  %i.sx = getelementptr inbounds i8, ptr %i.sn, i64 %i.dr ; 2 uses
  %i.sy = load i8, ptr %i.sx, align 1, !tbaa !10
  %i.sz = zext i8 %i.sy to i16
  %i.ta = add nsw i16 %i.sz, -128
  %i.tb = getelementptr inbounds nuw i8, ptr %.0142210, i64 60
  store i16 %i.ta, ptr %i.tb, align 2, !tbaa !55
  %i.tc = getelementptr i8, ptr %i.sx, i64 1
  %i.td = load i8, ptr %i.tc, align 1, !tbaa !10
  %i.te = zext i8 %i.td to i16
  %i.tf = add nsw i16 %i.te, -128
  %i.tg = getelementptr inbounds nuw i8, ptr %.0142210, i64 62
  store i16 %i.tf, ptr %i.tg, align 2, !tbaa !55
  %i.th = getelementptr inbounds i8, ptr %i.sn, i64 %i.ds ; 2 uses
  %i.ti = load i8, ptr %i.th, align 1, !tbaa !10
  %i.tj = zext i8 %i.ti to i16
  %i.tk = getelementptr i8, ptr %i.th, i64 1
  %i.tl = load i8, ptr %i.tk, align 1, !tbaa !10
  %i.tm = zext i8 %i.tl to i16
  %i.tn = getelementptr inbounds i8, ptr %i.sn, i64 %i.du ; 2 uses
  %i.to = load i8, ptr %i.tn, align 1, !tbaa !10
  %i.tp = zext i8 %i.to to i16
  %i.tq = getelementptr i8, ptr %i.tn, i64 1
  %i.tr = load i8, ptr %i.tq, align 1, !tbaa !10
  %i.ts = zext i8 %i.tr to i16
  %i.tt = or disjoint i16 %i.tj, -512
  %i.tu = add nuw nsw i16 %i.tt, %i.tm
  %i.tv = add nsw i16 %i.tu, %i.tp
  %i.tw = add nsw i16 %i.tv, %i.ts
  %i.tx = getelementptr inbounds nuw i8, ptr %.0211, i64 14
  store i16 %i.tw, ptr %i.tx, align 2, !tbaa !55
  %i.ty = getelementptr inbounds i8, ptr %i.sn, i64 %i.dv ; 2 uses
  %i.tz = load i8, ptr %i.ty, align 1, !tbaa !10
  %i.ua = zext i8 %i.tz to i16
  %i.ub = getelementptr i8, ptr %i.ty, i64 1
  %i.uc = load i8, ptr %i.ub, align 1, !tbaa !10
  %i.ud = zext i8 %i.uc to i16
  %i.ue = getelementptr inbounds i8, ptr %i.sn, i64 %i.dx ; 2 uses
  %i.uf = load i8, ptr %i.ue, align 1, !tbaa !10
  %i.ug = zext i8 %i.uf to i16
  %i.uh = getelementptr i8, ptr %i.ue, i64 1
  %i.ui = load i8, ptr %i.uh, align 1, !tbaa !10
  %i.uj = zext i8 %i.ui to i16
  %i.uk = or disjoint i16 %i.ua, -512
  %i.ul = add nuw nsw i16 %i.uk, %i.ud
  %i.um = add nsw i16 %i.ul, %i.ug
  %i.un = add nsw i16 %i.um, %i.uj
  %i.uo = getelementptr inbounds nuw i8, ptr %.0211, i64 30
  store i16 %i.un, ptr %i.uo, align 2, !tbaa !55
  %i.up = getelementptr inbounds nuw i8, ptr %.0145209, i64 16
  %i.uq = getelementptr inbounds i8, ptr %i.up, i64 %i.ea
  %i.ur = add nuw nsw i32 %.0148208, 2
  %i.us = getelementptr inbounds i8, ptr %i.uq, i64 %i.ec
  %i.ut = getelementptr inbounds nuw i8, ptr %.0142210, i64 64
  %i.uu = getelementptr inbounds nuw i8, ptr %.0211, i64 32
  %i.uv = icmp samesign ult i32 %.0148208, 14
  br i1 %i.uv, label %.preheader, label %.loopexit, !llvm.loop !183

.preheader162:                                    ; preds = %.preheader162.lr.ph.split, %._crit_edge174.split.split
  %.1188 = phi ptr [ %spec.select, %._crit_edge174.split.split ], [ %3, %.preheader162.lr.ph.split ] ; 2 uses
  %.1143185 = phi ptr [ %14, %._crit_edge174.split.split ], [ %4, %.preheader162.lr.ph.split ] ; 2 uses
  %.2147184 = phi ptr [ %i.vv, %._crit_edge174.split.split ], [ %5, %.preheader162.lr.ph.split ]
  %.1149183 = phi i32 [ %i.vs, %._crit_edge174.split.split ], [ 0, %.preheader162.lr.ph.split ] ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader162, %bb.e
  %indvars.iv233 = phi i64 [ 0, %.preheader162 ], [ %indvars.iv.next234, %bb.e ] ; 3 uses
  %.3173 = phi ptr [ %.2147184, %.preheader162 ], [ %i.vq, %bb.e ] ; 4 uses
  %i.uw = load i8, ptr %.3173, align 1, !tbaa !10
  %i.ux = getelementptr inbounds i8, ptr %.3173, i64 %i.s
  %i.uy = load i8, ptr %i.ux, align 1, !tbaa !10
  %i.uz = zext i8 %i.uy to i16
  %i.va = add nsw i16 %i.uz, -128
  %i.vb = getelementptr inbounds i8, ptr %.3173, i64 %i.t
  %i.vc = load i8, ptr %i.vb, align 1, !tbaa !10
  %i.vd = zext i8 %i.vc to i16
  %i.ve = add nsw i16 %i.vd, -128
  %i.vf = lshr i64 %indvars.iv233, 1
  %i.vg = zext i8 %i.uw to i16
  %i.vh = add nsw i16 %i.vg, -128
  %i.vi = getelementptr inbounds nuw [2 x i8], ptr %.1143185, i64 %indvars.iv233
  store i16 %i.vh, ptr %i.vi, align 2, !tbaa !55
  %i.vj = and i64 %i.vf, 2147483647
  %i.vk = getelementptr inbounds nuw [2 x i8], ptr %.1188, i64 %i.vj ; 3 uses
  %i.vl = load i16, ptr %i.vk, align 2, !tbaa !55
  %i.vm = add i16 %i.vl, %i.va
  store i16 %i.vm, ptr %i.vk, align 2, !tbaa !55
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vk, i64 16 ; 2 uses
  %i.vo = load i16, ptr %i.vn, align 2, !tbaa !55
  %i.vp = add i16 %i.vo, %i.ve
  store i16 %i.vp, ptr %i.vn, align 2, !tbaa !55
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1 ; 2 uses
  %i.vq = getelementptr inbounds i8, ptr %.3173, i64 %i.u ; 2 uses
  %exitcond237.not = icmp eq i64 %indvars.iv.next234, %wide.trip.count236
  br i1 %exitcond237.not, label %._crit_edge174.split.split, label %bb.e, !llvm.loop !181

._crit_edge174.split.split:                       ; preds = %bb.e
  %i.vr = getelementptr inbounds i8, ptr %i.vq, i64 %i.x
  %i.vs = add nuw nsw i32 %.1149183, 1            ; 2 uses
  %i.vt = shl i32 %.1149183, 5
  %i.vu = and i32 %i.vt, 32
  %spec.select.idx = zext nneg i32 %i.vu to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %.1188, i64 %spec.select.idx
  %i.vv = getelementptr inbounds i8, ptr %i.vr, i64 %i.y
  %14 = getelementptr inbounds nuw i8, ptr %.1143185, i64 32
  %exitcond238.not = icmp eq i32 %i.vs, %6
  br i1 %exitcond238.not, label %.loopexit, label %.preheader162, !llvm.loop !182

iter.check:                                       ; preds = %.preheader165.preheader, %._crit_edge
  %.2144171 = phi ptr [ %15, %._crit_edge ], [ %4, %.preheader165.preheader ] ; 8 uses
  %.4170 = phi ptr [ %i.xu, %._crit_edge ], [ %5, %.preheader165.preheader ] ; 8 uses
  %.2150169 = phi i32 [ %i.xt, %._crit_edge ], [ 0, %.preheader165.preheader ]
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.l
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check261, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %.4170, i64 %index ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 8
  %wide.load = load <8 x i8>, ptr %i.vw, align 1, !tbaa !10, !alias.scope !192
  %wide.load262 = load <8 x i8>, ptr %i.vx, align 1, !tbaa !10, !alias.scope !192
  %i.vy = zext <8 x i8> %wide.load to <8 x i16>
  %i.vz = zext <8 x i8> %wide.load262 to <8 x i16>
  %i.wa = shl nuw nsw <8 x i16> %i.vy, splat (i16 2)
  %i.wb = shl nuw nsw <8 x i16> %i.vz, splat (i16 2)
  %i.wc = add nsw <8 x i16> %i.wa, splat (i16 -512)
  %i.wd = add nsw <8 x i16> %i.wb, splat (i16 -512)
  %i.we = getelementptr inbounds nuw [2 x i8], ptr %.2144171, i64 %index ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 16
  store <8 x i16> %i.wc, ptr %i.we, align 2, !tbaa !55, !alias.scope !193, !noalias !192
  store <8 x i16> %i.wd, ptr %i.wf, align 2, !tbaa !55, !alias.scope !193, !noalias !192
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.wg = icmp eq i64 %index.next, %n.vec
  br i1 %i.wg, label %middle.block, label %vector.body, !llvm.loop !187

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !194

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index264 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next266, %vec.epilog.vector.body ] ; 3 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %.4170, i64 %index264
  %wide.load265 = load <4 x i8>, ptr %i.wh, align 1, !tbaa !10, !alias.scope !192
  %i.wi = zext <4 x i8> %wide.load265 to <4 x i16>
  %i.wj = shl nuw nsw <4 x i16> %i.wi, splat (i16 2)
  %i.wk = add nsw <4 x i16> %i.wj, splat (i16 -512)
  %i.wl = getelementptr inbounds nuw [2 x i8], ptr %.2144171, i64 %index264
  store <4 x i16> %i.wk, ptr %i.wl, align 2, !tbaa !55, !alias.scope !193, !noalias !192
  %index.next266 = add nuw i64 %index264, 4       ; 2 uses
  %i.wm = icmp eq i64 %index.next266, %n.vec263
  br i1 %i.wm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !188

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n267, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec263, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.wn = getelementptr inbounds nuw i8, ptr %.4170, i64 %indvars.iv.prol
  %i.wo = load i8, ptr %i.wn, align 1, !tbaa !10
  %i.wp = zext i8 %i.wo to i16
  %i.wq = shl nuw nsw i16 %i.wp, 2
  %i.wr = add nsw i16 %i.wq, -512
  %i.ws = getelementptr inbounds nuw [2 x i8], ptr %.2144171, i64 %indvars.iv.prol
  store i16 %i.wr, ptr %i.ws, align 2, !tbaa !55
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !189

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.wt = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.wu = icmp ugt i64 %i.wt, -4
  br i1 %i.wu, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %.4170, i64 %indvars.iv
  %i.ww = load i8, ptr %i.wv, align 1, !tbaa !10
  %i.wx = zext i8 %i.ww to i16
  %i.wy = shl nuw nsw i16 %i.wx, 2
  %i.wz = add nsw i16 %i.wy, -512
  %i.xa = getelementptr inbounds nuw [2 x i8], ptr %.2144171, i64 %indvars.iv
  store i16 %i.wz, ptr %i.xa, align 2, !tbaa !55
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %.4170, i64 %indvars.iv.next
  %i.xc = load i8, ptr %i.xb, align 1, !tbaa !10
  %i.xd = zext i8 %i.xc to i16
  %i.xe = shl nuw nsw i16 %i.xd, 2
  %i.xf = add nsw i16 %i.xe, -512
  %i.xg = getelementptr inbounds nuw [2 x i8], ptr %.2144171, i64 %indvars.iv.next
  store i16 %i.xf, ptr %i.xg, align 2, !tbaa !55
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %.4170, i64 %indvars.iv.next.1
  %i.xi = load i8, ptr %i.xh, align 1, !tbaa !10
  %i.xj = zext i8 %i.xi to i16
  %i.xk = shl nuw nsw i16 %i.xj, 2
  %i.xl = add nsw i16 %i.xk, -512
  %i.xm = getelementptr inbounds nuw [2 x i8], ptr %.2144171, i64 %indvars.iv.next.1
  store i16 %i.xl, ptr %i.xm, align 2, !tbaa !55
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %.4170, i64 %indvars.iv.next.2
  %i.xo = load i8, ptr %i.xn, align 1, !tbaa !10
  %i.xp = zext i8 %i.xo to i16
  %i.xq = shl nuw nsw i16 %i.xp, 2
  %i.xr = add nsw i16 %i.xq, -512
  %i.xs = getelementptr inbounds nuw [2 x i8], ptr %.2144171, i64 %indvars.iv.next.2
  store i16 %i.xr, ptr %i.xs, align 2, !tbaa !55
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !190

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.xt = add nuw nsw i32 %.2150169, 1            ; 2 uses
  %i.xu = getelementptr inbounds i8, ptr %.4170, i64 %i.d
  %15 = getelementptr inbounds nuw i8, ptr %.2144171, i64 16
  %exitcond220.not = icmp eq i32 %i.xt, %6
  br i1 %exitcond220.not, label %.loopexit, label %iter.check, !llvm.loop !191

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge174.split.split.us.us, %._crit_edge174.split.us.us, %._crit_edge174.split.split, %.preheader, %.preheader166, %.preheader165.lr.ph, %.preheader163.a, %.preheader162.lr.ph
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN2cv5mjpegL11aan_fdct8x8EPKsPsiS2_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, i32 noundef range(i32 8, 17) %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #14 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = zext nneg i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.0217 = phi ptr [ %0, %bb.a ], [ %i.bw, %bb.b ] ; 9 uses
  %.0207216 = phi ptr [ %i.a, %bb.a ], [ %i.bx, %bb.b ] ; 9 uses
  %.0208215 = phi i32 [ 8, %bb.a ], [ %i.bv, %bb.b ] ; 2 uses
  %i.c = load i16, ptr %.0217, align 2, !tbaa !55
  %i.d = sext i16 %i.c to i32                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0217, i64 14
  %i.f = load i16, ptr %i.e, align 2, !tbaa !55
  %i.g = sext i16 %i.f to i32                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0217, i64 6
  %i.i = load i16, ptr %i.h, align 2, !tbaa !55
  %i.j = sext i16 %i.i to i32                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0217, i64 8
  %i.l = load i16, ptr %i.k, align 2, !tbaa !55
  %i.m = sext i16 %i.l to i32                     ; 2 uses
  %i.n = add nsw i32 %i.g, %i.d                   ; 2 uses
  %i.o = sub nsw i32 %i.d, %i.g                   ; 3 uses
  %i.p = add nsw i32 %i.m, %i.j                   ; 2 uses
  %i.q = sub nsw i32 %i.j, %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %.0207216, i64 28
  %i.s = getelementptr inbounds nuw i8, ptr %.0207216, i64 4
  %i.t = add nsw i32 %i.p, %i.n                   ; 2 uses
  %i.u = sub nsw i32 %i.n, %i.p                   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0217, i64 2
  %i.w = load i16, ptr %i.v, align 2, !tbaa !55
  %i.x = sext i16 %i.w to i32                     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0217, i64 12
  %i.z = load i16, ptr %i.y, align 2, !tbaa !55
  %i.aa = sext i16 %i.z to i32                    ; 2 uses
  %i.ab = add nsw i32 %i.aa, %i.x                 ; 2 uses
  %i.ac = sub nsw i32 %i.x, %i.aa                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0207216, i64 20
  %i.ae = getelementptr inbounds nuw i8, ptr %.0217, i64 4
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !55
  %i.ag = sext i16 %i.af to i32                   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0217, i64 10
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !55
  %i.aj = sext i16 %i.ai to i32                   ; 2 uses
  %i.ak = sub nsw i32 %i.ag, %i.aj                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0207216, i64 12
  %i.am = add nsw i32 %i.aj, %i.ag                ; 2 uses
  %i.an = add nsw i32 %i.am, %i.ab                ; 2 uses
  %i.ao = add nsw i32 %i.an, %i.t
  %i.ap = sub nsw i32 %i.t, %i.an
  store i32 %i.ao, ptr %.0207216, align 4, !tbaa !53
  %i.aq = getelementptr inbounds nuw i8, ptr %.0207216, i64 16
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !53
  %i.ar = add nsw i32 %i.ab, %i.u
  %i.as = sub nsw i32 %i.am, %i.ar
  %i.at = mul nsw i32 %i.as, 11585
  %i.au = add nsw i32 %i.at, 8192
  %i.av = ashr i32 %i.au, 14                      ; 2 uses
  %i.aw = add nsw i32 %i.av, %i.u
  %i.ax = sub nsw i32 %i.u, %i.av
  %i.ay = getelementptr inbounds nuw i8, ptr %.0207216, i64 8
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !53
  %i.az = getelementptr inbounds nuw i8, ptr %.0207216, i64 24
  store i32 %i.aw, ptr %i.az, align 4, !tbaa !53
  %i.ba = add nsw i32 %i.ak, %i.q                 ; 2 uses
  %i.bb = add nsw i32 %i.ak, %i.ac
  %i.bc = add nsw i32 %i.ac, %i.o                 ; 2 uses
  %i.bd = mul nsw i32 %i.bb, 11585
  %i.be = add nsw i32 %i.bd, 8192
  %i.bf = ashr i32 %i.be, 14                      ; 2 uses
  %i.bg = add nsw i32 %i.bf, %i.o                 ; 2 uses
  %i.bh = sub nsw i32 %i.o, %i.bf                 ; 2 uses
  %i.bi = sub nsw i32 %i.ba, %i.bc
  %i.bj = mul nsw i32 %i.bi, 6270
  %i.bk = mul nsw i32 %i.ba, 8867
  %i.bl = add nsw i32 %i.bj, 8192                 ; 2 uses
  %i.bm = add i32 %i.bl, %i.bk
  %i.bn = ashr i32 %i.bm, 14                      ; 2 uses
  %i.bo = mul nsw i32 %i.bc, 21407
  %i.bp = add i32 %i.bl, %i.bo
  %i.bq = ashr i32 %i.bp, 14                      ; 2 uses
  %i.br = add nsw i32 %i.bn, %i.bh
  %i.bs = sub nsw i32 %i.bh, %i.bn
  %i.bt = add nsw i32 %i.bq, %i.bg
  %i.bu = sub nsw i32 %i.bg, %i.bq
  store i32 %i.br, ptr %i.ad, align 4, !tbaa !53
  store i32 %i.bt, ptr %i.s, align 4, !tbaa !53
  store i32 %i.bu, ptr %i.r, align 4, !tbaa !53
  store i32 %i.bs, ptr %i.al, align 4, !tbaa !53
  %i.bv = add nsw i32 %.0208215, -1
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %.0217, i64 %i.b
  %i.bx = getelementptr inbounds nuw i8, ptr %.0207216, i64 32
  %i.by = icmp samesign ugt i32 %.0208215, 1
  br i1 %i.by, label %bb.b, label %.preheader, !llvm.loop !196

.preheader:                                       ; preds = %bb.b, %.preheader
  %.0205221 = phi ptr [ %i.gq, %.preheader ], [ %1, %bb.b ] ; 9 uses
  %.0206220 = phi ptr [ %i.gp, %.preheader ], [ %3, %bb.b ] ; 9 uses
  %.1219 = phi ptr [ %i.go, %.preheader ], [ %i.a, %bb.b ] ; 10 uses
  %.1209218 = phi i32 [ %i.gn, %.preheader ], [ 8, %bb.b ] ; 2 uses
  %i.bz = load i32, ptr %.1219, align 4, !tbaa !53 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.1219, i64 224 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !53 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.1219, i64 96 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !53 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.1219, i64 128 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !53 ; 2 uses
  %i.cg = add nsw i32 %i.cb, %i.bz                ; 2 uses
  %i.ch = sub nsw i32 %i.bz, %i.cb                ; 4 uses
  %i.ci = add nsw i32 %i.cf, %i.cd                ; 2 uses
  %i.cj = sub nsw i32 %i.cd, %i.cf                ; 2 uses
  store i32 %i.ch, ptr %i.ca, align 4, !tbaa !53
  store i32 %i.cj, ptr %.1219, align 4, !tbaa !53
  %i.ck = add nsw i32 %i.ci, %i.cg                ; 2 uses
  %i.cl = sub nsw i32 %i.cg, %i.ci                ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.1219, i64 32
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !53 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.1219, i64 192
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !53 ; 2 uses
  %i.cq = add nsw i32 %i.cp, %i.cn                ; 2 uses
  %i.cr = sub nsw i32 %i.cn, %i.cp                ; 3 uses
  store i32 %i.cr, ptr %i.ce, align 4, !tbaa !53
  %i.cs = getelementptr inbounds nuw i8, ptr %.1219, i64 64
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !53 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.1219, i64 160
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !53 ; 2 uses
  %i.cw = sub nsw i32 %i.ct, %i.cv                ; 3 uses
  store i32 %i.cw, ptr %i.cc, align 4, !tbaa !53
  %i.cx = add nsw i32 %i.cv, %i.ct                ; 2 uses
  %i.cy = add nsw i32 %i.cx, %i.cq                ; 2 uses
  %i.cz = add nsw i32 %i.cy, %i.ck
  %i.da = sub nsw i32 %i.ck, %i.cy
  %i.db = load i16, ptr %.0206220, align 2, !tbaa !55
  %i.dc = sext i16 %i.db to i32
  %i.dd = mul nsw i32 %i.cz, %i.dc
  %i.de = add nsw i32 %i.dd, 8192
  %i.df = lshr i32 %i.de, 14
  %i.dg = trunc i32 %i.df to i16
  store i16 %i.dg, ptr %.0205221, align 2, !tbaa !55
  %i.dh = getelementptr inbounds nuw i8, ptr %.0206220, i64 8
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !55
  %i.dj = sext i16 %i.di to i32
  %i.dk = mul nsw i32 %i.da, %i.dj
  %i.dl = add nsw i32 %i.dk, 8192
  %i.dm = lshr i32 %i.dl, 14
  %i.dn = trunc i32 %i.dm to i16
  %i.do = getelementptr inbounds nuw i8, ptr %.0205221, i64 8
  store i16 %i.dn, ptr %i.do, align 2, !tbaa !55
  %i.dp = add i32 %i.cq, %i.cl
  %i.dq = sub i32 %i.cx, %i.dp
  %i.dr = mul nsw i32 %i.dq, 11585
  %i.ds = add nsw i32 %i.dr, 8192
  %i.dt = ashr i32 %i.ds, 14                      ; 2 uses
  %i.du = add nsw i32 %i.dt, %i.cl
  %i.dv = sub nsw i32 %i.cl, %i.dt
  %i.dw = getelementptr inbounds nuw i8, ptr %.0206220, i64 4
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !55
  %i.dy = sext i16 %i.dx to i32
  %i.dz = mul nsw i32 %i.dv, %i.dy
  %i.ea = add nsw i32 %i.dz, 8192
  %i.eb = lshr i32 %i.ea, 14
  %i.ec = trunc i32 %i.eb to i16
  %i.ed = getelementptr inbounds nuw i8, ptr %.0205221, i64 4
  store i16 %i.ec, ptr %i.ed, align 2, !tbaa !55
  %i.ee = getelementptr inbounds nuw i8, ptr %.0206220, i64 12
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !55
  %i.eg = sext i16 %i.ef to i32
  %i.eh = mul nsw i32 %i.du, %i.eg
  %i.ei = add nsw i32 %i.eh, 8192
  %i.ej = lshr i32 %i.ei, 14
  %i.ek = trunc i32 %i.ej to i16
  %i.el = getelementptr inbounds nuw i8, ptr %.0205221, i64 12
  store i16 %i.ek, ptr %i.el, align 2, !tbaa !55
  %i.em = add nsw i32 %i.cw, %i.cj                ; 2 uses
  %i.en = add nsw i32 %i.cw, %i.cr
  %i.eo = add nsw i32 %i.cr, %i.ch                ; 2 uses
  %i.ep = mul nsw i32 %i.en, 11585
  %i.eq = add nsw i32 %i.ep, 8192
  %i.er = ashr i32 %i.eq, 14                      ; 2 uses
  %i.es = add nsw i32 %i.er, %i.ch                ; 2 uses
  %i.et = sub nsw i32 %i.ch, %i.er                ; 2 uses
  %i.eu = sub nsw i32 %i.em, %i.eo
  %i.ev = mul nsw i32 %i.eu, 6270
  %i.ew = mul nsw i32 %i.em, 8867
  %i.ex = add i32 %i.ev, 8192                     ; 2 uses
  %i.ey = add i32 %i.ex, %i.ew
  %i.ez = ashr i32 %i.ey, 14                      ; 2 uses
  %i.fa = mul nsw i32 %i.eo, 21407
  %i.fb = add i32 %i.ex, %i.fa
  %i.fc = ashr i32 %i.fb, 14                      ; 2 uses
  %i.fd = add nsw i32 %i.ez, %i.et
end_hunk_0
