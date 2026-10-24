Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/pack?download=true
inline.NumInlined: 148
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@rb_ec_pack_ary:bb.a
; Function Attrs: nounwind sspstrong uwtable
define internal i64 @pack_pack(ptr nofree readnone captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 10 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 13 uses
  %i.d = alloca i64, align 8                      ; 27 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %i.j = alloca i8, align 1                       ; 4 uses
  %i.k = alloca i8, align 1                       ; 4 uses
  %i.l = alloca i8, align 1                       ; 4 uses
  %i.m = alloca i8, align 1                       ; 4 uses
  %i.n = alloca i8, align 1                       ; 4 uses
  %i.o = alloca [8 x i8], align 1                 ; 4 uses
  %i.p = alloca float, align 4                    ; 4 uses
  %4 = alloca %union.FLOAT_SWAPPER, align 4       ; 4 uses
  %5 = alloca %union.DOUBLE_SWAPPER, align 8      ; 4 uses
  %i.q = alloca double, align 8                   ; 4 uses
  %6 = alloca %union.FLOAT_SWAPPER, align 4       ; 4 uses
  %7 = alloca %union.DOUBLE_SWAPPER, align 8      ; 4 uses
  %i.r = alloca [8 x i8], align 1                 ; 4 uses
  %i.s = alloca ptr, align 8                      ; 4 uses
  store i64 %2, ptr %i.b, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.t = call i64 @rb_string_value(ptr noundef nonnull %i.b) #12 ; 0 uses
  %i.u = load i64, ptr %i.b, align 8, !tbaa !12
  call void @rb_must_asciicompat(i64 noundef %i.u) #12
  %i.v = load i64, ptr %i.b, align 8, !tbaa !12
  %i.w = inttoptr i64 %i.v to ptr                 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !14
  %i.y = and i64 %i.x, 8192
  %.not.i = icmp eq i64 %i.y, 0
  %i.z = getelementptr i8, ptr %i.w, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !15
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.ab = phi ptr [ %i.aa, %bb.b ], [ %i.z, %bb.a ] ; 2 uses
  store ptr %i.ab, ptr %i.c, align 8, !tbaa !18
  %i.ac = getelementptr i8, ptr %i.w, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !20
  %i.ae = getelementptr i8, ptr %i.ab, i64 %i.ad  ; 5 uses
  %i.af = icmp eq i64 %3, 4
  br i1 %i.af, label %bb.c, label %bb.d

bb.c:                                             ; preds = %RSTRING_PTR.exit
  %i.ag = call i64 @rb_str_buf_new(i64 noundef 0) #12
  br label %bb.f

bb.d:                                             ; preds = %RSTRING_PTR.exit
  %i.ah = icmp eq i64 %3, 0
  %i.ai = and i64 %3, 7
  %i.aj = icmp ne i64 %i.ai, 0
  %i.ak = or i1 %i.ah, %i.aj
  br i1 %i.ak, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.d
  %i.al = inttoptr i64 %3 to ptr
  %i.am = load i64, ptr %i.al, align 8, !tbaa !14
  %i.an = and i64 %i.am, 31
  %i.ao = icmp eq i64 %i.an, 5
  br i1 %i.ao, label %bb.e, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.d, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.ap = load i64, ptr @rb_eTypeError, align 8, !tbaa !12
  %i.aq = call ptr @rb_obj_classname(i64 noundef %3) #12
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ap, ptr noundef nonnull @.str.5, ptr noundef %i.aq) #13
  unreachable

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  call void @rb_str_modify(i64 noundef %3) #12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.0343 = phi i64 [ %i.ag, %bb.c ], [ %3, %bb.e ] ; 36 uses
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !18  ; 2 uses
  %i.as = icmp ult ptr %i.ar, %i.ae
  br i1 %i.as, label %.lr.ph714, label %.thread858

.lr.ph714:                                        ; preds = %bb.f
  %i.at = inttoptr i64 %1 to ptr                  ; 17 uses
  %i.au = getelementptr i8, ptr %i.at, i64 16     ; 29 uses
  %i.av = getelementptr i8, ptr %i.at, i64 32     ; 14 uses
  %i.aw = inttoptr i64 %.0343 to ptr              ; 4 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 16     ; 4 uses
  %i.ay = getelementptr i8, ptr %i.aw, i64 24     ; 4 uses
  %i.az = ptrtoint ptr %i.ae to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph714, %.loopexit
  %i.ba = phi ptr [ %i.ar, %.lr.ph714 ], [ %i.we, %.loopexit ] ; 2 uses
  %.0310712 = phi i32 [ 1, %.lr.ph714 ], [ %.2312, %.loopexit ] ; 7 uses
  %.0318711 = phi i64 [ 0, %.lr.ph714 ], [ %.13, %.loopexit ] ; 52 uses
  %.0338710 = phi i64 [ 0, %.lr.ph714 ], [ %.4342, %.loopexit ] ; 33 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i32 0, ptr %i.e, align 4, !tbaa !10
  %i.bb = load i64, ptr %i.b, align 8, !tbaa !12
  %i.bc = inttoptr i64 %i.bb to ptr               ; 3 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !14
  %i.be = and i64 %i.bd, 8192
  %.not.i385 = icmp eq i64 %i.be, 0
  %i.bf = getelementptr i8, ptr %i.bc, i64 24     ; 2 uses
  br i1 %.not.i385, label %RSTRING_END.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !15
  br label %RSTRING_END.exit

RSTRING_END.exit:                                 ; preds = %bb.g, %bb.h
  %i.bh = phi ptr [ %i.bg, %bb.h ], [ %i.bf, %bb.g ]
  %i.bi = getelementptr i8, ptr %i.bc, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !20
  %i.bk = getelementptr i8, ptr %i.bh, i64 %i.bj
  %.not358 = icmp eq ptr %i.bk, %i.ae
  br i1 %.not358, label %bb.j, label %bb.i

bb.i:                                             ; preds = %RSTRING_END.exit
  %i.bl = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !12
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bl, ptr noundef nonnull @.str.6) #13
  unreachable

bb.j:                                             ; preds = %RSTRING_END.exit
  %i.bm = getelementptr i8, ptr %i.ba, i64 1      ; 4 uses
  store ptr %i.bm, ptr %i.c, align 8, !tbaa !18
  %i.bn = load i8, ptr %i.ba, align 1, !tbaa !15  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store i32 0, ptr %i.f, align 4, !tbaa !10
  %i.bo = sext i8 %i.bn to i32                    ; 5 uses
  %i.bp = icmp ne i8 %i.bn, 32
  %i.bq = add nsw i32 %i.bo, -14
  %i.br = icmp ult i32 %i.bq, -5
  %narrow.i.not = select i1 %i.bp, i1 %i.br, i1 false
  br i1 %narrow.i.not, label %bb.k, label %.loopexit, !llvm.loop !23

bb.k:                                             ; preds = %bb.j
  %i.bs = icmp eq i8 %i.bn, 35
  br i1 %i.bs, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bt = ptrtoint ptr %i.bm to i64
  %i.bu = sub i64 %i.az, %i.bt
  %i.bv = call ptr @memchr(ptr noundef %i.bm, i32 noundef 10, i64 noundef %i.bu) #14 ; 2 uses
  %.not.i386 = icmp eq ptr %i.bv, null
  %i.bw = getelementptr i8, ptr %i.bv, i64 1
  %i.bx = select i1 %.not.i386, ptr %i.ae, ptr %i.bw
  store ptr %i.bx, ptr %i.c, align 8, !tbaa !18
  br label %.loopexit, !llvm.loop !23

bb.m:                                             ; preds = %bb.k
  %i.by = call fastcc ptr @pack_modifiers(ptr noundef %i.bm, i8 noundef signext %i.bn, ptr noundef %i.f, ptr noundef %i.e) ; 3 uses
  store ptr %i.by, ptr %i.c, align 8, !tbaa !18
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !15  ; 2 uses
  %i.ca = icmp eq i8 %i.bz, 42
  br i1 %i.ca, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  %memchr = call ptr @memchr(ptr nonnull dereferenceable(1) @.str.7, i32 %i.bo, i64 5)
  %.not362 = icmp eq ptr %memchr, null
  br i1 %.not362, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %memchr363 = call ptr @memchr(ptr nonnull dereferenceable(1) @.str.8, i32 %i.bo, i64 4)
  %.not364 = icmp eq ptr %memchr363, null
  br i1 %.not364, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.cb = load i64, ptr %i.at, align 8, !tbaa !14 ; 2 uses
  %i.cc = and i64 %i.cb, 8192
  %.not.i387 = icmp eq i64 %i.cc, 0
  br i1 %.not.i387, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cd = lshr i64 %i.cb, 15
  %i.ce = and i64 %i.cd, 127
  br label %rb_array_len.exit

bb.r:                                             ; preds = %bb.p
  %i.cf = load i64, ptr %i.au, align 8, !tbaa !15
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.q, %bb.r
  %.0.i388 = phi i64 [ %i.ce, %bb.q ], [ %i.cf, %bb.r ]
  %i.cg = sub i64 %.0.i388, %.0318711
  br label %bb.s

bb.s:                                             ; preds = %rb_array_len.exit, %bb.o, %bb.n
  %i.ch = phi i64 [ 0, %bb.n ], [ %i.cg, %rb_array_len.exit ], [ 1, %bb.o ]
  %i.ci = getelementptr i8, ptr %i.by, i64 1
  store ptr %i.ci, ptr %i.c, align 8, !tbaa !18
  br label %bb.x

bb.t:                                             ; preds = %bb.m
  %8 = add i8 %i.bz, -58
  %i.cj = icmp ult i8 %8, -10
  br i1 %i.cj, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ck = call ptr @rb_errno_ptr() #12
  store i32 0, ptr %i.ck, align 4, !tbaa !10
  %i.cl = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.cm = call i64 @ruby_strtoul(ptr noundef %i.cl, ptr noundef nonnull %i.c, i32 noundef 10) #12 ; 2 uses
  %i.cn = icmp slt i64 %i.cm, 0
  br i1 %i.cn, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.co = call ptr @rb_errno_ptr() #12
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !10
  %.not361 = icmp eq i32 %i.cp, 0
  br i1 %.not361, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cq = load i64, ptr @rb_eRangeError, align 8, !tbaa !12
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cq, ptr noundef nonnull @.str.9) #13
  unreachable

bb.x:                                             ; preds = %bb.t, %bb.v, %bb.s
  %.0324 = phi i64 [ %i.ch, %bb.s ], [ %i.cm, %bb.v ], [ 1, %bb.t ]
  %.0324.fr = freeze i64 %.0324                   ; 33 uses
  %i.cr = add nsw i32 %i.bo, -77                  ; 2 uses
  %i.cs = call i32 @llvm.fshl.i32(i32 %i.cr, i32 %i.cr, i32 29)
  switch i32 %i.cs, label %bb.z [
    i32 1, label %bb.y
    i32 4, label %bb.aa
    i32 0, label %bb.aa
    i32 5, label %bb.aa
  ]

bb.y:                                             ; preds = %bb.x
  %i.ct = icmp eq i32 %.0310712, 1
  %spec.store.select = select i1 %i.ct, i32 2, i32 %.0310712
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  br label %bb.aa

bb.aa:                                            ; preds = %bb.x, %bb.x, %bb.x, %bb.z, %bb.y
  %.1311 = phi i32 [ 0, %bb.z ], [ %spec.store.select, %bb.y ], [ %.0310712, %bb.x ], [ %.0310712, %bb.x ], [ %.0310712, %bb.x ] ; 31 uses
  switch i8 %i.bn, label %bb.ff [
    i8 65, label %bb.ab
    i8 97, label %bb.ab
    i8 90, label %bb.ab
    i8 66, label %bb.ab
    i8 98, label %bb.ab
    i8 72, label %bb.ab
    i8 104, label %bb.ab
    i8 99, label %bb.bu
    i8 67, label %bb.bu
    i8 115, label %bb.bo
    i8 83, label %bb.bo
    i8 105, label %bb.bp
    i8 73, label %bb.bp
    i8 108, label %bb.bq
    i8 76, label %bb.bq
    i8 113, label %bb.br
    i8 81, label %bb.br
    i8 106, label %bb.br
    i8 74, label %bb.br
    i8 110, label %bb.bs
    i8 78, label %bb.bt
    i8 118, label %bb.bo
    i8 86, label %bb.bp
    i8 102, label %bb.by
    i8 70, label %bb.by
    i8 101, label %.preheader
    i8 69, label %.preheader528
    i8 100, label %bb.cl
    i8 68, label %bb.cl
    i8 103, label %.preheader531
    i8 71, label %.preheader533
    i8 120, label %bb.cv
    i8 88, label %._crit_edge804
    i8 64, label %bb.da
    i8 37, label %bb.dc
    i8 85, label %.preheader535
    i8 117, label %bb.dj
    i8 109, label %bb.dj
    i8 77, label %bb.ds
    i8 80, label %bb.ek
    i8 112, label %bb.ep
    i8 119, label %.preheader539
  ]

._crit_edge804:                                   ; preds = %bb.aa
  %.pre805 = load i64, ptr %i.ax, align 8, !tbaa !20
  br label %bb.cx

.preheader539:                                    ; preds = %bb.aa
  %i.cu = icmp sgt i64 %.0324.fr, 0
  br i1 %i.cu, label %.lr.ph646.preheader, label %.loopexit

.lr.ph646.preheader:                              ; preds = %.preheader539
  %i.cv = add i64 %.0324.fr, %.0318711            ; 2 uses
  br label %.lr.ph646

.preheader535:                                    ; preds = %bb.aa
  %i.cw = icmp sgt i64 %.0324.fr, 0
  br i1 %i.cw, label %.lr.ph658.preheader, label %.loopexit

.lr.ph658.preheader:                              ; preds = %.preheader535
  %i.cx = add i64 %.0324.fr, %.0318711            ; 2 uses
  br label %.lr.ph658

.preheader533:                                    ; preds = %bb.aa
  %i.cy = icmp sgt i64 %.0324.fr, 0
  br i1 %i.cy, label %.lr.ph661.preheader, label %.loopexit

.lr.ph661.preheader:                              ; preds = %.preheader533
  %i.cz = add i64 %.0324.fr, %.0318711            ; 2 uses
  br label %.lr.ph661

.preheader531:                                    ; preds = %bb.aa
  %i.da = icmp sgt i64 %.0324.fr, 0
  br i1 %i.da, label %.lr.ph664.preheader, label %.loopexit

.lr.ph664.preheader:                              ; preds = %.preheader531
  %i.db = add i64 %.0324.fr, %.0318711            ; 2 uses
  br label %.lr.ph664

.preheader528:                                    ; preds = %bb.aa
  %i.dc = icmp sgt i64 %.0324.fr, 0
  br i1 %i.dc, label %.lr.ph671.preheader, label %.loopexit

.lr.ph671.preheader:                              ; preds = %.preheader528
  %i.dd = add i64 %.0324.fr, %.0318711            ; 2 uses
  br label %.lr.ph671

.preheader:                                       ; preds = %bb.aa
  %i.de = icmp sgt i64 %.0324.fr, 0
  br i1 %i.de, label %.lr.ph674.preheader, label %.loopexit

.lr.ph674.preheader:                              ; preds = %.preheader
  %i.df = add i64 %.0324.fr, %.0318711            ; 2 uses
  br label %.lr.ph674

bb.ab:                                            ; preds = %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa
  %i.dg = load i64, ptr %i.at, align 8, !tbaa !14 ; 2 uses
  %i.dh = and i64 %i.dg, 8192
  %.not.i389 = icmp eq i64 %i.dh, 0
  br i1 %.not.i389, label %rb_array_len.exit391, label %rb_array_len.exit391.thread

rb_array_len.exit391:                             ; preds = %bb.ab
  %i.di = load i64, ptr %i.au, align 8, !tbaa !15
  %i.dj = icmp slt i64 %.0318711, %i.di
  br i1 %i.dj, label %bb.ac, label %bb.ad

rb_array_len.exit391.thread:                      ; preds = %bb.ab
  %i.dk = lshr i64 %i.dg, 15
  %i.dl = and i64 %i.dk, 127
  %i.dm = icmp slt i64 %.0318711, %i.dl
  br i1 %i.dm, label %RARRAY_AREF.exit, label %bb.ad

bb.ac:                                            ; preds = %rb_array_len.exit391
  %i.dn = load ptr, ptr %i.av, align 8, !tbaa !15
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %rb_array_len.exit391.thread, %bb.ac
  %.0.i.i = phi ptr [ %i.dn, %bb.ac ], [ %i.au, %rb_array_len.exit391.thread ]
  %i.do = add nsw i64 %.0318711, 1                ; 12 uses
  %i.dp = getelementptr [8 x i8], ptr %.0.i.i, i64 %.0318711
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !12 ; 2 uses
  store i64 %i.dq, ptr %i.d, align 8, !tbaa !12
  %i.dr = icmp eq i64 %i.dq, 4
  br i1 %i.dr, label %bb.ag, label %bb.ae

bb.ad:                                            ; preds = %rb_array_len.exit391.thread, %rb_array_len.exit391
  %i.ds = load i64, ptr @rb_eArgError, align 8, !tbaa !12
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ds, ptr noundef nonnull @toofew) #13
  unreachable

bb.ae:                                            ; preds = %RARRAY_AREF.exit
  %i.dt = call i64 @rb_string_value(ptr noundef nonnull %i.d) #12 ; 0 uses
  %i.du = load i64, ptr %i.d, align 8, !tbaa !12
  %i.dv = inttoptr i64 %i.du to ptr               ; 3 uses
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !14
  %i.dx = and i64 %i.dw, 8192
  %.not.i392 = icmp eq i64 %i.dx, 0
  %i.dy = getelementptr i8, ptr %i.dv, i64 24     ; 2 uses
  br i1 %.not.i392, label %RSTRING_PTR.exit393, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !15
  br label %RSTRING_PTR.exit393

RSTRING_PTR.exit393:                              ; preds = %bb.ae, %bb.af
  %i.ea = phi ptr [ %i.dz, %bb.af ], [ %i.dy, %bb.ae ]
  %i.eb = getelementptr i8, ptr %i.dv, i64 16
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !20
  br label %bb.ag

bb.ag:                                            ; preds = %RARRAY_AREF.exit, %RSTRING_PTR.exit393
  %.0316 = phi i64 [ %i.ec, %RSTRING_PTR.exit393 ], [ 0, %RARRAY_AREF.exit ] ; 16 uses
  %.0313 = phi ptr [ %i.ea, %RSTRING_PTR.exit393 ], [ @.str.10, %RARRAY_AREF.exit ] ; 6 uses
  %i.ed = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.ee = getelementptr i8, ptr %i.ed, i64 -1
end_hunk_0
begin_hunk_1_@encodes:bb.a
  %i.cg = zext i8 %i.cf to i64
  %i.ch = shl nuw nsw i64 %i.cg, 4
  %i.ci = and i64 %i.ch, 48
  %i.cj = getelementptr i8, ptr %i.c, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 16, !tbaa !15
  %i.cl = getelementptr i8, ptr %i.ce, i64 1
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !15
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.f
  %.055.sink = phi i8 [ %.055, %bb.f ], [ %i.by, %bb.e ]
  %i.cm = getelementptr i8, ptr %i.a, i64 %.157.lcssa
  %i.cn = getelementptr i8, ptr %i.a, i64 %.157.lcssa
  %i.co = getelementptr i8, ptr %i.cn, i64 2
  store i8 %.055.sink, ptr %i.co, align 1, !tbaa !15
  %i.cp = add i64 %.157.lcssa, 4
  %i.cq = getelementptr i8, ptr %i.cm, i64 3
  store i8 %.055, ptr %i.cq, align 1, !tbaa !15
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %._crit_edge69
  %.4 = phi i64 [ %.157.lcssa, %._crit_edge69 ], [ %i.cp, %.sink.split ] ; 3 uses
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cr = add i64 %.4, 1
  %i.cs = getelementptr i8, ptr %i.a, i64 %.4
  store i8 10, ptr %i.cs, align 1, !tbaa !15
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.5 = phi i64 [ %i.cr, %bb.h ], [ %.4, %bb.g ]  ; 2 uses
  %i.ct = call i64 @rb_str_cat(i64 noundef %0, ptr noundef nonnull %i.a, i64 noundef %.5) #12 ; 0 uses
  %i.cu = icmp ugt i64 %.5, 4097
  br i1 %i.cu, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.19) #15
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

declare i64 @rb_obj_as_string(i64 noundef) local_unnamed_addr #2

declare ptr @rb_string_value_ptr(ptr noundef) local_unnamed_addr #2

declare i64 @rb_ary_new() local_unnamed_addr #2

declare i64 @rb_ary_push(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_str_new_static(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_absint_numwords(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @rb_str_new(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @unknown_directive(ptr noundef %0, i8 noundef signext %1, i64 noundef %2) unnamed_addr #6 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = sext i8 %1 to i32                        ; 2 uses
  %i.c = add nsw i32 %i.b, -127
  %i.d = icmp ult i32 %i.c, -95
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 %1, ptr %i.a, align 1, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 0, ptr %i.e, align 1, !tbaa !15
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = and i32 %i.b, 255
  %i.g = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef nonnull %i.a, i64 noundef 5, ptr noundef nonnull @.str.20, i32 noundef %i.f) #12 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = call i64 @rb_str_quote_unprintable(i64 noundef %2) #12
  %i.i = load i64, ptr @rb_eArgError, align 8, !tbaa !12
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.i, ptr noundef nonnull @.str.21, ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.h) #13
  unreachable
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @rb_usascii_encindex() local_unnamed_addr #7

declare void @rb_enc_set_index(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @rb_utf8_encindex() local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #9

declare i64 @rb_num2long(i64 noundef) local_unnamed_addr #2

declare i32 @ruby_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i64 @rb_str_quote_unprintable(i64 noundef) local_unnamed_addr #2

declare i64 @rb_ivar_set(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @rb_block_given_p() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @pack_unpack_internal(i64 noundef %0, i64 noundef %1, i32 noundef range(i32 0, 3) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 15 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca [3 x i8], align 1                 ; 6 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !12
  store i64 %1, ptr %i.b, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.g = call i64 @rb_string_value(ptr noundef nonnull %i.a) #12 ; 0 uses
  %i.h = call i64 @rb_string_value(ptr noundef nonnull %i.b) #12 ; 0 uses
  %i.i = load i64, ptr %i.b, align 8, !tbaa !12
  call void @rb_must_asciicompat(i64 noundef %i.i) #12
  %i.j = icmp slt i64 %3, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr @rb_eArgError, align 8, !tbaa !12
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.k, ptr noundef nonnull @.str.22) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.a, align 8, !tbaa !12
  %i.m = inttoptr i64 %i.l to ptr                 ; 3 uses
  %i.n = getelementptr i8, ptr %i.m, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !20   ; 2 uses
  %i.p = icmp sgt i64 %3, %i.o
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr @rb_eArgError, align 8, !tbaa !12
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.q, ptr noundef nonnull @.str.23) #13
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.r = load i64, ptr %i.m, align 8, !tbaa !14
  %i.s = and i64 %i.r, 8192
  %.not.i = icmp eq i64 %i.s, 0
  %i.t = getelementptr i8, ptr %i.m, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !15
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.e, %bb.f
  %i.v = phi ptr [ %i.u, %bb.f ], [ %i.t, %bb.e ] ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 %i.o     ; 32 uses
  %i.x = getelementptr i8, ptr %i.v, i64 %3
  %i.y = load i64, ptr %i.b, align 8, !tbaa !12
  %i.z = inttoptr i64 %i.y to ptr                 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !14
  %i.ab = and i64 %i.aa, 8192
  %.not.i1103 = icmp eq i64 %i.ab, 0
  %i.ac = getelementptr i8, ptr %i.z, i64 24      ; 2 uses
  br i1 %.not.i1103, label %RSTRING_PTR.exit1104, label %bb.g

bb.g:                                             ; preds = %RSTRING_PTR.exit
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !15
  br label %RSTRING_PTR.exit1104

RSTRING_PTR.exit1104:                             ; preds = %RSTRING_PTR.exit, %bb.g
  %i.ae = phi ptr [ %i.ad, %bb.g ], [ %i.ac, %RSTRING_PTR.exit ] ; 3 uses
  store ptr %i.ae, ptr %i.c, align 8, !tbaa !18
  %i.af = getelementptr i8, ptr %i.z, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !20
  %i.ah = getelementptr i8, ptr %i.ae, i64 %i.ag  ; 5 uses
  %i.ai = icmp eq i32 %2, 0                       ; 29 uses
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %RSTRING_PTR.exit1104
  %i.aj = call i64 @rb_ary_new() #12
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !18
  br label %bb.i

bb.i:                                             ; preds = %RSTRING_PTR.exit1104, %bb.h
  %i.ak = phi ptr [ %.pre, %bb.h ], [ %i.ae, %RSTRING_PTR.exit1104 ] ; 2 uses
  %i.al = phi i64 [ %i.aj, %bb.h ], [ 4, %RSTRING_PTR.exit1104 ] ; 31 uses
  %i.am = icmp ult ptr %i.ak, %i.ah
  br i1 %i.am, label %.lr.ph1676, label %.loopexit1350

.lr.ph1676:                                       ; preds = %bb.i
  %4 = ptrtoint ptr %i.ah to i64
  %i.an = ptrtoint ptr %i.w to i64                ; 25 uses
  %i.ao = icmp eq i32 %2, 1                       ; 21 uses
  %i.ap = inttoptr i64 %i.al to ptr               ; 8 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 16     ; 7 uses
  %.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph1676, %.thread1177
  %i.ar = phi ptr [ %i.ak, %.lr.ph1676 ], [ %i.aix, %.thread1177 ] ; 2 uses
  %.09021674 = phi i64 [ 0, %.lr.ph1676 ], [ %.7909, %.thread1177 ] ; 52 uses
  %.09101673 = phi ptr [ %i.x, %.lr.ph1676 ], [ %.47, %.thread1177 ] ; 93 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !10
  %i.as = getelementptr i8, ptr %i.ar, i64 1      ; 4 uses
  store ptr %i.as, ptr %i.c, align 8, !tbaa !18
  %i.at = load i8, ptr %i.ar, align 1, !tbaa !15  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i32 0, ptr %i.e, align 4, !tbaa !10
  switch i8 %i.at, label %bb.l [
    i8 32, label %.thread1177
    i8 13, label %.thread1177
    i8 12, label %.thread1177
    i8 11, label %.thread1177
    i8 10, label %.thread1177
    i8 9, label %.thread1177
    i8 35, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %4, %i.au
  %i.aw = call ptr @memchr(ptr noundef %i.as, i32 noundef 10, i64 noundef %i.av) #14 ; 2 uses
  %.not.i1105 = icmp eq ptr %i.aw, null
  %i.ax = getelementptr i8, ptr %i.aw, i64 1
  %i.ay = select i1 %.not.i1105, ptr %i.ah, ptr %i.ax
  store ptr %i.ay, ptr %i.c, align 8, !tbaa !18
  br label %.thread1177, !llvm.loop !52

bb.l:                                             ; preds = %bb.j
  %i.az = call fastcc ptr @pack_modifiers(ptr noundef %i.as, i8 noundef signext %i.at, ptr noundef %i.e, ptr noundef %i.d) ; 4 uses
  store ptr %i.az, ptr %i.c, align 8, !tbaa !18
  %.not1026 = icmp ult ptr %i.az, %i.ah
  br i1 %.not1026, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !15  ; 2 uses
  %i.bb = icmp eq i8 %i.ba, 42
  br i1 %i.bb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bc = ptrtoint ptr %.09101673 to i64
  %i.bd = sub i64 %i.an, %i.bc
  %i.be = getelementptr i8, ptr %i.az, i64 1
  store ptr %i.be, ptr %i.c, align 8, !tbaa !18
  br label %bb.t

bb.o:                                             ; preds = %bb.m
  %5 = add i8 %i.ba, -58
  %i.bf = icmp ult i8 %5, -10
  br i1 %i.bf, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = call ptr @rb_errno_ptr() #12
  store i32 0, ptr %i.bg, align 4, !tbaa !10
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.bi = call i64 @ruby_strtoul(ptr noundef %i.bh, ptr noundef nonnull %i.c, i32 noundef 10) #12 ; 2 uses
  %i.bj = icmp slt i64 %i.bi, 0
  br i1 %i.bj, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = call ptr @rb_errno_ptr() #12
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !10
  %.not1028 = icmp eq i32 %i.bl, 0
  br i1 %.not1028, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bm = load i64, ptr @rb_eRangeError, align 8, !tbaa !12
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bm, ptr noundef nonnull @.str.9) #13
  unreachable

bb.s:                                             ; preds = %bb.o
  %i.bn = icmp ne i8 %i.at, 64
  %i.bo = zext i1 %i.bn to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.l, %bb.n, %bb.q, %bb.s
  %.0876 = phi i64 [ %i.bo, %bb.s ], [ %i.bd, %bb.n ], [ %i.bi, %bb.q ], [ 1, %bb.l ] ; 41 uses
  %.not1047 = phi i1 [ true, %bb.s ], [ false, %bb.n ], [ true, %bb.q ], [ true, %bb.l ] ; 8 uses
  switch i8 %i.at, label %bb.jl [
    i8 37, label %bb.u
    i8 65, label %bb.v
    i8 90, label %bb.aa
    i8 97, label %bb.af
    i8 98, label %._crit_edge1877
    i8 66, label %._crit_edge1876
    i8 104, label %._crit_edge1875
    i8 72, label %._crit_edge1874
    i8 99, label %bb.bx
    i8 67, label %bb.bm
    i8 115, label %bb.bn
    i8 83, label %bb.bo
    i8 105, label %bb.bp
    i8 73, label %bb.bq
    i8 108, label %bb.br
    i8 76, label %bb.bs
    i8 113, label %bb.bt
    i8 81, label %bb.bu
    i8 106, label %bb.bt
    i8 74, label %bb.bu
    i8 110, label %bb.bv
    i8 78, label %bb.bw
    i8 118, label %bb.bo
    i8 86, label %bb.bq
    i8 102, label %bb.cg
    i8 70, label %bb.cg
    i8 101, label %bb.co
    i8 69, label %bb.cw
    i8 68, label %bb.de
    i8 100, label %bb.de
    i8 103, label %bb.dm
    i8 71, label %bb.du
    i8 85, label %bb.ec
    i8 117, label %bb.fa
    i8 109, label %bb.ga
    i8 77, label %bb.hh
    i8 64, label %bb.hu
    i8 88, label %bb.hy
    i8 120, label %bb.ic
    i8 80, label %bb.if
    i8 112, label %bb.it
    i8 119, label %.preheader1347
  ]

.preheader1347:                                   ; preds = %bb.t
  %i.bp = icmp slt i64 %.0876, 1
  %i.bq = icmp uge ptr %.09101673, %i.w
  %.not10321512 = select i1 %i.bp, i1 true, i1 %i.bq
  br i1 %.not10321512, label %.thread1177, label %.lr.ph

bb.u:                                             ; preds = %bb.t
  %i.br = load i64, ptr @rb_eArgError, align 8, !tbaa !12
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.br, ptr noundef nonnull @.str.13) #13
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bs = ptrtoint ptr %.09101673 to i64
  %i.bt = sub i64 %i.an, %i.bs
  %spec.select = call i64 @llvm.smin.i64(i64 %.0876, i64 %i.bt) ; 3 uses
  %i.bu = getelementptr i8, ptr %.09101673, i64 %spec.select ; 3 uses
  %.08521663 = getelementptr i8, ptr %i.bu, i64 -1 ; 2 uses
  %.not10681664 = icmp ult ptr %.08521663, %.09101673
  br i1 %.not10681664, label %._crit_edge1669, label %.lr.ph1668

.lr.ph1668:                                       ; preds = %bb.v, %bb.w
  %.08521666 = phi ptr [ %.0852, %bb.w ], [ %.08521663, %bb.v ] ; 2 uses
  %.28781665 = phi i64 [ %i.bw, %bb.w ], [ %spec.select, %bb.v ] ; 2 uses
  %i.bv = load i8, ptr %.08521666, align 1, !tbaa !15
  switch i8 %i.bv, label %._crit_edge1669 [
    i8 32, label %bb.w
    i8 0, label %bb.w
  ]

bb.w:                                             ; preds = %.lr.ph1668, %.lr.ph1668
  %i.bw = add i64 %.28781665, -1                  ; 2 uses
  %.0852 = getelementptr i8, ptr %.08521666, i64 -1 ; 2 uses
  %.not1068 = icmp ult ptr %.0852, %.09101673
  br i1 %.not1068, label %._crit_edge1669, label %.lr.ph1668, !llvm.loop !53

._crit_edge1669:                                  ; preds = %bb.w, %.lr.ph1668, %bb.v
  %.2878.lcssa = phi i64 [ %spec.select, %bb.v ], [ %.28781665, %.lr.ph1668 ], [ %i.bw, %bb.w ]
  %i.bx = call i64 @rb_str_new(ptr noundef %.09101673, i64 noundef %.2878.lcssa) #12 ; 3 uses
  br i1 %i.ao, label %bb.x, label %bb.y

bb.x:                                             ; preds = %._crit_edge1669
  %i.by = call i64 @rb_yield(i64 noundef %i.bx) #12 ; 0 uses
  br label %.thread1177

bb.y:                                             ; preds = %._crit_edge1669
  br i1 %i.ai, label %bb.z, label %.thread1319

bb.z:                                             ; preds = %bb.y
  %i.bz = call i64 @rb_ary_push(i64 noundef %i.al, i64 noundef %i.bx) #12 ; 0 uses
  br label %.thread1177

bb.aa:                                            ; preds = %bb.t
  %i.ca = ptrtoint ptr %.09101673 to i64          ; 3 uses
  %i.cb = sub i64 %i.an, %i.ca
  %spec.select1072 = call i64 @llvm.smin.i64(i64 %.0876, i64 %i.cb)
  %i.cc = getelementptr i8, ptr %.09101673, i64 %spec.select1072 ; 4 uses
  %i.cd = icmp ult ptr %.09101673, %i.cc
  br i1 %i.cd, label %.lr.ph1657, label %.critedge

.lr.ph1657:                                       ; preds = %bb.aa, %bb.ab
  %.08501655 = phi ptr [ %i.cf, %bb.ab ], [ %.09101673, %bb.aa ] ; 3 uses
  %i.ce = load i8, ptr %.08501655, align 1, !tbaa !15
  %.not1066 = icmp eq i8 %i.ce, 0
  br i1 %.not1066, label %.critedge.loopexit, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph1657
  %i.cf = getelementptr i8, ptr %.08501655, i64 1 ; 2 uses
  %exitcond1862.not = icmp eq ptr %i.cf, %i.cc
  br i1 %exitcond1862.not, label %.critedge.loopexit, label %.lr.ph1657, !llvm.loop !54

.critedge.loopexit:                               ; preds = %.lr.ph1657, %bb.ab
  %.0850.lcssa.ph = phi ptr [ %i.cc, %bb.ab ], [ %.08501655, %.lr.ph1657 ] ; 2 uses
  %.pre1871 = ptrtoint ptr %.0850.lcssa.ph to i64
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.aa
  %.pre-phi = phi i64 [ %.pre1871, %.critedge.loopexit ], [ %i.ca, %bb.aa ]
  %.0850.lcssa = phi ptr [ %.0850.lcssa.ph, %.critedge.loopexit ], [ %.09101673, %bb.aa ] ; 2 uses
  %i.cg = sub i64 %.pre-phi, %i.ca
  %i.ch = call i64 @rb_str_new(ptr noundef %.09101673, i64 noundef %i.cg) #12 ; 3 uses
  br i1 %i.ao, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.critedge
  %i.ci = call i64 @rb_yield(i64 noundef %i.ch) #12 ; 0 uses
  br label %.thread1189

bb.ad:                                            ; preds = %.critedge
  br i1 %i.ai, label %bb.ae, label %.thread1319

bb.ae:                                            ; preds = %bb.ad
  %i.cj = call i64 @rb_ary_push(i64 noundef %i.al, i64 noundef %i.ch) #12 ; 0 uses
  br label %.thread1189

.thread1189:                                      ; preds = %bb.ac, %bb.ae
  %i.ck = icmp ult ptr %.0850.lcssa, %i.w
  %spec.select10731184.idx = zext i1 %i.ck to i64
  %spec.select10731184 = getelementptr i8, ptr %.0850.lcssa, i64 %spec.select10731184.idx
  %i.cl = select i1 %.not1047, ptr %i.cc, ptr %spec.select10731184
  br label %.thread1177

bb.af:                                            ; preds = %bb.t
  %i.cm = ptrtoint ptr %.09101673 to i64
  %i.cn = sub i64 %i.an, %i.cm
  %spec.select1074 = call i64 @llvm.smin.i64(i64 %.0876, i64 %i.cn) ; 2 uses
  %i.co = call i64 @rb_str_new(ptr noundef %.09101673, i64 noundef %spec.select1074) #12 ; 3 uses
  br i1 %i.ao, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cp = call i64 @rb_yield(i64 noundef %i.co) #12 ; 0 uses
  br label %bb.aj

bb.ah:                                            ; preds = %bb.af
  br i1 %i.ai, label %bb.ai, label %.thread1319

bb.ai:                                            ; preds = %bb.ah
  %i.cq = call i64 @rb_ary_push(i64 noundef %i.al, i64 noundef %i.co) #12 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ag
  %i.cr = getelementptr i8, ptr %.09101673, i64 %spec.select1074
  br label %.thread1177

._crit_edge1877:                                  ; preds = %bb.t
  %i.cs = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.ct = getelementptr i8, ptr %i.cs, i64 -1
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !15
end_hunk_1
begin_hunk_2_@pack_unpack_internal:bb.a
  %i.agl = load i64, ptr @id_associated, align 8, !tbaa !12
  %i.agm = call i64 @rb_ivar_set(i64 noundef %i.agk, i64 noundef %i.agl, i64 noundef range(i64 1, 0) %.1903) #12 ; 0 uses
  br label %bb.ip

bb.ip:                                            ; preds = %bb.ig, %bb.io, %associated_pointer.exit
  %.2904 = phi i64 [ %.1903, %bb.io ], [ %.1903, %associated_pointer.exit ], [ %.09021674, %bb.ig ] ; 2 uses
  %.0802 = phi i64 [ %i.agk, %bb.io ], [ %i.afq, %associated_pointer.exit ], [ 4, %bb.ig ] ; 3 uses
  br i1 %i.ao, label %bb.iq, label %bb.ir

bb.iq:                                            ; preds = %bb.ip
  %i.agn = call i64 @rb_yield(i64 noundef %.0802) #12 ; 0 uses
  br label %.thread1177

bb.ir:                                            ; preds = %bb.ip
  br i1 %i.ai, label %bb.is, label %.thread1319

bb.is:                                            ; preds = %bb.ir
  %i.ago = call i64 @rb_ary_push(i64 noundef %i.al, i64 noundef %.0802) #12 ; 0 uses
  br label %.thread1177

bb.it:                                            ; preds = %bb.t
  %i.agp = ptrtoint ptr %.09101673 to i64
  %i.agq = sub i64 %i.an, %i.agp                  ; 2 uses
  %i.agr = lshr i64 %i.agq, 3
  %spec.select1099 = call i64 @llvm.smin.i64(i64 %.0876, i64 %i.agr) ; 2 uses
  %i.ags = icmp slt i64 %spec.select1099, 1
  %i.agt = icmp ult i64 %i.agq, 8
  %or.cond11021516 = or i1 %i.ags, %i.agt
  br i1 %or.cond11021516, label %.thread1177, label %.lr.ph1519

.lr.ph1519:                                       ; preds = %bb.it, %bb.je
  %.in = phi i64 [ %i.agu, %bb.je ], [ %spec.select1099, %bb.it ] ; 2 uses
  %.39051518 = phi i64 [ %.5907, %bb.je ], [ %.09021674, %bb.it ] ; 3 uses
  %.421517 = phi ptr [ %i.agx, %bb.je ], [ %.09101673, %bb.it ] ; 2 uses
  %i.agu = add nsw i64 %.in, -1
  %i.agv = load i64, ptr %.421517, align 1        ; 2 uses
  %i.agw = inttoptr i64 %i.agv to ptr
  %i.agx = getelementptr i8, ptr %.421517, i64 8  ; 3 uses
  %.not1033 = icmp eq i64 %i.agv, 0
  br i1 %.not1033, label %associated_pointer.exit1167, label %bb.iu

bb.iu:                                            ; preds = %.lr.ph1519
  %.not1034 = icmp eq i64 %.39051518, 0
  br i1 %.not1034, label %bb.iv, label %str_associated.exit

bb.iv:                                            ; preds = %bb.iu
  %i.agy = load i64, ptr %i.a, align 8, !tbaa !12
  %i.agz = load i64, ptr @id_associated, align 8, !tbaa !12
  %i.aha = call i64 @rb_ivar_lookup(i64 noundef %i.agy, i64 noundef %i.agz, i64 noundef 0) #12 ; 2 uses
  %.not.i1155 = icmp eq i64 %i.aha, 0
  br i1 %.not.i1155, label %bb.iw, label %str_associated.exit

bb.iw:                                            ; preds = %bb.iv
  %i.ahb = load i64, ptr @rb_eArgError, align 8, !tbaa !12
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ahb, ptr noundef nonnull @.str.31) #13
  unreachable

str_associated.exit:                              ; preds = %bb.iv, %bb.iu
  %.4906 = phi i64 [ %.39051518, %bb.iu ], [ %i.aha, %bb.iv ] ; 2 uses
  %i.ahc = inttoptr i64 %.4906 to ptr             ; 4 uses
  %i.ahd = load i64, ptr %i.ahc, align 8, !tbaa !14 ; 2 uses
  %i.ahe = and i64 %i.ahd, 8192
  %.not.i.i1156 = icmp eq i64 %i.ahe, 0
  br i1 %.not.i.i1156, label %bb.iy, label %bb.ix

bb.ix:                                            ; preds = %str_associated.exit
  %i.ahf = getelementptr i8, ptr %i.ahc, i64 16
  %i.ahg = lshr i64 %i.ahd, 15
  %i.ahh = and i64 %i.ahg, 127
  br label %rb_array_len.exit.i1157

bb.iy:                                            ; preds = %str_associated.exit
  %i.ahi = getelementptr i8, ptr %i.ahc, i64 32
  %i.ahj = load ptr, ptr %i.ahi, align 8, !tbaa !15
  %i.ahk = getelementptr i8, ptr %i.ahc, i64 16
  %i.ahl = load i64, ptr %i.ahk, align 8, !tbaa !15
  br label %rb_array_len.exit.i1157

rb_array_len.exit.i1157:                          ; preds = %bb.iy, %bb.ix
  %.0.i1419.i1158 = phi ptr [ %i.ahf, %bb.ix ], [ %i.ahj, %bb.iy ] ; 3 uses
  %.0.i16.i1159 = phi i64 [ %i.ahh, %bb.ix ], [ %i.ahl, %bb.iy ]
  %i.ahm = getelementptr [8 x i8], ptr %.0.i1419.i1158, i64 %.0.i16.i1159 ; 2 uses
  %i.ahn = icmp ult ptr %.0.i1419.i1158, %i.ahm
  br i1 %i.ahn, label %.lr.ph.i1161, label %._crit_edge.i1160

.lr.ph.i1161:                                     ; preds = %rb_array_len.exit.i1157, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i1164
  %.01225.i1162 = phi ptr [ %i.aic, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i1164 ], [ %.0.i1419.i1158, %rb_array_len.exit.i1157 ] ; 2 uses
  %i.aho = load i64, ptr %.01225.i1162, align 8, !tbaa !12 ; 4 uses
  %i.ahp = icmp eq i64 %i.aho, 0
  %i.ahq = and i64 %i.aho, 7
  %i.ahr = icmp ne i64 %i.ahq, 0
  %i.ahs = or i1 %i.ahp, %i.ahr
  br i1 %i.ahs, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i1164, label %rbimpl_RB_TYPE_P_fastpath.exit.i1163

rbimpl_RB_TYPE_P_fastpath.exit.i1163:             ; preds = %.lr.ph.i1161
  %i.aht = inttoptr i64 %i.aho to ptr             ; 2 uses
  %i.ahu = load i64, ptr %i.aht, align 8, !tbaa !14 ; 2 uses
  %i.ahv = and i64 %i.ahu, 31
  %i.ahw = icmp eq i64 %i.ahv, 5
  br i1 %i.ahw, label %bb.iz, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i1164

bb.iz:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i1163
  %i.ahx = and i64 %i.ahu, 8192
  %.not.i17.i1165 = icmp eq i64 %i.ahx, 0
  %i.ahy = getelementptr i8, ptr %i.aht, i64 24   ; 2 uses
  br i1 %.not.i17.i1165, label %RSTRING_PTR.exit.i1166, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.ahz = load ptr, ptr %i.ahy, align 8, !tbaa !15
  br label %RSTRING_PTR.exit.i1166

RSTRING_PTR.exit.i1166:                           ; preds = %bb.ja, %bb.iz
  %i.aia = phi ptr [ %i.ahz, %bb.ja ], [ %i.ahy, %bb.iz ]
  %i.aib = icmp eq ptr %i.aia, %i.agw
  br i1 %i.aib, label %associated_pointer.exit1167, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i1164

rbimpl_RB_TYPE_P_fastpath.exit.thread.i1164:      ; preds = %RSTRING_PTR.exit.i1166, %rbimpl_RB_TYPE_P_fastpath.exit.i1163, %.lr.ph.i1161
  %i.aic = getelementptr i8, ptr %.01225.i1162, i64 8 ; 2 uses
  %i.aid = icmp ult ptr %i.aic, %i.ahm
  br i1 %i.aid, label %.lr.ph.i1161, label %._crit_edge.i1160, !llvm.loop !77

._crit_edge.i1160:                                ; preds = %rb_array_len.exit.i1157, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i1164
  %i.aie = load i64, ptr @rb_eArgError, align 8, !tbaa !12
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aie, ptr noundef nonnull @.str.32) #13
  unreachable

associated_pointer.exit1167:                      ; preds = %RSTRING_PTR.exit.i1166, %.lr.ph1519
  %.5907 = phi i64 [ %.39051518, %.lr.ph1519 ], [ %.4906, %RSTRING_PTR.exit.i1166 ] ; 2 uses
  %.0801 = phi i64 [ 4, %.lr.ph1519 ], [ %i.aho, %RSTRING_PTR.exit.i1166 ] ; 3 uses
  br i1 %i.ao, label %bb.jb, label %bb.jc

bb.jb:                                            ; preds = %associated_pointer.exit1167
  %i.aif = call i64 @rb_yield(i64 noundef %.0801) #12 ; 0 uses
  br label %bb.je

bb.jc:                                            ; preds = %associated_pointer.exit1167
  br i1 %i.ai, label %bb.jd, label %.thread1319

bb.jd:                                            ; preds = %bb.jc
  %i.aig = call i64 @rb_ary_push(i64 noundef %i.al, i64 noundef %.0801) #12 ; 0 uses
  br label %bb.je

bb.je:                                            ; preds = %bb.jb, %bb.jd
  %i.aih = icmp slt i64 %.in, 2
  %i.aii = ptrtoint ptr %i.agx to i64
  %i.aij = sub i64 %i.an, %i.aii
  %i.aik = icmp ult i64 %i.aij, 8
  %or.cond1102 = select i1 %i.aih, i1 true, i1 %i.aik
  br i1 %or.cond1102, label %.thread1177, label %.lr.ph1519, !llvm.loop !78

.lr.ph:                                           ; preds = %.preheader1347, %bb.jk
  %.01515 = phi ptr [ %.1, %bb.jk ], [ %.09101673, %.preheader1347 ] ; 3 uses
  %.291514 = phi i64 [ %.30, %bb.jk ], [ %.0876, %.preheader1347 ] ; 2 uses
  %.431513 = phi ptr [ %i.aim, %bb.jk ], [ %.09101673, %.preheader1347 ] ; 2 uses
  %i.ail = load i8, ptr %.431513, align 1, !tbaa !15
  %.not1029 = icmp sgt i8 %i.ail, -1
  %i.aim = getelementptr i8, ptr %.431513, i64 1  ; 5 uses
  br i1 %.not1029, label %bb.jf, label %bb.jk

bb.jf:                                            ; preds = %.lr.ph
  %i.ain = ptrtoint ptr %i.aim to i64
  %i.aio = ptrtoint ptr %.01515 to i64
  %i.aip = sub i64 %i.ain, %i.aio
  %i.aiq = call i64 @rb_integer_unpack(ptr noundef %.01515, i64 noundef %i.aip, i64 noundef 1, i64 noundef 1, i32 noundef 17) #12 ; 3 uses
  br i1 %i.ao, label %bb.jg, label %bb.jh

bb.jg:                                            ; preds = %bb.jf
  %i.air = call i64 @rb_yield(i64 noundef %i.aiq) #12 ; 0 uses
  br label %bb.jj

bb.jh:                                            ; preds = %bb.jf
  br i1 %i.ai, label %bb.ji, label %.thread1319

bb.ji:                                            ; preds = %bb.jh
  %i.ais = call i64 @rb_ary_push(i64 noundef %i.al, i64 noundef %i.aiq) #12 ; 0 uses
  br label %bb.jj

bb.jj:                                            ; preds = %bb.ji, %bb.jg
  %i.ait = add nsw i64 %.291514, -1
  br label %bb.jk

bb.jk:                                            ; preds = %.lr.ph, %bb.jj
  %.30 = phi i64 [ %i.ait, %bb.jj ], [ %.291514, %.lr.ph ] ; 2 uses
  %.1 = phi ptr [ %i.aim, %bb.jj ], [ %.01515, %.lr.ph ]
  %i.aiu = icmp slt i64 %.30, 1
  %i.aiv = icmp uge ptr %i.aim, %i.w
  %.not1032 = select i1 %i.aiu, i1 true, i1 %i.aiv
  br i1 %.not1032, label %.thread1177, label %.lr.ph, !llvm.loop !79

bb.jl:                                            ; preds = %bb.t
  %i.aiw = load i64, ptr %i.b, align 8, !tbaa !12
  call fastcc void @unknown_directive(ptr noundef nonnull @.str.27, i8 noundef signext %i.at, i64 noundef %i.aiw) #16
  unreachable

.thread1319:                                      ; preds = %bb.ad, %bb.hs, %bb.y, %bb.ah, %bb.aq, %bb.ay, %bb.be, %bb.bk, %bb.fy, %bb.hf, %bb.ir, %bb.jh, %bb.jc, %bb.ex, %bb.dw, %bb.do, %bb.dg, %bb.cy, %bb.cq, %bb.ci, %bb.ca
  %.35976.ph = phi i64 [ %i.jg, %bb.ca ], [ %i.lx, %bb.cy ], [ %i.oo, %bb.dw ], [ %.0.i1135, %bb.ex ], [ %.0801, %bb.jc ], [ %i.aiq, %bb.jh ], [ %i.nr, %bb.do ], [ %i.mt, %bb.dg ], [ %i.lb, %bb.cq ], [ %i.ke, %bb.ci ], [ %i.bx, %bb.y ], [ %i.co, %bb.ah ], [ %i.cw, %bb.aq ], [ %i.eh, %bb.ay ], [ %i.fq, %bb.be ], [ %i.ch, %bb.ad ], [ %i.abj, %bb.hs ], [ %i.hd, %bb.bk ], [ %i.se, %bb.fy ], [ %i.vf, %bb.hf ], [ %.0802, %bb.ir ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %.loopexit1350

.thread1177:                                      ; preds = %bb.jk, %bb.je, %bb.ez, %bb.iq, %bb.is, %.preheader1347, %bb.it, %bb.ec, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.hr, %bb.ht, %bb.he, %bb.hg, %bb.fx, %bb.fz, %bb.bj, %bb.bl, %bb.bd, %bb.bf, %bb.ax, %bb.az, %bb.ap, %bb.ar, %bb.x, %bb.z, %bb.aj, %RSTRING_PTR.exit1150, %bb.ib, %bb.ie, %rb_array_len.exit, %._crit_edge1625, %rb_array_len.exit1117, %._crit_edge1620, %rb_array_len.exit1120, %._crit_edge1615, %rb_array_len.exit1123, %._crit_edge1610, %rb_array_len.exit1126, %._crit_edge1605, %rb_array_len.exit1129, %._crit_edge1600, %rb_array_len.exit1132, %._crit_edge1595, %bb.if, %.thread1189, %bb.k
  %.47 = phi ptr [ %.14924.lcssa, %rb_array_len.exit1120 ], [ %.14924.lcssa, %._crit_edge1615 ], [ %.09101673, %bb.j ], [ %.15925.lcssa, %rb_array_len.exit1123 ], [ %.15925.lcssa, %._crit_edge1610 ], [ %.16926.lcssa, %rb_array_len.exit1126 ], [ %.16926.lcssa, %._crit_edge1605 ], [ %.17927.lcssa, %rb_array_len.exit1129 ], [ %.17927.lcssa, %._crit_edge1600 ], [ %.18928.lcssa, %rb_array_len.exit1132 ], [ %.18928.lcssa, %._crit_edge1595 ], [ %.09101673, %bb.j ], [ %.9919.lcssa, %bb.bj ], [ %.20930.lcssa, %bb.fx ], [ %.37, %bb.he ], [ %i.aec, %RSTRING_PTR.exit1150 ], [ %i.aeq, %bb.ib ], [ %i.aev, %bb.ie ], [ %i.agx, %bb.je ], [ %.09101673, %bb.if ], [ %.41, %bb.hr ], [ %i.afb, %bb.iq ], [ %.09101673, %bb.k ], [ %.13923.lcssa, %._crit_edge1620 ], [ %i.cl, %.thread1189 ], [ %i.cr, %bb.aj ], [ %i.bu, %bb.x ], [ %.3913.lcssa, %bb.ap ], [ %.5915.lcssa, %bb.ax ], [ %.7917.lcssa, %bb.bd ], [ %.11921.lcssa, %rb_array_len.exit ], [ %.11921.lcssa, %._crit_edge1625 ], [ %.13923.lcssa, %rb_array_len.exit1117 ], [ %i.bu, %bb.z ], [ %.3913.lcssa, %bb.ar ], [ %.5915.lcssa, %bb.az ], [ %.7917.lcssa, %bb.bf ], [ %.9919.lcssa, %bb.bl ], [ %.20930.lcssa, %bb.fz ], [ %.37, %bb.hg ], [ %.41, %bb.ht ], [ %i.ru, %bb.ez ], [ %.09101673, %bb.j ], [ %.09101673, %bb.j ], [ %.09101673, %bb.j ], [ %.09101673, %bb.j ], [ %.09101673, %bb.ec ], [ %.09101673, %bb.it ], [ %.09101673, %.preheader1347 ], [ %i.afb, %bb.is ], [ %i.aim, %bb.jk ]
  %.7909 = phi i64 [ %.09021674, %rb_array_len.exit1120 ], [ %.09021674, %._crit_edge1615 ], [ %.09021674, %bb.j ], [ %.09021674, %rb_array_len.exit1123 ], [ %.09021674, %._crit_edge1610 ], [ %.09021674, %rb_array_len.exit1126 ], [ %.09021674, %._crit_edge1605 ], [ %.09021674, %rb_array_len.exit1129 ], [ %.09021674, %._crit_edge1600 ], [ %.09021674, %rb_array_len.exit1132 ], [ %.09021674, %._crit_edge1595 ], [ %.09021674, %bb.j ], [ %.09021674, %bb.bj ], [ %.09021674, %bb.fx ], [ %.09021674, %bb.he ], [ %.09021674, %RSTRING_PTR.exit1150 ], [ %.09021674, %bb.ib ], [ %.09021674, %bb.ie ], [ %.5907, %bb.je ], [ %.09021674, %bb.if ], [ %.09021674, %bb.hr ], [ %.2904, %bb.iq ], [ %.09021674, %bb.k ], [ %.09021674, %._crit_edge1620 ], [ %.09021674, %.thread1189 ], [ %.09021674, %bb.aj ], [ %.09021674, %bb.x ], [ %.09021674, %bb.ap ], [ %.09021674, %bb.ax ], [ %.09021674, %bb.bd ], [ %.09021674, %rb_array_len.exit ], [ %.09021674, %._crit_edge1625 ], [ %.09021674, %rb_array_len.exit1117 ], [ %.09021674, %bb.z ], [ %.09021674, %bb.ar ], [ %.09021674, %bb.az ], [ %.09021674, %bb.bf ], [ %.09021674, %bb.bl ], [ %.09021674, %bb.fz ], [ %.09021674, %bb.hg ], [ %.09021674, %bb.ht ], [ %.09021674, %bb.ez ], [ %.09021674, %bb.j ], [ %.09021674, %bb.j ], [ %.09021674, %bb.j ], [ %.09021674, %bb.j ], [ %.09021674, %bb.ec ], [ %.09021674, %bb.it ], [ %.09021674, %.preheader1347 ], [ %.2904, %bb.is ], [ %.09021674, %bb.jk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  %i.aix = load ptr, ptr %i.c, align 8, !tbaa !18 ; 2 uses
  %i.aiy = icmp ult ptr %i.aix, %i.ah
  br i1 %i.aiy, label %bb.j, label %.loopexit1350

.loopexit1350:                                    ; preds = %.thread1177, %bb.i, %.thread1319
  %.36977 = phi i64 [ %.35976.ph, %.thread1319 ], [ %i.al, %bb.i ], [ %i.al, %.thread1177 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  ret i64 %.36977
}

declare i64 @rb_yield(i64 noundef) local_unnamed_addr #2

declare i64 @rb_usascii_str_new(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_integer_unpack(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @rb_ary_store(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_float_new(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @rb_ascii8bit_encindex() local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i64 1, 0) i64 @str_associated(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @id_associated, align 8, !tbaa !12
  %i.b = tail call i64 @rb_ivar_lookup(i64 noundef %0, i64 noundef %i.a, i64 noundef 0) #12 ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @rb_eArgError, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.c, ptr noundef nonnull @.str.31) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  ret i64 %i.b
}

declare i64 @rb_uint2big(i64 noundef) local_unnamed_addr #2

declare i64 @rb_ivar_lookup(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"RBasic", !11, i64 0, !11, i64 8}
!14 = !{!13, !11, i64 0}
!15 = !{!8, !8, i64 0}
!16 = !{!"any pointer", !8, i64 0}
!17 = !{!"p1 omnipotent char", !16, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"RString", !13, i64 0, !11, i64 16, !8, i64 24}
!20 = !{!19, !11, i64 16}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{ptr @rb_str_new, ptr @rb_str_new_static}
!23 = distinct !{!23, !21}
!24 = distinct !{!24, !21}
!25 = distinct !{!25, !21}
!26 = distinct !{!26, !21}
!27 = distinct !{!27, !21}
!28 = distinct !{!28, !21}
!29 = distinct !{!29, !21}
!30 = distinct !{!30, !21}
!31 = distinct !{!31, !21}
!32 = distinct !{!32, !21}
!33 = distinct !{!33, !21}
!34 = distinct !{!34, !21}
!35 = distinct !{!35, !21}
!36 = distinct !{!36, !21}
!37 = distinct !{!37, !21}
!38 = distinct !{!38, !21}
!39 = distinct !{!39, !21, !47, !48}
!40 = distinct !{!40, !21, !47, !48}
!41 = distinct !{!41, !21, !48, !47}
!42 = distinct !{!42, !21}
!43 = !{!"float", !8, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!"double", !8, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!"llvm.loop.isvectorized", i32 1}
!48 = !{!"llvm.loop.unroll.runtime.disable"}
!49 = !{!"branch_weights", i32 4, i32 28}
!50 = distinct !{!50, !21}
!51 = distinct !{!51, !21}
!52 = distinct !{!52, !21}
!53 = distinct !{!53, !21}
!54 = distinct !{!54, !21}
!55 = distinct !{ptr @rb_usascii_str_new, null}
!56 = distinct !{!56, !21}
!57 = distinct !{!57, !21}
!58 = distinct !{!58, !21}
!59 = distinct !{!59, !21}
!60 = distinct !{!60, !21}
!61 = distinct !{!61, !21}
!62 = distinct !{!62, !21}
!63 = distinct !{!63, !21}
!64 = distinct !{!64, !21}
!65 = distinct !{!65, !21}
!66 = distinct !{!66, !21}
!67 = distinct !{!67, !21}
!68 = distinct !{!68, !21}
!69 = distinct !{!69, !21}
!70 = distinct !{!70, !21}
!71 = distinct !{!71, !21}
!72 = distinct !{!72, !21}
!73 = distinct !{!73, !21}
!74 = distinct !{!74, !21}
!75 = distinct !{!75, !21}
!76 = distinct !{!76, !21}
!77 = distinct !{!77, !21}
!78 = distinct !{!78, !21}
!79 = distinct !{!79, !21}
end_hunk_2
