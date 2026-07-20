inline.NumInlined: 6
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 0, 2) i32 @utf8_range_IsValid(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %utf8_range_Validate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 6 uses
  %i.c = ptrtoint ptr %i.b to i64                 ; 5 uses
  %i.d = icmp sgt i64 %1, 7
  br i1 %i.d, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.011.i = phi ptr [ %i.g, %bb.c ], [ %0, %bb.b ] ; 3 uses
  %.0.copyload.i.i = load i64, ptr %.011.i, align 1
  %i.e = and i64 %.0.copyload.i.i, -9187201950435737472
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 3 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.c, %i.h
  %i.j = icmp sgt i64 %i.i, 7
  br i1 %i.j, label %.lr.ph.i, label %.critedge.i, !llvm.loop !7

.critedge.i:                                      ; preds = %bb.c, %.lr.ph.i, %bb.b
  %.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %.011.i, %.lr.ph.i ], [ %i.g, %bb.c ] ; 5 uses
  %i.k = icmp ult ptr %.0.lcssa.i, %i.b
  br i1 %i.k, label %.lr.ph15.preheader.i, label %utf8_range_SkipAscii.exit

.lr.ph15.preheader.i:                             ; preds = %.critedge.i
  %.0.lcssa19.i = ptrtoaddr ptr %.0.lcssa.i to i64
  %i.l = sub i64 %i.c, %.0.lcssa19.i
  %scevgep.i = getelementptr i8, ptr %.0.lcssa.i, i64 %i.l
  br label %.lr.ph15.i

.lr.ph15.i:                                       ; preds = %bb.d, %.lr.ph15.preheader.i
  %.114.i = phi ptr [ %i.o, %bb.d ], [ %.0.lcssa.i, %.lr.ph15.preheader.i ] ; 3 uses
  %i.m = load i8, ptr %.114.i, align 1, !tbaa !9
  %i.n = icmp slt i8 %i.m, 0
  br i1 %i.n, label %utf8_range_SkipAscii.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph15.i
  %i.o = getelementptr inbounds nuw i8, ptr %.114.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.o, %i.b
  br i1 %exitcond.not.i, label %utf8_range_SkipAscii.exit, label %.lr.ph15.i, !llvm.loop !10

utf8_range_SkipAscii.exit:                        ; preds = %.lr.ph15.i, %bb.d, %.critedge.i
  %.1.lcssa.i = phi ptr [ %.0.lcssa.i, %.critedge.i ], [ %.114.i, %.lr.ph15.i ], [ %scevgep.i, %bb.d ] ; 4 uses
  %i.p = ptrtoint ptr %.1.lcssa.i to i64
  %i.q = sub i64 %i.c, %i.p
  %i.r = icmp slt i64 %i.q, 16
  %i.s = icmp ult ptr %.1.lcssa.i, %i.b           ; 2 uses
  br i1 %i.r, label %bb.e, label %bb.q

bb.e:                                             ; preds = %utf8_range_SkipAscii.exit
  br i1 %i.s, label %.lr.ph.i1, label %utf8_range_Validate.exit

.lr.ph.i1:                                        ; preds = %bb.e, %.thread119.i
  %i.t = phi ptr [ %i.az, %.thread119.i ], [ %.1.lcssa.i, %bb.e ] ; 7 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.c, %i.u                       ; 3 uses
  %i.w = load i8, ptr %i.t, align 1, !tbaa !9     ; 9 uses
  %i.x = icmp slt i8 %i.w, 0
  br i1 %i.x, label %bb.f, label %.thread119.i, !llvm.loop !11

bb.f:                                             ; preds = %.lr.ph.i1
  %i.y = icmp ugt i64 %i.v, 1
  %i.z = add nsw i8 %i.w, 62
  %i.aa = icmp ult i8 %i.z, 30
  %or.cond7.i = and i1 %i.y, %i.aa
  br i1 %or.cond7.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !9
  %i.ad = icmp sgt i8 %i.ac, -65
  br i1 %i.ad, label %bb.h, label %.thread119.i, !llvm.loop !11

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ae = icmp ugt i64 %i.v, 2
  br i1 %i.ae, label %bb.i, label %utf8_range_Validate.exit

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !9   ; 5 uses
  %i.ah = icmp sgt i8 %i.ag, -65
  br i1 %i.ah, label %utf8_range_Validate.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !9
  %i.ak = icmp sgt i8 %i.aj, -65
  br i1 %i.ak, label %utf8_range_Validate.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = icmp eq i8 %i.w, -32
  %i.am = icmp samesign ugt i8 %i.ag, -97
  %or.cond10.i = and i1 %i.al, %i.am
  %i.an = add nsw i8 %i.w, 31
  %or.cond13.i = icmp ult i8 %i.an, 12
  %or.cond.i = or i1 %or.cond13.i, %or.cond10.i
  br i1 %or.cond.i, label %.thread119.i, label %bb.l, !llvm.loop !11

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp eq i8 %i.w, -19
  %i.ap = icmp samesign ult i8 %i.ag, -96
  %or.cond16.i = and i1 %i.ao, %i.ap
  %i.aq = and i8 %i.w, -2
  %or.cond19.i = icmp eq i8 %i.aq, -18
  %or.cond100.i = or i1 %or.cond19.i, %or.cond16.i
  br i1 %or.cond100.i, label %.thread119.i, label %bb.m, !llvm.loop !11

bb.m:                                             ; preds = %bb.l
  %.not98.i = icmp eq i64 %i.v, 3
  br i1 %.not98.i, label %utf8_range_Validate.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !9
  %i.at = icmp sgt i8 %i.as, -65
  br i1 %i.at, label %utf8_range_Validate.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = icmp eq i8 %i.w, -16
  %i.av = icmp samesign ugt i8 %i.ag, -113
  %or.cond22.i = and i1 %i.au, %i.av
  %i.aw = add nsw i8 %i.w, 15
  %or.cond25.i = icmp ult i8 %i.aw, 3
  %or.cond101.i = or i1 %or.cond25.i, %or.cond22.i
  br i1 %or.cond101.i, label %.thread119.i, label %bb.p, !llvm.loop !11

bb.p:                                             ; preds = %bb.o
  %i.ax = icmp eq i8 %i.w, -12
  %i.ay = icmp samesign ult i8 %i.ag, -112
  %or.cond28.i = and i1 %i.ax, %i.ay
  br i1 %or.cond28.i, label %.thread119.i, label %utf8_range_Validate.exit, !llvm.loop !11

.thread119.i:                                     ; preds = %bb.p, %bb.o, %bb.l, %bb.k, %bb.g, %.lr.ph.i1
  %.589.i = phi i64 [ 2, %bb.g ], [ 1, %.lr.ph.i1 ], [ 4, %bb.p ], [ 3, %bb.k ], [ 4, %bb.o ], [ 3, %bb.l ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.t, i64 %.589.i ; 2 uses
  %i.ba = icmp ult ptr %i.az, %i.b
  br i1 %i.ba, label %.lr.ph.i1, label %utf8_range_Validate.exit

bb.q:                                             ; preds = %utf8_range_SkipAscii.exit
  br i1 %i.s, label %.lr.ph.i6, label %utf8_range_Validate.exit

.lr.ph.i6:                                        ; preds = %bb.q, %.thread119.i9
  %i.bb = phi ptr [ %i.ch, %.thread119.i9 ], [ %.1.lcssa.i, %bb.q ] ; 7 uses
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.c, %i.bc                     ; 3 uses
  %i.be = load i8, ptr %i.bb, align 1, !tbaa !9   ; 9 uses
  %i.bf = icmp slt i8 %i.be, 0
  br i1 %i.bf, label %bb.r, label %.thread119.i9, !llvm.loop !11

bb.r:                                             ; preds = %.lr.ph.i6
  %i.bg = icmp ugt i64 %i.bd, 1
  %i.bh = add nsw i8 %i.be, 62
  %i.bi = icmp ult i8 %i.bh, 30
  %or.cond7.i11 = and i1 %i.bg, %i.bi
  br i1 %or.cond7.i11, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !9
  %i.bl = icmp sgt i8 %i.bk, -65
  br i1 %i.bl, label %bb.t, label %.thread119.i9, !llvm.loop !11

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bm = icmp ugt i64 %i.bd, 2
  br i1 %i.bm, label %bb.u, label %utf8_range_Validate.exit

bb.u:                                             ; preds = %bb.t
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !9   ; 5 uses
  %i.bp = icmp sgt i8 %i.bo, -65
  br i1 %i.bp, label %utf8_range_Validate.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !9
  %i.bs = icmp sgt i8 %i.br, -65
  br i1 %i.bs, label %utf8_range_Validate.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bt = icmp eq i8 %i.be, -32
  %i.bu = icmp samesign ugt i8 %i.bo, -97
  %or.cond10.i12 = and i1 %i.bt, %i.bu
  %i.bv = add nsw i8 %i.be, 31
  %or.cond13.i13 = icmp ult i8 %i.bv, 12
  %or.cond.i14 = or i1 %or.cond13.i13, %or.cond10.i12
  br i1 %or.cond.i14, label %.thread119.i9, label %bb.x, !llvm.loop !11

bb.x:                                             ; preds = %bb.w
  %i.bw = icmp eq i8 %i.be, -19
  %i.bx = icmp samesign ult i8 %i.bo, -96
  %or.cond16.i15 = and i1 %i.bw, %i.bx
  %i.by = and i8 %i.be, -2
  %or.cond19.i16 = icmp eq i8 %i.by, -18
  %or.cond100.i17 = or i1 %or.cond19.i16, %or.cond16.i15
  br i1 %or.cond100.i17, label %.thread119.i9, label %bb.y, !llvm.loop !11

bb.y:                                             ; preds = %bb.x
  %.not98.i18 = icmp eq i64 %i.bd, 3
  br i1 %.not98.i18, label %utf8_range_Validate.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bb, i64 3
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !9
  %i.cb = icmp sgt i8 %i.ca, -65
  br i1 %i.cb, label %utf8_range_Validate.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cc = icmp eq i8 %i.be, -16
  %i.cd = icmp samesign ugt i8 %i.bo, -113
  %or.cond22.i19 = and i1 %i.cc, %i.cd
  %i.ce = add nsw i8 %i.be, 15
  %or.cond25.i20 = icmp ult i8 %i.ce, 3
  %or.cond101.i21 = or i1 %or.cond25.i20, %or.cond22.i19
  br i1 %or.cond101.i21, label %.thread119.i9, label %bb.ab, !llvm.loop !11

bb.ab:                                            ; preds = %bb.aa
  %i.cf = icmp eq i8 %i.be, -12
  %i.cg = icmp samesign ult i8 %i.bo, -112
  %or.cond28.i22 = and i1 %i.cf, %i.cg
  br i1 %or.cond28.i22, label %.thread119.i9, label %utf8_range_Validate.exit, !llvm.loop !11

.thread119.i9:                                    ; preds = %bb.ab, %bb.aa, %bb.x, %bb.w, %bb.s, %.lr.ph.i6
  %.589.i10 = phi i64 [ 2, %bb.s ], [ 1, %.lr.ph.i6 ], [ 4, %bb.ab ], [ 3, %bb.w ], [ 4, %bb.aa ], [ 3, %bb.x ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.589.i10 ; 2 uses
  %i.ci = icmp ult ptr %i.ch, %i.b
  br i1 %i.ci, label %.lr.ph.i6, label %utf8_range_Validate.exit

utf8_range_Validate.exit:                         ; preds = %bb.ab, %bb.z, %bb.y, %bb.v, %bb.u, %bb.t, %.thread119.i9, %bb.p, %bb.n, %bb.m, %bb.j, %bb.i, %bb.h, %.thread119.i, %bb.q, %bb.e, %bb.a
  %i.cj = phi i32 [ 1, %bb.e ], [ 1, %bb.a ], [ 1, %bb.q ], [ 0, %bb.p ], [ 1, %.thread119.i ], [ 0, %bb.m ], [ 0, %bb.j ], [ 0, %bb.n ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.ab ], [ 1, %.thread119.i9 ], [ 0, %bb.y ], [ 0, %bb.v ], [ 0, %bb.z ], [ 0, %bb.u ], [ 0, %bb.t ]
  ret i32 %i.cj
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i64 @utf8_range_ValidPrefix(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %utf8_range_Validate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 6 uses
  %i.c = ptrtoint ptr %i.b to i64                 ; 5 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = icmp sgt i64 %1, 7
  br i1 %i.e, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.011.i = phi ptr [ %i.h, %bb.c ], [ %0, %bb.b ] ; 3 uses
  %.0.copyload.i.i = load i64, ptr %.011.i, align 1
  %i.f = and i64 %.0.copyload.i.i, -9187201950435737472
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 3 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.c, %i.i
  %i.k = icmp sgt i64 %i.j, 7
  br i1 %i.k, label %.lr.ph.i, label %.critedge.i, !llvm.loop !7

.critedge.i:                                      ; preds = %bb.c, %.lr.ph.i, %bb.b
  %.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %.011.i, %.lr.ph.i ], [ %i.h, %bb.c ] ; 5 uses
  %i.l = icmp ult ptr %.0.lcssa.i, %i.b
  br i1 %i.l, label %.lr.ph15.preheader.i, label %utf8_range_SkipAscii.exit

.lr.ph15.preheader.i:                             ; preds = %.critedge.i
  %.0.lcssa19.i = ptrtoaddr ptr %.0.lcssa.i to i64
  %i.m = sub i64 %i.c, %.0.lcssa19.i
  %scevgep.i = getelementptr i8, ptr %.0.lcssa.i, i64 %i.m
  br label %.lr.ph15.i

.lr.ph15.i:                                       ; preds = %bb.d, %.lr.ph15.preheader.i
  %.114.i = phi ptr [ %i.p, %bb.d ], [ %.0.lcssa.i, %.lr.ph15.preheader.i ] ; 3 uses
  %i.n = load i8, ptr %.114.i, align 1, !tbaa !9
  %i.o = icmp slt i8 %i.n, 0
  br i1 %i.o, label %utf8_range_SkipAscii.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph15.i
  %i.p = getelementptr inbounds nuw i8, ptr %.114.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.p, %i.b
  br i1 %exitcond.not.i, label %utf8_range_SkipAscii.exit, label %.lr.ph15.i, !llvm.loop !10

utf8_range_SkipAscii.exit:                        ; preds = %.lr.ph15.i, %bb.d, %.critedge.i
  %.1.lcssa.i = phi ptr [ %.0.lcssa.i, %.critedge.i ], [ %.114.i, %.lr.ph15.i ], [ %scevgep.i, %bb.d ] ; 4 uses
  %i.q = ptrtoint ptr %.1.lcssa.i to i64          ; 2 uses
  %i.r = sub i64 %i.c, %i.q
  %i.s = icmp slt i64 %i.r, 16
  %i.t = sub i64 %i.q, %i.d                       ; 2 uses
  %i.u = icmp ult ptr %.1.lcssa.i, %i.b           ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.q

bb.e:                                             ; preds = %utf8_range_SkipAscii.exit
  br i1 %i.u, label %.lr.ph.i1, label %utf8_range_ValidateUTF8Naive.exit

.lr.ph.i1:                                        ; preds = %bb.e, %.thread119.i
  %i.v = phi ptr [ %i.bb, %.thread119.i ], [ %.1.lcssa.i, %bb.e ] ; 7 uses
  %.078132.i = phi i64 [ %spec.select.i, %.thread119.i ], [ 0, %bb.e ]
  %.084131.i = phi i64 [ %.589.i, %.thread119.i ], [ 0, %bb.e ]
  %spec.select.i = add i64 %.084131.i, %.078132.i ; 8 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.c, %i.w                       ; 3 uses
  %i.y = load i8, ptr %i.v, align 1, !tbaa !9     ; 9 uses
  %i.z = icmp slt i8 %i.y, 0
  br i1 %i.z, label %bb.f, label %.thread119.i, !llvm.loop !11

bb.f:                                             ; preds = %.lr.ph.i1
  %i.aa = icmp ugt i64 %i.x, 1
  %i.ab = add nsw i8 %i.y, 62
  %i.ac = icmp ult i8 %i.ab, 30
  %or.cond7.i = and i1 %i.aa, %i.ac
  br i1 %or.cond7.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !9
  %i.af = icmp sgt i8 %i.ae, -65
  br i1 %i.af, label %bb.h, label %.thread119.i, !llvm.loop !11

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ag = icmp ugt i64 %i.x, 2
  br i1 %i.ag, label %bb.i, label %utf8_range_ValidateUTF8Naive.exit

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !9   ; 5 uses
  %i.aj = icmp sgt i8 %i.ai, -65
  br i1 %i.aj, label %utf8_range_ValidateUTF8Naive.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !9
  %i.am = icmp sgt i8 %i.al, -65
  br i1 %i.am, label %utf8_range_ValidateUTF8Naive.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = icmp eq i8 %i.y, -32
  %i.ao = icmp samesign ugt i8 %i.ai, -97
  %or.cond10.i = and i1 %i.an, %i.ao
  %i.ap = add nsw i8 %i.y, 31
  %or.cond13.i = icmp ult i8 %i.ap, 12
  %or.cond.i = or i1 %or.cond13.i, %or.cond10.i
  br i1 %or.cond.i, label %.thread119.i, label %bb.l, !llvm.loop !11

bb.l:                                             ; preds = %bb.k
  %i.aq = icmp eq i8 %i.y, -19
  %i.ar = icmp samesign ult i8 %i.ai, -96
  %or.cond16.i = and i1 %i.aq, %i.ar
  %i.as = and i8 %i.y, -2
  %or.cond19.i = icmp eq i8 %i.as, -18
  %or.cond100.i = or i1 %or.cond19.i, %or.cond16.i
  br i1 %or.cond100.i, label %.thread119.i, label %bb.m, !llvm.loop !11

bb.m:                                             ; preds = %bb.l
  %.not98.i = icmp eq i64 %i.x, 3
  br i1 %.not98.i, label %utf8_range_ValidateUTF8Naive.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %i.v, i64 3
  %i.au = load i8, ptr %i.at, align 1, !tbaa !9
  %i.av = icmp sgt i8 %i.au, -65
  br i1 %i.av, label %utf8_range_ValidateUTF8Naive.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = icmp eq i8 %i.y, -16
  %i.ax = icmp samesign ugt i8 %i.ai, -113
  %or.cond22.i = and i1 %i.aw, %i.ax
  %i.ay = add nsw i8 %i.y, 15
  %or.cond25.i = icmp ult i8 %i.ay, 3
  %or.cond101.i = or i1 %or.cond25.i, %or.cond22.i
  br i1 %or.cond101.i, label %.thread119.i, label %bb.p, !llvm.loop !11

bb.p:                                             ; preds = %bb.o
  %i.az = icmp eq i8 %i.y, -12
  %i.ba = icmp samesign ult i8 %i.ai, -112
  %or.cond28.i = and i1 %i.az, %i.ba
  br i1 %or.cond28.i, label %.thread119.i, label %utf8_range_ValidateUTF8Naive.exit, !llvm.loop !11

.thread119.i:                                     ; preds = %bb.p, %bb.o, %bb.l, %bb.k, %bb.g, %.lr.ph.i1
  %.589.i = phi i64 [ 2, %bb.g ], [ 1, %.lr.ph.i1 ], [ 4, %bb.p ], [ 3, %bb.k ], [ 4, %bb.o ], [ 3, %bb.l ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.v, i64 %.589.i ; 2 uses
  %i.bc = icmp ult ptr %i.bb, %i.b
  br i1 %i.bc, label %.lr.ph.i1, label %._crit_edge.i.loopexit

._crit_edge.i.loopexit:                           ; preds = %.thread119.i
  %i.bd = add i64 %spec.select.i, %.589.i
  br label %utf8_range_ValidateUTF8Naive.exit

utf8_range_ValidateUTF8Naive.exit:                ; preds = %bb.h, %bb.i, %bb.j, %bb.m, %bb.n, %bb.p, %bb.e, %._crit_edge.i.loopexit
  %.5.i = phi i64 [ %i.bd, %._crit_edge.i.loopexit ], [ 0, %bb.e ], [ %spec.select.i, %bb.p ], [ %spec.select.i, %bb.n ], [ %spec.select.i, %bb.m ], [ %spec.select.i, %bb.j ], [ %spec.select.i, %bb.i ], [ %spec.select.i, %bb.h ]
  %i.be = add i64 %i.t, %.5.i
  br label %utf8_range_Validate.exit

bb.q:                                             ; preds = %utf8_range_SkipAscii.exit
  br i1 %i.u, label %.lr.ph.i6, label %utf8_range_ValidateUTF8Naive.exit24

.lr.ph.i6:                                        ; preds = %bb.q, %.thread119.i10
  %i.bf = phi ptr [ %i.cl, %.thread119.i10 ], [ %.1.lcssa.i, %bb.q ] ; 7 uses
  %.078132.i7 = phi i64 [ %spec.select.i9, %.thread119.i10 ], [ 0, %bb.q ]
  %.084131.i8 = phi i64 [ %.589.i11, %.thread119.i10 ], [ 0, %bb.q ]
  %spec.select.i9 = add i64 %.084131.i8, %.078132.i7 ; 8 uses
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.c, %i.bg                     ; 3 uses
  %i.bi = load i8, ptr %i.bf, align 1, !tbaa !9   ; 9 uses
  %i.bj = icmp slt i8 %i.bi, 0
  br i1 %i.bj, label %bb.r, label %.thread119.i10, !llvm.loop !11

bb.r:                                             ; preds = %.lr.ph.i6
  %i.bk = icmp ugt i64 %i.bh, 1
  %i.bl = add nsw i8 %i.bi, 62
  %i.bm = icmp ult i8 %i.bl, 30
  %or.cond7.i12 = and i1 %i.bk, %i.bm
  br i1 %or.cond7.i12, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !9
  %i.bp = icmp sgt i8 %i.bo, -65
  br i1 %i.bp, label %bb.t, label %.thread119.i10, !llvm.loop !11

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bq = icmp ugt i64 %i.bh, 2
  br i1 %i.bq, label %bb.u, label %utf8_range_ValidateUTF8Naive.exit24

bb.u:                                             ; preds = %bb.t
  %i.br = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !9   ; 5 uses
  %i.bt = icmp sgt i8 %i.bs, -65
  br i1 %i.bt, label %utf8_range_ValidateUTF8Naive.exit24, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !9
  %i.bw = icmp sgt i8 %i.bv, -65
  br i1 %i.bw, label %utf8_range_ValidateUTF8Naive.exit24, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bx = icmp eq i8 %i.bi, -32
  %i.by = icmp samesign ugt i8 %i.bs, -97
  %or.cond10.i13 = and i1 %i.bx, %i.by
  %i.bz = add nsw i8 %i.bi, 31
  %or.cond13.i14 = icmp ult i8 %i.bz, 12
  %or.cond.i15 = or i1 %or.cond13.i14, %or.cond10.i13
  br i1 %or.cond.i15, label %.thread119.i10, label %bb.x, !llvm.loop !11

bb.x:                                             ; preds = %bb.w
  %i.ca = icmp eq i8 %i.bi, -19
  %i.cb = icmp samesign ult i8 %i.bs, -96
  %or.cond16.i16 = and i1 %i.ca, %i.cb
  %i.cc = and i8 %i.bi, -2
  %or.cond19.i17 = icmp eq i8 %i.cc, -18
  %or.cond100.i18 = or i1 %or.cond19.i17, %or.cond16.i16
  br i1 %or.cond100.i18, label %.thread119.i10, label %bb.y, !llvm.loop !11

bb.y:                                             ; preds = %bb.x
  %.not98.i19 = icmp eq i64 %i.bh, 3
  br i1 %.not98.i19, label %utf8_range_ValidateUTF8Naive.exit24, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bf, i64 3
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !9
  %i.cf = icmp sgt i8 %i.ce, -65
  br i1 %i.cf, label %utf8_range_ValidateUTF8Naive.exit24, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cg = icmp eq i8 %i.bi, -16
  %i.ch = icmp samesign ugt i8 %i.bs, -113
  %or.cond22.i20 = and i1 %i.cg, %i.ch
  %i.ci = add nsw i8 %i.bi, 15
  %or.cond25.i21 = icmp ult i8 %i.ci, 3
  %or.cond101.i22 = or i1 %or.cond25.i21, %or.cond22.i20
  br i1 %or.cond101.i22, label %.thread119.i10, label %bb.ab, !llvm.loop !11

bb.ab:                                            ; preds = %bb.aa
  %i.cj = icmp eq i8 %i.bi, -12
  %i.ck = icmp samesign ult i8 %i.bs, -112
  %or.cond28.i23 = and i1 %i.cj, %i.ck
  br i1 %or.cond28.i23, label %.thread119.i10, label %utf8_range_ValidateUTF8Naive.exit24, !llvm.loop !11

.thread119.i10:                                   ; preds = %bb.ab, %bb.aa, %bb.x, %bb.w, %bb.s, %.lr.ph.i6
  %.589.i11 = phi i64 [ 2, %bb.s ], [ 1, %.lr.ph.i6 ], [ 4, %bb.ab ], [ 3, %bb.w ], [ 4, %bb.aa ], [ 3, %bb.x ] ; 3 uses
end_hunk_0
