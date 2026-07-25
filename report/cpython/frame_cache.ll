inline.NumInlined: 11
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@frame_cache_find:bb.a
  br i1 %i.aj, label %.loopexit, label %.preheader.11

.preheader.11:                                    ; preds = %.preheader.10
  %i.ak = getelementptr i8, ptr %i.b, i64 90376   ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !51
  %i.am = icmp eq i64 %i.al, %1
  br i1 %i.am, label %.loopexit, label %.preheader.12

.preheader.12:                                    ; preds = %.preheader.11
  %i.an = getelementptr i8, ptr %i.b, i64 98592   ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !51
  %i.ap = icmp eq i64 %i.ao, %1
  br i1 %i.ap, label %.loopexit, label %.preheader.13

.preheader.13:                                    ; preds = %.preheader.12
  %i.aq = getelementptr i8, ptr %i.b, i64 106808  ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !51
  %i.as = icmp eq i64 %i.ar, %1
  br i1 %i.as, label %.loopexit, label %.preheader.14

.preheader.14:                                    ; preds = %.preheader.13
  %i.at = getelementptr i8, ptr %i.b, i64 115024  ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !51
  %i.av = icmp eq i64 %i.au, %1
  br i1 %i.av, label %.loopexit, label %.preheader.15

.preheader.15:                                    ; preds = %.preheader.14
  %i.aw = getelementptr i8, ptr %i.b, i64 123240  ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !51
  %i.ay = icmp eq i64 %i.ax, %1
  br i1 %i.ay, label %.loopexit, label %.preheader.16

.preheader.16:                                    ; preds = %.preheader.15
  %i.az = getelementptr i8, ptr %i.b, i64 131456  ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !51
  %i.bb = icmp eq i64 %i.ba, %1
  br i1 %i.bb, label %.loopexit, label %.preheader.17

.preheader.17:                                    ; preds = %.preheader.16
  %i.bc = getelementptr i8, ptr %i.b, i64 139672  ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !51
  %i.be = icmp eq i64 %i.bd, %1
  br i1 %i.be, label %.loopexit, label %.preheader.18

.preheader.18:                                    ; preds = %.preheader.17
  %i.bf = getelementptr i8, ptr %i.b, i64 147888  ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !51
  %i.bh = icmp eq i64 %i.bg, %1
  br i1 %i.bh, label %.loopexit, label %.preheader.19

.preheader.19:                                    ; preds = %.preheader.18
  %i.bi = getelementptr i8, ptr %i.b, i64 156104  ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !51
  %i.bk = icmp eq i64 %i.bj, %1
  br i1 %i.bk, label %.loopexit, label %.preheader.20

.preheader.20:                                    ; preds = %.preheader.19
  %i.bl = getelementptr i8, ptr %i.b, i64 164320  ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !51
  %i.bn = icmp eq i64 %i.bm, %1
  br i1 %i.bn, label %.loopexit, label %.preheader.21

.preheader.21:                                    ; preds = %.preheader.20
  %i.bo = getelementptr i8, ptr %i.b, i64 172536  ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !51
  %i.bq = icmp eq i64 %i.bp, %1
  br i1 %i.bq, label %.loopexit, label %.preheader.22

.preheader.22:                                    ; preds = %.preheader.21
  %i.br = getelementptr i8, ptr %i.b, i64 180752  ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !51
  %i.bt = icmp eq i64 %i.bs, %1
  br i1 %i.bt, label %.loopexit, label %.preheader.23

.preheader.23:                                    ; preds = %.preheader.22
  %i.bu = getelementptr i8, ptr %i.b, i64 188968  ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !51
  %i.bw = icmp eq i64 %i.bv, %1
  br i1 %i.bw, label %.loopexit, label %.preheader.24

.preheader.24:                                    ; preds = %.preheader.23
  %i.bx = getelementptr i8, ptr %i.b, i64 197184  ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !51
  %i.bz = icmp eq i64 %i.by, %1
  br i1 %i.bz, label %.loopexit, label %.preheader.25

.preheader.25:                                    ; preds = %.preheader.24
  %i.ca = getelementptr i8, ptr %i.b, i64 205400  ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !51
  %i.cc = icmp eq i64 %i.cb, %1
  br i1 %i.cc, label %.loopexit, label %.preheader.26

.preheader.26:                                    ; preds = %.preheader.25
  %i.cd = getelementptr i8, ptr %i.b, i64 213616  ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !51
  %i.cf = icmp eq i64 %i.ce, %1
  br i1 %i.cf, label %.loopexit, label %.preheader.27

.preheader.27:                                    ; preds = %.preheader.26
  %i.cg = getelementptr i8, ptr %i.b, i64 221832  ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !51
  %i.ci = icmp eq i64 %i.ch, %1
  br i1 %i.ci, label %.loopexit, label %.preheader.28

.preheader.28:                                    ; preds = %.preheader.27
  %i.cj = getelementptr i8, ptr %i.b, i64 230048  ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !51
  %i.cl = icmp eq i64 %i.ck, %1
  br i1 %i.cl, label %.loopexit, label %.preheader.29

.preheader.29:                                    ; preds = %.preheader.28
  %i.cm = getelementptr i8, ptr %i.b, i64 238264  ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !51
  %i.co = icmp eq i64 %i.cn, %1
  br i1 %i.co, label %.loopexit, label %.preheader.30

.preheader.30:                                    ; preds = %.preheader.29
  %i.cp = getelementptr i8, ptr %i.b, i64 246480  ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !51
  %i.cr = icmp eq i64 %i.cq, %1
  br i1 %i.cr, label %.loopexit, label %.preheader.31

.preheader.31:                                    ; preds = %.preheader.30
  %i.cs = getelementptr i8, ptr %i.b, i64 254696  ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !51
  %i.cu = icmp eq i64 %i.ct, %1
  %spec.select = select i1 %i.cu, ptr %i.cs, ptr null
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.31, %.preheader.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %.preheader.6, %.preheader.7, %.preheader.8, %.preheader.9, %.preheader.10, %.preheader.11, %.preheader.12, %.preheader.13, %.preheader.14, %.preheader.15, %.preheader.16, %.preheader.17, %.preheader.18, %.preheader.19, %.preheader.20, %.preheader.21, %.preheader.22, %.preheader.23, %.preheader.24, %.preheader.25, %.preheader.26, %.preheader.27, %.preheader.28, %.preheader.29, %.preheader.30, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.b, %.preheader.preheader ], [ %i.az, %.preheader.16 ], [ %i.g, %.preheader.1 ], [ %spec.select, %.preheader.31 ], [ %i.j, %.preheader.2 ], [ %i.bl, %.preheader.20 ], [ %i.m, %.preheader.3 ], [ %i.cp, %.preheader.30 ], [ %i.p, %.preheader.4 ], [ %i.bc, %.preheader.17 ], [ %i.s, %.preheader.5 ], [ %i.cm, %.preheader.29 ], [ %i.v, %.preheader.6 ], [ %i.bu, %.preheader.23 ], [ %i.y, %.preheader.7 ], [ %i.cj, %.preheader.28 ], [ %i.ab, %.preheader.8 ], [ %i.bf, %.preheader.18 ], [ %i.ae, %.preheader.9 ], [ %i.cg, %.preheader.27 ], [ %i.ah, %.preheader.10 ], [ %i.bo, %.preheader.21 ], [ %i.ak, %.preheader.11 ], [ %i.cd, %.preheader.26 ], [ %i.an, %.preheader.12 ], [ %i.bi, %.preheader.19 ], [ %i.aq, %.preheader.13 ], [ %i.ca, %.preheader.25 ], [ %i.at, %.preheader.14 ], [ %i.br, %.preheader.22 ], [ %i.aw, %.preheader.15 ], [ %i.bx, %.preheader.24 ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define hidden void @frame_cache_invalidate_stale(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i64], align 16              ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 33824      ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.d = icmp ne ptr %i.c, null
  %i.e = icmp ne ptr %1, null
  %or.cond = and i1 %i.e, %i.d
  br i1 %or.cond, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 8
  %.val65 = load ptr, ptr %i.f, align 8, !tbaa !53
  %i.g = getelementptr i8, ptr %.val65, i64 168
  %.val67 = load i64, ptr %i.g, align 8, !tbaa !54
  %i.h = and i64 %.val67, 33554432
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.v, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.i = getelementptr i8, ptr %1, i64 16
  %.val69 = load i64, ptr %i.i, align 8, !tbaa !62 ; 2 uses
  %i.j = icmp sgt i64 %.val69, 0
  br i1 %i.j, label %.lr.ph76, label %.preheader70.thread

.preheader70.thread:                              ; preds = %bb.c
  %i.k = getelementptr i8, ptr %0, i64 33808
  %i.l = getelementptr i8, ptr %0, i64 33912
  br label %.preheader70.split.preheader

.lr.ph76:                                         ; preds = %bb.c
  %i.m = getelementptr i8, ptr %1, i64 24
  br label %bb.i

.preheader70:                                     ; preds = %.loopexit71
  %.not5878 = icmp sgt i32 %.4, 0
  %i.n = getelementptr i8, ptr %0, i64 33808      ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 33912      ; 3 uses
  br i1 %.not5878, label %.preheader70.split.us.preheader, label %.preheader70.split.preheader

.preheader70.split.preheader:                     ; preds = %.preheader70.thread, %.preheader70
  %i.p = phi ptr [ %i.l, %.preheader70.thread ], [ %i.o, %.preheader70 ] ; 2 uses
  %i.q = phi ptr [ %i.k, %.preheader70.thread ], [ %i.n, %.preheader70 ]
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !10
  br label %.preheader70.split

.preheader70.split.us.preheader:                  ; preds = %.preheader70
  %.pre92 = load ptr, ptr %i.b, align 8, !tbaa !10
  %wide.trip.count = zext nneg i32 %.4 to i64
  br label %.preheader70.split.us

.preheader70.split.us:                            ; preds = %.preheader70.split.us.preheader, %.loopexit.us
  %i.r = phi ptr [ %.pre92, %.preheader70.split.us.preheader ], [ %i.ae, %.loopexit.us ] ; 3 uses
  %indvars.iv88 = phi i64 [ 0, %.preheader70.split.us.preheader ], [ %indvars.iv.next89, %.loopexit.us ] ; 3 uses
  %i.s = getelementptr [8216 x i8], ptr %i.r, i64 %indvars.iv88 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !51   ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %.loopexit.us, label %.preheader.us

bb.d:                                             ; preds = %.preheader.us
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1 ; 2 uses
  %exitcond87.not = icmp eq i64 %indvars.iv.next85, %wide.trip.count
  br i1 %exitcond87.not, label %..critedge_crit_edge.us, label %.preheader.us, !llvm.loop !63

bb.e:                                             ; preds = %..critedge_crit_edge.us
  store ptr null, ptr %i.af, align 8, !tbaa !46
  %i.v = load i32, ptr %i.ag, align 8, !tbaa !48  ; 2 uses
  %.not.i.us = icmp sgt i32 %i.v, -1
  br i1 %.not.i.us, label %bb.f, label %Py_DECREF.exit.us

bb.f:                                             ; preds = %bb.e
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr %i.ag, align 8, !tbaa !48
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.g, label %Py_DECREF.exit.us

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ag) #5
  br label %Py_DECREF.exit.us

Py_DECREF.exit.us:                                ; preds = %bb.g, %bb.f, %bb.e, %..critedge_crit_edge.us
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !10   ; 3 uses
  %i.z = getelementptr [8216 x i8], ptr %i.y, i64 %indvars.iv88 ; 2 uses
  store i64 0, ptr %i.z, align 8, !tbaa !51
  %i.aa = getelementptr i8, ptr %i.z, i64 8200
  store i64 0, ptr %i.aa, align 8, !tbaa !64
  %i.ab = load i32, ptr %i.n, align 8, !tbaa !65
  %.not60.us = icmp eq i32 %i.ab, 0
  br i1 %.not60.us, label %.loopexit.us, label %bb.h

bb.h:                                             ; preds = %Py_DECREF.exit.us
  %i.ac = load i64, ptr %i.o, align 8, !tbaa !66
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.o, align 8, !tbaa !66
  br label %.loopexit.us

.preheader.us:                                    ; preds = %.preheader70.split.us, %bb.d
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %bb.d ], [ 0, %.preheader70.split.us ] ; 2 uses
  %2 = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv84
  %3 = load i64, ptr %2, align 8, !tbaa !67
  %4 = icmp eq i64 %i.t, %3
  br i1 %4, label %.loopexit.us, label %bb.d

.loopexit.us:                                     ; preds = %.preheader.us, %bb.h, %Py_DECREF.exit.us, %.preheader70.split.us
  %i.ae = phi ptr [ %i.r, %.preheader70.split.us ], [ %i.y, %bb.h ], [ %i.y, %Py_DECREF.exit.us ], [ %i.r, %.preheader.us ]
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %exitcond91.not = icmp eq i64 %indvars.iv.next89, 32
  br i1 %exitcond91.not, label %.split.us, label %.preheader70.split.us, !llvm.loop !68

..critedge_crit_edge.us:                          ; preds = %bb.d
  %i.af = getelementptr i8, ptr %i.s, i64 8208    ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !46 ; 4 uses
  %.not59.us = icmp eq ptr %i.ag, null
  br i1 %.not59.us, label %Py_DECREF.exit.us, label %bb.e

bb.i:                                             ; preds = %.lr.ph76, %.loopexit71
  %.075 = phi i32 [ 0, %.lr.ph76 ], [ %.4, %.loopexit71 ] ; 4 uses
  %.04874 = phi i64 [ 0, %.lr.ph76 ], [ %i.bf, %.loopexit71 ] ; 2 uses
  %i.ah = load ptr, ptr %i.m, align 8, !tbaa !69
  %i.ai = getelementptr [8 x i8], ptr %i.ah, i64 %.04874
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !46
  %i.ak = tail call ptr @PyStructSequence_GetItem(ptr noundef %i.aj, i64 noundef 1) #5 ; 4 uses
  %.not61 = icmp eq ptr %i.ak, null
  br i1 %.not61, label %.loopexit71, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  %.val = load ptr, ptr %i.al, align 8, !tbaa !53
  %i.am = getelementptr i8, ptr %.val, i64 168
  %.val66 = load i64, ptr %i.am, align 8, !tbaa !54
  %i.an = and i64 %.val66, 33554432
  %.not62 = icmp eq i64 %i.an, 0
  br i1 %.not62, label %.loopexit71, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr i8, ptr %i.ak, i64 16
  %.val68 = load i64, ptr %i.ao, align 8, !tbaa !62 ; 2 uses
  %i.ap = icmp sgt i64 %.val68, 0
  br i1 %i.ap, label %.lr.ph, label %.loopexit71

.lr.ph:                                           ; preds = %bb.k
  %i.aq = getelementptr i8, ptr %i.ak, i64 24
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.p
  %.173 = phi i32 [ %.075, %.lr.ph ], [ %i.ba, %bb.p ] ; 4 uses
  %.05272 = phi i64 [ 0, %.lr.ph ], [ %i.bb, %bb.p ] ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !69
  %i.as = getelementptr [8 x i8], ptr %i.ar, i64 %.05272
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !46
  %i.au = tail call ptr @PyStructSequence_GetItem(ptr noundef %i.at, i64 noundef 0) #5 ; 2 uses
  %.not63 = icmp eq ptr %i.au, null
  br i1 %.not63, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = tail call i64 @PyLong_AsUnsignedLongLong(ptr noundef nonnull %i.au) #5
  %i.aw = tail call ptr @PyErr_Occurred() #5
  %.not64 = icmp eq ptr %i.aw, null
  br i1 %.not64, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ax = add nsw i32 %.173, 1
  %i.ay = sext i32 %.173 to i64
  %i.az = getelementptr [8 x i8], ptr %i.a, i64 %i.ay
  store i64 %i.av, ptr %i.az, align 8, !tbaa !67
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  tail call void @PyErr_Clear() #5
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.l
  %.3 = phi i32 [ %.173, %bb.l ], [ %.173, %bb.o ], [ %i.ax, %bb.n ]
  %i.ba = freeze i32 %.3                          ; 3 uses
  %i.bb = add nuw nsw i64 %.05272, 1              ; 2 uses
  %i.bc = icmp slt i64 %i.bb, %.val68
  %i.bd = icmp slt i32 %i.ba, 32
  %i.be = and i1 %i.bc, %i.bd
  br i1 %i.be, label %bb.l, label %.loopexit71, !llvm.loop !73

.loopexit71:                                      ; preds = %bb.p, %bb.k, %bb.i, %bb.j
  %.4 = phi i32 [ %.075, %bb.i ], [ %.075, %bb.j ], [ %.075, %bb.k ], [ %i.ba, %bb.p ] ; 4 uses
  %i.bf = add nuw nsw i64 %.04874, 1              ; 2 uses
  %i.bg = icmp slt i64 %i.bf, %.val69
  %i.bh = icmp slt i32 %.4, 32
  %i.bi = select i1 %i.bg, i1 %i.bh, i1 false
  br i1 %i.bi, label %bb.i, label %.preheader70, !llvm.loop !74

.split.us:                                        ; preds = %bb.u, %.loopexit.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.v

.preheader70.split:                               ; preds = %.preheader70.split.preheader, %bb.u
  %i.bj = phi ptr [ %.pre, %.preheader70.split.preheader ], [ %i.by, %bb.u ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.preheader70.split.preheader ], [ %indvars.iv.next, %bb.u ] ; 3 uses
  %i.bk = getelementptr [8216 x i8], ptr %i.bj, i64 %indvars.iv ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !51
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %bb.u, label %.preheader

.preheader:                                       ; preds = %.preheader70.split
  %i.bn = getelementptr i8, ptr %i.bk, i64 8208   ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !46 ; 4 uses
  %.not59 = icmp eq ptr %i.bo, null
  br i1 %.not59, label %Py_DECREF.exit, label %bb.q

bb.q:                                             ; preds = %.preheader
  store ptr null, ptr %i.bn, align 8, !tbaa !46
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !48 ; 2 uses
  %.not.i = icmp sgt i32 %i.bp, -1
  br i1 %.not.i, label %bb.r, label %Py_DECREF.exit

bb.r:                                             ; preds = %bb.q
  %i.bq = add nsw i32 %i.bp, -1                   ; 2 uses
  store i32 %i.bq, ptr %i.bo, align 8, !tbaa !48
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.s, label %Py_DECREF.exit

bb.s:                                             ; preds = %bb.r
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.bo) #5
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.s, %bb.r, %bb.q, %.preheader
  %i.bs = load ptr, ptr %i.b, align 8, !tbaa !10  ; 3 uses
  %i.bt = getelementptr [8216 x i8], ptr %i.bs, i64 %indvars.iv ; 2 uses
  store i64 0, ptr %i.bt, align 8, !tbaa !51
  %i.bu = getelementptr i8, ptr %i.bt, i64 8200
  store i64 0, ptr %i.bu, align 8, !tbaa !64
  %i.bv = load i32, ptr %i.q, align 8, !tbaa !65
  %.not60 = icmp eq i32 %i.bv, 0
  br i1 %.not60, label %bb.u, label %bb.t

bb.t:                                             ; preds = %Py_DECREF.exit
  %i.bw = load i64, ptr %i.p, align 8, !tbaa !66
  %i.bx = add i64 %i.bw, 1
  store i64 %i.bx, ptr %i.p, align 8, !tbaa !66
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %Py_DECREF.exit, %.preheader70.split
  %i.by = phi ptr [ %i.bs, %bb.t ], [ %i.bs, %Py_DECREF.exit ], [ %i.bj, %.preheader70.split ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %.split.us, label %.preheader70.split, !llvm.loop !68

bb.v:                                             ; preds = %bb.a, %bb.b, %.split.us
  ret void
}

declare ptr @PyStructSequence_GetItem(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @PyLong_AsUnsignedLongLong(ptr noundef) local_unnamed_addr #1

declare ptr @PyErr_Occurred() local_unnamed_addr #1

declare void @PyErr_Clear() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 2) i32 @frame_cache_lookup_and_extend(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef captures(none) %5, i64 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 33824
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.c = icmp eq ptr %i.b, null
  %i.d = icmp eq i64 %2, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @frame_cache_find(ptr noundef nonnull %0, i64 noundef %1) ; 4 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.e, i64 8208
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !75   ; 3 uses
  %.not51 = icmp eq ptr %i.g, null
  br i1 %.not51, label %.critedge, label %.preheader57

.preheader57:                                     ; preds = %bb.c
  %i.h = getelementptr i8, ptr %i.e, i64 8200     ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !64   ; 2 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader57
  %i.k = getelementptr i8, ptr %i.e, i64 8        ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %.04361 = phi i64 [ 0, %.lr.ph ], [ %i.o, %bb.e ] ; 3 uses
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %.04361
  %i.m = load i64, ptr %i.l, align 8, !tbaa !67
  %i.n = icmp eq i64 %i.m, %2
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nuw nsw i64 %.04361, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %i.i
  br i1 %exitcond.not, label %.critedge, label %bb.d, !llvm.loop !76

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %i.g, i64 16
  %.val55 = load i64, ptr %i.p, align 8, !tbaa !62 ; 2 uses
  %i.q = add nuw nsw i64 %.04361, 1               ; 4 uses
  %.not52 = icmp slt i64 %i.q, %.val55
  br i1 %.not52, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.r = tail call ptr @PyList_GetSlice(ptr noundef nonnull %i.g, i64 noundef %i.q, i64 noundef %.val55) #5 ; 5 uses
  %.not53 = icmp eq ptr %i.r, null
  br i1 %.not53, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.s, align 8, !tbaa !62  ; 2 uses
  %i.t = tail call i32 @PyList_SetSlice(ptr noundef %3, i64 noundef %.val, i64 noundef %.val, ptr noundef nonnull %i.r) #5
  %i.u = load i32, ptr %i.r, align 8, !tbaa !48   ; 2 uses
  %.not.i = icmp sgt i32 %i.u, -1
  br i1 %.not.i, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  %i.v = add nsw i32 %i.u, -1                     ; 2 uses
  store i32 %i.v, ptr %i.r, align 8, !tbaa !48
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.r) #5
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.h, %bb.i, %bb.j
  %i.x = icmp slt i32 %i.t, 0
  br i1 %i.x, label %.critedge, label %bb.k

bb.k:                                             ; preds = %Py_DECREF.exit
  %.not54 = icmp eq ptr %4, null
  br i1 %.not54, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.k
  %i.y = load i64, ptr %i.h, align 8, !tbaa !64
  %i.z = icmp slt i64 %i.q, %i.y
  br i1 %i.z, label %.lr.ph63, label %.critedge

.lr.ph63:                                         ; preds = %.preheader, %bb.l
  %.062 = phi i64 [ %i.ag, %bb.l ], [ %i.q, %.preheader ] ; 2 uses
  %i.aa = load i64, ptr %5, align 8, !tbaa !67    ; 3 uses
  %i.ab = icmp slt i64 %i.aa, %6
  br i1 %i.ab, label %bb.l, label %.critedge

bb.l:                                             ; preds = %.lr.ph63
  %i.ac = getelementptr [8 x i8], ptr %i.k, i64 %.062
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !67
  %i.ae = add nsw i64 %i.aa, 1
  store i64 %i.ae, ptr %5, align 8, !tbaa !67
  %i.af = getelementptr [8 x i8], ptr %4, i64 %i.aa
  store i64 %i.ad, ptr %i.af, align 8, !tbaa !67
  %i.ag = add nuw nsw i64 %.062, 1                ; 2 uses
  %i.ah = load i64, ptr %i.h, align 8, !tbaa !64
  %i.ai = icmp slt i64 %i.ag, %i.ah
  br i1 %i.ai, label %.lr.ph63, label %.critedge, !llvm.loop !77

.critedge:                                        ; preds = %bb.e, %bb.l, %.lr.ph63, %.preheader57, %.preheader, %bb.c, %bb.b, %bb.f, %Py_DECREF.exit, %bb.k, %bb.g, %bb.a
  %.5 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 1, %bb.l ], [ 0, %bb.f ], [ -1, %bb.g ], [ -1, %Py_DECREF.exit ], [ 1, %bb.k ], [ 1, %.preheader ], [ 0, %.preheader57 ], [ 1, %.lr.ph63 ], [ 0, %bb.e ]
  ret i32 %.5
}

declare ptr @PyList_GetSlice(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @PyList_SetSlice(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 2) i32 @frame_cache_store(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 33824
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 35 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = icmp eq i64 %1, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %frame_cache_alloc_slot.exit.thread40, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %5, 0
  %.not31 = icmp eq i64 %6, %5
  %or.cond35 = or i1 %.not, %.not31
  br i1 %or.cond35, label %.preheader6.preheader.i, label %frame_cache_alloc_slot.exit.thread40

.preheader6.preheader.i:                          ; preds = %bb.b
  %spec.store.select = tail call i64 @llvm.smin.i64(i64 %4, i64 1024) ; 2 uses
  %i.e = load i64, ptr %i.b, align 8, !tbaa !51   ; 2 uses
  %i.f = icmp eq i64 %i.e, %1
  br i1 %i.f, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.1.i

.preheader6.1.i:                                  ; preds = %.preheader6.preheader.i
  %i.g = getelementptr i8, ptr %i.b, i64 8216     ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !51   ; 2 uses
  %i.i = icmp eq i64 %i.h, %1
  br i1 %i.i, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.2.i

.preheader6.2.i:                                  ; preds = %.preheader6.1.i
  %i.j = getelementptr i8, ptr %i.b, i64 16432    ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !51   ; 2 uses
  %i.l = icmp eq i64 %i.k, %1
  br i1 %i.l, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.3.i

.preheader6.3.i:                                  ; preds = %.preheader6.2.i
  %i.m = getelementptr i8, ptr %i.b, i64 24648    ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !51   ; 2 uses
  %i.o = icmp eq i64 %i.n, %1
  br i1 %i.o, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.4.i

.preheader6.4.i:                                  ; preds = %.preheader6.3.i
  %i.p = getelementptr i8, ptr %i.b, i64 32864    ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !51   ; 2 uses
  %i.r = icmp eq i64 %i.q, %1
  br i1 %i.r, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.5.i

.preheader6.5.i:                                  ; preds = %.preheader6.4.i
  %i.s = getelementptr i8, ptr %i.b, i64 41080    ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !51   ; 2 uses
  %i.u = icmp eq i64 %i.t, %1
  br i1 %i.u, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.6.i

.preheader6.6.i:                                  ; preds = %.preheader6.5.i
  %i.v = getelementptr i8, ptr %i.b, i64 49296    ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !51   ; 2 uses
  %i.x = icmp eq i64 %i.w, %1
  br i1 %i.x, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.7.i

.preheader6.7.i:                                  ; preds = %.preheader6.6.i
  %i.y = getelementptr i8, ptr %i.b, i64 57512    ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !51   ; 2 uses
  %i.aa = icmp eq i64 %i.z, %1
  br i1 %i.aa, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.8.i

.preheader6.8.i:                                  ; preds = %.preheader6.7.i
  %i.ab = getelementptr i8, ptr %i.b, i64 65728   ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !51 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, %1
  br i1 %i.ad, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.9.i

.preheader6.9.i:                                  ; preds = %.preheader6.8.i
  %i.ae = getelementptr i8, ptr %i.b, i64 73944   ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !51 ; 2 uses
  %i.ag = icmp eq i64 %i.af, %1
  br i1 %i.ag, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.10.i

.preheader6.10.i:                                 ; preds = %.preheader6.9.i
  %i.ah = getelementptr i8, ptr %i.b, i64 82160   ; 3 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !51 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, %1
  br i1 %i.aj, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.11.i

.preheader6.11.i:                                 ; preds = %.preheader6.10.i
  %i.ak = getelementptr i8, ptr %i.b, i64 90376   ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !51 ; 2 uses
  %i.am = icmp eq i64 %i.al, %1
  br i1 %i.am, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.12.i

.preheader6.12.i:                                 ; preds = %.preheader6.11.i
  %i.an = getelementptr i8, ptr %i.b, i64 98592   ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !51 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, %1
  br i1 %i.ap, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.13.i

.preheader6.13.i:                                 ; preds = %.preheader6.12.i
  %i.aq = getelementptr i8, ptr %i.b, i64 106808  ; 3 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !51 ; 2 uses
  %i.as = icmp eq i64 %i.ar, %1
  br i1 %i.as, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.14.i

.preheader6.14.i:                                 ; preds = %.preheader6.13.i
  %i.at = getelementptr i8, ptr %i.b, i64 115024  ; 3 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !51 ; 2 uses
  %i.av = icmp eq i64 %i.au, %1
  br i1 %i.av, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.15.i

.preheader6.15.i:                                 ; preds = %.preheader6.14.i
  %i.aw = getelementptr i8, ptr %i.b, i64 123240  ; 3 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !51 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, %1
  br i1 %i.ay, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.16.i

.preheader6.16.i:                                 ; preds = %.preheader6.15.i
  %i.az = getelementptr i8, ptr %i.b, i64 131456  ; 3 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !51 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, %1
  br i1 %i.bb, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.17.i

.preheader6.17.i:                                 ; preds = %.preheader6.16.i
  %i.bc = getelementptr i8, ptr %i.b, i64 139672  ; 3 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !51 ; 2 uses
  %i.be = icmp eq i64 %i.bd, %1
  br i1 %i.be, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.18.i

.preheader6.18.i:                                 ; preds = %.preheader6.17.i
  %i.bf = getelementptr i8, ptr %i.b, i64 147888  ; 3 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !51 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, %1
  br i1 %i.bh, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.19.i

.preheader6.19.i:                                 ; preds = %.preheader6.18.i
  %i.bi = getelementptr i8, ptr %i.b, i64 156104  ; 3 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !51 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, %1
  br i1 %i.bk, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.20.i

.preheader6.20.i:                                 ; preds = %.preheader6.19.i
  %i.bl = getelementptr i8, ptr %i.b, i64 164320  ; 3 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !51 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, %1
  br i1 %i.bn, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.21.i

.preheader6.21.i:                                 ; preds = %.preheader6.20.i
  %i.bo = getelementptr i8, ptr %i.b, i64 172536  ; 3 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !51 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, %1
  br i1 %i.bq, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.22.i

.preheader6.22.i:                                 ; preds = %.preheader6.21.i
  %i.br = getelementptr i8, ptr %i.b, i64 180752  ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !51 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, %1
  br i1 %i.bt, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.23.i

.preheader6.23.i:                                 ; preds = %.preheader6.22.i
  %i.bu = getelementptr i8, ptr %i.b, i64 188968  ; 3 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !51 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, %1
  br i1 %i.bw, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.24.i

.preheader6.24.i:                                 ; preds = %.preheader6.23.i
  %i.bx = getelementptr i8, ptr %i.b, i64 197184  ; 3 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !51 ; 2 uses
  %i.bz = icmp eq i64 %i.by, %1
  br i1 %i.bz, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.25.i

.preheader6.25.i:                                 ; preds = %.preheader6.24.i
  %i.ca = getelementptr i8, ptr %i.b, i64 205400  ; 3 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !51 ; 2 uses
  %i.cc = icmp eq i64 %i.cb, %1
  br i1 %i.cc, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.26.i

.preheader6.26.i:                                 ; preds = %.preheader6.25.i
  %i.cd = getelementptr i8, ptr %i.b, i64 213616  ; 3 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !51 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, %1
  br i1 %i.cf, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.27.i

.preheader6.27.i:                                 ; preds = %.preheader6.26.i
  %i.cg = getelementptr i8, ptr %i.b, i64 221832  ; 3 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !51 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, %1
  br i1 %i.ci, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.28.i

.preheader6.28.i:                                 ; preds = %.preheader6.27.i
  %i.cj = getelementptr i8, ptr %i.b, i64 230048  ; 3 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !51 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, %1
  br i1 %i.cl, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.29.i

.preheader6.29.i:                                 ; preds = %.preheader6.28.i
  %i.cm = getelementptr i8, ptr %i.b, i64 238264  ; 3 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !51 ; 2 uses
  %i.co = icmp eq i64 %i.cn, %1
  br i1 %i.co, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.30.i

.preheader6.30.i:                                 ; preds = %.preheader6.29.i
  %i.cp = getelementptr i8, ptr %i.b, i64 246480  ; 3 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !51 ; 2 uses
  %i.cr = icmp eq i64 %i.cq, %1
  br i1 %i.cr, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.31.i

.preheader6.31.i:                                 ; preds = %.preheader6.30.i
  %i.cs = getelementptr i8, ptr %i.b, i64 254696  ; 3 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !51 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, %1
  br i1 %i.cu, label %frame_cache_alloc_slot.exit.thread, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader6.31.i
  %i.cv = icmp eq i64 %i.e, 0
  br i1 %i.cv, label %frame_cache_alloc_slot.exit.thread, label %.preheader.1.i

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.cw = icmp eq i64 %i.h, 0
  br i1 %i.cw, label %frame_cache_alloc_slot.exit.thread, label %.preheader.2.i

.preheader.2.i:                                   ; preds = %.preheader.1.i
  %i.cx = icmp eq i64 %i.k, 0
  br i1 %i.cx, label %frame_cache_alloc_slot.exit.thread, label %.preheader.3.i

.preheader.3.i:                                   ; preds = %.preheader.2.i
  %i.cy = icmp eq i64 %i.n, 0
  br i1 %i.cy, label %frame_cache_alloc_slot.exit.thread, label %.preheader.4.i

.preheader.4.i:                                   ; preds = %.preheader.3.i
  %i.cz = icmp eq i64 %i.q, 0
  br i1 %i.cz, label %frame_cache_alloc_slot.exit.thread, label %.preheader.5.i

.preheader.5.i:                                   ; preds = %.preheader.4.i
  %i.da = icmp eq i64 %i.t, 0
  br i1 %i.da, label %frame_cache_alloc_slot.exit.thread, label %.preheader.6.i

.preheader.6.i:                                   ; preds = %.preheader.5.i
  %i.db = icmp eq i64 %i.w, 0
  br i1 %i.db, label %frame_cache_alloc_slot.exit.thread, label %.preheader.7.i

.preheader.7.i:                                   ; preds = %.preheader.6.i
  %i.dc = icmp eq i64 %i.z, 0
  br i1 %i.dc, label %frame_cache_alloc_slot.exit.thread, label %.preheader.8.i

.preheader.8.i:                                   ; preds = %.preheader.7.i
  %i.dd = icmp eq i64 %i.ac, 0
  br i1 %i.dd, label %frame_cache_alloc_slot.exit.thread, label %.preheader.9.i

.preheader.9.i:                                   ; preds = %.preheader.8.i
  %i.de = icmp eq i64 %i.af, 0
  br i1 %i.de, label %frame_cache_alloc_slot.exit.thread, label %.preheader.10.i

.preheader.10.i:                                  ; preds = %.preheader.9.i
  %i.df = icmp eq i64 %i.ai, 0
  br i1 %i.df, label %frame_cache_alloc_slot.exit.thread, label %.preheader.11.i

.preheader.11.i:                                  ; preds = %.preheader.10.i
  %i.dg = icmp eq i64 %i.al, 0
  br i1 %i.dg, label %frame_cache_alloc_slot.exit.thread, label %.preheader.12.i

.preheader.12.i:                                  ; preds = %.preheader.11.i
  %i.dh = icmp eq i64 %i.ao, 0
  br i1 %i.dh, label %frame_cache_alloc_slot.exit.thread, label %.preheader.13.i

.preheader.13.i:                                  ; preds = %.preheader.12.i
  %i.di = icmp eq i64 %i.ar, 0
  br i1 %i.di, label %frame_cache_alloc_slot.exit.thread, label %.preheader.14.i

.preheader.14.i:                                  ; preds = %.preheader.13.i
  %i.dj = icmp eq i64 %i.au, 0
  br i1 %i.dj, label %frame_cache_alloc_slot.exit.thread, label %.preheader.15.i

.preheader.15.i:                                  ; preds = %.preheader.14.i
  %i.dk = icmp eq i64 %i.ax, 0
  br i1 %i.dk, label %frame_cache_alloc_slot.exit.thread, label %.preheader.16.i

.preheader.16.i:                                  ; preds = %.preheader.15.i
  %i.dl = icmp eq i64 %i.ba, 0
  br i1 %i.dl, label %frame_cache_alloc_slot.exit.thread, label %.preheader.17.i

.preheader.17.i:                                  ; preds = %.preheader.16.i
  %i.dm = icmp eq i64 %i.bd, 0
  br i1 %i.dm, label %frame_cache_alloc_slot.exit.thread, label %.preheader.18.i

.preheader.18.i:                                  ; preds = %.preheader.17.i
  %i.dn = icmp eq i64 %i.bg, 0
  br i1 %i.dn, label %frame_cache_alloc_slot.exit.thread, label %.preheader.19.i

.preheader.19.i:                                  ; preds = %.preheader.18.i
  %i.do = icmp eq i64 %i.bj, 0
  br i1 %i.do, label %frame_cache_alloc_slot.exit.thread, label %.preheader.20.i

.preheader.20.i:                                  ; preds = %.preheader.19.i
  %i.dp = icmp eq i64 %i.bm, 0
  br i1 %i.dp, label %frame_cache_alloc_slot.exit.thread, label %.preheader.21.i

.preheader.21.i:                                  ; preds = %.preheader.20.i
  %i.dq = icmp eq i64 %i.bp, 0
  br i1 %i.dq, label %frame_cache_alloc_slot.exit.thread, label %.preheader.22.i

.preheader.22.i:                                  ; preds = %.preheader.21.i
  %i.dr = icmp eq i64 %i.bs, 0
  br i1 %i.dr, label %frame_cache_alloc_slot.exit.thread, label %.preheader.23.i

.preheader.23.i:                                  ; preds = %.preheader.22.i
  %i.ds = icmp eq i64 %i.bv, 0
  br i1 %i.ds, label %frame_cache_alloc_slot.exit.thread, label %.preheader.24.i

.preheader.24.i:                                  ; preds = %.preheader.23.i
  %i.dt = icmp eq i64 %i.by, 0
  br i1 %i.dt, label %frame_cache_alloc_slot.exit.thread, label %.preheader.25.i

.preheader.25.i:                                  ; preds = %.preheader.24.i
  %i.du = icmp eq i64 %i.cb, 0
  br i1 %i.du, label %frame_cache_alloc_slot.exit.thread, label %.preheader.26.i

.preheader.26.i:                                  ; preds = %.preheader.25.i
  %i.dv = icmp eq i64 %i.ce, 0
  br i1 %i.dv, label %frame_cache_alloc_slot.exit.thread, label %.preheader.27.i

.preheader.27.i:                                  ; preds = %.preheader.26.i
  %i.dw = icmp eq i64 %i.ch, 0
  br i1 %i.dw, label %frame_cache_alloc_slot.exit.thread, label %.preheader.28.i

.preheader.28.i:                                  ; preds = %.preheader.27.i
  %i.dx = icmp eq i64 %i.ck, 0
  br i1 %i.dx, label %frame_cache_alloc_slot.exit.thread, label %.preheader.29.i

.preheader.29.i:                                  ; preds = %.preheader.28.i
  %i.dy = icmp eq i64 %i.cn, 0
  br i1 %i.dy, label %frame_cache_alloc_slot.exit.thread, label %.preheader.30.i

.preheader.30.i:                                  ; preds = %.preheader.29.i
  %i.dz = icmp eq i64 %i.cq, 0
  br i1 %i.dz, label %frame_cache_alloc_slot.exit.thread, label %.preheader.31.i

.preheader.31.i:                                  ; preds = %.preheader.30.i
  %i.ea = icmp eq i64 %i.ct, 0
  br i1 %i.ea, label %frame_cache_alloc_slot.exit.thread, label %frame_cache_alloc_slot.exit.thread40

frame_cache_alloc_slot.exit.thread:               ; preds = %.preheader.30.i, %.preheader.29.i, %.preheader.28.i, %.preheader.27.i, %.preheader.26.i, %.preheader.25.i, %.preheader.24.i, %.preheader.23.i, %.preheader.22.i, %.preheader.21.i, %.preheader.20.i, %.preheader.19.i, %.preheader.18.i, %.preheader.17.i, %.preheader.16.i, %.preheader.15.i, %.preheader.14.i, %.preheader.13.i, %.preheader.12.i, %.preheader.11.i, %.preheader.10.i, %.preheader.9.i, %.preheader.8.i, %.preheader.7.i, %.preheader.6.i, %.preheader.5.i, %.preheader.4.i, %.preheader.3.i, %.preheader.2.i, %.preheader.1.i, %.preheader6.31.i, %.preheader6.30.i, %.preheader6.29.i, %.preheader6.28.i, %.preheader6.27.i, %.preheader6.26.i, %.preheader6.25.i, %.preheader6.24.i, %.preheader6.23.i, %.preheader6.22.i, %.preheader6.21.i, %.preheader6.20.i, %.preheader6.19.i, %.preheader6.18.i, %.preheader6.17.i, %.preheader6.16.i, %.preheader6.15.i, %.preheader6.14.i, %.preheader6.13.i, %.preheader6.12.i, %.preheader6.11.i, %.preheader6.10.i, %.preheader6.9.i, %.preheader6.8.i, %.preheader6.7.i, %.preheader6.6.i, %.preheader6.5.i, %.preheader6.4.i, %.preheader6.3.i, %.preheader6.2.i, %.preheader6.1.i, %.preheader.31.i, %.preheader6.preheader.i, %.preheader.preheader.i
  %.2.i39 = phi ptr [ %i.b, %.preheader6.preheader.i ], [ %i.b, %.preheader.preheader.i ], [ %i.az, %.preheader.16.i ], [ %i.cp, %.preheader6.30.i ], [ %i.cm, %.preheader6.29.i ], [ %i.cs, %.preheader6.31.i ], [ %i.g, %.preheader.1.i ], [ %i.cj, %.preheader6.28.i ], [ %i.j, %.preheader.2.i ], [ %i.bl, %.preheader.20.i ], [ %i.m, %.preheader.3.i ], [ %i.cp, %.preheader.30.i ], [ %i.p, %.preheader.4.i ], [ %i.bc, %.preheader.17.i ], [ %i.s, %.preheader.5.i ], [ %i.cm, %.preheader.29.i ], [ %i.v, %.preheader.6.i ], [ %i.bu, %.preheader.23.i ], [ %i.y, %.preheader.7.i ], [ %i.cj, %.preheader.28.i ], [ %i.ab, %.preheader.8.i ], [ %i.bf, %.preheader.18.i ], [ %i.ae, %.preheader.9.i ], [ %i.cg, %.preheader.27.i ], [ %i.ah, %.preheader.10.i ], [ %i.bo, %.preheader.21.i ], [ %i.ak, %.preheader.11.i ], [ %i.cd, %.preheader.26.i ], [ %i.an, %.preheader.12.i ], [ %i.bi, %.preheader.19.i ], [ %i.aq, %.preheader.13.i ], [ %i.ca, %.preheader.25.i ], [ %i.at, %.preheader.14.i ], [ %i.br, %.preheader.22.i ], [ %i.aw, %.preheader.15.i ], [ %i.bx, %.preheader.24.i ], [ %i.cg, %.preheader6.27.i ], [ %i.g, %.preheader6.1.i ], [ %i.j, %.preheader6.2.i ], [ %i.m, %.preheader6.3.i ], [ %i.p, %.preheader6.4.i ], [ %i.s, %.preheader6.5.i ], [ %i.v, %.preheader6.6.i ], [ %i.y, %.preheader6.7.i ], [ %i.ab, %.preheader6.8.i ], [ %i.ae, %.preheader6.9.i ], [ %i.ah, %.preheader6.10.i ], [ %i.ak, %.preheader6.11.i ], [ %i.an, %.preheader6.12.i ], [ %i.aq, %.preheader6.13.i ], [ %i.at, %.preheader6.14.i ], [ %i.aw, %.preheader6.15.i ], [ %i.az, %.preheader6.16.i ], [ %i.bc, %.preheader6.17.i ], [ %i.bf, %.preheader6.18.i ], [ %i.bi, %.preheader6.19.i ], [ %i.bl, %.preheader6.20.i ], [ %i.bo, %.preheader6.21.i ], [ %i.br, %.preheader6.22.i ], [ %i.bu, %.preheader6.23.i ], [ %i.bx, %.preheader6.24.i ], [ %i.ca, %.preheader6.25.i ], [ %i.cd, %.preheader6.26.i ], [ %i.cs, %.preheader.31.i ] ; 4 uses
  %i.eb = getelementptr i8, ptr %.2.i39, i64 8208 ; 3 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !46 ; 4 uses
  %.not33 = icmp eq ptr %i.ec, null
  br i1 %.not33, label %Py_DECREF.exit, label %bb.c

bb.c:                                             ; preds = %frame_cache_alloc_slot.exit.thread
  store ptr null, ptr %i.eb, align 8, !tbaa !46
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !48 ; 2 uses
  %.not.i = icmp sgt i32 %i.ed, -1
  br i1 %.not.i, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  %i.ee = add nsw i32 %i.ed, -1                   ; 2 uses
  store i32 %i.ee, ptr %i.ec, align 8, !tbaa !48
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %bb.e, label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ec) #5
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.e, %bb.d, %bb.c, %frame_cache_alloc_slot.exit.thread
  %i.eg = getelementptr i8, ptr %2, i64 16
  %.val = load i64, ptr %i.eg, align 8, !tbaa !62
  %i.eh = tail call ptr @PyList_GetSlice(ptr noundef %2, i64 noundef 0, i64 noundef %.val) #5 ; 2 uses
  store ptr %i.eh, ptr %i.eb, align 8, !tbaa !75
  %.not34 = icmp eq ptr %i.eh, null
  br i1 %.not34, label %frame_cache_alloc_slot.exit.thread40, label %bb.f

bb.f:                                             ; preds = %Py_DECREF.exit
  store i64 %1, ptr %.2.i39, align 8, !tbaa !51
  %i.ei = getelementptr i8, ptr %.2.i39, i64 8
  %i.ej = shl i64 %spec.store.select, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ei, ptr align 8 %3, i64 %i.ej, i1 false)
  %i.ek = getelementptr i8, ptr %.2.i39, i64 8200
  store i64 %spec.store.select, ptr %i.ek, align 8, !tbaa !64
  br label %frame_cache_alloc_slot.exit.thread40

frame_cache_alloc_slot.exit.thread40:             ; preds = %.preheader.31.i, %Py_DECREF.exit, %bb.f, %bb.b, %bb.a
  %.2 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %.preheader.31.i ], [ 1, %bb.f ], [ -1, %Py_DECREF.exit ]
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !14, i64 33824}
!11 = !{!"", !12, i64 0, !15, i64 16, !16, i64 32800, !17, i64 32808, !7, i64 33632, !38, i64 33640, !16, i64 33744, !16, i64 33752, !16, i64 33760, !42, i64 33768, !7, i64 33776, !7, i64 33780, !7, i64 33784, !7, i64 33788, !7, i64 33792, !7, i64 33796, !7, i64 33800, !7, i64 33804, !7, i64 33808, !7, i64 33812, !14, i64 33816, !14, i64 33824, !43, i64 33832, !44, i64 33920, !7, i64 33936, !45, i64 33944, !16, i64 33952}
!12 = !{!"_object", !8, i64 0, !13, i64 8}
!13 = !{!"p1 _ZTS11_typeobject", !14, i64 0}
!14 = !{!"any pointer", !8, i64 0}
!15 = !{!"", !7, i64 0, !7, i64 4, !8, i64 8, !16, i64 32776}
!16 = !{!"long", !8, i64 0}
!17 = !{!"_Py_DebugOffsets", !8, i64 0, !16, i64 8, !16, i64 16, !18, i64 24, !19, i64 48, !20, i64 176, !21, i64 296, !22, i64 304, !23, i64 368, !24, i64 456, !25, i64 472, !26, i64 504, !27, i64 528, !28, i64 552, !29, i64 584, !30, i64 608, !31, i64 624, !32, i64 648, !33, i64 672, !34, i64 704, !35, i64 728, !36, i64 760, !37, i64 776}
!18 = !{!"_runtime_state", !16, i64 0, !16, i64 8, !16, i64 16}
!19 = !{!"_interpreter_state", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !16, i64 96, !16, i64 104, !16, i64 112, !16, i64 120}
!20 = !{!"_thread_state", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !16, i64 96, !16, i64 104, !16, i64 112}
!21 = !{!"", !16, i64 0}
!22 = !{!"_interpreter_frame", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56}
!23 = !{!"_code_object", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80}
!24 = !{!"_pyobject", !16, i64 0, !16, i64 8}
!25 = !{!"_type_object", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24}
!26 = !{!"_tuple_object", !16, i64 0, !16, i64 8, !16, i64 16}
!27 = !{!"_list_object", !16, i64 0, !16, i64 8, !16, i64 16}
!28 = !{!"_set_object", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24}
!29 = !{!"_dict_object", !16, i64 0, !16, i64 8, !16, i64 16}
!30 = !{!"_float_object", !16, i64 0, !16, i64 8}
!31 = !{!"_long_object", !16, i64 0, !16, i64 8, !16, i64 16}
!32 = !{!"_bytes_object", !16, i64 0, !16, i64 8, !16, i64 16}
!33 = !{!"_unicode_object", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24}
!34 = !{!"_gc", !16, i64 0, !16, i64 8, !16, i64 16}
!35 = !{!"_gen_object", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24}
!36 = !{!"_llist_node", !16, i64 0, !16, i64 8}
!37 = !{!"_debugger_support", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40}
!38 = !{!"_Py_AsyncioModuleDebugOffsets", !39, i64 0, !40, i64 56, !41, i64 72}
!39 = !{!"_asyncio_task_object", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48}
!40 = !{!"_asyncio_interpreter_state", !16, i64 0, !16, i64 8}
!41 = !{!"_asyncio_thread_state", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24}
!42 = !{!"p1 _ZTS15_Py_hashtable_t", !14, i64 0}
!43 = !{!"", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80}
!44 = !{!"", !45, i64 0, !16, i64 8}
!45 = !{!"p1 int", !14, i64 0}
!46 = !{!47, !47, i64 0}
!47 = !{!"p1 _ZTS7_object", !14, i64 0}
!48 = !{!8, !8, i64 0}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!52, !16, i64 0}
!52 = !{!"", !16, i64 0, !8, i64 8, !16, i64 8200, !47, i64 8208}
!53 = !{!12, !13, i64 8}
!54 = !{!55, !16, i64 168}
!55 = !{!"_typeobject", !56, i64 0, !57, i64 24, !16, i64 32, !16, i64 40, !14, i64 48, !16, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !14, i64 152, !14, i64 160, !16, i64 168, !57, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !16, i64 208, !14, i64 216, !14, i64 224, !58, i64 232, !59, i64 240, !60, i64 248, !13, i64 256, !47, i64 264, !14, i64 272, !14, i64 280, !16, i64 288, !14, i64 296, !14, i64 304, !14, i64 312, !14, i64 320, !14, i64 328, !47, i64 336, !47, i64 344, !47, i64 352, !14, i64 360, !47, i64 368, !14, i64 376, !7, i64 384, !14, i64 392, !14, i64 400, !8, i64 408, !61, i64 410}
!56 = !{!"PyVarObject", !12, i64 0, !16, i64 16}
!57 = !{!"p1 omnipotent char", !14, i64 0}
!58 = !{!"p1 _ZTS11PyMethodDef", !14, i64 0}
!59 = !{!"p1 _ZTS11PyMemberDef", !14, i64 0}
!60 = !{!"p1 _ZTS11PyGetSetDef", !14, i64 0}
!61 = !{!"short", !8, i64 0}
!62 = !{!56, !16, i64 16}
!63 = distinct !{!63, !50}
!64 = !{!52, !16, i64 8200}
!65 = !{!11, !7, i64 33808}
!66 = !{!11, !16, i64 33912}
!67 = !{!16, !16, i64 0}
!68 = distinct !{!68, !50}
!69 = !{!70, !71, i64 24}
!70 = !{!"", !56, i64 0, !71, i64 24, !16, i64 32}
!71 = !{!"p2 _ZTS7_object", !72, i64 0}
!72 = !{!"any p2 pointer", !14, i64 0}
!73 = distinct !{!73, !50}
!74 = distinct !{!74, !50}
!75 = !{!52, !47, i64 8208}
!76 = distinct !{!76, !50}
!77 = distinct !{!77, !50}
end_hunk_0
