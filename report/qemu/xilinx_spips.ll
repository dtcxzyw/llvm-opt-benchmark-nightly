Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/xilinx_spips?download=true
inline.NumInlined: 123
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@xilinx_spips_flush_txfifo:bb.a
  %or.cond.not.i116 = icmp eq i32 %i.co, 1610612736
  br i1 %or.cond.not.i116, label %bb.s, label %num_effective_busses.exit117

bb.s:                                             ; preds = %bb.r
  %i.cp = load i8, ptr %i.g, align 1
  %i.cq = zext i8 %i.cp to i64
  br label %num_effective_busses.exit117

num_effective_busses.exit117:                     ; preds = %bb.r, %bb.s
  %i.cr = phi i64 [ %i.cq, %bb.s ], [ 1, %bb.r ]
  %i.cs = icmp samesign ult i64 %indvars.iv152, %i.cr
  br i1 %i.cs, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %num_effective_busses.exit117
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv152
  %i.cu = load i8, ptr %i.ct, align 1
  call void @fifo8_push(ptr noundef nonnull %i.l, i8 noundef zeroext %i.cu) #12
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1
  br label %bb.r, !llvm.loop !20

bb.u:                                             ; preds = %bb.o
  %i.cv = load i8, ptr %i.a, align 2
  call void @fifo8_push(ptr noundef nonnull %i.l, i8 noundef zeroext %i.cv) #12
  br label %.loopexit

.loopexit:                                        ; preds = %num_effective_busses.exit117, %.loopexit151, %bb.l, %bb.u, %bb.n
  %i.cw = load i8, ptr %i.n, align 2              ; 2 uses
  %.not101 = icmp eq i8 %i.cw, 0
  br i1 %.not101, label %bb.x, label %bb.v

bb.v:                                             ; preds = %.loopexit
  %i.cx = add i8 %i.cw, -1                        ; 2 uses
  store i8 %i.cx, ptr %i.n, align 2
  %.not102 = icmp eq i8 %i.cx, 0
  br i1 %.not102, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cy = load i8, ptr %i.o, align 1
  store i8 %i.cy, ptr %i.k, align 4
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %.loopexit
  %i.cz = load i8, ptr %i.e, align 2              ; 2 uses
  switch i8 %i.cz, label %bb.am [
    i8 -1, label %bb.y
    i8 -16, label %bb.aj
    i8 0, label %bb.an
    i8 -18, label %bb.an
  ]

bb.y:                                             ; preds = %bb.x
  br i1 %.not.i, label %xilinx_spips_num_dummy_bytes.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  switch i8 %.092, label %bb.ad [
    i8 3, label %xilinx_spips_num_dummy_bytes.exit
    i8 2, label %xilinx_spips_num_dummy_bytes.exit
    i8 -94, label %xilinx_spips_num_dummy_bytes.exit
    i8 50, label %xilinx_spips_num_dummy_bytes.exit
    i8 19, label %xilinx_spips_num_dummy_bytes.exit
    i8 18, label %xilinx_spips_num_dummy_bytes.exit
    i8 52, label %xilinx_spips_num_dummy_bytes.exit
    i8 11, label %bb.aa
    i8 12, label %bb.aa
    i8 59, label %bb.aa
    i8 60, label %bb.aa
    i8 107, label %bb.aa
    i8 108, label %bb.aa
    i8 -69, label %bb.ab
    i8 -68, label %bb.ab
    i8 -21, label %bb.ac
    i8 -20, label %bb.ac
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z
  br label %xilinx_spips_num_dummy_bytes.exit

bb.ab:                                            ; preds = %bb.z, %bb.z
  br label %xilinx_spips_num_dummy_bytes.exit

bb.ac:                                            ; preds = %bb.z, %bb.z
  br label %xilinx_spips_num_dummy_bytes.exit

bb.ad:                                            ; preds = %bb.z
  br label %xilinx_spips_num_dummy_bytes.exit

xilinx_spips_num_dummy_bytes.exit:                ; preds = %bb.y, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad
  %i.da = phi i1 [ true, %bb.ad ], [ true, %bb.y ], [ false, %bb.aa ], [ false, %bb.z ], [ false, %bb.ab ], [ false, %bb.ac ], [ false, %bb.z ], [ false, %bb.z ], [ false, %bb.z ], [ false, %bb.z ], [ false, %bb.z ], [ false, %bb.z ]
  %.0.i = phi i32 [ -1, %bb.ad ], [ -1, %bb.y ], [ 1, %bb.aa ], [ 0, %bb.z ], [ 2, %bb.ab ], [ 4, %bb.ac ], [ 0, %bb.z ], [ 0, %bb.z ], [ 0, %bb.z ], [ 0, %bb.z ], [ 0, %bb.z ], [ 0, %bb.z ] ; 3 uses
  store i32 %.0.i, ptr %i.p, align 16
  switch i8 %.092, label %bb.ae [
    i8 18, label %get_addr_length.exit
    i8 52, label %get_addr_length.exit
    i8 19, label %get_addr_length.exit
    i8 -20, label %get_addr_length.exit
    i8 12, label %get_addr_length.exit
    i8 60, label %get_addr_length.exit
    i8 108, label %get_addr_length.exit
    i8 -68, label %get_addr_length.exit
  ]

bb.ae:                                            ; preds = %xilinx_spips_num_dummy_bytes.exit
  %i.db = load i32, ptr %i.i, align 8
  %i.dc = and i32 %i.db, 32768
  %.not.i119 = icmp eq i32 %i.dc, 0
  %i.dd = select i1 %.not.i119, i8 3, i8 4
  br label %get_addr_length.exit

get_addr_length.exit:                             ; preds = %xilinx_spips_num_dummy_bytes.exit, %xilinx_spips_num_dummy_bytes.exit, %xilinx_spips_num_dummy_bytes.exit, %xilinx_spips_num_dummy_bytes.exit, %xilinx_spips_num_dummy_bytes.exit, %xilinx_spips_num_dummy_bytes.exit, %xilinx_spips_num_dummy_bytes.exit, %xilinx_spips_num_dummy_bytes.exit, %bb.ae
  %.0.i118 = phi i8 [ %i.dd, %bb.ae ], [ 4, %xilinx_spips_num_dummy_bytes.exit ], [ 4, %xilinx_spips_num_dummy_bytes.exit ], [ 4, %xilinx_spips_num_dummy_bytes.exit ], [ 4, %xilinx_spips_num_dummy_bytes.exit ], [ 4, %xilinx_spips_num_dummy_bytes.exit ], [ 4, %xilinx_spips_num_dummy_bytes.exit ], [ 4, %xilinx_spips_num_dummy_bytes.exit ], [ 4, %xilinx_spips_num_dummy_bytes.exit ] ; 3 uses
  %narrow = add nuw nsw i8 %.0.i118, -17
  %storemerge = select i1 %i.da, i8 -18, i8 %narrow
  store i8 %storemerge, ptr %i.e, align 2
  switch i8 %.092, label %bb.an [
    i8 -94, label %bb.af
    i8 59, label %bb.af
    i8 60, label %bb.af
    i8 50, label %bb.ag
    i8 52, label %bb.ag
    i8 107, label %bb.ag
    i8 108, label %bb.ag
    i8 -69, label %bb.ah
    i8 -68, label %bb.ah
    i8 -21, label %bb.ai
    i8 -20, label %bb.ai
  ]

bb.af:                                            ; preds = %get_addr_length.exit, %get_addr_length.exit, %get_addr_length.exit
  store i8 2, ptr %i.o, align 1
  %i.de = trunc nsw i32 %.0.i to i8
  %i.df = add nsw i8 %.0.i118, %i.de
  store i8 %i.df, ptr %i.n, align 2
  br label %bb.an

bb.ag:                                            ; preds = %get_addr_length.exit, %get_addr_length.exit, %get_addr_length.exit, %get_addr_length.exit
  store i8 4, ptr %i.o, align 1
  %i.dg = trunc nsw i32 %.0.i to i8
  %i.dh = add nsw i8 %.0.i118, %i.dg
  store i8 %i.dh, ptr %i.n, align 2
  br label %bb.an

bb.ah:                                            ; preds = %get_addr_length.exit, %get_addr_length.exit
  store i8 2, ptr %i.k, align 4
  br label %bb.an

bb.ai:                                            ; preds = %get_addr_length.exit, %get_addr_length.exit
  store i8 4, ptr %i.k, align 4
  br label %bb.an

bb.aj:                                            ; preds = %bb.x
  %i.di = load i32, ptr %i.p, align 16            ; 2 uses
  %i.dj = icmp slt i32 %i.di, 0
  br i1 %i.dj, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i8 -18, ptr %i.e, align 2
  br label %bb.an

bb.al:                                            ; preds = %bb.aj
  %i.dk = trunc i32 %i.di to i8
  store i8 %i.dk, ptr %i.e, align 2
  br label %bb.an

bb.am:                                            ; preds = %bb.x
  %i.dl = add i8 %i.cz, -1
  store i8 %i.dl, ptr %i.e, align 2
  br label %bb.an

bb.an:                                            ; preds = %bb.x, %bb.x, %bb.am, %bb.ai, %bb.ah, %bb.ag, %bb.af, %get_addr_length.exit, %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i16 0, ptr %i.a, align 2
  %i.dm = call zeroext i1 @fifo8_is_empty(ptr noundef nonnull %i.c) #12
  br i1 %i.dm, label %.thread121, label %bb.b
}

declare void @fifo8_push(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare ptr @object_dynamic_cast(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @stripe8(ptr noundef nonnull %0, i32 noundef range(i32 0, 256) %1, i1 noundef zeroext %2) unnamed_addr #10 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = icmp samesign ult i32 %1, 3
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.6, i32 noundef 440, ptr noundef nonnull @__PRETTY_FUNCTION__.stripe8) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  store i16 0, ptr %i.a, align 2, !annotation !10
  %i.c = zext nneg i32 %1 to i64                  ; 2 uses
  %i.d = call ptr @__memset_chk(ptr noundef nonnull %i.a, i32 noundef 0, i64 noundef range(i64 0, 513) %i.c, i64 noundef 2) #12 ; 0 uses
  %.not45 = icmp eq i32 %1, 0
  br i1 %.not45, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.c
  %.rhs.trunc = trunc nuw i32 %1 to i8
  br i1 %2, label %.preheader.us, label %.preheader

.preheader.us:                                    ; preds = %.preheader.lr.ph
  %.promoted.us = load i8, ptr %i.a, align 2
  %i.e = load i8, ptr %0, align 1
  %i.f = and i8 %i.e, -128
  %i.g = or i8 %i.f, %.promoted.us
  %i.h = icmp ne i32 %1, 1                        ; 2 uses
  %.sroa.7.2.us.us = select i1 %i.h, i32 7, i32 6 ; 2 uses
  %i.i = zext i1 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw nsw i32 1, %.sroa.7.2.us.us
  %i.n = and i32 %i.m, %i.l
  %.not.us.us.1 = icmp eq i32 %i.n, 0
  %i.o = select i1 %.not.us.us.1, i8 0, i8 64
  %i.p = or i8 %i.o, %i.g
  %.not12.us.us.1 = icmp eq i32 0, 0
  %i.q = sext i1 %.not12.us.us.1 to i32
  %.sroa.7.2.us.us.1 = add nsw i32 %.sroa.7.2.us.us, %i.q ; 2 uses
  %i.r = zext nneg i32 0 to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i32
  %i.v = shl nuw i32 1, %.sroa.7.2.us.us.1
  %i.w = and i32 %i.v, %i.u
  %.not.us.us.2 = icmp eq i32 %i.w, 0
  %i.x = select i1 %.not.us.us.2, i8 0, i8 32
  %i.y = or i8 %i.x, %i.p
  %i.z = add nuw nsw i32 0, 1                     ; 2 uses
  %i.aa = icmp eq i32 %i.z, %1                    ; 2 uses
  %i.ab = select i1 %i.aa, i32 0, i32 %i.z
  %.fr67 = freeze i32 %i.ab                       ; 2 uses
  %i.ac = sext i1 %i.aa to i32
  %.sroa.7.2.us.us.2 = add nsw i32 %.sroa.7.2.us.us.1, %i.ac ; 2 uses
  %i.ad = zext nneg i32 %.fr67 to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext i8 %i.af to i32
  %i.ah = shl nuw i32 1, %.sroa.7.2.us.us.2
  %i.ai = and i32 %i.ah, %i.ag
  %.not.us.us.3 = icmp eq i32 %i.ai, 0
  %i.aj = select i1 %.not.us.us.3, i8 0, i8 16
  %i.ak = or i8 %i.aj, %i.y
  %i.al = add i32 %.fr67, 1
  %i.am = urem i32 %i.al, %1                      ; 3 uses
  %.not12.us.us.3 = icmp eq i32 %i.am, 0
  %i.an = sext i1 %.not12.us.us.3 to i32
  %.sroa.7.2.us.us.3 = add nsw i32 %.sroa.7.2.us.us.2, %i.an ; 2 uses
  %i.ao = zext nneg i32 %i.am to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = zext i8 %i.aq to i32
  %i.as = shl nuw i32 1, %.sroa.7.2.us.us.3
  %i.at = and i32 %i.as, %i.ar
  %.not.us.us.4 = icmp eq i32 %i.at, 0
  %i.au = select i1 %.not.us.us.4, i8 0, i8 8
  %i.av = or i8 %i.au, %i.ak
  %i.aw = add nuw nsw i32 %i.am, 1                ; 2 uses
  %i.ax = icmp eq i32 %i.aw, %1                   ; 2 uses
  %i.ay = select i1 %i.ax, i32 0, i32 %i.aw
  %.fr70 = freeze i32 %i.ay                       ; 2 uses
  %i.az = sext i1 %i.ax to i32
  %.sroa.7.2.us.us.4 = add nsw i32 %.sroa.7.2.us.us.3, %i.az ; 2 uses
  %i.ba = zext nneg i32 %.fr70 to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = zext i8 %i.bc to i32
  %i.be = shl nuw i32 1, %.sroa.7.2.us.us.4
  %i.bf = and i32 %i.be, %i.bd
  %.not.us.us.5 = icmp eq i32 %i.bf, 0
  %i.bg = select i1 %.not.us.us.5, i8 0, i8 4
  %i.bh = or i8 %i.bg, %i.av
  %i.bi = add i32 %.fr70, 1
  %i.bj = urem i32 %i.bi, %1                      ; 3 uses
  %.not12.us.us.5 = icmp eq i32 %i.bj, 0
  %i.bk = sext i1 %.not12.us.us.5 to i32
  %.sroa.7.2.us.us.5 = add nsw i32 %.sroa.7.2.us.us.4, %i.bk ; 2 uses
  %i.bl = zext nneg i32 %i.bj to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = zext i8 %i.bn to i32
  %i.bp = shl nuw i32 1, %.sroa.7.2.us.us.5
  %i.bq = and i32 %i.bp, %i.bo
  %.not.us.us.6 = icmp eq i32 %i.bq, 0
  %i.br = select i1 %.not.us.us.6, i8 0, i8 2
  %i.bs = or i8 %i.br, %i.bh
  %i.bt = add nuw nsw i32 %i.bj, 1                ; 2 uses
  %i.bu = icmp eq i32 %i.bt, %1                   ; 2 uses
  %i.bv = select i1 %i.bu, i32 0, i32 %i.bt       ; 2 uses
  %i.bw = sext i1 %i.bu to i32
  %.sroa.7.2.us.us.6 = add nsw i32 %.sroa.7.2.us.us.5, %i.bw ; 2 uses
  %i.bx = zext nneg i32 %i.bv to i64
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = zext i8 %i.bz to i32
  %i.cb = lshr i32 %i.ca, %.sroa.7.2.us.us.6
  %i.cc = trunc nuw i32 %i.cb to i8
  %i.cd = and i8 %i.cc, 1
  %i.ce = or i8 %i.cd, %i.bs
  store i8 %i.ce, ptr %i.a, align 2
  %exitcond54.not = icmp eq i32 %1, 1
  br i1 %exitcond54.not, label %._crit_edge, label %.preheader.us.1

.preheader.us.1:                                  ; preds = %.preheader.us
  %i.cf = trunc nuw i32 %i.bv to i8
  %.lhs.trunc = add nuw nsw i8 %i.cf, 1
  %i.cg = urem i8 %.lhs.trunc, %.rhs.trunc        ; 3 uses
  %.not12.us.us.7 = icmp eq i8 %i.cg, 0
  %i.ch = sext i1 %.not12.us.us.7 to i32
  %.sroa.7.2.us.us.7 = add i32 %.sroa.7.2.us.us.6, %i.ch ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %.promoted.us.1 = load i8, ptr %i.ci, align 1
  %i.cj = zext nneg i8 %i.cg to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = zext i8 %i.cl to i32
  %i.cn = shl nuw i32 1, %.sroa.7.2.us.us.7
  %i.co = and i32 %i.cn, %i.cm
  %.not.us.us.178 = icmp eq i32 %i.co, 0
  %i.cp = select i1 %.not.us.us.178, i8 0, i8 -128
  %i.cq = or i8 %i.cp, %.promoted.us.1
  %narrow80 = add nuw nsw i8 %i.cg, 1
  %i.cr = zext nneg i8 %narrow80 to i32           ; 2 uses
  %i.cs = icmp eq i32 %1, %i.cr                   ; 2 uses
  %i.ct = select i1 %i.cs, i32 0, i32 %i.cr
  %.fr64.1 = freeze i32 %i.ct                     ; 2 uses
  %i.cu = sext i1 %i.cs to i32
  %.sroa.7.2.us.us.179 = add i32 %.sroa.7.2.us.us.7, %i.cu ; 2 uses
  %i.cv = zext nneg i32 %.fr64.1 to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1
  %i.cy = zext i8 %i.cx to i32
  %i.cz = shl nuw i32 1, %.sroa.7.2.us.us.179
  %i.da = and i32 %i.cz, %i.cy
  %.not.us.us.1.1 = icmp eq i32 %i.da, 0
  %i.db = select i1 %.not.us.us.1.1, i8 0, i8 64
  %i.dc = or i8 %i.db, %i.cq
  %i.dd = add i32 %.fr64.1, 1
  %i.de = urem i32 %i.dd, %1                      ; 3 uses
  %.not12.us.us.1.1 = icmp eq i32 %i.de, 0
  %i.df = sext i1 %.not12.us.us.1.1 to i32
  %.sroa.7.2.us.us.1.1 = add i32 %.sroa.7.2.us.us.179, %i.df ; 2 uses
  %i.dg = zext nneg i32 %i.de to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1
  %i.dj = zext i8 %i.di to i32
  %i.dk = shl nuw i32 1, %.sroa.7.2.us.us.1.1
  %i.dl = and i32 %i.dk, %i.dj
  %.not.us.us.2.1 = icmp eq i32 %i.dl, 0
  %i.dm = select i1 %.not.us.us.2.1, i8 0, i8 32
  %i.dn = or i8 %i.dm, %i.dc
  %i.do = add nuw nsw i32 %i.de, 1                ; 2 uses
  %i.dp = icmp eq i32 %i.do, %1                   ; 2 uses
  %i.dq = select i1 %i.dp, i32 0, i32 %i.do
  %.fr67.1 = freeze i32 %i.dq                     ; 2 uses
  %i.dr = sext i1 %i.dp to i32
  %.sroa.7.2.us.us.2.1 = add i32 %.sroa.7.2.us.us.1.1, %i.dr ; 2 uses
  %i.ds = zext nneg i32 %.fr67.1 to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1
  %i.dv = zext i8 %i.du to i32
  %i.dw = shl nuw i32 1, %.sroa.7.2.us.us.2.1
  %i.dx = and i32 %i.dw, %i.dv
  %.not.us.us.3.1 = icmp eq i32 %i.dx, 0
  %i.dy = select i1 %.not.us.us.3.1, i8 0, i8 16
  %i.dz = or i8 %i.dy, %i.dn
  %i.ea = add i32 %.fr67.1, 1
  %i.eb = urem i32 %i.ea, %1                      ; 3 uses
  %.not12.us.us.3.1 = icmp eq i32 %i.eb, 0
  %i.ec = sext i1 %.not12.us.us.3.1 to i32
  %.sroa.7.2.us.us.3.1 = add i32 %.sroa.7.2.us.us.2.1, %i.ec ; 2 uses
  %i.ed = zext nneg i32 %i.eb to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1
  %i.eg = zext i8 %i.ef to i32
  %i.eh = shl nuw i32 1, %.sroa.7.2.us.us.3.1
  %i.ei = and i32 %i.eh, %i.eg
  %.not.us.us.4.1 = icmp eq i32 %i.ei, 0
  %i.ej = select i1 %.not.us.us.4.1, i8 0, i8 8
  %i.ek = or i8 %i.ej, %i.dz
  %i.el = add nuw nsw i32 %i.eb, 1                ; 2 uses
  %i.em = icmp eq i32 %i.el, %1                   ; 2 uses
  %i.en = select i1 %i.em, i32 0, i32 %i.el
  %.fr70.1 = freeze i32 %i.en                     ; 2 uses
  %i.eo = sext i1 %i.em to i32
  %.sroa.7.2.us.us.4.1 = add i32 %.sroa.7.2.us.us.3.1, %i.eo ; 2 uses
  %i.ep = zext nneg i32 %.fr70.1 to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1
  %i.es = zext i8 %i.er to i32
  %i.et = shl nuw i32 1, %.sroa.7.2.us.us.4.1
  %i.eu = and i32 %i.et, %i.es
  %.not.us.us.5.1 = icmp eq i32 %i.eu, 0
  %i.ev = select i1 %.not.us.us.5.1, i8 0, i8 4
  %i.ew = or i8 %i.ev, %i.ek
  %i.ex = add i32 %.fr70.1, 1
  %i.ey = urem i32 %i.ex, %1                      ; 3 uses
  %.not12.us.us.5.1 = icmp eq i32 %i.ey, 0
  %i.ez = sext i1 %.not12.us.us.5.1 to i32
  %.sroa.7.2.us.us.5.1 = add i32 %.sroa.7.2.us.us.4.1, %i.ez ; 2 uses
  %i.fa = zext nneg i32 %i.ey to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1
  %i.fd = zext i8 %i.fc to i32
  %i.fe = shl nuw i32 1, %.sroa.7.2.us.us.5.1
  %i.ff = and i32 %i.fe, %i.fd
  %.not.us.us.6.1 = icmp eq i32 %i.ff, 0
  %i.fg = select i1 %.not.us.us.6.1, i8 0, i8 2
  %i.fh = or i8 %i.fg, %i.ew
  %i.fi = add nuw nsw i32 %i.ey, 1                ; 2 uses
  %i.fj = icmp eq i32 %i.fi, %1                   ; 2 uses
  %i.fk = select i1 %i.fj, i32 0, i32 %i.fi
  %i.fl = sext i1 %i.fj to i32
  %.sroa.7.2.us.us.6.1 = add i32 %.sroa.7.2.us.us.5.1, %i.fl
  %i.fm = zext nneg i32 %i.fk to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1
  %i.fp = zext i8 %i.fo to i32
  %i.fq = lshr i32 %i.fp, %.sroa.7.2.us.us.6.1
  %i.fr = trunc nuw i32 %i.fq to i8
  %i.fs = and i8 %i.fr, 1
  %i.ft = or i8 %i.fs, %i.fh
  store i8 %i.ft, ptr %i.ci, align 1
  br label %._crit_edge

.preheader:                                       ; preds = %.preheader.lr.ph
  %i.fu = load i8, ptr %0, align 1                ; 2 uses
  %i.fv = zext i8 %i.fu to i32                    ; 7 uses
  %i.fw = and i8 %i.fu, -128
  %i.fx = load i8, ptr %i.a, align 2
  %i.fy = or i8 %i.fw, %i.fx
  store i8 %i.fy, ptr %i.a, align 2
  %i.fz = icmp ne i32 %1, 1                       ; 2 uses
  %.sroa.7.2 = select i1 %i.fz, i32 7, i32 6      ; 2 uses
  %i.ga = and i32 %i.fv, 64
  %.not.1 = icmp eq i32 %i.ga, 0
  %i.gb = shl nuw nsw i32 1, %.sroa.7.2
  %i.gc = trunc nuw i32 %i.gb to i8
  %i.gd = select i1 %.not.1, i8 0, i8 %i.gc
  %i.ge = zext i1 %i.fz to i64
  %i.gf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ge ; 2 uses
  %i.gg = load i8, ptr %i.gf, align 1
  %i.gh = or i8 %i.gd, %i.gg
  store i8 %i.gh, ptr %i.gf, align 1
  %.not12.1 = icmp eq i32 0, 0
  %i.gi = sext i1 %.not12.1 to i32
  %.sroa.7.2.1 = add nsw i32 %.sroa.7.2, %i.gi    ; 2 uses
  %i.gj = and i32 %i.fv, 32
  %.not.2 = icmp eq i32 %i.gj, 0
  %i.gk = shl nuw i32 1, %.sroa.7.2.1
  %i.gl = trunc i32 %i.gk to i8
  %i.gm = select i1 %.not.2, i8 0, i8 %i.gl
  %i.gn = zext nneg i32 0 to i64
  %i.go = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gn ; 2 uses
  %i.gp = load i8, ptr %i.go, align 1
  %i.gq = or i8 %i.gm, %i.gp
  store i8 %i.gq, ptr %i.go, align 1
  %i.gr = add nuw nsw i32 0, 1                    ; 2 uses
  %i.gs = icmp eq i32 %i.gr, %1                   ; 2 uses
  %i.gt = select i1 %i.gs, i32 0, i32 %i.gr
  %.fr58 = freeze i32 %i.gt                       ; 2 uses
  %i.gu = sext i1 %i.gs to i32
  %.sroa.7.2.2 = add nsw i32 %.sroa.7.2.1, %i.gu  ; 2 uses
  %i.gv = and i32 %i.fv, 16
  %.not.3 = icmp eq i32 %i.gv, 0
  %i.gw = shl nuw i32 1, %.sroa.7.2.2
  %i.gx = trunc i32 %i.gw to i8
  %i.gy = select i1 %.not.3, i8 0, i8 %i.gx
  %i.gz = zext nneg i32 %.fr58 to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gz ; 2 uses
  %i.hb = load i8, ptr %i.ha, align 1
  %i.hc = or i8 %i.gy, %i.hb
  store i8 %i.hc, ptr %i.ha, align 1
  %i.hd = add i32 %.fr58, 1
  %i.he = urem i32 %i.hd, %1                      ; 3 uses
  %.not12.3 = icmp eq i32 %i.he, 0
  %i.hf = sext i1 %.not12.3 to i32
  %.sroa.7.2.3 = add nsw i32 %.sroa.7.2.2, %i.hf  ; 2 uses
  %i.hg = and i32 %i.fv, 8
  %.not.4 = icmp eq i32 %i.hg, 0
  %i.hh = shl nuw i32 1, %.sroa.7.2.3
  %i.hi = trunc i32 %i.hh to i8
  %i.hj = select i1 %.not.4, i8 0, i8 %i.hi
  %i.hk = zext nneg i32 %i.he to i64
  %i.hl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hk ; 2 uses
  %i.hm = load i8, ptr %i.hl, align 1
  %i.hn = or i8 %i.hj, %i.hm
  store i8 %i.hn, ptr %i.hl, align 1
  %i.ho = add nuw nsw i32 %i.he, 1                ; 2 uses
  %i.hp = icmp eq i32 %i.ho, %1                   ; 2 uses
  %i.hq = select i1 %i.hp, i32 0, i32 %i.ho
  %.fr61 = freeze i32 %i.hq                       ; 2 uses
  %i.hr = sext i1 %i.hp to i32
  %.sroa.7.2.4 = add nsw i32 %.sroa.7.2.3, %i.hr  ; 2 uses
  %i.hs = and i32 %i.fv, 4
  %.not.5 = icmp eq i32 %i.hs, 0
  %i.ht = shl nuw i32 1, %.sroa.7.2.4
  %i.hu = trunc i32 %i.ht to i8
  %i.hv = select i1 %.not.5, i8 0, i8 %i.hu
  %i.hw = zext nneg i32 %.fr61 to i64
  %i.hx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hw ; 2 uses
  %i.hy = load i8, ptr %i.hx, align 1
  %i.hz = or i8 %i.hv, %i.hy
  store i8 %i.hz, ptr %i.hx, align 1
  %i.ia = add i32 %.fr61, 1
  %i.ib = urem i32 %i.ia, %1                      ; 4 uses
  %.not12.5 = icmp eq i32 %i.ib, 0
  %i.ic = sext i1 %.not12.5 to i32
  %.sroa.7.2.5 = add nsw i32 %.sroa.7.2.4, %i.ic  ; 2 uses
  %i.id = and i32 %i.fv, 2
  %.not.6 = icmp eq i32 %i.id, 0
  %i.ie = shl nuw i32 1, %.sroa.7.2.5
  %i.if = trunc i32 %i.ie to i8
  %i.ig = select i1 %.not.6, i8 0, i8 %i.if
  %i.ih = zext nneg i32 %i.ib to i64
  %i.ii = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ih ; 2 uses
  %i.ij = load i8, ptr %i.ii, align 1
  %i.ik = or i8 %i.ig, %i.ij
  store i8 %i.ik, ptr %i.ii, align 1
  %i.il = add nuw nsw i32 %i.ib, 1                ; 2 uses
  %i.im = icmp eq i32 %i.il, %1                   ; 2 uses
  %i.in = select i1 %i.im, i32 0, i32 %i.il
  %i.io = sext i1 %i.im to i32
  %.sroa.7.2.6 = add nsw i32 %.sroa.7.2.5, %i.io  ; 2 uses
  %i.ip = and i32 %i.fv, 1
  %.not.7 = icmp eq i32 %i.ip, 0
  %i.iq = shl nuw i32 1, %.sroa.7.2.6
  %i.ir = trunc i32 %i.iq to i8
  %i.is = select i1 %.not.7, i8 0, i8 %i.ir
  %i.it = zext nneg i32 %i.in to i64
  %i.iu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.it ; 2 uses
  %i.iv = load i8, ptr %i.iu, align 1
  %i.iw = or i8 %i.is, %i.iv
  store i8 %i.iw, ptr %i.iu, align 1
  %exitcond.not = icmp eq i32 %1, 1
  br i1 %exitcond.not, label %._crit_edge, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader
  %3 = icmp eq i32 %i.ib, 0
  %.finite = select i1 %3, i8 0, i8 1             ; 3 uses
  %.not12.7 = icmp eq i8 %.finite, 0
  %i.ix = sext i1 %.not12.7 to i32
  %.sroa.7.2.7 = add i32 %.sroa.7.2.6, %i.ix      ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.iz = load i8, ptr %i.iy, align 1             ; 2 uses
  %i.ja = zext i8 %i.iz to i32                    ; 7 uses
  %i.jb = shl nuw i32 1, %.sroa.7.2.7
  %i.jc = trunc i32 %i.jb to i8
  %.not.inv.1 = icmp slt i8 %i.iz, 0
  %i.jd = select i1 %.not.inv.1, i8 %i.jc, i8 0
  %i.je = zext nneg i8 %.finite to i64
  %i.jf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.je ; 2 uses
  %i.jg = load i8, ptr %i.jf, align 1
  %i.jh = or i8 %i.jd, %i.jg
  store i8 %i.jh, ptr %i.jf, align 1
  %narrow = add nuw nsw i8 %.finite, 1
  %i.ji = zext nneg i8 %narrow to i32             ; 2 uses
  %i.jj = icmp eq i32 %1, %i.ji                   ; 2 uses
  %i.jk = select i1 %i.jj, i32 0, i32 %i.ji
  %.fr.1 = freeze i32 %i.jk                       ; 2 uses
  %i.jl = sext i1 %i.jj to i32
  %.sroa.7.2.177 = add i32 %.sroa.7.2.7, %i.jl    ; 2 uses
  %i.jm = and i32 %i.ja, 64
  %.not.1.1 = icmp eq i32 %i.jm, 0
  %i.jn = shl nuw i32 1, %.sroa.7.2.177
  %i.jo = trunc i32 %i.jn to i8
  %i.jp = select i1 %.not.1.1, i8 0, i8 %i.jo
  %i.jq = zext nneg i32 %.fr.1 to i64
  %i.jr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.jq ; 2 uses
  %i.js = load i8, ptr %i.jr, align 1
  %i.jt = or i8 %i.jp, %i.js
  store i8 %i.jt, ptr %i.jr, align 1
  %i.ju = add i32 %.fr.1, 1
  %i.jv = urem i32 %i.ju, %1                      ; 3 uses
  %.not12.1.1 = icmp eq i32 %i.jv, 0
  %i.jw = sext i1 %.not12.1.1 to i32
  %.sroa.7.2.1.1 = add i32 %.sroa.7.2.177, %i.jw  ; 2 uses
  %i.jx = and i32 %i.ja, 32
  %.not.2.1 = icmp eq i32 %i.jx, 0
  %i.jy = shl nuw i32 1, %.sroa.7.2.1.1
  %i.jz = trunc i32 %i.jy to i8
  %i.ka = select i1 %.not.2.1, i8 0, i8 %i.jz
  %i.kb = zext nneg i32 %i.jv to i64
  %i.kc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.kb ; 2 uses
  %i.kd = load i8, ptr %i.kc, align 1
  %i.ke = or i8 %i.ka, %i.kd
  store i8 %i.ke, ptr %i.kc, align 1
  %i.kf = add nuw nsw i32 %i.jv, 1                ; 2 uses
  %i.kg = icmp eq i32 %i.kf, %1                   ; 2 uses
  %i.kh = select i1 %i.kg, i32 0, i32 %i.kf
  %.fr58.1 = freeze i32 %i.kh                     ; 2 uses
  %i.ki = sext i1 %i.kg to i32
  %.sroa.7.2.2.1 = add i32 %.sroa.7.2.1.1, %i.ki  ; 2 uses
  %i.kj = and i32 %i.ja, 16
  %.not.3.1 = icmp eq i32 %i.kj, 0
  %i.kk = shl nuw i32 1, %.sroa.7.2.2.1
  %i.kl = trunc i32 %i.kk to i8
  %i.km = select i1 %.not.3.1, i8 0, i8 %i.kl
  %i.kn = zext nneg i32 %.fr58.1 to i64
  %i.ko = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.kn ; 2 uses
  %i.kp = load i8, ptr %i.ko, align 1
  %i.kq = or i8 %i.km, %i.kp
  store i8 %i.kq, ptr %i.ko, align 1
  %i.kr = add i32 %.fr58.1, 1
  %i.ks = urem i32 %i.kr, %1                      ; 3 uses
  %.not12.3.1 = icmp eq i32 %i.ks, 0
  %i.kt = sext i1 %.not12.3.1 to i32
  %.sroa.7.2.3.1 = add i32 %.sroa.7.2.2.1, %i.kt  ; 2 uses
  %i.ku = and i32 %i.ja, 8
  %.not.4.1 = icmp eq i32 %i.ku, 0
  %i.kv = shl nuw i32 1, %.sroa.7.2.3.1
  %i.kw = trunc i32 %i.kv to i8
  %i.kx = select i1 %.not.4.1, i8 0, i8 %i.kw
  %i.ky = zext nneg i32 %i.ks to i64
  %i.kz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ky ; 2 uses
  %i.la = load i8, ptr %i.kz, align 1
  %i.lb = or i8 %i.kx, %i.la
  store i8 %i.lb, ptr %i.kz, align 1
  %i.lc = add nuw nsw i32 %i.ks, 1                ; 2 uses
  %i.ld = icmp eq i32 %i.lc, %1                   ; 2 uses
  %i.le = select i1 %i.ld, i32 0, i32 %i.lc
  %.fr61.1 = freeze i32 %i.le                     ; 2 uses
  %i.lf = sext i1 %i.ld to i32
  %.sroa.7.2.4.1 = add i32 %.sroa.7.2.3.1, %i.lf  ; 2 uses
  %i.lg = and i32 %i.ja, 4
  %.not.5.1 = icmp eq i32 %i.lg, 0
  %i.lh = shl nuw i32 1, %.sroa.7.2.4.1
  %i.li = trunc i32 %i.lh to i8
  %i.lj = select i1 %.not.5.1, i8 0, i8 %i.li
  %i.lk = zext nneg i32 %.fr61.1 to i64
  %i.ll = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.lk ; 2 uses
  %i.lm = load i8, ptr %i.ll, align 1
  %i.ln = or i8 %i.lj, %i.lm
  store i8 %i.ln, ptr %i.ll, align 1
  %i.lo = add i32 %.fr61.1, 1
  %i.lp = urem i32 %i.lo, %1                      ; 3 uses
  %.not12.5.1 = icmp eq i32 %i.lp, 0
  %i.lq = sext i1 %.not12.5.1 to i32
  %.sroa.7.2.5.1 = add i32 %.sroa.7.2.4.1, %i.lq  ; 2 uses
  %i.lr = and i32 %i.ja, 2
  %.not.6.1 = icmp eq i32 %i.lr, 0
  %i.ls = shl nuw i32 1, %.sroa.7.2.5.1
  %i.lt = trunc i32 %i.ls to i8
  %i.lu = select i1 %.not.6.1, i8 0, i8 %i.lt
  %i.lv = zext nneg i32 %i.lp to i64
  %i.lw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.lv ; 2 uses
  %i.lx = load i8, ptr %i.lw, align 1
  %i.ly = or i8 %i.lu, %i.lx
  store i8 %i.ly, ptr %i.lw, align 1
  %i.lz = add nuw nsw i32 %i.lp, 1                ; 2 uses
  %i.ma = icmp eq i32 %i.lz, %1                   ; 2 uses
  %i.mb = select i1 %i.ma, i32 0, i32 %i.lz
  %i.mc = sext i1 %i.ma to i32
  %.sroa.7.2.6.1 = add i32 %.sroa.7.2.5.1, %i.mc
  %i.md = and i32 %i.ja, 1
  %.not.7.1 = icmp eq i32 %i.md, 0
  %i.me = shl nuw i32 1, %.sroa.7.2.6.1
  %i.mf = trunc i32 %i.me to i8
  %i.mg = select i1 %.not.7.1, i8 0, i8 %i.mf
  %i.mh = zext nneg i32 %i.mb to i64
  %i.mi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.mh ; 2 uses
  %i.mj = load i8, ptr %i.mi, align 1
  %i.mk = or i8 %i.mg, %i.mj
  store i8 %i.mk, ptr %i.mi, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader, %.preheader.1, %.preheader.us, %.preheader.us.1, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 2 %i.a, i64 noundef range(i64 0, 4294967296) %i.c, i1 noundef false) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

declare i32 @ssi_transfer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @xilinx_qspips_class_init(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE_CLASS) #12
  %i.b = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 140, ptr noundef nonnull @__func__.XILINX_SPIPS_CLASS) #12 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store ptr @xilinx_qspips_realize, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  store ptr @qspips_ops, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  store i64 256, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store i32 256, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 212
  store i32 256, ptr %i.g, align 4
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @xilinx_qspips_realize(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 140, ptr noundef nonnull @__func__.XILINX_SPIPS) #12 ; 6 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.5, i32 noundef 142, ptr noundef nonnull @__func__.XILINX_QSPIPS) #12
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #12
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1373
  store i8 2, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1372
  store i8 2, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1456
  store i8 4, ptr %i.f, align 16
  tail call void @xilinx_spips_realize(ptr noundef %0, ptr noundef %1)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1088 ; 2 uses
  tail call void @memory_region_init_io(ptr noundef nonnull %i.g, ptr noundef %i.a, ptr noundef nonnull @lqspi_ops, ptr noundef %i.a, ptr noundef nonnull @.str.38, i64 noundef 33554432) #12
  tail call void @sysbus_init_mmio(ptr noundef %i.c, ptr noundef nonnull %i.g) #12
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 2752
  store i64 -1, ptr %i.h, align 16
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @lqspi_read(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 %3, i64 %4) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.5, i32 noundef 142, ptr noundef nonnull @__func__.XILINX_QSPIPS) #12 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2752
  %i.c = load i64, ptr %i.b, align 16             ; 3 uses
  %.not25 = icmp ult i64 %1, %i.c
  %i.d = add i64 %i.c, 1020
  %.not1826 = icmp ugt i64 %1, %i.d
  %or.cond27 = or i1 %.not25, %.not1826
  br i1 %or.cond27, label %.lr.ph, label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = and i64 %1, -1024
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1624 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1373 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1628 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2752 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1432 ; 10 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1728
  br label %bb.b

tailrecurse._crit_edge:                           ; preds = %lqspi_load_cache.exit, %bb.a
  %.lcssa24 = phi ptr [ %i.a, %bb.a ], [ %i.br, %lqspi_load_cache.exit ]
  %.lcssa = phi i64 [ %i.c, %bb.a ], [ %i.bt, %lqspi_load_cache.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %.lcssa24, i64 1728
  %i.n = sub nuw i64 %1, %.lcssa
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4
  %i.q = zext i32 %i.p to i64
  store i64 %i.q, ptr %2, align 8
  ret i32 0

bb.b:                                             ; preds = %.lr.ph, %lqspi_load_cache.exit
  %i.r = load i32, ptr %i.f, align 8
  %i.s = and i32 %i.r, 1610612736
  %or.cond.not.i.i = icmp eq i32 %i.s, 1610612736
  br i1 %or.cond.not.i.i, label %bb.c, label %num_effective_busses.exit.i

bb.c:                                             ; preds = %bb.b
  %i.t = load i8, ptr %i.g, align 1
  %i.u = zext i8 %i.t to i64
end_hunk_0
