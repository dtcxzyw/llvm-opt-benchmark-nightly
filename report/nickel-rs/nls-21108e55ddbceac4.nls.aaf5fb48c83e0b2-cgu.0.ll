Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nls-21108e55ddbceac4.nls.aaf5fb48c83e0b2-cgu.0?download=true
inline.NumInlined: 33046
inline.NumDeleted: 15305
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 156
begin_hunk_0_@_ZN4core5slice4sort6stable5drift4sort17hff90a0f9317c5816E:bb.a
  %i.fc = icmp eq i32 %i.fa, 0
  %spec.store.select.i.i.i.i.i.i58 = select i1 %i.fc, i64 %i.ez, i64 %i.fb ; 2 uses
  %i.fd = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i.i.i.i58, i64 0)
  %i.fe = icmp eq i64 %spec.store.select.i.i.i.i.i.i58, 0
  br i1 %i.fe, label %bb.an, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit67

bb.am:                                            ; preds = %bb.aj
  %i.ff = getelementptr inbounds i8, ptr %i.dc, i64 -64
  %.val.i.i.i47 = load ptr, ptr %i.ff, align 8, !alias.scope !94280, !noalias !94270, !nonnull !46, !noundef !46
  %i.fg = getelementptr inbounds i8, ptr %i.dc, i64 -56
  %.val22.i.i.i48 = load i64, ptr %i.fg, align 8, !alias.scope !94280, !noalias !94270, !noundef !46 ; 2 uses
  %i.fh = getelementptr inbounds i8, ptr %i.dd, i64 -64
  %.val23.i.i.i49 = load ptr, ptr %i.fh, align 8, !alias.scope !94281, !noalias !94270, !nonnull !46, !noundef !46
  %i.fi = getelementptr inbounds i8, ptr %i.dd, i64 -56
  %.val24.i.i.i50 = load i64, ptr %i.fi, align 8, !alias.scope !94281, !noalias !94270, !noundef !46 ; 2 uses
  %..i.i.i33.i.i.i51 = tail call i64 @llvm.umin.i64(i64 %.val22.i.i.i48, i64 %.val24.i.i.i50)
  %i.fj = sub i64 %.val22.i.i.i48, %.val24.i.i.i50
  %i.fk = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i47, ptr nonnull readonly align 1 %.val23.i.i.i49, i64 %..i.i.i33.i.i.i51), !alias.scope !94284, !noalias !94283 ; 2 uses
  %i.fl = sext i32 %i.fk to i64
  %i.fm = icmp eq i32 %i.fk, 0
  %spec.store.select.i.i.i34.i.i.i52 = select i1 %i.fm, i64 %i.fj, i64 %i.fl ; 2 uses
  %i.fn = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i34.i.i.i52, i64 0)
  %i.fo = icmp eq i64 %spec.store.select.i.i.i34.i.i.i52, 0
  br i1 %i.fo, label %bb.al, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit67

bb.an:                                            ; preds = %bb.al
  %i.fp = getelementptr inbounds i8, ptr %i.dc, i64 -48
  %i.fq = load i64, ptr %i.fp, align 8, !range !72, !alias.scope !94280, !noalias !94270, !noundef !46
  %.not19.i.i.i59 = icmp eq i64 %i.fq, -9223372036854775808
  %i.fr = getelementptr inbounds i8, ptr %i.dd, i64 -48
  %i.fs = load i64, ptr %i.fr, align 8, !range !72, !alias.scope !94281, !noalias !94270, !noundef !46 ; 2 uses
  br i1 %.not19.i.i.i59, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.not21.i.i.i60 = icmp eq i64 %i.fs, -9223372036854775808
  br i1 %.not21.i.i.i60, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit67, label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %.not20.i.i.i65 = icmp ne i64 %i.fs, -9223372036854775808
  %..i.i.i66 = sext i1 %.not20.i.i.i65 to i8
  br label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit67

bb.aq:                                            ; preds = %bb.ao
  %i.ft = getelementptr inbounds i8, ptr %i.dc, i64 -40
  %.val29.i.i.i61 = load ptr, ptr %i.ft, align 8, !alias.scope !94280, !noalias !94270, !nonnull !46, !noundef !46
  %i.fu = getelementptr inbounds i8, ptr %i.dc, i64 -32
  %.val30.i.i.i62 = load i64, ptr %i.fu, align 8, !alias.scope !94280, !noalias !94270, !noundef !46 ; 2 uses
  %i.fv = getelementptr inbounds i8, ptr %i.dd, i64 -40
  %.val31.i.i.i63 = load ptr, ptr %i.fv, align 8, !alias.scope !94281, !noalias !94270, !nonnull !46, !noundef !46
  %i.fw = getelementptr inbounds i8, ptr %i.dd, i64 -32
  %.val32.i.i.i64 = load i64, ptr %i.fw, align 8, !alias.scope !94281, !noalias !94270, !noundef !46 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94285), !noalias !94283
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94286), !noalias !94283
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94287), !noalias !94283
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94288), !noalias !94283
  %.sroa.0.0.i.i.i.i68 = tail call noundef i64 @llvm.umin.i64(i64 %.val32.i.i.i64, i64 %.val30.i.i.i62) ; 2 uses
  %exitcond.not.i.i.i7012 = icmp eq i64 %.sroa.0.0.i.i.i.i68, 0
  br i1 %exitcond.not.i.i.i7012, label %._crit_edge16, label %.lr.ph15

bb.ar:                                            ; preds = %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i77"
  %exitcond.not.i.i.i70 = icmp eq i64 %i.fy, %.sroa.0.0.i.i.i.i68
  br i1 %exitcond.not.i.i.i70, label %._crit_edge16, label %.lr.ph15

._crit_edge16:                                    ; preds = %bb.ar, %bb.aq
  %i.fx = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.val30.i.i.i62, i64 %.val32.i.i.i64)
  br label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit67

.lr.ph15:                                         ; preds = %bb.aq, %bb.ar
  %.sroa.01.0.i.i.i6913 = phi i64 [ %i.fy, %bb.ar ], [ 0, %bb.aq ] ; 3 uses
  %i.fy = add nuw i64 %.sroa.01.0.i.i.i6913, 1    ; 2 uses
  %i.fz = getelementptr inbounds nuw [128 x i8], ptr %.val29.i.i.i61, i64 %.sroa.01.0.i.i.i6913 ; 8 uses
  %i.ga = getelementptr inbounds nuw [128 x i8], ptr %.val31.i.i.i63, i64 %.sroa.01.0.i.i.i6913 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94289), !noalias !94283
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94290), !noalias !94283
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94291), !noalias !94283
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94292), !noalias !94283
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94293), !noalias !94283
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94294), !noalias !94283
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 96
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 96
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %.val.i.i.i.i.i.i.i.i71 = load ptr, ptr %i.gd, align 8, !alias.scope !94295, !noalias !94296, !nonnull !46, !noundef !46
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %.val1.i.i.i.i.i.i.i.i72 = load i64, ptr %i.ge, align 8, !alias.scope !94295, !noalias !94296, !noundef !46 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %.val2.i.i.i.i.i.i.i.i73 = load ptr, ptr %i.gf, align 8, !alias.scope !94297, !noalias !94296, !nonnull !46, !noundef !46
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %.val3.i.i.i.i.i.i.i.i74 = load i64, ptr %i.gg, align 8, !alias.scope !94297, !noalias !94296, !noundef !46 ; 2 uses
  %..i.i.i.i.i.i.i.i.i.i.i75 = tail call i64 @llvm.umin.i64(i64 %.val1.i.i.i.i.i.i.i.i72, i64 %.val3.i.i.i.i.i.i.i.i74)
  %i.gh = sub i64 %.val1.i.i.i.i.i.i.i.i72, %.val3.i.i.i.i.i.i.i.i74
  %i.gi = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.i.i.i.i71, ptr nonnull readonly align 1 %.val2.i.i.i.i.i.i.i.i73, i64 %..i.i.i.i.i.i.i.i.i.i.i75), !alias.scope !94298, !noalias !94299 ; 2 uses
  %i.gj = sext i32 %i.gi to i64
  %i.gk = icmp eq i32 %i.gi, 0
  %spec.store.select.i.i.i.i.i.i.i.i.i.i.i76 = select i1 %i.gk, i64 %i.gh, i64 %i.gj ; 2 uses
  %i.gl = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i.i.i.i.i.i.i.i.i76, i64 0)
  %i.gm = icmp eq i64 %spec.store.select.i.i.i.i.i.i.i.i.i.i.i76, 0
  br i1 %i.gm, label %bb.as, label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i77"

bb.as:                                            ; preds = %.lr.ph15
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fz, i64 88
  %i.go = getelementptr inbounds nuw i8, ptr %i.ga, i64 88
  %.val.i10.i.i.i.i.i.i.i80 = load i32, ptr %i.gn, align 8, !alias.scope !94295, !noalias !94296, !noundef !46 ; 2 uses
  %.val2.i11.i.i.i.i.i.i.i81 = load i32, ptr %i.go, align 8, !alias.scope !94297, !noalias !94296, !noundef !46 ; 2 uses
  %i.gp = icmp eq i32 %.val.i10.i.i.i.i.i.i.i80, %.val2.i11.i.i.i.i.i.i.i81
  br i1 %i.gp, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ga, i64 92
  %.val3.i12.i.i.i.i.i.i.i96 = load i32, ptr %i.gq, align 4, !alias.scope !94297, !noalias !94296
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fz, i64 92
  %.val1.i13.i.i.i.i.i.i.i97 = load i32, ptr %i.gr, align 4, !alias.scope !94295, !noalias !94296
  %i.gs = tail call i8 @llvm.ucmp.i8.i32(i32 %.val1.i13.i.i.i.i.i.i.i97, i32 %.val3.i12.i.i.i.i.i.i.i96)
  br label %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit.i.i.i.i.i.i.i82"

bb.au:                                            ; preds = %bb.as
  %i.gt = tail call i8 @llvm.ucmp.i8.i32(i32 %.val.i10.i.i.i.i.i.i.i80, i32 %.val2.i11.i.i.i.i.i.i.i81)
  br label %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit.i.i.i.i.i.i.i82"

"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit.i.i.i.i.i.i.i82": ; preds = %bb.au, %bb.at
  %.sroa.0.0.i.i.i.i.i.i.i.i.i83 = phi i8 [ %i.gs, %bb.at ], [ %i.gt, %bb.au ] ; 2 uses
  %i.gu = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i83, 0
  br i1 %i.gu, label %bb.av, label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i77"

bb.av:                                            ; preds = %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit.i.i.i.i.i.i.i82"
  %.val.i14.i.i.i.i.i.i.i84 = load i32, ptr %i.gb, align 8, !alias.scope !94295, !noalias !94296, !noundef !46 ; 2 uses
  %.val2.i15.i.i.i.i.i.i.i85 = load i32, ptr %i.gc, align 8, !alias.scope !94297, !noalias !94296, !noundef !46 ; 2 uses
  %i.gv = icmp eq i32 %.val.i14.i.i.i.i.i.i.i84, %.val2.i15.i.i.i.i.i.i.i85
  br i1 %i.gv, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ga, i64 100
  %.val3.i17.i.i.i.i.i.i.i94 = load i32, ptr %i.gw, align 4, !alias.scope !94297, !noalias !94296
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fz, i64 100
  %.val1.i18.i.i.i.i.i.i.i95 = load i32, ptr %i.gx, align 4, !alias.scope !94295, !noalias !94296
  %i.gy = tail call i8 @llvm.ucmp.i8.i32(i32 %.val1.i18.i.i.i.i.i.i.i95, i32 %.val3.i17.i.i.i.i.i.i.i94)
  br label %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit19.i.i.i.i.i.i.i86"

bb.ax:                                            ; preds = %bb.av
  %i.gz = tail call i8 @llvm.ucmp.i8.i32(i32 %.val.i14.i.i.i.i.i.i.i84, i32 %.val2.i15.i.i.i.i.i.i.i85)
  br label %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit19.i.i.i.i.i.i.i86"

"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit19.i.i.i.i.i.i.i86": ; preds = %bb.ax, %bb.aw
  %.sroa.0.0.i.i16.i.i.i.i.i.i.i87 = phi i8 [ %i.gy, %bb.aw ], [ %i.gz, %bb.ax ] ; 2 uses
  %i.ha = icmp eq i8 %.sroa.0.0.i.i16.i.i.i.i.i.i.i87, 0
  br i1 %i.ha, label %bb.ay, label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i77"

bb.ay:                                            ; preds = %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit19.i.i.i.i.i.i.i86"
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fz, i64 112
  %.val.i20.i.i.i.i.i.i.i88 = load ptr, ptr %i.hb, align 8, !alias.scope !94295, !noalias !94296, !nonnull !46, !noundef !46
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fz, i64 120
  %.val1.i21.i.i.i.i.i.i.i89 = load i64, ptr %i.hc, align 8, !alias.scope !94295, !noalias !94296, !noundef !46 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ga, i64 112
  %.val2.i22.i.i.i.i.i.i.i90 = load ptr, ptr %i.hd, align 8, !alias.scope !94297, !noalias !94296, !nonnull !46, !noundef !46
  %i.he = getelementptr inbounds nuw i8, ptr %i.ga, i64 120
  %.val3.i23.i.i.i.i.i.i.i91 = load i64, ptr %i.he, align 8, !alias.scope !94297, !noalias !94296, !noundef !46 ; 2 uses
  %..i.i.i.i24.i.i.i.i.i.i.i92 = tail call i64 @llvm.umin.i64(i64 %.val1.i21.i.i.i.i.i.i.i89, i64 %.val3.i23.i.i.i.i.i.i.i91)
  %i.hf = sub i64 %.val1.i21.i.i.i.i.i.i.i89, %.val3.i23.i.i.i.i.i.i.i91
  %i.hg = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i20.i.i.i.i.i.i.i88, ptr nonnull readonly align 1 %.val2.i22.i.i.i.i.i.i.i90, i64 %..i.i.i.i24.i.i.i.i.i.i.i92), !alias.scope !94300, !noalias !94299 ; 2 uses
  %i.hh = sext i32 %i.hg to i64
  %i.hi = icmp eq i32 %i.hg, 0
  %spec.store.select.i.i.i.i25.i.i.i.i.i.i.i93 = select i1 %i.hi, i64 %i.hf, i64 %i.hh
  %i.hj = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i.i25.i.i.i.i.i.i.i93, i64 0)
  br label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i77"

"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i77": ; preds = %bb.ay, %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit19.i.i.i.i.i.i.i86", %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit.i.i.i.i.i.i.i82", %.lr.ph15
  %.sroa.0.0.i.i.i.i.i.i.i78 = phi i8 [ %i.hj, %bb.ay ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i83, %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit.i.i.i.i.i.i.i82" ], [ %i.gl, %.lr.ph15 ], [ %.sroa.0.0.i.i16.i.i.i.i.i.i.i87, %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit19.i.i.i.i.i.i.i86" ] ; 2 uses
  %i.hk = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i.i78, 0
  br i1 %i.hk, label %bb.ar, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit67

_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit67: ; preds = %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i77", %._crit_edge16, %"_ZN67_$LT$nls..diagnostic..OrdRange$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hbfbcecf0e9d68948E.exit.i.i.i42", %bb.af, %bb.ag, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.ao, %bb.ap
  %.sroa.0.2.i.i.i44 = phi i8 [ %.sroa.0.0.i.i.i.i.i43, %"_ZN67_$LT$nls..diagnostic..OrdRange$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hbfbcecf0e9d68948E.exit.i.i.i42" ], [ 1, %bb.af ], [ %i.et, %bb.ai ], [ -1, %bb.ag ], [ 1, %bb.ao ], [ -1, %bb.ak ], [ %..i.i.i66, %bb.ap ], [ %i.fd, %bb.al ], [ 1, %bb.aj ], [ %i.fn, %bb.am ], [ %i.fx, %._crit_edge16 ], [ %.sroa.0.0.i.i.i.i.i.i.i78, %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i77" ] ; 2 uses
  %i.hl = icmp sgt i8 %.sroa.0.2.i.i.i44, -1      ; 2 uses
  %..i.i = select i1 %i.hl, ptr %i.df, ptr %i.de
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.dg, ptr noundef nonnull align 8 dereferenceable(96) %..i.i, i64 96, i1 false), !alias.scope !94266, !noalias !94270
  %i.hm = zext i1 %i.hl to i64
  %i.hn = getelementptr inbounds nuw [96 x i8], ptr %i.de, i64 %i.hm ; 3 uses
  %.sroa.0.2.i.i.i44.lobit = lshr i8 %.sroa.0.2.i.i.i44, 7
  %i.ho = zext nneg i8 %.sroa.0.2.i.i.i44.lobit to i64
  %i.hp = getelementptr inbounds nuw [96 x i8], ptr %i.df, i64 %i.ho ; 3 uses
  %i.hq = icmp eq ptr %i.hn, %i.ce
  %i.hr = icmp eq ptr %i.hp, %2
  %or.cond.i.i = select i1 %i.hq, i1 true, i1 %i.hr
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hd94a7555212f0f18E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.x, %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit
  %i.hs = phi ptr [ %i.md, %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit ], [ %i.ce, %bb.x ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.mc, %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit ], [ %i.cz, %bb.x ] ; 16 uses
  %i.ht = phi ptr [ %i.ma, %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit ], [ %2, %bb.x ] ; 16 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94303), !noalias !94304
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94305), !noalias !94304
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94306), !noalias !94304
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94307), !noalias !94304
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 80
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94308), !noalias !94304
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94309), !noalias !94304
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94310), !noalias !94304
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94311), !noalias !94304
  %i.hw = load i32, ptr %i.hu, align 4, !alias.scope !94312, !noalias !94304, !noundef !46 ; 2 uses
  %i.hx = load i32, ptr %i.hv, align 4, !alias.scope !94313, !noalias !94304, !noundef !46 ; 2 uses
  %i.hy = icmp eq i32 %i.hw, %i.hx
  br i1 %i.hy, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %.lr.ph.i.i
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 84
  %i.ia = load i32, ptr %i.hz, align 4, !alias.scope !94312, !noalias !94304, !noundef !46
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ht, i64 84
  %i.ic = load i32, ptr %i.ib, align 4, !alias.scope !94313, !noalias !94304, !noundef !46
  %i.id = tail call i8 @llvm.ucmp.i8.i32(i32 %i.ia, i32 %i.ic)
  br label %bb.bb

bb.ba:                                            ; preds = %.lr.ph.i.i
  %i.ie = tail call i8 @llvm.ucmp.i8.i32(i32 %i.hw, i32 %i.hx)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.sroa.01.0.i.i.i.i.i = phi i8 [ %i.id, %bb.az ], [ %i.ie, %bb.ba ] ; 2 uses
  %i.if = icmp eq i8 %.sroa.01.0.i.i.i.i.i, 0
  br i1 %i.if, label %bb.bc, label %"_ZN67_$LT$nls..diagnostic..OrdRange$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hbfbcecf0e9d68948E.exit.i.i.i"

bb.bc:                                            ; preds = %bb.bb
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 88
  %i.ih = load i32, ptr %i.ig, align 4, !alias.scope !94312, !noalias !94304, !noundef !46 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ht, i64 88
  %i.ij = load i32, ptr %i.ii, align 4, !alias.scope !94313, !noalias !94304, !noundef !46 ; 2 uses
  %i.ik = icmp eq i32 %i.ih, %i.ij
  br i1 %i.ik, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 92
  %i.im = load i32, ptr %i.il, align 4, !alias.scope !94312, !noalias !94304, !noundef !46
  %i.in = getelementptr inbounds nuw i8, ptr %i.ht, i64 92
  %i.io = load i32, ptr %i.in, align 4, !alias.scope !94313, !noalias !94304, !noundef !46
  %i.ip = tail call i8 @llvm.ucmp.i8.i32(i32 %i.im, i32 %i.io)
  br label %"_ZN67_$LT$nls..diagnostic..OrdRange$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hbfbcecf0e9d68948E.exit.i.i.i"

bb.be:                                            ; preds = %bb.bc
  %i.iq = tail call i8 @llvm.ucmp.i8.i32(i32 %i.ih, i32 %i.ij)
  br label %"_ZN67_$LT$nls..diagnostic..OrdRange$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hbfbcecf0e9d68948E.exit.i.i.i"

"_ZN67_$LT$nls..diagnostic..OrdRange$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hbfbcecf0e9d68948E.exit.i.i.i": ; preds = %bb.be, %bb.bd, %bb.bb
  %.sroa.0.0.i.i.i.i.i = phi i8 [ %i.ip, %bb.bd ], [ %i.iq, %bb.be ], [ %.sroa.01.0.i.i.i.i.i, %bb.bb ] ; 2 uses
  %i.ir = icmp eq i8 %.sroa.0.0.i.i.i.i.i, 0
  br i1 %i.ir, label %bb.bf, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit

bb.bf:                                            ; preds = %"_ZN67_$LT$nls..diagnostic..OrdRange$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hbfbcecf0e9d68948E.exit.i.i.i"
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 72
  %i.it = load i32, ptr %i.is, align 8, !range !82, !alias.scope !94314, !noalias !94304, !noundef !46
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 76
  %i.iv = trunc nuw i32 %i.it to i1
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ht, i64 72
  %i.ix = load i32, ptr %i.iw, align 8, !range !82, !alias.scope !94315, !noalias !94304, !noundef !46
  %i.iy = trunc nuw i32 %i.ix to i1               ; 2 uses
  br i1 %i.iv, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.iy, label %bb.bj, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit

bb.bh:                                            ; preds = %bb.bf
  br i1 %i.iy, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bj, %bb.bh
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 24
  %i.ja = load i64, ptr %i.iz, align 8, !range !72, !alias.scope !94314, !noalias !94304, !noundef !46
  %.not.i.i.i = icmp eq i64 %i.ja, -9223372036854775808
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  %i.jc = load i64, ptr %i.jb, align 8, !range !72, !alias.scope !94315, !noalias !94304, !noundef !46
  %.not17.i.i.i = icmp eq i64 %i.jc, -9223372036854775808 ; 2 uses
  br i1 %.not.i.i.i, label %bb.bl, label %bb.bk

bb.bj:                                            ; preds = %bb.bg
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ht, i64 76
  %i.je = load i32, ptr %i.iu, align 4, !alias.scope !94314, !noalias !94304, !noundef !46 ; 2 uses
  %i.jf = load i32, ptr %i.jd, align 4, !alias.scope !94315, !noalias !94304, !noundef !46 ; 2 uses
  %i.jg = tail call i8 @llvm.scmp.i8.i32(i32 %i.je, i32 %i.jf)
  %i.jh = icmp eq i32 %i.je, %i.jf
  br i1 %i.jh, label %bb.bi, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit

bb.bk:                                            ; preds = %bb.bi
  br i1 %.not17.i.i.i, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit, label %bb.bn

bb.bl:                                            ; preds = %bb.bi
  br i1 %.not17.i.i.i, label %bb.bm, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit

bb.bm:                                            ; preds = %bb.bn, %bb.bl
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 8
  %.val25.i.i.i = load ptr, ptr %i.ji, align 8, !alias.scope !94314, !noalias !94304, !nonnull !46, !noundef !46
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 16
  %.val26.i.i.i = load i64, ptr %i.jj, align 8, !alias.scope !94314, !noalias !94304, !noundef !46 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %.val27.i.i.i = load ptr, ptr %i.jk, align 8, !alias.scope !94315, !noalias !94304, !nonnull !46, !noundef !46
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %.val28.i.i.i = load i64, ptr %i.jl, align 8, !alias.scope !94315, !noalias !94304, !noundef !46 ; 2 uses
  %..i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val26.i.i.i, i64 %.val28.i.i.i)
  %i.jm = sub i64 %.val26.i.i.i, %.val28.i.i.i
  %i.jn = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val25.i.i.i, ptr nonnull readonly align 1 %.val27.i.i.i, i64 %..i.i.i.i.i.i), !alias.scope !94316, !noalias !94317 ; 2 uses
  %i.jo = sext i32 %i.jn to i64
  %i.jp = icmp eq i32 %i.jn, 0
  %spec.store.select.i.i.i.i.i.i = select i1 %i.jp, i64 %i.jm, i64 %i.jo ; 2 uses
  %i.jq = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i.i.i.i, i64 0)
  %i.jr = icmp eq i64 %spec.store.select.i.i.i.i.i.i, 0
  br i1 %i.jr, label %bb.bo, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit

bb.bn:                                            ; preds = %bb.bk
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 32
  %.val.i.i.i = load ptr, ptr %i.js, align 8, !alias.scope !94314, !noalias !94304, !nonnull !46, !noundef !46
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 40
  %.val22.i.i.i = load i64, ptr %i.jt, align 8, !alias.scope !94314, !noalias !94304, !noundef !46 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ht, i64 32
  %.val23.i.i.i = load ptr, ptr %i.ju, align 8, !alias.scope !94315, !noalias !94304, !nonnull !46, !noundef !46
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ht, i64 40
  %.val24.i.i.i = load i64, ptr %i.jv, align 8, !alias.scope !94315, !noalias !94304, !noundef !46 ; 2 uses
  %..i.i.i33.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val22.i.i.i, i64 %.val24.i.i.i)
  %i.jw = sub i64 %.val22.i.i.i, %.val24.i.i.i
  %i.jx = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i, ptr nonnull readonly align 1 %.val23.i.i.i, i64 %..i.i.i33.i.i.i), !alias.scope !94318, !noalias !94317 ; 2 uses
  %i.jy = sext i32 %i.jx to i64
  %i.jz = icmp eq i32 %i.jx, 0
  %spec.store.select.i.i.i34.i.i.i = select i1 %i.jz, i64 %i.jw, i64 %i.jy ; 2 uses
  %i.ka = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i34.i.i.i, i64 0)
  %i.kb = icmp eq i64 %spec.store.select.i.i.i34.i.i.i, 0
  br i1 %i.kb, label %bb.bm, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit

bb.bo:                                            ; preds = %bb.bm
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 48
  %i.kd = load i64, ptr %i.kc, align 8, !range !72, !alias.scope !94314, !noalias !94304, !noundef !46
  %.not19.i.i.i = icmp eq i64 %i.kd, -9223372036854775808
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ht, i64 48
  %i.kf = load i64, ptr %i.ke, align 8, !range !72, !alias.scope !94315, !noalias !94304, !noundef !46 ; 2 uses
  br i1 %.not19.i.i.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %.not21.i.i.i = icmp eq i64 %i.kf, -9223372036854775808
  br i1 %.not21.i.i.i, label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit, label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %.not20.i.i.i = icmp ne i64 %i.kf, -9223372036854775808
  %..i.i.i = sext i1 %.not20.i.i.i to i8
  br label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit

bb.br:                                            ; preds = %bb.bp
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 56
  %.val29.i.i.i = load ptr, ptr %i.kg, align 8, !alias.scope !94314, !noalias !94304, !nonnull !46, !noundef !46
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 64
  %.val30.i.i.i = load i64, ptr %i.kh, align 8, !alias.scope !94314, !noalias !94304, !noundef !46 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ht, i64 56
  %.val31.i.i.i = load ptr, ptr %i.ki, align 8, !alias.scope !94315, !noalias !94304, !nonnull !46, !noundef !46
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ht, i64 64
  %.val32.i.i.i = load i64, ptr %i.kj, align 8, !alias.scope !94315, !noalias !94304, !noundef !46 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94319), !noalias !94317
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94320), !noalias !94317
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94321), !noalias !94317
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94322), !noalias !94317
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.val32.i.i.i, i64 %.val30.i.i.i) ; 2 uses
  %exitcond.not.i.i.i7 = icmp eq i64 %.sroa.0.0.i.i.i.i, 0
  br i1 %exitcond.not.i.i.i7, label %._crit_edge11, label %.lr.ph10

bb.bs:                                            ; preds = %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i"
  %exitcond.not.i.i.i = icmp eq i64 %i.kl, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge11, label %.lr.ph10

._crit_edge11:                                    ; preds = %bb.bs, %bb.br
  %i.kk = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.val30.i.i.i, i64 %.val32.i.i.i)
  br label %_ZN4core3ops8function5FnMut8call_mut17h555bf1ac516b8997E.exit

.lr.ph10:                                         ; preds = %bb.br, %bb.bs
  %.sroa.01.0.i.i.i8 = phi i64 [ %i.kl, %bb.bs ], [ 0, %bb.br ] ; 3 uses
  %i.kl = add nuw i64 %.sroa.01.0.i.i.i8, 1       ; 2 uses
  %i.km = getelementptr inbounds nuw [128 x i8], ptr %.val29.i.i.i, i64 %.sroa.01.0.i.i.i8 ; 8 uses
  %i.kn = getelementptr inbounds nuw [128 x i8], ptr %.val31.i.i.i, i64 %.sroa.01.0.i.i.i8 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94323), !noalias !94317
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94324), !noalias !94317
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94325), !noalias !94317
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94326), !noalias !94317
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94327), !noalias !94317
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94328), !noalias !94317
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 96
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 96
  %i.kq = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.kq, align 8, !alias.scope !94329, !noalias !94330, !nonnull !46, !noundef !46
  %i.kr = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  %.val1.i.i.i.i.i.i.i.i = load i64, ptr %i.kr, align 8, !alias.scope !94329, !noalias !94330, !noundef !46 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %.val2.i.i.i.i.i.i.i.i = load ptr, ptr %i.ks, align 8, !alias.scope !94331, !noalias !94330, !nonnull !46, !noundef !46
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %.val3.i.i.i.i.i.i.i.i = load i64, ptr %i.kt, align 8, !alias.scope !94331, !noalias !94330, !noundef !46 ; 2 uses
  %..i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i.i.i.i.i.i.i.i, i64 %.val3.i.i.i.i.i.i.i.i)
  %i.ku = sub i64 %.val1.i.i.i.i.i.i.i.i, %.val3.i.i.i.i.i.i.i.i
  %i.kv = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.val2.i.i.i.i.i.i.i.i, i64 %..i.i.i.i.i.i.i.i.i.i.i), !alias.scope !94332, !noalias !94333 ; 2 uses
  %i.kw = sext i32 %i.kv to i64
  %i.kx = icmp eq i32 %i.kv, 0
  %spec.store.select.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.kx, i64 %i.ku, i64 %i.kw ; 2 uses
  %i.ky = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i.i.i.i.i.i.i.i.i, i64 0)
  %i.kz = icmp eq i64 %spec.store.select.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.kz, label %bb.bt, label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i"

bb.bt:                                            ; preds = %.lr.ph10
  %i.la = getelementptr inbounds nuw i8, ptr %i.km, i64 88
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kn, i64 88
  %.val.i10.i.i.i.i.i.i.i = load i32, ptr %i.la, align 8, !alias.scope !94329, !noalias !94330, !noundef !46 ; 2 uses
  %.val2.i11.i.i.i.i.i.i.i = load i32, ptr %i.lb, align 8, !alias.scope !94331, !noalias !94330, !noundef !46 ; 2 uses
  %i.lc = icmp eq i32 %.val.i10.i.i.i.i.i.i.i, %.val2.i11.i.i.i.i.i.i.i
  br i1 %i.lc, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kn, i64 92
  %.val3.i12.i.i.i.i.i.i.i = load i32, ptr %i.ld, align 4, !alias.scope !94331, !noalias !94330
  %i.le = getelementptr inbounds nuw i8, ptr %i.km, i64 92
  %.val1.i13.i.i.i.i.i.i.i = load i32, ptr %i.le, align 4, !alias.scope !94329, !noalias !94330
  %i.lf = tail call i8 @llvm.ucmp.i8.i32(i32 %.val1.i13.i.i.i.i.i.i.i, i32 %.val3.i12.i.i.i.i.i.i.i)
  br label %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit.i.i.i.i.i.i.i"

bb.bv:                                            ; preds = %bb.bt
  %i.lg = tail call i8 @llvm.ucmp.i8.i32(i32 %.val.i10.i.i.i.i.i.i.i, i32 %.val2.i11.i.i.i.i.i.i.i)
  br label %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit.i.i.i.i.i.i.i"

"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit.i.i.i.i.i.i.i": ; preds = %bb.bv, %bb.bu
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi i8 [ %i.lf, %bb.bu ], [ %i.lg, %bb.bv ] ; 2 uses
  %i.lh = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.lh, label %bb.bw, label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare28_$u7b$$u7b$closure$u7d$$u7d$17hf3cbdcd417b3d58fE.exit.i.i.i"

bb.bw:                                            ; preds = %"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$$RF$A$GT$3cmp17h4d36036e9d257d4eE.exit.i.i.i.i.i.i.i"
  %.val.i14.i.i.i.i.i.i.i = load i32, ptr %i.ko, align 8, !alias.scope !94329, !noalias !94330, !noundef !46 ; 2 uses
  %.val2.i15.i.i.i.i.i.i.i = load i32, ptr %i.kp, align 8, !alias.scope !94331, !noalias !94330, !noundef !46 ; 2 uses
  %i.li = icmp eq i32 %.val.i14.i.i.i.i.i.i.i, %.val2.i15.i.i.i.i.i.i.i
  br i1 %i.li, label %bb.bx, label %bb.by
end_hunk_0
