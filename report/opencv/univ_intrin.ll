Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/univ_intrin?download=true
inline.NumInlined: 247
inline.NumDeleted: 79
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@main:bb.a

_ZN12_GLOBAL__N_18conv_seqEN2cv3MatERS1_S1_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph63.us.i
  %lcmp.mod396.not = icmp eq i64 %xtraiter394, 0
  br i1 %lcmp.mod396.not, label %_ZN12_GLOBAL__N_18conv_seqEN2cv3MatERS1_S1_.exit, label %.lr.ph63.us.i.epil.preheader

.lr.ph63.us.i.epil.preheader:                     ; preds = %_ZN12_GLOBAL__N_18conv_seqEN2cv3MatERS1_S1_.exit.loopexit.unr-lcssa, %.lr.ph63.us.preheader.i
  %indvars.iv90.i.epil.init = phi i64 [ 0, %.lr.ph63.us.preheader.i ], [ %indvars.iv.next91.i.3, %_ZN12_GLOBAL__N_18conv_seqEN2cv3MatERS1_S1_.exit.loopexit.unr-lcssa ]
  %lcmp.mod397 = icmp ne i64 %xtraiter394, 0
  call void @llvm.assume(i1 %lcmp.mod397)
  br label %.lr.ph63.us.i.epil

.lr.ph63.us.i.epil:                               ; preds = %.lr.ph63.us.i.epil, %.lr.ph63.us.i.epil.preheader
  %indvars.iv90.i.epil = phi i64 [ %indvars.iv90.i.epil.init, %.lr.ph63.us.i.epil.preheader ], [ %indvars.iv.next91.i.epil, %.lr.ph63.us.i.epil ] ; 2 uses
  %epil.iter395 = phi i64 [ 0, %.lr.ph63.us.i.epil.preheader ], [ %epil.iter395.next, %.lr.ph63.us.i.epil ]
  %i.oa = load ptr, ptr %i.lb, align 8, !tbaa !29
  %i.ob = load i64, ptr %i.lc, align 8, !tbaa !68
  %i.oc = mul i64 %i.ob, %indvars.iv90.i.epil
  %i.od = getelementptr inbounds nuw i8, ptr %i.oa, i64 %i.oc
  call void @llvm.memset.p0.i64(ptr align 1 %i.od, i8 0, i64 %i.lp, i1 false), !tbaa !30
  %indvars.iv.next91.i.epil = add nuw nsw i64 %indvars.iv90.i.epil, 1
  %epil.iter395.next = add i64 %epil.iter395, 1   ; 2 uses
  %epil.iter395.cmp.not = icmp eq i64 %epil.iter395.next, %xtraiter394
  br i1 %epil.iter395.cmp.not, label %_ZN12_GLOBAL__N_18conv_seqEN2cv3MatERS1_S1_.exit, label %.lr.ph63.us.i.epil, !llvm.loop !80

_ZN12_GLOBAL__N_18conv_seqEN2cv3MatERS1_S1_.exit: ; preds = %._crit_edge64.split.i, %_ZN12_GLOBAL__N_18conv_seqEN2cv3MatERS1_S1_.exit.loopexit.unr-lcssa, %.lr.ph63.us.i.epil, %.lr.ph67.i, %.noexc167
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %47) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %46) #14
  %i.oe = invoke noundef i64 @_ZN2cv12getTickCountEv()
          to label %bb.bq unwind label %bb.bg

bb.bq:                                            ; preds = %_ZN12_GLOBAL__N_18conv_seqEN2cv3MatERS1_S1_.exit
  %i.of = invoke noundef double @_ZN2cv16getTickFrequencyEv()
          to label %bb.br unwind label %bb.bg

bb.br:                                            ; preds = %bb.bq
  %i.og = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.8, i64 noundef 44)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit171 unwind label %bb.bg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit171: ; preds = %bb.br
  %i.oh = sitofp i64 %i.oe to double
  %i.oi = fsub double %i.oh, %i.km
  %i.oj = fdiv double %i.oi, %i.of
  %i.ok = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.oj)
          to label %_ZNSolsEd.exit173 unwind label %bb.bg ; 4 uses

_ZNSolsEd.exit173:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit171
  %i.ol = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ok, ptr noundef nonnull @.str.1, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit175 unwind label %bb.bg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit175: ; preds = %_ZNSolsEd.exit173
  %i.om = load ptr, ptr %i.ok, align 8, !tbaa !38
  %i.on = getelementptr i8, ptr %i.om, i64 -24
  %i.oo = load i64, ptr %i.on, align 8
  %i.op = getelementptr inbounds i8, ptr %i.ok, i64 %i.oo
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 240
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !40 ; 6 uses
  %.not.i.i.i258 = icmp eq ptr %i.or, null
  br i1 %.not.i.i.i258, label %.invoke370, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i259

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i259: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit175
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 56
  %i.ot = load i8, ptr %i.os, align 8, !tbaa !56
  %.not.i1.i.i260 = icmp eq i8 %i.ot, 0
  br i1 %.not.i1.i.i260, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i259
  %i.ou = getelementptr inbounds nuw i8, ptr %i.or, i64 67
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !30
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i261

bb.bt:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i259
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.or)
          to label %.noexc264 unwind label %bb.bg

.noexc264:                                        ; preds = %bb.bt
  %i.ow = load ptr, ptr %i.or, align 8, !tbaa !38
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 48
  %i.oy = load ptr, ptr %i.ox, align 8
  %i.oz = invoke noundef signext i8 %i.oy(ptr noundef nonnull align 8 dereferenceable(570) %i.or, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i261 unwind label %bb.bg, !inline_history !62

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i261: ; preds = %.noexc264, %bb.bs
  %.0.i.i.i262 = phi i8 [ %i.ov, %bb.bs ], [ %i.oz, %.noexc264 ]
  %i.pa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ok, i8 noundef signext %.0.i.i.i262)
          to label %.noexc266 unwind label %bb.bg

.noexc266:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i261
  %i.pb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.pa)
          to label %_ZNSolsEPFRSoS_E.exit177 unwind label %bb.bg ; 0 uses

_ZNSolsEPFRSoS_E.exit177:                         ; preds = %.noexc266
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #14
  %i.pc = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 6 uses
  store ptr %i.pc, ptr %48, align 8, !tbaa !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.pc, ptr noundef nonnull align 1 dereferenceable(6) @.str.7, i64 6, i1 false)
  %i.pd = getelementptr inbounds nuw i8, ptr %48, i64 8
  store i64 6, ptr %i.pd, align 8, !tbaa !71
  %i.pe = getelementptr inbounds nuw i8, ptr %48, i64 22
  store i8 0, ptr %i.pe, align 2, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #14
  %i.pf = getelementptr inbounds nuw i8, ptr %49, i64 16
  store i32 0, ptr %i.pf, align 8, !tbaa !27
  %i.pg = getelementptr inbounds nuw i8, ptr %49, i64 20
  store i32 0, ptr %i.pg, align 4, !tbaa !28
  store i32 16842752, ptr %49, align 8, !tbaa !12
  %i.ph = getelementptr inbounds nuw i8, ptr %49, i64 8
  store ptr %36, ptr %i.ph, align 8, !tbaa !16
  invoke void @_ZN2cv6imshowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(32) %48, ptr noundef nonnull align 8 dereferenceable(24) %49)
          to label %bb.bu unwind label %bb.de

bb.bu:                                            ; preds = %_ZNSolsEPFRSoS_E.exit177
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #14
  %i.pi = load ptr, ptr %48, align 8, !tbaa !69   ; 2 uses
  %i.pj = icmp eq ptr %i.pi, %i.pc
  br i1 %i.pj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182: ; preds = %bb.bu
  %i.pk = load i64, ptr %i.pc, align 8, !tbaa !30
  %i.pl = add i64 %i.pk, 1
  call void @_ZdlPvm(ptr noundef %i.pi, i64 noundef %i.pl) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #14
  %i.pm = invoke noundef i32 @_ZN2cv7waitKeyEi(i32 noundef 0)
          to label %bb.bv unwind label %bb.bg     ; 0 uses

bb.bv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184
  %i.pn = invoke noundef i64 @_ZN2cv12getTickCountEv()
          to label %bb.bw unwind label %bb.bg

bb.bw:                                            ; preds = %bb.bv
  %i.po = sitofp i64 %i.pn to double
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %50, ptr noundef nonnull align 8 dereferenceable(208) %35)
          to label %bb.bx unwind label %bb.bg

bb.bx:                                            ; preds = %bb.bw
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %51, ptr noundef nonnull align 8 dereferenceable(208) %38)
          to label %bb.by unwind label %bb.df

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.pp = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.pq = load i32, ptr %i.pp, align 8, !tbaa !74 ; 5 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %50, i64 12
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !19 ; 15 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.pu = load i32, ptr %i.pt, align 8, !tbaa !74 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef %i.pq, i32 noundef %i.ps, i32 noundef 5)
          to label %.noexc191 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc191:                                        ; preds = %bb.by
  %i.pv = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %37, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.bz unwind label %bb.cm     ; 0 uses

bb.bz:                                            ; preds = %.noexc191
  %i.pw = sdiv i32 %i.pu, 2                       ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.px = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.px, align 8, !tbaa !27
  %i.py = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 0, ptr %i.py, align 4, !tbaa !28
  store i32 16842752, ptr %3, align 8, !tbaa !12
  %i.pz = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %50, ptr %i.pz, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.qa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.qb = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.qb, align 8
  store i32 33619968, ptr %4, align 8, !tbaa !12
  store ptr %50, ptr %i.qa, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv14copyMakeBorderERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.pw, i32 noundef %i.pw, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc192 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc192:                                        ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %i.qc = icmp sgt i32 %i.pq, 0
  br i1 %i.qc, label %.preheader54.lr.ph.i, label %._crit_edge.i185

.preheader54.lr.ph.i:                             ; preds = %.noexc192
  %i.qd = icmp sgt i32 %i.pu, 0
  %i.qe = getelementptr inbounds nuw i8, ptr %37, i64 24 ; 6 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %37, i64 128 ; 6 uses
  %i.qg = icmp sgt i32 %i.ps, 0
  br i1 %i.qd, label %.preheader54.lr.ph.split.us.i, label %._crit_edge.i185

.preheader54.lr.ph.split.us.i:                    ; preds = %.preheader54.lr.ph.i
  %i.qh = icmp sgt i32 %i.ps, 4
  br i1 %i.qh, label %.preheader54.us.us.preheader.i, label %.preheader54.lr.ph.split.us.split.i

.preheader54.us.us.preheader.i:                   ; preds = %.preheader54.lr.ph.split.us.i
  %i.qi = zext nneg i32 %i.ps to i64              ; 2 uses
  %i.qj = add nsw i32 %i.ps, -5                   ; 2 uses
  %i.qk = and i32 %i.qj, 2147483644
  %narrow.i = add nuw nsw i32 %i.qk, 4
  %i.ql = and i32 %i.qj, -4                       ; 3 uses
  %i.qm = add nuw nsw i32 %i.ql, 4
  %i.qn = zext nneg i32 %i.qm to i64              ; 3 uses
  %wide.trip.count117.i = zext nneg i32 %i.pq to i64 ; 2 uses
  %i.qo = icmp samesign ult i32 %narrow.i, %i.ps
  br i1 %i.qo, label %.preheader54.us.us.i.us.preheader, label %.preheader54.us.us.i

.preheader54.us.us.i.us.preheader:                ; preds = %.preheader54.us.us.preheader.i
  %i.qp = add nsw i64 %i.qi, -5                   ; 2 uses
  %i.qq = lshr i64 %i.qp, 2                       ; 2 uses
  %i.qr = add nuw nsw i64 %i.qq, 1                ; 2 uses
  %i.qs = icmp eq i64 %i.qq, 0
  %unroll_iter404 = and i64 %i.qr, 9223372036854775806
  %i.qt = and i64 %i.qp, 4
  %lcmp.mod402.not.not = icmp eq i64 %i.qt, 0
  %lcmp.mod403 = trunc i64 %i.qr to i1
  %i.qu = add i32 %i.ql, 5
  %i.qv = call i32 @llvm.smax.i32(i32 %i.ps, i32 %i.qu)
  %i.qw = add nsw i32 %i.qv, -5
  %i.qx = sub i32 %i.qw, %i.ql                    ; 2 uses
  %i.qy = zext i32 %i.qx to i64
  %i.qz = add nuw nsw i64 %i.qy, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.qx, 7
  %n.vec = and i64 %i.qz, 8589934584              ; 3 uses
  %i.ra = add nuw nsw i64 %n.vec, %i.qn
  %cmp.n = icmp eq i64 %i.qz, %n.vec
  br label %.preheader54.us.us.i.us

.preheader54.us.us.i.us:                          ; preds = %.preheader54.us.us.i.us.preheader, %._crit_edge60.split.us.us.us.i.split.us.us
  %indvars.iv114.i.us = phi i64 [ %indvars.iv.next115.i.us, %._crit_edge60.split.us.us.us.i.split.us.us ], [ 0, %.preheader54.us.us.i.us.preheader ] ; 6 uses
  %i.rb = trunc nuw nsw i64 %indvars.iv114.i.us to i32
  br label %bb.ca

bb.ca:                                            ; preds = %._crit_edge.us.us.us.i.loopexit.us.us, %.preheader54.us.us.i.us
  %.03858.us.us.us.i.us.us = phi i32 [ 0, %.preheader54.us.us.i.us ], [ %i.sx, %._crit_edge.us.us.us.i.loopexit.us.us ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400020) %i.a, i8 0, i64 400020, i1 false)
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %50)
          to label %.noexc193.us.us unwind label %.loopexit.split.us.split.us

.noexc193.us.us:                                  ; preds = %bb.ca
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %51)
          to label %bb.cb unwind label %.split.us.split.us.split.us.i.split.us.split.us

bb.cb:                                            ; preds = %.noexc193.us.us
  %i.rc = add nuw nsw i32 %.03858.us.us.us.i.us.us, %i.rb
  invoke fastcc void @_ZN12_GLOBAL__N_110conv1dsimdEN2cv3MatES1_Pfiii(ptr noundef align 8 %6, ptr noundef align 8 %7, ptr noundef %i.a, i32 noundef %i.rc, i32 noundef %.03858.us.us.us.i.us.us, i32 noundef %i.ps)
          to label %.lr.ph.us.us.us.i.us.us unwind label %.split62.us.split.us.split.us.i.split.us.split.us

.lr.ph.us.us.us.i.us.us:                          ; preds = %bb.cb
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #14
  br i1 %i.qs, label %.epil.preheader, label %.lr.ph.us.us.us.i.us.us.new

.lr.ph.us.us.us.i.us.us.new:                      ; preds = %.lr.ph.us.us.us.i.us.us, %.lr.ph.us.us.us.i.us.us.new
  %indvars.iv105.i.us.us = phi i64 [ %indvars.iv.next106.i.us.us.1, %.lr.ph.us.us.us.i.us.us.new ], [ 0, %.lr.ph.us.us.us.i.us.us ] ; 4 uses
  %niter405 = phi i64 [ %niter405.next.1, %.lr.ph.us.us.us.i.us.us.new ], [ 0, %.lr.ph.us.us.us.i.us.us ]
  %i.rd = load ptr, ptr %i.qe, align 8, !tbaa !29
  %i.re = load i64, ptr %i.qf, align 8, !tbaa !68
  %i.rf = mul i64 %i.re, %indvars.iv114.i.us
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rd, i64 %i.rf
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %indvars.iv105.i.us.us ; 2 uses
  %i.ri = load <4 x float>, ptr %i.rh, align 1, !tbaa !30
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv105.i.us.us
  %i.rk = load <4 x float>, ptr %i.rj, align 16, !tbaa !30
  %i.rl = fadd <4 x float> %i.ri, %i.rk
  store <4 x float> %i.rl, ptr %i.rh, align 1, !tbaa !30
  %indvars.iv.next106.i.us.us = or disjoint i64 %indvars.iv105.i.us.us, 4 ; 2 uses
  %i.rm = load ptr, ptr %i.qe, align 8, !tbaa !29
  %i.rn = load i64, ptr %i.qf, align 8, !tbaa !68
  %i.ro = mul i64 %i.rn, %indvars.iv114.i.us
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rm, i64 %i.ro
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.rp, i64 %indvars.iv.next106.i.us.us ; 2 uses
  %i.rr = load <4 x float>, ptr %i.rq, align 1, !tbaa !30
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next106.i.us.us
  %i.rt = load <4 x float>, ptr %i.rs, align 16, !tbaa !30
  %i.ru = fadd <4 x float> %i.rr, %i.rt
  store <4 x float> %i.ru, ptr %i.rq, align 1, !tbaa !30
  %indvars.iv.next106.i.us.us.1 = add nuw nsw i64 %indvars.iv105.i.us.us, 8 ; 2 uses
  %niter405.next.1 = add i64 %niter405, 2         ; 2 uses
  %niter405.ncmp.1.not = icmp eq i64 %niter405.next.1, %unroll_iter404
  br i1 %niter405.ncmp.1.not, label %..preheader_crit_edge.us.us.us.i.us.us.unr-lcssa, label %.lr.ph.us.us.us.i.us.us.new, !llvm.loop !81

..preheader_crit_edge.us.us.us.i.us.us.unr-lcssa: ; preds = %.lr.ph.us.us.us.i.us.us.new
  br i1 %lcmp.mod402.not.not, label %.epil.preheader, label %..preheader_crit_edge.us.us.us.i.us.us

.epil.preheader:                                  ; preds = %..preheader_crit_edge.us.us.us.i.us.us.unr-lcssa, %.lr.ph.us.us.us.i.us.us
  %indvars.iv105.i.us.us.epil.init = phi i64 [ 0, %.lr.ph.us.us.us.i.us.us ], [ %indvars.iv.next106.i.us.us.1, %..preheader_crit_edge.us.us.us.i.us.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod403)
  %i.rv = load ptr, ptr %i.qe, align 8, !tbaa !29
  %i.rw = load i64, ptr %i.qf, align 8, !tbaa !68
  %i.rx = mul i64 %i.rw, %indvars.iv114.i.us
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rv, i64 %i.rx
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.ry, i64 %indvars.iv105.i.us.us.epil.init ; 2 uses
  %i.sa = load <4 x float>, ptr %i.rz, align 1, !tbaa !30
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv105.i.us.us.epil.init
  %i.sc = load <4 x float>, ptr %i.sb, align 16, !tbaa !30
  %i.sd = fadd <4 x float> %i.sa, %i.sc
  store <4 x float> %i.sd, ptr %i.rz, align 1, !tbaa !30
  br label %..preheader_crit_edge.us.us.us.i.us.us

..preheader_crit_edge.us.us.us.i.us.us:           ; preds = %..preheader_crit_edge.us.us.us.i.us.us.unr-lcssa, %.epil.preheader
  %i.se = load ptr, ptr %i.qe, align 8, !tbaa !29
  %i.sf = load i64, ptr %i.qf, align 8, !tbaa !68
  %i.sg = mul i64 %i.sf, %indvars.iv114.i.us
  %i.sh = getelementptr inbounds nuw i8, ptr %i.se, i64 %i.sg ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %..preheader_crit_edge.us.us.us.i.us.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %..preheader_crit_edge.us.us.us.i.us.us ] ; 2 uses
  %i.si = add nuw i64 %index, %i.qn               ; 2 uses
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.si ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 16
  %wide.load = load <4 x float>, ptr %i.sj, align 16, !tbaa !33
  %wide.load378 = load <4 x float>, ptr %i.sk, align 16, !tbaa !33
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.sh, i64 %i.si ; 3 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 16 ; 2 uses
  %wide.load379 = load <4 x float>, ptr %i.sl, align 4, !tbaa !33
  %wide.load380 = load <4 x float>, ptr %i.sm, align 4, !tbaa !33
  %i.sn = fadd <4 x float> %wide.load, %wide.load379
  %i.so = fadd <4 x float> %wide.load378, %wide.load380
  store <4 x float> %i.sn, ptr %i.sl, align 4, !tbaa !33
  store <4 x float> %i.so, ptr %i.sm, align 4, !tbaa !33
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.sp = icmp eq i64 %index.next, %n.vec
  br i1 %i.sp, label %middle.block, label %vector.body, !llvm.loop !82

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us.i.loopexit.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %..preheader_crit_edge.us.us.us.i.us.us, %middle.block
  %indvars.iv110.i.us.us.ph = phi i64 [ %i.qn, %..preheader_crit_edge.us.us.us.i.us.us ], [ %i.ra, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv110.i.us.us = phi i64 [ %indvars.iv.next111.i.us.us, %scalar.ph ], [ %indvars.iv110.i.us.us.ph, %scalar.ph.preheader ] ; 3 uses
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv110.i.us.us
  %i.sr = load float, ptr %i.sq, align 4, !tbaa !33
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.sh, i64 %indvars.iv110.i.us.us ; 2 uses
  %i.st = load float, ptr %i.ss, align 4, !tbaa !33
  %i.su = fadd float %i.sr, %i.st
  store float %i.su, ptr %i.ss, align 4, !tbaa !33
  %indvars.iv.next111.i.us.us = add nuw nsw i64 %indvars.iv110.i.us.us, 1 ; 2 uses
  %i.sv = trunc nuw i64 %indvars.iv.next111.i.us.us to i32
  %i.sw = icmp sgt i32 %i.ps, %i.sv
  br i1 %i.sw, label %scalar.ph, label %._crit_edge.us.us.us.i.loopexit.us.us, !llvm.loop !85

._crit_edge.us.us.us.i.loopexit.us.us:            ; preds = %scalar.ph, %middle.block
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.sx = add nuw nsw i32 %.03858.us.us.us.i.us.us, 1 ; 2 uses
  %exitcond113.not.i.us.us = icmp eq i32 %i.sx, %i.pu
  br i1 %exitcond113.not.i.us.us, label %._crit_edge60.split.us.us.us.i.split.us.us, label %bb.ca, !llvm.loop !86

._crit_edge60.split.us.us.us.i.split.us.us:       ; preds = %._crit_edge.us.us.us.i.loopexit.us.us
  %indvars.iv.next115.i.us = add nuw nsw i64 %indvars.iv114.i.us, 1 ; 2 uses
  %exitcond118.not.i.us = icmp eq i64 %indvars.iv.next115.i.us, %wide.trip.count117.i
  br i1 %exitcond118.not.i.us, label %._crit_edge.i185, label %.preheader54.us.us.i.us, !llvm.loop !87

.loopexit.split.us.split.us:                      ; preds = %bb.ca
  %lpad.loopexit.us.us = landingpad { ptr, i32 }
          cleanup
  br label %.body197

.split.us.split.us.split.us.i.split.us.split.us:  ; preds = %.noexc193.us.us
  %i.sy = landingpad { ptr, i32 }
          cleanup
  br label %.split.i

.split62.us.split.us.split.us.i.split.us.split.us: ; preds = %bb.cb
  %i.sz = landingpad { ptr, i32 }
          cleanup
  br label %.split62.i

.preheader54.us.us.i:                             ; preds = %.preheader54.us.us.preheader.i, %._crit_edge60.split.us.us.us.i.split
  %indvars.iv114.i = phi i64 [ %indvars.iv.next115.i, %._crit_edge60.split.us.us.us.i.split ], [ 0, %.preheader54.us.us.preheader.i ] ; 3 uses
  %i.ta = trunc nuw nsw i64 %indvars.iv114.i to i32
  br label %bb.cc

bb.cc:                                            ; preds = %..preheader_crit_edge.us.us.us.i, %.preheader54.us.us.i
  %.03858.us.us.us.i = phi i32 [ 0, %.preheader54.us.us.i ], [ %i.tm, %..preheader_crit_edge.us.us.us.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400020) %i.a, i8 0, i64 400020, i1 false)
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %50)
          to label %.noexc193 unwind label %.loopexit.split

.noexc193:                                        ; preds = %bb.cc
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %51)
          to label %bb.cd unwind label %.split.us.split.us.split.us.i.split

bb.cd:                                            ; preds = %.noexc193
  %i.tb = add nuw nsw i32 %.03858.us.us.us.i, %i.ta
  invoke fastcc void @_ZN12_GLOBAL__N_110conv1dsimdEN2cv3MatES1_Pfiii(ptr noundef align 8 %6, ptr noundef align 8 %7, ptr noundef %i.a, i32 noundef %i.tb, i32 noundef %.03858.us.us.us.i, i32 noundef %i.ps)
          to label %.lr.ph.us.us.us.i unwind label %.split62.us.split.us.split.us.i.split

.lr.ph.us.us.us.i:                                ; preds = %bb.cd
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #14
  br label %bb.ce

bb.ce:                                            ; preds = %bb.ce, %.lr.ph.us.us.us.i
  %indvars.iv105.i = phi i64 [ %indvars.iv.next106.i, %bb.ce ], [ 0, %.lr.ph.us.us.us.i ] ; 3 uses
  %indvars.iv103.i = phi i64 [ %indvars.iv.next104.i, %bb.ce ], [ 4, %.lr.ph.us.us.us.i ]
  %i.tc = load ptr, ptr %i.qe, align 8, !tbaa !29
  %i.td = load i64, ptr %i.qf, align 8, !tbaa !68
  %i.te = mul i64 %i.td, %indvars.iv114.i
  %i.tf = getelementptr inbounds nuw i8, ptr %i.tc, i64 %i.te
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.tf, i64 %indvars.iv105.i ; 2 uses
  %i.th = load <4 x float>, ptr %i.tg, align 1, !tbaa !30
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv105.i
  %i.tj = load <4 x float>, ptr %i.ti, align 16, !tbaa !30
  %i.tk = fadd <4 x float> %i.th, %i.tj
  store <4 x float> %i.tk, ptr %i.tg, align 1, !tbaa !30
  %indvars.iv.next104.i = add nuw nsw i64 %indvars.iv103.i, 4 ; 2 uses
  %i.tl = icmp samesign ult i64 %indvars.iv.next104.i, %i.qi
  %indvars.iv.next106.i = add nuw nsw i64 %indvars.iv105.i, 4
  br i1 %i.tl, label %bb.ce, label %..preheader_crit_edge.us.us.us.i, !llvm.loop !81

..preheader_crit_edge.us.us.us.i:                 ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.tm = add nuw nsw i32 %.03858.us.us.us.i, 1   ; 2 uses
end_hunk_0
begin_hunk_1_@main:bb.a

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.by, %bb.bz, %._crit_edge.i185
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body197

.body197:                                         ; preds = %.loopexit.split.us.split.us, %.loopexit.split, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.cm, %.split.i
  %eh.lpad-body198 = phi { ptr, i32 } [ %.pn48.i, %.split.i ], [ %i.ux, %bb.cm ], [ %lpad.loopexit.us.us, %.loopexit.split.us.split.us ], [ %lpad.loopexit, %.loopexit.split ], [ %lpad.loopexit296, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit300, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %51) #14
  br label %bb.dg

bb.dg:                                            ; preds = %.body197, %bb.df
  %.pn72 = phi { ptr, i32 } [ %eh.lpad-body198, %.body197 ], [ %i.xv, %bb.df ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %50) #14
  br label %bb.di

bb.dh:                                            ; preds = %_ZNSolsEPFRSoS_E.exit208
  %i.xw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #14
  %i.xx = load ptr, ptr %52, align 8, !tbaa !69   ; 2 uses
  %i.xy = icmp eq ptr %i.xx, %i.wm
  br i1 %i.xy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228: ; preds = %bb.dh
  %i.xz = load i64, ptr %i.wm, align 8, !tbaa !30
  %i.ya = add i64 %i.xz, 1
  call void @_ZdlPvm(ptr noundef %i.xx, i64 noundef %i.ya) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230: ; preds = %bb.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #14
  br label %bb.di

_ZNSolsEPFRSoS_E.exit130:                         ; preds = %.noexc255, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215
  %.0 = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215 ], [ 1, %.noexc255 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %38) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %37) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %36) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %35) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  ret i32 %.0

bb.di:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, %bb.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, %bb.dd, %bb.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218, %bb.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133
  %.pn77 = phi { ptr, i32 } [ %i.jk, %bb.bg ], [ %i.xw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230 ], [ %.pn72, %bb.dg ], [ %i.xq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227 ], [ %.pn67, %bb.dd ], [ %.pn65, %bb.da ], [ %i.xh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224 ], [ %i.xc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221 ], [ %i.wx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218 ], [ %.pn55.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %38) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %37) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %36) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %35) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #14
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.bb, %bb.ay
  %.pn77.pn = phi { ptr, i32 } [ %.pn77, %bb.di ], [ %i.ja, %bb.ay ], [ %.pn53, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %bb.dk

bb.dk:                                            ; preds = %bb.au, %bb.ax, %bb.dj, %bb.at, %bb.as
  %.pn77.pn.pn.pn = phi { ptr, i32 } [ %i.iv, %bb.as ], [ %i.iw, %bb.at ], [ %.pn77.pn, %bb.dj ], [ %i.ix, %bb.au ], [ %.pn51, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #14
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.ar
  %.pn77.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn77.pn.pn.pn, %bb.dk ], [ %i.iu, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  resume { ptr, i32 } %.pn77.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #3

declare void @_ZN2cv3RNG4fillERKNS_17_InputOutputArrayEiRKNS_11_InputArrayES6_b(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef i64 @_ZN2cv12getTickCountEv() local_unnamed_addr #2

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #3

declare noundef double @_ZN2cv16getTickFrequencyEv() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc void @_ZN12_GLOBAL__N_110conv1dsimdEN2cv3MatES1_Pfiii(ptr noundef nonnull align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, ptr nofree noundef nonnull captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::Mat", align 8           ; 11 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 6 uses
  %8 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %9 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %10 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %11 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %i.a = icmp eq i32 %5, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.045 = phi i32 [ %i.c, %bb.b ], [ %5, %bb.a ]  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %6) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %7) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %i.e, align 8
  store i32 33619968, ptr %8, align 8, !tbaa !12
  store ptr %6, ptr %i.d, align 8, !tbaa !16
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %8, i32 noundef 5, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !19   ; 4 uses
  %i.h = sdiv i32 %i.g, 2                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 0, ptr %i.i, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 0, ptr %i.j, align 4, !tbaa !28
  store i32 16842752, ptr %9, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %6, ptr %i.k, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 0, ptr %i.m, align 8
  store i32 33619968, ptr %10, align 8, !tbaa !12
  store ptr %6, ptr %i.l, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv14copyMakeBorderERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef 0, i32 noundef 0, i32 noundef %i.h, i32 noundef %i.h, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !29   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.q = load i64, ptr %i.p, align 8, !tbaa !68
  %i.r = sext i32 %3 to i64
  %i.s = mul i64 %i.q, %i.r                       ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.s ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !29   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.x = load i64, ptr %i.w, align 8, !tbaa !68
  %i.y = sext i32 %4 to i64
  %i.z = mul i64 %i.x, %i.y                       ; 2 uses
  %i.aa = getelementptr i8, ptr %i.v, i64 %i.z    ; 3 uses
  %i.ab = icmp sgt i32 %i.g, 0
  br i1 %i.ab, label %.lr.ph69, label %._crit_edge70

.lr.ph69:                                         ; preds = %bb.e
  %i.ac = icmp sgt i32 %.045, 4
  br i1 %i.ac, label %.lr.ph.us.preheader, label %.lr.ph69.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph69
  %i.ad = zext nneg i32 %.045 to i64
  %i.ae = add nsw i32 %.045, -5                   ; 2 uses
  %i.af = and i32 %i.ae, 2147483644
  %narrow = add nuw nsw i32 %i.af, 4
  %i.ag = and i32 %i.ae, -4                       ; 5 uses
  %i.ah = add i32 %i.ag, 4
  %i.ai = zext i32 %i.ah to i64                   ; 4 uses
  %wide.trip.count91 = zext nneg i32 %i.g to i64  ; 2 uses
  %i.aj = icmp slt i32 %narrow, %.045
  %i.ak = shl nuw nsw i64 %i.ai, 2                ; 4 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.ak  ; 2 uses
  %i.al = add i32 %i.ag, 5
  %smax = call i32 @llvm.smax.i32(i32 %.045, i32 %i.al)
  %i.am = add nsw i32 %smax, -5
  %i.an = sub i32 %i.am, %i.ag
  %i.ao = zext i32 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 2                ; 2 uses
  %i.aq = getelementptr i8, ptr %2, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 %i.ak
  %scevgep98 = getelementptr i8, ptr %i.ar, i64 4 ; 2 uses
  %i.as = getelementptr i8, ptr %i.o, i64 %i.s
  %scevgep99 = getelementptr i8, ptr %i.as, i64 %i.ak
  %i.at = shl nuw nsw i64 %wide.trip.count91, 2   ; 2 uses
  %i.au = getelementptr i8, ptr %i.o, i64 %i.s
  %i.av = getelementptr i8, ptr %i.au, i64 %i.at
  %i.aw = getelementptr i8, ptr %i.av, i64 %i.ap
  %scevgep100 = getelementptr i8, ptr %i.aw, i64 %i.ak
  %i.ax = getelementptr i8, ptr %i.v, i64 %i.z
  %scevgep101 = getelementptr i8, ptr %i.ax, i64 %i.at
  %i.ay = add i32 %i.ag, 5
  %i.az = call i32 @llvm.smax.i32(i32 %.045, i32 %i.ay)
  %i.ba = add nsw i32 %i.az, -5
  %i.bb = sub i32 %i.ba, %i.ag                    ; 2 uses
  %i.bc = zext i32 %i.bb to i64
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bb, 7
  %bound0 = icmp ult ptr %scevgep, %scevgep100
  %bound1 = icmp ult ptr %scevgep99, %scevgep98
  %found.conflict = and i1 %bound0, %bound1
  %bound0102 = icmp ult ptr %scevgep, %scevgep101
  %bound1103 = icmp ult ptr %i.aa, %scevgep98
  %found.conflict104 = and i1 %bound0102, %bound1103
  %conflict.rdx = or i1 %found.conflict, %found.conflict104
  %n.vec = and i64 %i.bd, 8589934584              ; 3 uses
  %i.be = add nuw nsw i64 %n.vec, %i.ai
  %cmp.n = icmp eq i64 %i.bd, %n.vec
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv88 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next89, %._crit_edge.us ] ; 4 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv88 ; 3 uses
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !33
  %i.bh = insertelement <4 x float> poison, float %i.bg, i64 0
  %i.bi = shufflevector <4 x float> %i.bh, <4 x float> poison, <4 x i32> zeroinitializer
  %invariant.gep.us = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv88
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.us, %bb.f
  %indvars.iv80 = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next81, %bb.f ] ; 3 uses
  %indvars.iv78 = phi i64 [ 4, %.lr.ph.us ], [ %indvars.iv.next79, %bb.f ]
  %gep.us = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.us, i64 %indvars.iv80
  %i.bj = load <4 x float>, ptr %gep.us, align 1, !tbaa !30
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv80 ; 2 uses
  %i.bl = load <4 x float>, ptr %i.bk, align 1, !tbaa !30
  %i.bm = fmul <4 x float> %i.bi, %i.bj
  %i.bn = fadd <4 x float> %i.bl, %i.bm
  store <4 x float> %i.bn, ptr %i.bk, align 1, !tbaa !30
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 4 ; 2 uses
  %i.bo = icmp samesign ult i64 %indvars.iv.next79, %i.ad
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 4
  br i1 %i.bo, label %bb.f, label %..preheader_crit_edge.us, !llvm.loop !88

.lr.ph66.us:                                      ; preds = %.lr.ph66.us.preheader108, %.lr.ph66.us
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %.lr.ph66.us ], [ %indvars.iv85.ph, %.lr.ph66.us.preheader108 ] ; 3 uses
  %gep96 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep95, i64 %indvars.iv85
  %i.bp = load float, ptr %gep96, align 4, !tbaa !33
  %i.bq = load float, ptr %i.bf, align 4, !tbaa !33
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv85 ; 2 uses
  %i.bs = load float, ptr %i.br, align 4, !tbaa !33
  %i.bt = call float @llvm.fmuladd.f32(float %i.bp, float %i.bq, float %i.bs)
  store float %i.bt, ptr %i.br, align 4, !tbaa !33
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %i.bu = trunc nuw i64 %indvars.iv.next86 to i32
  %i.bv = icmp sgt i32 %.045, %i.bu
  br i1 %i.bv, label %.lr.ph66.us, label %._crit_edge.us, !llvm.loop !89

._crit_edge.us:                                   ; preds = %.lr.ph66.us, %middle.block, %..preheader_crit_edge.us
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %exitcond92.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count91
  br i1 %exitcond92.not, label %._crit_edge70, label %.lr.ph.us, !llvm.loop !90

..preheader_crit_edge.us:                         ; preds = %bb.f
  br i1 %i.aj, label %.lr.ph66.us.preheader, label %._crit_edge.us

.lr.ph66.us.preheader:                            ; preds = %..preheader_crit_edge.us
  %invariant.gep95 = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv88 ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %.lr.ph66.us.preheader108, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph66.us.preheader
  %i.bw = load float, ptr %i.bf, align 4, !tbaa !33, !alias.scope !91
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bw, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = add nuw i64 %index, %i.ai               ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep95, i64 %i.bx ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %wide.load = load <4 x float>, ptr %i.by, align 4, !tbaa !33, !alias.scope !94
  %wide.load105 = load <4 x float>, ptr %i.bz, align 4, !tbaa !33, !alias.scope !94
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bx ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 2 uses
  %wide.load106 = load <4 x float>, ptr %i.ca, align 4, !tbaa !33, !alias.scope !96, !noalias !98
  %wide.load107 = load <4 x float>, ptr %i.cb, align 4, !tbaa !33, !alias.scope !96, !noalias !98
  %i.cc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat, <4 x float> %wide.load106)
  %i.cd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load105, <4 x float> %broadcast.splat, <4 x float> %wide.load107)
  store <4 x float> %i.cc, ptr %i.ca, align 4, !tbaa !33, !alias.scope !96, !noalias !98
  store <4 x float> %i.cd, ptr %i.cb, align 4, !tbaa !33, !alias.scope !96, !noalias !98
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !99

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %.lr.ph66.us.preheader108

.lr.ph66.us.preheader108:                         ; preds = %.lr.ph66.us.preheader, %middle.block
  %indvars.iv85.ph = phi i64 [ %i.be, %middle.block ], [ %i.ai, %.lr.ph66.us.preheader ]
  br label %.lr.ph66.us

.lr.ph69.split:                                   ; preds = %.lr.ph69
  %i.cf = icmp sgt i32 %.045, 0
  br i1 %i.cf, label %.preheader.preheader, label %._crit_edge70

.preheader.preheader:                             ; preds = %.lr.ph69.split
  %wide.trip.count76 = zext nneg i32 %i.g to i64
  %exitcond.not = icmp eq i32 %.045, 1
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %exitcond.not.1 = icmp eq i32 %.045, 2
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %exitcond.not.2 = icmp eq i32 %.045, 3
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %.promoted = load float, ptr %2, align 4, !tbaa !33
  br label %.preheader

._crit_edge70:                                    ; preds = %._crit_edge, %._crit_edge.us, %.lr.ph69.split, %bb.e
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret void

bb.g:                                             ; preds = %bb.c
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %bb.l

bb.h:                                             ; preds = %bb.d
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  br label %bb.l

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.cl = phi float [ %.promoted, %.preheader.preheader ], [ %i.cp, %._crit_edge ]
  %indvars.iv73 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next74, %._crit_edge ] ; 3 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv73 ; 4 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv73 ; 4 uses
  %i.cn = load float, ptr %invariant.gep, align 4, !tbaa !33
  %i.co = load float, ptr %i.cm, align 4, !tbaa !33
  %i.cp = call float @llvm.fmuladd.f32(float %i.cn, float %i.co, float %i.cl) ; 2 uses
  store float %i.cp, ptr %2, align 4, !tbaa !33
  br i1 %exitcond.not, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %.preheader
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 4
  %i.cq = load float, ptr %gep.1, align 4, !tbaa !33
  %i.cr = load float, ptr %i.cm, align 4, !tbaa !33
  %i.cs = load float, ptr %i.cg, align 4, !tbaa !33
  %i.ct = call float @llvm.fmuladd.f32(float %i.cq, float %i.cr, float %i.cs)
  store float %i.ct, ptr %i.cg, align 4, !tbaa !33
  br i1 %exitcond.not.1, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 8
  %i.cu = load float, ptr %gep.2, align 4, !tbaa !33
  %i.cv = load float, ptr %i.cm, align 4, !tbaa !33
  %i.cw = load float, ptr %i.ch, align 4, !tbaa !33
  %i.cx = call float @llvm.fmuladd.f32(float %i.cu, float %i.cv, float %i.cw)
  store float %i.cx, ptr %i.ch, align 4, !tbaa !33
  br i1 %exitcond.not.2, label %._crit_edge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 12
  %i.cy = load float, ptr %gep.3, align 4, !tbaa !33
  %i.cz = load float, ptr %i.cm, align 4, !tbaa !33
  %i.da = load float, ptr %i.ci, align 4, !tbaa !33
  %i.db = call float @llvm.fmuladd.f32(float %i.cy, float %i.cz, float %i.da)
  store float %i.db, ptr %i.ci, align 4, !tbaa !33
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.k, %bb.j, %bb.i, %.preheader
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %exitcond77.not = icmp eq i64 %indvars.iv.next74, %wide.trip.count76
  br i1 %exitcond77.not, label %._crit_edge70, label %.preheader, !llvm.loop !90

bb.l:                                             ; preds = %bb.h, %bb.g
  %.pn54.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cj, %bb.g ], [ %i.ck, %bb.h ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  resume { ptr, i32 } %.pn54.pn.pn.pn.pn
}

declare void @_ZN2cv6imreadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !66
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.15) #15
  unreachable
end_hunk_1
