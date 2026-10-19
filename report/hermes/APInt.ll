Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/APInt?download=true
inline.NumInlined: 1479
inline.NumDeleted: 233
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 96
begin_hunk_0_@_ZNK4llvh5APInt8byteSwapEv:bb.a
  %i.ex = or i64 %i.ew, %.epil.init39
  store i64 %i.ex, ptr %.epil.init, align 8, !tbaa !24
  %i.ey = trunc nuw i64 %indvars.iv.next.i2.i.i.epil.init to i32
  %i.ez = add i32 %.sroa.speculated.i.i.i, %i.ey
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.fa
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !24
  %i.fd = lshr i64 %i.fc, %i.db
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next.i2.i.i.epil.init
  store i64 %i.fd, ptr %i.fe, align 8, !tbaa !24
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.epil.preheader, %.loopexit.i.i.i.loopexit.unr-lcssa, %bb.l, %.lr.ph.i.i.i, %.preheader.i.i.i
  %i.ff = zext nneg i32 %i.cz to i64
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.ff
  %i.fh = shl nuw nsw i32 %.sroa.speculated.i.i.i, 3
  %i.fi = zext nneg i32 %i.fh to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.fg, i8 0, i64 %i.fi, i1 false)
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit

_ZN4llvh5APInt11lshrInPlaceEj.exit:               ; preds = %bb.i, %bb.j, %.loopexit.i.i.i
  store i32 %i.at, ptr %i.an, align 8, !tbaa !21
  br label %_ZN4llvh5APIntC2Ejmb.exit

_ZN4llvh5APIntC2Ejmb.exit:                        ; preds = %.loopexit.i._crit_edge.i, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i, %._crit_edge, %_ZN4llvh5APInt11lshrInPlaceEj.exit, %bb.e, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt11reverseBitsEv(ptr dead_on_unwind noalias writable sret(%"class.llvh::APInt") align 8 initializes((0, 12)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21   ; 31 uses
  %i.c = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.b)
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %.split, label %bb.f

.split:                                           ; preds = %bb.a
  %i.e = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.b, i1 true)
  switch i32 %i.e, label %bb.f [
    i32 6, label %bb.b
    i32 5, label %bb.c
    i32 4, label %bb.d
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %.split
  %i.f = load i64, ptr %1, align 8, !tbaa !22     ; 8 uses
  %.sroa.410.0.extract.shift.i = lshr i64 %i.f, 8
  %.sroa.511.0.extract.shift.i = lshr i64 %i.f, 16
  %.sroa.612.0.extract.shift.i = lshr i64 %i.f, 24
  %.sroa.713.0.extract.shift.i = lshr i64 %i.f, 32
  %.sroa.814.0.extract.shift.i = lshr i64 %i.f, 40
  %.sroa.915.0.extract.shift.i = lshr i64 %i.f, 48
  %.sroa.1016.0.extract.shift.i = lshr i64 %i.f, 56
  %i.g = and i64 %i.f, 255
  %i.h = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !22
  %i.j = and i64 %.sroa.410.0.extract.shift.i, 255
  %i.k = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !22
  %i.m = and i64 %.sroa.511.0.extract.shift.i, 255
  %i.n = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !22
  %i.p = and i64 %.sroa.612.0.extract.shift.i, 255
  %i.q = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !22
  %i.s = and i64 %.sroa.713.0.extract.shift.i, 255
  %i.t = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !22
  %i.v = and i64 %.sroa.814.0.extract.shift.i, 255
  %i.w = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !22
  %i.y = and i64 %.sroa.915.0.extract.shift.i, 255
  %i.z = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !22
  %i.ab = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %.sroa.1016.0.extract.shift.i
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !22
  %.sroa.10.0.insert.ext.i = zext i8 %i.i to i64
  %.sroa.10.0.insert.shift.i = shl nuw i64 %.sroa.10.0.insert.ext.i, 56
  %.sroa.9.0.insert.ext.i = zext i8 %i.l to i64
  %.sroa.9.0.insert.shift.i = shl nuw nsw i64 %.sroa.9.0.insert.ext.i, 48
  %.sroa.9.0.insert.insert.i = or disjoint i64 %.sroa.9.0.insert.shift.i, %.sroa.10.0.insert.shift.i
  %.sroa.8.0.insert.ext.i = zext i8 %i.o to i64
  %.sroa.8.0.insert.shift.i = shl nuw nsw i64 %.sroa.8.0.insert.ext.i, 40
  %.sroa.8.0.insert.insert.i = or disjoint i64 %.sroa.9.0.insert.insert.i, %.sroa.8.0.insert.shift.i
  %.sroa.7.0.insert.ext.i = zext i8 %i.r to i64
  %.sroa.7.0.insert.shift.i = shl nuw nsw i64 %.sroa.7.0.insert.ext.i, 32
  %.sroa.7.0.insert.insert.i = or disjoint i64 %.sroa.8.0.insert.insert.i, %.sroa.7.0.insert.shift.i
  %.sroa.6.0.insert.ext.i = zext i8 %i.u to i64
  %.sroa.6.0.insert.shift.i = shl nuw nsw i64 %.sroa.6.0.insert.ext.i, 24
  %.sroa.6.0.insert.insert.i = or disjoint i64 %.sroa.7.0.insert.insert.i, %.sroa.6.0.insert.shift.i
  %.sroa.5.0.insert.ext.i = zext i8 %i.x to i64
  %.sroa.5.0.insert.shift.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i, 16
  %.sroa.4.0.insert.ext.i = zext i8 %i.aa to i64
  %.sroa.4.0.insert.shift.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i, 8
  %.sroa.4.0.insert.mask.i = or disjoint i64 %.sroa.6.0.insert.insert.i, %.sroa.5.0.insert.shift.i
  %.sroa.0.0.insert.ext.i = zext i8 %i.ac to i64
  %.sroa.0.0.insert.mask.i = or i64 %.sroa.4.0.insert.mask.i, %.sroa.4.0.insert.shift.i
  %.sroa.0.0.insert.insert.i = or i64 %.sroa.0.0.insert.mask.i, %.sroa.0.0.insert.ext.i ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.ad, align 8, !tbaa !21
  %i.ae = icmp ult i32 %i.b, 65
  br i1 %i.ae, label %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i, label %.loopexit.i._crit_edge.i

_ZN4llvh5APInt15clearUnusedBitsEv.exit.i:         ; preds = %bb.b
  %i.af = sub nsw i32 0, %i.b
  %i.ag = and i32 %i.af, 63
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = lshr i64 -1, %i.ah
  %i.aj = and i64 %.sroa.0.0.insert.insert.i, %i.ai
  store i64 %i.aj, ptr %0, align 8, !tbaa !22
  br label %_ZN4llvh5APIntC2Ejmb.exit

.loopexit.i._crit_edge.i:                         ; preds = %bb.b
  %i.ak = zext i32 %i.b to i64
  %i.al = add nuw nsw i64 %i.ak, 63               ; 2 uses
  %i.am = lshr i64 %i.al, 3
  %i.an = and i64 %i.am, 1073741816               ; 2 uses
  %i.ao = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.an) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ao, i8 0, i64 %i.an, i1 false)
  store ptr %i.ao, ptr %0, align 8, !tbaa !22
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.ao, align 8, !tbaa !24
  %i.ap = sub i32 0, %i.b
  %i.aq = and i32 %i.ap, 63
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = lshr i64 -1, %i.ar
  %.pre7.i = lshr i64 %i.al, 6
  %i.at = getelementptr [8 x i8], ptr %i.ao, i64 %.pre7.i
  %i.au = getelementptr i8, ptr %i.at, i64 -8     ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !24
  %i.aw = and i64 %i.av, %i.as
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !24
  br label %_ZN4llvh5APIntC2Ejmb.exit

bb.c:                                             ; preds = %.split
  %i.ax = load i64, ptr %1, align 8, !tbaa !22    ; 4 uses
  %.sroa.410.0.extract.shift.i3 = lshr i64 %i.ax, 8
  %.sroa.511.0.extract.shift.i4 = lshr i64 %i.ax, 16
  %.sroa.612.0.extract.shift.i5 = lshr i64 %i.ax, 24
  %.sroa.612.0.extract.trunc.i = and i64 %.sroa.612.0.extract.shift.i5, 255
  %i.ay = and i64 %i.ax, 255
  %i.az = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !22
  %i.bb = and i64 %.sroa.410.0.extract.shift.i3, 255
  %i.bc = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !22
  %i.be = and i64 %.sroa.511.0.extract.shift.i4, 255
  %i.bf = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !22
  %i.bh = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %.sroa.612.0.extract.trunc.i
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !22
  %.sroa.6.0.insert.ext.i6 = zext i8 %i.ba to i64
  %.sroa.6.0.insert.shift.i7 = shl nuw nsw i64 %.sroa.6.0.insert.ext.i6, 24
  %.sroa.5.0.insert.ext.i8 = zext i8 %i.bd to i64
  %.sroa.5.0.insert.shift.i9 = shl nuw nsw i64 %.sroa.5.0.insert.ext.i8, 16
  %.sroa.5.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.shift.i9, %.sroa.6.0.insert.shift.i7
  %.sroa.4.0.insert.ext.i10 = zext i8 %i.bg to i64
  %.sroa.4.0.insert.shift.i11 = shl nuw nsw i64 %.sroa.4.0.insert.ext.i10, 8
  %.sroa.4.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.insert.i, %.sroa.4.0.insert.shift.i11
  %.sroa.0.0.insert.ext.i12 = zext i8 %i.bi to i64
  %.sroa.0.0.insert.insert.i13 = or disjoint i64 %.sroa.4.0.insert.insert.i, %.sroa.0.0.insert.ext.i12 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.bj, align 8, !tbaa !21
  %i.bk = icmp ult i32 %i.b, 65
  br i1 %i.bk, label %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i19, label %.loopexit.i._crit_edge.i15

_ZN4llvh5APInt15clearUnusedBitsEv.exit.i19:       ; preds = %bb.c
  %i.bl = sub nsw i32 0, %i.b
  %i.bm = and i32 %i.bl, 63
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = lshr i64 -1, %i.bn
  %i.bp = and i64 %.sroa.0.0.insert.insert.i13, %i.bo
  store i64 %i.bp, ptr %0, align 8, !tbaa !22
  br label %_ZN4llvh5APIntC2Ejmb.exit

.loopexit.i._crit_edge.i15:                       ; preds = %bb.c
  %i.bq = zext i32 %i.b to i64
  %i.br = add nuw nsw i64 %i.bq, 63               ; 2 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = and i64 %i.bs, 1073741816               ; 2 uses
  %i.bu = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bt) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bu, i8 0, i64 %i.bt, i1 false)
  store ptr %i.bu, ptr %0, align 8, !tbaa !22
  store i64 %.sroa.0.0.insert.insert.i13, ptr %i.bu, align 8, !tbaa !24
  %i.bv = sub i32 0, %i.b
  %i.bw = and i32 %i.bv, 63
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = lshr i64 -1, %i.bx
  %.pre7.i18 = lshr i64 %i.br, 6
  %i.bz = getelementptr [8 x i8], ptr %i.bu, i64 %.pre7.i18
  %i.ca = getelementptr i8, ptr %i.bz, i64 -8     ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !24
  %i.cc = and i64 %i.cb, %i.by
  store i64 %i.cc, ptr %i.ca, align 8, !tbaa !24
  br label %_ZN4llvh5APIntC2Ejmb.exit

bb.d:                                             ; preds = %.split
  %i.cd = load i64, ptr %1, align 8, !tbaa !22    ; 2 uses
  %.sroa.410.0.extract.shift.i21 = lshr i64 %i.cd, 8
  %.sroa.410.0.extract.trunc.i = and i64 %.sroa.410.0.extract.shift.i21, 255
  %2 = and i64 %i.cd, 255
  %3 = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !22
  %i.ce = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %.sroa.410.0.extract.trunc.i
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !22
  %.sroa.4.0.insert.ext.i22 = zext i8 %4 to i64
  %.sroa.4.0.insert.shift.i23 = shl nuw nsw i64 %.sroa.4.0.insert.ext.i22, 8
  %.sroa.0.0.insert.ext.i24 = zext i8 %i.cf to i64
  %.sroa.0.0.insert.insert.i25 = or disjoint i64 %.sroa.4.0.insert.shift.i23, %.sroa.0.0.insert.ext.i24 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.cg, align 8, !tbaa !21
  %i.ch = icmp ult i32 %i.b, 65
  br i1 %i.ch, label %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i31, label %.loopexit.i._crit_edge.i27

_ZN4llvh5APInt15clearUnusedBitsEv.exit.i31:       ; preds = %bb.d
  %i.ci = sub nsw i32 0, %i.b
  %i.cj = and i32 %i.ci, 63
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = lshr i64 -1, %i.ck
  %i.cm = and i64 %.sroa.0.0.insert.insert.i25, %i.cl
  store i64 %i.cm, ptr %0, align 8, !tbaa !22
  br label %_ZN4llvh5APIntC2Ejmb.exit

.loopexit.i._crit_edge.i27:                       ; preds = %bb.d
  %i.cn = zext i32 %i.b to i64
  %i.co = add nuw nsw i64 %i.cn, 63               ; 2 uses
  %i.cp = lshr i64 %i.co, 3
  %i.cq = and i64 %i.cp, 1073741816               ; 2 uses
  %i.cr = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cq) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cr, i8 0, i64 %i.cq, i1 false)
  store ptr %i.cr, ptr %0, align 8, !tbaa !22
  store i64 %.sroa.0.0.insert.insert.i25, ptr %i.cr, align 8, !tbaa !24
  %i.cs = sub i32 0, %i.b
  %i.ct = and i32 %i.cs, 63
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = lshr i64 -1, %i.cu
  %.pre7.i30 = lshr i64 %i.co, 6
  %i.cw = getelementptr [8 x i8], ptr %i.cr, i64 %.pre7.i30
  %i.cx = getelementptr i8, ptr %i.cw, i64 -8     ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !24
  %i.cz = and i64 %i.cy, %i.cv
  store i64 %i.cz, ptr %i.cx, align 8, !tbaa !24
  br label %_ZN4llvh5APIntC2Ejmb.exit

bb.e:                                             ; preds = %.split
  %i.da = load i64, ptr %1, align 8, !tbaa !22
  %i.db = and i64 %i.da, 255
  %i.dc = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !22
  %i.de = zext i8 %i.dd to i64                    ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.df, align 8, !tbaa !21
  %i.dg = icmp ult i32 %i.b, 65
  br i1 %i.dg, label %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i38, label %.loopexit.i._crit_edge.i34

_ZN4llvh5APInt15clearUnusedBitsEv.exit.i38:       ; preds = %bb.e
  %i.dh = sub nsw i32 0, %i.b
  %i.di = and i32 %i.dh, 63
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = lshr i64 -1, %i.dj
  %i.dl = and i64 %i.dk, %i.de
  store i64 %i.dl, ptr %0, align 8, !tbaa !22
  br label %_ZN4llvh5APIntC2Ejmb.exit

.loopexit.i._crit_edge.i34:                       ; preds = %bb.e
  %i.dm = zext i32 %i.b to i64
  %i.dn = add nuw nsw i64 %i.dm, 63               ; 2 uses
  %i.do = lshr i64 %i.dn, 3
  %i.dp = and i64 %i.do, 1073741816               ; 2 uses
  %i.dq = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dp) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dq, i8 0, i64 %i.dp, i1 false)
  store ptr %i.dq, ptr %0, align 8, !tbaa !22
  store i64 %i.de, ptr %i.dq, align 8, !tbaa !24
  %i.dr = sub i32 0, %i.b
  %i.ds = and i32 %i.dr, 63
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = lshr i64 -1, %i.dt
  %.pre7.i37 = lshr i64 %i.dn, 6
  %i.dv = getelementptr [8 x i8], ptr %i.dq, i64 %.pre7.i37
  %i.dw = getelementptr i8, ptr %i.dv, i64 -8     ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !24
  %i.dy = and i64 %i.dx, %i.du
  store i64 %i.dy, ptr %i.dw, align 8, !tbaa !24
  br label %_ZN4llvh5APIntC2Ejmb.exit

bb.f:                                             ; preds = %.split, %bb.a
  %i.dz = icmp ult i32 %i.b, 65                   ; 5 uses
  br i1 %i.dz, label %_ZN4llvh5APIntC2ERKS0_.exit.thread, label %_ZN4llvh5APIntC2ERKS0_.exit

_ZN4llvh5APIntC2ERKS0_.exit.thread:               ; preds = %bb.f
  %i.ea = load i64, ptr %1, align 8, !tbaa !22
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.eb, align 8, !tbaa !21
  br label %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i45

_ZN4llvh5APIntC2ERKS0_.exit:                      ; preds = %bb.f
  %i.ec = zext i32 %i.b to i64
  %i.ed = add nuw nsw i64 %i.ec, 63
  %i.ee = lshr i64 %i.ed, 3
  %i.ef = and i64 %i.ee, 1073741816               ; 2 uses
  %i.eg = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ef) #22 ; 2 uses
  %i.eh = ptrtoint ptr %i.eg to i64               ; 2 uses
  %i.ei = load ptr, ptr %1, align 8, !tbaa !22
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.eg, ptr align 8 %i.ei, i64 %i.ef, i1 false)
  %.pre = load i32, ptr %i.a, align 8, !tbaa !21  ; 5 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.pre, ptr %i.ej, align 8, !tbaa !21
  %i.ek = icmp ult i32 %.pre, 65
  br i1 %i.ek, label %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i45, label %.loopexit.i._crit_edge.i41

_ZN4llvh5APInt15clearUnusedBitsEv.exit.i45:       ; preds = %_ZN4llvh5APIntC2ERKS0_.exit.thread, %_ZN4llvh5APIntC2ERKS0_.exit
  %.sroa.0.191 = phi i64 [ %i.ea, %_ZN4llvh5APIntC2ERKS0_.exit.thread ], [ %i.eh, %_ZN4llvh5APIntC2ERKS0_.exit ]
  %i.el = phi i32 [ %i.b, %_ZN4llvh5APIntC2ERKS0_.exit.thread ], [ %.pre, %_ZN4llvh5APIntC2ERKS0_.exit ] ; 3 uses
  store i64 0, ptr %0, align 8, !tbaa !22
  %narrow = add nuw nsw i32 %i.el, 63
  %.pre74.a = zext nneg i32 %narrow to i64
  %.pre76.a = sub nsw i32 0, %i.el
  %.pre78.a = and i32 %.pre76.a, 63
  %.pre80 = zext nneg i32 %.pre78.a to i64
  %.pre82 = lshr i64 -1, %.pre80
  %i.em = icmp eq i32 %i.el, 1
  br label %_ZN4llvh5APIntC2Ejmb.exit46

.loopexit.i._crit_edge.i41:                       ; preds = %_ZN4llvh5APIntC2ERKS0_.exit
  %i.en = zext i32 %.pre to i64
  %i.eo = add nuw nsw i64 %i.en, 63               ; 3 uses
  %i.ep = lshr i64 %i.eo, 3
  %i.eq = and i64 %i.ep, 1073741816               ; 2 uses
  %i.er = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.eq) #22 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.er, i8 0, i64 %i.eq, i1 false)
  store ptr %i.er, ptr %0, align 8, !tbaa !22
  store i64 0, ptr %i.er, align 8, !tbaa !24
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = sub i32 0, %.pre
  %i.eu = and i32 %i.et, 63
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = lshr i64 -1, %i.ev                      ; 2 uses
  %.pre7.i44 = lshr i64 %i.eo, 6
  %i.ex = getelementptr [8 x i8], ptr %i.er, i64 %.pre7.i44
  %i.ey = getelementptr i8, ptr %i.ex, i64 -8     ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !24
  %i.fa = and i64 %i.ez, %i.ew
  store i64 %i.fa, ptr %i.ey, align 8, !tbaa !24
  br label %_ZN4llvh5APIntC2Ejmb.exit46

_ZN4llvh5APIntC2Ejmb.exit46:                      ; preds = %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i45, %.loopexit.i._crit_edge.i41
  %i.fb = phi i1 [ true, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i45 ], [ false, %.loopexit.i._crit_edge.i41 ] ; 2 uses
  %.sroa.0.190 = phi i64 [ %.sroa.0.191, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i45 ], [ %i.eh, %.loopexit.i._crit_edge.i41 ]
  %i.fc = phi i1 [ %i.em, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i45 ], [ false, %.loopexit.i._crit_edge.i41 ]
  %.pre-phi83 = phi i64 [ %.pre82, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i45 ], [ %i.ew, %.loopexit.i._crit_edge.i41 ] ; 3 uses
  %.pre-phi75 = phi i64 [ %.pre74.a, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i45 ], [ %i.eo, %.loopexit.i._crit_edge.i41 ]
  %i.fd = phi i64 [ 0, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i45 ], [ %i.es, %.loopexit.i._crit_edge.i41 ]
  %i.fe = phi ptr [ null, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i45 ], [ %i.er, %.loopexit.i._crit_edge.i41 ]
  %i.ff = load i32, ptr %i.a, align 8, !tbaa !21
  %i.fg = zext i32 %i.b to i64
  %i.fh = add nuw nsw i64 %i.fg, 63
  %i.fi = lshr i64 %i.fh, 6                       ; 4 uses
  %i.fj = trunc nuw nsw i64 %i.fi to i32
  %i.fk = shl i32 %i.fj, 6
  %i.fl = and i32 %i.b, 63
  %.not.i.i.i.i.i = icmp eq i32 %i.fl, 0
  %.neg.i.i.i.i.i = or i32 %i.b, -64
  %.neg15.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 0, i32 %.neg.i.i.i.i.i
  %i.fm = lshr i64 %.pre-phi75, 6                 ; 4 uses
  %indvars.iv.next.i1.i.i = add nsw i64 %i.fm, -1 ; 3 uses
  %i.fn = icmp eq i32 %i.b, 1
  %i.fo = trunc i64 %i.fm to i32                  ; 2 uses
  %i.fp = add nsw i64 %i.fi, -1                   ; 3 uses
  %i.fq = and i32 %i.fo, 1
  %lcmp.mod.not.not = icmp eq i32 %i.fq, 0
  %indvars.iv.next.i.i.prol = add nsw i64 %i.fm, -2 ; 2 uses
  %i.fr = and i64 %indvars.iv.next.i.i.prol, 4294967295
  %i.fs = icmp eq i32 %i.fo, 2
  %xtraiter108 = and i64 %i.fp, 1
  %i.ft = icmp eq i64 %i.fi, 2
  %unroll_iter = and i64 %i.fp, -2
  %lcmp.mod114.not = icmp eq i64 %xtraiter108, 0
  %lcmp.mod115 = trunc i64 %i.fp to i1
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit.outer

_ZN4llvh5APInt11lshrInPlaceEj.exit.outer:         ; preds = %bb.i, %_ZN4llvh5APIntC2Ejmb.exit46
  %.ph = phi i64 [ %i.ih, %bb.i ], [ %i.fd, %_ZN4llvh5APIntC2Ejmb.exit46 ]
  %.ph98 = phi ptr [ %i.ii, %bb.i ], [ %i.fe, %_ZN4llvh5APIntC2Ejmb.exit46 ]
  %.sroa.0.0.ph = phi i64 [ %spec.select, %bb.i ], [ %.sroa.0.190, %_ZN4llvh5APIntC2Ejmb.exit46 ] ; 5 uses
  %.0.ph = phi i32 [ %i.ij, %bb.i ], [ %i.ff, %_ZN4llvh5APIntC2Ejmb.exit46 ]
  %i.fu = inttoptr i64 %.sroa.0.0.ph to ptr       ; 14 uses
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit

_ZN4llvh5APInt11lshrInPlaceEj.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i53
  br i1 %lcmp.mod114.not, label %_ZN4llvh5APInt11lshrInPlaceEj.exit.loopexit, label %.lr.ph.i.i53.epil.preheader

.lr.ph.i.i53.epil.preheader:                      ; preds = %_ZN4llvh5APInt11lshrInPlaceEj.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i52
  %indvars.iv.next.i2.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i52 ], [ %indvars.iv.next.i.i.i.1, %_ZN4llvh5APInt11lshrInPlaceEj.exit.loopexit.unr-lcssa ]
  %.epil.init = phi ptr [ %i.fu, %.lr.ph.i.i.i52 ], [ %i.jd, %_ZN4llvh5APInt11lshrInPlaceEj.exit.loopexit.unr-lcssa ]
  %.epil.init111 = phi i64 [ %i.im, %.lr.ph.i.i.i52 ], [ %i.je, %_ZN4llvh5APInt11lshrInPlaceEj.exit.loopexit.unr-lcssa ]
  %.epil.init113 = phi i64 [ 0, %.lr.ph.i.i.i52 ], [ %indvars.iv.next.i.i.i, %_ZN4llvh5APInt11lshrInPlaceEj.exit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod115)
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %.epil.init113
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !24
  %i.fy = shl i64 %i.fx, 63
  %i.fz = or disjoint i64 %i.fy, %.epil.init111
  store i64 %i.fz, ptr %.epil.init, align 8, !tbaa !24
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %indvars.iv.next.i2.i.i.epil.init ; 2 uses
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !24
  %i.gc = lshr i64 %i.gb, 1
end_hunk_0
