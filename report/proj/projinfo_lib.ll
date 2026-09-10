Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/projinfo_lib?download=true
inline.NumInlined: 3852
inline.NumDeleted: 1140
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZL13main_projinfoP6pj_ctxiPPcRN12_GLOBAL__N_18StreamerE:bb.a

bb.be:                                            ; preds = %bb.bd
  %i.fu = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01598.02928, ptr noundef nonnull @.str.24) #31
  br i1 %i.fu, label %bb.bj, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fv = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01598.02928, ptr noundef nonnull @.str.25) #31
  br i1 %i.fv, label %bb.bj, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fw = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01598.02928, ptr noundef nonnull @.str.26) #31
  br i1 %i.fw, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fx = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01598.02928, ptr noundef nonnull @.str.27) #31
  br i1 %i.fx, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fy = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01598.02928, ptr noundef nonnull @.str.28) #31
  br i1 %i.fy, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd
  store i8 0, ptr %i.cj, align 2, !tbaa !79
  br label %bb.cz

bb.bk:                                            ; preds = %bb.bi
  %i.fz = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01598.02928, ptr noundef nonnull @.str.29) #31
  br i1 %i.fz, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ga = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01598.02928, ptr noundef nonnull @.str.30) #31
  br i1 %i.ga, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gb = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01598.02928, ptr noundef nonnull @.str.31) #31
  br i1 %i.gb, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bk
  store i8 1, ptr %i.ch, align 4, !tbaa !80
  br label %bb.cz

bb.bo:                                            ; preds = %bb.bm
  %i.gc = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01598.02928, ptr noundef nonnull @.str.32) #31
  br i1 %i.gc, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gd = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01598.02928, ptr noundef nonnull @.str.33) #31
  br i1 %i.gd, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ge = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01598.02928, ptr noundef nonnull @.str.34) #31
  br i1 %i.ge, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bo
  store i8 1, ptr %i.ci, align 1, !tbaa !83
  br label %bb.cz

bb.bs:                                            ; preds = %bb.bq
  %i.gf = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01598.02928, ptr noundef nonnull @.str.35) #31
  br i1 %i.gf, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.gg = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01598.02928, ptr noundef nonnull @.str.36) #31
  br i1 %i.gg, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.gh = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01598.02928, ptr noundef nonnull @.str.37) #31
  br i1 %i.gh, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %bb.bs
  store i8 0, ptr %i.ch, align 4, !tbaa !80
  br label %bb.cz

bb.bw:                                            ; preds = %bb.bu
  %i.gi = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01598.02928, ptr noundef nonnull @.str.38) #31
  br i1 %i.gi, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.gj = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01598.02928, ptr noundef nonnull @.str.39) #31
  br i1 %i.gj, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.gk = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01598.02928, ptr noundef nonnull @.str.40) #31
  br i1 %i.gk, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.bw
  store i8 1, ptr %i.cg, align 2, !tbaa !81
  br label %bb.cz

bb.ca:                                            ; preds = %bb.by
  %i.gl = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01598.02928, ptr noundef nonnull @.str.41) #31
  br i1 %i.gl, label %bb.cd, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.gm = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01598.02928, ptr noundef nonnull @.str.42) #31
  br i1 %i.gm, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.gn = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01598.02928, ptr noundef nonnull @.str.43) #31
  br i1 %i.gn, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc, %bb.cb, %bb.ca
  store i8 0, ptr %i.cg, align 2, !tbaa !81
  br label %bb.cz

bb.ce:                                            ; preds = %bb.cc
  %i.go = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01598.02928, ptr noundef nonnull @.str.44) #31
  br i1 %i.go, label %bb.ch, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.gp = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01598.02928, ptr noundef nonnull @.str.45) #31
  br i1 %i.gp, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.gq = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01598.02928, ptr noundef nonnull @.str.46) #31
  br i1 %i.gq, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %bb.ce
  store i8 1, ptr %i.cf, align 1, !tbaa !84
  br label %bb.cz

bb.ci:                                            ; preds = %bb.cg
  %i.gr = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01598.02928, ptr noundef nonnull @.str.47) #31
  br i1 %i.gr, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.gs = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01598.02928, ptr noundef nonnull @.str.48) #31
  br i1 %i.gs, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.gt = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01598.02928, ptr noundef nonnull @.str.49) #31
  br i1 %i.gt, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck, %bb.cj, %bb.ci
  store i8 0, ptr %i.cf, align 1, !tbaa !84
  br label %bb.cz

bb.cm:                                            ; preds = %bb.ck
  %i.gu = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01598.02928, ptr noundef nonnull @.str.50) #31
  br i1 %i.gu, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  store i8 1, ptr %i.ce, align 8, !tbaa !85
  br label %bb.cz

bb.co:                                            ; preds = %bb.cm
  %i.gv = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01598.02928, ptr noundef nonnull @.str.51) #31
  br i1 %i.gv, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  store i8 0, ptr %i.ce, align 8, !tbaa !85
  br label %bb.cz

bb.cq:                                            ; preds = %bb.co
  %i.gw = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01598.02928, ptr noundef nonnull @.str.52) #31
  br i1 %i.gw, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  store i8 1, ptr %i.cd, align 1, !tbaa !86
  br label %bb.cz

bb.cs:                                            ; preds = %bb.cq
  %i.gx = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01598.02928, ptr noundef nonnull @.str.53) #31
  br i1 %i.gx, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  store i8 0, ptr %i.cd, align 1, !tbaa !86
  br label %bb.cz

bb.cu:                                            ; preds = %bb.cs
  %i.gy = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL3EElsIA35_cEERS3_RKT_(ptr noundef nonnull align 8 dereferenceable(408) %i.bx, ptr noundef nonnull align 1 dereferenceable(35) @.str.54)
          to label %bb.cv unwind label %bb.cy     ; 0 uses

bb.cv:                                            ; preds = %bb.cu
  %i.gz = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL3EElsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS3_RKT_(ptr noundef nonnull align 8 dereferenceable(408) %i.bx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01598.02928)
          to label %bb.cw unwind label %bb.cy     ; 0 uses

bb.cw:                                            ; preds = %bb.cv
  %i.ha = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL3EElsEPFRSoS4_E(ptr noundef nonnull align 8 dereferenceable(408) %i.bx)
          to label %bb.cx unwind label %bb.cy     ; 0 uses

bb.cx:                                            ; preds = %bb.cw
  %i.hb = invoke fastcc noundef i32 @_ZL5usageRN12_GLOBAL__N_18StreamerEb(ptr noundef nonnull align 8 dereferenceable(1224) %3, i1 noundef zeroext true)
          to label %.loopexit1950 unwind label %bb.cy

bb.cy:                                            ; preds = %bb.cw, %bb.cx, %bb.cv, %bb.cu
  %i.hc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %24) #31
  br label %bb.db

bb.cz:                                            ; preds = %bb.ae, %bb.ai, %bb.ao, %bb.bc, %bb.bn, %bb.bv, %bb.cd, %bb.cl, %bb.cp, %bb.ct, %bb.cr, %bb.cn, %bb.ch, %bb.bz, %bb.br, %bb.bj, %bb.av, %bb.al, %bb.ag, %bb.ac
  %.3647.ph = phi i1 [ %.16452930, %bb.ct ], [ %.16452930, %bb.cr ], [ %.16452930, %bb.cp ], [ %.16452930, %bb.cn ], [ %.16452930, %bb.cl ], [ %.16452930, %bb.ch ], [ %.16452930, %bb.cd ], [ %.16452930, %bb.bz ], [ %.16452930, %bb.bv ], [ %.16452930, %bb.br ], [ %.16452930, %bb.bn ], [ %.16452930, %bb.bj ], [ %.16452930, %bb.bc ], [ %.16452930, %bb.av ], [ %.16452930, %bb.ao ], [ %.16452930, %bb.al ], [ %.16452930, %bb.ai ], [ %.16452930, %bb.ag ], [ %.16452930, %bb.ae ], [ true, %bb.ac ] ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.01598.02928, i64 32 ; 2 uses
  %.not1941 = icmp eq ptr %i.hd, %i.es
  br i1 %.not1941, label %.loopexit1950, label %.lr.ph

.loopexit1950:                                    ; preds = %bb.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.cx
  %.16452032 = phi i1 [ %.16452930, %bb.cx ], [ %.06442945, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.3647.ph, %bb.cz ] ; 2 uses
  %.not19412030 = phi i1 [ false, %bb.cx ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ true, %bb.cz ]
  %spec.store.select = phi i32 [ 1, %bb.cx ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 0, %bb.cz ]
  %.3 = phi i32 [ %i.hb, %bb.cx ], [ %.04652987, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.04652987, %bb.cz ] ; 2 uses
  %i.he = load ptr, ptr %24, align 8, !tbaa !60   ; 3 uses
  %i.hf = load ptr, ptr %i.cc, align 8, !tbaa !62 ; 2 uses
  %.not4.i.i.i887 = icmp eq ptr %i.he, %i.hf
  br i1 %.not4.i.i.i887, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i895, label %.lr.ph.i.i.i888

.lr.ph.i.i.i888:                                  ; preds = %.loopexit1950, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i891
  %.05.i.i.i889 = phi ptr [ %i.hl, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i891 ], [ %i.he, %.loopexit1950 ] ; 3 uses
  %i.hg = load ptr, ptr %.05.i.i.i889, align 8, !tbaa !63 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.05.i.i.i889, i64 16 ; 2 uses
  %i.hi = icmp eq ptr %i.hg, %i.hh
  br i1 %i.hi, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i891, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i890

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i890: ; preds = %.lr.ph.i.i.i888
  %i.hj = load i64, ptr %i.hh, align 8, !tbaa !64
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hk) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i891

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i891: ; preds = %.lr.ph.i.i.i888, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i890
  %i.hl = getelementptr inbounds nuw i8, ptr %.05.i.i.i889, i64 32 ; 2 uses
  %.not.i.i.i892 = icmp eq ptr %i.hl, %i.hf
  br i1 %.not.i.i.i892, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i893, label %.lr.ph.i.i.i888, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i893: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i891
  %.pr.i894 = load ptr, ptr %24, align 8, !tbaa !60
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i895

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i895: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i893, %.loopexit1950
  %i.hm = phi ptr [ %.pr.i894, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i893 ], [ %i.he, %.loopexit1950 ] ; 3 uses
  %.not.i.i1.i896 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i1.i896, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit899, label %bb.da

bb.da:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i895
  %i.hn = load ptr, ptr %i.cm, align 8, !tbaa !61
  %i.ho = ptrtoint ptr %i.hn to i64
  %i.hp = ptrtoint ptr %i.hm to i64
  %i.hq = sub i64 %i.ho, %i.hp
  call void @_ZdlPvm(ptr noundef nonnull %i.hm, i64 noundef %i.hq) #35
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit899

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit899: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i895, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #31
  br i1 %.not19412030, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, label %bb.le

bb.db:                                            ; preds = %bb.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit886
  %.pn768 = phi { ptr, i32 } [ %i.hc, %bb.cy ], [ %.pn766, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit886 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #31
  br label %.loopexit1957

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit901: ; preds = %bb.s
  %.pre = load ptr, ptr %23, align 8, !tbaa !63   ; 2 uses
  %bcmp.i900 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.55, i64 %i.dr)
  %i.hr = icmp eq i32 %bcmp.i900, 0
  br i1 %i.hr, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit901.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit917

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit901.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit901
  %i.hs = add nsw i32 %.06602940, 1               ; 3 uses
  %i.ht = icmp slt i32 %i.hs, %1
  br i1 %i.ht, label %bb.dc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit917

bb.dc:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit901.thread
  %i.hu = sext i32 %i.hs to i64
  %i.hv = getelementptr inbounds [8 x i8], ptr %2, i64 %i.hu
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !57 ; 2 uses
  %i.hx = load i64, ptr %i.bg, align 8, !tbaa !67
  %i.hy = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hw) #31
  %i.hz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef 0, i64 noundef %i.hx, ptr noundef nonnull %i.hw, i64 noundef %i.hy)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.aa ; 0 uses

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit904: ; preds = %bb.s
  %.pre3112 = load ptr, ptr %23, align 8, !tbaa !63
  %bcmp.i903 = call i32 @bcmp(ptr %.pre3112, ptr nonnull @.str.56, i64 %i.dr)
  %i.ia = icmp eq i32 %bcmp.i903, 0
  br i1 %i.ia, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit904.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit968.thread1624

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit904.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit904
  %i.ib = add nsw i32 %.06602940, 1               ; 4 uses
  %i.ic = icmp slt i32 %i.ib, %1
  br i1 %i.ic, label %bb.dd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit968.thread1624

bb.dd:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit904.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #31
  %i.id = sext i32 %i.ib to i64
  %i.ie = getelementptr inbounds [8 x i8], ptr %2, i64 %i.id
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !57 ; 4 uses
  store ptr %i.by, ptr %26, align 8, !tbaa !66
  %i.ig = icmp eq ptr %i.if, null
  br i1 %i.ig, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.220) #36
          to label %.noexc907 unwind label %bb.dk

.noexc907:                                        ; preds = %bb.de
  unreachable

bb.df:                                            ; preds = %bb.dd
  %i.ih = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.if) #31 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  store i64 %i.ih, ptr %i.c, align 8, !tbaa !76
  %i.ii = icmp ugt i64 %i.ih, 15
  br i1 %i.ii, label %.noexc.i906, label %._crit_edge.i.i905

.noexc.i906:                                      ; preds = %bb.df
  %i.ij = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc908 unwind label %bb.dk ; 2 uses

.noexc908:                                        ; preds = %.noexc.i906
  store ptr %i.ij, ptr %26, align 8, !tbaa !63
  %i.ik = load i64, ptr %i.c, align 8, !tbaa !76
  store i64 %i.ik, ptr %i.by, align 8, !tbaa !64
  br label %._crit_edge.i.i905

._crit_edge.i.i905:                               ; preds = %.noexc908, %bb.df
  %i.il = phi ptr [ %i.ij, %.noexc908 ], [ %i.by, %bb.df ] ; 2 uses
  switch i64 %i.ih, label %bb.dh [
    i64 1, label %bb.dg
    i64 0, label %bb.di
  ]

bb.dg:                                            ; preds = %._crit_edge.i.i905
  %i.im = load i8, ptr %i.if, align 1, !tbaa !64
  store i8 %i.im, ptr %i.il, align 1, !tbaa !64
  br label %bb.di

bb.dh:                                            ; preds = %._crit_edge.i.i905
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.il, ptr nonnull align 1 %i.if, i64 %i.ih, i1 false)
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg, %._crit_edge.i.i905
  %i.in = load i64, ptr %i.c, align 8, !tbaa !76  ; 2 uses
  store i64 %i.in, ptr %i.bz, align 8, !tbaa !67
  %i.io = load ptr, ptr %26, align 8, !tbaa !63
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.in
  store i8 0, ptr %i.ip, align 1, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  %i.iq = invoke noundef double @_ZN5osgeo4proj8internal13c_locale_stodERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %bb.dj unwind label %bb.dl

bb.dj:                                            ; preds = %bb.di
  %i.ir = load ptr, ptr %26, align 8, !tbaa !63   ; 2 uses
  %i.is = icmp eq ptr %i.ir, %i.by
  br i1 %i.is, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit912, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i910

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i910: ; preds = %bb.dj
  %i.it = load i64, ptr %i.by, align 8, !tbaa !64
  %i.iu = add i64 %i.it, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iu) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit912

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit912: ; preds = %bb.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i910
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.dk:                                            ; preds = %.noexc.i906, %bb.de
  %i.iv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit915

bb.dl:                                            ; preds = %bb.di
  %i.iw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.ix = load ptr, ptr %26, align 8, !tbaa !63   ; 2 uses
  %i.iy = icmp eq ptr %i.ix, %i.by
  br i1 %i.iy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit915, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i913

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i913: ; preds = %bb.dl
  %i.iz = load i64, ptr %i.by, align 8, !tbaa !64
  %i.ja = add i64 %i.iz, 1
  call void @_ZdlPvm(ptr noundef %i.ix, i64 noundef %i.ja) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit915

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit915: ; preds = %bb.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i913, %bb.dk
  %.pn760 = phi { ptr, i32 } [ %i.iv, %bb.dk ], [ %i.iw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i913 ], [ %i.iw, %bb.dl ] ; 3 uses
  %.3505 = extractvalue { ptr, i32 } %.pn760, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #31
  %i.jb = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #31
  %i.jc = icmp eq i32 %.3505, %i.jb
  br i1 %i.jc, label %bb.dm, label %.loopexit1957

bb.dm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit915
  %.3470 = extractvalue { ptr, i32 } %.pn760, 0
  %i.jd = call ptr @__cxa_begin_catch(ptr %.3470) #31 ; 2 uses
  %i.je = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL3EElsIA38_cEERS3_RKT_(ptr noundef nonnull align 8 dereferenceable(408) %i.bx, ptr noundef nonnull align 1 dereferenceable(38) @.str.57)
          to label %bb.dn unwind label %bb.dr     ; 0 uses

bb.dn:                                            ; preds = %bb.dm
  %i.jf = load ptr, ptr %i.jd, align 8, !tbaa !56
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  %i.jh = load ptr, ptr %i.jg, align 8
  %i.ji = call noundef ptr %i.jh(ptr noundef nonnull align 8 dereferenceable(8) %i.jd) #31
  %i.jj = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL3EElsIPKcEERS3_RKT_(ptr noundef nonnull align 8 dereferenceable(408) %i.bx, ptr %i.ji)
          to label %bb.do unwind label %bb.ds     ; 0 uses

bb.do:                                            ; preds = %bb.dn
  %i.jk = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL3EElsEPFRSoS4_E(ptr noundef nonnull align 8 dereferenceable(408) %i.bx)
          to label %bb.dp unwind label %bb.ds     ; 0 uses
end_hunk_0
begin_hunk_1_@_ZL13main_projinfoP6pj_ctxiPPcRN12_GLOBAL__N_18StreamerE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit983

bb.fz:                                            ; preds = %bb.fx
  %i.qa = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull @.str.92) #31
  br i1 %i.qa, label %bb.gh, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.qb = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull @.str.93) #31
  br i1 %i.qb, label %bb.gh, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.qc = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull @.str.94) #31
  br i1 %i.qc, label %bb.gh, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.qd = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL3EElsIA45_cEERS3_RKT_(ptr noundef nonnull align 8 dereferenceable(408) %i.bx, ptr noundef nonnull align 1 dereferenceable(45) @.str.95)
          to label %bb.gd unwind label %bb.gg     ; 0 uses

bb.gd:                                            ; preds = %bb.gc
  %i.qe = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL3EElsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS3_RKT_(ptr noundef nonnull align 8 dereferenceable(408) %i.bx, ptr noundef nonnull align 8 dereferenceable(32) %32)
          to label %bb.ge unwind label %bb.gg     ; 0 uses

bb.ge:                                            ; preds = %bb.gd
  %i.qf = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL3EElsEPFRSoS4_E(ptr noundef nonnull align 8 dereferenceable(408) %i.bx)
          to label %bb.gf unwind label %bb.gg     ; 0 uses

bb.gf:                                            ; preds = %bb.ge
  %i.qg = invoke fastcc noundef i32 @_ZL5usageRN12_GLOBAL__N_18StreamerEb(ptr noundef nonnull align 8 dereferenceable(1224) %3, i1 noundef zeroext true)
          to label %bb.gh unwind label %bb.gg

bb.gg:                                            ; preds = %bb.ge, %bb.gf, %bb.gd, %bb.gc
  %i.qh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qi = load ptr, ptr %32, align 8, !tbaa !63   ; 2 uses
  %i.qj = icmp eq ptr %i.qi, %i.cz
  br i1 %i.qj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit983, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i981

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i981: ; preds = %bb.gg
  %i.qk = load i64, ptr %i.cz, align 8, !tbaa !64
  %i.ql = add i64 %i.qk, 1
  call void @_ZdlPvm(ptr noundef %i.qi, i64 noundef %i.ql) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit983

bb.gh:                                            ; preds = %bb.fx, %bb.fz, %bb.ga, %bb.gb, %bb.gf
  %cond20 = phi i1 [ false, %bb.gf ], [ true, %bb.gb ], [ true, %bb.ga ], [ true, %bb.fz ], [ true, %bb.fx ]
  %.2606.a = phi i32 [ %.06042976, %bb.gf ], [ 3, %bb.gb ], [ 0, %bb.ga ], [ 1, %bb.fz ], [ 2, %bb.fx ] ; 2 uses
  %.7 = phi i32 [ %i.qg, %bb.gf ], [ %.04652987, %bb.gb ], [ %.04652987, %bb.ga ], [ %.04652987, %bb.fz ], [ %.04652987, %bb.fx ] ; 2 uses
  %i.qm = load ptr, ptr %32, align 8, !tbaa !63   ; 2 uses
  %i.qn = icmp eq ptr %i.qm, %i.cz
  br i1 %i.qn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i984

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i984: ; preds = %bb.gh
  %i.qo = load i64, ptr %i.cz, align 8, !tbaa !64
  %i.qp = add i64 %i.qo, 1
  call void @_ZdlPvm(ptr noundef %i.qm, i64 noundef %i.qp) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986: ; preds = %bb.gh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i984
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #31
  br i1 %cond20, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, label %bb.le

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit983: ; preds = %bb.gg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i981, %bb.fy
  %.pn752 = phi { ptr, i32 } [ %i.pz, %bb.fy ], [ %i.qh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i981 ], [ %i.qh, %bb.gg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #31
  br label %.loopexit1957

bb.gi:                                            ; preds = %bb.fv, %bb.fu
  %i.qq = invoke noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.96)
          to label %bb.gj unwind label %bb.aa

bb.gj:                                            ; preds = %bb.gi
  br i1 %i.qq, label %bb.gk, label %bb.hp

bb.gk:                                            ; preds = %bb.gj
  %i.qr = add nsw i32 %.06602940, 1               ; 7 uses
  %i.qs = icmp slt i32 %i.qr, %1
  br i1 %i.qs, label %bb.gl, label %bb.hp

bb.gl:                                            ; preds = %bb.gk
  %i.qt = sext i32 %i.qr to i64
  %i.qu = getelementptr inbounds [8 x i8], ptr %2, i64 %i.qt
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !57 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef %i.qv, ptr noundef nonnull align 1 dereferenceable(1) %35)
          to label %bb.gm unwind label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  %i.qw = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull @.str.97) #31
  %i.qx = load ptr, ptr %34, align 8, !tbaa !63   ; 2 uses
  %i.qy = icmp eq ptr %i.qx, %i.ct
  br i1 %i.qy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit989, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i987

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i987: ; preds = %bb.gm
  %i.qz = load i64, ptr %i.ct, align 8, !tbaa !64
  %i.ra = add i64 %i.qz, 1
  call void @_ZdlPvm(ptr noundef %i.qx, i64 noundef %i.ra) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit989

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit989: ; preds = %bb.gm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i987
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #31
  br i1 %i.qw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, label %bb.go

bb.gn:                                            ; preds = %bb.gl
  %i.rb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #31
  br label %.loopexit1957

bb.go:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit989
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef %i.qv, ptr noundef nonnull align 1 dereferenceable(1) %37)
          to label %bb.gp unwind label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.rc = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull @.str.98) #31
  %i.rd = load ptr, ptr %36, align 8, !tbaa !63   ; 2 uses
  %i.re = icmp eq ptr %i.rd, %i.cu
  br i1 %i.re, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit992, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i990

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i990: ; preds = %bb.gp
  %i.rf = load i64, ptr %i.cu, align 8, !tbaa !64
  %i.rg = add i64 %i.rf, 1
  call void @_ZdlPvm(ptr noundef %i.rd, i64 noundef %i.rg) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit992

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit992: ; preds = %bb.gp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i990
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #31
  br i1 %i.rc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, label %bb.gr

bb.gq:                                            ; preds = %bb.go
  %i.rh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #31
  br label %.loopexit1957

bb.gr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit992
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef %i.qv, ptr noundef nonnull align 1 dereferenceable(1) %39)
          to label %bb.gs unwind label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.ri = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull @.str.99) #31
  %i.rj = load ptr, ptr %38, align 8, !tbaa !63   ; 2 uses
  %i.rk = icmp eq ptr %i.rj, %i.cv
  br i1 %i.rk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit995, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i993

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i993: ; preds = %bb.gs
  %i.rl = load i64, ptr %i.cv, align 8, !tbaa !64
  %i.rm = add i64 %i.rl, 1
  call void @_ZdlPvm(ptr noundef %i.rj, i64 noundef %i.rm) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit995

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit995: ; preds = %bb.gs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i993
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #31
  br i1 %i.ri, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, label %bb.gu

bb.gt:                                            ; preds = %bb.gr
  %i.rn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #31
  br label %.loopexit1957

bb.gu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit995
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef %i.qv, ptr noundef nonnull align 1 dereferenceable(1) %42)
          to label %bb.gv unwind label %bb.gx

bb.gv:                                            ; preds = %bb.gu
  invoke void @_ZN5osgeo4proj8internal5splitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %40, ptr noundef nonnull align 8 dereferenceable(32) %41, i8 noundef signext 44)
          to label %bb.gw unwind label %bb.gy

bb.gw:                                            ; preds = %bb.gv
  %i.ro = load ptr, ptr %41, align 8, !tbaa !63   ; 2 uses
  %i.rp = icmp eq ptr %i.ro, %i.cw
  br i1 %i.rp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit998, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i996

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i996: ; preds = %bb.gw
  %i.rq = load i64, ptr %i.cw, align 8, !tbaa !64
  %i.rr = add i64 %i.rq, 1
  call void @_ZdlPvm(ptr noundef %i.ro, i64 noundef %i.rr) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit998

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit998: ; preds = %bb.gw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i996
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #31
  %i.rs = load ptr, ptr %40, align 8, !tbaa !77   ; 2 uses
  %i.rt = load ptr, ptr %i.cx, align 8, !tbaa !77 ; 2 uses
  %.not19402936 = icmp eq ptr %i.rs, %i.rt
  br i1 %.not19402936, label %bb.hn, label %.lr.ph2938

bb.gx:                                            ; preds = %bb.gu
  %i.ru = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1001

bb.gy:                                            ; preds = %bb.gv
  %i.rv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rw = load ptr, ptr %41, align 8, !tbaa !63   ; 2 uses
  %i.rx = icmp eq ptr %i.rw, %i.cw
  br i1 %i.rx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1001, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i999

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i999: ; preds = %bb.gy
  %i.ry = load i64, ptr %i.cw, align 8, !tbaa !64
  %i.rz = add i64 %i.ry, 1
  call void @_ZdlPvm(ptr noundef %i.rw, i64 noundef %i.rz) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1001

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1001: ; preds = %bb.gy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i999, %bb.gx
  %.pn742 = phi { ptr, i32 } [ %i.ru, %bb.gx ], [ %i.rv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i999 ], [ %i.rv, %bb.gy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #31
  br label %90

.lr.ph2938:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit998, %bb.hh
  %.sroa.01590.02937 = phi ptr [ %i.sn, %bb.hh ], [ %i.rs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit998 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #31
  invoke void @_ZN5osgeo4proj8internal5splitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %43, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01590.02937, i8 noundef signext 58)
          to label %bb.gz unwind label %bb.he

bb.gz:                                            ; preds = %.lr.ph2938
  %i.sa = load ptr, ptr %i.cy, align 8, !tbaa !62
  %i.sb = load ptr, ptr %43, align 8, !tbaa !60   ; 3 uses
  %i.sc = ptrtoint ptr %i.sa to i64
  %i.sd = ptrtoint ptr %i.sb to i64
  %i.se = sub i64 %i.sc, %i.sd
  %.not744 = icmp eq i64 %i.se, 64
  br i1 %.not744, label %bb.hg, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.sf = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL3EElsIA45_cEERS3_RKT_(ptr noundef nonnull align 8 dereferenceable(408) %i.bx, ptr noundef nonnull align 1 dereferenceable(45) @.str.95)
          to label %bb.hb unwind label %bb.hf     ; 0 uses

bb.hb:                                            ; preds = %bb.ha
  %i.sg = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL3EElsIPcEERS3_RKT_(ptr noundef nonnull align 8 dereferenceable(408) %i.bx, ptr %i.qv)
          to label %bb.hc unwind label %bb.hf     ; 0 uses

bb.hc:                                            ; preds = %bb.hb
  %i.sh = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL3EElsEPFRSoS4_E(ptr noundef nonnull align 8 dereferenceable(408) %i.bx)
          to label %bb.hd unwind label %bb.hf     ; 0 uses

bb.hd:                                            ; preds = %bb.hc
  %i.si = invoke fastcc noundef i32 @_ZL5usageRN12_GLOBAL__N_18StreamerEb(ptr noundef nonnull align 8 dereferenceable(1224) %3, i1 noundef zeroext true)
          to label %bb.ho unwind label %bb.hf

bb.he:                                            ; preds = %.lr.ph2938
  %i.sj = landingpad { ptr, i32 }
          cleanup
  br label %bb.hm

bb.hf:                                            ; preds = %bb.hb, %bb.hc, %bb.hd, %bb.ha
  %i.sk = landingpad { ptr, i32 }
          cleanup
  br label %bb.hl

bb.hg:                                            ; preds = %bb.gz
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #31
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sb, i64 32
  invoke void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRS5_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_(ptr noundef nonnull align 8 dereferenceable(64) %44, ptr noundef nonnull align 8 dereferenceable(32) %i.sb, ptr noundef nonnull align 8 dereferenceable(32) %i.sl)
          to label %_ZSt9make_pairIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_.exit unwind label %bb.hi

_ZSt9make_pairIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_.exit: ; preds = %bb.hg
  %i.sm = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(64) %44)
          to label %bb.hh unwind label %bb.hj     ; 0 uses

bb.hh:                                            ; preds = %_ZSt9make_pairIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_.exit
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %44) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #31
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %43) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #31
  %i.sn = getelementptr inbounds nuw i8, ptr %.sroa.01590.02937, i64 32 ; 2 uses
  %.not1940 = icmp eq ptr %i.sn, %i.rt
  br i1 %.not1940, label %bb.hn, label %.lr.ph2938

bb.hi:                                            ; preds = %bb.hg
  %i.so = landingpad { ptr, i32 }
          cleanup
  br label %bb.hk

bb.hj:                                            ; preds = %_ZSt9make_pairIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_.exit
  %i.sp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %44) #31
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hi
  %.pn745 = phi { ptr, i32 } [ %i.sp, %bb.hj ], [ %i.so, %bb.hi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #31
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.hf
  %.pn747 = phi { ptr, i32 } [ %i.sk, %bb.hf ], [ %.pn745, %bb.hk ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %43) #31
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %bb.he
  %.pn747.pn = phi { ptr, i32 } [ %.pn747, %bb.hl ], [ %i.sj, %bb.he ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #31
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %40) #31
  br label %90

bb.hn:                                            ; preds = %bb.hh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit998
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %40) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.ho:                                            ; preds = %bb.hd
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %43) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #31
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %40) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #31
  br label %bb.le

90:                                               ; preds = %bb.hm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1001
  %.pn747.pn.pn = phi { ptr, i32 } [ %.pn747.pn, %bb.hm ], [ %.pn742, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1001 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #31
  br label %.loopexit1957

bb.hp:                                            ; preds = %bb.gk, %bb.gj
  %i.sq = invoke noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.100)
          to label %bb.hq unwind label %bb.aa

bb.hq:                                            ; preds = %bb.hp
  br i1 %i.sq, label %bb.hr, label %bb.ht

bb.hr:                                            ; preds = %bb.hq
  %i.sr = add nsw i32 %.06602940, 1               ; 3 uses
  %i.ss = icmp slt i32 %i.sr, %1
  br i1 %i.ss, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %bb.hr
  %i.st = sext i32 %i.sr to i64
  %i.su = getelementptr inbounds [8 x i8], ptr %2, i64 %i.st
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !57
  %i.sw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef %i.sv)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.aa ; 0 uses

bb.ht:                                            ; preds = %bb.hr, %bb.hq
  %i.sx = invoke noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.101)
          to label %bb.hu unwind label %bb.aa

bb.hu:                                            ; preds = %bb.ht
  br i1 %i.sx, label %bb.hv, label %bb.ib

bb.hv:                                            ; preds = %bb.hu
  %i.sy = add nsw i32 %.06602940, 1               ; 3 uses
  %i.sz = icmp slt i32 %i.sy, %1
  br i1 %i.sz, label %bb.hw, label %bb.ib

bb.hw:                                            ; preds = %bb.hv
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #31
  %i.ta = sext i32 %i.sy to i64
  %i.tb = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ta
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %45, ptr noundef %i.tc, ptr noundef nonnull align 1 dereferenceable(1) %46)
          to label %bb.hx unwind label %bb.hz

bb.hx:                                            ; preds = %bb.hw
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull align 8 dereferenceable(32) %45)
          to label %bb.hy unwind label %bb.ia

bb.hy:                                            ; preds = %bb.hx
  %i.td = load ptr, ptr %45, align 8, !tbaa !63   ; 2 uses
  %i.te = icmp eq ptr %i.td, %i.cs
  br i1 %i.te, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1003

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1003: ; preds = %bb.hy
  %i.tf = load i64, ptr %i.cs, align 8, !tbaa !64
  %i.tg = add i64 %i.tf, 1
  call void @_ZdlPvm(ptr noundef %i.td, i64 noundef %i.tg) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005: ; preds = %bb.hy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1003
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.hz:                                            ; preds = %bb.hw
  %i.th = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1008

bb.ia:                                            ; preds = %bb.hx
  %i.ti = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tj = load ptr, ptr %45, align 8, !tbaa !63   ; 2 uses
  %i.tk = icmp eq ptr %i.tj, %i.cs
  br i1 %i.tk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1008, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1006

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1006: ; preds = %bb.ia
  %i.tl = load i64, ptr %i.cs, align 8, !tbaa !64
  %i.tm = add i64 %i.tl, 1
  call void @_ZdlPvm(ptr noundef %i.tj, i64 noundef %i.tm) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1008

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1008: ; preds = %bb.ia, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1006, %bb.hz
  %.pn740 = phi { ptr, i32 } [ %i.th, %bb.hz ], [ %i.ti, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1006 ], [ %i.ti, %bb.ia ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #31
  br label %.loopexit1957

bb.ib:                                            ; preds = %bb.hv, %bb.hu
  %i.tn = invoke noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.102)
          to label %bb.ic unwind label %bb.aa

bb.ic:                                            ; preds = %bb.ib
  br i1 %i.tn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.to = invoke noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.103)
          to label %bb.ie unwind label %bb.aa

bb.ie:                                            ; preds = %bb.id
  br i1 %i.to, label %bb.if, label %bb.ik

bb.if:                                            ; preds = %bb.ie
  %i.tp = add nsw i32 %.06602940, 1               ; 3 uses
  %i.tq = icmp slt i32 %i.tp, %1
  br i1 %i.tq, label %bb.ig, label %bb.ik

bb.ig:                                            ; preds = %bb.if
  %i.tr = sext i32 %i.tp to i64
  %i.ts = getelementptr inbounds [8 x i8], ptr %2, i64 %i.tr
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !57
  %i.tu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef %i.tt)
          to label %bb.ih unwind label %bb.aa     ; 0 uses

bb.ih:                                            ; preds = %bb.ig
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #31
  invoke void @_ZN5osgeo4proj8internal5splitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %47, ptr noundef nonnull align 8 dereferenceable(32) %21, i8 noundef signext 44)
          to label %bb.ii unwind label %bb.ij

bb.ii:                                            ; preds = %bb.ih
  %i.tv = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %47) #31 ; 0 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %47) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.ij:                                            ; preds = %bb.ih
  %i.tw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #31
  br label %.loopexit1957

bb.ik:                                            ; preds = %bb.if, %bb.ie
  %i.tx = invoke noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.104)
          to label %bb.il unwind label %bb.aa

bb.il:                                            ; preds = %bb.ik
  br i1 %i.tx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.ty = invoke noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.105)
          to label %bb.in unwind label %bb.aa

bb.in:                                            ; preds = %bb.im
  br i1 %i.ty, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.tz = invoke noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.106)
          to label %bb.ip unwind label %bb.aa

bb.ip:                                            ; preds = %bb.io
  br i1 %i.tz, label %bb.iq, label %bb.ir

bb.iq:                                            ; preds = %bb.ip
  store i8 0, ptr %i.at, align 4, !tbaa !73
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.ir:                                            ; preds = %bb.ip
  %i.ua = invoke noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.107)
          to label %bb.is unwind label %bb.aa

bb.is:                                            ; preds = %bb.ir
  br i1 %i.ua, label %bb.it, label %bb.iu

bb.it:                                            ; preds = %bb.is
  store i8 1, ptr %i.av, align 2, !tbaa !75
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.iu:                                            ; preds = %bb.is
  %i.ub = invoke noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.108)
          to label %bb.iv unwind label %bb.aa

bb.iv:                                            ; preds = %bb.iu
  br i1 %i.ub, label %bb.iw, label %bb.ix

bb.iw:                                            ; preds = %bb.iv
  store i8 0, ptr %i.au, align 1, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.ix:                                            ; preds = %bb.iv
  %i.uc = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.109) #31
  br i1 %i.uc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.ud = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.110) #31
  br i1 %i.ud, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.ue = invoke noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.111)
          to label %bb.ja unwind label %bb.aa

bb.ja:                                            ; preds = %bb.iz
  br i1 %i.ue, label %bb.jb, label %bb.jn

bb.jb:                                            ; preds = %bb.ja
  %i.uf = add nsw i32 %.06602940, 1               ; 4 uses
  %i.ug = icmp slt i32 %i.uf, %1
  br i1 %i.ug, label %bb.jc, label %bb.jn

bb.jc:                                            ; preds = %bb.jb
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #31
  %i.uh = sext i32 %i.uf to i64
  %i.ui = getelementptr inbounds [8 x i8], ptr %2, i64 %i.uh
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !57
end_hunk_1
begin_hunk_2_@_ZL13main_projinfoP6pj_ctxiPPcRN12_GLOBAL__N_18StreamerE:bb.a

bb.jv:                                            ; preds = %bb.ju
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #31
  invoke void @proj_info(ptr dead_on_unwind nonnull writable sret(%struct.PJ_INFO) align 8 %53)
          to label %bb.jw unwind label %bb.jz

bb.jw:                                            ; preds = %bb.jv
  %i.vp = load ptr, ptr %i.cn, align 8, !tbaa !230
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %52, ptr noundef %i.vp, ptr noundef nonnull align 1 dereferenceable(1) %54)
          to label %bb.jx unwind label %bb.ka

bb.jx:                                            ; preds = %bb.jw
  invoke void @_ZN5osgeo4proj8internal5splitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %51, ptr noundef nonnull align 8 dereferenceable(32) %52, i8 noundef signext 58)
          to label %bb.jy unwind label %bb.kb

bb.jy:                                            ; preds = %bb.jx
  %i.vq = load ptr, ptr %52, align 8, !tbaa !63   ; 2 uses
  %i.vr = icmp eq ptr %i.vq, %i.co
  br i1 %i.vr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1020, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1018

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1018: ; preds = %bb.jy
  %i.vs = load i64, ptr %i.co, align 8, !tbaa !64
  %i.vt = add i64 %i.vs, 1
  call void @_ZdlPvm(ptr noundef %i.vq, i64 noundef %i.vt) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1020

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1020: ; preds = %bb.jy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1018
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #31
  %i.vu = load ptr, ptr %51, align 8, !tbaa !77   ; 2 uses
  %i.vv = load ptr, ptr %i.cp, align 8, !tbaa !77 ; 2 uses
  %.not19392933 = icmp eq ptr %i.vu, %i.vv
  br i1 %.not19392933, label %._crit_edge, label %.lr.ph2935

._crit_edge:                                      ; preds = %bb.ke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1020
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %51) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #31
  br label %bb.le

bb.jz:                                            ; preds = %bb.jv
  %i.vw = landingpad { ptr, i32 }
          cleanup
  br label %bb.kc

bb.ka:                                            ; preds = %bb.jw
  %i.vx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1023

bb.kb:                                            ; preds = %bb.jx
  %i.vy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vz = load ptr, ptr %52, align 8, !tbaa !63   ; 2 uses
  %i.wa = icmp eq ptr %i.vz, %i.co
  br i1 %i.wa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1023, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1021

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1021: ; preds = %bb.kb
  %i.wb = load i64, ptr %i.co, align 8, !tbaa !64
  %i.wc = add i64 %i.wb, 1
  call void @_ZdlPvm(ptr noundef %i.vz, i64 noundef %i.wc) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1023

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1023: ; preds = %bb.kb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1021, %bb.ka
  %.pn = phi { ptr, i32 } [ %i.vx, %bb.ka ], [ %i.vy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1021 ], [ %i.vy, %bb.kb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #31
  br label %bb.kc

bb.kc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1023, %bb.jz
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1023 ], [ %i.vw, %bb.jz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #31
  br label %bb.kg

.lr.ph2935:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1020, %bb.ke
  %.sroa.01586.02934 = phi ptr [ %i.wf, %bb.ke ], [ %i.vu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1020 ] ; 2 uses
  %i.wd = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL1EElsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS3_RKT_(ptr noundef nonnull align 8 dereferenceable(408) %3, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01586.02934)
          to label %bb.kd unwind label %bb.kf     ; 0 uses

bb.kd:                                            ; preds = %.lr.ph2935
  %i.we = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL1EElsEPFRSoS4_E(ptr noundef nonnull align 8 dereferenceable(408) %3)
          to label %bb.ke unwind label %bb.kf     ; 0 uses

bb.ke:                                            ; preds = %bb.kd
  %i.wf = getelementptr inbounds nuw i8, ptr %.sroa.01586.02934, i64 32 ; 2 uses
  %.not1939 = icmp eq ptr %i.wf, %i.vv
  br i1 %.not1939, label %._crit_edge, label %.lr.ph2935

bb.kf:                                            ; preds = %bb.kd, %.lr.ph2935
  %i.wg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %51) #31
  br label %bb.kg

bb.kg:                                            ; preds = %bb.kf, %bb.kc
  %.pn732 = phi { ptr, i32 } [ %i.wg, %bb.kf ], [ %.pn.pn, %bb.kc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #31
  br label %.loopexit1957

bb.kh:                                            ; preds = %bb.ju
  %i.wh = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.116) #31
  br i1 %i.wh, label %bb.ki, label %bb.kv

bb.ki:                                            ; preds = %bb.kh
  %i.wi = invoke i32 @proj_context_is_network_enabled(ptr noundef %0)
          to label %bb.kj unwind label %bb.aa

bb.kj:                                            ; preds = %bb.ki
  %.not729 = icmp eq i32 %i.wi, 0
  br i1 %.not729, label %bb.kr, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  %i.wj = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL1EElsIA16_cEERS3_RKT_(ptr noundef nonnull align 8 dereferenceable(408) %3)
          to label %bb.kl unwind label %bb.aa     ; 0 uses

bb.kl:                                            ; preds = %bb.kk
  %i.wk = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL1EElsEPFRSoS4_E(ptr noundef nonnull align 8 dereferenceable(408) %3)
          to label %bb.km unwind label %bb.aa     ; 0 uses

bb.km:                                            ; preds = %bb.kl
  %i.wl = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL1EElsIA6_cEERS3_RKT_(ptr noundef nonnull align 8 dereferenceable(408) %3, ptr noundef nonnull align 1 dereferenceable(6) @.str.118)
          to label %bb.kn unwind label %bb.aa     ; 0 uses

bb.kn:                                            ; preds = %bb.km
  %i.wm = invoke ptr @proj_context_get_url_endpoint(ptr noundef %0)
          to label %bb.ko unwind label %bb.kq

bb.ko:                                            ; preds = %bb.kn
  %i.wn = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL1EElsIPKcEERS3_RKT_(ptr noundef nonnull align 8 dereferenceable(408) %3, ptr %i.wm)
          to label %bb.kp unwind label %bb.kq     ; 0 uses

bb.kp:                                            ; preds = %bb.ko
  %i.wo = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL1EElsEPFRSoS4_E(ptr noundef nonnull align 8 dereferenceable(408) %3)
          to label %bb.le unwind label %bb.kq     ; 0 uses

bb.kq:                                            ; preds = %bb.ko, %bb.kp, %bb.kn
  %i.wp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit1957

bb.kr:                                            ; preds = %bb.kj
  %i.wq = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL1EElsIA17_cEERS3_RKT_(ptr noundef nonnull align 8 dereferenceable(408) %3, ptr noundef nonnull align 1 dereferenceable(17) @.str.119)
          to label %bb.ks unwind label %bb.aa     ; 0 uses

bb.ks:                                            ; preds = %bb.kr
  %i.wr = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL1EElsEPFRSoS4_E(ptr noundef nonnull align 8 dereferenceable(408) %3)
          to label %bb.kt unwind label %bb.aa     ; 0 uses

bb.kt:                                            ; preds = %bb.ks
  %i.ws = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL1EElsIA65_cEERS3_RKT_(ptr noundef nonnull align 8 dereferenceable(408) %3)
          to label %bb.ku unwind label %bb.aa     ; 0 uses

bb.ku:                                            ; preds = %bb.kt
  %i.wt = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL1EElsEPFRSoS4_E(ptr noundef nonnull align 8 dereferenceable(408) %3)
          to label %bb.le unwind label %bb.aa     ; 0 uses

bb.kv:                                            ; preds = %bb.kh
  %i.wu = invoke noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.121)
          to label %bb.kw unwind label %bb.aa

bb.kw:                                            ; preds = %bb.kv
  br i1 %i.wu, label %.invoke, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.wv = invoke noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.122)
          to label %bb.ky unwind label %bb.aa

bb.ky:                                            ; preds = %bb.kx
  br i1 %i.wv, label %.invoke, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  %i.ww = load ptr, ptr %23, align 8, !tbaa !63
  %i.wx = load i8, ptr %i.ww, align 1, !tbaa !64
  %i.wy = icmp eq i8 %i.wx, 45
  br i1 %i.wy, label %bb.la, label %bb.ld

bb.la:                                            ; preds = %bb.kz
  %i.wz = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL3EElsIA22_cEERS3_RKT_(ptr noundef nonnull align 8 dereferenceable(408) %i.bx, ptr noundef nonnull align 1 dereferenceable(22) @.str.123)
          to label %bb.lb unwind label %bb.aa     ; 0 uses

bb.lb:                                            ; preds = %bb.la
  %i.xa = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL3EElsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS3_RKT_(ptr noundef nonnull align 8 dereferenceable(408) %i.bx, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.lc unwind label %bb.aa     ; 0 uses

bb.lc:                                            ; preds = %bb.lb
  %i.xb = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL3EElsEPFRSoS4_E(ptr noundef nonnull align 8 dereferenceable(408) %i.bx)
          to label %.invoke unwind label %bb.aa   ; 0 uses

.invoke:                                          ; preds = %bb.lc, %bb.kw, %bb.ky
  %i.xc = phi i1 [ false, %bb.kw ], [ false, %bb.ky ], [ true, %bb.lc ]
  %i.xd = invoke fastcc noundef i32 @_ZL5usageRN12_GLOBAL__N_18StreamerEb(ptr noundef nonnull align 8 dereferenceable(1224) %3, i1 noundef zeroext %i.xc)
          to label %bb.le unwind label %bb.aa

bb.ld:                                            ; preds = %bb.kz
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.aa

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.hn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit989, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit992, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit995, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1017.thread, %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.dv, %bb.dc, %bb.jo, %bb.iy, %bb.ix, %bb.in, %bb.il, %bb.ic, %bb.eq, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit968.thread1624, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit968, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit960.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986, %bb.hs, %bb.iq, %bb.iw, %bb.ld, %bb.jr, %bb.js, %bb.jt, %bb.it, %bb.ii, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit964.thread.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit912, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit899
  %.1661.a = phi i32 [ %i.dy, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit899 ], [ %.06602940, %bb.jo ], [ %i.ib, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit912 ], [ %i.hs, %bb.dc ], [ %i.jz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938 ], [ %i.jq, %bb.dv ], [ %i.lt, %bb.em ], [ %i.md, %bb.en ], [ %i.mq, %bb.eo ], [ %.06602940, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit960.thread ], [ %.06602940, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit964.thread.a ], [ %.06602940, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966.thread ], [ %.06602940, %bb.ld ], [ %.06602940, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit968 ], [ %.06602940, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit968.thread1624 ], [ %i.nz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974 ], [ %i.ov, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980 ], [ %i.pt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986 ], [ %i.qr, %bb.hn ], [ %i.sr, %bb.hs ], [ %i.sy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005 ], [ %.06602940, %bb.eq ], [ %i.tp, %bb.ii ], [ %.06602940, %bb.ic ], [ %.06602940, %bb.il ], [ %.06602940, %bb.iq ], [ %.06602940, %bb.it ], [ %.06602940, %bb.iw ], [ %.06602940, %bb.in ], [ %.06602940, %bb.ix ], [ %i.uf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1017.thread ], [ %.06602940, %bb.iy ], [ %i.vh, %bb.jt ], [ %.06602940, %bb.js ], [ %.06602940, %bb.jr ], [ %i.na, %bb.ep ], [ %i.qr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit995 ], [ %i.qr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit992 ], [ %i.qr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit989 ]
  %.1657.a = phi i8 [ %.06562941, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit899 ], [ %.06562941, %bb.jo ], [ %.06562941, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit912 ], [ %.06562941, %bb.dc ], [ %.06562941, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938 ], [ %.06562941, %bb.dv ], [ %.06562941, %bb.em ], [ %.06562941, %bb.en ], [ %.06562941, %bb.eo ], [ %.06562941, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit960.thread ], [ %.06562941, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit964.thread.a ], [ %.06562941, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966.thread ], [ %.06562941, %bb.ld ], [ %.06562941, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit968 ], [ %.06562941, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit968.thread1624 ], [ %.06562941, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974 ], [ %.06562941, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980 ], [ %.06562941, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986 ], [ %.06562941, %bb.hn ], [ %.06562941, %bb.hs ], [ %.06562941, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005 ], [ %.06562941, %bb.eq ], [ %.06562941, %bb.ii ], [ %.06562941, %bb.ic ], [ %.06562941, %bb.il ], [ %.06562941, %bb.iq ], [ %.06562941, %bb.it ], [ %.06562941, %bb.iw ], [ %.06562941, %bb.in ], [ %.06562941, %bb.ix ], [ %.06562941, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1017.thread ], [ %.06562941, %bb.iy ], [ 1, %bb.jt ], [ 1, %bb.js ], [ 1, %bb.jr ], [ %.06562941, %bb.ep ], [ %.06562941, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit995 ], [ %.06562941, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit992 ], [ %.06562941, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit989 ]
  %.1653 = phi i8 [ %.06522943, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit899 ], [ 1, %bb.jo ], [ %.06522943, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit912 ], [ %.06522943, %bb.dc ], [ %.06522943, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938 ], [ %.06522943, %bb.dv ], [ %.06522943, %bb.em ], [ %.06522943, %bb.en ], [ %.06522943, %bb.eo ], [ %.06522943, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit960.thread ], [ %.06522943, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit964.thread.a ], [ %.06522943, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966.thread ], [ %.06522943, %bb.ld ], [ %.06522943, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit968 ], [ %.06522943, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit968.thread1624 ], [ %.06522943, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974 ], [ %.06522943, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980 ], [ %.06522943, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986 ], [ %.06522943, %bb.hn ], [ %.06522943, %bb.hs ], [ %.06522943, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005 ], [ %.06522943, %bb.eq ], [ %.06522943, %bb.ii ], [ %.06522943, %bb.ic ], [ %.06522943, %bb.il ], [ %.06522943, %bb.iq ], [ %.06522943, %bb.it ], [ %.06522943, %bb.iw ], [ %.06522943, %bb.in ], [ %.06522943, %bb.ix ], [ %.06522943, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1017.thread ], [ %.06522943, %bb.iy ], [ %.06522943, %bb.jt ], [ %.06522943, %bb.js ], [ %.06522943, %bb.jr ], [ %.06522943, %bb.ep ], [ %.06522943, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit995 ], [ %.06522943, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit992 ], [ %.06522943, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit989 ]
  %.5649 = phi i1 [ %.16452032, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit899 ], [ %.06442945, %bb.jo ], [ %.06442945, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit912 ], [ %.06442945, %bb.dc ], [ %.06442945, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938 ], [ %.06442945, %bb.dv ], [ %.06442945, %bb.em ], [ %.06442945, %bb.en ], [ %.06442945, %bb.eo ], [ %.06442945, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit960.thread ], [ %.06442945, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit964.thread.a ], [ %.06442945, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966.thread ], [ %.06442945, %bb.ld ], [ %.06442945, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit968 ], [ %.06442945, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit968.thread1624 ], [ %.06442945, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974 ], [ %.06442945, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980 ], [ %.06442945, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986 ], [ %.06442945, %bb.hn ], [ %.06442945, %bb.hs ], [ %.06442945, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005 ], [ %.06442945, %bb.eq ], [ %.06442945, %bb.ii ], [ %.06442945, %bb.ic ], [ %.06442945, %bb.il ], [ %.06442945, %bb.iq ], [ %.06442945, %bb.it ], [ %.06442945, %bb.iw ], [ %.06442945, %bb.in ], [ %.06442945, %bb.ix ], [ %.06442945, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1017.thread ], [ %.06442945, %bb.iy ], [ %.06442945, %bb.jt ], [ %.06442945, %bb.js ], [ %.06442945, %bb.jr ], [ %.06442945, %bb.ep ], [ %.06442945, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit995 ], [ %.06442945, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit992 ], [ %.06442945, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit989 ]
  %.1641.a = phi double [ %.06402965, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit899 ], [ %.06402965, %bb.jo ], [ %i.iq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit912 ], [ %.06402965, %bb.dc ], [ %.06402965, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938 ], [ %.06402965, %bb.dv ], [ %.06402965, %bb.em ], [ %.06402965, %bb.en ], [ %.06402965, %bb.eo ], [ %.06402965, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit960.thread ], [ %.06402965, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit964.thread.a ], [ %.06402965, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966.thread ], [ %.06402965, %bb.ld ], [ %.06402965, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit968 ], [ %.06402965, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit968.thread1624 ], [ %.06402965, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974 ], [ %.06402965, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980 ], [ %.06402965, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986 ], [ %.06402965, %bb.hn ], [ %.06402965, %bb.hs ], [ %.06402965, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005 ], [ %.06402965, %bb.eq ], [ %.06402965, %bb.ii ], [ %.06402965, %bb.ic ], [ %.06402965, %bb.il ], [ %.06402965, %bb.iq ], [ %.06402965, %bb.it ], [ %.06402965, %bb.iw ], [ %.06402965, %bb.in ], [ %.06402965, %bb.ix ], [ %.06402965, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1017.thread ], [ %.06402965, %bb.iy ], [ %.06402965, %bb.jt ], [ %.06402965, %bb.js ], [ %.06402965, %bb.jr ], [ %.06402965, %bb.ep ], [ %.06402965, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit995 ], [ %.06402965, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit992 ], [ %.06402965, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit989 ]
  %.1637.a = phi i8 [ %.06362966, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit899 ], [ %.06362966, %bb.jo ], [ %.06362966, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit912 ], [ %.06362966, %bb.dc ], [ %.06362966, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938 ], [ %.06362966, %bb.dv ], [ %.06362966, %bb.em ], [ %.06362966, %bb.en ], [ %.06362966, %bb.eo ], [ %.06362966, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit960.thread ], [ %.06362966, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit964.thread.a ], [ %.06362966, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966.thread ], [ %.06362966, %bb.ld ], [ %.06362966, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit968 ], [ %.06362966, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit968.thread1624 ], [ %.06362966, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974 ], [ %.06362966, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980 ], [ %.06362966, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986 ], [ %.06362966, %bb.hn ], [ %.06362966, %bb.hs ], [ %.06362966, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005 ], [ %.06362966, %bb.eq ], [ %.06362966, %bb.ii ], [ %.06362966, %bb.ic ], [ %.06362966, %bb.il ], [ %.06362966, %bb.iq ], [ %.06362966, %bb.it ], [ %.06362966, %bb.iw ], [ %.06362966, %bb.in ], [ %.06362966, %bb.ix ], [ %.06362966, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1017.thread ], [ 1, %bb.iy ], [ %.06362966, %bb.jt ], [ %.06362966, %bb.js ], [ %.06362966, %bb.jr ], [ %.06362966, %bb.ep ], [ %.06362966, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit995 ], [ %.06362966, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit992 ], [ %.06362966, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit989 ]
  %.1633.a = phi i8 [ %.06322968, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit899 ], [ %.06322968, %bb.jo ], [ %.06322968, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit912 ], [ %.06322968, %bb.dc ], [ %.06322968, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938 ], [ %.06322968, %bb.dv ], [ %.06322968, %bb.em ], [ %.06322968, %bb.en ], [ %.06322968, %bb.eo ], [ %.06322968, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit960.thread ], [ %.06322968, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit964.thread.a ], [ %.06322968, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966.thread ], [ %.06322968, %bb.ld ], [ %.06322968, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit968 ], [ %.06322968, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit968.thread1624 ], [ %.06322968, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974 ], [ %.06322968, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980 ], [ %.06322968, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986 ], [ %.06322968, %bb.hn ], [ %.06322968, %bb.hs ], [ %.06322968, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005 ], [ %.06322968, %bb.eq ], [ %.06322968, %bb.ii ], [ %.06322968, %bb.ic ], [ %.06322968, %bb.il ], [ %.06322968, %bb.iq ], [ %.06322968, %bb.it ], [ %.06322968, %bb.iw ], [ %.06322968, %bb.in ], [ 1, %bb.ix ], [ %.06322968, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1017.thread ], [ %.06322968, %bb.iy ], [ %.06322968, %bb.jt ], [ %.06322968, %bb.js ], [ %.06322968, %bb.jr ], [ %.06322968, %bb.ep ], [ %.06322968, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit995 ], [ %.06322968, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit992 ], [ %.06322968, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit989 ]
  %.1629.a = phi i1 [ %.06282970, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit899 ], [ %.06282970, %bb.jo ], [ %.06282970, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit912 ], [ %.06282970, %bb.dc ], [ %.06282970, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938 ], [ %.06282970, %bb.dv ], [ %.06282970, %bb.em ], [ %.06282970, %bb.en ], [ %.06282970, %bb.eo ], [ %.06282970, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit960.thread ], [ %.06282970, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit964.thread.a ], [ %.06282970, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966.thread ], [ %.06282970, %bb.ld ], [ %.06282970, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit968 ], [ %.06282970, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit968.thread1624 ], [ %.06282970, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974 ], [ %.06282970, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980 ], [ %.06282970, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986 ], [ %.06282970, %bb.hn ], [ %.06282970, %bb.hs ], [ %.06282970, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005 ], [ %.06282970, %bb.eq ], [ %.06282970, %bb.ii ], [ %.06282970, %bb.ic ], [ %.06282970, %bb.il ], [ %.06282970, %bb.iq ], [ %.06282970, %bb.it ], [ %.06282970, %bb.iw ], [ true, %bb.in ], [ %.06282970, %bb.ix ], [ %.06282970, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1017.thread ], [ %.06282970, %bb.iy ], [ %.06282970, %bb.jt ], [ %.06282970, %bb.js ], [ %.06282970, %bb.jr ], [ %.06282970, %bb.ep ], [ %.06282970, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit995 ], [ %.06282970, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit992 ], [ %.06282970, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit989 ]
  %.1625.a = phi i1 [ %.06242971, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit899 ], [ %.06242971, %bb.jo ], [ %.06242971, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit912 ], [ %.06242971, %bb.dc ], [ %.06242971, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938 ], [ %.06242971, %bb.dv ], [ %.06242971, %bb.em ], [ %.06242971, %bb.en ], [ %.06242971, %bb.eo ], [ %.06242971, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit960.thread ], [ %.06242971, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit964.thread.a ], [ %.06242971, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966.thread ], [ %.06242971, %bb.ld ], [ %.06242971, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit968 ], [ %.06242971, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit968.thread1624 ], [ %.06242971, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974 ], [ %.06242971, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980 ], [ %.06242971, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986 ], [ %.06242971, %bb.hn ], [ %.06242971, %bb.hs ], [ %.06242971, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005 ], [ %.06242971, %bb.eq ], [ %.06242971, %bb.ii ], [ %.06242971, %bb.ic ], [ true, %bb.il ], [ %.06242971, %bb.iq ], [ %.06242971, %bb.it ], [ %.06242971, %bb.iw ], [ %.06242971, %bb.in ], [ %.06242971, %bb.ix ], [ %.06242971, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1017.thread ], [ %.06242971, %bb.iy ], [ %.06242971, %bb.jt ], [ %.06242971, %bb.js ], [ %.06242971, %bb.jr ], [ %.06242971, %bb.ep ], [ %.06242971, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit995 ], [ %.06242971, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit992 ], [ %.06242971, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit989 ]
  %.1621.a = phi i1 [ %.06202972, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit899 ], [ %.06202972, %bb.jo ], [ %.06202972, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit912 ], [ %.06202972, %bb.dc ], [ %.06202972, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938 ], [ %.06202972, %bb.dv ], [ %.06202972, %bb.em ], [ %.06202972, %bb.en ], [ %.06202972, %bb.eo ], [ %.06202972, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit960.thread ], [ %.06202972, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit964.thread.a ], [ %.06202972, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966.thread ], [ %.06202972, %bb.ld ], [ %.06202972, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit968 ], [ %.06202972, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit968.thread1624 ], [ %.06202972, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974 ], [ %.06202972, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980 ], [ %.06202972, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986 ], [ %.06202972, %bb.hn ], [ %.06202972, %bb.hs ], [ %.06202972, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005 ], [ %.06202972, %bb.eq ], [ %.06202972, %bb.ii ], [ true, %bb.ic ], [ %.06202972, %bb.il ], [ %.06202972, %bb.iq ], [ %.06202972, %bb.it ], [ %.06202972, %bb.iw ], [ %.06202972, %bb.in ], [ %.06202972, %bb.ix ], [ %.06202972, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1017.thread ], [ %.06202972, %bb.iy ], [ %.06202972, %bb.jt ], [ %.06202972, %bb.js ], [ %.06202972, %bb.jr ], [ %.06202972, %bb.ep ], [ %.06202972, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit995 ], [ %.06202972, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit992 ], [ %.06202972, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit989 ]
  %.1617 = phi i1 [ %.06162973, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit899 ], [ %.06162973, %bb.jo ], [ %.06162973, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit912 ], [ %.06162973, %bb.dc ], [ %.06162973, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938 ], [ %.06162973, %bb.dv ], [ %.06162973, %bb.em ], [ %.06162973, %bb.en ], [ %.06162973, %bb.eo ], [ %.06162973, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit960.thread ], [ %.06162973, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit964.thread.a ], [ %.06162973, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966.thread ], [ %.06162973, %bb.ld ], [ %.06162973, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit968 ], [ %.06162973, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit968.thread1624 ], [ %.06162973, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974 ], [ %.06162973, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980 ], [ %.06162973, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986 ], [ %.06162973, %bb.hn ], [ %.06162973, %bb.hs ], [ %.06162973, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005 ], [ false, %bb.eq ], [ %.06162973, %bb.ii ], [ %.06162973, %bb.ic ], [ %.06162973, %bb.il ], [ %.06162973, %bb.iq ], [ %.06162973, %bb.it ], [ %.06162973, %bb.iw ], [ %.06162973, %bb.in ], [ %.06162973, %bb.ix ], [ %.06162973, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1017.thread ], [ %.06162973, %bb.iy ], [ %.06162973, %bb.jt ], [ %.06162973, %bb.js ], [ %.06162973, %bb.jr ], [ %.06162973, %bb.ep ], [ %.06162973, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit995 ], [ %.06162973, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit992 ], [ %.06162973, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit989 ]
  %.3613 = phi i32 [ %.06102974, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit899 ], [ %.06102974, %bb.jo ], [ %.06102974, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit912 ], [ %.06102974, %bb.dc ], [ %.06102974, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938 ], [ %.06102974, %bb.dv ], [ %.06102974, %bb.em ], [ %.06102974, %bb.en ], [ %.06102974, %bb.eo ], [ %.06102974, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit960.thread ], [ %.06102974, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit964.thread.a ], [ %.06102974, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966.thread ], [ %.06102974, %bb.ld ], [ %.06102974, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit968 ], [ %.06102974, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit968.thread1624 ], [ %.06102974, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974 ], [ %.06102974, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980 ], [ %.06102974, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986 ], [ %.06102974, %bb.hn ], [ %.06102974, %bb.hs ], [ %.06102974, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005 ], [ %.06102974, %bb.eq ], [ %.06102974, %bb.ii ], [ %.06102974, %bb.ic ], [ %.06102974, %bb.il ], [ %.06102974, %bb.iq ], [ %.06102974, %bb.it ], [ %.06102974, %bb.iw ], [ %.06102974, %bb.in ], [ %.06102974, %bb.ix ], [ %.06102974, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1017.thread ], [ %.06102974, %bb.iy ], [ %.06102974, %bb.jt ], [ %.06102974, %bb.js ], [ %.06102974, %bb.jr ], [ %.06102974, %bb.ep ], [ 2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit995 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit992 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit989 ]
  %.3607 = phi i32 [ %.06042976, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit899 ], [ %.06042976, %bb.jo ], [ %.06042976, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit912 ], [ %.06042976, %bb.dc ], [ %.06042976, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938 ], [ %.06042976, %bb.dv ], [ %.06042976, %bb.em ], [ %.06042976, %bb.en ], [ %.06042976, %bb.eo ], [ %.06042976, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit960.thread ], [ %.06042976, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit964.thread.a ], [ %.06042976, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966.thread ], [ %.06042976, %bb.ld ], [ %.06042976, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit968 ], [ %.06042976, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit968.thread1624 ], [ %.06042976, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974 ], [ %.06042976, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980 ], [ %.2606.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986 ], [ %.06042976, %bb.hn ], [ %.06042976, %bb.hs ], [ %.06042976, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005 ], [ %.06042976, %bb.eq ], [ %.06042976, %bb.ii ], [ %.06042976, %bb.ic ], [ %.06042976, %bb.il ], [ %.06042976, %bb.iq ], [ %.06042976, %bb.it ], [ %.06042976, %bb.iw ], [ %.06042976, %bb.in ], [ %.06042976, %bb.ix ], [ %.06042976, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1017.thread ], [ %.06042976, %bb.iy ], [ %.06042976, %bb.jt ], [ %.06042976, %bb.js ], [ %.06042976, %bb.jr ], [ %.06042976, %bb.ep ], [ %.06042976, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit995 ], [ %.06042976, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit992 ], [ %.06042976, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit989 ]
  %.1601 = phi i1 [ %.06002978, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit899 ], [ %.06002978, %bb.jo ], [ %.06002978, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit912 ], [ %.06002978, %bb.dc ], [ %.06002978, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938 ], [ %.06002978, %bb.dv ], [ %.06002978, %bb.em ], [ %.06002978, %bb.en ], [ %.06002978, %bb.eo ], [ %.06002978, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit960.thread ], [ %.06002978, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit964.thread.a ], [ %.06002978, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966.thread ], [ %.06002978, %bb.ld ], [ %.06002978, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit968 ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit968.thread1624 ], [ %.06002978, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974 ], [ %.06002978, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980 ], [ %.06002978, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986 ], [ %.06002978, %bb.hn ], [ %.06002978, %bb.hs ], [ %.06002978, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005 ], [ %.06002978, %bb.eq ], [ %.06002978, %bb.ii ], [ %.06002978, %bb.ic ], [ %.06002978, %bb.il ], [ %.06002978, %bb.iq ], [ %.06002978, %bb.it ], [ %.06002978, %bb.iw ], [ %.06002978, %bb.in ], [ %.06002978, %bb.ix ], [ %.06002978, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1017.thread ], [ %.06002978, %bb.iy ], [ %.06002978, %bb.jt ], [ %.06002978, %bb.js ], [ %.06002978, %bb.jr ], [ %.06002978, %bb.ep ], [ %.06002978, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit995 ], [ %.06002978, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit992 ], [ %.06002978, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit989 ]
  %.3597 = phi i32 [ %.05942979, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit899 ], [ %.05942979, %bb.jo ], [ %.05942979, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit912 ], [ %.05942979, %bb.dc ], [ %.05942979, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938 ], [ %.05942979, %bb.dv ], [ %.05942979, %bb.em ], [ %.05942979, %bb.en ], [ %.05942979, %bb.eo ], [ %.05942979, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit960.thread ], [ %.05942979, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit964.thread.a ], [ %.05942979, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966.thread ], [ %.05942979, %bb.ld ], [ %.05942979, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit968 ], [ %.05942979, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit968.thread1624 ], [ %.05942979, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974 ], [ %.2596, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980 ], [ %.05942979, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986 ], [ %.05942979, %bb.hn ], [ %.05942979, %bb.hs ], [ %.05942979, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005 ], [ %.05942979, %bb.eq ], [ %.05942979, %bb.ii ], [ %.05942979, %bb.ic ], [ %.05942979, %bb.il ], [ %.05942979, %bb.iq ], [ %.05942979, %bb.it ], [ %.05942979, %bb.iw ], [ %.05942979, %bb.in ], [ %.05942979, %bb.ix ], [ %.05942979, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1017.thread ], [ %.05942979, %bb.iy ], [ %.05942979, %bb.jt ], [ %.05942979, %bb.js ], [ %.05942979, %bb.jr ], [ %.05942979, %bb.ep ], [ %.05942979, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit995 ], [ %.05942979, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit992 ], [ %.05942979, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit989 ]
  %.3591 = phi i32 [ %.05882981, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit899 ], [ %.05882981, %bb.jo ], [ %.05882981, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit912 ], [ %.05882981, %bb.dc ], [ %.05882981, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938 ], [ %.05882981, %bb.dv ], [ %.05882981, %bb.em ], [ %.05882981, %bb.en ], [ %.05882981, %bb.eo ], [ %.05882981, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit960.thread ], [ %.05882981, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit964.thread.a ], [ %.05882981, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966.thread ], [ %.05882981, %bb.ld ], [ %.05882981, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit968 ], [ %.05882981, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit968.thread1624 ], [ %.2590.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974 ], [ %.05882981, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980 ], [ %.05882981, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986 ], [ %.05882981, %bb.hn ], [ %.05882981, %bb.hs ], [ %.05882981, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005 ], [ %.05882981, %bb.eq ], [ %.05882981, %bb.ii ], [ %.05882981, %bb.ic ], [ %.05882981, %bb.il ], [ %.05882981, %bb.iq ], [ %.05882981, %bb.it ], [ %.05882981, %bb.iw ], [ %.05882981, %bb.in ], [ %.05882981, %bb.ix ], [ %.05882981, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1017.thread ], [ %.05882981, %bb.iy ], [ %.05882981, %bb.jt ], [ %.05882981, %bb.js ], [ %.05882981, %bb.jr ], [ %.05882981, %bb.ep ], [ %.05882981, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit995 ], [ %.05882981, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit992 ], [ %.05882981, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit989 ]
  %.1585.a = phi i1 [ %.05842983, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit899 ], [ %.05842983, %bb.jo ], [ %.05842983, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit912 ], [ %.05842983, %bb.dc ], [ %.05842983, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938 ], [ %.05842983, %bb.dv ], [ %.05842983, %bb.em ], [ %.05842983, %bb.en ], [ %.05842983, %bb.eo ], [ %.05842983, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit960.thread ], [ %.05842983, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit964.thread.a ], [ %.05842983, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966.thread ], [ %.05842983, %bb.ld ], [ %.05842983, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit968 ], [ %.05842983, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit968.thread1624 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974 ], [ %.05842983, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980 ], [ %.05842983, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986 ], [ %.05842983, %bb.hn ], [ %.05842983, %bb.hs ], [ %.05842983, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005 ], [ %.05842983, %bb.eq ], [ %.05842983, %bb.ii ], [ %.05842983, %bb.ic ], [ %.05842983, %bb.il ], [ %.05842983, %bb.iq ], [ %.05842983, %bb.it ], [ %.05842983, %bb.iw ], [ %.05842983, %bb.in ], [ %.05842983, %bb.ix ], [ %.05842983, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1017.thread ], [ %.05842983, %bb.iy ], [ %.05842983, %bb.jt ], [ %.05842983, %bb.js ], [ %.05842983, %bb.jr ], [ %.05842983, %bb.ep ], [ %.05842983, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit995 ], [ %.05842983, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit992 ], [ %.05842983, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit989 ]
  %.1581 = phi i1 [ %.05802984, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit899 ], [ %.05802984, %bb.jo ], [ %.05802984, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit912 ], [ %.05802984, %bb.dc ], [ %.05802984, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938 ], [ %.05802984, %bb.dv ], [ %.05802984, %bb.em ], [ %.05802984, %bb.en ], [ %.05802984, %bb.eo ], [ %.05802984, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit960.thread ], [ %.05802984, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit964.thread.a ], [ %.05802984, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966.thread ], [ %.05802984, %bb.ld ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit968 ], [ %.05802984, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit968.thread1624 ], [ %.05802984, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974 ], [ %.05802984, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980 ], [ %.05802984, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986 ], [ %.05802984, %bb.hn ], [ %.05802984, %bb.hs ], [ %.05802984, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005 ], [ %.05802984, %bb.eq ], [ %.05802984, %bb.ii ], [ %.05802984, %bb.ic ], [ %.05802984, %bb.il ], [ %.05802984, %bb.iq ], [ %.05802984, %bb.it ], [ %.05802984, %bb.iw ], [ %.05802984, %bb.in ], [ %.05802984, %bb.ix ], [ %.05802984, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1017.thread ], [ %.05802984, %bb.iy ], [ %.05802984, %bb.jt ], [ %.05802984, %bb.js ], [ %.05802984, %bb.jr ], [ %.05802984, %bb.ep ], [ %.05802984, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit995 ], [ %.05802984, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit992 ], [ %.05802984, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit989 ]
  %.1576 = phi i8 [ 1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit899 ], [ %.05752985, %bb.jo ], [ %.05752985, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit912 ], [ %.05752985, %bb.dc ], [ %.05752985, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938 ], [ %.05752985, %bb.dv ], [ %.05752985, %bb.em ], [ %.05752985, %bb.en ], [ %.05752985, %bb.eo ], [ %.05752985, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit960.thread ], [ %.05752985, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit964.thread.a ], [ %.05752985, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966.thread ], [ %.05752985, %bb.ld ], [ %.05752985, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit968 ], [ %.05752985, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit968.thread1624 ], [ %.05752985, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974 ], [ %.05752985, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980 ], [ %.05752985, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986 ], [ %.05752985, %bb.hn ], [ %.05752985, %bb.hs ], [ %.05752985, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005 ], [ %.05752985, %bb.eq ], [ %.05752985, %bb.ii ], [ %.05752985, %bb.ic ], [ %.05752985, %bb.il ], [ %.05752985, %bb.iq ], [ %.05752985, %bb.it ], [ %.05752985, %bb.iw ], [ %.05752985, %bb.in ], [ %.05752985, %bb.ix ], [ %.05752985, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1017.thread ], [ %.05752985, %bb.iy ], [ %.05752985, %bb.jt ], [ %.05752985, %bb.js ], [ %.05752985, %bb.jr ], [ %.05752985, %bb.ep ], [ %.05752985, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit995 ], [ %.05752985, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit992 ], [ %.05752985, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit989 ]
  %.14 = phi i32 [ %.3, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit899 ], [ %.04652987, %bb.jo ], [ %.04652987, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit912 ], [ %.04652987, %bb.dc ], [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938 ], [ %.04652987, %bb.dv ], [ %.04652987, %bb.em ], [ %.04652987, %bb.en ], [ %.04652987, %bb.eo ], [ %.04652987, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit960.thread ], [ %.04652987, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit964.thread.a ], [ %.04652987, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966.thread ], [ %.04652987, %bb.ld ], [ %.04652987, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit968 ], [ %.04652987, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit968.thread1624 ], [ %.5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974 ], [ %.6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980 ], [ %.7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986 ], [ %.04652987, %bb.hn ], [ %.04652987, %bb.hs ], [ %.04652987, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005 ], [ %.04652987, %bb.eq ], [ %.04652987, %bb.ii ], [ %.04652987, %bb.ic ], [ %.04652987, %bb.il ], [ %.04652987, %bb.iq ], [ %.04652987, %bb.it ], [ %.04652987, %bb.iw ], [ %.04652987, %bb.in ], [ %.04652987, %bb.ix ], [ %.04652987, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1017.thread ], [ %.04652987, %bb.iy ], [ %.04652987, %bb.jt ], [ %.04652987, %bb.js ], [ %.04652987, %bb.jr ], [ %.04652987, %bb.ep ], [ %.04652987, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit995 ], [ %.04652987, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit992 ], [ %.04652987, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit989 ]
  br label %bb.le

bb.le:                                            ; preds = %.invoke, %bb.kp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1017, %bb.ho, %bb.ku, %bb.dq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit899, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %._crit_edge
  %.10677 = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %spec.store.select, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit899 ], [ 1, %bb.kp ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986 ], [ 1, %bb.ho ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1017 ], [ 1, %._crit_edge ], [ 1, %bb.dq ], [ 1, %.invoke ], [ 1, %bb.ku ]
  %.2662.a = phi i32 [ %.1661.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %i.dy, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit899 ], [ %.06602940, %bb.kp ], [ %i.jz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938 ], [ %i.nz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974 ], [ %i.ov, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980 ], [ %i.pt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986 ], [ %i.qr, %bb.ho ], [ %i.uf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1017 ], [ %.06602940, %._crit_edge ], [ %i.ib, %bb.dq ], [ %.06602940, %.invoke ], [ %.06602940, %bb.ku ]
  %.2658.a = phi i8 [ %.1657.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %.06562941, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit899 ], [ %.06562941, %bb.kp ], [ %.06562941, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938 ], [ %.06562941, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974 ], [ %.06562941, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980 ], [ %.06562941, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986 ], [ %.06562941, %bb.ho ], [ %.06562941, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1017 ], [ %.06562941, %._crit_edge ], [ %.06562941, %bb.dq ], [ %.06562941, %.invoke ], [ %.06562941, %bb.ku ] ; 3 uses
  %.2654 = phi i8 [ %.1653, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %.06522943, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit899 ], [ %.06522943, %bb.kp ], [ %.06522943, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938 ], [ %.06522943, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974 ], [ %.06522943, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980 ], [ %.06522943, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986 ], [ %.06522943, %bb.ho ], [ %.06522943, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1017 ], [ %.06522943, %._crit_edge ], [ %.06522943, %bb.dq ], [ %.06522943, %.invoke ], [ %.06522943, %bb.ku ] ; 3 uses
  %.6650 = phi i1 [ %.5649, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %.16452032, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit899 ], [ %.06442945, %bb.kp ], [ %.06442945, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938 ], [ %.06442945, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974 ], [ %.06442945, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980 ], [ %.06442945, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986 ], [ %.06442945, %bb.ho ], [ %.06442945, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1017 ], [ %.06442945, %._crit_edge ], [ %.06442945, %bb.dq ], [ %.06442945, %.invoke ], [ %.06442945, %bb.ku ] ; 2 uses
  %.2642.a = phi double [ %.1641.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %.06402965, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit899 ], [ %.06402965, %bb.kp ], [ %.06402965, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938 ], [ %.06402965, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974 ], [ %.06402965, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980 ], [ %.06402965, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986 ], [ %.06402965, %bb.ho ], [ %.06402965, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1017 ], [ %.06402965, %._crit_edge ], [ %.06402965, %bb.dq ], [ %.06402965, %.invoke ], [ %.06402965, %bb.ku ] ; 2 uses
  %.2638.a = phi i8 [ %.1637.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %.06362966, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit899 ], [ %.06362966, %bb.kp ], [ %.06362966, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938 ], [ %.06362966, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974 ], [ %.06362966, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980 ], [ %.06362966, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986 ], [ %.06362966, %bb.ho ], [ %.06362966, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1017 ], [ %.06362966, %._crit_edge ], [ %.06362966, %bb.dq ], [ %.06362966, %.invoke ], [ %.06362966, %bb.ku ] ; 3 uses
  %.2634.a = phi i8 [ %.1633.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %.06322968, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit899 ], [ %.06322968, %bb.kp ], [ %.06322968, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938 ], [ %.06322968, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974 ], [ %.06322968, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980 ], [ %.06322968, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986 ], [ %.06322968, %bb.ho ], [ %.06322968, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1017 ], [ %.06322968, %._crit_edge ], [ %.06322968, %bb.dq ], [ %.06322968, %.invoke ], [ %.06322968, %bb.ku ] ; 3 uses
  %.2630.a = phi i1 [ %.1629.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %.06282970, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit899 ], [ %.06282970, %bb.kp ], [ %.06282970, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938 ], [ %.06282970, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974 ], [ %.06282970, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980 ], [ %.06282970, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986 ], [ %.06282970, %bb.ho ], [ %.06282970, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1017 ], [ %.06282970, %._crit_edge ], [ %.06282970, %bb.dq ], [ %.06282970, %.invoke ], [ %.06282970, %bb.ku ] ; 2 uses
  %.2626.a = phi i1 [ %.1625.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %.06242971, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit899 ], [ %.06242971, %bb.kp ], [ %.06242971, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938 ], [ %.06242971, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974 ], [ %.06242971, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980 ], [ %.06242971, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986 ], [ %.06242971, %bb.ho ], [ %.06242971, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1017 ], [ %.06242971, %._crit_edge ], [ %.06242971, %bb.dq ], [ %.06242971, %.invoke ], [ %.06242971, %bb.ku ] ; 2 uses
  %.2622.a = phi i1 [ %.1621.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %.06202972, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit899 ], [ %.06202972, %bb.kp ], [ %.06202972, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938 ], [ %.06202972, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974 ], [ %.06202972, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980 ], [ %.06202972, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986 ], [ %.06202972, %bb.ho ], [ %.06202972, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1017 ], [ %.06202972, %._crit_edge ], [ %.06202972, %bb.dq ], [ %.06202972, %.invoke ], [ %.06202972, %bb.ku ] ; 2 uses
  %.2618 = phi i1 [ %.1617, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %.06162973, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit899 ], [ %.06162973, %bb.kp ], [ %.06162973, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938 ], [ %.06162973, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974 ], [ %.06162973, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980 ], [ %.06162973, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986 ], [ %.06162973, %bb.ho ], [ %.06162973, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1017 ], [ %.06162973, %._crit_edge ], [ %.06162973, %bb.dq ], [ %.06162973, %.invoke ], [ %.06162973, %bb.ku ] ; 2 uses
  %.4614 = phi i32 [ %.3613, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %.06102974, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit899 ], [ %.06102974, %bb.kp ], [ %.06102974, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938 ], [ %.06102974, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974 ], [ %.06102974, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980 ], [ %.06102974, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986 ], [ %.06102974, %bb.ho ], [ %.06102974, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1017 ], [ %.06102974, %._crit_edge ], [ %.06102974, %bb.dq ], [ %.06102974, %.invoke ], [ %.06102974, %bb.ku ] ; 4 uses
  %.4608 = phi i32 [ %.3607, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %.06042976, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit899 ], [ %.06042976, %bb.kp ], [ %.06042976, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938 ], [ %.06042976, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974 ], [ %.06042976, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980 ], [ %.2606.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986 ], [ %.06042976, %bb.ho ], [ %.06042976, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1017 ], [ %.06042976, %._crit_edge ], [ %.06042976, %bb.dq ], [ %.06042976, %.invoke ], [ %.06042976, %bb.ku ] ; 2 uses
  %.2602 = phi i1 [ %.1601, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %.06002978, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit899 ], [ %.06002978, %bb.kp ], [ %.06002978, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938 ], [ %.06002978, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974 ], [ %.06002978, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980 ], [ %.06002978, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986 ], [ %.06002978, %bb.ho ], [ %.06002978, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1017 ], [ %.06002978, %._crit_edge ], [ %.06002978, %bb.dq ], [ %.06002978, %.invoke ], [ %.06002978, %bb.ku ] ; 2 uses
  %.4598 = phi i32 [ %.3597, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %.05942979, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit899 ], [ %.05942979, %bb.kp ], [ %.05942979, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938 ], [ %.05942979, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974 ], [ %.2596, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980 ], [ %.05942979, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986 ], [ %.05942979, %bb.ho ], [ %.05942979, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1017 ], [ %.05942979, %._crit_edge ], [ %.05942979, %bb.dq ], [ %.05942979, %.invoke ], [ %.05942979, %bb.ku ] ; 2 uses
  %.4592 = phi i32 [ %.3591, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %.05882981, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit899 ], [ %.05882981, %bb.kp ], [ %.05882981, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938 ], [ %.2590.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974 ], [ %.05882981, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980 ], [ %.05882981, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986 ], [ %.05882981, %bb.ho ], [ %.05882981, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1017 ], [ %.05882981, %._crit_edge ], [ %.05882981, %bb.dq ], [ %.05882981, %.invoke ], [ %.05882981, %bb.ku ] ; 3 uses
  %.2586.a = phi i1 [ %.1585.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %.05842983, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit899 ], [ %.05842983, %bb.kp ], [ %.05842983, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974 ], [ %.05842983, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980 ], [ %.05842983, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986 ], [ %.05842983, %bb.ho ], [ %.05842983, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1017 ], [ %.05842983, %._crit_edge ], [ %.05842983, %bb.dq ], [ %.05842983, %.invoke ], [ %.05842983, %bb.ku ] ; 2 uses
  %.2582 = phi i1 [ %.1581, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %.05802984, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit899 ], [ %.05802984, %bb.kp ], [ %.05802984, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938 ], [ %.05802984, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974 ], [ %.05802984, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980 ], [ %.05802984, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986 ], [ %.05802984, %bb.ho ], [ %.05802984, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1017 ], [ %.05802984, %._crit_edge ], [ %.05802984, %bb.dq ], [ %.05802984, %.invoke ], [ %.05802984, %bb.ku ] ; 2 uses
  %.2577 = phi i8 [ %.1576, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ 1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit899 ], [ %.05752985, %bb.kp ], [ %.05752985, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938 ], [ %.05752985, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974 ], [ %.05752985, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980 ], [ %.05752985, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986 ], [ %.05752985, %bb.ho ], [ %.05752985, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1017 ], [ %.05752985, %._crit_edge ], [ %.05752985, %bb.dq ], [ %.05752985, %.invoke ], [ %.05752985, %bb.ku ] ; 4 uses
  %.15 = phi i32 [ %.14, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %.3, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit899 ], [ 0, %bb.kp ], [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938 ], [ %.5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974 ], [ %.6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980 ], [ %.7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986 ], [ %i.si, %bb.ho ], [ %i.uv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1017 ], [ 0, %._crit_edge ], [ %i.jl, %bb.dq ], [ %i.xd, %.invoke ], [ 0, %bb.ku ] ; 4 uses
  %i.xe = load ptr, ptr %23, align 8, !tbaa !63   ; 2 uses
  %i.xf = icmp eq ptr %i.xe, %i.br
  br i1 %i.xf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1026, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1024

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1024: ; preds = %bb.le
  %i.xg = load i64, ptr %i.br, align 8, !tbaa !64
  %i.xh = add i64 %i.xg, 1
  call void @_ZdlPvm(ptr noundef %i.xe, i64 noundef %i.xh) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1026

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1026: ; preds = %bb.le, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1024
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #31
  %cond13 = icmp eq i32 %.10677, 0
  br i1 %cond13, label %bb.l, label %.loopexit1963

.loopexit1957:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit915, %bb.gn, %bb.gq, %bb.gt, %90, %bb.dt, %bb.du, %bb.kq, %bb.kg, %bb.jm, %bb.ij, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1008, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit983, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit977, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit971, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit931, %bb.db, %bb.aa
  %.merged844 = phi { ptr, i32 } [ %.pn768, %bb.db ], [ %i.et, %bb.aa ], [ %i.wp, %bb.kq ], [ %i.rb, %bb.gn ], [ %.pn758, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit931 ], [ %.pn756, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit971 ], [ %.pn754, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit977 ], [ %.pn752, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit983 ], [ %.pn762, %bb.du ], [ %.pn740, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1008 ], [ %i.tw, %bb.ij ], [ %.pn738, %bb.jm ], [ %.pn732, %bb.kg ], [ %i.jo, %bb.dt ], [ %.pn747.pn.pn, %90 ], [ %i.rn, %bb.gt ], [ %i.rh, %bb.gq ], [ %.pn760, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit915 ] ; 2 uses
  %i.xi = load ptr, ptr %23, align 8, !tbaa !63   ; 2 uses
  %i.xj = icmp eq ptr %i.xi, %i.br
  br i1 %i.xj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1029, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1027

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1027: ; preds = %.loopexit1957
  %i.xk = load i64, ptr %i.br, align 8, !tbaa !64
  %i.xl = add i64 %i.xk, 1
  call void @_ZdlPvm(ptr noundef %i.xi, i64 noundef %i.xl) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1029

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1029: ; preds = %.loopexit1957, %.loopexit1951, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1027
  %.merged843 = phi { ptr, i32 } [ %.merged844, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1027 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit1951 ], [ %.merged844, %.loopexit1957 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #31
  br label %.body1034

.thread1637:                                      ; preds = %bb.l
  %.pre3118 = load i64, ptr %i.bi, align 8
  %.pre3117 = load i64, ptr %i.bg, align 8, !tbaa !67
  %i.xm = icmp eq i64 %.pre3117, 0
  %i.xn = icmp eq i64 %.pre3118, 0
  %or.cond1933 = select i1 %i.xm, i1 true, i1 %i.xn
  br i1 %or.cond1933, label %bb.lh, label %bb.lf

bb.lf:                                            ; preds = %.thread1637
  %i.xo = getelementptr inbounds nuw i8, ptr %3, i64 816 ; 2 uses
  %i.xp = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL3EElsIA39_cEERS3_RKT_(ptr noundef nonnull align 8 dereferenceable(408) %i.xo, ptr noundef nonnull align 1 dereferenceable(39) @.str.124)
          to label %.invoke3536 unwind label %bb.lg ; 0 uses

.invoke3536:                                      ; preds = %bb.lf, %bb.lt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i1060
  %i.xq = phi ptr [ %i.aas, %bb.lt ], [ %i.aas, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i1060 ], [ %i.xo, %bb.lf ]
  %i.xr = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL3EElsEPFRSoS4_E(ptr noundef nonnull align 8 dereferenceable(408) %i.xq)
          to label %.loopexit1963 unwind label %bb.lg ; 0 uses

bb.lg:                                            ; preds = %.invoke3536, %.noexc1063, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i1048, %.noexc1032, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL2EElsIA80_cEERS3_RKT_.exit, %bb.lf
  %i.xs = landingpad { ptr, i32 }
          cleanup
  br label %.body1034

bb.lh:                                            ; preds = %.thread1637
  %i.xt = trunc nuw i8 %.2654 to i1               ; 3 uses
  br i1 %i.xt, label %bb.li, label %bb.lk

bb.li:                                            ; preds = %bb.lh
  %i.xu = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !62
  %i.xw = load ptr, ptr %9, align 8, !tbaa !60
  %i.xx = ptrtoint ptr %i.xv to i64
  %i.xy = ptrtoint ptr %i.xw to i64
  %i.xz = sub i64 %i.xx, %i.xy
  %i.ya = icmp ne i64 %i.xz, 32
  %i.yb = trunc nuw i8 %.2577 to i1
  %or.cond = select i1 %i.ya, i1 true, i1 %i.yb
  br i1 %or.cond, label %bb.lk, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.yc = getelementptr inbounds nuw i8, ptr %14, i64 9
  store i8 1, ptr %i.yc, align 1, !tbaa !86
  store i8 1, ptr %14, align 8, !tbaa !87
  br label %bb.lk

bb.lk:                                            ; preds = %bb.lj, %bb.li, %bb.lh
  %.4579 = phi i8 [ %.2577, %bb.li ], [ 1, %bb.lj ], [ %.2577, %bb.lh ]
  %i.yd = getelementptr inbounds nuw i8, ptr %14, i64 9 ; 3 uses
  %i.ye = load i8, ptr %i.yd, align 1, !tbaa !86, !range !90, !noundef !91
  %i.yf = trunc nuw i8 %i.ye to i1
  %i.yg = load i64, ptr %i.ay, align 8
  %i.yh = icmp eq i64 %i.yg, 0
  %or.cond1936 = select i1 %i.yf, i1 %i.yh, i1 false
  br i1 %or.cond1936, label %bb.ll, label %bb.ma

bb.ll:                                            ; preds = %bb.lk
  br i1 %.6650, label %bb.lm, label %bb.lt

bb.lm:                                            ; preds = %bb.ll
  store i8 0, ptr %i.yd, align 1, !tbaa !86
  %i.yi = getelementptr inbounds nuw i8, ptr %3, i64 408 ; 3 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %3, i64 800 ; 2 uses
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !50
  %.not.i.i = icmp eq ptr %i.yk, null
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL2EElsIA80_cEERS3_RKT_.exit, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.lm
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.yl = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.yl, ptr %6, align 8, !tbaa !66
  %i.ym = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.ym, align 8, !tbaa !67
  store i8 0, ptr %i.yl, align 8, !tbaa !64
  %i.yn = getelementptr inbounds nuw i8, ptr %3, i64 504 ; 3 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %3, i64 512 ; 2 uses
  %i.yp = load i64, ptr %i.yo, align 8, !tbaa !67
  %i.yq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.yn, i64 noundef 0, i64 noundef %i.yp, ptr noundef nonnull %i.yl, i64 noundef 0)
          to label %.noexc8.i.i unwind label %bb.lr ; 0 uses

.noexc8.i.i:                                      ; preds = %._crit_edge.i.i.i.i
  %i.yr = getelementptr inbounds nuw i8, ptr %3, i64 432
  %i.ys = getelementptr inbounds nuw i8, ptr %3, i64 496
  %i.yt = load i32, ptr %i.ys, align 8, !tbaa !92
  %i.yu = and i32 %i.yt, 3
  %.not.i.i.i.i.i = icmp eq i32 %i.yu, 0
  %i.yv = load i64, ptr %i.yo, align 8
  %.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 0, i64 %i.yv
  %i.yw = load ptr, ptr %i.yn, align 8, !tbaa !63
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.yr, ptr noundef %i.yw, i64 noundef 0, i64 noundef %.0.i.i.i.i.i)
          to label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit.i.i unwind label %bb.lr

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit.i.i: ; preds = %.noexc8.i.i
  %i.yx = load ptr, ptr %6, align 8, !tbaa !63    ; 2 uses
  %i.yy = icmp eq ptr %i.yx, %i.yl
  br i1 %i.yy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit.i.i
  %i.yz = load i64, ptr %i.yl, align 8, !tbaa !64
  %i.za = add i64 %i.yz, 1
  call void @_ZdlPvm(ptr noundef %i.yx, i64 noundef %i.za) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.zb = load ptr, ptr %i.yi, align 8, !tbaa !56
  %i.zc = getelementptr i8, ptr %i.zb, i64 -24
  %i.zd = load i64, ptr %i.zc, align 8
  %i.ze = getelementptr inbounds i8, ptr %i.yi, i64 %i.zd
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ze, i32 noundef 0)
          to label %.noexc1032 unwind label %bb.lg

.noexc1032:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.zf = getelementptr inbounds nuw i8, ptr %3, i64 424
  %i.zg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.zf, ptr noundef nonnull @.str.125, i64 noundef 79)
          to label %.noexc1033 unwind label %bb.lg ; 0 uses

.noexc1033:                                       ; preds = %.noexc1032
  %i.zh = load ptr, ptr %i.yj, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !231)
  call void @llvm.experimental.noalias.scope.decl(metadata !232)
  %i.zi = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  store ptr %i.zi, ptr %7, align 8, !tbaa !66, !alias.scope !233
  %i.zj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.zj, align 8, !tbaa !67, !alias.scope !233
  store i8 0, ptr %i.zi, align 8, !tbaa !64, !alias.scope !233
  %i.zk = getelementptr inbounds nuw i8, ptr %3, i64 472
  %i.zl = load ptr, ptr %i.zk, align 8, !tbaa !93, !noalias !233 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.zl, null
  %i.zm = getelementptr inbounds nuw i8, ptr %3, i64 456
  %i.zn = load ptr, ptr %i.zm, align 8, !noalias !233 ; 2 uses
  %i.zo = icmp ugt ptr %i.zl, %i.zn
  %.08.i.i.i.i.i = select i1 %i.zo, ptr %i.zl, ptr %i.zn ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.lp, label %bb.ln

bb.ln:                                            ; preds = %.noexc1033
  %i.zp = getelementptr inbounds nuw i8, ptr %3, i64 464
  %i.zq = load ptr, ptr %i.zp, align 8, !tbaa !94, !noalias !233 ; 2 uses
  %i.zr = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.zs = ptrtoint ptr %i.zq to i64
  %i.zt = sub i64 %i.zr, %i.zs
  %i.zu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef %i.zq, i64 noundef %i.zt)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i unwind label %bb.lo ; 0 uses

bb.lo:                                            ; preds = %bb.lp, %bb.ln
  %i.zv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zw = load ptr, ptr %7, align 8, !tbaa !63, !alias.scope !233 ; 2 uses
  %i.zx = icmp eq ptr %i.zw, %i.zi
  br i1 %i.zx, label %.body1034, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1030

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1030: ; preds = %bb.lo
  %i.zy = load i64, ptr %i.zi, align 8, !tbaa !64, !alias.scope !233
  %i.zz = add i64 %i.zy, 1
  call void @_ZdlPvm(ptr noundef %i.zw, i64 noundef %i.zz) #35
  br label %.body1034

bb.lp:                                            ; preds = %.noexc1033
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.yn)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i unwind label %bb.lo

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i: ; preds = %bb.lp, %bb.ln
  %i.aaa = load ptr, ptr %7, align 8, !tbaa !63
  %i.aab = getelementptr inbounds nuw i8, ptr %3, i64 808
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !51
  invoke void %i.zh(i32 noundef 2, ptr noundef %i.aaa, ptr noundef %i.aac)
          to label %bb.lq unwind label %bb.ls

bb.lq:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i
  %i.aad = load ptr, ptr %7, align 8, !tbaa !63   ; 2 uses
  %i.aae = icmp eq ptr %i.aad, %i.zi
  br i1 %i.aae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i.i: ; preds = %bb.lq
  %i.aaf = load i64, ptr %i.zi, align 8, !tbaa !64
  %i.aag = add i64 %i.aaf, 1
  call void @_ZdlPvm(ptr noundef %i.aad, i64 noundef %i.aag) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i: ; preds = %bb.lq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL2EElsIA80_cEERS3_RKT_.exit

end_hunk_2
