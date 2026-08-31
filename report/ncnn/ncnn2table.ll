Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/ncnn2table?download=true
inline.NumInlined: 3059
inline.NumDeleted: 1199
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 47
begin_hunk_0_@main:bb.a
_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i177: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i175, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.fq = phi ptr [ %.pr.i176, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i175 ], [ %i.fm, %_ZNSt6vectorIiSaIiEED2Ev.exit.i ] ; 2 uses
  %.not.i.i1.i178 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i1.i178, label %.body, label %bb.ar

bb.ar:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i177
  call void @_ZdlPv(ptr noundef nonnull %i.fq) #37
  br label %.body

._crit_edge.i:                                    ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit22.i, %.noexc12.i
  %i.fr = load ptr, ptr %i.bh, align 8, !tbaa !127, !alias.scope !653 ; 6 uses
  %i.fs = load ptr, ptr %i.bi, align 16, !tbaa !657, !alias.scope !653
  %.not.i24.i = icmp eq ptr %i.fr, %i.fs
  br i1 %.not.i24.i, label %bb.ax, label %bb.as

bb.as:                                            ; preds = %._crit_edge.i
  %i.ft = load ptr, ptr %i.bf, align 8, !tbaa !154, !noalias !653 ; 2 uses
  %i.fu = load ptr, ptr %2, align 8, !tbaa !105, !noalias !653 ; 2 uses
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = sub i64 %i.fv, %i.fw                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fr, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ft, %i.fu
  br i1 %.not.i.i.i.i.i.i, label %.noexc26.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fy = icmp ugt i64 %i.fx, 9223372036854775804
  br i1 %i.fy, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !26

.noexc.i.i.i.i:                                   ; preds = %bb.at
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc25.i unwind label %.loopexit.split-lp.loopexit.split-lp.i

.noexc25.i:                                       ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.at
  %i.fz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fx) #39
          to label %.noexc26.i unwind label %.loopexit.split-lp.loopexit.i

.noexc26.i:                                       ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i, %bb.as
  %i.ga = phi ptr [ null, %bb.as ], [ %i.fz, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 6 uses
  store ptr %i.ga, ptr %i.fr, align 8, !tbaa !105
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 2 uses
  store ptr %i.ga, ptr %i.gb, align 8, !tbaa !154
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.fx
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  store ptr %i.gc, ptr %i.gd, align 8, !tbaa !155
  %i.ge = load ptr, ptr %2, align 8, !tbaa !650, !noalias !653 ; 4 uses
  %i.gf = load ptr, ptr %i.bf, align 8, !tbaa !650, !noalias !653
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = ptrtoint ptr %i.ge to i64
  %i.gi = sub i64 %i.gg, %i.gh                    ; 4 uses
  %i.gj = icmp sgt i64 %i.gi, 4
  br i1 %i.gj, label %bb.au, label %bb.av, !prof !436

bb.au:                                            ; preds = %.noexc26.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ga, ptr align 4 %i.ge, i64 %i.gi, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i.i

bb.av:                                            ; preds = %.noexc26.i
  %i.gk = icmp eq i64 %i.gi, 4
  br i1 %i.gk, label %bb.aw, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i.i

bb.aw:                                            ; preds = %bb.av
  %i.gl = load i32, ptr %i.ge, align 4, !tbaa !156
  store i32 %i.gl, ptr %i.ga, align 4, !tbaa !156
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i.i

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i.i:            ; preds = %bb.aw, %bb.av, %bb.au
  %i.gm = getelementptr inbounds i8, ptr %i.ga, i64 %i.gi
  store ptr %i.gm, ptr %i.gb, align 8, !tbaa !154
  %i.gn = load ptr, ptr %i.bh, align 8, !tbaa !127, !alias.scope !653
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  store ptr %i.go, ptr %i.bh, align 8, !tbaa !127, !alias.scope !653
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit.i

bb.ax:                                            ; preds = %._crit_edge.i
  invoke void @_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr %i.fr, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit_crit_edge.i unwind label %.loopexit.split-lp.loopexit.i

._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit_crit_edge.i: ; preds = %bb.ax
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !105, !noalias !653
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit.i

_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit.i: ; preds = %._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit_crit_edge.i, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i.i
  %i.gp = phi ptr [ %.pre.i, %._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit_crit_edge.i ], [ %i.ge, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i.i ] ; 2 uses
  %.not.i.i.i28.i = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i28.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit29.i, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.gp) #37
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit29.i

_ZNSt6vectorIiSaIiEED2Ev.exit29.i:                ; preds = %bb.ay, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20, !noalias !653
  br label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit29.i, %.lr.ph37.i
  %i.gq = call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.120) #20 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20, !noalias !653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20, !noalias !653
  %.not.i = icmp eq ptr %i.gq, null
  br i1 %.not.i, label %_ZL26parse_comma_int_array_listPc.exit, label %.lr.ph37.i, !llvm.loop !658

_ZL26parse_comma_int_array_listPc.exit:           ; preds = %bb.az, %bb.aj
  %i.gr = load ptr, ptr %i.bj, align 8, !tbaa !126 ; 4 uses
  %i.gs = load ptr, ptr %i.bk, align 8, !tbaa !127 ; 2 uses
  %i.gt = load <2 x ptr>, ptr %9, align 16, !tbaa !659
  store <2 x ptr> %i.gt, ptr %i.bj, align 8, !tbaa !659
  %i.gu = load ptr, ptr %i.bi, align 16, !tbaa !657
  store ptr %i.gu, ptr %i.bl, align 8, !tbaa !657
  %.not4.i.i.i.i.i129 = icmp eq ptr %i.gr, %i.gs
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i129, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i130

.lr.ph.i.i.i.i.i130:                              ; preds = %_ZL26parse_comma_int_array_listPc.exit, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i131 = phi ptr [ %i.gw, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i ], [ %i.gr, %_ZL26parse_comma_int_array_listPc.exit ] ; 2 uses
  %i.gv = load ptr, ptr %.05.i.i.i.i.i131, align 8, !tbaa !105 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i132 = icmp eq ptr %i.gv, null
  br i1 %.not.i.i.i.i.i.i.i.i.i132, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i.i.i.i.i130
  call void @_ZdlPv(ptr noundef nonnull %i.gv) #37
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.ba, %.lr.ph.i.i.i.i.i130
  %i.gw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i131, i64 24 ; 2 uses
  %.not.i.i.i.i.i133 = icmp eq ptr %i.gw, %i.gs
  br i1 %.not.i.i.i.i.i133, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i130, !llvm.loop !128

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i, %_ZL26parse_comma_int_array_listPc.exit
  %.not.i.i1.i.i.i134 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i1.i.i.i134, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EEaSEOS3_.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.gr) #37
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EEaSEOS3_.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EEaSEOS3_.exit:      ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i.i, %bb.bb
  %i.gx = load ptr, ptr %9, align 16, !tbaa !126  ; 3 uses
  %i.gy = load ptr, ptr %i.bh, align 8, !tbaa !127 ; 2 uses
  %.not4.i.i.i135 = icmp eq ptr %i.gx, %i.gy
  br i1 %.not4.i.i.i135, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i136

.lr.ph.i.i.i136:                                  ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EEaSEOS3_.exit, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.05.i.i.i137 = phi ptr [ %i.ha, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i ], [ %i.gx, %_ZNSt6vectorIS_IiSaIiEESaIS1_EEaSEOS3_.exit ] ; 2 uses
  %i.gz = load ptr, ptr %.05.i.i.i137, align 8, !tbaa !105 ; 2 uses
  %.not.i.i.i.i.i.i.i138 = icmp eq ptr %i.gz, null
  br i1 %.not.i.i.i.i.i.i.i138, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i.i.i136
  call void @_ZdlPv(ptr noundef nonnull %i.gz) #37
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i:  ; preds = %bb.bc, %.lr.ph.i.i.i136
  %i.ha = getelementptr inbounds nuw i8, ptr %.05.i.i.i137, i64 24 ; 2 uses
  %.not.i.i.i139 = icmp eq ptr %i.ha, %i.gy
  br i1 %.not.i.i.i139, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i136, !llvm.loop !128

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.pr.i140 = load ptr, ptr %9, align 16, !tbaa !126
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIS_IiSaIiEESaIS1_EEaSEOS3_.exit
  %i.hb = phi ptr [ %.pr.i140, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.gx, %_ZNSt6vectorIS_IiSaIiEESaIS1_EEaSEOS3_.exit ] ; 2 uses
  %.not.i.i1.i141 = icmp eq ptr %i.hb, null
  br i1 %.not.i.i1.i141, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.hb) #37
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.be

.body:                                            ; preds = %bb.ar, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i177
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %.body153

bb.be:                                            ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, %bb.ai
  %i.hc = load i32, ptr %i.ce, align 1
  %i.hd = xor i32 %i.hc, 1702390128
  %i.he = getelementptr i8, ptr %i.ce, i64 4
  %i.hf = load i8, ptr %i.he, align 1
  %i.hg = zext i8 %i.hf to i32
  %i.hh = xor i32 %i.hg, 108
  %i.hi = or i32 %i.hd, %i.hh
  %i.hj = icmp ne i32 %i.hi, 0
  %i.hk = zext i1 %i.hj to i32
  %i.hl = icmp eq i32 %i.hk, 0
  br i1 %i.hl, label %bb.bf, label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.bf:                                            ; preds = %bb.be
  %i.hm = call ptr @strtok(ptr noundef nonnull %i.cj, ptr noundef nonnull @.str.117) #20, !noalias !660 ; 2 uses
  %.not100.i = icmp eq ptr %i.hm, null
  br i1 %.not100.i, label %_ZL27parse_comma_pixel_type_listPc.exit, label %.lr.ph.i142

.lr.ph.i142:                                      ; preds = %bb.bf, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit63.i
  %.sroa.13.0 = phi i64 [ %.sroa.13.6, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit63.i ], [ 0, %bb.bf ]
  %.sroa.26.0 = phi i64 [ %.sroa.26.6, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit63.i ], [ 0, %bb.bf ] ; 2 uses
  %.sroa.0180.0 = phi ptr [ %.sroa.0180.6, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit63.i ], [ null, %bb.bf ] ; 2 uses
  %i.hn = phi ptr [ %i.nn, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit63.i ], [ null, %bb.bf ] ; 2 uses
  %i.ho = phi ptr [ %i.no, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit63.i ], [ null, %bb.bf ] ; 2 uses
  %i.hp = phi ptr [ %i.np, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit63.i ], [ null, %bb.bf ] ; 2 uses
  %i.hq = phi ptr [ %i.nq, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit63.i ], [ null, %bb.bf ] ; 2 uses
  %i.hr = phi ptr [ %i.nr, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit63.i ], [ null, %bb.bf ] ; 2 uses
  %i.hs = phi ptr [ %i.ns, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit63.i ], [ null, %bb.bf ] ; 8 uses
  %i.ht = phi ptr [ %i.nt, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit63.i ], [ null, %bb.bf ] ; 4 uses
  %i.hu = phi ptr [ %i.nu, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit63.i ], [ null, %bb.bf ] ; 4 uses
  %.011101.i = phi ptr [ %i.nv, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit63.i ], [ %i.hm, %bb.bf ] ; 6 uses
  %i.hv = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.011101.i, ptr noundef nonnull dereferenceable(4) @.str.125) #45, !noalias !660
  %i.hw = icmp eq i32 %i.hv, 0
  br i1 %i.hw, label %bb.bg, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i

bb.bg:                                            ; preds = %.lr.ph.i142
  %.not.i.i.i147 = icmp eq ptr %i.hu, %i.ht
  br i1 %.not.i.i.i147, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  store i32 -233, ptr %i.hu, align 4, !tbaa !156, !noalias !660
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hu, i64 4 ; 2 uses
  %11 = ptrtoint ptr %i.hx to i64
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i

bb.bi:                                            ; preds = %bb.bg
  %i.hy = ptrtoint ptr %i.ht to i64
  %i.hz = ptrtoint ptr %i.hs to i64
  %i.ia = sub i64 %i.hy, %i.hz                    ; 5 uses
  %i.ib = icmp eq i64 %i.ia, 9223372036854775804
  br i1 %i.ib, label %bb.bj, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #38
          to label %.noexc.i152 unwind label %.loopexit.split-lp.i151, !noalias !660

.noexc.i152:                                      ; preds = %bb.bj
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.bi
  %i.ic = ashr exact i64 %i.ia, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ic, i64 1)
  %i.id = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ic ; 2 uses
  %i.ie = icmp ult i64 %i.id, %i.ic
  %i.if = call i64 @llvm.umin.i64(i64 %i.id, i64 2305843009213693951)
  %i.ig = select i1 %i.ie, i64 2305843009213693951, i64 %i.if ; 3 uses
  %.not.i.i.i.i.i148 = icmp ne i64 %i.ig, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i148)
  %i.ih = shl nuw nsw i64 %i.ig, 2
  %i.ii = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ih) #39
          to label %.noexc13.i unwind label %.loopexit.i149, !noalias !660 ; 5 uses

.noexc13.i:                                       ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ij = getelementptr inbounds i8, ptr %i.ii, i64 %i.ia ; 2 uses
  store i32 -233, ptr %i.ij, align 4, !tbaa !156, !noalias !660
  %i.ik = icmp sgt i64 %i.ia, 0
  br i1 %i.ik, label %bb.bk, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i

bb.bk:                                            ; preds = %.noexc13.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ii, ptr align 4 %i.hs, i64 %i.ia, i1 false), !noalias !660
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.bk, %.noexc13.i
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 4 ; 2 uses
  %.not.i17.i.i.i.i = icmp eq ptr %i.hs, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.hs) #37, !noalias !660
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i: ; preds = %bb.bl, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i
  %12 = ptrtoint ptr %i.il to i64
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.ig ; 7 uses
  %13 = ptrtoint ptr %i.im to i64
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i

.loopexit.i149:                                   ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit.i150 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

.loopexit.split-lp.i151:                          ; preds = %bb.bj
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i:         ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i, %bb.bh, %.lr.ph.i142
  %.sroa.13.1 = phi i64 [ %12, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ], [ %11, %bb.bh ], [ %.sroa.13.0, %.lr.ph.i142 ]
  %.sroa.26.1 = phi i64 [ %13, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ], [ %.sroa.26.0, %bb.bh ], [ %.sroa.26.0, %.lr.ph.i142 ] ; 2 uses
  %.sroa.0180.1 = phi ptr [ %i.ii, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ], [ %.sroa.0180.0, %bb.bh ], [ %.sroa.0180.0, %.lr.ph.i142 ] ; 2 uses
  %i.in = phi ptr [ %i.im, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ], [ %i.hn, %bb.bh ], [ %i.hn, %.lr.ph.i142 ] ; 2 uses
  %i.io = phi ptr [ %i.im, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ], [ %i.ho, %bb.bh ], [ %i.ho, %.lr.ph.i142 ] ; 2 uses
  %i.ip = phi ptr [ %i.im, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ], [ %i.hp, %bb.bh ], [ %i.hp, %.lr.ph.i142 ] ; 2 uses
  %i.iq = phi ptr [ %i.im, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ], [ %i.hq, %bb.bh ], [ %i.hq, %.lr.ph.i142 ] ; 2 uses
  %i.ir = phi ptr [ %i.im, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ], [ %i.hr, %bb.bh ], [ %i.hr, %.lr.ph.i142 ] ; 5 uses
  %i.is = phi ptr [ %i.ii, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ], [ %i.hs, %bb.bh ], [ %i.hs, %.lr.ph.i142 ] ; 8 uses
  %i.it = phi ptr [ %i.im, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ], [ %i.ht, %bb.bh ], [ %i.ht, %.lr.ph.i142 ]
  %i.iu = phi ptr [ %i.il, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ], [ %i.hx, %bb.bh ], [ %i.hu, %.lr.ph.i142 ] ; 4 uses
  %i.iv = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.011101.i, ptr noundef nonnull dereferenceable(4) @.str.126) #45, !noalias !660
  %i.iw = icmp eq i32 %i.iv, 0
  br i1 %i.iw, label %bb.bm, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit23.i

bb.bm:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i
  %.not.i.i14.i = icmp eq ptr %i.iu, %i.ir
  br i1 %.not.i.i14.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  store i32 1, ptr %i.iu, align 4, !tbaa !156, !noalias !660
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 4 ; 2 uses
  %14 = ptrtoint ptr %i.ix to i64
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit23.i

bb.bo:                                            ; preds = %bb.bm
  %i.iy = ptrtoint ptr %i.ir to i64
  %i.iz = ptrtoint ptr %i.is to i64
  %i.ja = sub i64 %i.iy, %i.iz                    ; 5 uses
  %i.jb = icmp eq i64 %i.ja, 9223372036854775804
  br i1 %i.jb, label %bb.bp, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i15.i

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #38
          to label %.noexc21.i146 unwind label %.loopexit.split-lp76.i, !noalias !660

.noexc21.i146:                                    ; preds = %bb.bp
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i15.i: ; preds = %bb.bo
  %i.jc = ashr exact i64 %i.ja, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i16.i = call i64 @llvm.umax.i64(i64 %i.jc, i64 1)
  %i.jd = add nsw i64 %.sroa.speculated.i.i.i.i16.i, %i.jc ; 2 uses
  %i.je = icmp ult i64 %i.jd, %i.jc
  %i.jf = call i64 @llvm.umin.i64(i64 %i.jd, i64 2305843009213693951)
  %i.jg = select i1 %i.je, i64 2305843009213693951, i64 %i.jf ; 3 uses
  %.not.i.i.i.i17.i = icmp ne i64 %i.jg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i17.i)
  %i.jh = shl nuw nsw i64 %i.jg, 2
  %i.ji = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jh) #39
          to label %.noexc22.i unwind label %.loopexit75.i, !noalias !660 ; 5 uses

.noexc22.i:                                       ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i15.i
  %i.jj = getelementptr inbounds i8, ptr %i.ji, i64 %i.ja ; 2 uses
  store i32 1, ptr %i.jj, align 4, !tbaa !156, !noalias !660
  %i.jk = icmp sgt i64 %i.ja, 0
  br i1 %i.jk, label %bb.bq, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i18.i

bb.bq:                                            ; preds = %.noexc22.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ji, ptr align 4 %i.is, i64 %i.ja, i1 false), !noalias !660
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i18.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i18.i: ; preds = %bb.bq, %.noexc22.i
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 4 ; 2 uses
  %.not.i17.i.i.i19.i = icmp eq ptr %i.is, null
  br i1 %.not.i17.i.i.i19.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i20.i, label %bb.br

bb.br:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i18.i
  call void @_ZdlPv(ptr noundef nonnull %i.is) #37, !noalias !660
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i20.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i20.i: ; preds = %bb.br, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i18.i
  %15 = ptrtoint ptr %i.jl to i64
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %i.jg ; 7 uses
  %16 = ptrtoint ptr %i.jm to i64
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit23.i

.loopexit75.i:                                    ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i15.i
  %lpad.loopexit77.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

.loopexit.split-lp76.i:                           ; preds = %bb.bp
  %lpad.loopexit.split-lp78.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

_ZNSt6vectorIiSaIiEE9push_backEOi.exit23.i:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i20.i, %bb.bn, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i
  %.sroa.13.2 = phi i64 [ %15, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i20.i ], [ %14, %bb.bn ], [ %.sroa.13.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ]
  %.sroa.26.2 = phi i64 [ %16, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i20.i ], [ %.sroa.26.1, %bb.bn ], [ %.sroa.26.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ] ; 2 uses
  %.sroa.0180.2 = phi ptr [ %i.ji, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i20.i ], [ %.sroa.0180.1, %bb.bn ], [ %.sroa.0180.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ] ; 2 uses
  %i.jn = phi ptr [ %i.jm, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i20.i ], [ %i.in, %bb.bn ], [ %i.in, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ] ; 2 uses
  %i.jo = phi ptr [ %i.jm, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i20.i ], [ %i.io, %bb.bn ], [ %i.io, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ] ; 2 uses
  %i.jp = phi ptr [ %i.jm, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i20.i ], [ %i.ip, %bb.bn ], [ %i.ip, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ] ; 2 uses
  %i.jq = phi ptr [ %i.jm, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i20.i ], [ %i.iq, %bb.bn ], [ %i.iq, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ] ; 6 uses
  %i.jr = phi ptr [ %i.jm, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i20.i ], [ %i.ir, %bb.bn ], [ %i.ir, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ]
  %i.js = phi ptr [ %i.ji, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i20.i ], [ %i.is, %bb.bn ], [ %i.is, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ] ; 8 uses
  %i.jt = phi ptr [ %i.jm, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i20.i ], [ %i.ir, %bb.bn ], [ %i.it, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ]
  %i.ju = phi ptr [ %i.jl, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i20.i ], [ %i.ix, %bb.bn ], [ %i.iu, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ] ; 4 uses
  %i.jv = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.011101.i, ptr noundef nonnull dereferenceable(4) @.str.127) #45, !noalias !660
  %i.jw = icmp eq i32 %i.jv, 0
  br i1 %i.jw, label %bb.bs, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit33.i

bb.bs:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit23.i
  %.not.i.i24.i = icmp eq ptr %i.ju, %i.jq
  br i1 %.not.i.i24.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  store i32 2, ptr %i.ju, align 4, !tbaa !156, !noalias !660
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ju, i64 4 ; 2 uses
  %17 = ptrtoint ptr %i.jx to i64
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit33.i

bb.bu:                                            ; preds = %bb.bs
  %i.jy = ptrtoint ptr %i.jq to i64
  %i.jz = ptrtoint ptr %i.js to i64
  %i.ka = sub i64 %i.jy, %i.jz                    ; 5 uses
  %i.kb = icmp eq i64 %i.ka, 9223372036854775804
  br i1 %i.kb, label %bb.bv, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i25.i

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #38
          to label %.noexc31.i unwind label %.loopexit.split-lp81.i, !noalias !660

.noexc31.i:                                       ; preds = %bb.bv
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i25.i: ; preds = %bb.bu
  %i.kc = ashr exact i64 %i.ka, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i26.i = call i64 @llvm.umax.i64(i64 %i.kc, i64 1)
  %i.kd = add nsw i64 %.sroa.speculated.i.i.i.i26.i, %i.kc ; 2 uses
  %i.ke = icmp ult i64 %i.kd, %i.kc
  %i.kf = call i64 @llvm.umin.i64(i64 %i.kd, i64 2305843009213693951)
  %i.kg = select i1 %i.ke, i64 2305843009213693951, i64 %i.kf ; 3 uses
  %.not.i.i.i.i27.i = icmp ne i64 %i.kg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i27.i)
  %i.kh = shl nuw nsw i64 %i.kg, 2
  %i.ki = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kh) #39
          to label %.noexc32.i unwind label %.loopexit80.i, !noalias !660 ; 5 uses

.noexc32.i:                                       ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i25.i
  %i.kj = getelementptr inbounds i8, ptr %i.ki, i64 %i.ka ; 2 uses
  store i32 2, ptr %i.kj, align 4, !tbaa !156, !noalias !660
  %i.kk = icmp sgt i64 %i.ka, 0
  br i1 %i.kk, label %bb.bw, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i28.i

bb.bw:                                            ; preds = %.noexc32.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ki, ptr align 4 %i.js, i64 %i.ka, i1 false), !noalias !660
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i28.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i28.i: ; preds = %bb.bw, %.noexc32.i
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 4 ; 2 uses
  %.not.i17.i.i.i29.i = icmp eq ptr %i.js, null
  br i1 %.not.i17.i.i.i29.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i30.i, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i28.i
  call void @_ZdlPv(ptr noundef nonnull %i.js) #37, !noalias !660
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i30.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i30.i: ; preds = %bb.bx, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i28.i
  %18 = ptrtoint ptr %i.kl to i64
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %i.kg ; 7 uses
  %19 = ptrtoint ptr %i.km to i64
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit33.i

.loopexit80.i:                                    ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i25.i
  %lpad.loopexit82.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

.loopexit.split-lp81.i:                           ; preds = %bb.bv
  %lpad.loopexit.split-lp83.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

_ZNSt6vectorIiSaIiEE9push_backEOi.exit33.i:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i30.i, %bb.bt, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit23.i
  %.sroa.13.3 = phi i64 [ %18, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i30.i ], [ %17, %bb.bt ], [ %.sroa.13.2, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit23.i ]
  %.sroa.26.3 = phi i64 [ %19, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i30.i ], [ %.sroa.26.2, %bb.bt ], [ %.sroa.26.2, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit23.i ] ; 2 uses
  %.sroa.0180.3 = phi ptr [ %i.ki, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i30.i ], [ %.sroa.0180.2, %bb.bt ], [ %.sroa.0180.2, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit23.i ] ; 2 uses
  %i.kn = phi ptr [ %i.km, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i30.i ], [ %i.jn, %bb.bt ], [ %i.jn, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit23.i ] ; 2 uses
  %i.ko = phi ptr [ %i.km, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i30.i ], [ %i.jo, %bb.bt ], [ %i.jo, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit23.i ] ; 2 uses
  %i.kp = phi ptr [ %i.km, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i30.i ], [ %i.jp, %bb.bt ], [ %i.jp, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit23.i ] ; 7 uses
  %i.kq = phi ptr [ %i.km, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i30.i ], [ %i.jq, %bb.bt ], [ %i.jq, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit23.i ]
  %i.kr = phi ptr [ %i.km, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i30.i ], [ %i.jq, %bb.bt ], [ %i.jr, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit23.i ]
  %i.ks = phi ptr [ %i.ki, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i30.i ], [ %i.js, %bb.bt ], [ %i.js, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit23.i ] ; 8 uses
  %i.kt = phi ptr [ %i.km, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i30.i ], [ %i.jq, %bb.bt ], [ %i.jt, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit23.i ]
  %i.ku = phi ptr [ %i.kl, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i30.i ], [ %i.jx, %bb.bt ], [ %i.ju, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit23.i ] ; 4 uses
  %i.kv = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.011101.i, ptr noundef nonnull dereferenceable(5) @.str.128) #45, !noalias !660
  %i.kw = icmp eq i32 %i.kv, 0
  br i1 %i.kw, label %bb.by, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit43.i

bb.by:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit33.i
  %.not.i.i34.i = icmp eq ptr %i.ku, %i.kp
  br i1 %.not.i.i34.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  store i32 3, ptr %i.ku, align 4, !tbaa !156, !noalias !660
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ku, i64 4 ; 2 uses
  %20 = ptrtoint ptr %i.kx to i64
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit43.i

bb.ca:                                            ; preds = %bb.by
  %i.ky = ptrtoint ptr %i.kp to i64
  %i.kz = ptrtoint ptr %i.ks to i64
  %i.la = sub i64 %i.ky, %i.kz                    ; 5 uses
  %i.lb = icmp eq i64 %i.la, 9223372036854775804
  br i1 %i.lb, label %bb.cb, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i35.i

bb.cb:                                            ; preds = %bb.ca
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #38
          to label %.noexc41.i unwind label %.loopexit.split-lp86.i, !noalias !660

.noexc41.i:                                       ; preds = %bb.cb
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i35.i: ; preds = %bb.ca
  %i.lc = ashr exact i64 %i.la, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i36.i = call i64 @llvm.umax.i64(i64 %i.lc, i64 1)
  %i.ld = add nsw i64 %.sroa.speculated.i.i.i.i36.i, %i.lc ; 2 uses
  %i.le = icmp ult i64 %i.ld, %i.lc
  %i.lf = call i64 @llvm.umin.i64(i64 %i.ld, i64 2305843009213693951)
  %i.lg = select i1 %i.le, i64 2305843009213693951, i64 %i.lf ; 3 uses
  %.not.i.i.i.i37.i = icmp ne i64 %i.lg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i37.i)
  %i.lh = shl nuw nsw i64 %i.lg, 2
  %i.li = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lh) #39
          to label %.noexc42.i unwind label %.loopexit85.i, !noalias !660 ; 5 uses

.noexc42.i:                                       ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i35.i
  %i.lj = getelementptr inbounds i8, ptr %i.li, i64 %i.la ; 2 uses
  store i32 3, ptr %i.lj, align 4, !tbaa !156, !noalias !660
  %i.lk = icmp sgt i64 %i.la, 0
  br i1 %i.lk, label %bb.cc, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i38.i

bb.cc:                                            ; preds = %.noexc42.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.li, ptr align 4 %i.ks, i64 %i.la, i1 false), !noalias !660
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i38.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i38.i: ; preds = %bb.cc, %.noexc42.i
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 4 ; 2 uses
  %.not.i17.i.i.i39.i = icmp eq ptr %i.ks, null
  br i1 %.not.i17.i.i.i39.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i40.i, label %bb.cd

bb.cd:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i38.i
  call void @_ZdlPv(ptr noundef nonnull %i.ks) #37, !noalias !660
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i40.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i40.i: ; preds = %bb.cd, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i38.i
  %21 = ptrtoint ptr %i.ll to i64
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %i.lg ; 7 uses
  %22 = ptrtoint ptr %i.lm to i64
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit43.i

.loopexit85.i:                                    ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i35.i
  %lpad.loopexit87.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

.loopexit.split-lp86.i:                           ; preds = %bb.cb
  %lpad.loopexit.split-lp88.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

_ZNSt6vectorIiSaIiEE9push_backEOi.exit43.i:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i40.i, %bb.bz, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit33.i
  %.sroa.13.4 = phi i64 [ %21, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i40.i ], [ %20, %bb.bz ], [ %.sroa.13.3, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit33.i ]
  %.sroa.26.4 = phi i64 [ %22, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i40.i ], [ %.sroa.26.3, %bb.bz ], [ %.sroa.26.3, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit33.i ] ; 2 uses
  %.sroa.0180.4 = phi ptr [ %i.li, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i40.i ], [ %.sroa.0180.3, %bb.bz ], [ %.sroa.0180.3, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit33.i ] ; 2 uses
  %i.ln = phi ptr [ %i.lm, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i40.i ], [ %i.kn, %bb.bz ], [ %i.kn, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit33.i ] ; 2 uses
  %i.lo = phi ptr [ %i.lm, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i40.i ], [ %i.ko, %bb.bz ], [ %i.ko, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit33.i ] ; 8 uses
  %i.lp = phi ptr [ %i.lm, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i40.i ], [ %i.kp, %bb.bz ], [ %i.kp, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit33.i ]
  %i.lq = phi ptr [ %i.lm, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i40.i ], [ %i.kp, %bb.bz ], [ %i.kq, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit33.i ]
  %i.lr = phi ptr [ %i.lm, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i40.i ], [ %i.kp, %bb.bz ], [ %i.kr, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit33.i ]
  %i.ls = phi ptr [ %i.li, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i40.i ], [ %i.ks, %bb.bz ], [ %i.ks, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit33.i ] ; 8 uses
  %i.lt = phi ptr [ %i.lm, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i40.i ], [ %i.kp, %bb.bz ], [ %i.kt, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit33.i ]
  %i.lu = phi ptr [ %i.ll, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i40.i ], [ %i.kx, %bb.bz ], [ %i.ku, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit33.i ] ; 4 uses
  %i.lv = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.011101.i, ptr noundef nonnull dereferenceable(5) @.str.129) #45, !noalias !660
  %i.lw = icmp eq i32 %i.lv, 0
  br i1 %i.lw, label %bb.ce, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit53.i

bb.ce:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit43.i
  %.not.i.i44.i = icmp eq ptr %i.lu, %i.lo
  br i1 %.not.i.i44.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  store i32 4, ptr %i.lu, align 4, !tbaa !156, !noalias !660
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lu, i64 4 ; 2 uses
  %23 = ptrtoint ptr %i.lx to i64
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit53.i

bb.cg:                                            ; preds = %bb.ce
  %i.ly = ptrtoint ptr %i.lo to i64
  %i.lz = ptrtoint ptr %i.ls to i64
  %i.ma = sub i64 %i.ly, %i.lz                    ; 5 uses
  %i.mb = icmp eq i64 %i.ma, 9223372036854775804
  br i1 %i.mb, label %bb.ch, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i45.i

bb.ch:                                            ; preds = %bb.cg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #38
          to label %.noexc51.i unwind label %.loopexit.split-lp91.i, !noalias !660

.noexc51.i:                                       ; preds = %bb.ch
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i45.i: ; preds = %bb.cg
  %i.mc = ashr exact i64 %i.ma, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i46.i = call i64 @llvm.umax.i64(i64 %i.mc, i64 1)
  %i.md = add nsw i64 %.sroa.speculated.i.i.i.i46.i, %i.mc ; 2 uses
  %i.me = icmp ult i64 %i.md, %i.mc
  %i.mf = call i64 @llvm.umin.i64(i64 %i.md, i64 2305843009213693951)
  %i.mg = select i1 %i.me, i64 2305843009213693951, i64 %i.mf ; 3 uses
  %.not.i.i.i.i47.i = icmp ne i64 %i.mg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i47.i)
  %i.mh = shl nuw nsw i64 %i.mg, 2
  %i.mi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mh) #39
          to label %.noexc52.i unwind label %.loopexit90.i, !noalias !660 ; 5 uses

.noexc52.i:                                       ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i45.i
  %i.mj = getelementptr inbounds i8, ptr %i.mi, i64 %i.ma ; 2 uses
  store i32 4, ptr %i.mj, align 4, !tbaa !156, !noalias !660
  %i.mk = icmp sgt i64 %i.ma, 0
  br i1 %i.mk, label %bb.ci, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i48.i

bb.ci:                                            ; preds = %.noexc52.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.mi, ptr align 4 %i.ls, i64 %i.ma, i1 false), !noalias !660
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i48.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i48.i: ; preds = %bb.ci, %.noexc52.i
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mj, i64 4 ; 2 uses
  %.not.i17.i.i.i49.i = icmp eq ptr %i.ls, null
  br i1 %.not.i17.i.i.i49.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i50.i, label %bb.cj

bb.cj:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i48.i
  call void @_ZdlPv(ptr noundef nonnull %i.ls) #37, !noalias !660
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i50.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i50.i: ; preds = %bb.cj, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i48.i
  %24 = ptrtoint ptr %i.ml to i64
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %i.mg ; 7 uses
  %25 = ptrtoint ptr %i.mm to i64
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit53.i

.loopexit90.i:                                    ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i45.i
  %lpad.loopexit92.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

.loopexit.split-lp91.i:                           ; preds = %bb.ch
  %lpad.loopexit.split-lp93.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

_ZNSt6vectorIiSaIiEE9push_backEOi.exit53.i:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i50.i, %bb.cf, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit43.i
  %.sroa.13.5 = phi i64 [ %24, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i50.i ], [ %23, %bb.cf ], [ %.sroa.13.4, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit43.i ]
  %.sroa.26.5 = phi i64 [ %25, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i50.i ], [ %.sroa.26.4, %bb.cf ], [ %.sroa.26.4, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit43.i ] ; 2 uses
  %.sroa.0180.5 = phi ptr [ %i.mi, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i50.i ], [ %.sroa.0180.4, %bb.cf ], [ %.sroa.0180.4, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit43.i ] ; 2 uses
  %i.mn = phi ptr [ %i.mm, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i50.i ], [ %i.ln, %bb.cf ], [ %i.ln, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit43.i ] ; 9 uses
  %i.mo = phi ptr [ %i.mm, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i50.i ], [ %i.lo, %bb.cf ], [ %i.lo, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit43.i ]
  %i.mp = phi ptr [ %i.mm, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i50.i ], [ %i.lo, %bb.cf ], [ %i.lp, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit43.i ]
  %i.mq = phi ptr [ %i.mm, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i50.i ], [ %i.lo, %bb.cf ], [ %i.lq, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit43.i ]
  %i.mr = phi ptr [ %i.mm, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i50.i ], [ %i.lo, %bb.cf ], [ %i.lr, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit43.i ]
  %i.ms = phi ptr [ %i.mi, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i50.i ], [ %i.ls, %bb.cf ], [ %i.ls, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit43.i ] ; 8 uses
  %i.mt = phi ptr [ %i.mm, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i50.i ], [ %i.lo, %bb.cf ], [ %i.lt, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit43.i ]
  %i.mu = phi ptr [ %i.ml, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i50.i ], [ %i.lx, %bb.cf ], [ %i.lu, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit43.i ] ; 4 uses
  %i.mv = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.011101.i, ptr noundef nonnull dereferenceable(5) @.str.130) #45, !noalias !660
  %i.mw = icmp eq i32 %i.mv, 0
  br i1 %i.mw, label %bb.ck, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit63.i

bb.ck:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit53.i
  %.not.i.i54.i = icmp eq ptr %i.mu, %i.mn
  br i1 %.not.i.i54.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  store i32 5, ptr %i.mu, align 4, !tbaa !156, !noalias !660
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mu, i64 4 ; 2 uses
  %26 = ptrtoint ptr %i.mx to i64
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit63.i

bb.cm:                                            ; preds = %bb.ck
  %i.my = ptrtoint ptr %i.mn to i64
  %i.mz = ptrtoint ptr %i.ms to i64
  %i.na = sub i64 %i.my, %i.mz                    ; 5 uses
  %i.nb = icmp eq i64 %i.na, 9223372036854775804
  br i1 %i.nb, label %bb.cn, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i55.i

bb.cn:                                            ; preds = %bb.cm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #38
          to label %.noexc61.i unwind label %.loopexit.split-lp96.i, !noalias !660

.noexc61.i:                                       ; preds = %bb.cn
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i55.i: ; preds = %bb.cm
  %i.nc = ashr exact i64 %i.na, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i56.i = call i64 @llvm.umax.i64(i64 %i.nc, i64 1)
  %i.nd = add nsw i64 %.sroa.speculated.i.i.i.i56.i, %i.nc ; 2 uses
  %i.ne = icmp ult i64 %i.nd, %i.nc
  %i.nf = call i64 @llvm.umin.i64(i64 %i.nd, i64 2305843009213693951)
  %i.ng = select i1 %i.ne, i64 2305843009213693951, i64 %i.nf ; 3 uses
  %.not.i.i.i.i57.i = icmp ne i64 %i.ng, 0
  call void @llvm.assume(i1 %.not.i.i.i.i57.i)
  %i.nh = shl nuw nsw i64 %i.ng, 2
  %i.ni = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nh) #39
          to label %.noexc62.i unwind label %.loopexit95.i, !noalias !660 ; 5 uses

.noexc62.i:                                       ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i55.i
  %i.nj = getelementptr inbounds i8, ptr %i.ni, i64 %i.na ; 2 uses
  store i32 5, ptr %i.nj, align 4, !tbaa !156, !noalias !660
  %i.nk = icmp sgt i64 %i.na, 0
  br i1 %i.nk, label %bb.co, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i58.i

bb.co:                                            ; preds = %.noexc62.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ni, ptr align 4 %i.ms, i64 %i.na, i1 false), !noalias !660
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i58.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i58.i: ; preds = %bb.co, %.noexc62.i
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nj, i64 4 ; 2 uses
  %.not.i17.i.i.i59.i = icmp eq ptr %i.ms, null
  br i1 %.not.i17.i.i.i59.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i60.i, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i58.i
  call void @_ZdlPv(ptr noundef nonnull %i.ms) #37, !noalias !660
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i60.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i60.i: ; preds = %bb.cp, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i58.i
  %27 = ptrtoint ptr %i.nl to i64
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.ng ; 7 uses
  %28 = ptrtoint ptr %i.nm to i64
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit63.i

.loopexit95.i:                                    ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i55.i
  %lpad.loopexit97.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

.loopexit.split-lp96.i:                           ; preds = %bb.cn
  %lpad.loopexit.split-lp98.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

_ZNSt6vectorIiSaIiEE9push_backEOi.exit63.i:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i60.i, %bb.cl, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit53.i
  %.sroa.13.6 = phi i64 [ %27, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i60.i ], [ %26, %bb.cl ], [ %.sroa.13.5, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit53.i ] ; 2 uses
  %.sroa.26.6 = phi i64 [ %28, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i60.i ], [ %.sroa.26.5, %bb.cl ], [ %.sroa.26.5, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit53.i ] ; 2 uses
  %.sroa.0180.6 = phi ptr [ %i.ni, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i60.i ], [ %.sroa.0180.5, %bb.cl ], [ %.sroa.0180.5, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit53.i ] ; 2 uses
  %i.nn = phi ptr [ %i.nm, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i60.i ], [ %i.mn, %bb.cl ], [ %i.mn, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit53.i ]
  %i.no = phi ptr [ %i.nm, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i60.i ], [ %i.mn, %bb.cl ], [ %i.mo, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit53.i ]
  %i.np = phi ptr [ %i.nm, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i60.i ], [ %i.mn, %bb.cl ], [ %i.mp, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit53.i ]
  %i.nq = phi ptr [ %i.nm, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i60.i ], [ %i.mn, %bb.cl ], [ %i.mq, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit53.i ]
  %i.nr = phi ptr [ %i.nm, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i60.i ], [ %i.mn, %bb.cl ], [ %i.mr, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit53.i ]
  %i.ns = phi ptr [ %i.ni, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i60.i ], [ %i.ms, %bb.cl ], [ %i.ms, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit53.i ]
  %i.nt = phi ptr [ %i.nm, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i60.i ], [ %i.mn, %bb.cl ], [ %i.mt, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit53.i ]
  %i.nu = phi ptr [ %i.nl, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i60.i ], [ %i.mx, %bb.cl ], [ %i.mu, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit53.i ]
  %i.nv = call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.117) #20, !noalias !660 ; 2 uses
  %.not.i143 = icmp eq ptr %i.nv, null
  br i1 %.not.i143, label %_ZL27parse_comma_pixel_type_listPc.exit.loopexit, label %.lr.ph.i142, !llvm.loop !663

bb.cq:                                            ; preds = %.loopexit.split-lp96.i, %.loopexit95.i, %.loopexit.split-lp91.i, %.loopexit90.i, %.loopexit.split-lp86.i, %.loopexit85.i, %.loopexit.split-lp81.i, %.loopexit80.i, %.loopexit.split-lp76.i, %.loopexit75.i, %.loopexit.split-lp.i151, %.loopexit.i149
  %i.nw = phi ptr [ %i.ls, %.loopexit.split-lp91.i ], [ %i.ks, %.loopexit.split-lp86.i ], [ %i.js, %.loopexit.split-lp81.i ], [ %i.is, %.loopexit.split-lp76.i ], [ %i.hs, %.loopexit.split-lp.i151 ], [ %i.hs, %.loopexit.i149 ], [ %i.is, %.loopexit75.i ], [ %i.js, %.loopexit80.i ], [ %i.ks, %.loopexit85.i ], [ %i.ls, %.loopexit90.i ], [ %i.ms, %.loopexit95.i ], [ %i.ms, %.loopexit.split-lp96.i ] ; 2 uses
  %.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp93.i, %.loopexit.split-lp91.i ], [ %lpad.loopexit.split-lp88.i, %.loopexit.split-lp86.i ], [ %lpad.loopexit.split-lp83.i, %.loopexit.split-lp81.i ], [ %lpad.loopexit.split-lp78.i, %.loopexit.split-lp76.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i151 ], [ %lpad.loopexit.i150, %.loopexit.i149 ], [ %lpad.loopexit77.i, %.loopexit75.i ], [ %lpad.loopexit82.i, %.loopexit80.i ], [ %lpad.loopexit87.i, %.loopexit85.i ], [ %lpad.loopexit92.i, %.loopexit90.i ], [ %lpad.loopexit97.i, %.loopexit95.i ], [ %lpad.loopexit.split-lp98.i, %.loopexit.split-lp96.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.nw, null
  br i1 %.not.i.i.i.i, label %.body153, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void @_ZdlPv(ptr noundef nonnull %i.nw) #37, !noalias !660
  br label %.body153

_ZL27parse_comma_pixel_type_listPc.exit.loopexit: ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit63.i
  %29 = inttoptr i64 %.sroa.13.6 to ptr
  %30 = inttoptr i64 %.sroa.26.6 to ptr
  br label %_ZL27parse_comma_pixel_type_listPc.exit

_ZL27parse_comma_pixel_type_listPc.exit:          ; preds = %_ZL27parse_comma_pixel_type_listPc.exit.loopexit, %bb.bf
  %.sroa.13.7 = phi ptr [ null, %bb.bf ], [ %29, %_ZL27parse_comma_pixel_type_listPc.exit.loopexit ]
  %.sroa.26.7 = phi ptr [ null, %bb.bf ], [ %30, %_ZL27parse_comma_pixel_type_listPc.exit.loopexit ]
  %.sroa.0180.7 = phi ptr [ null, %bb.bf ], [ %.sroa.0180.6, %_ZL27parse_comma_pixel_type_listPc.exit.loopexit ]
  %i.nx = load ptr, ptr %i.bm, align 8, !tbaa !105 ; 2 uses
  store ptr %.sroa.0180.7, ptr %i.bm, align 8, !tbaa !105
  store ptr %.sroa.13.7, ptr %i.bn, align 8, !tbaa !154
  store ptr %.sroa.26.7, ptr %i.bo, align 8, !tbaa !155
  %.not.i.i.i.i.i155 = icmp eq ptr %i.nx, null
  br i1 %.not.i.i.i.i.i155, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.cs

bb.cs:                                            ; preds = %_ZL27parse_comma_pixel_type_listPc.exit
  call void @_ZdlPv(ptr noundef nonnull %i.nx) #37
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZL27parse_comma_pixel_type_listPc.exit, %bb.cs, %bb.be
  %i.ny = load i32, ptr %i.ce, align 1
  %i.nz = xor i32 %i.ny, 1701996660
  %i.oa = getelementptr i8, ptr %i.ce, i64 4
  %i.ob = load i16, ptr %i.oa, align 1
  %i.oc = zext i16 %i.ob to i32
  %i.od = xor i32 %i.oc, 25697
  %i.oe = or i32 %i.nz, %i.od
  %i.of = icmp ne i32 %i.oe, 0
  %i.og = zext i1 %i.of to i32
  %i.oh = icmp eq i32 %i.og, 0
  br i1 %i.oh, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.oi = call i64 @__isoc23_strtol(ptr noundef nonnull %i.cj, ptr noundef null, i32 noundef 10) #20, !inline_history !664
  %i.oj = trunc i64 %i.oi to i32
  store i32 %i.oj, ptr %i.bp, align 8, !tbaa !51
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ok = load i32, ptr %i.ce, align 1
  %i.ol = xor i32 %i.ok, 1752458605
  %i.om = getelementptr i8, ptr %i.ce, i64 4
  %i.on = load i16, ptr %i.om, align 1
  %i.oo = zext i16 %i.on to i32
  %i.op = xor i32 %i.oo, 25711
  %i.oq = or i32 %i.ol, %i.op
  %i.or = icmp ne i32 %i.oq, 0
  %i.os = zext i1 %i.or to i32
  %i.ot = icmp eq i32 %i.os, 0
  br i1 %i.ot, label %bb.cv, label %bb.df

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  store ptr %i.bq, ptr %10, align 8, !tbaa !420
  %i.ou = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cj) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.ou, ptr %i.a, align 8, !tbaa !354
  %i.ov = icmp ugt i64 %i.ou, 15
  br i1 %i.ov, label %.noexc.i158, label %._crit_edge.i.i157

.noexc.i158:                                      ; preds = %bb.cv
  %i.ow = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc159 unwind label %bb.de ; 2 uses

.noexc159:                                        ; preds = %.noexc.i158
  store ptr %i.ow, ptr %10, align 8, !tbaa !138
  %i.ox = load i64, ptr %i.a, align 8, !tbaa !354
  store i64 %i.ox, ptr %i.bq, align 8, !tbaa !38
  br label %._crit_edge.i.i157

._crit_edge.i.i157:                               ; preds = %.noexc159, %bb.cv
  %i.oy = phi ptr [ %i.ow, %.noexc159 ], [ %i.bq, %bb.cv ] ; 2 uses
  switch i64 %i.ou, label %bb.cx [
    i64 1, label %bb.cw
    i64 0, label %bb.cy
  ]

bb.cw:                                            ; preds = %._crit_edge.i.i157
  %i.oz = load i8, ptr %i.cj, align 1, !tbaa !38
  store i8 %i.oz, ptr %i.oy, align 1, !tbaa !38
  br label %bb.cy

bb.cx:                                            ; preds = %._crit_edge.i.i157
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.oy, ptr nonnull align 1 %i.cj, i64 %i.ou, i1 false)
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw, %._crit_edge.i.i157
  %i.pa = load i64, ptr %i.a, align 8, !tbaa !354 ; 2 uses
  store i64 %i.pa, ptr %i.br, align 8, !tbaa !153
  %i.pb = load ptr, ptr %10, align 8, !tbaa !138
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.pa
  store i8 0, ptr %i.pc, align 1, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.pd = load ptr, ptr %6, align 8, !tbaa !138   ; 6 uses
  %i.pe = icmp eq ptr %i.pd, %i.aq
  %i.pf = load ptr, ptr %10, align 8, !tbaa !138  ; 5 uses
  %i.pg = icmp eq ptr %i.pf, %i.bq                ; 2 uses
  br i1 %i.pe, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.cy
  br i1 %i.pg, label %bb.cz, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.cy
  br i1 %i.pg, label %bb.cz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.cz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ph = load i64, ptr %i.br, align 8, !tbaa !153 ; 3 uses
  %i.pi = icmp ult i64 %i.ph, 16
  call void @llvm.assume(i1 %i.pi)
  switch i64 %i.ph, label %bb.db [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.da
  ]

bb.da:                                            ; preds = %bb.cz
  %i.pj = load i8, ptr %i.pf, align 1, !tbaa !38
  store i8 %i.pj, ptr %i.pd, align 1, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.db:                                            ; preds = %bb.cz
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pd, ptr align 1 %i.pf, i64 %i.ph, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.db, %bb.da, %bb.cz
  %i.pk = load i64, ptr %i.br, align 8, !tbaa !153 ; 2 uses
  store i64 %i.pk, ptr %i.ar, align 8, !tbaa !153
  %i.pl = load ptr, ptr %6, align 8, !tbaa !138
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 %i.pk
  store i8 0, ptr %i.pm, align 1, !tbaa !38
  %.pre.i162 = load ptr, ptr %10, align 8, !tbaa !138
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.pf, ptr %6, align 8, !tbaa !138
  %i.pn = load <2 x i64>, ptr %i.br, align 8, !tbaa !38
  store <2 x i64> %i.pn, ptr %i.ar, align 8, !tbaa !38
  br label %bb.dd

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.po = load i64, ptr %i.aq, align 8, !tbaa !38
  store ptr %i.pf, ptr %6, align 8, !tbaa !138
  %i.pp = load <2 x i64>, ptr %i.br, align 8, !tbaa !38
  store <2 x i64> %i.pp, ptr %i.ar, align 8, !tbaa !38
  %.not.i161 = icmp eq ptr %i.pd, null
  br i1 %.not.i161, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.pd, ptr %10, align 8, !tbaa !138
  store i64 %i.po, ptr %i.bq, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.dd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.bq, ptr %10, align 8, !tbaa !138
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.dc, %bb.dd
  %i.pq = phi ptr [ %.pre.i162, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.pd, %bb.dc ], [ %i.bq, %bb.dd ]
  store i64 0, ptr %i.br, align 8, !tbaa !153
  store i8 0, ptr %i.pq, align 1, !tbaa !38
  %i.pr = load ptr, ptr %10, align 8, !tbaa !138  ; 2 uses
  %i.ps = icmp eq ptr %i.pr, %i.bq
  br i1 %i.ps, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef %i.pr) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.df

bb.de:                                            ; preds = %.noexc.i158
  %i.pt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %.body153

bb.df:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.cu
  %i.pu = load i32, ptr %i.ce, align 1
  %i.pv = icmp ne i32 %i.pu, 1701869940
  %i.pw = zext i1 %i.pv to i32
  %i.px = icmp eq i32 %i.pw, 0
  br i1 %i.px, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.py = call i64 @__isoc23_strtol(ptr noundef nonnull %i.cj, ptr noundef null, i32 noundef 10) #20, !inline_history !664
  %i.pz = trunc i64 %i.py to i32
  store i32 %i.pz, ptr %i.at, align 4, !tbaa !331
  br label %bb.dh

bb.dh:                                            ; preds = %bb.df, %bb.dg, %bb.r
  %indvars.iv.next301 = add nuw nsw i64 %indvars.iv300, 1 ; 2 uses
  %exitcond304.not = icmp eq i64 %indvars.iv.next301, %wide.trip.count
  br i1 %exitcond304.not, label %._crit_edge, label %bb.q, !llvm.loop !665

bb.di:                                            ; preds = %._crit_edge
  %i.qa = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.qb = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !133
  %i.qd = load ptr, ptr %i.qa, align 8, !tbaa !132
  %i.qe = ptrtoint ptr %i.qc to i64
  %i.qf = ptrtoint ptr %i.qd to i64
  %i.qg = sub i64 %i.qe, %i.qf
  %i.qh = sdiv exact i64 %i.qg, 24                ; 2 uses
  %.not90 = icmp eq i64 %i.qh, %i.ca
  br i1 %.not90, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
end_hunk_0
