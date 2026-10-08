Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/hull?download=true
inline.NumInlined: 449
inline.NumDeleted: 105
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@b3HullMap_erase_itr_raw
define hidden zeroext i1 @b3HullMap_erase_itr_raw(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly byval(%struct.b3HullMap_itr) align 8 captures(none) %1) local_unnamed_addr #12 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !98
  %i.b = add i64 %i.a, -1
  store i64 %i.b, ptr %0, align 8, !tbaa !98
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !93   ; 6 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 4 uses
  %i.j = ashr exact i64 %i.i, 1                   ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i ; 3 uses
  %i.l = load i16, ptr %i.k, align 2, !tbaa !104  ; 3 uses
  %i.m = and i16 %i.l, 4095
  %or.cond = icmp eq i16 %i.m, 4095
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i16 0, ptr %i.k, align 2, !tbaa !104
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !111  ; 2 uses
  %i.p = icmp eq i64 %i.o, -1
  br i1 %i.p, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = and i16 %i.l, 2048
  %.not60 = icmp eq i16 %i.q, 0
  br i1 %.not60, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !96
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.j
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !107
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !86
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !94
  %i.z = and i64 %i.y, %i.w
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.aa = phi i64 [ %i.o, %bb.c ], [ %i.z, %bb.e ], [ %i.j, %bb.d ] ; 3 uses
  %i.ab = and i16 %i.l, 2047
  %i.ac = icmp eq i16 %i.ab, 2047
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !94 ; 2 uses
  br i1 %i.ac, label %.preheader73, label %.preheader

.preheader:                                       ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !104
  br label %bb.g

.preheader73:                                     ; preds = %bb.f, %.preheader73
  %.053 = phi i64 [ %i.an, %.preheader73 ], [ %i.aa, %bb.f ] ; 2 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %.053
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !104 ; 2 uses
  %i.ah = and i16 %i.ag, 2047
  %i.ai = zext nneg i16 %i.ah to i64              ; 2 uses
  %i.aj = add nuw nsw i64 %i.ai, 1
  %i.ak = mul nuw nsw i64 %i.aj, %i.ai
  %i.al = lshr i64 %i.ak, 1
  %i.am = add i64 %i.al, %i.aa
  %i.an = and i64 %i.am, %i.ae                    ; 2 uses
  %.not62 = icmp eq i64 %i.an, %i.j
  br i1 %.not62, label %.thread, label %.preheader73

.thread:                                          ; preds = %.preheader73
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %.053
  %i.ap = or i16 %i.ag, 2047
  store i16 %i.ap, ptr %i.ao, align 2, !tbaa !104
  store i16 0, ptr %i.k, align 2, !tbaa !104
  br label %bb.h

bb.g:                                             ; preds = %.preheader, %bb.g
  %i.aq = phi i16 [ %i.az, %bb.g ], [ %.pre, %.preheader ]
  %.0 = phi i64 [ %i.ax, %bb.g ], [ %i.j, %.preheader ]
  %i.ar = and i16 %i.aq, 2047
  %i.as = zext nneg i16 %i.ar to i64              ; 2 uses
  %i.at = add nuw nsw i64 %i.as, 1
  %i.au = mul nuw nsw i64 %i.at, %i.as
  %i.av = lshr i64 %i.au, 1
  %i.aw = add i64 %i.av, %i.aa
  %i.ax = and i64 %i.aw, %i.ae                    ; 5 uses
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.ax
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !104 ; 2 uses
  %i.ba = and i16 %i.az, 2047
  %.not61 = icmp eq i16 %i.ba, 2047
  br i1 %.not61, label %.thread65, label %bb.g

.thread65:                                        ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !96 ; 2 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.j
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.ax
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %i.be, i64 16, i1 false), !tbaa.struct !109
  %i.bf = load ptr, ptr %i.e, align 8, !tbaa !93  ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.i ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !104
  %i.bi = and i16 %i.bh, 4095
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %i.ax ; 2 uses
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !104
  %i.bl = and i16 %i.bk, -4096
  %i.bm = or disjoint i16 %i.bl, %i.bi
  store i16 %i.bm, ptr %i.bg, align 2, !tbaa !104
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %.0 ; 2 uses
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !104
  %i.bp = or i16 %i.bo, 2047
  store i16 %i.bp, ptr %i.bn, align 2, !tbaa !104
  store i16 0, ptr %i.bj, align 2, !tbaa !104
  %i.bq = icmp ule i64 %i.ax, %i.j
  br label %bb.h

bb.h:                                             ; preds = %.thread65, %.thread, %bb.b
  %.4 = phi i1 [ true, %bb.b ], [ true, %.thread ], [ %i.bq, %.thread65 ]
  ret i1 %.4
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @b3HullMap_erase(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #13 {
bb.a:
  %2 = alloca %struct.b3HullMap_itr, align 8      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !86, !noalias !251 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !94, !noalias !251 ; 3 uses
  %i.e = and i64 %i.d, %i.b                       ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !93, !noalias !251 ; 4 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.e
  %i.i = load i16, ptr %i.h, align 2, !tbaa !104, !noalias !251 ; 2 uses
  %i.j = and i16 %i.i, 2048
  %.not.i = icmp eq i16 %i.j, 0
  br i1 %.not.i, label %b3HullMap_get.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = lshr i64 %i.b, 48
  %i.l = trunc nuw i64 %i.k to i16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 140
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %i.o = phi i16 [ %i.i, %bb.b ], [ %.pre.i, %bb.f ] ; 2 uses
  %.0.i = phi i64 [ %i.e, %bb.b ], [ %i.ag, %bb.f ] ; 2 uses
  %i.p = xor i16 %i.o, %i.l
  %i.q = icmp ult i16 %i.p, 4096
  br i1 %i.q, label %bb.d, label %b3CompareHullData.exit.thread29.i

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !96, !noalias !251
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.0.i ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !107, !noalias !251 ; 3 uses
  %i.u = icmp eq ptr %i.t, %1
  br i1 %i.u, label %b3HullMap_get.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 140
  %i.w = load i32, ptr %i.v, align 4, !tbaa !74, !noalias !251 ; 2 uses
  %i.x = load i32, ptr %i.n, align 4, !tbaa !74, !noalias !251
  %.not.i.i = icmp eq i32 %i.w, %i.x
  br i1 %.not.i.i, label %b3CompareHullData.exit.i, label %b3CompareHullData.exit.thread29.i, !prof !112

b3CompareHullData.exit.i:                         ; preds = %bb.e
  %i.y = sext i32 %i.w to i64
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.t, ptr nonnull readonly %1, i64 %i.y), !noalias !251
  %i.z = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.z, label %b3HullMap_get.exit, label %b3CompareHullData.exit.thread29.i, !prof !115

b3CompareHullData.exit.thread29.i:                ; preds = %b3CompareHullData.exit.i, %bb.e, %bb.c
  %i.aa = and i16 %i.o, 2047                      ; 2 uses
  %.not27.i = icmp eq i16 %i.aa, 2047
  br i1 %.not27.i, label %b3HullMap_get.exit.thread, label %bb.f

bb.f:                                             ; preds = %b3CompareHullData.exit.thread29.i
  %i.ab = zext nneg i16 %i.aa to i64              ; 2 uses
  %i.ac = add nuw nsw i64 %i.ab, 1
  %i.ad = mul nuw nsw i64 %i.ac, %i.ab
  %i.ae = lshr i64 %i.ad, 1
  %i.af = add i64 %i.ae, %i.e
  %i.ag = and i64 %i.af, %i.d                     ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.ag
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 2, !tbaa !104, !noalias !251
  br label %bb.c

b3HullMap_get.exit:                               ; preds = %bb.d, %b3CompareHullData.exit.i
  %.idx = shl nuw nsw i64 %.0.i, 1                ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx
  store ptr %i.s, ptr %2, align 8, !tbaa !110, !alias.scope !251
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !100, !alias.scope !251
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.idx9 = shl nuw nsw i64 %i.d, 1                ; 2 uses
  %i.ak = add nuw nsw i64 %.idx9, 2
  %3 = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx9
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 2
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !101, !alias.scope !251
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.e, ptr %i.am, align 8, !tbaa !111, !alias.scope !251
  %.not = icmp samesign eq i64 %.idx, %i.ak
  br i1 %.not, label %b3HullMap_get.exit.thread, label %bb.g

bb.g:                                             ; preds = %b3HullMap_get.exit
  %i.an = tail call zeroext i1 @b3HullMap_erase_itr_raw(ptr noundef %0, ptr noundef nonnull byval(%struct.b3HullMap_itr) align 8 %2) ; 0 uses
  br label %b3HullMap_get.exit.thread

b3HullMap_get.exit.thread:                        ; preds = %b3CompareHullData.exit.thread29.i, %bb.a, %b3HullMap_get.exit, %bb.g
  %i.ao = phi i1 [ true, %bb.g ], [ false, %b3HullMap_get.exit ], [ false, %bb.a ], [ false, %b3CompareHullData.exit.thread29.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i1 %i.ao
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @b3HullMap_next(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b3HullMap_itr) align 8 captures(none) %0, ptr nofree noundef byval(%struct.b3HullMap_itr) align 8 captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !110
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 3 uses
  %.0.copyload11.i = load i64, ptr %i.e, align 2  ; 2 uses
  %.not.not12.i = icmp eq i64 %.0.copyload11.i, 0
  br i1 %.not.not12.i, label %.lr.ph.i, label %b3HullMap_fast_forward.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.f = phi ptr [ %i.h, %.lr.ph.i ], [ %i.b, %bb.a ]
  %i.g = phi ptr [ %i.i, %.lr.ph.i ], [ %i.e, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %.0.copyload.i = load i64, ptr %i.i, align 2    ; 2 uses
  %.not.not.i = icmp eq i64 %.0.copyload.i, 0
  br i1 %.not.not.i, label %.lr.ph.i, label %b3HullMap_fast_forward.exit

b3HullMap_fast_forward.exit:                      ; preds = %.lr.ph.i, %bb.a
  %i.j = phi ptr [ %i.b, %bb.a ], [ %i.h, %.lr.ph.i ]
  %.lcssa.i = phi ptr [ %i.e, %bb.a ], [ %i.i, %.lr.ph.i ]
  %.0.copyload.lcssa.i = phi i64 [ %.0.copyload11.i, %bb.a ], [ %.0.copyload.i, %.lr.ph.i ]
  %i.k = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0.copyload.lcssa.i, i1 true)
  %i.l = lshr i64 %i.k, 4                         ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.l
  store ptr %i.m, ptr %1, align 8, !tbaa !110
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %.lcssa.i, i64 %i.l
  store ptr %i.n, ptr %i.c, align 8, !tbaa !100
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 -1, ptr %i.o, align 8, !tbaa !111
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !252
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @b3HullMap_reserve(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %b3HullMap_min_bucket_count_for_size.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.b = uitofp i64 %1 to double
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.i
  %.0.i = phi i64 [ %i.f, %bb.b ], [ 8, %.preheader.i ] ; 4 uses
  %i.c = uitofp i64 %.0.i to double
  %i.d = fmul nnan double %i.c, 9.000000e-01
  %i.e = fcmp olt double %i.d, %i.b
  %i.f = shl i64 %.0.i, 1
  br i1 %i.e, label %bb.b, label %b3HullMap_min_bucket_count_for_size.exit, !llvm.loop !1

b3HullMap_min_bucket_count_for_size.exit:         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !94   ; 2 uses
  %i.i = icmp ne i64 %i.h, 0
  %i.j = zext i1 %i.i to i64
  %i.k = add i64 %i.h, %i.j
  %.not = icmp ugt i64 %.0.i, %i.k
  br i1 %.not, label %bb.c, label %b3HullMap_min_bucket_count_for_size.exit.thread

bb.c:                                             ; preds = %b3HullMap_min_bucket_count_for_size.exit
  %i.l = tail call fastcc zeroext i1 @b3HullMap_rehash(ptr noundef nonnull %0, i64 noundef %.0.i)
  br label %b3HullMap_min_bucket_count_for_size.exit.thread

b3HullMap_min_bucket_count_for_size.exit.thread:  ; preds = %bb.a, %b3HullMap_min_bucket_count_for_size.exit, %bb.c
  %.0 = phi i1 [ %i.l, %bb.c ], [ true, %b3HullMap_min_bucket_count_for_size.exit ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @b3HullMap_shrink(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !98     ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %b3HullMap_min_bucket_count_for_size.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.c = uitofp i64 %i.a to double
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.i
  %.0.i = phi i64 [ %i.g, %bb.b ], [ 8, %.preheader.i ] ; 5 uses
  %i.d = uitofp i64 %.0.i to double
  %i.e = fmul nnan double %i.d, 9.000000e-01
  %i.f = fcmp olt double %i.e, %i.c
  %i.g = shl i64 %.0.i, 1
  br i1 %i.f, label %bb.b, label %b3HullMap_min_bucket_count_for_size.exit, !llvm.loop !1

b3HullMap_min_bucket_count_for_size.exit:         ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !94   ; 3 uses
  %i.j = icmp ne i64 %i.i, 0
  %i.k = zext i1 %i.j to i64
  %i.l = add i64 %i.i, %i.k
  %i.m = icmp eq i64 %.0.i, %i.l
  br i1 %i.m, label %bb.e, label %bb.c

b3HullMap_min_bucket_count_for_size.exit.thread:  ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !94   ; 2 uses
  %i.p = add i64 %i.o, 1
  %i.q = icmp ult i64 %i.p, 2
  br i1 %i.q, label %bb.e, label %.thread

bb.c:                                             ; preds = %b3HullMap_min_bucket_count_for_size.exit
  %i.r = icmp eq i64 %.0.i, 0
  br i1 %i.r, label %.thread, label %bb.d

.thread:                                          ; preds = %b3HullMap_min_bucket_count_for_size.exit.thread, %bb.c
  %i.s = phi ptr [ %i.h, %bb.c ], [ %i.n, %b3HullMap_min_bucket_count_for_size.exit.thread ]
  %i.t = phi i64 [ %i.i, %bb.c ], [ %i.o, %b3HullMap_min_bucket_count_for_size.exit.thread ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !96
  %i.w = mul i64 %i.t, 18
  %i.x = add i64 %i.w, 26
  tail call void @b3Free(ptr noundef %i.v, i64 noundef %i.x) #24
  store i64 0, ptr %i.s, align 8, !tbaa !94
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @vt_empty_placeholder_metadatum, ptr %i.y, align 8, !tbaa !93
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = tail call fastcc zeroext i1 @b3HullMap_rehash(ptr noundef nonnull %0, i64 noundef %.0.i)
  br label %bb.e

bb.e:                                             ; preds = %b3HullMap_min_bucket_count_for_size.exit.thread, %b3HullMap_min_bucket_count_for_size.exit, %bb.d, %.thread
  %.0 = phi i1 [ %i.z, %bb.d ], [ true, %.thread ], [ true, %b3HullMap_min_bucket_count_for_size.exit ], [ true, %b3HullMap_min_bucket_count_for_size.exit.thread ]
  ret i1 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @b3HullMap_first(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b3HullMap_itr) align 8 captures(none) initializes((16, 24)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !98
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !alias.scope !255
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !96   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !93   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !94
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store ptr %i.k, ptr %i.g, align 8, !tbaa !101
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.0.copyload11.i = load i64, ptr %i.f, align 2  ; 2 uses
  %.not.not12.i = icmp eq i64 %.0.copyload11.i, 0
  br i1 %.not.not12.i, label %.lr.ph.i, label %b3HullMap_fast_forward.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.m = phi ptr [ %i.o, %.lr.ph.i ], [ %i.c, %bb.c ]
  %i.n = phi ptr [ %i.p, %.lr.ph.i ], [ %i.f, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 64 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %.0.copyload.i = load i64, ptr %i.p, align 2    ; 2 uses
  %.not.not.i = icmp eq i64 %.0.copyload.i, 0
  br i1 %.not.not.i, label %.lr.ph.i, label %b3HullMap_fast_forward.exit

b3HullMap_fast_forward.exit:                      ; preds = %.lr.ph.i, %bb.c
  %i.q = phi ptr [ %i.c, %bb.c ], [ %i.o, %.lr.ph.i ]
  %.lcssa.i = phi ptr [ %i.f, %bb.c ], [ %i.p, %.lr.ph.i ]
  %.0.copyload.lcssa.i = phi i64 [ %.0.copyload11.i, %bb.c ], [ %.0.copyload.i, %.lr.ph.i ]
  %i.r = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0.copyload.lcssa.i, i1 true)
  %i.s = lshr i64 %i.r, 4                         ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.s
  store ptr %i.t, ptr %0, align 8, !tbaa !110
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %.lcssa.i, i64 %i.s
  store ptr %i.u, ptr %i.d, align 8, !tbaa !100
  store i64 -1, ptr %i.l, align 8, !tbaa !111
  br label %bb.d

end_hunk_0
