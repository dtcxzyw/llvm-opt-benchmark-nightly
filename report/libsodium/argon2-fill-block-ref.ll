Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/argon2-fill-block-ref?download=true
inline.NumInlined: 274
inline.NumDeleted: 8
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.block_ = type { [128 x i64] }

; Function Attrs: nofree norecurse nosync nounwind ssp memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @argon2_fill_segment_ref(ptr nofree noundef readonly captures(address_is_null) %0, i64 %1, i64 %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.block_, align 8             ; 10 uses
  %.sroa.0 = alloca [128 x i64], align 8          ; 4 uses
  %4 = alloca %struct.block_, align 8             ; 5 uses
  %5 = alloca %struct.block_, align 8             ; 11 uses
  %6 = alloca %struct.block_, align 8             ; 5 uses
  %7 = alloca %struct.block_, align 8             ; 5 uses
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32  ; 2 uses
  %.sroa.7.0.extract.shift = lshr i64 %1, 32      ; 4 uses
  %.sroa.7.0.extract.trunc = trunc nuw i64 %.sroa.7.0.extract.shift to i32
  %.sroa.11.8.extract.trunc = trunc i64 %2 to i8  ; 3 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = icmp eq i32 %i.c, 2
  br i1 %i.d, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ne i32 %.sroa.0.0.extract.trunc, 0
  %i.h = icmp ugt i8 %.sroa.11.8.extract.trunc, 1
  %or.cond = select i1 %i.g, i1 true, i1 %i.h
  %i.i = getelementptr i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  br i1 %or.cond, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 28
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %bb.h

bb.d:                                             ; preds = %.thread, %bb.c
  %i.k = phi ptr [ %i.f, %.thread ], [ %i.j, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %4, i8 noundef 0, i64 noundef 1024, i1 noundef false) #5
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(968) %i.l, i8 noundef 0, i64 noundef 968, i1 noundef false) #5
  %i.m = and i64 %1, 4294967295
  store i64 %i.m, ptr %5, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.sroa.7.0.extract.shift, ptr %i.n, align 8
  %i.o = and i64 %2, 255
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr i8, ptr %0, i64 24
  %i.r = load i32, ptr %i.q, align 8
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.s, ptr %i.t, align 8
  %i.u = getelementptr i8, ptr %0, i64 16
  %i.v = load i32, ptr %i.u, align 8
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %i.w, ptr %i.x, align 8
  %i.y = zext i32 %i.c to i64
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %i.y, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %0, i64 28        ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4
  %.not.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i, label %generate_addresses.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 48
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 3 uses
  %i.ad = phi i64 [ 0, %.lr.ph.i ], [ %i.ah, %bb.g ] ; 2 uses
  %i.ae = and i64 %indvars.iv.i, 127              ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = add i64 %i.ad, 1                        ; 2 uses
  store i64 %i.ag, ptr %i.ac, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %7, i8 noundef 0, i64 noundef 1024, i1 noundef false) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %6, i8 noundef 0, i64 noundef 1024, i1 noundef false) #5
  call fastcc void @fill_block_with_xor(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %7)
  call fastcc void @fill_block_with_xor(ptr noundef nonnull %4, ptr noundef nonnull %7, ptr noundef nonnull %6)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ah = phi i64 [ %i.ag, %bb.f ], [ %i.ad, %bb.e ]
  %i.ai = getelementptr [8 x i8], ptr %6, i64 %i.ae
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv.i
  store i64 %i.aj, ptr %i.ak, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.al = load i32, ptr %i.aa, align 4            ; 2 uses
  %i.am = zext i32 %i.al to i64
  %i.an = icmp samesign ult i64 %indvars.iv.next.i, %i.am
  br i1 %i.an, label %bb.e, label %generate_addresses.exit, !llvm.loop !7

generate_addresses.exit:                          ; preds = %bb.g, %bb.d
  %i.ao = phi i32 [ 0, %bb.d ], [ %i.al, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %generate_addresses.exit
  %i.ap = phi i32 [ %i.ao, %generate_addresses.exit ], [ %.pre, %._crit_edge ] ; 3 uses
  %i.aq = phi ptr [ %i.k, %generate_addresses.exit ], [ %i.j, %._crit_edge ]
  %.not91 = phi i1 [ false, %generate_addresses.exit ], [ true, %._crit_edge ]
  %i.ar = icmp eq i32 %.sroa.0.0.extract.trunc, 0 ; 3 uses
  %i.as = icmp eq i8 %.sroa.11.8.extract.trunc, 0 ; 2 uses
  %or.cond7 = select i1 %i.ar, i1 %i.as, i1 false ; 2 uses
  %spec.select66 = select i1 %or.cond7, i32 2, i32 0 ; 3 uses
  %i.at = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.au = trunc i64 %2 to i32
  %i.av = and i32 %i.au, 255                      ; 3 uses
  %i.aw = getelementptr i8, ptr %0, i64 28
  %i.ax = icmp ult i32 %spec.select66, %i.ap
  br i1 %i.ax, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.ay = load i32, ptr %i.at, align 8            ; 3 uses
  %i.az = mul i32 %i.ay, %.sroa.7.0.extract.trunc
  %i.ba = add i32 %i.az, %spec.select66
  %i.bb = mul i32 %i.ap, %i.av
  %i.bc = add i32 %i.ba, %i.bb                    ; 3 uses
  %i.bd = urem i32 %i.bc, %i.ay
  %i.be = icmp eq i32 %i.bd, 0
  %i.bf = add i32 %i.ay, -1
  %.061.in = select i1 %i.be, i32 %i.bf, i32 -1
  %.061 = add i32 %.061.in, %i.bc
  %i.bg = getelementptr i8, ptr %0, i64 36
  %i.bh = icmp eq i8 %.sroa.11.8.extract.trunc, 3
  %i.bi = add nuw nsw i32 %i.av, 1
  %i.bj = zext nneg i32 %spec.select66 to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.y
  %indvars.iv = phi i64 [ %i.bj, %.lr.ph ], [ %indvars.iv.next, %bb.y ] ; 7 uses
  %i.bk = phi i32 [ %i.ap, %.lr.ph ], [ %i.aal, %bb.y ] ; 4 uses
  %.06094 = phi i32 [ %i.bc, %.lr.ph ], [ %i.aaj, %bb.y ] ; 4 uses
  %.193 = phi i32 [ %.061, %.lr.ph ], [ %i.aak, %bb.y ]
  %i.bl = load i32, ptr %i.at, align 8            ; 3 uses
  %i.bm = urem i32 %.06094, %i.bl
  %i.bn = icmp eq i32 %i.bm, 1
  %i.bo = add i32 %.06094, -1
  %spec.select67 = select i1 %i.bn, i32 %i.bo, i32 %.193 ; 3 uses
  br i1 %.not91, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = getelementptr [8 x i8], ptr %i.aq, i64 %indvars.iv
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bq = load ptr, ptr %0, align 8
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = zext i32 %spec.select67 to i64
  %i.bu = getelementptr [1024 x i8], ptr %i.bs, i64 %i.bt
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.063.in = phi ptr [ %i.bp, %bb.j ], [ %i.bu, %bb.k ]
  %.063 = load i64, ptr %.063.in, align 8         ; 2 uses
  %i.bv = lshr i64 %.063, 32
  %i.bw = load i32, ptr %i.bg, align 4
  %.lhs.trunc = trunc nuw i64 %i.bv to i32
  %i.bx = urem i32 %.lhs.trunc, %i.bw
  %.zext = zext i32 %i.bx to i64
  %.062 = select i1 %or.cond7, i64 %.sroa.7.0.extract.shift, i64 %.zext ; 2 uses
  %.not = icmp eq i64 %.062, %.sroa.7.0.extract.shift ; 2 uses
  br i1 %i.ar, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  br i1 %i.as, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.by = trunc nuw i64 %indvars.iv to i32
  %i.bz = add i32 %i.by, -1
  br label %index_alpha.exit

bb.o:                                             ; preds = %bb.m
  %i.ca = mul i32 %i.bk, %i.av                    ; 2 uses
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cb = trunc nuw i64 %indvars.iv to i32
  %i.cc = add i32 %i.cb, -1
  %i.cd = add i32 %i.cc, %i.ca
  br label %index_alpha.exit

bb.q:                                             ; preds = %bb.o
  %i.ce = icmp eq i64 %indvars.iv, 0
  %i.cf = sext i1 %i.ce to i32
  %i.cg = add i32 %i.ca, %i.cf
  br label %index_alpha.exit

bb.r:                                             ; preds = %bb.l
  br i1 %.not, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ch = xor i32 %i.bk, -1
  %i.ci = trunc nuw i64 %indvars.iv to i32
  %i.cj = add i32 %i.ci, %i.ch
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.ck = icmp eq i64 %indvars.iv, 0
  %i.cl = sext i1 %i.ck to i32
  %i.cm = sub i32 %i.cl, %i.bk
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn = phi i32 [ %i.cm, %bb.t ], [ %i.cj, %bb.s ]
  %.030.i = add i32 %.pn, %i.bl                   ; 2 uses
  br i1 %i.bh, label %index_alpha.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cn = mul i32 %i.bk, %i.bi
  %i.co = zext i32 %i.cn to i64
  br label %index_alpha.exit

index_alpha.exit:                                 ; preds = %bb.n, %bb.p, %bb.q, %bb.u, %bb.v
  %.03036.i = phi i32 [ %.030.i, %bb.u ], [ %.030.i, %bb.v ], [ %i.cg, %bb.q ], [ %i.cd, %bb.p ], [ %i.bz, %bb.n ] ; 2 uses
  %.0.i = phi i64 [ 0, %bb.u ], [ %i.co, %bb.v ], [ 0, %bb.q ], [ 0, %bb.p ], [ 0, %bb.n ]
  %i.cp = add i32 %.03036.i, -1
  %i.cq = zext i32 %i.cp to i64
  %8 = and i64 %.063, 4294967295                  ; 2 uses
  %9 = mul nuw i64 %8, %8
  %10 = lshr i64 %9, 32
  %i.cr = zext i32 %.03036.i to i64
  %11 = mul nuw i64 %10, %i.cr
  %12 = lshr i64 %11, 32
  %i.cs = add nuw nsw i64 %.0.i, %i.cq
  %13 = sub nsw i64 %i.cs, %12
  %i.ct = zext i32 %i.bl to i64                   ; 2 uses
  %i.cu = urem i64 %13, %i.ct
  %i.cv = load ptr, ptr %0, align 8
  %i.cw = getelementptr i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8            ; 3 uses
  %i.cy = mul nuw i64 %.062, %i.ct
  %i.cz = getelementptr [1024 x i8], ptr %i.cx, i64 %i.cy
  %i.da = getelementptr [1024 x i8], ptr %i.cz, i64 %i.cu ; 2 uses
  %i.db = zext i32 %.06094 to i64
  %i.dc = getelementptr [1024 x i8], ptr %i.cx, i64 %i.db ; 4 uses
  %i.dd = zext i32 %spec.select67 to i64
  %i.de = getelementptr [1024 x i8], ptr %i.cx, i64 %i.dd ; 3 uses
  br i1 %i.ar, label %vector.ph102, label %bb.w

bb.w:                                             ; preds = %index_alpha.exit
  call fastcc void @fill_block_with_xor(ptr noundef %i.de, ptr noundef %i.da, ptr noundef %i.dc)
  br label %bb.y

vector.ph102:                                     ; preds = %index_alpha.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %3, ptr noundef nonnull readonly align 1 dereferenceable(1024) %i.da, i64 noundef 1024, i1 noundef false) #5
  br label %vector.body103

vector.body103:                                   ; preds = %vector.body103, %vector.ph102
  %index104 = phi i64 [ 0, %vector.ph102 ], [ %index.next109.1, %vector.body103 ] ; 4 uses
  %i.df = getelementptr [8 x i8], ptr %i.de, i64 %index104 ; 2 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 16
  %wide.load105 = load <2 x i64>, ptr %i.df, align 8
  %wide.load106 = load <2 x i64>, ptr %i.dg, align 8
  %i.dh = getelementptr [8 x i8], ptr %3, i64 %index104 ; 3 uses
  %i.di = getelementptr i8, ptr %i.dh, i64 16     ; 2 uses
  %wide.load107 = load <2 x i64>, ptr %i.dh, align 8
  %wide.load108 = load <2 x i64>, ptr %i.di, align 8
  %i.dj = xor <2 x i64> %wide.load107, %wide.load105
  %i.dk = xor <2 x i64> %wide.load108, %wide.load106
  store <2 x i64> %i.dj, ptr %i.dh, align 8
  store <2 x i64> %i.dk, ptr %i.di, align 8
  %index.next109 = or disjoint i64 %index104, 4   ; 2 uses
  %i.dl = getelementptr [8 x i8], ptr %i.de, i64 %index.next109 ; 2 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 16
  %wide.load105.1 = load <2 x i64>, ptr %i.dl, align 8
  %wide.load106.1 = load <2 x i64>, ptr %i.dm, align 8
  %i.dn = getelementptr [8 x i8], ptr %3, i64 %index.next109 ; 3 uses
  %i.do = getelementptr i8, ptr %i.dn, i64 16     ; 2 uses
  %wide.load107.1 = load <2 x i64>, ptr %i.dn, align 8
  %wide.load108.1 = load <2 x i64>, ptr %i.do, align 8
  %i.dp = xor <2 x i64> %wide.load107.1, %wide.load105.1
  %i.dq = xor <2 x i64> %wide.load108.1, %wide.load106.1
  store <2 x i64> %i.dp, ptr %i.dn, align 8
  store <2 x i64> %i.dq, ptr %i.do, align 8
  %index.next109.1 = add nuw nsw i64 %index104, 8 ; 2 uses
  %i.dr = icmp eq i64 %index.next109.1, 128
  br i1 %i.dr, label %xor_block.exit.i, label %vector.body103, !llvm.loop !8

xor_block.exit.i:                                 ; preds = %vector.body103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(1024) %3, i64 1024, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %xor_block.exit.i
  %indvars.iv.i69 = phi i64 [ 0, %xor_block.exit.i ], [ %indvars.iv.next.i70, %bb.x ] ; 2 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv.i69, 7
  %i.ds = getelementptr i8, ptr %3, i64 %.idx.i   ; 17 uses
  %i.dt = load i64, ptr %i.ds, align 8            ; 2 uses
  %i.du = getelementptr i8, ptr %i.ds, i64 32     ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8            ; 3 uses
  %i.dw = and i64 %i.dv, 4294967295
  %i.dx = add i64 %i.dv, %i.dt
  %i.dy = shl i64 %i.dt, 1
  %i.dz = and i64 %i.dy, 8589934590
  %i.ea = mul i64 %i.dz, %i.dw
  %i.eb = add i64 %i.dx, %i.ea                    ; 3 uses
  %i.ec = getelementptr i8, ptr %i.ds, i64 96     ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8
  %i.ee = xor i64 %i.eb, %i.ed                    ; 2 uses
  %i.ef = call i64 @llvm.fshl.i64(i64 %i.ee, i64 %i.ee, i64 32) ; 3 uses
  %i.eg = getelementptr i8, ptr %i.ds, i64 64     ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8            ; 2 uses
  %i.ei = and i64 %i.ef, 4294967295
  %i.ej = add i64 %i.ef, %i.eh
  %i.ek = shl i64 %i.eh, 1
  %i.el = and i64 %i.ek, 8589934590
  %i.em = mul i64 %i.ei, %i.el
  %i.en = add i64 %i.ej, %i.em                    ; 3 uses
  %i.eo = xor i64 %i.en, %i.dv                    ; 2 uses
  %i.ep = call i64 @llvm.fshl.i64(i64 %i.eo, i64 %i.eo, i64 40) ; 3 uses
  %i.eq = and i64 %i.ep, 4294967295
  %i.er = add i64 %i.ep, %i.eb
  %i.es = shl i64 %i.eb, 1
  %i.et = and i64 %i.es, 8589934590
  %i.eu = mul i64 %i.eq, %i.et
  %i.ev = add i64 %i.er, %i.eu                    ; 3 uses
  %i.ew = xor i64 %i.ev, %i.ef                    ; 2 uses
  %i.ex = call i64 @llvm.fshl.i64(i64 %i.ew, i64 %i.ew, i64 48) ; 3 uses
  %i.ey = and i64 %i.ex, 4294967295
  %i.ez = add i64 %i.ex, %i.en
  %i.fa = shl i64 %i.en, 1
  %i.fb = and i64 %i.fa, 8589934590
  %i.fc = mul i64 %i.ey, %i.fb
  %i.fd = add i64 %i.ez, %i.fc                    ; 3 uses
  %i.fe = xor i64 %i.fd, %i.ep                    ; 2 uses
  %i.ff = call i64 @llvm.fshl.i64(i64 %i.fe, i64 %i.fe, i64 1) ; 3 uses
  %i.fg = getelementptr i8, ptr %i.ds, i64 8      ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8            ; 2 uses
  %i.fi = getelementptr i8, ptr %i.ds, i64 40     ; 2 uses
  %i.fj = load i64, ptr %i.fi, align 8            ; 3 uses
  %i.fk = and i64 %i.fj, 4294967295
  %i.fl = add i64 %i.fj, %i.fh
  %i.fm = shl i64 %i.fh, 1
  %i.fn = and i64 %i.fm, 8589934590
  %i.fo = mul i64 %i.fn, %i.fk
  %i.fp = add i64 %i.fl, %i.fo                    ; 3 uses
  %i.fq = getelementptr i8, ptr %i.ds, i64 104    ; 2 uses
  %i.fr = load i64, ptr %i.fq, align 8
  %i.fs = xor i64 %i.fp, %i.fr                    ; 2 uses
  %i.ft = call i64 @llvm.fshl.i64(i64 %i.fs, i64 %i.fs, i64 32) ; 3 uses
  %i.fu = getelementptr i8, ptr %i.ds, i64 72     ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8            ; 2 uses
  %i.fw = and i64 %i.ft, 4294967295
  %i.fx = add i64 %i.ft, %i.fv
  %i.fy = shl i64 %i.fv, 1
  %i.fz = and i64 %i.fy, 8589934590
  %i.ga = mul i64 %i.fw, %i.fz
  %i.gb = add i64 %i.fx, %i.ga                    ; 3 uses
  %i.gc = xor i64 %i.gb, %i.fj                    ; 2 uses
  %i.gd = call i64 @llvm.fshl.i64(i64 %i.gc, i64 %i.gc, i64 40) ; 3 uses
  %i.ge = and i64 %i.gd, 4294967295
  %i.gf = add i64 %i.gd, %i.fp
  %i.gg = shl i64 %i.fp, 1
  %i.gh = and i64 %i.gg, 8589934590
  %i.gi = mul i64 %i.ge, %i.gh
  %i.gj = add i64 %i.gf, %i.gi                    ; 3 uses
  %i.gk = xor i64 %i.gj, %i.ft                    ; 2 uses
  %i.gl = call i64 @llvm.fshl.i64(i64 %i.gk, i64 %i.gk, i64 48) ; 3 uses
  %i.gm = and i64 %i.gl, 4294967295
  %i.gn = add i64 %i.gl, %i.gb
  %i.go = shl i64 %i.gb, 1
  %i.gp = and i64 %i.go, 8589934590
  %i.gq = mul i64 %i.gm, %i.gp
  %i.gr = add i64 %i.gn, %i.gq                    ; 3 uses
  %i.gs = xor i64 %i.gr, %i.gd                    ; 2 uses
  %i.gt = call i64 @llvm.fshl.i64(i64 %i.gs, i64 %i.gs, i64 1) ; 3 uses
  %i.gu = getelementptr i8, ptr %i.ds, i64 16     ; 2 uses
  %i.gv = load i64, ptr %i.gu, align 8            ; 2 uses
  %i.gw = getelementptr i8, ptr %i.ds, i64 48     ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 8            ; 3 uses
  %i.gy = and i64 %i.gx, 4294967295
  %i.gz = add i64 %i.gx, %i.gv
  %i.ha = shl i64 %i.gv, 1
  %i.hb = and i64 %i.ha, 8589934590
  %i.hc = mul i64 %i.hb, %i.gy
  %i.hd = add i64 %i.gz, %i.hc                    ; 3 uses
  %i.he = getelementptr i8, ptr %i.ds, i64 112    ; 2 uses
  %i.hf = load i64, ptr %i.he, align 8
  %i.hg = xor i64 %i.hd, %i.hf                    ; 2 uses
  %i.hh = call i64 @llvm.fshl.i64(i64 %i.hg, i64 %i.hg, i64 32) ; 3 uses
  %i.hi = getelementptr i8, ptr %i.ds, i64 80     ; 2 uses
  %i.hj = load i64, ptr %i.hi, align 8            ; 2 uses
  %i.hk = and i64 %i.hh, 4294967295
  %i.hl = add i64 %i.hh, %i.hj
  %i.hm = shl i64 %i.hj, 1
  %i.hn = and i64 %i.hm, 8589934590
  %i.ho = mul i64 %i.hk, %i.hn
  %i.hp = add i64 %i.hl, %i.ho                    ; 3 uses
  %i.hq = xor i64 %i.hp, %i.gx                    ; 2 uses
  %i.hr = call i64 @llvm.fshl.i64(i64 %i.hq, i64 %i.hq, i64 40) ; 3 uses
  %i.hs = and i64 %i.hr, 4294967295
  %i.ht = add i64 %i.hr, %i.hd
  %i.hu = shl i64 %i.hd, 1
  %i.hv = and i64 %i.hu, 8589934590
  %i.hw = mul i64 %i.hs, %i.hv
  %i.hx = add i64 %i.ht, %i.hw                    ; 3 uses
  %i.hy = xor i64 %i.hx, %i.hh                    ; 2 uses
  %i.hz = call i64 @llvm.fshl.i64(i64 %i.hy, i64 %i.hy, i64 48) ; 3 uses
  %i.ia = and i64 %i.hz, 4294967295
  %i.ib = add i64 %i.hz, %i.hp
  %i.ic = shl i64 %i.hp, 1
  %i.id = and i64 %i.ic, 8589934590
  %i.ie = mul i64 %i.ia, %i.id
  %i.if = add i64 %i.ib, %i.ie                    ; 3 uses
  %i.ig = xor i64 %i.if, %i.hr                    ; 2 uses
  %i.ih = call i64 @llvm.fshl.i64(i64 %i.ig, i64 %i.ig, i64 1) ; 3 uses
  %i.ii = getelementptr i8, ptr %i.ds, i64 24     ; 2 uses
  %i.ij = load i64, ptr %i.ii, align 8            ; 2 uses
  %i.ik = getelementptr i8, ptr %i.ds, i64 56     ; 2 uses
  %i.il = load i64, ptr %i.ik, align 8            ; 3 uses
  %i.im = and i64 %i.il, 4294967295
  %i.in = add i64 %i.il, %i.ij
  %i.io = shl i64 %i.ij, 1
  %i.ip = and i64 %i.io, 8589934590
  %i.iq = mul i64 %i.ip, %i.im
  %i.ir = add i64 %i.in, %i.iq                    ; 3 uses
  %i.is = getelementptr i8, ptr %i.ds, i64 120    ; 2 uses
  %i.it = load i64, ptr %i.is, align 8
  %i.iu = xor i64 %i.ir, %i.it                    ; 2 uses
  %i.iv = call i64 @llvm.fshl.i64(i64 %i.iu, i64 %i.iu, i64 32) ; 3 uses
  %i.iw = getelementptr i8, ptr %i.ds, i64 88     ; 2 uses
  %i.ix = load i64, ptr %i.iw, align 8            ; 2 uses
  %i.iy = and i64 %i.iv, 4294967295
  %i.iz = add i64 %i.iv, %i.ix
  %i.ja = shl i64 %i.ix, 1
  %i.jb = and i64 %i.ja, 8589934590
end_hunk_0
begin_hunk_1_@fill_block_with_xor:vector.ph
  %i.qy = and i64 %i.qx, 4294967295
  %i.qz = add i64 %i.qx, %i.qn
  %i.ra = shl i64 %i.qn, 1
  %i.rb = and i64 %i.ra, 8589934590
  %i.rc = mul i64 %i.qy, %i.rb
  %i.rd = add i64 %i.qz, %i.rc                    ; 3 uses
  %i.re = xor i64 %i.rd, %i.qp                    ; 2 uses
  %i.rf = tail call i64 @llvm.fshl.i64(i64 %i.re, i64 %i.re, i64 1) ; 3 uses
  %i.rg = and i64 %i.od, 4294967295
  %i.rh = add i64 %i.od, %i.mf
  %i.ri = shl i64 %i.mf, 1
  %i.rj = and i64 %i.ri, 8589934590
  %i.rk = mul i64 %i.rg, %i.rj
  %i.rl = add i64 %i.rh, %i.rk                    ; 3 uses
  %i.rm = xor i64 %i.qx, %i.rl                    ; 2 uses
  %i.rn = tail call i64 @llvm.fshl.i64(i64 %i.rm, i64 %i.rm, i64 32) ; 3 uses
  %i.ro = and i64 %i.rn, 4294967295
  %i.rp = add i64 %i.rn, %i.pp
  %i.rq = shl i64 %i.pp, 1
  %i.rr = and i64 %i.rq, 8589934590
  %i.rs = mul i64 %i.ro, %i.rr
  %i.rt = add i64 %i.rp, %i.rs                    ; 3 uses
  %i.ru = xor i64 %i.rt, %i.od                    ; 2 uses
  %i.rv = tail call i64 @llvm.fshl.i64(i64 %i.ru, i64 %i.ru, i64 40) ; 3 uses
  %i.rw = and i64 %i.rv, 4294967295
  %i.rx = add i64 %i.rv, %i.rl
  %i.ry = shl i64 %i.rl, 1
  %i.rz = and i64 %i.ry, 8589934590
  %i.sa = mul i64 %i.rw, %i.rz
  %i.sb = add i64 %i.rx, %i.sa                    ; 2 uses
  store i64 %i.sb, ptr %i.lc, align 8
  %i.sc = xor i64 %i.sb, %i.rn                    ; 2 uses
  %i.sd = tail call i64 @llvm.fshl.i64(i64 %i.sc, i64 %i.sc, i64 48) ; 3 uses
  store i64 %i.sd, ptr %i.qc, align 8
  %i.se = and i64 %i.sd, 4294967295
  %i.sf = add i64 %i.sd, %i.rt
  %i.sg = shl i64 %i.rt, 1
  %i.sh = and i64 %i.sg, 8589934590
  %i.si = mul i64 %i.se, %i.sh
  %i.sj = add i64 %i.sf, %i.si                    ; 2 uses
  store i64 %i.sj, ptr %i.os, align 8
  %i.sk = xor i64 %i.sj, %i.rv                    ; 2 uses
  %i.sl = tail call i64 @llvm.fshl.i64(i64 %i.sk, i64 %i.sk, i64 1)
  store i64 %i.sl, ptr %i.ms, align 8
  %i.sm = and i64 %i.pr, 4294967295
  %i.sn = add i64 %i.pr, %i.nt
  %i.so = shl i64 %i.nt, 1
  %i.sp = and i64 %i.so, 8589934590
  %i.sq = mul i64 %i.sm, %i.sp
  %i.sr = add i64 %i.sn, %i.sq                    ; 3 uses
  %i.ss = xor i64 %i.sr, %i.mh                    ; 2 uses
  %i.st = tail call i64 @llvm.fshl.i64(i64 %i.ss, i64 %i.ss, i64 32) ; 3 uses
  %i.su = and i64 %i.st, 4294967295
  %i.sv = add i64 %i.rd, %i.st
  %i.sw = shl i64 %i.rd, 1
  %i.sx = and i64 %i.sw, 8589934590
  %i.sy = mul i64 %i.sx, %i.su
  %i.sz = add i64 %i.sv, %i.sy                    ; 3 uses
  %i.ta = xor i64 %i.sz, %i.pr                    ; 2 uses
  %i.tb = tail call i64 @llvm.fshl.i64(i64 %i.ta, i64 %i.ta, i64 40) ; 3 uses
  %i.tc = and i64 %i.tb, 4294967295
  %i.td = add i64 %i.tb, %i.sr
  %i.te = shl i64 %i.sr, 1
  %i.tf = and i64 %i.te, 8589934590
  %i.tg = mul i64 %i.tc, %i.tf
  %i.th = add i64 %i.td, %i.tg                    ; 2 uses
  store i64 %i.th, ptr %i.mq, align 8
  %i.ti = xor i64 %i.th, %i.st                    ; 2 uses
  %i.tj = tail call i64 @llvm.fshl.i64(i64 %i.ti, i64 %i.ti, i64 48) ; 3 uses
  store i64 %i.tj, ptr %i.lm, align 8
  %i.tk = and i64 %i.tj, 4294967295
  %i.tl = add i64 %i.tj, %i.sz
  %i.tm = shl i64 %i.sz, 1
  %i.tn = and i64 %i.tm, 8589934590
  %i.to = mul i64 %i.tk, %i.tn
  %i.tp = add i64 %i.tl, %i.to                    ; 2 uses
  store i64 %i.tp, ptr %i.qg, align 8
  %i.tq = xor i64 %i.tp, %i.tb                    ; 2 uses
  %i.tr = tail call i64 @llvm.fshl.i64(i64 %i.tq, i64 %i.tq, i64 1)
  store i64 %i.tr, ptr %i.og, align 8
  %i.ts = and i64 %i.rf, 4294967295
  %i.tt = add i64 %i.rf, %i.ph
  %i.tu = shl i64 %i.ph, 1
  %i.tv = and i64 %i.tu, 8589934590
  %i.tw = mul i64 %i.ts, %i.tv
  %i.tx = add i64 %i.tt, %i.tw                    ; 3 uses
  %i.ty = xor i64 %i.tx, %i.nv                    ; 2 uses
  %i.tz = tail call i64 @llvm.fshl.i64(i64 %i.ty, i64 %i.ty, i64 32) ; 3 uses
  %i.ua = and i64 %i.tz, 4294967295
  %i.ub = add i64 %i.tz, %i.mn
  %i.uc = shl i64 %i.mn, 1
  %i.ud = and i64 %i.uc, 8589934590
  %i.ue = mul i64 %i.ua, %i.ud
  %i.uf = add i64 %i.ub, %i.ue                    ; 3 uses
  %i.ug = xor i64 %i.uf, %i.rf                    ; 2 uses
  %i.uh = tail call i64 @llvm.fshl.i64(i64 %i.ug, i64 %i.ug, i64 40) ; 3 uses
  %i.ui = and i64 %i.uh, 4294967295
  %i.uj = add i64 %i.uh, %i.tx
  %i.uk = shl i64 %i.tx, 1
  %i.ul = and i64 %i.uk, 8589934590
  %i.um = mul i64 %i.ui, %i.ul
  %i.un = add i64 %i.uj, %i.um                    ; 2 uses
  store i64 %i.un, ptr %i.oe, align 8
  %i.uo = xor i64 %i.un, %i.tz                    ; 2 uses
  %i.up = tail call i64 @llvm.fshl.i64(i64 %i.uo, i64 %i.uo, i64 48) ; 3 uses
  store i64 %i.up, ptr %i.na, align 8
  %i.uq = and i64 %i.up, 4294967295
  %i.ur = add i64 %i.up, %i.uf
  %i.us = shl i64 %i.uf, 1
  %i.ut = and i64 %i.us, 8589934590
  %i.uu = mul i64 %i.uq, %i.ut
  %i.uv = add i64 %i.ur, %i.uu                    ; 2 uses
  store i64 %i.uv, ptr %i.lq, align 8
  %i.uw = xor i64 %i.uv, %i.uh                    ; 2 uses
  %i.ux = tail call i64 @llvm.fshl.i64(i64 %i.uw, i64 %i.uw, i64 1)
  store i64 %i.ux, ptr %i.pu, align 8
  %i.uy = and i64 %i.mp, 4294967295
  %i.uz = add i64 %i.qv, %i.mp
  %i.va = shl i64 %i.qv, 1
  %i.vb = and i64 %i.va, 8589934590
  %i.vc = mul i64 %i.vb, %i.uy
  %i.vd = add i64 %i.uz, %i.vc                    ; 3 uses
  %i.ve = xor i64 %i.vd, %i.pj                    ; 2 uses
  %i.vf = tail call i64 @llvm.fshl.i64(i64 %i.ve, i64 %i.ve, i64 32) ; 3 uses
  %i.vg = and i64 %i.vf, 4294967295
  %i.vh = add i64 %i.vf, %i.ob
  %i.vi = shl i64 %i.ob, 1
  %i.vj = and i64 %i.vi, 8589934590
  %i.vk = mul i64 %i.vg, %i.vj
  %i.vl = add i64 %i.vh, %i.vk                    ; 3 uses
  %i.vm = xor i64 %i.vl, %i.mp                    ; 2 uses
  %i.vn = tail call i64 @llvm.fshl.i64(i64 %i.vm, i64 %i.vm, i64 40) ; 3 uses
  %i.vo = and i64 %i.vn, 4294967295
  %i.vp = add i64 %i.vn, %i.vd
  %i.vq = shl i64 %i.vd, 1
  %i.vr = and i64 %i.vq, 8589934590
  %i.vs = mul i64 %i.vo, %i.vr
  %i.vt = add i64 %i.vp, %i.vs                    ; 2 uses
  store i64 %i.vt, ptr %i.ps, align 8
  %i.vu = xor i64 %i.vt, %i.vf                    ; 2 uses
  %i.vv = tail call i64 @llvm.fshl.i64(i64 %i.vu, i64 %i.vu, i64 48) ; 3 uses
  store i64 %i.vv, ptr %i.oo, align 8
  %i.vw = and i64 %i.vv, 4294967295
  %i.vx = add i64 %i.vv, %i.vl
  %i.vy = shl i64 %i.vl, 1
  %i.vz = and i64 %i.vy, 8589934590
  %i.wa = mul i64 %i.vw, %i.vz
  %i.wb = add i64 %i.vx, %i.wa                    ; 2 uses
  store i64 %i.wb, ptr %i.ne, align 8
  %i.wc = xor i64 %i.wb, %i.vn                    ; 2 uses
  %i.wd = tail call i64 @llvm.fshl.i64(i64 %i.wc, i64 %i.wc, i64 1)
  store i64 %i.wd, ptr %i.le, align 8
  %indvars.iv.next404 = add nuw nsw i64 %indvars.iv403, 1 ; 2 uses
  %exitcond406.not = icmp eq i64 %indvars.iv.next404, 8
  br i1 %exitcond406.not, label %vector.ph420, label %.preheader, !llvm.loop !16

vector.ph420:                                     ; preds = %.preheader
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %2, ptr noundef nonnull readonly align 8 dereferenceable(1024) %4, i64 noundef 1024, i1 noundef false) #5
  br label %vector.body421

vector.body421:                                   ; preds = %vector.body421, %vector.ph420
  %index422 = phi i64 [ 0, %vector.ph420 ], [ %index.next427.1, %vector.body421 ] ; 4 uses
  %i.we = getelementptr [8 x i8], ptr %3, i64 %index422 ; 2 uses
  %i.wf = getelementptr i8, ptr %i.we, i64 16
  %wide.load423 = load <2 x i64>, ptr %i.we, align 8
  %wide.load424 = load <2 x i64>, ptr %i.wf, align 8
  %i.wg = getelementptr [8 x i8], ptr %2, i64 %index422 ; 3 uses
  %i.wh = getelementptr i8, ptr %i.wg, i64 16     ; 2 uses
  %wide.load425 = load <2 x i64>, ptr %i.wg, align 8
  %wide.load426 = load <2 x i64>, ptr %i.wh, align 8
  %i.wi = xor <2 x i64> %wide.load425, %wide.load423
  %i.wj = xor <2 x i64> %wide.load426, %wide.load424
  store <2 x i64> %i.wi, ptr %i.wg, align 8
  store <2 x i64> %i.wj, ptr %i.wh, align 8
  %index.next427 = or disjoint i64 %index422, 4   ; 2 uses
  %i.wk = getelementptr [8 x i8], ptr %3, i64 %index.next427 ; 2 uses
  %i.wl = getelementptr i8, ptr %i.wk, i64 16
  %wide.load423.1 = load <2 x i64>, ptr %i.wk, align 8
  %wide.load424.1 = load <2 x i64>, ptr %i.wl, align 8
  %i.wm = getelementptr [8 x i8], ptr %2, i64 %index.next427 ; 3 uses
  %i.wn = getelementptr i8, ptr %i.wm, i64 16     ; 2 uses
  %wide.load425.1 = load <2 x i64>, ptr %i.wm, align 8
  %wide.load426.1 = load <2 x i64>, ptr %i.wn, align 8
  %i.wo = xor <2 x i64> %wide.load425.1, %wide.load423.1
  %i.wp = xor <2 x i64> %wide.load426.1, %wide.load424.1
  store <2 x i64> %i.wo, ptr %i.wm, align 8
  store <2 x i64> %i.wp, ptr %i.wn, align 8
  %index.next427.1 = add nuw nsw i64 %index422, 8 ; 2 uses
  %i.wq = icmp eq i64 %index.next427.1, 128
  br i1 %i.wq, label %xor_block.exit399, label %vector.body421, !llvm.loop !17

xor_block.exit399:                                ; preds = %vector.body421
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

attributes #0 = { nofree norecurse nosync nounwind ssp memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind ssp memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!5 = !{!"llvm.loop.isvectorized", i32 1}
!6 = !{!"llvm.loop.unroll.runtime.disable"}
!7 = distinct !{!7, !4}
!8 = distinct !{!8, !4, !5, !6}
!9 = distinct !{!9, !4}
!10 = distinct !{!10, !4}
!11 = distinct !{!11, !4, !5, !6}
!12 = distinct !{!12, !4}
!13 = distinct !{!13, !4, !5, !6}
!14 = distinct !{!14, !4, !5, !6}
!15 = distinct !{!15, !4}
!16 = distinct !{!16, !4}
!17 = distinct !{!17, !4, !5, !6}
end_hunk_1
