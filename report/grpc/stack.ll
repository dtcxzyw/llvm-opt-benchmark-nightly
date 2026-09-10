Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/stack?download=true
inline.NumInlined: 26
inline.NumDeleted: 6
begin_hunk_0_@OPENSSL_sk_shift:bb.a
  %.pre-phi.i = phi i64 [ %.pre20.i, %bb.e ], [ %i.g, %bb.d ], [ 0, %bb.c ]
  store i64 %.pre-phi.i, ptr %0, align 8, !tbaa !19
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %OPENSSL_sk_delete.exit
  %.0 = phi ptr [ %i.f, %OPENSSL_sk_delete.exit ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define i64 @OPENSSL_sk_push(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !19     ; 7 uses
  %i.b = icmp ugt i64 %i.a, 2147483646
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 14, i32 noundef 0, i32 noundef 69, ptr noundef nonnull @.str, i32 noundef 139) #11
  br label %OPENSSL_sk_insert.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !18   ; 3 uses
  %i.e = add nuw nsw i64 %i.a, 1
  %.not.i = icmp ugt i64 %i.d, %i.e
  br i1 %.not.i, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !16
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = shl nuw nsw i64 %i.d, 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16
  %i.j = tail call ptr @OPENSSL_realloc(ptr noundef %i.i, i64 noundef %i.g) #11 ; 5 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %OPENSSL_sk_insert.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = shl nuw nsw i64 %i.d, 1
  store ptr %i.j, ptr %i.h, align 8, !tbaa !16
  store i64 %i.l, ptr %i.c, align 8, !tbaa !18
  %.pre.i = load i64, ptr %0, align 8, !tbaa !19  ; 4 uses
  %.not53.i = icmp ult i64 %i.a, %.pre.i
  br i1 %.not53.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e
  %i.m = phi ptr [ %.pre, %.thread ], [ %i.j, %bb.e ]
  %i.n = phi i64 [ %i.a, %.thread ], [ %.pre.i, %bb.e ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  store ptr %1, ptr %i.o, align 8, !tbaa !21
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.p = sub nuw i64 %.pre.i, %i.a
  %i.q = shl i64 %i.p, 3                          ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZL15OPENSSL_memmovePvPKvm.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr [8 x i8], ptr %i.j, i64 %i.a ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr readonly align 1 %i.s, i64 %i.q, i1 false)
  %.pre55.i = load ptr, ptr %i.h, align 8, !tbaa !16
  %.pre57.pre.i = load i64, ptr %0, align 8, !tbaa !19
  br label %_ZL15OPENSSL_memmovePvPKvm.exit.i

_ZL15OPENSSL_memmovePvPKvm.exit.i:                ; preds = %bb.h, %bb.g
  %.pre57.i = phi i64 [ %.pre.i, %bb.g ], [ %.pre57.pre.i, %bb.h ]
  %i.u = phi ptr [ %i.j, %bb.g ], [ %.pre55.i, %bb.h ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.a
  store ptr %1, ptr %i.v, align 8, !tbaa !21
  br label %bb.i

bb.i:                                             ; preds = %_ZL15OPENSSL_memmovePvPKvm.exit.i, %bb.f
  %i.w = phi i64 [ %.pre57.i, %_ZL15OPENSSL_memmovePvPKvm.exit.i ], [ %i.n, %bb.f ]
  %i.x = add i64 %i.w, 1                          ; 2 uses
  store i64 %i.x, ptr %0, align 8, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.y, align 8, !tbaa !20
  br label %OPENSSL_sk_insert.exit

OPENSSL_sk_insert.exit:                           ; preds = %bb.b, %bb.d, %bb.i
  %.1.i = phi i64 [ 0, %bb.d ], [ 0, %bb.b ], [ %i.x, %bb.i ]
  ret i64 %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define ptr @OPENSSL_sk_pop(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %OPENSSL_sk_delete.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %OPENSSL_sk_delete.exit, label %_ZL15OPENSSL_memmovePvPKvm.exit.i

_ZL15OPENSSL_memmovePvPKvm.exit.i:                ; preds = %bb.b
  %i.d = add i64 %i.b, -1                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.d
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21
  store i64 %i.d, ptr %0, align 8, !tbaa !19
  br label %OPENSSL_sk_delete.exit

OPENSSL_sk_delete.exit:                           ; preds = %_ZL15OPENSSL_memmovePvPKvm.exit.i, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ %i.h, %_ZL15OPENSSL_memmovePvPKvm.exit.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @OPENSSL_sk_dup(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @OPENSSL_zalloc(i64 noundef 40) #11 ; 8 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !18
  %i.h = shl i64 %i.g, 3
  %i.i = tail call ptr @OPENSSL_memdup(ptr noundef %i.e, i64 noundef %i.h) #11 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !16
  %i.k = icmp eq ptr %i.i, null
  br i1 %i.k, label %OPENSSL_sk_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr %0, align 8, !tbaa !19
  store i64 %i.l, ptr %i.b, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.n, ptr %i.o, align 8, !tbaa !20
  %i.p = load i64, ptr %i.f, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.p, ptr %i.q, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.s, ptr %i.t, align 8, !tbaa !17
  br label %bb.e

OPENSSL_sk_free.exit:                             ; preds = %bb.c
  tail call void @OPENSSL_free(ptr noundef null) #11
  tail call void @OPENSSL_free(ptr noundef nonnull %i.b) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %OPENSSL_sk_free.exit, %bb.b, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.b, %bb.d ], [ null, %OPENSSL_sk_free.exit ], [ null, %bb.b ]
  ret ptr %.1
}

declare ptr @OPENSSL_memdup(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define void @OPENSSL_sk_sort(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !20
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.g = load i64, ptr %0, align 8, !tbaa !19     ; 5 uses
  %i.h = icmp ugt i64 %i.g, 1
  br i1 %i.h, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.i = add i64 %i.g, -2
  %i.j = lshr i64 %i.i, 1                         ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.g
  br i1 %i.k, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br label %bb.f

.preheader:                                       ; preds = %_ZL9down_heapP8stack_stPFiPFiPKPKvS4_ES2_S2_Emm.exit, %bb.e
  %.lcssa = phi i64 [ %i.g, %bb.e ], [ %i.au, %_ZL9down_heapP8stack_stPFiPFiPKPKvS4_ES2_S2_Emm.exit ]
  %.02539 = add i64 %.lcssa, -1                   ; 2 uses
  %.not2940 = icmp eq i64 %.02539, 0
  br i1 %.not2940, label %.loopexit, label %.lr.ph43

.lr.ph43:                                         ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  br label %bb.j

bb.f:                                             ; preds = %.lr.ph, %_ZL9down_heapP8stack_stPFiPFiPKPKvS4_ES2_S2_Emm.exit
  %i.n = phi i64 [ %i.g, %.lr.ph ], [ %i.au, %_ZL9down_heapP8stack_stPFiPFiPKPKvS4_ES2_S2_Emm.exit ] ; 4 uses
  %.038 = phi i64 [ %i.j, %.lr.ph ], [ %i.av, %_ZL9down_heapP8stack_stPFiPFiPKPKvS4_ES2_S2_Emm.exit ] ; 3 uses
  %i.o = shl i64 %.038, 1                         ; 2 uses
  %i.p = or disjoint i64 %i.o, 1                  ; 2 uses
  %.not43.i = icmp ult i64 %i.p, %i.n
  br i1 %.not43.i, label %.lr.ph.i, label %_ZL9down_heapP8stack_stPFiPFiPKPKvS4_ES2_S2_Emm.exit

.lr.ph.i:                                         ; preds = %bb.f, %bb.i
  %i.q = phi i64 [ %i.at, %bb.i ], [ %i.p, %bb.f ] ; 2 uses
  %i.r = phi i64 [ %i.as, %bb.i ], [ %i.o, %bb.f ]
  %.044.i = phi i64 [ %.134.i, %bb.i ], [ %.038, %bb.f ] ; 4 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !16   ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.044.i
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !21
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.q
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !21
  %i.y = tail call noundef i32 %1(ptr noundef %i.s, ptr noundef %i.v, ptr noundef %i.x) #11, !inline_history !30
  %i.z = icmp slt i32 %i.y, 0
  %spec.select.i = select i1 %i.z, i64 %i.q, i64 %.044.i ; 3 uses
  %i.aa = add nuw i64 %i.r, 2                     ; 3 uses
  %i.ab = icmp ult i64 %i.aa, %i.n
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !16  ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %spec.select.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !21
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.aa
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !21
  %i.ai = tail call noundef i32 %1(ptr noundef %i.ac, ptr noundef %i.af, ptr noundef %i.ah) #11, !inline_history !30
  %i.aj = icmp slt i32 %i.ai, 0
  %spec.select40.i = select i1 %i.aj, i64 %i.aa, i64 %spec.select.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i
  %.134.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %spec.select40.i, %bb.g ] ; 5 uses
  %i.ak = icmp eq i64 %.044.i, %.134.i
  br i1 %i.ak, label %_ZL9down_heapP8stack_stPFiPFiPKPKvS4_ES2_S2_Emm.exit.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = load ptr, ptr %i.l, align 8, !tbaa !16  ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.044.i ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !21
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.134.i
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !21
  store ptr %i.ap, ptr %i.am, align 8, !tbaa !21
  %i.aq = load ptr, ptr %i.l, align 8, !tbaa !16
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.134.i
  store ptr %i.an, ptr %i.ar, align 8, !tbaa !21
  %i.as = shl i64 %.134.i, 1                      ; 2 uses
  %i.at = or disjoint i64 %i.as, 1                ; 2 uses
  %.not.i = icmp ult i64 %i.at, %i.n
  br i1 %.not.i, label %.lr.ph.i, label %_ZL9down_heapP8stack_stPFiPFiPKPKvS4_ES2_S2_Emm.exit.loopexit

_ZL9down_heapP8stack_stPFiPFiPKPKvS4_ES2_S2_Emm.exit.loopexit: ; preds = %bb.i, %bb.h
  %.pre = load i64, ptr %0, align 8, !tbaa !19
  br label %_ZL9down_heapP8stack_stPFiPFiPKPKvS4_ES2_S2_Emm.exit

_ZL9down_heapP8stack_stPFiPFiPKPKvS4_ES2_S2_Emm.exit: ; preds = %_ZL9down_heapP8stack_stPFiPFiPKPKvS4_ES2_S2_Emm.exit.loopexit, %bb.f
  %i.au = phi i64 [ %.pre, %_ZL9down_heapP8stack_stPFiPFiPKPKvS4_ES2_S2_Emm.exit.loopexit ], [ %i.n, %bb.f ] ; 3 uses
  %i.av = add i64 %.038, -1                       ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.au
  br i1 %i.aw, label %bb.f, label %.preheader, !llvm.loop !31

bb.j:                                             ; preds = %.lr.ph43, %_ZL9down_heapP8stack_stPFiPFiPKPKvS4_ES2_S2_Emm.exit37
  %.02541 = phi i64 [ %.02539, %.lr.ph43 ], [ %.025, %_ZL9down_heapP8stack_stPFiPFiPKPKvS4_ES2_S2_Emm.exit37 ] ; 6 uses
  %2 = load ptr, ptr %i.m, align 8, !tbaa !16     ; 3 uses
  %3 = load ptr, ptr %2, align 8, !tbaa !21
  %4 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.02541
  %5 = load ptr, ptr %4, align 8, !tbaa !21
  store ptr %5, ptr %2, align 8, !tbaa !21
  %6 = load ptr, ptr %i.m, align 8, !tbaa !16
  %7 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.02541
  store ptr %3, ptr %7, align 8, !tbaa !21
  %.not43.i30.not = icmp eq i64 %.02541, 1
  br i1 %.not43.i30.not, label %.loopexit, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bb.j, %bb.m
  %i.ax = phi i64 [ %i.ca, %bb.m ], [ 1, %bb.j ]  ; 2 uses
  %i.ay = phi i64 [ %i.bz, %bb.m ], [ 0, %bb.j ]
  %.044.i32 = phi i64 [ %.134.i34, %bb.m ], [ 0, %bb.j ] ; 4 uses
  %i.az = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.ba = load ptr, ptr %i.m, align 8, !tbaa !16  ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.044.i32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !21
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ax
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !21
  %i.bf = tail call noundef i32 %1(ptr noundef %i.az, ptr noundef %i.bc, ptr noundef %i.be) #11, !inline_history !30
  %i.bg = icmp slt i32 %i.bf, 0
  %spec.select.i33 = select i1 %i.bg, i64 %i.ax, i64 %.044.i32 ; 3 uses
  %i.bh = add nuw i64 %i.ay, 2                    ; 3 uses
  %i.bi = icmp ult i64 %i.bh, %.02541
  br i1 %i.bi, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i31
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.bk = load ptr, ptr %i.m, align 8, !tbaa !16  ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %spec.select.i33
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !21
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bh
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !21
  %i.bp = tail call noundef i32 %1(ptr noundef %i.bj, ptr noundef %i.bm, ptr noundef %i.bo) #11, !inline_history !30
  %i.bq = icmp slt i32 %i.bp, 0
  %spec.select40.i36 = select i1 %i.bq, i64 %i.bh, i64 %spec.select.i33
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i31
  %.134.i34 = phi i64 [ %spec.select.i33, %.lr.ph.i31 ], [ %spec.select40.i36, %bb.k ] ; 5 uses
  %i.br = icmp eq i64 %.044.i32, %.134.i34
  br i1 %i.br, label %_ZL9down_heapP8stack_stPFiPFiPKPKvS4_ES2_S2_Emm.exit37, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = load ptr, ptr %i.m, align 8, !tbaa !16  ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.044.i32 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !21
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.134.i34
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !21
  store ptr %i.bw, ptr %i.bt, align 8, !tbaa !21
  %i.bx = load ptr, ptr %i.m, align 8, !tbaa !16
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.134.i34
  store ptr %i.bu, ptr %i.by, align 8, !tbaa !21
  %i.bz = shl i64 %.134.i34, 1                    ; 2 uses
  %i.ca = or disjoint i64 %i.bz, 1                ; 2 uses
  %.not.i35 = icmp ult i64 %i.ca, %.02541
  br i1 %.not.i35, label %.lr.ph.i31, label %_ZL9down_heapP8stack_stPFiPFiPKPKvS4_ES2_S2_Emm.exit37

_ZL9down_heapP8stack_stPFiPFiPKPKvS4_ES2_S2_Emm.exit37: ; preds = %bb.l, %bb.m
  %.025 = add i64 %.02541, -1                     ; 2 uses
  %.not29 = icmp eq i64 %.025, 0
  br i1 %.not29, label %.loopexit, label %bb.j, !llvm.loop !32

.loopexit:                                        ; preds = %bb.j, %_ZL9down_heapP8stack_stPFiPFiPKPKvS4_ES2_S2_Emm.exit37, %.preheader, %bb.d
  store i32 1, ptr %i.e, align 8, !tbaa !20
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.b, %bb.c, %.loopexit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define ptr @OPENSSL_sk_set_cmp_func(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %.not = icmp eq ptr %i.b, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.c, align 8, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %1, ptr %i.a, align 8, !tbaa !17
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @OPENSSL_sk_deep_copy(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %OPENSSL_sk_dup.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @OPENSSL_zalloc(i64 noundef 40) #11 ; 10 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %OPENSSL_sk_dup.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !18
  %i.h = shl i64 %i.g, 3
  %i.i = tail call ptr @OPENSSL_memdup(ptr noundef %i.e, i64 noundef %i.h) #11 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !16
  %i.k = icmp eq ptr %i.i, null
  br i1 %i.k, label %OPENSSL_sk_dup.exit.thread.sink.split, label %OPENSSL_sk_dup.exit

OPENSSL_sk_dup.exit:                              ; preds = %bb.c
  %i.l = load i64, ptr %0, align 8, !tbaa !19     ; 3 uses
  store i64 %i.l, ptr %i.b, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.n, ptr %i.o, align 8, !tbaa !20
  %i.p = load i64, ptr %i.f, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.p, ptr %i.q, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.s, ptr %i.t, align 8, !tbaa !17
  %.not36.not = icmp eq i64 %i.l, 0
  br i1 %.not36.not, label %OPENSSL_sk_dup.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %OPENSSL_sk_dup.exit, %bb.g
  %i.u = phi i64 [ %i.ak, %bb.g ], [ %i.l, %OPENSSL_sk_dup.exit ]
  %i.v = phi ptr [ %i.al, %bb.g ], [ %i.i, %OPENSSL_sk_dup.exit ] ; 2 uses
  %.02737 = phi i64 [ %i.am, %bb.g ], [ 0, %OPENSSL_sk_dup.exit ] ; 6 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.02737
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !21   ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.z = tail call noundef ptr %1(ptr noundef %2, ptr noundef nonnull %i.x) #11
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.02737
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !21
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !16  ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.02737
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !21
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.preheader, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.pre44 = load i64, ptr %i.b, align 8, !tbaa !19
  br label %bb.g

.preheader:                                       ; preds = %bb.d
  %.not40 = icmp eq i64 %.02737, 0
  br i1 %.not40, label %OPENSSL_sk_dup.exit.thread.sink.split, label %.lr.ph39

OPENSSL_sk_free.exit.loopexit:                    ; preds = %bb.f
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !16
  br label %OPENSSL_sk_dup.exit.thread.sink.split

.lr.ph39:                                         ; preds = %.preheader, %bb.f
  %.038 = phi i64 [ %i.aj, %bb.f ], [ 0, %.preheader ] ; 2 uses
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.038
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !21 ; 2 uses
  %.not33 = icmp eq ptr %i.ai, null
  br i1 %.not33, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph39
  tail call void %3(ptr noundef %4, ptr noundef nonnull %i.ai) #11
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph39, %bb.e
  %i.aj = add nuw i64 %.038, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.aj, %.02737
  br i1 %exitcond.not, label %OPENSSL_sk_free.exit.loopexit, label %.lr.ph39, !llvm.loop !33

bb.g:                                             ; preds = %._crit_edge, %.lr.ph
  %i.ak = phi i64 [ %.pre44, %._crit_edge ], [ %i.u, %.lr.ph ] ; 2 uses
  %i.al = phi ptr [ %i.ac, %._crit_edge ], [ %i.v, %.lr.ph ]
  %i.am = add nuw i64 %.02737, 1                  ; 2 uses
  %.not = icmp ult i64 %i.am, %i.ak
  br i1 %.not, label %.lr.ph, label %OPENSSL_sk_dup.exit.thread, !llvm.loop !34

OPENSSL_sk_dup.exit.thread.sink.split:            ; preds = %.preheader, %OPENSSL_sk_free.exit.loopexit, %bb.c
  %.sink = phi ptr [ null, %bb.c ], [ %.pre, %OPENSSL_sk_free.exit.loopexit ], [ %i.ac, %.preheader ]
  tail call void @OPENSSL_free(ptr noundef %.sink) #11
  tail call void @OPENSSL_free(ptr noundef nonnull %i.b) #11
  br label %OPENSSL_sk_dup.exit.thread

OPENSSL_sk_dup.exit.thread:                       ; preds = %bb.g, %OPENSSL_sk_dup.exit.thread.sink.split, %OPENSSL_sk_dup.exit, %bb.b, %bb.a
  %.1 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ %i.b, %OPENSSL_sk_dup.exit ], [ null, %OPENSSL_sk_dup.exit.thread.sink.split ], [ %i.b, %bb.g ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @sk_new_null() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @OPENSSL_zalloc(i64 noundef 40) #11 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %OPENSSL_sk_new_null.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @OPENSSL_calloc(i64 noundef 4, i64 noundef 8) #11 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !16
  %i.e = icmp eq ptr %i.c, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.f, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 4, ptr %i.g, align 8, !tbaa !18
  br label %OPENSSL_sk_new_null.exit

bb.d:                                             ; preds = %bb.b
  tail call void @OPENSSL_free(ptr noundef nonnull %i.a) #11
  br label %OPENSSL_sk_new_null.exit

OPENSSL_sk_new_null.exit:                         ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.a, %bb.c ], [ null, %bb.d ], [ null, %bb.a ]
  ret ptr %.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @sk_num(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %OPENSSL_sk_num.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8, !tbaa !19
  br label %OPENSSL_sk_num.exit

OPENSSL_sk_num.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @sk_value(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %OPENSSL_sk_value.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %0, align 8, !tbaa !19
  %.not7.i = icmp ult i64 %1, %i.a
  br i1 %.not7.i, label %bb.c, label %OPENSSL_sk_value.exit

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21
  br label %OPENSSL_sk_value.exit

OPENSSL_sk_value.exit:                            ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi ptr [ %i.e, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0.i
}

end_hunk_0
