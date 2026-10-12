Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/argon2-fill-block-avx2?download=true
inline.NumInlined: 7
inline.NumDeleted: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.block_ = type { [128 x i64] }

; Function Attrs: nofree norecurse nosync nounwind ssp memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @argon2_fill_segment_avx2(ptr nofree noundef readonly captures(address_is_null) %0, i64 %1, i64 %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x <4 x i64>], align 32        ; 6 uses
  %3 = alloca %struct.block_, align 8             ; 6 uses
  %4 = alloca %struct.block_, align 8             ; 11 uses
  %5 = alloca %struct.block_, align 8             ; 5 uses
  %i.b = alloca [32 x <4 x i64>], align 32        ; 4 uses
  %i.c = alloca [32 x <4 x i64>], align 32        ; 4 uses
  %i.d = alloca [32 x <4 x i64>], align 32        ; 10 uses
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32  ; 2 uses
  %.sroa.7.0.extract.shift = lshr i64 %1, 32      ; 4 uses
  %.sroa.7.0.extract.trunc = trunc nuw i64 %.sroa.7.0.extract.shift to i32
  %.sroa.11.8.extract.trunc = trunc i64 %2 to i8  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %i.e = icmp eq ptr %0, null
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 44
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.i = getelementptr i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ne i32 %.sroa.0.0.extract.trunc, 0
  %i.l = icmp ugt i8 %.sroa.11.8.extract.trunc, 1
  %or.cond = select i1 %i.k, i1 true, i1 %i.l
  %i.m = getelementptr i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  br i1 %or.cond, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 28
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %bb.h

bb.d:                                             ; preds = %.thread, %bb.c
  %i.o = phi ptr [ %i.j, %.thread ], [ %i.n, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %3, i8 noundef 0, i64 noundef 1024, i1 noundef false) #5
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(968) %i.p, i8 noundef 0, i64 noundef 968, i1 noundef false) #5
  %i.q = and i64 %1, 4294967295
  store i64 %i.q, ptr %4, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.sroa.7.0.extract.shift, ptr %i.r, align 8
  %i.s = and i64 %2, 255
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.s, ptr %i.t, align 8
  %i.u = getelementptr i8, ptr %0, i64 24
  %i.v = load i32, ptr %i.u, align 8
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.w, ptr %i.x, align 8
  %i.y = getelementptr i8, ptr %0, i64 16
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %i.aa, ptr %i.ab, align 8
  %i.ac = zext i32 %i.g to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 %i.ac, ptr %i.ad, align 8
  %i.ae = getelementptr i8, ptr %0, i64 28        ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %generate_addresses.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 48
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 3 uses
  %i.ah = phi i64 [ 0, %.lr.ph.i ], [ %i.al, %bb.g ] ; 2 uses
  %i.ai = and i64 %indvars.iv.i, 127              ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(1024) %i.b, i8 noundef 0, i64 noundef 1024, i1 noundef false) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(1024) %i.c, i8 noundef 0, i64 noundef 1024, i1 noundef false) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %3, i8 noundef 0, i64 noundef 1024, i1 noundef false) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %5, i8 noundef 0, i64 noundef 1024, i1 noundef false) #5
  %i.ak = add i64 %i.ah, 1                        ; 2 uses
  store i64 %i.ak, ptr %i.ag, align 8
  call fastcc void @fill_block_with_xor(ptr noundef %i.b, ptr noundef nonnull %4, ptr noundef nonnull %5)
  call fastcc void @fill_block_with_xor(ptr noundef %i.c, ptr noundef nonnull %5, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.al = phi i64 [ %i.ak, %bb.f ], [ %i.ah, %bb.e ]
  %i.am = getelementptr [8 x i8], ptr %3, i64 %i.ai
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv.i
  store i64 %i.an, ptr %i.ao, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ap = load i32, ptr %i.ae, align 4            ; 2 uses
  %i.aq = zext i32 %i.ap to i64
  %i.ar = icmp samesign ult i64 %indvars.iv.next.i, %i.aq
  br i1 %i.ar, label %bb.e, label %generate_addresses.exit, !llvm.loop !5

generate_addresses.exit:                          ; preds = %bb.g, %bb.d
  %i.as = phi i32 [ 0, %bb.d ], [ %i.ap, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %generate_addresses.exit
  %i.at = phi i32 [ %i.as, %generate_addresses.exit ], [ %.pre, %._crit_edge ] ; 3 uses
  %i.au = phi ptr [ %i.o, %generate_addresses.exit ], [ %i.n, %._crit_edge ]
  %.not89 = phi i1 [ false, %generate_addresses.exit ], [ true, %._crit_edge ]
  %i.av = icmp eq i32 %.sroa.0.0.extract.trunc, 0 ; 3 uses
  %i.aw = icmp eq i8 %.sroa.11.8.extract.trunc, 0 ; 2 uses
  %or.cond7 = select i1 %i.av, i1 %i.aw, i1 false ; 2 uses
  %spec.select64 = select i1 %or.cond7, i32 2, i32 0 ; 3 uses
  %i.ax = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8            ; 3 uses
  %i.az = mul i32 %i.ay, %.sroa.7.0.extract.trunc
  %i.ba = trunc i64 %2 to i32
  %i.bb = and i32 %i.ba, 255                      ; 3 uses
  %i.bc = getelementptr i8, ptr %0, i64 28
  %i.bd = mul i32 %i.at, %i.bb
  %i.be = add i32 %i.az, %spec.select64
  %i.bf = add i32 %i.be, %i.bd                    ; 3 uses
  %i.bg = urem i32 %i.bf, %i.ay
  %i.bh = icmp eq i32 %i.bg, 0
  %i.bi = add i32 %i.ay, -1
  %.059.in = select i1 %i.bh, i32 %i.bi, i32 -1
  %.059 = add i32 %.059.in, %i.bf                 ; 2 uses
  %i.bj = load ptr, ptr %0, align 8
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = zext i32 %.059 to i64
  %i.bn = getelementptr [1024 x i8], ptr %i.bl, i64 %i.bm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(1024) %i.d, ptr noundef nonnull align 1 dereferenceable(1024) %i.bn, i64 noundef 1024, i1 noundef false) #5
  %i.bo = icmp ult i32 %spec.select64, %i.at
  br i1 %i.bo, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.bp = getelementptr i8, ptr %0, i64 36
  %i.bq = icmp eq i8 %.sroa.11.8.extract.trunc, 3
  %i.br = add nuw nsw i32 %i.bb, 1
  %i.bs = zext nneg i32 %spec.select64 to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.z
  %indvars.iv = phi i64 [ %i.bs, %.lr.ph ], [ %indvars.iv.next, %bb.z ] ; 7 uses
  %i.bt = phi i32 [ %i.at, %.lr.ph ], [ %i.ts, %bb.z ] ; 4 uses
  %.05892 = phi i32 [ %i.bf, %.lr.ph ], [ %i.tq, %bb.z ] ; 4 uses
  %.191 = phi i32 [ %.059, %.lr.ph ], [ %i.tr, %bb.z ]
  %i.bu = load i32, ptr %i.ax, align 8            ; 3 uses
  %i.bv = urem i32 %.05892, %i.bu
  %i.bw = icmp eq i32 %i.bv, 1
  %i.bx = add i32 %.05892, -1
  %spec.select65 = select i1 %i.bw, i32 %i.bx, i32 %.191 ; 2 uses
  br i1 %.not89, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.by = getelementptr [8 x i8], ptr %i.au, i64 %indvars.iv
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bz = load ptr, ptr %0, align 8
  %i.ca = getelementptr i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = zext i32 %spec.select65 to i64
  %i.cd = getelementptr [1024 x i8], ptr %i.cb, i64 %i.cc
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.061.in = phi ptr [ %i.by, %bb.j ], [ %i.cd, %bb.k ]
  %.061 = load i64, ptr %.061.in, align 8         ; 2 uses
  %i.ce = lshr i64 %.061, 32
  %i.cf = load i32, ptr %i.bp, align 4
  %.lhs.trunc = trunc nuw i64 %i.ce to i32
  %i.cg = urem i32 %.lhs.trunc, %i.cf
  %.zext = zext i32 %i.cg to i64
  %.060 = select i1 %or.cond7, i64 %.sroa.7.0.extract.shift, i64 %.zext ; 2 uses
  %6 = trunc i64 %.061 to i32                     ; 2 uses
  %.not = icmp eq i64 %.060, %.sroa.7.0.extract.shift ; 2 uses
  br i1 %i.av, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  br i1 %i.aw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ch = trunc nuw i64 %indvars.iv to i32
  %i.ci = add i32 %i.ch, -1
  br label %index_alpha.exit

bb.o:                                             ; preds = %bb.m
  %i.cj = mul i32 %i.bt, %i.bb                    ; 2 uses
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ck = trunc nuw i64 %indvars.iv to i32
  %i.cl = add i32 %i.ck, -1
  %i.cm = add i32 %i.cl, %i.cj
  br label %index_alpha.exit

bb.q:                                             ; preds = %bb.o
  %i.cn = icmp eq i64 %indvars.iv, 0
  %i.co = sext i1 %i.cn to i32
  %i.cp = add i32 %i.cj, %i.co
  br label %index_alpha.exit

bb.r:                                             ; preds = %bb.l
  br i1 %.not, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cq = xor i32 %i.bt, -1
  %i.cr = trunc nuw i64 %indvars.iv to i32
  %i.cs = add i32 %i.cr, %i.cq
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.ct = icmp eq i64 %indvars.iv, 0
  %i.cu = sext i1 %i.ct to i32
  %i.cv = sub i32 %i.cu, %i.bt
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn = phi i32 [ %i.cv, %bb.t ], [ %i.cs, %bb.s ]
  %.030.i = add i32 %.pn, %i.bu                   ; 2 uses
  br i1 %i.bq, label %index_alpha.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cw = mul i32 %i.bt, %i.br
  %i.cx = zext i32 %i.cw to i64
  br label %index_alpha.exit

index_alpha.exit:                                 ; preds = %bb.n, %bb.p, %bb.q, %bb.u, %bb.v
  %.03036.i = phi i32 [ %.030.i, %bb.u ], [ %.030.i, %bb.v ], [ %i.cp, %bb.q ], [ %i.cm, %bb.p ], [ %i.ci, %bb.n ] ; 2 uses
  %.0.i = phi i64 [ 0, %bb.u ], [ %i.cx, %bb.v ], [ 0, %bb.q ], [ 0, %bb.p ], [ 0, %bb.n ]
  %i.cy = add i32 %.03036.i, -1
  %i.cz = zext i32 %i.cy to i64
  %7 = tail call i32 @llvm.umulh.i32(i32 %6, i32 %6)
  %8 = tail call i32 @llvm.umulh.i32(i32 %.03036.i, i32 %7)
  %i.da = zext i32 %8 to i64
  %9 = sub nsw i64 %.0.i, %i.da
  %i.db = add nsw i64 %9, %i.cz
  %i.dc = zext i32 %i.bu to i64                   ; 2 uses
  %i.dd = urem i64 %i.db, %i.dc
  %i.de = load ptr, ptr %0, align 8
  %i.df = getelementptr i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8            ; 2 uses
  %i.dh = mul nuw i64 %.060, %i.dc
  %i.di = getelementptr [1024 x i8], ptr %i.dg, i64 %i.dh
  %i.dj = getelementptr [1024 x i8], ptr %i.di, i64 %i.dd ; 3 uses
  %i.dk = zext i32 %.05892 to i64
  %i.dl = getelementptr [1024 x i8], ptr %i.dg, i64 %i.dk ; 3 uses
  br i1 %i.av, label %bb.x, label %bb.w

bb.w:                                             ; preds = %index_alpha.exit
  call fastcc void @fill_block_with_xor(ptr noundef %i.d, ptr noundef %i.dj, ptr noundef %i.dl)
  br label %bb.z

bb.x:                                             ; preds = %index_alpha.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %bb.x
  %indvars.iv.i67 = phi i64 [ 0, %bb.x ], [ %indvars.iv.next.i68.1, %bb.y ] ; 5 uses
  %i.dm = getelementptr [32 x i8], ptr %i.d, i64 %indvars.iv.i67 ; 2 uses
  %i.dn = load <4 x i64>, ptr %i.dm, align 32
  %i.do = shl nuw nsw i64 %indvars.iv.i67, 5
  %i.dp = getelementptr i8, ptr %i.dj, i64 %i.do
  %i.dq = load <4 x i64>, ptr %i.dp, align 1
  %i.dr = xor <4 x i64> %i.dq, %i.dn              ; 2 uses
  store <4 x i64> %i.dr, ptr %i.dm, align 32
  %i.ds = getelementptr [32 x i8], ptr %i.a, i64 %indvars.iv.i67
  store <4 x i64> %i.dr, ptr %i.ds, align 32
  %indvars.iv.next.i68 = or disjoint i64 %indvars.iv.i67, 1 ; 3 uses
  %i.dt = getelementptr [32 x i8], ptr %i.d, i64 %indvars.iv.next.i68 ; 2 uses
  %i.du = load <4 x i64>, ptr %i.dt, align 32
  %i.dv = shl nuw nsw i64 %indvars.iv.next.i68, 5
  %i.dw = getelementptr i8, ptr %i.dj, i64 %i.dv
  %i.dx = load <4 x i64>, ptr %i.dw, align 1
  %i.dy = xor <4 x i64> %i.dx, %i.du              ; 2 uses
  store <4 x i64> %i.dy, ptr %i.dt, align 32
  %i.dz = getelementptr [32 x i8], ptr %i.a, i64 %indvars.iv.next.i68
  store <4 x i64> %i.dy, ptr %i.dz, align 32
  %indvars.iv.next.i68.1 = add nuw nsw i64 %indvars.iv.i67, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i68.1, 32
  br i1 %exitcond.not.i.1, label %.preheader917.i, label %bb.y, !llvm.loop !6

.preheader917.i:                                  ; preds = %bb.y, %.preheader917.i
  %indvars.iv923.i = phi i64 [ %indvars.iv.next924.i, %.preheader917.i ], [ 0, %bb.y ] ; 2 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv923.i, 8
  %i.ea = getelementptr i8, ptr %i.d, i64 %.idx.i ; 9 uses
  %i.eb = load <4 x i64>, ptr %i.ea, align 32     ; 2 uses
  %i.ec = getelementptr i8, ptr %i.ea, i64 32     ; 2 uses
  %i.ed = load <4 x i64>, ptr %i.ec, align 32     ; 3 uses
  %i.ee = and <4 x i64> %i.eb, splat (i64 4294967295)
  %i.ef = and <4 x i64> %i.ed, splat (i64 4294967295)
  %i.eg = mul nuw <4 x i64> %i.ef, %i.ee
  %i.eh = shl <4 x i64> %i.eg, splat (i64 1)
  %i.ei = add <4 x i64> %i.ed, %i.eb
  %i.ej = add <4 x i64> %i.ei, %i.eh              ; 3 uses
  %i.ek = getelementptr i8, ptr %i.ea, i64 96     ; 2 uses
  %i.el = load <4 x i64>, ptr %i.ek, align 32
  %i.em = xor <4 x i64> %i.ej, %i.el
  %i.en = bitcast <4 x i64> %i.em to <8 x i32>
  %i.eo = shufflevector <8 x i32> %i.en, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6> ; 2 uses
  %i.ep = bitcast <8 x i32> %i.eo to <4 x i64>    ; 2 uses
  %i.eq = getelementptr i8, ptr %i.ea, i64 64     ; 2 uses
  %i.er = load <4 x i64>, ptr %i.eq, align 32     ; 2 uses
  %i.es = and <4 x i64> %i.er, splat (i64 4294967295)
  %i.et = bitcast <8 x i32> %i.eo to <4 x i64>
  %i.eu = and <4 x i64> %i.et, splat (i64 4294967295)
  %i.ev = mul nuw <4 x i64> %i.eu, %i.es
  %i.ew = shl <4 x i64> %i.ev, splat (i64 1)
  %i.ex = add <4 x i64> %i.er, %i.ep
  %i.ey = add <4 x i64> %i.ex, %i.ew              ; 3 uses
  %i.ez = xor <4 x i64> %i.ey, %i.ed
  %i.fa = bitcast <4 x i64> %i.ez to <32 x i8>
  %i.fb = shufflevector <32 x i8> %i.fa, <32 x i8> poison, <32 x i32> <i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 18, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25, i32 26> ; 2 uses
  %i.fc = bitcast <32 x i8> %i.fb to <4 x i64>    ; 2 uses
  %i.fd = getelementptr i8, ptr %i.ea, i64 128    ; 2 uses
  %i.fe = load <4 x i64>, ptr %i.fd, align 32     ; 2 uses
  %i.ff = getelementptr i8, ptr %i.ea, i64 160    ; 2 uses
  %i.fg = load <4 x i64>, ptr %i.ff, align 32     ; 3 uses
  %i.fh = and <4 x i64> %i.fe, splat (i64 4294967295)
  %i.fi = and <4 x i64> %i.fg, splat (i64 4294967295)
  %i.fj = mul nuw <4 x i64> %i.fi, %i.fh
  %i.fk = shl <4 x i64> %i.fj, splat (i64 1)
  %i.fl = add <4 x i64> %i.fg, %i.fe
  %i.fm = add <4 x i64> %i.fl, %i.fk              ; 3 uses
  %i.fn = getelementptr i8, ptr %i.ea, i64 224    ; 2 uses
  %i.fo = load <4 x i64>, ptr %i.fn, align 32
  %i.fp = xor <4 x i64> %i.fm, %i.fo
  %i.fq = bitcast <4 x i64> %i.fp to <8 x i32>
  %i.fr = shufflevector <8 x i32> %i.fq, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6> ; 2 uses
  %i.fs = bitcast <8 x i32> %i.fr to <4 x i64>    ; 2 uses
  %i.ft = getelementptr i8, ptr %i.ea, i64 192    ; 2 uses
  %i.fu = load <4 x i64>, ptr %i.ft, align 32     ; 2 uses
  %i.fv = and <4 x i64> %i.fu, splat (i64 4294967295)
  %i.fw = bitcast <8 x i32> %i.fr to <4 x i64>
  %i.fx = and <4 x i64> %i.fw, splat (i64 4294967295)
  %i.fy = mul nuw <4 x i64> %i.fx, %i.fv
  %i.fz = shl <4 x i64> %i.fy, splat (i64 1)
  %i.ga = add <4 x i64> %i.fu, %i.fs
  %i.gb = add <4 x i64> %i.ga, %i.fz              ; 3 uses
  %i.gc = xor <4 x i64> %i.gb, %i.fg
  %i.gd = bitcast <4 x i64> %i.gc to <32 x i8>
  %i.ge = shufflevector <32 x i8> %i.gd, <32 x i8> poison, <32 x i32> <i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 18, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25, i32 26> ; 2 uses
  %i.gf = bitcast <32 x i8> %i.ge to <4 x i64>    ; 2 uses
  %i.gg = and <4 x i64> %i.ej, splat (i64 4294967295)
  %i.gh = bitcast <32 x i8> %i.fb to <4 x i64>
  %i.gi = and <4 x i64> %i.gh, splat (i64 4294967295)
  %i.gj = mul nuw <4 x i64> %i.gi, %i.gg
  %i.gk = shl <4 x i64> %i.gj, splat (i64 1)
  %i.gl = add <4 x i64> %i.ej, %i.fc
  %i.gm = add <4 x i64> %i.gl, %i.gk              ; 3 uses
  %i.gn = xor <4 x i64> %i.gm, %i.ep
  %i.go = bitcast <4 x i64> %i.gn to <32 x i8>
  %i.gp = shufflevector <32 x i8> %i.go, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25> ; 2 uses
  %i.gq = bitcast <32 x i8> %i.gp to <4 x i64>    ; 2 uses
  %i.gr = and <4 x i64> %i.ey, splat (i64 4294967295)
  %i.gs = bitcast <32 x i8> %i.gp to <4 x i64>
  %i.gt = and <4 x i64> %i.gs, splat (i64 4294967295)
  %i.gu = mul nuw <4 x i64> %i.gt, %i.gr
  %i.gv = shl <4 x i64> %i.gu, splat (i64 1)
  %i.gw = add <4 x i64> %i.ey, %i.gq
  %i.gx = add <4 x i64> %i.gw, %i.gv              ; 2 uses
  %i.gy = xor <4 x i64> %i.gx, %i.fc              ; 2 uses
  %i.gz = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.gy, <4 x i64> %i.gy, <4 x i64> splat (i64 1))
  %i.ha = and <4 x i64> %i.fm, splat (i64 4294967295)
  %i.hb = bitcast <32 x i8> %i.ge to <4 x i64>
  %i.hc = and <4 x i64> %i.hb, splat (i64 4294967295)
  %i.hd = mul nuw <4 x i64> %i.hc, %i.ha
  %i.he = shl <4 x i64> %i.hd, splat (i64 1)
  %i.hf = add <4 x i64> %i.fm, %i.gf
  %i.hg = add <4 x i64> %i.hf, %i.he              ; 3 uses
  %i.hh = xor <4 x i64> %i.hg, %i.fs
  %i.hi = bitcast <4 x i64> %i.hh to <32 x i8>
  %i.hj = shufflevector <32 x i8> %i.hi, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25> ; 2 uses
  %i.hk = bitcast <32 x i8> %i.hj to <4 x i64>    ; 2 uses
  %i.hl = and <4 x i64> %i.gb, splat (i64 4294967295)
  %i.hm = bitcast <32 x i8> %i.hj to <4 x i64>
  %i.hn = and <4 x i64> %i.hm, splat (i64 4294967295)
  %i.ho = mul nuw <4 x i64> %i.hn, %i.hl
  %i.hp = shl <4 x i64> %i.ho, splat (i64 1)
  %i.hq = add <4 x i64> %i.gb, %i.hk
  %i.hr = add <4 x i64> %i.hq, %i.hp              ; 2 uses
  %i.hs = xor <4 x i64> %i.hr, %i.gf              ; 2 uses
  %i.ht = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.hs, <4 x i64> %i.hs, <4 x i64> splat (i64 1))
  %i.hu = shufflevector <4 x i64> %i.gz, <4 x i64> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 3 uses
  %i.hv = shufflevector <4 x i64> %i.gx, <4 x i64> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.hw = shufflevector <4 x i64> %i.gq, <4 x i64> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.hx = shufflevector <4 x i64> %i.ht, <4 x i64> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 3 uses
  %i.hy = shufflevector <4 x i64> %i.hr, <4 x i64> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.hz = shufflevector <4 x i64> %i.hk, <4 x i64> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.ia = and <4 x i64> %i.gm, splat (i64 4294967295)
  %i.ib = and <4 x i64> %i.hu, splat (i64 4294967295)
  %i.ic = mul nuw <4 x i64> %i.ib, %i.ia
  %i.id = shl <4 x i64> %i.ic, splat (i64 1)
  %i.ie = add <4 x i64> %i.hu, %i.gm
  %i.if = add <4 x i64> %i.ie, %i.id              ; 3 uses
  %i.ig = xor <4 x i64> %i.if, %i.hw
  %i.ih = bitcast <4 x i64> %i.ig to <8 x i32>
  %i.ii = shufflevector <8 x i32> %i.ih, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6> ; 2 uses
  %i.ij = bitcast <8 x i32> %i.ii to <4 x i64>    ; 2 uses
  %i.ik = and <4 x i64> %i.hv, splat (i64 4294967295)
  %i.il = bitcast <8 x i32> %i.ii to <4 x i64>
  %i.im = and <4 x i64> %i.il, splat (i64 4294967295)
  %i.in = mul nuw <4 x i64> %i.im, %i.ik
  %i.io = shl <4 x i64> %i.in, splat (i64 1)
  %i.ip = add <4 x i64> %i.hv, %i.ij
  %i.iq = add <4 x i64> %i.ip, %i.io              ; 3 uses
  %i.ir = xor <4 x i64> %i.iq, %i.hu
  %i.is = bitcast <4 x i64> %i.ir to <32 x i8>
  %i.it = shufflevector <32 x i8> %i.is, <32 x i8> poison, <32 x i32> <i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 18, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25, i32 26> ; 2 uses
  %i.iu = bitcast <32 x i8> %i.it to <4 x i64>    ; 2 uses
  %i.iv = and <4 x i64> %i.hg, splat (i64 4294967295)
  %i.iw = and <4 x i64> %i.hx, splat (i64 4294967295)
  %i.ix = mul nuw <4 x i64> %i.iw, %i.iv
  %i.iy = shl <4 x i64> %i.ix, splat (i64 1)
  %i.iz = add <4 x i64> %i.hx, %i.hg
  %i.ja = add <4 x i64> %i.iz, %i.iy              ; 3 uses
  %i.jb = xor <4 x i64> %i.ja, %i.hz
  %i.jc = bitcast <4 x i64> %i.jb to <8 x i32>
  %i.jd = shufflevector <8 x i32> %i.jc, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6> ; 2 uses
  %i.je = bitcast <8 x i32> %i.jd to <4 x i64>    ; 2 uses
  %i.jf = and <4 x i64> %i.hy, splat (i64 4294967295)
  %i.jg = bitcast <8 x i32> %i.jd to <4 x i64>
  %i.jh = and <4 x i64> %i.jg, splat (i64 4294967295)
  %i.ji = mul nuw <4 x i64> %i.jh, %i.jf
  %i.jj = shl <4 x i64> %i.ji, splat (i64 1)
  %i.jk = add <4 x i64> %i.hy, %i.je
  %i.jl = add <4 x i64> %i.jk, %i.jj              ; 3 uses
  %i.jm = xor <4 x i64> %i.jl, %i.hx
  %i.jn = bitcast <4 x i64> %i.jm to <32 x i8>
  %i.jo = shufflevector <32 x i8> %i.jn, <32 x i8> poison, <32 x i32> <i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 18, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25, i32 26> ; 2 uses
  %i.jp = bitcast <32 x i8> %i.jo to <4 x i64>    ; 2 uses
  %i.jq = and <4 x i64> %i.if, splat (i64 4294967295)
  %i.jr = bitcast <32 x i8> %i.it to <4 x i64>
  %i.js = and <4 x i64> %i.jr, splat (i64 4294967295)
  %i.jt = mul nuw <4 x i64> %i.js, %i.jq
  %i.ju = shl <4 x i64> %i.jt, splat (i64 1)
  %i.jv = add <4 x i64> %i.if, %i.iu
  %i.jw = add <4 x i64> %i.jv, %i.ju              ; 2 uses
  store <4 x i64> %i.jw, ptr %i.ea, align 32
end_hunk_0
begin_hunk_1_@fill_block_with_xor:bb.a
  %i.iz = and <4 x i64> %i.iy, splat (i64 4294967295)
  %i.ja = bitcast <8 x i32> %i.iw to <4 x i64>
  %i.jb = and <4 x i64> %i.ja, splat (i64 4294967295)
  %i.jc = mul nuw <4 x i64> %i.jb, %i.iz
  %i.jd = shl <4 x i64> %i.jc, splat (i64 1)
  %i.je = bitcast <8 x i32> %i.iw to <4 x i64>    ; 2 uses
  %i.jf = add <4 x i64> %i.iy, %i.je
  %i.jg = add <4 x i64> %i.jf, %i.jd              ; 3 uses
  %i.jh = xor <4 x i64> %i.jg, %i.il
  %i.ji = bitcast <4 x i64> %i.jh to <32 x i8>
  %i.jj = shufflevector <32 x i8> %i.ji, <32 x i8> poison, <32 x i32> <i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 18, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25, i32 26> ; 2 uses
  %i.jk = bitcast <32 x i8> %i.jj to <4 x i64>    ; 2 uses
  %i.jl = and <4 x i64> %i.ho, splat (i64 4294967295)
  %i.jm = bitcast <32 x i8> %i.ig to <4 x i64>
  %i.jn = and <4 x i64> %i.jm, splat (i64 4294967295)
  %i.jo = mul nuw <4 x i64> %i.jn, %i.jl
  %i.jp = shl <4 x i64> %i.jo, splat (i64 1)
  %i.jq = add <4 x i64> %i.ho, %i.ih
  %i.jr = add <4 x i64> %i.jq, %i.jp              ; 3 uses
  %i.js = xor <4 x i64> %i.jr, %i.ib
  %i.jt = bitcast <4 x i64> %i.js to <32 x i8>
  %i.ju = shufflevector <32 x i8> %i.jt, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25> ; 4 uses
  %i.jv = bitcast <32 x i8> %i.ju to <4 x i64>
  %i.jw = and <4 x i64> %i.id, splat (i64 4294967295)
  %i.jx = bitcast <32 x i8> %i.ju to <4 x i64>
  %i.jy = and <4 x i64> %i.jx, splat (i64 4294967295)
  %i.jz = mul nuw <4 x i64> %i.jy, %i.jw
  %i.ka = shl <4 x i64> %i.jz, splat (i64 1)
  %i.kb = add <4 x i64> %i.id, %i.jv
  %i.kc = add <4 x i64> %i.kb, %i.ka              ; 3 uses
  %i.kd = xor <4 x i64> %i.kc, %i.ih              ; 2 uses
  %i.ke = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.kd, <4 x i64> %i.kd, <4 x i64> splat (i64 1)) ; 2 uses
  %i.kf = and <4 x i64> %i.ir, splat (i64 4294967295)
  %i.kg = bitcast <32 x i8> %i.jj to <4 x i64>
  %i.kh = and <4 x i64> %i.kg, splat (i64 4294967295)
  %i.ki = mul nuw <4 x i64> %i.kh, %i.kf
  %i.kj = shl <4 x i64> %i.ki, splat (i64 1)
  %i.kk = add <4 x i64> %i.ir, %i.jk
  %i.kl = add <4 x i64> %i.kk, %i.kj              ; 3 uses
  %i.km = xor <4 x i64> %i.kl, %i.je
  %i.kn = bitcast <4 x i64> %i.km to <32 x i8>
  %i.ko = shufflevector <32 x i8> %i.kn, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25> ; 4 uses
  %i.kp = bitcast <32 x i8> %i.ko to <4 x i64>
  %i.kq = and <4 x i64> %i.jg, splat (i64 4294967295)
  %i.kr = bitcast <32 x i8> %i.ko to <4 x i64>
  %i.ks = and <4 x i64> %i.kr, splat (i64 4294967295)
  %i.kt = mul nuw <4 x i64> %i.ks, %i.kq
  %i.ku = shl <4 x i64> %i.kt, splat (i64 1)
  %i.kv = add <4 x i64> %i.jg, %i.kp
  %i.kw = add <4 x i64> %i.kv, %i.ku              ; 3 uses
  %i.kx = xor <4 x i64> %i.kw, %i.jk              ; 2 uses
  %i.ky = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.kx, <4 x i64> %i.kx, <4 x i64> splat (i64 1)) ; 2 uses
  %i.kz = shufflevector <4 x i64> %i.ke, <4 x i64> %i.ky, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.la = shufflevector <4 x i64> %i.ky, <4 x i64> %i.ke, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.lb = shufflevector <4 x i64> %i.kz, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 3 uses
  %i.lc = shufflevector <4 x i64> %i.la, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 3 uses
  %i.ld = shufflevector <32 x i8> %i.ju, <32 x i8> %i.ko, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.le = bitcast <32 x i8> %i.ld to <4 x i64>
  %i.lf = shufflevector <32 x i8> %i.ko, <32 x i8> %i.ju, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.lg = bitcast <32 x i8> %i.lf to <4 x i64>
  %i.lh = shufflevector <4 x i64> %i.le, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.li = shufflevector <4 x i64> %i.lg, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.lj = and <4 x i64> %i.jr, splat (i64 4294967295)
  %i.lk = and <4 x i64> %i.lc, splat (i64 4294967295)
  %i.ll = mul nuw <4 x i64> %i.lk, %i.lj
  %i.lm = shl <4 x i64> %i.ll, splat (i64 1)
  %i.ln = add <4 x i64> %i.lc, %i.jr
  %i.lo = add <4 x i64> %i.ln, %i.lm              ; 3 uses
  %i.lp = xor <4 x i64> %i.lo, %i.lh
  %i.lq = bitcast <4 x i64> %i.lp to <8 x i32>
  %i.lr = shufflevector <8 x i32> %i.lq, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6> ; 2 uses
  %i.ls = bitcast <8 x i32> %i.lr to <4 x i64>    ; 2 uses
  %i.lt = and <4 x i64> %i.kw, splat (i64 4294967295)
  %i.lu = bitcast <8 x i32> %i.lr to <4 x i64>
  %i.lv = and <4 x i64> %i.lu, splat (i64 4294967295)
  %i.lw = mul nuw <4 x i64> %i.lv, %i.lt
  %i.lx = shl <4 x i64> %i.lw, splat (i64 1)
  %i.ly = add <4 x i64> %i.kw, %i.ls
  %i.lz = add <4 x i64> %i.ly, %i.lx              ; 3 uses
  %i.ma = xor <4 x i64> %i.lz, %i.lc
  %i.mb = bitcast <4 x i64> %i.ma to <32 x i8>
  %i.mc = shufflevector <32 x i8> %i.mb, <32 x i8> poison, <32 x i32> <i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 18, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25, i32 26> ; 2 uses
  %i.md = bitcast <32 x i8> %i.mc to <4 x i64>    ; 2 uses
  %i.me = and <4 x i64> %i.kl, splat (i64 4294967295)
  %i.mf = and <4 x i64> %i.lb, splat (i64 4294967295)
  %i.mg = mul nuw <4 x i64> %i.mf, %i.me
  %i.mh = shl <4 x i64> %i.mg, splat (i64 1)
  %i.mi = add <4 x i64> %i.lb, %i.kl
  %i.mj = add <4 x i64> %i.mi, %i.mh              ; 3 uses
  %i.mk = xor <4 x i64> %i.mj, %i.li
  %i.ml = bitcast <4 x i64> %i.mk to <8 x i32>
  %i.mm = shufflevector <8 x i32> %i.ml, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6> ; 2 uses
  %i.mn = bitcast <8 x i32> %i.mm to <4 x i64>    ; 2 uses
  %i.mo = and <4 x i64> %i.kc, splat (i64 4294967295)
  %i.mp = bitcast <8 x i32> %i.mm to <4 x i64>
  %i.mq = and <4 x i64> %i.mp, splat (i64 4294967295)
  %i.mr = mul nuw <4 x i64> %i.mq, %i.mo
  %i.ms = shl <4 x i64> %i.mr, splat (i64 1)
  %i.mt = add <4 x i64> %i.kc, %i.mn
  %i.mu = add <4 x i64> %i.mt, %i.ms              ; 3 uses
  %i.mv = xor <4 x i64> %i.mu, %i.lb
  %i.mw = bitcast <4 x i64> %i.mv to <32 x i8>
  %i.mx = shufflevector <32 x i8> %i.mw, <32 x i8> poison, <32 x i32> <i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 18, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25, i32 26> ; 2 uses
  %i.my = bitcast <32 x i8> %i.mx to <4 x i64>    ; 2 uses
  %i.mz = and <4 x i64> %i.lo, splat (i64 4294967295)
  %i.na = bitcast <32 x i8> %i.mc to <4 x i64>
  %i.nb = and <4 x i64> %i.na, splat (i64 4294967295)
  %i.nc = mul nuw <4 x i64> %i.nb, %i.mz
  %i.nd = shl <4 x i64> %i.nc, splat (i64 1)
  %i.ne = add <4 x i64> %i.lo, %i.md
  %i.nf = add <4 x i64> %i.ne, %i.nd              ; 2 uses
  store <4 x i64> %i.nf, ptr %i.hf, align 32
  %i.ng = xor <4 x i64> %i.nf, %i.ls
  %i.nh = bitcast <4 x i64> %i.ng to <32 x i8>
  %i.ni = shufflevector <32 x i8> %i.nh, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25> ; 4 uses
  %i.nj = bitcast <32 x i8> %i.ni to <4 x i64>
  %i.nk = and <4 x i64> %i.lz, splat (i64 4294967295)
  %i.nl = bitcast <32 x i8> %i.ni to <4 x i64>
  %i.nm = and <4 x i64> %i.nl, splat (i64 4294967295)
  %i.nn = mul nuw <4 x i64> %i.nm, %i.nk
  %i.no = shl <4 x i64> %i.nn, splat (i64 1)
  %i.np = add <4 x i64> %i.lz, %i.nj
  %i.nq = add <4 x i64> %i.np, %i.no              ; 2 uses
  %i.nr = xor <4 x i64> %i.nq, %i.md              ; 2 uses
  %i.ns = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.nr, <4 x i64> %i.nr, <4 x i64> splat (i64 1)) ; 2 uses
  %i.nt = and <4 x i64> %i.mj, splat (i64 4294967295)
  %i.nu = bitcast <32 x i8> %i.mx to <4 x i64>
  %i.nv = and <4 x i64> %i.nu, splat (i64 4294967295)
  %i.nw = mul nuw <4 x i64> %i.nv, %i.nt
  %i.nx = shl <4 x i64> %i.nw, splat (i64 1)
  %i.ny = add <4 x i64> %i.mj, %i.my
  %i.nz = add <4 x i64> %i.ny, %i.nx              ; 2 uses
  store <4 x i64> %i.nz, ptr %i.ii, align 32
  %i.oa = xor <4 x i64> %i.nz, %i.mn
  %i.ob = bitcast <4 x i64> %i.oa to <32 x i8>
  %i.oc = shufflevector <32 x i8> %i.ob, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25> ; 4 uses
  %i.od = bitcast <32 x i8> %i.oc to <4 x i64>
  %i.oe = and <4 x i64> %i.mu, splat (i64 4294967295)
  %i.of = bitcast <32 x i8> %i.oc to <4 x i64>
  %i.og = and <4 x i64> %i.of, splat (i64 4294967295)
  %i.oh = mul nuw <4 x i64> %i.og, %i.oe
  %i.oi = shl <4 x i64> %i.oh, splat (i64 1)
  %i.oj = add <4 x i64> %i.mu, %i.od
  %i.ok = add <4 x i64> %i.oj, %i.oi              ; 2 uses
  %i.ol = xor <4 x i64> %i.ok, %i.my              ; 2 uses
  %i.om = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.ol, <4 x i64> %i.ol, <4 x i64> splat (i64 1)) ; 2 uses
  %i.on = shufflevector <4 x i64> %i.ns, <4 x i64> %i.om, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.oo = shufflevector <4 x i64> %i.om, <4 x i64> %i.ns, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.op = shufflevector <4 x i64> %i.on, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i64> %i.op, ptr %i.hh, align 32
  %i.oq = shufflevector <4 x i64> %i.oo, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i64> %i.oq, ptr %i.ik, align 32
  store <4 x i64> %i.ok, ptr %i.hu, align 32
  store <4 x i64> %i.nq, ptr %i.ix, align 32
  %i.or = shufflevector <32 x i8> %i.oc, <32 x i8> %i.ni, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.os = bitcast <32 x i8> %i.or to <4 x i64>
  %i.ot = shufflevector <32 x i8> %i.ni, <32 x i8> %i.oc, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.ou = bitcast <32 x i8> %i.ot to <4 x i64>
  %i.ov = shufflevector <4 x i64> %i.os, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i64> %i.ov, ptr %i.hp, align 32
  %i.ow = shufflevector <4 x i64> %i.ou, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i64> %i.ow, ptr %i.is, align 32
  %indvars.iv.next932 = add nuw nsw i64 %indvars.iv931, 1 ; 2 uses
  %exitcond934.not = icmp eq i64 %indvars.iv.next932, 4
  br i1 %exitcond934.not, label %.preheader, label %.preheader920, !llvm.loop !13

.preheader:                                       ; preds = %.preheader920, %.preheader
  %indvars.iv935 = phi i64 [ %indvars.iv.next936.1, %.preheader ], [ 0, %.preheader920 ] ; 5 uses
  %i.ox = getelementptr [32 x i8], ptr %0, i64 %indvars.iv935 ; 2 uses
  %i.oy = load <4 x i64>, ptr %i.ox, align 32
  %i.oz = getelementptr [32 x i8], ptr %i.a, i64 %indvars.iv935
  %i.pa = load <4 x i64>, ptr %i.oz, align 32
  %i.pb = xor <4 x i64> %i.pa, %i.oy              ; 2 uses
  store <4 x i64> %i.pb, ptr %i.ox, align 32
  %i.pc = shl nuw nsw i64 %indvars.iv935, 5
  %i.pd = getelementptr i8, ptr %2, i64 %i.pc
  store <4 x i64> %i.pb, ptr %i.pd, align 1
  %indvars.iv.next936 = or disjoint i64 %indvars.iv935, 1 ; 3 uses
  %i.pe = getelementptr [32 x i8], ptr %0, i64 %indvars.iv.next936 ; 2 uses
  %i.pf = load <4 x i64>, ptr %i.pe, align 32
  %i.pg = getelementptr [32 x i8], ptr %i.a, i64 %indvars.iv.next936
  %i.ph = load <4 x i64>, ptr %i.pg, align 32
  %i.pi = xor <4 x i64> %i.ph, %i.pf              ; 2 uses
  store <4 x i64> %i.pi, ptr %i.pe, align 32
  %i.pj = shl nuw nsw i64 %indvars.iv.next936, 5
  %i.pk = getelementptr i8, ptr %2, i64 %i.pj
  store <4 x i64> %i.pi, ptr %i.pk, align 1
  %indvars.iv.next936.1 = add nuw nsw i64 %indvars.iv935, 2 ; 2 uses
  %exitcond938.not.1 = icmp eq i64 %indvars.iv.next936.1, 32
  br i1 %exitcond938.not.1, label %bb.c, label %.preheader, !llvm.loop !14

bb.c:                                             ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umulh.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.fshl.v4i64(<4 x i64>, <4 x i64>, <4 x i64>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

attributes #0 = { nofree norecurse nosync nounwind ssp memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind ssp memory(argmem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4}
!6 = distinct !{!6, !4}
!7 = distinct !{!7, !4}
!8 = distinct !{!8, !4}
!9 = distinct !{!9, !4}
!10 = distinct !{!10, !4}
!11 = distinct !{!11, !4}
!12 = distinct !{!12, !4}
!13 = distinct !{!13, !4}
!14 = distinct !{!14, !4}
end_hunk_1
