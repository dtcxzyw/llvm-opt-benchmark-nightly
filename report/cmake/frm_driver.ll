Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/frm_driver?download=true
inline.NumInlined: 101
inline.NumDeleted: 20
begin_hunk_0_@_nc_Position_Form_Cursor:bb.a
}

declare i32 @wmove(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @wcursyncup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @_nc_Refresh_Current_Field(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @__errno_location() #15
  store i32 -2, ptr %i.a, align 4, !tbaa !46
  br label %bb.ag

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 8 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27   ; 3 uses
  %.not114 = icmp eq ptr %i.c, null
  br i1 %.not114, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28   ; 19 uses
  %.not115 = icmp eq ptr %i.e, null
  br i1 %.not115, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = tail call ptr @__errno_location() #15
  store i32 -1, ptr %i.f, align 4, !tbaa !46
  br label %bb.ag

bb.f:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29   ; 2 uses
  %.not116 = icmp eq ptr %i.h, null
  br i1 %.not116, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30   ; 2 uses
  %.not117 = icmp eq ptr %i.j, null
  %i.k = load ptr, ptr @stdscr, align 8
  %spec.select = select i1 %.not117, ptr %i.k, ptr %i.j
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.l = phi ptr [ %spec.select, %bb.g ], [ %i.h, %bb.f ] ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.n = load i32, ptr %i.m, align 8, !tbaa !37
  %i.o = and i32 %i.n, 4
  %.not118 = icmp eq i32 %i.o, 0
  br i1 %.not118, label %bb.af, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !38
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.s = load i16, ptr %i.r, align 2, !tbaa !39
  %i.t = sext i16 %i.s to i32                     ; 7 uses
  %i.u = icmp sgt i32 %i.q, %i.t
  br i1 %i.u, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !40
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.y = load i16, ptr %i.x, align 4, !tbaa !41
  %i.z = sext i16 %i.y to i32
  %i.aa = icmp sgt i32 %i.w, %i.z
  br i1 %i.aa, label %.thread, label %.sink.split

bb.k:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !47
  %i.ad = add nsw i32 %i.ac, %i.t
  %i.ae = icmp eq i32 %i.ad, 1
  br i1 %i.ae, label %bb.l, label %bb.q

.thread:                                          ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !47
  %i.ah = add nsw i32 %i.ag, %i.t
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %bb.l, label %bb.ad

bb.l:                                             ; preds = %.thread, %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !32 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !45 ; 3 uses
  %i.an = icmp slt i32 %i.ak, %i.am
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !45
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.pre143 = load i16, ptr %.phi.trans.insert, align 4, !tbaa !41
  %.pre145 = sext i16 %.pre143 to i32
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.ap = load i16, ptr %i.ao, align 4, !tbaa !41
  %i.aq = sext i16 %i.ap to i32                   ; 4 uses
  %i.ar = add nsw i32 %i.am, %i.aq
  %.not124 = icmp slt i32 %i.ak, %i.ar
  br i1 %.not124, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = add i32 %i.ak, 1
  %i.at = sub i32 %i.as, %i.aq                    ; 2 uses
  store i32 %i.at, ptr %i.al, align 4, !tbaa !45
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.m
  %.pre-phi = phi i32 [ %i.aq, %bb.n ], [ %i.aq, %bb.o ], [ %.pre145, %bb.m ]
  %i.au = phi i32 [ %i.am, %bb.n ], [ %i.at, %bb.o ], [ %i.ak, %bb.m ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !42
  %i.ax = sext i16 %i.aw to i32                   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.az = load i16, ptr %i.ay, align 8, !tbaa !44
  %i.ba = sext i16 %i.az to i32                   ; 2 uses
  %i.bb = add nsw i32 %i.ba, -1
  %i.bc = add nsw i32 %i.bb, %.pre-phi
  %i.bd = tail call i32 @copywin(ptr noundef nonnull %i.c, ptr noundef %i.l, i32 noundef 0, i32 noundef %i.au, i32 noundef %i.ax, i32 noundef %i.ba, i32 noundef %i.ax, i32 noundef %i.bc, i32 noundef 0) #14 ; 0 uses
  br label %.sink.split

bb.q:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !43 ; 3 uses
  %i.bg = add i32 %i.bf, %i.t                     ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !31 ; 5 uses
  %i.bj = icmp slt i32 %i.bi, %i.bf
  %.pre.pre = load i16, ptr %i.e, align 8, !tbaa !48 ; 2 uses
  br i1 %i.bj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 %i.bi, ptr %i.be, align 8, !tbaa !43
  %i.bk = or i16 %.pre.pre, 2                     ; 2 uses
  store i16 %i.bk, ptr %i.e, align 8, !tbaa !48
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pre = phi i16 [ %i.bk, %bb.r ], [ %.pre.pre, %bb.q ] ; 2 uses
  %i.bl = phi i32 [ %i.bi, %bb.r ], [ %i.bf, %bb.q ]
  %.not119 = icmp slt i32 %i.bi, %i.bg
  br i1 %.not119, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %reass.sub = sub i32 %i.bi, %i.t
  %i.bm = add i32 %reass.sub, 1                   ; 2 uses
  store i32 %i.bm, ptr %i.be, align 8, !tbaa !43
  %i.bn = or i16 %.pre, 2                         ; 2 uses
  store i16 %i.bn, ptr %i.e, align 8, !tbaa !48
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bo = phi i32 [ %i.bm, %bb.t ], [ %i.bl, %bb.s ] ; 6 uses
  %i.bp = phi i16 [ %i.bn, %bb.t ], [ %.pre, %bb.s ] ; 2 uses
  %i.bq = and i16 %i.bp, 2
  %.not120 = icmp eq i16 %i.bq, 0
  br i1 %.not120, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.br = add nsw i32 %i.bo, %i.t
  %i.bs = and i16 %i.bp, -3
  store i16 %i.bs, ptr %i.e, align 8, !tbaa !48
  br label %.loopexit

bb.w:                                             ; preds = %bb.u
  %i.bt = icmp slt i32 %i.bo, %i.bg
  br i1 %i.bt, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.w
  %i.bu = icmp slt i32 %i.bo, 0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.z
  %.098128 = phi i32 [ %i.ca, %bb.z ], [ %i.bo, %.lr.ph.preheader ] ; 6 uses
  %i.bv = load ptr, ptr %i.b, align 8, !tbaa !27  ; 2 uses
  %.not121 = icmp eq ptr %i.bv, null
  br i1 %.not121, label %._crit_edge, label %bb.x

bb.x:                                             ; preds = %.lr.ph
  %i.bw = tail call i32 @getmaxy(ptr noundef nonnull %i.bv) #14
  %i.bx = icmp sgt i32 %.098128, %i.bw
  %or.cond = or i1 %i.bu, %i.bx
  br i1 %or.cond, label %._crit_edge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.by = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.bz = tail call zeroext i1 @is_linetouched(ptr noundef %i.by, i32 noundef %.098128) #14
  br i1 %i.bz, label %._crit_edge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ca = add nuw nsw i32 %.098128, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ca, %i.bg
  br i1 %exitcond.not, label %.sink.split, label %.lr.ph, !llvm.loop !92

._crit_edge:                                      ; preds = %.lr.ph, %bb.x, %bb.y, %bb.w
  %.098.lcssa = phi i32 [ %i.bo, %bb.w ], [ %.098128, %bb.y ], [ %.098128, %bb.x ], [ %.098128, %.lr.ph ] ; 5 uses
  %i.cb = icmp slt i32 %.098.lcssa, %i.bg
  br i1 %i.cb, label %.lr.ph137, label %.sink.split

.lr.ph137:                                        ; preds = %._crit_edge
  %i.cc = load ptr, ptr %i.b, align 8, !tbaa !27  ; 2 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %.loopexit, label %.lr.ph137.split

.lr.ph137.splitthread-pre-split:                  ; preds = %bb.ac
  %.pr = load ptr, ptr %i.b, align 8, !tbaa !27
  br label %.lr.ph137.split

.lr.ph137.split:                                  ; preds = %.lr.ph137, %.lr.ph137.splitthread-pre-split
  %i.ce = phi ptr [ %.pr, %.lr.ph137.splitthread-pre-split ], [ %i.cc, %.lr.ph137 ] ; 2 uses
  %.0135 = phi i32 [ %i.ck, %.lr.ph137.splitthread-pre-split ], [ %.098.lcssa, %.lr.ph137 ] ; 5 uses
  %.not122 = icmp eq ptr %i.ce, null
  br i1 %.not122, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph137.split
  %i.cf = tail call i32 @getmaxy(ptr noundef nonnull %i.ce) #14
  %i.cg = icmp sgt i32 %.0135, %i.cf
  %i.ch = icmp slt i32 %.0135, 0
  %or.cond3 = or i1 %i.ch, %i.cg
  br i1 %or.cond3, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ci = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.cj = tail call zeroext i1 @is_linetouched(ptr noundef %i.ci, i32 noundef %.0135) #14
  br i1 %i.cj, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %.lr.ph137.split, %bb.aa, %bb.ab
  %i.ck = add i32 %.0135, 1                       ; 2 uses
  %exitcond142.not = icmp eq i32 %i.ck, %i.bg
  br i1 %exitcond142.not, label %.loopexit, label %.lr.ph137.splitthread-pre-split, !llvm.loop !93

bb.ad:                                            ; preds = %.thread
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !43 ; 2 uses
  %i.cn = add nsw i32 %i.cm, %i.t
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ac, %bb.ab, %.lr.ph137, %bb.v, %bb.ad
  %.199 = phi i32 [ %i.bo, %bb.v ], [ %i.cm, %bb.ad ], [ %.098.lcssa, %.lr.ph137 ], [ %.098.lcssa, %bb.ab ], [ %.098.lcssa, %bb.ac ] ; 3 uses
  %.1 = phi i32 [ %i.br, %bb.v ], [ %i.cn, %bb.ad ], [ %i.bg, %.lr.ph137 ], [ %i.bg, %bb.ac ], [ %.0135, %bb.ab ] ; 2 uses
  %.not123 = icmp eq i32 %.1, %.199
  br i1 %.not123, label %.sink.split, label %bb.ae

bb.ae:                                            ; preds = %.loopexit
  %i.co = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !42
  %i.cr = sext i16 %i.cq to i32                   ; 2 uses
  %i.cs = add nsw i32 %.199, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !43 ; 2 uses
  %i.cv = sub i32 %i.cs, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cx = load i16, ptr %i.cw, align 8, !tbaa !44
  %i.cy = sext i16 %i.cx to i32                   ; 2 uses
  %i.cz = add nsw i32 %.1, %i.cr
  %i.da = xor i32 %i.cu, -1
  %i.db = add i32 %i.cz, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.dd = load i16, ptr %i.dc, align 4, !tbaa !41
  %i.de = sext i16 %i.dd to i32
  %i.df = add nsw i32 %i.cy, -1
  %i.dg = add nsw i32 %i.df, %i.de
  %i.dh = tail call i32 @copywin(ptr noundef %i.co, ptr noundef %i.l, i32 noundef %.199, i32 noundef 0, i32 noundef %i.cv, i32 noundef %i.cy, i32 noundef %i.db, i32 noundef %i.dg, i32 noundef 0) #14 ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.z, %bb.j, %bb.p, %bb.ae, %.loopexit, %._crit_edge
  %.sink = phi ptr [ %i.l, %bb.p ], [ %i.c, %bb.j ], [ %i.l, %._crit_edge ], [ %i.l, %.loopexit ], [ %i.l, %bb.ae ], [ %i.l, %bb.z ]
  tail call void @wsyncup(ptr noundef %.sink) #14
  br label %bb.af

bb.af:                                            ; preds = %.sink.split, %bb.h
  %i.di = load ptr, ptr %i.b, align 8, !tbaa !27  ; 2 uses
  %i.dj = tail call i32 @getmaxy(ptr noundef %i.di) #14
  %i.dk = tail call i32 @wtouchln(ptr noundef %i.di, i32 noundef 0, i32 noundef %i.dj, i32 noundef 0) #14 ; 0 uses
  %i.dl = tail call i32 @_nc_Position_Form_Cursor(ptr noundef nonnull %0)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.e, %bb.b
  %.0100 = phi i32 [ %i.dl, %bb.af ], [ -1, %bb.e ], [ -2, %bb.b ]
  ret i32 %.0100
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #2

declare i32 @copywin(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @getmaxy(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @is_linetouched(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @wsyncup(ptr noundef) local_unnamed_addr #1

declare i32 @wtouchln(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @_nc_Synchronize_Attributes(ptr nofree noundef captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 9 uses
  %.not49 = icmp eq ptr %i.b, null
  br i1 %.not49, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i16, ptr %i.b, align 8, !tbaa !51
  %i.d = and i16 %i.c, 1
  %.not50 = icmp eq i16 %i.d, 0
  br i1 %.not50, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !37
  %i.g = and i32 %i.f, 1
  %.not51 = icmp eq i32 %i.g, 0
  br i1 %.not51, label %bb.q, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i16, ptr %i.h, align 8, !tbaa !52
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.k = load i16, ptr %i.j, align 4, !tbaa !53
  %i.l = icmp eq i16 %i.i, %i.k
  br i1 %i.l, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !28
  %i.o = icmp eq ptr %i.n, %0
  br i1 %i.o, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @Synchronize_Buffer(ptr noundef nonnull %i.b)
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 7 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !54
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !55
  %i.v = or i32 %i.u, %i.s
  tail call void @wbkgdset(ptr noundef %i.q, i32 noundef %i.v) #14
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load i32, ptr %i.x, align 8, !tbaa !56
  %i.z = tail call i32 @wattrset(ptr noundef %i.w, i32 noundef %i.y) #14 ; 0 uses
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !27
  %i.ab = tail call i32 @werase(ptr noundef %i.aa) #14 ; 0 uses
  %i.ac = load i32, ptr %i.e, align 8, !tbaa !37  ; 2 uses
  %i.ad = and i32 %i.ac, 4
  %.not52 = icmp eq i32 %i.ad, 0
  br i1 %.not52, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !57
  %.not55 = icmp eq i16 %i.af, 0
  br i1 %.not55, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !39
  %i.ai = sext i16 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !47
  %i.al = add nsw i32 %i.ak, %i.ai
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !40
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aq = load i16, ptr %i.ap, align 4, !tbaa !41
  %i.ar = sext i16 %i.aq to i32
  %i.as = icmp ne i32 %i.ao, %i.ar
  %i.at = and i32 %i.ac, 512
  %.not56 = icmp eq i32 %i.at, 0
  %or.cond = or i1 %.not56, %i.as
  br i1 %or.cond, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = load ptr, ptr %i.p, align 8, !tbaa !27
  tail call fastcc void @Undo_Justification(ptr noundef %0, ptr noundef %i.au)
  br label %bb.q

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.av = load ptr, ptr %i.p, align 8, !tbaa !27
end_hunk_0
