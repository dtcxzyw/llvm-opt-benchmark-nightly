Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RustDemangle?download=true
inline.NumInlined: 400
inline.NumDeleted: 90
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12_GLOBAL__N_19Demangler17demangleConstCharEv:bb.a
  %.phi.trans.insert.i.i33 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre.i.i34 = load ptr, ptr %.phi.trans.insert.i.i33, align 8, !tbaa !31
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i.i35

bb.r:                                             ; preds = %bb.q
  %i.ca = add i64 %i.bv, 994
  %i.cb = shl i64 %i.by, 1
  %spec.select.i.i.i36 = tail call i64 @llvm.umax.i64(i64 %i.cb, i64 %i.ca) ; 2 uses
  store i64 %spec.select.i.i.i36, ptr %i.bx, align 8, !tbaa !30
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !31
  %i.ce = tail call ptr @realloc(ptr noundef %i.cd, i64 noundef %spec.select.i.i.i36) #11 ; 3 uses
  store ptr %i.ce, ptr %i.cc, align 8, !tbaa !31
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.s, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i37

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i37: ; preds = %bb.r
  %.pre5.i.i38 = load i64, ptr %i.bu, align 8, !tbaa !29
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i.i35

bb.s:                                             ; preds = %bb.r
  tail call void @abort() #12
  unreachable

_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i.i35: ; preds = %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i37, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i32
  %i.cg = phi i64 [ %i.bv, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i32 ], [ %.pre5.i.i38, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i37 ]
  %i.ch = phi ptr [ %.pre.i.i34, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i32 ], [ %i.ce, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i37 ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cg
  store i16 28252, ptr %i.ci, align 1
  %i.cj = load i64, ptr %i.bu, align 8, !tbaa !29
  %i.ck = add i64 %i.cj, 2
  store i64 %i.ck, ptr %i.bu, align 8, !tbaa !29
  br label %_ZN12_GLOBAL__N_19Demangler5printESt17basic_string_viewIcSt11char_traitsIcEE.exit15

bb.t:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler5printESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.cl = load i8, ptr %i.b, align 1, !tbaa !21, !range !27, !noundef !28
  %i.cm = trunc nuw i8 %i.cl to i1
  %i.cn = load i8, ptr %i.g, align 8, !range !27
  %i.co = trunc nuw i8 %i.cn to i1
  %.not6.i40 = xor i1 %i.co, true
  %or.cond.not.i41 = select i1 %i.cm, i1 true, i1 %.not6.i40
  br i1 %or.cond.not.i41, label %_ZN12_GLOBAL__N_19Demangler5printESt17basic_string_viewIcSt11char_traitsIcEE.exit15, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !29 ; 3 uses
  %i.cr = add i64 %i.cq, 2
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !30 ; 2 uses
  %i.cu = icmp ugt i64 %i.cr, %i.ct
  br i1 %i.cu, label %bb.v, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i44

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i44: ; preds = %bb.u
  %.phi.trans.insert.i.i45 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre.i.i46 = load ptr, ptr %.phi.trans.insert.i.i45, align 8, !tbaa !31
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i.i47

bb.v:                                             ; preds = %bb.u
  %i.cv = add i64 %i.cq, 994
  %i.cw = shl i64 %i.ct, 1
  %spec.select.i.i.i48 = tail call i64 @llvm.umax.i64(i64 %i.cw, i64 %i.cv) ; 2 uses
  store i64 %spec.select.i.i.i48, ptr %i.cs, align 8, !tbaa !30
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !31
  %i.cz = tail call ptr @realloc(ptr noundef %i.cy, i64 noundef %spec.select.i.i.i48) #11 ; 3 uses
  store ptr %i.cz, ptr %i.cx, align 8, !tbaa !31
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.w, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i49

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i49: ; preds = %bb.v
  %.pre5.i.i50 = load i64, ptr %i.cp, align 8, !tbaa !29
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i.i47

bb.w:                                             ; preds = %bb.v
  tail call void @abort() #12
  unreachable

_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i.i47: ; preds = %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i49, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i44
  %i.db = phi i64 [ %i.cq, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i44 ], [ %.pre5.i.i50, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i49 ]
  %i.dc = phi ptr [ %.pre.i.i46, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i44 ], [ %i.cz, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i49 ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.db
  store i16 23644, ptr %i.dd, align 1
  %i.de = load i64, ptr %i.cp, align 8, !tbaa !29
  %i.df = add i64 %i.de, 2
  store i64 %i.df, ptr %i.cp, align 8, !tbaa !29
  br label %_ZN12_GLOBAL__N_19Demangler5printESt17basic_string_viewIcSt11char_traitsIcEE.exit15

bb.x:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler5printESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.dg = load i8, ptr %i.b, align 1, !tbaa !21, !range !27, !noundef !28
  %i.dh = trunc nuw i8 %i.dg to i1
  %i.di = load i8, ptr %i.g, align 8, !range !27
  %i.dj = trunc nuw i8 %i.di to i1
  %.not6.i52 = xor i1 %i.dj, true
  %or.cond.not.i53 = select i1 %i.dh, i1 true, i1 %.not6.i52
  br i1 %or.cond.not.i53, label %_ZN12_GLOBAL__N_19Demangler5printESt17basic_string_viewIcSt11char_traitsIcEE.exit15, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !29 ; 3 uses
  %i.dm = add i64 %i.dl, 1
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !30 ; 2 uses
  %i.dp = icmp ugt i64 %i.dm, %i.do
  br i1 %i.dp, label %bb.z, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i56

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i56: ; preds = %bb.y
  %.phi.trans.insert.i.i57 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre.i.i58 = load ptr, ptr %.phi.trans.insert.i.i57, align 8, !tbaa !31
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i.i59

bb.z:                                             ; preds = %bb.y
  %i.dq = add i64 %i.dl, 993
  %i.dr = shl i64 %i.do, 1
  %spec.select.i.i.i60 = tail call i64 @llvm.umax.i64(i64 %i.dr, i64 %i.dq) ; 2 uses
  store i64 %spec.select.i.i.i60, ptr %i.dn, align 8, !tbaa !30
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !31
  %i.du = tail call ptr @realloc(ptr noundef %i.dt, i64 noundef %spec.select.i.i.i60) #11 ; 3 uses
  store ptr %i.du, ptr %i.ds, align 8, !tbaa !31
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %bb.aa, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i61

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i61: ; preds = %bb.z
  %.pre5.i.i62 = load i64, ptr %i.dk, align 8, !tbaa !29
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i.i59

bb.aa:                                            ; preds = %bb.z
  tail call void @abort() #12
  unreachable

_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i.i59: ; preds = %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i61, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i56
  %i.dw = phi i64 [ %i.dl, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i56 ], [ %.pre5.i.i62, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i61 ]
  %i.dx = phi ptr [ %.pre.i.i58, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i56 ], [ %i.du, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i61 ]
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dw
  store i8 34, ptr %i.dy, align 1
  %i.dz = load i64, ptr %i.dk, align 8, !tbaa !29
  %i.ea = add i64 %i.dz, 1
  store i64 %i.ea, ptr %i.dk, align 8, !tbaa !29
  br label %_ZN12_GLOBAL__N_19Demangler5printESt17basic_string_viewIcSt11char_traitsIcEE.exit15

bb.ab:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler5printESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.eb = load i8, ptr %i.b, align 1, !tbaa !21, !range !27, !noundef !28
  %i.ec = trunc nuw i8 %i.eb to i1
  %i.ed = load i8, ptr %i.g, align 8, !range !27
  %i.ee = trunc nuw i8 %i.ed to i1
  %.not6.i64 = xor i1 %i.ee, true
  %or.cond.not.i65 = select i1 %i.ec, i1 true, i1 %.not6.i64
  br i1 %or.cond.not.i65, label %_ZN12_GLOBAL__N_19Demangler5printESt17basic_string_viewIcSt11char_traitsIcEE.exit15, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !29 ; 3 uses
  %i.eh = add i64 %i.eg, 2
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !30 ; 2 uses
  %i.ek = icmp ugt i64 %i.eh, %i.ej
  br i1 %i.ek, label %bb.ad, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i68

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i68: ; preds = %bb.ac
  %.phi.trans.insert.i.i69 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre.i.i70 = load ptr, ptr %.phi.trans.insert.i.i69, align 8, !tbaa !31
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i.i71

bb.ad:                                            ; preds = %bb.ac
  %i.el = add i64 %i.eg, 994
  %i.em = shl i64 %i.ej, 1
  %spec.select.i.i.i72 = tail call i64 @llvm.umax.i64(i64 %i.em, i64 %i.el) ; 2 uses
  store i64 %spec.select.i.i.i72, ptr %i.ei, align 8, !tbaa !30
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !31
  %i.ep = tail call ptr @realloc(ptr noundef %i.eo, i64 noundef %spec.select.i.i.i72) #11 ; 3 uses
  store ptr %i.ep, ptr %i.en, align 8, !tbaa !31
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %bb.ae, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i73

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i73: ; preds = %bb.ad
  %.pre5.i.i74 = load i64, ptr %i.ef, align 8, !tbaa !29
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i.i71

bb.ae:                                            ; preds = %bb.ad
  tail call void @abort() #12
  unreachable

_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i.i71: ; preds = %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i73, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i68
  %i.er = phi i64 [ %i.eg, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i68 ], [ %.pre5.i.i74, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i73 ]
  %i.es = phi ptr [ %.pre.i.i70, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i68 ], [ %i.ep, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i.i73 ]
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.er
  store i16 10076, ptr %i.et, align 1
  %i.eu = load i64, ptr %i.ef, align 8, !tbaa !29
  %i.ev = add i64 %i.eu, 2
  store i64 %i.ev, ptr %i.ef, align 8, !tbaa !29
  br label %_ZN12_GLOBAL__N_19Demangler5printESt17basic_string_viewIcSt11char_traitsIcEE.exit15

bb.af:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler5printESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.ew = add i64 %i.a, -32
  %i.ex = icmp ult i64 %i.ew, 95
  br i1 %i.ex, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ey = trunc nuw nsw i64 %i.a to i8
  br label %_ZN12_GLOBAL__N_19Demangler5printESt17basic_string_viewIcSt11char_traitsIcEE.exit15.sink.split

bb.ah:                                            ; preds = %bb.af
  tail call fastcc void @_ZN12_GLOBAL__N_19Demangler5printESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 3, ptr nonnull @.str.56)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !24
  tail call fastcc void @_ZN12_GLOBAL__N_19Demangler5printESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 %i.e, ptr %.sroa.2.0.copyload)
  br label %_ZN12_GLOBAL__N_19Demangler5printESt17basic_string_viewIcSt11char_traitsIcEE.exit15.sink.split

_ZN12_GLOBAL__N_19Demangler5printESt17basic_string_viewIcSt11char_traitsIcEE.exit15.sink.split: ; preds = %bb.ah, %bb.ag
  %.sink = phi i8 [ %i.ey, %bb.ag ], [ 125, %bb.ah ]
  tail call fastcc void @_ZN12_GLOBAL__N_19Demangler5printEc(ptr noundef nonnull align 8 dereferenceable(104) %0, i8 noundef signext %.sink)
  br label %_ZN12_GLOBAL__N_19Demangler5printESt17basic_string_viewIcSt11char_traitsIcEE.exit15

_ZN12_GLOBAL__N_19Demangler5printESt17basic_string_viewIcSt11char_traitsIcEE.exit15: ; preds = %_ZN12_GLOBAL__N_19Demangler5printESt17basic_string_viewIcSt11char_traitsIcEE.exit15.sink.split, %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i.i71, %bb.ab, %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i.i59, %bb.x, %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i.i47, %bb.t, %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i.i35, %bb.p, %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i.i23, %bb.l, %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i.i11, %bb.h
  %i.ez = load i8, ptr %i.b, align 1, !tbaa !21, !range !27, !noundef !28
  %i.fa = trunc nuw i8 %i.ez to i1
  %.not.i = xor i1 %i.fa, true
  %i.fb = load i8, ptr %i.g, align 8, !range !27
  %i.fc = trunc nuw i8 %i.fb to i1
  %or.cond.i = select i1 %.not.i, i1 %i.fc, i1 false
  br i1 %or.cond.i, label %bb.ai, label %_ZN12_GLOBAL__N_19Demangler5printEc.exit

bb.ai:                                            ; preds = %_ZN12_GLOBAL__N_19Demangler5printESt17basic_string_viewIcSt11char_traitsIcEE.exit15
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !29 ; 3 uses
  %i.ff = add i64 %i.fe, 1                        ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !30 ; 2 uses
  %i.fi = icmp ugt i64 %i.ff, %i.fh
  br i1 %i.fi, label %bb.aj, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i76

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i76: ; preds = %bb.ai
  %.phi.trans.insert.i.i77 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre.i.i78 = load ptr, ptr %.phi.trans.insert.i.i77, align 8, !tbaa !31
  br label %_ZN4llvm16itanium_demangle12OutputBufferpLEc.exit.i

bb.aj:                                            ; preds = %bb.ai
  %i.fj = add i64 %i.fe, 993
  %i.fk = shl i64 %i.fh, 1
  %spec.select.i.i.i79 = tail call i64 @llvm.umax.i64(i64 %i.fk, i64 %i.fj) ; 2 uses
  store i64 %spec.select.i.i.i79, ptr %i.fg, align 8, !tbaa !30
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !31
  %i.fn = tail call ptr @realloc(ptr noundef %i.fm, i64 noundef %spec.select.i.i.i79) #11 ; 3 uses
  store ptr %i.fn, ptr %i.fl, align 8, !tbaa !31
  %i.fo = icmp eq ptr %i.fn, null
  br i1 %i.fo, label %bb.ak, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge1.i.i

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge1.i.i: ; preds = %bb.aj
  %.pre2.i.i = load i64, ptr %i.fd, align 8, !tbaa !29 ; 2 uses
  %.pre3.i.i = add i64 %.pre2.i.i, 1
  br label %_ZN4llvm16itanium_demangle12OutputBufferpLEc.exit.i

bb.ak:                                            ; preds = %bb.aj
  tail call void @abort() #12
  unreachable

_ZN4llvm16itanium_demangle12OutputBufferpLEc.exit.i: ; preds = %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge1.i.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i76
  %.pre-phi.i.i = phi i64 [ %.pre3.i.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge1.i.i ], [ %i.ff, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i76 ]
  %i.fp = phi i64 [ %.pre2.i.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge1.i.i ], [ %i.fe, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i76 ]
  %i.fq = phi ptr [ %i.fn, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge1.i.i ], [ %.pre.i.i78, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i76 ]
  store i64 %.pre-phi.i.i, ptr %i.fd, align 8, !tbaa !29
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fp
  store i8 39, ptr %i.fr, align 1, !tbaa !32
  br label %_ZN12_GLOBAL__N_19Demangler5printEc.exit

_ZN12_GLOBAL__N_19Demangler5printEc.exit:         ; preds = %_ZN4llvm16itanium_demangle12OutputBufferpLEc.exit.i, %_ZN12_GLOBAL__N_19Demangler5printESt17basic_string_viewIcSt11char_traitsIcEE.exit15, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i64 @_ZN12_GLOBAL__N_19Demangler14parseHexNumberERSt17basic_string_viewIcSt11char_traitsIcEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(104) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20   ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 49 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !21, !range !27, !noundef !28 ; 2 uses
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8              ; 7 uses
  %.not.i = icmp uge i64 %i.b, %i.g               ; 2 uses
  %or.cond39.not = select i1 %i.e, i1 true, i1 %.not.i
  br i1 %or.cond39.not, label %_ZNK12_GLOBAL__N_19Demangler4lookEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.b
  %i.k = load i8, ptr %i.j, align 1, !tbaa !32
  br label %_ZNK12_GLOBAL__N_19Demangler4lookEv.exit

_ZNK12_GLOBAL__N_19Demangler4lookEv.exit:         ; preds = %bb.a, %bb.b
  %.0.i = phi i8 [ %i.k, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  %i.l = add i8 %.0.i, -48
  %or.cond.i = icmp ult i8 %i.l, 10
  %i.m = add i8 %.0.i, -97
  %i.n = icmp ult i8 %i.m, 6
  %i.o = or i1 %or.cond.i, %i.n
  br i1 %i.o, label %bb.c, label %.critedge.thread.sink.split

bb.c:                                             ; preds = %_ZNK12_GLOBAL__N_19Demangler4lookEv.exit
  %i.p = trunc nuw i8 %i.d to i1                  ; 2 uses
  %or.cond42.not = select i1 %i.p, i1 true, i1 %.not.i
  br i1 %or.cond42.not, label %_ZN12_GLOBAL__N_19Demangler9consumeIfEc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !34   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.b
  %i.t = load i8, ptr %i.s, align 1, !tbaa !32
  %.not2.i = icmp eq i8 %i.t, 48
  br i1 %.not2.i, label %bb.e, label %.lr.ph

_ZN12_GLOBAL__N_19Demangler9consumeIfEc.exit:     ; preds = %bb.c
  br i1 %i.p, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %_ZN12_GLOBAL__N_19Demangler9consumeIfEc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not.i2576 = icmp ult i64 %i.b, %i.g
  br i1 %.not.i2576, label %.lr.ph78.preheader, label %.critedge.thread.sink.split

.lr.ph78.preheader:                               ; preds = %.lr.ph
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !34
  br label %.lr.ph78

bb.e:                                             ; preds = %bb.d
  %i.w = add nuw i64 %i.b, 1                      ; 3 uses
  store i64 %i.w, ptr %i.a, align 8, !tbaa !20
  %.not.i21 = icmp ult i64 %i.w, %i.g
  br i1 %.not.i21, label %bb.f, label %.critedge.thread.sink.split

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !32
  %.not2.i23 = icmp eq i8 %i.y, 95
  br i1 %.not2.i23, label %.critedge.thread67, label %.critedge.thread.sink.split

.critedge.thread67:                               ; preds = %bb.f
  %i.z = add nuw i64 %i.b, 2
  br label %.critedge

.lr.ph78:                                         ; preds = %.lr.ph78.preheader, %bb.j
  %.0174477 = phi i64 [ %.1, %bb.j ], [ 0, %.lr.ph78.preheader ] ; 2 uses
  %i.aa = phi i64 [ %i.ad, %bb.j ], [ %i.b, %.lr.ph78.preheader ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !32
  %.not2.i27 = icmp eq i8 %i.ac, 95
  %i.ad = add nuw i64 %i.aa, 1                    ; 4 uses
  br i1 %.not2.i27, label %.critedge, label %_ZN12_GLOBAL__N_19Demangler7consumeEv.exit

_ZN12_GLOBAL__N_19Demangler7consumeEv.exit:       ; preds = %.lr.ph78
  store i64 %i.ad, ptr %i.a, align 8, !tbaa !20
  %i.ae = load ptr, ptr %i.u, align 8, !tbaa !34
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aa
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !32  ; 4 uses
  %i.ah = shl i64 %.0174477, 4                    ; 2 uses
  %i.ai = add i8 %i.ag, -48
  %i.aj = icmp ult i8 %i.ai, 10
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler7consumeEv.exit
  %i.ak = zext nneg i8 %i.ag to i64
  %i.al = add nsw i64 %i.ak, -48
  %i.am = or disjoint i64 %i.al, %i.ah
  br label %bb.j

bb.h:                                             ; preds = %_ZN12_GLOBAL__N_19Demangler7consumeEv.exit
  %i.an = add i8 %i.ag, -97
  %or.cond = icmp ult i8 %i.an, 6
  br i1 %or.cond, label %bb.i, label %.critedge.thread.sink.split

bb.i:                                             ; preds = %bb.h
  %i.ao = zext nneg i8 %i.ag to i64
  %i.ap = add i64 %i.ah, -87
  %i.aq = add i64 %i.ap, %i.ao
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %.1 = phi i64 [ %i.am, %bb.g ], [ %i.aq, %bb.i ]
  %.not.i25 = icmp ult i64 %i.ad, %i.g
  br i1 %.not.i25, label %.lr.ph78, label %.critedge.thread.sink.split, !llvm.loop !70

.critedge.thread.sink.split:                      ; preds = %bb.h, %bb.j, %.lr.ph, %bb.e, %bb.f, %_ZNK12_GLOBAL__N_19Demangler4lookEv.exit
  store i8 1, ptr %i.c, align 1, !tbaa !21
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.critedge.thread.sink.split, %_ZN12_GLOBAL__N_19Demangler9consumeIfEc.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %bb.l

.critedge:                                        ; preds = %.lr.ph78, %.critedge.thread67
  %.269 = phi i64 [ 0, %.critedge.thread67 ], [ %.0174477, %.lr.ph78 ]
  %i.ar = phi i64 [ %i.z, %.critedge.thread67 ], [ %i.ad, %.lr.ph78 ] ; 2 uses
  store i64 %i.ar, ptr %i.a, align 8, !tbaa !20
  %i.as = icmp ugt i64 %i.b, %i.g
  br i1 %i.as, label %bb.k, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.k:                                             ; preds = %.critedge
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i64 noundef %i.b, i64 noundef %i.g) #12
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %.critedge
  %i.at = xor i64 %i.b, -1
  %i.au = add i64 %i.ar, %i.at
  %i.av = sub nuw i64 %i.g, %i.b
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.av, i64 %i.au)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !34
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.b
  store i64 %.sroa.speculated.i, ptr %1, align 8, !tbaa !23
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.ay, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !24
  br label %bb.l
end_hunk_0
