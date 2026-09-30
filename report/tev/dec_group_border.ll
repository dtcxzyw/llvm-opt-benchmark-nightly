Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/dec_group_border?download=true
inline.NumInlined: 282
inline.NumDeleted: 183
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN3jxl19GroupBorderAssigner9ClearDoneEm:bb.a
  %.val11.val = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %.val11.val, i64 %i.d
  %i.q = lshr i64 %i.o, 3                         ; 2 uses
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !26
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.q
  %.tr.i13 = trunc i64 %i.o to i32
  %i.t = shl i32 %.tr.i13, 2
  %i.u = and i32 %i.t, 28                         ; 2 uses
  %i.v = shl nuw i32 8, %i.u
  %i.w = xor i32 %i.v, -1
  %i.x = atomicrmw and ptr %i.s, i32 %i.w seq_cst, align 4 ; 0 uses
  %i.y = add i64 %i.d, 1                          ; 2 uses
  %.val10.val = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %.val10.val, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !26
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.g
  %i.ac = shl nuw nsw i32 2, %i.k
  %i.ad = xor i32 %i.ac, -1
  %i.ae = atomicrmw and ptr %i.ab, i32 %i.ad seq_cst, align 4 ; 0 uses
  %.val.val = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %.val.val, i64 %i.y
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !26
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.q
  %i.ai = shl nuw nsw i32 1, %i.u
  %i.aj = xor i32 %i.ai, -1
  %i.ak = atomicrmw and ptr %i.ah, i32 %i.aj seq_cst, align 4 ; 0 uses
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define hidden void @_ZN3jxl19GroupBorderAssigner9GroupDoneEmmmPNS_5RectTImEEPm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef captures(none) initializes((0, 8)) %5) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 17 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %i.d = urem i64 %1, %i.c                        ; 4 uses
  %i.e = udiv i64 %1, %i.c                        ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.g = load i64, ptr %i.f, align 8, !tbaa !36   ; 3 uses
  %i.h = mul i64 %i.g, %i.d                       ; 2 uses
  %i.i = lshr i64 %i.h, 3                         ; 4 uses
  %i.j = mul i64 %i.g, %i.e                       ; 2 uses
  %i.k = lshr i64 %i.j, 3                         ; 4 uses
  %i.l = lshr i64 %i.g, 3                         ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !37   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load i64, ptr %i.o, align 8, !tbaa !38   ; 2 uses
  %i.q = add nuw nsw i64 %i.i, %i.l
  %.not.i.i = icmp ugt i64 %i.q, %i.n
  %i.r = tail call i64 @llvm.usub.sat.i64(i64 %i.n, i64 %i.i)
  %i.s = select i1 %.not.i.i, i64 %i.r, i64 %i.l
  %i.t = add nuw nsw i64 %i.k, %i.l
  %.not.i8.i = icmp ugt i64 %i.t, %i.p
  %i.u = tail call i64 @llvm.usub.sat.i64(i64 %i.p, i64 %i.k)
  %i.v = select i1 %.not.i8.i, i64 %i.u, i64 %i.l
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %.val53.val = load ptr, ptr %i.w, align 8, !tbaa !21
  %i.x = shl i64 %i.d, 2
  %i.y = and i64 %i.x, 28                         ; 3 uses
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %.val53.val, i64 %i.e
  %i.aa = lshr i64 %i.d, 3                        ; 2 uses
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !26
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = trunc nuw nsw i64 %i.y to i32           ; 2 uses
  %i.ae = shl nuw nsw i32 4, %i.ad
  %i.af = atomicrmw or ptr %i.ac, i32 %i.ae seq_cst, align 4
  %i.ag = zext i32 %i.af to i64
  %i.ah = lshr i64 %i.ag, %i.y                    ; 2 uses
  %.masked.i = and i64 %i.ah, 11                  ; 2 uses
  %i.ai = add nuw i64 %i.d, 1                     ; 3 uses
  %.val52.val = load ptr, ptr %i.w, align 8, !tbaa !21
  %i.aj = shl i64 %i.ai, 2
  %i.ak = and i64 %i.aj, 28                       ; 3 uses
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %.val52.val, i64 %i.e
  %i.am = lshr i64 %i.ai, 3                       ; 2 uses
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !26
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.am
  %i.ap = trunc nuw nsw i64 %i.ak to i32          ; 2 uses
  %i.aq = shl nuw i32 8, %i.ap
  %i.ar = atomicrmw or ptr %i.ao, i32 %i.aq seq_cst, align 4
  %i.as = zext i32 %i.ar to i64
  %i.at = lshr i64 %i.as, %i.ak                   ; 2 uses
  %.masked.i54 = and i64 %i.at, 7
  %i.au = add i64 %i.e, 1                         ; 3 uses
  %.val51.val = load ptr, ptr %i.w, align 8, !tbaa !21
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %.val51.val, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !26
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.am
  %i.ay = shl nuw nsw i32 1, %i.ap
  %i.az = atomicrmw or ptr %i.ax, i32 %i.ay seq_cst, align 4
  %i.ba = zext i32 %i.az to i64
  %i.bb = lshr i64 %i.ba, %i.ak
  %.masked.i55 = and i64 %i.bb, 14
  %.val.val = load ptr, ptr %i.w, align 8, !tbaa !21
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %.val.val, i64 %i.au
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !26
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.aa
  %i.bf = shl nuw nsw i32 2, %i.ad
  %i.bg = atomicrmw or ptr %i.be, i32 %i.bf seq_cst, align 4
  %i.bh = zext i32 %i.bg to i64
  %i.bi = lshr i64 %i.bh, %i.y                    ; 2 uses
  %.masked.i56 = and i64 %i.bi, 13
  %i.bj = add i64 %i.s, %i.i                      ; 2 uses
  %i.bk = add i64 %i.v, %i.k                      ; 2 uses
  %i.bl = load i64, ptr %i.b, align 8, !tbaa !18
  %i.bm = icmp eq i64 %i.bl, %i.ai
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !19
  %i.bp = icmp eq i64 %i.bo, %i.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.bq = icmp eq i64 %i.i, 0
  br i1 %i.bq, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bs = and i64 %i.h, -8                        ; 2 uses
  %i.bt = sub i64 %i.bs, %2
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bv = add i64 %i.bs, %2
  %i.bw = load i64, ptr %0, align 8, !tbaa !10
  %.sroa.speculated136 = tail call i64 @llvm.umin.i64(i64 %i.bv, i64 %i.bw)
  br label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %.sink = phi i64 [ 0, %.thread ], [ %i.bt, %bb.b ]
  %i.bx = phi ptr [ %i.br, %.thread ], [ %i.bu, %bb.b ]
  %i.by = phi i64 [ 0, %.thread ], [ %.sroa.speculated136, %bb.b ]
  store i64 %.sink, ptr %i.a, align 16, !tbaa !10
  store i64 %i.by, ptr %i.bx, align 8, !tbaa !10
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br i1 %i.bm, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ca = load i64, ptr %0, align 8, !tbaa !39    ; 2 uses
  %.pre202 = shl i64 %i.bj, 3
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.cb = shl i64 %i.bj, 3                        ; 2 uses
  %i.cc = sub i64 %i.cb, %2
  %.pre = load i64, ptr %0, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre-phi = phi i64 [ %i.cb, %bb.e ], [ %.pre202, %bb.d ]
  %i.cd = phi i64 [ %.pre, %bb.e ], [ %i.ca, %bb.d ]
  %i.ce = phi i64 [ %i.cc, %bb.e ], [ %i.ca, %bb.d ]
  store i64 %i.ce, ptr %i.bz, align 16, !tbaa !10
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.cg = add i64 %.pre-phi, %2
  %.sroa.speculated132 = tail call i64 @llvm.umin.i64(i64 %i.cg, i64 %i.cd)
  store i64 %.sroa.speculated132, ptr %i.cf, align 8, !tbaa !10
  %i.ch = icmp eq i64 %i.k, 0
  br i1 %i.ch, label %.thread177, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ci = and i64 %i.j, -8                        ; 2 uses
  %i.cj = sub i64 %i.ci, %3
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cl = add i64 %i.ci, %3
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !10
  %.sroa.speculated128 = tail call i64 @llvm.umin.i64(i64 %i.cl, i64 %i.cm)
  br label %.thread177

.thread177:                                       ; preds = %bb.f, %bb.g
  %i.cn = phi i64 [ %i.cj, %bb.g ], [ 0, %bb.f ]  ; 10 uses
  %i.co = phi i64 [ %.sroa.speculated128, %bb.g ], [ 0, %bb.f ] ; 8 uses
  br i1 %i.bp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread177
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !40 ; 2 uses
  %.pre203 = shl i64 %i.bk, 3
  br label %.preheader

bb.i:                                             ; preds = %.thread177
  %i.cr = shl i64 %i.bk, 3                        ; 2 uses
  %i.cs = sub i64 %i.cr, %3
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre201 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !10
  br label %.preheader

.preheader:                                       ; preds = %bb.i, %bb.h
  %.pre-phi204 = phi i64 [ %i.cr, %bb.i ], [ %.pre203, %bb.h ]
  %i.ct = phi i64 [ %.pre201, %bb.i ], [ %i.cq, %bb.h ]
  %i.cu = phi i64 [ %i.cs, %bb.i ], [ %i.cq, %bb.h ] ; 8 uses
  %i.cv = add i64 %.pre-phi204, %3
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.cv, i64 %i.ct) ; 5 uses
  store i64 0, ptr %5, align 8, !tbaa !10
  %.not = icmp ne i64 %.masked.i, 11              ; 3 uses
  %i.cw = icmp eq i64 %.masked.i54, 7             ; 2 uses
  %i.cx = icmp eq i64 %.masked.i55, 14            ; 2 uses
  %.not229 = icmp ne i64 %.masked.i56, 13         ; 3 uses
  %i.cy = and i64 %i.ah, 2
  %.not.not = icmp eq i64 %i.cy, 0                ; 3 uses
  %.not48 = icmp samesign ult i64 %.masked.i, 8   ; 3 uses
  %6 = and i64 %i.at, 4
  %.not49.not = icmp eq i64 %6, 0                 ; 3 uses
  %i.cz = and i64 %i.bi, 4
  %.not50.not = icmp eq i64 %i.cz, 0              ; 3 uses
  %spec.store.select.1 = zext i1 %.not to i64     ; 2 uses
  %.sroa.10.0 = select i1 %.not, i64 3, i64 1
  %.sroa.0.0 = select i1 %.not, i64 3, i64 0
  %.sroa.10.1 = select i1 %.not.not, i64 %.sroa.10.0, i64 2
  %.sroa.0.1 = select i1 %.not.not, i64 %.sroa.0.0, i64 %spec.store.select.1
  %spec.store.select.2 = select i1 %.not.not, i64 2, i64 %spec.store.select.1
  %.sroa.10.2 = select i1 %i.cw, i64 3, i64 %.sroa.10.1 ; 3 uses
  %.sroa.0.2 = select i1 %i.cw, i64 %spec.store.select.2, i64 %.sroa.0.1 ; 3 uses
  %spec.store.select.1.1 = zext i1 %.not48 to i64 ; 2 uses
  %.sroa.23.2 = select i1 %.not49.not, i64 2, i64 3 ; 2 uses
  %spec.store.select.1.2 = zext i1 %.not229 to i64 ; 2 uses
  %.sroa.40.0 = select i1 %.not229, i64 3, i64 1
  %.sroa.30.0 = select i1 %.not229, i64 3, i64 0
  %.sroa.40.1 = select i1 %.not50.not, i64 %.sroa.40.0, i64 2
  %.sroa.30.1 = select i1 %.not50.not, i64 %.sroa.30.0, i64 %spec.store.select.1.2
  %spec.store.select.2.2 = select i1 %.not50.not, i64 2, i64 %spec.store.select.1.2
  %.sroa.40.2 = select i1 %i.cx, i64 3, i64 %.sroa.40.1 ; 4 uses
  %.sroa.30.2 = select i1 %i.cx, i64 %spec.store.select.2.2, i64 %.sroa.30.1 ; 4 uses
  %i.da = icmp eq i64 %.sroa.0.2, %spec.store.select.1.1
  %i.db = icmp eq i64 %.sroa.10.2, %.sroa.23.2
  %i.dc = and i1 %i.da, %i.db
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.0.2
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !10 ; 9 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.10.2
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !10 ; 5 uses
  %i.dh = icmp eq i64 %i.dg, %i.de                ; 3 uses
  br i1 %i.dc, label %bb.j, label %bb.p

bb.j:                                             ; preds = %.preheader
  %i.di = icmp eq i64 %.sroa.0.2, %.sroa.30.2
  %i.dj = icmp eq i64 %.sroa.10.2, %.sroa.40.2
  %i.dk = and i1 %i.di, %i.dj
  br i1 %i.dk, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.dl = icmp eq i64 %.sroa.speculated, %i.cn
  %or.cond.i = select i1 %i.dh, i1 true, i1 %i.dl
  br i1 %or.cond.i, label %"_ZZN3jxl19GroupBorderAssigner9GroupDoneEmmmPNS_5RectTImEEPmENK3$_1clEmmmm.exit", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dm = sub i64 %i.dg, %i.de
  store i64 1, ptr %5, align 8, !tbaa !10
  store i64 %i.de, ptr %4, align 8, !tbaa !10
  br label %"_ZZN3jxl19GroupBorderAssigner9GroupDoneEmmmPNS_5RectTImEEPmENK3$_1clEmmmm.exit.sink.split"

bb.m:                                             ; preds = %bb.j
  %i.dn = icmp eq i64 %i.cu, %i.cn
  %or.cond.i57 = select i1 %i.dh, i1 true, i1 %i.dn
  br i1 %or.cond.i57, label %"_ZZN3jxl19GroupBorderAssigner9GroupDoneEmmmPNS_5RectTImEEPmENK3$_1clEmmmm.exit61", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.do = sub i64 %i.cu, %i.cn
  %i.dp = sub i64 %i.dg, %i.de
  store i64 1, ptr %5, align 8, !tbaa !10
  store i64 %i.de, ptr %4, align 8, !tbaa !10
  %.sroa.4.0..sroa_idx.i58 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.cn, ptr %.sroa.4.0..sroa_idx.i58, align 8, !tbaa !10
  %.sroa.5.0..sroa_idx.i59 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.dp, ptr %.sroa.5.0..sroa_idx.i59, align 8, !tbaa !10
  %.sroa.7.0..sroa_idx.i60 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.do, ptr %.sroa.7.0..sroa_idx.i60, align 8, !tbaa !10
  br label %"_ZZN3jxl19GroupBorderAssigner9GroupDoneEmmmPNS_5RectTImEEPmENK3$_1clEmmmm.exit61"

"_ZZN3jxl19GroupBorderAssigner9GroupDoneEmmmPNS_5RectTImEEPmENK3$_1clEmmmm.exit61": ; preds = %bb.m, %bb.n
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.30.2
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !10 ; 3 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.40.2
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !10 ; 2 uses
  %i.du = icmp eq i64 %i.dt, %i.dr
  %i.dv = icmp eq i64 %.sroa.speculated, %i.cu
  %or.cond.i62 = select i1 %i.du, i1 true, i1 %i.dv
  br i1 %or.cond.i62, label %"_ZZN3jxl19GroupBorderAssigner9GroupDoneEmmmPNS_5RectTImEEPmENK3$_1clEmmmm.exit", label %bb.o

bb.o:                                             ; preds = %"_ZZN3jxl19GroupBorderAssigner9GroupDoneEmmmPNS_5RectTImEEPmENK3$_1clEmmmm.exit61"
  %i.dw = sub i64 %i.dt, %i.dr
  %i.dx = load i64, ptr %5, align 8, !tbaa !10    ; 2 uses
  %i.dy = add i64 %i.dx, 1
  store i64 %i.dy, ptr %5, align 8, !tbaa !10
  %i.dz = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %i.dx ; 2 uses
  store i64 %i.dr, ptr %i.dz, align 8, !tbaa !10
  br label %"_ZZN3jxl19GroupBorderAssigner9GroupDoneEmmmPNS_5RectTImEEPmENK3$_1clEmmmm.exit.sink.split"

bb.p:                                             ; preds = %.preheader
  %i.ea = icmp eq i64 %.sroa.30.2, %spec.store.select.1.1
  %i.eb = icmp eq i64 %.sroa.23.2, %.sroa.40.2
  %i.ec = and i1 %i.ea, %i.eb
  %i.ed = icmp eq i64 %i.co, %i.cn
  %or.cond.i67 = select i1 %i.dh, i1 true, i1 %i.ed ; 2 uses
  br i1 %i.ec, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  br i1 %or.cond.i67, label %"_ZZN3jxl19GroupBorderAssigner9GroupDoneEmmmPNS_5RectTImEEPmENK3$_1clEmmmm.exit71", label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ee = sub i64 %i.co, %i.cn
  %i.ef = sub i64 %i.dg, %i.de
  store i64 1, ptr %5, align 8, !tbaa !10
  store i64 %i.de, ptr %4, align 8, !tbaa !10
  %.sroa.4.0..sroa_idx.i68 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.cn, ptr %.sroa.4.0..sroa_idx.i68, align 8, !tbaa !10
  %.sroa.5.0..sroa_idx.i69 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.ef, ptr %.sroa.5.0..sroa_idx.i69, align 8, !tbaa !10
  %.sroa.7.0..sroa_idx.i70 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.ee, ptr %.sroa.7.0..sroa_idx.i70, align 8, !tbaa !10
  br label %"_ZZN3jxl19GroupBorderAssigner9GroupDoneEmmmPNS_5RectTImEEPmENK3$_1clEmmmm.exit71"

"_ZZN3jxl19GroupBorderAssigner9GroupDoneEmmmPNS_5RectTImEEPmENK3$_1clEmmmm.exit71": ; preds = %bb.q, %bb.r
  %spec.store.select.1.1.sroa.sel.idx = select i1 %.not48, i64 8, i64 0
  %spec.store.select.1.1.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %spec.store.select.1.1.sroa.sel.idx
  %i.eg = load i64, ptr %spec.store.select.1.1.sroa.sel, align 8, !tbaa !10 ; 3 uses
  %.sroa.23.2.sroa.sel.v = select i1 %.not49.not, i64 16, i64 24
  %.sroa.23.2.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.23.2.sroa.sel.v
  %i.eh = load i64, ptr %.sroa.23.2.sroa.sel, align 8, !tbaa !10 ; 2 uses
  %i.ei = icmp eq i64 %i.eh, %i.eg
  %i.ej = icmp eq i64 %.sroa.speculated, %i.co
  %or.cond.i72 = select i1 %i.ei, i1 true, i1 %i.ej
  br i1 %or.cond.i72, label %"_ZZN3jxl19GroupBorderAssigner9GroupDoneEmmmPNS_5RectTImEEPmENK3$_1clEmmmm.exit", label %bb.s

bb.s:                                             ; preds = %"_ZZN3jxl19GroupBorderAssigner9GroupDoneEmmmPNS_5RectTImEEPmENK3$_1clEmmmm.exit71"
  %i.ek = sub i64 %i.eh, %i.eg
  %i.el = load i64, ptr %5, align 8, !tbaa !10    ; 2 uses
  %i.em = add i64 %i.el, 1
  store i64 %i.em, ptr %5, align 8, !tbaa !10
  %i.en = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %i.el ; 2 uses
  store i64 %i.eg, ptr %i.en, align 8, !tbaa !10
  br label %"_ZZN3jxl19GroupBorderAssigner9GroupDoneEmmmPNS_5RectTImEEPmENK3$_1clEmmmm.exit.sink.split"

bb.t:                                             ; preds = %bb.p
  br i1 %or.cond.i67, label %"_ZZN3jxl19GroupBorderAssigner9GroupDoneEmmmPNS_5RectTImEEPmENK3$_1clEmmmm.exit81", label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eo = sub i64 %i.co, %i.cn
  %i.ep = sub i64 %i.dg, %i.de
  store i64 1, ptr %5, align 8, !tbaa !10
  store i64 %i.de, ptr %4, align 8, !tbaa !10
  %.sroa.4.0..sroa_idx.i78 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.cn, ptr %.sroa.4.0..sroa_idx.i78, align 8, !tbaa !10
  %.sroa.5.0..sroa_idx.i79 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.ep, ptr %.sroa.5.0..sroa_idx.i79, align 8, !tbaa !10
  %.sroa.7.0..sroa_idx.i80 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.eo, ptr %.sroa.7.0..sroa_idx.i80, align 8, !tbaa !10
  br label %"_ZZN3jxl19GroupBorderAssigner9GroupDoneEmmmPNS_5RectTImEEPmENK3$_1clEmmmm.exit81"

"_ZZN3jxl19GroupBorderAssigner9GroupDoneEmmmPNS_5RectTImEEPmENK3$_1clEmmmm.exit81": ; preds = %bb.t, %bb.u
  %spec.store.select.1.1.sroa.sel241.idx = select i1 %.not48, i64 8, i64 0
  %spec.store.select.1.1.sroa.sel241 = getelementptr inbounds nuw i8, ptr %i.a, i64 %spec.store.select.1.1.sroa.sel241.idx
  %i.eq = load i64, ptr %spec.store.select.1.1.sroa.sel241, align 8, !tbaa !10 ; 3 uses
  %.sroa.23.2.sroa.sel244.v = select i1 %.not49.not, i64 16, i64 24
  %.sroa.23.2.sroa.sel244 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.23.2.sroa.sel244.v
  %i.er = load i64, ptr %.sroa.23.2.sroa.sel244, align 8, !tbaa !10 ; 2 uses
  %i.es = icmp eq i64 %i.er, %i.eq
  %i.et = icmp eq i64 %i.cu, %i.co
  %or.cond.i82 = select i1 %i.es, i1 true, i1 %i.et
  br i1 %or.cond.i82, label %"_ZZN3jxl19GroupBorderAssigner9GroupDoneEmmmPNS_5RectTImEEPmENK3$_1clEmmmm.exit86", label %bb.v

bb.v:                                             ; preds = %"_ZZN3jxl19GroupBorderAssigner9GroupDoneEmmmPNS_5RectTImEEPmENK3$_1clEmmmm.exit81"
  %i.eu = sub i64 %i.cu, %i.co
  %i.ev = sub i64 %i.er, %i.eq
  %i.ew = load i64, ptr %5, align 8, !tbaa !10    ; 2 uses
  %i.ex = add i64 %i.ew, 1
  store i64 %i.ex, ptr %5, align 8, !tbaa !10
  %i.ey = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %i.ew ; 4 uses
  store i64 %i.eq, ptr %i.ey, align 8, !tbaa !10
  %.sroa.4.0..sroa_idx.i83 = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store i64 %i.co, ptr %.sroa.4.0..sroa_idx.i83, align 8, !tbaa !10
  %.sroa.5.0..sroa_idx.i84 = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store i64 %i.ev, ptr %.sroa.5.0..sroa_idx.i84, align 8, !tbaa !10
  %.sroa.7.0..sroa_idx.i85 = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  store i64 %i.eu, ptr %.sroa.7.0..sroa_idx.i85, align 8, !tbaa !10
  br label %"_ZZN3jxl19GroupBorderAssigner9GroupDoneEmmmPNS_5RectTImEEPmENK3$_1clEmmmm.exit86"

"_ZZN3jxl19GroupBorderAssigner9GroupDoneEmmmPNS_5RectTImEEPmENK3$_1clEmmmm.exit86": ; preds = %"_ZZN3jxl19GroupBorderAssigner9GroupDoneEmmmPNS_5RectTImEEPmENK3$_1clEmmmm.exit81", %bb.v
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.30.2
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !10 ; 3 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.40.2
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !10 ; 2 uses
  %i.fd = icmp eq i64 %i.fc, %i.fa
  %i.fe = icmp eq i64 %.sroa.speculated, %i.cu
  %or.cond.i87 = select i1 %i.fd, i1 true, i1 %i.fe
  br i1 %or.cond.i87, label %"_ZZN3jxl19GroupBorderAssigner9GroupDoneEmmmPNS_5RectTImEEPmENK3$_1clEmmmm.exit", label %bb.w

bb.w:                                             ; preds = %"_ZZN3jxl19GroupBorderAssigner9GroupDoneEmmmPNS_5RectTImEEPmENK3$_1clEmmmm.exit86"
  %i.ff = sub i64 %i.fc, %i.fa
  %i.fg = load i64, ptr %5, align 8, !tbaa !10    ; 2 uses
  %i.fh = add i64 %i.fg, 1
  store i64 %i.fh, ptr %5, align 8, !tbaa !10
  %i.fi = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %i.fg ; 2 uses
  store i64 %i.fa, ptr %i.fi, align 8, !tbaa !10
  br label %"_ZZN3jxl19GroupBorderAssigner9GroupDoneEmmmPNS_5RectTImEEPmENK3$_1clEmmmm.exit.sink.split"

"_ZZN3jxl19GroupBorderAssigner9GroupDoneEmmmPNS_5RectTImEEPmENK3$_1clEmmmm.exit.sink.split": ; preds = %bb.l, %bb.o, %bb.s, %bb.w
  %.sink235 = phi ptr [ %i.fi, %bb.w ], [ %i.en, %bb.s ], [ %i.dz, %bb.o ], [ %4, %bb.l ] ; 3 uses
  %.sink234 = phi i64 [ %i.cu, %bb.w ], [ %i.co, %bb.s ], [ %i.cu, %bb.o ], [ %i.cn, %bb.l ] ; 2 uses
  %.sink232 = phi i64 [ %i.ff, %bb.w ], [ %i.ek, %bb.s ], [ %i.dw, %bb.o ], [ %i.dm, %bb.l ]
  %.sink230 = sub i64 %.sroa.speculated, %.sink234
  %.sroa.4.0..sroa_idx.i88 = getelementptr inbounds nuw i8, ptr %.sink235, i64 8
  store i64 %.sink234, ptr %.sroa.4.0..sroa_idx.i88, align 8, !tbaa !10
  %.sroa.5.0..sroa_idx.i89 = getelementptr inbounds nuw i8, ptr %.sink235, i64 16
  store i64 %.sink232, ptr %.sroa.5.0..sroa_idx.i89, align 8, !tbaa !10
  %.sroa.7.0..sroa_idx.i90 = getelementptr inbounds nuw i8, ptr %.sink235, i64 24
  store i64 %.sink230, ptr %.sroa.7.0..sroa_idx.i90, align 8, !tbaa !10
  br label %"_ZZN3jxl19GroupBorderAssigner9GroupDoneEmmmPNS_5RectTImEEPmENK3$_1clEmmmm.exit"

"_ZZN3jxl19GroupBorderAssigner9GroupDoneEmmmPNS_5RectTImEEPmENK3$_1clEmmmm.exit": ; preds = %"_ZZN3jxl19GroupBorderAssigner9GroupDoneEmmmPNS_5RectTImEEPmENK3$_1clEmmmm.exit.sink.split", %"_ZZN3jxl19GroupBorderAssigner9GroupDoneEmmmPNS_5RectTImEEPmENK3$_1clEmmmm.exit86", %"_ZZN3jxl19GroupBorderAssigner9GroupDoneEmmmPNS_5RectTImEEPmENK3$_1clEmmmm.exit71", %"_ZZN3jxl19GroupBorderAssigner9GroupDoneEmmmPNS_5RectTImEEPmENK3$_1clEmmmm.exit61", %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorINS0_INS_6atomicIjEENS_9allocatorIS2_EEEENS3_IS5_EEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20   ; 5 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24
  %.not = icmp ult i64 %i.h, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not6.i = icmp eq i64 %1, 0
  br i1 %.not6.i, label %_ZNSt3__16vectorINS0_INS_6atomicIjEENS_9allocatorIS2_EEEENS3_IS5_EEE18__construct_at_endEm.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %.idx.i = mul i64 %1, 24
  %i.i = add i64 %.idx.i, -24                     ; 2 uses
  %i.j = urem i64 %i.i, 24
  %i.k = sub nuw i64 %i.i, %i.j
  %i.l = add i64 %i.k, 24                         ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.l, i1 false)
  %scevgep.i = getelementptr i8, ptr %i.d, i64 %i.l
  br label %_ZNSt3__16vectorINS0_INS_6atomicIjEENS_9allocatorIS2_EEEENS3_IS5_EEE18__construct_at_endEm.exit

_ZNSt3__16vectorINS0_INS_6atomicIjEENS_9allocatorIS2_EEEENS3_IS5_EEE18__construct_at_endEm.exit: ; preds = %bb.b, %.lr.ph.preheader.i
  %.sroa.4.0.lcssa.i = phi ptr [ %i.d, %bb.b ], [ %scevgep.i, %.lr.ph.preheader.i ]
  store ptr %.sroa.4.0.lcssa.i, ptr %i.c, align 8, !tbaa !20
  br label %_ZNSt3__114__split_bufferINS_6vectorINS_6atomicIjEENS_9allocatorIS3_EEEERNS4_IS6_EEED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.o = sub i64 %i.f, %i.n                       ; 2 uses
  %i.p = sdiv exact i64 %i.o, 24
  %i.q = add i64 %i.p, %1                         ; 2 uses
  %i.r = icmp ugt i64 %i.q, 768614336404564650
  br i1 %i.r, label %bb.d, label %_ZNKSt3__16vectorINS0_INS_6atomicIjEENS_9allocatorIS2_EEEENS3_IS5_EEE11__recommendB8nn180100Em.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNKSt3__16vectorINS0_INS_6atomicIjEENS_9allocatorIS2_EEEENS3_IS5_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  unreachable

_ZNKSt3__16vectorINS0_INS_6atomicIjEENS_9allocatorIS2_EEEENS3_IS5_EEE11__recommendB8nn180100Em.exit: ; preds = %bb.c
  %i.s = sub i64 %i.e, %i.n
  %i.t = sdiv exact i64 %i.s, 24                  ; 2 uses
  %.not.i = icmp ult i64 %i.t, 384307168202282325
  %i.u = shl nuw nsw i64 %i.t, 1
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.q)
  %.0.i = select i1 %.not.i, i64 %.sroa.speculated.i, i64 768614336404564650 ; 4 uses
  %i.v = icmp eq i64 %.0.i, 0
  br i1 %i.v, label %_ZNSt3__114__split_bufferINS_6vectorINS_6atomicIjEENS_9allocatorIS3_EEEERNS4_IS6_EEE18__construct_at_endEm.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt3__16vectorINS0_INS_6atomicIjEENS_9allocatorIS2_EEEENS3_IS5_EEE11__recommendB8nn180100Em.exit
  %i.w = icmp ugt i64 %.0.i, 768614336404564650
  br i1 %i.w, label %bb.f, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_6vectorINS_6atomicIjEENS1_IS4_EEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSA_m.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #15
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_6vectorINS_6atomicIjEENS1_IS4_EEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSA_m.exit.i: ; preds = %bb.e
  %i.x = mul nuw i64 %.0.i, 24
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #13
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !20
  %.pre14 = load ptr, ptr %0, align 8, !tbaa !43
  br label %_ZNSt3__114__split_bufferINS_6vectorINS_6atomicIjEENS_9allocatorIS3_EEEERNS4_IS6_EEE18__construct_at_endEm.exit

_ZNSt3__114__split_bufferINS_6vectorINS_6atomicIjEENS_9allocatorIS3_EEEERNS4_IS6_EEE18__construct_at_endEm.exit: ; preds = %_ZNKSt3__16vectorINS0_INS_6atomicIjEENS_9allocatorIS2_EEEENS3_IS5_EEE11__recommendB8nn180100Em.exit, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_6vectorINS_6atomicIjEENS1_IS4_EEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSA_m.exit.i
  %i.z = phi ptr [ %.pre14, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_6vectorINS_6atomicIjEENS1_IS4_EEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSA_m.exit.i ], [ %i.m, %_ZNKSt3__16vectorINS0_INS_6atomicIjEENS_9allocatorIS2_EEEENS3_IS5_EEE11__recommendB8nn180100Em.exit ] ; 3 uses
  %i.aa = phi ptr [ %.pre, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_6vectorINS_6atomicIjEENS1_IS4_EEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSA_m.exit.i ], [ %i.d, %_ZNKSt3__16vectorINS0_INS_6atomicIjEENS_9allocatorIS2_EEEENS3_IS5_EEE11__recommendB8nn180100Em.exit ] ; 3 uses
  %storemerge.i = phi ptr [ %i.y, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_6vectorINS_6atomicIjEENS1_IS4_EEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSA_m.exit.i ], [ null, %_ZNKSt3__16vectorINS0_INS_6atomicIjEENS_9allocatorIS2_EEEENS3_IS5_EEE11__recommendB8nn180100Em.exit ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.o ; 4 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %storemerge.i, i64 %.0.i
  %.idx.i6 = mul i64 %1, 24
  %i.ad = add i64 %.idx.i6, -24                   ; 2 uses
  %i.ae = urem i64 %i.ad, 24
  %i.af = sub nuw i64 %i.ad, %i.ae
  %i.ag = add i64 %i.af, 24                       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %i.ag, i1 false)
  %scevgep.i7 = getelementptr i8, ptr %i.ab, i64 %i.ag
  %.not13.i.i = icmp eq ptr %i.aa, %i.z
  br i1 %.not13.i.i, label %_ZNSt3__16vectorINS0_INS_6atomicIjEENS_9allocatorIS2_EEEENS3_IS5_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS5_RS6_EE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt3__114__split_bufferINS_6vectorINS_6atomicIjEENS_9allocatorIS3_EEEERNS4_IS6_EEE18__construct_at_endEm.exit, %.lr.ph.i.i
  %i.ah = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %i.ab, %_ZNSt3__114__split_bufferINS_6vectorINS_6atomicIjEENS_9allocatorIS3_EEEERNS4_IS6_EEE18__construct_at_endEm.exit ] ; 2 uses
  %.sroa.18.014.i.i = phi ptr [ %i.aj, %.lr.ph.i.i ], [ %i.aa, %_ZNSt3__114__split_bufferINS_6vectorINS_6atomicIjEENS_9allocatorIS3_EEEERNS4_IS6_EEE18__construct_at_endEm.exit ] ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -24 ; 3 uses
  %i.aj = getelementptr inbounds i8, ptr %.sroa.18.014.i.i, i64 -24 ; 4 uses
  %i.ak = getelementptr inbounds i8, ptr %i.ah, i64 -8
  %i.al = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !28
  store <2 x ptr> %i.al, ptr %i.ai, align 8, !tbaa !28
  %i.am = getelementptr inbounds i8, ptr %.sroa.18.014.i.i, i64 -8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !28
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  %.not.i.i = icmp eq ptr %i.aj, %i.z
  br i1 %.not.i.i, label %_ZNSt3__16vectorINS0_INS_6atomicIjEENS_9allocatorIS2_EEEENS3_IS5_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS5_RS6_EE.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !41

_ZNSt3__16vectorINS0_INS_6atomicIjEENS_9allocatorIS2_EEEENS3_IS5_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS5_RS6_EE.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !43
  %.pre15 = load ptr, ptr %i.c, align 8, !tbaa !43
  br label %_ZNSt3__16vectorINS0_INS_6atomicIjEENS_9allocatorIS2_EEEENS3_IS5_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS5_RS6_EE.exit

_ZNSt3__16vectorINS0_INS_6atomicIjEENS_9allocatorIS2_EEEENS3_IS5_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS5_RS6_EE.exit: ; preds = %_ZNSt3__16vectorINS0_INS_6atomicIjEENS_9allocatorIS2_EEEENS3_IS5_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS5_RS6_EE.exitthread-pre-split, %_ZNSt3__114__split_bufferINS_6vectorINS_6atomicIjEENS_9allocatorIS3_EEEERNS4_IS6_EEE18__construct_at_endEm.exit
  %i.ao = phi ptr [ %.pre15, %_ZNSt3__16vectorINS0_INS_6atomicIjEENS_9allocatorIS2_EEEENS3_IS5_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS5_RS6_EE.exitthread-pre-split ], [ %i.aa, %_ZNSt3__114__split_bufferINS_6vectorINS_6atomicIjEENS_9allocatorIS3_EEEERNS4_IS6_EEE18__construct_at_endEm.exit ] ; 2 uses
  %i.ap = phi ptr [ %.pr, %_ZNSt3__16vectorINS0_INS_6atomicIjEENS_9allocatorIS2_EEEENS3_IS5_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS5_RS6_EE.exitthread-pre-split ], [ %i.z, %_ZNSt3__114__split_bufferINS_6vectorINS_6atomicIjEENS_9allocatorIS3_EEEERNS4_IS6_EEE18__construct_at_endEm.exit ] ; 5 uses
  %.sroa.2.0.copyload.i.i = phi ptr [ %i.ai, %_ZNSt3__16vectorINS0_INS_6atomicIjEENS_9allocatorIS2_EEEENS3_IS5_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS5_RS6_EE.exitthread-pre-split ], [ %i.ab, %_ZNSt3__114__split_bufferINS_6vectorINS_6atomicIjEENS_9allocatorIS3_EEEERNS4_IS6_EEE18__construct_at_endEm.exit ]
  store ptr %.sroa.2.0.copyload.i.i, ptr %0, align 8, !tbaa !43
  store ptr %scevgep.i7, ptr %i.c, align 8, !tbaa !43
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !43
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !43
  %.not2.i.i.i.i = icmp eq ptr %i.ap, %i.ao
  br i1 %.not2.i.i.i.i, label %_ZNSt3__114__split_bufferINS_6vectorINS_6atomicIjEENS_9allocatorIS3_EEEERNS4_IS6_EEE5clearB8nn180100Ev.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt3__16vectorINS0_INS_6atomicIjEENS_9allocatorIS2_EEEENS3_IS5_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS5_RS6_EE.exit, %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorINS_6atomicIjEENS1_IS4_EEEEEEE7destroyB8nn180100IS6_vEEvRS7_PT_.exit.i.i.i.i
  %i.ar = phi ptr [ %i.as, %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorINS_6atomicIjEENS1_IS4_EEEEEEE7destroyB8nn180100IS6_vEEvRS7_PT_.exit.i.i.i.i ], [ %i.ao, %_ZNSt3__16vectorINS0_INS_6atomicIjEENS_9allocatorIS2_EEEENS3_IS5_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS5_RS6_EE.exit ] ; 3 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -24 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !26 ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorINS_6atomicIjEENS1_IS4_EEEEEEE7destroyB8nn180100IS6_vEEvRS7_PT_.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 -16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !27
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 -8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !28
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.at to i64
  %i.az = sub i64 %i.ax, %i.ay
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.az) #12
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorINS_6atomicIjEENS1_IS4_EEEEEEE7destroyB8nn180100IS6_vEEvRS7_PT_.exit.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorINS_6atomicIjEENS1_IS4_EEEEEEE7destroyB8nn180100IS6_vEEvRS7_PT_.exit.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.ap, %i.as
  br i1 %.not.i.i.i.i, label %_ZNSt3__114__split_bufferINS_6vectorINS_6atomicIjEENS_9allocatorIS3_EEEERNS4_IS6_EEE5clearB8nn180100Ev.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !42
end_hunk_0
