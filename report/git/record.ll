Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/record?download=true
inline.NumInlined: 118
inline.NumDeleted: 12
begin_hunk_0_@reftable_log_record_encode:bb.a
  %.016.i.i46 = phi i32 [ %i.bf, %.lr.ph.i.i45 ], [ 9, %bb.e ]
  %i.bc = add nsw i64 %i.bb, -1                   ; 2 uses
  %i.bd = trunc i64 %i.bc to i8
  %i.be = or i8 %i.bd, -128
  %i.bf = add i32 %.016.i.i46, -1                 ; 2 uses
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bg
  store i8 %i.be, ptr %i.bh, align 1, !tbaa !20
  %i.bi = lshr i64 %i.bc, 7                       ; 2 uses
  %.not.i.i47 = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i47, label %._crit_edge.i.i48, label %.lr.ph.i.i45, !llvm.loop !1

._crit_edge.i.i48:                                ; preds = %.lr.ph.i.i45, %bb.e
  %.0.lcssa.i.i49 = phi i64 [ 9, %bb.e ], [ %i.bg, %.lr.ph.i.i45 ] ; 2 uses
  %i.bj = sub nsw i64 10, %.0.lcssa.i.i49         ; 4 uses
  %i.bk = icmp ult i64 %i.at, %i.bj
  br i1 %i.bk, label %put_var_int.exit.thread.i53, label %put_var_int.exit.i50

put_var_int.exit.thread.i53:                      ; preds = %._crit_edge.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %encode_string.exit.thread

put_var_int.exit.i50:                             ; preds = %._crit_edge.i.i48
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0.lcssa.i.i49
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr nonnull align 1 %i.bl, i64 %i.bj, i1 false)
  %i.bm = trunc i64 %i.bj to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  %i.bn = icmp slt i32 %i.bm, 0
  br i1 %i.bn, label %encode_string.exit.thread, label %bb.f

bb.f:                                             ; preds = %put_var_int.exit.i50
  %i.bo = and i64 %i.bj, 2147483647               ; 2 uses
  %i.bp = sub i64 %i.at, %i.bo                    ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %i.aw
  br i1 %i.bq, label %encode_string.exit.thread, label %encode_string.exit54

encode_string.exit54:                             ; preds = %bb.f
  %i.br = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bo
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.br, ptr nonnull readonly align 1 %spec.select42, i64 %i.aw, i1 false)
  %.neg.i51 = add i64 %i.aw, %i.at
  %i.bs = sub i64 %.neg.i51, %i.bp                ; 2 uses
  %i.bt = trunc i64 %i.bs to i32                  ; 2 uses
  %i.bu = icmp slt i32 %i.bt, 0
  br i1 %i.bu, label %encode_string.exit.thread, label %bb.g

bb.g:                                             ; preds = %encode_string.exit54
  %i.bv = and i64 %i.bs, 2147483647               ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bv ; 2 uses
  %i.bx = sub i64 %i.at, %i.bv                    ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.ca = trunc i64 %i.bz to i8
  %i.cb = and i8 %i.ca, 127
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !20
  %i.cd = lshr i64 %i.bz, 7                       ; 2 uses
  %.not15.i = icmp eq i64 %i.cd, 0
  br i1 %.not15.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %i.ce = phi i64 [ %i.cl, %.lr.ph.i ], [ %i.cd, %bb.g ]
  %.016.i = phi i32 [ %i.ci, %.lr.ph.i ], [ 9, %bb.g ]
  %i.cf = add nsw i64 %i.ce, -1                   ; 2 uses
  %i.cg = trunc i64 %i.cf to i8
  %i.ch = or i8 %i.cg, -128
  %i.ci = add i32 %.016.i, -1                     ; 2 uses
  %i.cj = zext i32 %i.ci to i64                   ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cj
  store i8 %i.ch, ptr %i.ck, align 1, !tbaa !20
  %i.cl = lshr i64 %i.cf, 7                       ; 2 uses
  %.not.i = icmp eq i64 %i.cl, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.g
  %.0.lcssa.i = phi i64 [ 9, %bb.g ], [ %i.cj, %.lr.ph.i ] ; 2 uses
  %i.cm = sub nsw i64 10, %.0.lcssa.i             ; 4 uses
  %i.cn = icmp ult i64 %i.bx, %i.cm
  br i1 %i.cn, label %put_var_int.exit.thread, label %put_var_int.exit

put_var_int.exit.thread:                          ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %encode_string.exit.thread

put_var_int.exit:                                 ; preds = %._crit_edge.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr nonnull align 1 %i.co, i64 %i.cm, i1 false)
  %i.cp = trunc i64 %i.cm to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.cq = icmp slt i32 %i.cp, 0
  br i1 %i.cq, label %encode_string.exit.thread, label %bb.h

bb.h:                                             ; preds = %put_var_int.exit
  %i.cr = and i64 %i.cm, 2147483647               ; 2 uses
  %i.cs = sub i64 %i.bx, %i.cr                    ; 3 uses
  %i.ct = icmp ult i64 %i.cs, 2
  br i1 %i.ct, label %encode_string.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cr ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cw = load i16, ptr %i.cv, align 8, !tbaa !20 ; 2 uses
  %i.cx = lshr i16 %i.cw, 8
  %i.cy = trunc nuw i16 %i.cx to i8
  store i8 %i.cy, ptr %i.cu, align 1, !tbaa !20
  %i.cz = trunc i16 %i.cw to i8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 1
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !20
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 2 ; 2 uses
  %i.dc = add i64 %i.cs, -2                       ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !20 ; 2 uses
  %.not41 = icmp eq ptr %i.de, null
  %spec.select43 = select i1 %.not41, ptr @.str.2, ptr %i.de ; 2 uses
  %i.df = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %spec.select43) #19 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.dg = trunc i64 %i.df to i8
  %i.dh = and i8 %i.dg, 127
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !20
  %i.dj = lshr i64 %i.df, 7                       ; 2 uses
  %.not15.i.i55 = icmp eq i64 %i.dj, 0
  br i1 %.not15.i.i55, label %._crit_edge.i.i59, label %.lr.ph.i.i56

.lr.ph.i.i56:                                     ; preds = %bb.i, %.lr.ph.i.i56
  %i.dk = phi i64 [ %i.dr, %.lr.ph.i.i56 ], [ %i.dj, %bb.i ]
  %.016.i.i57 = phi i32 [ %i.do, %.lr.ph.i.i56 ], [ 9, %bb.i ]
  %i.dl = add nsw i64 %i.dk, -1                   ; 2 uses
  %i.dm = trunc i64 %i.dl to i8
  %i.dn = or i8 %i.dm, -128
  %i.do = add i32 %.016.i.i57, -1                 ; 2 uses
  %i.dp = zext i32 %i.do to i64                   ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dp
  store i8 %i.dn, ptr %i.dq, align 1, !tbaa !20
  %i.dr = lshr i64 %i.dl, 7                       ; 2 uses
  %.not.i.i58 = icmp eq i64 %i.dr, 0
  br i1 %.not.i.i58, label %._crit_edge.i.i59, label %.lr.ph.i.i56, !llvm.loop !1

._crit_edge.i.i59:                                ; preds = %.lr.ph.i.i56, %bb.i
  %.0.lcssa.i.i60 = phi i64 [ 9, %bb.i ], [ %i.dp, %.lr.ph.i.i56 ] ; 2 uses
  %i.ds = sub nsw i64 10, %.0.lcssa.i.i60         ; 4 uses
  %i.dt = icmp ult i64 %i.dc, %i.ds
  br i1 %i.dt, label %put_var_int.exit.thread.i64, label %put_var_int.exit.i61

put_var_int.exit.thread.i64:                      ; preds = %._crit_edge.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %encode_string.exit.thread

put_var_int.exit.i61:                             ; preds = %._crit_edge.i.i59
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.lcssa.i.i60
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.db, ptr nonnull align 1 %i.du, i64 %i.ds, i1 false)
  %i.dv = trunc i64 %i.ds to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.dw = icmp slt i32 %i.dv, 0
  br i1 %i.dw, label %encode_string.exit.thread, label %bb.j

bb.j:                                             ; preds = %put_var_int.exit.i61
  %i.dx = and i64 %i.ds, 2147483647               ; 2 uses
  %i.dy = sub i64 %i.dc, %i.dx                    ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.df
  br i1 %i.dz, label %encode_string.exit.thread, label %encode_string.exit65

encode_string.exit65:                             ; preds = %bb.j
  %i.ea = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dx
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ea, ptr nonnull readonly align 1 %spec.select43, i64 %i.df, i1 false)
  %.neg.i62 = add i64 %i.df, %i.dc
  %i.eb = sub i64 %.neg.i62, %i.dy                ; 2 uses
  %i.ec = trunc i64 %i.eb to i32                  ; 2 uses
  %i.ed = icmp slt i32 %i.ec, 0
  br i1 %i.ed, label %encode_string.exit.thread, label %bb.k

bb.k:                                             ; preds = %encode_string.exit65
  %reass.sub = sub i64 %2, %i.cs
  %.neg = add i64 %reass.sub, 2
  %i.ee = add i64 %.neg, %i.eb
  %i.ef = trunc i64 %i.ee to i32
  br label %encode_string.exit.thread

encode_string.exit.thread:                        ; preds = %put_var_int.exit.thread.i64, %bb.j, %put_var_int.exit.i61, %put_var_int.exit.thread.i53, %bb.f, %put_var_int.exit.i50, %put_var_int.exit.thread.i, %bb.d, %put_var_int.exit.i, %put_var_int.exit.thread, %encode_string.exit65, %bb.h, %put_var_int.exit, %encode_string.exit54, %encode_string.exit, %bb.b, %bb.a, %bb.k
  %.0 = phi i32 [ %i.ef, %bb.k ], [ 0, %bb.a ], [ -11, %bb.b ], [ %i.ap, %encode_string.exit ], [ %i.bt, %encode_string.exit54 ], [ %i.cp, %put_var_int.exit ], [ -11, %bb.h ], [ %i.ec, %encode_string.exit65 ], [ %i.bm, %put_var_int.exit.i50 ], [ %i.ai, %put_var_int.exit.i ], [ -11, %put_var_int.exit.thread ], [ -11, %put_var_int.exit.thread.i ], [ -11, %bb.d ], [ -11, %put_var_int.exit.thread.i53 ], [ -11, %bb.f ], [ -11, %put_var_int.exit.thread.i64 ], [ -11, %bb.j ], [ %i.dv, %put_var_int.exit.i61 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @reftable_log_record_decode(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly byval(%struct.reftable_buf) align 8 captures(none) %1, i8 noundef zeroext %2, ptr %3, i64 %4, i32 noundef %5, ptr noundef %6) #5 {
bb.a:
  %7 = alloca %struct.string_view, align 8        ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  store ptr %3, ptr %7, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %4, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !26   ; 3 uses
  %i.e = icmp ult i64 %i.d, 10
  br i1 %i.e, label %decode_string.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28   ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 %i.d     ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 -9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !20
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %bb.c, label %decode_string.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !60   ; 2 uses
  %i.m = add i64 %i.d, -8                         ; 3 uses
  %i.n = icmp ugt i64 %i.m, %i.l
  %i.o = load ptr, ptr %0, align 8, !tbaa !31     ; 5 uses
  br i1 %i.n, label %bb.d, label %thread-pre-split

bb.d:                                             ; preds = %bb.c
  %i.p = shl i64 %i.l, 1
  %i.q = or disjoint i64 %i.p, 1
  %spec.select.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %i.m) ; 2 uses
  %i.r = tail call ptr @reftable_realloc(ptr noundef %i.o, i64 noundef %spec.select.i) #17 ; 3 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %reftable_alloc_grow.exit, label %.thread136

.thread136:                                       ; preds = %bb.d
  store ptr %i.r, ptr %0, align 8, !tbaa !31
  store i64 %spec.select.i, ptr %i.k, align 8, !tbaa !60
  br label %bb.e

reftable_alloc_grow.exit:                         ; preds = %bb.d
  store ptr %i.o, ptr %0, align 8, !tbaa !31
  tail call void @reftable_free(ptr noundef %i.o) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %decode_string.exit.thread

thread-pre-split:                                 ; preds = %bb.c
  %.not107 = icmp eq ptr %i.o, null
  br i1 %.not107, label %decode_string.exit.thread, label %bb.e

bb.e:                                             ; preds = %.thread136, %thread-pre-split
  %i.s = phi ptr [ %i.r, %.thread136 ], [ %i.o, %thread-pre-split ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull align 1 %i.g, i64 %i.m, i1 false)
  %i.t = getelementptr inbounds i8, ptr %i.h, i64 -8
  %8 = load i64, ptr %i.t, align 1
  %9 = tail call i64 @llvm.bswap.i64(i64 %8)      ; 2 uses
  store i64 %9, ptr %i.a, align 8, !tbaa !22
  %i.u = xor i64 %9, -1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.u, ptr %i.v, align 8, !tbaa !33
  %i.w = zext i8 %2 to i32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !32
  %cond = icmp eq i32 %i.y, 1
  %i.z = icmp ne i8 %2, 1
  %or.cond = and i1 %i.z, %cond
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !20
  tail call void @reftable_free(ptr noundef %i.ab) #17
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !20
  tail call void @reftable_free(ptr noundef %i.ad) #17
  store ptr null, ptr %i.ac, align 8, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !20
  tail call void @reftable_free(ptr noundef %i.af) #17
  store ptr null, ptr %i.ae, align 8, !tbaa !20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i32 %i.w, ptr %i.x, align 8, !tbaa !32
  %i.ag = icmp eq i8 %2, 0
  br i1 %i.ag, label %decode_string.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = shl i32 %5, 1                           ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = icmp ult i64 %4, %i.ai
  br i1 %i.aj, label %decode_string.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.am = zext i32 %5 to i64                      ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.al, ptr align 1 %3, i64 %i.am, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 %i.am
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr align 1 %i.an, i64 %i.am, i1 false)
  %i.ao = sext i32 %i.ah to i64                   ; 3 uses
  %i.ap = getelementptr inbounds i8, ptr %3, i64 %i.ao ; 5 uses
  %i.aq = sub i64 %4, %i.ao                       ; 3 uses
  %.not.i.i = icmp eq i64 %4, %i.ao
  br i1 %.not.i.i, label %decode_string.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = load i8, ptr %i.ap, align 1, !tbaa !20  ; 2 uses
  %i.as = and i8 %i.ar, 127
  %i.at = zext nneg i8 %i.as to i64               ; 2 uses
  %.01928.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 1 ; 2 uses
  %.not2229.i.i = icmp sgt i8 %i.ar, -1
  br i1 %.not2229.i.i, label %get_var_int.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j
  %i.au = getelementptr inbounds i8, ptr %3, i64 %4
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i.i
  %.01931.i.i = phi ptr [ %.01928.i.i, %.lr.ph.i.i ], [ %.019.i.i, %bb.l ] ; 3 uses
  %.030.i.i = phi i64 [ %i.at, %.lr.ph.i.i ], [ %i.ba, %bb.l ] ; 2 uses
  %or.cond.i.i = icmp ult i64 %.030.i.i, 144115188075855871
  %.not24.i.i = icmp ult ptr %.01931.i.i, %i.au
  %or.cond25.i.i = select i1 %or.cond.i.i, i1 %.not24.i.i, i1 false
  br i1 %or.cond25.i.i, label %bb.l, label %decode_string.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.av = load i8, ptr %.01931.i.i, align 1, !tbaa !20 ; 2 uses
  %i.aw = shl nuw i64 %.030.i.i, 7
  %i.ax = add nuw i64 %i.aw, 128
  %i.ay = and i8 %i.av, 127
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = or disjoint i64 %i.ax, %i.az            ; 2 uses
  %.019.i.i = getelementptr inbounds nuw i8, ptr %.01931.i.i, i64 1 ; 2 uses
  %.not22.i.i = icmp sgt i8 %i.av, -1
  br i1 %.not22.i.i, label %get_var_int.exit.i, label %bb.k, !llvm.loop !0

get_var_int.exit.i:                               ; preds = %bb.l, %bb.j
  %.0.lcssa.i.i = phi i64 [ %i.at, %bb.j ], [ %i.ba, %bb.l ] ; 3 uses
  %.019.lcssa.i.i = phi ptr [ %.01928.i.i, %bb.j ], [ %.019.i.i, %bb.l ]
  %i.bb = ptrtoint ptr %.019.lcssa.i.i to i64
  %i.bc = ptrtoint ptr %i.ap to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 2 uses
  %i.be = trunc i64 %i.bd to i32
  %i.bf = icmp slt i32 %i.be, 1
  br i1 %i.bf, label %decode_string.exit.thread, label %bb.m

bb.m:                                             ; preds = %get_var_int.exit.i
  %i.bg = and i64 %i.bd, 2147483647               ; 2 uses
  %i.bh = sub i64 %i.aq, %i.bg                    ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %.0.lcssa.i.i
  br i1 %i.bi, label %decode_string.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bg
  tail call void @reftable_buf_reset(ptr noundef %6) #17
  %i.bk = tail call i32 @reftable_buf_add(ptr noundef %6, ptr noundef nonnull %i.bj, i64 noundef %.0.lcssa.i.i) #17
  %i.bl = icmp slt i32 %i.bk, 0
  br i1 %i.bl, label %decode_string.exit.thread, label %decode_string.exit

decode_string.exit:                               ; preds = %bb.n
  %.neg.i = add i64 %.0.lcssa.i.i, %i.aq
  %i.bm = sub i64 %.neg.i, %i.bh                  ; 2 uses
  %i.bn = and i64 %i.bm, 2147483648
  %.not145 = icmp eq i64 %i.bn, 0
  br i1 %.not145, label %bb.o, label %decode_string.exit.thread

bb.o:                                             ; preds = %decode_string.exit
  %i.bo = and i64 %i.bm, 2147483647               ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bo ; 2 uses
  %i.bq = sub i64 %i.aq, %i.bo                    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !20 ; 3 uses
  %.not109 = icmp eq ptr %i.bs, null
  br i1 %.not109, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !28
  %i.bv = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bs, ptr noundef nonnull dereferenceable(1) %i.bu) #19
  %.not110 = icmp eq i32 %i.bv, 0
  br i1 %.not110, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !26
  %i.by = add i64 %i.bx, 1
  %i.bz = tail call ptr @reftable_realloc(ptr noundef %i.bs, i64 noundef %i.by) #17 ; 3 uses
  %.not111 = icmp eq ptr %i.bz, null
  br i1 %.not111, label %decode_string.exit.thread, label %.thread140

.thread140:                                       ; preds = %bb.q
  store ptr %i.bz, ptr %i.br, align 8, !tbaa !20
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !28
  %i.cc = load i64, ptr %i.bw, align 8, !tbaa !26
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bz, ptr align 1 %i.cb, i64 %i.cc, i1 false)
  %i.cd = load ptr, ptr %i.br, align 8, !tbaa !20
  %i.ce = load i64, ptr %i.bw, align 8, !tbaa !26
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ce
  store i8 0, ptr %i.cf, align 1, !tbaa !20
  br label %bb.r

bb.r:                                             ; preds = %.thread140, %bb.p
  %i.cg = tail call fastcc i32 @decode_string(ptr noundef nonnull %6, ptr nonnull %i.bp, i64 %i.bq) ; 2 uses
  %i.ch = icmp slt i32 %i.cg, 0
  br i1 %i.ch, label %decode_string.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ci = zext nneg i32 %i.cg to i64              ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.ci ; 2 uses
  store ptr %i.cj, ptr %7, align 8, !tbaa !19
  %i.ck = sub i64 %i.bq, %i.ci                    ; 2 uses
  store i64 %i.ck, ptr %i.b, align 8, !tbaa !18
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !20 ; 3 uses
  %.not112 = icmp eq ptr %i.cm, null
  br i1 %.not112, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !28
  %i.cp = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cm, ptr noundef nonnull dereferenceable(1) %i.co) #19
  %.not113 = icmp eq i32 %i.cp, 0
  br i1 %.not113, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !26
  %i.cs = add i64 %i.cr, 1
  %i.ct = tail call ptr @reftable_realloc(ptr noundef %i.cm, i64 noundef %i.cs) #17 ; 3 uses
  %.not114 = icmp eq ptr %i.ct, null
  br i1 %.not114, label %decode_string.exit.thread, label %.thread142

.thread142:                                       ; preds = %bb.u
  store ptr %i.ct, ptr %i.cl, align 8, !tbaa !20
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !28
  %i.cw = load i64, ptr %i.cq, align 8, !tbaa !26
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ct, ptr align 1 %i.cv, i64 %i.cw, i1 false)
  %i.cx = load ptr, ptr %i.cl, align 8, !tbaa !20
  %i.cy = load i64, ptr %i.cq, align 8, !tbaa !26
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cy
  store i8 0, ptr %i.cz, align 1, !tbaa !20
  br label %bb.v

bb.v:                                             ; preds = %.thread142, %bb.t
  store i64 0, ptr %i.a, align 8, !tbaa !22
  %i.da = call i32 @get_var_int(ptr noundef nonnull %i.a, ptr noundef nonnull %7) ; 2 uses
  %i.db = icmp slt i32 %i.da, 0
  br i1 %i.db, label %decode_string.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dc = zext nneg i32 %i.da to i64              ; 2 uses
  %i.dd = sub i64 %i.ck, %i.dc                    ; 2 uses
  %i.de = load i64, ptr %i.a, align 8, !tbaa !22
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 112
end_hunk_0
begin_hunk_1_@reftable_obj_record_decode:bb.a
  %.not24.i58 = icmp ult ptr %.01931.i55, %i.ap
  %or.cond25.i59 = select i1 %or.cond.i57, i1 %.not24.i58, i1 false
  br i1 %or.cond25.i59, label %bb.m, label %get_var_int.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.aq = load i8, ptr %.01931.i55, align 1, !tbaa !20 ; 2 uses
  %i.ar = shl nuw i64 %.030.i56, 7
  %i.as = add nuw i64 %i.ar, 128
  %i.at = and i8 %i.aq, 127
  %i.au = zext nneg i8 %i.at to i64
  %i.av = or disjoint i64 %i.as, %i.au            ; 2 uses
  %.019.i61 = getelementptr inbounds nuw i8, ptr %.01931.i55, i64 1 ; 2 uses
  %.not22.i62 = icmp sgt i8 %i.aq, -1
  br i1 %.not22.i62, label %get_var_int.exit66, label %bb.l, !llvm.loop !0

get_var_int.exit66:                               ; preds = %bb.m, %bb.k
  %i.aw = phi i64 [ %i.ao, %bb.k ], [ %i.av, %bb.m ] ; 2 uses
  %.019.lcssa.i65 = phi ptr [ %.01928.i52, %bb.k ], [ %.019.i61, %bb.m ]
  store i64 %i.aw, ptr %i.ak, align 8, !tbaa !22
  %i.ax = ptrtoint ptr %.019.lcssa.i65 to i64
  %i.ay = ptrtoint ptr %.sroa.0.0111160 to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 2 uses
  %i.ba = trunc i64 %i.az to i32                  ; 2 uses
  %i.bb = icmp slt i32 %i.ba, 0
  br i1 %i.bb, label %get_var_int.exit.thread, label %bb.n

bb.n:                                             ; preds = %get_var_int.exit66
  %i.bc = and i64 %i.az, 2147483647               ; 2 uses
  %i.bd = sub i64 %.sroa.10.0109161, %i.bc        ; 2 uses
  %.not49137 = icmp samesign ugt i64 %.0103112159, 1
  br i1 %.not49137, label %.lr.ph.preheader, label %.thread127

.lr.ph.preheader:                                 ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.0111160, i64 %i.bc
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.r
  %.0141 = phi i64 [ %i.bz, %bb.r ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.036140 = phi i64 [ %i.bx, %bb.r ], [ %i.aw, %.lr.ph.preheader ]
  %.sroa.0.1139 = phi ptr [ %i.bv, %bb.r ], [ %i.be, %.lr.ph.preheader ] ; 5 uses
  %.sroa.10.1138 = phi i64 [ %i.bw, %bb.r ], [ %i.bd, %.lr.ph.preheader ] ; 3 uses
  %.not.i67 = icmp eq i64 %.sroa.10.1138, 0
  br i1 %.not.i67, label %get_var_int.exit.thread, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.bf = load i8, ptr %.sroa.0.1139, align 1, !tbaa !20 ; 2 uses
  %i.bg = and i8 %i.bf, 127
  %i.bh = zext nneg i8 %i.bg to i64               ; 2 uses
  %.01928.i68 = getelementptr inbounds nuw i8, ptr %.sroa.0.1139, i64 1 ; 2 uses
  %.not2229.i69 = icmp sgt i8 %i.bf, -1
  br i1 %.not2229.i69, label %get_var_int.exit82, label %.lr.ph.i70

.lr.ph.i70:                                       ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.1139, i64 %.sroa.10.1138
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i70
  %.01931.i71 = phi ptr [ %.01928.i68, %.lr.ph.i70 ], [ %.019.i77, %bb.q ] ; 3 uses
  %.030.i72 = phi i64 [ %i.bh, %.lr.ph.i70 ], [ %i.bo, %bb.q ] ; 2 uses
  %or.cond.i73 = icmp ult i64 %.030.i72, 144115188075855871
  %.not24.i74 = icmp ult ptr %.01931.i71, %i.bi
  %or.cond25.i75 = select i1 %or.cond.i73, i1 %.not24.i74, i1 false
  br i1 %or.cond25.i75, label %bb.q, label %get_var_int.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.bj = load i8, ptr %.01931.i71, align 1, !tbaa !20 ; 2 uses
  %i.bk = shl nuw i64 %.030.i72, 7
  %i.bl = add nuw i64 %i.bk, 128
  %i.bm = and i8 %i.bj, 127
  %i.bn = zext nneg i8 %i.bm to i64
  %i.bo = or disjoint i64 %i.bl, %i.bn            ; 2 uses
  %.019.i77 = getelementptr inbounds nuw i8, ptr %.01931.i71, i64 1 ; 2 uses
  %.not22.i78 = icmp sgt i8 %i.bj, -1
  br i1 %.not22.i78, label %get_var_int.exit82, label %bb.p, !llvm.loop !0

get_var_int.exit82:                               ; preds = %bb.q, %bb.o
  %.0.lcssa.i80 = phi i64 [ %i.bh, %bb.o ], [ %i.bo, %bb.q ]
  %.019.lcssa.i81 = phi ptr [ %.01928.i68, %bb.o ], [ %.019.i77, %bb.q ]
  %i.bp = ptrtoint ptr %.019.lcssa.i81 to i64
  %i.bq = ptrtoint ptr %.sroa.0.1139 to i64
  %i.br = sub i64 %i.bp, %i.bq                    ; 2 uses
  %i.bs = trunc i64 %i.br to i32                  ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, -1
  br i1 %i.bt, label %bb.r, label %get_var_int.exit.thread

bb.r:                                             ; preds = %get_var_int.exit82
  %i.bu = and i64 %i.br, 2147483647               ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.1139, i64 %i.bu
  %i.bw = sub i64 %.sroa.10.1138, %i.bu           ; 2 uses
  %i.bx = add i64 %.0.lcssa.i80, %.036140         ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.0141
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !22
  %i.bz = add nuw i64 %.0141, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.bz, %.0103112159
  br i1 %exitcond.not, label %.thread127, label %.lr.ph, !llvm.loop !62

.thread127:                                       ; preds = %bb.r, %bb.n
  %.sroa.10.1.lcssa = phi i64 [ %i.bd, %bb.n ], [ %i.bw, %bb.r ]
  %i.ca = sub i64 %4, %.sroa.10.1.lcssa
  %i.cb = trunc i64 %i.ca to i32
  br label %get_var_int.exit.thread

get_var_int.exit.thread:                          ; preds = %bb.e, %bb.l, %get_var_int.exit82, %.lr.ph, %bb.p, %bb.g, %bb.j, %bb.c, %.thread115, %get_var_int.exit66, %bb.i, %get_var_int.exit, %bb.a, %.thread127
  %.3 = phi i32 [ -13, %bb.a ], [ -1, %bb.l ], [ -13, %bb.i ], [ %i.cb, %.thread127 ], [ -1, %bb.p ], [ %i.aa, %get_var_int.exit ], [ %i.ba, %get_var_int.exit66 ], [ %i.aa, %bb.g ], [ -13, %.thread115 ], [ -1, %bb.c ], [ -1, %bb.j ], [ -1, %.lr.ph ], [ %i.bs, %get_var_int.exit82 ], [ -1, %bb.e ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal void @reftable_obj_record_release(ptr nofree noundef captures(none) initializes((8, 16), (24, 32)) %0) #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45
  tail call void @reftable_free(ptr noundef %i.a) #17
  store ptr null, ptr %0, align 8, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47
  tail call void @reftable_free(ptr noundef %i.c) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @reftable_obj_record_equal_void(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 %2) #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !46   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !46
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !48   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !48
  %.not16 = icmp eq i32 %i.f, %i.h
  br i1 %.not16, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %.not17 = icmp eq i32 %i.b, 0
  br i1 %.not17, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %0, align 8, !tbaa !45
  %i.j = load ptr, ptr %1, align 8, !tbaa !45
  %i.k = sext i32 %i.b to i64
  %bcmp = tail call i32 @bcmp(ptr %i.i, ptr %i.j, i64 %i.k)
  %.not18 = icmp eq i32 %bcmp, 0
  br i1 %.not18, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not19 = icmp eq i32 %i.f, 0
  br i1 %.not19, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !47
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !47
  %i.p = sext i32 %i.f to i64
  %i.q = shl nsw i64 %i.p, 3
  %bcmp20 = tail call i32 @bcmp(ptr %i.m, ptr %i.o, i64 %i.q)
  %.not21 = icmp eq i32 %bcmp20, 0
  br i1 %.not21, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.d, %bb.a, %bb.b, %bb.g
  %.0 = phi i32 [ 1, %bb.g ], [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.f ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @reftable_obj_record_cmp_void(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #13 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45
  %i.b = load ptr, ptr %1, align 8, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !46   ; 2 uses
  %. = tail call i32 @llvm.smax.i32(i32 %i.d, i32 %i.f)
  %i.g = sext i32 %. to i64
  %i.h = tail call i32 @memcmp(ptr noundef %i.a, ptr noundef %i.b, i64 noundef %i.g) #19 ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  %i.i = sub nsw i32 %i.d, %i.f
  %spec.select = select i1 %.not, i32 %i.i, i32 %i.h
  ret i32 %spec.select
}

declare ptr @reftable_malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !21}
!1 = distinct !{!1, !21}
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!"p1 omnipotent char", !14, i64 0}
!16 = !{!"long", !10, i64 0}
!17 = !{!"string_view", !15, i64 0, !16, i64 8}
!18 = !{!17, !16, i64 8}
!19 = !{!17, !15, i64 0}
!20 = !{!10, !10, i64 0}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!16, !16, i64 0}
!23 = !{!"reftable_ref_record", !15, i64 0, !16, i64 8, !16, i64 16, !11, i64 24, !10, i64 32}
!24 = !{!23, !11, i64 24}
!25 = !{!"reftable_buf", !16, i64 0, !16, i64 8, !15, i64 16}
!26 = !{!25, !16, i64 8}
!27 = !{!11, !11, i64 0}
!28 = !{!25, !15, i64 16}
!29 = !{!23, !15, i64 0}
!30 = !{!"reftable_log_record", !15, i64 0, !16, i64 8, !16, i64 16, !11, i64 24, !10, i64 32}
!31 = !{!30, !15, i64 0}
!32 = !{!30, !11, i64 24}
!33 = !{!30, !16, i64 16}
!34 = !{!"reftable_record", !10, i64 0, !10, i64 8}
!35 = !{!34, !10, i64 0}
!36 = !{!"reftable_record_vtable", !14, i64 0, !10, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72}
!37 = !{!23, !16, i64 16}
!38 = !{!23, !16, i64 8}
!39 = !{!"reftable_index_record", !16, i64 0, !25, i64 8}
!40 = !{!39, !15, i64 24}
!41 = !{!39, !16, i64 16}
!42 = !{!39, !16, i64 0}
!43 = !{!"p1 long", !14, i64 0}
!44 = !{!"reftable_obj_record", !15, i64 0, !11, i64 8, !43, i64 16, !11, i64 24}
!45 = !{!44, !15, i64 0}
!46 = !{!44, !11, i64 8}
!47 = !{!44, !43, i64 16}
!48 = !{!44, !11, i64 24}
!49 = !{!36, !14, i64 0}
!50 = !{!36, !14, i64 32}
!51 = !{!36, !14, i64 16}
!52 = !{!36, !14, i64 24}
!53 = !{!36, !14, i64 40}
!54 = !{!36, !14, i64 48}
!55 = !{!36, !14, i64 56}
!56 = !{!36, !14, i64 72}
!57 = !{!36, !14, i64 64}
!58 = !{!15, !15, i64 0}
!59 = !{i64 0, i64 8, !58, i64 8, i64 8, !22, i64 16, i64 8, !22, i64 24, i64 4, !27, i64 32, i64 112, !20}
!60 = !{!30, !16, i64 8}
!61 = distinct !{!61, !21}
!62 = distinct !{!62, !21}
end_hunk_1
