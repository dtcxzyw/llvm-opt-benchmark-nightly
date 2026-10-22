Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/AutoTune?download=true
inline.NumInlined: 1284
inline.NumDeleted: 549
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK5faiss14ParameterSpace7exploreEPNS_5IndexEmPKfRKNS_17AutoTuneCriterionEPNS_15OperatingPointsE:bb.a
  %i.ey = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.ac

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170
  %.not.i.i.i = icmp eq ptr %.sroa.0253.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ez = ptrtoint ptr %.sroa.11.0 to i64
  %i.fa = ptrtoint ptr %.sroa.0253.0 to i64
  %i.fb = sub i64 %i.ez, %i.fa
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0253.0, i64 noundef %i.fb) #36
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.z, %bb.aa
  %.not.i.i.i177 = icmp eq ptr %.sroa.0259.0, null
  br i1 %.not.i.i.i177, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.fc = ptrtoint ptr %.sroa.11264.0 to i64
  %i.fd = ptrtoint ptr %.sroa.0259.0 to i64
  %i.fe = sub i64 %i.fc, %i.fd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0259.0, i64 noundef %i.fe) #36
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.ab
  %i.ff = add nuw i64 %.099351, 1                 ; 2 uses
  %exitcond407.not = icmp eq i64 %i.ff, %.05.lcssa.i460463
  br i1 %exitcond407.not, label %.loopexit, label %bb.k, !llvm.loop !377

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, %bb.y, %bb.v
  %.pn152.pn.pn.pn = phi { ptr, i32 } [ %.pn149, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176 ], [ %i.ey, %bb.y ], [ %i.er, %bb.v ] ; 2 uses
  %.not.i.i.i178 = icmp eq ptr %.sroa.0253.0, null
  br i1 %.not.i.i.i178, label %_ZNSt6vectorIfSaIfEED2Ev.exit179, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fg = ptrtoint ptr %.sroa.11.0 to i64
  %i.fh = ptrtoint ptr %.sroa.0253.0 to i64
  %i.fi = sub i64 %i.fg, %i.fh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0253.0, i64 noundef %i.fi) #36
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit179

_ZNSt6vectorIfSaIfEED2Ev.exit179:                 ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.ad, %bb.ac
  %.pn152.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn152.pn.pn.pn, %bb.ad ], [ %.pn152.pn.pn.pn, %bb.ac ], [ %lpad.loopexit.split-lp557, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i180 = icmp eq ptr %.sroa.0259.0, null
  br i1 %.not.i.i.i180, label %_ZNSt6vectorIlSaIlEED2Ev.exit181, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit179
  %i.fj = ptrtoint ptr %.sroa.11264.0 to i64
  %i.fk = ptrtoint ptr %.sroa.0259.0 to i64
  %i.fl = sub i64 %i.fj, %i.fk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0259.0, i64 noundef %i.fl) #36
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit181

bb.af:                                            ; preds = %_ZNK5faiss14ParameterSpace14n_combinationsEv.exit
  %i.fm = sext i32 %i.bl to i64
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.lcssa607, i64 %i.fm) ; 2 uses
  %i.fn = icmp eq i64 %.lcssa607, 1
  %i.fo = icmp ugt i64 %spec.select, 2
  %or.cond = or i1 %i.fn, %i.fo
  br i1 %or.cond, label %bb.ao, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.fp = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.fp, ptr %9, align 8, !tbaa !42
  %i.fq = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 0, ptr %i.fq, align 8, !tbaa !44
  store i8 0, ptr %i.fp, align 8, !tbaa !45
  %i.fr = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.55) #17 ; 2 uses
  %i.fs = icmp sgt i32 %i.fr, 0
  br i1 %i.fs, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.ft = zext nneg i32 %i.fr to i64              ; 2 uses
  %i.fu = add nuw nsw i64 %i.ft, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.fu)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fv = load ptr, ptr %9, align 8, !tbaa !46
  %i.fw = load i64, ptr %i.fq, align 8, !tbaa !44
  %i.fx = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.fv, i64 noundef %i.fw, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.55) #17 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.ft)
          to label %bb.ak unwind label %bb.aj

bb.aj:                                            ; preds = %bb.al, %bb.ai, %bb.ah
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.ak:                                            ; preds = %bb.ai, %bb.ag
  %i.fz = call ptr @__cxa_allocate_exception(i64 40) #17 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.fz, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss14ParameterSpace7exploreEPNS_5IndexEmPKfRKNS_17AutoTuneCriterionEPNS_15OperatingPointsE, ptr noundef nonnull @.str.2, i32 noundef 787)
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %bb.ak
  invoke void @__cxa_throw(ptr nonnull %i.fz, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #35
          to label %bb.by unwind label %bb.aj

bb.am:                                            ; preds = %bb.ak
  %i.ga = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fz) #17
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.aj
  %.pn133 = phi { ptr, i32 } [ %i.fy, %bb.aj ], [ %i.ga, %bb.am ]
  %i.gb = load ptr, ptr %9, align 8, !tbaa !46    ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.fp
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182: ; preds = %bb.an
  %i.gd = load i64, ptr %i.fp, align 8, !tbaa !45
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.ge) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit181

bb.ao:                                            ; preds = %bb.af
  %i.gf = icmp ugt i64 %.lcssa607, 2305843009213693951
  br i1 %i.gf, label %.noexc188, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc188:                                        ; preds = %bb.ao
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.62) #35
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNK5faiss14ParameterSpace14n_combinationsEv.exit.thread, %bb.ao
  %.05.lcssa.i459467473 = phi i64 [ %.lcssa607, %bb.ao ], [ 1, %_ZNK5faiss14ParameterSpace14n_combinationsEv.exit.thread ] ; 8 uses
  %spec.select468472 = phi i64 [ %spec.select, %bb.ao ], [ 1, %_ZNK5faiss14ParameterSpace14n_combinationsEv.exit.thread ] ; 2 uses
  %.not.i.i.i.i185 = icmp ne i64 %.05.lcssa.i459467473, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i185)
  %i.gg = shl nuw nsw i64 %.05.lcssa.i459467473, 2 ; 3 uses
  %i.gh = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gg) #37 ; 9 uses
  store i32 0, ptr %i.gh, align 4, !tbaa !145
  %i.gi = add nsw i64 %.05.lcssa.i459467473, -1   ; 2 uses
  %i.gj = icmp eq i64 %i.gi, 0
  br i1 %i.gj, label %.loopexit309, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.gk = getelementptr i8, ptr %i.gh, i64 4      ; 2 uses
  %.idx.i.i.i.i.i.i.i186 = shl nuw nsw i64 %i.gi, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.gk, i8 0, i64 %.idx.i.i.i.i.i.i.i186, i1 false), !tbaa !145
  store i32 0, ptr %i.gh, align 4, !tbaa !145
  %i.gl = trunc i64 %.05.lcssa.i459467473 to i32
  %i.gm = add i32 %i.gl, -1
  store i32 %i.gm, ptr %i.gk, align 4, !tbaa !145
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.go = add nsw i64 %.05.lcssa.i459467473, -2
  invoke void @_ZN5faiss9rand_permEPiml(ptr noundef nonnull %i.gn, i64 noundef %i.go, i64 noundef 1234)
          to label %.preheader308 unwind label %.loopexit.split-lp294.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader308:                                    ; preds = %bb.ap
  %i.gp = icmp samesign ugt i64 %.05.lcssa.i459467473, 2
  br i1 %i.gp, label %.lr.ph.preheader, label %.loopexit309

.lr.ph.preheader:                                 ; preds = %.preheader308
  %i.gq = add nsw i64 %.05.lcssa.i459467473, -2   ; 3 uses
  %min.iters.check = icmp ult i64 %i.gq, 8
  br i1 %min.iters.check, label %.lr.ph.preheader606, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.gq, -8                      ; 3 uses
  %i.gr = or disjoint i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %index ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 24 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.gt, align 4, !tbaa !145
  %wide.load556 = load <4 x i32>, ptr %i.gu, align 4, !tbaa !145
  %i.gv = add nsw <4 x i32> %wide.load, splat (i32 1)
  %i.gw = add nsw <4 x i32> %wide.load556, splat (i32 1)
  store <4 x i32> %i.gv, ptr %i.gt, align 4, !tbaa !145
  store <4 x i32> %i.gw, ptr %i.gu, align 4, !tbaa !145
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gx = icmp eq i64 %index.next, %n.vec
  br i1 %i.gx, label %middle.block, label %vector.body, !llvm.loop !378

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gq, %n.vec
  br i1 %cmp.n, label %.loopexit309, label %.lr.ph.preheader606

.lr.ph.preheader606:                              ; preds = %.lr.ph.preheader, %middle.block
  %.096342.ph = phi i64 [ 2, %.lr.ph.preheader ], [ %i.gr, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader606, %.lr.ph
  %.096342 = phi i64 [ %i.hb, %.lr.ph ], [ %.096342.ph, %.lr.ph.preheader606 ] ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %.096342 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !145
  %i.ha = add nsw i32 %i.gz, 1
  store i32 %i.ha, ptr %i.gy, align 4, !tbaa !145
  %i.hb = add nuw nsw i64 %.096342, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.hb, %.05.lcssa.i459467473
  br i1 %exitcond.not, label %.loopexit309, label %.lr.ph, !llvm.loop !379

.loopexit309:                                     ; preds = %.lr.ph, %middle.block, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, %.preheader308
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.hf = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.hg = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.hh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.hp = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  br label %bb.aq

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.gh, i64 noundef %i.gg) #36
  br label %.loopexit

bb.aq:                                            ; preds = %.loopexit309, %bb.bv
  %.095350 = phi i64 [ 0, %.loopexit309 ], [ %i.pp, %bb.bv ] ; 3 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %.095350
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !145
  %i.hs = sext i32 %i.hr to i64                   ; 7 uses
  %i.ht = load i32, ptr %i.hc, align 8, !tbaa !94
  %.not = icmp eq i32 %i.ht, 0
  br i1 %.not, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  invoke void @_ZNK5faiss14ParameterSpace16combination_nameB5cxx11Em(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %i.hs)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.hu = load ptr, ptr %10, align 8, !tbaa !46
  %i.hv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.56, i64 noundef %.095350, i64 noundef %spec.select468472, i64 noundef %i.hs, ptr noundef %i.hu) ; 0 uses
  %i.hw = load ptr, ptr %10, align 8, !tbaa !46   ; 2 uses
  %i.hx = icmp eq ptr %i.hw, %i.hd
  br i1 %i.hx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191: ; preds = %bb.as
  %i.hy = load i64, ptr %i.hd, align 8, !tbaa !45
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef %i.hw, i64 noundef %i.hz) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.ia = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit235

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, %bb.aq
  %i.ib = load ptr, ptr %i.he, align 8, !tbaa !151 ; 2 uses
  %i.ic = load ptr, ptr %5, align 8, !tbaa !150   ; 3 uses
  %.not353 = icmp eq ptr %i.ib, %i.ic
  br i1 %.not353, label %._crit_edge, label %.lr.ph346

.lr.ph346:                                        ; preds = %bb.au
  %i.id = ptrtoint ptr %i.ib to i64
  %i.ie = ptrtoint ptr %i.ic to i64
  %i.if = sub i64 %i.id, %i.ie
  %i.ig = sdiv exact i64 %i.if, 56
  %i.ih = load ptr, ptr %i.x, align 8, !tbaa !73  ; 2 uses
  %i.ii = load ptr, ptr %i.w, align 8, !tbaa !88  ; 4 uses
  %i.ij = icmp eq ptr %i.ih, %i.ii                ; 2 uses
  %i.ik = ptrtoint ptr %i.ih to i64
  %i.il = ptrtoint ptr %i.ii to i64
  %i.im = sub i64 %i.ik, %i.il
  %i.in = sdiv exact i64 %i.im, 56                ; 2 uses
  br label %bb.aw

._crit_edge:                                      ; preds = %_ZNK5faiss14ParameterSpace13update_boundsEmRKNS_14OperatingPointEPdS4_.exit, %bb.au
  %.0266.lcssa = phi double [ 0.000000e+00, %bb.au ], [ %.1267, %_ZNK5faiss14ParameterSpace13update_boundsEmRKNS_14OperatingPointEPdS4_.exit ] ; 3 uses
  %.0.lcssa = phi double [ 1.000000e+00, %bb.au ], [ %.1, %_ZNK5faiss14ParameterSpace13update_boundsEmRKNS_14OperatingPointEPdS4_.exit ] ; 3 uses
  %i.io = load ptr, ptr %i.hf, align 8, !tbaa !157 ; 2 uses
  %i.ip = getelementptr inbounds i8, ptr %i.io, i64 -56
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !155
  %i.ir = fcmp ogt double %.0.lcssa, %i.iq
  br i1 %i.ir, label %_ZNK5faiss15OperatingPoints10t_for_perfEd.exit, label %bb.av

bb.av:                                            ; preds = %._crit_edge
  %i.is = load ptr, ptr %i.hg, align 8, !tbaa !150 ; 3 uses
  %i.it = ptrtoint ptr %i.io to i64
  %i.iu = ptrtoint ptr %i.is to i64
  %i.iv = sub i64 %i.it, %i.iu
  %i.iw = sdiv exact i64 %i.iv, 56
  %i.ix = trunc i64 %i.iw to i32                  ; 2 uses
  %i.iy = add nsw i32 %i.ix, -1                   ; 2 uses
  %i.iz = icmp sgt i32 %i.ix, 1
  br i1 %i.iz, label %.lr.ph.i194, label %._crit_edge.i

.lr.ph.i194:                                      ; preds = %bb.av, %.lr.ph.i194
  %.020.i = phi i32 [ %.0..i, %.lr.ph.i194 ], [ %i.iy, %bb.av ] ; 2 uses
  %.01519.i = phi i32 [ %..015.i, %.lr.ph.i194 ], [ -1, %bb.av ] ; 2 uses
  %i.ja = add i32 %.020.i, 1
  %i.jb = add i32 %i.ja, %.01519.i
  %i.jc = lshr i32 %i.jb, 1                       ; 3 uses
  %i.jd = zext nneg i32 %i.jc to i64
  %i.je = getelementptr inbounds nuw [56 x i8], ptr %i.is, i64 %i.jd
  %i.jf = load double, ptr %i.je, align 8, !tbaa !155
  %i.jg = fcmp olt double %i.jf, %.0.lcssa        ; 2 uses
  %..015.i = select i1 %i.jg, i32 %i.jc, i32 %.01519.i ; 2 uses
  %.0..i = select i1 %i.jg, i32 %.020.i, i32 %i.jc ; 3 uses
  %i.jh = add nsw i32 %..015.i, 1
  %i.ji = icmp slt i32 %i.jh, %.0..i
  br i1 %i.ji, label %.lr.ph.i194, label %._crit_edge.i, !llvm.loop !3

._crit_edge.i:                                    ; preds = %.lr.ph.i194, %bb.av
  %.0.lcssa.i = phi i32 [ %i.iy, %bb.av ], [ %.0..i, %.lr.ph.i194 ]
  %i.jj = sext i32 %.0.lcssa.i to i64
  %i.jk = getelementptr inbounds nuw [56 x i8], ptr %i.is, i64 %i.jj
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !156
  br label %_ZNK5faiss15OperatingPoints10t_for_perfEd.exit

_ZNK5faiss15OperatingPoints10t_for_perfEd.exit:   ; preds = %._crit_edge, %._crit_edge.i
  %.017.i = phi double [ %i.jm, %._crit_edge.i ], [ 1.000000e+50, %._crit_edge ] ; 2 uses
  %i.jn = load i32, ptr %i.hc, align 8, !tbaa !94
  %.not135 = icmp eq i32 %i.jn, 0
  br i1 %.not135, label %bb.bc, label %bb.bb

bb.aw:                                            ; preds = %.lr.ph346, %_ZNK5faiss14ParameterSpace13update_boundsEmRKNS_14OperatingPointEPdS4_.exit
  %.094345 = phi i64 [ 0, %.lr.ph346 ], [ %i.ky, %_ZNK5faiss14ParameterSpace13update_boundsEmRKNS_14OperatingPointEPdS4_.exit ] ; 2 uses
  %.0344 = phi double [ 1.000000e+00, %.lr.ph346 ], [ %.1, %_ZNK5faiss14ParameterSpace13update_boundsEmRKNS_14OperatingPointEPdS4_.exit ] ; 3 uses
  %.0266343 = phi double [ 0.000000e+00, %.lr.ph346 ], [ %.1267, %_ZNK5faiss14ParameterSpace13update_boundsEmRKNS_14OperatingPointEPdS4_.exit ] ; 3 uses
  %i.jo = getelementptr inbounds nuw [56 x i8], ptr %i.ic, i64 %.094345 ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 48
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !153 ; 2 uses
  br i1 %i.ij, label %.loopexit24.i, label %.lr.ph.i.i195

.lr.ph.i.i195:                                    ; preds = %bb.aw, %bb.ax
  %.01625.i.i = phi i64 [ %i.ke, %bb.ax ], [ 0, %bb.aw ] ; 2 uses
  %.01724.i.i = phi i64 [ %i.kd, %bb.ax ], [ %i.jq, %bb.aw ] ; 2 uses
  %.01923.i.i = phi i64 [ %i.kb, %bb.ax ], [ %i.hs, %bb.aw ] ; 2 uses
  %i.jr = getelementptr inbounds nuw [56 x i8], ptr %i.ii, i64 %.01625.i.i ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 32
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 40
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !76
  %i.jv = load ptr, ptr %i.js, align 8, !tbaa !80
  %i.jw = ptrtoint ptr %i.ju to i64
  %i.jx = ptrtoint ptr %i.jv to i64
  %i.jy = sub i64 %i.jw, %i.jx
  %i.jz = ashr exact i64 %i.jy, 3                 ; 4 uses
  %i.ka = urem i64 %.01923.i.i, %i.jz
  %i.kb = udiv i64 %.01923.i.i, %i.jz
  %i.kc = urem i64 %.01724.i.i, %i.jz
  %i.kd = udiv i64 %.01724.i.i, %i.jz
  %.not.not.not.i.i = icmp ult i64 %i.ka, %i.kc
  br i1 %.not.not.not.i.i, label %_ZNK5faiss14ParameterSpace14combination_geEmm.exit.i, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i.i195
  %i.ke = add nuw i64 %.01625.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ke, %i.in
  br i1 %exitcond.not.i.i, label %.loopexit24.i, label %.lr.ph.i.i195, !llvm.loop !5

.loopexit24.i:                                    ; preds = %bb.ax, %bb.aw
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.kg = load double, ptr %i.kf, align 8, !tbaa !156 ; 2 uses
  %i.kh = fcmp ogt double %i.kg, %.0266343
  br i1 %i.kh, label %bb.ay, label %_ZNK5faiss14ParameterSpace14combination_geEmm.exit.i

bb.ay:                                            ; preds = %.loopexit24.i
  br label %_ZNK5faiss14ParameterSpace14combination_geEmm.exit.i

_ZNK5faiss14ParameterSpace14combination_geEmm.exit.i: ; preds = %.lr.ph.i.i195, %bb.ay, %.loopexit24.i
  %.1267 = phi double [ %i.kg, %bb.ay ], [ %.0266343, %.loopexit24.i ], [ %.0266343, %.lr.ph.i.i195 ] ; 2 uses
  br i1 %i.ij, label %.loopexit.i, label %.lr.ph.i14.i

.lr.ph.i14.i:                                     ; preds = %_ZNK5faiss14ParameterSpace14combination_geEmm.exit.i, %bb.az
  %.01625.i15.i = phi i64 [ %i.kv, %bb.az ], [ 0, %_ZNK5faiss14ParameterSpace14combination_geEmm.exit.i ] ; 2 uses
  %.01724.i16.i = phi i64 [ %i.ku, %bb.az ], [ %i.hs, %_ZNK5faiss14ParameterSpace14combination_geEmm.exit.i ] ; 2 uses
  %.01923.i17.i = phi i64 [ %i.ks, %bb.az ], [ %i.jq, %_ZNK5faiss14ParameterSpace14combination_geEmm.exit.i ] ; 2 uses
  %i.ki = getelementptr inbounds nuw [56 x i8], ptr %i.ii, i64 %.01625.i15.i ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 32
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ki, i64 40
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !76
  %i.km = load ptr, ptr %i.kj, align 8, !tbaa !80
  %i.kn = ptrtoint ptr %i.kl to i64
  %i.ko = ptrtoint ptr %i.km to i64
  %i.kp = sub i64 %i.kn, %i.ko
  %i.kq = ashr exact i64 %i.kp, 3                 ; 4 uses
  %i.kr = urem i64 %.01923.i17.i, %i.kq
  %i.ks = udiv i64 %.01923.i17.i, %i.kq
  %i.kt = urem i64 %.01724.i16.i, %i.kq
  %i.ku = udiv i64 %.01724.i16.i, %i.kq
  %.not.not.not.i18.i = icmp ult i64 %i.kr, %i.kt
  br i1 %.not.not.not.i18.i, label %_ZNK5faiss14ParameterSpace13update_boundsEmRKNS_14OperatingPointEPdS4_.exit, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i14.i
  %i.kv = add nuw i64 %.01625.i15.i, 1            ; 2 uses
end_hunk_0
