Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/options_description?download=true
inline.NumInlined: 1450
inline.NumDeleted: 568
begin_hunk_0_@_ZN5boost15program_options12_GLOBAL__N_110format_oneERSoRKNS0_18option_descriptionEjj:bb.a
  store i8 %i.gl, ptr %i.gk, align 1, !tbaa !17
  br label %bb.aj

bb.ai:                                            ; preds = %._crit_edge.i.i.i89
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gk, ptr align 1 %i.gf, i64 %i.gg, i1 false)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %._crit_edge.i.i.i89
  %i.gm = load i64, ptr %i.d, align 8, !tbaa !40  ; 2 uses
  store i64 %i.gm, ptr %i.fs, align 8, !tbaa !14
  %i.gn = load ptr, ptr %11, align 8, !tbaa !18
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gm
  store i8 0, ptr %i.go, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  %i.gp = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 noundef signext 9, i64 noundef 0) #28 ; 7 uses
  %i.gq = icmp eq i64 %i.gp, -1
  br i1 %i.gq, label %._crit_edge.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gr = load ptr, ptr %11, align 8, !tbaa !18   ; 4 uses
  %i.gs = load i64, ptr %i.fs, align 8, !tbaa !14 ; 8 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gs
  %.not5.i.i.i.i = icmp samesign eq i64 %i.gs, 0
  br i1 %.not5.i.i.i.i, label %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit.thread.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.ak
  %min.iters.check = icmp ult i64 %i.gs, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader266, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.gs, -4                      ; 3 uses
  %i.gu = getelementptr i8, ptr %i.gr, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ha, %vector.body ]
  %vec.phi262 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.hb, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.gr, i64 %index ; 2 uses
  %i.gv = getelementptr i8, ptr %next.gep, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep, align 1, !tbaa !17
  %wide.load263 = load <2 x i8>, ptr %i.gv, align 1, !tbaa !17
  %i.gw = icmp eq <2 x i8> %wide.load, splat (i8 9)
  %i.gx = icmp eq <2 x i8> %wide.load263, splat (i8 9)
  %i.gy = zext <2 x i1> %i.gw to <2 x i64>
  %i.gz = zext <2 x i1> %i.gx to <2 x i64>
  %i.ha = add <2 x i64> %vec.phi, %i.gy           ; 2 uses
  %i.hb = add <2 x i64> %vec.phi262, %i.gz        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hc = icmp eq i64 %index.next, %n.vec
  br i1 %i.hc, label %middle.block, label %vector.body, !llvm.loop !222

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.hb, %i.ha
  %i.hd = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.gs, %n.vec
  br i1 %cmp.n, label %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit.i.i, label %.lr.ph.i.i.i.i.preheader266

.lr.ph.i.i.i.i.preheader266:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.07.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %i.hd, %middle.block ]
  %.sroa.03.06.i.i.i.i.ph = phi ptr [ %i.gr, %.lr.ph.i.i.i.i.preheader ], [ %i.gu, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader266, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader266 ]
  %.sroa.03.06.i.i.i.i = phi ptr [ %i.hh, %.lr.ph.i.i.i.i ], [ %.sroa.03.06.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader266 ] ; 2 uses
  %i.he = load i8, ptr %.sroa.03.06.i.i.i.i, align 1, !tbaa !17
  %i.hf = icmp eq i8 %i.he, 9
  %i.hg = zext i1 %i.hf to i64
  %spec.select.i.i.i.i = add nuw nsw i64 %.07.i.i.i.i, %i.hg ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.hh, %i.gt
  br i1 %.not.i.i.i.i, label %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !225

_ZSt5countIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %middle.block
  %spec.select.i.i.i.i.lcssa = phi i64 [ %i.hd, %middle.block ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.hi = icmp samesign ugt i64 %spec.select.i.i.i.i.lcssa, 1
  br i1 %i.hi, label %bb.al, label %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit.thread.i.i

bb.al:                                            ; preds = %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc27.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.noexc27.i:                                       ; preds = %bb.al
  invoke void @_ZNSt11logic_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %.noexc27.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost15program_options5errorE, i64 16), ptr %4, align 8, !tbaa !8
  invoke void @_ZN5boost15throw_exceptionINS_15program_options5errorEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %4) #31
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %bb.am
  unreachable

bb.ao:                                            ; preds = %.noexc27.i
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %bb.am
  %i.hk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11logic_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #28
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn.i.i = phi { ptr, i32 } [ %i.hk, %bb.ap ], [ %i.hj, %bb.ao ]
  %i.hl = load ptr, ptr %5, align 8, !tbaa !18    ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.hn = icmp eq ptr %i.hl, %i.hm
  br i1 %i.hn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24.i: ; preds = %bb.aq
  %i.ho = load i64, ptr %i.hm, align 8, !tbaa !17
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.hp) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25.i: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %.body.i

_ZSt5countIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit.thread.i.i: ; preds = %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit.i.i, %bb.ak
  %i.hq = icmp ugt i64 %i.gp, %i.gs
  br i1 %i.hq, label %bb.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i

bb.ar:                                            ; preds = %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit.thread.i.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.14, i64 noundef %i.gp, i64 noundef %i.gs) #31
          to label %.noexc28.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.noexc28.i:                                       ; preds = %bb.ar
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i: ; preds = %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit.thread.i.i
  %i.hr = icmp ne i64 %i.gs, %i.gp
  %spec.select.i.i54.i.i = zext i1 %i.hr to i64
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.gp, i64 noundef %spec.select.i.i54.i.i)
          to label %.noexc29.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc29.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i
  %.not.i.i90 = icmp ult i64 %i.gp, %i.ft
  %i.hs = trunc i64 %i.gp to i32
  %i.ht = select i1 %.not.i.i90, i32 %i.hs, i32 0
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc29.i, %bb.aj
  %.040.i.i = phi i32 [ %i.ht, %.noexc29.i ], [ 0, %bb.aj ]
  %i.hu = load i64, ptr %i.fs, align 8, !tbaa !14 ; 4 uses
  %i.hv = icmp ult i64 %i.hu, %i.ft
  %i.hw = load ptr, ptr %11, align 8, !tbaa !18   ; 3 uses
  br i1 %i.hv, label %bb.as, label %bb.at

bb.as:                                            ; preds = %._crit_edge.i.i
  %i.hx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.hw, i64 noundef %i.hu)
          to label %_ZN5boost15program_options12_GLOBAL__N_116format_paragraphERSoNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjj.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ; 0 uses

bb.at:                                            ; preds = %._crit_edge.i.i
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.hu ; 5 uses
  %.not122.i.i = icmp eq i64 %i.hu, 0
  br i1 %.not122.i.i, label %_ZN5boost15program_options12_GLOBAL__N_116format_paragraphERSoNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjj.exit.i, label %.lr.ph121.i.i

.lr.ph121.i.i:                                    ; preds = %bb.at
  %i.hz = ptrtoint ptr %i.hy to i64
  br label %bb.au

bb.au:                                            ; preds = %.loopexit.i.i, %.lr.ph121.i.i
  %.037120.i.i = phi i32 [ %2, %.lr.ph121.i.i ], [ %.1.i.i, %.loopexit.i.i ]
  %.038119.i.i = phi i32 [ %.reass.i, %.lr.ph121.i.i ], [ %.139.i.i, %.loopexit.i.i ] ; 3 uses
  %.045118.i.i = phi i1 [ true, %.lr.ph121.i.i ], [ false, %.loopexit.i.i ] ; 2 uses
  %.sroa.077.0117.i.i = phi ptr [ %i.hw, %.lr.ph121.i.i ], [ %.sroa.065.1.i.i, %.loopexit.i.i ] ; 6 uses
  br i1 %.045118.i.i, label %.critedge.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ia = load i8, ptr %.sroa.077.0117.i.i, align 1, !tbaa !17
  %i.ib = icmp eq i8 %i.ia, 32
  br i1 %i.ib, label %bb.aw, label %.critedge.i.i

bb.aw:                                            ; preds = %bb.av
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.077.0117.i.i, i64 1 ; 3 uses
  %i.id = icmp ult ptr %i.ic, %i.hy
  br i1 %i.id, label %bb.ax, label %.critedge.i.i

bb.ax:                                            ; preds = %bb.aw
  %i.ie = load i8, ptr %i.ic, align 1, !tbaa !17
  %.not50.i.i = icmp eq i8 %i.ie, 32
  %spec.select.i.i = select i1 %.not50.i.i, ptr %.sroa.077.0117.i.i, ptr %i.ic
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.ax, %bb.aw, %bb.av, %bb.au
  %.sroa.077.1.i.i = phi ptr [ %.sroa.077.0117.i.i, %bb.au ], [ %spec.select.i.i, %bb.ax ], [ %.sroa.077.0117.i.i, %bb.av ], [ %.sroa.077.0117.i.i, %bb.aw ] ; 4 uses
  %i.if = ptrtoint ptr %.sroa.077.1.i.i to i64    ; 5 uses
  %i.ig = sub i64 %i.hz, %i.if
  %i.ih = trunc i64 %i.ig to i32
  %i.ii = call i32 @llvm.umin.i32(i32 %.038119.i.i, i32 %i.ih)
  %i.ij = zext i32 %i.ii to i64                   ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.077.1.i.i, i64 %i.ij ; 11 uses
  %i.il = getelementptr inbounds i8, ptr %i.ik, i64 -1
  %i.im = load i8, ptr %i.il, align 1, !tbaa !17
  %.not51.i.i = icmp ne i8 %i.im, 32
  %i.in = icmp ult ptr %i.ik, %i.hy
  %or.cond.i.i = and i1 %.not51.i.i, %i.in
  br i1 %or.cond.i.i, label %bb.ay, label %.critedge2.i.i

bb.ay:                                            ; preds = %.critedge.i.i
  %i.io = load i8, ptr %i.ik, align 1, !tbaa !17
  %.not52.i.i = icmp eq i8 %i.io, 32
  br i1 %.not52.i.i, label %.critedge2.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ip = ptrtoint ptr %i.ik to i64               ; 4 uses
  %i.iq = lshr i64 %i.ij, 2                       ; 3 uses
  %.not93.i.i = icmp eq i64 %i.iq, 0
  br i1 %.not93.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %bb.az
  %18 = and i64 %i.ij, 4294967292
  %19 = sub i64 %i.ip, %18
  %i.ir = mul nsw i64 %i.iq, -4
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.ik, i64 %i.ir
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bg, %.lr.ph.i.preheader.i.i.i.i
  %i.is = phi ptr [ %i.jg, %bb.bg ], [ %i.ik, %.lr.ph.i.preheader.i.i.i.i ] ; 6 uses
  %i.it = phi i64 [ %i.jm, %bb.bg ], [ %i.ip, %.lr.ph.i.preheader.i.i.i.i ] ; 2 uses
  %.031.i.i.i.i.i = phi i64 [ %i.jk, %bb.bg ], [ %i.iq, %.lr.ph.i.preheader.i.i.i.i ] ; 2 uses
  %i.iu = inttoptr i64 %i.it to ptr
  %i.iv = getelementptr inbounds i8, ptr %i.iu, i64 -1
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !17, !noalias !226
  %i.ix = icmp eq i8 %i.iw, 32
  br i1 %i.ix, label %_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEcET_SD_SD_RKT0_.exit.i.i, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.iy = getelementptr inbounds i8, ptr %i.is, i64 -2
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !17, !noalias !226
  %i.ja = icmp eq i8 %i.iz, 32
  br i1 %i.ja, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.jb = getelementptr inbounds i8, ptr %i.is, i64 -1
  %.cast.i.i.i.i.i = ptrtoint ptr %i.jb to i64
  br label %_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEcET_SD_SD_RKT0_.exit.i.i

bb.bc:                                            ; preds = %bb.ba
  %i.jc = getelementptr inbounds i8, ptr %i.is, i64 -3
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !17, !noalias !226
  %i.je = icmp eq i8 %i.jd, 32
  br i1 %i.je, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.jf = getelementptr inbounds i8, ptr %i.is, i64 -2
  %.cast17.i.i.i.i.i = ptrtoint ptr %i.jf to i64
  br label %_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEcET_SD_SD_RKT0_.exit.i.i

bb.be:                                            ; preds = %bb.bc
  %i.jg = getelementptr inbounds i8, ptr %i.is, i64 -4 ; 3 uses
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !17, !noalias !226
  %i.ji = icmp eq i8 %i.jh, 32
  br i1 %i.ji, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.jj = getelementptr inbounds i8, ptr %i.is, i64 -3
  %.cast18.i.i.i.i.i = ptrtoint ptr %i.jj to i64
  br label %_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEcET_SD_SD_RKT0_.exit.i.i

bb.bg:                                            ; preds = %bb.be
  %i.jk = add nsw i64 %.031.i.i.i.i.i, -1
  %i.jl = icmp sgt i64 %.031.i.i.i.i.i, 1
  %i.jm = ptrtoint ptr %i.jg to i64
  br i1 %i.jl, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !233

._crit_edge.i.i.i.i.i:                            ; preds = %bb.bg, %bb.az
  %i.jn = phi i64 [ %i.ip, %bb.az ], [ %19, %bb.bg ] ; 5 uses
  %i.jo = phi ptr [ %i.ik, %bb.az ], [ %scevgep.i.i.i.i, %bb.bg ] ; 2 uses
  %i.jp = sub i64 %i.jn, %i.if
  switch i64 %i.jp, label %_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEcET_SD_SD_RKT0_.exit.i.i [
    i64 3, label %bb.bh
    i64 2, label %._crit_edge.i._crit_edge.i.i.i.i
    i64 1, label %._crit_edge.i._crit_edge36.i.i.i.i
  ]

bb.bh:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.jq = inttoptr i64 %i.jn to ptr
  %i.jr = getelementptr inbounds i8, ptr %i.jq, i64 -1
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !17, !noalias !226
  %i.jt = icmp eq i8 %i.js, 32
  br i1 %i.jt, label %_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEcET_SD_SD_RKT0_.exit.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ju = getelementptr inbounds i8, ptr %i.jo, i64 -1 ; 2 uses
  %i.jv = ptrtoint ptr %i.ju to i64
  br label %._crit_edge.i._crit_edge.i.i.i.i

._crit_edge.i._crit_edge.i.i.i.i:                 ; preds = %bb.bi, %._crit_edge.i.i.i.i.i
  %i.jw = phi ptr [ %i.ju, %bb.bi ], [ %i.jo, %._crit_edge.i.i.i.i.i ]
  %i.jx = phi i64 [ %i.jv, %bb.bi ], [ %i.jn, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.jy = inttoptr i64 %i.jx to ptr
  %i.jz = getelementptr inbounds i8, ptr %i.jy, i64 -1
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !17, !noalias !226
  %i.kb = icmp eq i8 %i.ka, 32
  br i1 %i.kb, label %_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEcET_SD_SD_RKT0_.exit.i.i, label %bb.bj

bb.bj:                                            ; preds = %._crit_edge.i._crit_edge.i.i.i.i
  %i.kc = getelementptr inbounds i8, ptr %i.jw, i64 -1
  %i.kd = ptrtoint ptr %i.kc to i64
  br label %._crit_edge.i._crit_edge36.i.i.i.i

._crit_edge.i._crit_edge36.i.i.i.i:               ; preds = %bb.bj, %._crit_edge.i.i.i.i.i
  %i.ke = phi i64 [ %i.kd, %bb.bj ], [ %i.jn, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.kf = inttoptr i64 %i.ke to ptr
  %i.kg = getelementptr inbounds i8, ptr %i.kf, i64 -1
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !17, !noalias !226
  %i.ki = icmp eq i8 %i.kh, 32
  %spec.select.i.i55.i.i = select i1 %i.ki, i64 %i.ke, i64 %i.if
  br label %_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEcET_SD_SD_RKT0_.exit.i.i

_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEcET_SD_SD_RKT0_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %._crit_edge.i._crit_edge36.i.i.i.i, %._crit_edge.i._crit_edge.i.i.i.i, %bb.bh, %._crit_edge.i.i.i.i.i, %bb.bf, %bb.bd, %bb.bb
  %.sink.i.i.i.i.i = phi i64 [ %spec.select.i.i55.i.i, %._crit_edge.i._crit_edge36.i.i.i.i ], [ %i.jx, %._crit_edge.i._crit_edge.i.i.i.i ], [ %i.jn, %bb.bh ], [ %i.if, %._crit_edge.i.i.i.i.i ], [ %.cast18.i.i.i.i.i, %bb.bf ], [ %.cast17.i.i.i.i.i, %bb.bd ], [ %.cast.i.i.i.i.i, %bb.bb ], [ %i.it, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.kj = inttoptr i64 %.sink.i.i.i.i.i to ptr    ; 2 uses
  %.not94.i.i = icmp eq ptr %.sroa.077.1.i.i, %i.kj
  br i1 %.not94.i.i, label %.critedge2.i.i, label %bb.bk

bb.bk:                                            ; preds = %_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEcET_SD_SD_RKT0_.exit.i.i
  %i.kk = sub i64 %i.ip, %.sink.i.i.i.i.i
  %i.kl = trunc i64 %i.kk to i32
  %i.km = lshr i32 %.038119.i.i, 1
  %i.kn = icmp ugt i32 %i.km, %i.kl
  %spec.select92.i.i = select i1 %i.kn, ptr %i.kj, ptr %i.ik
  br label %.critedge2.i.i

.critedge2.i.i:                                   ; preds = %bb.bk, %_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEcET_SD_SD_RKT0_.exit.i.i, %bb.ay, %.critedge.i.i
  %.sroa.065.1.i.i = phi ptr [ %i.ik, %_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEcET_SD_SD_RKT0_.exit.i.i ], [ %i.ik, %bb.ay ], [ %i.ik, %.critedge.i.i ], [ %spec.select92.i.i, %bb.bk ] ; 4 uses
  %i.ko = ptrtoint ptr %.sroa.065.1.i.i to i64
  %i.kp = sub i64 %i.ko, %i.if                    ; 2 uses
  %i.kq = icmp sgt i64 %i.kp, 0
  br i1 %i.kq, label %.lr.ph.i.us.i.i, label %.noexc31.i

.lr.ph.i.us.i.i:                                  ; preds = %.critedge2.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i.us.i.i
  %.07.i.us.i.i = phi i64 [ %i.lb, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i.us.i.i ], [ %i.kp, %.critedge2.i.i ] ; 2 uses
  %.056.i.us.i.i = phi ptr [ %i.la, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i.us.i.i ], [ %.sroa.077.1.i.i, %.critedge2.i.i ] ; 2 uses
  %i.kr = load i8, ptr %.056.i.us.i.i, align 1, !tbaa !17, !noalias !234 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !234
  store i8 %i.kr, ptr %i.a, align 1, !tbaa !17, !noalias !234
  %i.ks = load ptr, ptr %0, align 8, !tbaa !8, !noalias !234
  %i.kt = getelementptr i8, ptr %i.ks, i64 -24
  %i.ku = load i64, ptr %i.kt, align 8, !noalias !234
  %i.kv = getelementptr inbounds i8, ptr %0, i64 %i.ku
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !171, !noalias !234
  %.not.i.i.i.us.i.i = icmp eq i64 %i.kx, 0
  br i1 %.not.i.i.i.us.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph.i.us.i.i
  %i.ky = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i.us.i.i unwind label %.loopexit.split-lp.loopexit.i ; 0 uses

bb.bm:                                            ; preds = %.lr.ph.i.us.i.i
  %i.kz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.kr)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i.us.i.i unwind label %.loopexit.split-lp.loopexit.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i.us.i.i: ; preds = %bb.bm, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !234
  %i.la = getelementptr inbounds nuw i8, ptr %.056.i.us.i.i, i64 1
  %i.lb = add nsw i64 %.07.i.us.i.i, -1
  %i.lc = icmp sgt i64 %.07.i.us.i.i, 1
  br i1 %i.lc, label %.lr.ph.i.us.i.i, label %.noexc31.i, !llvm.loop !239

.noexc31.i:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i.us.i.i, %.critedge2.i.i
  %i.ld = select i1 %.045118.i.i, i32 %.040.i.i, i32 0 ; 2 uses
  %.139.i.i = sub i32 %.038119.i.i, %i.ld
  %.1.i.i = add i32 %i.ld, %.037120.i.i           ; 3 uses
  %.not95.i.i = icmp eq ptr %.sroa.065.1.i.i, %i.hy
  br i1 %.not95.i.i, label %.loopexit.i.i, label %bb.bn

bb.bn:                                            ; preds = %.noexc31.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 10, ptr %i.c, align 1, !tbaa !17
  %i.le = load ptr, ptr %0, align 8, !tbaa !8
  %i.lf = getelementptr i8, ptr %i.le, i64 -24
  %i.lg = load i64, ptr %i.lf, align 8
  %i.lh = getelementptr inbounds i8, ptr %0, i64 %i.lg
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !171
  %.not.i.i.i = icmp eq i64 %i.lj, 0
  br i1 %.not.i.i.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.lk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i ; 0 uses

bb.bp:                                            ; preds = %bb.bn
  %i.ll = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i: ; preds = %bb.bp, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not53115.i.i = icmp eq i32 %.1.i.i, 0
  br i1 %.not53115.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i, %.noexc34.i
  %.0116.i.i = phi i32 [ %i.ln, %.noexc34.i ], [ %.1.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i ]
  %i.lm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 32)
          to label %.noexc34.i unwind label %.loopexit.i ; 0 uses

.noexc34.i:                                       ; preds = %.lr.ph.i.i
  %i.ln = add i32 %.0116.i.i, -1                  ; 2 uses
  %.not53.i.i = icmp eq i32 %i.ln, 0
  br i1 %.not53.i.i, label %.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !240

.loopexit.i.i:                                    ; preds = %.noexc34.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i.i, %.noexc31.i
  %i.lo = icmp ult ptr %.sroa.065.1.i.i, %i.hy
  br i1 %i.lo, label %bb.au, label %_ZN5boost15program_options12_GLOBAL__N_116format_paragraphERSoNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjj.exit.i, !llvm.loop !241

_ZN5boost15program_options12_GLOBAL__N_116format_paragraphERSoNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjj.exit.i: ; preds = %.loopexit.i.i, %bb.at, %bb.as
  %i.lp = load ptr, ptr %11, align 8, !tbaa !18   ; 2 uses
  %i.lq = icmp eq ptr %i.lp, %i.fq
  br i1 %i.lq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN5boost15program_options12_GLOBAL__N_116format_paragraphERSoNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjj.exit.i
  %i.lr = load i64, ptr %i.fq, align 8, !tbaa !17
  %i.ls = add i64 %i.lr, 1
  call void @_ZdlPvm(ptr noundef %i.lp, i64 noundef %i.ls) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN5boost15program_options12_GLOBAL__N_116format_paragraphERSoNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjj.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.fo, align 8, !tbaa !221
  %i.lt = invoke noundef zeroext i1 @_ZN5boost14char_separatorIcSt11char_traitsIcEEclIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcS2_SaIcEEEEESC_EEbRT_SE_RT0_(ptr noundef nonnull align 8 dereferenceable(136) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.fm, ptr %.sroa.0.0.copyload.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.fp)
          to label %bb.bq unwind label %bb.by     ; 2 uses

bb.bq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.lu = zext i1 %i.lt to i8                     ; 2 uses
  store i8 %i.lu, ptr %i.fk, align 8, !tbaa !214
  %i.lv = load i8, ptr %i.fj, align 8, !tbaa !214, !range !219, !noundef !220 ; 2 uses
  %i.lw = trunc nuw i8 %i.lv to i1
  %or.cond.i.i.i36.i = and i1 %i.lt, %i.lw
  br i1 %or.cond.i.i.i36.i, label %bb.br, label %.split177.i

bb.br:                                            ; preds = %bb.bq
  %i.lx = load ptr, ptr %i.fl, align 8, !tbaa !221
  %i.ly = load ptr, ptr %i.fm, align 8, !tbaa !221
  %i.lz = icmp eq ptr %i.lx, %i.ly
  br i1 %i.lz, label %bb.bs, label %.thread68.i

.split177.i:                                      ; preds = %bb.bq
  %i.ma = icmp eq i8 %i.lv, %i.lu
  br i1 %i.ma, label %.loopexit72.i, label %.thread68.i

bb.bs:                                            ; preds = %bb.br
  %i.mb = load ptr, ptr %i.fn, align 8, !tbaa !221
  %i.mc = load ptr, ptr %i.fo, align 8, !tbaa !221
  %i.md = icmp eq ptr %i.mb, %i.mc
  br i1 %i.md, label %.loopexit72.i, label %.thread68.i

.thread68.i:                                      ; preds = %bb.bs, %.split177.i, %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 10, ptr %i.b, align 1, !tbaa !17
  %i.me = load ptr, ptr %0, align 8, !tbaa !8
  %i.mf = getelementptr i8, ptr %i.me, i64 -24
  %i.mg = load i64, ptr %i.mf, align 8
  %i.mh = getelementptr inbounds i8, ptr %0, i64 %i.mg
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !171
  %.not.i38.i = icmp eq i64 %i.mj, 0
  br i1 %.not.i38.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %.thread68.i
  %i.mk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i unwind label %bb.by ; 0 uses

bb.bu:                                            ; preds = %.thread68.i
  %i.ml = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i unwind label %bb.by ; 0 uses

end_hunk_0
