Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_current?download=true
inline.NumInlined: 251
inline.NumDeleted: 99
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_Z11gmx_currentiPPc:bb.a
  br i1 %i.ou, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184: ; preds = %bb.bu
  %i.ov = load i64, ptr %i.ol, align 8, !tbaa !22
  %i.ow = add i64 %i.ov, 1
  call void @_ZdlPvm(ptr noundef %i.ot, i64 noundef %i.ow) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18
  %i.ox = load ptr, ptr %26, align 8, !tbaa !21   ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.oz = icmp eq ptr %i.ox, %i.oy
  br i1 %i.oz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186
  %i.pa = load i64, ptr %i.oy, align 8, !tbaa !22
  %i.pb = add i64 %i.pa, 1
  call void @_ZdlPvm(ptr noundef %i.ox, i64 noundef %i.pb) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #18
  %i.pc = getelementptr inbounds nuw i8, ptr %25, i64 32 ; 2 uses
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !18 ; 2 uses
  %.not.i.i.i190 = icmp eq ptr %i.pd, null
  br i1 %.not.i.i.i190, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i191, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.pc, ptr noundef nonnull %i.pd) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i191

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i191: ; preds = %bb.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189
  %i.pe = load ptr, ptr %25, align 8, !tbaa !21   ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.pg = icmp eq ptr %i.pe, %i.pf
  br i1 %i.pg, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit194, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i192: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i191
  %i.ph = load i64, ptr %i.pf, align 8, !tbaa !22
  %i.pi = add i64 %i.ph, 1
  call void @_ZdlPvm(ptr noundef %i.pe, i64 noundef %i.pi) #19
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit194

_ZNSt10filesystem7__cxx114pathD2Ev.exit194:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i191, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  %fwrite87 = call i64 @fwrite(ptr nonnull @.str.77, i64 46, i64 1, ptr %i.os) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #18
  %i.pj = invoke noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.21, i32 noundef 9, ptr noundef nonnull %10)
          to label %bb.bw unwind label %bb.et

bb.bw:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit194
  store ptr %i.pj, ptr %i.ab, align 8, !tbaa !16
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %28, ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i8 noundef zeroext 2)
          to label %bb.bx unwind label %bb.et

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #18
  %i.pk = load ptr, ptr %i.n, align 8, !tbaa !85
  invoke void @_Z26output_env_get_xvgr_tlabelB5cxx11PK16gmx_output_env_t(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %29, ptr noundef %i.pk)
          to label %.noexc.i196 unwind label %bb.eu

.noexc.i196:                                      ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #18
  %i.pl = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 6 uses
  store ptr %i.pl, ptr %30, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  store i64 65, ptr %i.h, align 8, !tbaa !27
  %i.pm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %.noexc197 unwind label %bb.ev ; 3 uses

.noexc197:                                        ; preds = %.noexc.i196
  store ptr %i.pm, ptr %30, align 8, !tbaa !21
  %i.pn = load i64, ptr %i.h, align 8, !tbaa !27  ; 3 uses
  store i64 %i.pn, ptr %i.pl, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(65) %i.pm, ptr noundef nonnull align 1 dereferenceable(65) @.str.79, i64 65, i1 false)
  %i.po = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 %i.pn, ptr %i.po, align 8, !tbaa !28
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pm, i64 %i.pn
  store i8 0, ptr %i.pp, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  %i.pq = load ptr, ptr %i.n, align 8, !tbaa !85
  %i.pr = invoke noundef ptr @_Z8xvgropenRKNSt10filesystem7__cxx114pathEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PK16gmx_output_env_t(ptr noundef nonnull align 8 dereferenceable(40) %28, ptr noundef nonnull @.str.78, ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef %i.pq)
          to label %bb.by unwind label %bb.ew     ; 3 uses

bb.by:                                            ; preds = %.noexc197
  %i.ps = load ptr, ptr %30, align 8, !tbaa !21   ; 2 uses
  %i.pt = icmp eq ptr %i.ps, %i.pl
  br i1 %i.pt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199: ; preds = %bb.by
  %i.pu = load i64, ptr %i.pl, align 8, !tbaa !22
  %i.pv = add i64 %i.pu, 1
  call void @_ZdlPvm(ptr noundef %i.ps, i64 noundef %i.pv) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  %i.pw = load ptr, ptr %29, align 8, !tbaa !21   ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.py = icmp eq ptr %i.pw, %i.px
  br i1 %i.py, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201
  %i.pz = load i64, ptr %i.px, align 8, !tbaa !22
  %i.qa = add i64 %i.pz, 1
  call void @_ZdlPvm(ptr noundef %i.pw, i64 noundef %i.qa) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #18
  %i.qb = getelementptr inbounds nuw i8, ptr %28, i64 32 ; 2 uses
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !18 ; 2 uses
  %.not.i.i.i205 = icmp eq ptr %i.qc, null
  br i1 %.not.i.i.i205, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i206, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.qb, ptr noundef nonnull %i.qc) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i206

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i206: ; preds = %bb.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204
  %i.qd = load ptr, ptr %28, align 8, !tbaa !21   ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.qf = icmp eq ptr %i.qd, %i.qe
  br i1 %i.qf, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit209, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i207

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i207: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i206
  %i.qg = load i64, ptr %i.qe, align 8, !tbaa !22
  %i.qh = add i64 %i.qg, 1
  call void @_ZdlPvm(ptr noundef %i.qd, i64 noundef %i.qh) #19
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit209

_ZNSt10filesystem7__cxx114pathD2Ev.exit209:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i206, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  %i.qi = load i8, ptr @_ZZ11gmx_currentiPPcE7bNoJump, align 1, !tbaa !127, !range !125, !noundef !126
  %i.qj = trunc nuw i8 %i.qi to i1                ; 3 uses
  %i.qk = load i32, ptr %i.s, align 4, !tbaa !75  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2464) %4, ptr noundef nonnull align 8 dereferenceable(2464) %8, i64 2464, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %3, ptr noundef nonnull align 8 dereferenceable(176) %9, i64 176, i1 false)
  %i.ql = load float, ptr @_ZZ11gmx_currentiPPcE4temp, align 4, !tbaa !24
  %i.qm = load float, ptr @_ZZ11gmx_currentiPPcE4bfit, align 4, !tbaa !24 ; 2 uses
  %i.qn = load float, ptr @_ZZ11gmx_currentiPPcE4efit, align 4, !tbaa !24 ; 2 uses
  %i.qo = load float, ptr @_ZZ11gmx_currentiPPcE4bvit, align 4, !tbaa !24
  %i.qp = load float, ptr @_ZZ11gmx_currentiPPcE4evit, align 4, !tbaa !24
  %i.qq = load ptr, ptr %i.r, align 8, !tbaa !129
  %i.qr = load i32, ptr %i.q, align 4, !tbaa !10  ; 4 uses
  %i.qs = load i32, ptr @_ZZ11gmx_currentiPPcE6nshift, align 4, !tbaa !10 ; 4 uses
  %i.qt = load ptr, ptr %i.p, align 8, !tbaa !105 ; 4 uses
  %i.qu = load float, ptr @_ZZ11gmx_currentiPPcE6eps_rf, align 4, !tbaa !24 ; 5 uses
  %i.qv = load ptr, ptr %i.n, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store float 0.000000e+00, ptr %i.e, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  store float 0.000000e+00, ptr %i.f, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  store float 0.000000e+00, ptr %i.g, align 4, !tbaa !24
  %i.qw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.qx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.qy = load i32, ptr %i.qx, align 8, !tbaa !130
  %i.qz = invoke noundef ptr @_Z14gmx_rmpbc_initPK6t_idef7PbcTypei(ptr noundef nonnull %i.qw, i32 noundef %i.qk, i32 noundef %i.qy)
          to label %.noexc218 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc218:                                        ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit209
  %i.ra = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.rb = getelementptr inbounds nuw i8, ptr %3, i64 116 ; 6 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 4 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 3 uses
  %i.re = getelementptr inbounds nuw i8, ptr %3, i64 132 ; 4 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %3, i64 140 ; 3 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %3, i64 148 ; 4 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 3 uses
  %.sroa.1.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 2424
  %i.ri = icmp sgt i32 %.035.lcssa.i, 0
  %i.rj = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %wide.trip.count16.i.i = zext nneg i32 %.035.lcssa.i to i64
  %i.rl = icmp sgt i32 %i.qr, 0                   ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %4, i64 2352
  %i.rn = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ro = getelementptr inbounds nuw i8, ptr %3, i64 88
  %or.cond.i = or i1 %i.bt, %i.bu
  %i.rp = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.rq = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.rr = getelementptr inbounds nuw i8, ptr %3, i64 124
  %wide.trip.count602.i = zext i32 %i.qr to i64   ; 3 uses
  %xtraiter884 = and i64 %wide.trip.count602.i, 1
  %i.rs = icmp eq i32 %i.qr, 1
  %unroll_iter = and i64 %wide.trip.count602.i, 2147483646
  %lcmp.mod885.not = icmp eq i64 %xtraiter884, 0
  %lcmp.mod886 = trunc i32 %i.qr to i1
  br label %bb.ca

bb.ca:                                            ; preds = %.noexc235, %.noexc218
  %indvar.i = phi i64 [ %indvar.next.i, %.noexc235 ], [ 0, %.noexc218 ] ; 20 uses
  %.0505.i = phi ptr [ %.2507.i, %.noexc235 ], [ null, %.noexc218 ] ; 4 uses
  %.0503.i = phi ptr [ %.1504.i, %.noexc235 ], [ null, %.noexc218 ] ; 2 uses
  %.0499.i = phi ptr [ %.3502.i, %.noexc235 ], [ null, %.noexc218 ] ; 4 uses
  %.0497.i = phi ptr [ %.1498.i, %.noexc235 ], [ null, %.noexc218 ] ; 2 uses
  %.0494.i = phi ptr [ %.2496.i, %.noexc235 ], [ null, %.noexc218 ] ; 5 uses
  %.0491.i = phi ptr [ %.2493.i, %.noexc235 ], [ null, %.noexc218 ] ; 3 uses
  %.0489.i = phi ptr [ %.1490.i, %.noexc235 ], [ null, %.noexc218 ] ; 2 uses
  %.0487.i = phi ptr [ %.1488.i, %.noexc235 ], [ null, %.noexc218 ] ; 2 uses
  %.0485.i = phi ptr [ %.1486.i, %.noexc235 ], [ null, %.noexc218 ] ; 2 uses
  %.0482.i = phi ptr [ %.2484.i, %.noexc235 ], [ null, %.noexc218 ] ; 3 uses
  %.0481.i = phi ptr [ %.1.i, %.noexc235 ], [ null, %.noexc218 ] ; 2 uses
  %.0308.i = phi i32 [ %.2310.i, %.noexc235 ], [ 0, %.noexc218 ] ; 4 uses
  %.0306.i = phi i32 [ %.1307.i, %.noexc235 ], [ 0, %.noexc218 ] ; 4 uses
  %.0303.i = phi i32 [ %.1304.i, %.noexc235 ], [ 0, %.noexc218 ] ; 8 uses
  %.0300.i = phi float [ %i.anq, %.noexc235 ], [ 0.000000e+00, %.noexc218 ]
  %.0299.i = phi float [ %i.alt, %.noexc235 ], [ 0.000000e+00, %.noexc218 ]
  %.0298.i = phi float [ %i.and, %.noexc235 ], [ 0.000000e+00, %.noexc218 ]
  %.0297.i = phi float [ %i.aly, %.noexc235 ], [ 0.000000e+00, %.noexc218 ]
  %.0294.i = phi float [ %.1295.i, %.noexc235 ], [ 0.000000e+00, %.noexc218 ]
  %.0292.i = phi i32 [ %.1293.i, %.noexc235 ], [ 0, %.noexc218 ]
  %.0290.i = phi i32 [ %.1291.i, %.noexc235 ], [ 0, %.noexc218 ]
  %.0287.i = phi i32 [ %.2289.i, %.noexc235 ], [ 0, %.noexc218 ] ; 2 uses
  %.0.i = phi i32 [ %.2.i, %.noexc235 ], [ 0, %.noexc218 ] ; 2 uses
  %i.rt = phi <2 x float> [ %i.alo, %.noexc235 ], [ zeroinitializer, %.noexc218 ]
  %i.ru = phi <2 x float> [ %i.alj, %.noexc235 ], [ zeroinitializer, %.noexc218 ]
  %i.rv = phi <2 x float> [ %i.all, %.noexc235 ], [ zeroinitializer, %.noexc218 ]
  %i.rw = shl i64 %indvar.i, 2
  %i.rx = add i64 %i.rw, 4                        ; 2 uses
  %i.ry = mul i64 %indvar.i, 12
  %i.rz = shl nuw nsw i64 %indvar.i, 2            ; 2 uses
  %i.sa = trunc nuw nsw i64 %indvar.i to i32      ; 5 uses
  %i.sb = mul nuw nsw i64 %indvar.i, 12           ; 3 uses
  %indvar.next.i = add nuw i64 %indvar.i, 1       ; 5 uses
  %i.sc = trunc nuw nsw i64 %indvar.next.i to i32 ; 3 uses
  %i.sd = uitofp nneg i32 %i.sc to float          ; 6 uses
  %i.se = sext i32 %.0306.i to i64
  %.not.i = icmp slt i64 %indvar.i, %i.se
  br i1 %.not.i, label %.loopexit511.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.sf = add nsw i32 %.0306.i, 100               ; 3 uses
  %i.sg = sext i32 %i.sf to i64                   ; 7 uses
  %i.sh = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.59, i32 noundef 466, ptr noundef %.0503.i, i64 noundef range(i64 -2147483548, 2147483648) %i.sg, i64 noundef 4)
          to label %.noexc219 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc219:                                        ; preds = %bb.cb
  %i.si = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.59, i32 noundef 467, ptr noundef %.0497.i, i64 noundef range(i64 -2147483548, 2147483648) %i.sg, i64 noundef 12)
          to label %.noexc220 unwind label %.loopexit.split-lp.loopexit ; 3 uses

.noexc220:                                        ; preds = %.noexc219
  %i.sj = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.59, i32 noundef 468, ptr noundef %.0489.i, i64 noundef range(i64 -2147483548, 2147483648) %i.sg, i64 noundef 12)
          to label %.noexc221 unwind label %.loopexit.split-lp.loopexit ; 3 uses

.noexc221:                                        ; preds = %.noexc220
  %i.sk = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.59, i32 noundef 469, ptr noundef %.0487.i, i64 noundef range(i64 -2147483548, 2147483648) %i.sg, i64 noundef 4)
          to label %.noexc222 unwind label %.loopexit.split-lp.loopexit ; 3 uses

.noexc222:                                        ; preds = %.noexc221
  %i.sl = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.59, i32 noundef 470, ptr noundef %.0485.i, i64 noundef range(i64 -2147483548, 2147483648) %i.sg, i64 noundef 12)
          to label %.noexc223 unwind label %.loopexit.split-lp.loopexit ; 3 uses

.noexc223:                                        ; preds = %.noexc222
  %i.sm = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.59, i32 noundef 471, ptr noundef %.0481.i, i64 noundef range(i64 -2147483548, 2147483648) %i.sg, i64 noundef 4)
          to label %.noexc224 unwind label %.loopexit.split-lp.loopexit ; 3 uses

.noexc224:                                        ; preds = %.noexc223
  %i.sn = icmp slt i64 %indvar.i, %i.sg
  br i1 %i.sn, label %.lr.ph.preheader.i217, label %.loopexit511.i

.lr.ph.preheader.i217:                            ; preds = %.noexc224
  %scevgep.i = getelementptr i8, ptr %i.sj, i64 %i.sb
  %reass.sub = sub i32 %.0306.i, %i.sa
  %i.so = add i32 %reass.sub, 99
  %i.sp = zext i32 %i.so to i64                   ; 2 uses
  %i.sq = mul nuw nsw i64 %i.sp, 12
  %i.sr = add nuw nsw i64 %i.sq, 12               ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.sr, i1 false), !tbaa !24
  %scevgep593.i = getelementptr i8, ptr %i.si, i64 %i.sb
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep593.i, i8 0, i64 %i.sr, i1 false), !tbaa !24
  %scevgep594.i = getelementptr i8, ptr %i.sl, i64 %i.sb
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep594.i, i8 0, i64 %i.sr, i1 false), !tbaa !24
  %scevgep595.i = getelementptr i8, ptr %i.sk, i64 %i.rz
  %i.ss = shl nuw nsw i64 %i.sp, 2
  %i.st = add nuw nsw i64 %i.ss, 4                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep595.i, i8 0, i64 %i.st, i1 false), !tbaa !24
  %scevgep596.i = getelementptr i8, ptr %i.sm, i64 %i.rz
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep596.i, i8 0, i64 %i.st, i1 false), !tbaa !24
  br label %.loopexit511.i

.loopexit511.i:                                   ; preds = %.lr.ph.preheader.i217, %.noexc224, %bb.ca
  %.1504.i = phi ptr [ %.0503.i, %bb.ca ], [ %i.sh, %.noexc224 ], [ %i.sh, %.lr.ph.preheader.i217 ] ; 20 uses
  %.1498.i = phi ptr [ %.0497.i, %bb.ca ], [ %i.si, %.noexc224 ], [ %i.si, %.lr.ph.preheader.i217 ] ; 5 uses
  %.1490.i = phi ptr [ %.0489.i, %bb.ca ], [ %i.sj, %.noexc224 ], [ %i.sj, %.lr.ph.preheader.i217 ] ; 2 uses
  %.1488.i = phi ptr [ %.0487.i, %bb.ca ], [ %i.sk, %.noexc224 ], [ %i.sk, %.lr.ph.preheader.i217 ] ; 16 uses
  %.1486.i = phi ptr [ %.0485.i, %bb.ca ], [ %i.sl, %.noexc224 ], [ %i.sl, %.lr.ph.preheader.i217 ] ; 7 uses
  %.1.i = phi ptr [ %.0481.i, %bb.ca ], [ %i.sm, %.noexc224 ], [ %i.sm, %.lr.ph.preheader.i217 ] ; 8 uses
  %.1307.i = phi i32 [ %.0306.i, %bb.ca ], [ %i.sf, %.noexc224 ], [ %i.sf, %.lr.ph.preheader.i217 ]
  %.not320.i = icmp eq ptr %.1504.i, null
  br i1 %.not320.i, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %.loopexit511.i
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.126, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZL10dielectricP8_IO_FILES0_S0_S0_S0_S0_bbb7PbcType10t_topology10t_trxframefffffP11t_trxstatusiiiPKiPiPfS9_fPK16gmx_output_env_tENK3$_0clEv", ptr noundef nonnull @.str.59, i32 noundef 482) #20
          to label %.noexc225 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc225:                                        ; preds = %bb.cc
  unreachable

bb.cd:                                            ; preds = %.loopexit511.i
  %i.su = icmp eq i64 %indvar.i, 0
  %i.sv = load float, ptr %i.ra, align 4          ; 2 uses
  %.1295.i = select i1 %i.su, float %i.sv, float %.0294.i ; 2 uses
  %i.sw = fsub float %i.sv, %.1295.i              ; 3 uses
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %.1504.i, i64 %indvar.i ; 5 uses
  store float %i.sw, ptr %i.sx, align 4, !tbaa !24
  %i.sy = fcmp ugt float %i.sw, %i.qm
  %.1293.i = select i1 %i.sy, i32 %.0292.i, i32 %i.sa ; 4 uses
  %i.sz = fcmp ugt float %i.sw, %i.qn
  %.1291.i = select i1 %i.sz, i32 %.0290.i, i32 %i.sa ; 5 uses
  br i1 %i.qj, label %bb.ce, label %.loopexit510.i

bb.ce:                                            ; preds = %bb.cd
  %.not321.i = icmp eq ptr %.0494.i, null
  %i.ta = load i32, ptr %i.qx, align 8, !tbaa !130 ; 4 uses
  br i1 %.not321.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.tb = load ptr, ptr %i.rc, align 8, !tbaa !131
  %i.tc = load float, ptr %i.rb, align 4, !tbaa !24
  %i.td = fmul float %i.tc, 5.000000e-01          ; 3 uses
  %i.te = load float, ptr %i.re, align 4, !tbaa !24
  %i.tf = fmul float %i.te, 5.000000e-01          ; 3 uses
  %i.tg = load float, ptr %i.rg, align 4, !tbaa !24
  %i.th = fmul float %i.tg, 5.000000e-01          ; 3 uses
  %i.ti = icmp sgt i32 %i.ta, 0
  br i1 %i.ti, label %.preheader49.preheader.i.i, label %.loopexit510.i

.preheader49.preheader.i.i:                       ; preds = %bb.cf
  %wide.trip.count.i.i = zext nneg i32 %i.ta to i64
  %i.tj = fneg float %i.th                        ; 2 uses
  %i.tk = fneg float %i.tf                        ; 2 uses
  %i.tl = fneg float %i.td                        ; 2 uses
  br label %.preheader49.i.i

.preheader49.i.i:                                 ; preds = %._crit_edge.2.i.i, %.preheader49.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader49.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.2.i.i ] ; 3 uses
  %i.tm = getelementptr inbounds nuw [12 x i8], ptr %i.tb, i64 %indvars.iv.i.i ; 14 uses
  %i.tn = getelementptr inbounds nuw [12 x i8], ptr %.0494.i, i64 %indvars.iv.i.i ; 5 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tm, i64 8 ; 3 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tn, i64 8 ; 3 uses
  %i.tq = load float, ptr %i.to, align 4, !tbaa !24 ; 3 uses
  %i.tr = load float, ptr %i.tp, align 4, !tbaa !24
  %i.ts = fsub float %i.tq, %i.tr                 ; 2 uses
  %i.tt = fcmp ugt float %i.ts, %i.tj
  br i1 %i.tt, label %.preheader47.i.i, label %.preheader45.lr.ph.i.i

.preheader45.lr.ph.i.i:                           ; preds = %.preheader49.i.i
  %.pre.i.i = load float, ptr %i.tm, align 4, !tbaa !24
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.tm, i64 4 ; 2 uses
  %.pre96.i.i = load float, ptr %.phi.trans.insert.i.i, align 4, !tbaa !24
  br label %.preheader45.i.i

.preheader47.i.i:                                 ; preds = %.preheader45.i.i, %.preheader49.i.i
  %.pre-phi.i.i = phi float [ %i.ts, %.preheader49.i.i ], [ %i.ug, %.preheader45.i.i ]
  %i.tu = phi float [ %i.tq, %.preheader49.i.i ], [ %i.ue, %.preheader45.i.i ]
  %i.tv = fcmp ogt float %.pre-phi.i.i, %i.th
  br i1 %i.tv, label %.preheader.lr.ph.i.i, label %.preheader47.._crit_edge_crit_edge.i.i

.preheader47.._crit_edge_crit_edge.i.i:           ; preds = %.preheader47.i.i
  %.phi.trans.insert100.i.i = getelementptr inbounds nuw i8, ptr %i.tm, i64 4
  %.pre101.i.i = load float, ptr %.phi.trans.insert100.i.i, align 4, !tbaa !24
  %.pre104.pre.pre.i.i = load float, ptr %i.tm, align 4, !tbaa !24
  br label %._crit_edge.i.i211

.preheader.lr.ph.i.i:                             ; preds = %.preheader47.i.i
  %.pre97.i.i = load float, ptr %i.tm, align 4, !tbaa !24
  %.phi.trans.insert98.i.i = getelementptr inbounds nuw i8, ptr %i.tm, i64 4 ; 2 uses
  %.pre99.i.i = load float, ptr %.phi.trans.insert98.i.i, align 4, !tbaa !24
  br label %.preheader.i.i

.preheader45.i.i:                                 ; preds = %.preheader45.i.i, %.preheader45.lr.ph.i.i
  %i.tw = phi float [ %i.tq, %.preheader45.lr.ph.i.i ], [ %i.ue, %.preheader45.i.i ]
  %i.tx = phi float [ %.pre96.i.i, %.preheader45.lr.ph.i.i ], [ %i.uc, %.preheader45.i.i ]
  %i.ty = phi float [ %.pre.i.i, %.preheader45.lr.ph.i.i ], [ %i.ua, %.preheader45.i.i ]
  %i.tz = load float, ptr %i.rf, align 4, !tbaa !24
  %i.ua = fadd float %i.ty, %i.tz                 ; 2 uses
  store float %i.ua, ptr %i.tm, align 4, !tbaa !24
  %i.ub = load float, ptr %i.rh, align 8, !tbaa !24
  %i.uc = fadd float %i.tx, %i.ub                 ; 2 uses
  store float %i.uc, ptr %.phi.trans.insert.i.i, align 4, !tbaa !24
  %i.ud = load float, ptr %i.rg, align 4, !tbaa !24
  %i.ue = fadd float %i.tw, %i.ud                 ; 4 uses
  store float %i.ue, ptr %i.to, align 4, !tbaa !24
  %i.uf = load float, ptr %i.tp, align 4, !tbaa !24
  %i.ug = fsub float %i.ue, %i.uf                 ; 2 uses
  %i.uh = fcmp ugt float %i.ug, %i.tj
  br i1 %i.uh, label %.preheader47.i.i, label %.preheader45.i.i, !llvm.loop !45

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.lr.ph.i.i
  %i.ui = phi float [ %i.tu, %.preheader.lr.ph.i.i ], [ %i.uq, %.preheader.i.i ]
  %i.uj = phi float [ %.pre99.i.i, %.preheader.lr.ph.i.i ], [ %i.uo, %.preheader.i.i ]
  %i.uk = phi float [ %.pre97.i.i, %.preheader.lr.ph.i.i ], [ %i.um, %.preheader.i.i ]
  %i.ul = load float, ptr %i.rf, align 4, !tbaa !24
  %i.um = fsub float %i.uk, %i.ul                 ; 3 uses
  store float %i.um, ptr %i.tm, align 4, !tbaa !24
  %i.un = load float, ptr %i.rh, align 8, !tbaa !24
  %i.uo = fsub float %i.uj, %i.un                 ; 3 uses
  store float %i.uo, ptr %.phi.trans.insert98.i.i, align 4, !tbaa !24
  %i.up = load float, ptr %i.rg, align 4, !tbaa !24
  %i.uq = fsub float %i.ui, %i.up                 ; 3 uses
  store float %i.uq, ptr %i.to, align 4, !tbaa !24
  %i.ur = load float, ptr %i.tp, align 4, !tbaa !24
  %i.us = fsub float %i.uq, %i.ur
  %i.ut = fcmp ogt float %i.us, %i.th
  br i1 %i.ut, label %.preheader.i.i, label %._crit_edge.i.i211, !llvm.loop !46

._crit_edge.i.i211:                               ; preds = %.preheader.i.i, %.preheader47.._crit_edge_crit_edge.i.i
  %.pre104.pre.i.i = phi float [ %.pre104.pre.pre.i.i, %.preheader47.._crit_edge_crit_edge.i.i ], [ %i.um, %.preheader.i.i ] ; 2 uses
  %i.uu = phi float [ %.pre101.i.i, %.preheader47.._crit_edge_crit_edge.i.i ], [ %i.uo, %.preheader.i.i ] ; 3 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.tm, i64 4 ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.tn, i64 4 ; 3 uses
  %i.ux = load float, ptr %i.uw, align 4, !tbaa !24
  %i.uy = fsub float %i.uu, %i.ux                 ; 2 uses
  %i.uz = fcmp ugt float %i.uy, %i.tk
  br i1 %i.uz, label %.preheader47.1.i.i, label %.preheader45.1.i.i

.preheader45.1.i.i:                               ; preds = %._crit_edge.i.i211, %.preheader45.1.i.i
  %i.va = phi float [ %i.vf, %.preheader45.1.i.i ], [ %i.uu, %._crit_edge.i.i211 ]
  %i.vb = phi float [ %i.vd, %.preheader45.1.i.i ], [ %.pre104.pre.i.i, %._crit_edge.i.i211 ]
  %i.vc = load float, ptr %i.rd, align 8, !tbaa !24
  %i.vd = fadd float %i.vb, %i.vc                 ; 3 uses
  store float %i.vd, ptr %i.tm, align 4, !tbaa !24
  %i.ve = load float, ptr %i.re, align 4, !tbaa !24
  %i.vf = fadd float %i.va, %i.ve                 ; 4 uses
  store float %i.vf, ptr %i.uv, align 4, !tbaa !24
end_hunk_0
begin_hunk_1_@_Z11gmx_currentiPPc:bb.a
  %indvars.iv.next.i336.i = add nsw i64 %indvars.iv.i335.i, 1 ; 2 uses
  %i.aak = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %indvars.iv.next.i336.i
  %i.aal = load float, ptr %i.aak, align 4, !tbaa !24 ; 2 uses
  %i.aam = getelementptr inbounds [12 x i8], ptr %i.yq, i64 %indvars.iv.next.i336.i ; 2 uses
  %i.aan = load <2 x float>, ptr %i.aam, align 4, !tbaa !24
  %i.aao = insertelement <2 x float> poison, float %i.aal, i64 0
  %i.aap = shufflevector <2 x float> %i.aao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aaq = fmul <2 x float> %i.aap, %i.aan
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aam, i64 8
  %i.aas = load float, ptr %i.aar, align 4, !tbaa !24
  %i.aat = fmul float %i.aal, %i.aas
  %i.aau = fadd <2 x float> %i.aai, %i.aaq
  %i.aav = fadd float %i.aaj, %i.aat
  %indvars.iv.next.i336.i.1 = add nsw i64 %indvars.iv.i335.i, 2 ; 2 uses
  %i.aaw = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %indvars.iv.next.i336.i.1
  %i.aax = load float, ptr %i.aaw, align 4, !tbaa !24 ; 2 uses
  %i.aay = getelementptr inbounds [12 x i8], ptr %i.yq, i64 %indvars.iv.next.i336.i.1 ; 2 uses
  %i.aaz = load <2 x float>, ptr %i.aay, align 4, !tbaa !24
  %i.aba = insertelement <2 x float> poison, float %i.aax, i64 0
  %i.abb = shufflevector <2 x float> %i.aba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abc = fmul <2 x float> %i.abb, %i.aaz
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aay, i64 8
  %i.abe = load float, ptr %i.abd, align 4, !tbaa !24
  %i.abf = fmul float %i.aax, %i.abe
  %i.abg = fadd <2 x float> %i.aau, %i.abc
  %i.abh = fadd float %i.aav, %i.abf
  %indvars.iv.next.i336.i.2 = add nsw i64 %indvars.iv.i335.i, 3 ; 2 uses
  %i.abi = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %indvars.iv.next.i336.i.2
  %i.abj = load float, ptr %i.abi, align 4, !tbaa !24 ; 2 uses
  %i.abk = getelementptr inbounds [12 x i8], ptr %i.yq, i64 %indvars.iv.next.i336.i.2 ; 2 uses
  %i.abl = load <2 x float>, ptr %i.abk, align 4, !tbaa !24
  %i.abm = insertelement <2 x float> poison, float %i.abj, i64 0
  %i.abn = shufflevector <2 x float> %i.abm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abo = fmul <2 x float> %i.abn, %i.abl
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abk, i64 8
  %i.abq = load float, ptr %i.abp, align 4, !tbaa !24
  %i.abr = fmul float %i.abj, %i.abq
  %i.abs = fadd <2 x float> %i.abg, %i.abo        ; 2 uses
  %i.abt = fadd float %i.abh, %i.abr              ; 2 uses
  %indvars.iv.next.i336.i.3 = add nsw i64 %indvars.iv.i335.i, 4 ; 2 uses
  %exitcond.not.i337.i.3 = icmp eq i64 %indvars.iv.next.i336.i.3, %wide.trip.count.i334.i
  br i1 %exitcond.not.i337.i.3, label %._crit_edge.i338.i, label %.lr.ph.i.i, !llvm.loop !55

._crit_edge.i338.i:                               ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.lcssa824 = phi <2 x float> [ %.lcssa824.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.abs, %.lr.ph.i.i ] ; 2 uses
  %.lcssa823 = phi float [ %.lcssa823.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.abt, %.lr.ph.i.i ] ; 2 uses
  store <2 x float> %.lcssa824, ptr %i.b, align 8, !tbaa !24
  store float %.lcssa823, ptr %i.rj, align 8, !tbaa !24
  br label %bb.cj

bb.cj:                                            ; preds = %._crit_edge.i338.i, %bb.ci
  %i.abu = phi float [ %.lcssa823, %._crit_edge.i338.i ], [ 0.000000e+00, %bb.ci ]
  %i.abv = phi <2 x float> [ %.lcssa824, %._crit_edge.i338.i ], [ zeroinitializer, %bb.ci ]
  br i1 %i.qj, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.abw = sext i32 %i.yx to i64
  %i.abx = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.abw
  %i.aby = load float, ptr %i.abx, align 4, !tbaa !24 ; 2 uses
  %i.abz = insertelement <2 x float> poison, float %i.aby, i64 0
  %i.aca = shufflevector <2 x float> %i.abz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acb = fmul <2 x float> %i.abv, %i.aca
  %i.acc = fmul float %i.abu, %i.aby
  br label %bb.cm

bb.cl:                                            ; preds = %bb.cj
  invoke void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c)
          to label %.noexc230 unwind label %.loopexit

.noexc230:                                        ; preds = %bb.cl
  %i.acd = sext i32 %i.yx to i64
  %i.ace = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.acd
  %i.acf = load float, ptr %i.ace, align 4, !tbaa !24 ; 2 uses
  %i.acg = load <2 x float>, ptr %i.c, align 8, !tbaa !24
  %i.ach = insertelement <2 x float> poison, float %i.acf, i64 0
  %i.aci = shufflevector <2 x float> %i.ach, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acj = fmul <2 x float> %i.aci, %i.acg
  %i.ack = load float, ptr %i.rk, align 8, !tbaa !24
  %i.acl = fmul float %i.acf, %i.ack
  br label %bb.cm

bb.cm:                                            ; preds = %.noexc230, %bb.ck
  %storemerge.i.i = phi float [ %i.acc, %bb.ck ], [ %i.acl, %.noexc230 ] ; 2 uses
  %i.acm = phi <2 x float> [ %i.acb, %bb.ck ], [ %i.acj, %.noexc230 ] ; 2 uses
  store <2 x float> %i.acm, ptr %i.b, align 8, !tbaa !24
  store float %storemerge.i.i, ptr %i.rj, align 8, !tbaa !24
  %i.acn = load float, ptr %i.ys, align 4, !tbaa !24
  %i.aco = fadd float %storemerge.i.i, %i.acn
  %i.acp = load <2 x float>, ptr %i.yr, align 4, !tbaa !24
  %i.acq = fadd <2 x float> %i.acm, %i.acp
  store <2 x float> %i.acq, ptr %i.yr, align 4, !tbaa !24
  store float %i.aco, ptr %i.ys, align 4, !tbaa !24
  %exitcond17.not.i.i = icmp eq i64 %indvars.iv.next14.i.i, %wide.trip.count16.i.i
  br i1 %exitcond17.not.i.i, label %_ZL7calc_mj10t_topology7PbcTypePA3_fbiPKiS2_PfS5_S5_.exit.i, label %bb.ci, !llvm.loop !56

_ZL7calc_mj10t_topology7PbcTypePA3_fbiPKiS2_PfS5_S5_.exit.i: ; preds = %bb.cm, %.noexc229
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br i1 %i.rl, label %.lr.ph549.i, label %._crit_edge.i210

.lr.ph549.i:                                      ; preds = %_ZL7calc_mj10t_topology7PbcTypePA3_fbiPKiS2_PfS5_S5_.exit.i
  %i.acr = load ptr, ptr %i.rm, align 8, !tbaa !134 ; 3 uses
  %i.acs = load ptr, ptr %i.rc, align 8, !tbaa !131 ; 3 uses
  %i.act = getelementptr inbounds nuw [12 x i8], ptr %.1498.i, i64 %indvar.i ; 7 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 8 ; 6 uses
  br i1 %i.rs, label %.epil.preheader, label %.lr.ph549.i.new

.lr.ph549.i.new:                                  ; preds = %.lr.ph549.i, %.lr.ph549.i.new
  %indvars.iv599.i = phi i64 [ %indvars.iv.next600.i.1, %.lr.ph549.i.new ], [ 0, %.lr.ph549.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph549.i.new ], [ 0, %.lr.ph549.i ]
  %i.acv = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %indvars.iv599.i
  %i.acw = load i32, ptr %i.acv, align 4, !tbaa !10
  %i.acx = sext i32 %i.acw to i64                 ; 2 uses
  %i.acy = getelementptr inbounds [36 x i8], ptr %i.acr, i64 %i.acx
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 4
  %i.ada = load float, ptr %i.acz, align 4, !tbaa !113 ; 2 uses
  %i.adb = getelementptr inbounds [12 x i8], ptr %i.acs, i64 %i.acx ; 3 uses
  %i.adc = load <2 x float>, ptr %i.adb, align 4, !tbaa !24
  %i.add = insertelement <2 x float> poison, float %i.ada, i64 0
  %i.ade = shufflevector <2 x float> %i.add, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adf = fmul <2 x float> %i.ade, %i.adc        ; 2 uses
  store <2 x float> %i.adf, ptr %i.adb, align 4, !tbaa !24
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adb, i64 8 ; 2 uses
  %i.adh = load float, ptr %i.adg, align 4, !tbaa !24
  %i.adi = fmul float %i.ada, %i.adh              ; 2 uses
  store float %i.adi, ptr %i.adg, align 4, !tbaa !24
  %i.adj = load float, ptr %i.acu, align 4, !tbaa !24
  %i.adk = fadd float %i.adi, %i.adj
  %i.adl = load <2 x float>, ptr %i.act, align 4, !tbaa !24
  %i.adm = fadd <2 x float> %i.adf, %i.adl
  store <2 x float> %i.adm, ptr %i.act, align 4, !tbaa !24
  store float %i.adk, ptr %i.acu, align 4, !tbaa !24
  %i.adn = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %indvars.iv599.i
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adn, i64 4
  %i.adp = load i32, ptr %i.ado, align 4, !tbaa !10
  %i.adq = sext i32 %i.adp to i64                 ; 2 uses
  %i.adr = getelementptr inbounds [36 x i8], ptr %i.acr, i64 %i.adq
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 4
  %i.adt = load float, ptr %i.ads, align 4, !tbaa !113 ; 2 uses
  %i.adu = getelementptr inbounds [12 x i8], ptr %i.acs, i64 %i.adq ; 3 uses
  %i.adv = load <2 x float>, ptr %i.adu, align 4, !tbaa !24
  %i.adw = insertelement <2 x float> poison, float %i.adt, i64 0
  %i.adx = shufflevector <2 x float> %i.adw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ady = fmul <2 x float> %i.adx, %i.adv        ; 2 uses
  store <2 x float> %i.ady, ptr %i.adu, align 4, !tbaa !24
  %i.adz = getelementptr inbounds nuw i8, ptr %i.adu, i64 8 ; 2 uses
  %i.aea = load float, ptr %i.adz, align 4, !tbaa !24
  %i.aeb = fmul float %i.adt, %i.aea              ; 2 uses
  store float %i.aeb, ptr %i.adz, align 4, !tbaa !24
  %i.aec = load float, ptr %i.acu, align 4, !tbaa !24
  %i.aed = fadd float %i.aeb, %i.aec
  %i.aee = load <2 x float>, ptr %i.act, align 4, !tbaa !24
  %i.aef = fadd <2 x float> %i.ady, %i.aee
  store <2 x float> %i.aef, ptr %i.act, align 4, !tbaa !24
  store float %i.aed, ptr %i.acu, align 4, !tbaa !24
  %indvars.iv.next600.i.1 = add nuw nsw i64 %indvars.iv599.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i210.loopexit.unr-lcssa, label %.lr.ph549.i.new, !llvm.loop !57

._crit_edge.i210.loopexit.unr-lcssa:              ; preds = %.lr.ph549.i.new
  br i1 %lcmp.mod885.not, label %._crit_edge.i210, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i210.loopexit.unr-lcssa, %.lr.ph549.i
  %indvars.iv599.i.epil.init = phi i64 [ 0, %.lr.ph549.i ], [ %indvars.iv.next600.i.1, %._crit_edge.i210.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod886)
  %i.aeg = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %indvars.iv599.i.epil.init
  %i.aeh = load i32, ptr %i.aeg, align 4, !tbaa !10
  %i.aei = sext i32 %i.aeh to i64                 ; 2 uses
  %i.aej = getelementptr inbounds [36 x i8], ptr %i.acr, i64 %i.aei
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aej, i64 4
  %i.ael = load float, ptr %i.aek, align 4, !tbaa !113 ; 2 uses
  %i.aem = getelementptr inbounds [12 x i8], ptr %i.acs, i64 %i.aei ; 3 uses
  %i.aen = load <2 x float>, ptr %i.aem, align 4, !tbaa !24
  %i.aeo = insertelement <2 x float> poison, float %i.ael, i64 0
  %i.aep = shufflevector <2 x float> %i.aeo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aeq = fmul <2 x float> %i.aep, %i.aen        ; 2 uses
  store <2 x float> %i.aeq, ptr %i.aem, align 4, !tbaa !24
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aem, i64 8 ; 2 uses
  %i.aes = load float, ptr %i.aer, align 4, !tbaa !24
  %i.aet = fmul float %i.ael, %i.aes              ; 2 uses
  store float %i.aet, ptr %i.aer, align 4, !tbaa !24
  %i.aeu = load float, ptr %i.acu, align 4, !tbaa !24
  %i.aev = fadd float %i.aet, %i.aeu
  %i.aew = load <2 x float>, ptr %i.act, align 4, !tbaa !24
  %i.aex = fadd <2 x float> %i.aeq, %i.aew
  store <2 x float> %i.aex, ptr %i.act, align 4, !tbaa !24
  store float %i.aev, ptr %i.acu, align 4, !tbaa !24
  br label %._crit_edge.i210

._crit_edge.i210:                                 ; preds = %.epil.preheader, %._crit_edge.i210.loopexit.unr-lcssa, %_ZL7calc_mj10t_topology7PbcTypePA3_fbiPKiS2_PfS5_S5_.exit.i
  %i.aey = srem i32 %i.sa, %i.qs
  %i.aez = icmp eq i32 %i.aey, 0
  br i1 %i.aez, label %.preheader508.i, label %.loopexit509.i

.preheader508.i:                                  ; preds = %._crit_edge.i210
  %i.afa = getelementptr inbounds nuw i8, ptr %i.yr, i64 4 ; 2 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %i.yr, i64 8 ; 2 uses
  %min.iters.check740 = icmp ult i64 %indvar.i, 7
  br i1 %min.iters.check740, label %scalar.ph739.preheader, label %vector.memcheck716

vector.memcheck716:                               ; preds = %.preheader508.i
  %scevgep717 = getelementptr i8, ptr %.1488.i, i64 %i.rx ; 3 uses
  %scevgep718 = getelementptr i8, ptr %.1.i, i64 %i.rx ; 3 uses
  %i.afc = getelementptr i8, ptr %.1486.i, i64 %i.ry
  %scevgep719 = getelementptr i8, ptr %i.afc, i64 12 ; 4 uses
  %bound0720 = icmp ult ptr %.1488.i, %scevgep718
  %bound1721 = icmp ult ptr %.1.i, %scevgep717
  %found.conflict722 = and i1 %bound0720, %bound1721
  %bound0723 = icmp ult ptr %.1488.i, %scevgep719
  %bound1724 = icmp ult ptr %.1486.i, %scevgep717
  %found.conflict725 = and i1 %bound0723, %bound1724
  %conflict.rdx726 = or i1 %found.conflict722, %found.conflict725
  %bound0727 = icmp ult ptr %.1488.i, %scevgep719
  %bound1728 = icmp ult ptr %i.yr, %scevgep717
  %found.conflict729 = and i1 %bound0727, %bound1728
  %conflict.rdx730 = or i1 %conflict.rdx726, %found.conflict729
  %bound0731 = icmp ult ptr %.1.i, %scevgep719
  %bound1732 = icmp ult ptr %.1486.i, %scevgep718
  %found.conflict733 = and i1 %bound0731, %bound1732
  %conflict.rdx734 = or i1 %conflict.rdx730, %found.conflict733
  %bound0735 = icmp ult ptr %.1.i, %scevgep719
  %bound1736 = icmp ult ptr %i.yr, %scevgep718
  %found.conflict737 = and i1 %bound0735, %bound1736
  %conflict.rdx738 = or i1 %conflict.rdx734, %found.conflict737
  br i1 %conflict.rdx738, label %scalar.ph739.preheader, label %vector.ph741

vector.ph741:                                     ; preds = %vector.memcheck716
  %n.vec742 = and i64 %indvar.next.i, -8          ; 3 uses
  %i.afd = sub i64 %indvar.i, %n.vec742
  %i.afe = load float, ptr %i.yr, align 4, !tbaa !24, !alias.scope !135
  %broadcast.splatinsert749 = insertelement <8 x float> poison, float %i.afe, i64 0
  %broadcast.splat750 = shufflevector <8 x float> %broadcast.splatinsert749, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aff = load float, ptr %i.afa, align 4, !tbaa !24, !alias.scope !135
  %broadcast.splatinsert751 = insertelement <8 x float> poison, float %i.aff, i64 0
  %broadcast.splat752 = shufflevector <8 x float> %broadcast.splatinsert751, <8 x float> poison, <8 x i32> zeroinitializer
  %i.afg = load float, ptr %i.afb, align 4, !tbaa !24, !alias.scope !135
  %broadcast.splatinsert753 = insertelement <8 x float> poison, float %i.afg, i64 0
  %broadcast.splat754 = shufflevector <8 x float> %broadcast.splatinsert753, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body743

vector.body743:                                   ; preds = %vector.body743, %vector.ph741
  %index744 = phi i64 [ 0, %vector.ph741 ], [ %index.next756, %vector.body743 ] ; 4 uses
  %i.afh = sub i64 %indvar.i, %index744
  %i.afi = getelementptr inbounds nuw [12 x i8], ptr %.1486.i, i64 %i.afh
  %i.afj = getelementptr inbounds i8, ptr %i.afi, i64 -84
  %wide.vec = load <24 x float>, ptr %i.afj, align 4, !tbaa !24, !alias.scope !136 ; 3 uses
  %reverse = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 21, i32 18, i32 15, i32 12, i32 9, i32 6, i32 3, i32 0>
  %reverse746 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 22, i32 19, i32 16, i32 13, i32 10, i32 7, i32 4, i32 1>
  %reverse748 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 23, i32 20, i32 17, i32 14, i32 11, i32 8, i32 5, i32 2>
  %i.afk = fsub <8 x float> %broadcast.splat750, %reverse ; 2 uses
  %i.afl = fsub <8 x float> %broadcast.splat752, %reverse746 ; 2 uses
  %i.afm = fsub <8 x float> %broadcast.splat754, %reverse748 ; 2 uses
  %i.afn = fmul <8 x float> %i.afl, %i.afl
  %i.afo = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.afk, <8 x float> %i.afk, <8 x float> %i.afn)
  %i.afp = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.afm, <8 x float> %i.afm, <8 x float> %i.afo)
  %i.afq = getelementptr inbounds nuw [4 x i8], ptr %.1488.i, i64 %index744 ; 2 uses
  %wide.load = load <8 x float>, ptr %i.afq, align 4, !tbaa !24, !alias.scope !137, !noalias !138
  %i.afr = fadd <8 x float> %wide.load, %i.afp
  store <8 x float> %i.afr, ptr %i.afq, align 4, !tbaa !24, !alias.scope !137, !noalias !138
  %i.afs = getelementptr inbounds nuw [4 x i8], ptr %.1.i, i64 %index744 ; 2 uses
  %wide.load755 = load <8 x float>, ptr %i.afs, align 4, !tbaa !24, !alias.scope !139, !noalias !140
  %i.aft = fadd <8 x float> %wide.load755, splat (float 1.000000e+00)
  store <8 x float> %i.aft, ptr %i.afs, align 4, !tbaa !24, !alias.scope !139, !noalias !140
  %index.next756 = add nuw i64 %index744, 8       ; 2 uses
  %i.afu = icmp eq i64 %index.next756, %n.vec742
  br i1 %i.afu, label %middle.block757, label %vector.body743, !llvm.loop !63

middle.block757:                                  ; preds = %vector.body743
  %cmp.n758 = icmp eq i64 %indvar.next.i, %n.vec742
  br i1 %cmp.n758, label %.loopexit509.i, label %scalar.ph739.preheader

scalar.ph739.preheader:                           ; preds = %vector.memcheck716, %.preheader508.i, %middle.block757
  %indvars.iv604.i.ph = phi i64 [ %indvar.i, %vector.memcheck716 ], [ %indvar.i, %.preheader508.i ], [ %i.afd, %middle.block757 ]
  br label %scalar.ph739

scalar.ph739:                                     ; preds = %scalar.ph739.preheader, %scalar.ph739
  %indvars.iv604.i = phi i64 [ %indvars.iv.next605.i, %scalar.ph739 ], [ %indvars.iv604.i.ph, %scalar.ph739.preheader ] ; 4 uses
  %i.afv = getelementptr inbounds nuw [12 x i8], ptr %.1486.i, i64 %indvars.iv604.i ; 3 uses
  %i.afw = load float, ptr %i.yr, align 4, !tbaa !24
  %i.afx = load float, ptr %i.afv, align 4, !tbaa !24
  %i.afy = fsub float %i.afw, %i.afx              ; 2 uses
  %i.afz = load float, ptr %i.afa, align 4, !tbaa !24
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afv, i64 4
  %i.agb = load float, ptr %i.aga, align 4, !tbaa !24
  %i.agc = fsub float %i.afz, %i.agb              ; 2 uses
  %i.agd = load float, ptr %i.afb, align 4, !tbaa !24
  %i.age = getelementptr inbounds nuw i8, ptr %i.afv, i64 8
  %i.agf = load float, ptr %i.age, align 4, !tbaa !24
  %i.agg = fsub float %i.agd, %i.agf              ; 2 uses
  %i.agh = fmul float %i.agc, %i.agc
  %i.agi = call float @llvm.fmuladd.f32(float %i.afy, float %i.afy, float %i.agh)
  %i.agj = call noundef float @llvm.fmuladd.f32(float %i.agg, float %i.agg, float %i.agi)
  %i.agk = sub nuw nsw i64 %indvar.i, %indvars.iv604.i ; 2 uses
  %i.agl = getelementptr inbounds nuw [4 x i8], ptr %.1488.i, i64 %i.agk ; 2 uses
  %i.agm = load float, ptr %i.agl, align 4, !tbaa !24
  %i.agn = fadd float %i.agm, %i.agj
  store float %i.agn, ptr %i.agl, align 4, !tbaa !24
  %i.ago = getelementptr inbounds nuw [4 x i8], ptr %.1.i, i64 %i.agk ; 2 uses
  %i.agp = load float, ptr %i.ago, align 4, !tbaa !24
  %i.agq = fadd float %i.agp, 1.000000e+00
  store float %i.agq, ptr %i.ago, align 4, !tbaa !24
  %indvars.iv.next605.i = add nsw i64 %indvars.iv604.i, -1
  %i.agr = icmp sgt i64 %indvars.iv604.i, 0
  br i1 %i.agr, label %scalar.ph739, label %.loopexit509.i, !llvm.loop !64

.loopexit509.i:                                   ; preds = %scalar.ph739, %middle.block757, %._crit_edge.i210
  %i.ags = load i8, ptr %i.rn, align 8, !tbaa !124, !range !125, !noundef !126
  %i.agt = trunc nuw i8 %i.ags to i1
  br i1 %i.agt, label %bb.cn, label %bb.db

bb.cn:                                            ; preds = %.loopexit509.i
  %.not322.i = icmp slt i32 %.0303.i, %.0308.i
  br i1 %.not322.i, label %.noexc234, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.agu = add nsw i32 %.0308.i, 100              ; 3 uses
  %i.agv = sext i32 %i.agu to i64                 ; 4 uses
  %i.agw = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.59, i32 noundef 545, ptr noundef %.0482.i, i64 noundef range(i64 -2147483548, 2147483648) %i.agv, i64 noundef 4)
          to label %.noexc231 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc231:                                        ; preds = %bb.co
  br i1 %i.bu, label %bb.cp, label %.noexc232

bb.cp:                                            ; preds = %.noexc231
  %i.agx = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.59, i32 noundef 548, ptr noundef %.0499.i, i64 noundef range(i64 -2147483548, 2147483648) %i.agv, i64 noundef 4)
          to label %.noexc232 unwind label %.loopexit.split-lp.loopexit

.noexc232:                                        ; preds = %bb.cp, %.noexc231
  %.1500.i = phi ptr [ %.0499.i, %.noexc231 ], [ %i.agx, %bb.cp ] ; 2 uses
  %i.agy = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.59, i32 noundef 550, ptr noundef %.0491.i, i64 noundef range(i64 -2147483548, 2147483648) %i.agv, i64 noundef 12)
          to label %.noexc233 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc233:                                        ; preds = %.noexc232
  br i1 %i.bt, label %bb.cq, label %.noexc234

bb.cq:                                            ; preds = %.noexc233
  %i.agz = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.59, i32 noundef 553, ptr noundef %.0505.i, i64 noundef range(i64 -2147483548, 2147483648) %i.agv, i64 noundef 4)
          to label %.noexc234 unwind label %.loopexit.split-lp.loopexit

.noexc234:                                        ; preds = %bb.cq, %.noexc233, %bb.cn
  %.1506.i = phi ptr [ %.0505.i, %bb.cn ], [ %.0505.i, %.noexc233 ], [ %i.agz, %bb.cq ] ; 3 uses
  %.2501.i = phi ptr [ %.0499.i, %bb.cn ], [ %.1500.i, %.noexc233 ], [ %.1500.i, %bb.cq ] ; 3 uses
  %.1492.i = phi ptr [ %.0491.i, %bb.cn ], [ %i.agy, %.noexc233 ], [ %i.agy, %bb.cq ] ; 4 uses
  %.1483.i = phi ptr [ %.0482.i, %bb.cn ], [ %i.agw, %.noexc233 ], [ %i.agw, %bb.cq ] ; 3 uses
  %.1309.i = phi i32 [ %.0308.i, %bb.cn ], [ %i.agu, %.noexc233 ], [ %i.agu, %bb.cq ]
  %i.aha = load float, ptr %i.sx, align 4, !tbaa !24 ; 2 uses
  %i.ahb = fcmp ugt float %i.aha, %i.qo
  %spec.select.i = select i1 %i.ahb, i32 %.0.i, i32 %.0303.i
  %i.ahc = fcmp ugt float %i.aha, %i.qp
  %.1288.i = select i1 %i.ahc, i32 %.0287.i, i32 %.0303.i
  %i.ahd = sext i32 %.0303.i to i64               ; 7 uses
  %i.ahe = getelementptr inbounds [4 x i8], ptr %.1483.i, i64 %i.ahd
  store i32 %i.sa, ptr %i.ahe, align 4, !tbaa !10
  %i.ahf = getelementptr inbounds [12 x i8], ptr %.1492.i, i64 %i.ahd ; 7 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 4 ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.ahf, align 4, !tbaa !24
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahf, i64 8 ; 5 uses
  store float 0.000000e+00, ptr %i.ahh, align 4, !tbaa !24
  br i1 %i.bt, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %.noexc234
  %i.ahi = getelementptr inbounds [4 x i8], ptr %.1506.i, i64 %i.ahd
  store float 0.000000e+00, ptr %i.ahi, align 4, !tbaa !24
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %.noexc234
  br i1 %i.bu, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.ahj = getelementptr inbounds [4 x i8], ptr %.2501.i, i64 %i.ahd
  store float 0.000000e+00, ptr %i.ahj, align 4, !tbaa !24
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  br i1 %i.rl, label %.lr.ph553.i, label %._crit_edge554.i

.lr.ph553.i:                                      ; preds = %bb.cu
  %i.ahk = load ptr, ptr %i.ro, align 8, !tbaa !141
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cv, %.lr.ph553.i
  %indvars.iv607.i = phi i64 [ 0, %.lr.ph553.i ], [ %indvars.iv.next608.i, %bb.cv ] ; 2 uses
  %i.ahl = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %indvars.iv607.i
  %i.ahm = load i32, ptr %i.ahl, align 4, !tbaa !10
  %i.ahn = sext i32 %i.ahm to i64                 ; 3 uses
  %i.aho = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.ahn
  %i.ahp = load float, ptr %i.aho, align 4, !tbaa !24 ; 2 uses
  %i.ahq = getelementptr inbounds [12 x i8], ptr %i.ahk, i64 %i.ahn ; 5 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 4
  %i.ahs = load <2 x float>, ptr %i.ahq, align 4, !tbaa !24
  %i.aht = insertelement <2 x float> poison, float %i.ahp, i64 0
  %i.ahu = shufflevector <2 x float> %i.aht, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ahv = fmul <2 x float> %i.ahu, %i.ahs        ; 2 uses
  store <2 x float> %i.ahv, ptr %i.ahq, align 4, !tbaa !24
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahq, i64 8 ; 3 uses
  %i.ahx = load float, ptr %i.ahw, align 4, !tbaa !24
  %i.ahy = fmul float %i.ahp, %i.ahx              ; 2 uses
  store float %i.ahy, ptr %i.ahw, align 4, !tbaa !24
  %i.ahz = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.ahn
  %i.aia = load float, ptr %i.ahz, align 4, !tbaa !24 ; 2 uses
  %i.aib = fmul float %i.ahy, %i.aia              ; 2 uses
  store float %i.aib, ptr %i.ahw, align 4, !tbaa !24
  %i.aic = insertelement <2 x float> poison, float %i.aia, i64 0
  %i.aid = shufflevector <2 x float> %i.aic, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aie = fmul <2 x float> %i.ahv, %i.aid        ; 3 uses
  %i.aif = extractelement <2 x float> %i.aie, i64 0
  store float %i.aif, ptr %i.ahq, align 4, !tbaa !24
  %i.aig = extractelement <2 x float> %i.aie, i64 1
  store float %i.aig, ptr %i.ahr, align 4, !tbaa !24
  %i.aih = load <2 x float>, ptr %i.ahf, align 4, !tbaa !24
  %i.aii = fadd <2 x float> %i.aie, %i.aih
  %i.aij = load float, ptr %i.ahh, align 4, !tbaa !24
  %i.aik = fadd float %i.aib, %i.aij
  store <2 x float> %i.aii, ptr %i.ahf, align 4, !tbaa !24
  store float %i.aik, ptr %i.ahh, align 4, !tbaa !24
  %indvars.iv.next608.i = add nuw nsw i64 %indvars.iv607.i, 1 ; 2 uses
  %exitcond611.not.i = icmp eq i64 %indvars.iv.next608.i, %wide.trip.count602.i
  br i1 %exitcond611.not.i, label %._crit_edge554.i, label %bb.cv, !llvm.loop !65

._crit_edge554.i:                                 ; preds = %bb.cv, %bb.cu
  %i.ail = load float, ptr %i.sx, align 4, !tbaa !24
  %i.aim = fpext float %i.ail to double
  %i.ain = getelementptr inbounds nuw [12 x i8], ptr %.1492.i, i64 %indvar.i ; 3 uses
  %i.aio = load float, ptr %i.ain, align 4, !tbaa !24
  %i.aip = fpext float %i.aio to double
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.ain, i64 4
  %i.air = load float, ptr %i.aiq, align 4, !tbaa !24
  %i.ais = fpext float %i.air to double
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ain, i64 8
  %i.aiu = load float, ptr %i.ait, align 4, !tbaa !24
  %i.aiv = fpext float %i.aiu to double
  %i.aiw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.054, ptr noundef nonnull @.str.96, double noundef %i.aim, double noundef %i.aip, double noundef %i.ais, double noundef %i.aiv) #18 ; 0 uses
  br i1 %or.cond.i, label %bb.cw, label %.loopexit.i

bb.cw:                                            ; preds = %._crit_edge554.i
  %i.aix = srem i32 %.0303.i, %i.qs
  %i.aiy = icmp eq i32 %i.aix, 0
  %i.aiz = icmp sgt i32 %.0303.i, -1
  %or.cond559.i = and i1 %i.aiz, %i.aiy
  br i1 %or.cond559.i, label %.lr.ph556.i, label %.loopexit.i

.lr.ph556.i:                                      ; preds = %bb.cw, %bb.da
  %indvars.iv612.i = phi i64 [ %indvars.iv.next613.i, %bb.da ], [ %i.ahd, %bb.cw ] ; 6 uses
  br i1 %i.bt, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %.lr.ph556.i
  %i.aja = getelementptr inbounds nuw [12 x i8], ptr %.1492.i, i64 %indvars.iv612.i ; 3 uses
  %i.ajb = load float, ptr %i.ahf, align 4, !tbaa !24
  %i.ajc = load float, ptr %i.aja, align 4, !tbaa !24
  %i.ajd = load float, ptr %i.ahg, align 4, !tbaa !24
  %i.aje = getelementptr inbounds nuw i8, ptr %i.aja, i64 4
  %i.ajf = load float, ptr %i.aje, align 4, !tbaa !24
  %i.ajg = fmul float %i.ajd, %i.ajf
  %i.ajh = call float @llvm.fmuladd.f32(float %i.ajb, float %i.ajc, float %i.ajg)
  %i.aji = load float, ptr %i.ahh, align 4, !tbaa !24
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aja, i64 8
  %i.ajk = load float, ptr %i.ajj, align 4, !tbaa !24
  %i.ajl = call noundef float @llvm.fmuladd.f32(float %i.aji, float %i.ajk, float %i.ajh)
  %i.ajm = sub nuw nsw i64 %i.ahd, %indvars.iv612.i
  %i.ajn = getelementptr inbounds nuw [4 x i8], ptr %.1506.i, i64 %i.ajm ; 2 uses
  %i.ajo = load float, ptr %i.ajn, align 4, !tbaa !24
  %i.ajp = fadd float %i.ajo, %i.ajl
  store float %i.ajp, ptr %i.ajn, align 4, !tbaa !24
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %.lr.ph556.i
  br i1 %i.bu, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.ajq = getelementptr inbounds nuw [4 x i8], ptr %.1483.i, i64 %indvars.iv612.i
  %i.ajr = load i32, ptr %i.ajq, align 4, !tbaa !10
  %i.ajs = sext i32 %i.ajr to i64
  %i.ajt = getelementptr inbounds [12 x i8], ptr %.1498.i, i64 %i.ajs ; 3 uses
  %i.aju = load float, ptr %i.ajt, align 4, !tbaa !24
  %i.ajv = load float, ptr %i.ahf, align 4, !tbaa !24
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajt, i64 4
  %i.ajx = load float, ptr %i.ajw, align 4, !tbaa !24
  %i.ajy = load float, ptr %i.ahg, align 4, !tbaa !24
  %i.ajz = fmul float %i.ajx, %i.ajy
  %i.aka = call float @llvm.fmuladd.f32(float %i.aju, float %i.ajv, float %i.ajz)
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ajt, i64 8
  %i.akc = load float, ptr %i.akb, align 4, !tbaa !24
  %i.akd = load float, ptr %i.ahh, align 4, !tbaa !24
  %i.ake = call noundef float @llvm.fmuladd.f32(float %i.akc, float %i.akd, float %i.aka)
  %i.akf = sub nuw nsw i64 %i.ahd, %indvars.iv612.i
  %i.akg = getelementptr inbounds nuw [4 x i8], ptr %.2501.i, i64 %i.akf ; 2 uses
  %i.akh = load float, ptr %i.akg, align 4, !tbaa !24
  %i.aki = fadd float %i.akh, %i.ake
  store float %i.aki, ptr %i.akg, align 4, !tbaa !24
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %indvars.iv.next613.i = add nsw i64 %indvars.iv612.i, -1
  %i.akj = icmp sgt i64 %indvars.iv612.i, 0
  br i1 %i.akj, label %.lr.ph556.i, label %.loopexit.i, !llvm.loop !66

.loopexit.i:                                      ; preds = %bb.da, %bb.cw, %._crit_edge554.i
  %i.akk = add nsw i32 %.0303.i, 1
  br label %bb.db

bb.db:                                            ; preds = %.loopexit.i, %.loopexit509.i
  %.2507.i = phi ptr [ %.1506.i, %.loopexit.i ], [ %.0505.i, %.loopexit509.i ] ; 4 uses
  %.3502.i = phi ptr [ %.2501.i, %.loopexit.i ], [ %.0499.i, %.loopexit509.i ] ; 3 uses
  %.2493.i = phi ptr [ %.1492.i, %.loopexit.i ], [ %.0491.i, %.loopexit509.i ] ; 3 uses
  %.2484.i = phi ptr [ %.1483.i, %.loopexit.i ], [ %.0482.i, %.loopexit509.i ] ; 5 uses
  %.2310.i = phi i32 [ %.1309.i, %.loopexit.i ], [ %.0308.i, %.loopexit509.i ]
  %.1304.i = phi i32 [ %i.akk, %.loopexit.i ], [ %.0303.i, %.loopexit509.i ] ; 4 uses
  %.2289.i = phi i32 [ %.1288.i, %.loopexit.i ], [ %.0287.i, %.loopexit509.i ] ; 6 uses
  %.2.i = phi i32 [ %spec.select.i, %.loopexit.i ], [ %.0.i, %.loopexit509.i ] ; 6 uses
  %i.akl = load float, ptr %i.rb, align 4, !tbaa !24
  %i.akm = load float, ptr %i.re, align 4, !tbaa !24 ; 2 uses
  %i.akn = load float, ptr %i.rg, align 4, !tbaa !24 ; 2 uses
  %i.ako = load float, ptr %i.rh, align 8, !tbaa !24 ; 2 uses
  %i.akp = load float, ptr %i.rp, align 8, !tbaa !24 ; 2 uses
  %i.akq = load float, ptr %i.rd, align 8, !tbaa !24
  %i.akr = load float, ptr %i.rq, align 8, !tbaa !24 ; 2 uses
  %i.aks = load float, ptr %i.rr, align 4, !tbaa !24
  %i.akt = load float, ptr %i.rf, align 4, !tbaa !24
  %i.aku = getelementptr inbounds nuw i8, ptr %i.yr, i64 4
  %i.akv = getelementptr inbounds nuw i8, ptr %i.yr, i64 8
  %i.akw = load float, ptr %i.akv, align 4, !tbaa !24 ; 5 uses
  %i.akx = getelementptr inbounds nuw [12 x i8], ptr %.1498.i, i64 %indvar.i ; 4 uses
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akx, i64 4 ; 2 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %i.akx, i64 8 ; 2 uses
  %i.ala = load float, ptr %i.akz, align 4, !tbaa !24 ; 4 uses
  %i.alb = load float, ptr %i.sx, align 4, !tbaa !24
  %i.alc = fpext float %i.alb to double
  %i.ald = fpext float %i.akw to double
  %i.ale = load <2 x float>, ptr %i.yr, align 4, !tbaa !24 ; 3 uses
  %i.alf = load float, ptr %i.aku, align 4, !tbaa !24 ; 4 uses
  %i.alg = load <2 x float>, ptr %i.akx, align 4, !tbaa !24 ; 3 uses
  %i.alh = load float, ptr %i.aky, align 4, !tbaa !24 ; 3 uses
  %i.ali = shufflevector <2 x float> %i.ale, <2 x float> %i.alg, <2 x i32> <i32 0, i32 2>
  %i.alj = fadd <2 x float> %i.ru, %i.ali         ; 5 uses
  %i.alk = shufflevector <2 x float> %i.ale, <2 x float> %i.alg, <2 x i32> <i32 1, i32 3>
  %i.all = fadd <2 x float> %i.rv, %i.alk         ; 5 uses
  %i.alm = insertelement <2 x float> poison, float %i.akw, i64 0
  %i.aln = insertelement <2 x float> %i.alm, float %i.ala, i64 1
  %i.alo = fadd <2 x float> %i.rt, %i.aln         ; 5 uses
  %i.alp = fmul float %i.alf, %i.alf
  %i.alq = extractelement <2 x float> %i.ale, i64 0 ; 4 uses
  %i.alr = call float @llvm.fmuladd.f32(float %i.alq, float %i.alq, float %i.alp)
  %i.als = call noundef float @llvm.fmuladd.f32(float %i.akw, float %i.akw, float %i.alr)
  %i.alt = fadd float %.0299.i, %i.als            ; 2 uses
  %i.alu = fmul float %i.alh, %i.alh
  %i.alv = extractelement <2 x float> %i.alg, i64 0 ; 3 uses
  %i.alw = call float @llvm.fmuladd.f32(float %i.alv, float %i.alv, float %i.alu)
  %i.alx = call noundef float @llvm.fmuladd.f32(float %i.ala, float %i.ala, float %i.alw)
  %i.aly = fadd float %.0297.i, %i.alx            ; 2 uses
  %i.alz = fpext float %i.alq to double
  %i.ama = fpext float %i.alf to double
  %i.amb = fdiv float %i.alt, %i.sd               ; 3 uses
  %i.amc = fpext float %i.amb to double           ; 3 uses
  %i.amd = fmul <2 x float> %i.all, %i.all
  %i.ame = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.alj, <2 x float> %i.alj, <2 x float> %i.amd)
  %i.amf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.alo, <2 x float> %i.alo, <2 x float> %i.ame)
  %i.amg = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.amf)
  %i.amh = fdiv float %i.aly, %i.sd               ; 3 uses
  %i.ami = fpext float %i.amh to double           ; 4 uses
  %i.amj = insertelement <2 x float> poison, float %i.sd, i64 0
  %i.amk = shufflevector <2 x float> %i.amj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aml = fdiv <2 x float> %i.amg, %i.amk
  %i.amm = fpext <2 x float> %i.aml to <2 x double> ; 2 uses
  %i.amn = extractelement <2 x double> %i.amm, i64 0
  %i.amo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ns, ptr noundef nonnull @.str.97, double noundef %i.alc, double noundef %i.alz, double noundef %i.ama, double noundef %i.ald, double noundef %i.amc, double noundef %i.amn) #18 ; 0 uses
  %i.amp = load float, ptr %i.sx, align 4, !tbaa !24
  %i.amq = fpext float %i.amp to double
  %i.amr = load float, ptr %i.akx, align 4, !tbaa !24
  %i.ams = fpext float %i.amr to double
  %i.amt = load float, ptr %i.aky, align 4, !tbaa !24
  %i.amu = fpext float %i.amt to double
  %i.amv = load float, ptr %i.akz, align 4, !tbaa !24
  %i.amw = fpext float %i.amv to double
  %i.amx = extractelement <2 x double> %i.amm, i64 1
  %i.amy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.os, ptr noundef nonnull @.str.97, double noundef %i.amq, double noundef %i.ams, double noundef %i.amu, double noundef %i.amw, double noundef %i.ami, double noundef %i.amx) #18 ; 0 uses
  %i.amz = invoke noundef zeroext i1 @_Z15read_next_framePK16gmx_output_env_tP11t_trxstatusP10t_trxframe(ptr noundef %i.qv, ptr noundef %i.qq, ptr noundef nonnull align 8 %3)
          to label %.noexc235 unwind label %.loopexit.split-lp.loopexit

.noexc235:                                        ; preds = %bb.db
  %i.ana = fmul float %i.alf, %i.alh
  %i.anb = call float @llvm.fmuladd.f32(float %i.alv, float %i.alq, float %i.ana)
  %i.anc = call noundef float @llvm.fmuladd.f32(float %i.ala, float %i.akw, float %i.anb)
  %i.and = fadd float %.0298.i, %i.anc            ; 2 uses
  %i.ane = fneg float %i.aks                      ; 2 uses
  %i.anf = fmul float %i.akm, %i.ane
  %i.ang = call float @llvm.fmuladd.f32(float %i.akr, float %i.akp, float %i.anf)
  %i.anh = fneg float %i.akp
  %i.ani = fmul float %i.ako, %i.anh
  %i.anj = call float @llvm.fmuladd.f32(float %i.akm, float %i.akn, float %i.ani)
  %i.ank = fmul float %i.ako, %i.ane
  %i.anl = call float @llvm.fmuladd.f32(float %i.akr, float %i.akn, float %i.ank)
  %i.anm = fneg float %i.anl
  %i.ann = fmul float %i.akq, %i.anm
  %i.ano = call float @llvm.fmuladd.f32(float %i.akl, float %i.anj, float %i.ann)
  %i.anp = call noundef float @llvm.fmuladd.f32(float %i.akt, float %i.ang, float %i.ano)
  %i.anq = fadd float %.0300.i, %i.anp            ; 2 uses
  br i1 %i.amz, label %bb.ca, label %bb.dc, !llvm.loop !67

bb.dc:                                            ; preds = %.noexc235
  %.1504.i781.le = ptrtoaddr ptr %.1504.i to i64  ; 2 uses
  %.1488.i784.le = ptrtoaddr ptr %.1488.i to i64  ; 2 uses
  invoke void @_Z14gmx_rmpbc_doneP9gmx_rmpbc(ptr noundef %i.qz)
          to label %.noexc236 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc236:                                        ; preds = %bb.dc
  %i.anr = fdiv float %i.anq, %i.sd
  %i.ans = fpext float %i.anr to double           ; 3 uses
  %i.ant = fpext float %i.ql to double            ; 3 uses
  %i.anu = fmul double %i.ans, f0x3B30B0E6D55E647C
  %i.anv = fmul double %i.anu, %i.ant
  %i.anw = fmul double %i.anv, 1.000000e-09
  %i.anx = fmul double %i.anw, 6.000000e+00
  %i.any = fdiv double f0x3821784AE0000000, %i.anx
  %i.anz = fptrunc double %i.any to float         ; 2 uses
  %i.aoa = load ptr, ptr @stderr, align 8, !tbaa !120
  %i.aob = fpext float %i.anz to double           ; 7 uses
  %i.aoc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aoa, ptr noundef nonnull @.str.98, double noundef %i.aob) #21 ; 0 uses
  %i.aod = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.pr, ptr noundef nonnull @.str.127, double noundef %i.aob) #18 ; 0 uses
  %wide.trip.count.i342.i = and i64 %indvar.next.i, 4294967295
  br label %.lr.ph.i343.i

.lr.ph.i343.i:                                    ; preds = %bb.de, %.noexc236
  %indvars.iv.i344.i = phi i64 [ 0, %.noexc236 ], [ %indvars.iv.next.i345.i, %bb.de ] ; 4 uses
  %i.aoe = getelementptr inbounds nuw [4 x i8], ptr %.1.i, i64 %indvars.iv.i344.i
  %i.aof = load float, ptr %i.aoe, align 4, !tbaa !24 ; 2 uses
  %i.aog = fcmp une float %i.aof, 0.000000e+00
  br i1 %i.aog, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %.lr.ph.i343.i
  %i.aoh = fdiv float %i.anz, %i.aof
  %i.aoi = getelementptr inbounds nuw [4 x i8], ptr %.1488.i, i64 %indvars.iv.i344.i ; 2 uses
  %i.aoj = load float, ptr %i.aoi, align 4, !tbaa !24
  %i.aok = fmul float %i.aoh, %i.aoj              ; 2 uses
  store float %i.aok, ptr %i.aoi, align 4, !tbaa !24
  %i.aol = getelementptr inbounds nuw [4 x i8], ptr %.1504.i, i64 %indvars.iv.i344.i
  %i.aom = load float, ptr %i.aol, align 4, !tbaa !24
  %i.aon = fpext float %i.aom to double
  %i.aoo = fpext float %i.aok to double
  %i.aop = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.pr, ptr noundef nonnull @.str.128, double noundef %i.aon, double noundef %i.aoo) #18 ; 0 uses
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %.lr.ph.i343.i
  %indvars.iv.next.i345.i = add nuw nsw i64 %indvars.iv.i344.i, 1 ; 2 uses
  %exitcond.not.i346.i = icmp eq i64 %indvars.iv.next.i345.i, %wide.trip.count.i342.i
  br i1 %exitcond.not.i346.i, label %_ZL10calc_mjdspP8_IO_FILEfPfS1_iPKf.exit.i, label %.lr.ph.i343.i, !llvm.loop !68

_ZL10calc_mjdspP8_IO_FILEfPfS1_iPKf.exit.i:       ; preds = %bb.de
  %i.aoq = fmul double %i.ans, f0x3F5C270F9F4566A8
  %i.aor = fmul double %i.aoq, f0x3F81072C483AF26D
  %i.aos = fmul double %i.aor, %i.ant
  %i.aot = fdiv double 1.000000e+00, %i.aos
  %i.aou = fptrunc double %i.aot to float         ; 12 uses
  %i.aov = fdiv float %i.and, %i.sd               ; 2 uses
  %i.aow = fdiv float 1.000000e+00, %i.sd         ; 6 uses
  %i.aox = extractelement <2 x float> %i.alj, i64 1
  %i.aoy = fmul float %i.aow, %i.aox              ; 4 uses
  %i.aoz = extractelement <2 x float> %i.all, i64 1
  %i.apa = fmul float %i.aow, %i.aoz              ; 4 uses
  %i.apb = extractelement <2 x float> %i.alo, i64 1
  %i.apc = fmul float %i.aow, %i.apb              ; 4 uses
  %i.apd = extractelement <2 x float> %i.alj, i64 0
  %i.ape = fmul float %i.aow, %i.apd              ; 4 uses
  %i.apf = extractelement <2 x float> %i.all, i64 0
  %i.apg = fmul float %i.aow, %i.apf              ; 4 uses
  %i.aph = extractelement <2 x float> %i.alo, i64 0
  %i.api = fmul float %i.aow, %i.aph              ; 4 uses
  %i.apj = fmul float %i.apa, %i.apa
  %i.apk = call float @llvm.fmuladd.f32(float %i.aoy, float %i.aoy, float %i.apj)
  %i.apl = call noundef float @llvm.fmuladd.f32(float %i.apc, float %i.apc, float %i.apk)
  %i.apm = fmul float %i.apg, %i.apg
  %i.apn = call float @llvm.fmuladd.f32(float %i.ape, float %i.ape, float %i.apm)
  %i.apo = call noundef float @llvm.fmuladd.f32(float %i.api, float %i.api, float %i.apn)
  %i.app = fmul float %i.apg, %i.apa
  %i.apq = call float @llvm.fmuladd.f32(float %i.aoy, float %i.ape, float %i.app)
  %i.apr = call noundef float @llvm.fmuladd.f32(float %i.apc, float %i.api, float %i.apq)
  %i.aps = fpext float %i.ape to double
  %i.apt = fpext float %i.apg to double
  %i.apu = fpext float %i.api to double
  %i.apv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.99, i32 noundef %i.sc, double noundef %i.aps, double noundef %i.apt, double noundef %i.apu, double noundef %i.amc) ; 0 uses
  %i.apw = fpext float %i.aoy to double
  %i.apx = fpext float %i.apa to double
  %i.apy = fpext float %i.apc to double
  %i.apz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.100, i32 noundef %i.sc, double noundef %i.apw, double noundef %i.apx, double noundef %i.apy, double noundef %i.ami) ; 0 uses
  %.not323.i = icmp eq ptr %.2493.i, null         ; 2 uses
  br i1 %.not323.i, label %.noexc241, label %bb.df

bb.df:                                            ; preds = %_ZL10calc_mjdspP8_IO_FILEfPfS1_iPKf.exit.i
  br i1 %i.bu, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.aqa = fdiv double %i.aob, f0x3DA37876F1206635
  %i.aqb = fptrunc double %i.aqa to float
  %i.aqc = call fastcc noundef float @_ZL9calc_cacfP8_IO_FILEfPfS1_iPKiii(ptr noundef %.055, float noundef %i.aqb, ptr noundef %.3502.i, ptr noundef nonnull %.1504.i, i32 noundef %.1304.i, ptr noundef %.2484.i, i32 noundef %.2289.i, i32 noundef %i.qs)
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.0301.i = phi float [ %i.aqc, %bb.dg ], [ 0.000000e+00, %bb.df ] ; 3 uses
  br i1 %i.bt, label %bb.di, label %.noexc241

bb.di:                                            ; preds = %bb.dh
  %puts324.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.aqd = fdiv double %i.aob, f0x3D719799812DEA11
  %i.aqe = fptrunc double %i.aqd to float
  %i.aqf = call fastcc noundef float @_ZL9calc_cacfP8_IO_FILEfPfS1_iPKiii(ptr noundef %.157, float noundef %i.aqe, ptr noundef %.2507.i, ptr noundef nonnull %.1504.i, i32 noundef %.1304.i, ptr noundef %.2484.i, i32 noundef %.2289.i, i32 noundef %i.qs) ; 2 uses
  %i.aqg = icmp sgt i32 %.2289.i, %.2.i
  br i1 %i.aqg, label %bb.dj, label %.noexc241

bb.dj:                                            ; preds = %bb.di
  %i.aqh = sub nsw i32 %.2289.i, %.2.i            ; 2 uses
  %i.aqi = add nuw nsw i32 %i.aqh, 1
  %i.aqj = zext nneg i32 %i.aqi to i64            ; 2 uses
  %i.aqk = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.59, i32 noundef 699, i64 noundef range(i64 -2147483648, 2147483648) %i.aqj, i64 noundef 4)
          to label %.noexc237 unwind label %.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc237:                                        ; preds = %bb.dj
  %i.aql = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.59, i32 noundef 700, i64 noundef range(i64 -2147483648, 2147483648) %i.aqj, i64 noundef 4)
          to label %.noexc238 unwind label %.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc238:                                        ; preds = %.noexc237
  %i.aqm = sext i32 %.2.i to i64                  ; 2 uses
  %i.aqn = add i32 %.2289.i, 1
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dk, %.noexc238
  %indvars.iv617.i = phi i64 [ %i.aqm, %.noexc238 ], [ %indvars.iv.next618.i, %bb.dk ] ; 4 uses
  %i.aqo = getelementptr inbounds [4 x i8], ptr %.2484.i, i64 %indvars.iv617.i
  %i.aqp = load i32, ptr %i.aqo, align 4, !tbaa !10
  %i.aqq = sext i32 %i.aqp to i64
  %i.aqr = getelementptr inbounds [4 x i8], ptr %.1504.i, i64 %i.aqq
  %i.aqs = load float, ptr %i.aqr, align 4, !tbaa !24
  %i.aqt = call noundef float @logf(float noundef %i.aqs) #18
  %i.aqu = sub nsw i64 %indvars.iv617.i, %i.aqm   ; 2 uses
  %i.aqv = getelementptr inbounds [4 x i8], ptr %i.aqk, i64 %i.aqu
  store float %i.aqt, ptr %i.aqv, align 4, !tbaa !24
  %i.aqw = getelementptr inbounds [4 x i8], ptr %.2507.i, i64 %indvars.iv617.i
  %i.aqx = load float, ptr %i.aqw, align 4, !tbaa !24
  %i.aqy = call noundef float @llvm.fabs.f32(float %i.aqx)
  %i.aqz = call noundef float @logf(float noundef %i.aqy) #18
  %i.ara = getelementptr inbounds [4 x i8], ptr %i.aql, i64 %i.aqu
  store float %i.aqz, ptr %i.ara, align 4, !tbaa !24
  %indvars.iv.next618.i = add nsw i64 %indvars.iv617.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next618.i to i32
  %exitcond621.not.i = icmp eq i32 %i.aqn, %lftr.wideiv.i
  br i1 %exitcond621.not.i, label %bb.dl, label %bb.dk, !llvm.loop !69

bb.dl:                                            ; preds = %bb.dk
  invoke void @_Z10lsq_y_ax_biPfS_S_S_S_S_(i32 noundef %i.aqh, ptr noundef nonnull %i.aqk, ptr noundef nonnull %i.aql, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.d)
          to label %.noexc239 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc239:                                        ; preds = %bb.dl
  %i.arb = load float, ptr %i.f, align 4, !tbaa !24
  %i.arc = call noundef float @expf(float noundef %i.arb) #18
  %i.ard = load float, ptr %i.e, align 4, !tbaa !24
  %i.are = fadd float %i.ard, 1.000000e+00        ; 2 uses
  store float %i.are, ptr %i.e, align 4, !tbaa !24
  %i.arf = fmul double %i.aob, 2.000000e+12
  %i.arg = fpext float %i.are to double
  %i.arh = fdiv double %i.arf, %i.arg
  %i.ari = fpext float %i.arc to double
  %i.arj = fmul double %i.arh, %i.ari
  %i.ark = fptrunc double %i.arj to float
  store float %i.ark, ptr %i.f, align 4, !tbaa !24
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.59, i32 noundef 718, ptr noundef nonnull %i.aqk)
          to label %.noexc240 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc240:                                        ; preds = %.noexc239
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.59, i32 noundef 719, ptr noundef nonnull %i.aql)
          to label %.noexc241 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc241:                                        ; preds = %.noexc240, %bb.di, %bb.dh, %_ZL10calc_mjdspP8_IO_FILEfPfS1_iPKf.exit.i
  %.1302.i = phi float [ 0.000000e+00, %_ZL10calc_mjdspP8_IO_FILEfPfS1_iPKf.exit.i ], [ %.0301.i, %bb.di ], [ %.0301.i, %bb.dh ], [ %.0301.i, %.noexc240 ] ; 2 uses
  %.0296.i = phi float [ 0.000000e+00, %_ZL10calc_mjdspP8_IO_FILEfPfS1_iPKf.exit.i ], [ %i.aqf, %bb.di ], [ 0.000000e+00, %bb.dh ], [ %i.aqf, %.noexc240 ] ; 2 uses
  %i.arl = load ptr, ptr @stderr, align 8, !tbaa !120
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.105, i64 46, i64 1, ptr %i.arl) #22 ; 0 uses
  %i.arm = fadd float %i.amb, %i.amh
  %i.arn = fpext float %i.arm to double
  %i.aro = fpext float %i.aov to double           ; 2 uses
  %i.arp = call double @llvm.fmuladd.f64(double %i.aro, double 2.000000e+00, double %i.arn)
  %.0.i.i = fptrunc double %i.arp to float        ; 2 uses
  %i.arq = fcmp oeq float %i.qu, 0.000000e+00     ; 4 uses
  br i1 %i.arq, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %.noexc241
  %i.arr = fmul float %i.aou, %.0.i.i
  %i.ars = fadd float %i.arr, 1.000000e+00
  br label %_ZL7calcepsfffffb.exit.i

bb.dn:                                            ; preds = %.noexc241
  %i.art = fpext float %i.qu to double            ; 2 uses
  %i.aru = call double @llvm.fmuladd.f64(double %i.art, double 2.000000e+00, double 1.000000e+00) ; 2 uses
  %i.arv = fmul double %i.art, 2.000000e+00
  %i.arw = fpext float %i.aou to double
  %i.arx = fmul double %i.arv, %i.arw
  %i.ary = fpext float %.0.i.i to double
  %i.arz = call double @llvm.fmuladd.f64(double %i.arx, double %i.ary, double %i.aru)
  %i.asa = fptrunc double %i.arz to float         ; 2 uses
  %i.asb = fmul float %i.aou, %i.asa
  %i.asc = fpext float %i.asb to double
  %i.asd = fsub double %i.aru, %i.asc
  %i.ase = fpext float %i.asa to double
  %i.asf = fdiv double %i.ase, %i.asd
  %i.asg = fptrunc double %i.asf to float
  br label %_ZL7calcepsfffffb.exit.i

_ZL7calcepsfffffb.exit.i:                         ; preds = %bb.dn, %bb.dm
  %.1.i.i = phi float [ %i.ars, %bb.dm ], [ %i.asg, %bb.dn ]
  %i.ash = load ptr, ptr @stderr, align 8, !tbaa !120
  %i.asi = fpext float %.1.i.i to double
  %i.asj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ash, ptr noundef nonnull @.str.106, double noundef %i.asi) #21 ; 0 uses
  %i.ask = load ptr, ptr @stderr, align 8, !tbaa !120
  %i.asl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ask, ptr noundef nonnull @.str.107, double noundef %i.ami, double noundef %i.amc, double noundef %i.aro) #21 ; 0 uses
  %i.asm = load ptr, ptr @stderr, align 8, !tbaa !120
  %fwrite326.i = call i64 @fwrite(ptr nonnull @.str.108, i64 45, i64 1, ptr %i.asm) #22 ; 0 uses
  %i.asn = fsub float %i.amh, %i.apl              ; 2 uses
  %i.aso = fsub float %i.amb, %i.apo              ; 2 uses
  %i.asp = fsub float %i.aov, %i.apr
  %i.asq = fadd float %i.aso, %i.asn
  %i.asr = fpext float %i.asq to double
  %i.ass = fpext float %i.asp to double           ; 2 uses
  %i.ast = call double @llvm.fmuladd.f64(double %i.ass, double 2.000000e+00, double %i.asr)
  %.0.i347.i = fptrunc double %i.ast to float     ; 2 uses
  br i1 %i.arq, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %_ZL7calcepsfffffb.exit.i
  %i.asu = fmul float %i.aou, %.0.i347.i
  %i.asv = fadd float %i.asu, 1.000000e+00
  br label %_ZL7calcepsfffffb.exit349.i

bb.dp:                                            ; preds = %_ZL7calcepsfffffb.exit.i
  %i.asw = fpext float %i.qu to double            ; 2 uses
  %i.asx = call double @llvm.fmuladd.f64(double %i.asw, double 2.000000e+00, double 1.000000e+00) ; 2 uses
  %i.asy = fmul double %i.asw, 2.000000e+00
  %i.asz = fpext float %i.aou to double
  %i.ata = fmul double %i.asy, %i.asz
  %i.atb = fpext float %.0.i347.i to double
  %i.atc = call double @llvm.fmuladd.f64(double %i.ata, double %i.atb, double %i.asx)
  %i.atd = fptrunc double %i.atc to float         ; 2 uses
  %i.ate = fmul float %i.aou, %i.atd
  %i.atf = fpext float %i.ate to double
  %i.atg = fsub double %i.asx, %i.atf
  %i.ath = fpext float %i.atd to double
  %i.ati = fdiv double %i.ath, %i.atg
  %i.atj = fptrunc double %i.ati to float
end_hunk_1
