inline.NumInlined: 1388
inline.NumDeleted: 170
begin_hunk_0_@inf_ApplyGenSuperposition:bb.a
  %indvars.iv.next226 = add nuw nsw i64 %indvars.iv225, 1
  %.not125.not = icmp slt i64 %indvars.iv225, %i.cu
  br i1 %.not125.not, label %bb.m, label %._crit_edge203, !llvm.loop !74

._crit_edge203:                                   ; preds = %bb.o, %._crit_edge197
  %i.de = icmp ne i32 %8, 0
  %i.df = icmp ne i32 %9, 0                       ; 2 uses
  %or.cond = and i1 %i.de, %i.df
  br i1 %or.cond, label %bb.p, label %bb.s

bb.p:                                             ; preds = %._crit_edge203
  %.not126 = icmp eq i32 %7, 0
  %i.dg = getelementptr inbounds nuw i8, ptr %i.p, i64 76 ; 2 uses
  br i1 %.not126, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 8, ptr %i.dg, align 4
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  store i32 9, ptr %i.dg, align 4
  br label %bb.v

bb.s:                                             ; preds = %._crit_edge203
  %i.dh = icmp eq i32 %8, 0
  %or.cond3 = or i1 %i.dh, %i.df
  %i.di = getelementptr inbounds nuw i8, ptr %i.p, i64 76 ; 2 uses
  br i1 %or.cond3, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 7, ptr %i.di, align 4
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  store i32 6, ptr %i.di, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.q, %bb.r
  tail call fastcc void @clause_SetDataFromParents(ptr noundef nonnull %i.p, ptr noundef %3, i32 noundef %4, ptr noundef %0, i32 noundef %1, ptr noundef %10, ptr noundef %11)
  ret ptr %i.p
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @inf_NAllTermsRplac(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @term_Equal(ptr noundef %0, ptr noundef %1) #14
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i32, ptr %2, align 8
  store i32 %.val, ptr %0, align 8
  %i.b = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val45 = load ptr, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %2, i64 16
  %.val44 = load ptr, ptr %i.c, align 8
  %i.d = tail call ptr @list_CopyWithElement(ptr noundef %.val44, ptr noundef nonnull @term_Copy) #14
  store ptr %i.d, ptr %i.b, align 8
  tail call void @list_DeleteWithElement(ptr noundef %.val45, ptr noundef nonnull @term_Delete) #14
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %.val40 = load i32, ptr %0, align 8
  %i.e = icmp slt i32 %.val40, 1
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @subst_Apply(ptr noundef %3, ptr noundef nonnull %0) #14 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr i8, ptr %0, i64 16
  %.val43 = load ptr, ptr %i.g, align 8           ; 2 uses
  %.not47 = icmp eq ptr %.val43, null
  br i1 %.not47, label %.loopexit, label %.lr.ph56.preheader

.lr.ph56.preheader:                               ; preds = %bb.e
  %i.h = load i32, ptr @stack_POINTER, align 4    ; 5 uses
  %i.i = add i32 %i.h, 1                          ; 2 uses
  store i32 %i.i, ptr @stack_POINTER, align 4
  %i.j = zext i32 %i.h to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @stack_STACK, i64 %i.j
  store ptr %.val43, ptr %i.k, align 8
  br label %.lr.ph56

.lr.ph56:                                         ; preds = %.lr.ph56.preheader, %.critedge
  %i.l = phi i32 [ %i.aa, %.critedge ], [ %i.i, %.lr.ph56.preheader ]
  %.02855 = phi i32 [ %.1, %.critedge ], [ 0, %.lr.ph56.preheader ] ; 3 uses
  %i.m = add i32 %i.l, -1
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr @stack_STACK, i64 %i.n ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 8        ; 2 uses
  %.val37 = load ptr, ptr %i.q, align 8           ; 5 uses
  %.val38 = load ptr, ptr %i.p, align 8
  store ptr %.val38, ptr %i.o, align 8
  %i.r = tail call i32 @term_Equal(ptr noundef %.val37, ptr noundef %1) #14
  %.not32 = icmp eq i32 %i.r, 0
  br i1 %.not32, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph56
  %i.s = tail call ptr @term_Copy(ptr noundef %2) #14
  store ptr %i.s, ptr %i.q, align 8
  tail call void @term_Delete(ptr noundef %.val37) #14
  br label %bb.k

bb.g:                                             ; preds = %.lr.ph56
  %i.t = getelementptr i8, ptr %.val37, i64 16
  %.val46 = load ptr, ptr %i.t, align 8           ; 2 uses
  %.not49 = icmp eq ptr %.val46, null
  br i1 %.not49, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = load i32, ptr @stack_POINTER, align 4    ; 2 uses
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @stack_POINTER, align 4
  %i.w = zext i32 %i.u to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @stack_STACK, i64 %i.w
  store ptr %.val46, ptr %i.x, align 8
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %.val39 = load i32, ptr %.val37, align 8
  %i.y = icmp slt i32 %.val39, 1
  br i1 %i.y, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = tail call ptr @subst_Apply(ptr noundef %3, ptr noundef nonnull %.val37) #14 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j, %bb.i, %bb.f
  %.1 = phi i32 [ 1, %bb.f ], [ %.02855, %bb.h ], [ %.02855, %bb.j ], [ %.02855, %bb.i ] ; 4 uses
  %stack_POINTER.promoted = load i32, ptr @stack_POINTER, align 4 ; 2 uses
  %.not5052 = icmp eq i32 %stack_POINTER.promoted, %i.h
  br i1 %.not5052, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %i.aa = phi i32 [ %i.ab, %bb.l ], [ %stack_POINTER.promoted, %bb.k ] ; 3 uses
  %i.ab = add i32 %i.aa, -1                       ; 4 uses
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr @stack_STACK, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not51 = icmp eq ptr %i.ae, null
  br i1 %.not51, label %bb.l, label %.critedge

bb.l:                                             ; preds = %.lr.ph
  store i32 %i.ab, ptr @stack_POINTER, align 4
  %.not50 = icmp eq i32 %i.ab, %i.h
  br i1 %.not50, label %.loopexit, label %.lr.ph, !llvm.loop !19

.critedge:                                        ; preds = %.lr.ph
  %.not48 = icmp eq i32 %i.aa, %i.h
  br i1 %.not48, label %.loopexit, label %.lr.ph56, !llvm.loop !20

.loopexit:                                        ; preds = %bb.k, %.critedge, %bb.l, %bb.e, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.e ], [ %.1, %bb.l ], [ %.1, %.critedge ], [ %.1, %bb.k ]
  ret i32 %.0
}

declare i32 @term_Equal(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @list_CopyWithElement(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @list_DeleteWithElement(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @clause_SetDataFromParents(ptr noundef %0, ptr noundef readonly captures(none) %1, i32 noundef %2, ptr noundef readonly captures(none) %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #3 {
bb.a:
  tail call void @clause_OrientEqualities(ptr noundef %0, ptr noundef %5, ptr noundef %6) #14
  tail call void @clause_Normalize(ptr noundef %0) #14
  tail call void @clause_SetMaxLitFlags(ptr noundef %0, ptr noundef %5, ptr noundef %6) #14
  %i.a = tail call i32 @clause_ComputeWeight(ptr noundef %0, ptr noundef %5) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.a, ptr %i.b, align 4
  tail call void @clause_UpdateMaxVar(ptr noundef %0) #14
  %i.c = getelementptr i8, ptr %3, i64 48
  %.val66.i = load i32, ptr %i.c, align 8
  %i.d = and i32 %.val66.i, 8
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 48
  %.val.i = load i32, ptr %i.e, align 8
  %i.f = and i32 %.val.i, 8
  %.not63.i = icmp eq i32 %i.f, 0
  br i1 %.not63.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = or i32 %i.h, 8
  store i32 %i.i, ptr %i.g, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr i8, ptr %3, i64 12
  %.val72.i = load i32, ptr %i.j, align 4         ; 2 uses
  %i.k = icmp eq i32 %.val72.i, 0
  %i.l = getelementptr i8, ptr %1, i64 12
  %.val71.i = load i32, ptr %i.l, align 4         ; 2 uses
  %7 = icmp eq i32 %.val71.i, 0
  %or.cond.i = select i1 %i.k, i1 %7, i1 false
  br i1 %or.cond.i, label %clause_SetSplitDataFromParents.exit, label %._crit_edge.i.a

._crit_edge.i.a:                                  ; preds = %bb.d
  %spec.select.i = tail call i32 @llvm.umax.i32(i32 %.val71.i, i32 %.val72.i)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %spec.select.i, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.o = load i32, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 7 uses
  %i.q = load i32, ptr %i.p, align 8
  %i.r = icmp ugt i32 %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 9 uses
  %.not65.i = icmp eq ptr %i.t, null              ; 2 uses
  br i1 %i.r, label %bb.e, label %bb.r

bb.e:                                             ; preds = %._crit_edge.i.a
  br i1 %.not65.i, label %memory_Free.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load i32, ptr %i.u, align 8
  %i.w = shl i32 %i.v, 3                          ; 4 uses
  %i.x = icmp ult i32 %i.w, 1024
  br i1 %i.x, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load i32, ptr @memory_ALIGN, align 4     ; 2 uses
  %i.z = urem i32 %i.w, %i.y                      ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.z, 0
  %i.aa = sub i32 %i.y, %i.z
  %i.ab = select i1 %.not.i.i.i.i, i32 0, i32 %i.aa
  %.1.i.i.i.i = add i32 %i.ab, %i.w
  %i.ac = load i32, ptr @memory_OFFSET, align 4
  %i.ad = zext i32 %i.ac to i64
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds i8, ptr %i.t, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 -8
  %i.aj = load ptr, ptr %i.ai, align 8            ; 4 uses
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.aj, ptr %i.ak, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store ptr %i.aj, ptr @memory_BIGBLOCKS, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not20.i.i = icmp eq ptr %i.aj, null
  br i1 %.not20.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = load ptr, ptr %i.ag, align 8
  store ptr %i.al, ptr %i.aj, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.am = load i32, ptr @memory_MARKSIZE, align 4
  %i.an = add i32 %.1.i.i.i.i, %i.am
  %i.ao = zext i32 %i.an to i64
  %i.ap = add nuw nsw i64 %i.ao, 16               ; 2 uses
  %i.aq = load i64, ptr @memory_FREEDBYTES, align 8
  %i.ar = add i64 %i.ap, %i.aq
  store i64 %i.ar, ptr @memory_FREEDBYTES, align 8
  %i.as = load i64, ptr @memory_MAXMEM, align 8   ; 2 uses
  %i.at = icmp sgt i64 %i.as, -1
  br i1 %i.at, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.au = add nuw i64 %i.as, %i.ap
  store i64 %i.au, ptr @memory_MAXMEM, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.av = getelementptr inbounds i8, ptr %i.t, i64 -16
  tail call void @free(ptr noundef nonnull %i.av) #14
  br label %memory_Free.exit.i

bb.o:                                             ; preds = %bb.f
  %i.aw = zext nneg i32 %i.w to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr @memory_ARRAY, i64 %i.aw ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ba = load i32, ptr %i.az, align 8
  %i.bb = sext i32 %i.ba to i64
  %i.bc = load i64, ptr @memory_FREEDBYTES, align 8
  %i.bd = add i64 %i.bc, %i.bb
  store i64 %i.bd, ptr @memory_FREEDBYTES, align 8
  %i.be = load ptr, ptr %i.ay, align 8
  store ptr %i.be, ptr %i.t, align 8
  %i.bf = load ptr, ptr %i.ax, align 8
  store ptr %i.t, ptr %i.bf, align 8
  br label %memory_Free.exit.i

memory_Free.exit.i:                               ; preds = %bb.o, %bb.n, %bb.e
  %i.bg = load i32, ptr %i.n, align 8
  %i.bh = shl i32 %i.bg, 3
  %i.bi = tail call ptr @memory_Malloc(i32 noundef %i.bh) #14
  store ptr %i.bi, ptr %i.s, align 8
  %i.bj = load i32, ptr %i.n, align 8             ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.bj, ptr %i.bk, align 8
  %i.bl = load i32, ptr %i.p, align 8
  %.not90.i = icmp eq i32 %i.bl, 0
  br i1 %.not90.i, label %.preheader.i, label %.lr.ph85.i

.lr.ph85.i:                                       ; preds = %memory_Free.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.p

.preheader.loopexit.i:                            ; preds = %bb.p
  %.pre105.i = load i32, ptr %i.n, align 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %memory_Free.exit.i
  %i.bo = phi i32 [ %i.bj, %memory_Free.exit.i ], [ %.pre105.i, %.preheader.loopexit.i ]
  %.lcssa.i = phi i32 [ 0, %memory_Free.exit.i ], [ %i.cb, %.preheader.loopexit.i ] ; 2 uses
  %i.bp = icmp ult i32 %.lcssa.i, %i.bo
  br i1 %i.bp, label %.lr.ph88.i, label %clause_SetSplitDataFromParents.exit

.lr.ph88.i:                                       ; preds = %.preheader.i
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.br = zext i32 %.lcssa.i to i64
  br label %bb.q

bb.p:                                             ; preds = %bb.p, %.lr.ph85.i
  %indvars.iv98.i = phi i64 [ 0, %.lr.ph85.i ], [ %indvars.iv.next99.i, %bb.p ] ; 4 uses
  %i.bs = load ptr, ptr %i.bm, align 8
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv98.i
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = load ptr, ptr %i.bn, align 8
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv98.i
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = or i64 %i.bx, %i.bu
  %i.bz = load ptr, ptr %i.s, align 8
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv98.i
  store i64 %i.by, ptr %i.ca, align 8
  %indvars.iv.next99.i = add nuw nsw i64 %indvars.iv98.i, 1 ; 2 uses
  %i.cb = load i32, ptr %i.p, align 8             ; 2 uses
  %i.cc = zext i32 %i.cb to i64
  %i.cd = icmp samesign ult i64 %indvars.iv.next99.i, %i.cc
  br i1 %i.cd, label %bb.p, label %.preheader.loopexit.i, !llvm.loop !75

bb.q:                                             ; preds = %bb.q, %.lr.ph88.i
  %indvars.iv101.i = phi i64 [ %i.br, %.lr.ph88.i ], [ %indvars.iv.next102.i, %bb.q ] ; 3 uses
  %i.ce = load ptr, ptr %i.bq, align 8
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv101.i
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = load ptr, ptr %i.s, align 8
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv101.i
  store i64 %i.cg, ptr %i.ci, align 8
  %indvars.iv.next102.i = add nuw nsw i64 %indvars.iv101.i, 1 ; 2 uses
  %i.cj = load i32, ptr %i.n, align 8
  %i.ck = zext i32 %i.cj to i64
  %i.cl = icmp samesign ult i64 %indvars.iv.next102.i, %i.ck
  br i1 %i.cl, label %bb.q, label %clause_SetSplitDataFromParents.exit, !llvm.loop !76

bb.r:                                             ; preds = %._crit_edge.i.a
  br i1 %.not65.i, label %memory_Free.exit77.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cn = load i32, ptr %i.cm, align 8
  %i.co = shl i32 %i.cn, 3                        ; 4 uses
  %i.cp = icmp ult i32 %i.co, 1024
  br i1 %i.cp, label %bb.ab, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cq = load i32, ptr @memory_ALIGN, align 4    ; 2 uses
  %i.cr = urem i32 %i.co, %i.cq                   ; 2 uses
  %.not.i.i.i73.i = icmp eq i32 %i.cr, 0
  %i.cs = sub i32 %i.cq, %i.cr
  %i.ct = select i1 %.not.i.i.i73.i, i32 0, i32 %i.cs
  %.1.i.i.i74.i = add i32 %i.ct, %i.co
  %i.cu = load i32, ptr @memory_OFFSET, align 4
  %i.cv = zext i32 %i.cu to i64
  %i.cw = sub nsw i64 0, %i.cv
  %i.cx = getelementptr inbounds i8, ptr %i.t, i64 %i.cw ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 -16 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8            ; 2 uses
  %.not.i75.i = icmp eq ptr %i.cz, null
  %i.da = getelementptr inbounds i8, ptr %i.cx, i64 -8
  %i.db = load ptr, ptr %i.da, align 8            ; 4 uses
  br i1 %.not.i75.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %i.db, ptr %i.dc, align 8
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  store ptr %i.db, ptr @memory_BIGBLOCKS, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.not20.i76.i = icmp eq ptr %i.db, null
  br i1 %.not20.i76.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dd = load ptr, ptr %i.cy, align 8
  store ptr %i.dd, ptr %i.db, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.de = load i32, ptr @memory_MARKSIZE, align 4
  %i.df = add i32 %.1.i.i.i74.i, %i.de
  %i.dg = zext i32 %i.df to i64
  %i.dh = add nuw nsw i64 %i.dg, 16               ; 2 uses
  %i.di = load i64, ptr @memory_FREEDBYTES, align 8
  %i.dj = add i64 %i.dh, %i.di
  store i64 %i.dj, ptr @memory_FREEDBYTES, align 8
  %i.dk = load i64, ptr @memory_MAXMEM, align 8   ; 2 uses
  %i.dl = icmp sgt i64 %i.dk, -1
  br i1 %i.dl, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dm = add nuw i64 %i.dk, %i.dh
  store i64 %i.dm, ptr @memory_MAXMEM, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dn = getelementptr inbounds i8, ptr %i.t, i64 -16
  tail call void @free(ptr noundef nonnull %i.dn) #14
  br label %memory_Free.exit77.i

bb.ab:                                            ; preds = %bb.s
  %i.do = zext nneg i32 %i.co to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr @memory_ARRAY, i64 %i.do ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8            ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.ds = load i32, ptr %i.dr, align 8
  %i.dt = sext i32 %i.ds to i64
  %i.du = load i64, ptr @memory_FREEDBYTES, align 8
  %i.dv = add i64 %i.du, %i.dt
  store i64 %i.dv, ptr @memory_FREEDBYTES, align 8
  %i.dw = load ptr, ptr %i.dq, align 8
  store ptr %i.dw, ptr %i.t, align 8
  %i.dx = load ptr, ptr %i.dp, align 8
  store ptr %i.t, ptr %i.dx, align 8
  br label %memory_Free.exit77.i

memory_Free.exit77.i:                             ; preds = %bb.ab, %bb.aa, %bb.r
  %i.dy = load i32, ptr %i.p, align 8
  %i.dz = shl i32 %i.dy, 3
  %i.ea = tail call ptr @memory_Malloc(i32 noundef %i.dz) #14
  store ptr %i.ea, ptr %i.s, align 8
  %i.eb = load i32, ptr %i.p, align 8             ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.eb, ptr %i.ec, align 8
  %i.ed = load i32, ptr %i.n, align 8
  %.not89.i = icmp eq i32 %i.ed, 0
  br i1 %.not89.i, label %.preheader78.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %memory_Free.exit77.i
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.ac

.preheader78.loopexit.i:                          ; preds = %bb.ac
  %.pre.i = load i32, ptr %i.p, align 8
  br label %.preheader78.i

.preheader78.i:                                   ; preds = %.preheader78.loopexit.i, %memory_Free.exit77.i
  %i.eg = phi i32 [ %i.eb, %memory_Free.exit77.i ], [ %.pre.i, %.preheader78.loopexit.i ]
  %.lcssa80.i = phi i32 [ 0, %memory_Free.exit77.i ], [ %i.et, %.preheader78.loopexit.i ] ; 2 uses
  %i.eh = icmp ult i32 %.lcssa80.i, %i.eg
  br i1 %i.eh, label %.lr.ph83.i, label %clause_SetSplitDataFromParents.exit

.lr.ph83.i:                                       ; preds = %.preheader78.i
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ej = zext i32 %.lcssa80.i to i64
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ac, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ac ] ; 4 uses
  %i.ek = load ptr, ptr %i.ee, align 8
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv.i
  %i.em = load i64, ptr %i.el, align 8
  %i.en = load ptr, ptr %i.ef, align 8
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.i
  %i.ep = load i64, ptr %i.eo, align 8
  %i.eq = or i64 %i.ep, %i.em
  %i.er = load ptr, ptr %i.s, align 8
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %indvars.iv.i
  store i64 %i.eq, ptr %i.es, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.et = load i32, ptr %i.n, align 8             ; 2 uses
  %i.eu = zext i32 %i.et to i64
  %i.ev = icmp samesign ult i64 %indvars.iv.next.i, %i.eu
  br i1 %i.ev, label %bb.ac, label %.preheader78.loopexit.i, !llvm.loop !77

bb.ad:                                            ; preds = %bb.ad, %.lr.ph83.i
  %indvars.iv95.i = phi i64 [ %i.ej, %.lr.ph83.i ], [ %indvars.iv.next96.i, %bb.ad ] ; 3 uses
  %i.ew = load ptr, ptr %i.ei, align 8
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv95.i
  %i.ey = load i64, ptr %i.ex, align 8
  %i.ez = load ptr, ptr %i.s, align 8
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv95.i
  store i64 %i.ey, ptr %i.fa, align 8
  %indvars.iv.next96.i = add nuw nsw i64 %indvars.iv95.i, 1 ; 2 uses
  %i.fb = load i32, ptr %i.p, align 8
  %i.fc = zext i32 %i.fb to i64
  %i.fd = icmp samesign ult i64 %indvars.iv.next96.i, %i.fc
  br i1 %i.fd, label %bb.ad, label %clause_SetSplitDataFromParents.exit, !llvm.loop !78

clause_SetSplitDataFromParents.exit:              ; preds = %bb.ad, %bb.q, %bb.d, %.preheader.i, %.preheader78.i
  %i.fe = getelementptr i8, ptr %1, i64 8
  %.val16 = load i32, ptr %i.fe, align 8
  %i.ff = getelementptr i8, ptr %3, i64 8
  %.val = load i32, ptr %i.ff, align 8
  %i.fg = tail call i32 @misc_Max(i32 noundef %.val16, i32 noundef %.val) #14
  %i.fh = add nsw i32 %i.fg, 1
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.fh, ptr %i.fi, align 8
  %.val18 = load i32, ptr %1, align 8
  %i.fj = sext i32 %.val18 to i64
  %i.fk = inttoptr i64 %i.fj to ptr
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.fm = load ptr, ptr %i.fl, align 8
  %i.fn = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store ptr %i.fk, ptr %i.fo, align 8
  store ptr %i.fm, ptr %i.fn, align 8
  store ptr %i.fn, ptr %i.fl, align 8
  %i.fp = sext i32 %2 to i64
  %i.fq = inttoptr i64 %i.fp to ptr
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store ptr %i.fq, ptr %i.fu, align 8
  store ptr %i.fs, ptr %i.ft, align 8
  store ptr %i.ft, ptr %i.fr, align 8
  %.val17 = load i32, ptr %3, align 8
  %i.fv = sext i32 %.val17 to i64
  %i.fw = inttoptr i64 %i.fv to ptr
  %i.fx = load ptr, ptr %i.fl, align 8
  %i.fy = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store ptr %i.fw, ptr %i.fz, align 8
  store ptr %i.fx, ptr %i.fy, align 8
  store ptr %i.fy, ptr %i.fl, align 8
  %i.ga = sext i32 %4 to i64
  %i.gb = inttoptr i64 %i.ga to ptr
  %i.gc = load ptr, ptr %i.fr, align 8
  %i.gd = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store ptr %i.gb, ptr %i.ge, align 8
  store ptr %i.gc, ptr %i.gd, align 8
  store ptr %i.gd, ptr %i.fr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @inf_GenSPRightEqToGiven(ptr noundef %0, i32 noundef range(i32 -2147483648, 2147483647) %1, i32 noundef range(i32 0, 2) %2, ptr noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %i.c = getelementptr i8, ptr %0, i64 56         ; 4 uses
  %.val = load ptr, ptr %i.c, align 8
  %i.d = sext i32 %1 to i64                       ; 4 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 24
  %.val150 = load ptr, ptr %i.g, align 8          ; 3 uses
  %.val5.val.i = load i32, ptr %.val150, align 8
  %i.h = load i32, ptr @fol_NOT, align 4
  %.not.i = icmp eq i32 %.val5.val.i, %i.h
  br i1 %.not.i, label %bb.b, label %clause_LiteralAtom.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %.val150, i64 16
  %.val6.i = load ptr, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %.val6.i, i64 8
  %.val6.val.i = load ptr, ptr %i.j, align 8
  br label %clause_LiteralAtom.exit

clause_LiteralAtom.exit:                          ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %.val6.val.i, %bb.b ], [ %.val150, %bb.a ] ; 3 uses
  %i.k = load i32, ptr @stack_POINTER, align 4    ; 2 uses
  %.not = icmp eq i32 %2, 0                       ; 4 uses
  %i.l = getelementptr i8, ptr %.0.i, i64 16
  %.val160 = load ptr, ptr %i.l, align 8          ; 2 uses
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %clause_LiteralAtom.exit
  %.val160.val = load ptr, ptr %.val160, align 8
  br label %bb.d

bb.d:                                             ; preds = %clause_LiteralAtom.exit, %bb.c
  %.val160.val.sink = phi ptr [ %.val160.val, %bb.c ], [ %.val160, %clause_LiteralAtom.exit ]
  %i.m = getelementptr i8, ptr %.val160.val.sink, i64 8
  %.val160.val.val = load ptr, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %.val160.val.val, i64 16
  %.val171 = load ptr, ptr %i.n, align 8
  tail call void @sharing_PushListOnStack(ptr noundef %.val171) #14
  %i.o = load i32, ptr @stack_POINTER, align 4    ; 2 uses
  %.not345386 = icmp eq i32 %i.o, %i.k
  br i1 %.not345386, label %._crit_edge390, label %.lr.ph389

.lr.ph389:                                        ; preds = %bb.d
  %i.p = icmp ne i32 %5, 0                        ; 3 uses
  %.not131 = icmp eq i32 %4, 0                    ; 2 uses
  %.not135 = icmp eq i32 %6, 0
  %i.q = getelementptr i8, ptr %0, i64 48
  %i.r = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 68
  %i.t = getelementptr i8, ptr %0, i64 72
  %i.u = getelementptr i8, ptr %i.f, i64 8
  %i.v = getelementptr i8, ptr %.0.i, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph389, %.loopexit356
  %i.w = phi i32 [ %i.o, %.lr.ph389 ], [ %i.lb, %.loopexit356 ]
  %.0115387 = phi ptr [ null, %.lr.ph389 ], [ %.8, %.loopexit356 ] ; 3 uses
  %i.x = add i32 %i.w, -1                         ; 2 uses
  store i32 %i.x, ptr @stack_POINTER, align 4
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr @stack_STACK, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8             ; 11 uses
  %.val167 = load i32, ptr %i.aa, align 8
  %i.ab = icmp slt i32 %.val167, 1
  br i1 %i.ab, label %bb.f, label %.loopexit356

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %.val166 = load ptr, ptr %3, align 8
  %i.ad = load ptr, ptr @cont_RIGHTCONTEXT, align 8
  %i.ae = call ptr @st_GetUnifier(ptr noundef %i.ac, ptr noundef %.val166, ptr noundef %i.ad, ptr noundef nonnull %i.aa) #14 ; 2 uses
  %.not346380 = icmp eq ptr %i.ae, null
  br i1 %.not346380, label %.loopexit356, label %.lr.ph384

.lr.ph384:                                        ; preds = %bb.f, %._crit_edge
  %.1116382 = phi ptr [ %.2117.lcssa, %._crit_edge ], [ %.0115387, %bb.f ] ; 2 uses
  %.0120381 = phi ptr [ %.val.i189, %._crit_edge ], [ %i.ae, %bb.f ] ; 4 uses
  %i.af = getelementptr i8, ptr %.0120381, i64 8
  %.0120.val = load ptr, ptr %i.af, align 8       ; 6 uses
  %i.ag = getelementptr i8, ptr %.0120.val, i64 8
  %.0122374 = load ptr, ptr %i.ag, align 8        ; 2 uses
  %.not347375 = icmp eq ptr %.0122374, null
  br i1 %.not347375, label %._crit_edge, label %.lr.ph378

.lr.ph378:                                        ; preds = %.lr.ph384, %.loopexit
  %.0122377 = phi ptr [ %.0122, %.loopexit ], [ %.0122374, %.lr.ph384 ] ; 2 uses
  %.2117376 = phi ptr [ %.7, %.loopexit ], [ %.1116382, %.lr.ph384 ] ; 3 uses
  %i.ah = getelementptr i8, ptr %.0122377, i64 8
  %.0122.val = load ptr, ptr %i.ah, align 8       ; 3 uses
  %.val151 = load i32, ptr %.0122.val, align 8
  %i.ai = load i32, ptr @fol_EQUALITY, align 4
  %.not348 = icmp eq i32 %.val151, %i.ai
  br i1 %.not348, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %.lr.ph378
  %i.aj = call ptr @sharing_NAtomDataList(ptr noundef nonnull %.0122.val) #14 ; 2 uses
  %.not349370 = icmp eq ptr %i.aj, null
  br i1 %.not349370, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ak = getelementptr i8, ptr %.0122.val, i64 16 ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.cv
  %.3118372 = phi ptr [ %.2117376, %.lr.ph ], [ %.6, %bb.cv ] ; 15 uses
  %.0121371 = phi ptr [ %i.aj, %.lr.ph ], [ %.0121.val155, %bb.cv ] ; 2 uses
  %i.al = getelementptr i8, ptr %.0121371, i64 8
  %.0121.val = load ptr, ptr %i.al, align 8       ; 6 uses
  %i.am = getelementptr i8, ptr %.0121.val, i64 16
  %.val4.i = load ptr, ptr %i.am, align 8         ; 12 uses
  %i.an = getelementptr i8, ptr %.val4.i, i64 56  ; 4 uses
  %.val.i = load ptr, ptr %i.an, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.i ], [ 0, %bb.h ] ; 4 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %indvars.iv.i
  %i.ap = load ptr, ptr %i.ao, align 8
  %.not.i174 = icmp eq ptr %i.ap, %.0121.val
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %.not.i174, label %clause_LiteralGetIndex.exit, label %bb.i, !llvm.loop !18

clause_LiteralGetIndex.exit:                      ; preds = %bb.i
  %i.aq = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.ar = getelementptr i8, ptr %.val4.i, i64 48  ; 2 uses
  %.val153 = load i32, ptr %i.ar, align 8
  %i.as = and i32 %.val153, 2
  %.not129 = icmp eq i32 %i.as, 0
  br i1 %.not129, label %bb.j, label %bb.cv

bb.j:                                             ; preds = %clause_LiteralGetIndex.exit
  br i1 %i.p, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.val152 = load i32, ptr %.0121.val, align 8
  %i.at = and i32 %.val152, 2
  %.not130 = icmp eq i32 %i.at, 0
  br i1 %.not130, label %bb.cv, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  br i1 %.not131, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val148 = load ptr, ptr %i.ak, align 8
  %i.au = getelementptr i8, ptr %.val148, i64 8
  %.val148.val = load ptr, ptr %i.au, align 8
  %i.av = icmp eq ptr %.0120.val, %.val148.val
  br i1 %i.av, label %bb.o, label %bb.n
end_hunk_0
