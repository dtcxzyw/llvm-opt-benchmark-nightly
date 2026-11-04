Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/tiffoutput?download=true
inline.NumInlined: 4471
inline.NumDeleted: 1472
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN11OpenImageIO4v3_110TIFFOutput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_9ImageSpecENS0_11ImageOutput8OpenModeE:bb.a
  %i.pd = getelementptr inbounds nuw i8, ptr %58, i64 8
  %i.pe = getelementptr inbounds nuw i8, ptr %58, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34, !noalias !481
  call void @llvm.experimental.noalias.scope.decl(metadata !482)
  store i32 %i.oy, ptr %8, align 16, !tbaa !65, !alias.scope !482, !noalias !481
  %i.pf = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %i.pb, ptr %i.pf, align 16, !tbaa !65, !alias.scope !482, !noalias !481
  %i.pg = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ph = load i32, ptr %i.pc, align 4, !tbaa !56, !noalias !483
  store i32 %i.ph, ptr %i.pg, align 16, !tbaa !65, !alias.scope !482, !noalias !481
  %i.pi = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.pj = load i32, ptr %i.pd, align 8, !tbaa !56, !noalias !483
  store i32 %i.pj, ptr %i.pi, align 16, !tbaa !65, !alias.scope !482, !noalias !481
  %i.pk = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.pl = load i32, ptr %i.pe, align 4, !tbaa !56, !noalias !483
  store i32 %i.pl, ptr %i.pk, align 16, !tbaa !65, !alias.scope !482, !noalias !481
  %i.pm = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.pn = load i32, ptr %58, align 8, !tbaa !56, !noalias !483
  store i32 %i.pn, ptr %i.pm, align 16, !tbaa !65, !alias.scope !482, !noalias !481
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %59, ptr nonnull @.str.47, i64 40, i64 1118481, ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34, !noalias !481
  store ptr @.str.46, ptr %60, align 8, !tbaa !68
  %i.po = getelementptr inbounds nuw i8, ptr %60, i64 8
  store i64 8, ptr %i.po, align 8, !tbaa !69
  %i.pp = load ptr, ptr %59, align 8, !tbaa !64
  store ptr %i.pp, ptr %61, align 8, !tbaa !68
  %i.pq = getelementptr inbounds nuw i8, ptr %61, i64 8
  %i.pr = getelementptr inbounds nuw i8, ptr %59, i64 8
  %i.ps = load i64, ptr %i.pr, align 8, !tbaa !66
  store i64 %i.ps, ptr %i.pq, align 8, !tbaa !69
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %i.l, ptr noundef nonnull dead_on_return %60, ptr noundef nonnull dead_on_return %61)
          to label %bb.ct unwind label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.pt = load ptr, ptr %59, align 8, !tbaa !64   ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 2 uses
  %i.pv = icmp eq ptr %i.pt, %i.pu
  br i1 %i.pv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185: ; preds = %bb.ct
  %i.pw = load i64, ptr %i.pu, align 8, !tbaa !65
  %i.px = add i64 %i.pw, 1
  call void @_ZdlPvm(ptr noundef %i.pt, i64 noundef %i.px) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187: ; preds = %bb.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cs
  %i.py = landingpad { ptr, i32 }
          cleanup
  %i.pz = load ptr, ptr %59, align 8, !tbaa !64   ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 2 uses
  %i.qb = icmp eq ptr %i.pz, %i.qa
  br i1 %i.qb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188: ; preds = %bb.cu
  %i.qc = load i64, ptr %i.qa, align 8, !tbaa !65
  %i.qd = add i64 %i.qc, 1
  call void @_ZdlPvm(ptr noundef %i.pz, i64 noundef %i.qd) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br label %bb.ds

bb.cv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187, %bb.cr
  store ptr @.str.48, ptr %62, align 8, !tbaa !68
  %i.qe = getelementptr inbounds nuw i8, ptr %62, i64 8
  store i64 10, ptr %i.qe, align 8, !tbaa !69
  %i.qf = call noundef ptr @_ZN11OpenImageIO4v3_19ImageSpec14find_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEb(ptr noundef nonnull align 8 dereferenceable(160) %i.l, ptr noundef nonnull dead_on_return %62, i64 256, i1 noundef zeroext false) ; 4 uses
  %.not138 = icmp eq ptr %i.qf, null
  br i1 %.not138, label %bb.cy, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 38
  %i.qh = load i8, ptr %i.qg, align 2, !tbaa !160, !range !126, !noundef !127
  %i.qi = trunc nuw i8 %i.qh to i1
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qf, i64 16 ; 2 uses
  %i.qk = load ptr, ptr %i.qj, align 8
  %i.ql = select i1 %i.qi, ptr %i.qk, ptr %i.qj   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #34
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qf, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.qm, align 8 ; 3 uses
  store i64 %.sroa.0.0.copyload.i, ptr %63, align 8
  %i.qn = lshr i64 %.sroa.0.0.copyload.i, 32
  %i.qo = trunc nuw i64 %i.qn to i32
  %narrow.i191 = call i32 @llvm.smax.i32(i32 %i.qo, i32 1)
  %i.qp = lshr i64 %.sroa.0.0.copyload.i, 8
  %i.qq = and i64 %i.qp, 255
  %i.qr = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %63) #34
  %i.qs = mul i64 %i.qr, %i.qq
  %i.qt = trunc i64 %i.qs to i32
  %i.qu = mul i32 %narrow.i191, %i.qt             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #34
  %i.qv = icmp ne ptr %i.ql, null
  %i.qw = icmp ne i32 %i.qu, 0
  %or.cond = and i1 %i.qv, %i.qw
  br i1 %or.cond, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.qx = load ptr, ptr %i.f, align 8, !tbaa !117
  %i.qy = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %i.qx, i32 noundef 34675, i32 noundef %i.qu, ptr noundef nonnull %i.ql) ; 0 uses
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cw, %bb.cx, %bb.cv
  store ptr @.str.31, ptr %65, align 8, !tbaa !68
  %i.qz = getelementptr inbounds nuw i8, ptr %65, i64 8
  store i64 15, ptr %i.qz, align 8, !tbaa !69
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %66, i8 0, i64 16, i1 false)
  call void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %64, ptr noundef nonnull align 8 dereferenceable(160) %i.l, ptr noundef nonnull dead_on_return %65, ptr noundef nonnull dead_on_return %66)
  store ptr @.str.49, ptr %67, align 8, !tbaa !68
  %i.ra = getelementptr inbounds nuw i8, ptr %67, i64 8
  store i64 17, ptr %i.ra, align 8, !tbaa !69
  %i.rb = call noundef zeroext i1 @_ZN11OpenImageIO4v3_121equivalent_colorspaceENS0_17basic_string_viewIcSt11char_traitsIcEEES4_(ptr noundef nonnull dead_on_return %64, ptr noundef nonnull dead_on_return %67)
  br i1 %i.rb, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i32 1, ptr %i.c, align 4, !tbaa !56
  store ptr @.str.50, ptr %7, align 8, !tbaa !68
  %i.rc = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 15, ptr %i.rc, align 8, !tbaa !69
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %i.l, ptr noundef nonnull dead_on_return %7, i64 263, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  store ptr @.str.51, ptr %68, align 8, !tbaa !68
  %i.rd = getelementptr inbounds nuw i8, ptr %68, i64 8
  store i64 11, ptr %i.rd, align 8, !tbaa !69
  %i.re = call noundef float @_ZNK11OpenImageIO4v3_19ImageSpec19get_float_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEf(ptr noundef nonnull align 8 dereferenceable(160) %i.l, ptr noundef nonnull dead_on_return %68, float noundef 1.000000e+00)
  store ptr @.str.52, ptr %69, align 8, !tbaa !68
  %i.rf = getelementptr inbounds nuw i8, ptr %69, i64 8
  store i64 11, ptr %i.rf, align 8, !tbaa !69
  %i.rg = call noundef float @_ZNK11OpenImageIO4v3_19ImageSpec19get_float_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEf(ptr noundef nonnull align 8 dereferenceable(160) %i.l, ptr noundef nonnull dead_on_return %69, float noundef 1.000000e+00)
  %i.rh = insertelement <2 x float> poison, float %i.re, i64 0
  %i.ri = insertelement <2 x float> %i.rh, float %i.rg, i64 1 ; 2 uses
  %i.rj = fcmp ole <2 x float> %i.ri, zeroinitializer
  %i.rk = select <2 x i1> %i.rj, <2 x float> splat (float 1.000000e+00), <2 x float> %i.ri ; 4 uses
  %i.rl = extractelement <2 x float> %i.rk, i64 0 ; 3 uses
  store ptr @.str.53, ptr %70, align 8, !tbaa !68
  %i.rm = getelementptr inbounds nuw i8, ptr %70, i64 8
  store i64 16, ptr %i.rm, align 8, !tbaa !69
  %i.rn = call noundef float @_ZNK11OpenImageIO4v3_19ImageSpec19get_float_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEf(ptr noundef nonnull align 8 dereferenceable(160) %i.l, ptr noundef nonnull dead_on_return %70, float noundef 1.000000e+00) ; 2 uses
  %i.ro = fcmp olt float %i.rl, 1.000000e+00
  %i.rp = extractelement <2 x float> %i.rk, i64 1 ; 2 uses
  %i.rq = fcmp olt float %i.rp, 1.000000e+00
  %or.cond3 = or i1 %i.ro, %i.rq                  ; 2 uses
  %i.rr = fmul float %i.rl, %i.rn
  %i.rs = fcmp une float %i.rr, %i.rp
  %or.cond149 = or i1 %or.cond3, %i.rs
  br i1 %or.cond149, label %bb.db, label %bb.de

bb.db:                                            ; preds = %bb.da
  br i1 %or.cond3, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  store ptr @.str.54, ptr %71, align 8, !tbaa !68
  %i.rt = getelementptr inbounds nuw i8, ptr %71, i64 8
  store i64 14, ptr %i.rt, align 8, !tbaa !69
  store ptr @.str.55, ptr %72, align 8, !tbaa !68
  %i.ru = getelementptr inbounds nuw i8, ptr %72, i64 8
  store i64 4, ptr %i.ru, align 8, !tbaa !69
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %i.l, ptr noundef nonnull dead_on_return %71, ptr noundef nonnull dead_on_return %72)
  br label %bb.dd

bb.dd:                                            ; preds = %bb.db, %bb.dc
  %.067 = phi float [ 1.000000e+00, %bb.dc ], [ %i.rl, %bb.db ] ; 2 uses
  %i.rv = phi <2 x float> [ splat (float 1.000000e+00), %bb.dc ], [ %i.rk, %bb.db ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store float %.067, ptr %i.b, align 4, !tbaa !485
  store ptr @.str.51, ptr %6, align 8, !tbaa !68
  %i.rw = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 11, ptr %i.rw, align 8, !tbaa !69
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %i.l, ptr noundef nonnull dead_on_return %6, i64 267, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.rx = fmul float %i.rn, %.067
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store float %i.rx, ptr %i.a, align 4, !tbaa !485
  store ptr @.str.52, ptr %5, align 8, !tbaa !68
  %i.ry = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 11, ptr %i.ry, align 8, !tbaa !69
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %i.l, ptr noundef nonnull dead_on_return %5, i64 267, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.de

bb.de:                                            ; preds = %bb.da, %bb.dd
  %i.rz = phi <2 x float> [ %i.rv, %bb.dd ], [ %i.rk, %bb.da ]
  %i.sa = load <2 x i32>, ptr %i.l, align 8, !tbaa !56 ; 2 uses
  %77 = icmp eq <2 x i32> %i.sa, zeroinitializer  ; 2 uses
  %78 = extractelement <2 x i1> %77, i64 0
  %79 = extractelement <2 x i1> %77, i64 1
  %or.cond405 = select i1 %78, i1 %79, i1 false
  br i1 %or.cond405, label %bb.df, label %._crit_edge344

._crit_edge344:                                   ; preds = %bb.de
  %i.sb = sitofp <2 x i32> %i.sa to <2 x float>
  %i.sc = load ptr, ptr %i.f, align 8, !tbaa !117
  %i.sd = fdiv <2 x float> %i.sb, %i.rz           ; 2 uses
  %i.se = fcmp ogt <2 x float> %i.sd, zeroinitializer
  %i.sf = select <2 x i1> %i.se, <2 x float> %i.sd, <2 x float> zeroinitializer
  %i.sg = fpext <2 x float> %i.sf to <2 x double> ; 2 uses
  %i.sh = extractelement <2 x double> %i.sg, i64 0
  %i.si = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %i.sc, i32 noundef 286, double noundef %i.sh) ; 0 uses
  %i.sj = load ptr, ptr %i.f, align 8, !tbaa !117
  %i.sk = extractelement <2 x double> %i.sg, i64 1
  %i.sl = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %i.sj, i32 noundef 287, double noundef %i.sk) ; 0 uses
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %._crit_edge344
  %i.sm = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !486 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !486 ; 2 uses
  %.not295310 = icmp eq ptr %i.sn, %i.sp
  br i1 %.not295310, label %._crit_edge314, label %.lr.ph313

._crit_edge314:                                   ; preds = %.lr.ph313, %bb.df
  store ptr @.str.56, ptr %73, align 8, !tbaa !68
  %i.sq = getelementptr inbounds nuw i8, ptr %73, i64 8
  store i64 15, ptr %i.sq, align 8, !tbaa !69
  %i.sr = call noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160) %i.l, ptr noundef nonnull dead_on_return %73, i32 noundef 0)
  %.not141 = icmp eq i32 %i.sr, 0
  br i1 %.not141, label %bb.dn, label %bb.dg

.lr.ph313:                                        ; preds = %bb.df, %.lr.ph313
  %.sroa.0206.0311 = phi ptr [ %i.st, %.lr.ph313 ], [ %i.sn, %bb.df ] ; 2 uses
  %i.ss = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110TIFFOutput13put_parameterERKNS0_10ParamValueE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(39) %.sroa.0206.0311) ; 0 uses
  %i.st = getelementptr inbounds nuw i8, ptr %.sroa.0206.0311, i64 40 ; 2 uses
  %.not295 = icmp eq ptr %i.st, %i.sp
  br i1 %.not295, label %._crit_edge314, label %.lr.ph313

bb.dg:                                            ; preds = %._crit_edge314
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %74, i8 0, i64 24, i1 false)
  %i.su = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_115encode_iptc_iimERKNS0_9ImageSpecERSt6vectorIcSaIcEE(ptr noundef nonnull align 8 dereferenceable(160) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %74)
          to label %bb.dh unwind label %bb.dj     ; 0 uses

bb.dh:                                            ; preds = %bb.dg
  %i.sv = getelementptr inbounds nuw i8, ptr %74, i64 8
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !488 ; 2 uses
  %i.sx = load ptr, ptr %74, align 8, !tbaa !489  ; 4 uses
  %.not142 = icmp eq ptr %i.sw, %i.sx
  br i1 %.not142, label %bb.dl, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.sy = ptrtoint ptr %i.sx to i64
  %i.sz = ptrtoint ptr %i.sw to i64
  %i.ta = sub i64 %i.sz, %i.sy
  %i.tb = load ptr, ptr %i.f, align 8, !tbaa !117
  %i.tc = invoke i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %i.tb, i32 noundef 33723, i64 noundef %i.ta, ptr noundef nonnull %i.sx)
          to label %thread-pre-split290 unwind label %bb.dj ; 0 uses

bb.dj:                                            ; preds = %bb.di, %bb.dg
  %i.td = landingpad { ptr, i32 }
          cleanup
  %i.te = load ptr, ptr %74, align 8, !tbaa !489  ; 3 uses
  %.not.i.i.i194 = icmp eq ptr %i.te, null
  br i1 %.not.i.i.i194, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.tf = getelementptr inbounds nuw i8, ptr %74, i64 16
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !490
  %i.th = ptrtoint ptr %i.tg to i64
  %i.ti = ptrtoint ptr %i.te to i64
  %i.tj = sub i64 %i.th, %i.ti
  call void @_ZdlPvm(ptr noundef nonnull %i.te, i64 noundef %i.tj) #36
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.dj, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #34
  br label %bb.ds

thread-pre-split290:                              ; preds = %bb.di
  %.pr291 = load ptr, ptr %74, align 8, !tbaa !489
  br label %bb.dl

bb.dl:                                            ; preds = %thread-pre-split290, %bb.dh
  %i.tk = phi ptr [ %.pr291, %thread-pre-split290 ], [ %i.sx, %bb.dh ] ; 3 uses
  %.not.i.i.i195 = icmp eq ptr %i.tk, null
  br i1 %.not.i.i.i195, label %_ZNSt6vectorIcSaIcEED2Ev.exit196, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.tl = getelementptr inbounds nuw i8, ptr %74, i64 16
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !490
  %i.tn = ptrtoint ptr %i.tm to i64
  %i.to = ptrtoint ptr %i.tk to i64
  %i.tp = sub i64 %i.tn, %i.to
  call void @_ZdlPvm(ptr noundef nonnull %i.tk, i64 noundef %i.tp) #36
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit196

_ZNSt6vectorIcSaIcEED2Ev.exit196:                 ; preds = %bb.dl, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #34
  br label %bb.dn

bb.dn:                                            ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit196, %._crit_edge314
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #34
  call void @_ZN11OpenImageIO4v3_110encode_xmpB5cxx11ERKNS0_9ImageSpecEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %75, ptr noundef nonnull align 8 dereferenceable(160) %i.l, i1 noundef zeroext true)
  %i.tq = getelementptr inbounds nuw i8, ptr %75, i64 8
  %i.tr = load i64, ptr %i.tq, align 8, !tbaa !66 ; 2 uses
  %i.ts = icmp eq i64 %i.tr, 0
  br i1 %i.ts, label %bb.dq, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.tt = load ptr, ptr %i.f, align 8, !tbaa !117
  %i.tu = load ptr, ptr %75, align 8, !tbaa !64
  %i.tv = invoke i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %i.tt, i32 noundef 700, i64 noundef %i.tr, ptr noundef %i.tu)
          to label %bb.dq unwind label %bb.dp     ; 0 uses

bb.dp:                                            ; preds = %bb.dr, %bb.dq, %bb.do
  %i.tw = landingpad { ptr, i32 }
          cleanup
  %i.tx = load ptr, ptr %75, align 8, !tbaa !64   ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %75, i64 16 ; 2 uses
  %i.tz = icmp eq ptr %i.tx, %i.ty
  br i1 %i.tz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197: ; preds = %bb.dp
  %i.ua = load i64, ptr %i.ty, align 8, !tbaa !65
  %i.ub = add i64 %i.ua, 1
  call void @_ZdlPvm(ptr noundef %i.tx, i64 noundef %i.ub) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199: ; preds = %bb.dp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #34
  br label %bb.ds

bb.dq:                                            ; preds = %bb.do, %bb.dn
  %i.uc = load ptr, ptr %i.f, align 8, !tbaa !117
  %i.ud = invoke i32 @TIFFCheckpointDirectory(ptr noundef %i.uc)
          to label %_ZN11OpenImageIO4v3_15Timer5startEv.exit unwind label %bb.dp ; 0 uses

_ZN11OpenImageIO4v3_15Timer5startEv.exit:         ; preds = %bb.dq
  %i.ue = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 0, ptr %i.uf, align 8, !tbaa !129
  store i8 0, ptr %i.ue, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.ug = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #34 ; 0 uses
  %i.uh = load i64, ptr %4, align 8, !tbaa !73
  %i.ui = mul nsw i64 %i.uh, 1000000000
  %i.uj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.uk = load i64, ptr %i.uj, align 8, !tbaa !74
  %i.ul = add nsw i64 %i.ui, %i.uk
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.um = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %i.ul, ptr %i.um, align 8, !tbaa !77
  store i8 1, ptr %i.ue, align 8, !tbaa !78
  %i.un = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i32 0, ptr %i.un, align 8, !tbaa !118
  %i.uo = load i8, ptr %i.cr, align 8, !tbaa !145
  %i.up = icmp eq i8 %i.uo, 2
  %i.uq = load i8, ptr %i.oc, align 1
  %i.ur = icmp eq i8 %i.uq, 1
  %or.cond.i200 = select i1 %i.up, i1 %i.ur, i1 false
  br i1 %or.cond.i200, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit202, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit202.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit202: ; preds = %_ZN11OpenImageIO4v3_15Timer5startEv.exit
  %i.us = load i32, ptr %i.oa, align 4, !tbaa !146
  %.not.i201 = icmp eq i32 %i.us, 0
  br i1 %.not.i201, label %bb.dr, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit202.thread

bb.dr:                                            ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit202
  store ptr @.str.57, ptr %76, align 8, !tbaa !68
  %i.ut = getelementptr inbounds nuw i8, ptr %76, i64 8
  store i64 11, ptr %i.ut, align 8, !tbaa !69
  %i.uu = invoke noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160) %i.l, ptr noundef nonnull dead_on_return %76, i32 noundef 0)
          to label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit202.thread unwind label %bb.dp

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit202.thread: ; preds = %_ZN11OpenImageIO4v3_15Timer5startEv.exit, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit202, %bb.dr
  %i.uv = phi i32 [ %i.uu, %bb.dr ], [ 0, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit202 ], [ 0, %_ZN11OpenImageIO4v3_15Timer5startEv.exit ]
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 252
  store i32 %i.uv, ptr %i.uw, align 4, !tbaa !162
  %i.ux = load ptr, ptr %75, align 8, !tbaa !64   ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %75, i64 16 ; 2 uses
  %i.uz = icmp eq ptr %i.ux, %i.uy
  br i1 %i.uz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit202.thread
  %i.va = load i64, ptr %i.uy, align 8, !tbaa !65
  %i.vb = add i64 %i.va, 1
  call void @_ZdlPvm(ptr noundef %i.ux, i64 noundef %i.vb) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit202.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #34
  br label %bb.dt

bb.ds:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199, %_ZNSt6vectorIcSaIcEED2Ev.exit, %_ZNSt6vectorItSaItEED2Ev.exit182, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180
  %.pn143.pn.pn = phi { ptr, i32 } [ %.pn122.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180 ], [ %.pn130, %_ZNSt6vectorItSaItEED2Ev.exit182 ], [ %i.py, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190 ], [ %i.tw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199 ], [ %i.td, %_ZNSt6vectorIcSaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn143.pn.pn

bb.dt:                                            ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, %_ZN11OpenImageIO4v3_110TIFFOutput8closetifEv.exit, %bb.f
  %.1 = phi i1 [ false, %bb.f ], [ false, %_ZN11OpenImageIO4v3_110TIFFOutput8closetifEv.exit ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205 ], [ false, %bb.k ]
  ret i1 %.1
}

end_hunk_0
