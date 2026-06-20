inline.NumInlined: 3306
inline.NumDeleted: 586
begin_hunk_0_@_ZN2v88internal11CpuFeatures9ProbeImplEb:bb.a

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 90
  %i.cg = load i8, ptr %i.cf, align 2, !range !87, !noundef !88
  %i.ch = trunc nuw i8 %i.cg to i1
  %i.ci = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1303), align 1, !range !87
  %i.cj = trunc nuw i8 %i.ci to i1
  %or.cond10 = select i1 %i.ch, i1 %i.cj, i1 false
  br i1 %or.cond10, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ck = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.cl = or i32 %i.ck, 4096
  store i32 %i.cl, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 91
  %i.cn = load i8, ptr %i.cm, align 1, !range !87, !noundef !88
  %i.co = trunc nuw i8 %i.cn to i1
  %i.cp = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1304), align 8, !range !87
  %i.cq = trunc nuw i8 %i.cp to i1
  %or.cond12 = select i1 %i.co, i1 %i.cq, i1 false
  br i1 %or.cond12, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cr = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.cs = or i32 %i.cr, 8192
  store i32 %i.cs, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1328), align 16 ; 2 uses
  %i.cu = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ct, ptr noundef nonnull dereferenceable(5) @.str.3) #28
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 78
  %i.cx = load i8, ptr %i.cw, align 2, !range !87, !noundef !88
  %i.cy = trunc nuw i8 %i.cx to i1
  %.pre.pre.pre.pre26 = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4 ; 2 uses
  br i1 %i.cy, label %.sink.split, label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.cz = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ct, ptr noundef nonnull dereferenceable(5) @.str.4) #28
  %i.da = icmp eq i32 %i.cz, 0
  %.pre.pre.pre.pre = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4 ; 2 uses
  br i1 %i.da, label %.sink.split, label %bb.am

.sink.split:                                      ; preds = %bb.al, %bb.ak
  %.pre.pre.pre.pre.sink = phi i32 [ %.pre.pre.pre.pre26, %bb.ak ], [ %.pre.pre.pre.pre, %bb.al ]
  %i.db = or i32 %.pre.pre.pre.pre.sink, 16384    ; 2 uses
  store i32 %i.db, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  br label %bb.am

bb.am:                                            ; preds = %.sink.split, %bb.al, %bb.ak
  %.pre.pre.pre = phi i32 [ %.pre.pre.pre.pre, %bb.al ], [ %.pre.pre.pre.pre26, %bb.ak ], [ %i.db, %.sink.split ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 79
  %i.dd = load i8, ptr %i.dc, align 1, !range !87, !noundef !88
  %i.de = trunc nuw i8 %i.dd to i1
  %i.df = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1352), align 8, !range !87
  %i.dg = trunc nuw i8 %i.df to i1
  %or.cond14 = select i1 %i.de, i1 %i.dg, i1 false
  br i1 %or.cond14, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.dh = or i32 %.pre.pre.pre, 32768             ; 2 uses
  store i32 %i.dh, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pre.pre = phi i32 [ %i.dh, %bb.an ], [ %.pre.pre.pre, %bb.am ] ; 2 uses
  %i.di = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1290), align 2, !range !87, !noundef !88
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dk = and i32 %.pre.pre, -9                   ; 2 uses
  store i32 %i.dk, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pre = phi i32 [ %i.dk, %bb.ap ], [ %.pre.pre, %bb.ao ] ; 3 uses
  %i.dl = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1291), align 1, !range !87, !noundef !88
  %i.dm = trunc nuw i8 %i.dl to i1
  %i.dn = and i32 %.pre, 8
  %.not = icmp ne i32 %i.dn, 0
  %or.cond29.not = select i1 %i.dm, i1 %.not, i1 false
  br i1 %or.cond29.not, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.do = and i32 %.pre, -5                       ; 2 uses
  store i32 %i.do, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %i.dp = phi i32 [ %i.do, %bb.ar ], [ %.pre, %bb.aq ] ; 3 uses
  %i.dq = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1292), align 4, !range !87, !noundef !88
  %i.dr = trunc nuw i8 %i.dq to i1
  %i.ds = and i32 %i.dp, 4
  %.not15 = icmp ne i32 %i.ds, 0
  %or.cond31.not = select i1 %i.dr, i1 %.not15, i1 false
  br i1 %or.cond31.not, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dt = and i32 %i.dp, -3                       ; 2 uses
  store i32 %i.dt, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  %i.du = phi i32 [ %i.dt, %bb.at ], [ %i.dp, %bb.as ] ; 3 uses
  %i.dv = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1293), align 1, !range !87, !noundef !88
  %i.dw = trunc nuw i8 %i.dv to i1
  %i.dx = and i32 %i.du, 2
  %.not16 = icmp ne i32 %i.dx, 0
  %or.cond33.not = select i1 %i.dw, i1 %.not16, i1 false
  br i1 %or.cond33.not, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dy = and i32 %i.du, -2                       ; 2 uses
  store i32 %i.dy, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av
  %i.dz = phi i32 [ %i.dy, %bb.av ], [ %i.du, %bb.au ] ; 3 uses
  %i.ea = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1295), align 1, !range !87, !noundef !88
  %i.eb = trunc nuw i8 %i.ea to i1
  %.not17 = trunc i32 %i.dz to i1
  %or.cond35.not = select i1 %i.eb, i1 %.not17, i1 false
  br i1 %or.cond35.not, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ec = and i32 %i.dz, -33                      ; 2 uses
  store i32 %i.ec, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %i.ed = phi i32 [ %i.ec, %bb.ax ], [ %i.dz, %bb.aw ] ; 3 uses
  %i.ee = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1296), align 16, !range !87, !noundef !88
  %i.ef = trunc nuw i8 %i.ee to i1
  %i.eg = and i32 %i.ed, 32
  %.not18 = icmp ne i32 %i.eg, 0
  %or.cond37.not = select i1 %i.ef, i1 %.not18, i1 false
  br i1 %or.cond37.not, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.eh = and i32 %i.ed, -65                      ; 2 uses
  store i32 %i.eh, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.az
  %i.ei = phi i32 [ %i.eh, %bb.az ], [ %i.ed, %bb.ay ] ; 3 uses
  %i.ej = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1297), align 1, !range !87, !noundef !88
  %i.ek = trunc nuw i8 %i.ej to i1
  %i.el = and i32 %i.ei, 32
  %.not19 = icmp ne i32 %i.el, 0
  %or.cond39.not = select i1 %i.ek, i1 %.not19, i1 false
  br i1 %or.cond39.not, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.em = and i32 %i.ei, -129                     ; 2 uses
  store i32 %i.em, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  %i.en = phi i32 [ %i.em, %bb.bb ], [ %i.ei, %bb.ba ] ; 3 uses
  %i.eo = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1298), align 2, !range !87, !noundef !88
  %i.ep = trunc nuw i8 %i.eo to i1
  %i.eq = and i32 %i.en, 32
  %.not20 = icmp ne i32 %i.eq, 0
  %or.cond41.not = select i1 %i.ep, i1 %.not20, i1 false
  br i1 %or.cond41.not, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.er = and i32 %i.en, -257                     ; 2 uses
  store i32 %i.er, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.bd
  %i.es = phi i32 [ %i.er, %bb.bd ], [ %i.en, %bb.bc ] ; 3 uses
  %i.et = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1299), align 1, !range !87, !noundef !88
  %i.eu = trunc nuw i8 %i.et to i1
  %i.ev = and i32 %i.es, 32
  %.not21 = icmp ne i32 %i.ev, 0
  %or.cond43.not = select i1 %i.eu, i1 %.not21, i1 false
  br i1 %or.cond43.not, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ew = and i32 %i.es, -513                     ; 2 uses
  store i32 %i.ew, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf
  %i.ex = phi i32 [ %i.ew, %bb.bf ], [ %i.es, %bb.be ] ; 3 uses
  %i.ey = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1300), align 4, !range !87, !noundef !88
  %i.ez = trunc nuw i8 %i.ey to i1
  %i.fa = and i32 %i.ex, 32
  %.not22 = icmp ne i32 %i.fa, 0
  %or.cond45.not = select i1 %i.ez, i1 %.not22, i1 false
  br i1 %or.cond45.not, label %_ZN2v88internal11CpuFeatures19SupportsWasmSimd128Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fb = and i32 %i.ex, -131073                  ; 2 uses
  store i32 %i.fb, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  br label %_ZN2v88internal11CpuFeatures19SupportsWasmSimd128Ev.exit

_ZN2v88internal11CpuFeatures19SupportsWasmSimd128Ev.exit: ; preds = %bb.bg, %bb.bh
  %2 = phi i32 [ %i.fb, %bb.bh ], [ %i.ex, %bb.bg ] ; 4 uses
  %3 = and i32 %2, 2
  %.not.i = icmp eq i32 %3, 0
  %4 = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 924), align 4, !range !87
  %5 = trunc i32 %2 to i8
  %6 = lshr i8 %5, 2
  %7 = and i8 %4, %6
  %.0.i = select i1 %.not.i, i8 %7, i8 1
  store i8 %.0.i, ptr @_ZN2v88internal11CpuFeatures23supports_wasm_simd_128_E, align 1
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.fd = load i8, ptr %i.fc, align 4, !range !87, !noundef !88
  %i.fe = trunc nuw i8 %i.fd to i1
  br i1 %i.fe, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %_ZN2v88internal11CpuFeatures19SupportsWasmSimd128Ev.exit
  %i.ff = or i32 %2, 65536                        ; 2 uses
  store i32 %i.ff, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %_ZN2v88internal11CpuFeatures19SupportsWasmSimd128Ev.exit
  %i.fg = phi i32 [ %i.ff, %bb.bi ], [ %2, %_ZN2v88internal11CpuFeatures19SupportsWasmSimd128Ev.exit ]
  %i.fh = and i32 %i.fg, 65536
  %.not23 = icmp eq i32 %i.fh, 0
  br i1 %.not23, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fi = call noundef zeroext i1 @_ZN2v84base2OS37IsHardwareEnforcedShadowStacksEnabledEv() #26
  %i.fj = zext i1 %i.fi to i8
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.fk = phi i8 [ 0, %bb.bj ], [ %i.fj, %bb.bk ]
  store i8 %i.fk, ptr @_ZN2v88internal11CpuFeatures15supports_cetss_E, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.bm

bb.bm:                                            ; preds = %bb.a, %bb.bl
  ret void
}

declare void @_ZN2v84base3CPUC1Ev(ptr noundef nonnull align 4 dereferenceable(120)) unnamed_addr #5

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

declare noundef zeroext i1 @_ZN2v84base2OS37IsHardwareEnforcedShadowStacksEnabledEv() local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN2v88internal11CpuFeatures11PrintTargetEv() local_unnamed_addr #8 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define hidden void @_ZN2v88internal11CpuFeatures13PrintFeaturesEv() local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4 ; 16 uses
  %i.b = lshr i32 %i.a, 3
  %.lobit = and i32 %i.b, 1
  %i.c = lshr i32 %i.a, 2
  %.lobit1 = and i32 %i.c, 1
  %i.d = lshr i32 %i.a, 1
  %.lobit2 = and i32 %i.d, 1
  %i.e = and i32 %i.a, 1
  %i.f = lshr i32 %i.a, 4
  %.lobit3 = and i32 %i.f, 1
  %i.g = lshr i32 %i.a, 5
  %.lobit4 = and i32 %i.g, 1
  %i.h = lshr i32 %i.a, 6
  %.lobit5 = and i32 %i.h, 1
  %i.i = lshr i32 %i.a, 7
  %.lobit6 = and i32 %i.i, 1
  %i.j = lshr i32 %i.a, 8
  %.lobit7 = and i32 %i.j, 1
  %i.k = lshr i32 %i.a, 9
  %.lobit8 = and i32 %i.k, 1
  %i.l = lshr i32 %i.a, 17
  %.lobit9 = and i32 %i.l, 1
  %i.m = lshr i32 %i.a, 10
  %.lobit10 = and i32 %i.m, 1
  %i.n = lshr i32 %i.a, 11
  %.lobit11 = and i32 %i.n, 1
  %i.o = lshr i32 %i.a, 12
  %.lobit12 = and i32 %i.o, 1
  %i.p = lshr i32 %i.a, 13
  %.lobit13 = and i32 %i.p, 1
  %i.q = lshr i32 %i.a, 14
  %.lobit14 = and i32 %i.q, 1
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %.lobit, i32 noundef %.lobit1, i32 noundef %.lobit2, i32 noundef %i.e, i32 noundef %.lobit3, i32 noundef %.lobit4, i32 noundef %.lobit5, i32 noundef %.lobit6, i32 noundef %.lobit7, i32 noundef %.lobit8, i32 noundef %.lobit9, i32 noundef %.lobit10, i32 noundef %.lobit11, i32 noundef %.lobit12, i32 noundef %.lobit13, i32 noundef %.lobit14) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZNK2v88internal9RelocInfo13wasm_call_tagEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = inttoptr i64 %i.a to ptr
  %.0.copyload.i = load i32, ptr %i.b, align 1
  ret i32 %.0.copyload.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2v88internal7OperandC2ES1_i(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, i64 %1, ptr nofree readnone captures(none) %2, i32 noundef %3) unnamed_addr #12 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::Operand", align 8 ; 2 uses
  store i64 %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 5 uses
  %.ptr37 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  %i.e = lshr i64 %1, 16
  %i.f = trunc i64 %i.e to i8                     ; 6 uses
  %i.g = and i8 %i.f, 7
  %i.h = icmp eq i8 %i.g, 4                       ; 3 uses
  %i.i = and i8 %i.f, -64                         ; 2 uses
  %i.j = select i1 %i.h, i32 2, i32 1             ; 7 uses
  %i.k = lshr i64 %1, 24
  %i.l = trunc i64 %i.k to i8                     ; 2 uses
  %i.m = select i1 %i.h, i8 %i.l, i8 %i.f
  %i.n = and i8 %i.m, 7
  %i.o = icmp eq i8 %i.i, 0
  %i.p = icmp eq i8 %i.n, 5                       ; 2 uses
  %i.q = and i1 %i.o, %i.p                        ; 3 uses
  %i.r = icmp slt i8 %i.f, -64
  %or.cond = or i1 %i.r, %i.q
  %i.s = lshr i64 %1, 8
  %i.t = trunc i64 %i.s to i8
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = zext nneg i32 %i.j to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.u
  %.0.copyload.i = load i32, ptr %i.v, align 1
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.w = icmp eq i8 %i.i, 64
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = zext nneg i32 %i.j to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = sext i8 %i.z to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i32 [ %.0.copyload.i, %bb.b ], [ %i.aa, %bb.d ], [ 0, %bb.c ]
  %i.ab = add nsw i32 %.0, %3                     ; 4 uses
  store i8 %i.t, ptr %i.a, align 1
  %i.ac = sext i32 %i.ab to i64
  %i.ad = add nsw i64 %i.ac, -128
  %i.ae = icmp ult i64 %i.ad, -256
  %or.cond3 = or i1 %i.ae, %i.q
  br i1 %or.cond3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = and i8 %i.f, 63
  %i.ag = select i1 %i.q, i8 0, i8 -128
  %i.ah = or disjoint i8 %i.ag, %i.af
  store i8 %i.ah, ptr %i.b, align 2
  %i.ai = or disjoint i32 %i.j, 4
  %i.aj = zext nneg i32 %i.ai to i64
  store i64 %i.aj, ptr %i.c, align 8
  %i.ak = zext nneg i32 %i.j to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ak
  store i32 %i.ab, ptr %i.al, align 1
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.am = icmp ne i32 %i.ab, 0
  %or.cond5 = or i1 %i.am, %i.p
  %i.an = and i8 %i.f, 63                         ; 2 uses
  br i1 %or.cond5, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ao = or disjoint i8 %i.an, 64
  store i8 %i.ao, ptr %i.b, align 2
  %i.ap = add nuw nsw i32 %i.j, 1
  %i.aq = zext nneg i32 %i.ap to i64
  store i64 %i.aq, ptr %i.c, align 8
  %i.ar = trunc i32 %i.ab to i8
  %i.as = zext nneg i32 %i.j to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.as
  store i8 %i.ar, ptr %i.at, align 1
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store i8 %i.an, ptr %i.b, align 2
  %i.au = zext nneg i32 %i.j to i64
  store i64 %i.au, ptr %i.c, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.f
  br i1 %i.h, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i8 %i.l, ptr %.ptr37, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal7Operand19AddressUsesRegisterENS0_8RegisterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i8 %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.c = load i8, ptr %i.b, align 2               ; 3 uses
  %i.d = and i8 %i.c, 7                           ; 2 uses
  %i.e = icmp eq i8 %i.d, 4
end_hunk_0
