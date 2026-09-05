Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmGeneratorExpressionNode?download=true
inline.NumInlined: 11480
inline.NumDeleted: 3219
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNK19CompileFeaturesNode8EvaluateERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEPN2cm5GenEx10EvaluationEPK26GeneratorExpressionContentP31cmGeneratorExpressionDAGChecker:bb.a
  %i.eg = icmp eq ptr %i.ef, %i.ay
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %.critedge
  %i.eh = load i64, ptr %i.ay, align 8, !tbaa !73
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  %i.ej = load ptr, ptr %13, align 8, !tbaa !82   ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.aw
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125
  %i.el = load i64, ptr %i.aw, align 8, !tbaa !73
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.em) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0185.0218, i64 32 ; 2 uses
  %.not195 = icmp eq ptr %i.en, %i.av
  br i1 %.not195, label %.critedge95, label %bb.i

bb.ai:                                            ; preds = %_ZN6cmList6assignE7cmValueNS_14ExpandElementsENS_13EmptyElementsE.exit.thread190, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.eo, ptr %0, align 8, !tbaa !81
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ep, align 8, !tbaa !83
  store i8 0, ptr %i.eo, align 8, !tbaa !73
  %i.eq = load ptr, ptr %14, align 8, !tbaa !82   ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.ay
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %bb.ai
  %i.es = load i64, ptr %i.ay, align 8, !tbaa !73
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.et) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  %i.eu = load ptr, ptr %13, align 8, !tbaa !82   ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.aw
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131
  %i.ew = load i64, ptr %i.aw, align 8, !tbaa !73
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ex) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.bq

bb.aj:                                            ; preds = %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, %bb.o
  %.pn79.pn = phi { ptr, i32 } [ %.pn75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112 ], [ %.pn77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120 ], [ %i.bj, %bb.o ], [ %i.dl, %bb.ad ]
  %i.ey = load ptr, ptr %14, align 8, !tbaa !82   ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.ay
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %bb.aj
  %i.fa = load i64, ptr %i.ay, align 8, !tbaa !73
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fb) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  %i.fc = load ptr, ptr %13, align 8, !tbaa !82   ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.aw
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137
  %i.fe = load i64, ptr %i.aw, align 8, !tbaa !73
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.ff) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %.split

.critedge95:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, %bb.h
  %.not82 = icmp eq ptr %5, null
  br i1 %.not82, label %.thread, label %bb.ak

bb.ak:                                            ; preds = %.critedge95
  %i.fg = invoke noundef zeroext i1 @_ZNK31cmGeneratorExpressionDAGChecker23EvaluatingLinkLibrariesEPK17cmGeneratorTargetNS_8ForGenexE(ptr noundef nonnull align 8 dereferenceable(140) %5, ptr noundef null, i32 noundef 0)
          to label %bb.al unwind label %bb.bc

bb.al:                                            ; preds = %bb.ak
  %i.fh = load ptr, ptr %i.an, align 8, !tbaa !324 ; 3 uses
  %.not196231 = icmp eq ptr %i.fh, %i.al
  br i1 %.not196231, label %.critedge97, label %.lr.ph233

.thread:                                          ; preds = %.critedge95
  %i.fi = load ptr, ptr %i.an, align 8, !tbaa !324 ; 2 uses
  %.not196231309 = icmp eq ptr %i.fi, %i.al
  br i1 %.not196231309, label %.critedge97, label %.lr.ph233.thread

.lr.ph233.thread:                                 ; preds = %.thread
  %.sroa.4.0..sroa_idx.i.i310 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.fk = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.4.0..sroa_idx.i10.i311 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.fl = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.fm = getelementptr inbounds nuw i8, ptr %8, i64 48
  %.sroa.4.0..sroa_idx.i18.i312 = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.fn = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.fo = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.lr.ph233.split.preheader

.lr.ph233:                                        ; preds = %bb.al
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %.sroa.4.0..sroa_idx.i10.i = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %.sroa.4.0..sroa_idx.i18.i = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %3, i64 288
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 304
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 296 ; 3 uses
  br i1 %i.fg, label %.lr.ph233.split.us, label %.lr.ph233.split.preheader

.lr.ph233.split.preheader:                        ; preds = %.lr.ph233.thread, %.lr.ph233
  %i.ga = phi ptr [ %i.fp, %.lr.ph233.thread ], [ %i.fw, %.lr.ph233 ] ; 2 uses
  %i.gb = phi ptr [ %i.fo, %.lr.ph233.thread ], [ %i.fv, %.lr.ph233 ] ; 3 uses
  %i.gc = phi ptr [ %i.fn, %.lr.ph233.thread ], [ %i.fu, %.lr.ph233 ]
  %.sroa.4.0..sroa_idx.i18.i315 = phi ptr [ %.sroa.4.0..sroa_idx.i18.i312, %.lr.ph233.thread ], [ %.sroa.4.0..sroa_idx.i18.i, %.lr.ph233 ]
  %i.gd = phi ptr [ %i.fm, %.lr.ph233.thread ], [ %i.ft, %.lr.ph233 ]
  %i.ge = phi ptr [ %i.fl, %.lr.ph233.thread ], [ %i.fs, %.lr.ph233 ]
  %.sroa.4.0..sroa_idx.i10.i314 = phi ptr [ %.sroa.4.0..sroa_idx.i10.i311, %.lr.ph233.thread ], [ %.sroa.4.0..sroa_idx.i10.i, %.lr.ph233 ]
  %i.gf = phi ptr [ %i.fk, %.lr.ph233.thread ], [ %i.fr, %.lr.ph233 ]
  %i.gg = phi ptr [ %i.fj, %.lr.ph233.thread ], [ %i.fq, %.lr.ph233 ]
  %.sroa.4.0..sroa_idx.i.i313 = phi ptr [ %.sroa.4.0..sroa_idx.i.i310, %.lr.ph233.thread ], [ %.sroa.4.0..sroa_idx.i.i, %.lr.ph233 ]
  %i.gh = phi ptr [ %i.fi, %.lr.ph233.thread ], [ %i.fh, %.lr.ph233 ]
  br label %.lr.ph233.split

.lr.ph233.split.us:                               ; preds = %.lr.ph233, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.us
  %.sroa.0178.0232.us = phi ptr [ %18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.us ], [ %i.fh, %.lr.ph233 ] ; 5 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.0178.0232.us, i64 32 ; 5 uses
  %i.gj = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE6cmListSt4lessIS5_ESaISt4pairIKS5_S6_EEEixERSA_(ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK19CompileFeaturesNode8EvaluateERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEPN2cm5GenEx10EvaluationEPK26GeneratorExpressionContentP31cmGeneratorExpressionDAGCheckerE17availableFeaturesB5cxx11, ptr noundef nonnull align 8 dereferenceable(32) %i.gi)
          to label %bb.am unwind label %.split235.us ; 2 uses

bb.am:                                            ; preds = %.lr.ph233.split.us
  %i.gk = load ptr, ptr %3, align 8, !tbaa !70
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 112
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !392
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28, !noalias !3271
  store i64 6, ptr %8, align 8, !tbaa !84, !alias.scope !3272, !noalias !3271
  store ptr @.str.499, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !351, !alias.scope !3272, !noalias !3271
  store ptr null, ptr %i.fq, align 8, !tbaa !353, !alias.scope !3272, !noalias !3271
  %i.gn = load ptr, ptr %i.gi, align 8, !tbaa !82, !noalias !3271
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.0178.0232.us, i64 40
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !83, !noalias !3271
  store i64 %i.gp, ptr %i.fr, align 8, !tbaa !84, !alias.scope !3273, !noalias !3271
  store ptr %i.gn, ptr %.sroa.4.0..sroa_idx.i10.i, align 8, !tbaa !351, !alias.scope !3273, !noalias !3271
  store ptr null, ptr %i.fs, align 8, !tbaa !353, !alias.scope !3273, !noalias !3271
  store i64 17, ptr %i.ft, align 8, !tbaa !84, !alias.scope !3274, !noalias !3271
  store ptr @.str.632, ptr %.sroa.4.0..sroa_idx.i18.i, align 8, !tbaa !351, !alias.scope !3274, !noalias !3271
  store ptr null, ptr %i.fu, align 8, !tbaa !353, !alias.scope !3274, !noalias !3271
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr nonnull %8, i64 3)
          to label %bb.an unwind label %.split238.us

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28, !noalias !3271
  %i.gq = invoke ptr @_ZNK10cmMakefile13GetDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2952) %i.gm, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.ao unwind label %.split241.us ; 3 uses

bb.ao:                                            ; preds = %bb.an
  %i.gr = load ptr, ptr %17, align 8, !tbaa !82   ; 2 uses
  %i.gs = icmp eq ptr %i.gr, %i.fv
  br i1 %i.gs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142.us: ; preds = %bb.ao
  %i.gt = load i64, ptr %i.fv, align 8, !tbaa !73
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gu) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144.us: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142.us
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0178.0232.us, i64 64
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !335 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0178.0232.us, i64 72
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !335 ; 2 uses
  %.not197219.us = icmp eq ptr %i.gw, %i.gy
  br i1 %.not197219.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.us, label %.lr.ph221.us

.lr.ph221.us:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144.us
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gj, i64 8 ; 2 uses
  %.not199.us = icmp eq ptr %i.gq, null
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.bb, %.lr.ph221.us
  %.sroa.0172.0220.us.us = phi ptr [ %i.gw, %.lr.ph221.us ], [ %i.hx, %bb.bb ] ; 3 uses
  %i.hb = load ptr, ptr %i.gj, align 8, !tbaa !335
  %i.hc = load ptr, ptr %i.gz, align 8, !tbaa !335
  %i.hd = invoke ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr %i.hb, ptr %i.hc, ptr nonnull align 8 dereferenceable(32) %.sroa.0172.0220.us.us)
          to label %bb.aq unwind label %.split.us.split.us

bb.aq:                                            ; preds = %bb.ap
  %i.he = load ptr, ptr %i.gz, align 8, !tbaa !335
  %.not198.us.us = icmp eq ptr %i.hd, %i.he
  br i1 %.not198.us.us, label %._crit_edge.i.i149, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  br i1 %.not199.us, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hf = load i64, ptr %i.ha, align 8, !tbaa !83
  %i.hg = icmp eq i64 %i.hf, 0
  br i1 %i.hg, label %bb.bb, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.hh = load ptr, ptr %i.c, align 8, !tbaa !587
  %i.hi = invoke noundef zeroext i1 @_ZNK23cmStandardLevelResolver21HaveStandardAvailableEPK17cmGeneratorTargetRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %i.hh, ptr noundef nonnull align 8 dereferenceable(32) %i.gi, ptr noundef nonnull align 8 dereferenceable(32) %i.fw, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0172.0220.us.us)
          to label %bb.au unwind label %.split.us.split.us

bb.au:                                            ; preds = %bb.at
  br i1 %i.hi, label %bb.bb, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hj = load ptr, ptr %i.c, align 8, !tbaa !587
  %i.hk = invoke ptr @_ZNK17cmGeneratorTarget19GetLanguageStandardERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(3187) %i.hj, ptr noundef nonnull align 8 dereferenceable(32) %i.gi, ptr noundef nonnull align 8 dereferenceable(32) %i.fw)
          to label %bb.aw unwind label %.split223.us.split.us ; 2 uses

bb.aw:                                            ; preds = %bb.av
  %.not200.us.us = icmp eq ptr %i.hk, null
  %spec.select.us.us = select i1 %.not200.us.us, ptr %i.gq, ptr %i.hk ; 2 uses
  %.not.i154.us.us = icmp eq ptr %spec.select.us.us, null
  %spec.select.i155.us.us = select i1 %.not.i154.us.us, ptr @_ZN7cmValue5EmptyB5cxx11E, ptr %spec.select.us.us
  %i.hl = load ptr, ptr %i.fy, align 8, !tbaa !317 ; 2 uses
  %.not10.i.i.i.i.us.us = icmp eq ptr %i.hl, null
  br i1 %.not10.i.i.i.i.us.us, label %.critedge.i.us.us, label %.lr.ph.i.i.i.i.us.us

.lr.ph.i.i.i.i.us.us:                             ; preds = %bb.aw
  %i.hm = load ptr, ptr %i.c, align 8, !tbaa !587 ; 2 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %.lr.ph.i.i.i.i.us.us
  %.012.i.i.i.i.us.us = phi ptr [ %i.hl, %.lr.ph.i.i.i.i.us.us ], [ %.1.i.i.i.i.us.us, %bb.ax ] ; 3 uses
  %.0811.i.i.i.i.us.us = phi ptr [ %i.fz, %.lr.ph.i.i.i.i.us.us ], [ %.19.i.i.i.i.us.us, %bb.ax ]
  %i.hn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.us.us, i64 32
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !587
  %i.hp = icmp ult ptr %i.ho, %i.hm               ; 2 uses
  %.19.i.i.i.i.us.us = select i1 %i.hp, ptr %.0811.i.i.i.i.us.us, ptr %.012.i.i.i.i.us.us ; 6 uses
  %.1.in.v.i.i.i.i.us.us = select i1 %i.hp, i64 24, i64 16
  %.1.in.i.i.i.i.us.us = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.us.us, i64 %.1.in.v.i.i.i.i.us.us
  %.1.i.i.i.i.us.us = load ptr, ptr %.1.in.i.i.i.i.us.us, align 8, !tbaa !318 ; 2 uses
  %.not.i.i.i.i156.us.us = icmp eq ptr %.1.i.i.i.i.us.us, null
  br i1 %.not.i.i.i.i156.us.us, label %_ZNSt3mapIPK17cmGeneratorTargetS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_St4lessIS8_ESaISt4pairIKS8_S8_EEES9_IS2_ESaISB_IKS2_SF_EEE11lower_boundERSH_.exit.i.us.us, label %bb.ax, !llvm.loop !3268

_ZNSt3mapIPK17cmGeneratorTargetS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_St4lessIS8_ESaISt4pairIKS8_S8_EEES9_IS2_ESaISB_IKS2_SF_EEE11lower_boundERSH_.exit.i.us.us: ; preds = %bb.ax
  %i.hq = icmp eq ptr %.19.i.i.i.i.us.us, %i.fz
  br i1 %i.hq, label %.critedge.i.us.us, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt3mapIPK17cmGeneratorTargetS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_St4lessIS8_ESaISt4pairIKS8_S8_EEES9_IS2_ESaISB_IKS2_SF_EEE11lower_boundERSH_.exit.i.us.us
  %i.hr = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.us.us, i64 32
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !600
  %i.ht = icmp ult ptr %i.hm, %i.hs
  br i1 %i.ht, label %.critedge.i.us.us, label %bb.az

.critedge.i.us.us:                                ; preds = %bb.ay, %_ZNSt3mapIPK17cmGeneratorTargetS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_St4lessIS8_ESaISt4pairIKS8_S8_EEES9_IS2_ESaISB_IKS2_SF_EEE11lower_boundERSH_.exit.i.us.us, %bb.aw
  %.08.lcssa.i.i.i11.i.us.us = phi ptr [ %.19.i.i.i.i.us.us, %bb.ay ], [ %.19.i.i.i.i.us.us, %_ZNSt3mapIPK17cmGeneratorTargetS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_St4lessIS8_ESaISt4pairIKS8_S8_EEES9_IS2_ESaISB_IKS2_SF_EEE11lower_boundERSH_.exit.i.us.us ], [ %i.fz, %bb.aw ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store ptr %i.c, ptr %6, align 8, !tbaa !598
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.hu = invoke ptr @_ZNSt8_Rb_treeIPK17cmGeneratorTargetSt4pairIKS2_St3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_St4lessISB_ESaIS3_IKSB_SB_EEEESt10_Select1stISI_ESC_IS2_ESaISI_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESS_IJEEEEESt17_Rb_tree_iteratorISI_ESt23_Rb_tree_const_iteratorISI_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.fx, ptr %.08.lcssa.i.i.i11.i.us.us, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc157.us.us unwind label %.split223.us.split.us

.noexc157.us.us:                                  ; preds = %.critedge.i.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.az

bb.az:                                            ; preds = %.noexc157.us.us, %bb.ay
  %.sroa.06.0.i.us.us = phi ptr [ %i.hu, %.noexc157.us.us ], [ %.19.i.i.i.i.us.us, %bb.ay ]
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.us.us, i64 40
  %i.hw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) %i.hv, ptr noundef nonnull align 8 dereferenceable(32) %i.gi)
          to label %bb.ba unwind label %.split223.us.split.us

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.hw, ptr noundef nonnull align 8 dereferenceable(32) %spec.select.i155.us.us)
          to label %bb.bb unwind label %.split223.us.split.us

bb.bb:                                            ; preds = %bb.ba, %bb.au, %bb.as
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.0172.0220.us.us, i64 32 ; 2 uses
  %.not197.us.us = icmp eq ptr %i.hx, %i.gy
  br i1 %.not197.us.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.us, label %bb.ap

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.us: ; preds = %bb.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144.us
  %18 = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0178.0232.us) #34 ; 2 uses
  %.not196.us = icmp eq ptr %18, %i.al
  br i1 %.not196.us, label %.critedge97, label %.lr.ph233.split.us

.split235.us:                                     ; preds = %.lr.ph233.split.us
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %.split

.split238.us:                                     ; preds = %bb.am
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

.split241.us:                                     ; preds = %bb.an
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

.split.us.split.us:                               ; preds = %bb.at, %bb.ap
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %.split

.split223.us.split.us:                            ; preds = %bb.ba, %bb.az, %.critedge.i.us.us, %bb.av
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %.split

bb.bc:                                            ; preds = %bb.ak
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %.split

.lr.ph233.split:                                  ; preds = %.lr.ph233.split.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %.sroa.0178.0232 = phi ptr [ %i.kd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ], [ %i.gh, %.lr.ph233.split.preheader ] ; 5 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.0178.0232, i64 32 ; 4 uses
  %i.if = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE6cmListSt4lessIS5_ESaISt4pairIKS5_S6_EEEixERSA_(ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK19CompileFeaturesNode8EvaluateERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEPN2cm5GenEx10EvaluationEPK26GeneratorExpressionContentP31cmGeneratorExpressionDAGCheckerE17availableFeaturesB5cxx11, ptr noundef nonnull align 8 dereferenceable(32) %i.ie)
          to label %bb.bd unwind label %.split235 ; 3 uses

bb.bd:                                            ; preds = %.lr.ph233.split
  %i.ig = load ptr, ptr %3, align 8, !tbaa !70
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 112
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !392
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28, !noalias !3271
  store i64 6, ptr %8, align 8, !tbaa !84, !alias.scope !3272, !noalias !3271
  store ptr @.str.499, ptr %.sroa.4.0..sroa_idx.i.i313, align 8, !tbaa !351, !alias.scope !3272, !noalias !3271
  store ptr null, ptr %i.gg, align 8, !tbaa !353, !alias.scope !3272, !noalias !3271
  %i.ij = load ptr, ptr %i.ie, align 8, !tbaa !82, !noalias !3271
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0178.0232, i64 40
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !83, !noalias !3271
  store i64 %i.il, ptr %i.gf, align 8, !tbaa !84, !alias.scope !3273, !noalias !3271
  store ptr %i.ij, ptr %.sroa.4.0..sroa_idx.i10.i314, align 8, !tbaa !351, !alias.scope !3273, !noalias !3271
  store ptr null, ptr %i.ge, align 8, !tbaa !353, !alias.scope !3273, !noalias !3271
  store i64 17, ptr %i.gd, align 8, !tbaa !84, !alias.scope !3274, !noalias !3271
  store ptr @.str.632, ptr %.sroa.4.0..sroa_idx.i18.i315, align 8, !tbaa !351, !alias.scope !3274, !noalias !3271
  store ptr null, ptr %i.gc, align 8, !tbaa !353, !alias.scope !3274, !noalias !3271
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr nonnull %8, i64 3)
          to label %bb.be unwind label %.split238

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28, !noalias !3271
  %i.im = invoke ptr @_ZNK10cmMakefile13GetDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2952) %i.ii, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.bf unwind label %.split241

bb.bf:                                            ; preds = %bb.be
  %.fr = freeze ptr %i.im                         ; 2 uses
  %i.in = load ptr, ptr %17, align 8, !tbaa !82   ; 2 uses
  %i.io = icmp eq ptr %i.in, %i.gb
  br i1 %i.io, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %bb.bf
  %i.ip = load i64, ptr %i.gb, align 8, !tbaa !73
  %i.iq = add i64 %i.ip, 1
  call void @_ZdlPvm(ptr noundef %i.in, i64 noundef %i.iq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.0178.0232, i64 64
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !335 ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.0178.0232, i64 72
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !335 ; 3 uses
  %.not197219 = icmp eq ptr %i.is, %i.iu
  br i1 %.not197219, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, label %.lr.ph221

.lr.ph221:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144
  %i.iv = getelementptr inbounds nuw i8, ptr %i.if, i64 8 ; 4 uses
  %.not199 = icmp eq ptr %.fr, null
  %i.iw = getelementptr inbounds nuw i8, ptr %.fr, i64 8
  br i1 %.not199, label %.lr.ph221.split.split.us, label %.lr.ph221.split.split

.lr.ph221.split.split.us:                         ; preds = %.lr.ph221, %bb.bj
  %.sroa.0172.0220.us225 = phi ptr [ %i.jd, %bb.bj ], [ %i.is, %.lr.ph221 ] ; 3 uses
  %i.ix = load ptr, ptr %i.if, align 8, !tbaa !335
  %i.iy = load ptr, ptr %i.iv, align 8, !tbaa !335
  %i.iz = invoke ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr %i.ix, ptr %i.iy, ptr nonnull align 8 dereferenceable(32) %.sroa.0172.0220.us225)
          to label %bb.bg unwind label %.split.split.us

bb.bg:                                            ; preds = %.lr.ph221.split.split.us
  %i.ja = load ptr, ptr %i.iv, align 8, !tbaa !335
  %.not198.us226 = icmp eq ptr %i.iz, %i.ja
  br i1 %.not198.us226, label %._crit_edge.i.i149, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jb = load ptr, ptr %i.c, align 8, !tbaa !587
  %i.jc = invoke noundef zeroext i1 @_ZNK23cmStandardLevelResolver21HaveStandardAvailableEPK17cmGeneratorTargetRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %i.jb, ptr noundef nonnull align 8 dereferenceable(32) %i.ie, ptr noundef nonnull align 8 dereferenceable(32) %i.ga, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0172.0220.us225)
          to label %bb.bi unwind label %.split.split.us

bb.bi:                                            ; preds = %bb.bh
  br i1 %i.jc, label %bb.bj, label %._crit_edge.i.i159

bb.bj:                                            ; preds = %bb.bi
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.0172.0220.us225, i64 32 ; 2 uses
  %.not197.us227 = icmp eq ptr %i.jd, %i.iu
  br i1 %.not197.us227, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, label %.lr.ph221.split.split.us

.split.split.us:                                  ; preds = %bb.bh, %.lr.ph221.split.split.us
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %.split

.split235:                                        ; preds = %.lr.ph233.split
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %.split

.split238:                                        ; preds = %bb.bd
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

.split241:                                        ; preds = %bb.be
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bk:                                            ; preds = %.split241.us, %.split241
  %i.ji = phi ptr [ %i.gb, %.split241 ], [ %i.fv, %.split241.us ] ; 2 uses
  %.us-phi242 = phi { ptr, i32 } [ %i.jh, %.split241 ], [ %i.ia, %.split241.us ] ; 2 uses
  %i.jj = load ptr, ptr %17, align 8, !tbaa !82   ; 2 uses
  %i.jk = icmp eq ptr %i.jj, %i.ji
  br i1 %i.jk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145: ; preds = %bb.bk
  %i.jl = load i64, ptr %i.ji, align 8, !tbaa !73
  %i.jm = add i64 %i.jl, 1
  call void @_ZdlPvm(ptr noundef %i.jj, i64 noundef %i.jm) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147: ; preds = %bb.bk, %.split238, %.split238.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145
  %.pn83 = phi { ptr, i32 } [ %.us-phi242, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145 ], [ %i.hz, %.split238.us ], [ %i.jg, %.split238 ], [ %.us-phi242, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %.split

.lr.ph221.split.split:                            ; preds = %.lr.ph221, %bb.bp
  %.sroa.0172.0220 = phi ptr [ %i.kc, %bb.bp ], [ %i.is, %.lr.ph221 ] ; 3 uses
  %i.jn = load ptr, ptr %i.if, align 8, !tbaa !335
  %i.jo = load ptr, ptr %i.iv, align 8, !tbaa !335
  %i.jp = invoke ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr %i.jn, ptr %i.jo, ptr nonnull align 8 dereferenceable(32) %.sroa.0172.0220)
          to label %bb.bl unwind label %.split.split

bb.bl:                                            ; preds = %.lr.ph221.split.split
  %i.jq = load ptr, ptr %i.iv, align 8, !tbaa !335
  %.not198 = icmp eq ptr %i.jp, %i.jq
  br i1 %.not198, label %._crit_edge.i.i149, label %bb.bm

._crit_edge.i.i149:                               ; preds = %bb.aq, %bb.bl, %bb.bg
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.jr, ptr %0, align 8, !tbaa !81
  store i8 48, ptr %i.jr, align 8, !tbaa !73
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.js, align 8, !tbaa !83
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.jt, align 1, !tbaa !73
  br label %bb.bq

.split.split:                                     ; preds = %.lr.ph221.split.split, %bb.bn
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %.split

bb.bm:                                            ; preds = %bb.bl
  %i.jv = load i64, ptr %i.iw, align 8, !tbaa !83
  %i.jw = icmp eq i64 %i.jv, 0
  br i1 %i.jw, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jx = load ptr, ptr %i.c, align 8, !tbaa !587
  %i.jy = invoke noundef zeroext i1 @_ZNK23cmStandardLevelResolver21HaveStandardAvailableEPK17cmGeneratorTargetRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %i.jx, ptr noundef nonnull align 8 dereferenceable(32) %i.ie, ptr noundef nonnull align 8 dereferenceable(32) %i.ga, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0172.0220)
          to label %bb.bo unwind label %.split.split

bb.bo:                                            ; preds = %bb.bn
  br i1 %i.jy, label %bb.bp, label %._crit_edge.i.i159

._crit_edge.i.i159:                               ; preds = %bb.bo, %bb.bi
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.jz, ptr %0, align 8, !tbaa !81
  store i8 48, ptr %i.jz, align 8, !tbaa !73
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.ka, align 8, !tbaa !83
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.kb, align 1, !tbaa !73
end_hunk_0
