Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.02?download=true
inline.NumInlined: 716
inline.NumDeleted: 218
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_RNvMs1_NtNtCsiRgJJXJ4lb7_6brotli3enc11find_strideINtB5_14EntropyPyramidNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE14populate_entryCskeugdADtBsi_12pingora_core:bb.a
  %i.da = or disjoint i64 %i.cz, %i.cb            ; 3 uses
  %i.db = icmp ult i64 %i.da, %.val12.3.i
  br i1 %i.db, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.val11.3.i, i64 %i.da ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !noalias !1201, !noundef !4
  %i.de = add i32 %i.dd, 1
  store i32 %i.de, ptr %i.dc, align 4, !noalias !1201
  %i.df = load i8, ptr %i.bi, align 4, !noalias !1201, !noundef !4
  %i.dg = zext i8 %i.df to i64
  %i.dh = shl nuw nsw i64 %i.dg, 8
  %i.di = or disjoint i64 %i.dh, %i.cb            ; 3 uses
  %i.dj = icmp ult i64 %i.di, %.val12.4.i
  br i1 %i.dj, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.val11.4.i, i64 %i.di ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !noalias !1201, !noundef !4
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr %i.dk, align 4, !noalias !1201
  %i.dn = load i8, ptr %i.bl, align 1, !noalias !1201, !noundef !4
  %i.do = zext i8 %i.dn to i64
  %i.dp = shl nuw nsw i64 %i.do, 8
  %i.dq = or disjoint i64 %i.dp, %i.cb            ; 3 uses
  %i.dr = icmp ult i64 %i.dq, %.val12.5.i
  br i1 %i.dr, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.val11.5.i, i64 %i.dq ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !noalias !1201, !noundef !4
  %i.du = add i32 %i.dt, 1
  store i32 %i.du, ptr %i.ds, align 4, !noalias !1201
  %i.dv = load i8, ptr %i.bo, align 2, !noalias !1201, !noundef !4
  %i.dw = zext i8 %i.dv to i64
  %i.dx = shl nuw nsw i64 %i.dw, 8
  %i.dy = or disjoint i64 %i.dx, %i.cb            ; 3 uses
  %i.dz = icmp ult i64 %i.dy, %.val12.6.i
  br i1 %i.dz, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.val11.6.i, i64 %i.dy ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !noalias !1201, !noundef !4
  %i.ec = add i32 %i.eb, 1
  store i32 %i.ec, ptr %i.ea, align 4, !noalias !1201
  %i.ed = load i8, ptr %i.br, align 1, !noalias !1201, !noundef !4
  %i.ee = zext i8 %i.ed to i64
  %i.ef = shl nuw nsw i64 %i.ee, 8
  %i.eg = or disjoint i64 %i.ef, %i.cb            ; 3 uses
  %i.eh = icmp ult i64 %i.eg, %.val12.7.i
  br i1 %i.eh, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.val11.7.i, i64 %i.eg ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !noalias !1201, !noundef !4
  %i.ek = add i32 %i.ej, 1
  store i32 %i.ek, ptr %i.ei, align 4, !noalias !1201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1201
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.d, i8 0, i64 7, i1 false), !noalias !1201
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %i.d, i64 noundef 7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @178), !noalias !1201
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %i.ax, i64 noundef 7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @179), !noalias !1201
  store i8 %i.ca, ptr %i.e, align 8, !noalias !1201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1201
  br label %bb.s

bb.ac:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB10_5ChainINtNtNtB5_5slice4iter4IterhEB1G_ENtNtNtB14_6traits8iterator8Iterator4next0ECskeugdADtBsi_12pingora_core.exit.i
  %.val12.lcssa.i = phi i64 [ %.val12.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB10_5ChainINtNtNtB5_5slice4iter4IterhEB1G_ENtNtNtB14_6traits8iterator8Iterator4next0ECskeugdADtBsi_12pingora_core.exit.i ], [ %.val12.1.i, %bb.u ], [ %.val12.2.i, %bb.v ], [ %.val12.3.i, %bb.w ], [ %.val12.4.i, %bb.x ], [ %.val12.5.i, %bb.y ], [ %.val12.6.i, %bb.z ], [ %.val12.7.i, %bb.aa ]
  %.lcssa.i = phi i64 [ %i.cc, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB10_5ChainINtNtNtB5_5slice4iter4IterhEB1G_ENtNtNtB14_6traits8iterator8Iterator4next0ECskeugdADtBsi_12pingora_core.exit.i ], [ %i.ck, %bb.u ], [ %i.cs, %bb.v ], [ %i.da, %bb.w ], [ %i.di, %bb.x ], [ %i.dq, %bb.y ], [ %i.dy, %bb.z ], [ %i.eg, %bb.aa ]
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa.i, i64 noundef %.val12.lcssa.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @180) #22, !noalias !1201
  unreachable

_RNvMs2_NtNtCsiRgJJXJ4lb7_6brotli3enc11find_strideINtB5_12EntropyTallyNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE20observe_input_streamCskeugdADtBsi_12pingora_core.exit: ; preds = %select.unfold.i
  %i.el = call noundef double @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride11HuffmanCost(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val11.i, i64 noundef %.val12.i), !noalias !1201 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %i.el, ptr %i.em, align 8, !alias.scope !1198
  %i.en = call noundef double @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride11HuffmanCost(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val11.1.i, i64 noundef %.val12.1.i), !noalias !1201 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 40
  store double %i.en, ptr %i.eo, align 8, !alias.scope !1198
  %i.ep = call noundef double @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride11HuffmanCost(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val11.2.i, i64 noundef %.val12.2.i), !noalias !1201 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 64
  store double %i.ep, ptr %i.eq, align 8, !alias.scope !1198
  %i.er = call noundef double @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride11HuffmanCost(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val11.3.i, i64 noundef %.val12.3.i), !noalias !1201 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 88
  store double %i.er, ptr %i.es, align 8, !alias.scope !1198
  %i.et = call noundef double @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride11HuffmanCost(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val11.4.i, i64 noundef %.val12.4.i), !noalias !1201 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 112
  store double %i.et, ptr %i.eu, align 8, !alias.scope !1198
  %i.ev = call noundef double @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride11HuffmanCost(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val11.5.i, i64 noundef %.val12.5.i), !noalias !1201 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 136
  store double %i.ev, ptr %i.ew, align 8, !alias.scope !1198
  %i.ex = call noundef double @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride11HuffmanCost(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val11.6.i, i64 noundef %.val12.6.i), !noalias !1201 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 160
  store double %i.ex, ptr %i.ey, align 8, !alias.scope !1198
  %i.ez = call noundef double @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride11HuffmanCost(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val11.7.i, i64 noundef %.val12.7.i), !noalias !1201 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 184
  store double %i.ez, ptr %i.fa, align 8, !alias.scope !1198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1201
  %i.fb = zext i32 %3 to i64                      ; 3 uses
  %i.fc = icmp ult i32 %3, 15
  br i1 %i.fc, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_RNvMs2_NtNtCsiRgJJXJ4lb7_6brotli3enc11find_strideINtB5_12EntropyTallyNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE20observe_input_streamCskeugdADtBsi_12pingora_core.exit
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.fb, i64 noundef 15, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @162) #22
  unreachable

bb.ae:                                            ; preds = %_RNvMs2_NtNtCsiRgJJXJ4lb7_6brotli3enc11find_strideINtB5_12EntropyTallyNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE20observe_input_streamCskeugdADtBsi_12pingora_core.exit
  %i.fd = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.fe = load double, ptr %i.fd, align 8, !noundef !4
  %i.ff = fsub double %i.ez, %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.fh = load double, ptr %i.fg, align 8, !noundef !4
  %i.fi = fsub double %i.ex, %i.fh                ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.fk = load double, ptr %i.fj, align 8, !noundef !4
  %i.fl = fsub double %i.ev, %i.fk                ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.fn = load double, ptr %i.fm, align 8, !noundef !4
  %i.fo = fsub double %i.et, %i.fn                ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.fq = load double, ptr %i.fp, align 8, !noundef !4
  %i.fr = fsub double %i.er, %i.fq                ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ft = load double, ptr %i.fs, align 8, !noundef !4
  %i.fu = fsub double %i.ep, %i.ft                ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.fw = load double, ptr %i.fv, align 8, !noundef !4
  %i.fx = fsub double %i.en, %i.fw                ; 2 uses
  %i.fy = load double, ptr %i.h, align 8, !noundef !4
  %i.fz = fsub double %i.el, %i.fy                ; 2 uses
  %i.ga = fcmp olt double %i.fx, %i.fz            ; 2 uses
  %.sroa.020.1 = select i1 %i.ga, double %i.fx, double %i.fz ; 2 uses
  %i.gb = fcmp olt double %i.fu, %.sroa.020.1     ; 2 uses
  %.sroa.020.1.1 = select i1 %i.gb, double %i.fu, double %.sroa.020.1 ; 2 uses
  %i.gc = fcmp olt double %i.fr, %.sroa.020.1.1   ; 2 uses
  %.sroa.020.1.2 = select i1 %i.gc, double %i.fr, double %.sroa.020.1.1 ; 2 uses
  %i.gd = fcmp olt double %i.fo, %.sroa.020.1.2   ; 2 uses
  %.sroa.020.1.3 = select i1 %i.gd, double %i.fo, double %.sroa.020.1.2 ; 2 uses
  %i.ge = fcmp olt double %i.fl, %.sroa.020.1.3   ; 2 uses
  %.sroa.020.1.4 = select i1 %i.ge, double %i.fl, double %.sroa.020.1.3 ; 2 uses
  %i.gf = fcmp olt double %i.fi, %.sroa.020.1.4   ; 2 uses
  %.sroa.020.1.5 = select i1 %i.gf, double %i.fi, double %.sroa.020.1.4
  %i.gg = fcmp olt double %i.ff, %.sroa.020.1.5
  %.sroa.018.1 = zext i1 %i.ga to i64
  %.sroa.018.1.1 = select i1 %i.gb, i64 2, i64 %.sroa.018.1
  %.sroa.018.1.2 = select i1 %i.gc, i64 3, i64 %.sroa.018.1.1
  %.sroa.018.1.3 = select i1 %i.gd, i64 4, i64 %.sroa.018.1.2
  %.sroa.018.1.4 = select i1 %i.ge, i64 5, i64 %.sroa.018.1.3
  %.sroa.018.1.5 = select i1 %i.gf, i64 6, i64 %.sroa.018.1.4
  %.sroa.018.1.6 = select i1 %i.gg, i64 7, i64 %.sroa.018.1.5 ; 2 uses
  %i.gh = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.fb ; 2 uses
  %i.gi = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.sroa.018.1.6 ; 2 uses
  %.val47 = load ptr, ptr %i.gh, align 8, !nonnull !4, !noundef !4
  %i.gj = getelementptr i8, ptr %i.gh, i64 8
  %.val48 = load i64, ptr %i.gj, align 8, !noundef !4
  %.val49 = load ptr, ptr %i.gi, align 8, !nonnull !4, !noundef !4
  %i.gk = getelementptr i8, ptr %i.gi, i64 8
  %.val50 = load i64, ptr %i.gk, align 8, !noundef !4
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implmECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 4 %.val47, i64 noundef %.val48, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val49, i64 noundef %.val50, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156)
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.fb
  %i.gn = trunc nuw nsw i64 %.sroa.018.1.6 to i8
  store i8 %i.gn, ptr %i.gm, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.af:                                            ; preds = %bb.o, %_RNvMNtNtCsiRgJJXJ4lb7_6brotli3enc11find_strideINtB2_23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE13initiate_fromCskeugdADtBsi_12pingora_core.exit
  %.sroa.023.052 = phi i64 [ 0, %bb.o ], [ %i.go, %_RNvMNtNtCsiRgJJXJ4lb7_6brotli3enc11find_strideINtB2_23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE13initiate_fromCskeugdADtBsi_12pingora_core.exit ] ; 4 uses
  %i.go = add nuw nsw i64 %.sroa.023.052, 1       ; 2 uses
  %i.gp = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.sroa.023.052 ; 5 uses
  %i.gq = trunc nuw nsw i64 %.sroa.023.052 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %.sroa.01.0, ptr %i.g, align 8
  store i64 %.sroa.3.0, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr %.sroa.02.0, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 %.sroa.44.0, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %.sroa.010.0, ptr %i.f, align 8
  store i64 %.sroa.311.0, ptr %.sroa.47.0..sroa_idx, align 8
  store ptr %.sroa.012.0, ptr %.sroa.58.0..sroa_idx, align 8
  store i64 %.sroa.414.0, ptr %.sroa.69.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1203)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 16 ; 3 uses
  store double 0.000000e+00, ptr %i.gr, align 8, !alias.scope !1203
  call void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterRSINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_RShEEINtB5_7ZipImplBW_B3t_E3newCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.g, ptr noundef nonnull readonly %i.aj, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.f, ptr noundef nonnull readonly %i.ak), !noalias !1203
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !noalias !1204 ; 2 uses
  %.sroa.438.0.copyload.i = load ptr, ptr %.sroa.438.0..sroa_idx.i, align 8, !noalias !1204 ; 2 uses
  %.sroa.539.0.copyload.i = load i64, ptr %.sroa.539.0..sroa_idx.i, align 8, !noalias !1204 ; 2 uses
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !1204 ; 2 uses
  %i.gs = icmp ult i64 %.sroa.539.0.copyload.i, %.sroa.7.0.copyload.i
  br i1 %i.gs, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterRSINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_RShEEINtB5_7ZipImplBW_B3t_E4nextCskeugdADtBsi_12pingora_core.exit.lr.ph.i, label %._RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterRSINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_RShEEINtB5_7ZipImplBW_B3t_E4nextCskeugdADtBsi_12pingora_core.exit.thread.thread.i_crit_edge

._RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterRSINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_RShEEINtB5_7ZipImplBW_B3t_E4nextCskeugdADtBsi_12pingora_core.exit.thread.thread.i_crit_edge: ; preds = %bb.af
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %.val2.i.i.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !1205
  br label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterRSINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_RShEEINtB5_7ZipImplBW_B3t_E4nextCskeugdADtBsi_12pingora_core.exit.thread.thread.i

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterRSINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_RShEEINtB5_7ZipImplBW_B3t_E4nextCskeugdADtBsi_12pingora_core.exit.lr.ph.i: ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.438.0.copyload.i) ]
  %.val25.i = load ptr, ptr %i.gp, align 8, !alias.scope !1203, !nonnull !4 ; 4 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %.val26.i = load i64, ptr %i.gt, align 8, !alias.scope !1203 ; 4 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %.val25.i, i64 %.val26.i
  br label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterRSINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_RShEEINtB5_7ZipImplBW_B3t_E4nextCskeugdADtBsi_12pingora_core.exit.i

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_hEEINtB5_7ZipImplBW_B3r_E4nextCskeugdADtBsi_12pingora_core.exit.thread.loopexit.i: ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCskeugdADtBsi_12pingora_core.exit.thread.i, %bb.ah, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterRSINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_RShEEINtB5_7ZipImplBW_B3t_E4nextCskeugdADtBsi_12pingora_core.exit.i
  %.sroa.0.1.ph.i.lcssa = phi i8 [ %.sroa.0.1.ph.i83, %bb.ah ], [ %.sroa.0.067.i, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterRSINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_RShEEINtB5_7ZipImplBW_B3t_E4nextCskeugdADtBsi_12pingora_core.exit.i ], [ 1, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCskeugdADtBsi_12pingora_core.exit.thread.i ] ; 2 uses
  %i.gv = add i64 %.sroa.539.066.i, 1             ; 2 uses
  %exitcond70.not.i = icmp eq i64 %i.gv, %.sroa.7.0.copyload.i
  br i1 %exitcond70.not.i, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterRSINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_RShEEINtB5_7ZipImplBW_B3t_E4nextCskeugdADtBsi_12pingora_core.exit.thread.i, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterRSINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_RShEEINtB5_7ZipImplBW_B3t_E4nextCskeugdADtBsi_12pingora_core.exit.i

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterRSINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_RShEEINtB5_7ZipImplBW_B3t_E4nextCskeugdADtBsi_12pingora_core.exit.i: ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_hEEINtB5_7ZipImplBW_B3r_E4nextCskeugdADtBsi_12pingora_core.exit.thread.loopexit.i, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterRSINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_RShEEINtB5_7ZipImplBW_B3t_E4nextCskeugdADtBsi_12pingora_core.exit.lr.ph.i
  %.sroa.0.067.i = phi i8 [ 0, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterRSINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_RShEEINtB5_7ZipImplBW_B3t_E4nextCskeugdADtBsi_12pingora_core.exit.lr.ph.i ], [ %.sroa.0.1.ph.i.lcssa, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_hEEINtB5_7ZipImplBW_B3r_E4nextCskeugdADtBsi_12pingora_core.exit.thread.loopexit.i ] ; 2 uses
  %.sroa.539.066.i = phi i64 [ %.sroa.539.0.copyload.i, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterRSINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_RShEEINtB5_7ZipImplBW_B3t_E4nextCskeugdADtBsi_12pingora_core.exit.lr.ph.i ], [ %i.gv, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_hEEINtB5_7ZipImplBW_B3r_E4nextCskeugdADtBsi_12pingora_core.exit.thread.loopexit.i ] ; 3 uses
  %i.gw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i, i64 %.sroa.539.066.i ; 2 uses
  %i.gx = getelementptr inbounds nuw [16 x i8], ptr %.sroa.438.0.copyload.i, i64 %.sroa.539.066.i ; 2 uses
  %i.gy = load ptr, ptr %i.gw, align 8, !noalias !1203, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.ha = load i64, ptr %i.gz, align 8, !noalias !1203, !noundef !4
  %i.hb = getelementptr inbounds nuw [24 x i8], ptr %i.gy, i64 %i.ha
  %i.hc = load ptr, ptr %i.gx, align 8, !noalias !1203, !nonnull !4, !noundef !4 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.he = load i64, ptr %i.hd, align 8, !noalias !1203, !noundef !4
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.he
  call void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_hEEINtB5_7ZipImplBW_B3r_E3newCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %i.gy, ptr noundef nonnull %i.hb, ptr noundef nonnull %i.hc, ptr noundef nonnull %i.hf), !noalias !1203
  %.sroa.040.0.copyload.i = load ptr, ptr %i.b, align 8, !noalias !1204 ; 2 uses
  %.sroa.442.0.copyload.i = load ptr, ptr %.sroa.442.0..sroa_idx.i, align 8, !noalias !1204 ; 2 uses
  %.sroa.544.0.copyload.i = load i64, ptr %.sroa.544.0..sroa_idx.i, align 8, !noalias !1204 ; 2 uses
  %.sroa.745.0.copyload.i = load i64, ptr %.sroa.745.0..sroa_idx.i, align 8, !noalias !1204 ; 4 uses
  %exitcond.not.i7781.not = icmp ult i64 %.sroa.544.0.copyload.i, %.sroa.745.0.copyload.i
  br i1 %exitcond.not.i7781.not, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_hEEINtB5_7ZipImplBW_B3r_E4nextCskeugdADtBsi_12pingora_core.exit.i.lr.ph.preheader, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_hEEINtB5_7ZipImplBW_B3r_E4nextCskeugdADtBsi_12pingora_core.exit.thread.loopexit.i

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_hEEINtB5_7ZipImplBW_B3r_E4nextCskeugdADtBsi_12pingora_core.exit.i.lr.ph.preheader: ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterRSINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_RShEEINtB5_7ZipImplBW_B3t_E4nextCskeugdADtBsi_12pingora_core.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.040.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.442.0.copyload.i) ]
  br label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_hEEINtB5_7ZipImplBW_B3r_E4nextCskeugdADtBsi_12pingora_core.exit.i.lr.ph

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterRSINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_RShEEINtB5_7ZipImplBW_B3t_E4nextCskeugdADtBsi_12pingora_core.exit.thread.i: ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_hEEINtB5_7ZipImplBW_B3r_E4nextCskeugdADtBsi_12pingora_core.exit.thread.loopexit.i
  %i.hg = trunc nuw i8 %.sroa.0.1.ph.i.lcssa to i1
  br i1 %i.hg, label %bb.ag, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterRSINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_RShEEINtB5_7ZipImplBW_B3t_E4nextCskeugdADtBsi_12pingora_core.exit.thread.thread.i

bb.ag:                                            ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterRSINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_RShEEINtB5_7ZipImplBW_B3t_E4nextCskeugdADtBsi_12pingora_core.exit.thread.i
  %i.hh = call noundef double @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride11HuffmanCost(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val25.i, i64 noundef %.val26.i), !noalias !1203 ; 2 uses
  store double %i.hh, ptr %i.gr, align 8, !alias.scope !1203
  br label %_RNvMNtNtCsiRgJJXJ4lb7_6brotli3enc11find_strideINtB2_23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE13initiate_fromCskeugdADtBsi_12pingora_core.exit

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterRSINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_RShEEINtB5_7ZipImplBW_B3t_E4nextCskeugdADtBsi_12pingora_core.exit.thread.thread.i: ; preds = %._RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterRSINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_RShEEINtB5_7ZipImplBW_B3t_E4nextCskeugdADtBsi_12pingora_core.exit.thread.thread.i_crit_edge, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterRSINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_RShEEINtB5_7ZipImplBW_B3t_E4nextCskeugdADtBsi_12pingora_core.exit.thread.i
  %.val2.i.i = phi i64 [ %.val2.i.i.pre, %._RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterRSINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_RShEEINtB5_7ZipImplBW_B3t_E4nextCskeugdADtBsi_12pingora_core.exit.thread.thread.i_crit_edge ], [ %.val26.i, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterRSINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_RShEEINtB5_7ZipImplBW_B3t_E4nextCskeugdADtBsi_12pingora_core.exit.thread.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1206)
  store double 0.000000e+00, ptr %i.gr, align 8, !alias.scope !1205
  %i.hi = icmp eq i64 %.val2.i.i, 0
  br i1 %i.hi, label %_RNvMNtNtCsiRgJJXJ4lb7_6brotli3enc11find_strideINtB2_23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE13initiate_fromCskeugdADtBsi_12pingora_core.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterRSINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_RShEEINtB5_7ZipImplBW_B3t_E4nextCskeugdADtBsi_12pingora_core.exit.thread.thread.i
  %.idx.i.i = shl i64 %.val2.i.i, 2
  %.val.i29.i = load ptr, ptr %i.gp, align 8, !alias.scope !1205, !nonnull !4, !noundef !4
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %.val.i29.i, i8 0, i64 %.idx.i.i, i1 false), !noalias !1205
  br label %_RNvMNtNtCsiRgJJXJ4lb7_6brotli3enc11find_strideINtB2_23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE13initiate_fromCskeugdADtBsi_12pingora_core.exit

bb.ah:                                            ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_hEEINtB5_7ZipImplBW_B3r_E4nextCskeugdADtBsi_12pingora_core.exit.i
  %exitcond.not.i = icmp eq i64 %i.hj, %umax.i84
  br i1 %exitcond.not.i, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_hEEINtB5_7ZipImplBW_B3r_E4nextCskeugdADtBsi_12pingora_core.exit.thread.loopexit.i, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_hEEINtB5_7ZipImplBW_B3r_E4nextCskeugdADtBsi_12pingora_core.exit.i

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_hEEINtB5_7ZipImplBW_B3r_E4nextCskeugdADtBsi_12pingora_core.exit.i: ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_hEEINtB5_7ZipImplBW_B3r_E4nextCskeugdADtBsi_12pingora_core.exit.i.lr.ph, %bb.ah
  %.sroa.544.0.i78 = phi i64 [ %.sroa.544.0.ph.i82, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_hEEINtB5_7ZipImplBW_B3r_E4nextCskeugdADtBsi_12pingora_core.exit.i.lr.ph ], [ %i.hj, %bb.ah ] ; 3 uses
  %i.hj = add i64 %.sroa.544.0.i78, 1             ; 5 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.442.0.copyload.i, i64 %.sroa.544.0.i78
  %i.hl = load i8, ptr %i.hk, align 1, !noalias !1203, !noundef !4
  %.not18.i = icmp eq i8 %i.hl, %i.gq
  br i1 %.not18.i, label %bb.ai, label %bb.ah

bb.ai:                                            ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_hEEINtB5_7ZipImplBW_B3r_E4nextCskeugdADtBsi_12pingora_core.exit.i
  %i.hm = getelementptr inbounds nuw [24 x i8], ptr %.sroa.040.0.copyload.i, i64 %.sroa.544.0.i78 ; 2 uses
  %i.hn = trunc nuw i8 %.sroa.0.1.ph.i83 to i1
  %.val21.i = load ptr, ptr %i.hm, align 8, !noalias !1203, !nonnull !4, !noundef !4 ; 3 uses
  %i.ho = getelementptr i8, ptr %i.hm, i64 8
  %.val22.i = load i64, ptr %i.ho, align 8, !noalias !1203, !noundef !4 ; 2 uses
  br i1 %i.hn, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %.val21.i, i64 %.val22.i
  call void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E3newCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.val25.i, ptr noundef nonnull %i.gu, ptr noundef nonnull %.val21.i, ptr noundef nonnull %i.hp), !noalias !1203
  %.sroa.046.0.copyload.i = load ptr, ptr %i.a, align 8, !noalias !1204 ; 9 uses
  %.sroa.448.0.copyload.i = load ptr, ptr %.sroa.448.0..sroa_idx.i, align 8, !noalias !1204 ; 9 uses
  %.sroa.550.0.copyload.i = load i64, ptr %.sroa.550.0..sroa_idx.i, align 8, !noalias !1204 ; 7 uses
  %.sroa.751.0.copyload.i = load i64, ptr %.sroa.751.0..sroa_idx.i, align 8, !noalias !1204 ; 6 uses
  %i.hq = icmp ult i64 %.sroa.550.0.copyload.i, %.sroa.751.0.copyload.i
  br i1 %i.hq, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCskeugdADtBsi_12pingora_core.exit.lr.ph.i, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCskeugdADtBsi_12pingora_core.exit.thread.i

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCskeugdADtBsi_12pingora_core.exit.lr.ph.i: ; preds = %bb.aj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.046.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.448.0.copyload.i) ]
  %i.hr = sub nuw i64 %.sroa.751.0.copyload.i, %.sroa.550.0.copyload.i ; 3 uses
  %min.iters.check = icmp ult i64 %i.hr, 8
  br i1 %min.iters.check, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCskeugdADtBsi_12pingora_core.exit.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCskeugdADtBsi_12pingora_core.exit.lr.ph.i
  %i.hs = shl i64 %.sroa.550.0.copyload.i, 2      ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.046.0.copyload.i, i64 %i.hs
  %i.ht = shl i64 %.sroa.751.0.copyload.i, 2      ; 2 uses
  %scevgep86 = getelementptr i8, ptr %.sroa.046.0.copyload.i, i64 %i.ht
  %scevgep87 = getelementptr i8, ptr %.sroa.448.0.copyload.i, i64 %i.hs
  %scevgep88 = getelementptr i8, ptr %.sroa.448.0.copyload.i, i64 %i.ht
  %bound0 = icmp ult ptr %scevgep, %scevgep88
  %bound1 = icmp ult ptr %scevgep87, %scevgep86
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCskeugdADtBsi_12pingora_core.exit.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.hr, -8                      ; 3 uses
  %i.hu = add i64 %.sroa.550.0.copyload.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hv = add nuw i64 %.sroa.550.0.copyload.i, %index ; 2 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.046.0.copyload.i, i64 %i.hv ; 3 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.448.0.copyload.i, i64 %i.hv ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %wide.load = load <4 x i32>, ptr %i.hx, align 4, !alias.scope !1207, !noalias !1203
  %wide.load89 = load <4 x i32>, ptr %i.hy, align 4, !alias.scope !1207, !noalias !1203
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 16 ; 2 uses
  %wide.load90 = load <4 x i32>, ptr %i.hw, align 4, !alias.scope !1208, !noalias !1209
  %wide.load91 = load <4 x i32>, ptr %i.hz, align 4, !alias.scope !1208, !noalias !1209
  %i.ia = add <4 x i32> %wide.load90, %wide.load
  %i.ib = add <4 x i32> %wide.load91, %wide.load89
  store <4 x i32> %i.ia, ptr %i.hw, align 4, !alias.scope !1208, !noalias !1209
  store <4 x i32> %i.ib, ptr %i.hz, align 4, !alias.scope !1208, !noalias !1209
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ic = icmp eq i64 %index.next, %n.vec
  br i1 %i.ic, label %middle.block, label %vector.body, !llvm.loop !1193

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hr, %n.vec
  br i1 %cmp.n, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCskeugdADtBsi_12pingora_core.exit.thread.i, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCskeugdADtBsi_12pingora_core.exit.i.preheader

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCskeugdADtBsi_12pingora_core.exit.i.preheader: ; preds = %vector.memcheck, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCskeugdADtBsi_12pingora_core.exit.lr.ph.i, %middle.block
  %.sroa.550.065.i.ph = phi i64 [ %.sroa.550.0.copyload.i, %vector.memcheck ], [ %.sroa.550.0.copyload.i, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCskeugdADtBsi_12pingora_core.exit.lr.ph.i ], [ %i.hu, %middle.block ] ; 4 uses
  %i.id = sub i64 %.sroa.751.0.copyload.i, %.sroa.550.065.i.ph
  %xtraiter = and i64 %i.id, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCskeugdADtBsi_12pingora_core.exit.i.prol.loopexit, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCskeugdADtBsi_12pingora_core.exit.i.prol

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCskeugdADtBsi_12pingora_core.exit.i.prol: ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCskeugdADtBsi_12pingora_core.exit.i.preheader, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCskeugdADtBsi_12pingora_core.exit.i.prol
  %.sroa.550.065.i.prol = phi i64 [ %i.ig, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCskeugdADtBsi_12pingora_core.exit.i.prol ], [ %.sroa.550.065.i.ph, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCskeugdADtBsi_12pingora_core.exit.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCskeugdADtBsi_12pingora_core.exit.i.prol ], [ 0, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCskeugdADtBsi_12pingora_core.exit.i.preheader ]
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %.sroa.046.0.copyload.i, i64 %.sroa.550.065.i.prol ; 2 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %.sroa.448.0.copyload.i, i64 %.sroa.550.065.i.prol
  %i.ig = add nuw i64 %.sroa.550.065.i.prol, 1    ; 2 uses
  %i.ih = load i32, ptr %i.if, align 4, !noalias !1203, !noundef !4
  %i.ii = load i32, ptr %i.ie, align 4, !noalias !1203, !noundef !4
  %i.ij = add i32 %i.ii, %i.ih
  store i32 %i.ij, ptr %i.ie, align 4, !noalias !1203
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCskeugdADtBsi_12pingora_core.exit.i.prol.loopexit, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCskeugdADtBsi_12pingora_core.exit.i.prol, !llvm.loop !1194

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCskeugdADtBsi_12pingora_core.exit.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCskeugdADtBsi_12pingora_core.exit.i.prol, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCskeugdADtBsi_12pingora_core.exit.i.preheader
  %.sroa.550.065.i.unr = phi i64 [ %.sroa.550.065.i.ph, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCskeugdADtBsi_12pingora_core.exit.i.preheader ], [ %i.ig, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCskeugdADtBsi_12pingora_core.exit.i.prol ]
  %i.ik = sub i64 %.sroa.550.065.i.ph, %.sroa.751.0.copyload.i
  %i.il = icmp ugt i64 %i.ik, -4
  br i1 %i.il, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCskeugdADtBsi_12pingora_core.exit.thread.i, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCskeugdADtBsi_12pingora_core.exit.i

bb.ak:                                            ; preds = %bb.ai
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implmECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 4 %.val25.i, i64 noundef %.val26.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val21.i, i64 noundef %.val22.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157), !noalias !1203
  br label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCskeugdADtBsi_12pingora_core.exit.thread.i

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCskeugdADtBsi_12pingora_core.exit.thread.i: ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCskeugdADtBsi_12pingora_core.exit.i.prol.loopexit, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCskeugdADtBsi_12pingora_core.exit.i, %middle.block, %bb.ak, %bb.aj
  %umax.i = call i64 @llvm.umax.i64(i64 %i.hj, i64 %.sroa.745.0.copyload.i)
  %exitcond.not.i77.not = icmp ult i64 %i.hj, %.sroa.745.0.copyload.i
  br i1 %exitcond.not.i77.not, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_hEEINtB5_7ZipImplBW_B3r_E4nextCskeugdADtBsi_12pingora_core.exit.i.lr.ph, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_hEEINtB5_7ZipImplBW_B3r_E4nextCskeugdADtBsi_12pingora_core.exit.thread.loopexit.i

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_hEEINtB5_7ZipImplBW_B3r_E4nextCskeugdADtBsi_12pingora_core.exit.i.lr.ph: ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_hEEINtB5_7ZipImplBW_B3r_E4nextCskeugdADtBsi_12pingora_core.exit.i.lr.ph.preheader, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCskeugdADtBsi_12pingora_core.exit.thread.i
  %umax.i84 = phi i64 [ %umax.i, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCskeugdADtBsi_12pingora_core.exit.thread.i ], [ %.sroa.745.0.copyload.i, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_hEEINtB5_7ZipImplBW_B3r_E4nextCskeugdADtBsi_12pingora_core.exit.i.lr.ph.preheader ]
  %.sroa.0.1.ph.i83 = phi i8 [ 1, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCskeugdADtBsi_12pingora_core.exit.thread.i ], [ %.sroa.0.067.i, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_hEEINtB5_7ZipImplBW_B3r_E4nextCskeugdADtBsi_12pingora_core.exit.i.lr.ph.preheader ] ; 2 uses
  %.sroa.544.0.ph.i82 = phi i64 [ %i.hj, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCskeugdADtBsi_12pingora_core.exit.thread.i ], [ %.sroa.544.0.copyload.i, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_hEEINtB5_7ZipImplBW_B3r_E4nextCskeugdADtBsi_12pingora_core.exit.i.lr.ph.preheader ]
  br label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_hEEINtB5_7ZipImplBW_B3r_E4nextCskeugdADtBsi_12pingora_core.exit.i

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCskeugdADtBsi_12pingora_core.exit.i: ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCskeugdADtBsi_12pingora_core.exit.i.prol.loopexit, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCskeugdADtBsi_12pingora_core.exit.i
  %.sroa.550.065.i = phi i64 [ %i.jg, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCskeugdADtBsi_12pingora_core.exit.i ], [ %.sroa.550.065.i.unr, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCskeugdADtBsi_12pingora_core.exit.i.prol.loopexit ] ; 6 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %.sroa.046.0.copyload.i, i64 %.sroa.550.065.i ; 2 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %.sroa.448.0.copyload.i, i64 %.sroa.550.065.i
  %i.io = add nuw i64 %.sroa.550.065.i, 1         ; 2 uses
  %i.ip = load i32, ptr %i.in, align 4, !noalias !1203, !noundef !4
  %i.iq = load i32, ptr %i.im, align 4, !noalias !1203, !noundef !4
  %i.ir = add i32 %i.iq, %i.ip
  store i32 %i.ir, ptr %i.im, align 4, !noalias !1203
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %.sroa.046.0.copyload.i, i64 %i.io ; 2 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %.sroa.448.0.copyload.i, i64 %i.io
  %i.iu = add nuw i64 %.sroa.550.065.i, 2         ; 2 uses
  %i.iv = load i32, ptr %i.it, align 4, !noalias !1203, !noundef !4
  %i.iw = load i32, ptr %i.is, align 4, !noalias !1203, !noundef !4
  %i.ix = add i32 %i.iw, %i.iv
  store i32 %i.ix, ptr %i.is, align 4, !noalias !1203
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.046.0.copyload.i, i64 %i.iu ; 2 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.448.0.copyload.i, i64 %i.iu
  %i.ja = add nuw i64 %.sroa.550.065.i, 3         ; 2 uses
  %i.jb = load i32, ptr %i.iz, align 4, !noalias !1203, !noundef !4
  %i.jc = load i32, ptr %i.iy, align 4, !noalias !1203, !noundef !4
  %i.jd = add i32 %i.jc, %i.jb
  store i32 %i.jd, ptr %i.iy, align 4, !noalias !1203
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %.sroa.046.0.copyload.i, i64 %i.ja ; 2 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.448.0.copyload.i, i64 %i.ja
  %i.jg = add nuw i64 %.sroa.550.065.i, 4         ; 2 uses
  %i.jh = load i32, ptr %i.jf, align 4, !noalias !1203, !noundef !4
  %i.ji = load i32, ptr %i.je, align 4, !noalias !1203, !noundef !4
  %i.jj = add i32 %i.ji, %i.jh
  store i32 %i.jj, ptr %i.je, align 4, !noalias !1203
  %exitcond69.not.i.3 = icmp eq i64 %i.jg, %.sroa.751.0.copyload.i
  br i1 %exitcond69.not.i.3, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCskeugdADtBsi_12pingora_core.exit.thread.i, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCskeugdADtBsi_12pingora_core.exit.i, !llvm.loop !1195

_RNvMNtNtCsiRgJJXJ4lb7_6brotli3enc11find_strideINtB2_23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE13initiate_fromCskeugdADtBsi_12pingora_core.exit: ; preds = %bb.ag, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterRSINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_RShEEINtB5_7ZipImplBW_B3t_E4nextCskeugdADtBsi_12pingora_core.exit.thread.thread.i, %.lr.ph.preheader.i.i
  %i.jk = phi double [ %i.hh, %bb.ag ], [ 0.000000e+00, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterRSINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEEIBX_RShEEINtB5_7ZipImplBW_B3t_E4nextCskeugdADtBsi_12pingora_core.exit.thread.thread.i ], [ 0.000000e+00, %.lr.ph.preheader.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.023.052
  store double %i.jk, ptr %i.jl, align 8
  %exitcond.not = icmp eq i64 %i.go, 8
  br i1 %exitcond.not, label %bb.r, label %bb.af
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtNtCsiRgJJXJ4lb7_6brotli3enc11find_strideINtB5_14EntropyPyramidNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE20disabled_placeholderCskeugdADtBsi_12pingora_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(376) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvXs0_NtCsc389t4z7aPt_12alloc_stdlib10heap_allocINtB5_7WrapBoxmENtNtCskKLDkoKarTP_4core7default7Default7defaultCskeugdADtBsi_12pingora_core() ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 3 uses
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 3 uses
  %i.d = invoke { ptr, i64 } @_RNvXs0_NtCsc389t4z7aPt_12alloc_stdlib10heap_allocINtB5_7WrapBoxmENtNtCskKLDkoKarTP_4core7default7Default7defaultCskeugdADtBsi_12pingora_core()
          to label %bb.d unwind label %bb.c       ; 2 uses

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit43: ; preds = %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit44, %bb.c
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.g, %bb.c ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit44 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.e ]
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit, label %bb.b

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit43
  %i.f = shl nuw nsw i64 %i.c, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.b) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef range(i64 1, 0) %i.f, i64 noundef 4) #25
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit43

bb.d:                                             ; preds = %bb.a
  %i.h = extractvalue { ptr, i64 } %i.d, 0        ; 3 uses
  %i.i = extractvalue { ptr, i64 } %i.d, 1        ; 3 uses
  %i.j = invoke { ptr, i64 } @_RNvXs0_NtCsc389t4z7aPt_12alloc_stdlib10heap_allocINtB5_7WrapBoxmENtNtCskKLDkoKarTP_4core7default7Default7defaultCskeugdADtBsi_12pingora_core()
          to label %bb.g unwind label %bb.f       ; 2 uses

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit44: ; preds = %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit45, %bb.f
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.m, %bb.f ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit45 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.h ] ; 2 uses
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit43, label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit44
  %i.l = shl nuw nsw i64 %i.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef range(i64 1, 0) %i.l, i64 noundef 4) #25
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit43

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit44

bb.g:                                             ; preds = %bb.d
  %i.n = extractvalue { ptr, i64 } %i.j, 0        ; 3 uses
  %i.o = extractvalue { ptr, i64 } %i.j, 1        ; 3 uses
  %i.p = invoke { ptr, i64 } @_RNvXs0_NtCsc389t4z7aPt_12alloc_stdlib10heap_allocINtB5_7WrapBoxmENtNtCskKLDkoKarTP_4core7default7Default7defaultCskeugdADtBsi_12pingora_core()
          to label %bb.j unwind label %bb.i       ; 2 uses

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit45: ; preds = %bb.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit46, %bb.i
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.s, %bb.i ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit46 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.k ] ; 2 uses
  %i.q = icmp eq i64 %i.o, 0
  br i1 %i.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit44, label %bb.h

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit45
  %i.r = shl nuw nsw i64 %i.o, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, 0) %i.r, i64 noundef 4) #25
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit44

bb.i:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiRgJJXJ4lb7_6brotli3enc11find_stride23EntropyBucketPopulationNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit45
end_hunk_0
begin_hunk_1_@_RNvMsc_NtNtCsiRgJJXJ4lb7_6brotli3enc10prior_evalINtB5_9PriorEvalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE3newCskeugdADtBsi_12pingora_core:bb.a
  %.sroa.6266.0351 = phi i64 [ %.sroa.6266.0347375, %bb.u ], [ %.sroa.6266.0352, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc6compat11Compat16x16EECskeugdADtBsi_12pingora_core.exit124 ], [ %.sroa.6266.0352, %bb.x ] ; 2 uses
  %.sroa.0262.0325 = phi ptr [ %.sroa.0262.0320335387, %bb.u ], [ %.sroa.0262.0326, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc6compat11Compat16x16EECskeugdADtBsi_12pingora_core.exit124 ], [ %.sroa.0262.0326, %bb.x ] ; 2 uses
  %.sroa.6263.0317 = phi i64 [ %.sroa.6263.0312338384, %bb.u ], [ %.sroa.6263.0318, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc6compat11Compat16x16EECskeugdADtBsi_12pingora_core.exit124 ], [ %.sroa.6263.0318, %bb.x ] ; 2 uses
  %.sroa.0260.0298 = phi ptr [ %.sroa.0260.0292306344378, %bb.u ], [ %.sroa.0260.0299, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc6compat11Compat16x16EECskeugdADtBsi_12pingora_core.exit124 ], [ %.sroa.0260.0299, %bb.x ] ; 2 uses
  %.sroa.6.0280289 = phi i64 [ %.sroa.6.0280283309341381, %bb.u ], [ %.sroa.6.0280290, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc6compat11Compat16x16EECskeugdADtBsi_12pingora_core.exit124 ], [ %.sroa.6.0280290, %bb.x ] ; 2 uses
  %.pn.pn = phi { ptr, i32 } [ %i.bl, %bb.u ], [ %.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc6compat11Compat16x16EECskeugdADtBsi_12pingora_core.exit124 ], [ %.pn, %bb.x ] ; 2 uses
  %i.bj = icmp eq i64 %.sroa.6269.0390, 0
  br i1 %i.bj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc6compat11Compat16x16EECskeugdADtBsi_12pingora_core.exit122, label %bb.t

bb.t:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc6compat11Compat16x16EECskeugdADtBsi_12pingora_core.exit123
  %i.bk = shl nuw nsw i64 %.sroa.6269.0390, 5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0268.0395) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0268.0395, i64 noundef range(i64 1, 0) %i.bk, i64 noundef 2) #25
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc6compat11Compat16x16EECskeugdADtBsi_12pingora_core.exit122

bb.u:                                             ; preds = %bb.s, %bb.r
  %.sroa.0268.0396 = phi ptr [ %i.bg, %bb.s ], [ %i.bd, %bb.r ]
  %.sroa.6269.0391 = phi i64 [ %i.bh, %bb.s ], [ %i.be, %bb.r ]
  %.sroa.0262.0320335387 = phi ptr [ %i.ao, %bb.s ], [ %i.al, %bb.r ]
  %.sroa.6263.0312338384 = phi i64 [ %i.ap, %bb.s ], [ %i.am, %bb.r ]
  %.sroa.6.0280283309341381 = phi i64 [ %i.ag, %bb.s ], [ %i.ad, %bb.r ]
  %.sroa.0260.0292306344378 = phi ptr [ %i.af, %bb.s ], [ %i.ac, %bb.r ]
  %.sroa.6266.0347375 = phi i64 [ %i.ay, %bb.s ], [ %i.av, %bb.r ]
  %.sroa.0265.0354372 = phi ptr [ %i.ax, %bb.s ], [ %i.au, %bb.r ]
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc6compat11Compat16x16EECskeugdADtBsi_12pingora_core.exit123

bb.v:                                             ; preds = %bb.r
  %i.bm = extractvalue { ptr, i64 } %i.bf, 0      ; 3 uses
  %i.bn = extractvalue { ptr, i64 } %i.bf, 1      ; 3 uses
  %i.bo = invoke { ptr, i64 } @_RNvXs0_NtCsc389t4z7aPt_12alloc_stdlib10heap_allocINtB5_7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc6compat11Compat16x16ENtNtCskKLDkoKarTP_4core7default7Default7defaultCskeugdADtBsi_12pingora_core()
          to label %bb.z unwind label %bb.y       ; 2 uses

bb.w:                                             ; preds = %bb.s
  %i.bp = extractvalue { ptr, i64 } %i.bi, 0      ; 3 uses
  %i.bq = extractvalue { ptr, i64 } %i.bi, 1      ; 3 uses
  %i.br = invoke { ptr, i64 } @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsiRgJJXJ4lb7_6brotli3enc6compat11Compat16x16E10alloc_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %1, i64 noundef 131072)
          to label %bb.aa unwind label %bb.y      ; 2 uses

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc6compat11Compat16x16EECskeugdADtBsi_12pingora_core.exit124: ; preds = %bb.ac, %bb.ab, %bb.y
  %.sroa.0271.0439 = phi ptr [ %.sroa.0271.0440, %bb.y ], [ %.sroa.0271.0437456, %bb.ab ], [ %.sroa.0271.0437456, %bb.ac ] ; 2 uses
  %.sroa.6272.0435 = phi i64 [ %.sroa.6272.0436, %bb.y ], [ %.sroa.6272.0433459, %bb.ab ], [ %.sroa.6272.0433459, %bb.ac ] ; 2 uses
  %.sroa.0268.0397 = phi ptr [ %.sroa.0268.0393411, %bb.y ], [ %.sroa.0268.0393409483, %bb.ab ], [ %.sroa.0268.0393409483, %bb.ac ] ; 2 uses
  %.sroa.6269.0392 = phi i64 [ %.sroa.6269.0388414, %bb.y ], [ %.sroa.6269.0388412480, %bb.ab ], [ %.sroa.6269.0388412480, %bb.ac ] ; 2 uses
  %.sroa.0265.0359 = phi ptr [ %.sroa.0265.0354370432, %bb.y ], [ %.sroa.0265.0354370430462, %bb.ab ], [ %.sroa.0265.0354370430462, %bb.ac ] ; 2 uses
  %.sroa.6266.0352 = phi i64 [ %.sroa.6266.0347373429, %bb.y ], [ %.sroa.6266.0347373427465, %bb.ab ], [ %.sroa.6266.0347373427465, %bb.ac ] ; 2 uses
  %.sroa.0262.0326 = phi ptr [ %.sroa.0262.0320335385417, %bb.y ], [ %.sroa.0262.0320335385415477, %bb.ab ], [ %.sroa.0262.0320335385415477, %bb.ac ] ; 2 uses
  %.sroa.6263.0318 = phi i64 [ %.sroa.6263.0312338382420, %bb.y ], [ %.sroa.6263.0312338382418474, %bb.ab ], [ %.sroa.6263.0312338382418474, %bb.ac ] ; 2 uses
  %.sroa.0260.0299 = phi ptr [ %.sroa.0260.0292306344376426, %bb.y ], [ %.sroa.0260.0292306344376424468, %bb.ab ], [ %.sroa.0260.0292306344376424468, %bb.ac ] ; 2 uses
  %.sroa.6.0280290 = phi i64 [ %.sroa.6.0280283309341379423, %bb.y ], [ %.sroa.6.0280283309341379421471, %bb.ab ], [ %.sroa.6.0280283309341379421471, %bb.ac ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.bu, %bb.y ], [ %i.cb, %bb.ab ], [ %i.cb, %bb.ac ] ; 2 uses
  %i.bs = icmp eq i64 %.sroa.6272.0435, 0
  br i1 %i.bs, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc6compat11Compat16x16EECskeugdADtBsi_12pingora_core.exit123, label %bb.x

bb.x:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc6compat11Compat16x16EECskeugdADtBsi_12pingora_core.exit124
  %i.bt = shl nuw nsw i64 %.sroa.6272.0435, 5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0271.0439) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0271.0439, i64 noundef range(i64 1, 0) %i.bt, i64 noundef 2) #25
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc6compat11Compat16x16EECskeugdADtBsi_12pingora_core.exit123

bb.y:                                             ; preds = %bb.w, %bb.v
  %.sroa.0271.0440 = phi ptr [ %i.bp, %bb.w ], [ %i.bm, %bb.v ]
  %.sroa.6272.0436 = phi i64 [ %i.bq, %bb.w ], [ %i.bn, %bb.v ]
  %.sroa.0265.0354370432 = phi ptr [ %i.ax, %bb.w ], [ %i.au, %bb.v ]
  %.sroa.6266.0347373429 = phi i64 [ %i.ay, %bb.w ], [ %i.av, %bb.v ]
  %.sroa.0260.0292306344376426 = phi ptr [ %i.af, %bb.w ], [ %i.ac, %bb.v ]
  %.sroa.6.0280283309341379423 = phi i64 [ %i.ag, %bb.w ], [ %i.ad, %bb.v ]
  %.sroa.6263.0312338382420 = phi i64 [ %i.ap, %bb.w ], [ %i.am, %bb.v ]
  %.sroa.0262.0320335385417 = phi ptr [ %i.ao, %bb.w ], [ %i.al, %bb.v ]
  %.sroa.6269.0388414 = phi i64 [ %i.bh, %bb.w ], [ %i.be, %bb.v ]
  %.sroa.0268.0393411 = phi ptr [ %i.bg, %bb.w ], [ %i.bd, %bb.v ]
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc6compat11Compat16x16EECskeugdADtBsi_12pingora_core.exit124

bb.z:                                             ; preds = %bb.v
  %i.bv = extractvalue { ptr, i64 } %i.bo, 0      ; 2 uses
  %i.bw = extractvalue { ptr, i64 } %i.bo, 1      ; 2 uses
  %i.bx = invoke { ptr, i64 } @_RNvXs0_NtCsc389t4z7aPt_12alloc_stdlib10heap_allocINtB5_7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc6compat11Compat16x16ENtNtCskKLDkoKarTP_4core7default7Default7defaultCskeugdADtBsi_12pingora_core()
          to label %bb.ad unwind label %bb.ab

bb.aa:                                            ; preds = %bb.w
  %i.by = extractvalue { ptr, i64 } %i.br, 0      ; 2 uses
  %i.bz = extractvalue { ptr, i64 } %i.br, 1      ; 2 uses
  %i.ca = invoke { ptr, i64 } @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsiRgJJXJ4lb7_6brotli3enc6compat11Compat16x16E10alloc_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %1, i64 noundef 131072)
          to label %bb.ad unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sroa.0274.0489 = phi ptr [ %i.by, %bb.aa ], [ %i.bv, %bb.z ] ; 2 uses
  %.sroa.6275.0486 = phi i64 [ %i.bz, %bb.aa ], [ %i.bw, %bb.z ] ; 2 uses
  %.sroa.0268.0393409483 = phi ptr [ %i.bg, %bb.aa ], [ %i.bd, %bb.z ] ; 2 uses
  %.sroa.6269.0388412480 = phi i64 [ %i.bh, %bb.aa ], [ %i.be, %bb.z ] ; 2 uses
  %.sroa.0262.0320335385415477 = phi ptr [ %i.ao, %bb.aa ], [ %i.al, %bb.z ] ; 2 uses
  %.sroa.6263.0312338382418474 = phi i64 [ %i.ap, %bb.aa ], [ %i.am, %bb.z ] ; 2 uses
  %.sroa.6.0280283309341379421471 = phi i64 [ %i.ag, %bb.aa ], [ %i.ad, %bb.z ] ; 2 uses
  %.sroa.0260.0292306344376424468 = phi ptr [ %i.af, %bb.aa ], [ %i.ac, %bb.z ] ; 2 uses
  %.sroa.6266.0347373427465 = phi i64 [ %i.ay, %bb.aa ], [ %i.av, %bb.z ] ; 2 uses
  %.sroa.0265.0354370430462 = phi ptr [ %i.ax, %bb.aa ], [ %i.au, %bb.z ] ; 2 uses
  %.sroa.6272.0433459 = phi i64 [ %i.bq, %bb.aa ], [ %i.bn, %bb.z ] ; 2 uses
  %.sroa.0271.0437456 = phi ptr [ %i.bp, %bb.aa ], [ %i.bm, %bb.z ] ; 2 uses
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cc = icmp eq i64 %.sroa.6275.0486, 0
  br i1 %i.cc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc6compat11Compat16x16EECskeugdADtBsi_12pingora_core.exit124, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cd = shl nuw nsw i64 %.sroa.6275.0486, 5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0274.0489) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0274.0489, i64 noundef range(i64 1, 0) %i.cd, i64 noundef 2) #25
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc6compat11Compat16x16EECskeugdADtBsi_12pingora_core.exit124

bb.ad:                                            ; preds = %bb.aa, %bb.z
  %.sroa.0274.0487 = phi ptr [ %i.bv, %bb.z ], [ %i.by, %bb.aa ] ; 6 uses
  %.sroa.6275.0484 = phi i64 [ %i.bw, %bb.z ], [ %i.bz, %bb.aa ] ; 4 uses
  %.sroa.0268.0393409481 = phi ptr [ %i.bd, %bb.z ], [ %i.bg, %bb.aa ] ; 6 uses
  %.sroa.6269.0388412478 = phi i64 [ %i.be, %bb.z ], [ %i.bh, %bb.aa ] ; 4 uses
  %.sroa.0262.0320335385415475 = phi ptr [ %i.al, %bb.z ], [ %i.ao, %bb.aa ] ; 6 uses
  %.sroa.6263.0312338382418472 = phi i64 [ %i.am, %bb.z ], [ %i.ap, %bb.aa ] ; 4 uses
  %.sroa.6.0280283309341379421469 = phi i64 [ %i.ad, %bb.z ], [ %i.ag, %bb.aa ] ; 4 uses
  %.sroa.0260.0292306344376424466 = phi ptr [ %i.ac, %bb.z ], [ %i.af, %bb.aa ] ; 6 uses
  %.sroa.6266.0347373427463 = phi i64 [ %i.av, %bb.z ], [ %i.ay, %bb.aa ] ; 4 uses
  %.sroa.0265.0354370430460 = phi ptr [ %i.au, %bb.z ], [ %i.ax, %bb.aa ] ; 6 uses
  %.sroa.6272.0433457 = phi i64 [ %i.bn, %bb.z ], [ %i.bq, %bb.aa ] ; 4 uses
  %.sroa.0271.0437454 = phi ptr [ %i.bm, %bb.z ], [ %i.bp, %bb.aa ] ; 6 uses
  %.pn77 = phi { ptr, i64 } [ %i.bx, %bb.z ], [ %i.ca, %bb.aa ] ; 2 uses
  %.sroa.057.0 = extractvalue { ptr, i64 } %.pn77, 0 ; 6 uses
  %.sroa.5.0 = extractvalue { ptr, i64 } %.pn77, 1 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0268.0393409481) ]
  store ptr %.sroa.0268.0393409481, ptr %i.a, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.6269.0388412478, ptr %i.ce, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0271.0437454) ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.0271.0437454, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.6272.0433457, ptr %i.cg, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0274.0487) ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.sroa.0274.0487, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.sroa.6275.0484, ptr %i.ci, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.057.0) ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.sroa.057.0, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.sroa.5.0, ptr %i.ck, align 8
  br i1 %.not, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cl = invoke { ptr, i64 } @_RNvXs0_NtCsc389t4z7aPt_12alloc_stdlib10heap_allocINtB5_7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc6compat11Compat16x16ENtNtCskKLDkoKarTP_4core7default7Default7defaultCskeugdADtBsi_12pingora_core()
          to label %bb.ah unwind label %bb.ag     ; 2 uses

bb.af:                                            ; preds = %bb.ad
  %i.cm = invoke { ptr, i64 } @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsiRgJJXJ4lb7_6brotli3enc6compat11Compat16x16E10alloc_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %1, i64 noundef 1376256)
          to label %bb.ak unwind label %bb.ag     ; 2 uses

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc6compat11Compat16x16EECskeugdADtBsi_12pingora_core.exit125: ; preds = %bb.aj, %bb.ai, %bb.ag
  %.pn79 = phi { ptr, i32 } [ %i.cn, %bb.ag ], [ %i.cr, %bb.ai ], [ %i.cr, %bb.aj ]
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueAINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc6compat11Compat16x16Ej4_ECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(64) %i.a) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc6compat11Compat16x16EECskeugdADtBsi_12pingora_core.exit122

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc6compat11Compat16x16EECskeugdADtBsi_12pingora_core.exit125

bb.ah:                                            ; preds = %bb.ae
  %i.co = extractvalue { ptr, i64 } %i.cl, 0      ; 2 uses
  %i.cp = extractvalue { ptr, i64 } %i.cl, 1      ; 2 uses
  %i.cq = invoke { ptr, i64 } @_RNvXs0_NtCsc389t4z7aPt_12alloc_stdlib10heap_allocINtB5_7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc6compat8CompatF8ENtNtCskKLDkoKarTP_4core7default7Default7defaultCskeugdADtBsi_12pingora_core()
          to label %bb.al unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ak, %bb.ah
  %.sroa.6278.0 = phi i64 [ %i.cp, %bb.ah ], [ %i.cv, %bb.ak ] ; 2 uses
  %.sroa.0277.0 = phi ptr [ %i.co, %bb.ah ], [ %i.cu, %bb.ak ] ; 2 uses
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cs = icmp eq i64 %.sroa.6278.0, 0
  br i1 %i.cs, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc6compat11Compat16x16EECskeugdADtBsi_12pingora_core.exit125, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ct = shl nuw nsw i64 %.sroa.6278.0, 5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0277.0) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0277.0, i64 noundef range(i64 1, 0) %i.ct, i64 noundef 2) #25
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc6compat11Compat16x16EECskeugdADtBsi_12pingora_core.exit125

bb.ak:                                            ; preds = %bb.af
  %i.cu = extractvalue { ptr, i64 } %i.cm, 0      ; 2 uses
  %i.cv = extractvalue { ptr, i64 } %i.cm, 1      ; 2 uses
  %i.cw = invoke { ptr, i64 } @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsiRgJJXJ4lb7_6brotli3enc6compat8CompatF8E10alloc_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %1, i64 noundef 8192)
          to label %bb.al unwind label %bb.ai

bb.al:                                            ; preds = %bb.ah, %bb.ak
  %.sroa.6278.1 = phi i64 [ %i.cp, %bb.ah ], [ %i.cv, %bb.ak ] ; 3 uses
  %.sroa.0277.1 = phi ptr [ %i.co, %bb.ah ], [ %i.cu, %bb.ak ] ; 5 uses
  %.pn85 = phi { ptr, i64 } [ %i.cq, %bb.ah ], [ %i.cw, %bb.ak ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %.sroa.0.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.v) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0260.0292306344376424466) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0262.0320335385415475) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0265.0354370430460) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0277.1) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.idx.i = shl i64 %.sroa.6.0280283309341379421469, 5 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0260.0292306344376424466, i64 %.idx.i
  %i.cy = icmp eq i64 %.sroa.6.0280283309341379421469, 0
  br i1 %i.cy, label %.loopexit495, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.al
  %i.cz = add i64 %.idx.i, -32                    ; 2 uses
  %i.da = lshr exact i64 %i.cz, 5
  %i.db = add nuw nsw i64 %i.da, 1
  %xtraiter = and i64 %i.db, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.0.019.i.prol = phi ptr [ %i.dc, %.lr.ph.i.prol ], [ %.sroa.0260.0292306344376424466, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.prol, i64 32 ; 2 uses
  store <8 x i16> <i16 4, i16 8, i16 12, i16 16, i16 20, i16 24, i16 28, i16 32>, ptr %.sroa.0.019.i.prol, align 2, !alias.scope !1357
  %.sroa.1111.0..sroa.01.0..sroa_idx.i.prol = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.prol, i64 16
  store <8 x i16> <i16 36, i16 40, i16 44, i16 48, i16 52, i16 56, i16 60, i16 64>, ptr %.sroa.1111.0..sroa.01.0..sroa_idx.i.prol, align 2, !alias.scope !1357
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1335

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.sroa.0.019.i.unr = phi ptr [ %.sroa.0260.0292306344376424466, %.lr.ph.i.preheader ], [ %i.dc, %.lr.ph.i.prol ]
  %i.dd = icmp ult i64 %i.cz, 224
  br i1 %i.dd, label %.loopexit495, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.0.019.i = phi ptr [ %i.dl, %.lr.ph.i ], [ %.sroa.0.019.i.unr, %.lr.ph.i.prol.loopexit ] ; 17 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i, i64 32
  store <8 x i16> <i16 4, i16 8, i16 12, i16 16, i16 20, i16 24, i16 28, i16 32>, ptr %.sroa.0.019.i, align 2, !alias.scope !1357
  %.sroa.1111.0..sroa.01.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i, i64 16
  store <8 x i16> <i16 36, i16 40, i16 44, i16 48, i16 52, i16 56, i16 60, i16 64>, ptr %.sroa.1111.0..sroa.01.0..sroa_idx.i, align 2, !alias.scope !1357
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i, i64 64
  store <8 x i16> <i16 4, i16 8, i16 12, i16 16, i16 20, i16 24, i16 28, i16 32>, ptr %i.de, align 2, !alias.scope !1357
  %.sroa.1111.0..sroa.01.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i, i64 48
  store <8 x i16> <i16 36, i16 40, i16 44, i16 48, i16 52, i16 56, i16 60, i16 64>, ptr %.sroa.1111.0..sroa.01.0..sroa_idx.i.1, align 2, !alias.scope !1357
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i, i64 96
  store <8 x i16> <i16 4, i16 8, i16 12, i16 16, i16 20, i16 24, i16 28, i16 32>, ptr %i.df, align 2, !alias.scope !1357
  %.sroa.1111.0..sroa.01.0..sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i, i64 80
  store <8 x i16> <i16 36, i16 40, i16 44, i16 48, i16 52, i16 56, i16 60, i16 64>, ptr %.sroa.1111.0..sroa.01.0..sroa_idx.i.2, align 2, !alias.scope !1357
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i, i64 128
  store <8 x i16> <i16 4, i16 8, i16 12, i16 16, i16 20, i16 24, i16 28, i16 32>, ptr %i.dg, align 2, !alias.scope !1357
  %.sroa.1111.0..sroa.01.0..sroa_idx.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i, i64 112
  store <8 x i16> <i16 36, i16 40, i16 44, i16 48, i16 52, i16 56, i16 60, i16 64>, ptr %.sroa.1111.0..sroa.01.0..sroa_idx.i.3, align 2, !alias.scope !1357
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i, i64 160
  store <8 x i16> <i16 4, i16 8, i16 12, i16 16, i16 20, i16 24, i16 28, i16 32>, ptr %i.dh, align 2, !alias.scope !1357
  %.sroa.1111.0..sroa.01.0..sroa_idx.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i, i64 144
  store <8 x i16> <i16 36, i16 40, i16 44, i16 48, i16 52, i16 56, i16 60, i16 64>, ptr %.sroa.1111.0..sroa.01.0..sroa_idx.i.4, align 2, !alias.scope !1357
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i, i64 192
  store <8 x i16> <i16 4, i16 8, i16 12, i16 16, i16 20, i16 24, i16 28, i16 32>, ptr %i.di, align 2, !alias.scope !1357
  %.sroa.1111.0..sroa.01.0..sroa_idx.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i, i64 176
  store <8 x i16> <i16 36, i16 40, i16 44, i16 48, i16 52, i16 56, i16 60, i16 64>, ptr %.sroa.1111.0..sroa.01.0..sroa_idx.i.5, align 2, !alias.scope !1357
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i, i64 224
  store <8 x i16> <i16 4, i16 8, i16 12, i16 16, i16 20, i16 24, i16 28, i16 32>, ptr %i.dj, align 2, !alias.scope !1357
  %.sroa.1111.0..sroa.01.0..sroa_idx.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i, i64 208
  store <8 x i16> <i16 36, i16 40, i16 44, i16 48, i16 52, i16 56, i16 60, i16 64>, ptr %.sroa.1111.0..sroa.01.0..sroa_idx.i.6, align 2, !alias.scope !1357
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i, i64 256 ; 2 uses
  store <8 x i16> <i16 4, i16 8, i16 12, i16 16, i16 20, i16 24, i16 28, i16 32>, ptr %i.dk, align 2, !alias.scope !1357
  %.sroa.1111.0..sroa.01.0..sroa_idx.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i, i64 240
  store <8 x i16> <i16 36, i16 40, i16 44, i16 48, i16 52, i16 56, i16 60, i16 64>, ptr %.sroa.1111.0..sroa.01.0..sroa_idx.i.7, align 2, !alias.scope !1357
  %i.dm = icmp eq ptr %i.dl, %i.cx
  br i1 %i.dm, label %.loopexit495, label %.lr.ph.i

.loopexit495:                                     ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.al
  %.idx.i126 = shl i64 %.sroa.6263.0312338382418472, 5 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0262.0320335385415475, i64 %.idx.i126
  %i.do = icmp eq i64 %.sroa.6263.0312338382418472, 0
  br i1 %i.do, label %.loopexit494, label %.lr.ph.i127.preheader

.lr.ph.i127.preheader:                            ; preds = %.loopexit495
  %i.dp = add i64 %.idx.i126, -32                 ; 2 uses
  %i.dq = lshr exact i64 %i.dp, 5
  %i.dr = add nuw nsw i64 %i.dq, 1
  %xtraiter496 = and i64 %i.dr, 7                 ; 2 uses
  %lcmp.mod497.not = icmp eq i64 %xtraiter496, 0
  br i1 %lcmp.mod497.not, label %.lr.ph.i127.prol.loopexit, label %.lr.ph.i127.prol

.lr.ph.i127.prol:                                 ; preds = %.lr.ph.i127.preheader, %.lr.ph.i127.prol
  %.sroa.0.019.i128.prol = phi ptr [ %i.ds, %.lr.ph.i127.prol ], [ %.sroa.0262.0320335385415475, %.lr.ph.i127.preheader ] ; 3 uses
  %prol.iter498 = phi i64 [ %prol.iter498.next, %.lr.ph.i127.prol ], [ 0, %.lr.ph.i127.preheader ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i128.prol, i64 32 ; 2 uses
  store <8 x i16> <i16 4, i16 8, i16 12, i16 16, i16 20, i16 24, i16 28, i16 32>, ptr %.sroa.0.019.i128.prol, align 2, !alias.scope !1358
  %.sroa.1111.0..sroa.01.0..sroa_idx.i136.prol = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i128.prol, i64 16
  store <8 x i16> <i16 36, i16 40, i16 44, i16 48, i16 52, i16 56, i16 60, i16 64>, ptr %.sroa.1111.0..sroa.01.0..sroa_idx.i136.prol, align 2, !alias.scope !1358
  %prol.iter498.next = add i64 %prol.iter498, 1   ; 2 uses
  %prol.iter498.cmp.not = icmp eq i64 %prol.iter498.next, %xtraiter496
  br i1 %prol.iter498.cmp.not, label %.lr.ph.i127.prol.loopexit, label %.lr.ph.i127.prol, !llvm.loop !1338

.lr.ph.i127.prol.loopexit:                        ; preds = %.lr.ph.i127.prol, %.lr.ph.i127.preheader
  %.sroa.0.019.i128.unr = phi ptr [ %.sroa.0262.0320335385415475, %.lr.ph.i127.preheader ], [ %i.ds, %.lr.ph.i127.prol ]
  %i.dt = icmp ult i64 %i.dp, 224
  br i1 %i.dt, label %.loopexit494, label %.lr.ph.i127

.lr.ph.i127:                                      ; preds = %.lr.ph.i127.prol.loopexit, %.lr.ph.i127
  %.sroa.0.019.i128 = phi ptr [ %i.eb, %.lr.ph.i127 ], [ %.sroa.0.019.i128.unr, %.lr.ph.i127.prol.loopexit ] ; 17 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i128, i64 32
  store <8 x i16> <i16 4, i16 8, i16 12, i16 16, i16 20, i16 24, i16 28, i16 32>, ptr %.sroa.0.019.i128, align 2, !alias.scope !1358
  %.sroa.1111.0..sroa.01.0..sroa_idx.i136 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i128, i64 16
  store <8 x i16> <i16 36, i16 40, i16 44, i16 48, i16 52, i16 56, i16 60, i16 64>, ptr %.sroa.1111.0..sroa.01.0..sroa_idx.i136, align 2, !alias.scope !1358
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i128, i64 64
  store <8 x i16> <i16 4, i16 8, i16 12, i16 16, i16 20, i16 24, i16 28, i16 32>, ptr %i.du, align 2, !alias.scope !1358
  %.sroa.1111.0..sroa.01.0..sroa_idx.i136.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i128, i64 48
  store <8 x i16> <i16 36, i16 40, i16 44, i16 48, i16 52, i16 56, i16 60, i16 64>, ptr %.sroa.1111.0..sroa.01.0..sroa_idx.i136.1, align 2, !alias.scope !1358
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i128, i64 96
  store <8 x i16> <i16 4, i16 8, i16 12, i16 16, i16 20, i16 24, i16 28, i16 32>, ptr %i.dv, align 2, !alias.scope !1358
  %.sroa.1111.0..sroa.01.0..sroa_idx.i136.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i128, i64 80
  store <8 x i16> <i16 36, i16 40, i16 44, i16 48, i16 52, i16 56, i16 60, i16 64>, ptr %.sroa.1111.0..sroa.01.0..sroa_idx.i136.2, align 2, !alias.scope !1358
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i128, i64 128
  store <8 x i16> <i16 4, i16 8, i16 12, i16 16, i16 20, i16 24, i16 28, i16 32>, ptr %i.dw, align 2, !alias.scope !1358
  %.sroa.1111.0..sroa.01.0..sroa_idx.i136.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i128, i64 112
  store <8 x i16> <i16 36, i16 40, i16 44, i16 48, i16 52, i16 56, i16 60, i16 64>, ptr %.sroa.1111.0..sroa.01.0..sroa_idx.i136.3, align 2, !alias.scope !1358
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i128, i64 160
  store <8 x i16> <i16 4, i16 8, i16 12, i16 16, i16 20, i16 24, i16 28, i16 32>, ptr %i.dx, align 2, !alias.scope !1358
  %.sroa.1111.0..sroa.01.0..sroa_idx.i136.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i128, i64 144
  store <8 x i16> <i16 36, i16 40, i16 44, i16 48, i16 52, i16 56, i16 60, i16 64>, ptr %.sroa.1111.0..sroa.01.0..sroa_idx.i136.4, align 2, !alias.scope !1358
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i128, i64 192
  store <8 x i16> <i16 4, i16 8, i16 12, i16 16, i16 20, i16 24, i16 28, i16 32>, ptr %i.dy, align 2, !alias.scope !1358
  %.sroa.1111.0..sroa.01.0..sroa_idx.i136.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i128, i64 176
  store <8 x i16> <i16 36, i16 40, i16 44, i16 48, i16 52, i16 56, i16 60, i16 64>, ptr %.sroa.1111.0..sroa.01.0..sroa_idx.i136.5, align 2, !alias.scope !1358
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i128, i64 224
  store <8 x i16> <i16 4, i16 8, i16 12, i16 16, i16 20, i16 24, i16 28, i16 32>, ptr %i.dz, align 2, !alias.scope !1358
  %.sroa.1111.0..sroa.01.0..sroa_idx.i136.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i128, i64 208
  store <8 x i16> <i16 36, i16 40, i16 44, i16 48, i16 52, i16 56, i16 60, i16 64>, ptr %.sroa.1111.0..sroa.01.0..sroa_idx.i136.6, align 2, !alias.scope !1358
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i128, i64 256 ; 2 uses
  store <8 x i16> <i16 4, i16 8, i16 12, i16 16, i16 20, i16 24, i16 28, i16 32>, ptr %i.ea, align 2, !alias.scope !1358
  %.sroa.1111.0..sroa.01.0..sroa_idx.i136.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i128, i64 240
  store <8 x i16> <i16 36, i16 40, i16 44, i16 48, i16 52, i16 56, i16 60, i16 64>, ptr %.sroa.1111.0..sroa.01.0..sroa_idx.i136.7, align 2, !alias.scope !1358
  %i.ec = icmp eq ptr %i.eb, %i.dn
  br i1 %i.ec, label %.loopexit494, label %.lr.ph.i127

.loopexit494:                                     ; preds = %.lr.ph.i127.prol.loopexit, %.lr.ph.i127, %.loopexit495
  %.idx.i145 = shl i64 %.sroa.6266.0347373427463, 5 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0265.0354370430460, i64 %.idx.i145
  %i.ee = icmp eq i64 %.sroa.6266.0347373427463, 0
  br i1 %i.ee, label %.loopexit493, label %.lr.ph.i146.preheader

.lr.ph.i146.preheader:                            ; preds = %.loopexit494
  %i.ef = add i64 %.idx.i145, -32                 ; 2 uses
  %i.eg = lshr exact i64 %i.ef, 5
  %i.eh = add nuw nsw i64 %i.eg, 1
  %xtraiter499 = and i64 %i.eh, 7                 ; 2 uses
  %lcmp.mod500.not = icmp eq i64 %xtraiter499, 0
  br i1 %lcmp.mod500.not, label %.lr.ph.i146.prol.loopexit, label %.lr.ph.i146.prol

.lr.ph.i146.prol:                                 ; preds = %.lr.ph.i146.preheader, %.lr.ph.i146.prol
  %.sroa.0.019.i147.prol = phi ptr [ %i.ei, %.lr.ph.i146.prol ], [ %.sroa.0265.0354370430460, %.lr.ph.i146.preheader ] ; 3 uses
  %prol.iter501 = phi i64 [ %prol.iter501.next, %.lr.ph.i146.prol ], [ 0, %.lr.ph.i146.preheader ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i147.prol, i64 32 ; 2 uses
  store <8 x i16> <i16 4, i16 8, i16 12, i16 16, i16 20, i16 24, i16 28, i16 32>, ptr %.sroa.0.019.i147.prol, align 2, !alias.scope !1359
  %.sroa.1111.0..sroa.01.0..sroa_idx.i155.prol = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i147.prol, i64 16
  store <8 x i16> <i16 36, i16 40, i16 44, i16 48, i16 52, i16 56, i16 60, i16 64>, ptr %.sroa.1111.0..sroa.01.0..sroa_idx.i155.prol, align 2, !alias.scope !1359
  %prol.iter501.next = add i64 %prol.iter501, 1   ; 2 uses
  %prol.iter501.cmp.not = icmp eq i64 %prol.iter501.next, %xtraiter499
  br i1 %prol.iter501.cmp.not, label %.lr.ph.i146.prol.loopexit, label %.lr.ph.i146.prol, !llvm.loop !1341

.lr.ph.i146.prol.loopexit:                        ; preds = %.lr.ph.i146.prol, %.lr.ph.i146.preheader
  %.sroa.0.019.i147.unr = phi ptr [ %.sroa.0265.0354370430460, %.lr.ph.i146.preheader ], [ %i.ei, %.lr.ph.i146.prol ]
  %i.ej = icmp ult i64 %i.ef, 224
  br i1 %i.ej, label %.loopexit493, label %.lr.ph.i146

.lr.ph.i146:                                      ; preds = %.lr.ph.i146.prol.loopexit, %.lr.ph.i146
  %.sroa.0.019.i147 = phi ptr [ %i.er, %.lr.ph.i146 ], [ %.sroa.0.019.i147.unr, %.lr.ph.i146.prol.loopexit ] ; 17 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i147, i64 32
  store <8 x i16> <i16 4, i16 8, i16 12, i16 16, i16 20, i16 24, i16 28, i16 32>, ptr %.sroa.0.019.i147, align 2, !alias.scope !1359
  %.sroa.1111.0..sroa.01.0..sroa_idx.i155 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i147, i64 16
  store <8 x i16> <i16 36, i16 40, i16 44, i16 48, i16 52, i16 56, i16 60, i16 64>, ptr %.sroa.1111.0..sroa.01.0..sroa_idx.i155, align 2, !alias.scope !1359
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i147, i64 64
  store <8 x i16> <i16 4, i16 8, i16 12, i16 16, i16 20, i16 24, i16 28, i16 32>, ptr %i.ek, align 2, !alias.scope !1359
  %.sroa.1111.0..sroa.01.0..sroa_idx.i155.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i147, i64 48
  store <8 x i16> <i16 36, i16 40, i16 44, i16 48, i16 52, i16 56, i16 60, i16 64>, ptr %.sroa.1111.0..sroa.01.0..sroa_idx.i155.1, align 2, !alias.scope !1359
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i147, i64 96
  store <8 x i16> <i16 4, i16 8, i16 12, i16 16, i16 20, i16 24, i16 28, i16 32>, ptr %i.el, align 2, !alias.scope !1359
  %.sroa.1111.0..sroa.01.0..sroa_idx.i155.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i147, i64 80
  store <8 x i16> <i16 36, i16 40, i16 44, i16 48, i16 52, i16 56, i16 60, i16 64>, ptr %.sroa.1111.0..sroa.01.0..sroa_idx.i155.2, align 2, !alias.scope !1359
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i147, i64 128
  store <8 x i16> <i16 4, i16 8, i16 12, i16 16, i16 20, i16 24, i16 28, i16 32>, ptr %i.em, align 2, !alias.scope !1359
  %.sroa.1111.0..sroa.01.0..sroa_idx.i155.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i147, i64 112
  store <8 x i16> <i16 36, i16 40, i16 44, i16 48, i16 52, i16 56, i16 60, i16 64>, ptr %.sroa.1111.0..sroa.01.0..sroa_idx.i155.3, align 2, !alias.scope !1359
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i147, i64 160
  store <8 x i16> <i16 4, i16 8, i16 12, i16 16, i16 20, i16 24, i16 28, i16 32>, ptr %i.en, align 2, !alias.scope !1359
  %.sroa.1111.0..sroa.01.0..sroa_idx.i155.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i147, i64 144
  store <8 x i16> <i16 36, i16 40, i16 44, i16 48, i16 52, i16 56, i16 60, i16 64>, ptr %.sroa.1111.0..sroa.01.0..sroa_idx.i155.4, align 2, !alias.scope !1359
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i147, i64 192
  store <8 x i16> <i16 4, i16 8, i16 12, i16 16, i16 20, i16 24, i16 28, i16 32>, ptr %i.eo, align 2, !alias.scope !1359
  %.sroa.1111.0..sroa.01.0..sroa_idx.i155.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i147, i64 176
  store <8 x i16> <i16 36, i16 40, i16 44, i16 48, i16 52, i16 56, i16 60, i16 64>, ptr %.sroa.1111.0..sroa.01.0..sroa_idx.i155.5, align 2, !alias.scope !1359
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i147, i64 224
  store <8 x i16> <i16 4, i16 8, i16 12, i16 16, i16 20, i16 24, i16 28, i16 32>, ptr %i.ep, align 2, !alias.scope !1359
  %.sroa.1111.0..sroa.01.0..sroa_idx.i155.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i147, i64 208
  store <8 x i16> <i16 36, i16 40, i16 44, i16 48, i16 52, i16 56, i16 60, i16 64>, ptr %.sroa.1111.0..sroa.01.0..sroa_idx.i155.6, align 2, !alias.scope !1359
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i147, i64 256 ; 2 uses
  store <8 x i16> <i16 4, i16 8, i16 12, i16 16, i16 20, i16 24, i16 28, i16 32>, ptr %i.eq, align 2, !alias.scope !1359
  %.sroa.1111.0..sroa.01.0..sroa_idx.i155.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i147, i64 240
  store <8 x i16> <i16 36, i16 40, i16 44, i16 48, i16 52, i16 56, i16 60, i16 64>, ptr %.sroa.1111.0..sroa.01.0..sroa_idx.i155.7, align 2, !alias.scope !1359
  %i.es = icmp eq ptr %i.er, %i.ed
  br i1 %i.es, label %.loopexit493, label %.lr.ph.i146
end_hunk_1
