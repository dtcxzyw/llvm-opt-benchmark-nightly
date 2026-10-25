Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_package-a9f8ff2ef7d48f62.nickel_lang_package.b5fe27ed4146988a-cgu.0?download=true
inline.NumInlined: 25765
inline.NumDeleted: 11076
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 162
loop-unroll.NumUnrolled: 230
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN4core3ops8function5FnMut8call_mut17heba46255c536b521E:bb.a
  %i.cs = tail call i8 @llvm.ucmp.i8.i16(i16 %i.cq, i16 %i.cr)
  %i.ct = icmp eq i16 %i.cq, %i.cr
  br i1 %i.ct, label %.thread77.i.i.i.i, label %"_ZN54_$LT$gix_url..Url$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h8643935685102a95E.exit.i.i.i"

.thread77.i.i.i.i:                                ; preds = %bb.y, %bb.x
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !alias.scope !47095, !nonnull !41, !noundef !41
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !alias.scope !47095, !noundef !41 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !alias.scope !47096, !nonnull !41, !noundef !41
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !47096, !noundef !41 ; 2 uses
  %i.dc = sub i64 %i.cx, %i.db
  %.51.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.cx, i64 %i.db)
  %i.dd = tail call i32 @memcmp(ptr nonnull %i.cv, ptr nonnull %i.cz, i64 %.51.i.i.i.i), !noalias !47098 ; 2 uses
  %i.de = sext i32 %i.dd to i64
  %i.df = icmp eq i32 %i.dd, 0
  %spec.store.select.i.i.i.i = select i1 %i.df, i64 %i.dc, i64 %i.de
  %i.dg = tail call i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i.i, i64 0)
  br label %"_ZN54_$LT$gix_url..Url$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h8643935685102a95E.exit.i.i.i"

"_ZN54_$LT$gix_url..Url$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h8643935685102a95E.exit.i.i.i": ; preds = %.thread77.i.i.i.i, %bb.y, %bb.u, %bb.t, %bb.q, %bb.m, %bb.h, %bb.g
  %.sroa.0.4.i.i.i.i = phi i8 [ %i.ab, %bb.g ], [ %i.ak, %bb.h ], [ %i.cg, %bb.u ], [ %i.bc, %bb.m ], [ %i.cs, %bb.y ], [ %i.ca, %bb.t ], [ %i.bq, %bb.q ], [ %i.dg, %.thread77.i.i.i.i ] ; 2 uses
  %i.dh = icmp eq i8 %.sroa.0.4.i.i.i.i, 0
  br i1 %i.dh, label %bb.z, label %_ZN4core3cmp10PartialOrd2lt17hc22bc632dd203acbE.exit

bb.z:                                             ; preds = %"_ZN54_$LT$gix_url..Url$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h8643935685102a95E.exit.i.i.i"
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.dk = tail call i32 @memcmp(ptr noundef nonnull readonly dereferenceable(20) %i.di, ptr noundef nonnull readonly dereferenceable(20) %i.dj, i64 20), !alias.scope !47102 ; 2 uses
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.val.i.i.i = load ptr, ptr %i.dm, align 8, !alias.scope !47103, !nonnull !41, !noundef !41
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val8.i.i.i = load i64, ptr %i.dn, align 8, !alias.scope !47103, !noundef !41
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val9.i.i.i = load ptr, ptr %i.do, align 8, !alias.scope !47104 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.val10.i.i.i = load i64, ptr %i.dp, align 8, !alias.scope !47104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !47102
  call void @_ZN3std4path4Path10components17h13437a8377d0cf8dE(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i.i, i64 noundef %.val8.i.i.i), !noalias !47102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !47102
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i) ]
  call void @_ZN3std4path4Path10components17h13437a8377d0cf8dE(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val9.i.i.i, i64 noundef %.val10.i.i.i), !noalias !47102
  %i.dq = call noundef range(i8 -1, 2) i8 @_ZN3std4path18compare_components17h222977130415a62cE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.c), !noalias !47102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !47102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !47102
  br label %_ZN4core3cmp10PartialOrd2lt17hc22bc632dd203acbE.exit

bb.ab:                                            ; preds = %bb.z
  %i.dr = tail call i8 @llvm.scmp.i8.i32(i32 %i.dk, i32 0)
  br label %_ZN4core3cmp10PartialOrd2lt17hc22bc632dd203acbE.exit

bb.ac:                                            ; preds = %bb.e, %bb.d, %bb.c
  %i.ds = tail call i8 @llvm.scmp.i8.i64(i64 %i.h, i64 %i.l)
  br label %_ZN4core3cmp10PartialOrd2lt17hc22bc632dd203acbE.exit

bb.ad:                                            ; preds = %bb.d
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.dt, align 8, !alias.scope !47089, !nonnull !41, !noundef !41
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val5.i.i = load i64, ptr %i.du, align 8, !alias.scope !47089, !noundef !41
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val6.i.i = load ptr, ptr %i.dv, align 8, !alias.scope !47090 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val7.i.i = load i64, ptr %i.dw, align 8, !alias.scope !47090
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !47105
  call void @_ZN3std4path4Path10components17h13437a8377d0cf8dE(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i, i64 noundef %.val5.i.i), !noalias !47105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !47105
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6.i.i) ]
  call void @_ZN3std4path4Path10components17h13437a8377d0cf8dE(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val6.i.i, i64 noundef %.val7.i.i), !noalias !47105
  %i.dx = call noundef range(i8 -1, 2) i8 @_ZN3std4path18compare_components17h222977130415a62cE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.a), !noalias !47105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !47105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !47105
  br label %_ZN4core3cmp10PartialOrd2lt17hc22bc632dd203acbE.exit

bb.ae:                                            ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47107)
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val17.i.i.i = load ptr, ptr %i.dy, align 8, !alias.scope !47108, !nonnull !41, !noundef !41
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val18.i.i.i = load i64, ptr %i.dz, align 8, !alias.scope !47108, !noundef !41 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val19.i.i.i = load ptr, ptr %i.ea, align 8, !alias.scope !47109, !nonnull !41, !noundef !41
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val20.i.i.i = load i64, ptr %i.eb, align 8, !alias.scope !47109, !noundef !41 ; 2 uses
  %..i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val18.i.i.i, i64 %.val20.i.i.i)
  %i.ec = sub i64 %.val18.i.i.i, %.val20.i.i.i
  %i.ed = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val17.i.i.i, ptr nonnull readonly align 1 %.val19.i.i.i, i64 %..i.i.i.i.i.i), !alias.scope !47110, !noalias !47111 ; 2 uses
  %i.ee = sext i32 %i.ed to i64
  %i.ef = icmp eq i32 %i.ed, 0
  %spec.store.select.i.i.i.i.i.i = select i1 %i.ef, i64 %i.ec, i64 %i.ee ; 2 uses
  %i.eg = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i.i.i.i, i64 0)
  %i.eh = icmp eq i64 %spec.store.select.i.i.i.i.i.i, 0
  br i1 %i.eh, label %bb.af, label %"_ZN72_$LT$nickel_lang_package..index..Id$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h99158ebb2dbb45a1E.exit.i.i"

bb.af:                                            ; preds = %bb.ae
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val13.i.i.i = load ptr, ptr %i.ei, align 8, !alias.scope !47108, !nonnull !41, !noundef !41
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val14.i.i.i = load i64, ptr %i.ej, align 8, !alias.scope !47108, !noundef !41 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val15.i.i.i = load ptr, ptr %i.ek, align 8, !alias.scope !47109, !nonnull !41, !noundef !41
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val16.i.i.i = load i64, ptr %i.el, align 8, !alias.scope !47109, !noundef !41 ; 2 uses
  %..i.i.i21.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val14.i.i.i, i64 %.val16.i.i.i)
  %i.em = sub i64 %.val14.i.i.i, %.val16.i.i.i
  %i.en = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val13.i.i.i, ptr nonnull readonly align 1 %.val15.i.i.i, i64 %..i.i.i21.i.i.i), !alias.scope !47112, !noalias !47111 ; 2 uses
  %i.eo = sext i32 %i.en to i64
  %i.ep = icmp eq i32 %i.en, 0
  %spec.store.select.i.i.i22.i.i.i = select i1 %i.ep, i64 %i.em, i64 %i.eo ; 2 uses
  %i.eq = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i22.i.i.i, i64 0)
  %i.er = icmp eq i64 %spec.store.select.i.i.i22.i.i.i, 0
  br i1 %i.er, label %bb.ag, label %"_ZN72_$LT$nickel_lang_package..index..Id$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h99158ebb2dbb45a1E.exit.i.i"

bb.ag:                                            ; preds = %bb.af
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val.i9.i.i = load ptr, ptr %i.es, align 8, !alias.scope !47108, !nonnull !41, !noundef !41
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val10.i10.i.i = load i64, ptr %i.et, align 8, !alias.scope !47108, !noundef !41 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val11.i.i.i = load ptr, ptr %i.eu, align 8, !alias.scope !47109, !nonnull !41, !noundef !41
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val12.i.i.i = load i64, ptr %i.ev, align 8, !alias.scope !47109, !noundef !41 ; 2 uses
  %..i.i.i23.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val10.i10.i.i, i64 %.val12.i.i.i)
  %i.ew = sub i64 %.val10.i10.i.i, %.val12.i.i.i
  %i.ex = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i9.i.i, ptr nonnull readonly align 1 %.val11.i.i.i, i64 %..i.i.i23.i.i.i), !alias.scope !47113, !noalias !47111 ; 2 uses
  %i.ey = sext i32 %i.ex to i64
  %i.ez = icmp eq i32 %i.ex, 0
  %spec.store.select.i.i.i24.i.i.i = select i1 %i.ez, i64 %i.ew, i64 %i.ey
  %i.fa = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i24.i.i.i, i64 0)
  br label %"_ZN72_$LT$nickel_lang_package..index..Id$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h99158ebb2dbb45a1E.exit.i.i"

"_ZN72_$LT$nickel_lang_package..index..Id$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h99158ebb2dbb45a1E.exit.i.i": ; preds = %bb.ag, %bb.af, %bb.ae
  %.sroa.0.0.i8.i.i = phi i8 [ %i.fa, %bb.ag ], [ %i.eg, %bb.ae ], [ %i.eq, %bb.af ] ; 2 uses
  %i.fb = icmp eq i8 %.sroa.0.0.i8.i.i, 0
  br i1 %i.fb, label %bb.ah, label %_ZN4core3cmp10PartialOrd2lt17hc22bc632dd203acbE.exit

bb.ah:                                            ; preds = %"_ZN72_$LT$nickel_lang_package..index..Id$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h99158ebb2dbb45a1E.exit.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47115)
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.fd = load i64, ptr %i.fc, align 8, !alias.scope !47116, !noundef !41 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ff = load i64, ptr %i.fe, align 8, !alias.scope !47117, !noundef !41 ; 2 uses
  %i.fg = icmp eq i64 %i.fd, %i.ff
  br i1 %i.fg, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.fi = load i64, ptr %i.fh, align 8, !alias.scope !47116, !noundef !41 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.fk = load i64, ptr %i.fj, align 8, !alias.scope !47117, !noundef !41 ; 2 uses
  %i.fl = icmp eq i64 %i.fi, %i.fk
  br i1 %i.fl, label %bb.ak, label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %i.fm = tail call i8 @llvm.ucmp.i8.i64(i64 %i.fd, i64 %i.ff)
  br label %_ZN4core3cmp10PartialOrd2lt17hc22bc632dd203acbE.exit

bb.ak:                                            ; preds = %bb.ai
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.fo = load i64, ptr %i.fn, align 8, !alias.scope !47116, !noundef !41 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.fq = load i64, ptr %i.fp, align 8, !alias.scope !47117, !noundef !41 ; 2 uses
  %i.fr = icmp eq i64 %i.fo, %i.fq
  br i1 %i.fr, label %bb.am, label %bb.an

bb.al:                                            ; preds = %bb.ai
  %i.fs = tail call i8 @llvm.ucmp.i8.i64(i64 %i.fi, i64 %i.fk)
  br label %_ZN4core3cmp10PartialOrd2lt17hc22bc632dd203acbE.exit

bb.am:                                            ; preds = %bb.ak
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val.i12.i.i = load ptr, ptr %i.ft, align 8, !alias.scope !47116, !nonnull !41, !noundef !41
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val3.i.i.i = load i64, ptr %i.fu, align 8, !alias.scope !47116, !noundef !41 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val4.i.i.i = load ptr, ptr %i.fv, align 8, !alias.scope !47117, !nonnull !41, !noundef !41
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.val5.i.i.i = load i64, ptr %i.fw, align 8, !alias.scope !47117, !noundef !41 ; 2 uses
  %..i.i.i.i13.i.i = tail call i64 @llvm.umin.i64(i64 %.val3.i.i.i, i64 %.val5.i.i.i)
  %i.fx = sub i64 %.val3.i.i.i, %.val5.i.i.i
  %i.fy = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i12.i.i, ptr nonnull readonly align 1 %.val4.i.i.i, i64 %..i.i.i.i13.i.i), !alias.scope !47118, !noalias !47119 ; 2 uses
  %i.fz = sext i32 %i.fy to i64
  %i.ga = icmp eq i32 %i.fy, 0
  %spec.store.select.i.i.i.i14.i.i = select i1 %i.ga, i64 %i.fx, i64 %i.fz
  %i.gb = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i.i14.i.i, i64 0)
  br label %_ZN4core3cmp10PartialOrd2lt17hc22bc632dd203acbE.exit

bb.an:                                            ; preds = %bb.ak
  %i.gc = tail call i8 @llvm.ucmp.i8.i64(i64 %i.fo, i64 %i.fq)
  br label %_ZN4core3cmp10PartialOrd2lt17hc22bc632dd203acbE.exit

_ZN4core3cmp10PartialOrd2lt17hc22bc632dd203acbE.exit: ; preds = %bb.j, %bb.k, %bb.n, %bb.o, %bb.r, %bb.s, %bb.w, %bb.x, %"_ZN54_$LT$gix_url..Url$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h8643935685102a95E.exit.i.i.i", %bb.aa, %bb.ab, %bb.ac, %bb.ad, %"_ZN72_$LT$nickel_lang_package..index..Id$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h99158ebb2dbb45a1E.exit.i.i", %bb.aj, %bb.al, %bb.am, %bb.an
  %.sroa.0.0.i.i = phi i8 [ %.sroa.0.0.i8.i.i, %"_ZN72_$LT$nickel_lang_package..index..Id$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h99158ebb2dbb45a1E.exit.i.i" ], [ %i.ds, %bb.ac ], [ %i.dx, %bb.ad ], [ 1, %bb.j ], [ %i.dq, %bb.aa ], [ %i.dr, %bb.ab ], [ %.sroa.0.4.i.i.i.i, %"_ZN54_$LT$gix_url..Url$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h8643935685102a95E.exit.i.i.i" ], [ -1, %bb.x ], [ 1, %bb.w ], [ 1, %bb.r ], [ -1, %bb.s ], [ -1, %bb.o ], [ 1, %bb.n ], [ -1, %bb.k ], [ %i.gb, %bb.am ], [ %i.gc, %bb.an ], [ %i.fs, %bb.al ], [ %i.fm, %bb.aj ]
  %i.gd = icmp slt i8 %.sroa.0.0.i.i, 0
  ret i1 %i.gd
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h13d743caf13e769fE"(ptr noundef %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 16               ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47156)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !47156, !nonnull !41, !noundef !41 ; 2 uses
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8, !noalias !47156
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = invoke noundef ptr @_ZN3std6thread7current11set_current17h5eeebeaeabfcb333E(ptr noundef nonnull %i.h)
          to label %bb.f unwind label %bb.e       ; 3 uses

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h346cf8b510d28e6aE.exit33.i": ; preds = %.body.i, %bb.j, %bb.i, %bb.e
  %.sroa.020.0.i = phi i1 [ false, %.body.i ], [ %.sroa.019.1.i, %bb.e ], [ true, %bb.j ], [ true, %bb.i ]
  %.sroa.019.0.i = phi i1 [ true, %.body.i ], [ %.sroa.019.1.i, %bb.e ], [ true, %bb.j ], [ true, %bb.i ]
  %.pn.i = phi { ptr, i32 } [ %i.be, %.body.i ], [ %i.o, %bb.e ], [ %i.v, %bb.j ], [ %i.v, %bb.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !47157)
  call void @llvm.experimental.noalias.scope.decl(metadata !47158)
  call void @llvm.experimental.noalias.scope.decl(metadata !47159)
  call void @llvm.experimental.noalias.scope.decl(metadata !47160)
  %i.l = load ptr, ptr %i.g, align 8, !alias.scope !47161, !nonnull !41, !noundef !41
  %i.m = atomicrmw add ptr %i.l, i64 -1 release, align 8, !noalias !47162
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.d, label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h346cf8b510d28e6aE.exit.i"

bb.d:                                             ; preds = %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h346cf8b510d28e6aE.exit33.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h27d24a5837f84932E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h346cf8b510d28e6aE.exit.i" unwind label %bb.n

bb.e:                                             ; preds = %bb.ab, %bb.p, %bb.h, %bb.b
  %.sroa.019.1.i = phi i1 [ false, %bb.ab ], [ true, %bb.p ], [ true, %bb.h ], [ true, %bb.b ] ; 2 uses
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h346cf8b510d28e6aE.exit33.i"

bb.f:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !47156
  store ptr %i.k, ptr %i.f, align 8, !noalias !47156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !47156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !47156
  store ptr @1100, ptr %i.d, align 8, !noalias !47156
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.p, align 8, !noalias !47156
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %i.q, align 8, !noalias !47156
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.r, align 8, !noalias !47156
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %i.s, align 8, !noalias !47156
  %i.t = invoke fastcc noundef ptr @_ZN3std2io5Write9write_fmt17h2cbfd01b5922b137E(ptr noalias noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.d)
          to label %bb.k unwind label %bb.i       ; 2 uses

bb.h:                                             ; preds = %bb.f
  %i.u = invoke { ptr, i64 } @_ZN3std6thread6Thread5cname17he71b88de2caa7a2cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %bb.o unwind label %bb.e       ; 2 uses

bb.i:                                             ; preds = %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h578c9b60371c4306E.exit.i", %bb.l, %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = atomicrmw add ptr %i.k, i64 -1 release, align 8, !noalias !47163
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.j, label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h346cf8b510d28e6aE.exit33.i"

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h27d24a5837f84932E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h346cf8b510d28e6aE.exit33.i" unwind label %bb.n

bb.k:                                             ; preds = %bb.g
  store ptr %i.t, ptr %i.e, align 8, !noalias !47156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !47156
  %i.y = icmp eq ptr %i.t, null
  br i1 %i.y, label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h578c9b60371c4306E.exit.i", label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.e)
          to label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h578c9b60371c4306E.exit.i" unwind label %bb.i

"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h578c9b60371c4306E.exit.i": ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !47156
  invoke void @_ZN3std7process5abort17h97870e46d5a4dcf2E() #73
          to label %bb.m unwind label %bb.i

bb.m:                                             ; preds = %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h578c9b60371c4306E.exit.i"
  unreachable

bb.n:                                             ; preds = %bb.af, %bb.ad, %bb.j, %bb.d
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.o:                                             ; preds = %bb.h
  %i.aa = extractvalue { ptr, i64 } %i.u, 0       ; 2 uses
  %.not30.i = icmp eq ptr %i.aa, null
  br i1 %.not30.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ab = extractvalue { ptr, i64 } %i.u, 1
  invoke void @_ZN3std3sys6thread4unix8set_name17h1d999c55f7e4a211E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aa, i64 noundef %i.ab)
          to label %bb.q unwind label %bb.e

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !47156, !nonnull !41, !noundef !41 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !47156, !nonnull !41, !noundef !41 ; 2 uses
  %.sroa.06.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !47156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.8.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.sroa.5.0..sroa_idx.i, i64 16, i1 false)
  %i.ag = load <2 x ptr>, ptr %0, align 8, !alias.scope !47156
  store <2 x ptr> %i.ag, ptr %i.b, align 16, !noalias !47156
  %.sroa.843.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.ad, ptr %.sroa.843.0..sroa_idx.i, align 16, !noalias !47156
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.af, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !47156
  invoke void @_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h7f8b418290819081E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
          to label %.noexc39.i unwind label %bb.r

.noexc39.i:                                       ; preds = %bb.q
  invoke void @_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h1c46f4fe173fcbd9E(ptr noundef nonnull align 1 %i.ad, ptr noundef nonnull align 1 %i.af)
          to label %bb.u unwind label %bb.r

bb.r:                                             ; preds = %.noexc39.i, %bb.q
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  %i.aj = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.ai)
          to label %bb.t unwind label %bb.s       ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #74
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.al = extractvalue { ptr, ptr } %i.aj, 0
  %i.am = extractvalue { ptr, ptr } %i.aj, 1
  br label %bb.v

bb.u:                                             ; preds = %.noexc39.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !47156
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.an = phi ptr [ undef, %bb.u ], [ %i.am, %bb.t ] ; 2 uses
  %i.ao = phi ptr [ null, %bb.u ], [ %i.al, %bb.t ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !47156, !nonnull !41, !noundef !41 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47164)
  %i.as = load i64, ptr %i.ar, align 8, !range !58, !alias.scope !47164, !noundef !41
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17h2a22b1f336385c01E.exit.i", label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 32 ; 2 uses
  %.val.i.i = load ptr, ptr %i.au, align 8, !alias.scope !47164, !align !46, !noundef !41 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 40 ; 2 uses
  %.val1.i.i = load ptr, ptr %i.av, align 8, !alias.scope !47164 ; 6 uses
  %i.aw = icmp eq ptr %.val.i.i, null
  br i1 %i.aw, label %"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17h2a22b1f336385c01E.exit.i", label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.ax = load ptr, ptr %.val1.i.i, align 8, !invariant.load !41, !noalias !47164 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  invoke void %i.ax(ptr noundef nonnull %.val.i.i)
          to label %bb.z unwind label %bb.aa, !noalias !47164

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ay = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !range !43, !invariant.load !41, !noalias !47164 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
end_hunk_0
begin_hunk_1_@"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$8read_buf17he0e16b7e1926b0e5E":bb.a
  br i1 %.not.i, label %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !84286, !noundef !41 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !84286, !noundef !41 ; 2 uses
  %i.t = sub nuw i64 %i.q, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.s
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.u, i8 0, i64 %i.t, i1 false), !noalias !84287
  %i.v = tail call fastcc { i64, ptr } @"_ZN72_$LT$gix_features..interrupt..Read$LT$R$GT$$u20$as$u20$std..io..Read$GT$4read17h3c192ae1be04d33cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.o, ptr noalias noundef nonnull align 1 %.pre.i, i64 noundef %i.q), !noalias !84288 ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 0
  %i.x = extractvalue { i64, ptr } %i.v, 1        ; 2 uses
  %i.y = ptrtoint ptr %i.x to i64                 ; 4 uses
  %i.z = trunc nuw i64 %i.w to i1
  br i1 %i.z, label %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i.i = icmp ult i64 %i.q, %i.y
  br i1 %.not.i.i.i.i, label %bb.f, label %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.thread.i", !prof !44

"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.thread.i": ; preds = %bb.e
  store i64 0, ptr %i.a, align 8, !alias.scope !84286
  store i64 %i.y, ptr %i.c, align 8, !alias.scope !84286
  store i64 %i.q, ptr %i.r, align 8, !alias.scope !84286
  br label %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.thread21

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1048, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1050) #73, !noalias !84288
  unreachable

"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.i": ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false), !alias.scope !84286
  store i64 %i.q, ptr %i.r, align 8, !alias.scope !84286
  %.not4.i = icmp eq ptr %i.x, null
  br i1 %.not4.i, label %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.thread21, label %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.thread

_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit: ; preds = %bb.c
  %i.aa = sub nuw i64 %i.d, %i.b                  ; 2 uses
  %i.ab = icmp eq ptr %.pre.i, null
  br i1 %i.ab, label %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.thread, label %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.thread21

bb.g:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84290)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.ad = load ptr, ptr %1, align 8, !alias.scope !84291, !noalias !84292, !nonnull !41, !align !46, !noundef !41 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !84291, !noalias !84292, !noundef !41 ; 2 uses
  %i.ag = sub nuw i64 %i.g, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.af
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ah, i8 0, i64 %i.ag, i1 false), !noalias !84293
  store i64 %i.g, ptr %i.ae, align 8, !alias.scope !84291, !noalias !84292
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.i
  %i.aj = tail call fastcc { i64, ptr } @"_ZN72_$LT$gix_features..interrupt..Read$LT$R$GT$$u20$as$u20$std..io..Read$GT$4read17h3c192ae1be04d33cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.ac, ptr noalias noundef nonnull align 1 %i.ai, i64 noundef %i.j), !noalias !84291 ; 2 uses
  %i.ak = extractvalue { i64, ptr } %i.aj, 0
  %i.al = extractvalue { i64, ptr } %i.aj, 1      ; 2 uses
  %i.am = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.an = trunc nuw i64 %i.ak to i1
  br i1 %i.an, label %_ZN3std2io4Read8read_buf17h8f8b4158e2ae6512E.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i.i = icmp ult i64 %i.j, %i.am
  br i1 %.not.i.i, label %bb.i, label %bb.j, !prof !44

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1048, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1050) #73, !noalias !84291
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ao = add i64 %i.i, %i.am
  store i64 %i.ao, ptr %i.h, align 8, !alias.scope !84291
  br label %_ZN3std2io4Read8read_buf17h8f8b4158e2ae6512E.exit

_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.thread: ; preds = %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.i", %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit
  %.sroa.612.015 = phi i64 [ %i.aa, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit ], [ %i.y, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.i" ]
  %i.ap = inttoptr i64 %.sroa.612.015 to ptr
  br label %_ZN3std2io4Read8read_buf17h8f8b4158e2ae6512E.exit

_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.thread21: ; preds = %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.i", %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.thread.i", %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit
  %i.aq = phi i64 [ %i.aa, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit ], [ %i.y, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.thread.i" ], [ 0, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.i" ]
  %i.ar = phi i64 [ %i.b, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit ], [ 0, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.thread.i" ], [ 0, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.i" ]
  %i.as = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.ar
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84294)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !84294, !noundef !41
  %i.av = sub i64 %i.au, %i.m
  %.sroa.0.0.i.i10 = tail call noundef i64 @llvm.umin.i64(i64 %i.aq, i64 %i.av) ; 3 uses
  %i.aw = load ptr, ptr %1, align 8, !alias.scope !84294, !noalias !84295, !nonnull !41, !align !46, !noundef !41
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull readonly align 1 %i.as, i64 %.sroa.0.0.i.i10, i1 false), !alias.scope !84296, !noalias !84297
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !84294, !noalias !84295, !noundef !41
  %i.ba = add i64 %.sroa.0.0.i.i10, %i.m          ; 2 uses
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.ba, i64 %i.az)
  store i64 %.sroa.0.0.i.i.i, ptr %i.ay, align 8, !alias.scope !84294, !noalias !84295
  store i64 %i.ba, ptr %i.n, align 8, !alias.scope !84294, !noalias !84295
  %i.bb = load i64, ptr %i.a, align 8, !noundef !41
  %i.bc = add i64 %i.bb, %.sroa.0.0.i.i10
  %i.bd = load i64, ptr %i.c, align 8, !noundef !41
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.bd, i64 %i.bc)
  store i64 %.sroa.0.0.i, ptr %i.a, align 8
  br label %_ZN3std2io4Read8read_buf17h8f8b4158e2ae6512E.exit

_ZN3std2io4Read8read_buf17h8f8b4158e2ae6512E.exit: ; preds = %bb.j, %bb.g, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.thread, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.thread21
  %.sroa.05.0 = phi ptr [ null, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.thread21 ], [ %i.ap, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.thread ], [ null, %bb.j ], [ %i.al, %bb.g ]
  ret ptr %.sroa.05.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN83_$LT$gix..remote..connection..fetch..prepare..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17he43441db51c9592fE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !125, !noundef !41
  %.not = icmp eq i64 %i.b, 20
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2466, i64 noundef 6, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2465)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2464, i64 noundef 15)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN83_$LT$nickel_lang_package..index..path..RelativePath$u20$as$u20$core..fmt..Debug$GT$3fmt17h6fefbb053d3d96adE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2467, i64 noundef 12, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1216, i64 noundef 5, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN83_$LT$nickel_lang_package..lock..EntryName$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hb13866b40746e559E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.a = phi i64 [ 0, %bb.a ], [ %i.n, %bb.d ]    ; 5 uses
  %i.b = sub nuw i64 %2, %i.a                     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %i.a ; 2 uses
  %i.d = icmp ult i64 %i.b, 16
  br i1 %i.d, label %.preheader.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i

.preheader.i.i.i:                                 ; preds = %bb.b
  %.not.i.i.i = icmp eq i64 %2, %i.a
  br i1 %.not.i.i.i, label %.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.c
  %.sroa.01.05.i.i.i = phi i64 [ %i.h, %bb.c ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.01.05.i.i.i
  %i.f = load i8, ptr %i.e, align 1, !alias.scope !84326, !noalias !84327, !noundef !41
  %i.g = icmp eq i8 %i.f, 32
  br i1 %i.g, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.h = add nuw nsw i64 %.sroa.01.05.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.h, %i.b
  br i1 %exitcond.not.i.i.i, label %.loopexit, label %.lr.ph.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i: ; preds = %bb.b
  %i.i = tail call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 32, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.c, i64 noundef %i.b), !noalias !84328 ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 0
  %i.k = extractvalue { i64, i64 } %i.i, 1
  %i.l = trunc nuw i64 %i.j to i1
  br i1 %i.l, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i, label %.loopexit

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i: ; preds = %.lr.ph.i.i.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i
  %.sroa.4.0.i27.i.i = phi i64 [ %i.k, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.m = add i64 %i.a, 1
  %i.n = add i64 %i.m, %.sroa.4.0.i27.i.i         ; 4 uses
  %.not21.i.i = icmp ugt i64 %i.n, %2
  %i.o = add i64 %.sroa.4.0.i27.i.i, %i.a         ; 10 uses
  %or.cond.i.not.i = icmp ult i64 %i.o, %2
  br i1 %or.cond.i.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.e, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i
  br i1 %.not21.i.i, label %.loopexit, label %bb.b

bb.e:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.o
  %lhsc.i = load i8, ptr %i.p, align 1, !alias.scope !84329
  %i.q = icmp eq i8 %lhsc.i, 32
  br i1 %i.q, label %bb.f, label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.r = sub nuw i64 %2, %i.n                     ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.n ; 6 uses
  %i.t = icmp slt i64 %i.o, 0
  br i1 %i.t, label %bb.h, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !53

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.f
  %i.u = icmp eq i64 %i.o, 0                      ; 2 uses
  br i1 %i.u, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9fa53752598ee3fdE.exit", label %bb.g

bb.g:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !84330
  %i.v = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef range(i64 1, 9) 1) #67, !noalias !84330 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.h, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9fa53752598ee3fdE.exit"

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.g ], [ 0, %bb.f ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2532) #73, !noalias !84331
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9fa53752598ee3fdE.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %bb.g
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.v, %bb.g ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %1, i64 %i.o, i1 false), !noalias !84332
  switch i64 %i.r, label %bb.j [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9fa53752598ee3fdE.exit"
  %i.x = load i8, ptr %i.s, align 1, !alias.scope !84333, !noundef !41
  switch i8 %i.x, label %.lr.ph.i.preheader [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"
  ]

.lr.ph.i.preheader:                               ; preds = %bb.k, %bb.m, %bb.i
  %.sroa.03.182.i.ph = phi ptr [ %i.y, %bb.k ], [ %i.s, %bb.m ], [ %i.s, %bb.i ]
  %.sroa.16.181.i.ph = phi i64 [ %i.z, %bb.k ], [ %i.r, %bb.m ], [ 1, %bb.i ]
  br label %.lr.ph.i

bb.j:                                             ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9fa53752598ee3fdE.exit"
  %.pr.i = load i8, ptr %i.s, align 1, !alias.scope !84333
  %cond.i = icmp eq i8 %.pr.i, 43
  br i1 %cond.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  %i.z = add i64 %i.r, -1                         ; 2 uses
  %i.aa = icmp ult i64 %i.r, 10
  br i1 %i.aa, label %.lr.ph.i.preheader, label %.preheader71.i

.preheader71.i:                                   ; preds = %bb.m, %bb.k
  %.sroa.16.0.ph.i = phi i64 [ %i.r, %bb.m ], [ %i.z, %bb.k ] ; 2 uses
  %.sroa.03.0.ph.i = phi ptr [ %i.s, %bb.m ], [ %i.y, %bb.k ]
  %.not.i98 = icmp eq i64 %.sroa.16.0.ph.i, 0
  br i1 %.not.i98, label %.loopexit.i, label %.lr.ph

bb.l:                                             ; preds = %bb.p
  %.not.i = icmp eq i64 %i.af, 0
  br i1 %.not.i, label %.loopexit.i, label %.lr.ph

bb.m:                                             ; preds = %bb.j
  %i.ab = icmp ult i64 %i.r, 9
  br i1 %i.ab, label %.lr.ph.i.preheader, label %.preheader71.i

.loopexit.i:                                      ; preds = %bb.l, %bb.q, %.preheader71.i
  %.sroa.019.2.i = phi i32 [ %i.ax, %bb.q ], [ 0, %.preheader71.i ], [ %i.ap, %bb.l ]
  %i.ac = zext i32 %.sroa.019.2.i to i64
  %i.ad = shl nuw i64 %i.ac, 32
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit"

.lr.ph:                                           ; preds = %.preheader71.i, %bb.l
  %.sroa.03.0.i101 = phi ptr [ %i.ae, %bb.l ], [ %.sroa.03.0.ph.i, %.preheader71.i ] ; 2 uses
  %.sroa.16.0.i100 = phi i64 [ %i.af, %bb.l ], [ %.sroa.16.0.ph.i, %.preheader71.i ]
  %.sroa.019.0.i99 = phi i32 [ %i.ap, %bb.l ], [ 0, %.preheader71.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i101, i64 1
  %i.af = add i64 %.sroa.16.0.i100, -1            ; 2 uses
  %i.ag = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.019.0.i99, i32 10) ; 2 uses
  %i.ah = extractvalue { i32, i1 } %i.ag, 0       ; 2 uses
  %i.ai = extractvalue { i32, i1 } %i.ag, 1
  %i.aj = load i8, ptr %.sroa.03.0.i101, align 1, !alias.scope !84333, !noundef !41 ; 2 uses
  br i1 %i.ai, label %bb.o, label %bb.n, !prof !44

bb.n:                                             ; preds = %.lr.ph
  %i.ak = zext i8 %i.aj to i32
  %i.al = add nsw i32 %i.ak, -48                  ; 2 uses
  %i.am = icmp ult i32 %i.al, 10
  br i1 %i.am, label %bb.p, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"

bb.o:                                             ; preds = %.lr.ph
  %i.an = add i8 %i.aj, -48
  %i.ao = icmp ult i8 %i.an, 10
  %spec.select.i = select i1 %i.ao, i64 513, i64 257
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit"

bb.p:                                             ; preds = %bb.n
  %i.ap = add i32 %i.al, %i.ah                    ; 3 uses
  %.not66.i = icmp ult i32 %i.ap, %i.ah
  br i1 %.not66.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread", label %bb.l

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.q
  %.sroa.03.182.i = phi ptr [ %i.aw, %bb.q ], [ %.sroa.03.182.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.16.181.i = phi i64 [ %i.av, %bb.q ], [ %.sroa.16.181.i.ph, %.lr.ph.i.preheader ]
  %.sroa.019.180.i = phi i32 [ %i.ax, %bb.q ], [ 0, %.lr.ph.i.preheader ]
  %i.aq = load i8, ptr %.sroa.03.182.i, align 1, !alias.scope !84333, !noundef !41
  %i.ar = zext i8 %i.aq to i32
  %i.as = add nsw i32 %i.ar, -48                  ; 2 uses
  %i.at = icmp ult i32 %i.as, 10
  br i1 %i.at, label %bb.q, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"

bb.q:                                             ; preds = %.lr.ph.i
  %i.au = mul i32 %.sroa.019.180.i, 10
  %i.av = add nsw i64 %.sroa.16.181.i, -1         ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.03.182.i, i64 1
  %i.ax = add i32 %i.as, %i.au                    ; 2 uses
  %.not67.i = icmp eq i64 %i.av, 0
  br i1 %.not67.i, label %.loopexit.i, label %.lr.ph.i

.loopexit:                                        ; preds = %bb.d, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i, %.preheader.i.i.i, %bb.c
  %i.ay = icmp slt i64 %2, 0
  br i1 %i.ay, label %bb.s, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i17, !prof !53

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i17: ; preds = %.loopexit
  %i.az = icmp eq i64 %2, 0
  br i1 %i.az, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9fa53752598ee3fdE.exit22", label %bb.r

bb.r:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i17
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !84334
  %i.ba = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, 9) 1) #67, !noalias !84334 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.s, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9fa53752598ee3fdE.exit22"

bb.s:                                             ; preds = %bb.r, %.loopexit
  %.sroa.4.0.ph.i.i21 = phi i64 [ 1, %bb.r ], [ 0, %.loopexit ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i21, i64 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2532) #73, !noalias !84335
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9fa53752598ee3fdE.exit22": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i17, %bb.r
  %.sroa.10.0.i.i18 = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i17 ], [ %i.ba, %bb.r ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i18, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !84336
  store i64 %2, ptr %0, align 8
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i18, ptr %.sroa.08.sroa.4.0..sroa_idx, align 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %.sroa.4.0..sroa_idx, align 8
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit25"

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit": ; preds = %bb.o, %.loopexit.i
  %.sroa.8.0.insert.insert.i = phi i64 [ %i.ad, %.loopexit.i ], [ %spec.select.i, %bb.o ] ; 3 uses
  %i.bc = trunc i64 %.sroa.8.0.insert.insert.i to i1
  br i1 %i.bc, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread", label %bb.u

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread": ; preds = %bb.p, %bb.n, %.lr.ph.i, %bb.i, %bb.i, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9fa53752598ee3fdE.exit", %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit"
  %.sroa.8.0.insert.insert.i45 = phi i64 [ %.sroa.8.0.insert.insert.i, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit" ], [ 257, %bb.i ], [ 257, %.lr.ph.i ], [ 1, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9fa53752598ee3fdE.exit" ], [ 257, %bb.i ], [ 257, %bb.n ], [ 513, %bb.p ]
  %.sroa.414.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i45, 8
  %.sroa.414.0.extract.trunc = trunc i64 %.sroa.414.0.extract.shift to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.414.0.extract.trunc, ptr %i.bd, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br i1 %i.u, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit25", label %bb.t

bb.t:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !84337
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit25"

bb.u:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit"
  %.sroa.616.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i, 32
  %.sroa.616.0.extract.trunc = trunc nuw i64 %.sroa.616.0.extract.shift to i32
  store i64 %i.o, ptr %0, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.616.0.extract.trunc, ptr %.sroa.5.0..sroa_idx, align 8
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit25"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit25": ; preds = %bb.t, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread", %bb.u, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9fa53752598ee3fdE.exit22"
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN83_$LT$nickel_lang_package..version..SemVer$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h97b69e8f074f0717E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @"_ZN6semver5parse72_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$semver..Version$GT$8from_str17h3a8b6e2907915fd4E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  %i.d = load ptr, ptr %i.b, align 8, !noundef !41 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.015.0.copyload = load i64, ptr %i.f, align 8 ; 3 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.015.0.copyload, ptr %i.g, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.614.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store i64 %.sroa.015.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %i.h = icmp eq i64 %.sroa.015.0.copyload, -1
  br i1 %i.h, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 12, ptr %i.i, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  invoke void @"_ZN72_$LT$semver..identifier..Identifier$u20$as$u20$core..ops..drop..Drop$GT$4drop17h50699ca88a06d3ccE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %"_ZN4core3ptr36drop_in_place$LT$semver..Version$GT$17h607b8b4dcbedda1aE.exit" unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN72_$LT$semver..identifier..Identifier$u20$as$u20$core..ops..drop..Drop$GT$4drop17h50699ca88a06d3ccE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.4.0..sroa_idx)
          to label %"_ZN4core3ptr42drop_in_place$LT$semver..BuildMetadata$GT$17h61968700bf18bb32E.exit.i" unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

"_ZN4core3ptr42drop_in_place$LT$semver..BuildMetadata$GT$17h61968700bf18bb32E.exit.i": ; preds = %bb.e
  resume { ptr, i32 } %i.j

"_ZN4core3ptr36drop_in_place$LT$semver..Version$GT$17h607b8b4dcbedda1aE.exit": ; preds = %bb.d
  call void @"_ZN72_$LT$semver..identifier..Identifier$u20$as$u20$core..ops..drop..Drop$GT$4drop17h50699ca88a06d3ccE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.4.0..sroa_idx)
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @"_ZN99_$LT$nickel_lang_package..version..SemVer$u20$as$u20$core..convert..From$LT$semver..Version$GT$$GT$4from17h90113d1e8774517fE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr36drop_in_place$LT$semver..Version$GT$17h607b8b4dcbedda1aE.exit", %bb.g, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN84_$LT$gix_fs..stack..to_normal_path_components..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hc96e854482748cc3E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !64, !noundef !41
  %i.c = icmp eq i64 %i.b, -9223372036854775808
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1578, i64 noundef 11)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2474, i64 noundef 19, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @64)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN84_$LT$nickel_lang_core..term..record..FieldMetadata$u20$as$u20$core..clone..Clone$GT$5clone17hf594023765471878E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(360) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(360) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 4 uses
  %i.b = alloca [104 x i8], align 8               ; 6 uses
  %i.c = alloca [256 x i8], align 8               ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [152 x i8], align 8               ; 4 uses
  %i.f = alloca [104 x i8], align 8               ; 6 uses
  %i.g = alloca [256 x i8], align 8               ; 5 uses
  %i.h = alloca [256 x i8], align 8               ; 9 uses
  %i.i = alloca [56 x i8], align 8                ; 5 uses
  %.sroa.7 = alloca [48 x i8], align 8            ; 4 uses
  %i.j = alloca [280 x i8], align 8               ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.m = load ptr, ptr %i.l, align 8, !noundef !41 ; 8 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.o = load i64, ptr %i.n, align 8, !noundef !41
  %.val.i = load i64, ptr %i.m, align 8, !noundef !41 ; 2 uses
  %i.p = icmp ne i64 %.val.i, 0
  tail call void @llvm.assume(i1 %i.p)
  %i.q = add i64 %.val.i, 1                       ; 2 uses
  store i64 %i.q, ptr %i.m, align 8
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.c, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h13c62151d3ff5806E.exit, !prof !44

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h13c62151d3ff5806E.exit: ; preds = %bb.b
  store ptr %i.m, ptr %i.k, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.o, ptr %i.s, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store ptr null, ptr %i.k, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h13c62151d3ff5806E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84366)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !84367
  %i.t = load i64, ptr %1, align 8, !range !172, !alias.scope !84366, !noundef !41
  %.not.i = icmp eq i64 %i.t, 18
  br i1 %.not.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !84368
  invoke fastcc void @"_ZN100_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h11e5dea4212d5245E"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(280) %1)
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.u, i64 16, i1 false), !noalias !84369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !84368
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 104
  invoke fastcc void @"_ZN69_$LT$nickel_lang_core..label..Label$u20$as$u20$core..clone..Clone$GT$5clone17h1f0f897958055994E"(ptr noalias noundef align 8 captures(address) dereferenceable(152) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.w)
          to label %"_ZN74_$LT$nickel_lang_core..term..LabeledType$u20$as$u20$core..clone..Clone$GT$5clone17h12353a761a60ff59E.exit.i" unwind label %bb.g, !noalias !84369

bb.g:                                             ; preds = %.noexc
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr226drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typ..Type$GT$$C$nickel_lang_core..typ..RecordRows$C$nickel_lang_core..typ..EnumRows$C$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h59a0e6ed7425ab92E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %i.f)
          to label %.body unwind label %bb.h, !noalias !84369, !inline_history !1

bb.h:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_1
