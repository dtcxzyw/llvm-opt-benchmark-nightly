Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/image?download=true
inline.NumInlined: 6802
inline.NumDeleted: 1350
loop-unroll.NumCompletelyUnrolled: 53
loop-unroll.NumRuntimeUnrolled: 63
loop-unroll.NumUnrolled: 116
begin_hunk_0_@_ZNK4pbrt5Image5WriteENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_13ImageMetadataE:bb.a
  call void @_ZdlPvm(ptr noundef %i.or, i64 noundef %i.ou) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #31
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread542

.loopexit.split-lp564.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.bl
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ov = load ptr, ptr %23, align 8, !tbaa !48   ; 2 uses
  %i.ow = icmp eq ptr %i.ov, %i.nf
  br i1 %i.ow, label %.body329, label %.body329.sink.split

.body329.sink.split:                              ; preds = %.loopexit.split-lp564.loopexit.split-lp.loopexit.split-lp, %bb.bk
  %.sink = phi ptr [ %i.oj, %bb.bk ], [ %i.ov, %.loopexit.split-lp564.loopexit.split-lp.loopexit.split-lp ]
  %.pn165.ph = phi { ptr, i32 } [ %i.oi, %bb.bk ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp564.loopexit.split-lp.loopexit.split-lp ]
  %i.ox = load i64, ptr %i.nf, align 8, !tbaa !38
  %i.oy = add i64 %i.ox, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.oy) #34
  br label %.body329

.body329:                                         ; preds = %.body329.sink.split, %.loopexit.split-lp564.loopexit.split-lp.loopexit.split-lp, %bb.bk
  %.pn165 = phi { ptr, i32 } [ %i.oi, %bb.bk ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp564.loopexit.split-lp.loopexit.split-lp ], [ %.pn165.ph, %.body329.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #31
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %22) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  br label %.body306

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread542: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit323.thread, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.oz = getelementptr inbounds nuw i8, ptr %.sroa.0496.0574, i64 32 ; 2 uses
  %.not555 = icmp eq ptr %i.oz, %i.nc
  br i1 %.not555, label %.lr.ph.i.i.i, label %bb.bj

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i318: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i316
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.pa = load ptr, ptr %21, align 8, !tbaa !48   ; 2 uses
  %i.pb = icmp eq ptr %i.pa, %i.mp
  br i1 %i.pb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i339

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i339: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i318
  %i.pc = load i64, ptr %i.mp, align 8, !tbaa !38
  %i.pd = add i64 %i.pc, 1
  call void @_ZdlPvm(ptr noundef %i.pa, i64 noundef %i.pd) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i318, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i339
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #31
  %i.pe = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #31
  invoke void @_ZNK4pbrt5Image14SelectChannelsERKNS_16ImageChannelDescEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Image") align 8 %24, ptr noundef nonnull align 8 dereferenceable(152) %12, ptr noundef nonnull align 8 dereferenceable(48) %19, ptr %i.pe)
          to label %bb.bm unwind label %bb.bn

.body306:                                         ; preds = %bb.bf, %bb.bc, %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i308, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i314, %bb.bi, %.body329
  %.pn165.pn.pn = phi { ptr, i32 } [ %.pn165, %.body329 ], [ %i.nd, %bb.bb ], [ %i.nd, %bb.bc ], [ %i.oe, %bb.bi ], [ %i.nz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i314 ], [ %i.np, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i308 ], [ %i.np, %bb.bf ] ; 2 uses
  %i.pf = load ptr, ptr %21, align 8, !tbaa !48   ; 2 uses
  %i.pg = icmp eq ptr %i.pf, %i.mp
  br i1 %i.pg, label %.body303, label %.body303.sink.split

.body303.sink.split:                              ; preds = %.body306, %bb.ba
  %.sink755 = phi ptr [ %i.ms, %bb.ba ], [ %i.pf, %.body306 ]
  %.pn165.pn.pn.pn.ph = phi { ptr, i32 } [ %i.mr, %bb.ba ], [ %.pn165.pn.pn, %.body306 ]
  %i.ph = load i64, ptr %i.mp, align 8, !tbaa !38
  %i.pi = add i64 %i.ph, 1
  call void @_ZdlPvm(ptr noundef %.sink755, i64 noundef %i.pi) #34
  br label %.body303

.body303:                                         ; preds = %.body303.sink.split, %.body306, %bb.ba
  %.pn165.pn.pn.pn = phi { ptr, i32 } [ %i.mr, %bb.ba ], [ %.pn165.pn.pn, %.body306 ], [ %.pn165.pn.pn.pn.ph, %.body303.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #31
  br label %.body292

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %12, ptr noundef nonnull align 8 dereferenceable(152) %24, i64 12, i1 false)
  %i.pj = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.pk = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.pl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS6_EEEaSEOSA_(ptr noundef nonnull align 8 dereferenceable(32) %i.pj, ptr noundef nonnull align 8 dereferenceable(32) %i.pk)
          to label %.noexc345 unwind label %bb.bo ; 0 uses

.noexc345:                                        ; preds = %bb.bm
  %i.pm = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.pn = getelementptr inbounds nuw i8, ptr %24, i64 48
  %i.po = load i64, ptr %i.pn, align 8, !tbaa !77
  store i64 %i.po, ptr %i.pm, align 8, !tbaa !77
  %i.pp = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.pq = getelementptr inbounds nuw i8, ptr %24, i64 56
  %i.pr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorIhNS_3pmr21polymorphic_allocatorIhEEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.pp, ptr noundef nonnull align 8 dereferenceable(32) %i.pq)
          to label %.noexc346 unwind label %bb.bo ; 0 uses

.noexc346:                                        ; preds = %.noexc345
  %i.ps = getelementptr inbounds nuw i8, ptr %12, i64 88
  %i.pt = getelementptr inbounds nuw i8, ptr %24, i64 88
  %i.pu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorIN4pbrt4HalfENS_3pmr21polymorphic_allocatorIS2_EEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(32) %i.ps, ptr noundef nonnull align 8 dereferenceable(32) %i.pt)
          to label %.noexc347 unwind label %bb.bo ; 0 uses

.noexc347:                                        ; preds = %.noexc346
  %i.pv = getelementptr inbounds nuw i8, ptr %12, i64 120
  %i.pw = getelementptr inbounds nuw i8, ptr %24, i64 120
  %i.px = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.pv, ptr noundef nonnull align 8 dereferenceable(32) %i.pw)
          to label %_ZN4pbrt5ImageaSEOS0_.exit349 unwind label %bb.bo ; 0 uses

_ZN4pbrt5ImageaSEOS0_.exit349:                    ; preds = %.noexc347
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %24) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #31
  br label %bb.bq

bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341
  %i.py = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bo:                                            ; preds = %.noexc347, %.noexc346, %.noexc345, %bb.bm
  %i.pz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %24) #31
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.pn145 = phi { ptr, i32 } [ %i.pz, %bb.bo ], [ %i.py, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #31
  br label %.body292

bb.bq:                                            ; preds = %_ZN4pbrt5ErrorIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpOT_.exit294, %_ZN4pbrt5ImageaSEOS0_.exit349
  %i.qa = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !114 ; 2 uses
  %.not.i.i.i.i.i350 = icmp eq ptr %i.qb, null
  br i1 %.not.i.i.i.i.i350, label %_ZN4pbrt16ImageChannelDescD2Ev.exit351, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.qc = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.qd = load i64, ptr %i.qc, align 8, !tbaa !157
  %i.qe = shl i64 %i.qd, 2
  %i.qf = load ptr, ptr %19, align 8, !tbaa !158  ; 2 uses
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !120
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 24
  %i.qi = load ptr, ptr %i.qh, align 8
  invoke void %i.qi(ptr noundef nonnull align 8 dereferenceable(8) %i.qf, ptr noundef nonnull %i.qb, i64 noundef %i.qe, i64 noundef 4)
          to label %_ZN4pbrt16ImageChannelDescD2Ev.exit351 unwind label %bb.bs, !inline_history !15

bb.bs:                                            ; preds = %bb.br
  %i.qj = landingpad { ptr, i32 }
          catch ptr null
  %i.qk = extractvalue { ptr, i32 } %i.qj, 0
  call void @__clang_call_terminate(ptr %i.qk) #36
  unreachable

_ZN4pbrt16ImageChannelDescD2Ev.exit351:           ; preds = %bb.bq, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31
  br i1 %.not554, label %bb.dy, label %bb.bu

.body292:                                         ; preds = %bb.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i288, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i282, %bb.bp, %.body303
  %.pn165.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn165.pn.pn.pn, %.body303 ], [ %.pn145, %bb.bp ], [ %i.li, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i282 ], [ %i.ls, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i288 ], [ %i.li, %bb.av ]
  call void @_ZN4pbrt16ImageChannelDescD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %19) #31
  br label %bb.bt

bb.bt:                                            ; preds = %.body292, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297.2
  %.pn165.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn165.pn.pn.pn.pn, %.body292 ], [ %i.lx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297.2 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31
  br label %.body

bb.bu:                                            ; preds = %bb.j, %_ZN4pbrt16ImageChannelDescD2Ev.exit, %_ZN4pbrt16ImageChannelDescD2Ev.exit266, %_ZN4pbrt16ImageChannelDescD2Ev.exit351
  %i.ql = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 3 uses
  %i.qm = load i64, ptr %i.ql, align 8, !tbaa !75
  %i.qn = trunc i64 %i.qm to i32
  switch i32 %i.qn, label %bb.bv [
    i32 1, label %bb.bx
    i32 3, label %bb.bx
    i32 4, label %bb.bx
  ]

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZN4pbrt8LogFatalIJRA84_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef 987, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(84) @.str.63) #33
          to label %bb.bw unwind label %bb.k

bb.bw:                                            ; preds = %bb.bv
  unreachable

bb.bx:                                            ; preds = %bb.bu, %bb.bu, %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #31
  invoke void @_ZN4pbrt13ImageMetadataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(304) %25, ptr noundef nonnull align 8 dereferenceable(304) %2)
          to label %bb.by unwind label %bb.ch

bb.by:                                            ; preds = %bb.bx
  %i.qo = load i64, ptr %i.ql, align 8, !tbaa !75
  %i.qp = and i64 %i.qo, 4294967295
  %.not = icmp eq i64 %i.qp, 1
  br i1 %.not, label %bb.cy, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.qq = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.qs = load i8, ptr %i.qr, align 8, !tbaa !51, !range !52, !noundef !53
  %i.qt = trunc nuw i8 %i.qs to i1
  %i.qu = load ptr, ptr %i.qq, align 8            ; 2 uses
  %.not.i = icmp ne ptr %i.qu, null
  %or.cond.not.i = select i1 %i.qt, i1 %.not.i, i1 false
  %_ZN4pbrt13RGBColorSpace4sRGBE.val.i = load ptr, ptr @_ZN4pbrt13RGBColorSpace4sRGBE, align 8 ; 6 uses
  %.0.i = select i1 %or.cond.not.i, ptr %i.qu, ptr %_ZN4pbrt13RGBColorSpace4sRGBE.val.i ; 5 uses
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %_ZN4pbrt13RGBColorSpace4sRGBE.val.i, align 8
  %i.qv = load <2 x float>, ptr %.0.i, align 4
  %i.qw = fcmp une <2 x float> %i.qv, %.sroa.03.0.copyload.i
  %36 = freeze <2 x i1> %i.qw
  %37 = bitcast <2 x i1> %36 to i2
  %.not758 = icmp eq i2 %37, 0
  br i1 %.not758, label %bb.ca, label %_ZNK4pbrt13RGBColorSpaceneERKS0_.exit.thread

bb.ca:                                            ; preds = %bb.bz
  %i.qx = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.qy = getelementptr inbounds nuw i8, ptr %_ZN4pbrt13RGBColorSpace4sRGBE.val.i, i64 8
  %.sroa.02.0.copyload.i = load <2 x float>, ptr %i.qy, align 8
  %i.qz = load <2 x float>, ptr %i.qx, align 4
  %i.ra = fcmp une <2 x float> %i.qz, %.sroa.02.0.copyload.i
  %38 = freeze <2 x i1> %i.ra
  %39 = bitcast <2 x i1> %38 to i2
  %.not759 = icmp eq i2 %39, 0
  br i1 %.not759, label %bb.cb, label %_ZNK4pbrt13RGBColorSpaceneERKS0_.exit.thread

bb.cb:                                            ; preds = %bb.ca
  %i.rb = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.rc = getelementptr inbounds nuw i8, ptr %_ZN4pbrt13RGBColorSpace4sRGBE.val.i, i64 16
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.rc, align 8
  %i.rd = load <2 x float>, ptr %i.rb, align 4
  %i.re = fcmp une <2 x float> %i.rd, %.sroa.01.0.copyload.i
  %40 = freeze <2 x i1> %i.re
  %41 = bitcast <2 x i1> %40 to i2
  %.not760 = icmp eq i2 %41, 0
  br i1 %.not760, label %bb.cc, label %_ZNK4pbrt13RGBColorSpaceneERKS0_.exit.thread

bb.cc:                                            ; preds = %bb.cb
  %i.rf = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.rg = getelementptr inbounds nuw i8, ptr %_ZN4pbrt13RGBColorSpace4sRGBE.val.i, i64 24
  %.sroa.0.0.copyload.i352 = load <2 x float>, ptr %i.rg, align 8
  %i.rh = load <2 x float>, ptr %i.rf, align 4
  %i.ri = fcmp une <2 x float> %i.rh, %.sroa.0.0.copyload.i352
  %42 = freeze <2 x i1> %i.ri
  %43 = bitcast <2 x i1> %42 to i2
  %.not761 = icmp eq i2 %43, 0
  br i1 %.not761, label %_ZNK4pbrt13RGBColorSpaceneERKS0_.exit, label %_ZNK4pbrt13RGBColorSpaceneERKS0_.exit.thread

_ZNK4pbrt13RGBColorSpaceneERKS0_.exit:            ; preds = %bb.cc
  %i.rj = getelementptr inbounds nuw i8, ptr %.0.i, i64 144
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !206
  %i.rl = getelementptr inbounds nuw i8, ptr %_ZN4pbrt13RGBColorSpace4sRGBE.val.i, i64 144
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !206
  %.not556 = icmp eq ptr %i.rk, %i.rm
  br i1 %.not556, label %bb.cy, label %_ZNK4pbrt13RGBColorSpaceneERKS0_.exit.thread

_ZNK4pbrt13RGBColorSpaceneERKS0_.exit.thread:     ; preds = %bb.bz, %bb.ca, %bb.cb, %bb.cc, %_ZNK4pbrt13RGBColorSpaceneERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.rn = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.rn, ptr %4, align 8, !tbaa !43, !alias.scope !810
  %i.ro = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.ro, align 8, !tbaa !46, !alias.scope !810
  store i8 0, ptr %i.rn, align 8, !tbaa !38, !alias.scope !810
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull align 8 %4, ptr noundef nonnull @.str.64, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i357 unwind label %bb.cd

bb.cd:                                            ; preds = %_ZNK4pbrt13RGBColorSpaceneERKS0_.exit.thread
  %i.rp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rq = load ptr, ptr %4, align 8, !tbaa !48, !alias.scope !810 ; 2 uses
  %i.rr = icmp eq ptr %i.rq, %i.rn
  br i1 %i.rr, label %.body364, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i353

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i353: ; preds = %bb.cd
  %i.rs = load i64, ptr %i.rn, align 8, !tbaa !38, !alias.scope !810
  %i.rt = add i64 %i.rs, 1
  call void @_ZdlPvm(ptr noundef %i.rq, i64 noundef %i.rt) #34
  br label %.body364

_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i357: ; preds = %_ZNK4pbrt13RGBColorSpaceneERKS0_.exit.thread
  %i.ru = load ptr, ptr %4, align 8, !tbaa !48
  invoke void @_ZN4pbrt7WarningEPKNS_7FileLocEPKc(ptr noundef null, ptr noundef %i.ru)
          to label %bb.ce unwind label %bb.cf

bb.ce:                                            ; preds = %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i357
  %i.rv = load ptr, ptr %4, align 8, !tbaa !48    ; 2 uses
  %i.rw = icmp eq ptr %i.rv, %i.rn
  br i1 %i.rw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i363, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i361

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i361: ; preds = %bb.ce
  %i.rx = load i64, ptr %i.rn, align 8, !tbaa !38
  %i.ry = add i64 %i.rx, 1
  call void @_ZdlPvm(ptr noundef %i.rv, i64 noundef %i.ry) #34
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i363

bb.cf:                                            ; preds = %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i357
  %i.rz = landingpad { ptr, i32 }
          cleanup
  %i.sa = load ptr, ptr %4, align 8, !tbaa !48    ; 2 uses
  %i.sb = icmp eq ptr %i.sa, %i.rn
  br i1 %i.sb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i359, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i358

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i358: ; preds = %bb.cf
  %i.sc = load i64, ptr %i.rn, align 8, !tbaa !38
  %i.sd = add i64 %i.sc, 1
  call void @_ZdlPvm(ptr noundef %i.sa, i64 noundef %i.sd) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i359

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i359: ; preds = %bb.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i358
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %.body364

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i363: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i361
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #31
  %i.se = load i8, ptr %i.qr, align 8, !tbaa !51, !range !52, !noundef !53
  %i.sf = trunc nuw i8 %i.se to i1
  %i.sg = load ptr, ptr %i.qq, align 8            ; 2 uses
  %.not.i367 = icmp ne ptr %i.sg, null
  %or.cond.not.i368 = select i1 %i.sf, i1 %.not.i367, i1 false
  %_ZN4pbrt13RGBColorSpace4sRGBE.val.i369 = load ptr, ptr @_ZN4pbrt13RGBColorSpace4sRGBE, align 8 ; 2 uses
  %.0.i370 = select i1 %or.cond.not.i368, ptr %i.sg, ptr %_ZN4pbrt13RGBColorSpace4sRGBE.val.i369
  invoke void @_ZN4pbrt20ConvertRGBColorSpaceERKNS_13RGBColorSpaceES2_(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::SquareMatrix") align 4 %26, ptr noundef nonnull align 8 dereferenceable(152) %.0.i370, ptr noundef nonnull align 8 dereferenceable(152) %_ZN4pbrt13RGBColorSpace4sRGBE.val.i369)
          to label %._crit_edge.i.i371 unwind label %bb.cj

._crit_edge.i.i371:                               ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i363
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #31
  %i.sh = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  store ptr %i.sh, ptr %28, align 8, !tbaa !43
  store i8 82, ptr %i.sh, align 8, !tbaa !38
  %i.si = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 1, ptr %i.si, align 8, !tbaa !46
  %i.sj = getelementptr inbounds nuw i8, ptr %28, i64 17
  store i8 0, ptr %i.sj, align 1, !tbaa !38
  %i.sk = getelementptr inbounds nuw i8, ptr %28, i64 32
  %i.sl = getelementptr inbounds nuw i8, ptr %28, i64 48 ; 2 uses
  store ptr %i.sl, ptr %i.sk, align 8, !tbaa !43
  store i8 71, ptr %i.sl, align 8, !tbaa !38
  %i.sm = getelementptr inbounds nuw i8, ptr %28, i64 40
  store i64 1, ptr %i.sm, align 8, !tbaa !46
  %i.sn = getelementptr inbounds nuw i8, ptr %28, i64 49
  store i8 0, ptr %i.sn, align 1, !tbaa !38
  %i.so = getelementptr inbounds nuw i8, ptr %28, i64 64
  %i.sp = getelementptr inbounds nuw i8, ptr %28, i64 80 ; 2 uses
  store ptr %i.sp, ptr %i.so, align 8, !tbaa !43
  store i8 66, ptr %i.sp, align 8, !tbaa !38
  %i.sq = getelementptr inbounds nuw i8, ptr %28, i64 72
  store i64 1, ptr %i.sq, align 8, !tbaa !46
  %i.sr = getelementptr inbounds nuw i8, ptr %28, i64 81
  store i8 0, ptr %i.sr, align 1, !tbaa !38
  invoke void @_ZNK4pbrt5Image14GetChannelDescEN4pstd4spanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"struct.pbrt::ImageChannelDesc") align 8 %27, ptr noundef nonnull align 8 dereferenceable(152) %12, ptr nonnull %28, i64 3)
          to label %bb.cg unwind label %bb.ck

bb.cg:                                            ; preds = %._crit_edge.i.i371
  %i.ss = getelementptr inbounds nuw i8, ptr %28, i64 64
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !48 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %28, i64 80 ; 2 uses
  %i.sv = icmp eq ptr %i.st, %i.su
  br i1 %i.sv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i383

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i383: ; preds = %bb.cg
  %i.sw = load i64, ptr %i.su, align 8, !tbaa !38
  %i.sx = add i64 %i.sw, 1
  call void @_ZdlPvm(ptr noundef %i.st, i64 noundef %i.sx) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385: ; preds = %bb.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i383
  %i.sy = getelementptr inbounds nuw i8, ptr %28, i64 32
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !48 ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %28, i64 48 ; 2 uses
  %i.tb = icmp eq ptr %i.sz, %i.ta
  br i1 %i.tb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i383.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i383.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385
  %i.tc = load i64, ptr %i.ta, align 8, !tbaa !38
  %i.td = add i64 %i.tc, 1
  call void @_ZdlPvm(ptr noundef %i.sz, i64 noundef %i.td) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i383.1
  %i.te = load ptr, ptr %28, align 8, !tbaa !48   ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.tg = icmp eq ptr %i.te, %i.tf
  br i1 %i.tg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i383.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i383.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385.1
  %i.th = load i64, ptr %i.tf, align 8, !tbaa !38
  %i.ti = add i64 %i.th, 1
  call void @_ZdlPvm(ptr noundef %i.te, i64 noundef %i.ti) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i383.2
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #31
  %i.tj = getelementptr inbounds nuw i8, ptr %27, i64 40
  %i.tk = load i64, ptr %i.tj, align 8, !tbaa !101
  %.not557 = icmp eq i64 %i.tk, 0
  br i1 %.not557, label %bb.ct, label %.preheader562

.preheader562:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385.2
  %i.tl = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 2 uses
  %.sroa.0.0.copyload.i386580 = load i64, ptr %i.tl, align 4 ; 2 uses
  %.sroa.3.0.extract.shift581 = lshr i64 %.sroa.0.0.copyload.i386580, 32
  %.sroa.3.0.extract.trunc582 = trunc nuw i64 %.sroa.3.0.extract.shift581 to i32
  %i.tm = icmp sgt i32 %.sroa.3.0.extract.trunc582, 0
  br i1 %i.tm, label %.preheader.lr.ph, label %._crit_edge584

.preheader.lr.ph:                                 ; preds = %.preheader562
  %i.tn = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.tp = getelementptr inbounds nuw i8, ptr %26, i64 4
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %29, i64 20
  %i.tq = getelementptr inbounds nuw i8, ptr %26, i64 8
  %.sroa.gep486 = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.tr = getelementptr inbounds nuw i8, ptr %26, i64 12
  %i.ts = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.tt = getelementptr inbounds nuw i8, ptr %26, i64 20
  %i.tu = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.tv = getelementptr inbounds nuw i8, ptr %26, i64 28
  %i.tw = getelementptr inbounds nuw i8, ptr %26, i64 32
  %i.tx = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ty = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.tz = getelementptr inbounds nuw i8, ptr %29, i64 40
  %i.ua = getelementptr inbounds nuw i8, ptr %29, i64 32
  %.sroa.gep590 = getelementptr inbounds nuw i8, ptr %27, i64 20
  %.sroa.gep593 = getelementptr inbounds nuw i8, ptr %27, i64 24
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge579
  %.sroa.0.0.copyload.i386598 = phi i64 [ %.sroa.0.0.copyload.i386580, %.preheader.lr.ph ], [ %.sroa.0.0.copyload.i386, %._crit_edge579 ] ; 2 uses
  %indvars.iv587 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next588, %._crit_edge579 ] ; 2 uses
  %.sroa.014.0.extract.trunc576 = trunc i64 %.sroa.0.0.copyload.i386598 to i32
  %i.ub = icmp sgt i32 %.sroa.014.0.extract.trunc576, 0
  br i1 %i.ub, label %.lr.ph578, label %._crit_edge579

.lr.ph578:                                        ; preds = %.preheader
  %.sroa.2484.0.insert.shift = shl nuw nsw i64 %indvars.iv587, 32
  br label %bb.cl

._crit_edge584:                                   ; preds = %._crit_edge579, %.preheader562
  %i.uc = getelementptr inbounds nuw i8, ptr %25, i64 192
  %i.ud = getelementptr inbounds nuw i8, ptr %25, i64 200
  %i.ue = load ptr, ptr @_ZN4pbrt13RGBColorSpace4sRGBE, align 8, !tbaa !195
  store ptr %i.ue, ptr %i.uc, align 8, !tbaa !195
  store i8 1, ptr %i.ud, align 8, !tbaa !51
  br label %bb.ct

end_hunk_0
begin_hunk_1_@_ZNK4pbrt5Image8WriteEXRERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_13ImageMetadataE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  br label %bb.ar

bb.ao:                                            ; preds = %bb.al
  %i.cy = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.aq

bb.ap:                                            ; preds = %bb.am
  %i.cz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN7Imf_3_114TypedAttributeIN9Imath_3_18Matrix44IfEEED1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %15) #31
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %.pn97 = phi { ptr, i32 } [ %i.cz, %bb.ap ], [ %i.cy, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  br label %.loopexit.split-lp

bb.ar:                                            ; preds = %bb.an, %bb.ak
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 180
  %i.db = load i8, ptr %i.da, align 4, !tbaa !183, !range !52, !noundef !53
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.as, label %bb.ay

bb.as:                                            ; preds = %bb.ar
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 176
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  invoke void @_ZN7Imf_3_114TypedAttributeIiEC1ERKi(ptr noundef nonnull align 8 dereferenceable(12) %17, ptr noundef nonnull align 4 dereferenceable(4) %i.dd)
          to label %bb.at unwind label %bb.av

bb.at:                                            ; preds = %bb.as
  invoke void @_ZN7Imf_3_16Header6insertEPKcRKNS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(49) %9, ptr noundef nonnull @.str.70, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.au unwind label %bb.aw

bb.au:                                            ; preds = %bb.at
  call void @_ZN7Imf_3_114TypedAttributeIiED1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %17) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  br label %bb.ay

bb.av:                                            ; preds = %bb.as
  %i.de = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.ax

bb.aw:                                            ; preds = %bb.at
  %i.df = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN7Imf_3_114TypedAttributeIiED1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %17) #31
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.pn99 = phi { ptr, i32 } [ %i.df, %bb.aw ], [ %i.de, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  br label %.loopexit.split-lp

bb.ay:                                            ; preds = %bb.au, %bb.ar
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 188
  %i.dh = load i8, ptr %i.dg, align 4, !tbaa !175, !range !52, !noundef !53
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.az, label %bb.bf

bb.az:                                            ; preds = %bb.ay
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 184
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #31
  invoke void @_ZN7Imf_3_114TypedAttributeIfEC1ERKf(ptr noundef nonnull align 8 dereferenceable(12) %18, ptr noundef nonnull align 4 dereferenceable(4) %i.dj)
          to label %bb.ba unwind label %bb.bc

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN7Imf_3_16Header6insertEPKcRKNS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(49) %9, ptr noundef nonnull @.str.71, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.bb unwind label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  call void @_ZN7Imf_3_114TypedAttributeIfED1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %18) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31
  br label %bb.bf

bb.bc:                                            ; preds = %bb.az
  %i.dk = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.be

bb.bd:                                            ; preds = %bb.ba
  %i.dl = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN7Imf_3_114TypedAttributeIfED1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %18) #31
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.pn101 = phi { ptr, i32 } [ %i.dl, %bb.bd ], [ %i.dk, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31
  br label %.loopexit.split-lp

bb.bf:                                            ; preds = %bb.bb, %bb.ay
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !190 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 2 uses
  %.not196205 = icmp eq ptr %i.dn, %i.do
  br i1 %.not196205, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.bh, %bb.bf
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !190 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 2 uses
  %.not197207 = icmp eq ptr %i.dq, %i.dr
  br i1 %.not197207, label %._crit_edge211, label %.lr.ph210

.lr.ph:                                           ; preds = %bb.bf, %bb.bh
  %.sroa.0151.0206 = phi ptr [ %i.du, %bb.bh ], [ %i.dn, %bb.bf ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #31
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0151.0206, i64 64
  invoke void @_ZN7Imf_3_114TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1ERKS6_(ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef nonnull align 8 dereferenceable(32) %i.ds)
          to label %bb.bg unwind label %bb.bi

bb.bg:                                            ; preds = %.lr.ph
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0151.0206, i64 32
  invoke void @_ZN7Imf_3_16Header6insertERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(49) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.dt, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.bh unwind label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  call void @_ZN7Imf_3_114TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %19) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31
  %i.du = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0151.0206) #37 ; 2 uses
  %.not196 = icmp eq ptr %i.du, %i.do
  br i1 %.not196, label %._crit_edge, label %.lr.ph

bb.bi:                                            ; preds = %.lr.ph
  %i.dv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bg
  %i.dw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN7Imf_3_114TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %19) #31
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.pn111 = phi { ptr, i32 } [ %i.dw, %bb.bj ], [ %i.dv, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31
  br label %.loopexit.split-lp

.lr.ph210:                                        ; preds = %._crit_edge, %bb.bm
  %.sroa.0147.0208 = phi ptr [ %i.dz, %bb.bm ], [ %i.dq, %._crit_edge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #31
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0147.0208, i64 64
  invoke void @_ZN7Imf_3_114TypedAttributeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEC1ERKS9_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(24) %i.dx)
          to label %bb.bl unwind label %bb.bn

bb.bl:                                            ; preds = %.lr.ph210
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0147.0208, i64 32
  invoke void @_ZN7Imf_3_16Header6insertERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(49) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.dy, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.bm unwind label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  call void @_ZN7Imf_3_114TypedAttributeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEED1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %20) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31
  %i.dz = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0147.0208) #37 ; 2 uses
  %.not197 = icmp eq ptr %i.dz, %i.dr
  br i1 %.not197, label %._crit_edge211, label %.lr.ph210

bb.bn:                                            ; preds = %.lr.ph210
  %i.ea = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bl
  %i.eb = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN7Imf_3_114TypedAttributeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEED1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %20) #31
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.pn109 = phi { ptr, i32 } [ %i.eb, %bb.bo ], [ %i.ea, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31
  br label %.loopexit.split-lp

._crit_edge211:                                   ; preds = %bb.bm, %._crit_edge
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.ee = load i8, ptr %i.ed, align 8, !tbaa !51, !range !52, !noundef !53
  %i.ef = trunc nuw i8 %i.ee to i1
  %i.eg = load ptr, ptr %i.ec, align 8            ; 2 uses
  %.not.i142 = icmp ne ptr %i.eg, null
  %or.cond.not.i = select i1 %i.ef, i1 %.not.i142, i1 false
  %_ZN4pbrt13RGBColorSpace4sRGBE.val.i = load ptr, ptr @_ZN4pbrt13RGBColorSpace4sRGBE, align 8 ; 6 uses
  %.0.i = select i1 %or.cond.not.i, ptr %i.eg, ptr %_ZN4pbrt13RGBColorSpace4sRGBE.val.i ; 7 uses
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %_ZN4pbrt13RGBColorSpace4sRGBE.val.i, align 8
  %i.eh = load <2 x float>, ptr %.0.i, align 4    ; 2 uses
  %i.ei = fcmp une <2 x float> %i.eh, %.sroa.03.0.copyload.i
  %28 = freeze <2 x i1> %i.ei
  %29 = bitcast <2 x i1> %28 to i2
  %.not255 = icmp eq i2 %29, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  br i1 %.not255, label %bb.bq, label %._crit_edge211._ZNK4pbrt13RGBColorSpaceneERKS0_.exit.thread_crit_edge

._crit_edge211._ZNK4pbrt13RGBColorSpaceneERKS0_.exit.thread_crit_edge: ; preds = %._crit_edge211
  %i.ej = load <2 x float>, ptr %.phi.trans.insert, align 8, !tbaa !79
  br label %_ZNK4pbrt13RGBColorSpaceneERKS0_.exit.thread

bb.bq:                                            ; preds = %._crit_edge211
  %i.ek = getelementptr inbounds nuw i8, ptr %_ZN4pbrt13RGBColorSpace4sRGBE.val.i, i64 8
  %.sroa.02.0.copyload.i = load <2 x float>, ptr %i.ek, align 8
  %i.el = load <2 x float>, ptr %.phi.trans.insert, align 4 ; 5 uses
  %i.em = fcmp une <2 x float> %i.el, %.sroa.02.0.copyload.i
  %30 = freeze <2 x i1> %i.em
  %31 = bitcast <2 x i1> %30 to i2
  %.not256 = icmp eq i2 %31, 0
  br i1 %.not256, label %bb.br, label %_ZNK4pbrt13RGBColorSpaceneERKS0_.exit.thread

bb.br:                                            ; preds = %bb.bq
  %i.en = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.eo = getelementptr inbounds nuw i8, ptr %_ZN4pbrt13RGBColorSpace4sRGBE.val.i, i64 16
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.eo, align 8
  %i.ep = load <2 x float>, ptr %i.en, align 4
  %i.eq = fcmp une <2 x float> %i.ep, %.sroa.01.0.copyload.i
  %32 = freeze <2 x i1> %i.eq
  %33 = bitcast <2 x i1> %32 to i2
  %.not257 = icmp eq i2 %33, 0
  br i1 %.not257, label %bb.bs, label %_ZNK4pbrt13RGBColorSpaceneERKS0_.exit.thread

bb.bs:                                            ; preds = %bb.br
  %i.er = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.es = getelementptr inbounds nuw i8, ptr %_ZN4pbrt13RGBColorSpace4sRGBE.val.i, i64 24
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.es, align 8
  %i.et = load <2 x float>, ptr %i.er, align 4
  %i.eu = fcmp une <2 x float> %i.et, %.sroa.0.0.copyload.i
  %34 = freeze <2 x i1> %i.eu
  %35 = bitcast <2 x i1> %34 to i2
  %.not258 = icmp eq i2 %35, 0
  br i1 %.not258, label %_ZNK4pbrt13RGBColorSpaceneERKS0_.exit, label %_ZNK4pbrt13RGBColorSpaceneERKS0_.exit.thread

_ZNK4pbrt13RGBColorSpaceneERKS0_.exit:            ; preds = %bb.bs
  %i.ev = getelementptr inbounds nuw i8, ptr %.0.i, i64 144
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !206
  %i.ex = getelementptr inbounds nuw i8, ptr %_ZN4pbrt13RGBColorSpace4sRGBE.val.i, i64 144
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !206
  %.not198 = icmp eq ptr %i.ew, %i.ey
  br i1 %.not198, label %bb.cb, label %_ZNK4pbrt13RGBColorSpaceneERKS0_.exit.thread

_ZNK4pbrt13RGBColorSpaceneERKS0_.exit.thread:     ; preds = %._crit_edge211._ZNK4pbrt13RGBColorSpaceneERKS0_.exit.thread_crit_edge, %bb.bq, %bb.br, %bb.bs, %_ZNK4pbrt13RGBColorSpaceneERKS0_.exit
  %i.ez = phi <2 x float> [ %i.ej, %._crit_edge211._ZNK4pbrt13RGBColorSpaceneERKS0_.exit.thread_crit_edge ], [ %i.el, %bb.bq ], [ %i.el, %bb.br ], [ %i.el, %bb.bs ], [ %i.el, %_ZNK4pbrt13RGBColorSpaceneERKS0_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31
  store <2 x float> %i.eh, ptr %22, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #31
  store <2 x float> %i.ez, ptr %23, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #31
  %i.fa = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.fb = load <2 x float>, ptr %i.fa, align 8, !tbaa !79
  store <2 x float> %i.fb, ptr %24, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #31
  %i.fc = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.fd = load <2 x float>, ptr %i.fc, align 8, !tbaa !79
  store <2 x float> %i.fd, ptr %25, align 8, !tbaa !79
  invoke void @_ZN7Imf_3_114ChromaticitiesC1ERKN9Imath_3_14Vec2IfEES5_S5_S5_(ptr noundef nonnull align 4 dereferenceable(32) %21, ptr noundef nonnull align 4 dereferenceable(8) %22, ptr noundef nonnull align 4 dereferenceable(8) %23, ptr noundef nonnull align 4 dereferenceable(8) %24, ptr noundef nonnull align 4 dereferenceable(8) %25)
          to label %bb.bt unwind label %bb.bw

bb.bt:                                            ; preds = %_ZNK4pbrt13RGBColorSpaceneERKS0_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #31
  invoke void @_ZN7Imf_3_114TypedAttributeINS_14ChromaticitiesEEC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %26, ptr noundef nonnull align 4 dereferenceable(32) %21)
          to label %bb.bu unwind label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZN7Imf_3_16Header6insertEPKcRKNS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(49) %9, ptr noundef nonnull @.str.72, ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.bv unwind label %bb.by

bb.bv:                                            ; preds = %bb.bu
  call void @_ZN7Imf_3_114TypedAttributeINS_14ChromaticitiesEED1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %26) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #31
  br label %bb.cb

bb.bw:                                            ; preds = %_ZNK4pbrt13RGBColorSpaceneERKS0_.exit.thread
  %i.fe = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  br label %bb.ca

bb.bx:                                            ; preds = %bb.bt
  %i.ff = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.bz

bb.by:                                            ; preds = %bb.bu
  %i.fg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN7Imf_3_114TypedAttributeINS_14ChromaticitiesEED1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %26) #31
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.pn103 = phi { ptr, i32 } [ %i.fg, %bb.by ], [ %i.ff, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #31
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bw
  %.pn103.pn = phi { ptr, i32 } [ %.pn103, %bb.bz ], [ %i.fe, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #31
  br label %.loopexit.split-lp

bb.cb:                                            ; preds = %bb.bv, %_ZNK4pbrt13RGBColorSpaceneERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #31
  %i.fh = load ptr, ptr %1, align 8, !tbaa !48
  %i.fi = invoke noundef i32 @_ZN7Imf_3_117globalThreadCountEv()
          to label %bb.cc unwind label %bb.ch

bb.cc:                                            ; preds = %bb.cb
  invoke void @_ZN7Imf_3_110OutputFileC1EPKcRKNS_6HeaderEi(ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef %i.fh, ptr noundef nonnull align 8 dereferenceable(49) %9, i32 noundef %i.fi)
          to label %bb.cd unwind label %bb.ch

bb.cd:                                            ; preds = %bb.cc
  invoke void @_ZN7Imf_3_110OutputFile14setFrameBufferERKNS_11FrameBufferE(ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %bb.ce unwind label %bb.ci

bb.ce:                                            ; preds = %bb.cd
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !73
  invoke void @_ZN7Imf_3_110OutputFile11writePixelsEi(ptr noundef nonnull align 8 dereferenceable(16) %27, i32 noundef %i.fk)
          to label %bb.cf unwind label %bb.ci

bb.cf:                                            ; preds = %bb.ce
  call void @_ZN7Imf_3_110OutputFileD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %27) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #31
  call void @_ZN7Imf_3_16HeaderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %i.fl = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !189
  invoke void @_ZNSt8_Rb_treeIN7Imf_3_14NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.fm)
          to label %_ZN7Imf_3_111FrameBufferD2Ev.exit unwind label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.fn = landingpad { ptr, i32 }
          catch ptr null
  %i.fo = extractvalue { ptr, i32 } %i.fn, 0
  call void @__clang_call_terminate(ptr %i.fo) #36
  unreachable

_ZN7Imf_3_111FrameBufferD2Ev.exit:                ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.cp

bb.ch:                                            ; preds = %bb.cc, %bb.cb
  %i.fp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.cj

bb.ci:                                            ; preds = %bb.ce, %bb.cd
  %i.fq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN7Imf_3_110OutputFileD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %27) #31
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.pn107 = phi { ptr, i32 } [ %i.fq, %bb.ci ], [ %i.fp, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #31
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.w, %bb.ca, %bb.cj, %bb.bp, %bb.bk, %bb.be, %bb.ax, %bb.aq, %bb.aj, %bb.ac
  %.pn117.pn = phi { ptr, i32 } [ %.pn103.pn, %bb.ca ], [ %.pn95, %bb.aj ], [ %.pn97, %bb.aq ], [ %.pn111, %bb.bk ], [ %.pn109, %bb.bp ], [ %.pn107, %bb.cj ], [ %.pn93, %bb.ac ], [ %i.cf, %bb.w ], [ %.pn101, %bb.be ], [ %.pn99, %bb.ax ], [ %lpad.loopexit.split-lp255, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN7Imf_3_16HeaderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %9) #31
  br label %bb.ck

bb.ck:                                            ; preds = %.loopexit.split-lp, %bb.r
  %.pn117.pn.pn = phi { ptr, i32 } [ %.pn117.pn, %.loopexit.split-lp ], [ %i.bz, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @_ZN7Imf_3_111FrameBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #31
  br label %bb.cl

bb.cl:                                            ; preds = %.body, %bb.ck
  %.pn117.pn.pn.pn = phi { ptr, i32 } [ %.pn117.pn.pn, %bb.ck ], [ %i.by, %.body ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %.19 = extractvalue { ptr, i32 } %.pn117.pn.pn.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.fr = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #31
  %i.fs = icmp eq i32 %.19, %i.fr
  br i1 %i.fs, label %bb.cm, label %bb.cq

bb.cm:                                            ; preds = %bb.cl
  %.1987 = extractvalue { ptr, i32 } %.pn117.pn.pn.pn, 0
  %i.ft = call ptr @__cxa_begin_catch(ptr %.1987) #31 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.fu = load ptr, ptr %1, align 8, !tbaa !48
  store ptr %i.fu, ptr %i.a, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.fv = load ptr, ptr %i.ft, align 8, !tbaa !120
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = call noundef ptr %i.fx(ptr noundef nonnull align 8 dereferenceable(8) %i.ft) #31
  store ptr %i.fy, ptr %i.b, align 8, !tbaa !197
  invoke void @_ZN4pbrt5ErrorIJPKcS2_EEEvS2_DpOT_(ptr noundef nonnull @.str.73, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.cn unwind label %bb.co

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @__cxa_end_catch()
  br label %bb.cp

bb.co:                                            ; preds = %bb.cm
  %i.fz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  invoke void @__cxa_end_catch()
          to label %bb.cq unwind label %bb.cr

bb.cp:                                            ; preds = %_ZN7Imf_3_111FrameBufferD2Ev.exit, %bb.cn, %bb.c
  %.089 = phi i1 [ %i.d, %bb.c ], [ false, %bb.cn ], [ true, %_ZN7Imf_3_111FrameBufferD2Ev.exit ]
  ret i1 %.089

bb.cq:                                            ; preds = %bb.co, %bb.cl, %bb.d
  %.merged = phi { ptr, i32 } [ %i.e, %bb.d ], [ %.pn117.pn.pn.pn, %bb.cl ], [ %i.fz, %bb.co ]
  resume { ptr, i32 } %.merged

bb.cr:                                            ; preds = %bb.co
  %i.ga = landingpad { ptr, i32 }
end_hunk_1
