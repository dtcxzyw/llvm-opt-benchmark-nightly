inline.NumInlined: 4471
inline.NumDeleted: 1472
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN11OpenImageIO4v3_110TIFFOutput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_9ImageSpecENS0_11ImageOutput8OpenModeE:bb.a
  %i.ph = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.pi = load i32, ptr %i.pc, align 8, !tbaa !3, !noalias !140
  store i32 %i.pi, ptr %i.ph, align 16, !tbaa !15, !alias.scope !137, !noalias !134
  %i.pj = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.pk = load i32, ptr %i.pd, align 4, !tbaa !3, !noalias !140
  store i32 %i.pk, ptr %i.pj, align 16, !tbaa !15, !alias.scope !137, !noalias !134
  %i.pl = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.pm = load i32, ptr %58, align 8, !tbaa !3, !noalias !140
  store i32 %i.pm, ptr %i.pl, align 16, !tbaa !15, !alias.scope !137, !noalias !134
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %59, ptr nonnull @.str.47, i64 40, i64 1118481, ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34, !noalias !134
  store ptr @.str.46, ptr %60, align 8, !tbaa !20
  %i.pn = getelementptr inbounds nuw i8, ptr %60, i64 8
  store i64 8, ptr %i.pn, align 8, !tbaa !22
  %i.po = load ptr, ptr %59, align 8, !tbaa !13
  store ptr %i.po, ptr %61, align 8, !tbaa !20
  %i.pp = getelementptr inbounds nuw i8, ptr %61, i64 8
  %i.pq = getelementptr inbounds nuw i8, ptr %59, i64 8
  %i.pr = load i64, ptr %i.pq, align 8, !tbaa !16
  store i64 %i.pr, ptr %i.pp, align 8, !tbaa !22
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %i.l, ptr noundef nonnull dead_on_return %60, ptr noundef nonnull dead_on_return %61)
          to label %bb.cv unwind label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.ps = load ptr, ptr %59, align 8, !tbaa !13   ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 2 uses
  %i.pu = icmp eq ptr %i.ps, %i.pt
  br i1 %i.pu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188: ; preds = %bb.cv
  %i.pv = load i64, ptr %i.pt, align 8, !tbaa !15
  %i.pw = add i64 %i.pv, 1
  call void @_ZdlPvm(ptr noundef %i.ps, i64 noundef %i.pw) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190: ; preds = %bb.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br label %bb.cx

bb.cw:                                            ; preds = %bb.cu
  %i.px = landingpad { ptr, i32 }
          cleanup
  %i.py = load ptr, ptr %59, align 8, !tbaa !13   ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 2 uses
  %i.qa = icmp eq ptr %i.py, %i.pz
  br i1 %i.qa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191: ; preds = %bb.cw
  %i.qb = load i64, ptr %i.pz, align 8, !tbaa !15
  %i.qc = add i64 %i.qb, 1
  call void @_ZdlPvm(ptr noundef %i.py, i64 noundef %i.qc) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193: ; preds = %bb.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br label %bb.du

bb.cx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, %bb.ct
  store ptr @.str.48, ptr %62, align 8, !tbaa !20
  %i.qd = getelementptr inbounds nuw i8, ptr %62, i64 8
  store i64 10, ptr %i.qd, align 8, !tbaa !22
  %i.qe = call noundef ptr @_ZN11OpenImageIO4v3_19ImageSpec14find_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEb(ptr noundef nonnull align 8 dereferenceable(160) %i.l, ptr noundef nonnull dead_on_return %62, i64 256, i1 noundef zeroext false) ; 4 uses
  %.not141 = icmp eq ptr %i.qe, null
  br i1 %.not141, label %bb.da, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 38
  %i.qg = load i8, ptr %i.qf, align 2, !tbaa !127, !range !79, !noundef !80
  %i.qh = trunc nuw i8 %i.qg to i1
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qe, i64 16 ; 2 uses
  %i.qj = load ptr, ptr %i.qi, align 8
  %i.qk = select i1 %i.qh, ptr %i.qj, ptr %i.qi   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #34
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qe, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.ql, align 8 ; 3 uses
  store i64 %.sroa.0.0.copyload.i, ptr %63, align 8
  %i.qm = lshr i64 %.sroa.0.0.copyload.i, 32
  %i.qn = trunc nuw i64 %i.qm to i32
  %narrow.i194 = call i32 @llvm.smax.i32(i32 %i.qn, i32 1)
  %i.qo = lshr i64 %.sroa.0.0.copyload.i, 8
  %i.qp = and i64 %i.qo, 255
  %i.qq = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %63) #34
  %i.qr = mul i64 %i.qq, %i.qp
  %i.qs = trunc i64 %i.qr to i32
  %i.qt = mul i32 %narrow.i194, %i.qs             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #34
  %i.qu = icmp ne ptr %i.qk, null
  %i.qv = icmp ne i32 %i.qt, 0
  %or.cond = and i1 %i.qu, %i.qv
  br i1 %or.cond, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.qw = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.qx = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %i.qw, i32 noundef 34675, i32 noundef %i.qt, ptr noundef nonnull %i.qk) ; 0 uses
  br label %bb.da

bb.da:                                            ; preds = %bb.cy, %bb.cz, %bb.cx
  store ptr @.str.31, ptr %65, align 8, !tbaa !20
  %i.qy = getelementptr inbounds nuw i8, ptr %65, i64 8
  store i64 15, ptr %i.qy, align 8, !tbaa !22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %66, i8 0, i64 16, i1 false)
  call void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %64, ptr noundef nonnull align 8 dereferenceable(160) %i.l, ptr noundef nonnull dead_on_return %65, ptr noundef nonnull dead_on_return %66)
  store ptr @.str.49, ptr %67, align 8, !tbaa !20
  %i.qz = getelementptr inbounds nuw i8, ptr %67, i64 8
  store i64 17, ptr %i.qz, align 8, !tbaa !22
  %i.ra = call noundef zeroext i1 @_ZN11OpenImageIO4v3_121equivalent_colorspaceENS0_17basic_string_viewIcSt11char_traitsIcEEES4_(ptr noundef nonnull dead_on_return %64, ptr noundef nonnull dead_on_return %67)
  br i1 %i.ra, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i32 1, ptr %i.c, align 4, !tbaa !3
  store ptr @.str.50, ptr %7, align 8, !tbaa !20
  %i.rb = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 15, ptr %i.rb, align 8, !tbaa !22
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %i.l, ptr noundef nonnull dead_on_return %7, i64 263, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  store ptr @.str.51, ptr %68, align 8, !tbaa !20
  %i.rc = getelementptr inbounds nuw i8, ptr %68, i64 8
  store i64 11, ptr %i.rc, align 8, !tbaa !22
  %i.rd = call noundef float @_ZNK11OpenImageIO4v3_19ImageSpec19get_float_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEf(ptr noundef nonnull align 8 dereferenceable(160) %i.l, ptr noundef nonnull dead_on_return %68, float noundef 1.000000e+00)
  store ptr @.str.52, ptr %69, align 8, !tbaa !20
  %i.re = getelementptr inbounds nuw i8, ptr %69, i64 8
  store i64 11, ptr %i.re, align 8, !tbaa !22
  %i.rf = call noundef float @_ZNK11OpenImageIO4v3_19ImageSpec19get_float_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEf(ptr noundef nonnull align 8 dereferenceable(160) %i.l, ptr noundef nonnull dead_on_return %69, float noundef 1.000000e+00)
  %i.rg = insertelement <2 x float> poison, float %i.rd, i64 0
  %i.rh = insertelement <2 x float> %i.rg, float %i.rf, i64 1 ; 2 uses
  %i.ri = fcmp ugt <2 x float> %i.rh, zeroinitializer
  %i.rj = select <2 x i1> %i.ri, <2 x float> %i.rh, <2 x float> splat (float 1.000000e+00) ; 4 uses
  %i.rk = extractelement <2 x float> %i.rj, i64 0 ; 3 uses
  store ptr @.str.53, ptr %70, align 8, !tbaa !20
  %i.rl = getelementptr inbounds nuw i8, ptr %70, i64 8
  store i64 16, ptr %i.rl, align 8, !tbaa !22
  %i.rm = call noundef float @_ZNK11OpenImageIO4v3_19ImageSpec19get_float_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEf(ptr noundef nonnull align 8 dereferenceable(160) %i.l, ptr noundef nonnull dead_on_return %70, float noundef 1.000000e+00) ; 2 uses
  %i.rn = fcmp olt float %i.rk, 1.000000e+00
  %i.ro = extractelement <2 x float> %i.rj, i64 1 ; 2 uses
  %i.rp = fcmp olt float %i.ro, 1.000000e+00
  %or.cond3 = or i1 %i.rn, %i.rp                  ; 2 uses
  %i.rq = fmul float %i.rk, %i.rm
  %i.rr = fcmp une float %i.rq, %i.ro
  %or.cond152 = or i1 %or.cond3, %i.rr
  br i1 %or.cond152, label %bb.dd, label %bb.dg

bb.dd:                                            ; preds = %bb.dc
  br i1 %or.cond3, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  store ptr @.str.54, ptr %71, align 8, !tbaa !20
  %i.rs = getelementptr inbounds nuw i8, ptr %71, i64 8
  store i64 14, ptr %i.rs, align 8, !tbaa !22
  store ptr @.str.55, ptr %72, align 8, !tbaa !20
  %i.rt = getelementptr inbounds nuw i8, ptr %72, i64 8
  store i64 4, ptr %i.rt, align 8, !tbaa !22
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %i.l, ptr noundef nonnull dead_on_return %71, ptr noundef nonnull dead_on_return %72)
  br label %bb.df

bb.df:                                            ; preds = %bb.dd, %bb.de
  %.168 = phi float [ 1.000000e+00, %bb.de ], [ %i.rk, %bb.dd ] ; 2 uses
  %i.ru = phi <2 x float> [ splat (float 1.000000e+00), %bb.de ], [ %i.rj, %bb.dd ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store float %.168, ptr %i.b, align 4, !tbaa !141
  store ptr @.str.51, ptr %6, align 8, !tbaa !20
  %i.rv = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 11, ptr %i.rv, align 8, !tbaa !22
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %i.l, ptr noundef nonnull dead_on_return %6, i64 267, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.rw = fmul float %i.rm, %.168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store float %i.rw, ptr %i.a, align 4, !tbaa !141
  store ptr @.str.52, ptr %5, align 8, !tbaa !20
  %i.rx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 11, ptr %i.rx, align 8, !tbaa !22
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %i.l, ptr noundef nonnull dead_on_return %5, i64 267, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.dg

bb.dg:                                            ; preds = %bb.dc, %bb.df
  %i.ry = phi <2 x float> [ %i.ru, %bb.df ], [ %i.rj, %bb.dc ]
  %i.rz = load <2 x i32>, ptr %i.l, align 8, !tbaa !3 ; 2 uses
  %i.sa = icmp eq <2 x i32> %i.rz, zeroinitializer ; 2 uses
  %i.sb = extractelement <2 x i1> %i.sa, i64 0
  %i.sc = extractelement <2 x i1> %i.sa, i64 1
  %or.cond407 = select i1 %i.sb, i1 %i.sc, i1 false
  br i1 %or.cond407, label %bb.dh, label %._crit_edge343

._crit_edge343:                                   ; preds = %bb.dg
  %i.sd = sitofp <2 x i32> %i.rz to <2 x float>
  %i.se = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.sf = fdiv <2 x float> %i.sd, %i.ry           ; 3 uses
  %i.sg = fcmp ogt <2 x float> %i.sf, zeroinitializer ; 2 uses
  %77 = extractelement <2 x i1> %i.sg, i64 0
  %78 = extractelement <2 x float> %i.sf, i64 0
  %79 = fpext float %78 to double
  %80 = select i1 %77, double %79, double 0.000000e+00
  %i.sh = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %i.se, i32 noundef 286, double noundef %80) ; 0 uses
  %i.si = load ptr, ptr %i.f, align 8, !tbaa !34
  %81 = extractelement <2 x i1> %i.sg, i64 1
  %82 = extractelement <2 x float> %i.sf, i64 1
  %83 = fpext float %82 to double
  %84 = select i1 %81, double %83, double 0.000000e+00
  %i.sj = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %i.si, i32 noundef 287, double noundef %84) ; 0 uses
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %._crit_edge343
  %i.sk = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !143 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !143 ; 2 uses
  %.not298308 = icmp eq ptr %i.sl, %i.sn
  br i1 %.not298308, label %._crit_edge312, label %.lr.ph311

._crit_edge312:                                   ; preds = %.lr.ph311, %bb.dh
  store ptr @.str.56, ptr %73, align 8, !tbaa !20
  %i.so = getelementptr inbounds nuw i8, ptr %73, i64 8
  store i64 15, ptr %i.so, align 8, !tbaa !22
  %i.sp = call noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160) %i.l, ptr noundef nonnull dead_on_return %73, i32 noundef 0)
  %.not144 = icmp eq i32 %i.sp, 0
  br i1 %.not144, label %bb.dp, label %bb.di

.lr.ph311:                                        ; preds = %bb.dh, %.lr.ph311
  %.sroa.0209.0309 = phi ptr [ %i.sr, %.lr.ph311 ], [ %i.sl, %bb.dh ] ; 2 uses
  %i.sq = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110TIFFOutput13put_parameterERKNS0_10ParamValueE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(39) %.sroa.0209.0309) ; 0 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %.sroa.0209.0309, i64 40 ; 2 uses
  %.not298 = icmp eq ptr %i.sr, %i.sn
  br i1 %.not298, label %._crit_edge312, label %.lr.ph311

bb.di:                                            ; preds = %._crit_edge312
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %74, i8 0, i64 24, i1 false)
  %i.ss = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_115encode_iptc_iimERKNS0_9ImageSpecERSt6vectorIcSaIcEE(ptr noundef nonnull align 8 dereferenceable(160) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %74)
          to label %bb.dj unwind label %bb.dl     ; 0 uses

bb.dj:                                            ; preds = %bb.di
  %i.st = getelementptr inbounds nuw i8, ptr %74, i64 8
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !144 ; 2 uses
  %i.sv = load ptr, ptr %74, align 8, !tbaa !146  ; 4 uses
  %.not145 = icmp eq ptr %i.su, %i.sv
  br i1 %.not145, label %bb.dn, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.sw = ptrtoint ptr %i.sv to i64
  %i.sx = ptrtoint ptr %i.su to i64
  %i.sy = sub i64 %i.sx, %i.sw
  %i.sz = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.ta = invoke i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %i.sz, i32 noundef 33723, i64 noundef %i.sy, ptr noundef nonnull %i.sv)
          to label %thread-pre-split293 unwind label %bb.dl ; 0 uses

bb.dl:                                            ; preds = %bb.dk, %bb.di
  %i.tb = landingpad { ptr, i32 }
          cleanup
  %i.tc = load ptr, ptr %74, align 8, !tbaa !146  ; 3 uses
  %.not.i.i.i197 = icmp eq ptr %i.tc, null
  br i1 %.not.i.i.i197, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.td = getelementptr inbounds nuw i8, ptr %74, i64 16
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !147
  %i.tf = ptrtoint ptr %i.te to i64
  %i.tg = ptrtoint ptr %i.tc to i64
  %i.th = sub i64 %i.tf, %i.tg
  call void @_ZdlPvm(ptr noundef nonnull %i.tc, i64 noundef %i.th) #36
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.dl, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #34
  br label %bb.du

thread-pre-split293:                              ; preds = %bb.dk
  %.pr294 = load ptr, ptr %74, align 8, !tbaa !146
  br label %bb.dn

bb.dn:                                            ; preds = %thread-pre-split293, %bb.dj
  %i.ti = phi ptr [ %.pr294, %thread-pre-split293 ], [ %i.sv, %bb.dj ] ; 3 uses
  %.not.i.i.i198 = icmp eq ptr %i.ti, null
  br i1 %.not.i.i.i198, label %_ZNSt6vectorIcSaIcEED2Ev.exit199, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.tj = getelementptr inbounds nuw i8, ptr %74, i64 16
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !147
  %i.tl = ptrtoint ptr %i.tk to i64
  %i.tm = ptrtoint ptr %i.ti to i64
  %i.tn = sub i64 %i.tl, %i.tm
  call void @_ZdlPvm(ptr noundef nonnull %i.ti, i64 noundef %i.tn) #36
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit199

_ZNSt6vectorIcSaIcEED2Ev.exit199:                 ; preds = %bb.dn, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #34
  br label %bb.dp

bb.dp:                                            ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit199, %._crit_edge312
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #34
  call void @_ZN11OpenImageIO4v3_110encode_xmpB5cxx11ERKNS0_9ImageSpecEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %75, ptr noundef nonnull align 8 dereferenceable(160) %i.l, i1 noundef zeroext true)
  %i.to = getelementptr inbounds nuw i8, ptr %75, i64 8
  %i.tp = load i64, ptr %i.to, align 8, !tbaa !16 ; 2 uses
  %i.tq = icmp eq i64 %i.tp, 0
  br i1 %i.tq, label %bb.ds, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.tr = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.ts = load ptr, ptr %75, align 8, !tbaa !13
  %i.tt = invoke i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %i.tr, i32 noundef 700, i64 noundef %i.tp, ptr noundef %i.ts)
          to label %bb.ds unwind label %bb.dr     ; 0 uses

bb.dr:                                            ; preds = %bb.dt, %bb.ds, %bb.dq
  %i.tu = landingpad { ptr, i32 }
          cleanup
  %i.tv = load ptr, ptr %75, align 8, !tbaa !13   ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %75, i64 16 ; 2 uses
  %i.tx = icmp eq ptr %i.tv, %i.tw
  br i1 %i.tx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200: ; preds = %bb.dr
  %i.ty = load i64, ptr %i.tw, align 8, !tbaa !15
  %i.tz = add i64 %i.ty, 1
  call void @_ZdlPvm(ptr noundef %i.tv, i64 noundef %i.tz) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202: ; preds = %bb.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #34
  br label %bb.du

bb.ds:                                            ; preds = %bb.dq, %bb.dp
  %i.ua = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.ub = invoke i32 @TIFFCheckpointDirectory(ptr noundef %i.ua)
          to label %_ZN11OpenImageIO4v3_15Timer5startEv.exit unwind label %bb.dr ; 0 uses

_ZN11OpenImageIO4v3_15Timer5startEv.exit:         ; preds = %bb.ds
  %i.uc = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 0, ptr %i.ud, align 8, !tbaa !82
  store i8 0, ptr %i.uc, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.ue = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #34 ; 0 uses
  %i.uf = load i64, ptr %4, align 8, !tbaa !25
  %i.ug = mul nsw i64 %i.uf, 1000000000
  %i.uh = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ui = load i64, ptr %i.uh, align 8, !tbaa !27
  %i.uj = add nsw i64 %i.ug, %i.ui
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.uk = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %i.uj, ptr %i.uk, align 8, !tbaa !28
  store i8 1, ptr %i.uc, align 8, !tbaa !31
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i32 0, ptr %i.ul, align 8, !tbaa !71
  %i.um = load i8, ptr %i.cr, align 8, !tbaa !105
  %i.un = icmp eq i8 %i.um, 2
  %i.uo = load i8, ptr %i.ob, align 1
  %i.up = icmp eq i8 %i.uo, 1
  %or.cond.i203 = select i1 %i.un, i1 %i.up, i1 false
  br i1 %or.cond.i203, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit205, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit205.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit205: ; preds = %_ZN11OpenImageIO4v3_15Timer5startEv.exit
  %i.uq = load i32, ptr %i.nz, align 4, !tbaa !106
  %.not.i204 = icmp eq i32 %i.uq, 0
  br i1 %.not.i204, label %bb.dt, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit205.thread

bb.dt:                                            ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit205
  store ptr @.str.57, ptr %76, align 8, !tbaa !20
  %i.ur = getelementptr inbounds nuw i8, ptr %76, i64 8
  store i64 11, ptr %i.ur, align 8, !tbaa !22
  %i.us = invoke noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160) %i.l, ptr noundef nonnull dead_on_return %76, i32 noundef 0)
          to label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit205.thread unwind label %bb.dr

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit205.thread: ; preds = %_ZN11OpenImageIO4v3_15Timer5startEv.exit, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit205, %bb.dt
  %i.ut = phi i32 [ %i.us, %bb.dt ], [ 0, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit205 ], [ 0, %_ZN11OpenImageIO4v3_15Timer5startEv.exit ]
  %i.uu = getelementptr inbounds nuw i8, ptr %0, i64 252
  store i32 %i.ut, ptr %i.uu, align 4, !tbaa !148
  %i.uv = load ptr, ptr %75, align 8, !tbaa !13   ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %75, i64 16 ; 2 uses
  %i.ux = icmp eq ptr %i.uv, %i.uw
  br i1 %i.ux, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit205.thread
  %i.uy = load i64, ptr %i.uw, align 8, !tbaa !15
  %i.uz = add i64 %i.uy, 1
  call void @_ZdlPvm(ptr noundef %i.uv, i64 noundef %i.uz) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit205.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #34
  br label %bb.dv

bb.du:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, %_ZNSt6vectorIcSaIcEED2Ev.exit, %_ZNSt6vectorItSaItEED2Ev.exit185, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183
  %.pn146.pn.pn = phi { ptr, i32 } [ %.pn125.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183 ], [ %.pn133, %_ZNSt6vectorItSaItEED2Ev.exit185 ], [ %i.px, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193 ], [ %i.tu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202 ], [ %i.tb, %_ZNSt6vectorIcSaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn146.pn.pn

bb.dv:                                            ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, %_ZN11OpenImageIO4v3_110TIFFOutput8closetifEv.exit, %bb.f
  %.1 = phi i1 [ false, %bb.f ], [ false, %_ZN11OpenImageIO4v3_110TIFFOutput8closetifEv.exit ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208 ], [ false, %bb.k ]
  ret i1 %.1
}

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput10check_openENS1_8OpenModeERKNS0_9ImageSpecENS0_3ROIEm(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, ptr noundef nonnull align 8 dereferenceable(160), ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJiiEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fmt::v12::detail::format_arg_store.150", align 16 ; 5 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #34, !noalias !149
end_hunk_0
