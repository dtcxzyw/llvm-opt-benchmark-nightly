inline.NumInlined: 368
inline.NumDeleted: 121
begin_hunk_0_@_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc:bb.a
  %i.bk = add nsw i32 %i.bi, %i.bj
  %i.bl = and i32 %i.bf, 8
  %i.bm = lshr i32 %i.bk, %i.bl
  %i.bn = trunc nuw nsw i32 %i.bm to i16
  store i16 %i.bn, ptr %.07, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %.07, i64 2
  %i.bp = sext i32 %i.bf to i64
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 %i.bp ; 2 uses
  store i64 %i.bd, ptr %i.bq, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU32EjPc.exit

_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU32EjPc.exit: ; preds = %bb.d, %bb.f, %bb.g
  %.0.i = phi ptr [ %i.g, %bb.d ], [ %i.ai, %bb.f ], [ %i.br, %bb.g ] ; 2 uses
  store i8 0, ptr %.0.i, align 1, !tbaa !9
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define noundef nonnull ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEmPc(i64 noundef %0, ptr nofree noundef writeonly captures(ret: address, provenance) initializes((0, 1)) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp ugt i64 %0, 4294967295
  br i1 %.not.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = trunc nuw i64 %0 to i32                  ; 4 uses
  %i.b = icmp samesign ult i64 %0, 10
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = trunc nuw nsw i64 %0 to i8
  %i.d = or disjoint i8 %i.c, 48
  store i8 %i.d, ptr %1, align 1, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU64EmPc.exit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i64 %0, 100000000
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = udiv i32 %i.a, 10000
  %i.h = urem i32 %i.a, 10000
  %i.i = zext nneg i32 %i.g to i64
  %i.j = zext nneg i32 %i.h to i64
  %i.k = shl nuw nsw i64 %i.j, 32
  %i.l = or disjoint i64 %i.k, %i.i               ; 2 uses
  %i.m = mul nuw nsw i64 %i.l, 10486
  %i.n = lshr i64 %i.m, 20
  %i.o = and i64 %i.n, 545460846719               ; 2 uses
  %.neg.i = mul nsw i64 %i.o, -100
  %i.p = add nsw i64 %.neg.i, %i.l
  %i.q = shl nsw i64 %i.p, 16
  %i.r = add nsw i64 %i.q, %i.o                   ; 2 uses
  %i.s = mul i64 %i.r, 103
  %i.t = lshr i64 %i.s, 10
  %i.u = and i64 %i.t, 4222189076152335           ; 2 uses
  %.neg16.i = mul i64 %i.u, 72057594037927926
  %i.v = add i64 %.neg16.i, %i.r
  %i.w = shl i64 %i.v, 8
  %i.x = add i64 %i.w, %i.u                       ; 3 uses
  %i.y = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %i.y)
  %i.z = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.x, i1 true) ; 2 uses
  %i.aa = and i64 %i.z, 56
  %i.ab = add i64 %i.x, 3472328296227680304
  %i.ac = lshr i64 %i.ab, %i.aa
  store i64 %i.ac, ptr %1, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = lshr i64 %i.z, 3
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = getelementptr inbounds i8, ptr %i.ad, i64 %i.af
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU64EmPc.exit

bb.f:                                             ; preds = %bb.d
  %i.ah = udiv i32 %i.a, 100000000                ; 3 uses
  %i.ai = urem i32 %i.a, 100000000                ; 2 uses
  %i.aj = udiv i32 %i.ai, 10000
  %i.ak = urem i32 %i.ai, 10000
  %i.al = zext nneg i32 %i.aj to i64
  %i.am = zext nneg i32 %i.ak to i64
  %i.an = shl nuw nsw i64 %i.am, 32
  %i.ao = or disjoint i64 %i.an, %i.al            ; 2 uses
  %i.ap = mul nuw nsw i64 %i.ao, 10486
  %i.aq = lshr i64 %i.ap, 20
  %i.ar = and i64 %i.aq, 545460846719             ; 2 uses
  %.neg.i3 = mul nsw i64 %i.ar, -100
  %i.as = add nsw i64 %.neg.i3, %i.ao
  %i.at = shl nsw i64 %i.as, 16
  %i.au = add nsw i64 %i.at, %i.ar                ; 2 uses
  %i.av = mul i64 %i.au, 103
  %i.aw = lshr i64 %i.av, 10
  %i.ax = and i64 %i.aw, 4222189076152335         ; 2 uses
  %.neg16.i4 = mul i64 %i.ax, 72057594037927926
  %i.ay = add i64 %.neg16.i4, %i.au
  %i.az = shl i64 %i.ay, 8
  %i.ba = or disjoint i64 %i.ax, 3472328296227680304
  %i.bb = add i64 %i.ba, %i.az
  %i.bc = add nsw i32 %i.ah, -10
  %i.bd = ashr i32 %i.bc, 8                       ; 2 uses
  %narrow.i = mul nuw nsw i32 %i.ah, 103
  %i.be = lshr i32 %narrow.i, 10                  ; 2 uses
  %.neg.i5 = mul nsw i32 %i.be, -10
  %i.bf = add nsw i32 %.neg.i5, %i.ah
  %i.bg = or disjoint i32 %i.be, 12336
  %i.bh = shl nsw i32 %i.bf, 8
  %i.bi = add nsw i32 %i.bg, %i.bh
  %i.bj = and i32 %i.bd, 8
  %i.bk = lshr i32 %i.bi, %i.bj
  %i.bl = trunc nuw nsw i32 %i.bk to i16
  store i16 %i.bl, ptr %1, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bn = sext i32 %i.bd to i64
  %i.bo = getelementptr inbounds i8, ptr %i.bm, i64 %i.bn ; 2 uses
  store i64 %i.bb, ptr %i.bo, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU64EmPc.exit

bb.g:                                             ; preds = %bb.a
  %i.bq = icmp ult i64 %0, 10000000000000000
  %i.br = udiv i64 %0, 100000000                  ; 2 uses
  %.023.in.i = urem i64 %0, 100000000
  br i1 %i.bq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bs = trunc nuw nsw i64 %i.br to i32          ; 2 uses
  %i.bt = udiv i32 %i.bs, 10000
  %i.bu = urem i32 %i.bs, 10000
  %i.bv = zext nneg i32 %i.bt to i64
  %i.bw = zext nneg i32 %i.bu to i64
  %i.bx = shl nuw nsw i64 %i.bw, 32
  %i.by = or disjoint i64 %i.bx, %i.bv            ; 2 uses
  %i.bz = mul nuw nsw i64 %i.by, 10486
  %i.ca = lshr i64 %i.bz, 20
  %i.cb = and i64 %i.ca, 545460846719             ; 2 uses
  %.neg.i6 = mul nsw i64 %i.cb, -100
  %i.cc = add nsw i64 %.neg.i6, %i.by
  %i.cd = shl nsw i64 %i.cc, 16
  %i.ce = add nsw i64 %i.cd, %i.cb                ; 2 uses
  %i.cf = mul i64 %i.ce, 103
  %i.cg = lshr i64 %i.cf, 10
  %i.ch = and i64 %i.cg, 4222189076152335         ; 2 uses
  %.neg16.i7 = mul i64 %i.ch, 72057594037927926
  %i.ci = add i64 %.neg16.i7, %i.ce
  %i.cj = shl i64 %i.ci, 8
  %i.ck = add i64 %i.cj, %i.ch                    ; 3 uses
  %i.cl = icmp ne i64 %i.ck, 0
  tail call void @llvm.assume(i1 %i.cl)
  %i.cm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ck, i1 true) ; 2 uses
  %i.cn = and i64 %i.cm, 56
  %i.co = add i64 %i.ck, 3472328296227680304
  %i.cp = lshr i64 %i.co, %i.cn
  store i64 %i.cp, ptr %1, align 1
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cr = lshr i64 %i.cm, 3
  %i.cs = sub nsw i64 0, %i.cr
  %i.ct = getelementptr inbounds i8, ptr %i.cq, i64 %i.cs
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU32EjPc.exit.i

bb.i:                                             ; preds = %bb.g
  %i.cu = udiv i64 %0, 10000000000000000
  %i.cv = trunc nuw nsw i64 %i.cu to i32          ; 2 uses
  %i.cw = urem i64 %i.br, 100000000
  %i.cx = trunc nuw nsw i64 %i.cw to i32          ; 2 uses
  %i.cy = udiv i32 %i.cx, 10000
  %i.cz = urem i32 %i.cx, 10000
  %i.da = zext nneg i32 %i.cy to i64
  %i.db = zext nneg i32 %i.cz to i64
  %i.dc = shl nuw nsw i64 %i.db, 32
  %i.dd = or disjoint i64 %i.dc, %i.da            ; 2 uses
  %i.de = mul nuw nsw i64 %i.dd, 10486
  %i.df = lshr i64 %i.de, 20
  %i.dg = and i64 %i.df, 545460846719             ; 2 uses
  %.neg.i12 = mul nsw i64 %i.dg, -100
  %i.dh = add nsw i64 %.neg.i12, %i.dd
  %i.di = shl nsw i64 %i.dh, 16
  %i.dj = add nsw i64 %i.di, %i.dg                ; 2 uses
  %i.dk = mul i64 %i.dj, 103
  %i.dl = lshr i64 %i.dk, 10
  %i.dm = and i64 %i.dl, 4222189076152335         ; 2 uses
  %.neg16.i13 = mul i64 %i.dm, 72057594037927926
  %i.dn = add i64 %.neg16.i13, %i.dj
  %i.do = shl i64 %i.dn, 8
  %i.dp = or disjoint i64 %i.dm, 3472328296227680304
  %i.dq = add i64 %i.dp, %i.do
  %i.dr = mul nuw nsw i32 %i.cv, 10486
  %i.ds = lshr i32 %i.dr, 20                      ; 2 uses
  %narrow.neg.i = mul nsw i32 %i.ds, -100
  %i.dt = add nsw i32 %narrow.neg.i, %i.cv
  %i.du = shl nsw i32 %i.dt, 16
  %i.dv = or disjoint i32 %i.du, %i.ds            ; 2 uses
  %i.dw = mul i32 %i.dv, 103
  %i.dx = lshr i32 %i.dw, 10
  %i.dy = and i32 %i.dx, 983055                   ; 2 uses
  %.neg.i14 = mul i32 %i.dy, 16777206
  %i.dz = add i32 %.neg.i14, %i.dv
  %i.ea = shl i32 %i.dz, 8
  %i.eb = add i32 %i.ea, %i.dy                    ; 3 uses
  %i.ec = icmp ne i32 %i.eb, 0
  tail call void @llvm.assume(i1 %i.ec)
  %i.ed = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.eb, i1 true) ; 2 uses
  %i.ee = and i32 %i.ed, 24
  %i.ef = add i32 %i.eb, 808464432
  %i.eg = lshr i32 %i.ef, %i.ee
  store i32 %i.eg, ptr %1, align 1
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ei = lshr i32 %i.ed, 3
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = sub nsw i64 0, %i.ej
  %i.el = getelementptr inbounds i8, ptr %i.eh, i64 %i.ek ; 2 uses
  store i64 %i.dq, ptr %i.el, align 1
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU32EjPc.exit.i

_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU32EjPc.exit.i: ; preds = %bb.h, %bb.i
  %.022.i = phi ptr [ %i.em, %bb.i ], [ %i.ct, %bb.h ] ; 2 uses
  %.023.i = trunc nuw nsw i64 %.023.in.i to i32   ; 2 uses
  %i.en = udiv i32 %.023.i, 10000
  %i.eo = urem i32 %.023.i, 10000
  %i.ep = zext nneg i32 %i.en to i64
  %i.eq = zext nneg i32 %i.eo to i64
  %i.er = shl nuw nsw i64 %i.eq, 32
  %i.es = or disjoint i64 %i.er, %i.ep            ; 2 uses
  %i.et = mul nuw nsw i64 %i.es, 10486
  %i.eu = lshr i64 %i.et, 20
  %i.ev = and i64 %i.eu, 545460846719             ; 2 uses
  %.neg.i15 = mul nsw i64 %i.ev, -100
  %i.ew = add nsw i64 %.neg.i15, %i.es
  %i.ex = shl nsw i64 %i.ew, 16
  %i.ey = add nsw i64 %i.ex, %i.ev                ; 2 uses
  %i.ez = mul i64 %i.ey, 103
  %i.fa = lshr i64 %i.ez, 10
  %i.fb = and i64 %i.fa, 4222189076152335         ; 2 uses
  %.neg16.i16 = mul i64 %i.fb, 72057594037927926
  %i.fc = add i64 %.neg16.i16, %i.ey
  %i.fd = shl i64 %i.fc, 8
  %i.fe = or disjoint i64 %i.fb, 3472328296227680304
  %i.ff = add i64 %i.fe, %i.fd
  store i64 %i.ff, ptr %.022.i, align 1
  %i.fg = getelementptr inbounds nuw i8, ptr %.022.i, i64 8
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU64EmPc.exit

_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU64EmPc.exit: ; preds = %bb.c, %bb.e, %bb.f, %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU32EjPc.exit.i
  %.0.i = phi ptr [ %i.fg, %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU32EjPc.exit.i ], [ %i.e, %bb.c ], [ %i.ag, %bb.e ], [ %i.bp, %bb.f ] ; 2 uses
  store i8 0, ptr %.0.i, align 1, !tbaa !9
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define noundef nonnull ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferElPc(i64 noundef %0, ptr nofree noundef writeonly captures(ret: address, provenance) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i64 %0, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 45, ptr %1, align 1, !tbaa !9
  %i.c = sub i64 0, %0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.07 = phi ptr [ %i.b, %bb.b ], [ %1, %bb.a ]   ; 10 uses
  %.0 = phi i64 [ %i.c, %bb.b ], [ %0, %bb.a ]    ; 9 uses
  %.not.i = icmp ugt i64 %.0, 4294967295
  br i1 %.not.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = trunc nuw i64 %.0 to i32                 ; 4 uses
  %i.e = icmp samesign ult i64 %.0, 10
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = trunc nuw nsw i64 %.0 to i8
  %i.g = or disjoint i8 %i.f, 48
  store i8 %i.g, ptr %.07, align 1, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %.07, i64 1
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU64EmPc.exit

bb.f:                                             ; preds = %bb.d
  %i.i = icmp samesign ult i64 %.0, 100000000
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = udiv i32 %i.d, 10000
  %i.k = urem i32 %i.d, 10000
  %i.l = zext nneg i32 %i.j to i64
  %i.m = zext nneg i32 %i.k to i64
  %i.n = shl nuw nsw i64 %i.m, 32
  %i.o = or disjoint i64 %i.n, %i.l               ; 2 uses
  %i.p = mul nuw nsw i64 %i.o, 10486
  %i.q = lshr i64 %i.p, 20
  %i.r = and i64 %i.q, 545460846719               ; 2 uses
  %.neg.i = mul nsw i64 %i.r, -100
  %i.s = add nsw i64 %.neg.i, %i.o
  %i.t = shl nsw i64 %i.s, 16
  %i.u = add nsw i64 %i.t, %i.r                   ; 2 uses
  %i.v = mul i64 %i.u, 103
  %i.w = lshr i64 %i.v, 10
  %i.x = and i64 %i.w, 4222189076152335           ; 2 uses
  %.neg16.i = mul i64 %i.x, 72057594037927926
  %i.y = add i64 %.neg16.i, %i.u
  %i.z = shl i64 %i.y, 8
  %i.aa = add i64 %i.z, %i.x                      ; 3 uses
  %i.ab = icmp ne i64 %i.aa, 0
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aa, i1 true) ; 2 uses
  %i.ad = and i64 %i.ac, 56
  %i.ae = add i64 %i.aa, 3472328296227680304
  %i.af = lshr i64 %i.ae, %i.ad
  store i64 %i.af, ptr %.07, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %.07, i64 8
  %i.ah = lshr i64 %i.ac, 3
  %i.ai = sub nsw i64 0, %i.ah
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 %i.ai
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU64EmPc.exit

bb.h:                                             ; preds = %bb.f
  %i.ak = udiv i32 %i.d, 100000000                ; 3 uses
  %i.al = urem i32 %i.d, 100000000                ; 2 uses
  %i.am = udiv i32 %i.al, 10000
  %i.an = urem i32 %i.al, 10000
  %i.ao = zext nneg i32 %i.am to i64
  %i.ap = zext nneg i32 %i.an to i64
  %i.aq = shl nuw nsw i64 %i.ap, 32
  %i.ar = or disjoint i64 %i.aq, %i.ao            ; 2 uses
  %i.as = mul nuw nsw i64 %i.ar, 10486
  %i.at = lshr i64 %i.as, 20
  %i.au = and i64 %i.at, 545460846719             ; 2 uses
  %.neg.i9 = mul nsw i64 %i.au, -100
  %i.av = add nsw i64 %.neg.i9, %i.ar
  %i.aw = shl nsw i64 %i.av, 16
  %i.ax = add nsw i64 %i.aw, %i.au                ; 2 uses
  %i.ay = mul i64 %i.ax, 103
  %i.az = lshr i64 %i.ay, 10
  %i.ba = and i64 %i.az, 4222189076152335         ; 2 uses
  %.neg16.i10 = mul i64 %i.ba, 72057594037927926
  %i.bb = add i64 %.neg16.i10, %i.ax
  %i.bc = shl i64 %i.bb, 8
  %i.bd = or disjoint i64 %i.ba, 3472328296227680304
  %i.be = add i64 %i.bd, %i.bc
  %i.bf = add nsw i32 %i.ak, -10
  %i.bg = ashr i32 %i.bf, 8                       ; 2 uses
  %narrow.i = mul nuw nsw i32 %i.ak, 103
  %i.bh = lshr i32 %narrow.i, 10                  ; 2 uses
  %.neg.i11 = mul nsw i32 %i.bh, -10
  %i.bi = add nsw i32 %.neg.i11, %i.ak
  %i.bj = or disjoint i32 %i.bh, 12336
  %i.bk = shl nsw i32 %i.bi, 8
  %i.bl = add nsw i32 %i.bj, %i.bk
  %i.bm = and i32 %i.bg, 8
  %i.bn = lshr i32 %i.bl, %i.bm
  %i.bo = trunc nuw nsw i32 %i.bn to i16
  store i16 %i.bo, ptr %.07, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %.07, i64 2
  %i.bq = sext i32 %i.bg to i64
  %i.br = getelementptr inbounds i8, ptr %i.bp, i64 %i.bq ; 2 uses
  store i64 %i.be, ptr %i.br, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU64EmPc.exit

bb.i:                                             ; preds = %bb.c
  %i.bt = icmp ult i64 %.0, 10000000000000000
  %i.bu = udiv i64 %.0, 100000000                 ; 2 uses
  %.023.in.i = urem i64 %.0, 100000000
  br i1 %i.bt, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bv = trunc nuw nsw i64 %i.bu to i32          ; 2 uses
  %i.bw = udiv i32 %i.bv, 10000
  %i.bx = urem i32 %i.bv, 10000
  %i.by = zext nneg i32 %i.bw to i64
  %i.bz = zext nneg i32 %i.bx to i64
  %i.ca = shl nuw nsw i64 %i.bz, 32
  %i.cb = or disjoint i64 %i.ca, %i.by            ; 2 uses
  %i.cc = mul nuw nsw i64 %i.cb, 10486
  %i.cd = lshr i64 %i.cc, 20
  %i.ce = and i64 %i.cd, 545460846719             ; 2 uses
  %.neg.i12 = mul nsw i64 %i.ce, -100
  %i.cf = add nsw i64 %.neg.i12, %i.cb
  %i.cg = shl nsw i64 %i.cf, 16
  %i.ch = add nsw i64 %i.cg, %i.ce                ; 2 uses
  %i.ci = mul i64 %i.ch, 103
  %i.cj = lshr i64 %i.ci, 10
  %i.ck = and i64 %i.cj, 4222189076152335         ; 2 uses
  %.neg16.i13 = mul i64 %i.ck, 72057594037927926
  %i.cl = add i64 %.neg16.i13, %i.ch
  %i.cm = shl i64 %i.cl, 8
  %i.cn = add i64 %i.cm, %i.ck                    ; 3 uses
  %i.co = icmp ne i64 %i.cn, 0
  tail call void @llvm.assume(i1 %i.co)
  %i.cp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cn, i1 true) ; 2 uses
  %i.cq = and i64 %i.cp, 56
  %i.cr = add i64 %i.cn, 3472328296227680304
  %i.cs = lshr i64 %i.cr, %i.cq
  store i64 %i.cs, ptr %.07, align 1
  %i.ct = getelementptr inbounds nuw i8, ptr %.07, i64 8
  %i.cu = lshr i64 %i.cp, 3
  %i.cv = sub nsw i64 0, %i.cu
  %i.cw = getelementptr inbounds i8, ptr %i.ct, i64 %i.cv
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU32EjPc.exit.i

bb.k:                                             ; preds = %bb.i
  %i.cx = udiv i64 %.0, 10000000000000000
  %i.cy = trunc nuw nsw i64 %i.cx to i32          ; 2 uses
  %i.cz = urem i64 %i.bu, 100000000
  %i.da = trunc nuw nsw i64 %i.cz to i32          ; 2 uses
  %i.db = udiv i32 %i.da, 10000
  %i.dc = urem i32 %i.da, 10000
  %i.dd = zext nneg i32 %i.db to i64
  %i.de = zext nneg i32 %i.dc to i64
  %i.df = shl nuw nsw i64 %i.de, 32
  %i.dg = or disjoint i64 %i.df, %i.dd            ; 2 uses
  %i.dh = mul nuw nsw i64 %i.dg, 10486
  %i.di = lshr i64 %i.dh, 20
  %i.dj = and i64 %i.di, 545460846719             ; 2 uses
  %.neg.i18 = mul nsw i64 %i.dj, -100
  %i.dk = add nsw i64 %.neg.i18, %i.dg
  %i.dl = shl nsw i64 %i.dk, 16
  %i.dm = add nsw i64 %i.dl, %i.dj                ; 2 uses
  %i.dn = mul i64 %i.dm, 103
  %i.do = lshr i64 %i.dn, 10
  %i.dp = and i64 %i.do, 4222189076152335         ; 2 uses
  %.neg16.i19 = mul i64 %i.dp, 72057594037927926
  %i.dq = add i64 %.neg16.i19, %i.dm
  %i.dr = shl i64 %i.dq, 8
  %i.ds = or disjoint i64 %i.dp, 3472328296227680304
  %i.dt = add i64 %i.ds, %i.dr
  %i.du = mul nuw nsw i32 %i.cy, 10486
  %i.dv = lshr i32 %i.du, 20                      ; 2 uses
  %narrow.neg.i = mul nsw i32 %i.dv, -100
  %i.dw = add nsw i32 %narrow.neg.i, %i.cy
  %i.dx = shl nsw i32 %i.dw, 16
  %i.dy = or disjoint i32 %i.dx, %i.dv            ; 2 uses
  %i.dz = mul i32 %i.dy, 103
  %i.ea = lshr i32 %i.dz, 10
  %i.eb = and i32 %i.ea, 983055                   ; 2 uses
  %.neg.i20 = mul i32 %i.eb, 16777206
  %i.ec = add i32 %.neg.i20, %i.dy
  %i.ed = shl i32 %i.ec, 8
  %i.ee = add i32 %i.ed, %i.eb                    ; 3 uses
  %i.ef = icmp ne i32 %i.ee, 0
  tail call void @llvm.assume(i1 %i.ef)
  %i.eg = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ee, i1 true) ; 2 uses
  %i.eh = and i32 %i.eg, 24
  %i.ei = add i32 %i.ee, 808464432
  %i.ej = lshr i32 %i.ei, %i.eh
  store i32 %i.ej, ptr %.07, align 1
  %i.ek = getelementptr inbounds nuw i8, ptr %.07, i64 4
  %i.el = lshr i32 %i.eg, 3
  %i.em = zext nneg i32 %i.el to i64
  %i.en = sub nsw i64 0, %i.em
  %i.eo = getelementptr inbounds i8, ptr %i.ek, i64 %i.en ; 2 uses
  store i64 %i.dt, ptr %i.eo, align 1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU32EjPc.exit.i

_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU32EjPc.exit.i: ; preds = %bb.j, %bb.k
  %.022.i = phi ptr [ %i.ep, %bb.k ], [ %i.cw, %bb.j ] ; 2 uses
  %.023.i = trunc nuw nsw i64 %.023.in.i to i32   ; 2 uses
  %i.eq = udiv i32 %.023.i, 10000
  %i.er = urem i32 %.023.i, 10000
  %i.es = zext nneg i32 %i.eq to i64
  %i.et = zext nneg i32 %i.er to i64
  %i.eu = shl nuw nsw i64 %i.et, 32
  %i.ev = or disjoint i64 %i.eu, %i.es            ; 2 uses
  %i.ew = mul nuw nsw i64 %i.ev, 10486
  %i.ex = lshr i64 %i.ew, 20
  %i.ey = and i64 %i.ex, 545460846719             ; 2 uses
  %.neg.i21 = mul nsw i64 %i.ey, -100
  %i.ez = add nsw i64 %.neg.i21, %i.ev
  %i.fa = shl nsw i64 %i.ez, 16
  %i.fb = add nsw i64 %i.fa, %i.ey                ; 2 uses
  %i.fc = mul i64 %i.fb, 103
  %i.fd = lshr i64 %i.fc, 10
  %i.fe = and i64 %i.fd, 4222189076152335         ; 2 uses
  %.neg16.i22 = mul i64 %i.fe, 72057594037927926
  %i.ff = add i64 %.neg16.i22, %i.fb
  %i.fg = shl i64 %i.ff, 8
  %i.fh = or disjoint i64 %i.fe, 3472328296227680304
  %i.fi = add i64 %i.fh, %i.fg
  store i64 %i.fi, ptr %.022.i, align 1
  %i.fj = getelementptr inbounds nuw i8, ptr %.022.i, i64 8
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU64EmPc.exit

_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU64EmPc.exit: ; preds = %bb.e, %bb.g, %bb.h, %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU32EjPc.exit.i
  %.0.i = phi ptr [ %i.fj, %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU32EjPc.exit.i ], [ %i.h, %bb.e ], [ %i.aj, %bb.g ], [ %i.bs, %bb.h ] ; 2 uses
  store i8 0, ptr %.0.i, align 1, !tbaa !9
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i64 @_ZN4absl12lts_2025051216numbers_internal17SixDigitsToBufferEdPc(double noundef %0, ptr noundef %1) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = fcmp uno double %0, 0.000000e+00
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 7233902, ptr %1, align 1
  br label %bb.av

bb.c:                                             ; preds = %bb.a
  %i.c = fcmp oeq double %0, 0.000000e+00
  br i1 %i.c, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.d = bitcast double %0 to i64
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 45, ptr %1, align 1, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0138 = phi ptr [ %i.f, %bb.e ], [ %1, %bb.d ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0138, i64 1 ; 2 uses
  store i8 48, ptr %.0138, align 1, !tbaa !9
  store i8 0, ptr %i.g, align 1, !tbaa !9
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = sub i64 %i.h, %i.i
  br label %bb.av

bb.g:                                             ; preds = %bb.c
  %i.k = fcmp olt double %0, 0.000000e+00
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 45, ptr %1, align 1, !tbaa !9
  %i.m = fneg double %0
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1139 = phi ptr [ %i.l, %bb.h ], [ %1, %bb.g ] ; 39 uses
  %.0135 = phi double [ %i.m, %bb.h ], [ %0, %bb.g ] ; 9 uses
  %i.n = fcmp ogt double %.0135, f0x7FEFFFFFFFFFFFFF
  br i1 %i.n, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 6712937, ptr %.1139, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %.1139, i64 3
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %1 to i64
  %i.r = sub i64 %i.p, %i.q
  br label %bb.av

bb.k:                                             ; preds = %bb.i
  %i.s = fcmp ult double %.0135, f0x412E847F00000000
  br i1 %i.s, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = fcmp ult double %.0135, f0x7620427EAD4CFED6 ; 2 uses
  %i.u = fmul nnan double %.0135, f0x0AC8062864AC6F43
  %.085.i = select i1 %i.t, double %.0135, double %i.u ; 3 uses
  %.0.i = select i1 %i.t, i32 5, i32 261          ; 2 uses
  %i.v = fcmp ult double %.085.i, 1.000000e+133   ; 2 uses
  %i.w = or disjoint i32 %.0.i, 128
  %i.x = fmul nnan double %.085.i, 1.000000e-128
  %.186.i = select i1 %i.v, double %.085.i, double %i.x ; 3 uses
  %.1.i = select i1 %i.v, i32 %.0.i, i32 %i.w     ; 2 uses
  %i.y = fcmp ult double %.186.i, 1.000000e+69    ; 2 uses
  %i.z = or disjoint i32 %.1.i, 64
  %i.aa = fmul nnan double %.186.i, f0x32A50FFD44F4A73D
  %.287.i = select i1 %i.y, double %.186.i, double %i.aa ; 3 uses
  %.2.i = select i1 %i.y, i32 %.1.i, i32 %i.z     ; 2 uses
  %i.ab = fcmp ult double %.287.i, f0x479E17B84357691B ; 2 uses
  %i.ac = or disjoint i32 %.2.i, 32
  %i.ad = fmul nnan double %.287.i, 1.000000e-32
  %.388.i = select i1 %i.ab, double %.287.i, double %i.ad ; 3 uses
  %.3.i = select i1 %i.ab, i32 %.2.i, i32 %i.ac   ; 2 uses
  %i.ae = fcmp ult double %.388.i, 1.000000e+21   ; 2 uses
  %i.af = add nuw nsw i32 %.3.i, 16
  %i.ag = fmul nnan double %.388.i, f0x3C9CD2B297D889BC
  %.489.i = select i1 %i.ae, double %.388.i, double %i.ag ; 3 uses
  %.4.i = select i1 %i.ae, i32 %.3.i, i32 %i.af   ; 2 uses
  %i.ah = fcmp ult double %.489.i, 1.000000e+13   ; 2 uses
  %i.ai = add nuw nsw i32 %.4.i, 8
  %i.aj = fmul nnan double %.489.i, 1.000000e-08
  %.590.i = select i1 %i.ah, double %.489.i, double %i.aj ; 3 uses
  %.5.i = select i1 %i.ah, i32 %.4.i, i32 %i.ai   ; 2 uses
  %i.ak = fcmp ult double %.590.i, 1.000000e+09   ; 2 uses
  %i.al = add nuw nsw i32 %.5.i, 4
  %i.am = fmul nnan double %.590.i, 1.000000e-04
  %.691.i = select i1 %i.ak, double %.590.i, double %i.am ; 3 uses
  %.6.i = select i1 %i.ak, i32 %.5.i, i32 %i.al   ; 2 uses
  %i.an = fcmp ult double %.691.i, 1.000000e+07   ; 2 uses
  %i.ao = add nuw nsw i32 %.6.i, 2
  %i.ap = fmul nnan double %.691.i, 1.000000e-02
  %.792.i = select i1 %i.an, double %.691.i, double %i.ap ; 3 uses
  %.7.i = select i1 %i.an, i32 %.6.i, i32 %i.ao   ; 2 uses
  %i.aq = fcmp ult double %.792.i, 1.000000e+06
  br i1 %i.aq, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = add nuw nsw i32 %.7.i, 1
  %i.as = fmul nnan double %.792.i, 1.000000e-01
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  %i.at = fcmp olt double %.0135, 1.000000e-250   ; 2 uses
  %i.au = fmul nnan double %.0135, 1.000000e+256
  %.893.i = select i1 %i.at, double %i.au, double %.0135 ; 3 uses
  %.8.i = select i1 %i.at, i32 -251, i32 5        ; 2 uses
  %i.av = fcmp olt double %.893.i, 1.000000e-122  ; 2 uses
  %i.aw = add nsw i32 %.8.i, -128
  %i.ax = fmul nnan double %.893.i, 1.000000e+128
  %.994.i = select i1 %i.av, double %i.ax, double %.893.i ; 3 uses
  %.9.i = select i1 %i.av, i32 %i.aw, i32 %.8.i   ; 2 uses
  %i.ay = fcmp olt double %.994.i, 1.000000e-58   ; 2 uses
  %i.az = add nsw i32 %.9.i, -64
  %i.ba = fmul nnan double %.994.i, 1.000000e+64
  %.1095.i = select i1 %i.ay, double %i.ba, double %.994.i ; 3 uses
  %.10.i = select i1 %i.ay, i32 %i.az, i32 %.9.i  ; 2 uses
  %i.bb = fcmp olt double %.1095.i, 1.000000e-26  ; 2 uses
  %i.bc = add nsw i32 %.10.i, -32
  %i.bd = fmul nnan double %.1095.i, 1.000000e+32
  %.1196.i = select i1 %i.bb, double %i.bd, double %.1095.i ; 3 uses
  %.11.i = select i1 %i.bb, i32 %i.bc, i32 %.10.i ; 2 uses
  %i.be = fcmp olt double %.1196.i, 1.000000e-10  ; 2 uses
  %i.bf = add nsw i32 %.11.i, -16
  %i.bg = fmul nnan double %.1196.i, 1.000000e+16
  %.1297.i = select i1 %i.be, double %i.bg, double %.1196.i ; 3 uses
  %.12.i = select i1 %i.be, i32 %i.bf, i32 %.11.i ; 2 uses
  %i.bh = fcmp olt double %.1297.i, 1.000000e-02  ; 2 uses
  %i.bi = add nsw i32 %.12.i, -8
  %i.bj = fmul nnan double %.1297.i, 1.000000e+08
  %.1398.i = select i1 %i.bh, double %i.bj, double %.1297.i ; 3 uses
  %.13.i = select i1 %i.bh, i32 %i.bi, i32 %.12.i ; 2 uses
  %i.bk = fcmp olt double %.1398.i, 1.000000e+02  ; 2 uses
  %i.bl = add nsw i32 %.13.i, -4
  %i.bm = fmul nnan double %.1398.i, 1.000000e+04
  %.1499.i = select i1 %i.bk, double %i.bm, double %.1398.i ; 3 uses
  %.14.i = select i1 %i.bk, i32 %i.bl, i32 %.13.i ; 2 uses
  %i.bn = fcmp olt double %.1499.i, 1.000000e+04  ; 2 uses
  %i.bo = add nsw i32 %.14.i, -2
  %i.bp = fmul nnan double %.1499.i, 1.000000e+02
  %.15100.i = select i1 %i.bn, double %i.bp, double %.1499.i ; 3 uses
  %.15.i = select i1 %i.bn, i32 %i.bo, i32 %.14.i ; 2 uses
  %i.bq = fcmp olt double %.15100.i, 1.000000e+05
  br i1 %i.bq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.br = add nsw i32 %.15.i, -1
  %i.bs = fmul nnan double %.15100.i, 1.000000e+01
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %.16101.i = phi double [ %i.as, %bb.m ], [ %.792.i, %bb.l ], [ %i.bs, %bb.o ], [ %.15100.i, %bb.n ]
  %.16.i = phi i32 [ %i.ar, %bb.m ], [ %.7.i, %bb.l ], [ %i.br, %bb.o ], [ %.15.i, %bb.n ] ; 4 uses
  %i.bt = fmul double %.16101.i, 6.553600e+04
  %i.bu = fptoui double %i.bt to i64              ; 3 uses
  %i.bv = and i64 %i.bu, 65535
  %.off.i = add nsw i64 %i.bv, -32767
  %switch.i = icmp ult i64 %.off.i, 2
  br i1 %switch.i, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.bw = lshr i64 %i.bu, 16                      ; 2 uses
  %i.bx = trunc i64 %i.bw to i32                  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.by = call double @frexp(double noundef %.0135, ptr noundef nonnull %i.a) #15
  %i.bz = fmul double %i.by, f0x43E0000000000000
  %i.ca = fptoui double %i.bz to i64
  %i.cb = shl i64 %i.ca, 1                        ; 2 uses
  %i.cc = icmp sgt i32 %.16.i, 5
  %i.cd = shl nuw nsw i64 %i.bw, 1
  %i.ce = and i64 %i.cd, 4294967294
  %i.cf = or disjoint i64 %i.ce, 1                ; 3 uses
  br i1 %i.cc, label %bb.r, label %_ZN4absl12lts_20250512L7PowFiveEmi.exit.i

bb.r:                                             ; preds = %bb.q
  %i.cg = add nsw i32 %.16.i, -5
  %i.ch = tail call fastcc { i64, i64 } @_ZN4absl12lts_20250512L7PowFiveEmi(i64 noundef %i.cf, i32 noundef %i.cg) ; 2 uses
  %i.ci = extractvalue { i64, i64 } %i.ch, 0
  %i.cj = extractvalue { i64, i64 } %i.ch, 1
  br label %bb.s

_ZN4absl12lts_20250512L7PowFiveEmi.exit.i:        ; preds = %bb.q
  %i.ck = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.cl = shl i64 %i.cf, %i.ck
  %i.cm = sub nsw i32 5, %.16.i
  %i.cn = tail call fastcc { i64, i64 } @_ZN4absl12lts_20250512L7PowFiveEmi(i64 noundef %i.cb, i32 noundef %i.cm) ; 2 uses
  %i.co = extractvalue { i64, i64 } %i.cn, 0
  %i.cp = extractvalue { i64, i64 } %i.cn, 1
  br label %bb.s

bb.s:                                             ; preds = %_ZN4absl12lts_20250512L7PowFiveEmi.exit.i, %bb.r
  %.sroa.7.0.i = phi i64 [ 0, %bb.r ], [ %i.cp, %_ZN4absl12lts_20250512L7PowFiveEmi.exit.i ] ; 2 uses
  %.sroa.0116.0.i = phi i64 [ %i.cb, %bb.r ], [ %i.co, %_ZN4absl12lts_20250512L7PowFiveEmi.exit.i ] ; 3 uses
  %.sroa.7122.0.i = phi i64 [ %i.cj, %bb.r ], [ 0, %_ZN4absl12lts_20250512L7PowFiveEmi.exit.i ] ; 2 uses
  %.sroa.0120.0.i = phi i64 [ %i.ci, %bb.r ], [ %i.cl, %_ZN4absl12lts_20250512L7PowFiveEmi.exit.i ] ; 3 uses
  %i.cq = icmp ult i64 %.sroa.0120.0.i, %.sroa.0116.0.i
  br i1 %i.cq, label %_ZStgtImmEbRKSt4pairIT_T0_ES5_.exit.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cr = icmp uge i64 %.sroa.0116.0.i, %.sroa.0120.0.i
  %i.cs = icmp ult i64 %.sroa.7122.0.i, %.sroa.7.0.i
  %or.cond.i = select i1 %i.cr, i1 %i.cs, i1 false
  br i1 %or.cond.i, label %_ZStgtImmEbRKSt4pairIT_T0_ES5_.exit.thread.i, label %_ZStgtImmEbRKSt4pairIT_T0_ES5_.exit.thread127.i

_ZStgtImmEbRKSt4pairIT_T0_ES5_.exit.thread.i:     ; preds = %bb.t, %bb.s
  %i.ct = add i32 %i.bx, 1
  br label %bb.v

_ZStgtImmEbRKSt4pairIT_T0_ES5_.exit.thread127.i:  ; preds = %bb.t
  %i.cu = icmp eq i64 %.sroa.0116.0.i, %.sroa.0120.0.i
  %i.cv = icmp eq i64 %.sroa.7.0.i, %.sroa.7122.0.i
  %i.cw = select i1 %i.cu, i1 %i.cv, i1 false
  br i1 %i.cw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZStgtImmEbRKSt4pairIT_T0_ES5_.exit.thread127.i
  %i.cx = and i32 %i.bx, 1
  %i.cy = add i32 %i.cx, %i.bx
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZStgtImmEbRKSt4pairIT_T0_ES5_.exit.thread127.i, %_ZStgtImmEbRKSt4pairIT_T0_ES5_.exit.thread.i
  %.0102.i = phi i32 [ %i.ct, %_ZStgtImmEbRKSt4pairIT_T0_ES5_.exit.thread.i ], [ %i.cy, %bb.u ], [ %i.bx, %_ZStgtImmEbRKSt4pairIT_T0_ES5_.exit.thread127.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %_ZN4absl12lts_20250512L10SplitToSixEd.exit

bb.w:                                             ; preds = %bb.p
  %i.cz = add i64 %i.bu, 32768
  %i.da = lshr i64 %i.cz, 16
  %i.db = trunc i64 %i.da to i32
  br label %_ZN4absl12lts_20250512L10SplitToSixEd.exit

_ZN4absl12lts_20250512L10SplitToSixEd.exit:       ; preds = %bb.v, %bb.w
  %.1103.i = phi i32 [ %.0102.i, %bb.v ], [ %i.db, %bb.w ] ; 2 uses
  %i.dc = icmp eq i32 %.1103.i, 1000000           ; 2 uses
  %spec.select.i = select i1 %i.dc, i32 100000, i32 %.1103.i ; 2 uses
  %i.dd = zext i1 %i.dc to i32
  %spec.select109.i = add nsw i32 %.16.i, %i.dd   ; 3 uses
  %i.de = udiv i32 %spec.select.i, 10000          ; 3 uses
  %.neg.i = mul i32 %i.de, -10000
  %i.df = add i32 %.neg.i, %spec.select.i         ; 2 uses
  %narrow.i = mul nuw nsw i32 %i.de, 103
  %i.dg = lshr i32 %narrow.i, 10                  ; 2 uses
  %.neg.i.i = mul nuw nsw i32 %i.dg, 246
  %i.dh = add nuw nsw i32 %.neg.i.i, %i.de
  %i.di = shl nuw i32 %i.dh, 8
  %i.dj = udiv i32 %i.df, 100                     ; 3 uses
  %.neg108.i = mul i32 %i.dj, -100
  %i.dk = add i32 %.neg108.i, %i.df               ; 2 uses
  %i.dl = zext nneg i32 %i.dj to i64
  %i.dm = mul nuw nsw i64 %i.dl, 103
  %i.dn = lshr i64 %i.dm, 10
  %i.do = trunc nuw nsw i64 %i.dn to i32          ; 2 uses
  %.neg.i110.i = mul nuw nsw i32 %i.do, 246
  %i.dp = add nuw nsw i32 %.neg.i110.i, %i.dj
  %i.dq = shl i32 %i.dp, 8
  %i.dr = zext i32 %i.dk to i64
  %i.ds = mul nuw nsw i64 %i.dr, 103
  %i.dt = lshr i64 %i.ds, 10
  %i.du = trunc nuw nsw i64 %i.dt to i32          ; 2 uses
  %.neg.i111.i = mul i32 %i.du, 246
  %i.dv = add i32 %.neg.i111.i, %i.dk
  %i.dw = shl i32 %i.dv, 8
  %i.dx = add nuw nsw i32 %i.du, 12336            ; 4 uses
  %i.dy = add i32 %i.dw, %i.dx                    ; 10 uses
  %i.dz = add nuw nsw i32 %i.do, 12336
  %i.ea = add i32 %i.dz, %i.dq                    ; 2 uses
  %i.eb = and i32 %i.ea, 65535
  %.sroa.3.0.insert.ext.i = zext nneg i32 %i.eb to i64 ; 2 uses
  %.sroa.3.0.insert.shift.i = shl nuw i64 %.sroa.3.0.insert.ext.i, 48
  %i.ec = add nuw nsw i32 %i.dg, 12336            ; 2 uses
  %i.ed = add nuw i32 %i.di, %i.ec
  %i.ee = and i32 %i.ed, 65280
  %.sroa.2.0.insert.ext.i = zext nneg i32 %i.ee to i64
  %.sroa.2.0.insert.shift.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0125.0.insert.insert.i = or disjoint i64 %.sroa.3.0.insert.shift.i, %.sroa.2.0.insert.shift.i
  %.sroa.0.sroa.4.0.extract.trunc = trunc i32 %i.ec to i8 ; 8 uses
  %.sroa.0.sroa.12.0.extract.shift = lshr exact i64 %.sroa.0125.0.insert.insert.i, 40 ; 3 uses
  %.sroa.0.sroa.12.0.extract.trunc = trunc nuw i64 %.sroa.0.sroa.12.0.extract.shift to i24 ; 6 uses
  store i8 48, ptr %.1139, align 1, !tbaa !9
  %i.ef = getelementptr inbounds nuw i8, ptr %.1139, i64 1 ; 7 uses
  store i8 46, ptr %i.ef, align 1, !tbaa !9
  switch i32 %spec.select109.i, label %bb.ar [
    i32 5, label %bb.x
    i32 4, label %bb.y
    i32 3, label %bb.ab
    i32 2, label %bb.af
    i32 1, label %bb.ah
    i32 0, label %bb.aj
    i32 -4, label %bb.al
    i32 -3, label %bb.am
    i32 -2, label %bb.an
    i32 -1, label %bb.ao
  ]

bb.x:                                             ; preds = %_ZN4absl12lts_20250512L10SplitToSixEd.exit
  store i8 %.sroa.0.sroa.4.0.extract.trunc, ptr %.1139, align 1
  store i24 %.sroa.0.sroa.12.0.extract.trunc, ptr %i.ef, align 1
  %.sroa.16.4..1139.sroa_idx = getelementptr inbounds nuw i8, ptr %.1139, i64 4
  %.sroa.16.4.extract.trunc149 = trunc i32 %i.dy to i16
  store i16 %.sroa.16.4.extract.trunc149, ptr %.sroa.16.4..1139.sroa_idx, align 1
  %i.eg = getelementptr inbounds nuw i8, ptr %.1139, i64 6 ; 2 uses
  store i8 0, ptr %i.eg, align 1, !tbaa !9
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = ptrtoint ptr %1 to i64
  %i.ej = sub i64 %i.eh, %i.ei
  br label %bb.av

bb.y:                                             ; preds = %_ZN4absl12lts_20250512L10SplitToSixEd.exit
  store i8 %.sroa.0.sroa.4.0.extract.trunc, ptr %.1139, align 1
  store i24 %.sroa.0.sroa.12.0.extract.trunc, ptr %i.ef, align 1
  %.sroa.16.4..1139.sroa_idx150 = getelementptr inbounds nuw i8, ptr %.1139, i64 4
  %.sroa.16.4.extract.trunc152 = trunc i32 %i.dx to i8
  store i8 %.sroa.16.4.extract.trunc152, ptr %.sroa.16.4..1139.sroa_idx150, align 1
  %i.ek = getelementptr inbounds nuw i8, ptr %.1139, i64 5 ; 2 uses
  %i.el = and i32 %i.dy, 65280
  %.not198 = icmp eq i32 %i.el, 12288
  br i1 %.not198, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.sroa.16.9.extract.shift168 = lshr i32 %i.dy, 8
  %.sroa.16.9.extract.trunc169 = trunc i32 %.sroa.16.9.extract.shift168 to i8
  %i.em = getelementptr inbounds nuw i8, ptr %.1139, i64 6
  store i8 46, ptr %i.ek, align 1, !tbaa !9
  %i.en = getelementptr inbounds nuw i8, ptr %.1139, i64 7
  store i8 %.sroa.16.9.extract.trunc169, ptr %i.em, align 1, !tbaa !9
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.2 = phi ptr [ %i.en, %bb.z ], [ %i.ek, %bb.y ] ; 2 uses
  store i8 0, ptr %.2, align 1, !tbaa !9
  %i.eo = ptrtoint ptr %.2 to i64
  %i.ep = ptrtoint ptr %1 to i64
  %i.eq = sub i64 %i.eo, %i.ep
  br label %bb.av

bb.ab:                                            ; preds = %_ZN4absl12lts_20250512L10SplitToSixEd.exit
  store i8 %.sroa.0.sroa.4.0.extract.trunc, ptr %.1139, align 1
  store i24 %.sroa.0.sroa.12.0.extract.trunc, ptr %i.ef, align 1
  %i.er = getelementptr inbounds nuw i8, ptr %.1139, i64 4 ; 2 uses
  %.sroa.4126.8.insert.ext.i = lshr i32 %i.dy, 8  ; 2 uses
  %.sroa.16.9.extract.trunc163 = trunc i32 %.sroa.4126.8.insert.ext.i to i8
  %.sroa.16.9.extract.shift162200 = or i32 %.sroa.4126.8.insert.ext.i, %i.dx
  %.mask = and i32 %.sroa.16.9.extract.shift162200, 255
  %.not = icmp eq i32 %.mask, 48
  br i1 %.not, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.sroa.16.8.extract.trunc157 = trunc i32 %i.dx to i8
  %i.es = getelementptr inbounds nuw i8, ptr %.1139, i64 5
  store i8 46, ptr %i.er, align 1, !tbaa !9
  %i.et = getelementptr inbounds nuw i8, ptr %.1139, i64 6 ; 2 uses
  store i8 %.sroa.16.8.extract.trunc157, ptr %i.es, align 1, !tbaa !9
  %i.eu = and i32 %i.dy, 65280
  %.not197 = icmp eq i32 %i.eu, 12288
  br i1 %.not197, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ev = getelementptr inbounds nuw i8, ptr %.1139, i64 7
  store i8 %.sroa.16.9.extract.trunc163, ptr %i.et, align 1, !tbaa !9
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.ab
  %.3 = phi ptr [ %i.ev, %bb.ad ], [ %i.et, %bb.ac ], [ %i.er, %bb.ab ] ; 2 uses
  store i8 0, ptr %.3, align 1, !tbaa !9
  %i.ew = ptrtoint ptr %.3 to i64
  %i.ex = ptrtoint ptr %1 to i64
  %i.ey = sub i64 %i.ew, %i.ex
  br label %bb.av

bb.af:                                            ; preds = %_ZN4absl12lts_20250512L10SplitToSixEd.exit
  store i8 %.sroa.0.sroa.4.0.extract.trunc, ptr %.1139, align 1
  %.sroa.0.sroa.12.sroa.0.0.extract.trunc = trunc i64 %.sroa.0.sroa.12.0.extract.shift to i16
  store i16 %.sroa.0.sroa.12.sroa.0.0.extract.trunc, ptr %i.ef, align 1
  %i.ez = getelementptr inbounds nuw i8, ptr %.1139, i64 3
  %i.fa = getelementptr inbounds nuw i8, ptr %.1139, i64 4
  store i8 46, ptr %i.ez, align 1, !tbaa !9
  %.sroa.0.sroa.12.sroa.0.2.extract.shift194 = lshr i64 %.sroa.3.0.insert.ext.i, 8
  %.sroa.0.sroa.12.sroa.0.2.extract.trunc = trunc nuw i64 %.sroa.0.sroa.12.sroa.0.2.extract.shift194 to i8
  store i8 %.sroa.0.sroa.12.sroa.0.2.extract.trunc, ptr %i.fa, align 1
  %.sroa.16.7..sroa_idx = getelementptr inbounds nuw i8, ptr %.1139, i64 5
  %.sroa.16.7.extract.trunc = trunc i32 %i.dy to i16
  store i16 %.sroa.16.7.extract.trunc, ptr %.sroa.16.7..sroa_idx, align 1
  %i.fb = getelementptr inbounds nuw i8, ptr %.1139, i64 7
  br label %bb.ag
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051216numbers_internal19safe_strtou128_baseESt17basic_string_viewIcSt11char_traitsIcEEPNS0_7uint128Ei:bb.a

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr { i64, ptr } @_ZN4absl12lts_2025051227StripLeadingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %0 ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = ashr i64 %0, 2                           ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.i.i.i.preheader, label %._crit_edge.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.a
  %i.f = and i64 %0, -4
  %scevgep = getelementptr i8, ptr %1, i64 %i.f   ; 2 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.e
  %.047.i.i.i = phi i64 [ %i.ae, %bb.e ], [ %i.d, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.02946.i.i.i = phi ptr [ %i.ad, %bb.e ], [ %1, %.lr.ph.i.i.i.preheader ] ; 9 uses
  %i.g = load i8, ptr %.02946.i.i.i, align 1, !tbaa !9
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !9
  %i.k = and i8 %i.j, 8
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !9
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !9
  %i.q = and i8 %i.p, 8
  %.not5 = icmp eq i8 %i.q, 0
  br i1 %.not5, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !9
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !9
  %i.w = and i8 %i.v, 8
  %.not6 = icmp eq i8 %i.w, 0
  br i1 %.not6, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit26, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 3
  %i.y = load i8, ptr %i.x, align 1, !tbaa !9
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !9
  %i.ac = and i8 %i.ab, 8
  %.not7 = icmp eq i8 %i.ac, 0
  br i1 %.not7, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit28, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 4
  %i.ae = add nsw i64 %.047.i.i.i, -1
  %i.af = icmp sgt i64 %.047.i.i.i, 1
  br i1 %i.af, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !55

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.e
  %.pre.i.i.i = ptrtoint ptr %scevgep to i64
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.c, %bb.a ]
  %.029.lcssa.i.i.i = phi ptr [ %scevgep, %._crit_edge.loopexit.i.i.i ], [ %1, %bb.a ] ; 5 uses
  %i.ag = sub i64 %i.b, %.pre-phi.i.i.i
  switch i64 %i.ag, label %bb.k [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.ah = load i8, ptr %.029.lcssa.i.i.i, align 1, !tbaa !9
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !9
  %i.al = and i8 %i.ak, 8
  %.not8 = icmp eq i8 %i.al, 0
  br i1 %.not8, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i, i64 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i
  %.1.i.i.i = phi ptr [ %i.am, %bb.g ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.an = load i8, ptr %.1.i.i.i, align 1, !tbaa !9
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !9
  %i.ar = and i8 %i.aq, 8
  %.not9 = icmp eq i8 %i.ar, 0
  br i1 %.not9, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i
  %.2.i.i.i = phi ptr [ %i.as, %bb.i ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.at = load i8, ptr %.2.i.i.i, align 1, !tbaa !9
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !9
  %i.ax = and i8 %i.aw, 8
  %.not10 = icmp eq i8 %i.ax, 0
  br i1 %.not10, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i
  br label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit

_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit: ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 1
  br label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit

_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit26: ; preds = %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 2
  br label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit

_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit28: ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 3
  br label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit

_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit:      ; preds = %.lr.ph.i.i.i, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit26, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit28, %bb.f, %bb.h, %bb.j, %bb.k
  %.028.i.i.i = phi ptr [ %.1.i.i.i, %bb.h ], [ %i.a, %bb.k ], [ %.2.i.i.i, %bb.j ], [ %.029.lcssa.i.i.i, %bb.f ], [ %i.ba, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit28 ], [ %i.az, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit26 ], [ %i.ay, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i, %.lr.ph.i.i.i ]
  %i.bb = ptrtoint ptr %.028.i.i.i to i64
  %i.bc = sub i64 %i.bb, %i.c                     ; 4 uses
  %i.bd = icmp ugt i64 %i.bc, %0
  br i1 %i.bd, label %bb.l, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.l:                                             ; preds = %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i64 noundef %i.bc, i64 noundef %0) #16
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit
  %i.be = sub nuw i64 %0, %i.bc
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %i.bc
  %.fca.0.insert.i = insertvalue { i64, ptr } poison, i64 %i.be, 0
  %.fca.1.insert.i = insertvalue { i64, ptr } %.fca.0.insert.i, ptr %i.bf, 1
  ret { i64, ptr } %.fca.1.insert.i
}

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #8

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare double @frexp(double noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc { i64, i64 } @_ZN4absl12lts_20250512L7PowFiveEmi(i64 noundef range(i64 0, -1) %0, i32 noundef range(i32 0, 512) %1) unnamed_addr #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp samesign ugt i32 %1, 12
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN4absl12lts_20250512L5Mul32ESt4pairImmEj.exit
  %.028 = phi i32 [ %i.af, %_ZN4absl12lts_20250512L5Mul32ESt4pairImmEj.exit ], [ %1, %bb.a ] ; 2 uses
  %.sroa.9.027 = phi i64 [ %.sroa.3.0.i, %_ZN4absl12lts_20250512L5Mul32ESt4pairImmEj.exit ], [ 0, %bb.a ] ; 2 uses
  %.sroa.018.026 = phi i64 [ %.sroa.0.0.i, %_ZN4absl12lts_20250512L5Mul32ESt4pairImmEj.exit ], [ %0, %bb.a ] ; 2 uses
  %i.b = and i64 %.sroa.9.027, 4294967295
  %i.c = lshr i64 %.sroa.9.027, 32                ; 2 uses
  %i.d = and i64 %.sroa.018.026, 4294967295
  %i.e = lshr i64 %.sroa.018.026, 32              ; 2 uses
  %i.f = mul nuw nsw i64 %i.b, 1220703125         ; 2 uses
  %i.g = mul nuw nsw i64 %i.c, 1220703125
  %i.h = mul nuw nsw i64 %i.d, 1220703125         ; 2 uses
  %i.i = mul nuw nsw i64 %i.e, 1220703125
  %i.j = mul i64 %i.c, 5242880000000000000
  %i.k = add i64 %i.j, %i.f                       ; 3 uses
  %i.l = mul i64 %i.e, 5242880000000000000
  %i.m = add i64 %i.l, %i.h
  %i.n = lshr i64 %i.g, 32
  %i.o = add i64 %i.m, %i.n
  %i.p = icmp ult i64 %i.k, %i.f
  %i.q = zext i1 %i.p to i64
  %i.r = add i64 %i.o, %i.q                       ; 4 uses
  %i.s = lshr i64 %i.i, 32
  %i.t = icmp ult i64 %i.r, %i.h
  %i.u = zext i1 %i.t to i64
  %i.v = add nuw nsw i64 %i.s, %i.u               ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_ZN4absl12lts_20250512L5Mul32ESt4pairImmEj.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.x = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.v, i1 true) ; 3 uses
  %i.y = sub nuw nsw i64 64, %i.x                 ; 2 uses
  %i.z = lshr i64 %i.k, %i.y
  %i.aa = shl i64 %i.r, %i.x
  %i.ab = or disjoint i64 %i.z, %i.aa
  %i.ac = lshr i64 %i.r, %i.y
  %i.ad = shl i64 %i.v, %i.x
  %i.ae = or disjoint i64 %i.ac, %i.ad
  br label %_ZN4absl12lts_20250512L5Mul32ESt4pairImmEj.exit

_ZN4absl12lts_20250512L5Mul32ESt4pairImmEj.exit:  ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.i = phi i64 [ %i.ae, %bb.b ], [ %i.r, %.lr.ph ] ; 2 uses
  %.sroa.3.0.i = phi i64 [ %i.ab, %bb.b ], [ %i.k, %.lr.ph ] ; 2 uses
  %i.af = add nsw i32 %.028, -13                  ; 2 uses
  %i.ag = icmp sgt i32 %.028, 25
  br i1 %i.ag, label %.lr.ph, label %._crit_edge, !llvm.loop !56

._crit_edge:                                      ; preds = %_ZN4absl12lts_20250512L5Mul32ESt4pairImmEj.exit, %bb.a
  %.sroa.018.0.lcssa = phi i64 [ %0, %bb.a ], [ %.sroa.0.0.i, %_ZN4absl12lts_20250512L5Mul32ESt4pairImmEj.exit ] ; 2 uses
  %.sroa.9.0.lcssa = phi i64 [ 0, %bb.a ], [ %.sroa.3.0.i, %_ZN4absl12lts_20250512L5Mul32ESt4pairImmEj.exit ] ; 2 uses
  %.0.lcssa = phi i32 [ %1, %bb.a ], [ %i.af, %_ZN4absl12lts_20250512L5Mul32ESt4pairImmEj.exit ]
  %i.ah = zext nneg i32 %.0.lcssa to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN4absl12lts_20250512L7PowFiveEmi.powers_of_five, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.ak = and i64 %.sroa.9.0.lcssa, 4294967295
  %i.al = lshr i64 %.sroa.9.0.lcssa, 32
  %i.am = and i64 %.sroa.018.0.lcssa, 4294967295
  %i.an = lshr i64 %.sroa.018.0.lcssa, 32
  %i.ao = zext i32 %i.aj to i64                   ; 4 uses
  %i.ap = mul nuw i64 %i.ak, %i.ao                ; 2 uses
  %i.aq = mul nuw i64 %i.al, %i.ao                ; 2 uses
  %i.ar = mul nuw i64 %i.am, %i.ao                ; 2 uses
  %i.as = mul nuw i64 %i.an, %i.ao                ; 2 uses
  %i.at = shl i64 %i.aq, 32
  %i.au = add i64 %i.at, %i.ap                    ; 3 uses
  %i.av = shl i64 %i.as, 32
  %i.aw = add i64 %i.av, %i.ar
  %i.ax = lshr i64 %i.aq, 32
  %i.ay = add i64 %i.aw, %i.ax
  %i.az = icmp ult i64 %i.au, %i.ap
  %i.ba = zext i1 %i.az to i64
  %i.bb = add i64 %i.ay, %i.ba                    ; 4 uses
  %i.bc = lshr i64 %i.as, 32
  %i.bd = icmp ult i64 %i.bb, %i.ar
  %i.be = zext i1 %i.bd to i64
  %i.bf = add nuw nsw i64 %i.bc, %i.be            ; 3 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %_ZN4absl12lts_20250512L5Mul32ESt4pairImmEj.exit14, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.bh = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bf, i1 true) ; 3 uses
  %i.bi = sub nuw nsw i64 64, %i.bh               ; 2 uses
  %i.bj = lshr i64 %i.au, %i.bi
  %i.bk = shl i64 %i.bb, %i.bh
  %i.bl = or disjoint i64 %i.bj, %i.bk
  %i.bm = lshr i64 %i.bb, %i.bi
  %i.bn = shl i64 %i.bf, %i.bh
  %i.bo = or disjoint i64 %i.bm, %i.bn
  br label %_ZN4absl12lts_20250512L5Mul32ESt4pairImmEj.exit14

_ZN4absl12lts_20250512L5Mul32ESt4pairImmEj.exit14: ; preds = %._crit_edge, %bb.c
  %.sroa.0.0.i10 = phi i64 [ %i.bo, %bb.c ], [ %i.bb, %._crit_edge ] ; 2 uses
  %.sroa.3.0.i11 = phi i64 [ %i.bl, %bb.c ], [ %i.au, %._crit_edge ]
  %i.bp = freeze i64 %.sroa.3.0.i11               ; 2 uses
  %i.bq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.0.0.i10, i1 false) ; 2 uses
  %i.br = shl i64 %i.bp, %i.bq
  %i.bs = tail call i64 @llvm.fshl.i64(i64 %.sroa.0.0.i10, i64 %i.bp, i64 %i.bq)
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.bs, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.br, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !5, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!11, !13, !15}
!11 = distinct !{!11, !12, !"_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops12_Iter_negateIPFbhEEEET_SA_SA_T0_St26random_access_iterator_tag: argument 0"}
!12 = distinct !{!12, !"_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops12_Iter_negateIPFbhEEEET_SA_SA_T0_St26random_access_iterator_tag"}
!13 = distinct !{!13, !14, !"_ZSt13__find_if_notISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops10_Iter_predIPFbhEEEET_SA_SA_T0_: argument 0"}
!14 = distinct !{!14, !"_ZSt13__find_if_notISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops10_Iter_predIPFbhEEEET_SA_SA_T0_"}
!15 = distinct !{!15, !16, !"_ZSt11find_if_notISt16reverse_iteratorIPKcEPFbhEET_S6_S6_T0_: argument 0"}
!16 = distinct !{!16, !"_ZSt11find_if_notISt16reverse_iteratorIPKcEPFbhEET_S6_S6_T0_"}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!20, !20, i64 0}
!20 = !{!"double", !5, i64 0}
!21 = !{!22, !24, !26}
!22 = distinct !{!22, !23, !"_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops12_Iter_negateIPFbhEEEET_SA_SA_T0_St26random_access_iterator_tag: argument 0"}
!23 = distinct !{!23, !"_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops12_Iter_negateIPFbhEEEET_SA_SA_T0_St26random_access_iterator_tag"}
!24 = distinct !{!24, !25, !"_ZSt13__find_if_notISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops10_Iter_predIPFbhEEEET_SA_SA_T0_: argument 0"}
!25 = distinct !{!25, !"_ZSt13__find_if_notISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops10_Iter_predIPFbhEEEET_SA_SA_T0_"}
!26 = distinct !{!26, !27, !"_ZSt11find_if_notISt16reverse_iteratorIPKcEPFbhEET_S6_S6_T0_: argument 0"}
!27 = distinct !{!27, !"_ZSt11find_if_notISt16reverse_iteratorIPKcEPFbhEET_S6_S6_T0_"}
!28 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!29 = !{!30, !30, i64 0}
!30 = !{!"bool", !5, i64 0}
!31 = distinct !{!31, !18}
!32 = distinct !{!32, !18}
!33 = distinct !{!33, !18}
!34 = distinct !{!34, !18}
!35 = distinct !{!35, !18}
!36 = !{!37, !37, i64 0}
!37 = !{!"short", !5, i64 0}
!38 = distinct !{!38, !18}
!39 = distinct !{!39, !18}
!40 = distinct !{!40, !18}
!41 = distinct !{!41, !18}
!42 = !{!43, !43, i64 0}
!43 = !{!"long", !5, i64 0}
!44 = distinct !{!44, !18}
!45 = distinct !{!45, !18}
!46 = !{!47, !47, i64 0}
!47 = !{!"__int128", !5, i64 0}
!48 = distinct !{!48, !18}
!49 = distinct !{!49, !18}
!50 = distinct !{!50, !18}
!51 = distinct !{!51, !18}
!52 = distinct !{!52, !18}
!53 = distinct !{!53, !18}
!54 = distinct !{!54, !18}
!55 = distinct !{!55, !18}
!56 = distinct !{!56, !18}
end_hunk_1
