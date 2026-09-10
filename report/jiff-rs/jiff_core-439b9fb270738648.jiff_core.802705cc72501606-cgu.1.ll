Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff_core-439b9fb270738648.jiff_core.802705cc72501606-cgu.1?download=true
inline.NumInlined: 198
inline.NumDeleted: 73
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvMs1_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_7DayTime11to_datetime:bb.a
  %spec.store.select.i = select i1 %i.co, i8 -1, i8 %i.cj ; 5 uses
  %i.cp = add i8 %spec.store.select.i, -6
  %or.cond.i46.i = icmp ult i8 %i.cp, -11
  %i.cq = icmp eq i8 %spec.store.select.i, 0
  %or.cond2.i47.i = or i1 %i.cq, %or.cond.i46.i
  br i1 %or.cond2.i47.i, label %bb.ah, label %bb.o, !prof !8

bb.o:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsb09rMIQFAXO_9jiff_core5civil4date4DateNtNtBN_6bounds10RangeErrorE6expectBN_.exit45.i
  %i.cr = icmp sgt i8 %spec.store.select.i, 0
  br i1 %i.cr, label %bb.z, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cs = icmp eq i8 %i.ch, 2                     ; 2 uses
  br i1 %i.cs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ct = srem i16 %2, 25
  %i.cu = icmp eq i16 %i.ct, 0
  %..i.i.i = select i1 %i.cu, i16 15, i16 3
  %i.cv = and i16 %..i.i.i, %2
  %i.cw = icmp eq i16 %i.cv, 0
  %spec.select.i.i.i = select i1 %i.cw, i8 29, i8 28
  br label %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i.i

bb.r:                                             ; preds = %bb.p
  %i.cx = lshr i8 %i.ch, 3
  %i.cy = xor i8 %i.cx, %i.ch
  %i.cz = or i8 %i.cy, 30
  br label %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i.i

_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i.i: ; preds = %bb.r, %bb.q
  %.sroa.0.0.i.i.i = phi i8 [ %spec.select.i.i.i, %bb.q ], [ %i.cz, %bb.r ] ; 2 uses
  %.sroa.423.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.417.0.insert.ext.i.i, 16
  %i.da = icmp samesign ult i8 %i.ch, 3           ; 2 uses
  %i.db = or disjoint i32 %.sroa.417.0.insert.ext.i.i, 12
  %.sroa.02.0.i.i.i = select i1 %i.da, i32 %i.db, i32 %.sroa.417.0.insert.ext.i.i
  %i.dc = sext i16 %2 to i32
  %i.dd = add nsw i32 %i.dc, 32800
  %.neg.i.i.i = sext i1 %i.da to i32
  %i.de = add nsw i32 %i.dd, %.neg.i.i.i          ; 2 uses
  %i.df = zext nneg i8 %.sroa.0.0.i.i.i to i32
  %.lhs.trunc145 = trunc nuw i32 %i.de to i16     ; 2 uses
  %i.dg = udiv i16 %.lhs.trunc145, 100
  %.zext146 = zext nneg i16 %i.dg to i32
  %i.dh = mul nuw nsw i32 %i.de, 1461
  %i.di = lshr i32 %i.dh, 2
  %i.dj = udiv i16 %.lhs.trunc145, 400
  %.zext148 = zext nneg i16 %i.dj to i32
  %i.dk = mul nuw nsw i32 %.sroa.02.0.i.i.i, 979
  %i.dl = add nsw i32 %i.dk, -2919
  %i.dm = lshr i32 %i.dl, 5
  %reass.sub.i = add nsw i32 %i.di, -12699423
  %i.dn = sub nsw i32 %reass.sub.i, %.zext146
  %i.do = add nsw i32 %i.dn, %.zext148
  %i.dp = add nsw i32 %i.do, %i.dm
  %i.dq = add nsw i32 %i.dp, %i.df
  %i.dr = mul i32 %i.dq, 613566757
  %i.ds = add i32 %i.dr, -1879048192
  %i.dt = lshr i32 %i.ds, 29                      ; 2 uses
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.s, label %bb.t, !prof !161

bb.s:                                             ; preds = %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @18, ptr noundef nonnull inttoptr (i64 61 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #18, !noalias !156
  unreachable

bb.t:                                             ; preds = %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i.i
  %i.dv = trunc nuw nsw i32 %i.dt to i8
  %i.dw = sub nsw i8 %i.dv, %i.cl                 ; 3 uses
  %i.dx = icmp slt i8 %i.dw, 0
  %i.dy = add nsw i8 %i.dw, 7
  %spec.select.i33.i.i = select i1 %i.dx, i8 %i.dy, i8 %i.dw
  %i.dz = sub nuw nsw i8 %.sroa.0.0.i.i.i, %spec.select.i33.i.i
  %i.ea = xor i8 %spec.store.select.i, -1
  %.neg.i.i = mul nsw i8 %i.ea, -7
  %i.eb = add nsw i8 %i.dz, %.neg.i.i             ; 4 uses
  %i.ec = icmp slt i8 %i.eb, 1
  br i1 %i.ec, label %bb.ah, label %bb.u, !prof !9

bb.u:                                             ; preds = %bb.t
  %i.ed = icmp samesign ugt i8 %i.eb, 28
  br i1 %i.ed, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i.i.i, %bb.u
  %.sroa.518.0.insert.ext.i.i.i = zext nneg i8 %i.eb to i32
  %.sroa.518.0.insert.shift.i.i.i = shl nuw nsw i32 %.sroa.518.0.insert.ext.i.i.i, 24
  %.sroa.417.0.insert.insert.i.i.i = or disjoint i32 %.sroa.518.0.insert.shift.i.i.i, %.sroa.423.0.insert.shift.i.i
  %.sroa.016.0.insert.insert.i.i.i = or disjoint i32 %.sroa.417.0.insert.insert.i.i.i, %.sroa.016.0.insert.ext.i.i
  br label %_RNvMs2_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_3Day7to_date.exit

bb.w:                                             ; preds = %bb.u
  br i1 %i.cs, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ee = srem i16 %2, 25
  %i.ef = icmp eq i16 %i.ee, 0
  %..i.i.i.i = select i1 %i.ef, i16 15, i16 3
  %i.eg = and i16 %..i.i.i.i, %2
  %i.eh = icmp eq i16 %i.eg, 0
  %spec.select.i.i.i.i = select i1 %i.eh, i8 29, i8 28
  br label %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.ei = lshr i8 %i.ch, 3
  %i.ej = xor i8 %i.ei, %i.ch
  %i.ek = or i8 %i.ej, 30
  br label %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i.i.i

_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i.i.i: ; preds = %bb.y, %bb.x
  %.sroa.0.0.i.i.i.i = phi i8 [ %spec.select.i.i.i.i, %bb.x ], [ %i.ek, %bb.y ]
  %i.el = icmp samesign ugt i8 %i.eb, %.sroa.0.0.i.i.i.i
  br i1 %i.el, label %.sink.split.i, label %bb.v, !prof !162

bb.z:                                             ; preds = %bb.o
  %.sroa.428.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.417.0.insert.ext.i.i, 16
  %i.em = icmp samesign ult i8 %i.ch, 3           ; 2 uses
  %i.en = or disjoint i32 %.sroa.417.0.insert.ext.i.i, 12
  %.sroa.02.0.i35.i.i = select i1 %i.em, i32 %i.en, i32 %.sroa.417.0.insert.ext.i.i
  %i.eo = sext i16 %2 to i32
  %i.ep = add nsw i32 %i.eo, 32800
  %.neg.i37.i.i = sext i1 %i.em to i32
  %i.eq = add nsw i32 %i.ep, %.neg.i37.i.i        ; 2 uses
  %.lhs.trunc141 = trunc nuw i32 %i.eq to i16     ; 2 uses
  %i.er = udiv i16 %.lhs.trunc141, 100
  %.zext142 = zext nneg i16 %i.er to i32
  %i.es = mul nuw nsw i32 %i.eq, 1461
  %i.et = lshr i32 %i.es, 2
  %i.eu = udiv i16 %.lhs.trunc141, 400
  %.zext144 = zext nneg i16 %i.eu to i32
  %i.ev = mul nuw nsw i32 %.sroa.02.0.i35.i.i, 979
  %i.ew = add nsw i32 %i.ev, -2919
  %i.ex = lshr i32 %i.ew, 5
  %reass.sub59.i = add nsw i32 %i.et, -12699422
  %i.ey = sub nsw i32 %reass.sub59.i, %.zext142
  %i.ez = add nsw i32 %i.ey, %.zext144
  %i.fa = add nsw i32 %i.ez, %i.ex
  %i.fb = mul i32 %i.fa, 613566757
  %i.fc = add i32 %i.fb, -1879048192
  %i.fd = lshr i32 %i.fc, 29                      ; 2 uses
  %i.fe = icmp eq i32 %i.fd, 0
  br i1 %i.fe, label %bb.aa, label %bb.ab, !prof !161

bb.aa:                                            ; preds = %bb.z
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @18, ptr noundef nonnull inttoptr (i64 61 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #18, !noalias !156
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.ff = trunc nuw nsw i32 %i.fd to i8
  %i.fg = sub nsw i8 %i.cl, %i.ff                 ; 3 uses
  %i.fh = icmp slt i8 %i.fg, 0
  %i.fi = add nsw i8 %i.fg, 7
  %spec.select.i39.i.i = select i1 %i.fh, i8 %i.fi, i8 %i.fg
  %i.fj = mul nuw nsw i8 %spec.store.select.i, 7
  %i.fk = add nsw i8 %spec.select.i39.i.i, %i.fj  ; 3 uses
  %i.fl = add nsw i8 %i.fk, -6                    ; 2 uses
  %i.fm = icmp samesign ult i8 %i.fk, 7
  br i1 %i.fm, label %bb.ah, label %bb.ac, !prof !9

bb.ac:                                            ; preds = %bb.ab
  %i.fn = icmp samesign ugt i8 %i.fk, 34
  br i1 %i.fn, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i55.i.i, %bb.ac
  %.sroa.518.0.insert.ext.i48.i.i = zext nneg i8 %i.fl to i32
  %.sroa.518.0.insert.shift.i49.i.i = shl nuw nsw i32 %.sroa.518.0.insert.ext.i48.i.i, 24
  %.sroa.417.0.insert.insert.i52.i.i = or disjoint i32 %.sroa.518.0.insert.shift.i49.i.i, %.sroa.428.0.insert.shift.i.i
  %.sroa.016.0.insert.insert.i54.i.i = or disjoint i32 %.sroa.417.0.insert.insert.i52.i.i, %.sroa.016.0.insert.ext.i.i
  br label %_RNvMs2_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_3Day7to_date.exit

bb.ae:                                            ; preds = %bb.ac
  %i.fo = icmp eq i8 %i.ch, 2
  br i1 %i.fo, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fp = srem i16 %2, 25
  %i.fq = icmp eq i16 %i.fp, 0
  %..i.i62.i.i = select i1 %i.fq, i16 15, i16 3
  %i.fr = and i16 %..i.i62.i.i, %2
  %i.fs = icmp eq i16 %i.fr, 0
  %spec.select.i.i63.i.i = select i1 %i.fs, i8 29, i8 28
  br label %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i55.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.ft = lshr i8 %i.ch, 3
  %i.fu = xor i8 %i.ft, %i.ch
  %i.fv = or i8 %i.fu, 30
  br label %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i55.i.i

_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i55.i.i: ; preds = %bb.ag, %bb.af
  %.sroa.0.0.i.i56.i.i = phi i8 [ %spec.select.i.i63.i.i, %bb.af ], [ %i.fv, %bb.ag ]
  %i.fw = icmp samesign ugt i8 %i.fl, %.sroa.0.0.i.i56.i.i
  br i1 %i.fw, label %.sink.split.i, label %bb.ad

.sink.split.i:                                    ; preds = %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i55.i.i, %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i.i.i
  %.sroa.530.0.insert.shift.i.i.i = shl nuw i32 %.sroa.016.0.insert.ext.i.i, 16
  %.sroa.429.0.insert.shift.i.i.i = shl nuw nsw i32 %.sroa.417.0.insert.ext.i.i, 8
  %.sroa.429.0.insert.insert.i.i.i = or disjoint i32 %.sroa.429.0.insert.shift.i.i.i, %.sroa.530.0.insert.shift.i.i.i
  br label %bb.ah

bb.ah:                                            ; preds = %.sink.split.i, %bb.ab, %bb.t, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsb09rMIQFAXO_9jiff_core5civil4date4DateNtNtBN_6bounds10RangeErrorE6expectBN_.exit45.i
  %.sroa.5.0.i48.ph.i = phi i32 [ 767, %bb.ab ], [ 4095, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsb09rMIQFAXO_9jiff_core5civil4date4DateNtNtBN_6bounds10RangeErrorE6expectBN_.exit45.i ], [ 767, %bb.t ], [ %.sroa.429.0.insert.insert.i.i.i, %.sink.split.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !163
  store i32 %.sroa.5.0.i48.ph.i, ptr %i.a, align 4, !noalias !163
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 25, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #18, !noalias !156
  unreachable

_RNvMs2_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_3Day7to_date.exit: ; preds = %bb.ad, %bb.v, %bb.k, %bb.g
  %.sroa.5.0.i = phi i32 [ %.sroa.0.0.insert.insert.i.i.i, %bb.k ], [ %.sroa.0.0.insert.insert.i.i.i.i, %bb.g ], [ %.sroa.016.0.insert.insert.i54.i.i, %bb.ad ], [ %.sroa.016.0.insert.insert.i.i.i, %bb.v ]
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.fy = load i32, ptr %i.fx, align 4, !noundef !5
  %i.fz = sub i32 %i.fy, %3                       ; 3 uses
  %i.ga = sdiv i32 %i.fz, 86400
  %i.gb = srem i32 %i.fz, 86400                   ; 4 uses
  %.lobit.i = ashr i32 %i.gb, 31
  %.sroa.0.0.i95 = add nsw i32 %.lobit.i, %i.ga
  %i.gc = icmp slt i32 %i.gb, 0
  %i.gd = add nsw i32 %i.gb, 86400
  %spec.select.i = select i1 %i.gc, i32 %i.gd, i32 %i.gb ; 3 uses
  %i.ge = tail call fastcc i48 @_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date11checked_add(i32 noundef %.sroa.5.0.i, i32 noundef %.sroa.0.0.i95) #19 ; 2 uses
  %.sroa.046.2.extract.shift = lshr i48 %i.ge, 16 ; 2 uses
  %.sroa.046.2.extract.trunc = trunc i48 %.sroa.046.2.extract.shift to i16 ; 2 uses
  %i.gf = trunc i48 %i.ge to i1
  br i1 %i.gf, label %bb.aj, label %bb.ak

_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date3new.exit: ; preds = %bb.i
  %i.gg = add i16 %2, -10000
  %or.cond.i = icmp ult i16 %i.gg, -19999
  br i1 %or.cond.i, label %bb.ai, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsb09rMIQFAXO_9jiff_core5civil4date4DateNtNtBN_6bounds10RangeErrorE6unwrapBN_.exit94, !prof !164

bb.ai:                                            ; preds = %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date3new.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !165
  store i32 8447, ptr %i.d, align 4, !noalias !165
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #18
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsb09rMIQFAXO_9jiff_core5civil4date4DateNtNtBN_6bounds10RangeErrorE6unwrapBN_.exit94: ; preds = %bb.k, %bb.j, %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date3new.exit
  %.sroa.6.0.i163.in = zext i16 %2 to i32
  %.sroa.6.0.i163 = or disjoint i32 %.sroa.6.0.i163.in, 520880128
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.6.0.i163, ptr %i.gh, align 4
  store i64 16671994596215295, ptr %0, align 4
  br label %bb.ap

bb.aj:                                            ; preds = %_RNvMs2_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_3Day7to_date.exit
  %i.gi = icmp slt i32 %i.fz, 0                   ; 2 uses
  %.sroa.016.0.insert.ext.i136 = zext i16 %2 to i32
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %. = select i1 %i.gi, i32 16842752, i32 520880128
  %.164 = select i1 %i.gi, i64 0, i64 16671994596215295
  %.sroa.016.0.insert.insert.i137 = or disjoint i32 %., %.sroa.016.0.insert.ext.i136
  store i32 %.sroa.016.0.insert.insert.i137, ptr %i.gj, align 4
  store i64 %.164, ptr %0, align 4
  br label %bb.ap

bb.ak:                                            ; preds = %_RNvMs2_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_3Day7to_date.exit
  %i.gk = icmp sgt i16 %2, %.sroa.046.2.extract.trunc
  br i1 %i.gk, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsb09rMIQFAXO_9jiff_core5civil4date4DateNtNtBN_6bounds10RangeErrorE6unwrapBN_.exit91, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gl = icmp slt i16 %2, %.sroa.046.2.extract.trunc
  br i1 %i.gl, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsb09rMIQFAXO_9jiff_core5civil4date4DateNtNtBN_6bounds10RangeErrorE6unwrapBN_.exit88, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsb09rMIQFAXO_9jiff_core5civil4time10TimeSecondNtNtBN_6bounds10RangeErrorE6unwrapBN_.exit

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsb09rMIQFAXO_9jiff_core5civil4date4DateNtNtBN_6bounds10RangeErrorE6unwrapBN_.exit91: ; preds = %bb.ak
  %.sroa.016.0.insert.ext.i106 = zext i16 %2 to i32
  %.sroa.016.0.insert.insert.i107 = or disjoint i32 %.sroa.016.0.insert.ext.i106, 16842752
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.016.0.insert.insert.i107, ptr %i.gm, align 4
  store i64 0, ptr %0, align 4
  br label %bb.ap

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsb09rMIQFAXO_9jiff_core5civil4date4DateNtNtBN_6bounds10RangeErrorE6unwrapBN_.exit88: ; preds = %bb.al
  %.sroa.016.0.insert.ext.i116 = zext i16 %2 to i32
  %.sroa.016.0.insert.insert.i117 = or disjoint i32 %.sroa.016.0.insert.ext.i116, 520880128
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.016.0.insert.insert.i117, ptr %i.gn, align 4
  store i64 16671994596215295, ptr %0, align 4
  br label %bb.ap

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsb09rMIQFAXO_9jiff_core5civil4time10TimeSecondNtNtBN_6bounds10RangeErrorE6unwrapBN_.exit: ; preds = %bb.al
  %i.go = icmp eq i32 %spec.select.i, 0
  br i1 %i.go, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsb09rMIQFAXO_9jiff_core5civil4time10TimeSecondNtNtBN_6bounds10RangeErrorE6unwrapBN_.exit
  %i.gp = udiv i32 %spec.select.i, 3600
  %i.gq = trunc nuw nsw i32 %i.gp to i8           ; 2 uses
  %i.gr = urem i32 %spec.select.i, 3600           ; 2 uses
  %i.gs = icmp eq i32 %i.gr, 0
  br i1 %i.gs, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsb09rMIQFAXO_9jiff_core5civil4time10TimeSecondNtNtBN_6bounds10RangeErrorE6unwrapBN_.exit, %bb.ao
  %.sroa.4.0 = phi i8 [ 0, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsb09rMIQFAXO_9jiff_core5civil4time10TimeSecondNtNtBN_6bounds10RangeErrorE6unwrapBN_.exit ], [ 0, %bb.am ], [ %i.gy, %bb.ao ]
  %.sroa.3.0 = phi i8 [ 0, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsb09rMIQFAXO_9jiff_core5civil4time10TimeSecondNtNtBN_6bounds10RangeErrorE6unwrapBN_.exit ], [ 0, %bb.am ], [ %i.gw, %bb.ao ]
  %.sroa.2.0 = phi i8 [ 0, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsb09rMIQFAXO_9jiff_core5civil4time10TimeSecondNtNtBN_6bounds10RangeErrorE6unwrapBN_.exit ], [ %i.gq, %bb.am ], [ %i.gq, %bb.ao ]
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gu = trunc nuw i48 %.sroa.046.2.extract.shift to i32
  store i32 %i.gu, ptr %i.gt, align 4
  store i32 0, ptr %0, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %.sroa.2.0, ptr %.sroa.2.0..sroa_idx, align 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %.sroa.3.0, ptr %.sroa.3.0..sroa_idx, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx, align 2
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %.lhs.trunc = trunc nuw nsw i32 %i.gr to i16    ; 2 uses
  %i.gv = udiv i16 %.lhs.trunc, 60
  %i.gw = trunc nuw nsw i16 %i.gv to i8
  %i.gx = urem i16 %.lhs.trunc, 60
  %i.gy = trunc nuw nsw i16 %i.gx to i8
  br label %bb.an

bb.ap:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsb09rMIQFAXO_9jiff_core5civil4date4DateNtNtBN_6bounds10RangeErrorE6unwrapBN_.exit91, %bb.an, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsb09rMIQFAXO_9jiff_core5civil4date4DateNtNtBN_6bounds10RangeErrorE6unwrapBN_.exit88, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsb09rMIQFAXO_9jiff_core5civil4date4DateNtNtBN_6bounds10RangeErrorE6unwrapBN_.exit94, %bb.aj
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define internal fastcc noundef zeroext i1 @_RNvMs4_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_7DstInfo6in_dst(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(12) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i16, ptr %i.c, align 8, !alias.scope !181, !noalias !182, !noundef !5 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i16, ptr %i.e, align 4, !alias.scope !182, !noalias !181, !noundef !5 ; 6 uses
  %i.g = tail call i8 @llvm.scmp.i8.i16(i16 %i.d, i16 %i.f)
  %i.h = icmp eq i16 %i.d, %i.f
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.j = load i8, ptr %i.i, align 2, !alias.scope !181, !noalias !182, !noundef !5 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.l = load i8, ptr %i.k, align 2, !alias.scope !182, !noalias !181, !noundef !5 ; 2 uses
  %i.m = tail call i8 @llvm.scmp.i8.i8(i8 %i.j, i8 %i.l)
  %i.n = icmp eq i8 %i.j, %i.l
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b, %bb.a
  %.sroa.0.0.i = phi i8 [ %i.t, %bb.d ], [ %i.m, %bb.b ], [ %i.g, %bb.a ] ; 2 uses
  %i.o = icmp eq i8 %.sroa.0.0.i, 0
  br i1 %i.o, label %bb.e, label %_RNvXs8_NtNtCsb09rMIQFAXO_9jiff_core5civil8datetimeNtB5_8DateTimeNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 19
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !181, !noalias !182, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 31
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !182, !noalias !181, !noundef !5
  %i.t = tail call i8 @llvm.scmp.i8.i8(i8 %i.q, i8 %i.s)
  br label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = load i8, ptr %i.u, align 4, !alias.scope !181, !noalias !182, !noundef !5 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load i8, ptr %i.w, align 8, !alias.scope !182, !noalias !181, !noundef !5 ; 2 uses
  %i.y = tail call i8 @llvm.scmp.i8.i8(i8 %i.v, i8 %i.x)
  %i.z = icmp eq i8 %i.v, %i.x
  br i1 %i.z, label %bb.f, label %_RNvXs8_NtNtCsb09rMIQFAXO_9jiff_core5civil8datetimeNtB5_8DateTimeNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !181, !noalias !182, !noundef !5 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.ad = load i8, ptr %i.ac, align 1, !alias.scope !182, !noalias !181, !noundef !5 ; 2 uses
  %i.ae = tail call i8 @llvm.scmp.i8.i8(i8 %i.ab, i8 %i.ad)
  %i.af = icmp eq i8 %i.ab, %i.ad
  br i1 %i.af, label %bb.g, label %_RNvXs8_NtNtCsb09rMIQFAXO_9jiff_core5civil8datetimeNtB5_8DateTimeNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ah = load i8, ptr %i.ag, align 2, !alias.scope !181, !noalias !182, !noundef !5 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.aj = load i8, ptr %i.ai, align 2, !alias.scope !182, !noalias !181, !noundef !5 ; 2 uses
  %i.ak = tail call i8 @llvm.scmp.i8.i8(i8 %i.ah, i8 %i.aj)
  %i.al = icmp eq i8 %i.ah, %i.aj
  br i1 %i.al, label %bb.h, label %_RNvXs8_NtNtCsb09rMIQFAXO_9jiff_core5civil8datetimeNtB5_8DateTimeNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit

bb.h:                                             ; preds = %bb.g
  %i.am = load i32, ptr %i.a, align 8, !alias.scope !181, !noalias !182, !noundef !5
  %i.an = load i32, ptr %i.b, align 4, !alias.scope !182, !noalias !181, !noundef !5
  %i.ao = tail call i8 @llvm.scmp.i8.i32(i32 %i.am, i32 %i.an)
  br label %_RNvXs8_NtNtCsb09rMIQFAXO_9jiff_core5civil8datetimeNtB5_8DateTimeNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit

_RNvXs8_NtNtCsb09rMIQFAXO_9jiff_core5civil8datetimeNtB5_8DateTimeNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g, %bb.h
  %.sroa.0.1.i = phi i8 [ %i.ao, %bb.h ], [ %i.ak, %bb.g ], [ %i.ae, %bb.f ], [ %i.y, %bb.e ], [ %.sroa.0.0.i, %bb.c ]
  %i.ap = icmp slt i8 %.sroa.0.1.i, 1
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.ap, label %bb.q, label %bb.i

bb.i:                                             ; preds = %_RNvXs8_NtNtCsb09rMIQFAXO_9jiff_core5civil8datetimeNtB5_8DateTimeNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  %i.ar = load i16, ptr %i.aq, align 4, !alias.scope !184, !noalias !183, !noundef !5 ; 4 uses
  %i.as = tail call i8 @llvm.scmp.i8.i16(i16 %i.f, i16 %i.ar)
  %i.at = icmp eq i16 %i.f, %i.ar
  br i1 %i.at, label %bb.j, label %bb.k

end_hunk_0
begin_hunk_1_@_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser18parse_abbreviation:bb.a
  %.sroa.414.0.extract.trunc.i = trunc nuw nsw i64 %i.ap to i56
  br label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser27parse_unquoted_abbreviation.exit

.noexc.i.i:                                       ; preds = %_RNvMsg_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_8ArrayStrKj6_E3newB7_.exit.thread.i
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef %i.ah) #21, !noalias !219
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EEEB12_.exit.i.i: ; preds = %_RNvMsg_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_8ArrayStrKj6_E3newB7_.exit.thread.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr nonnull readonly align 1 %i.af, i64 %i.ah, i1 false), !noalias !220
  br label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser27parse_unquoted_abbreviation.exit

bb.k:                                             ; preds = %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.aq, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 4, ptr %i.ar, align 2
  store i8 -1, ptr %0, align 8
  br label %bb.z

bb.l:                                             ; preds = %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit
  %umax.i4 = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %i.f) ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i6, %bb.l
  %i.as = phi i64 [ %i.be, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i6 ], [ %i.l, %bb.l ] ; 5 uses
  %exitcond.not.i5 = icmp eq i64 %i.as, %umax.i4
  br i1 %exitcond.not.i5, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !noalias !221, !noundef !5 ; 6 uses
  %i.av = add nsw i8 %i.au, -48
  %.sroa.05.0.i = icmp ult i8 %i.av, 10
  %i.aw = icmp samesign ugt i8 %i.au, 64
  %i.ax = icmp samesign ult i8 %i.au, 91
  %.sroa.06.0.i = select i1 %i.aw, i1 %i.ax, i1 %.sroa.05.0.i
  %i.ay = icmp ugt i8 %i.au, 96
  %i.az = icmp ult i8 %i.au, 123
  %.sroa.07.0.i = select i1 %i.ay, i1 %i.az, i1 %.sroa.06.0.i
  br i1 %.sroa.07.0.i, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.m
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %umax.i4, i64 noundef %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #18, !noalias !221
  unreachable

bb.p:                                             ; preds = %bb.n
  switch i8 %i.au, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.thread.i [
    i8 43, label %bb.q
    i8 45, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p, %bb.n
  %i.ba = sub nuw i64 %i.as, %i.l
  %i.bb = icmp samesign ugt i64 %i.ba, 254
  br i1 %i.bb, label %.loopexit, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i6

_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.thread.i: ; preds = %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i6, %bb.p
  %i.bc = phi i64 [ %i.as, %bb.p ], [ %i.f, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i6 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !221
  %i.bd = icmp ule i64 %i.bc, %i.d
  %.not.i7 = icmp ugt i64 %i.bc, %i.f
  %or.cond.i = or i1 %i.bd, %.not.i7
  br i1 %or.cond.i, label %bb.s, label %bb.r, !prof !215

_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i6: ; preds = %bb.q
  %i.be = add i64 %i.as, 1                        ; 3 uses
  store i64 %i.be, ptr %i.c, align 8, !noalias !221
  %.not57.i = icmp eq i64 %i.be, %i.f
  br i1 %.not57.i, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.thread.i, label %bb.m

bb.r:                                             ; preds = %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.thread.i
  %i.bf = sub nuw i64 %i.bc, %i.l
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l
  call void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bg, i64 noundef %i.bf), !noalias !221
  %i.bh = load i64, ptr %i.a, align 8, !range !216, !noalias !221, !noundef !5
  %i.bi = trunc nuw i64 %i.bh to i1
  br i1 %i.bi, label %bb.t, label %bb.u

bb.s:                                             ; preds = %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.thread.i
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %i.l, i64 noundef %i.bc, i64 noundef %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #18, !noalias !221
  unreachable

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !221
  br label %.loopexit

bb.u:                                             ; preds = %bb.r
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !221, !nonnull !5, !noundef !5 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !221, !noundef !5 ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !221
  %i.bn = load i64, ptr %i.c, align 8, !noalias !221, !noundef !5 ; 5 uses
  %i.bo = load i64, ptr %i.e, align 8, !noalias !221, !noundef !5 ; 3 uses
  %i.bp = icmp eq i64 %i.bn, %i.bo
  br i1 %i.bp, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = icmp ult i64 %i.bn, %i.bo
  br i1 %i.bq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.br = load ptr, ptr %1, align 8, !noalias !221, !nonnull !5, !noundef !5
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bn
  %i.bt = load i8, ptr %i.bs, align 1, !noalias !221, !noundef !5
  %i.bu = icmp eq i8 %i.bt, 62
  br i1 %i.bu, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit34.i, label %.loopexit

bb.x:                                             ; preds = %bb.v
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.bn, i64 noundef %i.bo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #18, !noalias !221
  unreachable

_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit34.i: ; preds = %bb.w
  %i.bv = add nuw i64 %i.bn, 1
  store i64 %i.bv, ptr %i.c, align 8, !noalias !221
  %i.bw = icmp ult i64 %i.bm, 3
  br i1 %i.bw, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit34.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i3), !noalias !221
  %i.bx = icmp ugt i64 %i.bm, 6
  br i1 %i.bx, label %_RNvMsg_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_8ArrayStrKj6_E3newB7_.exit.thread.i14, label %_RNvMsg_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_8ArrayStrKj6_E3newB7_.exit.i8

_RNvMsg_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_8ArrayStrKj6_E3newB7_.exit.thread.i14: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i3), !noalias !221
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17, !noalias !222
  %i.by = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) %i.bm, i64 noundef 1) #17, !noalias !222 ; 3 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %.noexc.i.i16, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EEEB12_.exit.i.i15

_RNvMsg_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_8ArrayStrKj6_E3newB7_.exit.i8: ; preds = %bb.y
  %i.ca = sub nuw nsw i64 6, %i.bm
  %i.cb = getelementptr i8, ptr %.sroa.0.i.i3, i64 %i.bm
  call void @llvm.memset.p0.i64(ptr align 1 %i.cb, i8 0, i64 %i.ca, i1 false), !noalias !223
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0.i.i3, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.bk, i64 range(i64 3, 0) %i.bm, i1 false), !noalias !221
  %.sroa.0.0..sroa.0.0..sroa.05.sroa.0.0.copyload.i.i9 = load i48, ptr %.sroa.0.i.i3, align 8, !noalias !223
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i3), !noalias !221
  %.sroa.05.0.insert.ext.i.i10 = zext i48 %.sroa.0.0..sroa.0.0..sroa.05.sroa.0.0.copyload.i.i9 to i64
  %i.cc = shl nuw nsw i64 %i.bm, 48
  %i.cd = or disjoint i64 %i.cc, %.sroa.05.0.insert.ext.i.i10
  %.sroa.416.0.extract.trunc.i = trunc nuw nsw i64 %i.cd to i56
  br label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser25parse_quoted_abbreviation.exit

.noexc.i.i16:                                     ; preds = %_RNvMsg_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_8ArrayStrKj6_E3newB7_.exit.thread.i14
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef %i.bm) #21, !noalias !224
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EEEB12_.exit.i.i15: ; preds = %_RNvMsg_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_8ArrayStrKj6_E3newB7_.exit.thread.i14
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.by, ptr nonnull readonly align 1 %i.bk, i64 %i.bm, i1 false), !noalias !225
  br label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser25parse_quoted_abbreviation.exit

bb.z:                                             ; preds = %.loopexit53, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser27parse_unquoted_abbreviation.exit, %.loopexit, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser25parse_quoted_abbreviation.exit, %bb.k
  ret void

.loopexit:                                        ; preds = %bb.q, %bb.u, %bb.t, %bb.w, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit34.i
  %.sroa.10.0.ph.off0 = phi i8 [ 2, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit34.i ], [ 5, %bb.w ], [ 3, %bb.u ], [ 0, %bb.t ], [ 1, %bb.q ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.ce, align 1
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %.sroa.10.0.ph.off0, ptr %i.cf, align 2
  store i8 -1, ptr %0, align 8
  br label %bb.z

_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser25parse_quoted_abbreviation.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EEEB12_.exit.i.i15, %_RNvMsg_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_8ArrayStrKj6_E3newB7_.exit.i8
  %.sroa.10.0 = phi i56 [ %.sroa.416.0.extract.trunc.i, %_RNvMsg_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_8ArrayStrKj6_E3newB7_.exit.i8 ], [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EEEB12_.exit.i.i15 ]
  %.sroa.17.0 = phi ptr [ undef, %_RNvMsg_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_8ArrayStrKj6_E3newB7_.exit.i8 ], [ %i.by, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EEEB12_.exit.i.i15 ]
  %.sroa.0.0 = phi i8 [ 0, %_RNvMsg_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_8ArrayStrKj6_E3newB7_.exit.i8 ], [ 2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EEEB12_.exit.i.i15 ]
  store i8 %.sroa.0.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i56 %.sroa.10.0, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.17.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bm, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.z

.loopexit53:                                      ; preds = %bb.e, %bb.i, %bb.h
  %.sroa.8.0.ph.off0 = phi i8 [ 2, %bb.i ], [ 0, %bb.h ], [ 1, %bb.e ]
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.cg, align 1
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %.sroa.8.0.ph.off0, ptr %i.ch, align 2
  store i8 -1, ptr %0, align 8
  br label %bb.z

_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser27parse_unquoted_abbreviation.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EEEB12_.exit.i.i, %_RNvMsg_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_8ArrayStrKj6_E3newB7_.exit.i
  %.sroa.13.0 = phi ptr [ undef, %_RNvMsg_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_8ArrayStrKj6_E3newB7_.exit.i ], [ %i.ak, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EEEB12_.exit.i.i ]
  %.sroa.030.0 = phi i8 [ 0, %_RNvMsg_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_8ArrayStrKj6_E3newB7_.exit.i ], [ 2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EEEB12_.exit.i.i ]
  %.sroa.8.0 = phi i56 [ %.sroa.414.0.extract.trunc.i, %_RNvMsg_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_8ArrayStrKj6_E3newB7_.exit.i ], [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EEEB12_.exit.i.i ]
  store i8 %.sroa.030.0, ptr %0, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i56 %.sroa.8.0, ptr %.sroa.440.0..sroa_idx, align 1
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.13.0, ptr %.sroa.541.0..sroa_idx, align 8
  %.sroa.642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ah, ptr %.sroa.642.0..sroa_idx, align 8
  br label %bb.z
}

; Function Attrs: nonlazybind uwtable
define internal fastcc range(i64 0, -4278190080) i64 @_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser18parse_posix_offset(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 17 uses
  %i.g = icmp eq i64 %i.d, %i.f
  br i1 %i.g, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.d, %i.f
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  %i.k = load i8, ptr %i.j, align 1, !noundef !5
  switch i8 %i.k, label %bb.e [
    i8 45, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i
    i8 43, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit6.i
  ]

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.d, i64 noundef %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #18
  unreachable

_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i: ; preds = %bb.c
  %i.l = add nuw i64 %i.d, 1                      ; 3 uses
  store i64 %i.l, ptr %i.c, align 8
  %.not7.i = icmp eq i64 %i.l, %i.f
  br i1 %.not7.i, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread, label %bb.e

_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit6.i: ; preds = %bb.c
  %i.m = add nuw i64 %i.d, 1                      ; 3 uses
  store i64 %i.m, ptr %i.c, align 8
  %.not.i = icmp eq i64 %i.m, %i.f
  br i1 %.not.i, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.c, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit6.i, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i
  %.promoted.i.i.ph = phi i64 [ %i.l, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i ], [ %i.m, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit6.i ], [ %i.d, %bb.c ], [ %i.d, %bb.a ] ; 7 uses
  %.sroa.04.0.not = phi i1 [ true, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i ], [ false, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit6.i ], [ false, %bb.c ], [ false, %bb.a ]
  %i.n = tail call i64 @llvm.usub.sat.i64(i64 %i.f, i64 %.promoted.i.i.ph)
  %i.o = icmp eq i64 %.promoted.i.i.ph, %i.f
  br i1 %i.o, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %exitcond.not.i.not.i = icmp ugt i64 %i.f, %.promoted.i.i.ph
  br i1 %exitcond.not.i.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.promoted.i.i.ph
  %i.r = load i8, ptr %i.q, align 1, !noundef !5
  %i.s = add i8 %i.r, -48                         ; 4 uses
  %or.cond.i.i = icmp ult i8 %i.s, 10
  br i1 %or.cond.i.i, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread

bb.h:                                             ; preds = %bb.i, %bb.f
  %.lcssa34.i = phi i64 [ %.promoted.i.i.ph, %bb.f ], [ %i.t, %bb.i ]
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa34.i, i64 noundef %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #18
  unreachable

_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i: ; preds = %bb.g
  %i.t = add nuw i64 %.promoted.i.i.ph, 1         ; 5 uses
  store i64 %i.t, ptr %i.c, align 8
  %i.u = icmp eq i64 %i.t, %i.f
  br i1 %i.u, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsb09rMIQFAXO_9jiff_core2tz6offset6OffsetNtNtBN_6bounds10RangeErrorE6expectBN_.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i
  %exitcond.not.i.1.i = icmp eq i64 %i.n, 1
  br i1 %exitcond.not.i.1.i, label %bb.h, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t
  %i.w = load i8, ptr %i.v, align 1, !noundef !5
  %i.x = add i8 %i.w, -48                         ; 2 uses
  %or.cond.i.1.i = icmp ult i8 %i.x, 10
  br i1 %or.cond.i.1.i, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread78

_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit: ; preds = %bb.j
  %i.y = mul nuw nsw i8 %i.s, 10
  %i.z = add nuw nsw i8 %i.x, %i.y                ; 2 uses
  %i.aa = add nuw i64 %.promoted.i.i.ph, 2        ; 2 uses
  store i64 %i.aa, ptr %i.c, align 8
  %or.cond.i = icmp samesign ugt i8 %i.z, 24
  br i1 %or.cond.i, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread78

_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread78: ; preds = %bb.j, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit
  %i.ab = phi i64 [ %i.aa, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit ], [ %i.t, %bb.j ] ; 5 uses
  %..i82 = phi i8 [ %i.z, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit ], [ %i.s, %bb.j ] ; 5 uses
  %i.ac = icmp ult i64 %i.ab, %i.f
  br i1 %i.ac, label %bb.k, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsb09rMIQFAXO_9jiff_core2tz6offset6OffsetNtNtBN_6bounds10RangeErrorE6expectBN_.exit

bb.k:                                             ; preds = %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread78
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ab
  %i.ae = load i8, ptr %i.ad, align 1, !noundef !5
  %i.af = icmp eq i8 %i.ae, 58
  br i1 %i.af, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsb09rMIQFAXO_9jiff_core2tz6offset6OffsetNtNtBN_6bounds10RangeErrorE6expectBN_.exit

_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit: ; preds = %bb.k
  %i.ag = add nuw i64 %i.ab, 1                    ; 6 uses
  store i64 %i.ag, ptr %i.c, align 8
  %.not = icmp eq i64 %i.ag, %i.f
  br i1 %.not, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread, label %bb.l

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsb09rMIQFAXO_9jiff_core2tz6offset6OffsetNtNtBN_6bounds10RangeErrorE6expectBN_.exit: ; preds = %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i, %bb.x, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread78, %bb.k, %bb.s, %bb.t
  %..i82111 = phi i8 [ %..i82, %bb.x ], [ %..i82, %bb.k ], [ %..i82, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread78 ], [ %..i82, %bb.s ], [ %..i82, %bb.t ], [ %i.s, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i ]
  %.sroa.037.0 = phi i32 [ %i.bq, %bb.x ], [ 0, %bb.k ], [ 0, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread78 ], [ 0, %bb.s ], [ 0, %bb.t ], [ 0, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i ]
  %.sroa.027.0 = phi i8 [ %i.bc, %bb.x ], [ 0, %bb.k ], [ 0, %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread78 ], [ %i.bc, %bb.s ], [ %i.bc, %bb.t ], [ 0, %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i ]
  %i.ah = zext nneg i8 %..i82111 to i32
  %.sroa.5.0.extract.shift.i = mul nuw nsw i32 %i.ah, 3600
  %i.ai = zext nneg i8 %.sroa.027.0 to i32
  %i.aj = mul nuw nsw i32 %i.ai, 60
  %i.ak = tail call noundef i32 @_RNvXs1_NtNtCsb09rMIQFAXO_9jiff_core2tz6offsetNtB5_6OffsetINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddlE3add(i32 noundef %.sroa.5.0.extract.shift.i, i32 noundef %i.aj)
  %i.al = tail call noundef i32 @_RNvXs1_NtNtCsb09rMIQFAXO_9jiff_core2tz6offsetNtB5_6OffsetINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddlE3add(i32 noundef %i.ak, i32 noundef %.sroa.037.0) ; 2 uses
  %i.am = sub i32 0, %i.al
  %.sroa.041.0 = select i1 %.sroa.04.0.not, i32 %i.al, i32 %i.am ; 3 uses
  %i.an = add i32 %.sroa.041.0, 89999
  %or.cond2 = icmp ult i32 %i.an, 179999
  br i1 %or.cond2, label %bb.z, label %bb.y, !prof !7

bb.l:                                             ; preds = %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit
  %i.ao = tail call i64 @llvm.usub.sat.i64(i64 %i.f, i64 %i.ag)
  %exitcond.not.i.not.i67 = icmp ugt i64 %i.f, %i.ag
  br i1 %exitcond.not.i.not.i67, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ag
  %i.aq = load i8, ptr %i.ap, align 1, !noundef !5 ; 2 uses
  %i.ar = icmp ult i8 %i.aq, 48
  br i1 %i.ar, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread, label %bb.o

bb.n:                                             ; preds = %bb.p, %bb.l
  %.lcssa30.i = phi i64 [ %i.ag, %bb.l ], [ %i.au, %bb.p ]
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa30.i, i64 noundef %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #18
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.as = add i8 %i.aq, -48                       ; 2 uses
  %i.at = icmp ugt i8 %i.as, 9
  br i1 %i.at, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread, label %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i68

_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i68: ; preds = %bb.o
  %i.au = add nuw i64 %i.ab, 2                    ; 4 uses
  store i64 %i.au, ptr %i.c, align 8
  %i.av = icmp eq i64 %i.au, %i.f
  br i1 %i.av, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread, label %bb.p

bb.p:                                             ; preds = %_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i68
  %exitcond.not.i.1.i69 = icmp eq i64 %i.ao, 1
  br i1 %exitcond.not.i.1.i69, label %bb.n, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.au
  %i.ax = load i8, ptr %i.aw, align 1, !noundef !5 ; 2 uses
  %i.ay = icmp ult i8 %i.ax, 48
  br i1 %i.ay, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = add i8 %i.ax, -48                       ; 2 uses
  %i.ba = icmp ugt i8 %i.az, 9
  br i1 %i.ba, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser12parse_minute.exit

_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser12parse_minute.exit: ; preds = %bb.r
  %i.bb = add nuw i64 %i.ab, 3                    ; 3 uses
  store i64 %i.bb, ptr %i.c, align 8
  %narrow.i = mul nuw nsw i8 %i.as, 10
  %i.bc = add nuw nsw i8 %i.az, %narrow.i         ; 4 uses
  %or.cond.i70 = icmp samesign ugt i8 %i.bc, 59
  br i1 %or.cond.i70, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread, label %bb.s

bb.s:                                             ; preds = %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser12parse_minute.exit
  %i.bd = icmp ult i64 %i.bb, %i.f
  br i1 %i.bd, label %bb.t, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsb09rMIQFAXO_9jiff_core2tz6offset6OffsetNtNtBN_6bounds10RangeErrorE6expectBN_.exit

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bb
  %i.bf = load i8, ptr %i.be, align 1, !noundef !5
  %i.bg = icmp eq i8 %i.bf, 58
  br i1 %i.bg, label %bb.u, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsb09rMIQFAXO_9jiff_core2tz6offset6OffsetNtNtBN_6bounds10RangeErrorE6expectBN_.exit

bb.u:                                             ; preds = %bb.t
  %i.bh = tail call fastcc noundef zeroext i1 @_RNvMs6_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser4bump(ptr noundef nonnull align 8 %0)
  br i1 %i.bh, label %bb.v, label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.bi = tail call fastcc { i1, i8 } @_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser12parse_second(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.bj = extractvalue { i1, i8 } %i.bi, 0
  %i.bk = extractvalue { i1, i8 } %i.bi, 1        ; 3 uses
  br i1 %i.bj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bl = add nsw i8 %i.bk, 1
  %i.bm = icmp ult i8 %i.bl, 5
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = zext i8 %i.bk to i64
  %i.bo = shl nuw nsw i64 %i.bn, 16
  %i.bp = or disjoint i64 %i.bo, 1281
  br label %_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser16parse_hour_posix.exit.thread
end_hunk_1
