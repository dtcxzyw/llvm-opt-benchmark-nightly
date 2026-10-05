Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ScaledNumber?download=true
inline.NumInlined: 290
inline.NumDeleted: 147
begin_hunk_0_@_ZN4llvm13ScaledNumbers10multiply64Emm:bb.a
  %i.ab = lshr i64 %i.p, %i.aa
  %i.ac = or i64 %i.ab, %i.z
  %.0 = select i1 %.not25, i64 %i.v, i64 %i.ac    ; 2 uses
  %i.ad = trunc nuw nsw i32 %i.y to i16           ; 2 uses
  %i.ae = lshr exact i64 -9223372036854775808, %i.w
  %i.af = and i64 %i.ae, %i.p
  %.not41 = icmp eq i64 %i.af, 0
  br i1 %.not41, label %_ZN4llvm13ScaledNumbers10getRoundedImEESt4pairIT_sES3_sb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = add i64 %.0, 1                          ; 2 uses
  %.not.i = icmp eq i64 %i.ag, 0                  ; 2 uses
  %spec.select.i = select i1 %.not.i, i64 -9223372036854775808, i64 %i.ag
  %i.ah = zext i1 %.not.i to i16
  %spec.select6.i = add nuw nsw i16 %i.ah, %i.ad
  br label %_ZN4llvm13ScaledNumbers10getRoundedImEESt4pairIT_sES3_sb.exit

_ZN4llvm13ScaledNumbers10getRoundedImEESt4pairIT_sES3_sb.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.030.0 = phi i64 [ %i.p, %bb.a ], [ %.0, %bb.b ], [ %spec.select.i, %bb.c ]
  %.sroa.3.0 = phi i16 [ 0, %bb.a ], [ %i.ad, %bb.b ], [ %spec.select6.i, %bb.c ]
  %.fca.0.insert = insertvalue { i64, i16 } poison, i64 %.sroa.030.0, 0
  %.fca.1.insert = insertvalue { i64, i16 } %.fca.0.insert, i16 %.sroa.3.0, 1
  ret { i64, i16 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 281474976710656) i64 @_ZN4llvm13ScaledNumbers8divide32Ejj(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %0 to i64                       ; 2 uses
  %i.b = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.a, i1 false) ; 3 uses
  %i.c = shl i64 %i.a, %i.b                       ; 2 uses
  %i.d = zext i32 %1 to i64                       ; 4 uses
  %i.e = udiv i64 %i.c, %i.d                      ; 6 uses
  %i.f = urem i64 %i.c, %i.d
  %i.g = icmp ugt i64 %i.e, 4294967295
  br i1 %i.g, label %bb.b, label %_ZN4llvm13ScaledNumbers10getRoundedIjEESt4pairIT_sES3_sb.exit

bb.b:                                             ; preds = %bb.a
  %i.h = trunc nuw nsw i64 %i.b to i16
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.e, i1 true) ; 2 uses
  %i.j = trunc nuw nsw i64 %i.i to i32
  %i.k = sub nuw nsw i32 32, %i.j                 ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %i.m = lshr i64 %i.e, %i.l
  %i.n = trunc i64 %i.m to i32                    ; 2 uses
  %i.o = trunc nuw nsw i32 %i.k to i16
  %i.p = sub nsw i16 %i.o, %i.h                   ; 2 uses
  %i.q = lshr exact i64 2147483648, %i.i
  %i.r = and i64 %i.q, %i.e
  %.not10.i = icmp eq i64 %i.r, 0
  br i1 %.not10.i, label %_ZN4llvm13ScaledNumbers11getAdjustedIjEESt4pairIT_sEms.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = add i32 %i.n, 1                          ; 2 uses
  %.not.i.i = icmp eq i32 %i.s, 0                 ; 2 uses
  %spec.select.i.i = select i1 %.not.i.i, i32 -2147483648, i32 %i.s
  %i.t = zext i1 %.not.i.i to i16
  %spec.select6.i.i = add nsw i16 %i.p, %i.t
  br label %_ZN4llvm13ScaledNumbers11getAdjustedIjEESt4pairIT_sEms.exit

_ZN4llvm13ScaledNumbers11getAdjustedIjEESt4pairIT_sEms.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i = phi i32 [ %i.n, %bb.b ], [ %spec.select.i.i, %bb.c ]
  %.sroa.3.0.i.i = phi i16 [ %i.p, %bb.b ], [ %spec.select6.i.i, %bb.c ]
  %i.u = zext i32 %.sroa.0.0.i.i to i64
  %.sroa.0.sroa.3.0.insert.ext.i = zext i16 %.sroa.3.0.i.i to i64
  %.sroa.0.sroa.3.0.insert.shift.i = shl nuw nsw i64 %.sroa.0.sroa.3.0.insert.ext.i, 32
  %.sroa.0.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.sroa.3.0.insert.shift.i, %i.u
  br label %bb.d

_ZN4llvm13ScaledNumbers10getRoundedIjEESt4pairIT_sES3_sb.exit: ; preds = %bb.a
  %i.v = lshr i64 %i.d, 1
  %i.w = sub nuw nsw i64 %i.d, %i.v
  %.not = icmp samesign uge i64 %i.f, %i.w        ; 2 uses
  %i.x = trunc nuw i64 %i.e to i32
  %i.y = add i32 %i.x, 1                          ; 2 uses
  %.not.i21 = icmp eq i32 %i.y, 0                 ; 2 uses
  %spec.select.i = select i1 %.not.i21, i32 -2147483648, i32 %i.y
  %i.z = zext i32 %spec.select.i to i64
  %.sroa.0.0.i = select i1 %.not, i64 %i.z, i64 %i.e
  %narrow = select i1 %.not, i1 %.not.i21, i1 false
  %.pn = zext i1 %narrow to i64
  %.sroa.3.0.i = sub nsw i64 %.pn, %i.b
  %.sroa.3.0.insert.ext.i = shl nsw i64 %.sroa.3.0.i, 32
  %.sroa.3.0.insert.shift.i = and i64 %.sroa.3.0.insert.ext.i, 281470681743360
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.3.0.insert.shift.i, %.sroa.0.0.i
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvm13ScaledNumbers10getRoundedIjEESt4pairIT_sES3_sb.exit, %_ZN4llvm13ScaledNumbers11getAdjustedIjEESt4pairIT_sEms.exit
  %.sroa.0.0.in = phi i64 [ %.sroa.0.sroa.0.0.insert.insert.i, %_ZN4llvm13ScaledNumbers11getAdjustedIjEESt4pairIT_sEms.exit ], [ %.sroa.0.0.insert.insert.i, %_ZN4llvm13ScaledNumbers10getRoundedIjEESt4pairIT_sES3_sb.exit ]
  ret i64 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { i64, i16 } @_ZN4llvm13ScaledNumbers8divide64Emm(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %1, i1 false) ; 2 uses
  %i.b = trunc nuw nsw i64 %i.a to i32
  %i.c = sub nsw i32 0, %i.b                      ; 2 uses
  %i.d = lshr exact i64 %1, %i.a                  ; 7 uses
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nsw i32 %i.c to i16
  br label %_ZN4llvm13ScaledNumbers10getRoundedImEESt4pairIT_sES3_sb.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %0, i1 false) ; 2 uses
  %i.h = trunc nuw nsw i64 %i.g to i32
  %i.i = sub nsw i32 %i.c, %i.h                   ; 2 uses
  %i.j = shl i64 %0, %i.g                         ; 2 uses
  %i.k = udiv i64 %i.j, %i.d                      ; 2 uses
  %i.l = urem i64 %i.j, %i.d                      ; 2 uses
  %.not50 = icmp eq i64 %i.l, 0
  br i1 %.not50, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.01945 = phi i64 [ %.1, %.lr.ph ], [ %i.k, %bb.c ]
  %.244 = phi i32 [ %i.n, %.lr.ph ], [ %i.i, %bb.c ]
  %.14043 = phi i64 [ %.241, %.lr.ph ], [ %i.l, %bb.c ] ; 2 uses
  %.not24 = icmp slt i64 %.14043, 0
  %i.m = shl i64 %.14043, 1                       ; 2 uses
  %i.n = add nsw i32 %.244, -1                    ; 2 uses
  %i.o = shl nuw i64 %.01945, 1                   ; 2 uses
  %.not25 = icmp ule i64 %i.d, %i.m
  %or.cond.not = or i1 %.not24, %.not25           ; 2 uses
  %i.p = select i1 %or.cond.not, i64 %i.d, i64 0
  %.241 = sub i64 %i.m, %i.p                      ; 3 uses
  %i.q = zext i1 %or.cond.not to i64
  %.1 = or disjoint i64 %i.o, %i.q                ; 2 uses
  %.not23 = icmp sgt i64 %i.o, -1
  %i.r = icmp ne i64 %.241, 0
  %i.s = select i1 %.not23, i1 %i.r, i1 false
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.140.lcssa = phi i64 [ 0, %bb.c ], [ %.241, %.lr.ph ]
  %.2.lcssa = phi i32 [ %i.i, %bb.c ], [ %i.n, %.lr.ph ]
  %.019.lcssa = phi i64 [ %i.k, %bb.c ], [ %.1, %.lr.ph ] ; 2 uses
  %i.t = trunc i32 %.2.lcssa to i16               ; 2 uses
  %i.u = lshr i64 %i.d, 1
  %i.v = sub nuw i64 %i.d, %i.u
  %.not = icmp ult i64 %.140.lcssa, %i.v
  br i1 %.not, label %_ZN4llvm13ScaledNumbers10getRoundedImEESt4pairIT_sES3_sb.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.w = add i64 %.019.lcssa, 1                   ; 2 uses
  %.not.i = icmp eq i64 %i.w, 0                   ; 2 uses
  %spec.select.i = select i1 %.not.i, i64 -9223372036854775808, i64 %i.w
  %i.x = zext i1 %.not.i to i16
  %spec.select6.i = add i16 %i.x, %i.t
  br label %_ZN4llvm13ScaledNumbers10getRoundedImEESt4pairIT_sES3_sb.exit

_ZN4llvm13ScaledNumbers10getRoundedImEESt4pairIT_sES3_sb.exit: ; preds = %bb.d, %._crit_edge, %bb.b
  %.sroa.3.0 = phi i16 [ %i.f, %bb.b ], [ %i.t, %._crit_edge ], [ %spec.select6.i, %bb.d ]
  %.sroa.0.0 = phi i64 [ %0, %bb.b ], [ %.019.lcssa, %._crit_edge ], [ %spec.select.i, %bb.d ]
  %.fca.0.insert = insertvalue { i64, i16 } poison, i64 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i64, i16 } %.fca.0.insert, i16 %.sroa.3.0, 1
  ret { i64, i16 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 -1, 2) i32 @_ZN4llvm13ScaledNumbers11compareImplEmmi(i64 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %2 to i64                       ; 2 uses
  %i.b = lshr i64 %0, %i.a                        ; 3 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %i.b, %1
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = shl i64 %i.b, %i.a
  %i.f = icmp ugt i64 %0, %i.e
  %i.g = zext i1 %i.f to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.g, %bb.c ], [ -1, %bb.a ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm16ScaledNumberBase8toStringB5cxx11Emsij(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1, i16 noundef signext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca [2 x i64], align 16               ; 5 uses
  %5 = alloca %"class.llvm::APFloat", align 8     ; 7 uses
  %6 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %7 = alloca %"class.llvm::SmallVector", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 38 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge.i.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.e, ptr noundef nonnull align 1 dereferenceable(3) @.str, i64 3, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.f, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 0, ptr %i.g, align 1, !tbaa !16
  br label %bb.ay

bb.b:                                             ; preds = %bb.a
  %i.h = sext i16 %2 to i32                       ; 4 uses
  %i.i = icmp eq i16 %2, 0
  br i1 %i.i, label %.thread.thread, label %bb.c

.thread.thread:                                   ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.j, ptr %8, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 0, ptr %i.k, align 8, !tbaa !15
  store i8 0, ptr %i.j, align 8, !tbaa !16
  br label %bb.v

bb.c:                                             ; preds = %bb.b
  %i.l = icmp sgt i16 %2, 0
  br i1 %i.l, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %1, i1 true) ; 2 uses
  %.not87 = icmp eq i64 %i.m, 0
  br i1 %.not87, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = trunc nuw nsw i64 %i.m to i16            ; 2 uses
  %.sroa.speculated132 = tail call i16 @llvm.umin.i16(i16 %2, i16 %i.n) ; 2 uses
  %i.o = zext nneg i16 %.sroa.speculated132 to i64
  %i.p = shl i64 %1, %i.o                         ; 2 uses
  %i.q = sub nsw i16 %2, %.sroa.speculated132
  %.not88.not = icmp samesign ugt i16 %2, %i.n
  %spec.select = select i1 %.not88.not, i64 0, i64 %i.p
  br label %bb.k

bb.f:                                             ; preds = %bb.c
  %i.r = icmp samesign ugt i16 %2, -64
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = sub nsw i32 0, %i.h
  %i.t = zext nneg i32 %i.s to i64
  %i.u = lshr i64 %1, %i.t
  %i.v = add nsw i32 %i.h, 64
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %1, %i.w
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.y = icmp eq i16 %2, -64
  br i1 %i.y, label %.thread198.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = icmp samesign ugt i16 %2, -120
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = sub nuw nsw i32 -64, %i.h               ; 2 uses
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = lshr i64 %1, %i.ab
  %i.ad = add nsw i32 %i.h, 128
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = shl i64 %1, %i.ae
  %i.ag = lshr i64 %i.af, 8
  br label %bb.k

.thread198.thread:                                ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.ah, ptr %8, align 8, !tbaa !12
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i8 48, ptr %i.ah, align 8, !tbaa !16
  store i64 1, ptr %i.ai, align 8, !tbaa !15
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 0, ptr %i.aj, align 1, !tbaa !16
  br label %bb.ac

bb.k:                                             ; preds = %bb.e, %bb.d, %bb.j, %bb.i, %bb.g
  %.0 = phi i16 [ %2, %bb.j ], [ %2, %bb.d ], [ %i.q, %bb.e ], [ %2, %bb.g ], [ %2, %bb.i ]
  %.077 = phi i64 [ %i.ag, %bb.j ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.i ] ; 2 uses
  %.074 = phi i32 [ %i.aa, %bb.j ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.i ] ; 2 uses
  %.070 = phi i64 [ %i.ac, %bb.j ], [ 0, %bb.d ], [ 0, %bb.e ], [ %i.x, %bb.g ], [ 0, %bb.i ] ; 3 uses
  %.169 = phi i64 [ 0, %bb.j ], [ 0, %bb.d ], [ %spec.select, %bb.e ], [ %i.u, %bb.g ], [ 0, %bb.i ] ; 2 uses
  %.1 = phi i64 [ %1, %bb.j ], [ %1, %bb.d ], [ %i.p, %bb.e ], [ %1, %bb.g ], [ %1, %bb.i ] ; 2 uses
  %i.ak = icmp ne i64 %.169, 0                    ; 2 uses
  %i.al = icmp ne i64 %.070, 0                    ; 3 uses
  %or.cond = select i1 %i.ak, i1 true, i1 %i.al
  br i1 %or.cond, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = sext i16 %.0 to i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %i.an = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.1, i1 false)
  %i.ao = trunc nuw nsw i64 %i.an to i32
  %i.ap = add nsw i32 %i.am, 63                   ; 2 uses
  %i.aq = sub nsw i32 %i.ap, %i.ao
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.aq, i32 16383) ; 2 uses
  %i.ar = sub nsw i32 %i.ap, %.sroa.speculated.i
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = shl i64 %.1, %i.as                      ; 2 uses
  %i.au = add nsw i32 %.sroa.speculated.i, 16383
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13, !noalias !38
  store i64 %i.at, ptr %i.d, align 16, !tbaa !17, !noalias !38
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aw = zext i32 %i.au to i64
  %.not.inv.i = icmp slt i64 %i.at, 0
  %i.ax = select i1 %.not.inv.i, i64 %i.aw, i64 0
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !17, !noalias !38
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13, !noalias !38
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13, !noalias !38
  call void @_ZN4llvm5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12) %6, i32 noundef 80, ptr nonnull %i.d, i64 2) #13, !noalias !38
  call void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(29) @_ZN4llvm11APFloatBase20semX87DoubleExtendedE, ptr noundef nonnull align 8 dereferenceable(12) %6) #13, !noalias !38
  %13 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %14 = load i32, ptr %13, align 8, !tbaa !40, !noalias !38
  %15 = icmp ugt i32 %14, 64
  br i1 %15, label %bb.m, label %_ZN4llvm5APIntD2Ev.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ay = load ptr, ptr %6, align 8, !tbaa !16, !noalias !38 ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN4llvm5APIntD2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %i.ay) #14, !noalias !38
  br label %_ZN4llvm5APIntD2Ev.exit.i

_ZN4llvm5APIntD2Ev.exit.i:                        ; preds = %bb.n, %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13, !noalias !38
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13, !noalias !38
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store ptr %i.ba, ptr %7, align 8, !tbaa !42, !noalias !38
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.bb, align 8, !tbaa !43, !noalias !38
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 24, ptr %i.bc, align 8, !tbaa !44, !noalias !38
  %i.bd = load ptr, ptr %5, align 8, !tbaa !16, !noalias !38
  %.not.i.i = icmp eq ptr %i.bd, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit.i
  call void @_ZNK4llvm6detail9IEEEFloat8toStringERNS_15SmallVectorImplIcEEjjb(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef %4, i32 noundef 0, i1 noundef zeroext true) #13, !noalias !38
  br label %_ZNK4llvm7APFloat8toStringERNS_15SmallVectorImplIcEEjjb.exit.i

bb.p:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit.i
  call void @_ZNK4llvm6detail13DoubleAPFloat8toStringERNS_15SmallVectorImplIcEEjjb(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef %4, i32 noundef 0, i1 noundef zeroext true) #13, !noalias !38
  br label %_ZNK4llvm7APFloat8toStringERNS_15SmallVectorImplIcEEjjb.exit.i

_ZNK4llvm7APFloat8toStringERNS_15SmallVectorImplIcEEjjb.exit.i: ; preds = %bb.p, %bb.o
  %i.be = load ptr, ptr %7, align 8, !tbaa !42, !noalias !38 ; 2 uses
  %i.bf = load i64, ptr %i.bb, align 8, !tbaa !43, !noalias !38 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bg, ptr %0, align 8, !tbaa !12, !alias.scope !38
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.bh, align 8, !tbaa !15, !alias.scope !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13, !noalias !38
  store i64 %i.bf, ptr %i.c, align 8, !tbaa !17, !noalias !38
  %i.bi = icmp ugt i64 %i.bf, 15
  br i1 %i.bi, label %bb.q, label %._crit_edge.i.i.i

bb.q:                                             ; preds = %_ZNK4llvm7APFloat8toStringERNS_15SmallVectorImplIcEEjjb.exit.i
  %i.bj = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #13 ; 2 uses
  store ptr %i.bj, ptr %0, align 8, !tbaa !18, !alias.scope !38
  %i.bk = load i64, ptr %i.c, align 8, !tbaa !17, !noalias !38
  store i64 %i.bk, ptr %i.bg, align 8, !tbaa !16, !alias.scope !38
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.q, %_ZNK4llvm7APFloat8toStringERNS_15SmallVectorImplIcEEjjb.exit.i
  %i.bl = phi ptr [ %i.bj, %bb.q ], [ %i.bg, %_ZNK4llvm7APFloat8toStringERNS_15SmallVectorImplIcEEjjb.exit.i ] ; 2 uses
  switch i64 %i.bf, label %bb.s [
    i64 1, label %bb.r
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPcvEET_S7_RKS3_.exit.i
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i
  %i.bm = load i8, ptr %i.be, align 1, !tbaa !16
  store i8 %i.bm, ptr %i.bl, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPcvEET_S7_RKS3_.exit.i

bb.s:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %i.be, i64 %i.bf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPcvEET_S7_RKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPcvEET_S7_RKS3_.exit.i: ; preds = %bb.s, %bb.r, %._crit_edge.i.i.i
  %i.bn = load i64, ptr %i.c, align 8, !tbaa !17, !noalias !38 ; 2 uses
  store i64 %i.bn, ptr %i.bh, align 8, !tbaa !15, !alias.scope !38
  %i.bo = load ptr, ptr %0, align 8, !tbaa !18, !alias.scope !38
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bn
  store i8 0, ptr %i.bp, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13, !noalias !38
  %i.bq = load ptr, ptr %7, align 8, !tbaa !42, !noalias !38 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.ba
  br i1 %i.br, label %_ZL15toStringAPFloatB5cxx11mij.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPcvEET_S7_RKS3_.exit.i
  call void @free(ptr noundef %i.bq) #13
  br label %_ZL15toStringAPFloatB5cxx11mij.exit

_ZL15toStringAPFloatB5cxx11mij.exit:              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPcvEET_S7_RKS3_.exit.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13, !noalias !38
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13, !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13, !noalias !38
  br label %bb.ay

bb.u:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.bs, ptr %8, align 8, !tbaa !12
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  store i64 0, ptr %i.bt, align 8, !tbaa !15
  store i8 0, ptr %i.bs, align 8, !tbaa !16
  br i1 %i.ak, label %bb.v, label %.thread198

bb.v:                                             ; preds = %.thread.thread, %bb.u
  %i.bu = phi ptr [ %i.k, %.thread.thread ], [ %i.bt, %bb.u ] ; 5 uses
  %i.bv = phi ptr [ %i.j, %.thread.thread ], [ %i.bs, %bb.u ] ; 4 uses
  %.077147161 = phi i64 [ 0, %.thread.thread ], [ %.077, %bb.u ]
  %.074148158 = phi i32 [ 0, %.thread.thread ], [ %.074, %bb.u ]
  %.070149155 = phi i64 [ 0, %.thread.thread ], [ %.070, %bb.u ]
  %.169150152 = phi i64 [ %1, %.thread.thread ], [ %.169, %bb.u ]
  %i.bw = phi i1 [ false, %.thread.thread ], [ %i.al, %bb.u ]
  br label %bb.w

bb.w:                                             ; preds = %_ZL11appendDigitRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj.exit.i, %bb.v
  %.03.i = phi i64 [ %.169150152, %bb.v ], [ %i.by, %_ZL11appendDigitRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj.exit.i ] ; 3 uses
  %i.bx = urem i64 %.03.i, 10
  %i.by = udiv i64 %.03.i, 10
  %i.bz = load i64, ptr %i.bu, align 8, !tbaa !15 ; 4 uses
  %i.ca = add i64 %i.bz, 1                        ; 3 uses
  %i.cb = load ptr, ptr %8, align 8, !tbaa !18    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bv
  br i1 %i.cc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %bb.w
  %i.cd = icmp ult i64 %i.bz, 16
  call void @llvm.assume(i1 %i.cd)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.w
  %i.ce = load i64, ptr %i.bv, align 8, !tbaa !16
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.cf = phi i64 [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %i.cg = icmp ugt i64 %i.ca, %i.cf
  br i1 %i.cg, label %bb.x, label %_ZL11appendDigitRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj.exit.i

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.bz, i64 noundef 0, ptr noundef null, i64 noundef 1) #13
  %.pre.i.i.i.i = load ptr, ptr %8, align 8, !tbaa !18
  br label %_ZL11appendDigitRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj.exit.i

_ZL11appendDigitRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj.exit.i: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %i.ch = phi ptr [ %.pre.i.i.i.i, %bb.x ], [ %i.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i ]
  %i.ci = trunc nuw nsw i64 %i.bx to i8
  %i.cj = or disjoint i8 %i.ci, 48
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.bz
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !16
  store i64 %i.ca, ptr %i.bu, align 8, !tbaa !15
  %i.cl = load ptr, ptr %8, align 8, !tbaa !18
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ca
  store i8 0, ptr %i.cm, align 1, !tbaa !16
  %.not.i = icmp ult i64 %.03.i, 10
  br i1 %.not.i, label %bb.y, label %bb.w, !llvm.loop !22

.thread198:                                       ; preds = %bb.u
  store i8 48, ptr %i.bs, align 8, !tbaa !16
  store i64 1, ptr %i.bt, align 8, !tbaa !15
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 0, ptr %i.cn, align 1, !tbaa !16
  br i1 %i.al, label %bb.ac, label %bb.z

bb.y:                                             ; preds = %_ZL11appendDigitRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj.exit.i
  %i.co = load i64, ptr %i.bu, align 8, !tbaa !15 ; 3 uses
  %i.cp = icmp sgt i64 %i.co, 1
  br i1 %i.cp, label %.lr.ph.i.i.preheader, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.y
  %i.cq = load ptr, ptr %8, align 8, !tbaa !18    ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 %i.co
  %.sroa.0.08.i.i = getelementptr i8, ptr %i.cr, i64 -1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.08.i.i, %.lr.ph.i.i.preheader ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %i.cu, %.lr.ph.i.i ], [ %i.cq, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.cs = load i8, ptr %.sroa.05.09.i.i, align 1, !tbaa !16
  %i.ct = load i8, ptr %.sroa.0.010.i.i, align 1, !tbaa !16
  store i8 %i.ct, ptr %.sroa.05.09.i.i, align 1, !tbaa !16
  store i8 %i.cs, ptr %.sroa.0.010.i.i, align 1, !tbaa !16
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 1 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -1 ; 2 uses
  %i.cv = icmp ult ptr %i.cu, %.sroa.0.0.i.i
  br i1 %i.cv, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit, !llvm.loop !23

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit: ; preds = %.lr.ph.i.i, %bb.y
  br i1 %i.bw, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %.thread198, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit
  %i.cw = phi ptr [ %i.bt, %.thread198 ], [ %i.bu, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit ]
  %i.cx = phi ptr [ %i.bs, %.thread198 ], [ %i.bv, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %i.cy = load ptr, ptr %8, align 8, !tbaa !18, !noalias !45
  %i.cz = load i64, ptr %i.cw, align 8, !tbaa !15, !noalias !45 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.da, ptr %0, align 8, !tbaa !12, !alias.scope !46
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.db, align 8, !tbaa !15, !alias.scope !46
  store i8 0, ptr %i.da, align 8, !tbaa !16, !alias.scope !46
  %i.dc = add i64 %i.cz, 2
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.dc) #13
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !15, !alias.scope !46
  %i.de = sub i64 4611686018427387903, %i.dd
  %i.df = icmp ult i64 %i.de, %i.cz
  br i1 %i.df, label %bb.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

bb.aa:                                            ; preds = %bb.z
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #15
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %bb.z
  %i.dg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.cy, i64 noundef %i.cz) #13 ; 0 uses
  %i.dh = load i64, ptr %i.db, align 8, !tbaa !15, !alias.scope !46
  %i.di = and i64 %i.dh, -2
  %i.dj = icmp eq i64 %i.di, 4611686018427387902
  br i1 %i.dj, label %bb.ab, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit

end_hunk_0
begin_hunk_1_@_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_:bb.a
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.d
  %i.ah = load ptr, ptr %2, align 8, !tbaa !18
  %i.ai = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.ah, i64 noundef %i.d) #13 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !12
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !18 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 5 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !15 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 16
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.aq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  store ptr %i.ak, ptr %0, align 8, !tbaa !18
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !16
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !15
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !15
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !18
  store i64 0, ptr %i.as, align 8, !tbaa !15
  store i8 0, ptr %i.al, align 8, !tbaa !16
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm16ScaledNumberBase5printERNS_11raw_ostreamEmsij(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1, i16 noundef signext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 align 2 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @_ZN4llvm16ScaledNumberBase8toStringB5cxx11Emsij(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i64 noundef %1, i16 noundef signext %2, i32 noundef %3, i32 noundef %4)
  %i.a = load ptr, ptr %5, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !15
  %i.d = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.a, i64 noundef %i.c) #13
  %i.e = load ptr, ptr %5, align 8, !tbaa !18     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.h = load i64, ptr %i.f, align 8, !tbaa !16
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm16ScaledNumberBase4dumpEmsi(i64 noundef %0, i16 noundef signext %1, i32 noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm4dbgsEv() #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @_ZN4llvm16ScaledNumberBase8toStringB5cxx11Emsij(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i64 noundef %0, i16 noundef signext %1, i32 noundef %2, i32 noundef 0)
  %i.b = load ptr, ptr %3, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15
  %i.e = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.b, i64 noundef %i.d) #13 ; 4 uses
  %i.f = load ptr, ptr %3, align 8, !tbaa !18     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4llvm16ScaledNumberBase5printERNS_11raw_ostreamEmsij.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.i = load i64, ptr %i.g, align 8, !tbaa !16
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #14
  br label %_ZN4llvm16ScaledNumberBase5printERNS_11raw_ostreamEmsij.exit

_ZN4llvm16ScaledNumberBase5printERNS_11raw_ostreamEmsij.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !60
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !61   ; 2 uses
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN4llvm16ScaledNumberBase5printERNS_11raw_ostreamEmsij.exit
  %i.p = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull @.str.2, i64 noundef 1) #13
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %_ZN4llvm16ScaledNumberBase5printERNS_11raw_ostreamEmsij.exit
  store i8 91, ptr %i.n, align 1
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !61
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store ptr %i.r, ptr %i.m, align 8, !tbaa !61
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.p, %bb.b ], [ %i.e, %bb.c ]
  %i.s = sext i32 %2 to i64
  %i.t = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, i64 noundef %i.s) #13 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !60
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !61   ; 2 uses
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.z = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.t, ptr noundef nonnull @.str.3, i64 noundef 1) #13
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit8

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  store i8 58, ptr %i.x, align 1
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !61
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store ptr %i.ab, ptr %i.w, align 8, !tbaa !61
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit8

_ZN4llvm11raw_ostreamlsEPKc.exit8:                ; preds = %bb.d, %bb.e
  %.0.i.i7 = phi ptr [ %i.z, %bb.d ], [ %i.t, %bb.e ]
  %i.ac = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i7, i64 noundef %0) #13 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !60
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !61 ; 2 uses
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = icmp ult i64 %i.aj, 3
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit8
  %i.al = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noundef nonnull @.str.4, i64 noundef 3) #13
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit11

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ag, ptr noundef nonnull align 1 dereferenceable(3) @.str.4, i64 3, i1 false)
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !61
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 3
  store ptr %i.an, ptr %i.af, align 8, !tbaa !61
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit11

_ZN4llvm11raw_ostreamlsEPKc.exit11:               ; preds = %bb.f, %bb.g
  %.0.i.i10 = phi ptr [ %i.al, %bb.f ], [ %i.ac, %bb.g ]
  %i.ao = sext i16 %1 to i64
  %i.ap = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i10, i64 noundef %i.ao) #13 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !60
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 32 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !61 ; 2 uses
  %i.au = icmp eq ptr %i.ar, %i.at
  br i1 %i.au, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit11
  %i.av = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ap, ptr noundef nonnull @.str.5, i64 noundef 1) #13 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit14

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit11
  store i8 93, ptr %i.at, align 1
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !61
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  store ptr %i.ax, ptr %i.as, align 8, !tbaa !61
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit14

_ZN4llvm11raw_ostreamlsEPKc.exit14:               ; preds = %bb.h, %bb.i
  ret void
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm4dbgsEv() local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #5

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @_ZN4llvm5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef, ptr, i64) unnamed_addr #4

declare void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(29), ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

declare void @_ZNK4llvm6detail9IEEEFloat8toStringERNS_15SmallVectorImplIcEEjjb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZNK4llvm6detail13DoubleAPFloat8toStringERNS_15SmallVectorImplIcEEjjb(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #8

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"long", !4, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0, !13, i64 8, !4, i64 16}
!15 = !{!14, !13, i64 8}
!16 = !{!4, !4, i64 0}
!17 = !{!13, !13, i64 0}
!18 = !{!14, !10, i64 0}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, i1 false, !"_ZL15toStringAPFloatB5cxx11mij"}
!21 = distinct !{!21, !20, !"_ZL15toStringAPFloatB5cxx11mij: argument 0"}
!22 = distinct !{!22, !8}
!23 = distinct !{!23, !8}
!24 = distinct !{!24, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!25 = distinct !{!25, !24, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!26 = distinct !{!26, i1 false, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!27 = distinct !{!27, !26, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!28 = distinct !{!28, !8}
!29 = distinct !{!29, i1 false, !"_ZL18stripTrailingZerosRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!30 = distinct !{!30, !29, !"_ZL18stripTrailingZerosRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!31 = distinct !{!31, i1 false, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!32 = distinct !{!32, !31, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!33 = distinct !{!33, i1 false, !"_ZL18stripTrailingZerosRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!34 = distinct !{!34, !33, !"_ZL18stripTrailingZerosRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!35 = distinct !{!35, i1 false, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!36 = distinct !{!36, !35, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!37 = distinct !{!37, !8}
!38 = !{!21}
!39 = !{!"_ZTSN4llvm5APIntE", !4, i64 0, !5, i64 8}
!40 = !{!39, !5, i64 8}
!41 = !{!"_ZTSN4llvm15SmallVectorBaseImEE", !9, i64 0, !13, i64 8, !13, i64 16}
!42 = !{!41, !9, i64 0}
!43 = !{!41, !13, i64 8}
!44 = !{!41, !13, i64 16}
!45 = !{!25}
!46 = !{!27, !25}
!47 = !{!30}
!48 = !{!32}
!49 = !{!32, !30}
!50 = !{!34}
!51 = !{!36}
!52 = !{!36, !34}
!53 = distinct !{!53, i1 false, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!54 = distinct !{!54, !53, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!55 = !{!54}
!56 = !{!"_ZTSN4llvm11raw_ostream11OStreamKindE", !4, i64 0}
!57 = !{!"bool", !4, i64 0}
!58 = !{!"_ZTSN4llvm11raw_ostream10BufferKindE", !4, i64 0}
!59 = !{!"_ZTSN4llvm11raw_ostreamE", !56, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !57, i64 40, !58, i64 44}
!60 = !{!59, !10, i64 24}
!61 = !{!59, !10, i64 32}
end_hunk_1
