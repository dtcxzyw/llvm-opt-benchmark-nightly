Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/numbers?download=true
inline.NumInlined: 554
inline.NumDeleted: 144
begin_hunk_0_@_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferEiPc:bb.a
  %i.bc = or disjoint i64 %i.az, 3472328296227680304
  %i.bd = add i64 %i.bc, %i.bb
  %i.be = add nsw i32 %i.aj, -10
  %i.bf = ashr i32 %i.be, 8                       ; 2 uses
  %narrow.i = mul nuw nsw i32 %i.aj, 103
  %i.bg = lshr i32 %narrow.i, 10                  ; 2 uses
  %.neg.i11 = mul nsw i32 %i.bg, -10
  %i.bh = add nsw i32 %.neg.i11, %i.aj
  %i.bi = or disjoint i32 %i.bg, 12336
  %i.bj = shl nsw i32 %i.bh, 8
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
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit

_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit: ; preds = %bb.d, %bb.f, %bb.g
  %.0.i = phi ptr [ %i.g, %bb.d ], [ %i.ai, %bb.f ], [ %i.br, %bb.g ] ; 2 uses
  store i8 0, ptr %.0.i, align 1, !tbaa !12
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define dso_local noundef nonnull ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferEmPc(i64 noundef %0, ptr nofree noundef writeonly captures(ret: address, provenance) initializes((0, 1)) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
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
  store i8 %i.d, ptr %1, align 1, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit

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
  %i.m = mul nuw nsw i64 %i.l, 5243
  %i.n = lshr i64 %i.m, 19
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
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit

bb.f:                                             ; preds = %bb.d
  %i.ah = udiv i32 %i.a, 100000000                ; 3 uses
  %i.ai = urem i32 %i.a, 100000000                ; 2 uses
  %i.aj = udiv i32 %i.ai, 10000
  %i.ak = urem i32 %i.ai, 10000
  %i.al = zext nneg i32 %i.aj to i64
  %i.am = zext nneg i32 %i.ak to i64
  %i.an = shl nuw nsw i64 %i.am, 32
  %i.ao = or disjoint i64 %i.an, %i.al            ; 2 uses
  %i.ap = mul nuw nsw i64 %i.ao, 5243
  %i.aq = lshr i64 %i.ap, 19
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
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit

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
  %i.bz = mul nuw nsw i64 %i.by, 5243
  %i.ca = lshr i64 %i.bz, 19
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
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i

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
  %i.de = mul nuw nsw i64 %i.dd, 5243
  %i.df = lshr i64 %i.de, 19
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
  %i.dr = mul nuw nsw i32 %i.cv, 5243
  %i.ds = lshr i32 %i.dr, 19                      ; 2 uses
  %narrow.neg.i = mul nsw i32 %i.ds, -100
  %i.dt = add nsw i32 %narrow.neg.i, %i.cv
  %i.du = shl nsw i32 %i.dt, 16
  %i.dv = or disjoint i32 %i.du, %i.ds
  %2 = zext i32 %i.dv to i64                      ; 2 uses
  %3 = mul nuw nsw i64 %2, 103
  %4 = lshr i64 %3, 10
  %5 = and i64 %4, 983055                         ; 2 uses
  %.neg.i14 = mul nsw i64 %5, -10
  %6 = add nsw i64 %.neg.i14, %2
  %7 = shl nsw i64 %6, 8
  %8 = add nsw i64 %7, %5
  %9 = trunc i64 %8 to i32                        ; 3 uses
  %i.dw = icmp ne i32 %9, 0
  tail call void @llvm.assume(i1 %i.dw)
  %i.dx = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %9, i1 true) ; 2 uses
  %i.dy = and i32 %i.dx, 24
  %i.dz = add i32 %9, 808464432
  %i.ea = lshr i32 %i.dz, %i.dy
  store i32 %i.ea, ptr %1, align 1
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ec = lshr i32 %i.dx, 3
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = sub nsw i64 0, %i.ed
  %i.ef = getelementptr inbounds i8, ptr %i.eb, i64 %i.ee ; 2 uses
  store i64 %i.dq, ptr %i.ef, align 1
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i

_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i: ; preds = %bb.h, %bb.i
  %.022.i = phi ptr [ %i.eg, %bb.i ], [ %i.ct, %bb.h ] ; 2 uses
  %.023.i = trunc nuw nsw i64 %.023.in.i to i32   ; 2 uses
  %i.eh = udiv i32 %.023.i, 10000
  %i.ei = urem i32 %.023.i, 10000
  %i.ej = zext nneg i32 %i.eh to i64
  %i.ek = zext nneg i32 %i.ei to i64
  %i.el = shl nuw nsw i64 %i.ek, 32
  %i.em = or disjoint i64 %i.el, %i.ej            ; 2 uses
  %i.en = mul nuw nsw i64 %i.em, 5243
  %i.eo = lshr i64 %i.en, 19
  %i.ep = and i64 %i.eo, 545460846719             ; 2 uses
  %.neg.i15 = mul nsw i64 %i.ep, -100
  %i.eq = add nsw i64 %.neg.i15, %i.em
  %i.er = shl nsw i64 %i.eq, 16
  %i.es = add nsw i64 %i.er, %i.ep                ; 2 uses
  %i.et = mul i64 %i.es, 103
  %i.eu = lshr i64 %i.et, 10
  %i.ev = and i64 %i.eu, 4222189076152335         ; 2 uses
  %.neg16.i16 = mul i64 %i.ev, 72057594037927926
  %i.ew = add i64 %.neg16.i16, %i.es
  %i.ex = shl i64 %i.ew, 8
  %i.ey = or disjoint i64 %i.ev, 3472328296227680304
  %i.ez = add i64 %i.ey, %i.ex
  store i64 %i.ez, ptr %.022.i, align 1
  %i.fa = getelementptr inbounds nuw i8, ptr %.022.i, i64 8
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit

_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit: ; preds = %bb.c, %bb.e, %bb.f, %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i
  %.0.i = phi ptr [ %i.fa, %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i ], [ %i.e, %bb.c ], [ %i.ag, %bb.e ], [ %i.bp, %bb.f ] ; 2 uses
  store i8 0, ptr %.0.i, align 1, !tbaa !12
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define dso_local noundef nonnull ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferElPc(i64 noundef %0, ptr nofree noundef writeonly captures(ret: address, provenance) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i64 %0, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 45, ptr %1, align 1, !tbaa !12
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
  store i8 %i.g, ptr %.07, align 1, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %.07, i64 1
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit

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
  %i.p = mul nuw nsw i64 %i.o, 5243
  %i.q = lshr i64 %i.p, 19
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
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit

bb.h:                                             ; preds = %bb.f
  %i.ak = udiv i32 %i.d, 100000000                ; 3 uses
  %i.al = urem i32 %i.d, 100000000                ; 2 uses
  %i.am = udiv i32 %i.al, 10000
  %i.an = urem i32 %i.al, 10000
  %i.ao = zext nneg i32 %i.am to i64
  %i.ap = zext nneg i32 %i.an to i64
  %i.aq = shl nuw nsw i64 %i.ap, 32
  %i.ar = or disjoint i64 %i.aq, %i.ao            ; 2 uses
  %i.as = mul nuw nsw i64 %i.ar, 5243
  %i.at = lshr i64 %i.as, 19
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
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit

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
  %i.cc = mul nuw nsw i64 %i.cb, 5243
  %i.cd = lshr i64 %i.cc, 19
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
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i

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
  %i.dh = mul nuw nsw i64 %i.dg, 5243
  %i.di = lshr i64 %i.dh, 19
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
  %i.du = mul nuw nsw i32 %i.cy, 5243
  %i.dv = lshr i32 %i.du, 19                      ; 2 uses
  %narrow.neg.i = mul nsw i32 %i.dv, -100
  %i.dw = add nsw i32 %narrow.neg.i, %i.cy
  %i.dx = shl nsw i32 %i.dw, 16
  %i.dy = or disjoint i32 %i.dx, %i.dv
  %2 = zext i32 %i.dy to i64                      ; 2 uses
  %3 = mul nuw nsw i64 %2, 103
  %4 = lshr i64 %3, 10
  %5 = and i64 %4, 983055                         ; 2 uses
  %.neg.i20 = mul nsw i64 %5, -10
  %6 = add nsw i64 %.neg.i20, %2
  %7 = shl nsw i64 %6, 8
  %8 = add nsw i64 %7, %5
  %9 = trunc i64 %8 to i32                        ; 3 uses
  %i.dz = icmp ne i32 %9, 0
  tail call void @llvm.assume(i1 %i.dz)
  %i.ea = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %9, i1 true) ; 2 uses
  %i.eb = and i32 %i.ea, 24
  %i.ec = add i32 %9, 808464432
  %i.ed = lshr i32 %i.ec, %i.eb
  store i32 %i.ed, ptr %.07, align 1
  %i.ee = getelementptr inbounds nuw i8, ptr %.07, i64 4
  %i.ef = lshr i32 %i.ea, 3
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = sub nsw i64 0, %i.eg
  %i.ei = getelementptr inbounds i8, ptr %i.ee, i64 %i.eh ; 2 uses
  store i64 %i.dt, ptr %i.ei, align 1
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i

_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i: ; preds = %bb.j, %bb.k
  %.022.i = phi ptr [ %i.ej, %bb.k ], [ %i.cw, %bb.j ] ; 2 uses
  %.023.i = trunc nuw nsw i64 %.023.in.i to i32   ; 2 uses
  %i.ek = udiv i32 %.023.i, 10000
  %i.el = urem i32 %.023.i, 10000
  %i.em = zext nneg i32 %i.ek to i64
  %i.en = zext nneg i32 %i.el to i64
  %i.eo = shl nuw nsw i64 %i.en, 32
  %i.ep = or disjoint i64 %i.eo, %i.em            ; 2 uses
  %i.eq = mul nuw nsw i64 %i.ep, 5243
  %i.er = lshr i64 %i.eq, 19
  %i.es = and i64 %i.er, 545460846719             ; 2 uses
  %.neg.i21 = mul nsw i64 %i.es, -100
  %i.et = add nsw i64 %.neg.i21, %i.ep
  %i.eu = shl nsw i64 %i.et, 16
  %i.ev = add nsw i64 %i.eu, %i.es                ; 2 uses
  %i.ew = mul i64 %i.ev, 103
  %i.ex = lshr i64 %i.ew, 10
  %i.ey = and i64 %i.ex, 4222189076152335         ; 2 uses
  %.neg16.i22 = mul i64 %i.ey, 72057594037927926
  %i.ez = add i64 %.neg16.i22, %i.ev
  %i.fa = shl i64 %i.ez, 8
  %i.fb = or disjoint i64 %i.ey, 3472328296227680304
  %i.fc = add i64 %i.fb, %i.fa
  store i64 %i.fc, ptr %.022.i, align 1
  %i.fd = getelementptr inbounds nuw i8, ptr %.022.i, i64 8
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit

_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit: ; preds = %bb.e, %bb.g, %bb.h, %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i
  %.0.i = phi ptr [ %i.fd, %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i ], [ %i.h, %bb.e ], [ %i.aj, %bb.g ], [ %i.bs, %bb.h ] ; 2 uses
  store i8 0, ptr %.0.i, align 1, !tbaa !12
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define dso_local noundef nonnull ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferENS0_7uint128EPc(i64 %0, i64 %1, ptr nofree noundef writeonly captures(ret: address, provenance) initializes((0, 1)) %2) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %.not.i45.i = icmp ugt i64 %0, 4294967295
  br i1 %.not.i45.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = trunc nuw i64 %0 to i32                  ; 4 uses
  %i.c = icmp samesign ult i64 %0, 10
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = trunc nuw nsw i64 %0 to i8
  %i.e = or disjoint i8 %i.d, 48
  store i8 %i.e, ptr %2, align 1, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 1
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_114EncodeFullU128ENS0_7uint128EPc.exit

bb.e:                                             ; preds = %bb.c
  %i.g = icmp samesign ult i64 %0, 100000000
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = udiv i32 %i.b, 10000
  %i.i = urem i32 %i.b, 10000
  %i.j = zext nneg i32 %i.h to i64
  %i.k = zext nneg i32 %i.i to i64
  %i.l = shl nuw nsw i64 %i.k, 32
  %i.m = or disjoint i64 %i.l, %i.j               ; 2 uses
  %i.n = mul nuw nsw i64 %i.m, 5243
  %i.o = lshr i64 %i.n, 19
  %i.p = and i64 %i.o, 545460846719               ; 2 uses
  %.neg.i = mul nsw i64 %i.p, -100
  %i.q = add nsw i64 %.neg.i, %i.m
  %i.r = shl nsw i64 %i.q, 16
  %i.s = add nsw i64 %i.r, %i.p                   ; 2 uses
  %i.t = mul i64 %i.s, 103
  %i.u = lshr i64 %i.t, 10
  %i.v = and i64 %i.u, 4222189076152335           ; 2 uses
  %.neg16.i = mul i64 %i.v, 72057594037927926
  %i.w = add i64 %.neg16.i, %i.s
  %i.x = shl i64 %i.w, 8
  %i.y = add i64 %i.x, %i.v                       ; 3 uses
  %i.z = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.y, i1 true) ; 2 uses
  %i.ab = and i64 %i.aa, 56
  %i.ac = add i64 %i.y, 3472328296227680304
  %i.ad = lshr i64 %i.ac, %i.ab
  store i64 %i.ad, ptr %2, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = lshr i64 %i.aa, 3
  %i.ag = sub nsw i64 0, %i.af
  %i.ah = getelementptr inbounds i8, ptr %i.ae, i64 %i.ag
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_114EncodeFullU128ENS0_7uint128EPc.exit

bb.g:                                             ; preds = %bb.e
  %i.ai = udiv i32 %i.b, 100000000                ; 3 uses
  %i.aj = urem i32 %i.b, 100000000                ; 2 uses
  %i.ak = udiv i32 %i.aj, 10000
  %i.al = urem i32 %i.aj, 10000
  %i.am = zext nneg i32 %i.ak to i64
  %i.an = zext nneg i32 %i.al to i64
  %i.ao = shl nuw nsw i64 %i.an, 32
  %i.ap = or disjoint i64 %i.ao, %i.am            ; 2 uses
  %i.aq = mul nuw nsw i64 %i.ap, 5243
  %i.ar = lshr i64 %i.aq, 19
  %i.as = and i64 %i.ar, 545460846719             ; 2 uses
  %.neg.i5 = mul nsw i64 %i.as, -100
  %i.at = add nsw i64 %.neg.i5, %i.ap
  %i.au = shl nsw i64 %i.at, 16
  %i.av = add nsw i64 %i.au, %i.as                ; 2 uses
  %i.aw = mul i64 %i.av, 103
  %i.ax = lshr i64 %i.aw, 10
  %i.ay = and i64 %i.ax, 4222189076152335         ; 2 uses
  %.neg16.i6 = mul i64 %i.ay, 72057594037927926
  %i.az = add i64 %.neg16.i6, %i.av
  %i.ba = shl i64 %i.az, 8
  %i.bb = or disjoint i64 %i.ay, 3472328296227680304
  %i.bc = add i64 %i.bb, %i.ba
  %i.bd = add nsw i32 %i.ai, -10
  %i.be = ashr i32 %i.bd, 8                       ; 2 uses
  %narrow.i = mul nuw nsw i32 %i.ai, 103
  %i.bf = lshr i32 %narrow.i, 10                  ; 2 uses
  %.neg.i7 = mul nsw i32 %i.bf, -10
  %i.bg = add nsw i32 %.neg.i7, %i.ai
  %i.bh = or disjoint i32 %i.bf, 12336
  %i.bi = shl nsw i32 %i.bg, 8
  %i.bj = add nsw i32 %i.bh, %i.bi
  %i.bk = and i32 %i.be, 8
  %i.bl = lshr i32 %i.bj, %i.bk
  %i.bm = trunc nuw nsw i32 %i.bl to i16
  store i16 %i.bm, ptr %2, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.bo = sext i32 %i.be to i64
  %i.bp = getelementptr inbounds i8, ptr %i.bn, i64 %i.bo ; 2 uses
  store i64 %i.bc, ptr %i.bp, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_114EncodeFullU128ENS0_7uint128EPc.exit

bb.h:                                             ; preds = %bb.b
  %i.br = icmp ult i64 %0, 10000000000000000
  %i.bs = udiv i64 %0, 100000000                  ; 2 uses
  %.023.in.i50.i = urem i64 %0, 100000000
  br i1 %i.br, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bt = trunc nuw nsw i64 %i.bs to i32          ; 2 uses
  %i.bu = udiv i32 %i.bt, 10000
  %i.bv = urem i32 %i.bt, 10000
  %i.bw = zext nneg i32 %i.bu to i64
  %i.bx = zext nneg i32 %i.bv to i64
  %i.by = shl nuw nsw i64 %i.bx, 32
  %i.bz = or disjoint i64 %i.by, %i.bw            ; 2 uses
  %i.ca = mul nuw nsw i64 %i.bz, 5243
  %i.cb = lshr i64 %i.ca, 19
  %i.cc = and i64 %i.cb, 545460846719             ; 2 uses
  %.neg.i8 = mul nsw i64 %i.cc, -100
  %i.cd = add nsw i64 %.neg.i8, %i.bz
  %i.ce = shl nsw i64 %i.cd, 16
  %i.cf = add nsw i64 %i.ce, %i.cc                ; 2 uses
  %i.cg = mul i64 %i.cf, 103
  %i.ch = lshr i64 %i.cg, 10
  %i.ci = and i64 %i.ch, 4222189076152335         ; 2 uses
  %.neg16.i9 = mul i64 %i.ci, 72057594037927926
  %i.cj = add i64 %.neg16.i9, %i.cf
  %i.ck = shl i64 %i.cj, 8
  %i.cl = add i64 %i.ck, %i.ci                    ; 3 uses
  %i.cm = icmp ne i64 %i.cl, 0
  tail call void @llvm.assume(i1 %i.cm)
  %i.cn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cl, i1 true) ; 2 uses
  %i.co = and i64 %i.cn, 56
  %i.cp = add i64 %i.cl, 3472328296227680304
  %i.cq = lshr i64 %i.cp, %i.co
  store i64 %i.cq, ptr %2, align 1
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cs = lshr i64 %i.cn, 3
  %i.ct = sub nsw i64 0, %i.cs
  %i.cu = getelementptr inbounds i8, ptr %i.cr, i64 %i.ct
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i52.i

bb.j:                                             ; preds = %bb.h
  %i.cv = udiv i64 %0, 10000000000000000
  %i.cw = trunc nuw nsw i64 %i.cv to i32          ; 2 uses
  %i.cx = urem i64 %i.bs, 100000000
  %i.cy = trunc nuw nsw i64 %i.cx to i32          ; 2 uses
  %i.cz = udiv i32 %i.cy, 10000
  %i.da = urem i32 %i.cy, 10000
  %i.db = zext nneg i32 %i.cz to i64
  %i.dc = zext nneg i32 %i.da to i64
  %i.dd = shl nuw nsw i64 %i.dc, 32
  %i.de = or disjoint i64 %i.dd, %i.db            ; 2 uses
  %i.df = mul nuw nsw i64 %i.de, 5243
  %i.dg = lshr i64 %i.df, 19
  %i.dh = and i64 %i.dg, 545460846719             ; 2 uses
  %.neg.i14 = mul nsw i64 %i.dh, -100
  %i.di = add nsw i64 %.neg.i14, %i.de
  %i.dj = shl nsw i64 %i.di, 16
  %i.dk = add nsw i64 %i.dj, %i.dh                ; 2 uses
  %i.dl = mul i64 %i.dk, 103
  %i.dm = lshr i64 %i.dl, 10
  %i.dn = and i64 %i.dm, 4222189076152335         ; 2 uses
  %.neg16.i15 = mul i64 %i.dn, 72057594037927926
  %i.do = add i64 %.neg16.i15, %i.dk
  %i.dp = shl i64 %i.do, 8
  %i.dq = or disjoint i64 %i.dn, 3472328296227680304
  %i.dr = add i64 %i.dq, %i.dp
  %i.ds = mul nuw nsw i32 %i.cw, 5243
  %i.dt = lshr i32 %i.ds, 19                      ; 2 uses
  %narrow.neg.i = mul nsw i32 %i.dt, -100
  %i.du = add nsw i32 %narrow.neg.i, %i.cw
  %i.dv = shl nsw i32 %i.du, 16
  %i.dw = or disjoint i32 %i.dv, %i.dt
  %3 = zext i32 %i.dw to i64                      ; 2 uses
  %4 = mul nuw nsw i64 %3, 103
  %5 = lshr i64 %4, 10
  %6 = and i64 %5, 983055                         ; 2 uses
  %.neg.i16 = mul nsw i64 %6, -10
  %7 = add nsw i64 %.neg.i16, %3
  %8 = shl nsw i64 %7, 8
  %9 = add nsw i64 %8, %6
  %10 = trunc i64 %9 to i32                       ; 3 uses
  %i.dx = icmp ne i32 %10, 0
  tail call void @llvm.assume(i1 %i.dx)
  %i.dy = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %10, i1 true) ; 2 uses
  %i.dz = and i32 %i.dy, 24
  %i.ea = add i32 %10, 808464432
  %i.eb = lshr i32 %i.ea, %i.dz
  store i32 %i.eb, ptr %2, align 1
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ed = lshr i32 %i.dy, 3
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = sub nsw i64 0, %i.ee
  %i.eg = getelementptr inbounds i8, ptr %i.ec, i64 %i.ef ; 2 uses
  store i64 %i.dr, ptr %i.eg, align 1
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i52.i

_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i52.i: ; preds = %bb.i, %bb.j
  %.022.i49.i = phi ptr [ %i.eh, %bb.j ], [ %i.cu, %bb.i ] ; 2 uses
  %.023.i51.i = trunc nuw nsw i64 %.023.in.i50.i to i32 ; 2 uses
  %i.ei = udiv i32 %.023.i51.i, 10000
  %i.ej = urem i32 %.023.i51.i, 10000
  %i.ek = zext nneg i32 %i.ei to i64
  %i.el = zext nneg i32 %i.ej to i64
  %i.em = shl nuw nsw i64 %i.el, 32
  %i.en = or disjoint i64 %i.em, %i.ek            ; 2 uses
  %i.eo = mul nuw nsw i64 %i.en, 5243
  %i.ep = lshr i64 %i.eo, 19
  %i.eq = and i64 %i.ep, 545460846719             ; 2 uses
  %.neg.i17 = mul nsw i64 %i.eq, -100
  %i.er = add nsw i64 %.neg.i17, %i.en
  %i.es = shl nsw i64 %i.er, 16
  %i.et = add nsw i64 %i.es, %i.eq                ; 2 uses
  %i.eu = mul i64 %i.et, 103
  %i.ev = lshr i64 %i.eu, 10
  %i.ew = and i64 %i.ev, 4222189076152335         ; 2 uses
  %.neg16.i18 = mul i64 %i.ew, 72057594037927926
  %i.ex = add i64 %.neg16.i18, %i.et
  %i.ey = shl i64 %i.ex, 8
  %i.ez = or disjoint i64 %i.ew, 3472328296227680304
  %i.fa = add i64 %i.ez, %i.ey
  store i64 %i.fa, ptr %.022.i49.i, align 1
  %i.fb = getelementptr inbounds nuw i8, ptr %.022.i49.i, i64 8
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_114EncodeFullU128ENS0_7uint128EPc.exit

bb.k:                                             ; preds = %bb.a
  %i.fc = zext i64 %1 to i128
  %i.fd = shl nuw i128 %i.fc, 64
  %i.fe = zext i64 %0 to i128
  %i.ff = or disjoint i128 %i.fd, %i.fe           ; 3 uses
  %.frozen = freeze i128 %i.ff                    ; 2 uses
  %i.fg = udiv i128 %.frozen, 10000000000000000   ; 2 uses
  %i.fh = mul i128 %i.fg, 10000000000000000
  %.decomposed = sub i128 %.frozen, %i.fh
  %i.fi = trunc nuw nsw i128 %.decomposed to i64  ; 4 uses
  %i.fj = urem i128 %i.fg, 10000000000000000      ; 3 uses
  %i.fk = trunc nuw nsw i128 %i.fj to i64         ; 5 uses
  %i.fl = icmp ult i128 %i.ff, 100000000000000000000000000000000
  br i1 %i.fl, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %.not.i35.i = icmp samesign ugt i64 %i.fk, 4294967295
  br i1 %.not.i35.i, label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i42.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fm = trunc nuw i128 %i.fj to i32             ; 6 uses
  %i.fn = icmp ult i32 %i.fm, 10
  br i1 %i.fn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.fo = trunc nuw i128 %i.fj to i8
  %i.fp = or disjoint i8 %i.fo, 48
  store i8 %i.fp, ptr %2, align 1, !tbaa !12
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 1
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit44.i

bb.o:                                             ; preds = %bb.m
  %i.fr = icmp ult i32 %i.fm, 100000000
  br i1 %i.fr, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.fs = udiv i32 %i.fm, 10000
  %i.ft = urem i32 %i.fm, 10000
  %i.fu = zext nneg i32 %i.fs to i64
  %i.fv = zext nneg i32 %i.ft to i64
  %i.fw = shl nuw nsw i64 %i.fv, 32
  %i.fx = or disjoint i64 %i.fw, %i.fu            ; 2 uses
  %i.fy = mul nuw nsw i64 %i.fx, 5243
  %i.fz = lshr i64 %i.fy, 19
  %i.ga = and i64 %i.fz, 545460846719             ; 2 uses
  %.neg.i25 = mul nsw i64 %i.ga, -100
  %i.gb = add nsw i64 %.neg.i25, %i.fx
  %i.gc = shl nsw i64 %i.gb, 16
  %i.gd = add nsw i64 %i.gc, %i.ga                ; 2 uses
  %i.ge = mul i64 %i.gd, 103
  %i.gf = lshr i64 %i.ge, 10
  %i.gg = and i64 %i.gf, 4222189076152335         ; 2 uses
  %.neg16.i26 = mul i64 %i.gg, 72057594037927926
  %i.gh = add i64 %.neg16.i26, %i.gd
  %i.gi = shl i64 %i.gh, 8
  %i.gj = add i64 %i.gi, %i.gg                    ; 3 uses
  %i.gk = icmp ne i64 %i.gj, 0
  tail call void @llvm.assume(i1 %i.gk)
  %i.gl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.gj, i1 true) ; 2 uses
  %i.gm = and i64 %i.gl, 56
  %i.gn = add i64 %i.gj, 3472328296227680304
  %i.go = lshr i64 %i.gn, %i.gm
  store i64 %i.go, ptr %2, align 1
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gq = lshr i64 %i.gl, 3
  %i.gr = sub nsw i64 0, %i.gq
  %i.gs = getelementptr inbounds i8, ptr %i.gp, i64 %i.gr
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit44.i

bb.q:                                             ; preds = %bb.o
  %i.gt = udiv i32 %i.fm, 100000000               ; 3 uses
  %i.gu = urem i32 %i.fm, 100000000               ; 2 uses
  %i.gv = udiv i32 %i.gu, 10000
  %i.gw = urem i32 %i.gu, 10000
  %i.gx = zext nneg i32 %i.gv to i64
  %i.gy = zext nneg i32 %i.gw to i64
  %i.gz = shl nuw nsw i64 %i.gy, 32
  %i.ha = or disjoint i64 %i.gz, %i.gx            ; 2 uses
  %i.hb = mul nuw nsw i64 %i.ha, 5243
  %i.hc = lshr i64 %i.hb, 19
  %i.hd = and i64 %i.hc, 545460846719             ; 2 uses
  %.neg.i27 = mul nsw i64 %i.hd, -100
  %i.he = add nsw i64 %.neg.i27, %i.ha
  %i.hf = shl nsw i64 %i.he, 16
  %i.hg = add nsw i64 %i.hf, %i.hd                ; 2 uses
  %i.hh = mul i64 %i.hg, 103
  %i.hi = lshr i64 %i.hh, 10
  %i.hj = and i64 %i.hi, 4222189076152335         ; 2 uses
  %.neg16.i28 = mul i64 %i.hj, 72057594037927926
  %i.hk = add i64 %.neg16.i28, %i.hg
  %i.hl = shl i64 %i.hk, 8
  %i.hm = or disjoint i64 %i.hj, 3472328296227680304
  %i.hn = add i64 %i.hm, %i.hl
  %i.ho = add nsw i32 %i.gt, -10
  %i.hp = ashr i32 %i.ho, 8                       ; 2 uses
  %narrow.i29 = mul nuw nsw i32 %i.gt, 103
  %i.hq = lshr i32 %narrow.i29, 10                ; 2 uses
  %.neg.i30 = mul nsw i32 %i.hq, -10
  %i.hr = add nsw i32 %.neg.i30, %i.gt
  %i.hs = or disjoint i32 %i.hq, 12336
  %i.ht = shl nsw i32 %i.hr, 8
  %i.hu = add nsw i32 %i.hs, %i.ht
  %i.hv = and i32 %i.hp, 8
  %i.hw = lshr i32 %i.hu, %i.hv
  %i.hx = trunc nuw nsw i32 %i.hw to i16
  store i16 %i.hx, ptr %2, align 1
  %i.hy = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.hz = sext i32 %i.hp to i64
  %i.ia = getelementptr inbounds i8, ptr %i.hy, i64 %i.hz ; 2 uses
  store i64 %i.hn, ptr %i.ia, align 1
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit44.i

_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i42.i: ; preds = %bb.l
  %i.ic = udiv i64 %i.fk, 100000000
  %i.id = trunc nuw nsw i64 %i.ic to i32
  %i.ie = tail call fastcc noundef i64 @_ZN4absl12lts_2026052612_GLOBAL__N_118PrepareEightDigitsEj(i32 noundef %i.id) ; 3 uses
  %i.if = icmp ne i64 %i.ie, 0
  tail call void @llvm.assume(i1 %i.if)
  %i.ig = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ie, i1 true) ; 2 uses
  %i.ih = and i64 %i.ig, 56
  %i.ii = add i64 %i.ie, 3472328296227680304
  %i.ij = lshr i64 %i.ii, %i.ih
  store i64 %i.ij, ptr %2, align 1
  %i.ik = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.il = lshr i64 %i.ig, 3
  %i.im = sub nsw i64 0, %i.il
  %i.in = getelementptr inbounds i8, ptr %i.ik, i64 %i.im ; 2 uses
  %.023.in.i40.i = urem i64 %i.fk, 100000000
  %.023.i41.i = trunc nuw nsw i64 %.023.in.i40.i to i32 ; 2 uses
  %i.io = udiv i32 %.023.i41.i, 10000
  %i.ip = urem i32 %.023.i41.i, 10000
  %i.iq = zext nneg i32 %i.io to i64
  %i.ir = zext nneg i32 %i.ip to i64
  %i.is = shl nuw nsw i64 %i.ir, 32
  %i.it = or disjoint i64 %i.is, %i.iq            ; 2 uses
  %i.iu = mul nuw nsw i64 %i.it, 5243
  %i.iv = lshr i64 %i.iu, 19
  %i.iw = and i64 %i.iv, 545460846719             ; 2 uses
  %.neg.i37 = mul nsw i64 %i.iw, -100
  %i.ix = add nsw i64 %.neg.i37, %i.it
  %i.iy = shl nsw i64 %i.ix, 16
  %i.iz = add nsw i64 %i.iy, %i.iw                ; 2 uses
  %i.ja = mul i64 %i.iz, 103
  %i.jb = lshr i64 %i.ja, 10
  %i.jc = and i64 %i.jb, 4222189076152335         ; 2 uses
  %.neg16.i38 = mul i64 %i.jc, 72057594037927926
  %i.jd = add i64 %.neg16.i38, %i.iz
  %i.je = shl i64 %i.jd, 8
  %i.jf = or disjoint i64 %i.jc, 3472328296227680304
  %i.jg = add i64 %i.jf, %i.je
  store i64 %i.jg, ptr %i.in, align 1
  %i.jh = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit44.i

_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit44.i: ; preds = %bb.n, %bb.p, %bb.q, %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i42.i
  %.0.i38.i = phi ptr [ %i.jh, %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i42.i ], [ %i.fq, %bb.n ], [ %i.gs, %bb.p ], [ %i.ib, %bb.q ] ; 2 uses
  %i.ji = udiv i64 %i.fi, 100000000
  %i.jj = urem i64 %i.fi, 100000000
  %i.jk = trunc nuw nsw i64 %i.ji to i32
  %i.jl = insertelement <2 x i32> poison, i32 %i.jk, i64 0
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferENS0_7uint128EPc:bb.a
  %.0.i = phi ptr [ %i.bq, %bb.g ], [ %i.fb, %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i52.i ], [ %i.f, %bb.d ], [ %i.ah, %bb.f ], [ %i.kj, %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit44.i ], [ %i.nu, %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit.i ] ; 2 uses
  store i8 0, ptr %.0.i, align 1, !tbaa !12
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define dso_local noundef nonnull ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferENS0_6int128EPc(i128 %0, ptr nofree noundef writeonly captures(ret: address, provenance) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = trunc i128 %0 to i64
  %i.b = lshr i128 %0, 64
  %i.c = trunc nuw i128 %i.b to i64
  %i.d = icmp slt i128 %0, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 45, ptr %1, align 1, !tbaa !12
  %.neg3.i = sub i128 0, %0                       ; 2 uses
  %i.f = trunc i128 %.neg3.i to i64
  %i.g = lshr i128 %.neg3.i, 64
  %i.h = trunc nuw i128 %i.g to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.6.0 = phi i64 [ %i.h, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.070.0 = phi i64 [ %i.f, %bb.b ], [ %i.a, %bb.a ] ; 10 uses
  %.0 = phi ptr [ %i.e, %bb.b ], [ %1, %bb.a ]    ; 22 uses
  %i.i = icmp eq i64 %.sroa.6.0, 0
  br i1 %i.i, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %.not.i45.i = icmp ugt i64 %.sroa.070.0, 4294967295
  br i1 %.not.i45.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = trunc nuw i64 %.sroa.070.0 to i32        ; 4 uses
  %i.k = icmp samesign ult i64 %.sroa.070.0, 10
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = trunc nuw nsw i64 %.sroa.070.0 to i8
  %i.m = or disjoint i8 %i.l, 48
  store i8 %i.m, ptr %.0, align 1, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_114EncodeFullU128ENS0_7uint128EPc.exit

bb.g:                                             ; preds = %bb.e
  %i.o = icmp samesign ult i64 %.sroa.070.0, 100000000
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = udiv i32 %i.j, 10000
  %i.q = urem i32 %i.j, 10000
  %i.r = zext nneg i32 %i.p to i64
  %i.s = zext nneg i32 %i.q to i64
  %i.t = shl nuw nsw i64 %i.s, 32
  %i.u = or disjoint i64 %i.t, %i.r               ; 2 uses
  %i.v = mul nuw nsw i64 %i.u, 5243
  %i.w = lshr i64 %i.v, 19
  %i.x = and i64 %i.w, 545460846719               ; 2 uses
  %.neg.i11 = mul nsw i64 %i.x, -100
  %i.y = add nsw i64 %.neg.i11, %i.u
  %i.z = shl nsw i64 %i.y, 16
  %i.aa = add nsw i64 %i.z, %i.x                  ; 2 uses
  %i.ab = mul i64 %i.aa, 103
  %i.ac = lshr i64 %i.ab, 10
  %i.ad = and i64 %i.ac, 4222189076152335         ; 2 uses
  %.neg16.i = mul i64 %i.ad, 72057594037927926
  %i.ae = add i64 %.neg16.i, %i.aa
  %i.af = shl i64 %i.ae, 8
  %i.ag = add i64 %i.af, %i.ad                    ; 3 uses
  %i.ah = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ag, i1 true) ; 2 uses
  %i.aj = and i64 %i.ai, 56
  %i.ak = add i64 %i.ag, 3472328296227680304
  %i.al = lshr i64 %i.ak, %i.aj
  store i64 %i.al, ptr %.0, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.an = lshr i64 %i.ai, 3
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = getelementptr inbounds i8, ptr %i.am, i64 %i.ao
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_114EncodeFullU128ENS0_7uint128EPc.exit

bb.i:                                             ; preds = %bb.g
  %i.aq = udiv i32 %i.j, 100000000                ; 3 uses
  %i.ar = urem i32 %i.j, 100000000                ; 2 uses
  %i.as = udiv i32 %i.ar, 10000
  %i.at = urem i32 %i.ar, 10000
  %i.au = zext nneg i32 %i.as to i64
  %i.av = zext nneg i32 %i.at to i64
  %i.aw = shl nuw nsw i64 %i.av, 32
  %i.ax = or disjoint i64 %i.aw, %i.au            ; 2 uses
  %i.ay = mul nuw nsw i64 %i.ax, 5243
  %i.az = lshr i64 %i.ay, 19
  %i.ba = and i64 %i.az, 545460846719             ; 2 uses
  %.neg.i12 = mul nsw i64 %i.ba, -100
  %i.bb = add nsw i64 %.neg.i12, %i.ax
  %i.bc = shl nsw i64 %i.bb, 16
  %i.bd = add nsw i64 %i.bc, %i.ba                ; 2 uses
  %i.be = mul i64 %i.bd, 103
  %i.bf = lshr i64 %i.be, 10
  %i.bg = and i64 %i.bf, 4222189076152335         ; 2 uses
  %.neg16.i13 = mul i64 %i.bg, 72057594037927926
  %i.bh = add i64 %.neg16.i13, %i.bd
  %i.bi = shl i64 %i.bh, 8
  %i.bj = or disjoint i64 %i.bg, 3472328296227680304
  %i.bk = add i64 %i.bj, %i.bi
  %i.bl = add nsw i32 %i.aq, -10
  %i.bm = ashr i32 %i.bl, 8                       ; 2 uses
  %narrow.i = mul nuw nsw i32 %i.aq, 103
  %i.bn = lshr i32 %narrow.i, 10                  ; 2 uses
  %.neg.i14 = mul nsw i32 %i.bn, -10
  %i.bo = add nsw i32 %.neg.i14, %i.aq
  %i.bp = or disjoint i32 %i.bn, 12336
  %i.bq = shl nsw i32 %i.bo, 8
  %i.br = add nsw i32 %i.bp, %i.bq
  %i.bs = and i32 %i.bm, 8
  %i.bt = lshr i32 %i.br, %i.bs
  %i.bu = trunc nuw nsw i32 %i.bt to i16
  store i16 %i.bu, ptr %.0, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.bw = sext i32 %i.bm to i64
  %i.bx = getelementptr inbounds i8, ptr %i.bv, i64 %i.bw ; 2 uses
  store i64 %i.bk, ptr %i.bx, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_114EncodeFullU128ENS0_7uint128EPc.exit

bb.j:                                             ; preds = %bb.d
  %i.bz = icmp ult i64 %.sroa.070.0, 10000000000000000
  %i.ca = udiv i64 %.sroa.070.0, 100000000        ; 2 uses
  %.023.in.i50.i = urem i64 %.sroa.070.0, 100000000
  br i1 %i.bz, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cb = trunc nuw nsw i64 %i.ca to i32          ; 2 uses
  %i.cc = udiv i32 %i.cb, 10000
  %i.cd = urem i32 %i.cb, 10000
  %i.ce = zext nneg i32 %i.cc to i64
  %i.cf = zext nneg i32 %i.cd to i64
  %i.cg = shl nuw nsw i64 %i.cf, 32
  %i.ch = or disjoint i64 %i.cg, %i.ce            ; 2 uses
  %i.ci = mul nuw nsw i64 %i.ch, 5243
  %i.cj = lshr i64 %i.ci, 19
  %i.ck = and i64 %i.cj, 545460846719             ; 2 uses
  %.neg.i15 = mul nsw i64 %i.ck, -100
  %i.cl = add nsw i64 %.neg.i15, %i.ch
  %i.cm = shl nsw i64 %i.cl, 16
  %i.cn = add nsw i64 %i.cm, %i.ck                ; 2 uses
  %i.co = mul i64 %i.cn, 103
  %i.cp = lshr i64 %i.co, 10
  %i.cq = and i64 %i.cp, 4222189076152335         ; 2 uses
  %.neg16.i16 = mul i64 %i.cq, 72057594037927926
  %i.cr = add i64 %.neg16.i16, %i.cn
  %i.cs = shl i64 %i.cr, 8
  %i.ct = add i64 %i.cs, %i.cq                    ; 3 uses
  %i.cu = icmp ne i64 %i.ct, 0
  tail call void @llvm.assume(i1 %i.cu)
  %i.cv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ct, i1 true) ; 2 uses
  %i.cw = and i64 %i.cv, 56
  %i.cx = add i64 %i.ct, 3472328296227680304
  %i.cy = lshr i64 %i.cx, %i.cw
  store i64 %i.cy, ptr %.0, align 1
  %i.cz = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.da = lshr i64 %i.cv, 3
  %i.db = sub nsw i64 0, %i.da
  %i.dc = getelementptr inbounds i8, ptr %i.cz, i64 %i.db
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i52.i

bb.l:                                             ; preds = %bb.j
  %i.dd = udiv i64 %.sroa.070.0, 10000000000000000
  %i.de = trunc nuw nsw i64 %i.dd to i32          ; 2 uses
  %i.df = urem i64 %i.ca, 100000000
  %i.dg = trunc nuw nsw i64 %i.df to i32          ; 2 uses
  %i.dh = udiv i32 %i.dg, 10000
  %i.di = urem i32 %i.dg, 10000
  %i.dj = zext nneg i32 %i.dh to i64
  %i.dk = zext nneg i32 %i.di to i64
  %i.dl = shl nuw nsw i64 %i.dk, 32
  %i.dm = or disjoint i64 %i.dl, %i.dj            ; 2 uses
  %i.dn = mul nuw nsw i64 %i.dm, 5243
  %i.do = lshr i64 %i.dn, 19
  %i.dp = and i64 %i.do, 545460846719             ; 2 uses
  %.neg.i21 = mul nsw i64 %i.dp, -100
  %i.dq = add nsw i64 %.neg.i21, %i.dm
  %i.dr = shl nsw i64 %i.dq, 16
  %i.ds = add nsw i64 %i.dr, %i.dp                ; 2 uses
  %i.dt = mul i64 %i.ds, 103
  %i.du = lshr i64 %i.dt, 10
  %i.dv = and i64 %i.du, 4222189076152335         ; 2 uses
  %.neg16.i22 = mul i64 %i.dv, 72057594037927926
  %i.dw = add i64 %.neg16.i22, %i.ds
  %i.dx = shl i64 %i.dw, 8
  %i.dy = or disjoint i64 %i.dv, 3472328296227680304
  %i.dz = add i64 %i.dy, %i.dx
  %i.ea = mul nuw nsw i32 %i.de, 5243
  %i.eb = lshr i32 %i.ea, 19                      ; 2 uses
  %narrow.neg.i = mul nsw i32 %i.eb, -100
  %i.ec = add nsw i32 %narrow.neg.i, %i.de
  %i.ed = shl nsw i32 %i.ec, 16
  %i.ee = or disjoint i32 %i.ed, %i.eb
  %2 = zext i32 %i.ee to i64                      ; 2 uses
  %3 = mul nuw nsw i64 %2, 103
  %4 = lshr i64 %3, 10
  %5 = and i64 %4, 983055                         ; 2 uses
  %.neg.i23 = mul nsw i64 %5, -10
  %6 = add nsw i64 %.neg.i23, %2
  %7 = shl nsw i64 %6, 8
  %8 = add nsw i64 %7, %5
  %9 = trunc i64 %8 to i32                        ; 3 uses
  %i.ef = icmp ne i32 %9, 0
  tail call void @llvm.assume(i1 %i.ef)
  %i.eg = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %9, i1 true) ; 2 uses
  %i.eh = and i32 %i.eg, 24
  %i.ei = add i32 %9, 808464432
  %i.ej = lshr i32 %i.ei, %i.eh
  store i32 %i.ej, ptr %.0, align 1
  %i.ek = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.el = lshr i32 %i.eg, 3
  %i.em = zext nneg i32 %i.el to i64
  %i.en = sub nsw i64 0, %i.em
  %i.eo = getelementptr inbounds i8, ptr %i.ek, i64 %i.en ; 2 uses
  store i64 %i.dz, ptr %i.eo, align 1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i52.i

_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i52.i: ; preds = %bb.k, %bb.l
  %.022.i49.i = phi ptr [ %i.ep, %bb.l ], [ %i.dc, %bb.k ] ; 2 uses
  %.023.i51.i = trunc nuw nsw i64 %.023.in.i50.i to i32 ; 2 uses
  %i.eq = udiv i32 %.023.i51.i, 10000
  %i.er = urem i32 %.023.i51.i, 10000
  %i.es = zext nneg i32 %i.eq to i64
  %i.et = zext nneg i32 %i.er to i64
  %i.eu = shl nuw nsw i64 %i.et, 32
  %i.ev = or disjoint i64 %i.eu, %i.es            ; 2 uses
  %i.ew = mul nuw nsw i64 %i.ev, 5243
  %i.ex = lshr i64 %i.ew, 19
  %i.ey = and i64 %i.ex, 545460846719             ; 2 uses
  %.neg.i24 = mul nsw i64 %i.ey, -100
  %i.ez = add nsw i64 %.neg.i24, %i.ev
  %i.fa = shl nsw i64 %i.ez, 16
  %i.fb = add nsw i64 %i.fa, %i.ey                ; 2 uses
  %i.fc = mul i64 %i.fb, 103
  %i.fd = lshr i64 %i.fc, 10
  %i.fe = and i64 %i.fd, 4222189076152335         ; 2 uses
  %.neg16.i25 = mul i64 %i.fe, 72057594037927926
  %i.ff = add i64 %.neg16.i25, %i.fb
  %i.fg = shl i64 %i.ff, 8
  %i.fh = or disjoint i64 %i.fe, 3472328296227680304
  %i.fi = add i64 %i.fh, %i.fg
  store i64 %i.fi, ptr %.022.i49.i, align 1
  %i.fj = getelementptr inbounds nuw i8, ptr %.022.i49.i, i64 8
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_114EncodeFullU128ENS0_7uint128EPc.exit

bb.m:                                             ; preds = %bb.c
  %i.fk = zext i64 %.sroa.6.0 to i128
  %i.fl = shl nuw i128 %i.fk, 64
  %i.fm = zext i64 %.sroa.070.0 to i128
  %i.fn = or disjoint i128 %i.fl, %i.fm           ; 3 uses
  %.frozen = freeze i128 %i.fn                    ; 2 uses
  %i.fo = udiv i128 %.frozen, 10000000000000000   ; 2 uses
  %i.fp = mul i128 %i.fo, 10000000000000000
  %.decomposed = sub i128 %.frozen, %i.fp
  %i.fq = trunc nuw nsw i128 %.decomposed to i64  ; 4 uses
  %i.fr = urem i128 %i.fo, 10000000000000000      ; 3 uses
  %i.fs = trunc nuw nsw i128 %i.fr to i64         ; 5 uses
  %i.ft = icmp ult i128 %i.fn, 100000000000000000000000000000000
  br i1 %i.ft, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  %.not.i35.i = icmp samesign ugt i64 %i.fs, 4294967295
  br i1 %.not.i35.i, label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i42.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fu = trunc nuw i128 %i.fr to i32             ; 6 uses
  %i.fv = icmp ult i32 %i.fu, 10
  br i1 %i.fv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.fw = trunc nuw i128 %i.fr to i8
  %i.fx = or disjoint i8 %i.fw, 48
  store i8 %i.fx, ptr %.0, align 1, !tbaa !12
  %i.fy = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit44.i

bb.q:                                             ; preds = %bb.o
  %i.fz = icmp ult i32 %i.fu, 100000000
  br i1 %i.fz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ga = udiv i32 %i.fu, 10000
  %i.gb = urem i32 %i.fu, 10000
  %i.gc = zext nneg i32 %i.ga to i64
  %i.gd = zext nneg i32 %i.gb to i64
  %i.ge = shl nuw nsw i64 %i.gd, 32
  %i.gf = or disjoint i64 %i.ge, %i.gc            ; 2 uses
  %i.gg = mul nuw nsw i64 %i.gf, 5243
  %i.gh = lshr i64 %i.gg, 19
  %i.gi = and i64 %i.gh, 545460846719             ; 2 uses
  %.neg.i34 = mul nsw i64 %i.gi, -100
  %i.gj = add nsw i64 %.neg.i34, %i.gf
  %i.gk = shl nsw i64 %i.gj, 16
  %i.gl = add nsw i64 %i.gk, %i.gi                ; 2 uses
  %i.gm = mul i64 %i.gl, 103
  %i.gn = lshr i64 %i.gm, 10
  %i.go = and i64 %i.gn, 4222189076152335         ; 2 uses
  %.neg16.i35 = mul i64 %i.go, 72057594037927926
  %i.gp = add i64 %.neg16.i35, %i.gl
  %i.gq = shl i64 %i.gp, 8
  %i.gr = add i64 %i.gq, %i.go                    ; 3 uses
  %i.gs = icmp ne i64 %i.gr, 0
  tail call void @llvm.assume(i1 %i.gs)
  %i.gt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.gr, i1 true) ; 2 uses
  %i.gu = and i64 %i.gt, 56
  %i.gv = add i64 %i.gr, 3472328296227680304
  %i.gw = lshr i64 %i.gv, %i.gu
  store i64 %i.gw, ptr %.0, align 1
  %i.gx = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.gy = lshr i64 %i.gt, 3
  %i.gz = sub nsw i64 0, %i.gy
  %i.ha = getelementptr inbounds i8, ptr %i.gx, i64 %i.gz
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit44.i

bb.s:                                             ; preds = %bb.q
  %i.hb = udiv i32 %i.fu, 100000000               ; 3 uses
  %i.hc = urem i32 %i.fu, 100000000               ; 2 uses
  %i.hd = udiv i32 %i.hc, 10000
  %i.he = urem i32 %i.hc, 10000
  %i.hf = zext nneg i32 %i.hd to i64
  %i.hg = zext nneg i32 %i.he to i64
  %i.hh = shl nuw nsw i64 %i.hg, 32
  %i.hi = or disjoint i64 %i.hh, %i.hf            ; 2 uses
  %i.hj = mul nuw nsw i64 %i.hi, 5243
  %i.hk = lshr i64 %i.hj, 19
  %i.hl = and i64 %i.hk, 545460846719             ; 2 uses
  %.neg.i36 = mul nsw i64 %i.hl, -100
  %i.hm = add nsw i64 %.neg.i36, %i.hi
  %i.hn = shl nsw i64 %i.hm, 16
  %i.ho = add nsw i64 %i.hn, %i.hl                ; 2 uses
  %i.hp = mul i64 %i.ho, 103
  %i.hq = lshr i64 %i.hp, 10
  %i.hr = and i64 %i.hq, 4222189076152335         ; 2 uses
  %.neg16.i37 = mul i64 %i.hr, 72057594037927926
  %i.hs = add i64 %.neg16.i37, %i.ho
  %i.ht = shl i64 %i.hs, 8
  %i.hu = or disjoint i64 %i.hr, 3472328296227680304
  %i.hv = add i64 %i.hu, %i.ht
  %i.hw = add nsw i32 %i.hb, -10
  %i.hx = ashr i32 %i.hw, 8                       ; 2 uses
  %narrow.i38 = mul nuw nsw i32 %i.hb, 103
  %i.hy = lshr i32 %narrow.i38, 10                ; 2 uses
  %.neg.i39 = mul nsw i32 %i.hy, -10
  %i.hz = add nsw i32 %.neg.i39, %i.hb
  %i.ia = or disjoint i32 %i.hy, 12336
  %i.ib = shl nsw i32 %i.hz, 8
  %i.ic = add nsw i32 %i.ia, %i.ib
  %i.id = and i32 %i.hx, 8
  %i.ie = lshr i32 %i.ic, %i.id
  %i.if = trunc nuw nsw i32 %i.ie to i16
  store i16 %i.if, ptr %.0, align 1
  %i.ig = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.ih = sext i32 %i.hx to i64
  %i.ii = getelementptr inbounds i8, ptr %i.ig, i64 %i.ih ; 2 uses
  store i64 %i.hv, ptr %i.ii, align 1
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit44.i

_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i42.i: ; preds = %bb.n
  %i.ik = udiv i64 %i.fs, 100000000
  %i.il = trunc nuw nsw i64 %i.ik to i32
  %i.im = tail call fastcc noundef i64 @_ZN4absl12lts_2026052612_GLOBAL__N_118PrepareEightDigitsEj(i32 noundef %i.il) ; 3 uses
  %i.in = icmp ne i64 %i.im, 0
  tail call void @llvm.assume(i1 %i.in)
  %i.io = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.im, i1 true) ; 2 uses
  %i.ip = and i64 %i.io, 56
  %i.iq = add i64 %i.im, 3472328296227680304
  %i.ir = lshr i64 %i.iq, %i.ip
  store i64 %i.ir, ptr %.0, align 1
  %i.is = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.it = lshr i64 %i.io, 3
  %i.iu = sub nsw i64 0, %i.it
  %i.iv = getelementptr inbounds i8, ptr %i.is, i64 %i.iu ; 2 uses
  %.023.in.i40.i = urem i64 %i.fs, 100000000
  %.023.i41.i = trunc nuw nsw i64 %.023.in.i40.i to i32 ; 2 uses
  %i.iw = udiv i32 %.023.i41.i, 10000
  %i.ix = urem i32 %.023.i41.i, 10000
  %i.iy = zext nneg i32 %i.iw to i64
  %i.iz = zext nneg i32 %i.ix to i64
  %i.ja = shl nuw nsw i64 %i.iz, 32
  %i.jb = or disjoint i64 %i.ja, %i.iy            ; 2 uses
  %i.jc = mul nuw nsw i64 %i.jb, 5243
  %i.jd = lshr i64 %i.jc, 19
  %i.je = and i64 %i.jd, 545460846719             ; 2 uses
  %.neg.i46 = mul nsw i64 %i.je, -100
  %i.jf = add nsw i64 %.neg.i46, %i.jb
  %i.jg = shl nsw i64 %i.jf, 16
  %i.jh = add nsw i64 %i.jg, %i.je                ; 2 uses
  %i.ji = mul i64 %i.jh, 103
  %i.jj = lshr i64 %i.ji, 10
  %i.jk = and i64 %i.jj, 4222189076152335         ; 2 uses
  %.neg16.i47 = mul i64 %i.jk, 72057594037927926
  %i.jl = add i64 %.neg16.i47, %i.jh
  %i.jm = shl i64 %i.jl, 8
  %i.jn = or disjoint i64 %i.jk, 3472328296227680304
  %i.jo = add i64 %i.jn, %i.jm
  store i64 %i.jo, ptr %i.iv, align 1
  %i.jp = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit44.i

_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit44.i: ; preds = %bb.p, %bb.r, %bb.s, %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i42.i
  %.0.i38.i = phi ptr [ %i.jp, %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i42.i ], [ %i.fy, %bb.p ], [ %i.ha, %bb.r ], [ %i.ij, %bb.s ] ; 2 uses
  %i.jq = udiv i64 %i.fq, 100000000
  %i.jr = urem i64 %i.fq, 100000000
  %i.js = trunc nuw nsw i64 %i.jq to i32
  %i.jt = insertelement <2 x i32> poison, i32 %i.js, i64 0
end_hunk_1
