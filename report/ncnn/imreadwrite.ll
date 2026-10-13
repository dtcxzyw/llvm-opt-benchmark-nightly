Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/imreadwrite?download=true
inline.NumInlined: 679
inline.NumDeleted: 153
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_ZL19stbi__build_huffmanP13stbi__huffmanPi:bb.a
  br i1 %exitcond, label %.loopexit65.sink.split, label %.lr.ph116, !llvm.loop !462

.lr.ph116:                                        ; preds = %.lr.ph, %bb.b
  %.05771115 = phi i32 [ %i.k, %bb.b ], [ 0, %.lr.ph ]
  %indvars.iv114 = phi i64 [ %indvars.iv.next, %bb.b ], [ %i.g, %.lr.ph ]
  %indvars.iv.next = add nsw i64 %indvars.iv114, 1 ; 3 uses
  %i.k = add nuw nsw i32 %.05771115, 1            ; 3 uses
  %i.l = load i32, ptr %i.b, align 4, !tbaa !23
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !462

._crit_edge.loopexit:                             ; preds = %.lr.ph116
  %i.n = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader66
  %.155.lcssa = phi i32 [ %.05474, %.preheader66 ], [ %i.n, %._crit_edge.loopexit ] ; 2 uses
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %exitcond95.not = icmp eq i64 %indvars.iv.next93, 16
  br i1 %exitcond95.not, label %bb.c, label %.preheader66, !llvm.loop !463

bb.c:                                             ; preds = %._crit_edge
  %i.o = sext i32 %.155.lcssa to i64
  %i.p = getelementptr inbounds i8, ptr %i.a, i64 %i.o
  store i8 0, ptr %i.p, align 1, !tbaa !35
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1612
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1540
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.e
  %indvars.iv99 = phi i64 [ 1, %bb.c ], [ %indvars.iv.next100, %bb.e ] ; 7 uses
  %.083 = phi i32 [ 0, %bb.c ], [ %i.an, %bb.e ]  ; 3 uses
  %.25682 = phi i32 [ 0, %bb.c ], [ %.4, %bb.e ]  ; 3 uses
  %i.t = sub i32 %.25682, %.083
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv99
  store i32 %i.t, ptr %i.u, align 4, !tbaa !23
  %i.v = sext i32 %.25682 to i64                  ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.a, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !35
  %i.y = zext i8 %i.x to i64
  %i.z = icmp eq i64 %indvars.iv99, %i.y
  br i1 %i.z, label %.lr.ph77, label %bb.e

.lr.ph77:                                         ; preds = %bb.d, %.lr.ph77
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %.lr.ph77 ], [ %i.v, %bb.d ] ; 2 uses
  %.176 = phi i32 [ %i.aa, %.lr.ph77 ], [ %.083, %bb.d ] ; 3 uses
  %i.aa = add i32 %.176, 1                        ; 2 uses
  %i.ab = trunc i32 %.176 to i16
  %indvars.iv.next97 = add nsw i64 %indvars.iv96, 1 ; 3 uses
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.r, i64 %indvars.iv96
  store i16 %i.ab, ptr %i.ac, align 2, !tbaa !41
  %i.ad = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next97
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !35
  %i.af = zext i8 %i.ae to i64
  %i.ag = icmp eq i64 %indvars.iv99, %i.af
  br i1 %i.ag, label %.lr.ph77, label %._crit_edge78, !llvm.loop !464

._crit_edge78:                                    ; preds = %.lr.ph77
  %i.ah = trunc nsw i64 %indvars.iv.next97 to i32
  %i.ai = trunc nuw nsw i64 %indvars.iv99 to i32
  %.highbits = lshr i32 %.176, %i.ai
  %.not = icmp eq i32 %.highbits, 0
  br i1 %.not, label %bb.e, label %.loopexit65.sink.split

bb.e:                                             ; preds = %._crit_edge78, %bb.d
  %.4 = phi i32 [ %i.ah, %._crit_edge78 ], [ %.25682, %bb.d ] ; 3 uses
  %.2 = phi i32 [ %i.aa, %._crit_edge78 ], [ %.083, %bb.d ] ; 2 uses
  %i.aj = trunc i64 %indvars.iv99 to i32
  %i.ak = sub i32 16, %i.aj
  %i.al = shl i32 %.2, %i.ak
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv99
  store i32 %i.al, ptr %i.am, align 4, !tbaa !23
  %i.an = shl i32 %.2, 1
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next100, 17
  br i1 %exitcond102.not, label %bb.f, label %bb.d, !llvm.loop !465

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1608
  store i32 -1, ptr %i.ao, align 4, !tbaa !23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(512) %0, i8 -1, i64 512, i1 false)
  %i.ap = icmp sgt i32 %.4, 0
  br i1 %i.ap, label %.lr.ph87, label %.loopexit65

.lr.ph87:                                         ; preds = %bb.f
  %wide.trip.count = zext nneg i32 %.4 to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph87, %.loopexit
  %indvars.iv106 = phi i64 [ 0, %.lr.ph87 ], [ %indvars.iv.next107, %.loopexit ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv106
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !35  ; 2 uses
  %i.as = icmp ult i8 %i.ar, 10
  br i1 %i.as, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv106
  %i.au = load i16, ptr %i.at, align 2, !tbaa !41
  %i.av = zext i16 %i.au to i32
  %narrow = sub nuw nsw i8 9, %i.ar
  %i.aw = zext nneg i8 %narrow to i32             ; 2 uses
  %i.ax = shl nuw nsw i32 %i.av, %i.aw
  %i.ay = trunc i64 %indvars.iv106 to i8
  %i.az = zext nneg i32 %i.ax to i64
  %invariant.gep = getelementptr inbounds nuw i8, ptr %0, i64 %i.az
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.i
  %indvars.iv103 = phi i64 [ 0, %bb.h ], [ %indvars.iv.next104, %bb.i ] ; 2 uses
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv103
  store i8 %i.ay, ptr %gep, align 1, !tbaa !35
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %i.ba = trunc nuw nsw i64 %indvars.iv.next104 to i32
  %.259.highbits = lshr i32 %i.ba, %i.aw
  %i.bb = icmp eq i32 %.259.highbits, 0
  br i1 %i.bb, label %bb.i, label %.loopexit, !llvm.loop !466

.loopexit:                                        ; preds = %bb.i, %bb.g
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %exitcond110.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count
  br i1 %exitcond110.not, label %.loopexit65, label %bb.g, !llvm.loop !467

.loopexit65.sink.split:                           ; preds = %.lr.ph, %bb.b, %._crit_edge78
  %.str.51.sink = phi ptr [ @.str.51, %._crit_edge78 ], [ @.str.50, %bb.b ], [ @.str.50, %.lr.ph ]
  store ptr %.str.51.sink, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %.loopexit65

.loopexit65:                                      ; preds = %.loopexit, %.loopexit65.sink.split, %bb.f
  %.062 = phi i32 [ 1, %bb.f ], [ 0, %.loopexit65.sink.split ], [ 1, %.loopexit ]
  ret i32 %.062
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @_ZL26stbi__free_jpeg_componentsP10stbi__jpegii(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1) unnamed_addr #11 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 18080
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.c = getelementptr inbounds nuw [96 x i8], ptr %i.b, i64 %indvars.iv ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !98   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.e) #36
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !99   ; 2 uses
  %.not28 = icmp eq ptr %i.h, null
  br i1 %.not28, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.h) #36
  store ptr null, ptr %i.g, align 8, !tbaa !99
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store ptr null, ptr %i.i, align 8, !tbaa !95
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !100  ; 2 uses
  %.not29 = icmp eq ptr %i.k, null
  br i1 %.not29, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.k) #36
  store ptr null, ptr %i.j, align 8, !tbaa !100
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !4

._crit_edge:                                      ; preds = %bb.h, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef ptr @_ZL14resample_row_1PhS_S_ii(ptr nofree readnone captures(none) %0, ptr nofree noundef readnone returned captures(ret: address, provenance) %1, ptr nofree readnone captures(none) %2, i32 %3, i32 %4) #17 {
bb.a:
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef ptr @_ZL22stbi__resample_row_v_2PhS_S_ii(ptr nofree noundef returned writeonly captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 %4) #13 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.d = icmp sgt i32 %3, 0
  br i1 %i.d, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64      ; 8 uses
  %min.iters.check = icmp ult i32 %3, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.e = sub i64 %i.b, %i.c
  %diff.check = icmp ugt i64 %i.e, -16
  %i.f = sub i64 %i.a, %i.c
  %diff.check11 = icmp ugt i64 %i.f, -16
  %conflict.rdx = or i1 %diff.check, %diff.check11
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check12 = icmp ult i32 %3, 16
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load = load <16 x i8>, ptr %i.h, align 1, !tbaa !35
  %i.i = zext <16 x i8> %wide.load to <16 x i16>
  %i.j = mul nuw nsw <16 x i16> %i.i, splat (i16 3)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %index
  %wide.load13 = load <16 x i8>, ptr %i.k, align 1, !tbaa !35
  %i.l = zext <16 x i8> %wide.load13 to <16 x i16>
  %i.m = add nuw nsw <16 x i16> %i.l, splat (i16 2)
  %i.n = add nuw nsw <16 x i16> %i.m, %i.j
  %i.o = lshr <16 x i16> %i.n, splat (i16 2)
  %i.p = trunc nuw <16 x i16> %i.o to <16 x i8>
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %index
  store <16 x i8> %i.p, ptr %i.q, align 1, !tbaa !35
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !468

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %index15
  %wide.load16 = load <4 x i8>, ptr %i.s, align 1, !tbaa !35
  %i.t = zext <4 x i8> %wide.load16 to <4 x i16>
  %i.u = mul nuw nsw <4 x i16> %i.t, splat (i16 3)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %index15
  %wide.load17 = load <4 x i8>, ptr %i.v, align 1, !tbaa !35
  %i.w = zext <4 x i8> %wide.load17 to <4 x i16>
  %i.x = add nuw nsw <4 x i16> %i.w, splat (i16 2)
  %i.y = add nuw nsw <4 x i16> %i.x, %i.u
  %i.z = lshr <4 x i16> %i.y, splat (i16 2)
  %i.aa = trunc nuw <4 x i16> %i.z to <4 x i8>
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %index15
  store <4 x i8> %i.aa, ptr %i.ab, align 1, !tbaa !35
  %index.next18 = add nuw i64 %index15, 4         ; 2 uses
  %i.ac = icmp eq i64 %index.next18, %n.vec14
  br i1 %i.ac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !469

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n19 = icmp eq i64 %n.vec14, %wide.trip.count
  br i1 %cmp.n19, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec14, %vec.epilog.middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.ph
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !35
  %i.af = zext i8 %i.ae to i16
  %i.ag = mul nuw nsw i16 %i.af, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.ph
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !35
  %i.aj = zext i8 %i.ai to i16
  %i.ak = add nuw nsw i16 %i.aj, 2
  %i.al = add nuw nsw i16 %i.ak, %i.ag
  %i.am = lshr i16 %i.al, 2
  %i.an = trunc nuw i16 %i.am to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.ph
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !35
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ap = add nsw i64 %wide.trip.count, -1
  %i.aq = icmp eq i64 %indvars.iv.ph, %i.ap
  br i1 %i.aq, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !35
  %i.at = zext i8 %i.as to i16
  %i.au = mul nuw nsw i16 %i.at, 3
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !35
  %i.ax = zext i8 %i.aw to i16
  %i.ay = add nuw nsw i16 %i.ax, 2
  %i.az = add nuw nsw i16 %i.ay, %i.au
  %i.ba = lshr i16 %i.az, 2
  %i.bb = trunc nuw i16 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !35
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !35
  %i.bf = zext i8 %i.be to i16
  %i.bg = mul nuw nsw i16 %i.bf, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !35
  %i.bj = zext i8 %i.bi to i16
  %i.bk = add nuw nsw i16 %i.bj, 2
  %i.bl = add nuw nsw i16 %i.bk, %i.bg
  %i.bm = lshr i16 %i.bl, 2
  %i.bn = trunc nuw i16 %i.bm to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !35
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !470

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef ptr @_ZL22stbi__resample_row_h_2PhS_S_ii(ptr nofree noundef returned writeonly captures(ret: address, provenance) initializes((0, 2)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, i32 noundef %3, i32 %4) #13 {
bb.a:
  %i.a = icmp eq i32 %3, 1
  %i.b = load i8, ptr %1, align 1, !tbaa !35      ; 4 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.b, ptr %i.c, align 1, !tbaa !35
  store i8 %i.b, ptr %0, align 1, !tbaa !35
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i8 %i.b, ptr %0, align 1, !tbaa !35
  %i.d = zext i8 %i.b to i16
  %i.e = mul nuw nsw i16 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !35
  %i.h = zext i8 %i.g to i16
  %i.i = add nuw nsw i16 %i.h, 2
  %i.j = add nuw nsw i16 %i.i, %i.e
  %i.k = lshr i16 %i.j, 2
  %i.l = trunc nuw i16 %i.k to i8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.l, ptr %i.m, align 1, !tbaa !35
  %i.n = add i32 %3, -1                           ; 3 uses
  %i.o = icmp sgt i32 %3, 2
  br i1 %i.o, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.n to i64    ; 3 uses
  %i.p = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %min.iters.check = icmp ult i64 %i.p, 8
  br i1 %min.iters.check, label %.lr.ph.preheader46, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.q = getelementptr i8, ptr %0, i64 2
  %i.r = shl nuw nsw i64 %wide.trip.count, 1
  %i.s = getelementptr i8, ptr %0, i64 %i.r
  %i.t = zext nneg i32 %3 to i64
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  %bound0 = icmp ult ptr %i.q, %i.u
  %bound1 = icmp ult ptr %1, %i.s
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader46, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.p, -8                       ; 3 uses
  %i.v = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = or disjoint i64 %index, 1                ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.w ; 2 uses
  %wide.load = load <8 x i8>, ptr %i.x, align 1, !tbaa !35, !alias.scope !476
  %i.y = zext <8 x i8> %wide.load to <8 x i32>
  %i.z = mul nuw nsw <8 x i32> %i.y, splat (i32 3)
  %i.aa = add nuw nsw <8 x i32> %i.z, splat (i32 2) ; 2 uses
  %i.ab = getelementptr i8, ptr %i.x, i64 -1
  %wide.load44 = load <8 x i8>, ptr %i.ab, align 1, !tbaa !35, !alias.scope !476
  %i.ac = zext <8 x i8> %wide.load44 to <8 x i32>
  %i.ad = add nuw nsw <8 x i32> %i.aa, %i.ac
  %i.ae = shl nuw nsw i64 %i.w, 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae
end_hunk_0
begin_hunk_1_@stbi_write_png_to_mem:bb.a
  %i.fv = zext nneg i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.fv
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !23
  %i.fy = xor i32 %i.fx, %i.fs                    ; 2 uses
  %i.fz = lshr i32 %i.fy, 8
  %i.ga = xor i32 %i.fy, %i.eb
  %i.gb = and i32 %i.ga, 255
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !23
  %i.gf = xor i32 %i.ge, %i.fz                    ; 2 uses
  %i.gg = lshr i32 %i.gf, 8
  %i.gh = xor i32 %i.gf, %i.ee
  %i.gi = and i32 %i.gh, 255
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.gj
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !23
  %i.gm = xor i32 %i.gl, %i.gg                    ; 2 uses
  %i.gn = lshr i32 %i.gm, 8
  %i.go = xor i32 %i.gm, %3
  %i.gp = and i32 %i.go, 255
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.gq
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !23
  %i.gt = xor i32 %i.gs, %i.gn                    ; 2 uses
  %i.gu = lshr i32 %i.gt, 8
  %i.gv = and i32 %i.gt, 255
  %i.gw = xor i32 %i.gv, 8
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !23
  %i.ha = xor i32 %i.gz, %i.gu                    ; 2 uses
  %i.hb = lshr i32 %i.ha, 8
  %i.hc = xor i32 %i.ha, %i.en
  %i.hd = and i32 %i.hc, 255
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.he
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !23
  %i.hh = xor i32 %i.hg, %i.hb                    ; 2 uses
  %i.hi = lshr i32 %i.hh, 8
  %i.hj = and i32 %i.hh, 255
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.hk
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !23
  %i.hn = xor i32 %i.hm, %i.hi                    ; 2 uses
  %i.ho = lshr i32 %i.hn, 8
  %i.hp = and i32 %i.hn, 255
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.hq
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !23
  %i.ht = xor i32 %i.hs, %i.ho                    ; 2 uses
  %i.hu = lshr i32 %i.ht, 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.dl, i64 28
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !35
  %i.hx = zext i8 %i.hw to i32
  %i.hy = and i32 %i.ht, 255
  %i.hz = xor i32 %i.hy, %i.hx
  %i.ia = zext nneg i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.ia
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !23
  %i.id = xor i32 %i.ic, %i.hu
  %i.ie = getelementptr inbounds nuw i8, ptr %i.dl, i64 29
  %i.if = xor i32 %i.id, -1                       ; 4 uses
  %i.ig = lshr i32 %i.if, 24
  %i.ih = trunc nuw i32 %i.ig to i8
  store i8 %i.ih, ptr %i.ie, align 1, !tbaa !35
  %i.ii = lshr i32 %i.if, 16
  %i.ij = trunc i32 %i.ii to i8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.dl, i64 30
  store i8 %i.ij, ptr %i.ik, align 1, !tbaa !35
  %i.il = lshr i32 %i.if, 8
  %i.im = trunc i32 %i.il to i8
  %i.in = getelementptr inbounds nuw i8, ptr %i.dl, i64 31
  store i8 %i.im, ptr %i.in, align 1, !tbaa !35
  %i.io = trunc i32 %i.if to i8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  store i8 %i.io, ptr %i.ip, align 1, !tbaa !35
  %i.iq = getelementptr inbounds nuw i8, ptr %i.dl, i64 33
  %i.ir = lshr i32 %i.di, 24
  %i.is = trunc nuw i32 %i.ir to i8
  store i8 %i.is, ptr %i.iq, align 1, !tbaa !35
  %i.it = lshr i32 %i.di, 16
  %i.iu = trunc i32 %i.it to i8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.dl, i64 34
  store i8 %i.iu, ptr %i.iv, align 1, !tbaa !35
  %i.iw = lshr i32 %i.di, 8
  %i.ix = trunc i32 %i.iw to i8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.dl, i64 35
  store i8 %i.ix, ptr %i.iy, align 1, !tbaa !35
  %i.iz = trunc i32 %i.di to i8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.dl, i64 36
  store i8 %i.iz, ptr %i.ja, align 1, !tbaa !35
  %i.jb = getelementptr inbounds nuw i8, ptr %i.dl, i64 37 ; 4 uses
  store <4 x i8> <i8 73, i8 68, i8 65, i8 84>, ptr %i.jb, align 1, !tbaa !35
  %i.jc = getelementptr inbounds nuw i8, ptr %i.dl, i64 41 ; 2 uses
  %i.jd = sext i32 %i.di to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jc, ptr nonnull align 1 %i.dh, i64 %i.jd, i1 false)
  %i.je = getelementptr inbounds i8, ptr %i.jc, i64 %i.jd ; 6 uses
  tail call void @free(ptr noundef nonnull %i.dh) #36
  %i.jf = icmp sgt i32 %i.di, -4
  br i1 %i.jf, label %.lr.ph.preheader.i.i, label %_ZL12stbiw__wpcrcPPhi.exit119

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.i.i
  %i.jg = add nsw i32 %i.di, 4                    ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %i.jg to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.jh = icmp eq i32 %i.jg, 1
  br i1 %i.jh, label %.lr.ph.i.i114.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  br label %.lr.ph.i.i114

.lr.ph.i.i114:                                    ; preds = %.lr.ph.i.i114, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i115 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i117.1, %.lr.ph.i.i114 ] ; 3 uses
  %.078.i.i116 = phi i32 [ -1, %.lr.ph.preheader.i.i.new ], [ %i.kc, %.lr.ph.i.i114 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.1, %.lr.ph.i.i114 ]
  %i.ji = lshr i32 %.078.i.i116, 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jb, i64 %indvars.iv.i.i115
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !35
  %i.jl = zext i8 %i.jk to i32
  %i.jm = and i32 %.078.i.i116, 255
  %i.jn = xor i32 %i.jm, %i.jl
  %i.jo = zext nneg i32 %i.jn to i64
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.jo
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !23
  %i.jr = xor i32 %i.jq, %i.ji                    ; 2 uses
  %i.js = lshr i32 %i.jr, 8
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jb, i64 %indvars.iv.i.i115
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 1
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !35
  %i.jw = zext i8 %i.jv to i32
  %i.jx = and i32 %i.jr, 255
  %i.jy = xor i32 %i.jx, %i.jw
  %i.jz = zext nneg i32 %i.jy to i64
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.jz
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !23
  %i.kc = xor i32 %i.kb, %i.js                    ; 3 uses
  %indvars.iv.next.i.i117.1 = add nuw nsw i64 %indvars.iv.i.i115, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i114, !llvm.loop !580

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i.i114
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i114.epil.preheader

.lr.ph.i.i114.epil.preheader:                     ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i115.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i117.1, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %.078.i.i116.epil.init = phi i32 [ -1, %.lr.ph.preheader.i.i ], [ %i.kc, %._crit_edge.loopexit.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod320 = trunc i32 %i.di to i1
  tail call void @llvm.assume(i1 %lcmp.mod320)
  %i.kd = lshr i32 %.078.i.i116.epil.init, 8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jb, i64 %indvars.iv.i.i115.epil.init
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !35
  %i.kg = zext i8 %i.kf to i32
  %i.kh = and i32 %.078.i.i116.epil.init, 255
  %i.ki = xor i32 %i.kh, %i.kg
  %i.kj = zext nneg i32 %i.ki to i64
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.kj
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !23
  %i.km = xor i32 %i.kl, %i.kd
  br label %._crit_edge.loopexit.i.i

._crit_edge.loopexit.i.i:                         ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i.i114.epil.preheader
  %.lcssa = phi i32 [ %i.kc, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %i.km, %.lr.ph.i.i114.epil.preheader ]
  %i.kn = xor i32 %.lcssa, -1
  br label %_ZL12stbiw__wpcrcPPhi.exit119

_ZL12stbiw__wpcrcPPhi.exit119:                    ; preds = %.lr.ph.i.i, %._crit_edge.loopexit.i.i
  %.07.lcssa.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.kn, %._crit_edge.loopexit.i.i ] ; 4 uses
  %i.ko = lshr i32 %.07.lcssa.i.i, 24
  %i.kp = trunc nuw i32 %i.ko to i8
  store i8 %i.kp, ptr %i.je, align 1, !tbaa !35
  %i.kq = lshr i32 %.07.lcssa.i.i, 16
  %i.kr = trunc i32 %i.kq to i8
  %i.ks = getelementptr inbounds nuw i8, ptr %i.je, i64 1
  store i8 %i.kr, ptr %i.ks, align 1, !tbaa !35
  %i.kt = lshr i32 %.07.lcssa.i.i, 8
  %i.ku = trunc i32 %i.kt to i8
  %i.kv = getelementptr inbounds nuw i8, ptr %i.je, i64 2
  store i8 %i.ku, ptr %i.kv, align 1, !tbaa !35
  %i.kw = trunc i32 %.07.lcssa.i.i to i8
  %i.kx = getelementptr inbounds nuw i8, ptr %i.je, i64 3
  store i8 %i.kw, ptr %i.kx, align 1, !tbaa !35
  %i.ky = getelementptr inbounds nuw i8, ptr %i.je, i64 4
  %i.kz = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  store i32 0, ptr %i.ky, align 1
  store <8 x i8> <i8 73, i8 69, i8 78, i8 68, i8 -82, i8 66, i8 96, i8 -126>, ptr %i.kz, align 1, !tbaa !35
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge, %bb.a, %_ZL12stbiw__wpcrcPPhi.exit119, %bb.d
  %.099 = phi ptr [ %i.dl, %_ZL12stbiw__wpcrcPPhi.exit119 ], [ null, %._crit_edge ], [ null, %bb.a ], [ null, %bb.d ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret ptr %.099
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL22stbiw__encode_png_linePhiiiiiiPa(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef nonnull writeonly captures(none) %7) unnamed_addr #14 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 7 uses
  %i.b = ptrtoaddr ptr %7 to i64                  ; 14 uses
  %.not = icmp eq i32 %4, 0
  %_ZZL22stbiw__encode_png_linePhiiiiiiPaE7mapping._ZZL22stbiw__encode_png_linePhiiiiiiPaE8firstmap = select i1 %.not, ptr @_ZZL22stbiw__encode_png_linePhiiiiiiPaE8firstmap, ptr @_ZZL22stbiw__encode_png_linePhiiiiiiPaE7mapping
  %i.c = sext i32 %6 to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %_ZZL22stbiw__encode_png_linePhiiiiiiPaE7mapping._ZZL22stbiw__encode_png_linePhiiiiiiPaE8firstmap, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !23   ; 3 uses
  %i.f = load i32, ptr @_ZL30stbi__flip_vertically_on_write, align 4, !tbaa !23
  %.not136 = icmp eq i32 %i.f, 0                  ; 2 uses
  %i.g = xor i32 %4, -1
  %i.h = add i32 %3, %i.g
  %i.i = select i1 %.not136, i32 %4, i32 %i.h
  %i.j = mul i32 %i.i, %1
  %i.k = sext i32 %i.j to i64                     ; 8 uses
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k ; 77 uses
  %i.m = sub nsw i32 0, %1
  %i.n = select i1 %.not136, i32 %1, i32 %i.m     ; 4 uses
  %i.o = icmp eq i32 %i.e, 0
  br i1 %i.o, label %bb.b, label %.preheader160

.preheader160:                                    ; preds = %bb.a
  %i.p = icmp sgt i32 %5, 0
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader160
  %i.q = sext i32 %i.n to i64                     ; 3 uses
  %wide.trip.count = zext nneg i32 %5 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.r = mul nsw i32 %5, %2
  %i.s = sext i32 %i.r to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %7, ptr align 1 %i.l, i64 %i.s, i1 false)
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.i ] ; 11 uses
  switch i32 %i.e, label %bb.i [
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.u = load i8, ptr %i.t, align 1, !tbaa !35
  br label %.sink.split

bb.d:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.w = load i8, ptr %i.v, align 1, !tbaa !35
  %i.x = sub nsw i64 %indvars.iv, %i.q
  %i.y = getelementptr inbounds i8, ptr %i.l, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !35
  %i.aa = sub i8 %i.w, %i.z
  br label %.sink.split

bb.e:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !35
  %i.ad = sub nsw i64 %indvars.iv, %i.q
  %i.ae = getelementptr inbounds i8, ptr %i.l, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !35
  %i.ag = lshr i8 %i.af, 1
  %i.ah = sub i8 %i.ac, %i.ag
  br label %.sink.split

bb.f:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !35
  %i.ak = sub nsw i64 %indvars.iv, %i.q
  %i.al = getelementptr inbounds i8, ptr %i.l, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !35
  %i.an = sub i8 %i.aj, %i.am
  br label %.sink.split

bb.g:                                             ; preds = %.lr.ph
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !35
  br label %.sink.split

bb.h:                                             ; preds = %.lr.ph
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !35
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sink = phi i8 [ %i.u, %bb.c ], [ %i.aa, %bb.d ], [ %i.ah, %bb.e ], [ %i.an, %bb.f ], [ %i.ap, %bb.g ], [ %i.ar, %bb.h ]
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv
  store i8 %.sink, ptr %i.as, align 1, !tbaa !35
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !581

._crit_edge:                                      ; preds = %bb.i, %.preheader160
  switch i32 %i.e, label %.loopexit [
    i32 1, label %.preheader
    i32 2, label %.preheader150
    i32 3, label %.preheader152
    i32 4, label %.preheader154
    i32 5, label %.preheader156
    i32 6, label %.preheader158
  ]

.preheader158:                                    ; preds = %._crit_edge
  %i.at = mul nsw i32 %5, %2                      ; 2 uses
  %i.au = icmp slt i32 %5, %i.at
  br i1 %i.au, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader158
  %i.av = sext i32 %5 to i64                      ; 11 uses
  %wide.trip.count183 = sext i32 %i.at to i64     ; 4 uses
  %i.aw = sub nsw i64 %wide.trip.count183, %i.av  ; 7 uses
  %min.iters.check = icmp ult i64 %i.aw, 8
  br i1 %min.iters.check, label %.lr.ph163.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ax = add i64 %i.b, %i.av
  %i.ay = add i64 %i.a, %i.k                      ; 2 uses
  %i.az = sub i64 %i.ay, %i.ax
  %diff.check = icmp ugt i64 %i.az, -32
  %i.ba = sub i64 %i.ay, %i.b
  %diff.check228 = icmp ugt i64 %i.ba, -32
  %conflict.rdx = or i1 %diff.check, %diff.check228
  br i1 %conflict.rdx, label %.lr.ph163.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check229 = icmp ult i64 %i.aw, 32
  br i1 %min.iters.check229, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bb = and i64 %i.aw, 24
  %n.vec = and i64 %i.aw, -32                     ; 4 uses
  %i.bc = add nsw i64 %n.vec, %i.av
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bd = add i64 %index, %i.av                   ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.l, i64 %i.bd ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %wide.load = load <16 x i8>, ptr %i.be, align 1, !tbaa !35
  %wide.load230 = load <16 x i8>, ptr %i.bf, align 1, !tbaa !35
  %i.bg = getelementptr inbounds i8, ptr %i.l, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load231 = load <16 x i8>, ptr %i.bg, align 1, !tbaa !35
  %wide.load232 = load <16 x i8>, ptr %i.bh, align 1, !tbaa !35
  %i.bi = sub <16 x i8> %wide.load, %wide.load231
  %i.bj = sub <16 x i8> %wide.load230, %wide.load232
  %i.bk = getelementptr inbounds i8, ptr %7, i64 %i.bd ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store <16 x i8> %i.bi, ptr %i.bk, align 1, !tbaa !35
  store <16 x i8> %i.bj, ptr %i.bl, align 1, !tbaa !35
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !582

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bb, 0
  br i1 %min.epilog.iters.check, label %.lr.ph163.preheader, label %vec.epilog.ph, !prof !110

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec233 = and i64 %i.aw, -8                   ; 3 uses
  %i.bn = add nsw i64 %n.vec233, %i.av
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index234 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next237, %vec.epilog.vector.body ] ; 3 uses
  %i.bo = add i64 %index234, %i.av                ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.l, i64 %i.bo
  %wide.load235 = load <8 x i8>, ptr %i.bp, align 1, !tbaa !35
  %i.bq = getelementptr inbounds i8, ptr %i.l, i64 %index234
  %wide.load236 = load <8 x i8>, ptr %i.bq, align 1, !tbaa !35
  %i.br = sub <8 x i8> %wide.load235, %wide.load236
  %i.bs = getelementptr inbounds i8, ptr %7, i64 %i.bo
  store <8 x i8> %i.br, ptr %i.bs, align 1, !tbaa !35
  %index.next237 = add nuw i64 %index234, 8       ; 2 uses
  %i.bt = icmp eq i64 %index.next237, %n.vec233
  br i1 %i.bt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !583

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n238 = icmp eq i64 %i.aw, %n.vec233
  br i1 %cmp.n238, label %.loopexit, label %.lr.ph163.preheader

.lr.ph163.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv180.ph = phi i64 [ %i.av, %iter.check ], [ %i.av, %vector.memcheck ], [ %i.bc, %vec.epilog.iter.check ], [ %i.bn, %vec.epilog.middle.block ] ; 7 uses
  %i.bu = sub nsw i64 %wide.trip.count183, %indvars.iv180.ph
  %xtraiter = and i64 %i.bu, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph163.prol.loopexit, label %.lr.ph163.prol

.lr.ph163.prol:                                   ; preds = %.lr.ph163.preheader
  %i.bv = getelementptr inbounds i8, ptr %i.l, i64 %indvars.iv180.ph
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !35
  %i.bx = sub nsw i64 %indvars.iv180.ph, %i.av
  %i.by = getelementptr inbounds i8, ptr %i.l, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !35
  %i.ca = sub i8 %i.bw, %i.bz
  %i.cb = getelementptr inbounds i8, ptr %7, i64 %indvars.iv180.ph
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !35
  %indvars.iv.next181.prol = add nsw i64 %indvars.iv180.ph, 1
  br label %.lr.ph163.prol.loopexit

.lr.ph163.prol.loopexit:                          ; preds = %.lr.ph163.prol, %.lr.ph163.preheader
  %indvars.iv180.unr = phi i64 [ %indvars.iv180.ph, %.lr.ph163.preheader ], [ %indvars.iv.next181.prol, %.lr.ph163.prol ]
  %i.cc = add nsw i64 %wide.trip.count183, -1
  %i.cd = icmp eq i64 %indvars.iv180.ph, %i.cc
  br i1 %i.cd, label %.loopexit, label %.lr.ph163

.preheader156:                                    ; preds = %._crit_edge
  %i.ce = mul nsw i32 %5, %2                      ; 2 uses
  %i.cf = icmp slt i32 %5, %i.ce
  br i1 %i.cf, label %iter.check259, label %.loopexit

iter.check259:                                    ; preds = %.preheader156
  %i.cg = sext i32 %5 to i64                      ; 11 uses
  %wide.trip.count188 = sext i32 %i.ce to i64     ; 4 uses
  %i.ch = sub nsw i64 %wide.trip.count188, %i.cg  ; 7 uses
  %min.iters.check244 = icmp ult i64 %i.ch, 8
  br i1 %min.iters.check244, label %.lr.ph165.preheader, label %vector.memcheck240

vector.memcheck240:                               ; preds = %iter.check259
  %i.ci = add i64 %i.b, %i.cg
  %i.cj = add i64 %i.a, %i.k                      ; 2 uses
  %i.ck = sub i64 %i.cj, %i.ci
  %diff.check241 = icmp ugt i64 %i.ck, -32
  %i.cl = sub i64 %i.cj, %i.b
  %diff.check242 = icmp ugt i64 %i.cl, -32
  %conflict.rdx243 = or i1 %diff.check241, %diff.check242
  br i1 %conflict.rdx243, label %.lr.ph165.preheader, label %vector.main.loop.iter.check245

vector.main.loop.iter.check245:                   ; preds = %vector.memcheck240
  %min.iters.check246 = icmp ult i64 %i.ch, 32
  br i1 %min.iters.check246, label %vec.epilog.ph263, label %vector.ph247

vector.ph247:                                     ; preds = %vector.main.loop.iter.check245
  %i.cm = and i64 %i.ch, 24
  %n.vec248 = and i64 %i.ch, -32                  ; 4 uses
  %i.cn = add nsw i64 %n.vec248, %i.cg
  br label %vector.body249

vector.body249:                                   ; preds = %vector.ph247, %vector.body249
  %index250 = phi i64 [ 0, %vector.ph247 ], [ %index.next255, %vector.body249 ] ; 3 uses
  %i.co = add i64 %index250, %i.cg                ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %i.l, i64 %i.co ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %wide.load251 = load <16 x i8>, ptr %i.cp, align 1, !tbaa !35
  %wide.load252 = load <16 x i8>, ptr %i.cq, align 1, !tbaa !35
  %i.cr = getelementptr inbounds i8, ptr %i.l, i64 %index250 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %wide.load253 = load <16 x i8>, ptr %i.cr, align 1, !tbaa !35
  %wide.load254 = load <16 x i8>, ptr %i.cs, align 1, !tbaa !35
  %i.ct = lshr <16 x i8> %wide.load253, splat (i8 1)
  %i.cu = lshr <16 x i8> %wide.load254, splat (i8 1)
  %i.cv = sub <16 x i8> %wide.load251, %i.ct
  %i.cw = sub <16 x i8> %wide.load252, %i.cu
  %i.cx = getelementptr inbounds i8, ptr %7, i64 %i.co ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store <16 x i8> %i.cv, ptr %i.cx, align 1, !tbaa !35
  store <16 x i8> %i.cw, ptr %i.cy, align 1, !tbaa !35
  %index.next255 = add nuw i64 %index250, 32      ; 2 uses
  %i.cz = icmp eq i64 %index.next255, %n.vec248
  br i1 %i.cz, label %middle.block256, label %vector.body249, !llvm.loop !584

middle.block256:                                  ; preds = %vector.body249
  %cmp.n257 = icmp eq i64 %i.ch, %n.vec248
  br i1 %cmp.n257, label %.loopexit, label %vec.epilog.iter.check261

vec.epilog.iter.check261:                         ; preds = %middle.block256
  %min.epilog.iters.check262 = icmp eq i64 %i.cm, 0
  br i1 %min.epilog.iters.check262, label %.lr.ph165.preheader, label %vec.epilog.ph263, !prof !110

vec.epilog.ph263:                                 ; preds = %vector.main.loop.iter.check245, %vec.epilog.iter.check261
  %vec.epilog.resume.val258 = phi i64 [ %n.vec248, %vec.epilog.iter.check261 ], [ 0, %vector.main.loop.iter.check245 ]
  %n.vec264 = and i64 %i.ch, -8                   ; 3 uses
  %i.da = add nsw i64 %n.vec264, %i.cg
  br label %vec.epilog.vector.body265

vec.epilog.vector.body265:                        ; preds = %vec.epilog.vector.body265, %vec.epilog.ph263
  %index266 = phi i64 [ %vec.epilog.resume.val258, %vec.epilog.ph263 ], [ %index.next269, %vec.epilog.vector.body265 ] ; 3 uses
  %i.db = add i64 %index266, %i.cg                ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %i.l, i64 %i.db
  %wide.load267 = load <8 x i8>, ptr %i.dc, align 1, !tbaa !35
  %i.dd = getelementptr inbounds i8, ptr %i.l, i64 %index266
  %wide.load268 = load <8 x i8>, ptr %i.dd, align 1, !tbaa !35
  %i.de = lshr <8 x i8> %wide.load268, splat (i8 1)
  %i.df = sub <8 x i8> %wide.load267, %i.de
  %i.dg = getelementptr inbounds i8, ptr %7, i64 %i.db
  store <8 x i8> %i.df, ptr %i.dg, align 1, !tbaa !35
  %index.next269 = add nuw i64 %index266, 8       ; 2 uses
  %i.dh = icmp eq i64 %index.next269, %n.vec264
  br i1 %i.dh, label %vec.epilog.middle.block270, label %vec.epilog.vector.body265, !llvm.loop !585

vec.epilog.middle.block270:                       ; preds = %vec.epilog.vector.body265
  %cmp.n271 = icmp eq i64 %i.ch, %n.vec264
  br i1 %cmp.n271, label %.loopexit, label %.lr.ph165.preheader

.lr.ph165.preheader:                              ; preds = %iter.check259, %vector.memcheck240, %vec.epilog.iter.check261, %vec.epilog.middle.block270
  %indvars.iv185.ph = phi i64 [ %i.cg, %iter.check259 ], [ %i.cg, %vector.memcheck240 ], [ %i.cn, %vec.epilog.iter.check261 ], [ %i.da, %vec.epilog.middle.block270 ] ; 7 uses
  %i.di = sub nsw i64 %wide.trip.count188, %indvars.iv185.ph
  %xtraiter418 = and i64 %i.di, 1
  %lcmp.mod419.not = icmp eq i64 %xtraiter418, 0
  br i1 %lcmp.mod419.not, label %.lr.ph165.prol.loopexit, label %.lr.ph165.prol

.lr.ph165.prol:                                   ; preds = %.lr.ph165.preheader
  %i.dj = getelementptr inbounds i8, ptr %i.l, i64 %indvars.iv185.ph
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !35
  %i.dl = sub nsw i64 %indvars.iv185.ph, %i.cg
  %i.dm = getelementptr inbounds i8, ptr %i.l, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !35
  %i.do = lshr i8 %i.dn, 1
  %i.dp = sub i8 %i.dk, %i.do
  %i.dq = getelementptr inbounds i8, ptr %7, i64 %indvars.iv185.ph
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !35
  %indvars.iv.next186.prol = add nsw i64 %indvars.iv185.ph, 1
  br label %.lr.ph165.prol.loopexit

.lr.ph165.prol.loopexit:                          ; preds = %.lr.ph165.prol, %.lr.ph165.preheader
  %indvars.iv185.unr = phi i64 [ %indvars.iv185.ph, %.lr.ph165.preheader ], [ %indvars.iv.next186.prol, %.lr.ph165.prol ]
  %i.dr = add nsw i64 %wide.trip.count188, -1
  %i.ds = icmp eq i64 %indvars.iv185.ph, %i.dr
  br i1 %i.ds, label %.loopexit, label %.lr.ph165

.preheader154:                                    ; preds = %._crit_edge
  %i.dt = mul nsw i32 %5, %2                      ; 2 uses
  %i.du = icmp slt i32 %5, %i.dt
  br i1 %i.du, label %iter.check296, label %.loopexit

iter.check296:                                    ; preds = %.preheader154
  %i.dv = sext i32 %5 to i64                      ; 13 uses
  %i.dw = sext i32 %i.n to i64                    ; 4 uses
  %wide.trip.count193 = sext i32 %i.dt to i64     ; 2 uses
  %i.dx = sub nsw i64 %wide.trip.count193, %i.dv  ; 7 uses
  %min.iters.check281 = icmp ult i64 %i.dx, 4
  br i1 %min.iters.check281, label %.lr.ph167.preheader, label %vector.memcheck273

vector.memcheck273:                               ; preds = %iter.check296
  %i.dy = add i64 %i.b, %i.dw                     ; 2 uses
  %i.dz = add i64 %i.dy, %i.dv
  %i.ea = add i64 %i.a, %i.k
  %i.eb = sub i64 %i.ea, %i.dz
  %diff.check274 = icmp ugt i64 %i.eb, -16
  %i.ec = add i64 %i.a, %i.k                      ; 3 uses
  %i.ed = sub i64 %i.ec, %i.dy
  %diff.check275 = icmp ugt i64 %i.ed, -16
  %conflict.rdx276 = or i1 %diff.check274, %diff.check275
  %i.ee = add i64 %i.b, %i.dv
  %i.ef = sub i64 %i.ec, %i.ee
  %diff.check277 = icmp ugt i64 %i.ef, -16
  %conflict.rdx278 = or i1 %conflict.rdx276, %diff.check277
  %i.eg = sub i64 %i.ec, %i.b
  %diff.check279 = icmp ugt i64 %i.eg, -16
  %conflict.rdx280 = or i1 %conflict.rdx278, %diff.check279
  br i1 %conflict.rdx280, label %.lr.ph167.preheader, label %vector.main.loop.iter.check282

vector.main.loop.iter.check282:                   ; preds = %vector.memcheck273
  %min.iters.check283 = icmp ult i64 %i.dx, 16
  br i1 %min.iters.check283, label %vec.epilog.ph300, label %vector.ph284

vector.ph284:                                     ; preds = %vector.main.loop.iter.check282
  %i.eh = and i64 %i.dx, 12
  %n.vec285 = and i64 %i.dx, -16                  ; 4 uses
  %i.ei = add nsw i64 %n.vec285, %i.dv
  br label %vector.body286

vector.body286:                                   ; preds = %vector.ph284, %vector.body286
  %index287 = phi i64 [ 0, %vector.ph284 ], [ %index.next292, %vector.body286 ] ; 3 uses
  %i.ej = add i64 %index287, %i.dv                ; 3 uses
  %i.ek = getelementptr inbounds i8, ptr %i.l, i64 %i.ej
  %wide.load288 = load <16 x i8>, ptr %i.ek, align 1, !tbaa !35
  %i.el = getelementptr inbounds i8, ptr %i.l, i64 %index287
  %wide.load289 = load <16 x i8>, ptr %i.el, align 1, !tbaa !35 ; 2 uses
  %i.em = zext <16 x i8> %wide.load289 to <16 x i32> ; 2 uses
  %i.en = sub nsw i64 %i.ej, %i.dw                ; 2 uses
  %i.eo = getelementptr inbounds i8, ptr %i.l, i64 %i.en
  %wide.load290 = load <16 x i8>, ptr %i.eo, align 1, !tbaa !35 ; 2 uses
  %i.ep = zext <16 x i8> %wide.load290 to <16 x i32> ; 2 uses
  %i.eq = sub nsw i64 %i.en, %i.dv
  %i.er = getelementptr inbounds i8, ptr %i.l, i64 %i.eq
  %wide.load291 = load <16 x i8>, ptr %i.er, align 1, !tbaa !35 ; 2 uses
  %i.es = zext <16 x i8> %wide.load291 to <16 x i32> ; 2 uses
  %i.et = add nuw nsw <16 x i32> %i.ep, %i.em
  %i.eu = sub nsw <16 x i32> %i.et, %i.es         ; 3 uses
  %i.ev = sub nsw <16 x i32> %i.eu, %i.em
  %i.ew = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.ev, i1 true) ; 2 uses
  %i.ex = sub nsw <16 x i32> %i.eu, %i.ep
  %i.ey = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.ex, i1 true) ; 2 uses
  %i.ez = sub nsw <16 x i32> %i.eu, %i.es
  %i.fa = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.ez, i1 true) ; 2 uses
  %i.fb = icmp samesign ugt <16 x i32> %i.ew, %i.ey
  %i.fc = icmp samesign ugt <16 x i32> %i.ew, %i.fa
  %i.fd = select <16 x i1> %i.fb, <16 x i1> splat (i1 true), <16 x i1> %i.fc
  %i.fe = icmp samesign ugt <16 x i32> %i.ey, %i.fa
  %i.ff = select <16 x i1> %i.fe, <16 x i8> %wide.load291, <16 x i8> %wide.load290
  %i.fg = select <16 x i1> %i.fd, <16 x i8> %i.ff, <16 x i8> %wide.load289
  %i.fh = sub <16 x i8> %wide.load288, %i.fg
  %i.fi = getelementptr inbounds i8, ptr %7, i64 %i.ej
  store <16 x i8> %i.fh, ptr %i.fi, align 1, !tbaa !35
  %index.next292 = add nuw i64 %index287, 16      ; 2 uses
  %i.fj = icmp eq i64 %index.next292, %n.vec285
  br i1 %i.fj, label %middle.block293, label %vector.body286, !llvm.loop !586

middle.block293:                                  ; preds = %vector.body286
  %cmp.n294 = icmp eq i64 %i.dx, %n.vec285
  br i1 %cmp.n294, label %.loopexit, label %vec.epilog.iter.check298

vec.epilog.iter.check298:                         ; preds = %middle.block293
  %min.epilog.iters.check299 = icmp eq i64 %i.eh, 0
  br i1 %min.epilog.iters.check299, label %.lr.ph167.preheader, label %vec.epilog.ph300, !prof !45

vec.epilog.ph300:                                 ; preds = %vector.main.loop.iter.check282, %vec.epilog.iter.check298
  %vec.epilog.resume.val295 = phi i64 [ %n.vec285, %vec.epilog.iter.check298 ], [ 0, %vector.main.loop.iter.check282 ]
  %n.vec301 = and i64 %i.dx, -4                   ; 3 uses
  %i.fk = add nsw i64 %n.vec301, %i.dv
  br label %vec.epilog.vector.body302

vec.epilog.vector.body302:                        ; preds = %vec.epilog.vector.body302, %vec.epilog.ph300
  %index303 = phi i64 [ %vec.epilog.resume.val295, %vec.epilog.ph300 ], [ %index.next308, %vec.epilog.vector.body302 ] ; 3 uses
  %i.fl = add i64 %index303, %i.dv                ; 3 uses
  %i.fm = getelementptr inbounds i8, ptr %i.l, i64 %i.fl
  %wide.load304 = load <4 x i8>, ptr %i.fm, align 1, !tbaa !35
  %i.fn = getelementptr inbounds i8, ptr %i.l, i64 %index303
  %wide.load305 = load <4 x i8>, ptr %i.fn, align 1, !tbaa !35 ; 2 uses
  %i.fo = zext <4 x i8> %wide.load305 to <4 x i32> ; 2 uses
  %i.fp = sub nsw i64 %i.fl, %i.dw                ; 2 uses
  %i.fq = getelementptr inbounds i8, ptr %i.l, i64 %i.fp
  %wide.load306 = load <4 x i8>, ptr %i.fq, align 1, !tbaa !35 ; 2 uses
  %i.fr = zext <4 x i8> %wide.load306 to <4 x i32> ; 2 uses
  %i.fs = sub nsw i64 %i.fp, %i.dv
  %i.ft = getelementptr inbounds i8, ptr %i.l, i64 %i.fs
  %wide.load307 = load <4 x i8>, ptr %i.ft, align 1, !tbaa !35 ; 2 uses
  %i.fu = zext <4 x i8> %wide.load307 to <4 x i32> ; 2 uses
  %i.fv = add nuw nsw <4 x i32> %i.fr, %i.fo
  %i.fw = sub nsw <4 x i32> %i.fv, %i.fu          ; 3 uses
  %i.fx = sub nsw <4 x i32> %i.fw, %i.fo
  %i.fy = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.fx, i1 true) ; 2 uses
  %i.fz = sub nsw <4 x i32> %i.fw, %i.fr
  %i.ga = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.fz, i1 true) ; 2 uses
  %i.gb = sub nsw <4 x i32> %i.fw, %i.fu
  %i.gc = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.gb, i1 true) ; 2 uses
  %i.gd = icmp samesign ugt <4 x i32> %i.fy, %i.ga
  %i.ge = icmp samesign ugt <4 x i32> %i.fy, %i.gc
  %i.gf = select <4 x i1> %i.gd, <4 x i1> splat (i1 true), <4 x i1> %i.ge
  %i.gg = icmp samesign ugt <4 x i32> %i.ga, %i.gc
  %i.gh = select <4 x i1> %i.gg, <4 x i8> %wide.load307, <4 x i8> %wide.load306
  %i.gi = select <4 x i1> %i.gf, <4 x i8> %i.gh, <4 x i8> %wide.load305
  %i.gj = sub <4 x i8> %wide.load304, %i.gi
  %i.gk = getelementptr inbounds i8, ptr %7, i64 %i.fl
  store <4 x i8> %i.gj, ptr %i.gk, align 1, !tbaa !35
  %index.next308 = add nuw i64 %index303, 4       ; 2 uses
  %i.gl = icmp eq i64 %index.next308, %n.vec301
  br i1 %i.gl, label %vec.epilog.middle.block309, label %vec.epilog.vector.body302, !llvm.loop !587

vec.epilog.middle.block309:                       ; preds = %vec.epilog.vector.body302
  %cmp.n310 = icmp eq i64 %i.dx, %n.vec301
  br i1 %cmp.n310, label %.loopexit, label %.lr.ph167.preheader

.lr.ph167.preheader:                              ; preds = %iter.check296, %vector.memcheck273, %vec.epilog.iter.check298, %vec.epilog.middle.block309
  %indvars.iv190.ph = phi i64 [ %i.dv, %iter.check296 ], [ %i.dv, %vector.memcheck273 ], [ %i.ei, %vec.epilog.iter.check298 ], [ %i.fk, %vec.epilog.middle.block309 ]
  br label %.lr.ph167

.preheader152:                                    ; preds = %._crit_edge
  %i.gm = mul nsw i32 %5, %2                      ; 2 uses
  %i.gn = icmp slt i32 %5, %i.gm
  br i1 %i.gn, label %iter.check332, label %.loopexit

iter.check332:                                    ; preds = %.preheader152
  %i.go = sext i32 %5 to i64                      ; 11 uses
  %i.gp = sext i32 %i.n to i64                    ; 6 uses
  %wide.trip.count198 = sext i32 %i.gm to i64     ; 4 uses
  %i.gq = sub nsw i64 %wide.trip.count198, %i.go  ; 7 uses
  %min.iters.check318 = icmp ult i64 %i.gq, 4
  br i1 %min.iters.check318, label %.lr.ph169.preheader, label %vector.memcheck312

vector.memcheck312:                               ; preds = %iter.check332
  %i.gr = add i64 %i.b, %i.gp
  %i.gs = add i64 %i.a, %i.k                      ; 3 uses
  %i.gt = sub i64 %i.gs, %i.gr
  %diff.check313 = icmp ugt i64 %i.gt, -16
  %i.gu = add i64 %i.b, %i.go
  %i.gv = sub i64 %i.gs, %i.gu
  %diff.check314 = icmp ugt i64 %i.gv, -16
  %conflict.rdx315 = or i1 %diff.check313, %diff.check314
  %i.gw = sub i64 %i.gs, %i.b
  %diff.check316 = icmp ugt i64 %i.gw, -16
  %conflict.rdx317 = or i1 %conflict.rdx315, %diff.check316
  br i1 %conflict.rdx317, label %.lr.ph169.preheader, label %vector.main.loop.iter.check319

vector.main.loop.iter.check319:                   ; preds = %vector.memcheck312
  %min.iters.check320 = icmp ult i64 %i.gq, 16
  br i1 %min.iters.check320, label %vec.epilog.ph336, label %vector.ph321

vector.ph321:                                     ; preds = %vector.main.loop.iter.check319
  %i.gx = and i64 %i.gq, 12
  %n.vec322 = and i64 %i.gq, -16                  ; 4 uses
  %i.gy = add nsw i64 %n.vec322, %i.go
  br label %vector.body323

vector.body323:                                   ; preds = %vector.ph321, %vector.body323
  %index324 = phi i64 [ 0, %vector.ph321 ], [ %index.next328, %vector.body323 ] ; 3 uses
  %i.gz = add i64 %index324, %i.go                ; 3 uses
  %i.ha = getelementptr inbounds i8, ptr %i.l, i64 %i.gz
  %wide.load325 = load <16 x i8>, ptr %i.ha, align 1, !tbaa !35
  %i.hb = getelementptr inbounds i8, ptr %i.l, i64 %index324
  %wide.load326 = load <16 x i8>, ptr %i.hb, align 1, !tbaa !35
  %i.hc = zext <16 x i8> %wide.load326 to <16 x i16>
  %i.hd = sub nsw i64 %i.gz, %i.gp
  %i.he = getelementptr inbounds i8, ptr %i.l, i64 %i.hd
  %wide.load327 = load <16 x i8>, ptr %i.he, align 1, !tbaa !35
  %i.hf = zext <16 x i8> %wide.load327 to <16 x i16>
  %i.hg = add nuw nsw <16 x i16> %i.hf, %i.hc
  %i.hh = lshr <16 x i16> %i.hg, splat (i16 1)
  %i.hi = trunc nuw <16 x i16> %i.hh to <16 x i8>
  %i.hj = sub <16 x i8> %wide.load325, %i.hi
  %i.hk = getelementptr inbounds i8, ptr %7, i64 %i.gz
  store <16 x i8> %i.hj, ptr %i.hk, align 1, !tbaa !35
  %index.next328 = add nuw i64 %index324, 16      ; 2 uses
  %i.hl = icmp eq i64 %index.next328, %n.vec322
  br i1 %i.hl, label %middle.block329, label %vector.body323, !llvm.loop !588

middle.block329:                                  ; preds = %vector.body323
  %cmp.n330 = icmp eq i64 %i.gq, %n.vec322
  br i1 %cmp.n330, label %.loopexit, label %vec.epilog.iter.check334

vec.epilog.iter.check334:                         ; preds = %middle.block329
  %min.epilog.iters.check335 = icmp eq i64 %i.gx, 0
  br i1 %min.epilog.iters.check335, label %.lr.ph169.preheader, label %vec.epilog.ph336, !prof !45

vec.epilog.ph336:                                 ; preds = %vector.main.loop.iter.check319, %vec.epilog.iter.check334
  %vec.epilog.resume.val331 = phi i64 [ %n.vec322, %vec.epilog.iter.check334 ], [ 0, %vector.main.loop.iter.check319 ]
  %n.vec337 = and i64 %i.gq, -4                   ; 3 uses
  %i.hm = add nsw i64 %n.vec337, %i.go
  br label %vec.epilog.vector.body338

vec.epilog.vector.body338:                        ; preds = %vec.epilog.vector.body338, %vec.epilog.ph336
  %index339 = phi i64 [ %vec.epilog.resume.val331, %vec.epilog.ph336 ], [ %index.next343, %vec.epilog.vector.body338 ] ; 3 uses
  %i.hn = add i64 %index339, %i.go                ; 3 uses
  %i.ho = getelementptr inbounds i8, ptr %i.l, i64 %i.hn
  %wide.load340 = load <4 x i8>, ptr %i.ho, align 1, !tbaa !35
  %i.hp = getelementptr inbounds i8, ptr %i.l, i64 %index339
  %wide.load341 = load <4 x i8>, ptr %i.hp, align 1, !tbaa !35
  %i.hq = zext <4 x i8> %wide.load341 to <4 x i16>
  %i.hr = sub nsw i64 %i.hn, %i.gp
  %i.hs = getelementptr inbounds i8, ptr %i.l, i64 %i.hr
  %wide.load342 = load <4 x i8>, ptr %i.hs, align 1, !tbaa !35
  %i.ht = zext <4 x i8> %wide.load342 to <4 x i16>
  %i.hu = add nuw nsw <4 x i16> %i.ht, %i.hq
  %i.hv = lshr <4 x i16> %i.hu, splat (i16 1)
  %i.hw = trunc nuw <4 x i16> %i.hv to <4 x i8>
  %i.hx = sub <4 x i8> %wide.load340, %i.hw
  %i.hy = getelementptr inbounds i8, ptr %7, i64 %i.hn
  store <4 x i8> %i.hx, ptr %i.hy, align 1, !tbaa !35
  %index.next343 = add nuw i64 %index339, 4       ; 2 uses
  %i.hz = icmp eq i64 %index.next343, %n.vec337
  br i1 %i.hz, label %vec.epilog.middle.block344, label %vec.epilog.vector.body338, !llvm.loop !589

vec.epilog.middle.block344:                       ; preds = %vec.epilog.vector.body338
  %cmp.n345 = icmp eq i64 %i.gq, %n.vec337
  br i1 %cmp.n345, label %.loopexit, label %.lr.ph169.preheader

.lr.ph169.preheader:                              ; preds = %iter.check332, %vector.memcheck312, %vec.epilog.iter.check334, %vec.epilog.middle.block344
  %indvars.iv195.ph = phi i64 [ %i.go, %iter.check332 ], [ %i.go, %vector.memcheck312 ], [ %i.gy, %vec.epilog.iter.check334 ], [ %i.hm, %vec.epilog.middle.block344 ] ; 8 uses
  %i.ia = sub nsw i64 %wide.trip.count198, %indvars.iv195.ph
  %xtraiter420 = and i64 %i.ia, 1
  %lcmp.mod421.not = icmp eq i64 %xtraiter420, 0
  br i1 %lcmp.mod421.not, label %.lr.ph169.prol.loopexit, label %.lr.ph169.prol

.lr.ph169.prol:                                   ; preds = %.lr.ph169.preheader
  %i.ib = getelementptr inbounds i8, ptr %i.l, i64 %indvars.iv195.ph
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !35
  %i.id = sub nsw i64 %indvars.iv195.ph, %i.go
  %i.ie = getelementptr inbounds i8, ptr %i.l, i64 %i.id
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !35
  %i.ig = zext i8 %i.if to i16
  %i.ih = sub nsw i64 %indvars.iv195.ph, %i.gp
  %i.ii = getelementptr inbounds i8, ptr %i.l, i64 %i.ih
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !35
  %i.ik = zext i8 %i.ij to i16
  %i.il = add nuw nsw i16 %i.ik, %i.ig
  %i.im = lshr i16 %i.il, 1
  %i.in = trunc nuw i16 %i.im to i8
  %i.io = sub i8 %i.ic, %i.in
  %i.ip = getelementptr inbounds i8, ptr %7, i64 %indvars.iv195.ph
  store i8 %i.io, ptr %i.ip, align 1, !tbaa !35
  %indvars.iv.next196.prol = add nsw i64 %indvars.iv195.ph, 1
  br label %.lr.ph169.prol.loopexit

.lr.ph169.prol.loopexit:                          ; preds = %.lr.ph169.prol, %.lr.ph169.preheader
  %indvars.iv195.unr = phi i64 [ %indvars.iv195.ph, %.lr.ph169.preheader ], [ %indvars.iv.next196.prol, %.lr.ph169.prol ]
  %i.iq = add nsw i64 %wide.trip.count198, -1
  %i.ir = icmp eq i64 %indvars.iv195.ph, %i.iq
  br i1 %i.ir, label %.loopexit, label %.lr.ph169

.preheader150:                                    ; preds = %._crit_edge
  %i.is = mul nsw i32 %5, %2                      ; 2 uses
  %i.it = icmp slt i32 %5, %i.is
  br i1 %i.it, label %iter.check366, label %.loopexit

iter.check366:                                    ; preds = %.preheader150
  %i.iu = sext i32 %5 to i64                      ; 7 uses
  %i.iv = sext i32 %i.n to i64                    ; 6 uses
  %wide.trip.count203 = sext i32 %i.is to i64     ; 4 uses
  %i.iw = sub nsw i64 %wide.trip.count203, %i.iu  ; 7 uses
  %min.iters.check351 = icmp ult i64 %i.iw, 8
  br i1 %min.iters.check351, label %.lr.ph171.preheader, label %vector.memcheck347

vector.memcheck347:                               ; preds = %iter.check366
  %i.ix = add i64 %i.b, %i.iv
  %i.iy = add i64 %i.a, %i.k                      ; 2 uses
  %i.iz = sub i64 %i.iy, %i.ix
  %diff.check348 = icmp ugt i64 %i.iz, -32
  %i.ja = sub i64 %i.iy, %i.b
  %diff.check349 = icmp ugt i64 %i.ja, -32
  %conflict.rdx350 = or i1 %diff.check348, %diff.check349
  br i1 %conflict.rdx350, label %.lr.ph171.preheader, label %vector.main.loop.iter.check352

vector.main.loop.iter.check352:                   ; preds = %vector.memcheck347
  %min.iters.check353 = icmp ult i64 %i.iw, 32
  br i1 %min.iters.check353, label %vec.epilog.ph370, label %vector.ph354

vector.ph354:                                     ; preds = %vector.main.loop.iter.check352
  %i.jb = and i64 %i.iw, 24
  %n.vec355 = and i64 %i.iw, -32                  ; 4 uses
  %i.jc = add nsw i64 %n.vec355, %i.iu
  br label %vector.body356

vector.body356:                                   ; preds = %vector.ph354, %vector.body356
  %index357 = phi i64 [ 0, %vector.ph354 ], [ %index.next362, %vector.body356 ] ; 2 uses
  %i.jd = add i64 %index357, %i.iu                ; 3 uses
  %i.je = getelementptr inbounds i8, ptr %i.l, i64 %i.jd ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %wide.load358 = load <16 x i8>, ptr %i.je, align 1, !tbaa !35
  %wide.load359 = load <16 x i8>, ptr %i.jf, align 1, !tbaa !35
  %i.jg = sub nsw i64 %i.jd, %i.iv
  %i.jh = getelementptr inbounds i8, ptr %i.l, i64 %i.jg ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %wide.load360 = load <16 x i8>, ptr %i.jh, align 1, !tbaa !35
  %wide.load361 = load <16 x i8>, ptr %i.ji, align 1, !tbaa !35
  %i.jj = sub <16 x i8> %wide.load358, %wide.load360
  %i.jk = sub <16 x i8> %wide.load359, %wide.load361
  %i.jl = getelementptr inbounds i8, ptr %7, i64 %i.jd ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  store <16 x i8> %i.jj, ptr %i.jl, align 1, !tbaa !35
  store <16 x i8> %i.jk, ptr %i.jm, align 1, !tbaa !35
  %index.next362 = add nuw i64 %index357, 32      ; 2 uses
  %i.jn = icmp eq i64 %index.next362, %n.vec355
  br i1 %i.jn, label %middle.block363, label %vector.body356, !llvm.loop !590

middle.block363:                                  ; preds = %vector.body356
  %cmp.n364 = icmp eq i64 %i.iw, %n.vec355
  br i1 %cmp.n364, label %.loopexit, label %vec.epilog.iter.check368

vec.epilog.iter.check368:                         ; preds = %middle.block363
  %min.epilog.iters.check369 = icmp eq i64 %i.jb, 0
  br i1 %min.epilog.iters.check369, label %.lr.ph171.preheader, label %vec.epilog.ph370, !prof !110

vec.epilog.ph370:                                 ; preds = %vector.main.loop.iter.check352, %vec.epilog.iter.check368
  %vec.epilog.resume.val365 = phi i64 [ %n.vec355, %vec.epilog.iter.check368 ], [ 0, %vector.main.loop.iter.check352 ]
  %n.vec371 = and i64 %i.iw, -8                   ; 3 uses
  %i.jo = add nsw i64 %n.vec371, %i.iu
  br label %vec.epilog.vector.body372

vec.epilog.vector.body372:                        ; preds = %vec.epilog.vector.body372, %vec.epilog.ph370
  %index373 = phi i64 [ %vec.epilog.resume.val365, %vec.epilog.ph370 ], [ %index.next376, %vec.epilog.vector.body372 ] ; 2 uses
  %i.jp = add i64 %index373, %i.iu                ; 3 uses
  %i.jq = getelementptr inbounds i8, ptr %i.l, i64 %i.jp
  %wide.load374 = load <8 x i8>, ptr %i.jq, align 1, !tbaa !35
  %i.jr = sub nsw i64 %i.jp, %i.iv
  %i.js = getelementptr inbounds i8, ptr %i.l, i64 %i.jr
  %wide.load375 = load <8 x i8>, ptr %i.js, align 1, !tbaa !35
  %i.jt = sub <8 x i8> %wide.load374, %wide.load375
  %i.ju = getelementptr inbounds i8, ptr %7, i64 %i.jp
  store <8 x i8> %i.jt, ptr %i.ju, align 1, !tbaa !35
  %index.next376 = add nuw i64 %index373, 8       ; 2 uses
  %i.jv = icmp eq i64 %index.next376, %n.vec371
  br i1 %i.jv, label %vec.epilog.middle.block377, label %vec.epilog.vector.body372, !llvm.loop !591

vec.epilog.middle.block377:                       ; preds = %vec.epilog.vector.body372
  %cmp.n378 = icmp eq i64 %i.iw, %n.vec371
  br i1 %cmp.n378, label %.loopexit, label %.lr.ph171.preheader

.lr.ph171.preheader:                              ; preds = %iter.check366, %vector.memcheck347, %vec.epilog.iter.check368, %vec.epilog.middle.block377
  %indvars.iv200.ph = phi i64 [ %i.iu, %iter.check366 ], [ %i.iu, %vector.memcheck347 ], [ %i.jc, %vec.epilog.iter.check368 ], [ %i.jo, %vec.epilog.middle.block377 ] ; 7 uses
  %i.jw = sub nsw i64 %wide.trip.count203, %indvars.iv200.ph
  %xtraiter422 = and i64 %i.jw, 1
  %lcmp.mod423.not = icmp eq i64 %xtraiter422, 0
  br i1 %lcmp.mod423.not, label %.lr.ph171.prol.loopexit, label %.lr.ph171.prol

.lr.ph171.prol:                                   ; preds = %.lr.ph171.preheader
  %i.jx = getelementptr inbounds i8, ptr %i.l, i64 %indvars.iv200.ph
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !35
  %i.jz = sub nsw i64 %indvars.iv200.ph, %i.iv
  %i.ka = getelementptr inbounds i8, ptr %i.l, i64 %i.jz
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !35
  %i.kc = sub i8 %i.jy, %i.kb
  %i.kd = getelementptr inbounds i8, ptr %7, i64 %indvars.iv200.ph
  store i8 %i.kc, ptr %i.kd, align 1, !tbaa !35
  %indvars.iv.next201.prol = add nsw i64 %indvars.iv200.ph, 1
  br label %.lr.ph171.prol.loopexit

.lr.ph171.prol.loopexit:                          ; preds = %.lr.ph171.prol, %.lr.ph171.preheader
  %indvars.iv200.unr = phi i64 [ %indvars.iv200.ph, %.lr.ph171.preheader ], [ %indvars.iv.next201.prol, %.lr.ph171.prol ]
  %i.ke = add nsw i64 %wide.trip.count203, -1
  %i.kf = icmp eq i64 %indvars.iv200.ph, %i.ke
  br i1 %i.kf, label %.loopexit, label %.lr.ph171

.preheader:                                       ; preds = %._crit_edge
  %i.kg = mul nsw i32 %5, %2                      ; 2 uses
  %i.kh = icmp slt i32 %5, %i.kg
  br i1 %i.kh, label %iter.check399, label %.loopexit

iter.check399:                                    ; preds = %.preheader
  %i.ki = sext i32 %5 to i64                      ; 11 uses
  %wide.trip.count208 = sext i32 %i.kg to i64     ; 4 uses
  %i.kj = sub nsw i64 %wide.trip.count208, %i.ki  ; 7 uses
  %min.iters.check384 = icmp ult i64 %i.kj, 8
  br i1 %min.iters.check384, label %.lr.ph173.preheader, label %vector.memcheck380

vector.memcheck380:                               ; preds = %iter.check399
  %i.kk = add i64 %i.b, %i.ki
  %i.kl = add i64 %i.a, %i.k                      ; 2 uses
  %i.km = sub i64 %i.kl, %i.kk
  %diff.check381 = icmp ugt i64 %i.km, -32
  %i.kn = sub i64 %i.kl, %i.b
  %diff.check382 = icmp ugt i64 %i.kn, -32
  %conflict.rdx383 = or i1 %diff.check381, %diff.check382
  br i1 %conflict.rdx383, label %.lr.ph173.preheader, label %vector.main.loop.iter.check385

vector.main.loop.iter.check385:                   ; preds = %vector.memcheck380
  %min.iters.check386 = icmp ult i64 %i.kj, 32
  br i1 %min.iters.check386, label %vec.epilog.ph403, label %vector.ph387

vector.ph387:                                     ; preds = %vector.main.loop.iter.check385
  %i.ko = and i64 %i.kj, 24
  %n.vec388 = and i64 %i.kj, -32                  ; 4 uses
  %i.kp = add nsw i64 %n.vec388, %i.ki
  br label %vector.body389

vector.body389:                                   ; preds = %vector.ph387, %vector.body389
  %index390 = phi i64 [ 0, %vector.ph387 ], [ %index.next395, %vector.body389 ] ; 3 uses
  %i.kq = add i64 %index390, %i.ki                ; 2 uses
  %i.kr = getelementptr inbounds i8, ptr %i.l, i64 %i.kq ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %wide.load391 = load <16 x i8>, ptr %i.kr, align 1, !tbaa !35
  %wide.load392 = load <16 x i8>, ptr %i.ks, align 1, !tbaa !35
  %i.kt = getelementptr inbounds i8, ptr %i.l, i64 %index390 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  %wide.load393 = load <16 x i8>, ptr %i.kt, align 1, !tbaa !35
  %wide.load394 = load <16 x i8>, ptr %i.ku, align 1, !tbaa !35
  %i.kv = sub <16 x i8> %wide.load391, %wide.load393
  %i.kw = sub <16 x i8> %wide.load392, %wide.load394
  %i.kx = getelementptr inbounds i8, ptr %7, i64 %i.kq ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  store <16 x i8> %i.kv, ptr %i.kx, align 1, !tbaa !35
  store <16 x i8> %i.kw, ptr %i.ky, align 1, !tbaa !35
  %index.next395 = add nuw i64 %index390, 32      ; 2 uses
  %i.kz = icmp eq i64 %index.next395, %n.vec388
  br i1 %i.kz, label %middle.block396, label %vector.body389, !llvm.loop !592

middle.block396:                                  ; preds = %vector.body389
  %cmp.n397 = icmp eq i64 %i.kj, %n.vec388
  br i1 %cmp.n397, label %.loopexit, label %vec.epilog.iter.check401

vec.epilog.iter.check401:                         ; preds = %middle.block396
  %min.epilog.iters.check402 = icmp eq i64 %i.ko, 0
  br i1 %min.epilog.iters.check402, label %.lr.ph173.preheader, label %vec.epilog.ph403, !prof !110

vec.epilog.ph403:                                 ; preds = %vector.main.loop.iter.check385, %vec.epilog.iter.check401
  %vec.epilog.resume.val398 = phi i64 [ %n.vec388, %vec.epilog.iter.check401 ], [ 0, %vector.main.loop.iter.check385 ]
  %n.vec404 = and i64 %i.kj, -8                   ; 3 uses
  %i.la = add nsw i64 %n.vec404, %i.ki
  br label %vec.epilog.vector.body405

vec.epilog.vector.body405:                        ; preds = %vec.epilog.vector.body405, %vec.epilog.ph403
  %index406 = phi i64 [ %vec.epilog.resume.val398, %vec.epilog.ph403 ], [ %index.next409, %vec.epilog.vector.body405 ] ; 3 uses
  %i.lb = add i64 %index406, %i.ki                ; 2 uses
  %i.lc = getelementptr inbounds i8, ptr %i.l, i64 %i.lb
  %wide.load407 = load <8 x i8>, ptr %i.lc, align 1, !tbaa !35
  %i.ld = getelementptr inbounds i8, ptr %i.l, i64 %index406
  %wide.load408 = load <8 x i8>, ptr %i.ld, align 1, !tbaa !35
  %i.le = sub <8 x i8> %wide.load407, %wide.load408
  %i.lf = getelementptr inbounds i8, ptr %7, i64 %i.lb
  store <8 x i8> %i.le, ptr %i.lf, align 1, !tbaa !35
  %index.next409 = add nuw i64 %index406, 8       ; 2 uses
  %i.lg = icmp eq i64 %index.next409, %n.vec404
  br i1 %i.lg, label %vec.epilog.middle.block410, label %vec.epilog.vector.body405, !llvm.loop !593

vec.epilog.middle.block410:                       ; preds = %vec.epilog.vector.body405
  %cmp.n411 = icmp eq i64 %i.kj, %n.vec404
  br i1 %cmp.n411, label %.loopexit, label %.lr.ph173.preheader

.lr.ph173.preheader:                              ; preds = %iter.check399, %vector.memcheck380, %vec.epilog.iter.check401, %vec.epilog.middle.block410
  %indvars.iv205.ph = phi i64 [ %i.ki, %iter.check399 ], [ %i.ki, %vector.memcheck380 ], [ %i.kp, %vec.epilog.iter.check401 ], [ %i.la, %vec.epilog.middle.block410 ] ; 7 uses
  %i.lh = sub nsw i64 %wide.trip.count208, %indvars.iv205.ph
  %xtraiter424 = and i64 %i.lh, 1
  %lcmp.mod425.not = icmp eq i64 %xtraiter424, 0
  br i1 %lcmp.mod425.not, label %.lr.ph173.prol.loopexit, label %.lr.ph173.prol

.lr.ph173.prol:                                   ; preds = %.lr.ph173.preheader
  %i.li = getelementptr inbounds i8, ptr %i.l, i64 %indvars.iv205.ph
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !35
  %i.lk = sub nsw i64 %indvars.iv205.ph, %i.ki
  %i.ll = getelementptr inbounds i8, ptr %i.l, i64 %i.lk
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !35
  %i.ln = sub i8 %i.lj, %i.lm
  %i.lo = getelementptr inbounds i8, ptr %7, i64 %indvars.iv205.ph
  store i8 %i.ln, ptr %i.lo, align 1, !tbaa !35
  %indvars.iv.next206.prol = add nsw i64 %indvars.iv205.ph, 1
  br label %.lr.ph173.prol.loopexit

.lr.ph173.prol.loopexit:                          ; preds = %.lr.ph173.prol, %.lr.ph173.preheader
  %indvars.iv205.unr = phi i64 [ %indvars.iv205.ph, %.lr.ph173.preheader ], [ %indvars.iv.next206.prol, %.lr.ph173.prol ]
  %i.lp = add nsw i64 %wide.trip.count208, -1
  %i.lq = icmp eq i64 %indvars.iv205.ph, %i.lp
  br i1 %i.lq, label %.loopexit, label %.lr.ph173

.lr.ph173:                                        ; preds = %.lr.ph173.prol.loopexit, %.lr.ph173
  %indvars.iv205 = phi i64 [ %indvars.iv.next206.1, %.lr.ph173 ], [ %indvars.iv205.unr, %.lr.ph173.prol.loopexit ] ; 5 uses
  %i.lr = getelementptr inbounds i8, ptr %i.l, i64 %indvars.iv205
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !35
  %i.lt = sub nsw i64 %indvars.iv205, %i.ki
  %i.lu = getelementptr inbounds i8, ptr %i.l, i64 %i.lt
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !35
  %i.lw = sub i8 %i.ls, %i.lv
  %i.lx = getelementptr inbounds i8, ptr %7, i64 %indvars.iv205
  store i8 %i.lw, ptr %i.lx, align 1, !tbaa !35
  %indvars.iv.next206 = add nsw i64 %indvars.iv205, 1 ; 3 uses
  %i.ly = getelementptr inbounds i8, ptr %i.l, i64 %indvars.iv.next206
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !35
  %i.ma = sub nsw i64 %indvars.iv.next206, %i.ki
  %i.mb = getelementptr inbounds i8, ptr %i.l, i64 %i.ma
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !35
  %i.md = sub i8 %i.lz, %i.mc
  %i.me = getelementptr inbounds i8, ptr %7, i64 %indvars.iv.next206
  store i8 %i.md, ptr %i.me, align 1, !tbaa !35
  %indvars.iv.next206.1 = add nsw i64 %indvars.iv205, 2 ; 2 uses
  %exitcond209.not.1 = icmp eq i64 %indvars.iv.next206.1, %wide.trip.count208
  br i1 %exitcond209.not.1, label %.loopexit, label %.lr.ph173, !llvm.loop !594

.lr.ph171:                                        ; preds = %.lr.ph171.prol.loopexit, %.lr.ph171
  %indvars.iv200 = phi i64 [ %indvars.iv.next201.1, %.lr.ph171 ], [ %indvars.iv200.unr, %.lr.ph171.prol.loopexit ] ; 5 uses
  %i.mf = getelementptr inbounds i8, ptr %i.l, i64 %indvars.iv200
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !35
  %i.mh = sub nsw i64 %indvars.iv200, %i.iv
  %i.mi = getelementptr inbounds i8, ptr %i.l, i64 %i.mh
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !35
  %i.mk = sub i8 %i.mg, %i.mj
  %i.ml = getelementptr inbounds i8, ptr %7, i64 %indvars.iv200
  store i8 %i.mk, ptr %i.ml, align 1, !tbaa !35
  %indvars.iv.next201 = add nsw i64 %indvars.iv200, 1 ; 3 uses
  %i.mm = getelementptr inbounds i8, ptr %i.l, i64 %indvars.iv.next201
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !35
  %i.mo = sub nsw i64 %indvars.iv.next201, %i.iv
  %i.mp = getelementptr inbounds i8, ptr %i.l, i64 %i.mo
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !35
  %i.mr = sub i8 %i.mn, %i.mq
  %i.ms = getelementptr inbounds i8, ptr %7, i64 %indvars.iv.next201
  store i8 %i.mr, ptr %i.ms, align 1, !tbaa !35
  %indvars.iv.next201.1 = add nsw i64 %indvars.iv200, 2 ; 2 uses
  %exitcond204.not.1 = icmp eq i64 %indvars.iv.next201.1, %wide.trip.count203
  br i1 %exitcond204.not.1, label %.loopexit, label %.lr.ph171, !llvm.loop !595

.lr.ph169:                                        ; preds = %.lr.ph169.prol.loopexit, %.lr.ph169
  %indvars.iv195 = phi i64 [ %indvars.iv.next196.1, %.lr.ph169 ], [ %indvars.iv195.unr, %.lr.ph169.prol.loopexit ] ; 6 uses
  %i.mt = getelementptr inbounds i8, ptr %i.l, i64 %indvars.iv195
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !35
  %i.mv = sub nsw i64 %indvars.iv195, %i.go
  %i.mw = getelementptr inbounds i8, ptr %i.l, i64 %i.mv
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !35
  %i.my = zext i8 %i.mx to i16
  %i.mz = sub nsw i64 %indvars.iv195, %i.gp
  %i.na = getelementptr inbounds i8, ptr %i.l, i64 %i.mz
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !35
  %i.nc = zext i8 %i.nb to i16
  %i.nd = add nuw nsw i16 %i.nc, %i.my
  %i.ne = lshr i16 %i.nd, 1
  %i.nf = trunc nuw i16 %i.ne to i8
  %i.ng = sub i8 %i.mu, %i.nf
  %i.nh = getelementptr inbounds i8, ptr %7, i64 %indvars.iv195
  store i8 %i.ng, ptr %i.nh, align 1, !tbaa !35
  %indvars.iv.next196 = add nsw i64 %indvars.iv195, 1 ; 4 uses
  %i.ni = getelementptr inbounds i8, ptr %i.l, i64 %indvars.iv.next196
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !35
  %i.nk = sub nsw i64 %indvars.iv.next196, %i.go
  %i.nl = getelementptr inbounds i8, ptr %i.l, i64 %i.nk
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !35
  %i.nn = zext i8 %i.nm to i16
  %i.no = sub nsw i64 %indvars.iv.next196, %i.gp
  %i.np = getelementptr inbounds i8, ptr %i.l, i64 %i.no
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !35
  %i.nr = zext i8 %i.nq to i16
  %i.ns = add nuw nsw i16 %i.nr, %i.nn
  %i.nt = lshr i16 %i.ns, 1
  %i.nu = trunc nuw i16 %i.nt to i8
  %i.nv = sub i8 %i.nj, %i.nu
  %i.nw = getelementptr inbounds i8, ptr %7, i64 %indvars.iv.next196
  store i8 %i.nv, ptr %i.nw, align 1, !tbaa !35
  %indvars.iv.next196.1 = add nsw i64 %indvars.iv195, 2 ; 2 uses
  %exitcond199.not.1 = icmp eq i64 %indvars.iv.next196.1, %wide.trip.count198
  br i1 %exitcond199.not.1, label %.loopexit, label %.lr.ph169, !llvm.loop !596

.lr.ph167:                                        ; preds = %.lr.ph167.preheader, %.lr.ph167
  %indvars.iv190 = phi i64 [ %indvars.iv.next191, %.lr.ph167 ], [ %indvars.iv190.ph, %.lr.ph167.preheader ] ; 5 uses
  %i.nx = getelementptr inbounds i8, ptr %i.l, i64 %indvars.iv190
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !35
  %i.nz = sub nsw i64 %indvars.iv190, %i.dv
  %i.oa = getelementptr inbounds i8, ptr %i.l, i64 %i.nz
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !35  ; 2 uses
  %i.oc = zext i8 %i.ob to i32                    ; 2 uses
  %i.od = sub nsw i64 %indvars.iv190, %i.dw       ; 2 uses
  %i.oe = getelementptr inbounds i8, ptr %i.l, i64 %i.od
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !35  ; 2 uses
  %i.og = zext i8 %i.of to i32                    ; 2 uses
  %i.oh = sub nsw i64 %i.od, %i.dv
  %i.oi = getelementptr inbounds i8, ptr %i.l, i64 %i.oh
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !35  ; 2 uses
  %i.ok = zext i8 %i.oj to i32                    ; 2 uses
  %i.ol = add nuw nsw i32 %i.og, %i.oc
  %i.om = sub nsw i32 %i.ol, %i.ok                ; 3 uses
  %i.on = sub nsw i32 %i.om, %i.oc
  %i.oo = tail call i32 @llvm.abs.i32(i32 %i.on, i1 true) ; 2 uses
  %i.op = sub nsw i32 %i.om, %i.og
  %i.oq = tail call i32 @llvm.abs.i32(i32 %i.op, i1 true) ; 2 uses
  %i.or = sub nsw i32 %i.om, %i.ok
end_hunk_1
