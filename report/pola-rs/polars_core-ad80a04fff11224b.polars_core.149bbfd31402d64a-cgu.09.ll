Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_core-ad80a04fff11224b.polars_core.149bbfd31402d64a-cgu.09?download=true
inline.NumInlined: 13762
inline.NumDeleted: 6781
loop-unroll.NumCompletelyUnrolled: 155
loop-unroll.NumRuntimeUnrolled: 281
loop-unroll.NumUnrolled: 436
begin_hunk_0_@_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch16add_f16_fallback:bb.a
  %i.t = or disjoint i32 %i.q, 2139095040, !dbg !198998
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit, !dbg !198999

bb.h:                                             ; preds = %bb.e
  %i.u = shl nuw nsw i32 %i.n, 13, !dbg !199000
  %i.v = or disjoint i32 %i.q, %i.u, !dbg !199001
  %i.w = or i32 %i.v, 2143289344, !dbg !199001
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit, !dbg !199002

bb.i:                                             ; preds = %bb.f
  %i.x = tail call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.m, i1 false), !dbg !199003
  %i.y = zext nneg i16 %i.x to i32, !dbg !199003  ; 2 uses
  %i.z = add nuw nsw i32 %i.y, 8, !dbg !199004
  %i.aa = shl i32 %i.n, %i.z, !dbg !199005
  %i.ab = and i32 %i.aa, 8388607, !dbg !199005
  %reass.sub.i = or disjoint i32 %i.r, 989855744, !dbg !199006
  %i.ac = shl nuw nsw i32 %i.y, 23, !dbg !199006
  %i.ad = sub nuw nsw i32 %reass.sub.i, %i.ac, !dbg !199006
  %i.ae = or disjoint i32 %i.ad, %i.ab, !dbg !199006
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit, !dbg !199007

bb.j:                                             ; preds = %bb.f
  %i.af = lshr exact i16 %i.l, 10, !dbg !199008
  %narrow.i = add nuw nsw i16 %i.af, 112, !dbg !199009
  %i.ag = zext nneg i16 %narrow.i to i32, !dbg !199009
  %i.ah = shl nuw nsw i32 %i.ag, 23, !dbg !199010
  %i.ai = shl nuw nsw i32 %i.n, 13, !dbg !199011
  %i.aj = or disjoint i32 %i.ah, %i.ai, !dbg !199012
  %i.ak = or disjoint i32 %i.aj, %i.r, !dbg !199012
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit, !dbg !199013

_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit: ; preds = %bb.c, %bb.g, %bb.h, %bb.i, %bb.j
  %.sroa.0.0.i = phi i32 [ %i.i, %bb.c ], [ %i.t, %bb.g ], [ %i.w, %bb.h ], [ %i.ae, %bb.i ], [ %i.ak, %bb.j ], !dbg !199014
  %i.al = bitcast i32 %.sroa.0.0.i to float, !dbg !199013
  br label %bb.l, !dbg !199015

bb.k:                                             ; preds = %.split, %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit
  %i.am = tail call fastcc noundef float @_RNvNtNtNtCshdiYQzaKNQ1_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %0), !dbg !199016
  br label %bb.l, !dbg !199016

bb.l:                                             ; preds = %bb.k, %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit
  %.sroa.01.0 = phi float [ %i.am, %bb.k ], [ %i.al, %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit ], !dbg !199017
  %i.an = load atomic i64, ptr @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache5CACHE monotonic, align 8, !dbg !199018 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0, !dbg !199019
  br i1 %i.ao, label %.split12, label %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit4, !dbg !199019, !prof !7682

.split12:                                         ; preds = %bb.l
  %i.ap = tail call noundef i128 @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache21detect_and_initialize(), !dbg !199020
  %i.aq = and i128 %i.ap, 36028797018963968, !dbg !199021
  %.not16 = icmp eq i128 %i.aq, 0, !dbg !199021
  br i1 %.not16, label %bb.m, label %bb.v, !dbg !199022

_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit4: ; preds = %bb.l
  %i.ar = and i64 %i.an, 36028797018963968, !dbg !199023
  %.not15 = icmp eq i64 %i.ar, 0, !dbg !199023
  br i1 %.not15, label %bb.m, label %bb.v, !dbg !199022

bb.m:                                             ; preds = %.split12, %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit4
  %i.as = and i16 %1, 32767, !dbg !199024
  %i.at = icmp eq i16 %i.as, 0, !dbg !199024
  br i1 %i.at, label %bb.n, label %bb.o, !dbg !199024

bb.n:                                             ; preds = %bb.m
  %i.au = zext i16 %1 to i32, !dbg !199025
  %i.av = shl nuw i32 %i.au, 16, !dbg !199025
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit8, !dbg !199026

bb.o:                                             ; preds = %bb.m
  %i.aw = and i16 %1, -32768, !dbg !199027
  %i.ax = zext i16 %i.aw to i32, !dbg !199027     ; 2 uses
  %i.ay = and i16 %1, 31744, !dbg !199028         ; 3 uses
  %i.az = and i16 %1, 1023, !dbg !199029          ; 3 uses
  %i.ba = zext nneg i16 %i.az to i32, !dbg !199029 ; 3 uses
  %i.bb = icmp eq i16 %i.ay, 31744, !dbg !199030
  br i1 %i.bb, label %bb.p, label %bb.q, !dbg !199030

bb.p:                                             ; preds = %bb.o
  %i.bc = icmp eq i16 %i.az, 0, !dbg !199031
  %i.bd = shl nuw i32 %i.ax, 16, !dbg !199032     ; 2 uses
  br i1 %i.bc, label %bb.r, label %bb.s, !dbg !199031

bb.q:                                             ; preds = %bb.o
  %i.be = shl nuw i32 %i.ax, 16, !dbg !199033     ; 2 uses
  %i.bf = icmp eq i16 %i.ay, 0, !dbg !199034
  br i1 %i.bf, label %bb.t, label %bb.u, !dbg !199034

bb.r:                                             ; preds = %bb.p
  %i.bg = or disjoint i32 %i.bd, 2139095040, !dbg !199035
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit8, !dbg !199036

bb.s:                                             ; preds = %bb.p
  %i.bh = shl nuw nsw i32 %i.ba, 13, !dbg !199037
  %i.bi = or disjoint i32 %i.bd, %i.bh, !dbg !199038
  %i.bj = or i32 %i.bi, 2143289344, !dbg !199038
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit8, !dbg !199039

bb.t:                                             ; preds = %bb.q
  %i.bk = tail call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.az, i1 false), !dbg !199040
  %i.bl = zext nneg i16 %i.bk to i32, !dbg !199040 ; 2 uses
  %i.bm = add nuw nsw i32 %i.bl, 8, !dbg !199041
  %i.bn = shl i32 %i.ba, %i.bm, !dbg !199042
  %i.bo = and i32 %i.bn, 8388607, !dbg !199042
  %reass.sub.i7 = or disjoint i32 %i.be, 989855744, !dbg !199043
  %i.bp = shl nuw nsw i32 %i.bl, 23, !dbg !199043
  %i.bq = sub nuw nsw i32 %reass.sub.i7, %i.bp, !dbg !199043
  %i.br = or disjoint i32 %i.bq, %i.bo, !dbg !199043
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit8, !dbg !199044

bb.u:                                             ; preds = %bb.q
  %i.bs = lshr exact i16 %i.ay, 10, !dbg !199045
  %narrow.i5 = add nuw nsw i16 %i.bs, 112, !dbg !199046
  %i.bt = zext nneg i16 %narrow.i5 to i32, !dbg !199046
  %i.bu = shl nuw nsw i32 %i.bt, 23, !dbg !199047
  %i.bv = shl nuw nsw i32 %i.ba, 13, !dbg !199048
  %i.bw = or disjoint i32 %i.bu, %i.bv, !dbg !199049
  %i.bx = or disjoint i32 %i.bw, %i.be, !dbg !199049
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit8, !dbg !199050

_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit8: ; preds = %bb.n, %bb.r, %bb.s, %bb.t, %bb.u
  %.sroa.0.0.i6 = phi i32 [ %i.av, %bb.n ], [ %i.bg, %bb.r ], [ %i.bj, %bb.s ], [ %i.br, %bb.t ], [ %i.bx, %bb.u ], !dbg !199051
  %i.by = bitcast i32 %.sroa.0.0.i6 to float, !dbg !199050
  br label %bb.w, !dbg !199052

bb.v:                                             ; preds = %.split12, %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit4
  %i.bz = tail call fastcc noundef float @_RNvNtNtNtCshdiYQzaKNQ1_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %1), !dbg !199053
  br label %bb.w, !dbg !199053

bb.w:                                             ; preds = %bb.v, %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit8
  %.sroa.02.0 = phi float [ %i.bz, %bb.v ], [ %i.by, %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit8 ], !dbg !199054
  %i.ca = fadd float %.sroa.01.0, %.sroa.02.0, !dbg !198967 ; 2 uses
  %i.cb = load atomic i64, ptr @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache5CACHE monotonic, align 8, !dbg !199055 ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 0, !dbg !199056
  br i1 %i.cc, label %.split13, label %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit10, !dbg !199056, !prof !7682

.split13:                                         ; preds = %bb.w
  %i.cd = tail call noundef i128 @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache21detect_and_initialize(), !dbg !199057
  %i.ce = and i128 %i.cd, 36028797018963968, !dbg !199058
  %.not18 = icmp eq i128 %i.ce, 0, !dbg !199058
  br i1 %.not18, label %bb.x, label %bb.ai, !dbg !199059

_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit10: ; preds = %bb.w
  %i.cf = and i64 %i.cb, 36028797018963968, !dbg !199060
  %.not17 = icmp eq i64 %i.cf, 0, !dbg !199060
  br i1 %.not17, label %bb.x, label %bb.ai, !dbg !199059

bb.x:                                             ; preds = %.split13, %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit10
  %i.cg = bitcast float %i.ca to i32, !dbg !199061 ; 5 uses
  %i.ch = and i32 %i.cg, -2147483648, !dbg !199062 ; 2 uses
  %i.ci = and i32 %i.cg, 2139095040, !dbg !199063 ; 6 uses
  %i.cj = and i32 %i.cg, 8388607, !dbg !199064    ; 4 uses
  %i.ck = icmp eq i32 %i.ci, 2139095040, !dbg !199065
  br i1 %i.ck, label %bb.y, label %bb.z, !dbg !199065

bb.y:                                             ; preds = %bb.x
  %i.cl = icmp eq i32 %i.cj, 0, !dbg !199066
  %..i = select i1 %i.cl, i32 0, i32 512, !dbg !199067
  %i.cm = lshr exact i32 %i.ch, 16, !dbg !199068
  %i.cn = lshr i32 %i.cj, 13, !dbg !199069
  %i.co = or disjoint i32 %i.cn, %i.cm, !dbg !199068
  %i.cp = or i32 %i.co, %..i, !dbg !199070
  %i.cq = trunc nuw i32 %i.cp to i16, !dbg !199070
  %i.cr = or disjoint i16 %i.cq, 31744, !dbg !199070
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f32_to_f16_fallback.exit, !dbg !199071

bb.z:                                             ; preds = %bb.x
  %i.cs = lshr exact i32 %i.ch, 16, !dbg !199072  ; 4 uses
  %i.ct = lshr exact i32 %i.ci, 23, !dbg !199073  ; 2 uses
  %i.cu = icmp samesign ugt i32 %i.ci, 1191182336, !dbg !199074
  br i1 %i.cu, label %bb.ab, label %bb.aa, !dbg !199074

bb.aa:                                            ; preds = %bb.z
  %i.cv = icmp samesign ult i32 %i.ci, 947912704, !dbg !199075
  br i1 %i.cv, label %bb.ad, label %bb.ac, !dbg !199075

bb.ab:                                            ; preds = %bb.z
  %i.cw = trunc nuw i32 %i.cs to i16, !dbg !199076
  %i.cx = or disjoint i16 %i.cw, 31744, !dbg !199076
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f32_to_f16_fallback.exit, !dbg !199077

bb.ac:                                            ; preds = %bb.aa
  %i.cy = lshr exact i32 %i.ci, 13, !dbg !199078
  %i.cz = add nuw nsw i32 %i.cy, 16384, !dbg !199078
  %i.da = lshr i32 %i.cj, 13, !dbg !199079
  %i.db = and i32 %i.cg, 4096, !dbg !199080
  %i.dc = icmp ne i32 %i.db, 0, !dbg !199080
  %i.dd = and i32 %i.cg, 12287
  %i.de = icmp ne i32 %i.dd, 0
  %or.cond.not.i = and i1 %i.dc, %i.de, !dbg !199081
  %i.df = or disjoint i32 %i.cz, %i.da, !dbg !199081
  %i.dg = or i32 %i.df, %i.cs, !dbg !199081
  %i.dh = trunc i32 %i.dg to i16, !dbg !199081
  %i.di = zext i1 %or.cond.not.i to i16, !dbg !199080
  %spec.select7.i = add i16 %i.dh, %i.di, !dbg !199080
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f32_to_f16_fallback.exit, !dbg !199080

bb.ad:                                            ; preds = %bb.aa
  %i.dj = icmp samesign ult i32 %i.ci, 855638016, !dbg !199082
  br i1 %i.dj, label %bb.af, label %bb.ae, !dbg !199082

bb.ae:                                            ; preds = %bb.ad
  %i.dk = sub nsw i32 126, %i.ct, !dbg !199082
  %i.dl = or disjoint i32 %i.cj, 8388608, !dbg !199083 ; 3 uses
  %i.dm = lshr i32 %i.dl, %i.dk, !dbg !199084     ; 2 uses
  %i.dn = sub nsw i32 29, %i.ct, !dbg !199085
  %i.do = and i32 %i.dn, 31, !dbg !199086         ; 2 uses
  %i.dp = shl nuw i32 1, %i.do, !dbg !199086
  %i.dq = and i32 %i.dp, %i.dl, !dbg !199087
  %i.dr = icmp eq i32 %i.dq, 0, !dbg !199087
  br i1 %i.dr, label %bb.ah, label %bb.ag, !dbg !199087

bb.af:                                            ; preds = %bb.ad
  %i.ds = trunc nuw i32 %i.cs to i16, !dbg !199088
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f32_to_f16_fallback.exit, !dbg !199077

bb.ag:                                            ; preds = %bb.ae
  %i.dt = shl i32 3, %i.do, !dbg !199089
  %i.du = add nuw i32 %i.dt, 16777215, !dbg !199090
  %i.dv = and i32 %i.du, %i.dl, !dbg !199091
  %i.dw = icmp ne i32 %i.dv, 0, !dbg !199091
  %i.dx = zext i1 %i.dw to i32, !dbg !199091
  %spec.select.i = add nuw nsw i32 %i.dm, %i.dx, !dbg !199091
  br label %bb.ah, !dbg !199091

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  %.sroa.03.0.i = phi i32 [ %i.dm, %bb.ae ], [ %spec.select.i, %bb.ag ], !dbg !199092
  %i.dy = or i32 %.sroa.03.0.i, %i.cs, !dbg !199093
  %i.dz = trunc nuw i32 %i.dy to i16, !dbg !199093
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f32_to_f16_fallback.exit, !dbg !199077

bb.ai:                                            ; preds = %.split13, %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit10
  %i.ea = tail call fastcc noundef i16 @_RNvNtNtNtCshdiYQzaKNQ1_4half8binary164arch3x8619f32_to_f16_x86_f16c(float noundef %i.ca), !dbg !199094
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f32_to_f16_fallback.exit, !dbg !199094

_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f32_to_f16_fallback.exit: ; preds = %bb.ah, %bb.af, %bb.ac, %bb.ab, %bb.y, %bb.ai
  %.sroa.0.0 = phi i16 [ %i.ea, %bb.ai ], [ %i.cr, %bb.y ], [ %i.cx, %bb.ab ], [ %i.ds, %bb.af ], [ %i.dz, %bb.ah ], [ %spec.select7.i, %bb.ac ], !dbg !199095
  ret i16 %.sroa.0.0, !dbg !199096
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array5array8iterator6to_arr(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !199097 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !199190, !nonnull !7550, !noundef !7550
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !199190
  %i.d = load ptr, ptr %i.c, align 8, !dbg !199190, !nonnull !7550, !align !7784, !noundef !7550 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !199191
  %i.f = load i64, ptr %i.e, align 8, !dbg !199191, !range !7641, !invariant.load !7550
  %i.g = add nsw i64 %i.f, -1, !dbg !199191
  %i.h = and i64 %i.g, -16, !dbg !199191
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.h, !dbg !199191
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !199191 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 312, !dbg !199146
  %i.l = load ptr, ptr %i.k, align 8, !dbg !199146, !invariant.load !7550, !nonnull !7550 ; 2 uses
  %i.m = tail call noundef nonnull align 8 ptr %i.l(ptr noundef nonnull %i.j) #51, !dbg !199192
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !199193
  %i.o = load i64, ptr %i.n, align 8, !dbg !199193, !noundef !7550 ; 2 uses
  %i.p = icmp ult i64 %i.o, 576460752303423488, !dbg !199194
  tail call void @llvm.assume(i1 %i.p), !dbg !199195
  %i.q = icmp samesign ugt i64 %i.o, 1, !dbg !199146
  br i1 %i.q, label %bb.c, label %bb.b, !dbg !199146

bb.b:                                             ; preds = %bb.a
  %i.r = tail call noundef nonnull align 8 ptr %i.l(ptr noundef nonnull %i.j) #51, !dbg !199196 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16, !dbg !199197
  %i.t = load i64, ptr %i.s, align 8, !dbg !199197, !noundef !7550
  %.not = icmp eq i64 %i.t, 0, !dbg !199198
  br i1 %.not, label %bb.e, label %bb.d, !dbg !199198

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !199199
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 456, !dbg !199200
  %i.v = load ptr, ptr %i.u, align 8, !dbg !199200, !invariant.load !7550, !nonnull !7550
  %i.w = tail call { ptr, ptr } %i.v(ptr noundef nonnull %i.j) #51, !dbg !199201 ; 2 uses
  %i.x = extractvalue { ptr, ptr } %i.w, 0, !dbg !199201 ; 2 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1, !dbg !199201 ; 3 uses
  store ptr %i.x, ptr %i.a, align 8, !dbg !199201
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !199201
  store ptr %i.y, ptr %i.z, align 8, !dbg !199201
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16, !dbg !199202
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !199202, !range !7641, !invariant.load !7550
  %i.ac = add nsw i64 %i.ab, -1, !dbg !199202
  %i.ad = and i64 %i.ac, -16, !dbg !199202
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ad, !dbg !199202
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16, !dbg !199202
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 312, !dbg !199162
  %i.ah = load ptr, ptr %i.ag, align 8, !dbg !199162, !invariant.load !7550, !nonnull !7550
  %i.ai = invoke noundef nonnull align 8 ptr %i.ah(ptr noundef nonnull %i.af)
          to label %bb.i unwind label %bb.g, !dbg !199203 ; 2 uses

bb.d:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !199204
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !199204, !nonnull !7550, !noundef !7550
  %i.al = tail call { ptr, ptr } @_RNvXs5_NtCs8774dFTUdNv_12polars_arrow5arrayINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB5_5ArrayEL_ENtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ak), !dbg !199205
  br label %bb.f, !dbg !199206

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @85) #50, !dbg !199198
  unreachable, !dbg !199198

bb.f:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit5, %bb.d
  %.pn = phi { ptr, ptr } [ %i.au, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit5 ], [ %i.al, %bb.d ]
  ret { ptr, ptr } %.pn, !dbg !199207

bb.g:                                             ; preds = %bb.k, %bb.j, %bb.c
  %i.am = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199173), !dbg !199208
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199174), !dbg !199209
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199175), !dbg !199210
  %i.an = load ptr, ptr %i.a, align 8, !dbg !199211, !alias.scope !199176, !nonnull !7550, !noundef !7550
  %i.ao = atomicrmw sub ptr %i.an, i64 1 release, align 8, !dbg !199212, !noalias !199176
  %i.ap = icmp eq i64 %i.ao, 1, !dbg !199213
  br i1 %i.ap, label %bb.h, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit, !dbg !199213

bb.h:                                             ; preds = %bb.g
  fence acquire, !dbg !199214
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #49
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit unwind label %bb.o, !dbg !199215

bb.i:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !199216
  %i.ar = load i64, ptr %i.aq, align 8, !dbg !199216, !noundef !7550
  %.not3 = icmp eq i64 %i.ar, 0, !dbg !199217
  br i1 %.not3, label %bb.k, label %bb.j, !dbg !199217

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !199218
  %i.at = load ptr, ptr %i.as, align 8, !dbg !199218, !nonnull !7550, !noundef !7550
  %i.au = invoke { ptr, ptr } @_RNvXs5_NtCs8774dFTUdNv_12polars_arrow5arrayINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB5_5ArrayEL_ENtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.at)
          to label %bb.m unwind label %bb.g, !dbg !199219

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #47
          to label %bb.l unwind label %bb.g, !dbg !199217

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199186), !dbg !199208
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199187), !dbg !199220
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199188), !dbg !199221
  %i.av = load ptr, ptr %i.a, align 8, !dbg !199222, !alias.scope !199189, !nonnull !7550, !noundef !7550
  %i.aw = atomicrmw sub ptr %i.av, i64 1 release, align 8, !dbg !199223, !noalias !199189
  %i.ax = icmp eq i64 %i.aw, 1, !dbg !199224
  br i1 %i.ax, label %bb.n, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit5, !dbg !199224

bb.n:                                             ; preds = %bb.m
  fence acquire, !dbg !199225
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #49, !dbg !199226
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit5, !dbg !199226

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit5: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !199208
  br label %bb.f, !dbg !199206

bb.o:                                             ; preds = %bb.h
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #48, !dbg !199227
  unreachable, !dbg !199227

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit: ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %i.am, !dbg !199227
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc noundef float @_RNvNtNtNtCshdiYQzaKNQ1_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %0) unnamed_addr #21 !dbg !199228 {
bb.a:
  %i.a = bitcast i16 %0 to half, !dbg !199235
  %.sroa.04.0.vec.extract = fpext half %i.a to float, !dbg !199235
  ret float %.sroa.04.0.vec.extract, !dbg !199236
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc noundef i16 @_RNvNtNtNtCshdiYQzaKNQ1_4half8binary164arch3x8619f32_to_f16_x86_f16c(float noundef %0) unnamed_addr #21 !dbg !199237 {
bb.a:
  %.sroa.0.12.vec.insert = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %0, i64 0, !dbg !199250
  %i.a = tail call <8 x i16> @llvm.x86.vcvtps2ph.128(<4 x float> %.sroa.0.12.vec.insert, i32 0), !dbg !199251
  %.sroa.02.0.vec.extract = extractelement <8 x i16> %i.a, i64 0, !dbg !199252
  ret i16 %.sroa.02.0.vec.extract, !dbg !199253
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops14rolling_window9inner_mod11check_input(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !199254 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.d, align 8
  store i64 %2, ptr %i.c, align 8
  %.not = icmp ugt i64 %2, %1, !dbg !199265
  br i1 %.not, label %.split, label %bb.b, !dbg !199265, !prof !7682

.split:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !199266
  store ptr %i.d, ptr %i.a, align 8, !dbg !199266
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !199266
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !199266
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !199266
end_hunk_0
