Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dovi_rpudec?download=true
inline.NumInlined: 158
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@ff_dovi_attach_side_data:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = call i32 @ff_dovi_get_metadata(ptr noundef %0, ptr noundef nonnull %i.a) ; 3 uses
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.f = zext nneg i32 %i.c to i64
  %i.g = tail call ptr @av_buffer_create(ptr noundef %i.e, i64 noundef %i.f, ptr noundef null, ptr noundef null, i32 noundef 0) #7 ; 3 uses
  store ptr %i.g, ptr %i.b, align 8, !tbaa !49
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @av_free(ptr noundef %i.e) #7
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call ptr @av_frame_new_side_data_from_buf(ptr noundef %1, i32 noundef 24, ptr noundef nonnull %i.g) #7
  %.not8 = icmp eq ptr %i.h, null
  br i1 %.not8, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @av_buffer_unref(ptr noundef nonnull %i.b) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.a, %bb.e, %bb.c
  %.0 = phi i32 [ -12, %bb.c ], [ %i.c, %bb.a ], [ -12, %bb.e ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

declare ptr @av_buffer_create(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @av_free(ptr noundef) local_unnamed_addr #2

declare ptr @av_frame_new_side_data_from_buf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @av_buffer_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1163346256, 1) i32 @ff_dovi_rpu_parse(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.GetBitContext, align 8      ; 51 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 20 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 14 ; 2 uses
  %i.c = load i8, ptr %i.b, align 2, !tbaa !57    ; 2 uses
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i8, ptr %i.d, align 4, !tbaa !58
  %i.f = icmp ne i8 %i.e, 0                       ; 2 uses
  %i.g = icmp ult i64 %2, 5
  br i1 %i.g, label %.thread670, label %bb.c

.thread:                                          ; preds = %bb.a
  %i.h = icmp ult i64 %2, 5
  br i1 %i.h, label %.thread670, label %.thread669

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i8 %i.c, 10
  br i1 %i.i, label %bb.d, label %.thread669

bb.d:                                             ; preds = %bb.c
  %i.j = trunc i64 %2 to i32                      ; 2 uses
  %or.cond.i = icmp ugt i32 %i.j, 268435455
  %i.k = shl nuw nsw i32 %i.j, 3
  %i.l = select i1 %or.cond.i, i32 -8, i32 %i.k   ; 5 uses
  %or.cond.i.i = icmp ult i32 %i.l, 2147483135    ; 2 uses
  %i.m = icmp ne ptr %1, null
  %or.cond3.i.i = and i1 %i.m, %or.cond.i.i       ; 2 uses
  %.014.i.i = select i1 %or.cond.i.i, ptr %1, ptr null
  %.013.i.i = select i1 %or.cond3.i.i, i32 %i.l, i32 0 ; 2 uses
  store ptr %.014.i.i, ptr %4, align 8, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %.013.i.i, ptr %i.n, align 4, !tbaa !59
  %i.o = add nuw nsw i32 %.013.i.i, 8             ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i32 %i.o, ptr %i.p, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  br i1 %or.cond3.i.i, label %bb.e, label %.thread670

bb.e:                                             ; preds = %bb.d
  %i.r = load i32, ptr %1, align 1, !tbaa !32
  %i.s = tail call i32 @llvm.bswap.i32(i32 %i.r)
  %i.t = tail call i32 @llvm.umin.i32(i32 %i.o, i32 16) ; 2 uses
  %i.u = lshr i32 %i.s, 5
  %i.v = and i32 %i.u, 134215680
  %i.w = lshr exact i32 %i.t, 3
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %i.x
  %i.z = load i32, ptr %i.y, align 1, !tbaa !32
  %i.aa = tail call i32 @llvm.bswap.i32(i32 %i.z)
  %i.ab = lshr i32 %i.aa, 21
  %i.ac = or disjoint i32 %i.ab, %i.v             ; 2 uses
  %or.cond.not = icmp eq i32 %i.ac, 29255745
  br i1 %or.cond.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %0, align 8, !tbaa !33
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ad, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef %i.ac) #7
  tail call void @ff_dovi_ctx_unref(ptr noundef nonnull %0) #7
  br label %.thread670

bb.g:                                             ; preds = %bb.e
  %i.ae = add nuw nsw i32 %i.t, 11                ; 2 uses
  %i.af = tail call i32 @llvm.umin.i32(i32 %i.o, i32 %i.ae) ; 3 uses
  %i.ag = lshr i32 %i.af, 3
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 1, !tbaa !32
  %i.ak = tail call i32 @llvm.bswap.i32(i32 %i.aj)
  %i.al = and i32 %i.af, 7
  %i.am = shl i32 %i.ak, %i.al
  %i.an = lshr i32 %i.am, 24                      ; 2 uses
  %i.ao = add nuw nsw i32 %i.af, 8
  %i.ap = tail call i32 @llvm.umin.i32(i32 %i.o, i32 %i.ao) ; 3 uses
  %i.aq = lshr i32 %i.ap, 3
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !32
  %i.au = icmp samesign ult i32 %i.ae, %i.l
  %i.av = zext i1 %i.au to i32
  %spec.select.i.i = add nuw nsw i32 %i.ap, %i.av ; 3 uses
  %i.aw = zext i8 %i.at to i32
  %i.ax = and i32 %i.ap, 7
  store i32 %spec.select.i.i, ptr %i.q, align 8, !tbaa !34
  %i.ay = lshr exact i32 128, %i.ax
  %i.az = and i32 %i.ay, %i.aw
  %.not12.i = icmp eq i32 %i.az, 0
  br i1 %.not12.i, label %get_variable_bits.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %.01014.i = phi i32 [ %i.bm, %.lr.ph.i ], [ %i.an, %bb.g ]
  %storemerge13.i = phi i32 [ %spec.select.i11.i, %.lr.ph.i ], [ %spec.select.i.i, %bb.g ] ; 4 uses
  %i.ba = shl i32 %.01014.i, 8
  %i.bb = add i32 %i.ba, 256
  %i.bc = lshr i32 %storemerge13.i, 3
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 1, !tbaa !32
  %i.bg = tail call i32 @llvm.bswap.i32(i32 %i.bf)
  %i.bh = and i32 %storemerge13.i, 7
  %i.bi = shl i32 %i.bg, %i.bh
  %i.bj = lshr i32 %i.bi, 24
  %i.bk = add nuw nsw i32 %storemerge13.i, 8
  %i.bl = tail call i32 @llvm.umin.i32(i32 %i.o, i32 %i.bk) ; 3 uses
  %i.bm = or disjoint i32 %i.bj, %i.bb            ; 2 uses
  %i.bn = lshr i32 %i.bl, 3
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !32
  %i.br = icmp samesign ult i32 %storemerge13.i, %i.l
  %i.bs = zext i1 %i.br to i32
  %spec.select.i11.i = add nuw nsw i32 %i.bl, %i.bs ; 3 uses
  %i.bt = zext i8 %i.bq to i32
  %i.bu = and i32 %i.bl, 7
  %i.bv = lshr exact i32 128, %i.bu
  %i.bw = and i32 %i.bv, %i.bt
  %.not.i638 = icmp eq i32 %i.bw, 0
  br i1 %.not.i638, label %get_variable_bits.exit.loopexit, label %.lr.ph.i, !llvm.loop !50

get_variable_bits.exit.loopexit:                  ; preds = %.lr.ph.i
  store i32 %spec.select.i11.i, ptr %i.q, align 8, !tbaa !34
  br label %get_variable_bits.exit

get_variable_bits.exit:                           ; preds = %get_variable_bits.exit.loopexit, %bb.g
  %.val635 = phi i32 [ %spec.select.i.i, %bb.g ], [ %spec.select.i11.i, %get_variable_bits.exit.loopexit ]
  %.010.lcssa.i = phi i32 [ %i.an, %bb.g ], [ %i.bm, %get_variable_bits.exit.loopexit ] ; 5 uses
  %i.bx = add i32 %.010.lcssa.i, -513
  %or.cond19 = icmp ult i32 %i.bx, -507
  br i1 %or.cond19, label %bb.h, label %bb.i

bb.h:                                             ; preds = %get_variable_bits.exit
  %i.by = load ptr, ptr %0, align 8, !tbaa !33
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.by, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef %.010.lcssa.i) #7
  tail call void @ff_dovi_ctx_unref(ptr noundef nonnull %0) #7
  br label %.thread670

bb.i:                                             ; preds = %get_variable_bits.exit
  %i.bz = shl nuw nsw i32 %.010.lcssa.i, 3        ; 2 uses
  %i.ca = sub nsw i32 %i.l, %.val635
  %i.cb = icmp ugt i32 %i.bz, %i.ca
  br i1 %i.cb, label %.thread670, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ce = zext nneg i32 %.010.lcssa.i to i64      ; 2 uses
  tail call void @av_fast_padded_malloc(ptr noundef nonnull %i.cc, ptr noundef nonnull %i.cd, i64 noundef %i.ce) #7
  %i.cf = load ptr, ptr %i.cc, align 8, !tbaa !60
  %.not599 = icmp eq ptr %i.cf, null
  br i1 %.not599, label %.thread670, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %.pre.a = load ptr, ptr %4, align 8, !tbaa !30
  %.pre842 = load i32, ptr %i.q, align 8, !tbaa !34 ; 2 uses
  %.pre844 = load ptr, ptr %i.cc, align 8, !tbaa !60
  %i.cg = lshr i32 %.pre842, 3
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %.pre.a, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 1, !tbaa !32
  %i.ck = tail call i32 @llvm.bswap.i32(i32 %i.cj)
  %i.cl = and i32 %.pre842, 7
  %i.cm = shl i32 %i.ck, %i.cl
  %i.cn = lshr i32 %i.cm, 15                      ; 2 uses
  %or.cond21.not = icmp eq i32 %i.cn, 1024
  br i1 %or.cond21.not, label %bb.n, label %bb.k

.lr.ph:                                           ; preds = %bb.j, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.j ] ; 2 uses
  %i.co = load i32, ptr %i.q, align 8, !tbaa !34  ; 3 uses
  %i.cp = load i32, ptr %i.p, align 8, !tbaa !31
  %i.cq = load ptr, ptr %4, align 8, !tbaa !30
  %i.cr = lshr i32 %i.co, 3
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 1, !tbaa !32
  %i.cv = tail call i32 @llvm.bswap.i32(i32 %i.cu)
  %i.cw = and i32 %i.co, 7
  %i.cx = shl i32 %i.cv, %i.cw
  %i.cy = lshr i32 %i.cx, 24
  %i.cz = add i32 %i.co, 8
  %i.da = tail call i32 @llvm.umin.i32(i32 %i.cp, i32 %i.cz)
  store i32 %i.da, ptr %i.q, align 8, !tbaa !34
  %i.db = trunc nuw i32 %i.cy to i8
  %i.dc = load ptr, ptr %i.cc, align 8, !tbaa !60
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %indvars.iv
  store i8 %i.db, ptr %i.dd, align 1, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ce
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !51

bb.k:                                             ; preds = %._crit_edge
  %i.de = load ptr, ptr %0, align 8, !tbaa !33
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.de, i32 noundef 16, ptr noundef nonnull @.str.2, i32 noundef %i.cn) #7
  tail call void @ff_dovi_ctx_unref(ptr noundef nonnull %0) #7
  br label %.thread670

.thread669:                                       ; preds = %.thread, %bb.c
  %i.df = phi i1 [ %i.f, %bb.c ], [ false, %.thread ]
  %i.dg = load i8, ptr %1, align 1, !tbaa !32     ; 2 uses
  %.not598 = icmp eq i8 %i.dg, 25
  br i1 %.not598, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.thread669
  %i.dh = load ptr, ptr %0, align 8, !tbaa !33
  %i.di = zext i8 %i.dg to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.dh, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %i.di) #7
  tail call void @ff_dovi_ctx_unref(ptr noundef nonnull %0) #7
  br label %.thread670

bb.m:                                             ; preds = %.thread669
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.dk = trunc i64 %2 to i32
  %i.dl = add i32 %i.dk, -1                       ; 2 uses
  %.pre850 = shl nuw nsw i32 %i.dl, 3
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %bb.m
  %.pre-phi = phi i32 [ %i.bz, %._crit_edge ], [ %.pre850, %bb.m ]
  %i.dm = phi i1 [ %i.f, %._crit_edge ], [ %i.df, %bb.m ] ; 3 uses
  %.1533 = phi i32 [ %.010.lcssa.i, %._crit_edge ], [ %i.dl, %bb.m ]
  %.1528 = phi ptr [ %.pre844, %._crit_edge ], [ %i.dj, %bb.m ] ; 10 uses
  %or.cond.i639 = icmp ugt i32 %.1533, 268435455
  %i.dn = select i1 %or.cond.i639, i32 -8, i32 %.pre-phi ; 2 uses
  %or.cond.i.i640 = icmp ult i32 %i.dn, 2147483135 ; 2 uses
  %i.do = icmp ne ptr %.1528, null
  %or.cond3.i.i641 = and i1 %i.do, %or.cond.i.i640 ; 2 uses
  %.014.i.i642 = select i1 %or.cond.i.i640, ptr %.1528, ptr null ; 2 uses
  %.013.i.i643 = select i1 %or.cond3.i.i641, i32 %i.dn, i32 0 ; 2 uses
  store ptr %.014.i.i642, ptr %4, align 8, !tbaa !30
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 %.013.i.i643, ptr %i.dp, align 4, !tbaa !59
  %i.dq = add nuw nsw i32 %.013.i.i643, 8         ; 8 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 16 uses
  store i32 %i.dq, ptr %i.dr, align 8, !tbaa !31
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 84 uses
  store i32 0, ptr %i.ds, align 8, !tbaa !34
  br i1 %or.cond3.i.i641, label %bb.o, label %.thread670

bb.o:                                             ; preds = %bb.n
  %i.dt = load i32, ptr %.1528, align 1, !tbaa !32
  %i.du = lshr i32 %i.dt, 2
  %i.dv = and i32 %i.du, 63                       ; 2 uses
  store i32 6, ptr %i.ds, align 8, !tbaa !34
  %.not600 = icmp eq i32 %i.dv, 2
  br i1 %.not600, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dw = load ptr, ptr %0, align 8, !tbaa !33
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.dw, i32 noundef 24, ptr noundef nonnull @.str.4, i32 noundef %i.dv) #7
  br label %.thread670

bb.q:                                             ; preds = %bb.o
  store i8 2, ptr %i.a, align 2, !tbaa !61
  %i.dx = load i32, ptr %.1528, align 1, !tbaa !32
  %i.dy = tail call i32 @llvm.bswap.i32(i32 %i.dx) ; 2 uses
  %i.dz = lshr i32 %i.dy, 15                      ; 2 uses
  %i.ea = tail call i32 @llvm.umin.i32(i32 %i.dq, i32 17) ; 4 uses
  store i32 %i.ea, ptr %i.ds, align 8, !tbaa !34
  %i.eb = trunc i32 %i.dz to i16
  %i.ec = and i16 %i.eb, 2047
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 %i.ec, ptr %i.ed, align 2, !tbaa !62
  %i.ee = lshr i32 %i.ea, 3
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %.1528, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 1, !tbaa !32
  %i.ei = tail call i32 @llvm.bswap.i32(i32 %i.eh)
  %i.ej = and i32 %i.ea, 1
  %i.ek = shl i32 %i.ei, %i.ej
  %i.el = lshr i32 %i.ek, 28
  %i.em = or disjoint i32 %i.ea, 4
  %i.en = tail call i32 @llvm.umin.i32(i32 %i.dq, i32 %i.em) ; 4 uses
  store i32 %i.en, ptr %i.ds, align 8, !tbaa !34
  %i.eo = trunc nuw nsw i32 %i.el to i8
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 %i.eo, ptr %i.ep, align 2, !tbaa !63
  %i.eq = lshr i32 %i.en, 3
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr %.1528, i64 %i.er
  %i.et = load i32, ptr %i.es, align 1, !tbaa !32
  %i.eu = tail call i32 @llvm.bswap.i32(i32 %i.et)
  %i.ev = and i32 %i.en, 7
  %i.ew = shl i32 %i.eu, %i.ev
  %i.ex = lshr i32 %i.ew, 28
  %i.ey = add nuw nsw i32 %i.en, 4                ; 2 uses
  %i.ez = tail call i32 @llvm.umin.i32(i32 %i.dq, i32 %i.ey) ; 4 uses
  store i32 %i.ez, ptr %i.ds, align 8, !tbaa !34
  %i.fa = trunc nuw nsw i32 %i.ex to i8
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 %i.fa, ptr %i.fb, align 1, !tbaa !64
  %i.fc = lshr i32 %i.ez, 3
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %.1528, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !32
  %i.fg = icmp ult i32 %i.ey, %i.dq
  %i.fh = zext i1 %i.fg to i32
  %spec.select.i = add nuw nsw i32 %i.ez, %i.fh   ; 5 uses
  %i.fi = zext i8 %i.ff to i32
  %i.fj = and i32 %i.ez, 7
  store i32 %spec.select.i, ptr %i.ds, align 8, !tbaa !34
  %i.fk = lshr exact i32 128, %i.fj
  %i.fl = and i32 %i.fk, %i.fi
  %.not601 = icmp eq i32 %i.fl, 0
  br i1 %.not601, label %bb.ah, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fm = lshr i32 %spec.select.i, 3
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %.1528, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !32
  %i.fq = icmp samesign ult i32 %spec.select.i, %i.dq
  %i.fr = zext i1 %i.fq to i32
  %spec.select.i645 = add nuw nsw i32 %spec.select.i, %i.fr ; 4 uses
  %i.fs = zext i8 %i.fp to i32
  %i.ft = and i32 %spec.select.i, 7
  %i.fu = shl nuw nsw i32 %i.fs, %i.ft
  store i32 %spec.select.i645, ptr %i.ds, align 8, !tbaa !34
  %i.fv = trunc i32 %i.fu to i8
  %i.fw = lshr i8 %i.fv, 7
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %i.fw, ptr %i.fx, align 2, !tbaa !65
  %i.fy = lshr i32 %spec.select.i645, 3
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %.1528, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 1, !tbaa !32
  %i.gc = tail call i32 @llvm.bswap.i32(i32 %i.gb)
  %i.gd = and i32 %spec.select.i645, 7
  %i.ge = shl i32 %i.gc, %i.gd                    ; 2 uses
  %i.gf = lshr i32 %i.ge, 30                      ; 3 uses
  %i.gg = add nuw nsw i32 %spec.select.i645, 2
  %i.gh = tail call i32 @llvm.umin.i32(i32 %i.dq, i32 %i.gg) ; 2 uses
  store i32 %i.gh, ptr %i.ds, align 8, !tbaa !34
  %i.gi = trunc nuw nsw i32 %i.gf to i8
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 %i.gi, ptr %i.gj, align 1, !tbaa !35
  %.not602 = icmp sgt i32 %i.ge, -1
  br i1 %.not602, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gk = load ptr, ptr %0, align 8, !tbaa !33
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.gk, i32 noundef 16, ptr noundef nonnull @.str.5, i32 noundef %i.gf) #7
  tail call void @ff_dovi_ctx_unref(ptr noundef nonnull %0) #7
  br label %.thread670

bb.t:                                             ; preds = %bb.r
  %trunc = trunc nuw i32 %i.gf to i1
  br i1 %trunc, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gl = call fastcc i32 @get_ue_golomb(ptr noundef %4) ; 2 uses
  %i.gm = trunc i32 %i.gl to i8
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i8 %i.gm, ptr %i.gn, align 2, !tbaa !36
  %i.go = and i32 %i.gl, 255                      ; 2 uses
  %i.gp = add nsw i32 %i.go, -33
  %or.cond624 = icmp ult i32 %i.gp, -20
  br i1 %or.cond624, label %bb.v, label %._crit_edge845

._crit_edge845:                                   ; preds = %bb.u
  %.pre846 = load i32, ptr %i.ds, align 8, !tbaa !34
  %.pre847 = load i32, ptr %i.dr, align 8, !tbaa !31
  %.pre848 = load ptr, ptr %4, align 8, !tbaa !30
  br label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.gq = load ptr, ptr %0, align 8, !tbaa !33
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.gq, i32 noundef 16, ptr noundef nonnull @.str.6, i32 noundef %i.go) #7
  tail call void @ff_dovi_ctx_unref(ptr noundef nonnull %0) #7
  br label %.thread670

bb.w:                                             ; preds = %bb.t
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i8 32, ptr %i.gr, align 2, !tbaa !36
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge845, %bb.w
  %i.gs = phi ptr [ %.pre848, %._crit_edge845 ], [ %.014.i.i642, %bb.w ] ; 3 uses
  %i.gt = phi i32 [ %.pre847, %._crit_edge845 ], [ %i.dq, %bb.w ] ; 3 uses
  %i.gu = phi i32 [ %.pre846, %._crit_edge845 ], [ %i.gh, %bb.w ] ; 3 uses
  %i.gv = lshr i32 %i.gu, 3
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gw
  %i.gy = load i32, ptr %i.gx, align 1, !tbaa !32
  %i.gz = tail call i32 @llvm.bswap.i32(i32 %i.gy)
  %i.ha = and i32 %i.gu, 7
  %i.hb = shl i32 %i.gz, %i.ha
  %i.hc = lshr i32 %i.hb, 30
  %i.hd = add i32 %i.gu, 2
  %i.he = tail call i32 @llvm.umin.i32(i32 %i.gt, i32 %i.hd) ; 5 uses
  store i32 %i.he, ptr %i.ds, align 8, !tbaa !34
  %i.hf = trunc nuw nsw i32 %i.hc to i8
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %i.hf, ptr %i.hg, align 1, !tbaa !66
  %i.hh = lshr i32 %i.he, 3
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.hi
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !32
  %i.hl = icmp slt i32 %i.he, %i.gt
  %i.hm = zext i1 %i.hl to i32
  %spec.select.i646 = add i32 %i.he, %i.hm        ; 4 uses
  %i.hn = zext i8 %i.hk to i32
  %i.ho = and i32 %i.he, 7
  %i.hp = shl nuw nsw i32 %i.hn, %i.ho
  store i32 %spec.select.i646, ptr %i.ds, align 8, !tbaa !34
  %i.hq = trunc i32 %i.hp to i8
  %i.hr = lshr i8 %i.hq, 7
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.hr, ptr %i.hs, align 2, !tbaa !67
  %i.ht = and i32 %i.dy, 58720256
  %i.hu = icmp eq i32 %i.ht, 0
  br i1 %i.hu, label %bb.y, label %bb.ag

bb.y:                                             ; preds = %bb.x
  %i.hv = lshr i32 %spec.select.i646, 3
  %i.hw = zext nneg i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.hw
  %i.hy = load i32, ptr %i.hx, align 1, !tbaa !32
  %i.hz = tail call i32 @llvm.bswap.i32(i32 %i.hy)
  %i.ia = and i32 %spec.select.i646, 7
  %i.ib = shl i32 %i.hz, %i.ia
  %i.ic = lshr i32 %i.ib, 23
end_hunk_0
