Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/numbers?download=true
inline.NumInlined: 368
inline.NumDeleted: 121
begin_hunk_0_@_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc:bb.a
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
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU32EjPc.exit

_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU32EjPc.exit: ; preds = %bb.d, %bb.f, %bb.g
  %.0.i = phi ptr [ %i.g, %bb.d ], [ %i.ai, %bb.f ], [ %i.br, %bb.g ] ; 2 uses
  store i8 0, ptr %.0.i, align 1, !tbaa !10
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
  store i8 %i.d, ptr %1, align 1, !tbaa !10
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
  %i.dv = or disjoint i32 %i.du, %i.ds            ; 2 uses
  %2 = mul i32 %i.dv, 103
  %3 = lshr i32 %2, 10
  %4 = and i32 %3, 983055                         ; 2 uses
  %.neg.i14 = mul i32 %4, 16777206
  %5 = add i32 %.neg.i14, %i.dv
  %6 = shl i32 %5, 8
  %7 = add i32 %6, %4                             ; 3 uses
  %i.dw = icmp ne i32 %7, 0
  tail call void @llvm.assume(i1 %i.dw)
  %i.dx = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %7, i1 true) ; 2 uses
  %i.dy = and i32 %i.dx, 24
  %i.dz = add i32 %7, 808464432
  %i.ea = lshr i32 %i.dz, %i.dy
  store i32 %i.ea, ptr %1, align 1
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ec = lshr i32 %i.dx, 3
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = sub nsw i64 0, %i.ed
  %i.ef = getelementptr inbounds i8, ptr %i.eb, i64 %i.ee ; 2 uses
  store i64 %i.dq, ptr %i.ef, align 1
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU32EjPc.exit.i

_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU32EjPc.exit.i: ; preds = %bb.h, %bb.i
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
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU64EmPc.exit

_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU64EmPc.exit: ; preds = %bb.c, %bb.e, %bb.f, %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU32EjPc.exit.i
  %.0.i = phi ptr [ %i.fa, %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU32EjPc.exit.i ], [ %i.e, %bb.c ], [ %i.ag, %bb.e ], [ %i.bp, %bb.f ] ; 2 uses
  store i8 0, ptr %.0.i, align 1, !tbaa !10
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define noundef nonnull ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferElPc(i64 noundef %0, ptr nofree noundef writeonly captures(ret: address, provenance) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i64 %0, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 45, ptr %1, align 1, !tbaa !10
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
  store i8 %i.g, ptr %.07, align 1, !tbaa !10
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
  %i.dy = or disjoint i32 %i.dx, %i.dv            ; 2 uses
  %2 = mul i32 %i.dy, 103
  %3 = lshr i32 %2, 10
  %4 = and i32 %3, 983055                         ; 2 uses
  %.neg.i20 = mul i32 %4, 16777206
  %5 = add i32 %.neg.i20, %i.dy
  %6 = shl i32 %5, 8
  %7 = add i32 %6, %4                             ; 3 uses
  %i.dz = icmp ne i32 %7, 0
  tail call void @llvm.assume(i1 %i.dz)
  %i.ea = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %7, i1 true) ; 2 uses
  %i.eb = and i32 %i.ea, 24
  %i.ec = add i32 %7, 808464432
  %i.ed = lshr i32 %i.ec, %i.eb
  store i32 %i.ed, ptr %.07, align 1
  %i.ee = getelementptr inbounds nuw i8, ptr %.07, i64 4
  %i.ef = lshr i32 %i.ea, 3
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = sub nsw i64 0, %i.eg
  %i.ei = getelementptr inbounds i8, ptr %i.ee, i64 %i.eh ; 2 uses
  store i64 %i.dt, ptr %i.ei, align 1
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU32EjPc.exit.i

_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU32EjPc.exit.i: ; preds = %bb.j, %bb.k
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
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU64EmPc.exit

_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU64EmPc.exit: ; preds = %bb.e, %bb.g, %bb.h, %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU32EjPc.exit.i
  %.0.i = phi ptr [ %i.fd, %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU32EjPc.exit.i ], [ %i.h, %bb.e ], [ %i.aj, %bb.g ], [ %i.bs, %bb.h ] ; 2 uses
  store i8 0, ptr %.0.i, align 1, !tbaa !10
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
  store i8 45, ptr %1, align 1, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0138 = phi ptr [ %i.f, %bb.e ], [ %1, %bb.d ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0138, i64 1 ; 2 uses
  store i8 48, ptr %.0138, align 1, !tbaa !10
  store i8 0, ptr %i.g, align 1, !tbaa !10
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = sub i64 %i.h, %i.i
  br label %bb.av

bb.g:                                             ; preds = %bb.c
  %i.k = fcmp olt double %0, 0.000000e+00
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 45, ptr %1, align 1, !tbaa !10
  %i.m = fneg double %0
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1139 = phi ptr [ %i.l, %bb.h ], [ %1, %bb.g ] ; 39 uses
  %.0137 = phi double [ %i.m, %bb.h ], [ %0, %bb.g ] ; 9 uses
  %i.n = fcmp ogt double %.0137, f0x7FEFFFFFFFFFFFFF
  br i1 %i.n, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 6712937, ptr %.1139, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %.1139, i64 3
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %1 to i64
  %i.r = sub i64 %i.p, %i.q
  br label %bb.av

bb.k:                                             ; preds = %bb.i
  %i.s = fcmp ult double %.0137, f0x412E847F00000000
  br i1 %i.s, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = fcmp ult double %.0137, f0x7620427EAD4CFED6 ; 2 uses
  %i.u = fmul nnan double %.0137, f0x0AC8062864AC6F43
  %.085.i = select i1 %i.t, double %.0137, double %i.u ; 3 uses
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
  %i.at = fcmp olt double %.0137, 1.000000e-250   ; 2 uses
  %i.au = fmul nnan double %.0137, 1.000000e+256
  %.893.i = select i1 %i.at, double %i.au, double %.0137 ; 3 uses
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
end_hunk_0
