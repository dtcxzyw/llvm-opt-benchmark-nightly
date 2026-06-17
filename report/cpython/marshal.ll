inline.NumInlined: 136
inline.NumDeleted: 45
begin_hunk_0_@w_complex_object:bb.a
  br label %w_float_str.exit

.critedge429:                                     ; preds = %bb.fb, %bb.fa, %bb.ez, %bb.ex, %bb.ew, %bb.ev, %bb.ek, %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  br label %w_float_str.exit

w_float_str.exit:                                 ; preds = %bb.dn, %bb.df, %bb.dm, %bb.de, %bb.fp, %bb.fo, %bb.fn, %bb.cp, %bb.co, %bb.cn, %bb.bi, %bb.bh, %bb.bb, %bb.ba, %bb.aj, %bb.ai, %bb.ga, %bb.fj, %bb.ce, %bb.n, %w_float_bin.exit495, %bb.go, %bb.gk, %w_float_bin.exit, %_PyUnicode_DATA.exit510, %_PyUnicode_DATA.exit, %._crit_edge553, %Py_DECREF.exit431, %.critedge429, %.critedge, %bb.gg, %bb.fh, %bb.dl, %bb.dc
  ret void
}

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @_Py_hashtable_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @PyLong_AsLongAndOverflow(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @w_PyLong(ptr noundef %0, i8 noundef signext %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.PyLongExport, align 8       ; 8 uses
  %i.a = getelementptr i8, ptr %2, i64 24         ; 20 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 4 uses
  %i.c = getelementptr i8, ptr %2, i64 32         ; 15 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %i.b, null
  br i1 %i.e, label %w_reserve.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %2, align 8, !tbaa !11     ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  %i.g = getelementptr i8, ptr %2, i64 40         ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18   ; 2 uses
  %i.i = ptrtoint ptr %i.b to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  br i1 %.not.i, label %bb.d, label %w_reserve.exit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %2, i64 16         ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.n = getelementptr i8, ptr %i.m, i64 16
  %.val.i = load i64, ptr %i.n, align 8, !tbaa !23 ; 5 uses
  %i.o = icmp sgt i64 %.val.i, 16777216
  %i.p = lshr i64 %.val.i, 3
  %i.q = add nsw i64 %.val.i, 1024
  %.0.i = select i1 %i.o, i64 %i.p, i64 %i.q
  %i.r = tail call i64 @llvm.smax.i64(i64 %.0.i, i64 1) ; 2 uses
  %i.s = sub i64 9223372036854775807, %.val.i
  %i.t = icmp sgt i64 %i.r, %i.s
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr i8, ptr %2, i64 8
  store i32 3, ptr %i.u, align 8, !tbaa !28
  br label %w_reserve.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.v = add i64 %i.r, %.val.i                    ; 2 uses
  %i.w = tail call i32 @_PyBytes_Resize(ptr noundef nonnull %i.l, i64 noundef %i.v) #10
  %.not38.i = icmp eq i32 %i.w, 0
  br i1 %.not38.i, label %w_reserve.exit.thread79, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  br label %w_reserve.exit.thread

w_reserve.exit.thread79:                          ; preds = %bb.f
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.y = getelementptr i8, ptr %i.x, i64 32       ; 3 uses
  store ptr %i.y, ptr %i.g, align 8, !tbaa !18
  %i.z = getelementptr i8, ptr %i.y, i64 %i.k
  %i.aa = getelementptr i8, ptr %i.y, i64 %i.v
  store ptr %i.aa, ptr %i.c, align 8, !tbaa !20
  br label %bb.h

w_reserve.exit:                                   ; preds = %bb.c
  %i.ab = tail call i64 @fwrite(ptr noundef %i.h, i64 noundef 1, i64 noundef %i.k, ptr noundef nonnull %i.f) ; 0 uses
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !18  ; 3 uses
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !19
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = icmp slt i64 %i.ag, 1
  br i1 %i.ah, label %w_reserve.exit.thread, label %bb.h

bb.h:                                             ; preds = %w_reserve.exit.thread79, %w_reserve.exit, %bb.a
  %i.ai = phi ptr [ %i.z, %w_reserve.exit.thread79 ], [ %i.ac, %w_reserve.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.aj = or i8 %1, 108
  %i.ak = getelementptr i8, ptr %i.ai, i64 1
  store ptr %i.ak, ptr %i.a, align 8, !tbaa !19
  store i8 %i.aj, ptr %i.ai, align 1, !tbaa !29
  br label %w_reserve.exit.thread

w_reserve.exit.thread:                            ; preds = %bb.b, %bb.g, %bb.e, %bb.h, %w_reserve.exit
  %i.al = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.al, align 8, !tbaa !97
  %i.am = and i64 %.val, 3
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %w_reserve.exit.thread
  tail call fastcc void @w_long(i64 noundef 0, ptr noundef %2)
  br label %bb.az

bb.j:                                             ; preds = %w_reserve.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.ao = call i32 @PyLong_Export(ptr noundef nonnull %0, ptr noundef nonnull %3) #10
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr i8, ptr %2, i64 12        ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !32
  %i.as = add i32 %i.ar, -1
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !32
  %i.at = getelementptr i8, ptr %2, i64 8
  store i32 1, ptr %i.at, align 8, !tbaa !28
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !100
  %.not31 = icmp eq ptr %i.av, null
  br i1 %.not31, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.aw = load i64, ptr %3, align 8, !tbaa !102   ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, -1
  %i.ay = call i64 @llvm.abs.i64(i64 %i.aw, i1 false) ; 2 uses
  %i.az = select i1 %i.ax, i64 1, i64 -1
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.027 = phi i64 [ 0, %bb.m ], [ %i.bb, %bb.n ]
  %.0 = phi i64 [ %i.ay, %bb.m ], [ %i.ba, %bb.n ]
  %i.ba = lshr i64 %.0, 15                        ; 2 uses
  %i.bb = add i64 %.027, %i.az                    ; 2 uses
  %.not32 = icmp eq i64 %i.ba, 0
  br i1 %.not32, label %bb.o, label %bb.n, !llvm.loop !103

bb.o:                                             ; preds = %bb.n
  call fastcc void @w_long(i64 noundef %i.bb, ptr noundef %2)
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.1 = phi i64 [ %i.ay, %bb.o ], [ %i.be, %bb.p ] ; 2 uses
  %i.bc = trunc i64 %.1 to i32
  %i.bd = and i32 %i.bc, 32767
  call fastcc void @w_short(i32 noundef %i.bd, ptr noundef %2)
  %i.be = lshr i64 %.1, 15                        ; 2 uses
  %.not33 = icmp eq i64 %i.be, 0
  br i1 %.not33, label %.loopexit, label %bb.p, !llvm.loop !104

bb.q:                                             ; preds = %bb.l
  %i.bf = call ptr @PyLong_GetNativeLayout() #10  ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !105 ; 3 uses
  %i.bh = udiv i8 %i.bg, 15
  %i.bi = zext nneg i8 %i.bh to i64               ; 3 uses
  %i.bj = getelementptr i8, ptr %i.bf, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !107
  %i.bl = icmp eq i8 %i.bk, 4
  %i.bm = load ptr, ptr %i.au, align 8, !tbaa !100 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !108
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !109 ; 2 uses
  %i.br = add i64 %i.bo, -1                       ; 7 uses
  %i.bs = mul i64 %i.br, %i.bi                    ; 2 uses
  br i1 %i.bl, label %bb.r, label %bb.ai

bb.r:                                             ; preds = %bb.q
  %i.bt = getelementptr [4 x i8], ptr %i.bm, i64 %i.br ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !7
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %.032.i = phi i64 [ %i.bs, %bb.r ], [ %i.bw, %bb.s ] ; 2 uses
  %.031.i = phi i32 [ %i.bu, %bb.r ], [ %i.bv, %bb.s ]
  %i.bv = lshr i32 %.031.i, 15                    ; 2 uses
  %i.bw = add i64 %.032.i, 1                      ; 3 uses
  %.not.i34 = icmp eq i32 %i.bv, 0
  br i1 %.not.i34, label %bb.t, label %bb.s, !llvm.loop !110

bb.t:                                             ; preds = %bb.s
  %i.bx = icmp sgt i64 %i.bw, 2147483647
  br i1 %i.bx, label %_r_digits32.exit.sink.split, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not34.i = icmp eq i8 %i.bq, 0
  %i.by = xor i64 %.032.i, -1
  %i.bz = select i1 %.not34.i, i64 %i.bw, i64 %i.by
  call fastcc void @w_long(i64 noundef %i.bz, ptr noundef nonnull %2)
  %i.ca = icmp sgt i64 %i.br, 0
  br i1 %i.ca, label %.lr.ph40.i, label %._crit_edge41.i

.lr.ph40.i:                                       ; preds = %bb.u
  %.not42.i = icmp ult i8 %i.bg, 15
  %i.cb = getelementptr i8, ptr %2, i64 40        ; 6 uses
  %i.cc = getelementptr i8, ptr %2, i64 16        ; 6 uses
  %i.cd = getelementptr i8, ptr %2, i64 8         ; 2 uses
  br i1 %.not42.i, label %._crit_edge41.i, label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph40.i, %._crit_edge.us.i
  %.03038.us.i = phi i64 [ %19, %._crit_edge.us.i ], [ 0, %.lr.ph40.i ] ; 2 uses
  %i.ce = getelementptr [4 x i8], ptr %i.bm, i64 %.03038.us.i
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !7
  br label %bb.v

bb.v:                                             ; preds = %w_short.exit.us.i, %.lr.ph.us.i
  %.037.us.i = phi i64 [ 0, %.lr.ph.us.i ], [ %i.dx, %w_short.exit.us.i ]
  %.136.us.i = phi i32 [ %i.cf, %.lr.ph.us.i ], [ %i.dw, %w_short.exit.us.i ] ; 3 uses
  %i.cg = load ptr, ptr %i.a, align 8, !tbaa !19  ; 4 uses
  %i.ch = load ptr, ptr %i.c, align 8, !tbaa !20
  %.not.i.us.i = icmp eq ptr %i.cg, %i.ch
  br i1 %.not.i.us.i, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.ci = icmp eq ptr %i.cg, null
  br i1 %i.ci, label %w_short.exit.us.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cj = load ptr, ptr %2, align 8, !tbaa !11    ; 2 uses
  %.not.i.i.us.i = icmp eq ptr %i.cj, null
  %i.ck = load ptr, ptr %i.cb, align 8, !tbaa !18 ; 2 uses
  %i.cl = ptrtoint ptr %i.cg to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm                    ; 3 uses
  br i1 %.not.i.i.us.i, label %bb.y, label %w_reserve.exit.i.us.i

w_reserve.exit.i.us.i:                            ; preds = %bb.x
  %4 = call i64 @fwrite(ptr noundef %i.ck, i64 noundef 1, i64 noundef %i.cn, ptr noundef nonnull %i.cj) ; 0 uses
  %5 = load ptr, ptr %i.cb, align 8, !tbaa !18    ; 4 uses
  store ptr %5, ptr %i.a, align 8, !tbaa !19
  %6 = load ptr, ptr %i.c, align 8, !tbaa !20     ; 2 uses
  %7 = ptrtoint ptr %6 to i64
  %8 = ptrtoint ptr %5 to i64
  %9 = sub i64 %7, %8
  %10 = icmp slt i64 %9, 1
  br i1 %10, label %w_reserve.exit.thread.i.us.i, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.co = load ptr, ptr %i.cc, align 8, !tbaa !22
  %i.cp = getelementptr i8, ptr %i.co, i64 16
  %.val.i.i.us.i = load i64, ptr %i.cp, align 8, !tbaa !23 ; 6 uses
  %i.cq = icmp sgt i64 %.val.i.i.us.i, 16777216
  %i.cr = lshr i64 %.val.i.i.us.i, 3              ; 2 uses
  %i.cs = add nsw i64 %.val.i.i.us.i, 1024        ; 2 uses
  %.0.i.i.us.i = select i1 %i.cq, i64 %i.cr, i64 %i.cs
  %i.ct = call i64 @llvm.smax.i64(i64 %.0.i.i.us.i, i64 1) ; 2 uses
  %i.cu = sub i64 9223372036854775807, %.val.i.i.us.i ; 2 uses
  %i.cv = icmp sgt i64 %i.ct, %i.cu
  br i1 %i.cv, label %.thread.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cw = add i64 %i.ct, %.val.i.i.us.i           ; 2 uses
  %i.cx = call i32 @_PyBytes_Resize(ptr noundef nonnull %i.cc, i64 noundef %i.cw) #10
  %.not38.i.i.us.i = icmp eq i32 %i.cx, 0
  br i1 %.not38.i.i.us.i, label %w_reserve.exit.thread20.i.us.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  br label %w_short.exit.us.i

w_reserve.exit.thread20.i.us.i:                   ; preds = %bb.z
  %i.cy = load ptr, ptr %i.cc, align 8, !tbaa !22
  %i.cz = getelementptr i8, ptr %i.cy, i64 32     ; 3 uses
  store ptr %i.cz, ptr %i.cb, align 8, !tbaa !18
  %i.da = getelementptr i8, ptr %i.cz, i64 %i.cn
  %i.db = getelementptr i8, ptr %i.cz, i64 %i.cw
  store ptr %i.db, ptr %i.c, align 8, !tbaa !20
  br label %bb.ab

bb.ab:                                            ; preds = %w_reserve.exit.thread20.i.us.i, %w_reserve.exit.i.us.i, %bb.v
  %i.dc = phi ptr [ %i.da, %w_reserve.exit.thread20.i.us.i ], [ %5, %w_reserve.exit.i.us.i ], [ %i.cg, %bb.v ] ; 2 uses
  %i.dd = trunc i32 %.136.us.i to i8
  %i.de = getelementptr i8, ptr %i.dc, i64 1
  store ptr %i.de, ptr %i.a, align 8, !tbaa !19
  store i8 %i.dd, ptr %i.dc, align 1, !tbaa !29
  %.pr.pre.i.us.i = load ptr, ptr %i.a, align 8, !tbaa !19
  %.pre.pre.i.us.i = load ptr, ptr %i.c, align 8, !tbaa !20
  br label %w_reserve.exit.thread.i.us.i

w_reserve.exit.thread.i.us.i:                     ; preds = %bb.ab, %w_reserve.exit.i.us.i
  %i.df = phi ptr [ %.pre.pre.i.us.i, %bb.ab ], [ %6, %w_reserve.exit.i.us.i ] ; 3 uses
  %i.dg = phi ptr [ %.pr.pre.i.us.i, %bb.ab ], [ %5, %w_reserve.exit.i.us.i ] ; 2 uses
  %.not10.i.us.i = icmp eq ptr %i.dg, %i.df
  br i1 %.not10.i.us.i, label %w_reserve.exit.thread.thread.i.us.i, label %bb.ag

w_reserve.exit.thread.thread.i.us.i:              ; preds = %w_reserve.exit.thread.i.us.i
  %i.dh = icmp eq ptr %i.df, null
  br i1 %i.dh, label %w_short.exit.us.i, label %bb.ac

.thread.i:                                        ; preds = %bb.y
  store i32 3, ptr %i.cd, align 8, !tbaa !28
  br label %bb.ad

bb.ac:                                            ; preds = %w_reserve.exit.thread.thread.i.us.i
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !11  ; 2 uses
  %.pre45.i.a = load ptr, ptr %i.cb, align 8, !tbaa !18 ; 2 uses
  %.pre46.i.a = ptrtoint ptr %i.df to i64
  %.pre47.i = ptrtoint ptr %.pre45.i.a to i64
  %.pre49.i = sub i64 %.pre46.i.a, %.pre47.i      ; 2 uses
  %.not.i12.i.us.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i12.i.us.i, label %._crit_edge89, label %w_reserve.exit17.i.us.i

._crit_edge89:                                    ; preds = %bb.ac
  %.pre90 = load ptr, ptr %i.cc, align 8, !tbaa !22
  %.phi.trans.insert91 = getelementptr i8, ptr %.pre90, i64 16
  %.val.i14.i.us.i.pre = load i64, ptr %.phi.trans.insert91, align 8, !tbaa !23 ; 4 uses
  %.pre93 = lshr i64 %.val.i14.i.us.i.pre, 3
  %.pre94 = add nsw i64 %.val.i14.i.us.i.pre, 1024
  %.pre96 = sub i64 9223372036854775807, %.val.i14.i.us.i.pre
  br label %bb.ad

w_reserve.exit17.i.us.i:                          ; preds = %bb.ac
  %11 = call i64 @fwrite(ptr noundef %.pre45.i.a, i64 noundef 1, i64 noundef %.pre49.i, ptr noundef nonnull %.pre.i) ; 0 uses
  %12 = load ptr, ptr %i.cb, align 8, !tbaa !18   ; 3 uses
  store ptr %12, ptr %i.a, align 8, !tbaa !19
  %13 = load ptr, ptr %i.c, align 8, !tbaa !20
  %14 = ptrtoint ptr %13 to i64
  %15 = ptrtoint ptr %12 to i64
  %16 = sub i64 %14, %15
  %17 = icmp slt i64 %16, 1
  br i1 %17, label %w_short.exit.us.i, label %bb.ag

bb.ad:                                            ; preds = %._crit_edge89, %.thread.i
  %.pre-phi97 = phi i64 [ %.pre96, %._crit_edge89 ], [ %i.cu, %.thread.i ]
  %.pre-phi95 = phi i64 [ %.pre94, %._crit_edge89 ], [ %i.cs, %.thread.i ]
  %.pre-phi = phi i64 [ %.pre93, %._crit_edge89 ], [ %i.cr, %.thread.i ]
  %.val.i14.i.us.i = phi i64 [ %.val.i14.i.us.i.pre, %._crit_edge89 ], [ %.val.i.i.us.i, %.thread.i ] ; 2 uses
  %.pre-phi5064.i = phi i64 [ %.pre49.i, %._crit_edge89 ], [ %i.cn, %.thread.i ]
  %i.di = icmp sgt i64 %.val.i14.i.us.i, 16777216
  %.0.i15.i.us.i = select i1 %i.di, i64 %.pre-phi, i64 %.pre-phi95
  %i.dj = call i64 @llvm.smax.i64(i64 %.0.i15.i.us.i, i64 1) ; 2 uses
  %i.dk = icmp sgt i64 %i.dj, %.pre-phi97
  br i1 %i.dk, label %18, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dl = add i64 %i.dj, %.val.i14.i.us.i         ; 2 uses
  %i.dm = call i32 @_PyBytes_Resize(ptr noundef nonnull %i.cc, i64 noundef %i.dl) #10
  %.not38.i16.i.us.i = icmp eq i32 %i.dm, 0
  br i1 %.not38.i16.i.us.i, label %w_reserve.exit17.thread25.i.us.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  br label %w_short.exit.us.i

w_reserve.exit17.thread25.i.us.i:                 ; preds = %bb.ae
  %i.dn = load ptr, ptr %i.cc, align 8, !tbaa !22
  %i.do = getelementptr i8, ptr %i.dn, i64 32     ; 3 uses
  store ptr %i.do, ptr %i.cb, align 8, !tbaa !18
  %i.dp = getelementptr i8, ptr %i.do, i64 %.pre-phi5064.i
  %i.dq = getelementptr i8, ptr %i.do, i64 %i.dl
  store ptr %i.dq, ptr %i.c, align 8, !tbaa !20
  br label %bb.ag

bb.ag:                                            ; preds = %w_reserve.exit17.thread25.i.us.i, %w_reserve.exit17.i.us.i, %w_reserve.exit.thread.i.us.i
  %i.dr = phi ptr [ %i.dp, %w_reserve.exit17.thread25.i.us.i ], [ %12, %w_reserve.exit17.i.us.i ], [ %i.dg, %w_reserve.exit.thread.i.us.i ] ; 2 uses
  %i.ds = lshr i32 %.136.us.i, 8
  %i.dt = trunc i32 %i.ds to i8
  %i.du = and i8 %i.dt, 127
  %i.dv = getelementptr i8, ptr %i.dr, i64 1
  store ptr %i.dv, ptr %i.a, align 8, !tbaa !19
  store i8 %i.du, ptr %i.dr, align 1, !tbaa !29
  br label %w_short.exit.us.i

18:                                               ; preds = %bb.ad
  store i32 3, ptr %i.cd, align 8, !tbaa !28
  br label %w_short.exit.us.i

w_short.exit.us.i:                                ; preds = %18, %bb.ag, %bb.af, %w_reserve.exit17.i.us.i, %w_reserve.exit.thread.thread.i.us.i, %bb.aa, %bb.w
  %i.dw = lshr i32 %.136.us.i, 15
  %i.dx = add nuw nsw i64 %.037.us.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dx, %i.bi
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.v, !llvm.loop !111

._crit_edge.us.i:                                 ; preds = %w_short.exit.us.i
  %19 = add nuw nsw i64 %.03038.us.i, 1           ; 2 uses
  %exitcond44.not.i = icmp eq i64 %19, %i.br
  br i1 %exitcond44.not.i, label %._crit_edge41.i, label %.lr.ph.us.i, !llvm.loop !112

._crit_edge41.i:                                  ; preds = %._crit_edge.us.i, %.lr.ph40.i, %bb.u
  %20 = load i32, ptr %i.bt, align 4, !tbaa !7
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %._crit_edge41.i
  %.2.i = phi i32 [ %20, %._crit_edge41.i ], [ %i.dz, %bb.ah ] ; 2 uses
  %i.dy = and i32 %.2.i, 32767
  call fastcc void @w_short(i32 noundef %i.dy, ptr noundef nonnull %2)
  %i.dz = lshr i32 %.2.i, 15                      ; 2 uses
  %.not35.i = icmp eq i32 %i.dz, 0
  br i1 %.not35.i, label %_r_digits32.exit, label %bb.ah, !llvm.loop !113

bb.ai:                                            ; preds = %bb.q
  %i.ea = getelementptr [2 x i8], ptr %i.bm, i64 %i.br ; 2 uses
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !114
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %bb.ai
  %.032.i35 = phi i64 [ %i.bs, %bb.ai ], [ %i.ed, %bb.aj ] ; 2 uses
  %.031.i36 = phi i16 [ %i.eb, %bb.ai ], [ %i.ec, %bb.aj ] ; 2 uses
  %i.ec = lshr i16 %.031.i36, 15
  %i.ed = add i64 %.032.i35, 1                    ; 3 uses
  %.not.i37 = icmp sgt i16 %.031.i36, -1
  br i1 %.not.i37, label %bb.ak, label %bb.aj, !llvm.loop !116

bb.ak:                                            ; preds = %bb.aj
  %i.ee = icmp sgt i64 %i.ed, 2147483647
  br i1 %i.ee, label %_r_digits32.exit.sink.split, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.not34.i38 = icmp eq i8 %i.bq, 0
  %i.ef = xor i64 %.032.i35, -1
  %i.eg = select i1 %.not34.i38, i64 %i.ed, i64 %i.ef
  call fastcc void @w_long(i64 noundef %i.eg, ptr noundef nonnull %2)
  %i.eh = icmp sgt i64 %i.br, 0
  br i1 %i.eh, label %.lr.ph40.i42, label %._crit_edge41.i39

.lr.ph40.i42:                                     ; preds = %bb.al
  %.not42.i43 = icmp ult i8 %i.bg, 15
  %i.ei = getelementptr i8, ptr %2, i64 40        ; 6 uses
  %i.ej = getelementptr i8, ptr %2, i64 16        ; 6 uses
  %i.ek = getelementptr i8, ptr %2, i64 8         ; 2 uses
  br i1 %.not42.i43, label %._crit_edge41.i39, label %.lr.ph.us.i44

.lr.ph.us.i44:                                    ; preds = %.lr.ph40.i42, %._crit_edge.us.i55
  %.03038.us.i45 = phi i64 [ %36, %._crit_edge.us.i55 ], [ 0, %.lr.ph40.i42 ] ; 2 uses
  %i.el = getelementptr [2 x i8], ptr %i.bm, i64 %.03038.us.i45
  %i.em = load i16, ptr %i.el, align 2, !tbaa !114
  br label %bb.am

bb.am:                                            ; preds = %w_short.exit.us.i53, %.lr.ph.us.i44
  %.037.us.i46 = phi i64 [ 0, %.lr.ph.us.i44 ], [ %i.ge, %w_short.exit.us.i53 ]
  %.136.us.i47 = phi i16 [ %i.em, %.lr.ph.us.i44 ], [ %i.gd, %w_short.exit.us.i53 ] ; 3 uses
  %i.en = load ptr, ptr %i.a, align 8, !tbaa !19  ; 4 uses
  %i.eo = load ptr, ptr %i.c, align 8, !tbaa !20
  %.not.i.us.i48 = icmp eq ptr %i.en, %i.eo
  br i1 %.not.i.us.i48, label %bb.an, label %bb.as

bb.an:                                            ; preds = %bb.am
  %i.ep = icmp eq ptr %i.en, null
  br i1 %i.ep, label %w_short.exit.us.i53, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eq = load ptr, ptr %2, align 8, !tbaa !11    ; 2 uses
  %.not.i.i.us.i70 = icmp eq ptr %i.eq, null
  %i.er = load ptr, ptr %i.ei, align 8, !tbaa !18 ; 2 uses
  %i.es = ptrtoint ptr %i.en to i64
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = sub i64 %i.es, %i.et                    ; 3 uses
  br i1 %.not.i.i.us.i70, label %bb.ap, label %w_reserve.exit.i.us.i71

w_reserve.exit.i.us.i71:                          ; preds = %bb.ao
  %21 = call i64 @fwrite(ptr noundef %i.er, i64 noundef 1, i64 noundef %i.eu, ptr noundef nonnull %i.eq) ; 0 uses
  %22 = load ptr, ptr %i.ei, align 8, !tbaa !18   ; 4 uses
  store ptr %22, ptr %i.a, align 8, !tbaa !19
  %23 = load ptr, ptr %i.c, align 8, !tbaa !20    ; 2 uses
  %24 = ptrtoint ptr %23 to i64
  %25 = ptrtoint ptr %22 to i64
  %26 = sub i64 %24, %25
  %27 = icmp slt i64 %26, 1
  br i1 %27, label %w_reserve.exit.thread.i.us.i51, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.ev = load ptr, ptr %i.ej, align 8, !tbaa !22
  %i.ew = getelementptr i8, ptr %i.ev, i64 16
  %.val.i.i.us.i72 = load i64, ptr %i.ew, align 8, !tbaa !23 ; 6 uses
  %i.ex = icmp sgt i64 %.val.i.i.us.i72, 16777216
  %i.ey = lshr i64 %.val.i.i.us.i72, 3            ; 2 uses
  %i.ez = add nsw i64 %.val.i.i.us.i72, 1024      ; 2 uses
  %.0.i.i.us.i73 = select i1 %i.ex, i64 %i.ey, i64 %i.ez
  %i.fa = call i64 @llvm.smax.i64(i64 %.0.i.i.us.i73, i64 1) ; 2 uses
  %i.fb = sub i64 9223372036854775807, %.val.i.i.us.i72 ; 2 uses
  %i.fc = icmp sgt i64 %i.fa, %i.fb
  br i1 %i.fc, label %.thread.i76, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fd = add i64 %i.fa, %.val.i.i.us.i72         ; 2 uses
  %i.fe = call i32 @_PyBytes_Resize(ptr noundef nonnull %i.ej, i64 noundef %i.fd) #10
  %.not38.i.i.us.i74 = icmp eq i32 %i.fe, 0
  br i1 %.not38.i.i.us.i74, label %w_reserve.exit.thread20.i.us.i75, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  br label %w_short.exit.us.i53

w_reserve.exit.thread20.i.us.i75:                 ; preds = %bb.aq
  %i.ff = load ptr, ptr %i.ej, align 8, !tbaa !22
  %i.fg = getelementptr i8, ptr %i.ff, i64 32     ; 3 uses
  store ptr %i.fg, ptr %i.ei, align 8, !tbaa !18
  %i.fh = getelementptr i8, ptr %i.fg, i64 %i.eu
  %i.fi = getelementptr i8, ptr %i.fg, i64 %i.fd
  store ptr %i.fi, ptr %i.c, align 8, !tbaa !20
  br label %bb.as

bb.as:                                            ; preds = %w_reserve.exit.thread20.i.us.i75, %w_reserve.exit.i.us.i71, %bb.am
  %i.fj = phi ptr [ %i.fh, %w_reserve.exit.thread20.i.us.i75 ], [ %22, %w_reserve.exit.i.us.i71 ], [ %i.en, %bb.am ] ; 2 uses
  %i.fk = trunc i16 %.136.us.i47 to i8
  %i.fl = getelementptr i8, ptr %i.fj, i64 1
  store ptr %i.fl, ptr %i.a, align 8, !tbaa !19
  store i8 %i.fk, ptr %i.fj, align 1, !tbaa !29
  %.pr.pre.i.us.i49 = load ptr, ptr %i.a, align 8, !tbaa !19
  %.pre.pre.i.us.i50 = load ptr, ptr %i.c, align 8, !tbaa !20
  br label %w_reserve.exit.thread.i.us.i51

w_reserve.exit.thread.i.us.i51:                   ; preds = %bb.as, %w_reserve.exit.i.us.i71
  %i.fm = phi ptr [ %.pre.pre.i.us.i50, %bb.as ], [ %23, %w_reserve.exit.i.us.i71 ] ; 3 uses
  %i.fn = phi ptr [ %.pr.pre.i.us.i49, %bb.as ], [ %22, %w_reserve.exit.i.us.i71 ] ; 2 uses
  %.not10.i.us.i52 = icmp eq ptr %i.fn, %i.fm
  br i1 %.not10.i.us.i52, label %w_reserve.exit.thread.thread.i.us.i57, label %bb.ax

w_reserve.exit.thread.thread.i.us.i57:            ; preds = %w_reserve.exit.thread.i.us.i51
  %i.fo = icmp eq ptr %i.fm, null
  br i1 %i.fo, label %w_short.exit.us.i53, label %bb.at

.thread.i76:                                      ; preds = %bb.ap
  store i32 3, ptr %i.ek, align 8, !tbaa !28
  br label %bb.au

bb.at:                                            ; preds = %w_reserve.exit.thread.thread.i.us.i57
  %.pre.i58 = load ptr, ptr %2, align 8, !tbaa !11 ; 2 uses
  %.pre45.i59 = load ptr, ptr %i.ei, align 8, !tbaa !18 ; 2 uses
  %.pre46.i60 = ptrtoint ptr %i.fm to i64
  %.pre47.i61 = ptrtoint ptr %.pre45.i59 to i64
  %.pre49.i62 = sub i64 %.pre46.i60, %.pre47.i61  ; 2 uses
  %.not.i12.i.us.i63 = icmp eq ptr %.pre.i58, null
  br i1 %.not.i12.i.us.i63, label %._crit_edge, label %w_reserve.exit17.i.us.i64

._crit_edge:                                      ; preds = %bb.at
  %.pre = load ptr, ptr %i.ej, align 8, !tbaa !22
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 16
  %.val.i14.i.us.i66.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !23 ; 4 uses
  %.pre98 = lshr i64 %.val.i14.i.us.i66.pre, 3
  %.pre100 = add nsw i64 %.val.i14.i.us.i66.pre, 1024
  %.pre102 = sub i64 9223372036854775807, %.val.i14.i.us.i66.pre
  br label %bb.au

w_reserve.exit17.i.us.i64:                        ; preds = %bb.at
  %28 = call i64 @fwrite(ptr noundef %.pre45.i59, i64 noundef 1, i64 noundef %.pre49.i62, ptr noundef nonnull %.pre.i58) ; 0 uses
  %29 = load ptr, ptr %i.ei, align 8, !tbaa !18   ; 3 uses
  store ptr %29, ptr %i.a, align 8, !tbaa !19
  %30 = load ptr, ptr %i.c, align 8, !tbaa !20
  %31 = ptrtoint ptr %30 to i64
  %32 = ptrtoint ptr %29 to i64
  %33 = sub i64 %31, %32
  %34 = icmp slt i64 %33, 1
  br i1 %34, label %w_short.exit.us.i53, label %bb.ax

bb.au:                                            ; preds = %._crit_edge, %.thread.i76
  %.pre-phi103 = phi i64 [ %.pre102, %._crit_edge ], [ %i.fb, %.thread.i76 ]
  %.pre-phi101 = phi i64 [ %.pre100, %._crit_edge ], [ %i.ez, %.thread.i76 ]
  %.pre-phi99 = phi i64 [ %.pre98, %._crit_edge ], [ %i.ey, %.thread.i76 ]
  %.val.i14.i.us.i66 = phi i64 [ %.val.i14.i.us.i66.pre, %._crit_edge ], [ %.val.i.i.us.i72, %.thread.i76 ] ; 2 uses
  %.pre-phi5064.i65 = phi i64 [ %.pre49.i62, %._crit_edge ], [ %i.eu, %.thread.i76 ]
  %i.fp = icmp sgt i64 %.val.i14.i.us.i66, 16777216
  %.0.i15.i.us.i67 = select i1 %i.fp, i64 %.pre-phi99, i64 %.pre-phi101
  %i.fq = call i64 @llvm.smax.i64(i64 %.0.i15.i.us.i67, i64 1) ; 2 uses
  %i.fr = icmp sgt i64 %i.fq, %.pre-phi103
  br i1 %i.fr, label %35, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fs = add i64 %i.fq, %.val.i14.i.us.i66       ; 2 uses
  %i.ft = call i32 @_PyBytes_Resize(ptr noundef nonnull %i.ej, i64 noundef %i.fs) #10
  %.not38.i16.i.us.i68 = icmp eq i32 %i.ft, 0
  br i1 %.not38.i16.i.us.i68, label %w_reserve.exit17.thread25.i.us.i69, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  br label %w_short.exit.us.i53

w_reserve.exit17.thread25.i.us.i69:               ; preds = %bb.av
  %i.fu = load ptr, ptr %i.ej, align 8, !tbaa !22
  %i.fv = getelementptr i8, ptr %i.fu, i64 32     ; 3 uses
  store ptr %i.fv, ptr %i.ei, align 8, !tbaa !18
  %i.fw = getelementptr i8, ptr %i.fv, i64 %.pre-phi5064.i65
  %i.fx = getelementptr i8, ptr %i.fv, i64 %i.fs
  store ptr %i.fx, ptr %i.c, align 8, !tbaa !20
  br label %bb.ax

bb.ax:                                            ; preds = %w_reserve.exit17.thread25.i.us.i69, %w_reserve.exit17.i.us.i64, %w_reserve.exit.thread.i.us.i51
  %i.fy = phi ptr [ %i.fw, %w_reserve.exit17.thread25.i.us.i69 ], [ %29, %w_reserve.exit17.i.us.i64 ], [ %i.fn, %w_reserve.exit.thread.i.us.i51 ] ; 2 uses
  %i.fz = lshr i16 %.136.us.i47, 8
  %i.ga = trunc nuw i16 %i.fz to i8
  %i.gb = and i8 %i.ga, 127
  %i.gc = getelementptr i8, ptr %i.fy, i64 1
  store ptr %i.gc, ptr %i.a, align 8, !tbaa !19
  store i8 %i.gb, ptr %i.fy, align 1, !tbaa !29
  br label %w_short.exit.us.i53

35:                                               ; preds = %bb.au
  store i32 3, ptr %i.ek, align 8, !tbaa !28
  br label %w_short.exit.us.i53

w_short.exit.us.i53:                              ; preds = %35, %bb.ax, %bb.aw, %w_reserve.exit17.i.us.i64, %w_reserve.exit.thread.thread.i.us.i57, %bb.ar, %bb.an
  %i.gd = lshr i16 %.136.us.i47, 15
  %i.ge = add nuw nsw i64 %.037.us.i46, 1         ; 2 uses
  %exitcond.not.i54 = icmp eq i64 %i.ge, %i.bi
  br i1 %exitcond.not.i54, label %._crit_edge.us.i55, label %bb.am, !llvm.loop !117

._crit_edge.us.i55:                               ; preds = %w_short.exit.us.i53
  %36 = add nuw nsw i64 %.03038.us.i45, 1         ; 2 uses
  %exitcond44.not.i56 = icmp eq i64 %36, %i.br
  br i1 %exitcond44.not.i56, label %._crit_edge41.i39, label %.lr.ph.us.i44, !llvm.loop !118

._crit_edge41.i39:                                ; preds = %._crit_edge.us.i55, %.lr.ph40.i42, %bb.al
  %37 = load i16, ptr %i.ea, align 2, !tbaa !114
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %._crit_edge41.i39
  %.2.i40 = phi i16 [ %37, %._crit_edge41.i39 ], [ %i.gh, %bb.ay ] ; 3 uses
  %i.gf = and i16 %.2.i40, 32767
  %i.gg = zext nneg i16 %i.gf to i32
  call fastcc void @w_short(i32 noundef %i.gg, ptr noundef nonnull %2)
  %i.gh = lshr i16 %.2.i40, 15
  %.not35.i41 = icmp sgt i16 %.2.i40, -1
  br i1 %.not35.i41, label %_r_digits32.exit, label %bb.ay, !llvm.loop !119

_r_digits32.exit.sink.split:                      ; preds = %bb.ak, %bb.t
  %i.gi = getelementptr i8, ptr %2, i64 12        ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !32
  %i.gk = add i32 %i.gj, -1
  store i32 %i.gk, ptr %i.gi, align 4, !tbaa !32
  %i.gl = getelementptr i8, ptr %2, i64 8
  store i32 1, ptr %i.gl, align 8, !tbaa !28
  br label %_r_digits32.exit

_r_digits32.exit:                                 ; preds = %bb.ay, %bb.ah, %_r_digits32.exit.sink.split
  call void @PyLong_FreeExport(ptr noundef nonnull %3) #10
  br label %.loopexit

.loopexit:                                        ; preds = %bb.p, %_r_digits32.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.az

bb.az:                                            ; preds = %.loopexit, %bb.i
  ret void
}

declare double @PyComplex_RealAsDouble(ptr noundef) local_unnamed_addr #3

declare double @PyComplex_ImagAsDouble(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @w_pstring(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i64 %1, 2147483647
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %2, i64 12         ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !32
  %i.d = add i32 %i.c, -1
  store i32 %i.d, ptr %i.b, align 4, !tbaa !32
  %i.e = getelementptr i8, ptr %2, i64 8
  store i32 1, ptr %i.e, align 8, !tbaa !28
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @w_long(i64 noundef %1, ptr noundef %2)
  tail call fastcc void @w_string(ptr noundef %0, i64 noundef %1, ptr noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @w_short_pstring(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 24         ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 4 uses
  %i.c = getelementptr i8, ptr %2, i64 32         ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %i.b, null
  br i1 %i.e, label %w_reserve.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %2, align 8, !tbaa !11     ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  %i.g = getelementptr i8, ptr %2, i64 40         ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18   ; 2 uses
  %i.i = ptrtoint ptr %i.b to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  br i1 %.not.i, label %bb.d, label %w_reserve.exit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %2, i64 16         ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.n = getelementptr i8, ptr %i.m, i64 16
  %.val.i = load i64, ptr %i.n, align 8, !tbaa !23 ; 5 uses
  %i.o = icmp sgt i64 %.val.i, 16777216
  %i.p = lshr i64 %.val.i, 3
  %i.q = add nsw i64 %.val.i, 1024
  %.0.i = select i1 %i.o, i64 %i.p, i64 %i.q
  %i.r = tail call i64 @llvm.smax.i64(i64 %.0.i, i64 1) ; 2 uses
  %i.s = sub i64 9223372036854775807, %.val.i
  %i.t = icmp sgt i64 %i.r, %i.s
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr i8, ptr %2, i64 8
  store i32 3, ptr %i.u, align 8, !tbaa !28
  br label %w_reserve.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.v = add i64 %i.r, %.val.i                    ; 2 uses
  %i.w = tail call i32 @_PyBytes_Resize(ptr noundef nonnull %i.l, i64 noundef %i.v) #10
  %.not38.i = icmp eq i32 %i.w, 0
  br i1 %.not38.i, label %w_reserve.exit.thread10, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  br label %w_reserve.exit.thread

w_reserve.exit.thread10:                          ; preds = %bb.f
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.y = getelementptr i8, ptr %i.x, i64 32       ; 3 uses
  store ptr %i.y, ptr %i.g, align 8, !tbaa !18
  %i.z = getelementptr i8, ptr %i.y, i64 %i.k
  %i.aa = getelementptr i8, ptr %i.y, i64 %i.v
  store ptr %i.aa, ptr %i.c, align 8, !tbaa !20
  br label %bb.h

w_reserve.exit:                                   ; preds = %bb.c
  %i.ab = tail call i64 @fwrite(ptr noundef %i.h, i64 noundef 1, i64 noundef %i.k, ptr noundef nonnull %i.f) ; 0 uses
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !18  ; 3 uses
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !19
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = icmp slt i64 %i.ag, 1
  br i1 %i.ah, label %w_reserve.exit.thread, label %bb.h

bb.h:                                             ; preds = %w_reserve.exit.thread10, %w_reserve.exit, %bb.a
  %i.ai = phi ptr [ %i.z, %w_reserve.exit.thread10 ], [ %i.ac, %w_reserve.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.aj = trunc i64 %1 to i8
  %i.ak = getelementptr i8, ptr %i.ai, i64 1
  store ptr %i.ak, ptr %i.a, align 8, !tbaa !19
  store i8 %i.aj, ptr %i.ai, align 1, !tbaa !29
  br label %w_reserve.exit.thread

w_reserve.exit.thread:                            ; preds = %bb.b, %bb.g, %bb.e, %w_reserve.exit, %bb.h
  tail call fastcc void @w_string(ptr noundef %0, i64 noundef %1, ptr noundef %2)
  ret void
}

declare ptr @PyUnicode_AsEncodedString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @PyDict_Next(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @_PySet_NextEntryRef(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PyTuple_Pack(i64 noundef, ...) local_unnamed_addr #3

declare i32 @PyList_Sort(ptr noundef) local_unnamed_addr #3

declare ptr @_PyCode_GetCode(ptr noundef) local_unnamed_addr #3

declare i32 @PyObject_CheckBuffer(ptr noundef) local_unnamed_addr #3

declare i32 @PyObject_GetBuffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @PyBuffer_Release(ptr noundef) local_unnamed_addr #3

declare i32 @PyLong_Export(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @w_short(i32 noundef range(i32 0, 32768) %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 24         ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 5 uses
  %i.c = getelementptr i8, ptr %1, i64 32         ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %i.b, null
  br i1 %i.e, label %w_reserve.exit17.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !11     ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  %i.g = getelementptr i8, ptr %1, i64 40         ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18   ; 2 uses
  %i.i = ptrtoint ptr %i.b to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  br i1 %.not.i, label %bb.d, label %w_reserve.exit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %1, i64 16         ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.n = getelementptr i8, ptr %i.m, i64 16
  %.val.i = load i64, ptr %i.n, align 8, !tbaa !23 ; 5 uses
  %i.o = icmp sgt i64 %.val.i, 16777216
  %i.p = lshr i64 %.val.i, 3
  %i.q = add nsw i64 %.val.i, 1024
  %.0.i = select i1 %i.o, i64 %i.p, i64 %i.q
  %i.r = tail call i64 @llvm.smax.i64(i64 %.0.i, i64 1) ; 2 uses
  %i.s = sub i64 9223372036854775807, %.val.i
  %i.t = icmp sgt i64 %i.r, %i.s
  br i1 %i.t, label %w_reserve.exit.thread.thread.thread38, label %bb.e

end_hunk_0
