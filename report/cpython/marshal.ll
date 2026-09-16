Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/marshal?download=true
inline.NumInlined: 136
inline.NumDeleted: 45
begin_hunk_0_@w_complex_object:bb.a
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.nt) #10
  br label %w_float_str.exit

bb.fq:                                            ; preds = %bb.ff
  %i.pq = tail call i32 @PyObject_CheckBuffer(ptr noundef nonnull %0) #10
  %.not358 = icmp eq i32 %i.pq, 0
  br i1 %.not358, label %bb.gb, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.pr = call i32 @PyObject_GetBuffer(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 0) #10
  %.not366 = icmp eq i32 %i.pr, 0
  %i.ps = getelementptr i8, ptr %2, i64 24        ; 5 uses
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !19 ; 3 uses
  %i.pu = getelementptr i8, ptr %2, i64 32
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !20
  %.not367 = icmp eq ptr %i.pt, %i.pv             ; 2 uses
  br i1 %.not366, label %bb.fw, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  br i1 %.not367, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %i.pw = call fastcc i32 @w_reserve(ptr noundef %2, i64 noundef 1)
  %.not370 = icmp eq i32 %i.pw, 0
  br i1 %.not370, label %bb.fv, label %._crit_edge563

._crit_edge563:                                   ; preds = %bb.ft
  %.pre = load ptr, ptr %i.ps, align 8, !tbaa !19
  br label %bb.fu

bb.fu:                                            ; preds = %._crit_edge563, %bb.fs
  %i.px = phi ptr [ %.pre, %._crit_edge563 ], [ %i.pt, %bb.fs ] ; 2 uses
  %i.py = getelementptr i8, ptr %i.px, i64 1
  store ptr %i.py, ptr %i.ps, align 8, !tbaa !19
  store i8 63, ptr %i.px, align 1, !tbaa !29
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %i.pz = getelementptr i8, ptr %2, i64 12        ; 2 uses
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !32
  %i.qb = add i32 %i.qa, -1
  store i32 %i.qb, ptr %i.pz, align 4, !tbaa !32
  %i.qc = getelementptr i8, ptr %2, i64 8
  store i32 1, ptr %i.qc, align 8, !tbaa !28
  br label %bb.ga

bb.fw:                                            ; preds = %bb.fr
  br i1 %.not367, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.qd = call fastcc i32 @w_reserve(ptr noundef %2, i64 noundef 1)
  %.not368 = icmp eq i32 %i.qd, 0
  br i1 %.not368, label %bb.fz, label %._crit_edge564

._crit_edge564:                                   ; preds = %bb.fx
  %.pre565 = load ptr, ptr %i.ps, align 8, !tbaa !19
  br label %bb.fy

bb.fy:                                            ; preds = %._crit_edge564, %bb.fw
  %i.qe = phi ptr [ %.pre565, %._crit_edge564 ], [ %i.pt, %bb.fw ] ; 2 uses
  %i.qf = or i8 %1, 115
  %i.qg = getelementptr i8, ptr %i.qe, i64 1
  store ptr %i.qg, ptr %i.ps, align 8, !tbaa !19
  store i8 %i.qf, ptr %i.qe, align 1, !tbaa !29
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  %i.qh = load ptr, ptr %3, align 8, !tbaa !51
  %i.qi = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.qj = load i64, ptr %i.qi, align 8, !tbaa !52
  call fastcc void @w_pstring(ptr noundef %i.qh, i64 noundef %i.qj, ptr noundef %2)
  call void @PyBuffer_Release(ptr noundef nonnull %3) #10
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fv
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %w_float_str.exit

bb.gb:                                            ; preds = %bb.fq
  %.val452 = load ptr, ptr %i.k, align 8, !tbaa !43
  %.not541 = icmp eq ptr %.val452, @PySlice_Type
  br i1 %.not541, label %bb.gc, label %bb.gl

bb.gc:                                            ; preds = %bb.gb
  %i.qk = getelementptr i8, ptr %2, i64 56
  %i.ql = load i32, ptr %i.qk, align 8, !tbaa !21
  %i.qm = icmp slt i32 %i.ql, 5
  %i.qn = getelementptr i8, ptr %2, i64 24        ; 5 uses
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !19 ; 3 uses
  %i.qp = getelementptr i8, ptr %2, i64 32
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !20
  %.not364 = icmp eq ptr %i.qo, %i.qq             ; 2 uses
  br i1 %i.qm, label %bb.gd, label %bb.gh

bb.gd:                                            ; preds = %bb.gc
  br i1 %.not364, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.qr = tail call fastcc i32 @w_reserve(ptr noundef %2, i64 noundef 1)
  %.not365 = icmp eq i32 %i.qr, 0
  br i1 %.not365, label %bb.gg, label %._crit_edge570

._crit_edge570:                                   ; preds = %bb.ge
  %.pre571 = load ptr, ptr %i.qn, align 8, !tbaa !19
  br label %bb.gf

bb.gf:                                            ; preds = %._crit_edge570, %bb.gd
  %i.qs = phi ptr [ %.pre571, %._crit_edge570 ], [ %i.qo, %bb.gd ] ; 2 uses
  %i.qt = getelementptr i8, ptr %i.qs, i64 1
  store ptr %i.qt, ptr %i.qn, align 8, !tbaa !19
  store i8 63, ptr %i.qs, align 1, !tbaa !29
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  %i.qu = getelementptr i8, ptr %2, i64 8
  store i32 1, ptr %i.qu, align 8, !tbaa !28
  br label %w_float_str.exit

bb.gh:                                            ; preds = %bb.gc
  br i1 %.not364, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  %i.qv = tail call fastcc i32 @w_reserve(ptr noundef %2, i64 noundef 1)
  %.not363 = icmp eq i32 %i.qv, 0
  br i1 %.not363, label %bb.gk, label %._crit_edge568

._crit_edge568:                                   ; preds = %bb.gi
  %.pre569 = load ptr, ptr %i.qn, align 8, !tbaa !19
  br label %bb.gj

bb.gj:                                            ; preds = %._crit_edge568, %bb.gh
  %i.qw = phi ptr [ %.pre569, %._crit_edge568 ], [ %i.qo, %bb.gh ] ; 2 uses
  %i.qx = or i8 %1, 58
  %i.qy = getelementptr i8, ptr %i.qw, i64 1
  store ptr %i.qy, ptr %i.qn, align 8, !tbaa !19
  store i8 %i.qx, ptr %i.qw, align 1, !tbaa !29
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %i.qz = getelementptr i8, ptr %0, i64 16
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !104
  tail call fastcc void @w_object(ptr noundef %i.ra, ptr noundef %2)
  %i.rb = getelementptr i8, ptr %0, i64 24
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !105
  tail call fastcc void @w_object(ptr noundef %i.rc, ptr noundef %2)
  %i.rd = getelementptr i8, ptr %0, i64 32
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !106
  tail call fastcc void @w_object(ptr noundef %i.re, ptr noundef %2)
  br label %w_float_str.exit

bb.gl:                                            ; preds = %bb.gb
  %i.rf = getelementptr i8, ptr %2, i64 24        ; 3 uses
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !19 ; 2 uses
  %i.rh = getelementptr i8, ptr %2, i64 32
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !20
  %.not360 = icmp eq ptr %i.rg, %i.ri
  br i1 %.not360, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  %i.rj = tail call fastcc i32 @w_reserve(ptr noundef %2, i64 noundef 1)
  %.not361 = icmp eq i32 %i.rj, 0
  br i1 %.not361, label %bb.go, label %._crit_edge566

._crit_edge566:                                   ; preds = %bb.gm
  %.pre567 = load ptr, ptr %i.rf, align 8, !tbaa !19
  br label %bb.gn

bb.gn:                                            ; preds = %._crit_edge566, %bb.gl
  %i.rk = phi ptr [ %.pre567, %._crit_edge566 ], [ %i.rg, %bb.gl ] ; 2 uses
  %i.rl = or i8 %1, 63
  %i.rm = getelementptr i8, ptr %i.rk, i64 1
  store ptr %i.rm, ptr %i.rf, align 8, !tbaa !19
  store i8 %i.rl, ptr %i.rk, align 1, !tbaa !29
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %bb.gm
  %i.rn = getelementptr i8, ptr %2, i64 8
  store i32 1, ptr %i.rn, align 8, !tbaa !28
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
  %3 = alloca %struct.PyLongExport, align 8       ; 9 uses
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
  %i.f = load ptr, ptr %2, align 8, !tbaa !17     ; 2 uses
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
  %.val.i = load i64, ptr %i.n, align 8, !tbaa !27 ; 5 uses
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
  %.val = load i64, ptr %i.al, align 8, !tbaa !119
  %i.am = and i64 %.val, 3
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %w_reserve.exit.thread
  tail call fastcc void @w_long(i64 noundef 0, ptr noundef %2)
  br label %bb.bb

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
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !121
  %.not31 = icmp eq ptr %i.av, null
  br i1 %.not31, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.aw = load i64, ptr %3, align 8, !tbaa !122   ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, -1
  %i.ay = call i64 @llvm.abs.i64(i64 %i.aw, i1 false) ; 2 uses
  %i.az = select i1 %i.ax, i64 1, i64 -1
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.027 = phi i64 [ %i.ay, %bb.m ], [ %i.ba, %bb.n ]
  %.0 = phi i64 [ 0, %bb.m ], [ %i.bb, %bb.n ]
  %i.ba = lshr i64 %.027, 15                      ; 2 uses
  %i.bb = add i64 %.0, %i.az                      ; 2 uses
  %.not32 = icmp eq i64 %i.ba, 0
  br i1 %.not32, label %bb.o, label %bb.n, !llvm.loop !107

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
  br i1 %.not33, label %.loopexit, label %bb.p, !llvm.loop !108

bb.q:                                             ; preds = %bb.l
  %i.bf = call ptr @PyLong_GetNativeLayout() #10  ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !54  ; 3 uses
  %i.bh = udiv i8 %i.bg, 15
  %i.bi = zext nneg i8 %i.bh to i64               ; 3 uses
  %i.bj = getelementptr i8, ptr %i.bf, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !55
  %i.bl = icmp eq i8 %i.bk, 4
  %i.bm = load ptr, ptr %i.au, align 8, !tbaa !121 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !123
  %i.bp = add i64 %i.bo, -1                       ; 7 uses
  %i.bq = mul i64 %i.bp, %i.bi                    ; 2 uses
  br i1 %i.bl, label %bb.r, label %bb.aj

bb.r:                                             ; preds = %bb.q
  %i.br = getelementptr [4 x i8], ptr %i.bm, i64 %i.bp ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !10
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %.032.i = phi i64 [ %i.bq, %bb.r ], [ %i.bu, %bb.s ] ; 2 uses
  %.031.i = phi i32 [ %i.bs, %bb.r ], [ %i.bt, %bb.s ]
  %i.bt = lshr i32 %.031.i, 15                    ; 2 uses
  %i.bu = add i64 %.032.i, 1                      ; 3 uses
  %.not.i34 = icmp eq i32 %i.bt, 0
  br i1 %.not.i34, label %bb.t, label %bb.s, !llvm.loop !109

bb.t:                                             ; preds = %bb.s
  %i.bv = icmp sgt i64 %i.bu, 2147483647
  br i1 %i.bv, label %_r_digits32.exit.sink.split, label %bb.u

bb.u:                                             ; preds = %bb.t
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %5 = load i8, ptr %4, align 8, !tbaa !124
  %.not34.i = icmp eq i8 %5, 0
  %i.bw = xor i64 %.032.i, -1
  %i.bx = select i1 %.not34.i, i64 %i.bu, i64 %i.bw
  call fastcc void @w_long(i64 noundef %i.bx, ptr noundef nonnull %2)
  %i.by = icmp sgt i64 %i.bp, 0
  br i1 %i.by, label %.lr.ph40.i, label %._crit_edge41.split.i

.lr.ph40.i:                                       ; preds = %bb.u
  %.not42.i = icmp ult i8 %i.bg, 15
  %i.bz = getelementptr i8, ptr %2, i64 40        ; 6 uses
  %i.ca = getelementptr i8, ptr %2, i64 16        ; 6 uses
  %i.cb = getelementptr i8, ptr %2, i64 8         ; 2 uses
  br i1 %.not42.i, label %._crit_edge41.split.i, label %.lr.ph.i

._crit_edge41.split.i:                            ; preds = %._crit_edge.i, %.lr.ph40.i, %bb.u
  %i.cc = load i32, ptr %i.br, align 4, !tbaa !10
  br label %bb.ai

.lr.ph.i:                                         ; preds = %.lr.ph40.i, %._crit_edge.i
  %.03038.i = phi i64 [ %i.cf, %._crit_edge.i ], [ 0, %.lr.ph40.i ] ; 2 uses
  %i.cd = getelementptr [4 x i8], ptr %i.bm, i64 %.03038.i
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !10
  br label %bb.v

._crit_edge.i:                                    ; preds = %w_short.exit.i
  %i.cf = add nuw nsw i64 %.03038.i, 1            ; 2 uses
  %exitcond43.not.i = icmp eq i64 %i.cf, %i.bp
  br i1 %exitcond43.not.i, label %._crit_edge41.split.i, label %.lr.ph.i, !llvm.loop !110

bb.v:                                             ; preds = %w_short.exit.i, %.lr.ph.i
  %.037.i = phi i64 [ 0, %.lr.ph.i ], [ %i.el, %w_short.exit.i ]
  %.136.i = phi i32 [ %i.ce, %.lr.ph.i ], [ %i.ek, %w_short.exit.i ] ; 3 uses
  %i.cg = load ptr, ptr %i.a, align 8, !tbaa !19  ; 4 uses
  %i.ch = load ptr, ptr %i.c, align 8, !tbaa !20
  %.not.i.i = icmp eq ptr %i.cg, %i.ch
  br i1 %.not.i.i, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.ci = icmp eq ptr %i.cg, null
  br i1 %i.ci, label %w_short.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cj = load ptr, ptr %2, align 8, !tbaa !17    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cj, null
  %i.ck = load ptr, ptr %i.bz, align 8, !tbaa !18 ; 2 uses
  %i.cl = ptrtoint ptr %i.cg to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm                    ; 3 uses
  br i1 %.not.i.i.i, label %bb.y, label %w_reserve.exit.i.i

bb.y:                                             ; preds = %bb.x
  %i.co = load ptr, ptr %i.ca, align 8, !tbaa !22
  %i.cp = getelementptr i8, ptr %i.co, i64 16
  %.val.i.i.i = load i64, ptr %i.cp, align 8, !tbaa !27 ; 6 uses
  %i.cq = icmp sgt i64 %.val.i.i.i, 16777216
  %i.cr = lshr i64 %.val.i.i.i, 3                 ; 2 uses
  %i.cs = add nsw i64 %.val.i.i.i, 1024           ; 2 uses
  %.0.i.i.i = select i1 %i.cq, i64 %i.cr, i64 %i.cs
  %i.ct = call i64 @llvm.smax.i64(i64 %.0.i.i.i, i64 1) ; 2 uses
  %i.cu = sub i64 9223372036854775807, %.val.i.i.i ; 2 uses
  %i.cv = icmp sgt i64 %i.ct, %i.cu
  br i1 %i.cv, label %.thread.i, label %bb.z

.thread.i:                                        ; preds = %bb.y
  store i32 3, ptr %i.cb, align 8, !tbaa !28
  br label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.cw = add i64 %i.ct, %.val.i.i.i              ; 2 uses
  %i.cx = call i32 @_PyBytes_Resize(ptr noundef nonnull %i.ca, i64 noundef %i.cw) #10
  %.not38.i.i.i = icmp eq i32 %i.cx, 0
  br i1 %.not38.i.i.i, label %w_reserve.exit.thread20.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  br label %w_short.exit.i

w_reserve.exit.thread20.i.i:                      ; preds = %bb.z
  %i.cy = load ptr, ptr %i.ca, align 8, !tbaa !22
  %i.cz = getelementptr i8, ptr %i.cy, i64 32     ; 3 uses
  store ptr %i.cz, ptr %i.bz, align 8, !tbaa !18
  %i.da = getelementptr i8, ptr %i.cz, i64 %i.cn
  %i.db = getelementptr i8, ptr %i.cz, i64 %i.cw
  store ptr %i.db, ptr %i.c, align 8, !tbaa !20
  br label %bb.ab

w_reserve.exit.i.i:                               ; preds = %bb.x
  %i.dc = call i64 @fwrite(ptr noundef %i.ck, i64 noundef 1, i64 noundef %i.cn, ptr noundef nonnull %i.cj) ; 0 uses
  %i.dd = load ptr, ptr %i.bz, align 8, !tbaa !18 ; 4 uses
  store ptr %i.dd, ptr %i.a, align 8, !tbaa !19
  %i.de = load ptr, ptr %i.c, align 8, !tbaa !20  ; 2 uses
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dd to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = icmp slt i64 %i.dh, 1
  br i1 %i.di, label %w_reserve.exit.thread.i.i, label %bb.ab

bb.ab:                                            ; preds = %w_reserve.exit.i.i, %w_reserve.exit.thread20.i.i, %bb.v
  %i.dj = phi ptr [ %i.da, %w_reserve.exit.thread20.i.i ], [ %i.dd, %w_reserve.exit.i.i ], [ %i.cg, %bb.v ] ; 2 uses
  %i.dk = trunc i32 %.136.i to i8
  %i.dl = getelementptr i8, ptr %i.dj, i64 1
  store ptr %i.dl, ptr %i.a, align 8, !tbaa !19
  store i8 %i.dk, ptr %i.dj, align 1, !tbaa !29
  %.pr.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !19
  %.pre.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !20
  br label %w_reserve.exit.thread.i.i

w_reserve.exit.thread.i.i:                        ; preds = %bb.ab, %w_reserve.exit.i.i
  %i.dm = phi ptr [ %.pre.pre.i.i, %bb.ab ], [ %i.de, %w_reserve.exit.i.i ] ; 3 uses
  %i.dn = phi ptr [ %.pr.pre.i.i, %bb.ab ], [ %i.dd, %w_reserve.exit.i.i ] ; 2 uses
  %.not10.i.i = icmp eq ptr %i.dn, %i.dm
  br i1 %.not10.i.i, label %w_reserve.exit.thread.thread.i.i, label %bb.ah

w_reserve.exit.thread.thread.i.i:                 ; preds = %w_reserve.exit.thread.i.i
  %i.do = icmp eq ptr %i.dm, null
  br i1 %i.do, label %w_short.exit.i, label %bb.ac

bb.ac:                                            ; preds = %w_reserve.exit.thread.thread.i.i
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !17  ; 2 uses
  %.pre44.i = load ptr, ptr %i.bz, align 8, !tbaa !18 ; 2 uses
  %.pre45.i = ptrtoint ptr %i.dm to i64
  %.pre46.i = ptrtoint ptr %.pre44.i to i64
  %.pre48.i = sub i64 %.pre45.i, %.pre46.i        ; 2 uses
  %.not.i12.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i12.i.i, label %._crit_edge89, label %w_reserve.exit17.i.i

._crit_edge89:                                    ; preds = %bb.ac
  %.pre90 = load ptr, ptr %i.ca, align 8, !tbaa !22
  %.phi.trans.insert91 = getelementptr i8, ptr %.pre90, i64 16
  %.val.i14.i.i.pre = load i64, ptr %.phi.trans.insert91, align 8, !tbaa !27 ; 4 uses
  %.pre93 = lshr i64 %.val.i14.i.i.pre, 3
  %.pre94 = add nsw i64 %.val.i14.i.i.pre, 1024
  %.pre96 = sub i64 9223372036854775807, %.val.i14.i.i.pre
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge89, %.thread.i
  %.pre-phi97 = phi i64 [ %.pre96, %._crit_edge89 ], [ %i.cu, %.thread.i ]
  %.pre-phi95 = phi i64 [ %.pre94, %._crit_edge89 ], [ %i.cs, %.thread.i ]
  %.pre-phi = phi i64 [ %.pre93, %._crit_edge89 ], [ %i.cr, %.thread.i ]
  %.val.i14.i.i = phi i64 [ %.val.i14.i.i.pre, %._crit_edge89 ], [ %.val.i.i.i, %.thread.i ] ; 2 uses
  %.pre-phi4963.i = phi i64 [ %.pre48.i, %._crit_edge89 ], [ %i.cn, %.thread.i ]
  %i.dp = icmp sgt i64 %.val.i14.i.i, 16777216
  %.0.i15.i.i = select i1 %i.dp, i64 %.pre-phi, i64 %.pre-phi95
  %i.dq = call i64 @llvm.smax.i64(i64 %.0.i15.i.i, i64 1) ; 2 uses
  %i.dr = icmp sgt i64 %i.dq, %.pre-phi97
  br i1 %i.dr, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 3, ptr %i.cb, align 8, !tbaa !28
  br label %w_short.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.ds = add i64 %i.dq, %.val.i14.i.i            ; 2 uses
  %i.dt = call i32 @_PyBytes_Resize(ptr noundef nonnull %i.ca, i64 noundef %i.ds) #10
  %.not38.i16.i.i = icmp eq i32 %i.dt, 0
  br i1 %.not38.i16.i.i, label %w_reserve.exit17.thread25.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  br label %w_short.exit.i

w_reserve.exit17.thread25.i.i:                    ; preds = %bb.af
  %i.du = load ptr, ptr %i.ca, align 8, !tbaa !22
  %i.dv = getelementptr i8, ptr %i.du, i64 32     ; 3 uses
  store ptr %i.dv, ptr %i.bz, align 8, !tbaa !18
  %i.dw = getelementptr i8, ptr %i.dv, i64 %.pre-phi4963.i
  %i.dx = getelementptr i8, ptr %i.dv, i64 %i.ds
  store ptr %i.dx, ptr %i.c, align 8, !tbaa !20
  br label %bb.ah

w_reserve.exit17.i.i:                             ; preds = %bb.ac
  %i.dy = call i64 @fwrite(ptr noundef %.pre44.i, i64 noundef 1, i64 noundef %.pre48.i, ptr noundef nonnull %.pre.i) ; 0 uses
  %i.dz = load ptr, ptr %i.bz, align 8, !tbaa !18 ; 3 uses
  store ptr %i.dz, ptr %i.a, align 8, !tbaa !19
  %i.ea = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = ptrtoint ptr %i.dz to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = icmp slt i64 %i.ed, 1
  br i1 %i.ee, label %w_short.exit.i, label %bb.ah

bb.ah:                                            ; preds = %w_reserve.exit17.i.i, %w_reserve.exit17.thread25.i.i, %w_reserve.exit.thread.i.i
  %i.ef = phi ptr [ %i.dw, %w_reserve.exit17.thread25.i.i ], [ %i.dz, %w_reserve.exit17.i.i ], [ %i.dn, %w_reserve.exit.thread.i.i ] ; 2 uses
  %i.eg = lshr i32 %.136.i, 8
  %i.eh = trunc i32 %i.eg to i8
  %i.ei = and i8 %i.eh, 127
  %i.ej = getelementptr i8, ptr %i.ef, i64 1
  store ptr %i.ej, ptr %i.a, align 8, !tbaa !19
  store i8 %i.ei, ptr %i.ef, align 1, !tbaa !29
  br label %w_short.exit.i

w_short.exit.i:                                   ; preds = %bb.ah, %w_reserve.exit17.i.i, %bb.ag, %bb.ae, %w_reserve.exit.thread.thread.i.i, %bb.aa, %bb.w
  %i.ek = lshr i32 %.136.i, 15
  %i.el = add nuw nsw i64 %.037.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.el, %i.bi
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.v, !llvm.loop !111

bb.ai:                                            ; preds = %bb.ai, %._crit_edge41.split.i
  %.2.i = phi i32 [ %i.cc, %._crit_edge41.split.i ], [ %i.en, %bb.ai ] ; 2 uses
  %i.em = and i32 %.2.i, 32767
  call fastcc void @w_short(i32 noundef %i.em, ptr noundef nonnull %2)
  %i.en = lshr i32 %.2.i, 15                      ; 2 uses
  %.not35.i = icmp eq i32 %i.en, 0
  br i1 %.not35.i, label %_r_digits32.exit, label %bb.ai, !llvm.loop !112

bb.aj:                                            ; preds = %bb.q
  %i.eo = getelementptr [2 x i8], ptr %i.bm, i64 %i.bp ; 2 uses
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !57
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %bb.aj
  %.032.i35 = phi i64 [ %i.bq, %bb.aj ], [ %i.er, %bb.ak ] ; 2 uses
  %.031.i36 = phi i16 [ %i.ep, %bb.aj ], [ %i.eq, %bb.ak ] ; 2 uses
  %i.eq = lshr i16 %.031.i36, 15
  %i.er = add i64 %.032.i35, 1                    ; 3 uses
  %.not.i37 = icmp sgt i16 %.031.i36, -1
  br i1 %.not.i37, label %bb.al, label %bb.ak, !llvm.loop !113

bb.al:                                            ; preds = %bb.ak
  %i.es = icmp sgt i64 %i.er, 2147483647
  br i1 %i.es, label %_r_digits32.exit.sink.split, label %bb.am

bb.am:                                            ; preds = %bb.al
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %7 = load i8, ptr %6, align 8, !tbaa !124
  %.not34.i38 = icmp eq i8 %7, 0
  %i.et = xor i64 %.032.i35, -1
  %i.eu = select i1 %.not34.i38, i64 %i.er, i64 %i.et
  call fastcc void @w_long(i64 noundef %i.eu, ptr noundef nonnull %2)
  %i.ev = icmp sgt i64 %i.bp, 0
  br i1 %i.ev, label %.lr.ph40.i42, label %._crit_edge41.split.i39

.lr.ph40.i42:                                     ; preds = %bb.am
  %.not42.i43 = icmp ult i8 %i.bg, 15
  %i.ew = getelementptr i8, ptr %2, i64 40        ; 6 uses
  %i.ex = getelementptr i8, ptr %2, i64 16        ; 6 uses
  %i.ey = getelementptr i8, ptr %2, i64 8         ; 2 uses
  br i1 %.not42.i43, label %._crit_edge41.split.i39, label %.lr.ph.i44

._crit_edge41.split.i39:                          ; preds = %._crit_edge.i55, %.lr.ph40.i42, %bb.am
  %i.ez = load i16, ptr %i.eo, align 2, !tbaa !57
  br label %bb.ba

.lr.ph.i44:                                       ; preds = %.lr.ph40.i42, %._crit_edge.i55
  %.03038.i45 = phi i64 [ %i.fc, %._crit_edge.i55 ], [ 0, %.lr.ph40.i42 ] ; 2 uses
  %i.fa = getelementptr [2 x i8], ptr %i.bm, i64 %.03038.i45
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !57
  br label %bb.an

._crit_edge.i55:                                  ; preds = %w_short.exit.i53
  %i.fc = add nuw nsw i64 %.03038.i45, 1          ; 2 uses
  %exitcond43.not.i56 = icmp eq i64 %i.fc, %i.bp
  br i1 %exitcond43.not.i56, label %._crit_edge41.split.i39, label %.lr.ph.i44, !llvm.loop !114

bb.an:                                            ; preds = %w_short.exit.i53, %.lr.ph.i44
  %.037.i46 = phi i64 [ 0, %.lr.ph.i44 ], [ %i.hi, %w_short.exit.i53 ]
  %.136.i47 = phi i16 [ %i.fb, %.lr.ph.i44 ], [ %i.hh, %w_short.exit.i53 ] ; 3 uses
  %i.fd = load ptr, ptr %i.a, align 8, !tbaa !19  ; 4 uses
  %i.fe = load ptr, ptr %i.c, align 8, !tbaa !20
  %.not.i.i48 = icmp eq ptr %i.fd, %i.fe
  br i1 %.not.i.i48, label %bb.ao, label %bb.at

bb.ao:                                            ; preds = %bb.an
  %i.ff = icmp eq ptr %i.fd, null
  br i1 %i.ff, label %w_short.exit.i53, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fg = load ptr, ptr %2, align 8, !tbaa !17    ; 2 uses
  %.not.i.i.i70 = icmp eq ptr %i.fg, null
  %i.fh = load ptr, ptr %i.ew, align 8, !tbaa !18 ; 2 uses
  %i.fi = ptrtoint ptr %i.fd to i64
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = sub i64 %i.fi, %i.fj                    ; 3 uses
  br i1 %.not.i.i.i70, label %bb.aq, label %w_reserve.exit.i.i71

bb.aq:                                            ; preds = %bb.ap
  %i.fl = load ptr, ptr %i.ex, align 8, !tbaa !22
  %i.fm = getelementptr i8, ptr %i.fl, i64 16
  %.val.i.i.i72 = load i64, ptr %i.fm, align 8, !tbaa !27 ; 6 uses
  %i.fn = icmp sgt i64 %.val.i.i.i72, 16777216
  %i.fo = lshr i64 %.val.i.i.i72, 3               ; 2 uses
  %i.fp = add nsw i64 %.val.i.i.i72, 1024         ; 2 uses
  %.0.i.i.i73 = select i1 %i.fn, i64 %i.fo, i64 %i.fp
  %i.fq = call i64 @llvm.smax.i64(i64 %.0.i.i.i73, i64 1) ; 2 uses
  %i.fr = sub i64 9223372036854775807, %.val.i.i.i72 ; 2 uses
  %i.fs = icmp sgt i64 %i.fq, %i.fr
  br i1 %i.fs, label %.thread.i76, label %bb.ar

.thread.i76:                                      ; preds = %bb.aq
  store i32 3, ptr %i.ey, align 8, !tbaa !28
  br label %bb.av

bb.ar:                                            ; preds = %bb.aq
  %i.ft = add i64 %i.fq, %.val.i.i.i72            ; 2 uses
  %i.fu = call i32 @_PyBytes_Resize(ptr noundef nonnull %i.ex, i64 noundef %i.ft) #10
  %.not38.i.i.i74 = icmp eq i32 %i.fu, 0
  br i1 %.not38.i.i.i74, label %w_reserve.exit.thread20.i.i75, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  br label %w_short.exit.i53

w_reserve.exit.thread20.i.i75:                    ; preds = %bb.ar
  %i.fv = load ptr, ptr %i.ex, align 8, !tbaa !22
  %i.fw = getelementptr i8, ptr %i.fv, i64 32     ; 3 uses
  store ptr %i.fw, ptr %i.ew, align 8, !tbaa !18
  %i.fx = getelementptr i8, ptr %i.fw, i64 %i.fk
  %i.fy = getelementptr i8, ptr %i.fw, i64 %i.ft
  store ptr %i.fy, ptr %i.c, align 8, !tbaa !20
  br label %bb.at

w_reserve.exit.i.i71:                             ; preds = %bb.ap
  %i.fz = call i64 @fwrite(ptr noundef %i.fh, i64 noundef 1, i64 noundef %i.fk, ptr noundef nonnull %i.fg) ; 0 uses
  %i.ga = load ptr, ptr %i.ew, align 8, !tbaa !18 ; 4 uses
  store ptr %i.ga, ptr %i.a, align 8, !tbaa !19
  %i.gb = load ptr, ptr %i.c, align 8, !tbaa !20  ; 2 uses
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = ptrtoint ptr %i.ga to i64
  %i.ge = sub i64 %i.gc, %i.gd
  %i.gf = icmp slt i64 %i.ge, 1
  br i1 %i.gf, label %w_reserve.exit.thread.i.i51, label %bb.at

bb.at:                                            ; preds = %w_reserve.exit.i.i71, %w_reserve.exit.thread20.i.i75, %bb.an
  %i.gg = phi ptr [ %i.fx, %w_reserve.exit.thread20.i.i75 ], [ %i.ga, %w_reserve.exit.i.i71 ], [ %i.fd, %bb.an ] ; 2 uses
  %i.gh = trunc i16 %.136.i47 to i8
  %i.gi = getelementptr i8, ptr %i.gg, i64 1
  store ptr %i.gi, ptr %i.a, align 8, !tbaa !19
  store i8 %i.gh, ptr %i.gg, align 1, !tbaa !29
  %.pr.pre.i.i49 = load ptr, ptr %i.a, align 8, !tbaa !19
  %.pre.pre.i.i50 = load ptr, ptr %i.c, align 8, !tbaa !20
  br label %w_reserve.exit.thread.i.i51

w_reserve.exit.thread.i.i51:                      ; preds = %bb.at, %w_reserve.exit.i.i71
  %i.gj = phi ptr [ %.pre.pre.i.i50, %bb.at ], [ %i.gb, %w_reserve.exit.i.i71 ] ; 3 uses
  %i.gk = phi ptr [ %.pr.pre.i.i49, %bb.at ], [ %i.ga, %w_reserve.exit.i.i71 ] ; 2 uses
  %.not10.i.i52 = icmp eq ptr %i.gk, %i.gj
  br i1 %.not10.i.i52, label %w_reserve.exit.thread.thread.i.i57, label %bb.az

w_reserve.exit.thread.thread.i.i57:               ; preds = %w_reserve.exit.thread.i.i51
  %i.gl = icmp eq ptr %i.gj, null
  br i1 %i.gl, label %w_short.exit.i53, label %bb.au

bb.au:                                            ; preds = %w_reserve.exit.thread.thread.i.i57
  %.pre.i58 = load ptr, ptr %2, align 8, !tbaa !17 ; 2 uses
  %.pre44.i59 = load ptr, ptr %i.ew, align 8, !tbaa !18 ; 2 uses
  %.pre45.i60 = ptrtoint ptr %i.gj to i64
  %.pre46.i61 = ptrtoint ptr %.pre44.i59 to i64
  %.pre48.i62 = sub i64 %.pre45.i60, %.pre46.i61  ; 2 uses
  %.not.i12.i.i63 = icmp eq ptr %.pre.i58, null
  br i1 %.not.i12.i.i63, label %._crit_edge, label %w_reserve.exit17.i.i64

._crit_edge:                                      ; preds = %bb.au
  %.pre = load ptr, ptr %i.ex, align 8, !tbaa !22
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 16
  %.val.i14.i.i66.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !27 ; 4 uses
  %.pre98 = lshr i64 %.val.i14.i.i66.pre, 3
  %.pre100 = add nsw i64 %.val.i14.i.i66.pre, 1024
  %.pre102 = sub i64 9223372036854775807, %.val.i14.i.i66.pre
  br label %bb.av

bb.av:                                            ; preds = %._crit_edge, %.thread.i76
  %.pre-phi103 = phi i64 [ %.pre102, %._crit_edge ], [ %i.fr, %.thread.i76 ]
  %.pre-phi101 = phi i64 [ %.pre100, %._crit_edge ], [ %i.fp, %.thread.i76 ]
  %.pre-phi99 = phi i64 [ %.pre98, %._crit_edge ], [ %i.fo, %.thread.i76 ]
  %.val.i14.i.i66 = phi i64 [ %.val.i14.i.i66.pre, %._crit_edge ], [ %.val.i.i.i72, %.thread.i76 ] ; 2 uses
  %.pre-phi4963.i65 = phi i64 [ %.pre48.i62, %._crit_edge ], [ %i.fk, %.thread.i76 ]
  %i.gm = icmp sgt i64 %.val.i14.i.i66, 16777216
  %.0.i15.i.i67 = select i1 %i.gm, i64 %.pre-phi99, i64 %.pre-phi101
  %i.gn = call i64 @llvm.smax.i64(i64 %.0.i15.i.i67, i64 1) ; 2 uses
  %i.go = icmp sgt i64 %i.gn, %.pre-phi103
  br i1 %i.go, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 3, ptr %i.ey, align 8, !tbaa !28
  br label %w_short.exit.i53

bb.ax:                                            ; preds = %bb.av
  %i.gp = add i64 %i.gn, %.val.i14.i.i66          ; 2 uses
  %i.gq = call i32 @_PyBytes_Resize(ptr noundef nonnull %i.ex, i64 noundef %i.gp) #10
  %.not38.i16.i.i68 = icmp eq i32 %i.gq, 0
  br i1 %.not38.i16.i.i68, label %w_reserve.exit17.thread25.i.i69, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  br label %w_short.exit.i53

w_reserve.exit17.thread25.i.i69:                  ; preds = %bb.ax
  %i.gr = load ptr, ptr %i.ex, align 8, !tbaa !22
  %i.gs = getelementptr i8, ptr %i.gr, i64 32     ; 3 uses
  store ptr %i.gs, ptr %i.ew, align 8, !tbaa !18
  %i.gt = getelementptr i8, ptr %i.gs, i64 %.pre-phi4963.i65
  %i.gu = getelementptr i8, ptr %i.gs, i64 %i.gp
  store ptr %i.gu, ptr %i.c, align 8, !tbaa !20
  br label %bb.az

w_reserve.exit17.i.i64:                           ; preds = %bb.au
  %i.gv = call i64 @fwrite(ptr noundef %.pre44.i59, i64 noundef 1, i64 noundef %.pre48.i62, ptr noundef nonnull %.pre.i58) ; 0 uses
  %i.gw = load ptr, ptr %i.ew, align 8, !tbaa !18 ; 3 uses
  store ptr %i.gw, ptr %i.a, align 8, !tbaa !19
  %i.gx = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.gy = ptrtoint ptr %i.gx to i64
  %i.gz = ptrtoint ptr %i.gw to i64
  %i.ha = sub i64 %i.gy, %i.gz
  %i.hb = icmp slt i64 %i.ha, 1
  br i1 %i.hb, label %w_short.exit.i53, label %bb.az

bb.az:                                            ; preds = %w_reserve.exit17.i.i64, %w_reserve.exit17.thread25.i.i69, %w_reserve.exit.thread.i.i51
  %i.hc = phi ptr [ %i.gt, %w_reserve.exit17.thread25.i.i69 ], [ %i.gw, %w_reserve.exit17.i.i64 ], [ %i.gk, %w_reserve.exit.thread.i.i51 ] ; 2 uses
  %i.hd = lshr i16 %.136.i47, 8
  %i.he = trunc nuw i16 %i.hd to i8
  %i.hf = and i8 %i.he, 127
  %i.hg = getelementptr i8, ptr %i.hc, i64 1
  store ptr %i.hg, ptr %i.a, align 8, !tbaa !19
  store i8 %i.hf, ptr %i.hc, align 1, !tbaa !29
  br label %w_short.exit.i53

w_short.exit.i53:                                 ; preds = %bb.az, %w_reserve.exit17.i.i64, %bb.ay, %bb.aw, %w_reserve.exit.thread.thread.i.i57, %bb.as, %bb.ao
  %i.hh = lshr i16 %.136.i47, 15
  %i.hi = add nuw nsw i64 %.037.i46, 1            ; 2 uses
  %exitcond.not.i54 = icmp eq i64 %i.hi, %i.bi
  br i1 %exitcond.not.i54, label %._crit_edge.i55, label %bb.an, !llvm.loop !115

bb.ba:                                            ; preds = %bb.ba, %._crit_edge41.split.i39
  %.2.i40 = phi i16 [ %i.ez, %._crit_edge41.split.i39 ], [ %i.hl, %bb.ba ] ; 3 uses
  %i.hj = and i16 %.2.i40, 32767
  %i.hk = zext nneg i16 %i.hj to i32
end_hunk_0
