Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/zstd_compress?download=true
inline.NumInlined: 848
inline.NumDeleted: 178
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 19
begin_hunk_0_@ZSTD_writeFrameHeader:bb.a
  %i.k = load i32, ptr %i.j, align 8, !tbaa !108
  %.not = icmp eq i32 %i.k, 0
  %i.l = select i1 %.not, i32 %i.h, i32 0         ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.n = load i32, ptr %i.m, align 4, !tbaa !107
  %i.o = icmp sgt i32 %i.n, 0
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !100  ; 2 uses
  %i.r = shl nuw i32 1, %i.q
  %i.s = load i32, ptr %i.i, align 8, !tbaa !60
  %i.t = icmp ne i32 %i.s, 0                      ; 2 uses
  %i.u = zext i32 %i.r to i64
  %i.v = icmp ule i64 %3, %i.u
  %i.w = select i1 %i.t, i1 %i.v, i1 false        ; 3 uses
  %.tr = trunc i32 %i.q to i8
  %i.x = shl i8 %.tr, 3
  %i.y = add i8 %i.x, -80
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.z = icmp ugt i64 %3, 255
  %i.aa = zext i1 %i.z to i32
  %i.ab = icmp ugt i64 %3, 65791
  %i.ac = zext i1 %i.ab to i32
  %i.ad = add nuw nsw i32 %i.aa, %i.ac
  %i.ae = icmp ugt i64 %3, 4294967294
  %i.af = zext i1 %i.ae to i32
  %i.ag = add nuw nsw i32 %i.ad, %i.af
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.ah = phi i32 [ %i.ag, %bb.b ], [ 0, %bb.a ]  ; 2 uses
  %i.ai = select i1 %i.o, i32 4, i32 0
  %i.aj = add nuw nsw i32 %i.ai, %i.l
  %i.ak = select i1 %i.w, i32 32, i32 0
  %i.al = or disjoint i32 %i.ak, %i.aj
  %i.am = shl nuw nsw i32 %i.ah, 6
  %i.an = or disjoint i32 %i.am, %i.al
  %i.ao = trunc nuw i32 %i.an to i8
  %i.ap = icmp ult i64 %1, 18
  br i1 %i.ap, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aq = load i32, ptr %2, align 8, !tbaa !99
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 -47205080, ptr %0, align 1, !tbaa !64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i64 [ 4, %bb.e ], [ 0, %bb.d ]        ; 3 uses
  %i.as = or disjoint i64 %.0, 1                  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %.0
  store i8 %i.ao, ptr %i.at, align 1, !tbaa !181
  br i1 %i.w, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = or disjoint i64 %.0, 2
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %i.as
  store i8 %i.y, ptr %i.av, align 1, !tbaa !181
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi i64 [ %i.as, %bb.f ], [ %i.au, %bb.g ] ; 7 uses
  switch i32 %i.l, label %bb.l [
    i32 3, label %bb.k
    i32 1, label %bb.i
    i32 2, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.aw = trunc i32 %4 to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %.1
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !181
  %i.ay = add nuw nsw i64 %.1, 1
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 %.1
  %i.ba = trunc i32 %4 to i16
  store i16 %i.ba, ptr %i.az, align 1, !tbaa !203
  %i.bb = add nuw nsw i64 %.1, 2
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %.1
  store i32 %4, ptr %i.bc, align 1, !tbaa !64
  %i.bd = add nuw nsw i64 %.1, 4
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.i
  %.2 = phi i64 [ %.1, %bb.h ], [ %i.bd, %bb.k ], [ %i.ay, %bb.i ], [ %i.bb, %bb.j ] ; 9 uses
  switch i32 %i.ah, label %bb.m [
    i32 3, label %bb.q
    i32 1, label %bb.o
    i32 2, label %bb.p
  ]

bb.m:                                             ; preds = %bb.l
  br i1 %i.w, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.be = trunc i64 %3 to i8
  %i.bf = add nuw nsw i64 %.2, 1
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %.2
  store i8 %i.be, ptr %i.bg, align 1, !tbaa !181
  br label %bb.r

bb.o:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %.2
  %i.bi = trunc i64 %3 to i16
  %i.bj = add i16 %i.bi, -256
  store i16 %i.bj, ptr %i.bh, align 1, !tbaa !203
  %i.bk = add nuw nsw i64 %.2, 2
  br label %bb.r

bb.p:                                             ; preds = %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 %.2
  %i.bm = trunc i64 %3 to i32
  store i32 %i.bm, ptr %i.bl, align 1, !tbaa !64
  %i.bn = add nuw nsw i64 %.2, 4
  br label %bb.r

bb.q:                                             ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 %.2
  store i64 %3, ptr %i.bo, align 1, !tbaa !132
  %i.bp = add nuw nsw i64 %.2, 8
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.p, %bb.q, %bb.n, %bb.m, %bb.c
  %.061 = phi i64 [ -70, %bb.c ], [ %i.bf, %bb.n ], [ %.2, %bb.m ], [ %i.bp, %bb.q ], [ %i.bk, %bb.o ], [ %i.bn, %bb.p ]
  ret i64 %.061
}

declare i32 @ZSTD_XXH64_update(ptr noundef captures(address), ptr noundef captures(address), i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @ZSTD_XXH64_digest(ptr noundef captures(address)) local_unnamed_addr #13

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i64 @convertSequences_noRepcodes(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #12 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = add i64 %2, 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.025 = phi i64 [ 0, %.lr.ph ], [ %i.s, %bb.f ] ; 5 uses
  %.02224 = phi i64 [ 0, %.lr.ph ], [ %.2, %bb.f ]
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.025 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !196
  %i.d = add i32 %i.c, 3
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.025 ; 3 uses
  store i32 %i.d, ptr %i.e, align 4, !tbaa !179
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !198  ; 2 uses
  %i.h = trunc i32 %i.g to i16
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i16 %i.h, ptr %i.i, align 4, !tbaa !178
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !197  ; 2 uses
  %i.l = trunc i32 %i.k to i16
  %i.m = add i16 %i.l, -3
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  store i16 %i.m, ptr %i.n, align 2, !tbaa !180
  %i.o = icmp ugt i32 %i.k, 65538
  br i1 %i.o, label %bb.c, label %bb.d, !prof !266

bb.c:                                             ; preds = %bb.b
  %i.p = add nuw i64 %.025, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i64 [ %i.p, %bb.c ], [ %.02224, %bb.b ]
  %i.q = icmp ugt i32 %i.g, 65535
  br i1 %i.q, label %bb.e, label %bb.f, !prof !266

bb.e:                                             ; preds = %bb.d
  %i.r = add i64 %i.a, %.025
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.2 = phi i64 [ %i.r, %bb.e ], [ %.1, %bb.d ]   ; 2 uses
  %i.s = add nuw i64 %.025, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.022.lcssa = phi i64 [ 0, %bb.a ], [ %.2, %bb.f ]
  ret i64 %.022.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i64 -107, 1) i64 @ZSTD_convertBlockSequences(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #11 {
bb.a:
  %4 = alloca %struct.repcodes_s, align 8         ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.c = load i64, ptr %i.b, align 8, !tbaa !267
  %.not = icmp ult i64 %2, %i.c
  br i1 %.not, label %bb.b, label %bb.ad

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %i.f, i64 12, i1 false)
  %.not69 = icmp eq i32 %3, 0                     ; 2 uses
  br i1 %.not69, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.g = add i64 %2, -1                           ; 2 uses
  %.not84 = icmp eq i64 %i.g, 0
  br i1 %.not84, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.promoted = load i32, ptr %4, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 984 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1052 ; 2 uses
  %.promoted81 = load i32, ptr %i.h, align 4
  %.promoted82 = load i32, ptr %i.i, align 8
  %.promoted83 = load ptr, ptr %i.k, align 8, !tbaa !175
  br label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !219  ; 3 uses
  %i.n = add i64 %2, -1                           ; 3 uses
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %.thread, label %.lr.ph.i

.thread:                                          ; preds = %bb.c
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %2
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 984
  store ptr %i.p, ptr %i.q, align 8, !tbaa !218
  br label %.loopexit.thread

.lr.ph.i:                                         ; preds = %bb.c, %bb.g
  %.025.i = phi i64 [ %i.ai, %bb.g ], [ 0, %bb.c ] ; 5 uses
  %.02224.i = phi i64 [ %.2.i, %bb.g ], [ 0, %bb.c ]
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.025.i ; 3 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !196
  %i.t = add i32 %i.s, 3
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.025.i ; 3 uses
  store i32 %i.t, ptr %i.u, align 4, !tbaa !179
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !198  ; 2 uses
  %i.x = trunc i32 %i.w to i16
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i16 %i.x, ptr %i.y, align 4, !tbaa !178
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !197 ; 2 uses
  %i.ab = trunc i32 %i.aa to i16
  %i.ac = add i16 %i.ab, -3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 6
  store i16 %i.ac, ptr %i.ad, align 2, !tbaa !180
  %i.ae = icmp ugt i32 %i.aa, 65538
  br i1 %i.ae, label %bb.d, label %bb.e, !prof !266

bb.d:                                             ; preds = %.lr.ph.i
  %i.af = add nuw i64 %.025.i, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %.1.i = phi i64 [ %i.af, %bb.d ], [ %.02224.i, %.lr.ph.i ]
  %i.ag = icmp ugt i32 %i.w, 65535
  br i1 %i.ag, label %bb.f, label %bb.g, !prof !266

bb.f:                                             ; preds = %bb.e
  %i.ah = add i64 %.025.i, %2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2.i = phi i64 [ %i.ah, %bb.f ], [ %.1.i, %bb.e ] ; 5 uses
  %i.ai = add nuw i64 %.025.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ai, %i.n
  br i1 %exitcond.not.i, label %convertSequences_noRepcodes.exit, label %.lr.ph.i, !llvm.loop !9

convertSequences_noRepcodes.exit:                 ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %2
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 984
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !218
  %.not70 = icmp eq i64 %.2.i, 0
  br i1 %.not70, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %convertSequences_noRepcodes.exit
  %.not71 = icmp ugt i64 %.2.i, %i.n
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1052
  br i1 %.not71, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 2, ptr %i.am, align 8, !tbaa !412
  %i.ao = trunc i64 %.2.i to i32
  %i.ap = add i32 %i.ao, -1
  br label %..loopexit_crit_edge.a

bb.j:                                             ; preds = %bb.h
  store i32 1, ptr %i.am, align 8, !tbaa !412
  %i.aq = sub i64 %.2.i, %2
  %i.ar = trunc i64 %i.aq to i32
  br label %..loopexit_crit_edge.a

bb.k:                                             ; preds = %.lr.ph, %ZSTD_updateRep.exit
  %i.as = phi ptr [ %.promoted83, %.lr.ph ], [ %i.cg, %ZSTD_updateRep.exit ] ; 6 uses
  %i.at = phi i32 [ %.promoted82, %.lr.ph ], [ %i.cs, %ZSTD_updateRep.exit ] ; 3 uses
  %i.au = phi i32 [ %.promoted81, %.lr.ph ], [ %i.ct, %ZSTD_updateRep.exit ] ; 5 uses
  %.06580 = phi i64 [ 0, %.lr.ph ], [ %i.cv, %ZSTD_updateRep.exit ] ; 2 uses
  %i.av = phi i32 [ %.promoted, %.lr.ph ], [ %i.cu, %ZSTD_updateRep.exit ] ; 7 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.06580 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !198 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !197
  %i.bb = icmp eq i32 %i.ay, 0                    ; 5 uses
  %i.bc = zext i1 %i.bb to i32
  %i.bd = load i32, ptr %i.aw, align 4, !tbaa !196 ; 5 uses
  %i.be = add i32 %i.bd, 3                        ; 2 uses
  %i.bf = icmp ne i32 %i.bd, %i.av
  %or.cond77.not = select i1 %i.bb, i1 true, i1 %i.bf
  br i1 %or.cond77.not, label %bb.l, label %ZSTD_finalizeOffBase.exit

bb.l:                                             ; preds = %bb.k
  %i.bg = icmp eq i32 %i.bd, %i.au
  br i1 %i.bg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bh = select i1 %i.bb, i32 1, i32 2
  br label %ZSTD_finalizeOffBase.exit

bb.n:                                             ; preds = %bb.l
  %i.bi = icmp eq i32 %i.bd, %i.at
  br i1 %i.bi, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bj = xor i32 %i.bc, 3
  br label %ZSTD_finalizeOffBase.exit

bb.p:                                             ; preds = %bb.n
  br i1 %i.bb, label %ZSTD_finalizeOffBase.exit.thread, label %ZSTD_finalizeOffBase.exit

ZSTD_finalizeOffBase.exit.thread:                 ; preds = %bb.p
  %i.bk = add i32 %i.av, -1
  %i.bl = icmp eq i32 %i.bd, %i.bk
  %spec.select.i = select i1 %i.bl, i32 3, i32 %i.be
  br label %bb.r

ZSTD_finalizeOffBase.exit:                        ; preds = %bb.k, %bb.m, %bb.o, %bb.p
  %.0.i = phi i32 [ %i.bh, %bb.m ], [ %i.bj, %bb.o ], [ 1, %bb.k ], [ %i.be, %bb.p ] ; 2 uses
  %i.bm = icmp ugt i32 %i.ay, 65535
  br i1 %i.bm, label %bb.q, label %bb.r, !prof !413

bb.q:                                             ; preds = %ZSTD_finalizeOffBase.exit
  store i32 1, ptr %i.j, align 8, !tbaa !182
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !171
  %i.bo = ptrtoint ptr %i.as to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = lshr exact i64 %i.bq, 3
  %i.bs = trunc i64 %i.br to i32
  store i32 %i.bs, ptr %i.l, align 4, !tbaa !183
  br label %bb.r

bb.r:                                             ; preds = %ZSTD_finalizeOffBase.exit.thread, %bb.q, %ZSTD_finalizeOffBase.exit
  %.0.i92 = phi i32 [ %spec.select.i, %ZSTD_finalizeOffBase.exit.thread ], [ %.0.i, %bb.q ], [ %.0.i, %ZSTD_finalizeOffBase.exit ] ; 4 uses
  %i.bt = zext i32 %i.ba to i64
  %i.bu = trunc i32 %i.ay to i16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i16 %i.bu, ptr %i.bv, align 4, !tbaa !178
  store i32 %.0.i92, ptr %i.as, align 4, !tbaa !179
  %i.bw = add nsw i64 %i.bt, -3                   ; 2 uses
  %i.bx = icmp ugt i64 %i.bw, 65535
  br i1 %i.bx, label %bb.s, label %ZSTD_storeSeqOnly.exit, !prof !266

bb.s:                                             ; preds = %bb.r
  store i32 2, ptr %i.j, align 8, !tbaa !182
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !171
  %i.bz = ptrtoint ptr %i.as to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = lshr exact i64 %i.cb, 3
  %i.cd = trunc i64 %i.cc to i32
  store i32 %i.cd, ptr %i.l, align 4, !tbaa !183
  br label %ZSTD_storeSeqOnly.exit

ZSTD_storeSeqOnly.exit:                           ; preds = %bb.r, %bb.s
  %i.ce = trunc i64 %i.bw to i16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.as, i64 6
  store i16 %i.ce, ptr %i.cf, align 2, !tbaa !180
  %i.cg = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.ch = icmp ugt i32 %.0.i92, 3
  br i1 %i.ch, label %bb.t, label %bb.u

bb.t:                                             ; preds = %ZSTD_storeSeqOnly.exit
  store i32 %i.au, ptr %i.i, align 8, !tbaa !64
  store i32 %i.av, ptr %i.h, align 4, !tbaa !64
  %i.ci = add i32 %.0.i92, -3
  br label %.sink.split.i

bb.u:                                             ; preds = %ZSTD_storeSeqOnly.exit
  %not. = xor i1 %i.bb, true
  %i.cj = sext i1 %not. to i32
  %i.ck = add nsw i32 %.0.i92, %i.cj              ; 3 uses
  switch i32 %i.ck, label %bb.w [
    i32 0, label %ZSTD_updateRep.exit
    i32 3, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u
  %i.cl = add i32 %i.av, -1
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.cm = zext i32 %i.ck to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !64
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cp = phi i32 [ %i.cl, %bb.v ], [ %i.co, %bb.w ]
  %.not22.i = icmp eq i32 %i.ck, 1
  %i.cq = select i1 %.not22.i, i32 %i.at, i32 %i.au ; 2 uses
  store i32 %i.cq, ptr %i.i, align 8, !tbaa !64
  store i32 %i.av, ptr %i.h, align 4, !tbaa !64
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.x, %bb.t
  %i.cr = phi i32 [ %i.cq, %bb.x ], [ %i.au, %bb.t ]
  %.sink.i = phi i32 [ %i.cp, %bb.x ], [ %i.ci, %bb.t ] ; 2 uses
  store i32 %.sink.i, ptr %4, align 8, !tbaa !64
  br label %ZSTD_updateRep.exit

ZSTD_updateRep.exit:                              ; preds = %bb.u, %.sink.split.i
  %i.cs = phi i32 [ %i.at, %bb.u ], [ %i.cr, %.sink.split.i ]
  %i.ct = phi i32 [ %i.au, %bb.u ], [ %i.av, %.sink.split.i ]
  %i.cu = phi i32 [ %i.av, %bb.u ], [ %.sink.i, %.sink.split.i ]
  %i.cv = add nuw i64 %.06580, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.cv, %i.g
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %bb.k, !llvm.loop !411

..loopexit_crit_edge:                             ; preds = %ZSTD_updateRep.exit
  store ptr %i.cg, ptr %i.k, align 8, !tbaa !175
  br label %.loopexit

..loopexit_crit_edge.a:                           ; preds = %bb.i, %bb.j
  %.sink = phi i32 [ %i.ar, %bb.j ], [ %i.ap, %bb.i ]
  store i32 %.sink, ptr %i.an, align 4, !tbaa !414
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge.a, %..loopexit_crit_edge, %convertSequences_noRepcodes.exit
  %i.cw = icmp ugt i64 %2, 1
  %or.cond = and i1 %i.cw, %.not69
  br i1 %or.cond, label %bb.y, label %.loopexit.thread

bb.y:                                             ; preds = %.loopexit
  %i.cx = icmp ugt i64 %2, 3
  br i1 %i.cx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cy = add i64 %2, 4294967294
  %i.cz = add i64 %2, 4294967292
  %i.da = and i64 %i.cz, 4294967295
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !196
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.dc, ptr %i.dd, align 8, !tbaa !64
  %i.de = add i64 %2, 4294967293
  %i.df = and i64 %i.de, 4294967295
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !196
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !64
  %i.dj = and i64 %i.cy, 4294967295
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !196
  store i32 %i.dl, ptr %4, align 8, !tbaa !64
  br label %.loopexit.thread

bb.aa:                                            ; preds = %bb.y
  %i.dm = icmp eq i64 %2, 3
  br i1 %i.dm, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dn = load i32, ptr %4, align 8, !tbaa !64
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.dn, ptr %i.do, align 8, !tbaa !64
  %i.dp = load i32, ptr %1, align 4, !tbaa !196
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !64
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.loopexit.thread.sink.split

bb.ac:                                            ; preds = %bb.aa
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.dt = load <2 x i32>, ptr %4, align 8, !tbaa !64
  store <2 x i32> %i.dt, ptr %i.ds, align 4, !tbaa !64
  br label %.loopexit.thread.sink.split

.loopexit.thread.sink.split:                      ; preds = %bb.ac, %bb.ab
  %.sink94.in = phi ptr [ %i.dr, %bb.ab ], [ %1, %bb.ac ]
  %.sink94 = load i32, ptr %.sink94.in, align 4, !tbaa !196
  store i32 %.sink94, ptr %4, align 8, !tbaa !64
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.loopexit.thread.sink.split, %.preheader, %.thread, %bb.z, %.loopexit
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 3232
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !71
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.dw, ptr noundef nonnull align 8 dereferenceable(12) %4, i64 12, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %.loopexit.thread
  %.0 = phi i64 [ 0, %.loopexit.thread ], [ -107, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ZSTD_get1BlockSummary(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.BlockSummary) align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = icmp ugt i64 %2, 3
  br i1 %i.a, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.b = add i64 %2, -3
  %i.c = and i64 %2, -4
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.f
  %.059 = phi i64 [ %i.f, %bb.f ], [ 0, %.preheader ]
  %.055 = phi i64 [ %i.k, %bb.f ], [ 0, %.preheader ] ; 2 uses
  %.051 = phi i64 [ %i.p, %bb.f ], [ 0, %.preheader ] ; 3 uses
  %.047 = phi i64 [ %i.u, %bb.f ], [ 0, %.preheader ] ; 4 uses
  %.045 = phi i64 [ %i.w, %bb.f ], [ 0, %.preheader ] ; 6 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.045
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.val71 = load i64, ptr %i.e, align 1, !tbaa !132 ; 2 uses
  %i.f = add i64 %.val71, %.059                   ; 6 uses
  %i.g = icmp ugt i64 %.val71, 4294967295
  br i1 %i.g, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.h = or disjoint i64 %.045, 1                 ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.val70 = load i64, ptr %i.j, align 1, !tbaa !132 ; 2 uses
  %i.k = add i64 %.val70, %.055                   ; 5 uses
  %i.l = icmp ugt i64 %.val70, 4294967295
  br i1 %i.l, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.m = or disjoint i64 %.045, 2                 ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %.val69 = load i64, ptr %i.o, align 1, !tbaa !132 ; 2 uses
  %i.p = add i64 %.val69, %.051                   ; 4 uses
  %i.q = icmp ugt i64 %.val69, 4294967295
  br i1 %i.q, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.r = or disjoint i64 %.045, 3                 ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.val68 = load i64, ptr %i.t, align 1, !tbaa !132 ; 2 uses
  %i.u = add i64 %.val68, %.047                   ; 3 uses
  %i.v = icmp ugt i64 %.val68, 4294967295
  br i1 %i.v, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.w = add nuw i64 %.045, 4                     ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.b
  br i1 %i.x, label %bb.b, label %.loopexit, !llvm.loop !10

.loopexit:                                        ; preds = %bb.f, %bb.a
  %.160 = phi i64 [ 0, %bb.a ], [ %i.f, %bb.f ]
  %.257 = phi i64 [ 0, %bb.a ], [ %i.k, %bb.f ]
  %.253 = phi i64 [ 0, %bb.a ], [ %i.p, %bb.f ]
  %.249 = phi i64 [ 0, %bb.a ], [ %i.u, %bb.f ]
  %.2 = phi i64 [ 0, %bb.a ], [ %i.c, %bb.f ]     ; 2 uses
  %i.y = icmp ult i64 %.2, %2
  br i1 %i.y, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit, %bb.g
  %.386 = phi i64 [ %i.ad, %bb.g ], [ %.2, %.loopexit ] ; 3 uses
  %.26185 = phi i64 [ %i.ab, %bb.g ], [ %.160, %.loopexit ]
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.386
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %.val = load i64, ptr %i.aa, align 1, !tbaa !132 ; 2 uses
  %i.ab = add i64 %.val, %.26185                  ; 2 uses
  %i.ac = icmp ugt i64 %.val, 4294967295
  br i1 %i.ac, label %bb.g, label %.thread

bb.g:                                             ; preds = %.lr.ph
  %i.ad = add i64 %.386, 1                        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.g, %.loopexit
  store i64 -107, ptr %0, align 8, !tbaa !416
  br label %bb.h

.thread:                                          ; preds = %bb.d, %bb.c, %bb.b, %bb.e, %.lr.ph
  %.362 = phi i64 [ %i.ab, %.lr.ph ], [ %i.f, %bb.e ], [ %i.f, %bb.b ], [ %i.f, %bb.c ], [ %i.f, %bb.d ]
  %.358 = phi i64 [ %.257, %.lr.ph ], [ %i.k, %bb.c ], [ %.055, %bb.b ], [ %i.k, %bb.e ], [ %i.k, %bb.d ]
  %.354 = phi i64 [ %.253, %.lr.ph ], [ %.051, %bb.c ], [ %.051, %bb.b ], [ %i.p, %bb.e ], [ %i.p, %bb.d ]
  %.350 = phi i64 [ %.249, %.lr.ph ], [ %.047, %bb.c ], [ %.047, %bb.b ], [ %i.u, %bb.e ], [ %.047, %bb.d ]
  %.4 = phi i64 [ %.386, %.lr.ph ], [ %i.h, %bb.c ], [ %.045, %bb.b ], [ %i.r, %bb.e ], [ %i.m, %bb.d ]
  %i.ae = add i64 %.4, 1
  store i64 %i.ae, ptr %0, align 8, !tbaa !416
  %i.af = add i64 %.358, %.362
  %i.ag = add i64 %i.af, %.354
  %i.ah = add i64 %i.ag, %.350                    ; 2 uses
  %i.ai = and i64 %i.ah, 4294967295               ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !417
  %i.ak = lshr i64 %i.ah, 32
  %i.al = add nuw nsw i64 %i.ai, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !418
  br label %bb.h

bb.h:                                             ; preds = %.thread, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_compressSequencesAndLiterals(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i64 %7, %6
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i64 @ZSTD_CCtx_init_compressStream2(ptr noundef %0, i32 noundef 2, i64 noundef %8) ; 2 uses
  %i.c = icmp ult i64 %i.b, -119
  br i1 %i.c, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.f = load i32, ptr %i.e, align 4, !tbaa !262
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.i = load i32, ptr %i.h, align 8, !tbaa !268
  %.not46 = icmp eq i32 %i.i, 0
  br i1 %.not46, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.k = load i32, ptr %i.j, align 4, !tbaa !215
  %.not47 = icmp eq i32 %i.k, 0
  br i1 %.not47, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.m = load i32, ptr %i.l, align 8, !tbaa !169
  %i.n = tail call fastcc i64 @ZSTD_writeFrameHeader(ptr noundef %1, i64 noundef %2, ptr noundef nonnull %i.d, i64 noundef %8, i32 noundef %i.m) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.n
  %i.p = sub i64 %2, %i.n
  %i.q = tail call fastcc i64 @ZSTD_compressSequencesAndLiterals_internal(ptr noundef nonnull %0, ptr noundef %i.o, i64 noundef %i.p, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i64 noundef %8) ; 2 uses
  %i.r = icmp ult i64 %i.q, -119
  %.045 = select i1 %i.r, i64 %i.n, i64 0
  %spec.select = add i64 %.045, %i.q
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a, %bb.b
  %.2 = phi i64 [ %i.b, %bb.b ], [ -66, %bb.a ], [ -14, %bb.c ], [ -40, %bb.d ], [ -14, %bb.e ], [ %spec.select, %bb.f ]
  ret i64 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_compressSequencesAndLiterals_internal(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i64 noundef %7) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.c = load i32, ptr %i.b, align 8, !tbaa !263
  %i.d = icmp eq i32 %i.c, 1
  %i.e = zext i1 %i.d to i32
  switch i64 %4, label %bb.e [
    i64 0, label %.critedge
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !198
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ugt i64 %2, 2
  br i1 %i.i, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  store i16 1, ptr %1, align 1, !tbaa !203
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 0, ptr %i.j, align 1, !tbaa !181
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.l = add i64 %2, -3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a, %bb.b
  %.1101 = phi i64 [ %i.l, %bb.d ], [ %2, %bb.b ], [ %2, %bb.a ]
end_hunk_0
begin_hunk_1_@llvm.umin.v2i32
!213 = !{!57, !27, i64 776}
!214 = !{!57, !19, i64 244}
!215 = !{!57, !19, i64 276}
!216 = !{!57, !19, i64 968}
!217 = !{!57, !19, i64 936}
!218 = !{!57, !37, i64 984}
!219 = !{!57, !37, i64 976}
!220 = !{!"", !43, i64 0, !27, i64 8}
!221 = !{!220, !43, i64 0}
!222 = !{!220, !27, i64 8}
!223 = !{!37, !37, i64 0}
!224 = !{i64 0, i64 8, !223, i64 8, i64 8, !223, i64 16, i64 8, !167, i64 24, i64 8, !167, i64 32, i64 8, !167, i64 40, i64 8, !167, i64 48, i64 8, !167, i64 56, i64 8, !132, i64 64, i64 8, !132, i64 72, i64 4, !64, i64 76, i64 4, !64}
!225 = !{!"llvm.loop.unroll.runtime.disable"}
!226 = !{!"llvm.loop.isvectorized", i32 1}
!227 = !{!82, !27, i64 8}
!228 = !{!57, !33, i64 3768}
!229 = !{!82, !19, i64 6068}
!230 = !{!82, !19, i64 244}
!231 = !{!82, !19, i64 6072}
!232 = !{!82, !19, i64 6064}
!233 = !{!"llvm.loop.unroll.disable"}
!234 = !{!82, !29, i64 0}
!235 = !{!82, !19, i64 16}
!236 = !{!57, !27, i64 3576}
!237 = !{!57, !27, i64 3616}
!238 = !{!"p1 _ZTS18ZSTD_CCtx_params_s", !29, i64 0}
!239 = !{!"p1 _ZTS11ZSTD_CCtx_s", !29, i64 0}
!240 = !{!"p1 _ZTS11ZSTD_DCtx_s", !29, i64 0}
!241 = !{!"", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !27, i64 16, !27, i64 24, !27, i64 32, !238, i64 40, !239, i64 48, !240, i64 56}
!242 = !{!241, !19, i64 0}
!243 = !{!241, !19, i64 4}
!244 = !{!241, !19, i64 8}
!245 = !{!241, !27, i64 16}
!246 = !{!241, !27, i64 24}
!247 = !{!241, !27, i64 32}
!248 = !{!241, !238, i64 40}
!249 = !{!241, !239, i64 48}
!250 = !{!"", !25, i64 0, !26, i64 28}
!251 = !{!250, !19, i64 28}
!252 = !{!32, !19, i64 64}
!253 = !{!57, !19, i64 364}
!254 = !{!57, !27, i64 3672}
!255 = !{!57, !27, i64 3600}
!256 = !{i64 0, i64 8, !63, i64 8, i64 8, !132, i64 16, i64 8, !132}
!257 = !{!57, !19, i64 368}
!258 = !{!57, !27, i64 3624}
!259 = !{!57, !27, i64 3632}
!260 = !{!57, !19, i64 3644}
!261 = !{!57, !38, i64 3608}
!262 = !{!57, !19, i64 372}
!263 = !{!57, !19, i64 456}
!264 = !{!47, !29, i64 0}
!265 = !{!47, !29, i64 8}
!266 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!267 = !{!57, !27, i64 1032}
!268 = !{!57, !19, i64 376}
!269 = !{!31, !29, i64 200}
!270 = !{!32, !29, i64 40}
!271 = !{!32, !29, i64 48}
!272 = !{!57, !29, i64 3168}
!273 = !{!57, !27, i64 3176}
!274 = !{!57, !27, i64 5280}
!275 = !{!57, !29, i64 5272}
!276 = !{!46, !19, i64 140}
!277 = !{!46, !19, i64 48}
!278 = !{!46, !19, i64 40}
!279 = !{!46, !45, i64 248}
!280 = !{!46, !43, i64 112}
!281 = !{!46, !43, i64 128}
!282 = !{!46, !43, i64 120}
!283 = !{!46, !38, i64 56}
!284 = !{!"", !19, i64 0, !19, i64 4, !19, i64 8, !27, i64 16, !27, i64 24, !19, i64 32}
!285 = !{!284, !27, i64 24}
!286 = !{!284, !19, i64 32}
!287 = !{!284, !19, i64 0}
!288 = !{!284, !27, i64 16}
!289 = !{!284, !19, i64 4}
!290 = !{!284, !19, i64 8}
!291 = !{!57, !19, i64 260}
!292 = !{!46, !38, i64 8}
!293 = !{!"", !19, i64 0, !19, i64 4, !27, i64 8}
!294 = !{!293, !19, i64 0}
!295 = !{!293, !27, i64 8}
!296 = !{!"branch_weights", i32 8, i32 24}
!297 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!298 = distinct !{ptr @ZSTD_CCtx_loadDictionary_advanced, null}
!299 = distinct !{!299, i1 true, !"ZSTD_makeCCtxParamsFromCParams"}
!300 = distinct !{!300, !299, !"ZSTD_makeCCtxParamsFromCParams: argument 0"}
!301 = !{!300}
!302 = distinct !{!302, i1 true, !"ZSTD_getCParams_internal"}
!303 = distinct !{!303, !302, !"ZSTD_getCParams_internal: argument 0"}
!304 = distinct !{!304, i1 true, !"ZSTD_getCParams_internal"}
!305 = distinct !{!305, !304, !"ZSTD_getCParams_internal: argument 0"}
!306 = distinct !{!306, i1 true, !"ZSTD_getCParams_internal"}
!307 = distinct !{!307, !306, !"ZSTD_getCParams_internal: argument 0"}
!308 = distinct !{!308, i1 true, !"ZSTD_getCParams_internal"}
!309 = distinct !{!309, !308, !"ZSTD_getCParams_internal: argument 0"}
!310 = distinct !{!310, !147}
!311 = !{!303}
!312 = !{!305}
!313 = !{!307}
!314 = !{!309}
!315 = distinct !{!315, i1 true, !"ZSTD_makeCCtxParamsFromCParams"}
!316 = distinct !{!316, !315, !"ZSTD_makeCCtxParamsFromCParams: argument 0"}
!317 = !{!316}
!318 = distinct !{!318, i1 true, !"ZSTD_getCParams_internal"}
!319 = distinct !{!319, !318, !"ZSTD_getCParams_internal: argument 0"}
!320 = distinct !{!320, !147}
!321 = !{!319}
!322 = !{!"", !33, i64 0, !33, i64 8, !33, i64 16, !33, i64 24, !19, i64 32, !19, i64 36}
!323 = !{!322, !33, i64 0}
!324 = !{!322, !33, i64 8}
!325 = !{!322, !33, i64 16}
!326 = !{!322, !33, i64 24}
!327 = !{!322, !19, i64 32}
!328 = !{!322, !19, i64 36}
!329 = !{!57, !19, i64 380}
!330 = !{!57, !19, i64 248}
!331 = !{!57, !19, i64 252}
!332 = !{!57, !27, i64 952}
!333 = distinct !{!333, !147, !335}
!334 = !{i64 0, i64 4, !64, i64 4, i64 4, !64, i64 8, i64 4, !64, i64 12, i64 4, !64}
!335 = !{!"llvm.loop.peeled.count", i32 1}
!336 = distinct !{!336, i1 true, !"ZSTD_buildDummySequencesStatistics"}
!337 = distinct !{!337, !336, !"ZSTD_buildDummySequencesStatistics: argument 0"}
!338 = !{!78, !19, i64 2056}
!339 = !{!53, !19, i64 0}
!340 = !{!55, !27, i64 136}
!341 = !{!337}
!342 = !{!54, !27, i64 160}
!343 = !{!55, !27, i64 296}
!344 = !{!57, !29, i64 3184}
!345 = !{!57, !27, i64 3216}
!346 = distinct !{!346, !147}
!347 = distinct !{!347, !147}
!348 = distinct !{!348, !147}
!349 = !{!57, !19, i64 384}
!350 = !{!45, !45, i64 0}
!351 = distinct !{!351, !147, !225, !226}
!352 = distinct !{!352, !147, !226, !225}
!353 = distinct !{!353, !147, !226}
!354 = distinct !{!354, !233}
!355 = distinct !{!355, !147, !226, !225}
!356 = distinct !{!356, !233}
!357 = distinct !{!357, !147, !226}
!358 = !{!82, !38, i64 104}
!359 = !{!82, !38, i64 112}
!360 = !{!82, !19, i64 128}
!361 = !{!57, !45, i64 3488}
!362 = !{!57, !19, i64 3264}
!363 = !{!57, !38, i64 3248}
!364 = !{!57, !38, i64 3240}
!365 = !{!57, !19, i64 3280}
!366 = !{!82, !43, i64 216}
!367 = !{!82, !43, i64 232}
!368 = !{!57, !38, i64 3296}
!369 = !{!82, !38, i64 160}
!370 = !{!82, !27, i64 200}
!371 = !{!57, !27, i64 3336}
!372 = distinct !{!372, i1 true, !"ZSTD_getParams_internal"}
!373 = distinct !{!373, !372, !"ZSTD_getParams_internal: argument 0"}
!374 = distinct !{!374, i1 true, !"ZSTD_getCParams_internal"}
!375 = distinct !{!375, !374, !"ZSTD_getCParams_internal: argument 0"}
!376 = !{!373}
!377 = !{!375}
!378 = distinct !{!378, i1 true, !"ZSTD_getParams_internal"}
!379 = distinct !{!379, !378, !"ZSTD_getParams_internal: argument 0"}
!380 = !{!379}
!381 = distinct !{!381, i1 true, !"ZSTD_getParams_internal"}
!382 = distinct !{!382, !381, !"ZSTD_getParams_internal: argument 0"}
!383 = !{!382}
!384 = distinct !{ptr @ZSTD_clearAllDicts, null}
!385 = distinct !{ptr @ZSTD_clearAllDicts, ptr @ZSTD_freeCDict, null, null}
!386 = distinct !{ptr @ZSTD_clearAllDicts, ptr @ZSTD_freeCDict, null}
!387 = !{i64 0, i64 8, !63, i64 8, i64 8, !63, i64 16, i64 8, !63}
!388 = distinct !{!388, i1 true, !"ZSTD_dedicatedDictSearch_getCParams"}
!389 = distinct !{!389, !388, !"ZSTD_dedicatedDictSearch_getCParams: argument 0"}
!390 = distinct !{null, null}
!391 = !{!389}
!392 = !{!82, !43, i64 24}
!393 = distinct !{!393, i1 true, !"ZSTD_getCParams"}
!394 = distinct !{!394, !393, !"ZSTD_getCParams: argument 0"}
!395 = !{!394}
!396 = distinct !{ptr @ZSTD_createCCtx_advanced, null}
!397 = !{!57, !29, i64 3648}
!398 = !{!57, !27, i64 3656}
!399 = !{!57, !19, i64 16}
!400 = !{!57, !27, i64 3680}
!401 = !{!50, !29, i64 8}
!402 = !{!50, !49, i64 32}
!403 = !{!50, !27, i64 16}
!404 = !{!50, !19, i64 24}
!405 = !{!82, !19, i64 384}
!406 = distinct !{!406, !147}
!407 = distinct !{!407, !147}
!408 = distinct !{null}
!409 = distinct !{!409, !147}
!410 = !{ptr @ZSTD_transferSequences_noDelim, ptr @ZSTD_transferSequences_wBlockDelim}
!411 = distinct !{!411, !147}
!412 = !{!57, !19, i64 1048}
!413 = !{!"branch_weights", !"expected", i32 1125985, i32 2146357663}
!414 = !{!57, !19, i64 1052}
!415 = !{!"", !27, i64 0, !27, i64 8, !27, i64 16}
!416 = !{!415, !27, i64 0}
!417 = !{!415, !27, i64 16}
!418 = !{!415, !27, i64 8}
!419 = distinct !{!419, i1 true, !"ZSTD_get1BlockSummary"}
!420 = distinct !{!420, !419, !"ZSTD_get1BlockSummary: argument 0"}
!421 = !{!420}
!422 = distinct !{!422, i1 true, !"inBuffer_forEndFlush"}
!423 = distinct !{!423, !422, !"inBuffer_forEndFlush: argument 0"}
!424 = !{!423}
!425 = distinct !{!425, i1 true, !"inBuffer_forEndFlush"}
!426 = distinct !{!426, !425, !"inBuffer_forEndFlush: argument 0"}
!427 = !{!426}
!428 = distinct !{!428, i1 true, !"ZSTD_getParams_internal"}
!429 = distinct !{!429, !428, !"ZSTD_getParams_internal: argument 0"}
!430 = !{!429}
!431 = distinct !{null, null}
!432 = !{!57, !19, i64 972}
!433 = !{!32, !19, i64 60}
!434 = !{!32, !19, i64 68}
!435 = !{!57, !19, i64 3536}
!436 = !{!57, !19, i64 272}
!437 = !{!57, !29, i64 1096}
!438 = !{!57, !19, i64 1104}
!439 = !{!57, !38, i64 992}
!440 = !{!57, !27, i64 1040}
!441 = !{!57, !38, i64 1112}
!442 = !{!57, !38, i64 1008}
!443 = !{!57, !38, i64 1016}
!444 = !{!57, !38, i64 1024}
!445 = !{!46, !19, i64 300}
!446 = !{!46, !19, i64 196}
!447 = !{!46, !27, i64 96}
!448 = !{!46, !19, i64 104}
!449 = !{!46, !19, i64 52}
!450 = !{!46, !43, i64 144}
!451 = !{!46, !43, i64 152}
!452 = !{!46, !43, i64 160}
!453 = !{!46, !43, i64 168}
!454 = !{!46, !29, i64 176}
!455 = !{!46, !29, i64 184}
!456 = !{!40, !19, i64 32}
!457 = distinct !{!457, !147}
!458 = distinct !{!458, !233}
!459 = !{!46, !29, i64 232}
!460 = !{!57, !19, i64 312}
!461 = !{!46, !19, i64 240}
!462 = !{!57, !27, i64 3192}
!463 = !{!42, !29, i64 0}
!464 = !{!42, !27, i64 32}
!465 = !{!57, !29, i64 440}
!466 = !{!57, !19, i64 284}
!467 = !{!46, !29, i64 288}
!468 = !{!57, !19, i64 436}
!469 = distinct !{!469, !147, !226, !225}
!470 = distinct !{!470, !147, !226, !225}
!471 = distinct !{!471, !233}
!472 = distinct !{!472, !147, !226}
!473 = distinct !{!473, !147}
!474 = distinct !{!474, !147}
!475 = distinct !{!475, !147}
!476 = !{i64 0, i64 12, !181}
!477 = distinct !{!477, !147}
!478 = !{!55, !19, i64 0}
!479 = !{!53, !27, i64 136}
!480 = !{!54, !19, i64 4}
!481 = !{!54, !19, i64 0}
!482 = !{!54, !27, i64 152}
!483 = distinct !{!483, !147}
!484 = !{!36, !27, i64 16}
!485 = !{!36, !29, i64 8}
!486 = !{!36, !27, i64 24}
!487 = !{!195, !19, i64 12}
!488 = !{!41, !38, i64 8}
!489 = !{!41, !19, i64 48}
!490 = distinct !{!490, !147, !226, !225}
!491 = distinct !{!491, !147, !226, !225}
!492 = distinct !{!492, !233}
!493 = distinct !{!493, !147, !226}
!494 = !{!293, !19, i64 4}
end_hunk_1
