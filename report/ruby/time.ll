Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/time?download=true
inline.NumInlined: 958
inline.NumDeleted: 130
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@gmtimew:bb.a

bb.i:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i26
  %i.ai = getelementptr i8, ptr %i.ae, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !259
  %.not.i.i = icmp eq i64 %i.aj, 3
  br i1 %.not.i.i, label %bb.j, label %timet2wv.exit

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr i8, ptr %i.ae, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !260
  br label %timet2wv.exit

timet2wv.exit:                                    ; preds = %rb_long2num_inline.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i26, %bb.i, %bb.j
  %.06.i.i = phi i64 [ %.0.i.i25, %bb.i ], [ %i.al, %bb.j ], [ %.0.i.i25, %rbimpl_RB_TYPE_P_fastpath.exit.i.i26 ], [ %.0.i.i25, %rb_long2num_inline.exit.i ]
  %i.am = tail call fastcc i64 @wmul(i64 noundef %.06.i.i, i64 noundef 2000000001) ; 8 uses
  %i.an = and i64 %i.d, %i.am
  %or.cond.not.i.i27 = icmp eq i64 %i.an, 0
  br i1 %or.cond.not.i.i27, label %bb.l, label %bb.k

bb.k:                                             ; preds = %timet2wv.exit
  %i.ao = icmp slt i64 %i.am, %0
  br i1 %i.ao, label %wcmp.exit32.thread, label %wcmp.exit32.thread42

bb.l:                                             ; preds = %timet2wv.exit
  %i.ap = icmp eq i64 %i.am, 0
  %i.aq = and i64 %i.am, 7
  %i.ar = icmp ne i64 %i.aq, 0
  %i.as = or i1 %i.ap, %i.ar
  br i1 %i.as, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i31, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i30

rbimpl_RB_TYPE_P_fastpath.exit.i.i30:             ; preds = %bb.l
  %i.at = inttoptr i64 %i.am to ptr
  %i.au = load i64, ptr %i.at, align 8, !tbaa !250
  %i.av = and i64 %i.au, 31
  %i.aw = icmp eq i64 %i.av, 10
  br i1 %i.aw, label %bb.m, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i31

bb.m:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i30
  %i.ax = tail call i64 @rb_big_cmp(i64 noundef %i.am, i64 noundef %0) #18
  %i.ay = tail call i64 @rb_fix2int(i64 noundef %i.ax) #18
  %i.az = trunc i64 %i.ay to i32
  br label %wcmp.exit32

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i31:      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i30, %bb.l
  %i.ba = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.am, i64 noundef 135, i32 noundef 1, i64 noundef %0) #18
  %i.bb = tail call i32 @rb_cmpint(i64 noundef %i.ba, i64 noundef %i.am, i64 noundef %0) #18
  br label %wcmp.exit32

wcmp.exit32:                                      ; preds = %bb.m, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i31
  %.0.i.i29 = phi i32 [ %i.bb, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i31 ], [ %i.az, %bb.m ]
  %i.bc = icmp slt i32 %.0.i.i29, 0
  br i1 %i.bc, label %wcmp.exit32.thread, label %wcmp.exit32.thread42

wcmp.exit32.thread:                               ; preds = %bb.k, %wcmp.exit32
  %i.bd = load i32, ptr @number_of_leap_seconds_known, align 4, !tbaa !13
  %i.be = sext i32 %i.bd to i64
  %i.bf = shl nsw i64 %i.be, 1
  %i.bg = or disjoint i64 %i.bf, 1
  %i.bh = tail call fastcc i64 @wmul(i64 noundef %i.bg, i64 noundef 2000000001)
  %i.bi = tail call fastcc i64 @wsub(i64 noundef %0, i64 noundef %i.bh)
  tail call fastcc void @gmtimew_noleapsecond(i64 noundef %i.bi, ptr noundef %1)
  br label %bb.t

wcmp.exit32.thread42:                             ; preds = %bb.k, %wcmp.exit32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call fastcc void @divmodv(i64 noundef %0, i64 noundef 2000000001, ptr noundef %i.a, ptr noundef %i.b)
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !234 ; 6 uses
  %i.bk = icmp eq i64 %i.bj, 0
  %i.bl = and i64 %i.bj, 7
  %i.bm = icmp ne i64 %i.bl, 0
  %i.bn = or i1 %i.bk, %i.bm
  br i1 %i.bn, label %v2w.exit.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %wcmp.exit32.thread42
  %i.bo = inttoptr i64 %i.bj to ptr               ; 3 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !250
  %i.bq = and i64 %i.bp, 31
  %i.br = icmp eq i64 %i.bq, 15
  br i1 %i.br, label %bb.n, label %v2w.exit.i.i

bb.n:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  %i.bs = getelementptr i8, ptr %i.bo, i64 24
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !259
  %.not.i.i.i = icmp eq i64 %i.bt, 3
  br i1 %.not.i.i.i, label %bb.o, label %v2w.exit.i.i

bb.o:                                             ; preds = %bb.n
  %i.bu = getelementptr i8, ptr %i.bo, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !260
  br label %v2w.exit.i.i

v2w.exit.i.i:                                     ; preds = %bb.o, %bb.n, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %wcmp.exit32.thread42
  %.06.i.i.i = phi i64 [ %i.bj, %bb.n ], [ %i.bv, %bb.o ], [ %i.bj, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i ], [ %i.bj, %wcmp.exit32.thread42 ] ; 3 uses
  %i.bw = load i64, ptr %i.b, align 8, !tbaa !234 ; 6 uses
  %i.bx = icmp eq i64 %i.bw, 0
  %i.by = and i64 %i.bw, 7
  %i.bz = icmp ne i64 %i.by, 0
  %i.ca = or i1 %i.bx, %i.bz
  br i1 %i.ca, label %split_second.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i3.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i3.i.i:            ; preds = %v2w.exit.i.i
  %i.cb = inttoptr i64 %i.bw to ptr               ; 3 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !250
  %i.cd = and i64 %i.cc, 31
  %i.ce = icmp eq i64 %i.cd, 15
  br i1 %i.ce, label %bb.p, label %split_second.exit

bb.p:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i3.i.i
  %i.cf = getelementptr i8, ptr %i.cb, i64 24
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !259
  %.not.i5.i.i = icmp eq i64 %i.cg, 3
  br i1 %.not.i5.i.i, label %bb.q, label %split_second.exit

bb.q:                                             ; preds = %bb.p
  %i.ch = getelementptr i8, ptr %i.cb, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !260
  br label %split_second.exit

split_second.exit:                                ; preds = %v2w.exit.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i3.i.i, %bb.p, %bb.q
  %.06.i4.i.i = phi i64 [ %i.bw, %bb.p ], [ %i.ci, %bb.q ], [ %i.bw, %rbimpl_RB_TYPE_P_fastpath.exit.i3.i.i ], [ %i.bw, %v2w.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.cj = trunc i64 %.06.i.i.i to i1
  br i1 %i.cj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %split_second.exit
  %i.ck = ashr i64 %.06.i.i.i, 1
  br label %wv2timet.exit

bb.s:                                             ; preds = %split_second.exit
  %i.cl = tail call i64 @rb_num2long(i64 noundef %.06.i.i.i) #18
  br label %wv2timet.exit

wv2timet.exit:                                    ; preds = %bb.r, %bb.s
  %.0.i.i33 = phi i64 [ %i.ck, %bb.r ], [ %i.cl, %bb.s ]
  store i64 %.0.i.i33, ptr %i.c, align 8, !tbaa !234
  %i.cm = call fastcc ptr @gmtime_with_leapsecond(ptr noundef nonnull %i.c, ptr noundef %2)
  %.not = icmp eq ptr %i.cm, null
  br i1 %.not, label %bb.t, label %rb_long2num_inline.exit36

rb_long2num_inline.exit36:                        ; preds = %wv2timet.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !280
  %i.cp = sext i32 %i.co to i64
  %i.cq = shl nsw i64 %i.cp, 1
  %i.cr = add nsw i64 %i.cq, 3801
  store i64 %i.cr, ptr %1, align 8, !tbaa !276
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !281
  %i.cu = getelementptr i8, ptr %1, i64 32        ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = shl i32 %i.ct, 9
  %i.cx = add i32 %i.cw, 512
  %i.cy = and i32 %i.cx, 7680
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = and i64 %i.cv, -8792334925824
  %i.db = or disjoint i64 %i.da, %i.cz
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !282
  %i.de = shl i32 %i.dd, 13
  %i.df = and i32 %i.de, 253952
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = or disjoint i64 %i.db, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !283
  %i.dk = shl i32 %i.dj, 18
  %i.dl = and i32 %i.dk, 8126464
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = or disjoint i64 %i.dh, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !284
  %i.dq = shl i32 %i.dp, 23
  %i.dr = load i32, ptr %2, align 8, !tbaa !285
  %i.ds = and i32 %i.dr, 63
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = shl nuw nsw i64 %i.dt, 32
  %i.dv = getelementptr i8, ptr %1, i64 8
  store i64 %.06.i4.i.i, ptr %i.dv, align 8, !tbaa !274
  %i.dw = getelementptr i8, ptr %1, i64 16
  store i64 1, ptr %i.dw, align 8, !tbaa !278
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !286
  %i.dz = and i32 %i.dy, 7
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = shl nuw nsw i64 %i.ea, 38
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !287
  %i.ee = add i32 %i.ed, 1
  %i.ef = and i32 %i.ee, 511
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = and i32 %i.dq, 528482304
  %.masked49 = zext nneg i32 %i.eh to i64
  %.masked48 = or disjoint i64 %i.dn, %.masked49
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !288
  %i.ek = and i32 %i.ej, 3
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = shl nuw nsw i64 %i.el, 41
  %.masked.masked = or disjoint i64 %.masked48, %i.du
  %.masked50 = or i64 %i.eb, %.masked.masked
  %i.en = or i64 %.masked50, %i.eg
  %i.eo = or disjoint i64 %i.en, %i.em
  store i64 %i.eo, ptr %i.cu, align 8
  br label %bb.t

bb.t:                                             ; preds = %wv2timet.exit, %rb_long2num_inline.exit36, %wcmp.exit32.thread, %bb.e, %wcmp.exit.thread
  %.0 = phi ptr [ %1, %wcmp.exit.thread ], [ %1, %bb.e ], [ %1, %wcmp.exit32.thread ], [ %1, %rb_long2num_inline.exit36 ], [ null, %wv2timet.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @gmtimew_noleapsecond(i64 noundef %0, ptr nofree noundef nonnull captures(none) initializes((0, 32)) %1) unnamed_addr #1 !guid !399 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  %i.g = getelementptr i8, ptr %1, i64 32         ; 10 uses
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, -6597069766657
  store i64 %i.i, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  call fastcc void @divmodv(i64 noundef %0, i64 noundef 2000000001, ptr noundef %i.c, ptr noundef %i.d)
  %i.j = load i64, ptr %i.c, align 8, !tbaa !234  ; 6 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = and i64 %i.j, 7
  %i.m = icmp ne i64 %i.l, 0
  %i.n = or i1 %i.k, %i.m
  br i1 %i.n, label %v2w.exit.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %bb.a
  %i.o = inttoptr i64 %i.j to ptr                 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !250
  %i.q = and i64 %i.p, 31
  %i.r = icmp eq i64 %i.q, 15
  br i1 %i.r, label %bb.b, label %v2w.exit.i.i

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  %i.s = getelementptr i8, ptr %i.o, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !259
  %.not.i.i.i = icmp eq i64 %i.t, 3
  br i1 %.not.i.i.i, label %bb.c, label %v2w.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr i8, ptr %i.o, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !260
  br label %v2w.exit.i.i

v2w.exit.i.i:                                     ; preds = %bb.c, %bb.b, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %bb.a
  %.06.i.i.i = phi i64 [ %i.j, %bb.b ], [ %i.v, %bb.c ], [ %i.j, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i ], [ %i.j, %bb.a ]
  %i.w = load i64, ptr %i.d, align 8, !tbaa !234  ; 6 uses
  %i.x = icmp eq i64 %i.w, 0
  %i.y = and i64 %i.w, 7
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = or i1 %i.x, %i.z
  br i1 %i.aa, label %split_second.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i3.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i3.i.i:            ; preds = %v2w.exit.i.i
  %i.ab = inttoptr i64 %i.w to ptr                ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !250
  %i.ad = and i64 %i.ac, 31
  %i.ae = icmp eq i64 %i.ad, 15
  br i1 %i.ae, label %bb.d, label %split_second.exit

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i3.i.i
  %i.af = getelementptr i8, ptr %i.ab, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !259
  %.not.i5.i.i = icmp eq i64 %i.ag, 3
  br i1 %.not.i5.i.i, label %bb.e, label %split_second.exit

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr i8, ptr %i.ab, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !260
  br label %split_second.exit

split_second.exit:                                ; preds = %v2w.exit.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i3.i.i, %bb.d, %bb.e
  %.06.i4.i.i = phi i64 [ %i.w, %bb.d ], [ %i.ai, %bb.e ], [ %i.w, %rbimpl_RB_TYPE_P_fastpath.exit.i3.i.i ], [ %i.w, %v2w.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %i.aj = getelementptr i8, ptr %1, i64 8
  store i64 %.06.i4.i.i, ptr %i.aj, align 8, !tbaa !274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call fastcc void @divmodv(i64 noundef %.06.i.i.i, i64 noundef 172801, ptr noundef %i.a, ptr noundef %i.b)
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !234 ; 6 uses
  %i.al = icmp eq i64 %i.ak, 0
  %i.am = and i64 %i.ak, 7
  %i.an = icmp ne i64 %i.am, 0
  %i.ao = or i1 %i.al, %i.an
  br i1 %i.ao, label %v2w.exit.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %split_second.exit
  %i.ap = inttoptr i64 %i.ak to ptr               ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !250
  %i.ar = and i64 %i.aq, 31
  %i.as = icmp eq i64 %i.ar, 15
  br i1 %i.as, label %bb.f, label %v2w.exit.i

bb.f:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.at = getelementptr i8, ptr %i.ap, i64 24
  %i.au = load i64, ptr %i.at, align 8, !tbaa !259
  %.not.i.i = icmp eq i64 %i.au, 3
  br i1 %.not.i.i, label %bb.g, label %v2w.exit.i

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr i8, ptr %i.ap, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !260
  br label %v2w.exit.i

v2w.exit.i:                                       ; preds = %bb.g, %bb.f, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %split_second.exit
  %.06.i.i = phi i64 [ %i.ak, %bb.f ], [ %i.aw, %bb.g ], [ %i.ak, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ], [ %i.ak, %split_second.exit ] ; 9 uses
  %i.ax = load i64, ptr %i.b, align 8, !tbaa !234 ; 6 uses
  %i.ay = icmp eq i64 %i.ax, 0
  %i.az = and i64 %i.ax, 7
  %i.ba = icmp ne i64 %i.az, 0
  %i.bb = or i1 %i.ay, %i.ba
  br i1 %i.bb, label %wdivmod.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i3.i

rbimpl_RB_TYPE_P_fastpath.exit.i3.i:              ; preds = %v2w.exit.i
  %i.bc = inttoptr i64 %i.ax to ptr               ; 3 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !250
  %i.be = and i64 %i.bd, 31
  %i.bf = icmp eq i64 %i.be, 15
  br i1 %i.bf, label %bb.h, label %wdivmod.exit

bb.h:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i3.i
  %i.bg = getelementptr i8, ptr %i.bc, i64 24
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !259
  %.not.i5.i = icmp eq i64 %i.bh, 3
  br i1 %.not.i5.i, label %bb.i, label %wdivmod.exit

bb.i:                                             ; preds = %bb.h
  %i.bi = getelementptr i8, ptr %i.bc, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !260
  br label %wdivmod.exit

wdivmod.exit:                                     ; preds = %v2w.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.i3.i, %bb.h, %bb.i
  %.06.i4.i = phi i64 [ %i.ax, %bb.h ], [ %i.bj, %bb.i ], [ %i.ax, %rbimpl_RB_TYPE_P_fastpath.exit.i3.i ], [ %i.ax, %v2w.exit.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  store i64 %.06.i.i, ptr %i.f, align 8, !tbaa !234
  store i64 %.06.i4.i, ptr %i.e, align 8, !tbaa !234
  %i.bk = trunc i64 %.06.i.i to i1
  br i1 %i.bk, label %bb.j, label %bb.k

bb.j:                                             ; preds = %wdivmod.exit
  %i.bl = ashr i64 %.06.i.i, 1
  %i.bm = srem i64 %i.bl, 7                       ; 2 uses
  %i.bn = icmp slt i64 %i.bm, 0
  %i.bo = shl nsw i64 %i.bm, 1                    ; 2 uses
  %i.bp = add nsw i64 %i.bo, 14
  %i.bq = select i1 %i.bn, i64 %i.bp, i64 %i.bo
  %i.br = or disjoint i64 %i.bq, 1
  br label %modv.exit

bb.k:                                             ; preds = %wdivmod.exit
  %i.bs = icmp eq i64 %.06.i.i, 0
  %i.bt = and i64 %.06.i.i, 6
  %i.bu = icmp ne i64 %i.bt, 0
  %i.bv = or i1 %i.bs, %i.bu
  br i1 %i.bv, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.k
  %i.bw = inttoptr i64 %.06.i.i to ptr
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !250
  %i.by = and i64 %i.bx, 31
  %i.bz = icmp eq i64 %i.by, 10
  br i1 %i.bz, label %bb.l, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.l:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.ca = tail call i64 @rb_big_modulo(i64 noundef %.06.i.i, i64 noundef 15) #18
  br label %modv.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.k
  %i.cb = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.06.i.i, i64 noundef 37, i32 noundef 1, i64 noundef 15) #18
  br label %modv.exit

modv.exit:                                        ; preds = %bb.j, %bb.l, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %.0.i = phi i64 [ %i.cb, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ], [ %i.ca, %bb.l ], [ %i.br, %bb.j ] ; 3 uses
  %i.cc = trunc i64 %.0.i to i1
  br i1 %i.cc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %modv.exit
  %i.cd = tail call i64 @rb_fix2int(i64 noundef %.0.i) #18
  br label %rb_num2int_inline.exit

bb.n:                                             ; preds = %modv.exit
  %i.ce = tail call i64 @rb_num2int(i64 noundef %.0.i) #18
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.m, %bb.n
  %.0.i63 = phi i64 [ %i.cd, %bb.m ], [ %i.ce, %bb.n ]
  %i.cf = trunc i64 %.0.i63 to i32
end_hunk_0
begin_hunk_1_@zone_localtime:bb.a
  %i.pw = and i64 %i.pv, -61572651155457
  store i64 %i.pw, ptr %i.pf, align 8
  %i.px = load i64, ptr %i.i, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.px, ptr %i.a, align 8, !tbaa !234
  %.pr.i.i = load i64, ptr @zone_set_dst.rbimpl_id, align 8, !tbaa !234 ; 2 uses
  %.not4.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not4.i.i, label %.lr.ph.i.i, label %zone_set_dst.exit

.lr.ph.i.i:                                       ; preds = %zone_set_offset.exit, %.lr.ph.i.i
  %i.py = call i64 @rb_intern2(ptr noundef nonnull @.str.63, i64 noundef 4) #18 ; 3 uses
  store i64 %i.py, ptr @zone_set_dst.rbimpl_id, align 8, !tbaa !234
  %.not.i.i = icmp eq i64 %i.py, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %zone_set_dst.exit, !llvm.loop !1

zone_set_dst.exit:                                ; preds = %.lr.ph.i.i, %zone_set_offset.exit
  %.lcssa.i.i = phi i64 [ %.pr.i.i, %zone_set_offset.exit ], [ %i.py, %.lr.ph.i.i ]
  %i.pz = call i64 @rb_check_funcall(i64 noundef %0, i64 noundef %.lcssa.i.i, i32 noundef 1, ptr noundef nonnull %i.a) #18 ; 2 uses
  %i.qa = icmp eq i64 %i.pz, 36
  %i.qb = and i64 %i.pz, -5
  %.not.i12 = icmp eq i64 %i.qb, 0
  %i.qc = or i1 %i.qa, %.not.i12
  %i.qd = select i1 %i.qc, i64 0, i64 2199023255552
  %i.qe = load i64, ptr %i.pf, align 8
  %i.qf = and i64 %i.qe, -6597069766657
  %i.qg = or disjoint i64 %i.qd, %i.qf
  store i64 %i.qg, ptr %i.pf, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #18
  store ptr %i.h, ptr %i.j, align 8, !tbaa !267
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.j) #18, !srcloc !413
  %i.qh = load ptr, ptr %i.j, align 8, !tbaa !267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #18
  %i.qi = load volatile i64, ptr %i.qh, align 8, !tbaa !234 ; 0 uses
  br label %bb.bs

bb.bs:                                            ; preds = %split_second.exit, %zone_set_dst.exit
  %.0 = phi i32 [ 1, %zone_set_dst.exit ], [ 0, %split_second.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @localtimew(i64 noundef %0, ptr nofree noundef nonnull captures(address, ret: address, provenance) %1) unnamed_addr #1 !guid !414 {
bb.a:
  %2 = alloca %struct.tm, align 8                 ; 10 uses
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 9 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %3 = alloca %struct.vtm, align 8                ; 5 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %4 = alloca %struct.tm, align 8                 ; 13 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  %i.j = tail call fastcc i32 @timew_out_of_timet_range(i64 noundef %0)
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  call fastcc void @divmodv(i64 noundef %0, i64 noundef 2000000001, ptr noundef %i.e, ptr noundef %i.f)
  %i.k = load i64, ptr %i.e, align 8, !tbaa !234  ; 6 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = and i64 %i.k, 7
  %i.n = icmp ne i64 %i.m, 0
  %i.o = or i1 %i.l, %i.n
  br i1 %i.o, label %v2w.exit.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %bb.b
  %i.p = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !250
  %i.r = and i64 %i.q, 31
  %i.s = icmp eq i64 %i.r, 15
  br i1 %i.s, label %bb.c, label %v2w.exit.i.i

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  %i.t = getelementptr i8, ptr %i.p, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !259
  %.not.i.i.i = icmp eq i64 %i.u, 3
  br i1 %.not.i.i.i, label %bb.d, label %v2w.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr i8, ptr %i.p, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !260
  br label %v2w.exit.i.i

v2w.exit.i.i:                                     ; preds = %bb.d, %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %bb.b
  %.06.i.i.i = phi i64 [ %i.k, %bb.c ], [ %i.w, %bb.d ], [ %i.k, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i ], [ %i.k, %bb.b ] ; 3 uses
  %i.x = load i64, ptr %i.f, align 8, !tbaa !234  ; 6 uses
  %i.y = icmp eq i64 %i.x, 0
  %i.z = and i64 %i.x, 7
  %i.aa = icmp ne i64 %i.z, 0
  %i.ab = or i1 %i.y, %i.aa
  br i1 %i.ab, label %split_second.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i3.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i3.i.i:            ; preds = %v2w.exit.i.i
  %i.ac = inttoptr i64 %i.x to ptr                ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !250
  %i.ae = and i64 %i.ad, 31
  %i.af = icmp eq i64 %i.ae, 15
  br i1 %i.af, label %bb.e, label %split_second.exit

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i3.i.i
  %i.ag = getelementptr i8, ptr %i.ac, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !259
  %.not.i5.i.i = icmp eq i64 %i.ah, 3
  br i1 %.not.i5.i.i, label %bb.f, label %split_second.exit

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr i8, ptr %i.ac, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !260
  br label %split_second.exit

split_second.exit:                                ; preds = %v2w.exit.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i3.i.i, %bb.e, %bb.f
  %.06.i4.i.i = phi i64 [ %i.x, %bb.e ], [ %i.aj, %bb.f ], [ %i.x, %rbimpl_RB_TYPE_P_fastpath.exit.i3.i.i ], [ %i.x, %v2w.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  %i.ak = trunc i64 %.06.i.i.i to i1
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %split_second.exit
  %i.al = ashr i64 %.06.i.i.i, 1
  br label %wv2timet.exit

bb.h:                                             ; preds = %split_second.exit
  %i.am = tail call i64 @rb_num2long(i64 noundef %.06.i.i.i) #18
  br label %wv2timet.exit

wv2timet.exit:                                    ; preds = %bb.g, %bb.h
  %.0.i.i = phi i64 [ %i.al, %bb.g ], [ %i.am, %bb.h ]
  store i64 %.0.i.i, ptr %i.h, align 8, !tbaa !234
  %i.an = call fastcc ptr @localtime_with_gmtoff_zone(ptr noundef nonnull %i.h, ptr noundef %4, ptr noundef nonnull %i.i, ptr noundef %i.g)
  %.not28 = icmp eq ptr %i.an, null
  br i1 %.not28, label %.critedge, label %rb_long2num_inline.exit

rb_long2num_inline.exit:                          ; preds = %wv2timet.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !280
  %i.aq = sext i32 %i.ap to i64
  %i.ar = shl nsw i64 %i.aq, 1
  %i.as = add nsw i64 %i.ar, 3801
  store i64 %i.as, ptr %1, align 8, !tbaa !276
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.au = load i32, ptr %i.at, align 8, !tbaa !281
  %i.av = getelementptr i8, ptr %1, i64 32        ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = shl i32 %i.au, 9
  %i.ay = add i32 %i.ax, 512
  %i.az = and i32 %i.ay, 7680
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = and i64 %i.aw, -8792334925824
  %i.bc = or disjoint i64 %i.bb, %i.ba
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !282
  %i.bf = shl i32 %i.be, 13
  %i.bg = and i32 %i.bf, 253952
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = or disjoint i64 %i.bc, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !283
  %i.bl = shl i32 %i.bk, 18
  %i.bm = and i32 %i.bl, 8126464
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = or disjoint i64 %i.bi, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !284
  %i.br = shl i32 %i.bq, 23
  %i.bs = load i32, ptr %4, align 8, !tbaa !285
  %i.bt = and i32 %i.bs, 63
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = shl nuw nsw i64 %i.bu, 32
  %i.bw = getelementptr i8, ptr %1, i64 8
  store i64 %.06.i4.i.i, ptr %i.bw, align 8, !tbaa !274
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !286
  %i.bz = and i32 %i.by, 7
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = shl nuw nsw i64 %i.ca, 38
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !287
  %i.ce = add i32 %i.cd, 1
  %i.cf = and i32 %i.ce, 511
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = and i32 %i.br, 528482304
  %.masked51 = zext nneg i32 %i.ch to i64
  %.masked50 = or disjoint i64 %i.bo, %.masked51
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !288
  %i.ck = and i32 %i.cj, 3
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = shl nuw nsw i64 %i.cl, 41
  %.masked.masked = or disjoint i64 %.masked50, %i.bv
  %.masked52 = or i64 %i.cb, %.masked.masked
  %i.cn = or i64 %.masked52, %i.cg
  %i.co = or disjoint i64 %i.cn, %i.cm
  store i64 %i.co, ptr %i.av, align 8
  %i.cp = load i64, ptr %i.i, align 8, !tbaa !234 ; 3 uses
  %i.cq = add i64 %i.cp, 4611686018427387904
  %or.cond.i31 = icmp sgt i64 %i.cq, -1
  br i1 %or.cond.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %rb_long2num_inline.exit
  %i.cr = shl nsw i64 %i.cp, 1
  %i.cs = or disjoint i64 %i.cr, 1
  br label %rb_long2num_inline.exit33

bb.j:                                             ; preds = %rb_long2num_inline.exit
  %i.ct = call i64 @rb_int2big(i64 noundef %i.cp) #18
  br label %rb_long2num_inline.exit33

rb_long2num_inline.exit33:                        ; preds = %bb.i, %bb.j
  %.0.i32 = phi i64 [ %i.cs, %bb.i ], [ %i.ct, %bb.j ]
  %i.cu = getelementptr i8, ptr %1, i64 16
  store i64 %.0.i32, ptr %i.cu, align 8, !tbaa !278
  %i.cv = load i64, ptr %i.g, align 8, !tbaa !234
  %i.cw = getelementptr i8, ptr %1, i64 24
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  br label %bb.aq

.critedge:                                        ; preds = %wv2timet.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  br label %bb.k

bb.k:                                             ; preds = %.critedge, %bb.a
  %i.cx = call fastcc ptr @gmtimew(i64 noundef %0, ptr noundef %1)
  %.not29 = icmp eq ptr %i.cx, null
  br i1 %.not29, label %bb.aq, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.cy = load i64, ptr %1, align 8, !tbaa !276   ; 9 uses
  %i.cz = and i64 %i.cy, 1
  %or.cond.not.i.i = icmp eq i64 %i.cz, 0
  br i1 %or.cond.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.da = icmp slt i64 %i.cy, 3833
  br i1 %i.da, label %cmp.exit.thread.i, label %cmp.exit.thread40.i

bb.n:                                             ; preds = %bb.l
  %i.db = icmp eq i64 %i.cy, 0
  %i.dc = and i64 %i.cy, 6
  %i.dd = icmp ne i64 %i.dc, 0
  %i.de = or i1 %i.db, %i.dd
  br i1 %i.de, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.n
  %i.df = inttoptr i64 %i.cy to ptr
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !250
  %i.dh = and i64 %i.dg, 31
  %i.di = icmp eq i64 %i.dh, 10
  br i1 %i.di, label %bb.o, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

bb.o:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.dj = call i64 @rb_big_cmp(i64 noundef %i.cy, i64 noundef 3833) #18
  %i.dk = call i64 @rb_fix2int(i64 noundef %i.dj) #18
  %i.dl = trunc i64 %i.dk to i32
  br label %cmp.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.n
  %i.dm = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.cy, i64 noundef 135, i32 noundef 1, i64 noundef 3833) #18
  %i.dn = call i32 @rb_cmpint(i64 noundef %i.dm, i64 noundef %i.cy, i64 noundef 3833) #18
  br label %cmp.exit.i

cmp.exit.i:                                       ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, %bb.o
  %.0.i.i38 = phi i32 [ %i.dn, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i ], [ %i.dl, %bb.o ]
  %i.do = icmp slt i32 %.0.i.i38, 0
  br i1 %i.do, label %cmp.exit.thread.i, label %cmp.exit.cmp.exit.thread40_crit_edge.i

cmp.exit.cmp.exit.thread40_crit_edge.i:           ; preds = %cmp.exit.i
  %.pre.i = load i64, ptr %1, align 8, !tbaa !276
  br label %cmp.exit.thread40.i

cmp.exit.thread.i:                                ; preds = %cmp.exit.i, %bb.m
  %i.dp = load i64, ptr @str_utc, align 8, !tbaa !234
  store i64 %i.dp, ptr %i.b, align 8, !tbaa !234
  store i64 -11700288000, ptr %i.c, align 8, !tbaa !234
  %i.dq = call fastcc ptr @localtime_with_gmtoff_zone(ptr noundef nonnull %i.c, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef %i.b)
  %.not32.i = icmp eq ptr %i.dq, null
  br i1 %.not32.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %cmp.exit.thread.i
  %i.dr = load i64, ptr %i.a, align 8, !tbaa !234
  %i.ds = shl i64 %i.dr, 1
  %i.dt = or disjoint i64 %i.ds, 1
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !288
  br label %bb.s

bb.q:                                             ; preds = %cmp.exit.thread.i
  store i64 0, ptr %i.c, align 8, !tbaa !234
  %i.dw = call fastcc ptr @localtime_with_gmtoff_zone(ptr noundef nonnull %i.c, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef %i.b)
  %.not33.i = icmp eq ptr %i.dw, null
  br i1 %.not33.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dx = load i64, ptr %i.a, align 8, !tbaa !234
  %i.dy = shl i64 %i.dx, 1
  %i.dz = or disjoint i64 %i.dy, 1
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !288
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.025.i = phi i64 [ %i.dt, %bb.p ], [ %i.dz, %bb.r ], [ 1, %bb.q ]
  %.0.i37 = phi i32 [ %i.dv, %bb.p ], [ %i.eb, %bb.r ], [ 0, %bb.q ]
  %i.ec = load i64, ptr %i.b, align 8, !tbaa !234
  br label %guess_local_offset.exit

cmp.exit.thread40.i:                              ; preds = %cmp.exit.cmp.exit.thread40_crit_edge.i, %bb.m
  %i.ed = phi i64 [ %.pre.i, %cmp.exit.cmp.exit.thread40_crit_edge.i ], [ %i.cy, %bb.m ] ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !295
  %i.ee = trunc i64 %i.ed to i1
  br i1 %i.ee, label %bb.t, label %bb.u

bb.t:                                             ; preds = %cmp.exit.thread40.i
  %i.ef = ashr i64 %i.ed, 1
  %i.eg = srem i64 %i.ef, 400                     ; 2 uses
  %i.eh = icmp slt i64 %i.eg, 0
  %i.ei = shl nsw i64 %i.eg, 1                    ; 2 uses
  %i.ej = add nsw i64 %i.ei, 800
  %i.ek = select i1 %i.eh, i64 %i.ej, i64 %i.ei
  %i.el = or disjoint i64 %i.ek, 1
  br label %modv.exit.i

bb.u:                                             ; preds = %cmp.exit.thread40.i
  %i.em = icmp eq i64 %i.ed, 0
  %i.en = and i64 %i.ed, 6
  %i.eo = icmp ne i64 %i.en, 0
  %i.ep = or i1 %i.em, %i.eo
  br i1 %i.ep, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i35.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i34.i

rbimpl_RB_TYPE_P_fastpath.exit.i34.i:             ; preds = %bb.u
  %i.eq = inttoptr i64 %i.ed to ptr
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !250
  %i.es = and i64 %i.er, 31
  %i.et = icmp eq i64 %i.es, 10
  br i1 %i.et, label %bb.v, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i35.i

bb.v:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i34.i
  %i.eu = call i64 @rb_big_modulo(i64 noundef %i.ed, i64 noundef 801) #18
  br label %modv.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i35.i:      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i34.i, %bb.u
  %i.ev = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.ed, i64 noundef 37, i32 noundef 1, i64 noundef 801) #18
  br label %modv.exit.i

modv.exit.i:                                      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i35.i, %bb.v, %bb.t
  %.0.i36.i = phi i64 [ %i.ev, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i35.i ], [ %i.eu, %bb.v ], [ %i.el, %bb.t ] ; 3 uses
  %i.ew = trunc i64 %.0.i36.i to i1
  br i1 %i.ew, label %bb.w, label %bb.x

bb.w:                                             ; preds = %modv.exit.i
  %i.ex = call i64 @rb_fix2int(i64 noundef %.0.i36.i) #18
  br label %rb_num2int_inline.exit.i

bb.x:                                             ; preds = %modv.exit.i
  %i.ey = call i64 @rb_num2int(i64 noundef %.0.i36.i) #18
  br label %rb_num2int_inline.exit.i

rb_num2int_inline.exit.i:                         ; preds = %bb.x, %bb.w
  %.0.i37.i = phi i64 [ %i.ex, %bb.w ], [ %i.ey, %bb.x ] ; 2 uses
  %i.ez = trunc i64 %.0.i37.i to i32
  %i.fa = getelementptr i8, ptr %1, i64 32
  %i.fb = load i64, ptr %i.fa, align 8            ; 3 uses
  %i.fc = trunc i64 %i.fb to i32
  %i.fd = lshr i32 %i.fc, 9
  %i.fe = and i32 %i.fd, 15                       ; 2 uses
  %i.ff = trunc nuw nsw i32 %i.fe to i8
  %.lhs.trunc.i.i = sub nsw i8 14, %i.ff
  %i.fg = sdiv i8 %.lhs.trunc.i.i, 12
  %.sext.i.i = zext nneg i8 %i.fg to i32          ; 2 uses
  %i.fh = add i32 %i.ez, 4800
  %i.fi = sub i32 %i.fh, %.sext.i.i               ; 4 uses
  %i.fj = mul nuw nsw i32 %.sext.i.i, 12
  %i.fk = add nuw nsw i32 %i.fj, %i.fe
  %i.fl = trunc nuw nsw i32 %i.fk to i16
  %i.fm = mul nuw nsw i16 %i.fl, 153
  %.lhs.trunc13.i.i = add nsw i16 %i.fm, -457
  %i.fn = sdiv i16 %.lhs.trunc13.i.i, 5
  %narrow.i.i = add nsw i16 %i.fn, 1
  %i.fo = sext i16 %narrow.i.i to i32
  %i.fp = mul i32 %i.fi, 365
  %i.fq = sdiv i32 %i.fi, 4
end_hunk_1
