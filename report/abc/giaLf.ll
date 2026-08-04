inline.NumInlined: 854
inline.NumDeleted: 177
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 27
begin_hunk_0_@Lf_ManSetCutRefs:bb.a
  %.val41 = load i32, ptr %i.a, align 4, !tbaa !158
  %i.b = shl nsw i32 %.val41, 12                  ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 52
  %.val39 = load i32, ptr %i.c, align 4, !tbaa !54 ; 2 uses
  %.not = icmp eq i32 %i.b, %.val39
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sub nsw i32 %i.b, %.val39
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.d) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !8      ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !44   ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.f, i64 32
  %.val37 = load ptr, ptr %i.j, align 8, !tbaa !25 ; 4 uses
  %.not27 = icmp eq ptr %.val37, null
  %i.k = getelementptr i8, ptr %i.f, i64 40
  %i.l = getelementptr i8, ptr %i.f, i64 208
  br i1 %.not27, label %.critedge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %Gia_ObjSibl.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %Gia_ObjSibl.exit.thread ] ; 5 uses
  %i.m = getelementptr inbounds nuw [12 x i8], ptr %.val37, i64 %indvars.iv ; 3 uses
  %.val36 = load i64, ptr %i.m, align 4           ; 4 uses
  %i.n = and i64 %.val36, 2147483648
  %.not.i = icmp eq i64 %i.n, 0
  %i.o = and i64 %.val36, 536870911               ; 2 uses
  %i.p = icmp ne i64 %i.o, 536870911
  %narrow.i = and i1 %.not.i, %i.p
  br i1 %narrow.i, label %bb.d, label %Gia_ObjSibl.exit.thread

bb.d:                                             ; preds = %.lr.ph.split
  %i.q = trunc i64 %.val36 to i32
  %i.r = and i32 %i.q, 536870911                  ; 2 uses
  %i.s = lshr i64 %.val36, 32                     ; 2 uses
  %i.t = trunc nuw i64 %i.s to i32
  %i.u = and i32 %i.t, 536870911
  %i.v = icmp eq i32 %i.r, %i.u
  %.not.i48 = icmp ne i32 %i.r, 536870911
  %or.cond.not.i = and i1 %.not.i48, %i.v
  br i1 %or.cond.not.i, label %Gia_ObjSibl.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = sub nsw i64 0, %i.o
  %i.x = getelementptr inbounds [12 x i8], ptr %i.m, i64 %i.w ; 2 uses
  %.val47 = load i64, ptr %i.x, align 4           ; 4 uses
  %i.y = and i64 %.val47, 2147483648
  %.not.i.i = icmp ne i64 %i.y, 0
  %i.z = and i64 %.val47, 536870911
  %i.aa = icmp eq i64 %i.z, 536870911
  %narrow.i.not.i = or i1 %.not.i.i, %i.aa
  br i1 %narrow.i.not.i, label %Gia_ObjIsAndNotBuf.exit.thread, label %Gia_ObjIsAndNotBuf.exit

Gia_ObjIsAndNotBuf.exit:                          ; preds = %bb.e
  %i.ab = lshr i64 %.val47, 32
  %i.ac = xor i64 %i.ab, %.val47
  %i.ad = and i64 %i.ac, 536870911
  %.not78 = icmp eq i64 %i.ad, 0
  br i1 %.not78, label %Gia_ObjIsAndNotBuf.exit.thread, label %bb.f

bb.f:                                             ; preds = %Gia_ObjIsAndNotBuf.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !45
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !45
  br label %Gia_ObjIsAndNotBuf.exit.thread

Gia_ObjIsAndNotBuf.exit.thread:                   ; preds = %bb.e, %bb.f, %Gia_ObjIsAndNotBuf.exit
  %i.ah = and i64 %i.s, 536870911
  %i.ai = sub nsw i64 0, %i.ah
  %i.aj = getelementptr inbounds [12 x i8], ptr %i.m, i64 %i.ai ; 2 uses
  %.val46 = load i64, ptr %i.aj, align 4          ; 4 uses
  %i.ak = and i64 %.val46, 2147483648
  %.not.i.i50 = icmp ne i64 %i.ak, 0
  %i.al = and i64 %.val46, 536870911
  %i.am = icmp eq i64 %i.al, 536870911
  %narrow.i.not.i51 = or i1 %.not.i.i50, %i.am
  br i1 %narrow.i.not.i51, label %Gia_ObjIsAndNotBuf.exit52.thread, label %Gia_ObjIsAndNotBuf.exit52

Gia_ObjIsAndNotBuf.exit52:                        ; preds = %Gia_ObjIsAndNotBuf.exit.thread
  %i.an = lshr i64 %.val46, 32
  %i.ao = xor i64 %i.an, %.val46
  %i.ap = and i64 %i.ao, 536870911
  %.not79 = icmp eq i64 %i.ap, 0
  br i1 %.not79, label %Gia_ObjIsAndNotBuf.exit52.thread, label %bb.g

bb.g:                                             ; preds = %Gia_ObjIsAndNotBuf.exit52
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !45
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !45
  br label %Gia_ObjIsAndNotBuf.exit52.thread

Gia_ObjIsAndNotBuf.exit52.thread:                 ; preds = %Gia_ObjIsAndNotBuf.exit.thread, %bb.g, %Gia_ObjIsAndNotBuf.exit52
  %.val43 = load ptr, ptr %i.k, align 8, !tbaa !77 ; 3 uses
  %.not.i53 = icmp eq ptr %.val43, null
  br i1 %.not.i53, label %Gia_ObjIsMuxId.exit.thread, label %Gia_ObjIsMuxId.exit

Gia_ObjIsMuxId.exit:                              ; preds = %Gia_ObjIsAndNotBuf.exit52.thread
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.val43, i64 %indvars.iv
  %i.au = load i32, ptr %i.at, align 4, !tbaa !43
  %.not80 = icmp eq i32 %i.au, 0
  br i1 %.not80, label %Gia_ObjIsMuxId.exit.thread, label %Gia_ObjFanin2.exit

Gia_ObjFanin2.exit:                               ; preds = %Gia_ObjIsMuxId.exit
  %sext.i = shl nuw nsw i64 %indvars.iv, 2
  %i.av = getelementptr inbounds nuw i8, ptr %.val43, i64 %sext.i
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !43
  %i.ax = ashr i32 %i.aw, 1
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [12 x i8], ptr %.val37, i64 %i.ay ; 2 uses
  %.val45 = load i64, ptr %i.az, align 4          ; 4 uses
  %i.ba = and i64 %.val45, 2147483648
  %.not.i.i55 = icmp ne i64 %i.ba, 0
  %i.bb = and i64 %.val45, 536870911
  %i.bc = icmp eq i64 %i.bb, 536870911
  %narrow.i.not.i56 = or i1 %.not.i.i55, %i.bc
  br i1 %narrow.i.not.i56, label %Gia_ObjIsMuxId.exit.thread, label %Gia_ObjIsAndNotBuf.exit57

Gia_ObjIsAndNotBuf.exit57:                        ; preds = %Gia_ObjFanin2.exit
  %i.bd = lshr i64 %.val45, 32
  %i.be = xor i64 %i.bd, %.val45
  %i.bf = and i64 %i.be, 536870911
  %.not81 = icmp eq i64 %i.bf, 0
  br i1 %.not81, label %Gia_ObjIsMuxId.exit.thread, label %Gia_ObjFanin2.exit61

Gia_ObjFanin2.exit61:                             ; preds = %Gia_ObjIsAndNotBuf.exit57
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !45
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !45
  br label %Gia_ObjIsMuxId.exit.thread

Gia_ObjIsMuxId.exit.thread:                       ; preds = %Gia_ObjFanin2.exit, %Gia_ObjIsAndNotBuf.exit52.thread, %Gia_ObjFanin2.exit61, %Gia_ObjIsAndNotBuf.exit57, %Gia_ObjIsMuxId.exit
  %.val42 = load ptr, ptr %i.l, align 8, !tbaa !93 ; 2 uses
  %.not.i62 = icmp eq ptr %.val42, null
  br i1 %.not.i62, label %Gia_ObjSibl.exit.thread, label %Gia_ObjSibl.exit

Gia_ObjSibl.exit:                                 ; preds = %Gia_ObjIsMuxId.exit.thread
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.val42, i64 %indvars.iv
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !43 ; 2 uses
  %.not34 = icmp eq i32 %i.bk, 0
  br i1 %.not34, label %Gia_ObjSibl.exit.thread, label %Gia_ObjSiblObj.exit

Gia_ObjSiblObj.exit:                              ; preds = %Gia_ObjSibl.exit
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [12 x i8], ptr %.val37, i64 %i.bl ; 2 uses
  %.val44 = load i64, ptr %i.bm, align 4          ; 4 uses
  %i.bn = and i64 %.val44, 2147483648
  %.not.i.i65 = icmp ne i64 %i.bn, 0
  %i.bo = and i64 %.val44, 536870911
  %i.bp = icmp eq i64 %i.bo, 536870911
  %narrow.i.not.i66 = or i1 %.not.i.i65, %i.bp
  br i1 %narrow.i.not.i66, label %Gia_ObjSibl.exit.thread, label %Gia_ObjIsAndNotBuf.exit67

Gia_ObjIsAndNotBuf.exit67:                        ; preds = %Gia_ObjSiblObj.exit
  %i.bq = lshr i64 %.val44, 32
  %i.br = xor i64 %i.bq, %.val44
  %i.bs = and i64 %i.br, 536870911
  %.not82 = icmp eq i64 %i.bs, 0
  br i1 %.not82, label %Gia_ObjSibl.exit.thread, label %Gia_ObjSiblObj.exit71

Gia_ObjSiblObj.exit71:                            ; preds = %Gia_ObjIsAndNotBuf.exit67
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !45
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !45
  br label %Gia_ObjSibl.exit.thread

Gia_ObjSibl.exit.thread:                          ; preds = %Gia_ObjSiblObj.exit, %Gia_ObjIsMuxId.exit.thread, %.lr.ph.split, %Gia_ObjSiblObj.exit71, %Gia_ObjIsAndNotBuf.exit67, %Gia_ObjSibl.exit, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph.split, !llvm.loop !206

.critedge:                                        ; preds = %Gia_ObjSibl.exit.thread, %.lr.ph, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Lf_ManSetMapRefsOne(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.b = getelementptr i8, ptr %0, i64 176        ; 2 uses
  %.val43 = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.c = sext i32 %1 to i64                       ; 4 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %.val43, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !43
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [32 x i8], ptr %.val, i64 %i.f ; 5 uses
  %i.h = getelementptr i8, ptr %0, i64 192        ; 2 uses
  %.val47 = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.i = getelementptr inbounds [4 x i8], ptr %.val47, i64 %i.c
  %i.j = load i32, ptr %i.i, align 4, !tbaa !43   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !62
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 76
  %i.n = load i32, ptr %i.m, align 4, !tbaa !155
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %Lf_ManSetMuxCut.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val52 = load ptr, ptr %0, align 8, !tbaa !8   ; 2 uses
  %i.o = getelementptr i8, ptr %.val52, i64 40
  %.val16.i = load ptr, ptr %i.o, align 8, !tbaa !77 ; 2 uses
  %.not.i.i = icmp eq ptr %.val16.i, null
  br i1 %.not.i.i, label %Lf_ManSetMuxCut.exit.thread, label %Gia_ObjIsMuxId.exit.i

Gia_ObjIsMuxId.exit.i:                            ; preds = %bb.b
  %i.p = getelementptr inbounds [4 x i8], ptr %.val16.i, i64 %i.c
  %i.q = load i32, ptr %i.p, align 4, !tbaa !43
  %.not2.i = icmp eq i32 %i.q, 0
  br i1 %.not2.i, label %Lf_ManSetMuxCut.exit.thread, label %bb.c

bb.c:                                             ; preds = %Gia_ObjIsMuxId.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !43
  %i.t = icmp sgt i32 %i.s, %i.j
  br i1 %i.t, label %Lf_ManSetMuxCut.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %2 = load <2 x float>, ptr %i.u, align 4, !tbaa !66
  %3 = fpext <2 x float> %2 to <2 x double>       ; 2 uses
  %4 = extractelement <2 x double> %3, i64 0
  %5 = fmul double %4, 1.100000e+00
  %6 = extractelement <2 x double> %3, i64 1
  %i.v = fcmp olt double %5, %6
  br i1 %i.v, label %Lf_ManSetMuxCut.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr i8, ptr %.val52, i64 32
  %.val.i = load ptr, ptr %i.w, align 8, !tbaa !25
  %i.x = getelementptr inbounds [12 x i8], ptr %.val.i, i64 %i.c ; 5 uses
  %i.y = load i64, ptr %i.x, align 4              ; 3 uses
  %i.z = and i64 %i.y, 1073741824
  %.not13.i = icmp eq i64 %i.z, 0
  br i1 %.not13.i, label %bb.f, label %Lf_ManSetMuxCut.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.aa = and i64 %i.y, 536870911
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = getelementptr inbounds [12 x i8], ptr %i.x, i64 %i.ab ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 4            ; 2 uses
  %i.ae = and i64 %i.ad, 1073741824
  %.not14.i = icmp eq i64 %i.ae, 0
  br i1 %.not14.i, label %bb.g, label %Lf_ManSetMuxCut.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.af = lshr i64 %i.y, 32
  %i.ag = and i64 %i.af, 536870911
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = getelementptr inbounds [12 x i8], ptr %i.x, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 4
  %i.ak = and i64 %i.aj, 1073741824
  %.not15.i = icmp eq i64 %i.ak, 0
  br i1 %.not15.i, label %Lf_ManSetMuxCut.exit, label %Lf_ManSetMuxCut.exit.thread

Lf_ManSetMuxCut.exit:                             ; preds = %bb.g
  %i.al = or disjoint i64 %i.ad, 1073741824
  store i64 %i.al, ptr %i.ac, align 4
  %i.am = load i64, ptr %i.x, align 4
  %i.an = lshr i64 %i.am, 32
  %i.ao = and i64 %i.an, 536870911
  %i.ap = sub nsw i64 0, %i.ao
  %i.aq = getelementptr inbounds [12 x i8], ptr %i.x, i64 %i.ap ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 4
  %i.as = or i64 %i.ar, 1073741824
  store i64 %i.as, ptr %i.aq, align 4
  br label %bb.j

Lf_ManSetMuxCut.exit.thread:                      ; preds = %bb.b, %bb.e, %bb.f, %bb.g, %bb.d, %bb.c, %Gia_ObjIsMuxId.exit.i, %bb.a
  %i.at = getelementptr i8, ptr %i.g, i64 24      ; 3 uses
  %.val48 = load i32, ptr %i.at, align 4          ; 2 uses
  %i.au = getelementptr i8, ptr %i.g, i64 28
  %.val49 = load i32, ptr %i.au, align 4
  %.unshifted.i = xor i32 %.val49, %.val48
  %i.av = icmp ult i32 %.unshifted.i, 2
  br i1 %i.av, label %bb.i, label %bb.h

bb.h:                                             ; preds = %Lf_ManSetMuxCut.exit.thread
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !43
  %i.ay = icmp sle i32 %i.ax, %i.j
  %i.az = zext i1 %i.ay to i64                    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.az
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %Lf_ManSetMuxCut.exit.thread
  %i.ba = phi i32 [ %.val48, %Lf_ManSetMuxCut.exit.thread ], [ %.pre, %bb.h ]
  %i.bb = phi i64 [ 0, %Lf_ManSetMuxCut.exit.thread ], [ %i.az, %bb.h ]
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.bb
  %i.bd = or i32 %i.ba, 1
  store i32 %i.bd, ptr %i.bc, align 4
  br label %bb.j

bb.j:                                             ; preds = %Lf_ManSetMuxCut.exit, %bb.i
  %i.be = tail call fastcc ptr @Lf_ObjCutBest(ptr noundef nonnull %0, i32 noundef %1) ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 20 ; 3 uses
  %i.bg = load i32, ptr %i.bf, align 4            ; 2 uses
  %.not66 = icmp ult i32 %i.bg, 16777216
  br i1 %.not66, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %.val53 = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.bi = add nsw i32 %i.j, -1
  %i.bj = load ptr, ptr %0, align 8, !tbaa !8
  %i.bk = getelementptr i8, ptr %i.bj, i64 32
  %.val44 = load ptr, ptr %i.bk, align 8, !tbaa !25
  %i.bl = getelementptr i8, ptr %0, i64 240
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %Gia_ObjIsAndNotBuf.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Gia_ObjIsAndNotBuf.exit.thread ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !43
  %i.bo = sext i32 %i.bn to i64                   ; 2 uses
  %i.bp = getelementptr inbounds [4 x i8], ptr %.val53, i64 %i.bo ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !43
  %.not59 = icmp slt i32 %i.bq, %i.j
  br i1 %.not59, label %Lf_ObjSetRequired.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.bi, ptr %i.bp, align 4, !tbaa !43
  %.pre70 = load i32, ptr %i.bm, align 4, !tbaa !43
  %.pre72 = sext i32 %.pre70 to i64
  br label %Lf_ObjSetRequired.exit

Lf_ObjSetRequired.exit:                           ; preds = %bb.k, %bb.l
  %.pre-phi = phi i64 [ %i.bo, %bb.k ], [ %.pre72, %bb.l ] ; 2 uses
  %i.br = getelementptr inbounds [12 x i8], ptr %.val44, i64 %.pre-phi
  %.val50 = load i64, ptr %i.br, align 4          ; 4 uses
  %i.bs = and i64 %.val50, 2147483648
  %.not.i.i54 = icmp ne i64 %i.bs, 0
  %i.bt = and i64 %.val50, 536870911
  %i.bu = icmp eq i64 %i.bt, 536870911
  %narrow.i.not.i = or i1 %.not.i.i54, %i.bu
  br i1 %narrow.i.not.i, label %Gia_ObjIsAndNotBuf.exit.thread, label %Gia_ObjIsAndNotBuf.exit

Gia_ObjIsAndNotBuf.exit:                          ; preds = %Lf_ObjSetRequired.exit
  %i.bv = lshr i64 %.val50, 32
  %i.bw = xor i64 %i.bv, %.val50
  %i.bx = and i64 %i.bw, 536870911
  %.not60 = icmp eq i64 %i.bx, 0
  br i1 %.not60, label %Gia_ObjIsAndNotBuf.exit.thread, label %bb.m

bb.m:                                             ; preds = %Gia_ObjIsAndNotBuf.exit
  %.val45 = load ptr, ptr %i.b, align 8, !tbaa !42
  %.val46 = load ptr, ptr %i.bl, align 8, !tbaa !42
  %i.by = getelementptr inbounds [4 x i8], ptr %.val45, i64 %.pre-phi
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !43
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %.val46, i64 %i.ca ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !43
  %i.cd = add nsw i32 %i.cc, 1
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !43
  br label %Gia_ObjIsAndNotBuf.exit.thread

Gia_ObjIsAndNotBuf.exit.thread:                   ; preds = %Lf_ObjSetRequired.exit, %Gia_ObjIsAndNotBuf.exit, %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ce = load i32, ptr %i.bf, align 4            ; 2 uses
  %i.cf = lshr i32 %i.ce, 24                      ; 2 uses
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = icmp samesign ult i64 %indvars.iv.next, %i.cg
  br i1 %i.ch, label %bb.k, label %._crit_edge, !llvm.loop !207

._crit_edge:                                      ; preds = %Gia_ObjIsAndNotBuf.exit.thread, %bb.j
  %.lcssa62 = phi i32 [ %i.bg, %bb.j ], [ %i.ce, %Gia_ObjIsAndNotBuf.exit.thread ] ; 2 uses
  %.lcssa61 = phi i32 [ 0, %bb.j ], [ %i.cf, %Gia_ObjIsAndNotBuf.exit.thread ] ; 3 uses
  %i.ci = and i32 %.lcssa62, 8388608
  %.not40 = icmp eq i32 %i.ci, 0
  br i1 %.not40, label %bb.n, label %bb.s

bb.n:                                             ; preds = %._crit_edge
  %i.cj = getelementptr i8, ptr %0, i64 252
  %.val51 = load i32, ptr %i.cj, align 4, !tbaa !200
  %.not41 = icmp eq i32 %.val51, 0
  br i1 %.not41, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not.i = icmp eq i32 %.lcssa61, 0
  br i1 %.not.i, label %Lf_CutSwitches.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o
  %i.ck = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 5 uses
  %i.cl = getelementptr i8, ptr %0, i64 256
  %.val.i55 = load ptr, ptr %i.cl, align 8, !tbaa !65 ; 5 uses
  %wide.trip.count.i = zext nneg i32 %.lcssa61 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.cm = icmp samesign ult i32 %.lcssa61, 4
  br i1 %i.cm, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 252
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.p ] ; 5 uses
  %.078.i = phi float [ 0.000000e+00, %.lr.ph.i.new ], [ %i.dn, %bb.p ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.p ]
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv.i
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !43
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %.val.i55, i64 %i.cp
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !66
  %i.cs = fadd float %.078.i, %i.cr
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !43
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %.val.i55, i64 %i.cw
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !66
  %i.cz = fadd float %i.cs, %i.cy
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !43
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %.val.i55, i64 %i.dd
  %i.df = load float, ptr %i.de, align 4, !tbaa !66
  %i.dg = fadd float %i.cz, %i.df
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !43
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %.val.i55, i64 %i.dk
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !66
end_hunk_0
