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
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64      ; 8 uses
  %min.iters.check = icmp ult i32 %3, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %5 = ptrtoaddr ptr %0 to i64                    ; 2 uses
  %6 = ptrtoaddr ptr %1 to i64
  %i.b = sub i64 %6, %5
  %diff.check = icmp ugt i64 %i.b, -16
  %7 = ptrtoaddr ptr %2 to i64
  %i.c = sub i64 %7, %5
  %diff.check11 = icmp ugt i64 %i.c, -16
  %conflict.rdx = or i1 %diff.check, %diff.check11
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check12 = icmp ult i32 %3, 16
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.d = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load = load <16 x i8>, ptr %i.e, align 1, !tbaa !35
  %i.f = zext <16 x i8> %wide.load to <16 x i16>
  %i.g = mul nuw nsw <16 x i16> %i.f, splat (i16 3)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %index
  %wide.load13 = load <16 x i8>, ptr %i.h, align 1, !tbaa !35
  %i.i = zext <16 x i8> %wide.load13 to <16 x i16>
  %i.j = add nuw nsw <16 x i16> %i.i, splat (i16 2)
  %i.k = add nuw nsw <16 x i16> %i.j, %i.g
  %i.l = lshr <16 x i16> %i.k, splat (i16 2)
  %i.m = trunc nuw <16 x i16> %i.l to <16 x i8>
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %index
  store <16 x i8> %i.m, ptr %i.n, align 1, !tbaa !35
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !468

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.d, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %index15
  %wide.load16 = load <4 x i8>, ptr %i.p, align 1, !tbaa !35
  %i.q = zext <4 x i8> %wide.load16 to <4 x i16>
  %i.r = mul nuw nsw <4 x i16> %i.q, splat (i16 3)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %index15
  %wide.load17 = load <4 x i8>, ptr %i.s, align 1, !tbaa !35
  %i.t = zext <4 x i8> %wide.load17 to <4 x i16>
  %i.u = add nuw nsw <4 x i16> %i.t, splat (i16 2)
  %i.v = add nuw nsw <4 x i16> %i.u, %i.r
  %i.w = lshr <4 x i16> %i.v, splat (i16 2)
  %i.x = trunc nuw <4 x i16> %i.w to <4 x i8>
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %index15
  store <4 x i8> %i.x, ptr %i.y, align 1, !tbaa !35
  %index.next18 = add nuw i64 %index15, 4         ; 2 uses
  %i.z = icmp eq i64 %index.next18, %n.vec14
  br i1 %i.z, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !469

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n19 = icmp eq i64 %n.vec14, %wide.trip.count
  br i1 %cmp.n19, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec14, %vec.epilog.middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.ph
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !35
  %i.ac = zext i8 %i.ab to i16
  %i.ad = mul nuw nsw i16 %i.ac, 3
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.ph
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !35
  %i.ag = zext i8 %i.af to i16
  %i.ah = add nuw nsw i16 %i.ag, 2
  %i.ai = add nuw nsw i16 %i.ah, %i.ad
  %i.aj = lshr i16 %i.ai, 2
  %i.ak = trunc nuw i16 %i.aj to i8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.ph
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !35
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.am = add nsw i64 %wide.trip.count, -1
  %i.an = icmp eq i64 %indvars.iv.ph, %i.am
  br i1 %i.an, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !35
  %i.aq = zext i8 %i.ap to i16
  %i.ar = mul nuw nsw i16 %i.aq, 3
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.at = load i8, ptr %i.as, align 1, !tbaa !35
  %i.au = zext i8 %i.at to i16
  %i.av = add nuw nsw i16 %i.au, 2
  %i.aw = add nuw nsw i16 %i.av, %i.ar
  %i.ax = lshr i16 %i.aw, 2
  %i.ay = trunc nuw i16 %i.ax to i8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !35
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !35
  %i.bc = zext i8 %i.bb to i16
  %i.bd = mul nuw nsw i16 %i.bc, 3
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !35
  %i.bg = zext i8 %i.bf to i16
  %i.bh = add nuw nsw i16 %i.bg, 2
  %i.bi = add nuw nsw i16 %i.bh, %i.bd
  %i.bj = lshr i16 %i.bi, 2
  %i.bk = trunc nuw i16 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !35
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
  %.not = icmp eq i32 %4, 0
  %_ZZL22stbiw__encode_png_linePhiiiiiiPaE7mapping._ZZL22stbiw__encode_png_linePhiiiiiiPaE8firstmap = select i1 %.not, ptr @_ZZL22stbiw__encode_png_linePhiiiiiiPaE8firstmap, ptr @_ZZL22stbiw__encode_png_linePhiiiiiiPaE7mapping
  %i.a = sext i32 %6 to i64
  %i.b = getelementptr inbounds [4 x i8], ptr %_ZZL22stbiw__encode_png_linePhiiiiiiPaE7mapping._ZZL22stbiw__encode_png_linePhiiiiiiPaE8firstmap, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !23   ; 3 uses
  %i.d = load i32, ptr @_ZL30stbi__flip_vertically_on_write, align 4, !tbaa !23
  %.not136 = icmp eq i32 %i.d, 0                  ; 2 uses
  %i.e = xor i32 %4, -1
  %i.f = add i32 %3, %i.e
  %i.g = select i1 %.not136, i32 %4, i32 %i.f
  %i.h = mul i32 %i.g, %1
  %i.i = sext i32 %i.h to i64                     ; 8 uses
  %i.j = getelementptr inbounds i8, ptr %0, i64 %i.i ; 77 uses
  %i.k = sub nsw i32 0, %1
  %i.l = select i1 %.not136, i32 %1, i32 %i.k     ; 4 uses
  %i.m = icmp eq i32 %i.c, 0
  br i1 %i.m, label %bb.b, label %.preheader160

.preheader160:                                    ; preds = %bb.a
  %i.n = icmp sgt i32 %5, 0
  br i1 %i.n, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader160
  %i.o = sext i32 %i.l to i64                     ; 3 uses
  %wide.trip.count = zext nneg i32 %5 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.p = mul nsw i32 %5, %2
  %i.q = sext i32 %i.p to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %7, ptr align 1 %i.j, i64 %i.q, i1 false)
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.i ] ; 11 uses
  switch i32 %i.c, label %bb.i [
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv
  %i.s = load i8, ptr %i.r, align 1, !tbaa !35
  br label %.sink.split

bb.d:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv
  %i.u = load i8, ptr %i.t, align 1, !tbaa !35
  %i.v = sub nsw i64 %indvars.iv, %i.o
  %i.w = getelementptr inbounds i8, ptr %i.j, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !35
  %i.y = sub i8 %i.u, %i.x
  br label %.sink.split

bb.e:                                             ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !35
  %i.ab = sub nsw i64 %indvars.iv, %i.o
  %i.ac = getelementptr inbounds i8, ptr %i.j, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !35
  %i.ae = lshr i8 %i.ad, 1
  %i.af = sub i8 %i.aa, %i.ae
  br label %.sink.split

bb.f:                                             ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !35
  %i.ai = sub nsw i64 %indvars.iv, %i.o
  %i.aj = getelementptr inbounds i8, ptr %i.j, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !35
  %i.al = sub i8 %i.ah, %i.ak
  br label %.sink.split

bb.g:                                             ; preds = %.lr.ph
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv
  %i.an = load i8, ptr %i.am, align 1, !tbaa !35
  br label %.sink.split

bb.h:                                             ; preds = %.lr.ph
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !35
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sink = phi i8 [ %i.s, %bb.c ], [ %i.y, %bb.d ], [ %i.af, %bb.e ], [ %i.al, %bb.f ], [ %i.an, %bb.g ], [ %i.ap, %bb.h ]
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv
  store i8 %.sink, ptr %i.aq, align 1, !tbaa !35
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !581

._crit_edge:                                      ; preds = %bb.i, %.preheader160
  switch i32 %i.c, label %.loopexit [
    i32 1, label %.preheader
    i32 2, label %.preheader150
    i32 3, label %.preheader152
    i32 4, label %.preheader154
    i32 5, label %.preheader156
    i32 6, label %.preheader158
  ]

.preheader158:                                    ; preds = %._crit_edge
  %i.ar = mul nsw i32 %5, %2                      ; 2 uses
  %i.as = icmp slt i32 %5, %i.ar
  br i1 %i.as, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader158
  %i.at = sext i32 %5 to i64                      ; 11 uses
  %wide.trip.count183 = sext i32 %i.ar to i64     ; 4 uses
  %i.au = sub nsw i64 %wide.trip.count183, %i.at  ; 7 uses
  %min.iters.check = icmp ult i64 %i.au, 8
  br i1 %min.iters.check, label %.lr.ph163.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %8 = ptrtoaddr ptr %7 to i64                    ; 2 uses
  %9 = ptrtoaddr ptr %0 to i64
  %i.av = add i64 %9, %i.i                        ; 2 uses
  %i.aw = add i64 %8, %i.at
  %i.ax = sub i64 %i.av, %i.aw
  %diff.check = icmp ugt i64 %i.ax, -32
  %i.ay = sub i64 %i.av, %8
  %diff.check228 = icmp ugt i64 %i.ay, -32
  %conflict.rdx = or i1 %diff.check, %diff.check228
  br i1 %conflict.rdx, label %.lr.ph163.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check229 = icmp ult i64 %i.au, 32
  br i1 %min.iters.check229, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.az = and i64 %i.au, 24
  %n.vec = and i64 %i.au, -32                     ; 4 uses
  %i.ba = add nsw i64 %n.vec, %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bb = add i64 %index, %i.at                   ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.j, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %wide.load = load <16 x i8>, ptr %i.bc, align 1, !tbaa !35
  %wide.load230 = load <16 x i8>, ptr %i.bd, align 1, !tbaa !35
  %i.be = getelementptr inbounds i8, ptr %i.j, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %wide.load231 = load <16 x i8>, ptr %i.be, align 1, !tbaa !35
  %wide.load232 = load <16 x i8>, ptr %i.bf, align 1, !tbaa !35
  %i.bg = sub <16 x i8> %wide.load, %wide.load231
  %i.bh = sub <16 x i8> %wide.load230, %wide.load232
  %i.bi = getelementptr inbounds i8, ptr %7, i64 %i.bb ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store <16 x i8> %i.bg, ptr %i.bi, align 1, !tbaa !35
  store <16 x i8> %i.bh, ptr %i.bj, align 1, !tbaa !35
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !582

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.az, 0
  br i1 %min.epilog.iters.check, label %.lr.ph163.preheader, label %vec.epilog.ph, !prof !110

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec233 = and i64 %i.au, -8                   ; 3 uses
  %i.bl = add nsw i64 %n.vec233, %i.at
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index234 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next237, %vec.epilog.vector.body ] ; 3 uses
  %i.bm = add i64 %index234, %i.at                ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %i.j, i64 %i.bm
  %wide.load235 = load <8 x i8>, ptr %i.bn, align 1, !tbaa !35
  %i.bo = getelementptr inbounds i8, ptr %i.j, i64 %index234
  %wide.load236 = load <8 x i8>, ptr %i.bo, align 1, !tbaa !35
  %i.bp = sub <8 x i8> %wide.load235, %wide.load236
  %i.bq = getelementptr inbounds i8, ptr %7, i64 %i.bm
  store <8 x i8> %i.bp, ptr %i.bq, align 1, !tbaa !35
  %index.next237 = add nuw i64 %index234, 8       ; 2 uses
  %i.br = icmp eq i64 %index.next237, %n.vec233
  br i1 %i.br, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !583

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n238 = icmp eq i64 %i.au, %n.vec233
  br i1 %cmp.n238, label %.loopexit, label %.lr.ph163.preheader

.lr.ph163.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv180.ph = phi i64 [ %i.at, %iter.check ], [ %i.at, %vector.memcheck ], [ %i.ba, %vec.epilog.iter.check ], [ %i.bl, %vec.epilog.middle.block ] ; 7 uses
  %i.bs = sub nsw i64 %wide.trip.count183, %indvars.iv180.ph
  %xtraiter = and i64 %i.bs, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph163.prol.loopexit, label %.lr.ph163.prol

.lr.ph163.prol:                                   ; preds = %.lr.ph163.preheader
  %i.bt = getelementptr inbounds i8, ptr %i.j, i64 %indvars.iv180.ph
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !35
  %i.bv = sub nsw i64 %indvars.iv180.ph, %i.at
  %i.bw = getelementptr inbounds i8, ptr %i.j, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !35
  %i.by = sub i8 %i.bu, %i.bx
  %i.bz = getelementptr inbounds i8, ptr %7, i64 %indvars.iv180.ph
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !35
  %indvars.iv.next181.prol = add nsw i64 %indvars.iv180.ph, 1
  br label %.lr.ph163.prol.loopexit

.lr.ph163.prol.loopexit:                          ; preds = %.lr.ph163.prol, %.lr.ph163.preheader
  %indvars.iv180.unr = phi i64 [ %indvars.iv180.ph, %.lr.ph163.preheader ], [ %indvars.iv.next181.prol, %.lr.ph163.prol ]
  %i.ca = add nsw i64 %wide.trip.count183, -1
  %i.cb = icmp eq i64 %indvars.iv180.ph, %i.ca
  br i1 %i.cb, label %.loopexit, label %.lr.ph163

.preheader156:                                    ; preds = %._crit_edge
  %i.cc = mul nsw i32 %5, %2                      ; 2 uses
  %i.cd = icmp slt i32 %5, %i.cc
  br i1 %i.cd, label %iter.check259, label %.loopexit

iter.check259:                                    ; preds = %.preheader156
  %i.ce = sext i32 %5 to i64                      ; 11 uses
  %wide.trip.count188 = sext i32 %i.cc to i64     ; 4 uses
  %i.cf = sub nsw i64 %wide.trip.count188, %i.ce  ; 7 uses
  %min.iters.check244 = icmp ult i64 %i.cf, 8
  br i1 %min.iters.check244, label %.lr.ph165.preheader, label %vector.memcheck240

vector.memcheck240:                               ; preds = %iter.check259
  %10 = ptrtoaddr ptr %7 to i64                   ; 2 uses
  %11 = ptrtoaddr ptr %0 to i64
  %i.cg = add i64 %11, %i.i                       ; 2 uses
  %i.ch = add i64 %10, %i.ce
  %i.ci = sub i64 %i.cg, %i.ch
  %diff.check241 = icmp ugt i64 %i.ci, -32
  %i.cj = sub i64 %i.cg, %10
  %diff.check242 = icmp ugt i64 %i.cj, -32
  %conflict.rdx243 = or i1 %diff.check241, %diff.check242
  br i1 %conflict.rdx243, label %.lr.ph165.preheader, label %vector.main.loop.iter.check245

vector.main.loop.iter.check245:                   ; preds = %vector.memcheck240
  %min.iters.check246 = icmp ult i64 %i.cf, 32
  br i1 %min.iters.check246, label %vec.epilog.ph263, label %vector.ph247

vector.ph247:                                     ; preds = %vector.main.loop.iter.check245
  %i.ck = and i64 %i.cf, 24
  %n.vec248 = and i64 %i.cf, -32                  ; 4 uses
  %i.cl = add nsw i64 %n.vec248, %i.ce
  br label %vector.body249

vector.body249:                                   ; preds = %vector.ph247, %vector.body249
  %index250 = phi i64 [ 0, %vector.ph247 ], [ %index.next255, %vector.body249 ] ; 3 uses
  %i.cm = add i64 %index250, %i.ce                ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %i.j, i64 %i.cm ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %wide.load251 = load <16 x i8>, ptr %i.cn, align 1, !tbaa !35
  %wide.load252 = load <16 x i8>, ptr %i.co, align 1, !tbaa !35
  %i.cp = getelementptr inbounds i8, ptr %i.j, i64 %index250 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %wide.load253 = load <16 x i8>, ptr %i.cp, align 1, !tbaa !35
  %wide.load254 = load <16 x i8>, ptr %i.cq, align 1, !tbaa !35
  %i.cr = lshr <16 x i8> %wide.load253, splat (i8 1)
  %i.cs = lshr <16 x i8> %wide.load254, splat (i8 1)
  %i.ct = sub <16 x i8> %wide.load251, %i.cr
  %i.cu = sub <16 x i8> %wide.load252, %i.cs
  %i.cv = getelementptr inbounds i8, ptr %7, i64 %i.cm ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store <16 x i8> %i.ct, ptr %i.cv, align 1, !tbaa !35
  store <16 x i8> %i.cu, ptr %i.cw, align 1, !tbaa !35
  %index.next255 = add nuw i64 %index250, 32      ; 2 uses
  %i.cx = icmp eq i64 %index.next255, %n.vec248
  br i1 %i.cx, label %middle.block256, label %vector.body249, !llvm.loop !584

middle.block256:                                  ; preds = %vector.body249
  %cmp.n257 = icmp eq i64 %i.cf, %n.vec248
  br i1 %cmp.n257, label %.loopexit, label %vec.epilog.iter.check261

vec.epilog.iter.check261:                         ; preds = %middle.block256
  %min.epilog.iters.check262 = icmp eq i64 %i.ck, 0
  br i1 %min.epilog.iters.check262, label %.lr.ph165.preheader, label %vec.epilog.ph263, !prof !110

vec.epilog.ph263:                                 ; preds = %vector.main.loop.iter.check245, %vec.epilog.iter.check261
  %vec.epilog.resume.val258 = phi i64 [ %n.vec248, %vec.epilog.iter.check261 ], [ 0, %vector.main.loop.iter.check245 ]
  %n.vec264 = and i64 %i.cf, -8                   ; 3 uses
  %i.cy = add nsw i64 %n.vec264, %i.ce
  br label %vec.epilog.vector.body265

vec.epilog.vector.body265:                        ; preds = %vec.epilog.vector.body265, %vec.epilog.ph263
  %index266 = phi i64 [ %vec.epilog.resume.val258, %vec.epilog.ph263 ], [ %index.next269, %vec.epilog.vector.body265 ] ; 3 uses
  %i.cz = add i64 %index266, %i.ce                ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %i.j, i64 %i.cz
  %wide.load267 = load <8 x i8>, ptr %i.da, align 1, !tbaa !35
  %i.db = getelementptr inbounds i8, ptr %i.j, i64 %index266
  %wide.load268 = load <8 x i8>, ptr %i.db, align 1, !tbaa !35
  %i.dc = lshr <8 x i8> %wide.load268, splat (i8 1)
  %i.dd = sub <8 x i8> %wide.load267, %i.dc
  %i.de = getelementptr inbounds i8, ptr %7, i64 %i.cz
  store <8 x i8> %i.dd, ptr %i.de, align 1, !tbaa !35
  %index.next269 = add nuw i64 %index266, 8       ; 2 uses
  %i.df = icmp eq i64 %index.next269, %n.vec264
  br i1 %i.df, label %vec.epilog.middle.block270, label %vec.epilog.vector.body265, !llvm.loop !585

vec.epilog.middle.block270:                       ; preds = %vec.epilog.vector.body265
  %cmp.n271 = icmp eq i64 %i.cf, %n.vec264
  br i1 %cmp.n271, label %.loopexit, label %.lr.ph165.preheader

.lr.ph165.preheader:                              ; preds = %iter.check259, %vector.memcheck240, %vec.epilog.iter.check261, %vec.epilog.middle.block270
  %indvars.iv185.ph = phi i64 [ %i.ce, %iter.check259 ], [ %i.ce, %vector.memcheck240 ], [ %i.cl, %vec.epilog.iter.check261 ], [ %i.cy, %vec.epilog.middle.block270 ] ; 7 uses
  %i.dg = sub nsw i64 %wide.trip.count188, %indvars.iv185.ph
  %xtraiter418 = and i64 %i.dg, 1
  %lcmp.mod419.not = icmp eq i64 %xtraiter418, 0
  br i1 %lcmp.mod419.not, label %.lr.ph165.prol.loopexit, label %.lr.ph165.prol

.lr.ph165.prol:                                   ; preds = %.lr.ph165.preheader
  %i.dh = getelementptr inbounds i8, ptr %i.j, i64 %indvars.iv185.ph
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !35
  %i.dj = sub nsw i64 %indvars.iv185.ph, %i.ce
  %i.dk = getelementptr inbounds i8, ptr %i.j, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !35
  %i.dm = lshr i8 %i.dl, 1
  %i.dn = sub i8 %i.di, %i.dm
  %i.do = getelementptr inbounds i8, ptr %7, i64 %indvars.iv185.ph
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !35
  %indvars.iv.next186.prol = add nsw i64 %indvars.iv185.ph, 1
  br label %.lr.ph165.prol.loopexit

.lr.ph165.prol.loopexit:                          ; preds = %.lr.ph165.prol, %.lr.ph165.preheader
  %indvars.iv185.unr = phi i64 [ %indvars.iv185.ph, %.lr.ph165.preheader ], [ %indvars.iv.next186.prol, %.lr.ph165.prol ]
  %i.dp = add nsw i64 %wide.trip.count188, -1
  %i.dq = icmp eq i64 %indvars.iv185.ph, %i.dp
  br i1 %i.dq, label %.loopexit, label %.lr.ph165

.preheader154:                                    ; preds = %._crit_edge
  %i.dr = mul nsw i32 %5, %2                      ; 2 uses
  %i.ds = icmp slt i32 %5, %i.dr
  br i1 %i.ds, label %iter.check296, label %.loopexit

iter.check296:                                    ; preds = %.preheader154
  %i.dt = sext i32 %5 to i64                      ; 13 uses
  %i.du = sext i32 %i.l to i64                    ; 4 uses
  %wide.trip.count193 = sext i32 %i.dr to i64     ; 2 uses
  %i.dv = sub nsw i64 %wide.trip.count193, %i.dt  ; 7 uses
  %min.iters.check281 = icmp ult i64 %i.dv, 4
  br i1 %min.iters.check281, label %.lr.ph167.preheader, label %vector.memcheck273

vector.memcheck273:                               ; preds = %iter.check296
  %12 = ptrtoaddr ptr %7 to i64                   ; 3 uses
  %13 = ptrtoaddr ptr %0 to i64                   ; 2 uses
  %i.dw = add i64 %12, %i.du                      ; 2 uses
  %i.dx = add i64 %i.dw, %i.dt
  %i.dy = add i64 %13, %i.i
  %i.dz = sub i64 %i.dy, %i.dx
  %diff.check274 = icmp ugt i64 %i.dz, -16
  %i.ea = add i64 %13, %i.i                       ; 3 uses
  %i.eb = sub i64 %i.ea, %i.dw
  %diff.check275 = icmp ugt i64 %i.eb, -16
  %conflict.rdx276 = or i1 %diff.check274, %diff.check275
  %i.ec = add i64 %12, %i.dt
  %i.ed = sub i64 %i.ea, %i.ec
  %diff.check277 = icmp ugt i64 %i.ed, -16
  %conflict.rdx278 = or i1 %conflict.rdx276, %diff.check277
  %i.ee = sub i64 %i.ea, %12
  %diff.check279 = icmp ugt i64 %i.ee, -16
  %conflict.rdx280 = or i1 %conflict.rdx278, %diff.check279
  br i1 %conflict.rdx280, label %.lr.ph167.preheader, label %vector.main.loop.iter.check282

vector.main.loop.iter.check282:                   ; preds = %vector.memcheck273
  %min.iters.check283 = icmp ult i64 %i.dv, 16
  br i1 %min.iters.check283, label %vec.epilog.ph300, label %vector.ph284

vector.ph284:                                     ; preds = %vector.main.loop.iter.check282
  %i.ef = and i64 %i.dv, 12
  %n.vec285 = and i64 %i.dv, -16                  ; 4 uses
  %i.eg = add nsw i64 %n.vec285, %i.dt
  br label %vector.body286

vector.body286:                                   ; preds = %vector.ph284, %vector.body286
  %index287 = phi i64 [ 0, %vector.ph284 ], [ %index.next292, %vector.body286 ] ; 3 uses
  %i.eh = add i64 %index287, %i.dt                ; 3 uses
  %i.ei = getelementptr inbounds i8, ptr %i.j, i64 %i.eh
  %wide.load288 = load <16 x i8>, ptr %i.ei, align 1, !tbaa !35
  %i.ej = getelementptr inbounds i8, ptr %i.j, i64 %index287
  %wide.load289 = load <16 x i8>, ptr %i.ej, align 1, !tbaa !35 ; 2 uses
  %i.ek = zext <16 x i8> %wide.load289 to <16 x i32> ; 2 uses
  %i.el = sub nsw i64 %i.eh, %i.du                ; 2 uses
  %i.em = getelementptr inbounds i8, ptr %i.j, i64 %i.el
  %wide.load290 = load <16 x i8>, ptr %i.em, align 1, !tbaa !35 ; 2 uses
  %i.en = zext <16 x i8> %wide.load290 to <16 x i32> ; 2 uses
  %i.eo = sub nsw i64 %i.el, %i.dt
  %i.ep = getelementptr inbounds i8, ptr %i.j, i64 %i.eo
  %wide.load291 = load <16 x i8>, ptr %i.ep, align 1, !tbaa !35 ; 2 uses
  %i.eq = zext <16 x i8> %wide.load291 to <16 x i32> ; 2 uses
  %i.er = add nuw nsw <16 x i32> %i.en, %i.ek
  %i.es = sub nsw <16 x i32> %i.er, %i.eq         ; 3 uses
  %i.et = sub nsw <16 x i32> %i.es, %i.ek
  %i.eu = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.et, i1 true) ; 2 uses
  %i.ev = sub nsw <16 x i32> %i.es, %i.en
  %i.ew = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.ev, i1 true) ; 2 uses
  %i.ex = sub nsw <16 x i32> %i.es, %i.eq
  %i.ey = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.ex, i1 true) ; 2 uses
  %i.ez = icmp samesign ugt <16 x i32> %i.eu, %i.ew
  %i.fa = icmp samesign ugt <16 x i32> %i.eu, %i.ey
  %i.fb = select <16 x i1> %i.ez, <16 x i1> splat (i1 true), <16 x i1> %i.fa
  %i.fc = icmp samesign ugt <16 x i32> %i.ew, %i.ey
  %i.fd = select <16 x i1> %i.fc, <16 x i8> %wide.load291, <16 x i8> %wide.load290
  %i.fe = select <16 x i1> %i.fb, <16 x i8> %i.fd, <16 x i8> %wide.load289
  %i.ff = sub <16 x i8> %wide.load288, %i.fe
  %i.fg = getelementptr inbounds i8, ptr %7, i64 %i.eh
  store <16 x i8> %i.ff, ptr %i.fg, align 1, !tbaa !35
  %index.next292 = add nuw i64 %index287, 16      ; 2 uses
  %i.fh = icmp eq i64 %index.next292, %n.vec285
  br i1 %i.fh, label %middle.block293, label %vector.body286, !llvm.loop !586

middle.block293:                                  ; preds = %vector.body286
  %cmp.n294 = icmp eq i64 %i.dv, %n.vec285
  br i1 %cmp.n294, label %.loopexit, label %vec.epilog.iter.check298

vec.epilog.iter.check298:                         ; preds = %middle.block293
  %min.epilog.iters.check299 = icmp eq i64 %i.ef, 0
  br i1 %min.epilog.iters.check299, label %.lr.ph167.preheader, label %vec.epilog.ph300, !prof !45

vec.epilog.ph300:                                 ; preds = %vector.main.loop.iter.check282, %vec.epilog.iter.check298
  %vec.epilog.resume.val295 = phi i64 [ %n.vec285, %vec.epilog.iter.check298 ], [ 0, %vector.main.loop.iter.check282 ]
  %n.vec301 = and i64 %i.dv, -4                   ; 3 uses
  %i.fi = add nsw i64 %n.vec301, %i.dt
  br label %vec.epilog.vector.body302

vec.epilog.vector.body302:                        ; preds = %vec.epilog.vector.body302, %vec.epilog.ph300
  %index303 = phi i64 [ %vec.epilog.resume.val295, %vec.epilog.ph300 ], [ %index.next308, %vec.epilog.vector.body302 ] ; 3 uses
  %i.fj = add i64 %index303, %i.dt                ; 3 uses
  %i.fk = getelementptr inbounds i8, ptr %i.j, i64 %i.fj
  %wide.load304 = load <4 x i8>, ptr %i.fk, align 1, !tbaa !35
  %i.fl = getelementptr inbounds i8, ptr %i.j, i64 %index303
  %wide.load305 = load <4 x i8>, ptr %i.fl, align 1, !tbaa !35 ; 2 uses
  %i.fm = zext <4 x i8> %wide.load305 to <4 x i32> ; 2 uses
  %i.fn = sub nsw i64 %i.fj, %i.du                ; 2 uses
  %i.fo = getelementptr inbounds i8, ptr %i.j, i64 %i.fn
  %wide.load306 = load <4 x i8>, ptr %i.fo, align 1, !tbaa !35 ; 2 uses
  %i.fp = zext <4 x i8> %wide.load306 to <4 x i32> ; 2 uses
  %i.fq = sub nsw i64 %i.fn, %i.dt
  %i.fr = getelementptr inbounds i8, ptr %i.j, i64 %i.fq
  %wide.load307 = load <4 x i8>, ptr %i.fr, align 1, !tbaa !35 ; 2 uses
  %i.fs = zext <4 x i8> %wide.load307 to <4 x i32> ; 2 uses
  %i.ft = add nuw nsw <4 x i32> %i.fp, %i.fm
  %i.fu = sub nsw <4 x i32> %i.ft, %i.fs          ; 3 uses
  %i.fv = sub nsw <4 x i32> %i.fu, %i.fm
  %i.fw = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.fv, i1 true) ; 2 uses
  %i.fx = sub nsw <4 x i32> %i.fu, %i.fp
  %i.fy = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.fx, i1 true) ; 2 uses
  %i.fz = sub nsw <4 x i32> %i.fu, %i.fs
  %i.ga = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.fz, i1 true) ; 2 uses
  %i.gb = icmp samesign ugt <4 x i32> %i.fw, %i.fy
  %i.gc = icmp samesign ugt <4 x i32> %i.fw, %i.ga
  %i.gd = select <4 x i1> %i.gb, <4 x i1> splat (i1 true), <4 x i1> %i.gc
  %i.ge = icmp samesign ugt <4 x i32> %i.fy, %i.ga
  %i.gf = select <4 x i1> %i.ge, <4 x i8> %wide.load307, <4 x i8> %wide.load306
  %i.gg = select <4 x i1> %i.gd, <4 x i8> %i.gf, <4 x i8> %wide.load305
  %i.gh = sub <4 x i8> %wide.load304, %i.gg
  %i.gi = getelementptr inbounds i8, ptr %7, i64 %i.fj
  store <4 x i8> %i.gh, ptr %i.gi, align 1, !tbaa !35
  %index.next308 = add nuw i64 %index303, 4       ; 2 uses
  %i.gj = icmp eq i64 %index.next308, %n.vec301
  br i1 %i.gj, label %vec.epilog.middle.block309, label %vec.epilog.vector.body302, !llvm.loop !587

vec.epilog.middle.block309:                       ; preds = %vec.epilog.vector.body302
  %cmp.n310 = icmp eq i64 %i.dv, %n.vec301
  br i1 %cmp.n310, label %.loopexit, label %.lr.ph167.preheader

.lr.ph167.preheader:                              ; preds = %iter.check296, %vector.memcheck273, %vec.epilog.iter.check298, %vec.epilog.middle.block309
  %indvars.iv190.ph = phi i64 [ %i.dt, %iter.check296 ], [ %i.dt, %vector.memcheck273 ], [ %i.eg, %vec.epilog.iter.check298 ], [ %i.fi, %vec.epilog.middle.block309 ]
  br label %.lr.ph167

.preheader152:                                    ; preds = %._crit_edge
  %i.gk = mul nsw i32 %5, %2                      ; 2 uses
  %i.gl = icmp slt i32 %5, %i.gk
  br i1 %i.gl, label %iter.check332, label %.loopexit

iter.check332:                                    ; preds = %.preheader152
  %i.gm = sext i32 %5 to i64                      ; 11 uses
  %i.gn = sext i32 %i.l to i64                    ; 6 uses
  %wide.trip.count198 = sext i32 %i.gk to i64     ; 4 uses
  %i.go = sub nsw i64 %wide.trip.count198, %i.gm  ; 7 uses
  %min.iters.check318 = icmp ult i64 %i.go, 4
  br i1 %min.iters.check318, label %.lr.ph169.preheader, label %vector.memcheck312

vector.memcheck312:                               ; preds = %iter.check332
  %14 = ptrtoaddr ptr %7 to i64                   ; 3 uses
  %15 = ptrtoaddr ptr %0 to i64
  %i.gp = add i64 %15, %i.i                       ; 3 uses
  %i.gq = add i64 %14, %i.gn
  %i.gr = sub i64 %i.gp, %i.gq
  %diff.check313 = icmp ugt i64 %i.gr, -16
  %i.gs = add i64 %14, %i.gm
  %i.gt = sub i64 %i.gp, %i.gs
  %diff.check314 = icmp ugt i64 %i.gt, -16
  %conflict.rdx315 = or i1 %diff.check313, %diff.check314
  %i.gu = sub i64 %i.gp, %14
  %diff.check316 = icmp ugt i64 %i.gu, -16
  %conflict.rdx317 = or i1 %conflict.rdx315, %diff.check316
  br i1 %conflict.rdx317, label %.lr.ph169.preheader, label %vector.main.loop.iter.check319

vector.main.loop.iter.check319:                   ; preds = %vector.memcheck312
  %min.iters.check320 = icmp ult i64 %i.go, 16
  br i1 %min.iters.check320, label %vec.epilog.ph336, label %vector.ph321

vector.ph321:                                     ; preds = %vector.main.loop.iter.check319
  %i.gv = and i64 %i.go, 12
  %n.vec322 = and i64 %i.go, -16                  ; 4 uses
  %i.gw = add nsw i64 %n.vec322, %i.gm
  br label %vector.body323

vector.body323:                                   ; preds = %vector.ph321, %vector.body323
  %index324 = phi i64 [ 0, %vector.ph321 ], [ %index.next328, %vector.body323 ] ; 3 uses
  %i.gx = add i64 %index324, %i.gm                ; 3 uses
  %i.gy = getelementptr inbounds i8, ptr %i.j, i64 %i.gx
  %wide.load325 = load <16 x i8>, ptr %i.gy, align 1, !tbaa !35
  %i.gz = getelementptr inbounds i8, ptr %i.j, i64 %index324
  %wide.load326 = load <16 x i8>, ptr %i.gz, align 1, !tbaa !35
  %i.ha = zext <16 x i8> %wide.load326 to <16 x i16>
  %i.hb = sub nsw i64 %i.gx, %i.gn
  %i.hc = getelementptr inbounds i8, ptr %i.j, i64 %i.hb
  %wide.load327 = load <16 x i8>, ptr %i.hc, align 1, !tbaa !35
  %i.hd = zext <16 x i8> %wide.load327 to <16 x i16>
  %i.he = add nuw nsw <16 x i16> %i.hd, %i.ha
  %i.hf = lshr <16 x i16> %i.he, splat (i16 1)
  %i.hg = trunc nuw <16 x i16> %i.hf to <16 x i8>
  %i.hh = sub <16 x i8> %wide.load325, %i.hg
  %i.hi = getelementptr inbounds i8, ptr %7, i64 %i.gx
  store <16 x i8> %i.hh, ptr %i.hi, align 1, !tbaa !35
  %index.next328 = add nuw i64 %index324, 16      ; 2 uses
  %i.hj = icmp eq i64 %index.next328, %n.vec322
  br i1 %i.hj, label %middle.block329, label %vector.body323, !llvm.loop !588

middle.block329:                                  ; preds = %vector.body323
  %cmp.n330 = icmp eq i64 %i.go, %n.vec322
  br i1 %cmp.n330, label %.loopexit, label %vec.epilog.iter.check334

vec.epilog.iter.check334:                         ; preds = %middle.block329
  %min.epilog.iters.check335 = icmp eq i64 %i.gv, 0
  br i1 %min.epilog.iters.check335, label %.lr.ph169.preheader, label %vec.epilog.ph336, !prof !45

vec.epilog.ph336:                                 ; preds = %vector.main.loop.iter.check319, %vec.epilog.iter.check334
  %vec.epilog.resume.val331 = phi i64 [ %n.vec322, %vec.epilog.iter.check334 ], [ 0, %vector.main.loop.iter.check319 ]
  %n.vec337 = and i64 %i.go, -4                   ; 3 uses
  %i.hk = add nsw i64 %n.vec337, %i.gm
  br label %vec.epilog.vector.body338

vec.epilog.vector.body338:                        ; preds = %vec.epilog.vector.body338, %vec.epilog.ph336
  %index339 = phi i64 [ %vec.epilog.resume.val331, %vec.epilog.ph336 ], [ %index.next343, %vec.epilog.vector.body338 ] ; 3 uses
  %i.hl = add i64 %index339, %i.gm                ; 3 uses
  %i.hm = getelementptr inbounds i8, ptr %i.j, i64 %i.hl
  %wide.load340 = load <4 x i8>, ptr %i.hm, align 1, !tbaa !35
  %i.hn = getelementptr inbounds i8, ptr %i.j, i64 %index339
  %wide.load341 = load <4 x i8>, ptr %i.hn, align 1, !tbaa !35
  %i.ho = zext <4 x i8> %wide.load341 to <4 x i16>
  %i.hp = sub nsw i64 %i.hl, %i.gn
  %i.hq = getelementptr inbounds i8, ptr %i.j, i64 %i.hp
  %wide.load342 = load <4 x i8>, ptr %i.hq, align 1, !tbaa !35
  %i.hr = zext <4 x i8> %wide.load342 to <4 x i16>
  %i.hs = add nuw nsw <4 x i16> %i.hr, %i.ho
  %i.ht = lshr <4 x i16> %i.hs, splat (i16 1)
  %i.hu = trunc nuw <4 x i16> %i.ht to <4 x i8>
  %i.hv = sub <4 x i8> %wide.load340, %i.hu
  %i.hw = getelementptr inbounds i8, ptr %7, i64 %i.hl
  store <4 x i8> %i.hv, ptr %i.hw, align 1, !tbaa !35
  %index.next343 = add nuw i64 %index339, 4       ; 2 uses
  %i.hx = icmp eq i64 %index.next343, %n.vec337
  br i1 %i.hx, label %vec.epilog.middle.block344, label %vec.epilog.vector.body338, !llvm.loop !589

vec.epilog.middle.block344:                       ; preds = %vec.epilog.vector.body338
  %cmp.n345 = icmp eq i64 %i.go, %n.vec337
  br i1 %cmp.n345, label %.loopexit, label %.lr.ph169.preheader

.lr.ph169.preheader:                              ; preds = %iter.check332, %vector.memcheck312, %vec.epilog.iter.check334, %vec.epilog.middle.block344
  %indvars.iv195.ph = phi i64 [ %i.gm, %iter.check332 ], [ %i.gm, %vector.memcheck312 ], [ %i.gw, %vec.epilog.iter.check334 ], [ %i.hk, %vec.epilog.middle.block344 ] ; 8 uses
  %i.hy = sub nsw i64 %wide.trip.count198, %indvars.iv195.ph
  %xtraiter420 = and i64 %i.hy, 1
  %lcmp.mod421.not = icmp eq i64 %xtraiter420, 0
  br i1 %lcmp.mod421.not, label %.lr.ph169.prol.loopexit, label %.lr.ph169.prol

.lr.ph169.prol:                                   ; preds = %.lr.ph169.preheader
  %i.hz = getelementptr inbounds i8, ptr %i.j, i64 %indvars.iv195.ph
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !35
  %i.ib = sub nsw i64 %indvars.iv195.ph, %i.gm
  %i.ic = getelementptr inbounds i8, ptr %i.j, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !35
  %i.ie = zext i8 %i.id to i16
  %i.if = sub nsw i64 %indvars.iv195.ph, %i.gn
  %i.ig = getelementptr inbounds i8, ptr %i.j, i64 %i.if
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !35
  %i.ii = zext i8 %i.ih to i16
  %i.ij = add nuw nsw i16 %i.ii, %i.ie
  %i.ik = lshr i16 %i.ij, 1
  %i.il = trunc nuw i16 %i.ik to i8
  %i.im = sub i8 %i.ia, %i.il
  %i.in = getelementptr inbounds i8, ptr %7, i64 %indvars.iv195.ph
  store i8 %i.im, ptr %i.in, align 1, !tbaa !35
  %indvars.iv.next196.prol = add nsw i64 %indvars.iv195.ph, 1
  br label %.lr.ph169.prol.loopexit

.lr.ph169.prol.loopexit:                          ; preds = %.lr.ph169.prol, %.lr.ph169.preheader
  %indvars.iv195.unr = phi i64 [ %indvars.iv195.ph, %.lr.ph169.preheader ], [ %indvars.iv.next196.prol, %.lr.ph169.prol ]
  %i.io = add nsw i64 %wide.trip.count198, -1
  %i.ip = icmp eq i64 %indvars.iv195.ph, %i.io
  br i1 %i.ip, label %.loopexit, label %.lr.ph169

.preheader150:                                    ; preds = %._crit_edge
  %i.iq = mul nsw i32 %5, %2                      ; 2 uses
  %i.ir = icmp slt i32 %5, %i.iq
  br i1 %i.ir, label %iter.check366, label %.loopexit

iter.check366:                                    ; preds = %.preheader150
  %i.is = sext i32 %5 to i64                      ; 7 uses
  %i.it = sext i32 %i.l to i64                    ; 6 uses
  %wide.trip.count203 = sext i32 %i.iq to i64     ; 4 uses
  %i.iu = sub nsw i64 %wide.trip.count203, %i.is  ; 7 uses
  %min.iters.check351 = icmp ult i64 %i.iu, 8
  br i1 %min.iters.check351, label %.lr.ph171.preheader, label %vector.memcheck347

vector.memcheck347:                               ; preds = %iter.check366
  %16 = ptrtoaddr ptr %7 to i64                   ; 2 uses
  %17 = ptrtoaddr ptr %0 to i64
  %i.iv = add i64 %17, %i.i                       ; 2 uses
  %i.iw = add i64 %16, %i.it
  %i.ix = sub i64 %i.iv, %i.iw
  %diff.check348 = icmp ugt i64 %i.ix, -32
  %i.iy = sub i64 %i.iv, %16
  %diff.check349 = icmp ugt i64 %i.iy, -32
  %conflict.rdx350 = or i1 %diff.check348, %diff.check349
  br i1 %conflict.rdx350, label %.lr.ph171.preheader, label %vector.main.loop.iter.check352

vector.main.loop.iter.check352:                   ; preds = %vector.memcheck347
  %min.iters.check353 = icmp ult i64 %i.iu, 32
  br i1 %min.iters.check353, label %vec.epilog.ph370, label %vector.ph354

vector.ph354:                                     ; preds = %vector.main.loop.iter.check352
  %i.iz = and i64 %i.iu, 24
  %n.vec355 = and i64 %i.iu, -32                  ; 4 uses
  %i.ja = add nsw i64 %n.vec355, %i.is
  br label %vector.body356

vector.body356:                                   ; preds = %vector.ph354, %vector.body356
  %index357 = phi i64 [ 0, %vector.ph354 ], [ %index.next362, %vector.body356 ] ; 2 uses
  %i.jb = add i64 %index357, %i.is                ; 3 uses
  %i.jc = getelementptr inbounds i8, ptr %i.j, i64 %i.jb ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %wide.load358 = load <16 x i8>, ptr %i.jc, align 1, !tbaa !35
  %wide.load359 = load <16 x i8>, ptr %i.jd, align 1, !tbaa !35
  %i.je = sub nsw i64 %i.jb, %i.it
  %i.jf = getelementptr inbounds i8, ptr %i.j, i64 %i.je ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  %wide.load360 = load <16 x i8>, ptr %i.jf, align 1, !tbaa !35
  %wide.load361 = load <16 x i8>, ptr %i.jg, align 1, !tbaa !35
  %i.jh = sub <16 x i8> %wide.load358, %wide.load360
  %i.ji = sub <16 x i8> %wide.load359, %wide.load361
  %i.jj = getelementptr inbounds i8, ptr %7, i64 %i.jb ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  store <16 x i8> %i.jh, ptr %i.jj, align 1, !tbaa !35
  store <16 x i8> %i.ji, ptr %i.jk, align 1, !tbaa !35
  %index.next362 = add nuw i64 %index357, 32      ; 2 uses
  %i.jl = icmp eq i64 %index.next362, %n.vec355
  br i1 %i.jl, label %middle.block363, label %vector.body356, !llvm.loop !590

middle.block363:                                  ; preds = %vector.body356
  %cmp.n364 = icmp eq i64 %i.iu, %n.vec355
  br i1 %cmp.n364, label %.loopexit, label %vec.epilog.iter.check368

vec.epilog.iter.check368:                         ; preds = %middle.block363
  %min.epilog.iters.check369 = icmp eq i64 %i.iz, 0
  br i1 %min.epilog.iters.check369, label %.lr.ph171.preheader, label %vec.epilog.ph370, !prof !110

vec.epilog.ph370:                                 ; preds = %vector.main.loop.iter.check352, %vec.epilog.iter.check368
  %vec.epilog.resume.val365 = phi i64 [ %n.vec355, %vec.epilog.iter.check368 ], [ 0, %vector.main.loop.iter.check352 ]
  %n.vec371 = and i64 %i.iu, -8                   ; 3 uses
  %i.jm = add nsw i64 %n.vec371, %i.is
  br label %vec.epilog.vector.body372

vec.epilog.vector.body372:                        ; preds = %vec.epilog.vector.body372, %vec.epilog.ph370
  %index373 = phi i64 [ %vec.epilog.resume.val365, %vec.epilog.ph370 ], [ %index.next376, %vec.epilog.vector.body372 ] ; 2 uses
  %i.jn = add i64 %index373, %i.is                ; 3 uses
  %i.jo = getelementptr inbounds i8, ptr %i.j, i64 %i.jn
  %wide.load374 = load <8 x i8>, ptr %i.jo, align 1, !tbaa !35
  %i.jp = sub nsw i64 %i.jn, %i.it
  %i.jq = getelementptr inbounds i8, ptr %i.j, i64 %i.jp
  %wide.load375 = load <8 x i8>, ptr %i.jq, align 1, !tbaa !35
  %i.jr = sub <8 x i8> %wide.load374, %wide.load375
  %i.js = getelementptr inbounds i8, ptr %7, i64 %i.jn
  store <8 x i8> %i.jr, ptr %i.js, align 1, !tbaa !35
  %index.next376 = add nuw i64 %index373, 8       ; 2 uses
  %i.jt = icmp eq i64 %index.next376, %n.vec371
  br i1 %i.jt, label %vec.epilog.middle.block377, label %vec.epilog.vector.body372, !llvm.loop !591

vec.epilog.middle.block377:                       ; preds = %vec.epilog.vector.body372
  %cmp.n378 = icmp eq i64 %i.iu, %n.vec371
  br i1 %cmp.n378, label %.loopexit, label %.lr.ph171.preheader

.lr.ph171.preheader:                              ; preds = %iter.check366, %vector.memcheck347, %vec.epilog.iter.check368, %vec.epilog.middle.block377
  %indvars.iv200.ph = phi i64 [ %i.is, %iter.check366 ], [ %i.is, %vector.memcheck347 ], [ %i.ja, %vec.epilog.iter.check368 ], [ %i.jm, %vec.epilog.middle.block377 ] ; 7 uses
  %i.ju = sub nsw i64 %wide.trip.count203, %indvars.iv200.ph
  %xtraiter422 = and i64 %i.ju, 1
  %lcmp.mod423.not = icmp eq i64 %xtraiter422, 0
  br i1 %lcmp.mod423.not, label %.lr.ph171.prol.loopexit, label %.lr.ph171.prol

.lr.ph171.prol:                                   ; preds = %.lr.ph171.preheader
  %i.jv = getelementptr inbounds i8, ptr %i.j, i64 %indvars.iv200.ph
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !35
  %i.jx = sub nsw i64 %indvars.iv200.ph, %i.it
  %i.jy = getelementptr inbounds i8, ptr %i.j, i64 %i.jx
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !35
  %i.ka = sub i8 %i.jw, %i.jz
  %i.kb = getelementptr inbounds i8, ptr %7, i64 %indvars.iv200.ph
  store i8 %i.ka, ptr %i.kb, align 1, !tbaa !35
  %indvars.iv.next201.prol = add nsw i64 %indvars.iv200.ph, 1
  br label %.lr.ph171.prol.loopexit

.lr.ph171.prol.loopexit:                          ; preds = %.lr.ph171.prol, %.lr.ph171.preheader
  %indvars.iv200.unr = phi i64 [ %indvars.iv200.ph, %.lr.ph171.preheader ], [ %indvars.iv.next201.prol, %.lr.ph171.prol ]
  %i.kc = add nsw i64 %wide.trip.count203, -1
  %i.kd = icmp eq i64 %indvars.iv200.ph, %i.kc
  br i1 %i.kd, label %.loopexit, label %.lr.ph171

.preheader:                                       ; preds = %._crit_edge
  %i.ke = mul nsw i32 %5, %2                      ; 2 uses
  %i.kf = icmp slt i32 %5, %i.ke
  br i1 %i.kf, label %iter.check399, label %.loopexit

iter.check399:                                    ; preds = %.preheader
  %i.kg = sext i32 %5 to i64                      ; 11 uses
  %wide.trip.count208 = sext i32 %i.ke to i64     ; 4 uses
  %i.kh = sub nsw i64 %wide.trip.count208, %i.kg  ; 7 uses
  %min.iters.check384 = icmp ult i64 %i.kh, 8
  br i1 %min.iters.check384, label %.lr.ph173.preheader, label %vector.memcheck380

vector.memcheck380:                               ; preds = %iter.check399
  %18 = ptrtoaddr ptr %7 to i64                   ; 2 uses
  %19 = ptrtoaddr ptr %0 to i64
  %i.ki = add i64 %19, %i.i                       ; 2 uses
  %i.kj = add i64 %18, %i.kg
  %i.kk = sub i64 %i.ki, %i.kj
  %diff.check381 = icmp ugt i64 %i.kk, -32
  %i.kl = sub i64 %i.ki, %18
  %diff.check382 = icmp ugt i64 %i.kl, -32
  %conflict.rdx383 = or i1 %diff.check381, %diff.check382
  br i1 %conflict.rdx383, label %.lr.ph173.preheader, label %vector.main.loop.iter.check385

vector.main.loop.iter.check385:                   ; preds = %vector.memcheck380
  %min.iters.check386 = icmp ult i64 %i.kh, 32
  br i1 %min.iters.check386, label %vec.epilog.ph403, label %vector.ph387

vector.ph387:                                     ; preds = %vector.main.loop.iter.check385
  %i.km = and i64 %i.kh, 24
  %n.vec388 = and i64 %i.kh, -32                  ; 4 uses
  %i.kn = add nsw i64 %n.vec388, %i.kg
  br label %vector.body389

vector.body389:                                   ; preds = %vector.ph387, %vector.body389
  %index390 = phi i64 [ 0, %vector.ph387 ], [ %index.next395, %vector.body389 ] ; 3 uses
  %i.ko = add i64 %index390, %i.kg                ; 2 uses
  %i.kp = getelementptr inbounds i8, ptr %i.j, i64 %i.ko ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %wide.load391 = load <16 x i8>, ptr %i.kp, align 1, !tbaa !35
  %wide.load392 = load <16 x i8>, ptr %i.kq, align 1, !tbaa !35
  %i.kr = getelementptr inbounds i8, ptr %i.j, i64 %index390 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %wide.load393 = load <16 x i8>, ptr %i.kr, align 1, !tbaa !35
  %wide.load394 = load <16 x i8>, ptr %i.ks, align 1, !tbaa !35
  %i.kt = sub <16 x i8> %wide.load391, %wide.load393
  %i.ku = sub <16 x i8> %wide.load392, %wide.load394
  %i.kv = getelementptr inbounds i8, ptr %7, i64 %i.ko ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  store <16 x i8> %i.kt, ptr %i.kv, align 1, !tbaa !35
  store <16 x i8> %i.ku, ptr %i.kw, align 1, !tbaa !35
  %index.next395 = add nuw i64 %index390, 32      ; 2 uses
  %i.kx = icmp eq i64 %index.next395, %n.vec388
  br i1 %i.kx, label %middle.block396, label %vector.body389, !llvm.loop !592

middle.block396:                                  ; preds = %vector.body389
  %cmp.n397 = icmp eq i64 %i.kh, %n.vec388
  br i1 %cmp.n397, label %.loopexit, label %vec.epilog.iter.check401

vec.epilog.iter.check401:                         ; preds = %middle.block396
  %min.epilog.iters.check402 = icmp eq i64 %i.km, 0
  br i1 %min.epilog.iters.check402, label %.lr.ph173.preheader, label %vec.epilog.ph403, !prof !110

vec.epilog.ph403:                                 ; preds = %vector.main.loop.iter.check385, %vec.epilog.iter.check401
  %vec.epilog.resume.val398 = phi i64 [ %n.vec388, %vec.epilog.iter.check401 ], [ 0, %vector.main.loop.iter.check385 ]
  %n.vec404 = and i64 %i.kh, -8                   ; 3 uses
  %i.ky = add nsw i64 %n.vec404, %i.kg
  br label %vec.epilog.vector.body405

vec.epilog.vector.body405:                        ; preds = %vec.epilog.vector.body405, %vec.epilog.ph403
  %index406 = phi i64 [ %vec.epilog.resume.val398, %vec.epilog.ph403 ], [ %index.next409, %vec.epilog.vector.body405 ] ; 3 uses
  %i.kz = add i64 %index406, %i.kg                ; 2 uses
  %i.la = getelementptr inbounds i8, ptr %i.j, i64 %i.kz
  %wide.load407 = load <8 x i8>, ptr %i.la, align 1, !tbaa !35
  %i.lb = getelementptr inbounds i8, ptr %i.j, i64 %index406
  %wide.load408 = load <8 x i8>, ptr %i.lb, align 1, !tbaa !35
  %i.lc = sub <8 x i8> %wide.load407, %wide.load408
  %i.ld = getelementptr inbounds i8, ptr %7, i64 %i.kz
  store <8 x i8> %i.lc, ptr %i.ld, align 1, !tbaa !35
  %index.next409 = add nuw i64 %index406, 8       ; 2 uses
  %i.le = icmp eq i64 %index.next409, %n.vec404
  br i1 %i.le, label %vec.epilog.middle.block410, label %vec.epilog.vector.body405, !llvm.loop !593

vec.epilog.middle.block410:                       ; preds = %vec.epilog.vector.body405
  %cmp.n411 = icmp eq i64 %i.kh, %n.vec404
  br i1 %cmp.n411, label %.loopexit, label %.lr.ph173.preheader

.lr.ph173.preheader:                              ; preds = %iter.check399, %vector.memcheck380, %vec.epilog.iter.check401, %vec.epilog.middle.block410
  %indvars.iv205.ph = phi i64 [ %i.kg, %iter.check399 ], [ %i.kg, %vector.memcheck380 ], [ %i.kn, %vec.epilog.iter.check401 ], [ %i.ky, %vec.epilog.middle.block410 ] ; 7 uses
  %i.lf = sub nsw i64 %wide.trip.count208, %indvars.iv205.ph
  %xtraiter424 = and i64 %i.lf, 1
  %lcmp.mod425.not = icmp eq i64 %xtraiter424, 0
  br i1 %lcmp.mod425.not, label %.lr.ph173.prol.loopexit, label %.lr.ph173.prol

.lr.ph173.prol:                                   ; preds = %.lr.ph173.preheader
  %i.lg = getelementptr inbounds i8, ptr %i.j, i64 %indvars.iv205.ph
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !35
  %i.li = sub nsw i64 %indvars.iv205.ph, %i.kg
  %i.lj = getelementptr inbounds i8, ptr %i.j, i64 %i.li
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !35
  %i.ll = sub i8 %i.lh, %i.lk
  %i.lm = getelementptr inbounds i8, ptr %7, i64 %indvars.iv205.ph
  store i8 %i.ll, ptr %i.lm, align 1, !tbaa !35
  %indvars.iv.next206.prol = add nsw i64 %indvars.iv205.ph, 1
  br label %.lr.ph173.prol.loopexit

.lr.ph173.prol.loopexit:                          ; preds = %.lr.ph173.prol, %.lr.ph173.preheader
  %indvars.iv205.unr = phi i64 [ %indvars.iv205.ph, %.lr.ph173.preheader ], [ %indvars.iv.next206.prol, %.lr.ph173.prol ]
  %i.ln = add nsw i64 %wide.trip.count208, -1
  %i.lo = icmp eq i64 %indvars.iv205.ph, %i.ln
  br i1 %i.lo, label %.loopexit, label %.lr.ph173

.lr.ph173:                                        ; preds = %.lr.ph173.prol.loopexit, %.lr.ph173
  %indvars.iv205 = phi i64 [ %indvars.iv.next206.1, %.lr.ph173 ], [ %indvars.iv205.unr, %.lr.ph173.prol.loopexit ] ; 5 uses
  %i.lp = getelementptr inbounds i8, ptr %i.j, i64 %indvars.iv205
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !35
  %i.lr = sub nsw i64 %indvars.iv205, %i.kg
  %i.ls = getelementptr inbounds i8, ptr %i.j, i64 %i.lr
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !35
  %i.lu = sub i8 %i.lq, %i.lt
  %i.lv = getelementptr inbounds i8, ptr %7, i64 %indvars.iv205
  store i8 %i.lu, ptr %i.lv, align 1, !tbaa !35
  %indvars.iv.next206 = add nsw i64 %indvars.iv205, 1 ; 3 uses
  %i.lw = getelementptr inbounds i8, ptr %i.j, i64 %indvars.iv.next206
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !35
  %i.ly = sub nsw i64 %indvars.iv.next206, %i.kg
  %i.lz = getelementptr inbounds i8, ptr %i.j, i64 %i.ly
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !35
  %i.mb = sub i8 %i.lx, %i.ma
  %i.mc = getelementptr inbounds i8, ptr %7, i64 %indvars.iv.next206
  store i8 %i.mb, ptr %i.mc, align 1, !tbaa !35
  %indvars.iv.next206.1 = add nsw i64 %indvars.iv205, 2 ; 2 uses
  %exitcond209.not.1 = icmp eq i64 %indvars.iv.next206.1, %wide.trip.count208
  br i1 %exitcond209.not.1, label %.loopexit, label %.lr.ph173, !llvm.loop !594

.lr.ph171:                                        ; preds = %.lr.ph171.prol.loopexit, %.lr.ph171
  %indvars.iv200 = phi i64 [ %indvars.iv.next201.1, %.lr.ph171 ], [ %indvars.iv200.unr, %.lr.ph171.prol.loopexit ] ; 5 uses
  %i.md = getelementptr inbounds i8, ptr %i.j, i64 %indvars.iv200
  %i.me = load i8, ptr %i.md, align 1, !tbaa !35
  %i.mf = sub nsw i64 %indvars.iv200, %i.it
  %i.mg = getelementptr inbounds i8, ptr %i.j, i64 %i.mf
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !35
  %i.mi = sub i8 %i.me, %i.mh
  %i.mj = getelementptr inbounds i8, ptr %7, i64 %indvars.iv200
  store i8 %i.mi, ptr %i.mj, align 1, !tbaa !35
  %indvars.iv.next201 = add nsw i64 %indvars.iv200, 1 ; 3 uses
  %i.mk = getelementptr inbounds i8, ptr %i.j, i64 %indvars.iv.next201
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !35
  %i.mm = sub nsw i64 %indvars.iv.next201, %i.it
  %i.mn = getelementptr inbounds i8, ptr %i.j, i64 %i.mm
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !35
  %i.mp = sub i8 %i.ml, %i.mo
  %i.mq = getelementptr inbounds i8, ptr %7, i64 %indvars.iv.next201
  store i8 %i.mp, ptr %i.mq, align 1, !tbaa !35
  %indvars.iv.next201.1 = add nsw i64 %indvars.iv200, 2 ; 2 uses
  %exitcond204.not.1 = icmp eq i64 %indvars.iv.next201.1, %wide.trip.count203
  br i1 %exitcond204.not.1, label %.loopexit, label %.lr.ph171, !llvm.loop !595

.lr.ph169:                                        ; preds = %.lr.ph169.prol.loopexit, %.lr.ph169
  %indvars.iv195 = phi i64 [ %indvars.iv.next196.1, %.lr.ph169 ], [ %indvars.iv195.unr, %.lr.ph169.prol.loopexit ] ; 6 uses
  %i.mr = getelementptr inbounds i8, ptr %i.j, i64 %indvars.iv195
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !35
  %i.mt = sub nsw i64 %indvars.iv195, %i.gm
  %i.mu = getelementptr inbounds i8, ptr %i.j, i64 %i.mt
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !35
  %i.mw = zext i8 %i.mv to i16
  %i.mx = sub nsw i64 %indvars.iv195, %i.gn
  %i.my = getelementptr inbounds i8, ptr %i.j, i64 %i.mx
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !35
  %i.na = zext i8 %i.mz to i16
  %i.nb = add nuw nsw i16 %i.na, %i.mw
  %i.nc = lshr i16 %i.nb, 1
  %i.nd = trunc nuw i16 %i.nc to i8
  %i.ne = sub i8 %i.ms, %i.nd
  %i.nf = getelementptr inbounds i8, ptr %7, i64 %indvars.iv195
  store i8 %i.ne, ptr %i.nf, align 1, !tbaa !35
  %indvars.iv.next196 = add nsw i64 %indvars.iv195, 1 ; 4 uses
  %i.ng = getelementptr inbounds i8, ptr %i.j, i64 %indvars.iv.next196
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !35
  %i.ni = sub nsw i64 %indvars.iv.next196, %i.gm
  %i.nj = getelementptr inbounds i8, ptr %i.j, i64 %i.ni
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !35
  %i.nl = zext i8 %i.nk to i16
  %i.nm = sub nsw i64 %indvars.iv.next196, %i.gn
  %i.nn = getelementptr inbounds i8, ptr %i.j, i64 %i.nm
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !35
  %i.np = zext i8 %i.no to i16
  %i.nq = add nuw nsw i16 %i.np, %i.nl
  %i.nr = lshr i16 %i.nq, 1
  %i.ns = trunc nuw i16 %i.nr to i8
  %i.nt = sub i8 %i.nh, %i.ns
  %i.nu = getelementptr inbounds i8, ptr %7, i64 %indvars.iv.next196
  store i8 %i.nt, ptr %i.nu, align 1, !tbaa !35
  %indvars.iv.next196.1 = add nsw i64 %indvars.iv195, 2 ; 2 uses
  %exitcond199.not.1 = icmp eq i64 %indvars.iv.next196.1, %wide.trip.count198
  br i1 %exitcond199.not.1, label %.loopexit, label %.lr.ph169, !llvm.loop !596

.lr.ph167:                                        ; preds = %.lr.ph167.preheader, %.lr.ph167
  %indvars.iv190 = phi i64 [ %indvars.iv.next191, %.lr.ph167 ], [ %indvars.iv190.ph, %.lr.ph167.preheader ] ; 5 uses
  %i.nv = getelementptr inbounds i8, ptr %i.j, i64 %indvars.iv190
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !35
  %i.nx = sub nsw i64 %indvars.iv190, %i.dt
  %i.ny = getelementptr inbounds i8, ptr %i.j, i64 %i.nx
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !35  ; 2 uses
  %i.oa = zext i8 %i.nz to i32                    ; 2 uses
  %i.ob = sub nsw i64 %indvars.iv190, %i.du       ; 2 uses
  %i.oc = getelementptr inbounds i8, ptr %i.j, i64 %i.ob
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !35  ; 2 uses
  %i.oe = zext i8 %i.od to i32                    ; 2 uses
  %i.of = sub nsw i64 %i.ob, %i.dt
  %i.og = getelementptr inbounds i8, ptr %i.j, i64 %i.of
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !35  ; 2 uses
  %i.oi = zext i8 %i.oh to i32                    ; 2 uses
  %i.oj = add nuw nsw i32 %i.oe, %i.oa
  %i.ok = sub nsw i32 %i.oj, %i.oi                ; 3 uses
  %i.ol = sub nsw i32 %i.ok, %i.oa
  %i.om = tail call i32 @llvm.abs.i32(i32 %i.ol, i1 true) ; 2 uses
  %i.on = sub nsw i32 %i.ok, %i.oe
  %i.oo = tail call i32 @llvm.abs.i32(i32 %i.on, i1 true) ; 2 uses
  %i.op = sub nsw i32 %i.ok, %i.oi
end_hunk_1
