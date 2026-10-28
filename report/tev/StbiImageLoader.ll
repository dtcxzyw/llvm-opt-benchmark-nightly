Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/StbiImageLoader?download=true
inline.NumInlined: 6547
inline.NumDeleted: 2302
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 100
loop-unroll.NumUnrolled: 146
begin_hunk_0_@_ZL19stbi__build_huffmanP13stbi__huffmanPi:bb.a

.lr.ph116:                                        ; preds = %.lr.ph, %bb.b
  %.05771115 = phi i32 [ %i.k, %bb.b ], [ 0, %.lr.ph ]
  %indvars.iv114 = phi i64 [ %indvars.iv.next, %bb.b ], [ %i.g, %.lr.ph ]
  %indvars.iv.next = add nsw i64 %indvars.iv114, 1 ; 3 uses
  %i.k = add nuw nsw i32 %.05771115, 1            ; 3 uses
  %i.l = load i32, ptr %i.b, align 4, !tbaa !72
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !1016

._crit_edge.loopexit:                             ; preds = %.lr.ph116
  %i.n = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader66
  %.155.lcssa = phi i32 [ %.05474, %.preheader66 ], [ %i.n, %._crit_edge.loopexit ] ; 2 uses
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %exitcond95.not = icmp eq i64 %indvars.iv.next93, 16
  br i1 %exitcond95.not, label %bb.c, label %.preheader66, !llvm.loop !1017

bb.c:                                             ; preds = %._crit_edge
  %i.o = sext i32 %.155.lcssa to i64
  %i.p = getelementptr inbounds i8, ptr %i.a, i64 %i.o
  store i8 0, ptr %i.p, align 1, !tbaa !84
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
  store i32 %i.t, ptr %i.u, align 4, !tbaa !72
  %i.v = sext i32 %.25682 to i64                  ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.a, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !84
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
  store i16 %i.ab, ptr %i.ac, align 2, !tbaa !90
  %i.ad = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next97
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !84
  %i.af = zext i8 %i.ae to i64
  %i.ag = icmp eq i64 %indvars.iv99, %i.af
  br i1 %i.ag, label %.lr.ph77, label %._crit_edge78, !llvm.loop !1018

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
  store i32 %i.al, ptr %i.am, align 4, !tbaa !72
  %i.an = shl i32 %.2, 1
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next100, 17
  br i1 %exitcond102.not, label %bb.f, label %bb.d, !llvm.loop !1019

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1608
  store i32 -1, ptr %i.ao, align 4, !tbaa !72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(512) %0, i8 -1, i64 512, i1 false)
  %i.ap = icmp sgt i32 %.4, 0
  br i1 %i.ap, label %.lr.ph87, label %.loopexit65

.lr.ph87:                                         ; preds = %bb.f
  %wide.trip.count = zext nneg i32 %.4 to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph87, %.loopexit
  %indvars.iv106 = phi i64 [ 0, %.lr.ph87 ], [ %indvars.iv.next107, %.loopexit ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv106
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !84  ; 2 uses
  %i.as = icmp ult i8 %i.ar, 10
  br i1 %i.as, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv106
  %i.au = load i16, ptr %i.at, align 2, !tbaa !90
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
  store i8 %i.ay, ptr %gep, align 1, !tbaa !84
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %i.ba = trunc nuw nsw i64 %indvars.iv.next104 to i32
  %.259.highbits = lshr i32 %i.ba, %i.aw
  %i.bb = icmp eq i32 %.259.highbits, 0
  br i1 %i.bb, label %bb.i, label %.loopexit, !llvm.loop !1020

.loopexit:                                        ; preds = %bb.i, %bb.g
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %exitcond110.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count
  br i1 %exitcond110.not, label %.loopexit65, label %bb.g, !llvm.loop !1021

.loopexit65.sink.split:                           ; preds = %.lr.ph, %bb.b, %._crit_edge78
  %.str.75.sink = phi ptr [ @.str.75, %._crit_edge78 ], [ @.str.74, %bb.b ], [ @.str.74, %.lr.ph ]
  %i.bc = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr %.str.75.sink, ptr %i.bc, align 8, !tbaa !71
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
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !318  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.e) #53
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !319  ; 2 uses
  %.not28 = icmp eq ptr %i.h, null
  br i1 %.not28, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.h) #53
  store ptr null, ptr %i.g, align 8, !tbaa !319
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store ptr null, ptr %i.i, align 8, !tbaa !316
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !320  ; 2 uses
  %.not29 = icmp eq ptr %i.k, null
  br i1 %.not29, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.k) #53
  store ptr null, ptr %i.j, align 8, !tbaa !320
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !15

._crit_edge:                                      ; preds = %bb.h, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef ptr @_ZL14resample_row_1PhS_S_ii(ptr nofree readnone captures(none) %0, ptr nofree noundef readnone returned captures(ret: address, provenance) %1, ptr nofree readnone captures(none) %2, i32 %3, i32 %4) #28 {
bb.a:
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef ptr @_ZL22stbi__resample_row_v_2PhS_S_ii(ptr nofree noundef returned writeonly captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 %4) #25 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %2 to i64
  %i.d = icmp sgt i32 %3, 0
  br i1 %i.d, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64      ; 8 uses
  %min.iters.check = icmp ult i32 %3, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.e = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.e, -16
  %i.f = sub i64 %i.c, %i.a
  %diff.check12 = icmp ugt i64 %i.f, -16
  %conflict.rdx = or i1 %diff.check, %diff.check12
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check13 = icmp ult i32 %3, 16
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load = load <16 x i8>, ptr %i.h, align 1, !tbaa !84
  %i.i = zext <16 x i8> %wide.load to <16 x i16>
  %i.j = mul nuw nsw <16 x i16> %i.i, splat (i16 3)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %index
  %wide.load14 = load <16 x i8>, ptr %i.k, align 1, !tbaa !84
  %i.l = zext <16 x i8> %wide.load14 to <16 x i16>
  %i.m = add nuw nsw <16 x i16> %i.l, splat (i16 2)
  %i.n = add nuw nsw <16 x i16> %i.m, %i.j
  %i.o = lshr <16 x i16> %i.n, splat (i16 2)
  %i.p = trunc nuw <16 x i16> %i.o to <16 x i8>
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %index
  store <16 x i8> %i.p, ptr %i.q, align 1, !tbaa !84
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !1022

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !94

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next19, %vec.epilog.vector.body ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %index16
  %wide.load17 = load <4 x i8>, ptr %i.s, align 1, !tbaa !84
  %i.t = zext <4 x i8> %wide.load17 to <4 x i16>
  %i.u = mul nuw nsw <4 x i16> %i.t, splat (i16 3)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %index16
  %wide.load18 = load <4 x i8>, ptr %i.v, align 1, !tbaa !84
  %i.w = zext <4 x i8> %wide.load18 to <4 x i16>
  %i.x = add nuw nsw <4 x i16> %i.w, splat (i16 2)
  %i.y = add nuw nsw <4 x i16> %i.x, %i.u
  %i.z = lshr <4 x i16> %i.y, splat (i16 2)
  %i.aa = trunc nuw <4 x i16> %i.z to <4 x i8>
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %index16
  store <4 x i8> %i.aa, ptr %i.ab, align 1, !tbaa !84
  %index.next19 = add nuw i64 %index16, 4         ; 2 uses
  %i.ac = icmp eq i64 %index.next19, %n.vec15
  br i1 %i.ac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1023

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n20 = icmp eq i64 %n.vec15, %wide.trip.count
  br i1 %cmp.n20, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec15, %vec.epilog.middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.ph
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !84
  %i.af = zext i8 %i.ae to i16
  %i.ag = mul nuw nsw i16 %i.af, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.ph
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !84
  %i.aj = zext i8 %i.ai to i16
  %i.ak = add nuw nsw i16 %i.aj, 2
  %i.al = add nuw nsw i16 %i.ak, %i.ag
  %i.am = lshr i16 %i.al, 2
  %i.an = trunc nuw i16 %i.am to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.ph
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !84
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
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !84
  %i.at = zext i8 %i.as to i16
  %i.au = mul nuw nsw i16 %i.at, 3
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !84
  %i.ax = zext i8 %i.aw to i16
  %i.ay = add nuw nsw i16 %i.ax, 2
  %i.az = add nuw nsw i16 %i.ay, %i.au
  %i.ba = lshr i16 %i.az, 2
  %i.bb = trunc nuw i16 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !84
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !84
  %i.bf = zext i8 %i.be to i16
  %i.bg = mul nuw nsw i16 %i.bf, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !84
  %i.bj = zext i8 %i.bi to i16
  %i.bk = add nuw nsw i16 %i.bj, 2
  %i.bl = add nuw nsw i16 %i.bk, %i.bg
  %i.bm = lshr i16 %i.bl, 2
  %i.bn = trunc nuw i16 %i.bm to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !84
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !1024

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef ptr @_ZL22stbi__resample_row_h_2PhS_S_ii(ptr nofree noundef returned writeonly captures(ret: address, provenance) initializes((0, 2)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, i32 noundef %3, i32 %4) #25 {
bb.a:
  %i.a = icmp eq i32 %3, 1
  %i.b = load i8, ptr %1, align 1, !tbaa !84      ; 4 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.b, ptr %i.c, align 1, !tbaa !84
  store i8 %i.b, ptr %0, align 1, !tbaa !84
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i8 %i.b, ptr %0, align 1, !tbaa !84
  %i.d = zext i8 %i.b to i16
  %i.e = mul nuw nsw i16 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !84
  %i.h = zext i8 %i.g to i16
  %i.i = add nuw nsw i16 %i.h, 2
  %i.j = add nuw nsw i16 %i.i, %i.e
  %i.k = lshr i16 %i.j, 2
  %i.l = trunc nuw i16 %i.k to i8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.l, ptr %i.m, align 1, !tbaa !84
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
  %wide.load = load <8 x i8>, ptr %i.x, align 1, !tbaa !84, !alias.scope !1030
  %i.y = zext <8 x i8> %wide.load to <8 x i32>
  %i.z = mul nuw nsw <8 x i32> %i.y, splat (i32 3)
  %i.aa = add nuw nsw <8 x i32> %i.z, splat (i32 2) ; 2 uses
  %i.ab = getelementptr i8, ptr %i.x, i64 -1
  %wide.load44 = load <8 x i8>, ptr %i.ab, align 1, !tbaa !84, !alias.scope !1030
  %i.ac = zext <8 x i8> %wide.load44 to <8 x i32>
  %i.ad = add nuw nsw <8 x i32> %i.aa, %i.ac
  %i.ae = shl nuw nsw i64 %i.w, 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a
  br label %.invoke1473

_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i: ; preds = %bb.i
  %i.bm = shl nuw nsw i64 %i.ai, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bk, ptr noundef nonnull align 4 dereferenceable(1) %i.ag, i64 %i.bm, i1 false)
  store ptr %i.bk, ptr %5, align 8, !tbaa !419
  store i64 %i.bi, ptr %i.a, align 8, !tbaa !420
  %.not.i1187 = icmp eq ptr %i.ag, %i.d
  br i1 %.not.i1187, label %_ZN3fmt3v126detail6bigintlSEi.exit, label %bb.k

bb.k:                                             ; preds = %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i
  call void @free(ptr noundef nonnull %i.ag) #53
  %.pre.i.i.pre = load i64, ptr %i.c, align 8, !tbaa !424 ; 2 uses
  %.pre689.pre = load ptr, ptr %5, align 8, !tbaa !419
  %.pre1298 = add i64 %.pre.i.i.pre, 1
  br label %_ZN3fmt3v126detail6bigintlSEi.exit

_ZN3fmt3v126detail6bigintlSEi.exit:               ; preds = %bb.k, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i
  %.pre2.i.i.pre-phi = phi i64 [ %.pre1298, %bb.k ], [ %i.bf, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i ]
  %.pre689 = phi ptr [ %.pre689.pre, %bb.k ], [ %i.bk, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i ]
  %.pre.i.i = phi i64 [ %.pre.i.i.pre, %bb.k ], [ %i.ai, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i ]
  store i64 %.pre2.i.i.pre-phi, ptr %i.c, align 8, !tbaa !424
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.pre689, i64 %.pre.i.i
  store i32 %.lcssa1513, ptr %i.bn, align 4, !tbaa !72
  br label %_ZN3fmt3v126detail6bigintlSEi.exit.thread

_ZN3fmt3v126detail6bigintlSEi.exit.thread:        ; preds = %bb.g, %._crit_edge.i, %_ZN3fmt3v126detail6bigintlSEi.exit, %_ZN3fmt3v126detail6bigintlSEi.exit.thread1138
  store i32 1, ptr %i.n, align 8, !tbaa !72
  store i64 1, ptr %i.m, align 8, !tbaa !424
  %i.bo = lshr i32 %i.x, 5
  store i32 %i.bo, ptr %i.o, align 8, !tbaa !423
  %i.bp = and i32 %i.x, 31                        ; 2 uses
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %_ZN3fmt3v126detail6bigintlSEi.exit135, label %.lr.ph.i124

.lr.ph.i124:                                      ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit.thread
  %i.br = shl nuw i32 1, %i.bp
  store i32 %i.br, ptr %i.n, align 8, !tbaa !72
  br label %_ZN3fmt3v126detail6bigintlSEi.exit135

_ZN3fmt3v126detail6bigintlSEi.exit135:            ; preds = %.lr.ph.i124, %_ZN3fmt3v126detail6bigintlSEi.exit.thread
  br i1 %.not, label %_ZN3fmt3v126detail6bigintlSEi.exit155, label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit135
  store i32 1, ptr %i.s, align 8, !tbaa !72
  store i64 1, ptr %i.r, align 8, !tbaa !424
  %i.bs = add nuw nsw i32 %i.x, 1                 ; 2 uses
  %i.bt = lshr i32 %i.bs, 5
  store i32 %i.bt, ptr %i.t, align 8, !tbaa !423
  %i.bu = and i32 %i.bs, 31                       ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %_ZN3fmt3v126detail6bigintlSEi.exit155, label %.lr.ph.i144

.lr.ph.i144:                                      ; preds = %bb.l
  %i.bw = shl nuw i32 1, %i.bu
  store i32 %i.bw, ptr %i.s, align 8, !tbaa !72
  br label %_ZN3fmt3v126detail6bigintlSEi.exit155

_ZN3fmt3v126detail6bigintlSEi.exit155:            ; preds = %.lr.ph.i144, %bb.l, %_ZN3fmt3v126detail6bigintlSEi.exit135
  %.079 = phi ptr [ null, %_ZN3fmt3v126detail6bigintlSEi.exit135 ], [ %8, %bb.l ], [ %8, %.lr.ph.i144 ] ; 3 uses
  %i.bx = load i32, ptr %4, align 4, !tbaa !72
  invoke void @_ZN3fmt3v126detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(164) %6, i32 noundef %i.bx)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit155
  %i.by = load i64, ptr %i.h, align 8, !tbaa !424 ; 7 uses
  %.not19.i156 = icmp eq i64 %i.by, 0
  %extract.t825 = trunc i128 %i.z to i32          ; 3 uses
  br i1 %.not19.i156, label %_ZN3fmt3v126detail6bigintlSEi.exit168, label %.lr.ph.i157

.lr.ph.i157:                                      ; preds = %bb.m
  %i.bz = load ptr, ptr %6, align 8, !tbaa !419   ; 3 uses
  %i.ca = xor i32 %i.u, 31                        ; 2 uses
  %min.iters.check1638 = icmp ult i64 %i.by, 8
  br i1 %min.iters.check1638, label %scalar.ph1637.preheader, label %vector.ph1639

vector.ph1639:                                    ; preds = %.lr.ph.i157
  %n.vec1640 = and i64 %i.by, -8                  ; 3 uses
  %broadcast.splatinsert1641 = insertelement <4 x i32> poison, i32 %i.ca, i64 0
  %broadcast.splat1642 = shufflevector <4 x i32> %broadcast.splatinsert1641, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1643 = insertelement <4 x i32> poison, i32 %i.v, i64 0
  %broadcast.splat1644 = shufflevector <4 x i32> %broadcast.splatinsert1643, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1645

vector.body1645:                                  ; preds = %vector.body1645, %vector.ph1639
  %index1646 = phi i64 [ 0, %vector.ph1639 ], [ %index.next1650, %vector.body1645 ] ; 2 uses
  %vector.recur1647 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph1639 ], [ %i.ce, %vector.body1645 ]
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %index1646 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 2 uses
  %wide.load1648 = load <4 x i32>, ptr %i.cb, align 4, !tbaa !72 ; 2 uses
  %wide.load1649 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !72 ; 2 uses
  %i.cd = lshr <4 x i32> %wide.load1648, %broadcast.splat1642 ; 2 uses
  %i.ce = lshr <4 x i32> %wide.load1649, %broadcast.splat1642 ; 3 uses
  %i.cf = shufflevector <4 x i32> %vector.recur1647, <4 x i32> %i.cd, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.cg = shufflevector <4 x i32> %i.cd, <4 x i32> %i.ce, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ch = shl <4 x i32> %wide.load1648, %broadcast.splat1644
  %i.ci = shl <4 x i32> %wide.load1649, %broadcast.splat1644
  %i.cj = add <4 x i32> %i.ch, %i.cf
  %i.ck = add <4 x i32> %i.ci, %i.cg
  store <4 x i32> %i.cj, ptr %i.cb, align 4, !tbaa !72
  store <4 x i32> %i.ck, ptr %i.cc, align 4, !tbaa !72
  %index.next1650 = add nuw i64 %index1646, 8     ; 2 uses
  %i.cl = icmp eq i64 %index.next1650, %n.vec1640
  br i1 %i.cl, label %middle.block1651, label %vector.body1645, !llvm.loop !1227

middle.block1651:                                 ; preds = %vector.body1645
  %vector.recur.extract1652 = extractelement <4 x i32> %i.ce, i64 3 ; 2 uses
  %cmp.n1653 = icmp eq i64 %i.by, %n.vec1640
  br i1 %cmp.n1653, label %._crit_edge.i161, label %scalar.ph1637.preheader

scalar.ph1637.preheader:                          ; preds = %.lr.ph.i157, %middle.block1651
  %.01418.i158.ph = phi i64 [ 0, %.lr.ph.i157 ], [ %n.vec1640, %middle.block1651 ]
  %.017.i159.ph = phi i32 [ 0, %.lr.ph.i157 ], [ %vector.recur.extract1652, %middle.block1651 ]
  br label %scalar.ph1637

._crit_edge.i161:                                 ; preds = %scalar.ph1637, %middle.block1651
  %.lcssa1512 = phi i32 [ %vector.recur.extract1652, %middle.block1651 ], [ %i.co, %scalar.ph1637 ] ; 2 uses
  %.not.i162 = icmp eq i32 %.lcssa1512, 0
  br i1 %.not.i162, label %_ZN3fmt3v126detail6bigintlSEi.exit168, label %bb.n

scalar.ph1637:                                    ; preds = %scalar.ph1637.preheader, %scalar.ph1637
  %.01418.i158 = phi i64 [ %i.cr, %scalar.ph1637 ], [ %.01418.i158.ph, %scalar.ph1637.preheader ] ; 2 uses
  %.017.i159 = phi i32 [ %i.co, %scalar.ph1637 ], [ %.017.i159.ph, %scalar.ph1637.preheader ]
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %.01418.i158 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !72 ; 2 uses
  %i.co = lshr i32 %i.cn, %i.ca                   ; 2 uses
  %i.cp = shl i32 %i.cn, %i.v
  %i.cq = add i32 %i.cp, %.017.i159
  store i32 %i.cq, ptr %i.cm, align 4, !tbaa !72
  %i.cr = add nuw i64 %.01418.i158, 1             ; 2 uses
  %exitcond.not.i160 = icmp eq i64 %i.cr, %i.by
  br i1 %exitcond.not.i160, label %._crit_edge.i161, label %scalar.ph1637, !llvm.loop !1228

bb.n:                                             ; preds = %._crit_edge.i161
  %i.cs = add i64 %i.by, 1                        ; 3 uses
  %i.ct = load i64, ptr %i.f, align 8, !tbaa !420
  %i.cu = icmp ugt i64 %i.cs, %i.ct
  br i1 %i.cu, label %bb.o, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163

bb.o:                                             ; preds = %bb.n
  %i.cv = load ptr, ptr %i.g, align 8, !tbaa !418
  invoke void %i.cv(ptr noundef nonnull align 8 dereferenceable(164) %6, i64 noundef %i.cs)
          to label %.noexc167 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1229

.noexc167:                                        ; preds = %bb.o
  %.pre.i.i165 = load i64, ptr %i.h, align 8, !tbaa !424 ; 2 uses
  %.pre2.i.i166 = add i64 %.pre.i.i165, 1
  %.pre692 = load ptr, ptr %6, align 8, !tbaa !419
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163: ; preds = %.noexc167, %bb.n
  %i.cw = phi ptr [ %i.bz, %bb.n ], [ %.pre692, %.noexc167 ]
  %.pre-phi.i.i164 = phi i64 [ %i.cs, %bb.n ], [ %.pre2.i.i166, %.noexc167 ]
  %i.cx = phi i64 [ %i.by, %bb.n ], [ %.pre.i.i165, %.noexc167 ]
  store i64 %.pre-phi.i.i164, ptr %i.h, align 8, !tbaa !424
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cx
  store i32 %.lcssa1512, ptr %i.cy, align 4, !tbaa !72
  br label %_ZN3fmt3v126detail6bigintlSEi.exit168

bb.p:                                             ; preds = %bb.a
  %i.cz = load i32, ptr %4, align 4, !tbaa !72    ; 2 uses
  %i.da = icmp slt i32 %i.cz, 0
  br i1 %i.da, label %bb.q, label %bb.ad

bb.q:                                             ; preds = %bb.p
  %i.db = sub nsw i32 0, %i.cz
  invoke void @_ZN3fmt3v126detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(164) %5, i32 noundef %i.db)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.dc = load i64, ptr %i.c, align 8, !tbaa !424 ; 7 uses
  %i.dd = load i64, ptr %i.k, align 8, !tbaa !420
  %i.de = icmp ugt i64 %i.dc, %i.dd
  br i1 %i.de, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i: ; preds = %bb.r
  %i.df = load ptr, ptr %i.l, align 8, !tbaa !418
  invoke void %i.df(ptr noundef nonnull align 8 dereferenceable(164) %7, i64 noundef %i.dc)
          to label %.noexc170 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1230

.noexc170:                                        ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i
  %.pre.i.i.i = load i64, ptr %i.k, align 8, !tbaa !420
  %i.dg = call noundef i64 @llvm.umin.i64(i64 %i.dc, i64 %.pre.i.i.i)
  store i64 %i.dg, ptr %i.m, align 8, !tbaa !424
  %i.dh = load ptr, ptr %5, align 8, !tbaa !419   ; 2 uses
  %.idx8.i = shl nuw nsw i64 %i.dc, 2
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.idx8.i
  br label %.lr.ph.i.preheader.i

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i: ; preds = %bb.r
  store i64 %i.dc, ptr %i.m, align 8, !tbaa !424
  %i.dj = load ptr, ptr %5, align 8, !tbaa !419   ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.dc, 2
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.idx.i
  %.not6.i.i = icmp eq i64 %i.dc, 0
  br i1 %.not6.i.i, label %.loopexit572, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i, %.noexc170
  %i.dl = phi ptr [ %i.di, %.noexc170 ], [ %i.dk, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ] ; 2 uses
  %i.dm = phi ptr [ %i.dh, %.noexc170 ], [ %i.dj, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ] ; 6 uses
  %i.dn = ptrtoaddr ptr %i.dl to i64
  %i.do = ptrtoaddr ptr %i.dm to i64              ; 2 uses
  %i.dp = load ptr, ptr %7, align 8, !tbaa !419   ; 4 uses
  %i.dq = add i64 %i.dn, -4
  %i.dr = sub i64 %i.dq, %i.do                    ; 2 uses
  %i.ds = lshr i64 %i.dr, 2
  %i.dt = add nuw nsw i64 %i.ds, 1                ; 2 uses
  %min.iters.check1552 = icmp ult i64 %i.dr, 44
  %i.du = ptrtoaddr ptr %i.dp to i64
  %i.dv = sub i64 %i.do, %i.du
  %diff.check = icmp ugt i64 %i.dv, -32
  %or.cond1657 = select i1 %min.iters.check1552, i1 true, i1 %diff.check
  br i1 %or.cond1657, label %.lr.ph.i.i.preheader, label %vector.ph1553

vector.ph1553:                                    ; preds = %.lr.ph.i.preheader.i
  %n.vec1554 = and i64 %i.dt, 9223372036854775800 ; 3 uses
  %i.dw = shl i64 %n.vec1554, 2                   ; 2 uses
  %i.dx = getelementptr i8, ptr %i.dp, i64 %i.dw
  %i.dy = getelementptr i8, ptr %i.dm, i64 %i.dw
  br label %vector.body1555

vector.body1555:                                  ; preds = %vector.body1555, %vector.ph1553
  %index1556 = phi i64 [ 0, %vector.ph1553 ], [ %index.next1560, %vector.body1555 ] ; 2 uses
  %i.dz = shl i64 %index1556, 2                   ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dp, i64 %i.dz ; 2 uses
  %next.gep1557 = getelementptr i8, ptr %i.dm, i64 %i.dz ; 2 uses
  %i.ea = getelementptr i8, ptr %next.gep1557, i64 16
  %wide.load1558 = load <4 x i32>, ptr %next.gep1557, align 4, !tbaa !72
  %wide.load1559 = load <4 x i32>, ptr %i.ea, align 4, !tbaa !72
  %i.eb = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load1558, ptr %next.gep, align 4, !tbaa !72
  store <4 x i32> %wide.load1559, ptr %i.eb, align 4, !tbaa !72
  %index.next1560 = add nuw i64 %index1556, 8     ; 2 uses
  %i.ec = icmp eq i64 %index.next1560, %n.vec1554
  br i1 %i.ec, label %middle.block1561, label %vector.body1555, !llvm.loop !1231

middle.block1561:                                 ; preds = %vector.body1555
  %cmp.n1562 = icmp eq i64 %i.dt, %n.vec1554
  br i1 %cmp.n1562, label %.loopexit572, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block1561
  %.08.i.i.ph = phi ptr [ %i.dp, %.lr.ph.i.preheader.i ], [ %i.dx, %middle.block1561 ]
  %.057.i.i.ph = phi ptr [ %i.dm, %.lr.ph.i.preheader.i ], [ %i.dy, %middle.block1561 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.ef, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.057.i.i = phi ptr [ %i.ed, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 4 ; 2 uses
  %i.ee = load i32, ptr %.057.i.i, align 4, !tbaa !72
  %i.ef = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4
  store i32 %i.ee, ptr %.08.i.i, align 4, !tbaa !72
  %.not.i.i169 = icmp eq ptr %i.ed, %i.dl
  br i1 %.not.i.i169, label %.loopexit572, label %.lr.ph.i.i, !llvm.loop !1232

.loopexit572:                                     ; preds = %.lr.ph.i.i, %middle.block1561, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i
  %i.eg = phi ptr [ %i.dj, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ], [ %i.dm, %middle.block1561 ], [ %i.dm, %.lr.ph.i.i ] ; 2 uses
  %i.eh = load i32, ptr %i.e, align 8, !tbaa !423 ; 2 uses
  store i32 %i.eh, ptr %i.o, align 8, !tbaa !423
  br i1 %.not, label %_ZN3fmt3v126detail6bigintlSEi.exit196, label %bb.s

bb.s:                                             ; preds = %.loopexit572
  %i.ei = load i64, ptr %i.c, align 8, !tbaa !424 ; 8 uses
  %i.ej = load i64, ptr %i.p, align 8, !tbaa !420 ; 2 uses
  %i.ek = icmp ugt i64 %i.ei, %i.ej
  br i1 %i.ek, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179: ; preds = %bb.s
  %i.el = load ptr, ptr %i.q, align 8, !tbaa !418
  invoke void %i.el(ptr noundef nonnull align 8 dereferenceable(164) %8, i64 noundef %i.ei)
          to label %.noexc182 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1230

.noexc182:                                        ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179
  %.pre.i.i.i180 = load i64, ptr %i.p, align 8, !tbaa !420 ; 2 uses
  %i.em = call noundef i64 @llvm.umin.i64(i64 %i.ei, i64 %.pre.i.i.i180) ; 2 uses
  store i64 %i.em, ptr %i.r, align 8, !tbaa !424
  %i.en = load ptr, ptr %5, align 8, !tbaa !419   ; 2 uses
  %.idx8.i181 = shl nuw nsw i64 %i.ei, 2
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %.idx8.i181
  br label %.lr.ph.i.preheader.i174

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171: ; preds = %bb.s
  store i64 %i.ei, ptr %i.r, align 8, !tbaa !424
  %.idx.i172 = shl nuw nsw i64 %i.ei, 2
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.idx.i172
  %.not6.i.i173 = icmp eq i64 %i.ei, 0
  br i1 %.not6.i.i173, label %.thread, label %.lr.ph.i.preheader.i174

.thread:                                          ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171
  store i32 %i.eh, ptr %i.t, align 8, !tbaa !423
  br label %_ZN3fmt3v126detail6bigintlSEi.exit196

.lr.ph.i.preheader.i174:                          ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171, %.noexc182
  %i.eq = phi i64 [ %.pre.i.i.i180, %.noexc182 ], [ %i.ej, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ]
  %.pr = phi i64 [ %i.em, %.noexc182 ], [ %i.ei, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ] ; 7 uses
  %i.er = phi ptr [ %i.eo, %.noexc182 ], [ %i.ep, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ] ; 2 uses
  %i.es = phi ptr [ %i.en, %.noexc182 ], [ %i.eg, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ] ; 4 uses
  %i.et = ptrtoaddr ptr %i.er to i64
  %i.eu = ptrtoaddr ptr %i.es to i64              ; 2 uses
  %i.ev = load ptr, ptr %8, align 8, !tbaa !419   ; 7 uses
  %i.ew = add i64 %i.et, -4
  %i.ex = sub i64 %i.ew, %i.eu                    ; 2 uses
  %i.ey = lshr i64 %i.ex, 2
  %i.ez = add nuw nsw i64 %i.ey, 1                ; 2 uses
  %min.iters.check1568 = icmp ult i64 %i.ex, 44
  %i.fa = ptrtoaddr ptr %i.ev to i64
  %i.fb = sub i64 %i.eu, %i.fa
  %diff.check1570 = icmp ugt i64 %i.fb, -32
  %or.cond1659 = select i1 %min.iters.check1568, i1 true, i1 %diff.check1570
  br i1 %or.cond1659, label %.lr.ph.i.i175.preheader, label %vector.ph1571

vector.ph1571:                                    ; preds = %.lr.ph.i.preheader.i174
  %n.vec1572 = and i64 %i.ez, 9223372036854775800 ; 3 uses
  %i.fc = shl i64 %n.vec1572, 2                   ; 2 uses
  %i.fd = getelementptr i8, ptr %i.ev, i64 %i.fc
  %i.fe = getelementptr i8, ptr %i.es, i64 %i.fc
  br label %vector.body1573

vector.body1573:                                  ; preds = %vector.body1573, %vector.ph1571
  %index1574 = phi i64 [ 0, %vector.ph1571 ], [ %index.next1579, %vector.body1573 ] ; 2 uses
  %i.ff = shl i64 %index1574, 2                   ; 2 uses
  %next.gep1575 = getelementptr i8, ptr %i.ev, i64 %i.ff ; 2 uses
  %next.gep1576 = getelementptr i8, ptr %i.es, i64 %i.ff ; 2 uses
  %i.fg = getelementptr i8, ptr %next.gep1576, i64 16
  %wide.load1577 = load <4 x i32>, ptr %next.gep1576, align 4, !tbaa !72
  %wide.load1578 = load <4 x i32>, ptr %i.fg, align 4, !tbaa !72
  %i.fh = getelementptr i8, ptr %next.gep1575, i64 16
  store <4 x i32> %wide.load1577, ptr %next.gep1575, align 4, !tbaa !72
  store <4 x i32> %wide.load1578, ptr %i.fh, align 4, !tbaa !72
  %index.next1579 = add nuw i64 %index1574, 8     ; 2 uses
  %i.fi = icmp eq i64 %index.next1579, %n.vec1572
  br i1 %i.fi, label %middle.block1580, label %vector.body1573, !llvm.loop !1233

middle.block1580:                                 ; preds = %vector.body1573
  %cmp.n1581 = icmp eq i64 %i.ez, %n.vec1572
  br i1 %cmp.n1581, label %.loopexit, label %.lr.ph.i.i175.preheader

.lr.ph.i.i175.preheader:                          ; preds = %.lr.ph.i.preheader.i174, %middle.block1580
  %.08.i.i176.ph = phi ptr [ %i.ev, %.lr.ph.i.preheader.i174 ], [ %i.fd, %middle.block1580 ]
  %.057.i.i177.ph = phi ptr [ %i.es, %.lr.ph.i.preheader.i174 ], [ %i.fe, %middle.block1580 ]
  br label %.lr.ph.i.i175

.lr.ph.i.i175:                                    ; preds = %.lr.ph.i.i175.preheader, %.lr.ph.i.i175
  %.08.i.i176 = phi ptr [ %i.fl, %.lr.ph.i.i175 ], [ %.08.i.i176.ph, %.lr.ph.i.i175.preheader ] ; 2 uses
  %.057.i.i177 = phi ptr [ %i.fj, %.lr.ph.i.i175 ], [ %.057.i.i177.ph, %.lr.ph.i.i175.preheader ] ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.057.i.i177, i64 4 ; 2 uses
  %i.fk = load i32, ptr %.057.i.i177, align 4, !tbaa !72
  %i.fl = getelementptr inbounds nuw i8, ptr %.08.i.i176, i64 4
  store i32 %i.fk, ptr %.08.i.i176, align 4, !tbaa !72
  %.not.i.i178 = icmp eq ptr %i.fj, %i.er
  br i1 %.not.i.i178, label %.loopexit, label %.lr.ph.i.i175, !llvm.loop !1234

.loopexit:                                        ; preds = %.lr.ph.i.i175, %middle.block1580
  %i.fm = load i32, ptr %i.e, align 8, !tbaa !423
  store i32 %i.fm, ptr %i.t, align 8, !tbaa !423
  %.not19.i184 = icmp eq i64 %.pr, 0
  br i1 %.not19.i184, label %_ZN3fmt3v126detail6bigintlSEi.exit196, label %.lr.ph.i185.preheader

.lr.ph.i185.preheader:                            ; preds = %.loopexit
  %min.iters.check1585 = icmp ult i64 %.pr, 8
  br i1 %min.iters.check1585, label %.lr.ph.i185.preheader1709, label %vector.ph1586

vector.ph1586:                                    ; preds = %.lr.ph.i185.preheader
  %n.vec1587 = and i64 %.pr, -8                   ; 3 uses
  br label %vector.body1588

vector.body1588:                                  ; preds = %vector.body1588, %vector.ph1586
  %index1589 = phi i64 [ 0, %vector.ph1586 ], [ %index.next1593, %vector.body1588 ] ; 2 uses
  %vector.recur1590 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph1586 ], [ %i.fq, %vector.body1588 ]
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %index1589 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16 ; 2 uses
  %wide.load1591 = load <4 x i32>, ptr %i.fn, align 4, !tbaa !72 ; 2 uses
  %wide.load1592 = load <4 x i32>, ptr %i.fo, align 4, !tbaa !72 ; 3 uses
  %i.fp = lshr <4 x i32> %wide.load1591, splat (i32 31) ; 2 uses
  %i.fq = lshr <4 x i32> %wide.load1592, splat (i32 31) ; 3 uses
  %i.fr = shufflevector <4 x i32> %vector.recur1590, <4 x i32> %i.fp, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.fs = shufflevector <4 x i32> %i.fp, <4 x i32> %i.fq, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ft = shl <4 x i32> %wide.load1591, splat (i32 1)
  %i.fu = shl <4 x i32> %wide.load1592, splat (i32 1)
  %i.fv = or disjoint <4 x i32> %i.ft, %i.fr
  %i.fw = or disjoint <4 x i32> %i.fu, %i.fs
  store <4 x i32> %i.fv, ptr %i.fn, align 4, !tbaa !72
  store <4 x i32> %i.fw, ptr %i.fo, align 4, !tbaa !72
  %index.next1593 = add nuw i64 %index1589, 8     ; 2 uses
  %i.fx = icmp eq i64 %index.next1593, %n.vec1587
  br i1 %i.fx, label %middle.block1594, label %vector.body1588, !llvm.loop !1235

middle.block1594:                                 ; preds = %vector.body1588
  %vector.recur.extract1595 = extractelement <4 x i32> %i.fq, i64 3 ; 2 uses
  %i.fy = extractelement <4 x i32> %wide.load1592, i64 3
  %cmp.n1596 = icmp eq i64 %.pr, %n.vec1587
  br i1 %cmp.n1596, label %._crit_edge.i189, label %.lr.ph.i185.preheader1709

.lr.ph.i185.preheader1709:                        ; preds = %.lr.ph.i185.preheader, %middle.block1594
  %.01418.i186.ph = phi i64 [ 0, %.lr.ph.i185.preheader ], [ %n.vec1587, %middle.block1594 ]
  %.017.i187.ph = phi i32 [ 0, %.lr.ph.i185.preheader ], [ %vector.recur.extract1595, %middle.block1594 ]
  br label %.lr.ph.i185

._crit_edge.i189:                                 ; preds = %.lr.ph.i185, %middle.block1594
  %.lcssa1519 = phi i32 [ %i.fy, %middle.block1594 ], [ %i.ga, %.lr.ph.i185 ]
  %.lcssa1518 = phi i32 [ %vector.recur.extract1595, %middle.block1594 ], [ %i.gb, %.lr.ph.i185 ]
  %.not.i190 = icmp sgt i32 %.lcssa1519, -1
  br i1 %.not.i190, label %_ZN3fmt3v126detail6bigintlSEi.exit196, label %bb.t

.lr.ph.i185:                                      ; preds = %.lr.ph.i185.preheader1709, %.lr.ph.i185
  %.01418.i186 = phi i64 [ %i.ge, %.lr.ph.i185 ], [ %.01418.i186.ph, %.lr.ph.i185.preheader1709 ] ; 2 uses
  %.017.i187 = phi i32 [ %i.gb, %.lr.ph.i185 ], [ %.017.i187.ph, %.lr.ph.i185.preheader1709 ]
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.01418.i186 ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !72 ; 3 uses
  %i.gb = lshr i32 %i.ga, 31                      ; 2 uses
  %i.gc = shl i32 %i.ga, 1
  %i.gd = or disjoint i32 %i.gc, %.017.i187
  store i32 %i.gd, ptr %i.fz, align 4, !tbaa !72
  %i.ge = add nuw i64 %.01418.i186, 1             ; 2 uses
  %exitcond.not.i188 = icmp eq i64 %i.ge, %.pr
  br i1 %exitcond.not.i188, label %._crit_edge.i189, label %.lr.ph.i185, !llvm.loop !1236

bb.t:                                             ; preds = %._crit_edge.i189
  %i.gf = add i64 %.pr, 1                         ; 3 uses
  %i.gg = icmp ugt i64 %i.gf, %i.eq
  br i1 %i.gg, label %bb.u, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191

bb.u:                                             ; preds = %bb.t
  %i.gh = load ptr, ptr %i.q, align 8, !tbaa !418
  invoke void %i.gh(ptr noundef nonnull align 8 dereferenceable(164) %8, i64 noundef %i.gf)
          to label %.noexc195 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1229

.noexc195:                                        ; preds = %bb.u
  %.pre.i.i193 = load i64, ptr %i.r, align 8, !tbaa !424 ; 2 uses
  %.pre2.i.i194 = add i64 %.pre.i.i193, 1
  %.pre686 = load ptr, ptr %8, align 8, !tbaa !419
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191: ; preds = %.noexc195, %bb.t
  %i.gi = phi ptr [ %i.ev, %bb.t ], [ %.pre686, %.noexc195 ]
  %.pre-phi.i.i192 = phi i64 [ %i.gf, %bb.t ], [ %.pre2.i.i194, %.noexc195 ]
  %i.gj = phi i64 [ %.pr, %bb.t ], [ %.pre.i.i193, %.noexc195 ]
  store i64 %.pre-phi.i.i192, ptr %i.r, align 8, !tbaa !424
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.gj
  store i32 %.lcssa1518, ptr %i.gk, align 4, !tbaa !72
  br label %_ZN3fmt3v126detail6bigintlSEi.exit196

_ZN3fmt3v126detail6bigintlSEi.exit196:            ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191, %._crit_edge.i189, %.loopexit, %.thread, %.loopexit572
  %.1 = phi ptr [ null, %.loopexit572 ], [ %8, %.thread ], [ %8, %.loopexit ], [ %8, %._crit_edge.i189 ], [ %8, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191 ] ; 3 uses
  %i.gl = load i128, ptr %0, align 16, !tbaa !1257 ; 3 uses
  %i.gm = and i128 %i.gl, 18446744073709551615
  %i.gn = load i64, ptr %i.c, align 8, !tbaa !424 ; 4 uses
  %.not23.i.i = icmp eq i64 %i.gn, 0
  br i1 %.not23.i.i, label %_ZN3fmt3v126detail6bigintlSEi.exit213, label %.lr.ph.i.i197

.lr.ph.i.i197:                                    ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit196
  %i.go = load ptr, ptr %5, align 8, !tbaa !419   ; 3 uses
  %i.gp = lshr i128 %i.gl, 32
  %i.gq = and i128 %i.gp, 79228162514264337589248983040
  br label %bb.v

.preheader.i.i:                                   ; preds = %bb.v
  %.not20.i.i = icmp eq i128 %i.hb, 0
  br i1 %.not20.i.i, label %.lr.ph.i202, label %.lr.ph22.i.i

bb.v:                                             ; preds = %bb.v, %.lr.ph.i.i197
  %.019.i.i = phi i64 [ 0, %.lr.ph.i.i197 ], [ %i.hd, %bb.v ] ; 2 uses
  %.01718.i.i = phi i128 [ 0, %.lr.ph.i.i197 ], [ %i.hb, %bb.v ] ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %.019.i.i ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !72
  %i.gt = zext i32 %i.gs to i128                  ; 2 uses
  %i.gu = mul nuw nsw i128 %i.gm, %i.gt
  %i.gv = and i128 %.01718.i.i, 4294967295
  %i.gw = add nuw nsw i128 %i.gu, %i.gv           ; 2 uses
  %i.gx = mul nuw i128 %i.gq, %i.gt
  %i.gy = lshr i128 %i.gw, 32
  %i.gz = lshr i128 %.01718.i.i, 32
  %i.ha = add nuw i128 %i.gx, %i.gz
  %i.hb = add nuw i128 %i.ha, %i.gy               ; 3 uses
  %i.hc = trunc i128 %i.gw to i32
  store i32 %i.hc, ptr %i.gr, align 4, !tbaa !72
  %i.hd = add nuw i64 %.019.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.hd, %i.gn
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %bb.v, !llvm.loop !1237

.lr.ph22.i.i:                                     ; preds = %.preheader.i.i, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i
  %i.he = phi ptr [ %i.hl, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.go, %.preheader.i.i ]
  %i.hf = phi i64 [ %.pre-phi.i.i.i, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.gn, %.preheader.i.i ] ; 2 uses
  %.121.i.i = phi i128 [ %i.ho, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.hb, %.preheader.i.i ] ; 2 uses
  %i.hg = trunc i128 %.121.i.i to i32
  %i.hh = add i64 %i.hf, 1                        ; 3 uses
  %i.hi = load i64, ptr %i.a, align 8, !tbaa !420
  %i.hj = icmp ugt i64 %i.hh, %i.hi
  br i1 %i.hj, label %bb.w, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i

bb.w:                                             ; preds = %.lr.ph22.i.i
  %i.hk = load ptr, ptr %i.b, align 8, !tbaa !418
  invoke void %i.hk(ptr noundef nonnull align 8 dereferenceable(164) %5, i64 noundef %i.hh)
          to label %.noexc200 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1238

.noexc200:                                        ; preds = %bb.w
  %.pre.i.i.i199 = load i64, ptr %i.c, align 8, !tbaa !424 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i199, 1
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !419
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i: ; preds = %.noexc200, %.lr.ph22.i.i
  %i.hl = phi ptr [ %i.he, %.lr.ph22.i.i ], [ %.pre.i, %.noexc200 ] ; 3 uses
  %.pre-phi.i.i.i = phi i64 [ %i.hh, %.lr.ph22.i.i ], [ %.pre2.i.i.i, %.noexc200 ] ; 4 uses
  %i.hm = phi i64 [ %i.hf, %.lr.ph22.i.i ], [ %.pre.i.i.i199, %.noexc200 ]
  store i64 %.pre-phi.i.i.i, ptr %i.c, align 8, !tbaa !424
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.hm
end_hunk_1
