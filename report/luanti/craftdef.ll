inline.NumInlined: 3083
inline.NumDeleted: 1277
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK24CraftDefinitionShapeless5checkERK10CraftInputP8IGameDef:bb.a
  %i.eu = phi ptr [ %i.dq, %bb.x ], [ %i.ee, %"_ZZNK24CraftDefinitionShapeless5checkERK10CraftInputP8IGameDefENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i" ]
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.et, ptr %i.eu, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.017.i)
          to label %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSERKS6_.exit.i unwind label %bb.ac

_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSERKS6_.exit.i: ; preds = %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i4.i, %._crit_edge.i.i.i.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.09.017.i, i64 32 ; 2 uses
  %.not.i67 = icmp eq ptr %i.ev, %i.cz
  br i1 %.not.i67, label %.loopexit185.loopexit, label %bb.w, !llvm.loop !189

.loopexit185.loopexit:                            ; preds = %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSERKS6_.exit.i
  %.pre218 = load ptr, ptr %11, align 8, !tbaa !125
  %.pre220 = load ptr, ptr %i.dc, align 8, !tbaa !125
  br label %.loopexit185

.loopexit185:                                     ; preds = %.loopexit185.loopexit, %.loopexit191
  %i.ew = phi ptr [ %.pre220, %.loopexit185.loopexit ], [ null, %.loopexit191 ]
  %i.ex = phi ptr [ %.pre218, %.loopexit185.loopexit ], [ null, %.loopexit191 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.ey = load ptr, ptr %8, align 8, !tbaa !125
  %i.ez = load ptr, ptr %i.o, align 8, !tbaa !125
  %i.fa = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.fb = invoke ptr @_ZSt16__set_differenceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_St20back_insert_iteratorISB_ENS0_5__ops15_Iter_less_iterEET1_T_SI_T0_SJ_SH_T2_(ptr %i.ey, ptr %i.ez, ptr %i.ex, ptr %i.ew, ptr nonnull %13)
          to label %_ZSt14set_differenceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_St20back_insert_iteratorISB_EET1_T_SG_T0_SH_SF_.exit unwind label %bb.ad ; 0 uses

_ZSt14set_differenceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_St20back_insert_iteratorISB_EET1_T_SG_T0_SH_SF_.exit: ; preds = %.loopexit185
  %i.fc = load ptr, ptr %i.o, align 8, !tbaa !122
  %i.fd = load ptr, ptr %8, align 8, !tbaa !123
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = sub i64 %i.fe, %i.ff
  %i.fh = ashr exact i64 %i.fg, 5
  %i.fi = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !122
  %i.fk = load ptr, ptr %13, align 8, !tbaa !123
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = ashr exact i64 %i.fn, 5
  %i.fp = sub nsw i64 %i.fh, %i.fo
  %i.fq = load ptr, ptr %i.fa, align 8, !tbaa !122
  %i.fr = load ptr, ptr %11, align 8, !tbaa !123
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = sub i64 %i.fs, %i.ft
  %i.fv = ashr exact i64 %i.fu, 5
  %.not44 = icmp eq i64 %i.fp, %i.fv
  br i1 %.not44, label %bb.ae, label %_ZN11StreamProxylsEPFRSoS0_E.exit

bb.ac:                                            ; preds = %.invoke, %.noexc.i.i.i5.i, %.noexc.i.i.i.i
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.ad:                                            ; preds = %.noexc168, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc166, %bb.an, %bb.al, %bb.aj, %.noexc75, %_ZTW11errorstream.exit, %.loopexit185
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.ae:                                            ; preds = %_ZSt14set_differenceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_St20back_insert_iteratorISB_EET1_T_SG_T0_SH_SF_.exit
  %i.fy = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !122 ; 2 uses
  %i.ga = load ptr, ptr %12, align 8, !tbaa !123  ; 2 uses
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = ptrtoint ptr %i.ga to i64
  %i.gd = sub i64 %i.gb, %i.gc
  %i.ge = ashr exact i64 %i.gd, 5                 ; 5 uses
  %i.gf = icmp ugt i64 %i.ge, 30000
  br i1 %i.gf, label %bb.af, label %bb.ao

bb.af:                                            ; preds = %bb.ae
  %.not.i74 = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i74, label %_ZTW11errorstream.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit

_ZTW11errorstream.exit:                           ; preds = %bb.af, %bb.ag
  %i.gg = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !190, !nonnull !131, !align !200 ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !15
  %i.gj = load ptr, ptr %i.gi, align 8
  %i.gk = invoke noundef zeroext i1 %i.gj(ptr noundef nonnull align 8 dereferenceable(8) %i.gh)
          to label %.noexc75 unwind label %bb.ad, !inline_history !201

.noexc75:                                         ; preds = %_ZTW11errorstream.exit
  %.v.i = select i1 %i.gk, i64 976, i64 984
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gg, i64 %.v.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.18, ptr %i.b, align 8, !tbaa !202
  %i.gm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gl, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.ah unwind label %bb.ad     ; 0 uses

bb.ah:                                            ; preds = %.noexc75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.gn = load ptr, ptr %i.gl, align 8, !tbaa !203 ; 5 uses
  %.not.i77 = icmp eq ptr %i.gn, null
  br i1 %.not.i77, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !15
  %i.gp = getelementptr i8, ptr %i.go, i64 -24
  %i.gq = load i64, ptr %i.gp, align 8            ; 2 uses
  %i.gr = getelementptr inbounds i8, ptr %i.gn, i64 %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 32
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !204
  %i.gu = icmp eq i32 %i.gt, 0
  br i1 %i.gu, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.gn)
          to label %.noexc78 unwind label %bb.ad

.noexc78:                                         ; preds = %bb.aj
  %.pre.i = load ptr, ptr %i.gl, align 8, !tbaa !203 ; 2 uses
  %.pre223 = load ptr, ptr %.pre.i, align 8, !tbaa !15
  %.phi.trans.insert224 = getelementptr i8, ptr %.pre223, i64 -24
  %.pre225 = load i64, ptr %.phi.trans.insert224, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %.noexc78, %bb.ai
  %i.gv = phi i64 [ %.pre225, %.noexc78 ], [ %i.gq, %bb.ai ]
  %i.gw = phi ptr [ %.pre.i, %.noexc78 ], [ %i.gn, %bb.ai ] ; 2 uses
  %i.gx = getelementptr inbounds i8, ptr %i.gw, i64 %i.gv
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 240
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !205 ; 6 uses
  %.not.i.i.i164 = icmp eq ptr %i.gz, null
  br i1 %.not.i.i.i164, label %bb.al, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZSt16__throw_bad_castv() #26
          to label %.noexc165 unwind label %bb.ad

.noexc165:                                        ; preds = %bb.al
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.ak
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 56
  %i.hb = load i8, ptr %i.ha, align 8, !tbaa !211
  %.not.i1.i.i = icmp eq i8 %i.hb, 0
  br i1 %.not.i1.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 67
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !14
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.an:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.gz)
          to label %.noexc166 unwind label %bb.ad

.noexc166:                                        ; preds = %bb.an
  %i.he = load ptr, ptr %i.gz, align 8, !tbaa !15
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 48
  %i.hg = load ptr, ptr %i.hf, align 8
  %i.hh = invoke noundef signext i8 %i.hg(ptr noundef nonnull align 8 dereferenceable(570) %i.gz, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.ad, !inline_history !217

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc166, %bb.am
  %.0.i.i.i = phi i8 [ %i.hd, %bb.am ], [ %i.hh, %.noexc166 ]
  %i.hi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.gw, i8 noundef signext %.0.i.i.i)
          to label %.noexc168 unwind label %bb.ad

.noexc168:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.hj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hi)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit unwind label %bb.ad ; 0 uses

bb.ao:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.hk = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %.not183 = icmp eq ptr %i.fz, %i.ga
  br i1 %.not183, label %._crit_edge208, label %_ZNKSt6vectorIS_ItSaItEESaIS1_EE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIS_ItSaItEESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ao
  %i.hl = mul nuw nsw i64 %i.ge, 24               ; 2 uses
  %i.hm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hl) #27
          to label %.lr.ph207.preheader unwind label %bb.cb ; 3 uses

.lr.ph207.preheader:                              ; preds = %_ZNKSt6vectorIS_ItSaItEESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.hn = getelementptr inbounds nuw i8, ptr %14, i64 16
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.hm, i8 0, i64 %i.hl, i1 false)
  store ptr %i.hm, ptr %14, align 8, !tbaa !218
  %i.ho = getelementptr inbounds nuw [24 x i8], ptr %i.hm, i64 %i.ge ; 2 uses
  store ptr %i.ho, ptr %i.hk, align 8, !tbaa !221
  store ptr %i.ho, ptr %i.hn, align 8, !tbaa !222
  br label %.lr.ph207

._crit_edge208.loopexit:                          ; preds = %bb.cc
  %.pre221 = load ptr, ptr %i.hk, align 8, !tbaa !221
  %.pre222 = load ptr, ptr %14, align 8, !tbaa !218
  %i.hp = ptrtoint ptr %.pre221 to i64
  %i.hq = ptrtoint ptr %.pre222 to i64
  %i.hr = sub i64 %i.hp, %i.hq
  %i.hs = sdiv exact i64 %i.hr, 24
  br label %._crit_edge208

._crit_edge208:                                   ; preds = %bb.ao, %._crit_edge208.loopexit
  %i.ht = phi i64 [ %i.hs, %._crit_edge208.loopexit ], [ 0, %bb.ao ] ; 4 uses
  %i.hu = trunc i64 %i.ht to i16                  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i16 %i.hu, ptr %i.a, align 2, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !223)
  %i.hv = shl nsw i64 %i.ht, 1
  %i.hw = and i64 %i.hv, 131070
  %i.hx = add nuw nsw i64 %i.hw, 2                ; 8 uses
  %i.hy = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hx) #27
          to label %.noexc92 unwind label %bb.cb  ; 2 uses

.noexc92:                                         ; preds = %._crit_edge208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.hy, i8 0, i64 %i.hx, i1 false), !noalias !223
  store ptr %i.hy, ptr %3, align 8, !tbaa !226, !alias.scope !223
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %.sroa.gep.i = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 5 uses
  %.sroa.gep70.i = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %.sroa.gep73.i = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 6 uses
  %i.hz = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hx) #27
          to label %bb.ap unwind label %bb.bu     ; 3 uses

bb.ap:                                            ; preds = %.noexc92
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.hz, i8 0, i64 %i.hx, i1 false), !noalias !227
  store ptr %i.hz, ptr %4, align 8, !tbaa !226, !alias.scope !227
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %i.ia = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hx) #27
          to label %bb.aq unwind label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit43.thread.i ; 2 uses

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.ia, i8 0, i64 %i.hx, i1 false), !noalias !230
  store ptr %i.ia, ptr %5, align 8, !tbaa !226, !alias.scope !230
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %6, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseItSaItEE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %6, i64 noundef 0)
          to label %iter.check unwind label %bb.bv

iter.check:                                       ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store ptr %i.a, ptr %7, align 8, !tbaa !226
  %i.ib = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %14, ptr %i.ib, align 8, !tbaa !233
  %i.ic = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %4, ptr %i.ic, align 8, !tbaa !235
  %i.id = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %5, ptr %i.id, align 8, !tbaa !235
  %i.ie = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %3, ptr %i.ie, align 8, !tbaa !235
  %i.if = load ptr, ptr %3, align 8, !tbaa !226   ; 6 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.hx
  %i.ih = load i16, ptr %i.a, align 2, !tbaa !147 ; 3 uses
  %i.ii = and i64 %i.ht, 65535                    ; 5 uses
  %i.ij = add nuw nsw i64 %i.ii, 1                ; 10 uses
  %min.iters.check = icmp samesign ult i64 %i.ii, 3
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i85.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check356 = icmp samesign ult i64 %i.ii, 15
  br i1 %min.iters.check356, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ik = and i64 %i.ij, 12
  %n.vec = and i64 %i.ij, 131056                  ; 4 uses
  %i.il = shl nuw nsw i64 %n.vec, 1
  %i.im = getelementptr i8, ptr %i.if, i64 %i.il
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.ih, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.in = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.if, i64 %i.in ; 2 uses
  %i.io = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %broadcast.splat, ptr %next.gep, align 2, !tbaa !147
  store <8 x i16> %broadcast.splat, ptr %i.io, align 2, !tbaa !147
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ip = icmp eq i64 %index.next, %n.vec
  br i1 %i.ip, label %middle.block, label %vector.body, !llvm.loop !237

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ij, %n.vec
  br i1 %cmp.n, label %iter.check379, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ik, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i85.preheader, label %vec.epilog.ph, !prof !240

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec357 = and i64 %i.ij, 131068               ; 3 uses
  %i.iq = shl nuw nsw i64 %n.vec357, 1
  %i.ir = getelementptr i8, ptr %i.if, i64 %i.iq
  %broadcast.splatinsert358 = insertelement <4 x i16> poison, i16 %i.ih, i64 0
  %broadcast.splat359 = shufflevector <4 x i16> %broadcast.splatinsert358, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index360 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next362, %vec.epilog.vector.body ] ; 2 uses
  %i.is = shl i64 %index360, 1
  %next.gep361 = getelementptr i8, ptr %i.if, i64 %i.is
  store <4 x i16> %broadcast.splat359, ptr %next.gep361, align 2, !tbaa !147
  %index.next362 = add nuw i64 %index360, 4       ; 2 uses
  %i.it = icmp eq i64 %index.next362, %n.vec357
  br i1 %i.it, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !241

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n363 = icmp eq i64 %i.ij, %n.vec357
  br i1 %cmp.n363, label %iter.check379, label %.lr.ph.i.i.i.i.i85.preheader

.lr.ph.i.i.i.i.i85.preheader:                     ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06.i.i.i.i.i.ph = phi ptr [ %i.if, %iter.check ], [ %i.im, %vec.epilog.iter.check ], [ %i.ir, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i85

.lr.ph.i.i.i.i.i85:                               ; preds = %.lr.ph.i.i.i.i.i85.preheader, %.lr.ph.i.i.i.i.i85
  %.06.i.i.i.i.i = phi ptr [ %i.iu, %.lr.ph.i.i.i.i.i85 ], [ %.06.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i85.preheader ] ; 2 uses
  store i16 %i.ih, ptr %.06.i.i.i.i.i, align 2, !tbaa !147
  %i.iu = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i.i.i86 = icmp eq ptr %i.iu, %i.ig
  br i1 %.not.i.i.i.i.i86, label %iter.check379, label %.lr.ph.i.i.i.i.i85, !llvm.loop !242

iter.check379:                                    ; preds = %.lr.ph.i.i.i.i.i85, %vec.epilog.middle.block, %middle.block
  %i.iv = load ptr, ptr %4, align 8, !tbaa !226   ; 6 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.hx
  %i.ix = load i16, ptr %i.a, align 2, !tbaa !147 ; 3 uses
  %min.iters.check365 = icmp samesign ult i64 %i.ii, 3
  br i1 %min.iters.check365, label %.lr.ph.i.i.i.i24.i.preheader, label %vector.main.loop.iter.check366

vector.main.loop.iter.check366:                   ; preds = %iter.check379
  %min.iters.check367 = icmp samesign ult i64 %i.ii, 15
  br i1 %min.iters.check367, label %vec.epilog.ph383, label %vector.ph368

vector.ph368:                                     ; preds = %vector.main.loop.iter.check366
  %i.iy = and i64 %i.ij, 12
  %n.vec369 = and i64 %i.ij, 131056               ; 4 uses
  %i.iz = shl nuw nsw i64 %n.vec369, 1
  %i.ja = getelementptr i8, ptr %i.iv, i64 %i.iz
  %broadcast.splatinsert370 = insertelement <8 x i16> poison, i16 %i.ix, i64 0
  %broadcast.splat371 = shufflevector <8 x i16> %broadcast.splatinsert370, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body372

vector.body372:                                   ; preds = %vector.body372, %vector.ph368
  %index373 = phi i64 [ 0, %vector.ph368 ], [ %index.next375, %vector.body372 ] ; 2 uses
  %i.jb = shl i64 %index373, 1
  %next.gep374 = getelementptr i8, ptr %i.iv, i64 %i.jb ; 2 uses
  %i.jc = getelementptr i8, ptr %next.gep374, i64 16
  store <8 x i16> %broadcast.splat371, ptr %next.gep374, align 2, !tbaa !147
  store <8 x i16> %broadcast.splat371, ptr %i.jc, align 2, !tbaa !147
  %index.next375 = add nuw i64 %index373, 16      ; 2 uses
  %i.jd = icmp eq i64 %index.next375, %n.vec369
  br i1 %i.jd, label %middle.block376, label %vector.body372, !llvm.loop !243

middle.block376:                                  ; preds = %vector.body372
  %cmp.n377 = icmp eq i64 %i.ij, %n.vec369
  br i1 %cmp.n377, label %_ZSt6fill_nIPtitET_S1_T0_RKT1_.exit27.preheader.i, label %vec.epilog.iter.check381

vec.epilog.iter.check381:                         ; preds = %middle.block376
  %min.epilog.iters.check382 = icmp eq i64 %i.iy, 0
  br i1 %min.epilog.iters.check382, label %.lr.ph.i.i.i.i24.i.preheader, label %vec.epilog.ph383, !prof !240

vec.epilog.ph383:                                 ; preds = %vector.main.loop.iter.check366, %vec.epilog.iter.check381
  %vec.epilog.resume.val378 = phi i64 [ %n.vec369, %vec.epilog.iter.check381 ], [ 0, %vector.main.loop.iter.check366 ]
  %n.vec384 = and i64 %i.ij, 131068               ; 3 uses
  %i.je = shl nuw nsw i64 %n.vec384, 1
  %i.jf = getelementptr i8, ptr %i.iv, i64 %i.je
  %broadcast.splatinsert385 = insertelement <4 x i16> poison, i16 %i.ix, i64 0
  %broadcast.splat386 = shufflevector <4 x i16> %broadcast.splatinsert385, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body387

vec.epilog.vector.body387:                        ; preds = %vec.epilog.vector.body387, %vec.epilog.ph383
  %index388 = phi i64 [ %vec.epilog.resume.val378, %vec.epilog.ph383 ], [ %index.next390, %vec.epilog.vector.body387 ] ; 2 uses
  %i.jg = shl i64 %index388, 1
  %next.gep389 = getelementptr i8, ptr %i.iv, i64 %i.jg
  store <4 x i16> %broadcast.splat386, ptr %next.gep389, align 2, !tbaa !147
  %index.next390 = add nuw i64 %index388, 4       ; 2 uses
  %i.jh = icmp eq i64 %index.next390, %n.vec384
  br i1 %i.jh, label %vec.epilog.middle.block391, label %vec.epilog.vector.body387, !llvm.loop !244

vec.epilog.middle.block391:                       ; preds = %vec.epilog.vector.body387
  %cmp.n392 = icmp eq i64 %i.ij, %n.vec384
  br i1 %cmp.n392, label %_ZSt6fill_nIPtitET_S1_T0_RKT1_.exit27.preheader.i, label %.lr.ph.i.i.i.i24.i.preheader

.lr.ph.i.i.i.i24.i.preheader:                     ; preds = %iter.check379, %vec.epilog.iter.check381, %vec.epilog.middle.block391
  %.06.i.i.i.i25.i.ph = phi ptr [ %i.iv, %iter.check379 ], [ %i.ja, %vec.epilog.iter.check381 ], [ %i.jf, %vec.epilog.middle.block391 ]
  br label %.lr.ph.i.i.i.i24.i

.lr.ph.i.i.i.i24.i:                               ; preds = %.lr.ph.i.i.i.i24.i.preheader, %.lr.ph.i.i.i.i24.i
  %.06.i.i.i.i25.i = phi ptr [ %i.ji, %.lr.ph.i.i.i.i24.i ], [ %.06.i.i.i.i25.i.ph, %.lr.ph.i.i.i.i24.i.preheader ] ; 2 uses
  store i16 %i.ix, ptr %.06.i.i.i.i25.i, align 2, !tbaa !147
  %i.ji = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i25.i, i64 2 ; 2 uses
  %.not.i.i.i.i26.i = icmp eq ptr %i.ji, %i.iw
  br i1 %.not.i.i.i.i26.i, label %_ZSt6fill_nIPtitET_S1_T0_RKT1_.exit27.preheader.i, label %.lr.ph.i.i.i.i24.i, !llvm.loop !245

_ZSt6fill_nIPtitET_S1_T0_RKT1_.exit27.preheader.i: ; preds = %.lr.ph.i.i.i.i24.i, %vec.epilog.middle.block391, %middle.block376
  %.not22.i.i = icmp eq i16 %i.hu, 0              ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 9 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 5 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 7 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 5 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %umax.i = call i16 @llvm.umax.i16(i16 %i.hu, i16 1)
  %wide.trip.count.i = zext i16 %umax.i to i64
  %wide.trip.count105.i = and i64 %i.ht, 65535
  br label %_ZSt6fill_nIPtitET_S1_T0_RKT1_.exit27.i

_ZSt6fill_nIPtitET_S1_T0_RKT1_.exit27.loopexit.i: ; preds = %bb.bx, %.preheader.i
  %.1.lcssa.i = phi i16 [ %.010.i, %.preheader.i ], [ %.2.i, %bb.bx ]
  br label %_ZSt6fill_nIPtitET_S1_T0_RKT1_.exit27.i, !llvm.loop !246

_ZSt6fill_nIPtitET_S1_T0_RKT1_.exit27.i:          ; preds = %_ZSt6fill_nIPtitET_S1_T0_RKT1_.exit27.loopexit.i, %_ZSt6fill_nIPtitET_S1_T0_RKT1_.exit27.preheader.i
  %.010.i = phi i16 [ %.1.lcssa.i, %_ZSt6fill_nIPtitET_S1_T0_RKT1_.exit27.loopexit.i ], [ 0, %_ZSt6fill_nIPtitET_S1_T0_RKT1_.exit27.preheader.i ] ; 3 uses
  br i1 %.not22.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt5queueItSt5dequeItSaItEEE4pushERKt.exit.i.i, %_ZSt6fill_nIPtitET_S1_T0_RKT1_.exit27.i
  %i.jp = load i16, ptr %i.a, align 2, !tbaa !147
  %i.jq = zext i16 %i.jp to i64
  %i.jr = load ptr, ptr %5, align 8, !tbaa !226   ; 2 uses
  %i.js = getelementptr inbounds nuw [2 x i8], ptr %i.jr, i64 %i.jq
  store i16 -1, ptr %i.js, align 2, !tbaa !147
  %i.jt = load ptr, ptr %i.jj, align 8, !tbaa !247
  %i.ju = load ptr, ptr %i.jl, align 8, !tbaa !247 ; 2 uses
  %i.jv = icmp eq ptr %i.jt, %i.ju
  br i1 %i.jv, label %bb.bt, label %.lr.ph20.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt6fill_nIPtitET_S1_T0_RKT1_.exit27.i, %_ZNSt5queueItSt5dequeItSaItEEE4pushERKt.exit.i.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZNSt5queueItSt5dequeItSaItEEE4pushERKt.exit.i.i ], [ 0, %_ZSt6fill_nIPtitET_S1_T0_RKT1_.exit27.i ] ; 5 uses
  %i.jw = load ptr, ptr %3, align 8, !tbaa !226
  %i.jx = getelementptr inbounds nuw [2 x i8], ptr %i.jw, i64 %indvars.iv.i
  %i.jy = load i16, ptr %i.jx, align 2, !tbaa !147
  %i.jz = load i16, ptr %i.a, align 2, !tbaa !147
  %i.ka = icmp eq i16 %i.jy, %i.jz
  %i.kb = load ptr, ptr %5, align 8, !tbaa !226
  %i.kc = getelementptr inbounds nuw [2 x i8], ptr %i.kb, i64 %indvars.iv.i ; 2 uses
  br i1 %i.ka, label %bb.ar, label %bb.aw

bb.ar:                                            ; preds = %.lr.ph.i.i
  store i16 0, ptr %i.kc, align 2, !tbaa !147
  %i.kd = load ptr, ptr %i.jj, align 8, !tbaa !250 ; 4 uses
  %i.ke = load ptr, ptr %i.jk, align 8, !tbaa !252
  %i.kf = getelementptr inbounds i8, ptr %i.ke, i64 -2
  %.not.i.i.i.i91 = icmp eq ptr %i.kd, %i.kf
  br i1 %.not.i.i.i.i91, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.kg = trunc nuw i64 %indvars.iv.i to i16
  store i16 %i.kg, ptr %i.kd, align 2, !tbaa !147
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kd, i64 2
  store ptr %i.kh, ptr %i.jj, align 8, !tbaa !250
  br label %_ZNSt5queueItSt5dequeItSaItEEE4pushERKt.exit.i.i

bb.at:                                            ; preds = %bb.ar
  %i.ki = load ptr, ptr %i.jm, align 8, !tbaa !253 ; 2 uses
  %i.kj = load ptr, ptr %.sroa.gep73.i, align 8, !tbaa !253
  %i.kk = ptrtoint ptr %i.ki to i64               ; 2 uses
  %i.kl = ptrtoint ptr %i.kj to i64
  %i.km = sub i64 %i.kk, %i.kl
  %i.kn = ashr exact i64 %i.km, 3
  %i.ko = icmp ne ptr %i.ki, null
  %.neg.i.i.i.i = sext i1 %i.ko to i64
  %i.kp = add nsw i64 %i.kn, %.neg.i.i.i.i
  %i.kq = shl nsw i64 %i.kp, 8
  %i.kr = load ptr, ptr %i.jn, align 8, !tbaa !254
  %i.ks = ptrtoint ptr %i.kd to i64
  %i.kt = ptrtoint ptr %i.kr to i64
  %i.ku = sub i64 %i.ks, %i.kt
  %i.kv = ashr exact i64 %i.ku, 1
  %i.kw = add nsw i64 %i.kq, %i.kv
  %i.kx = load ptr, ptr %.sroa.gep.i, align 8, !tbaa !255
  %i.ky = load ptr, ptr %i.jl, align 8, !tbaa !247
  %i.kz = ptrtoint ptr %i.kx to i64
  %i.la = ptrtoint ptr %i.ky to i64
  %i.lb = sub i64 %i.kz, %i.la
  %i.lc = ashr exact i64 %i.lb, 1
  %i.ld = add nsw i64 %i.kw, %i.lc
  %i.le = icmp eq i64 %i.ld, 4611686018427387903
  br i1 %i.le, label %.invoke.i, label %bb.au

.invoke.i:                                        ; preds = %bb.at, %bb.bc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #26
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.i

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.au:                                            ; preds = %bb.at
  %i.lf = load i64, ptr %i.jo, align 8, !tbaa !256
  %i.lg = load ptr, ptr %6, align 8, !tbaa !257
  %i.lh = ptrtoint ptr %i.lg to i64
  %i.li = sub i64 %i.kk, %i.lh
  %i.lj = ashr exact i64 %i.li, 3
  %i.lk = sub i64 %i.lf, %i.lj
  %i.ll = icmp ult i64 %i.lk, 2
  br i1 %i.ll, label %bb.av, label %_ZNSt5dequeItSaItEE22_M_reserve_map_at_backEm.exit.i.i

bb.av:                                            ; preds = %bb.au
  invoke void @_ZNSt5dequeItSaItEE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %6, i64 noundef 1, i1 noundef zeroext false)
          to label %_ZNSt5dequeItSaItEE22_M_reserve_map_at_backEm.exit.i.i unwind label %.loopexit.split-lp.loopexit.i

_ZNSt5dequeItSaItEE22_M_reserve_map_at_backEm.exit.i.i: ; preds = %bb.av, %bb.au
  %i.lm = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #27
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.i ; 4 uses

.noexc.i:                                         ; preds = %_ZNSt5dequeItSaItEE22_M_reserve_map_at_backEm.exit.i.i
  %i.ln = load ptr, ptr %i.jm, align 8, !tbaa !258
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8 ; 2 uses
  store ptr %i.lm, ptr %i.lo, align 8, !tbaa !226
  %i.lp = load ptr, ptr %i.jj, align 8, !tbaa !250
  %i.lq = trunc nuw i64 %indvars.iv.i to i16
  store i16 %i.lq, ptr %i.lp, align 2, !tbaa !147
  store ptr %i.lo, ptr %i.jm, align 8, !tbaa !253
  store ptr %i.lm, ptr %i.jn, align 8, !tbaa !254
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lm, i64 512
  store ptr %i.lr, ptr %i.jk, align 8, !tbaa !255
  store ptr %i.lm, ptr %i.jj, align 8, !tbaa !250
  br label %_ZNSt5queueItSt5dequeItSaItEEE4pushERKt.exit.i.i

bb.aw:                                            ; preds = %.lr.ph.i.i
  store i16 -1, ptr %i.kc, align 2, !tbaa !147
  br label %_ZNSt5queueItSt5dequeItSaItEEE4pushERKt.exit.i.i

_ZNSt5queueItSt5dequeItSaItEEE4pushERKt.exit.i.i: ; preds = %bb.aw, %.noexc.i, %bb.as
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !259

.lr.ph20.i.i:                                     ; preds = %._crit_edge.i.i, %.loopexit.i.i
  %i.ls = phi ptr [ %i.ql, %.loopexit.i.i ], [ %i.ju, %._crit_edge.i.i ] ; 3 uses
  %i.lt = load i16, ptr %i.ls, align 2, !tbaa !147
  %i.lu = load ptr, ptr %.sroa.gep.i, align 8, !tbaa !260
  %i.lv = getelementptr inbounds i8, ptr %i.lu, i64 -2
  %.not.i.i6.i.i = icmp eq ptr %i.ls, %i.lv
  br i1 %.not.i.i6.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph20.i.i
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ls, i64 2
  br label %_ZNSt5queueItSt5dequeItSaItEEE3popEv.exit.i.i

bb.ay:                                            ; preds = %.lr.ph20.i.i
  %i.lx = load ptr, ptr %.sroa.gep70.i, align 8, !tbaa !261
  call void @_ZdlPvm(ptr noundef %i.lx, i64 noundef 512) #25
  %i.ly = load ptr, ptr %.sroa.gep73.i, align 8, !tbaa !262
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8 ; 2 uses
  store ptr %i.lz, ptr %.sroa.gep73.i, align 8, !tbaa !253
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !226 ; 3 uses
  store ptr %i.ma, ptr %.sroa.gep70.i, align 8, !tbaa !254
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 512
  store ptr %i.mb, ptr %.sroa.gep.i, align 8, !tbaa !255
  br label %_ZNSt5queueItSt5dequeItSaItEEE3popEv.exit.i.i

_ZNSt5queueItSt5dequeItSaItEEE3popEv.exit.i.i:    ; preds = %bb.ay, %bb.ax
  %storemerge.i.i.i.i = phi ptr [ %i.lw, %bb.ax ], [ %i.ma, %bb.ay ] ; 3 uses
  store ptr %storemerge.i.i.i.i, ptr %i.jl, align 8, !tbaa !263
  %i.mc = zext i16 %i.lt to i64                   ; 3 uses
  %i.md = load ptr, ptr %5, align 8, !tbaa !226   ; 2 uses
  %i.me = getelementptr inbounds nuw [2 x i8], ptr %i.md, i64 %i.mc
  %i.mf = load i16, ptr %i.me, align 2, !tbaa !147
  %i.mg = load i16, ptr %i.a, align 2, !tbaa !147
  %i.mh = zext i16 %i.mg to i64
  %i.mi = getelementptr inbounds nuw [2 x i8], ptr %i.md, i64 %i.mh
  %i.mj = load i16, ptr %i.mi, align 2, !tbaa !147
  %i.mk = icmp ult i16 %i.mf, %i.mj
  br i1 %i.mk, label %bb.az, label %.loopexit.i.i

bb.az:                                            ; preds = %_ZNSt5queueItSt5dequeItSaItEEE3popEv.exit.i.i
  %i.ml = load ptr, ptr %14, align 8, !tbaa !218
  %i.mm = getelementptr inbounds nuw [24 x i8], ptr %i.ml, i64 %i.mc ; 2 uses
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !226 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !226 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.mn, %i.mp
  br i1 %.not15.i.i, label %.loopexit.i.i, label %.lr.ph18.i.i

.lr.ph18.i.i:                                     ; preds = %bb.az, %_ZNSt5queueItSt5dequeItSaItEEE4pushERKt.exit8.i.i
  %.sroa.011.016.i.i = phi ptr [ %i.qk, %_ZNSt5queueItSt5dequeItSaItEEE4pushERKt.exit8.i.i ], [ %i.mn, %bb.az ] ; 2 uses
  %i.mq = load i16, ptr %.sroa.011.016.i.i, align 2, !tbaa !147
  %i.mr = zext i16 %i.mq to i64
  %i.ms = load ptr, ptr %4, align 8, !tbaa !226
  %i.mt = getelementptr inbounds nuw [2 x i8], ptr %i.ms, i64 %i.mr
  %i.mu = load i16, ptr %i.mt, align 2, !tbaa !147 ; 3 uses
  %i.mv = zext i16 %i.mu to i64
  %i.mw = load ptr, ptr %5, align 8, !tbaa !226   ; 2 uses
  %i.mx = getelementptr inbounds nuw [2 x i8], ptr %i.mw, i64 %i.mv ; 2 uses
  %i.my = load i16, ptr %i.mx, align 2, !tbaa !147
  %i.mz = icmp eq i16 %i.my, -1
  br i1 %i.mz, label %bb.ba, label %_ZNSt5queueItSt5dequeItSaItEEE4pushERKt.exit8.i.i

bb.ba:                                            ; preds = %.lr.ph18.i.i
  %i.na = getelementptr inbounds nuw [2 x i8], ptr %i.mw, i64 %i.mc
  %i.nb = load i16, ptr %i.na, align 2, !tbaa !147
  %i.nc = add i16 %i.nb, 1
  store i16 %i.nc, ptr %i.mx, align 2, !tbaa !147
  %i.nd = load ptr, ptr %i.jj, align 8, !tbaa !250 ; 4 uses
  %i.ne = load ptr, ptr %i.jk, align 8, !tbaa !252
  %i.nf = getelementptr inbounds i8, ptr %i.ne, i64 -2
  %.not.i.i7.i.i = icmp eq ptr %i.nd, %i.nf
  br i1 %.not.i.i7.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store i16 %i.mu, ptr %i.nd, align 2, !tbaa !147
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nd, i64 2
  br label %_ZNSt5queueItSt5dequeItSaItEEE4pushERKt.exit8.sink.split.i.i

bb.bc:                                            ; preds = %bb.ba
  %i.nh = load ptr, ptr %i.jm, align 8, !tbaa !253 ; 5 uses
  %i.ni = load ptr, ptr %.sroa.gep73.i, align 8, !tbaa !253 ; 8 uses
  %i.nj = ptrtoint ptr %i.nh to i64               ; 2 uses
  %i.nk = ptrtoint ptr %i.ni to i64               ; 4 uses
  %i.nl = sub i64 %i.nj, %i.nk
  %i.nm = ashr exact i64 %i.nl, 3                 ; 3 uses
  %i.nn = icmp ne ptr %i.nh, null
  %.neg.i.i.i.i.i = sext i1 %i.nn to i64
  %i.no = add nsw i64 %i.nm, %.neg.i.i.i.i.i
  %i.np = shl nsw i64 %i.no, 8
  %i.nq = load ptr, ptr %i.jn, align 8, !tbaa !254
  %i.nr = ptrtoint ptr %i.nd to i64
  %i.ns = ptrtoint ptr %i.nq to i64
  %i.nt = sub i64 %i.nr, %i.ns
  %i.nu = ashr exact i64 %i.nt, 1
  %i.nv = add nsw i64 %i.np, %i.nu
  %i.nw = load ptr, ptr %.sroa.gep.i, align 8, !tbaa !255
  %i.nx = load ptr, ptr %i.jl, align 8, !tbaa !247
  %i.ny = ptrtoint ptr %i.nw to i64
  %i.nz = ptrtoint ptr %i.nx to i64
  %i.oa = sub i64 %i.ny, %i.nz
  %i.ob = ashr exact i64 %i.oa, 1
  %i.oc = add nsw i64 %i.nv, %i.ob
  %i.od = icmp eq i64 %i.oc, 4611686018427387903
  br i1 %i.od, label %.invoke.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.oe = load i64, ptr %i.jo, align 8, !tbaa !256 ; 6 uses
  %i.of = load ptr, ptr %6, align 8, !tbaa !257   ; 3 uses
  %i.og = ptrtoint ptr %i.of to i64
  %i.oh = sub i64 %i.nj, %i.og
  %i.oi = ashr exact i64 %i.oh, 3
  %i.oj = sub i64 %i.oe, %i.oi
  %i.ok = icmp ult i64 %i.oj, 2
  br i1 %i.ok, label %bb.be, label %_ZNSt5dequeItSaItEE16_M_push_back_auxIJRKtEEEvDpOT_.exit.i.i

bb.be:                                            ; preds = %bb.bd
  %i.ol = add nsw i64 %i.nm, 1                    ; 2 uses
  %i.om = add nsw i64 %i.nm, 2                    ; 3 uses
  %i.on = shl nsw i64 %i.om, 1
  %i.oo = icmp ugt i64 %i.oe, %i.on
  br i1 %i.oo, label %bb.bf, label %bb.bo

bb.bf:                                            ; preds = %bb.be
  %i.op = sub i64 %i.oe, %i.om
  %i.oq = lshr i64 %i.op, 1
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.of, i64 %i.oq ; 10 uses
  %i.os = icmp ult ptr %i.or, %i.ni
  %i.ot = getelementptr inbounds nuw i8, ptr %i.nh, i64 8 ; 2 uses
  br i1 %i.os, label %bb.bg, label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  %i.ou = ptrtoint ptr %i.ot to i64
  %i.ov = sub i64 %i.ou, %i.nk                    ; 3 uses
  %i.ow = icmp sgt i64 %i.ov, 8
  br i1 %i.ow, label %bb.bh, label %bb.bi, !prof !264

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.or, ptr nonnull align 8 %i.ni, i64 %i.ov, i1 false)
  br label %.noexc29.i

bb.bi:                                            ; preds = %bb.bg
  %i.ox = icmp eq i64 %i.ov, 8
  br i1 %i.ox, label %bb.bj, label %.noexc29.i

bb.bj:                                            ; preds = %bb.bi
  %i.oy = load ptr, ptr %i.ni, align 8, !tbaa !226
  store ptr %i.oy, ptr %i.or, align 8, !tbaa !226
  br label %.noexc29.i

bb.bk:                                            ; preds = %bb.bf
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.ol ; 2 uses
  %i.pa = ptrtoint ptr %i.ot to i64
  %i.pb = sub i64 %i.pa, %i.nk                    ; 3 uses
  %i.pc = ashr exact i64 %i.pb, 3                 ; 2 uses
  %i.pd = icmp sgt i64 %i.pc, 1
  br i1 %i.pd, label %bb.bl, label %bb.bm, !prof !264

bb.bl:                                            ; preds = %bb.bk
  %i.pe = sub nsw i64 0, %i.pc
  %i.pf = getelementptr inbounds [8 x i8], ptr %i.oz, i64 %i.pe
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.pf, ptr align 8 %i.ni, i64 %i.pb, i1 false)
  br label %.noexc29.i

bb.bm:                                            ; preds = %bb.bk
  %i.pg = icmp eq i64 %i.pb, 8
  br i1 %i.pg, label %bb.bn, label %.noexc29.i

bb.bn:                                            ; preds = %bb.bm
  %i.ph = getelementptr inbounds i8, ptr %i.oz, i64 -8
  %i.pi = load ptr, ptr %i.ni, align 8, !tbaa !226
  store ptr %i.pi, ptr %i.ph, align 8, !tbaa !226
  br label %.noexc29.i

bb.bo:                                            ; preds = %bb.be
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.oe, i64 1)
  %i.pj = add i64 %i.oe, 2
  %i.pk = add i64 %i.pj, %.sroa.speculated.i.i    ; 5 uses
  %i.pl = icmp ugt i64 %i.pk, 1152921504606846975
  br i1 %i.pl, label %bb.bp, label %_ZNSt11_Deque_baseItSaItEE15_M_allocate_mapEm.exit.i.i, !prof !52

bb.bp:                                            ; preds = %bb.bo
  %i.pm = icmp ugt i64 %i.pk, 2305843009213693951
  br i1 %i.pm, label %.noexc.i.i.i, label %.noexc3.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.bp
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc50.i unwind label %.loopexit.split-lp.loopexit.split-lp.i

.noexc50.i:                                       ; preds = %.noexc.i.i.i
  unreachable

.noexc3.i.i.i:                                    ; preds = %bb.bp
  invoke void @_ZSt17__throw_bad_allocv() #26
          to label %.noexc51.i unwind label %.loopexit.split-lp.loopexit.split-lp.i

.noexc51.i:                                       ; preds = %.noexc3.i.i.i
  unreachable

_ZNSt11_Deque_baseItSaItEE15_M_allocate_mapEm.exit.i.i: ; preds = %bb.bo
end_hunk_0
begin_hunk_1_@_ZNSo5flushEv
; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #10

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI9ItemStackSaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !13     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775728
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorI9ItemStackSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #26
  unreachable

_ZNKSt6vectorI9ItemStackSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 296                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 31160040665049918)
  %i.l = select i1 %i.j, i64 31160040665049918, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 296                ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 16 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.r, i8 0, i64 280, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.s, ptr %i.q, align 8, !tbaa !40
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 0, ptr %i.t, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store i16 0, ptr %i.u, align 8, !tbaa !55
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 3 uses
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTT17ItemStackMetadata, i64 8), align 8 ; 2 uses
  store ptr %i.w, ptr %i.v, align 8, !tbaa !15
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTT17ItemStackMetadata, i64 16), align 8
  %i.y = getelementptr i8, ptr %i.w, i64 -80
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds i8, ptr %i.v, i64 %i.z
  store ptr %i.x, ptr %i.aa, align 8, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store i8 0, ptr %i.ab, align 8, !tbaa !156
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !157
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store i64 1, ptr %i.ae, align 8, !tbaa !158
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ag, align 8, !tbaa !159
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-80, 72) (i8, ptr @_ZTV17ItemStackMetadata, i64 80), ptr %i.v, align 8, !tbaa !15
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 224
  store i8 0, ptr %i.ai, align 8, !tbaa !160
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 288
  store i8 0, ptr %i.aj, align 8, !tbaa !161
  %i.ak = invoke noundef ptr @_ZSt16__do_uninit_copyIPK9ItemStackPS0_ET0_T_S5_S4_(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.p)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIP9ItemStackS1_SaIS0_EET0_T_S4_S3_RT1_.exit unwind label %bb.d

_ZSt34__uninitialized_move_if_noexcept_aIP9ItemStackS1_SaIS0_EET0_T_S4_S3_RT1_.exit: ; preds = %_ZNKSt6vectorI9ItemStackSaIS0_EE12_M_check_lenEmPKc.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 296 ; 2 uses
  %i.am = invoke noundef ptr @_ZSt16__do_uninit_copyIPK9ItemStackPS0_ET0_T_S5_S4_(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull %i.al)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIP9ItemStackS1_SaIS0_EET0_T_S4_S3_RT1_.exit27 unwind label %bb.e

_ZSt34__uninitialized_move_if_noexcept_aIP9ItemStackS1_SaIS0_EET0_T_S4_S3_RT1_.exit27: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP9ItemStackS1_SaIS0_EET0_T_S4_S3_RT1_.exit
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIP9ItemStackEvT_S2_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP9ItemStackS1_SaIS0_EET0_T_S4_S3_RT1_.exit27, %_ZSt8_DestroyI9ItemStackEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.at, %_ZSt8_DestroyI9ItemStackEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIP9ItemStackS1_SaIS0_EET0_T_S4_S3_RT1_.exit27 ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40
  tail call void @_ZN17ItemStackMetadataD2Ev(ptr noundef nonnull align 8 dereferenceable(256) %i.an, ptr noundef nonnull @_ZTT17ItemStackMetadata) #24
  %i.ao = load ptr, ptr %.05.i.i, align 8, !tbaa !27 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZSt8_DestroyI9ItemStackEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !14
  %i.as = add i64 %i.ar, 1
  tail call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #25
  br label %_ZSt8_DestroyI9ItemStackEvPT_.exit.i.i

_ZSt8_DestroyI9ItemStackEvPT_.exit.i.i:           ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 296 ; 2 uses
  %.not.i.i = icmp eq ptr %i.at, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIP9ItemStackEvT_S2_.exit, label %.lr.ph.i.i, !llvm.loop !146

_ZSt8_DestroyIP9ItemStackEvT_S2_.exit:            ; preds = %_ZSt8_DestroyI9ItemStackEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIP9ItemStackS1_SaIS0_EET0_T_S4_S3_RT1_.exit27
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i28 = icmp eq ptr %i.c, null
  br i1 %.not.i28, label %_ZNSt12_Vector_baseI9ItemStackSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIP9ItemStackEvT_S2_.exit
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !53
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ax) #25
  br label %_ZNSt12_Vector_baseI9ItemStackSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseI9ItemStackSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZSt8_DestroyIP9ItemStackEvT_S2_.exit, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !13
  store ptr %i.am, ptr %i.a, align 8, !tbaa !9
  %i.ay = getelementptr inbounds nuw [296 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ay, ptr %i.au, align 8, !tbaa !53
  ret void

bb.d:                                             ; preds = %_ZNKSt6vectorI9ItemStackSaIS0_EE12_M_check_lenEmPKc.exit
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  %i.bb = tail call ptr @__cxa_begin_catch(ptr %i.ba) #24 ; 0 uses
  tail call void @_ZN9ItemStackD2Ev(ptr noundef nonnull align 8 dead_on_return(296) dereferenceable(296) %i.q) #24
  br label %bb.g

bb.e:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP9ItemStackS1_SaIS0_EET0_T_S4_S3_RT1_.exit
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  %i.be = tail call ptr @__cxa_begin_catch(ptr %i.bd) #24 ; 0 uses
  invoke void @_ZSt8_DestroyIP9ItemStackEvT_S2_(ptr noundef nonnull %i.p, ptr noundef nonnull %i.al)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.g
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.g:                                             ; preds = %bb.d, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #25
  invoke void @__cxa_rethrow() #26
          to label %bb.j unwind label %bb.f

bb.h:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.bf

bb.i:                                             ; preds = %bb.f
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  tail call void @__clang_call_terminate(ptr %i.bh) #28
  unreachable

bb.j:                                             ; preds = %bb.g
  unreachable
}

declare extern_weak void @_ZTH11errorstream() #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #20

declare extern_weak void @_ZTH10infostream() #2

declare extern_weak void @_ZTH11tracestream() #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #19

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { inlinehint mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #24 = { nounwind }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !11, i64 8}
!10 = !{!"_ZTSNSt12_Vector_baseI9ItemStackSaIS0_EE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!11 = !{!"p1 _ZTS9ItemStack", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!10, !11, i64 0}
!14 = !{!7, !7, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"vtable pointer", !8, i64 0}
!17 = !{!18, !19, i64 16}
!18 = !{!"_ZTSSt8ios_base", !19, i64 8, !19, i64 16, !20, i64 24, !21, i64 28, !21, i64 32, !22, i64 40, !23, i64 48, !7, i64 64, !6, i64 192, !24, i64 200, !25, i64 208}
!19 = !{!"long", !7, i64 0}
!20 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!21 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!22 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !12, i64 0}
!23 = !{!"_ZTSNSt8ios_base6_WordsE", !12, i64 0, !19, i64 8}
!24 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !12, i64 0}
!25 = !{!"_ZTSSt6locale", !26, i64 0}
!26 = !{!"p1 _ZTSNSt6locale5_ImplE", !12, i64 0}
!27 = !{!28, !30, i64 0}
!28 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !29, i64 0, !19, i64 8, !7, i64 16}
!29 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !30, i64 0}
!30 = !{!"p1 omnipotent char", !12, i64 0}
!31 = !{!28, !19, i64 8}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!36 = distinct !{!36, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!39 = distinct !{!39, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!40 = !{!29, !30, i64 0}
!41 = !{!38, !35}
!42 = !{!43, !30, i64 40}
!43 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !30, i64 8, !30, i64 16, !30, i64 24, !30, i64 32, !30, i64 40, !30, i64 48, !25, i64 56}
!44 = !{!43, !30, i64 32}
!45 = !{!46, !47, i64 0}
!46 = !{!"_ZTS10CraftInput", !47, i64 0, !6, i64 4, !48, i64 8}
!47 = !{!"_ZTS11CraftMethod", !7, i64 0}
!48 = !{!"_ZTSSt6vectorI9ItemStackSaIS0_EE", !49, i64 0}
!49 = !{!"_ZTSSt12_Vector_baseI9ItemStackSaIS0_EE", !50, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseI9ItemStackSaIS0_EE12_Vector_implE", !10, i64 0}
!51 = !{!46, !6, i64 4}
!52 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!53 = !{!10, !11, i64 16}
!54 = !{!11, !11, i64 0}
!55 = !{!56, !57, i64 32}
!56 = !{!"_ZTS9ItemStack", !28, i64 0, !57, i64 32, !57, i64 34, !58, i64 40}
!57 = !{!"short", !7, i64 0}
!58 = !{!"_ZTS17ItemStackMetadata", !59, i64 0, !69, i64 72, !74, i64 192}
!59 = !{!"_ZTS14SimpleMetadata", !60, i64 8, !61, i64 16}
!60 = !{!"bool", !7, i64 0}
!61 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE", !62, i64 0}
!62 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !63, i64 0, !19, i64 8, !65, i64 16, !19, i64 24, !67, i64 32, !66, i64 48}
!63 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !64, i64 0}
!64 = !{!"any p2 pointer", !12, i64 0}
!65 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !66, i64 0}
!66 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !12, i64 0}
!67 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !68, i64 0, !19, i64 8}
!68 = !{!"float", !7, i64 0}
!69 = !{!"_ZTSSt8optionalI16ToolCapabilitiesE", !70, i64 0}
!70 = !{!"_ZTSSt14_Optional_baseI16ToolCapabilitiesLb0ELb0EE", !71, i64 0}
!71 = !{!"_ZTSSt17_Optional_payloadI16ToolCapabilitiesLb0ELb0ELb0EE", !72, i64 0}
!72 = !{!"_ZTSSt17_Optional_payloadI16ToolCapabilitiesLb1ELb0ELb0EE", !73, i64 0}
!73 = !{!"_ZTSSt22_Optional_payload_baseI16ToolCapabilitiesE", !7, i64 0, !60, i64 112}
!74 = !{!"_ZTSSt8optionalI13WearBarParamsE", !75, i64 0}
!75 = !{!"_ZTSSt14_Optional_baseI13WearBarParamsLb0ELb0EE", !76, i64 0}
!76 = !{!"_ZTSSt17_Optional_payloadI13WearBarParamsLb0ELb0ELb0EE", !77, i64 0}
!77 = !{!"_ZTSSt17_Optional_payloadI13WearBarParamsLb1ELb0ELb0EE", !78, i64 0}
!78 = !{!"_ZTSSt22_Optional_payload_baseI13WearBarParamsE", !7, i64 0, !60, i64 56}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!81 = distinct !{!81, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!84 = distinct !{!84, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!85 = !{!83, !80}
!86 = !{!87, !68, i64 32}
!87 = !{!"_ZTS11CraftOutput", !28, i64 0, !68, i64 32}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!90 = distinct !{!90, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!93 = distinct !{!93, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!94 = !{!92, !89}
!95 = !{!96, !96, i64 0}
!96 = !{!"p1 _ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_E", !12, i64 0}
!97 = distinct !{!97, !98}
!98 = !{!"llvm.loop.peeled.count", i32 1}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!101 = distinct !{!101, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!104 = distinct !{!104, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!105 = !{!103, !100}
!106 = !{!19, !19, i64 0}
!107 = !{!108, !6, i64 48}
!108 = !{!"_ZTS21CraftDefinitionShaped", !109, i64 0, !28, i64 16, !6, i64 48, !112, i64 56, !112, i64 80, !60, i64 104, !117, i64 112}
!109 = !{!"_ZTS15CraftDefinition", !110, i64 8, !111, i64 12}
!110 = !{!"_ZTS13CraftHashType", !7, i64 0}
!111 = !{!"_ZTSN15CraftDefinition14RecipePriorityE", !7, i64 0}
!112 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !113, i64 0}
!113 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !114, i64 0}
!114 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !115, i64 0}
!115 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !116, i64 0, !116, i64 8, !116, i64 16}
!116 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0}
!117 = !{!"_ZTS17CraftReplacements", !118, i64 0}
!118 = !{!"_ZTSSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE", !119, i64 0}
!119 = !{!"_ZTSSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE", !120, i64 0}
!120 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_Vector_implE", !121, i64 0}
!121 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_Vector_impl_dataE", !96, i64 0, !96, i64 8, !96, i64 16}
!122 = !{!115, !116, i64 8}
!123 = !{!115, !116, i64 0}
!124 = !{!115, !116, i64 16}
!125 = !{!116, !116, i64 0}
!126 = !{!109, !111, i64 12}
!127 = distinct !{!127, !33}
!128 = !{!6, !6, i64 0}
!129 = !{!108, !60, i64 104}
!130 = !{i8 0, i8 2}
!131 = !{}
!132 = distinct !{!132, !33}
!133 = distinct !{null}
!134 = distinct !{!134, !33}
!135 = distinct !{!135, !33}
!136 = distinct !{!136, !33}
!137 = distinct !{!137, !33}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!140 = distinct !{!140, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!141 = !{!142, !19, i64 32}
!142 = !{!"_ZTS11BasicStrfndIcE", !28, i64 0, !19, i64 32}
!143 = !{!144, !6, i64 32}
!144 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE", !28, i64 0, !6, i64 32}
!145 = distinct !{!145, !33}
!146 = distinct !{!146, !33}
!147 = !{!57, !57, i64 0}
!148 = !{!149, !149, i64 0}
!149 = !{!"p1 _ZTS15IItemDefManager", !12, i64 0}
!150 = !{!56, !57, i64 34}
!151 = !{!121, !96, i64 0}
!152 = !{!121, !96, i64 8}
!153 = distinct !{!153, !33}
!154 = !{!121, !96, i64 16}
!155 = distinct !{!155, !33}
!156 = !{!59, !60, i64 8}
!157 = !{!62, !63, i64 0}
!158 = !{!62, !19, i64 8}
!159 = !{!67, !68, i64 0}
!160 = !{!73, !60, i64 112}
!161 = !{!78, !60, i64 56}
!162 = distinct !{!162, !33}
!163 = distinct !{!163, !33}
!164 = !{!165}
!165 = distinct !{!165, !166, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
end_hunk_1
