Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/VectorTransform?download=true
inline.NumInlined: 1138
inline.NumDeleted: 371
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN5faiss9PCAMatrix10prepare_AbEv:bb.a
          cleanup
  br label %bb.x

bb.u:                                             ; preds = %bb.s, %bb.q
  %i.dx = call ptr @__cxa_allocate_exception(i64 40) #22 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.dx, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss9PCAMatrix10prepare_AbEv, ptr noundef nonnull @.str.1, i32 noundef 832)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @__cxa_throw(ptr nonnull %i.dx, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #29
          to label %bb.bq unwind label %bb.t

bb.w:                                             ; preds = %bb.u
  %i.dy = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.dx) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t
  %.pn87 = phi { ptr, i32 } [ %i.dw, %bb.t ], [ %i.dy, %bb.w ]
  %i.dz = load ptr, ptr %2, align 8, !tbaa !13    ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.dn
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %bb.x
  %i.eb = load i64, ptr %i.dn, align 8, !tbaa !16
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ec) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit116

bb.y:                                             ; preds = %bb.p
  %i.ed = load ptr, ptr %i.ao, align 8, !tbaa !32 ; 7 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !49 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  %i.eg = load i32, ptr %i.h, align 8, !tbaa !43
  %i.eh = mul nsw i32 %i.eg, %i.dj                ; 2 uses
  %.not149 = icmp eq i32 %i.eh, 0
  br i1 %.not149, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit102, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ei = sext i32 %i.eh to i64
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 noundef %i.ei)
          to label %._ZNSt6vectorIfSaIfEE6resizeEm.exit102_crit_edge unwind label %bb.ae

._ZNSt6vectorIfSaIfEE6resizeEm.exit102_crit_edge: ; preds = %bb.z
  %.pre225 = load i32, ptr %i.dh, align 8, !tbaa !297
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit102

_ZNSt6vectorIfSaIfEE6resizeEm.exit102:            ; preds = %._ZNSt6vectorIfSaIfEE6resizeEm.exit102_crit_edge, %bb.y
  %i.ej = phi i32 [ %.pre225, %._ZNSt6vectorIfSaIfEE6resizeEm.exit102_crit_edge ], [ %i.di, %bb.y ] ; 3 uses
  %i.ek = sext i32 %i.ej to i64                   ; 3 uses
  %i.el = icmp slt i32 %i.ej, 0
  br i1 %i.el, label %bb.aa, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.aa:                                            ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit102
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #29
          to label %.noexc103 unwind label %bb.af

.noexc103:                                        ; preds = %bb.aa
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit102
  %.not.i.i.i.i = icmp eq i32 %i.ej, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.em = shl nuw nsw i64 %i.ek, 2
  %i.en = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.em) #28
          to label %.noexc104 unwind label %bb.af ; 5 uses

.noexc104:                                        ; preds = %bb.ab
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.ek ; 2 uses
  store float 0.000000e+00, ptr %i.en, align 4, !tbaa !33
  %i.ep = add nsw i64 %i.ek, -1                   ; 2 uses
  %i.eq = icmp eq i64 %i.ep, 0
  br i1 %i.eq, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc104
  %i.er = getelementptr i8, ptr %i.en, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ep, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.er, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !33
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc104, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0135.0 = phi ptr [ %i.en, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.en, %.noexc104 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 11 uses
  %.sroa.13.0 = phi ptr [ %i.eo, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.eo, %.noexc104 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.es = load i32, ptr %i.dh, align 8, !tbaa !297 ; 3 uses
  %i.et = sext i32 %i.es to i64                   ; 3 uses
  %i.eu = icmp slt i32 %i.es, 0
  br i1 %i.eu, label %bb.ac, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.ac:                                            ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #29
          to label %.noexc108 unwind label %bb.ag

.noexc108:                                        ; preds = %bb.ac
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %.not.i.i.i.i105 = icmp eq i32 %i.es, 0
  br i1 %.not.i.i.i.i105, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ev = shl nuw nsw i64 %i.et, 2
  %i.ew = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ev) #28
          to label %.noexc109 unwind label %bb.ag ; 5 uses

.noexc109:                                        ; preds = %bb.ad
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.et ; 2 uses
  store i32 0, ptr %i.ew, align 4, !tbaa !44
  %i.ey = add nsw i64 %i.et, -1                   ; 2 uses
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc109
  %i.fa = getelementptr i8, ptr %i.ew, i64 4
  %.idx.i.i.i.i.i.i.i106 = shl nuw nsw i64 %i.ey, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.fa, i8 0, i64 %.idx.i.i.i.i.i.i.i106, i1 false), !tbaa !44
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc109, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0130.0 = phi ptr [ %i.ew, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ew, %.noexc109 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 7 uses
  %.sroa.11.0 = phi ptr [ %i.ex, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ex, %.noexc109 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.fb = load i32, ptr %i.e, align 4, !tbaa !30
  %i.fc = icmp sgt i32 %i.fb, 0
  br i1 %i.fc, label %.preheader151.lr.ph, label %._crit_edge163

.preheader151.lr.ph:                              ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %.preheader151

.preheader151:                                    ; preds = %.preheader151.lr.ph, %._crit_edge
  %indvars.iv196 = phi i64 [ 0, %.preheader151.lr.ph ], [ %indvars.iv.next197, %._crit_edge ] ; 3 uses
  %i.fe = load i32, ptr %i.dh, align 8, !tbaa !297 ; 4 uses
  %i.ff = icmp sgt i32 %i.fe, 0
  br i1 %i.ff, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader151
  %wide.trip.count194 = zext nneg i32 %i.fe to i64 ; 2 uses
  %xtraiter281 = and i64 %wide.trip.count194, 1
  %i.fg = icmp eq i32 %i.fe, 1
  br i1 %i.fg, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter286 = and i64 %wide.trip.count194, 2147483646
  br label %.lr.ph

._crit_edge163:                                   ; preds = %._crit_edge, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fi = load i8, ptr %i.fh, align 8, !tbaa !68, !range !21, !noundef !22
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %bb.ao, label %bb.ap

bb.ae:                                            ; preds = %bb.z
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.af:                                            ; preds = %bb.ab, %bb.aa
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.ag:                                            ; preds = %bb.ad, %bb.ac
  %i.fm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0135.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fn = ptrtoint ptr %.sroa.13.0 to i64
  %i.fo = ptrtoint ptr %.sroa.0135.0 to i64
  %i.fp = sub i64 %i.fn, %i.fo
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0135.0, i64 noundef %i.fp) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.an
  %lcmp.mod283.not = icmp eq i64 %xtraiter281, 0
  br i1 %lcmp.mod283.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv191.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next192.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %.063160.epil.init = phi float [ 1.000000e+30, %.lr.ph.preheader ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ]
  %.064159.epil.init = phi i32 [ -1, %.lr.ph.preheader ], [ %.165.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod285 = trunc i32 %i.fe to i1
  tail call void @llvm.assume(i1 %lcmp.mod285)
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0130.0, i64 %indvars.iv191.epil.init
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !44
  %i.fs = icmp slt i32 %i.fr, %i.dl
  br i1 %i.fs, label %bb.ai, label %._crit_edge

bb.ai:                                            ; preds = %.lr.ph.epil.preheader
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0135.0, i64 %indvars.iv191.epil.init
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !33
  %i.fv = fcmp olt float %i.fu, %.063160.epil.init
  br i1 %i.fv, label %5, label %._crit_edge

5:                                                ; preds = %bb.ai
  %6 = trunc nuw nsw i64 %indvars.iv191.epil.init to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %5, %bb.ai, %.lr.ph.epil.preheader, %.preheader151
  %.064.lcssa = phi i32 [ -1, %.preheader151 ], [ %.165.1, %._crit_edge.loopexit.unr-lcssa ], [ %6, %5 ], [ %.064159.epil.init, %bb.ai ], [ %.064159.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %i.fw = mul nsw i32 %.064.lcssa, %i.dl
  %i.fx = sext i32 %.064.lcssa to i64             ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0130.0, i64 %i.fx ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !44 ; 2 uses
  %i.ga = add nsw i32 %i.fz, %i.fw
  %i.gb = load ptr, ptr %i.fd, align 8, !tbaa !32
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %indvars.iv196
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !33
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0135.0, i64 %i.fx ; 2 uses
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !33
  %i.gg = fadd float %i.gd, %i.gf
  store float %i.gg, ptr %i.ge, align 4, !tbaa !33
  %i.gh = add nsw i32 %i.fz, 1
  store i32 %i.gh, ptr %i.fy, align 4, !tbaa !44
  %i.gi = load i32, ptr %i.h, align 8, !tbaa !43  ; 3 uses
  %i.gj = mul nsw i32 %i.gi, %i.ga
  %i.gk = sext i32 %i.gj to i64
  %i.gl = load ptr, ptr %i.ao, align 8, !tbaa !32
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %i.gk
  %i.gn = trunc nuw nsw i64 %indvars.iv196 to i32
  %i.go = mul nsw i32 %i.gi, %i.gn
  %i.gp = sext i32 %i.go to i64
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.gp
  %i.gr = sext i32 %i.gi to i64
  %i.gs = shl nsw i64 %i.gr, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gm, ptr nonnull align 4 %i.gq, i64 %i.gs, i1 false)
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1 ; 2 uses
  %i.gt = load i32, ptr %i.e, align 4, !tbaa !30
  %i.gu = sext i32 %i.gt to i64
  %i.gv = icmp slt i64 %indvars.iv.next197, %i.gu
  br i1 %i.gv, label %.preheader151, label %._crit_edge163, !llvm.loop !314

.lr.ph:                                           ; preds = %bb.an, %.lr.ph.preheader.new
  %indvars.iv191 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next192.1, %bb.an ] ; 5 uses
  %.063160 = phi float [ 1.000000e+30, %.lr.ph.preheader.new ], [ %.1.1, %bb.an ] ; 3 uses
  %.064159 = phi i32 [ -1, %.lr.ph.preheader.new ], [ %.165.1, %bb.an ] ; 2 uses
  %niter287 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter287.next.1, %bb.an ]
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0130.0, i64 %indvars.iv191
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !44
  %i.gy = icmp slt i32 %i.gx, %i.dl
  br i1 %i.gy, label %bb.aj, label %.lr.ph.1

bb.aj:                                            ; preds = %.lr.ph
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0135.0, i64 %indvars.iv191
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !33 ; 2 uses
  %i.hb = fcmp olt float %i.ha, %.063160
  br i1 %i.hb, label %bb.ak, label %.lr.ph.1

bb.ak:                                            ; preds = %bb.aj
  %i.hc = trunc nuw nsw i64 %indvars.iv191 to i32
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.aj, %bb.ak
  %.165 = phi i32 [ %i.hc, %bb.ak ], [ %.064159, %bb.aj ], [ %.064159, %.lr.ph ] ; 2 uses
  %.1 = phi float [ %i.ha, %bb.ak ], [ %.063160, %bb.aj ], [ %.063160, %.lr.ph ] ; 3 uses
  %indvars.iv.next192 = or disjoint i64 %indvars.iv191, 1 ; 3 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0130.0, i64 %indvars.iv.next192
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !44
  %i.hf = icmp slt i32 %i.he, %i.dl
  br i1 %i.hf, label %bb.al, label %bb.an

bb.al:                                            ; preds = %.lr.ph.1
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0135.0, i64 %indvars.iv.next192
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !33 ; 2 uses
  %i.hi = fcmp olt float %i.hh, %.1
  br i1 %i.hi, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.hj = trunc nuw nsw i64 %indvars.iv.next192 to i32
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %.lr.ph.1
  %.165.1 = phi i32 [ %i.hj, %bb.am ], [ %.165, %bb.al ], [ %.165, %.lr.ph.1 ] ; 3 uses
  %.1.1 = phi float [ %i.hh, %bb.am ], [ %.1, %bb.al ], [ %.1, %.lr.ph.1 ] ; 2 uses
  %indvars.iv.next192.1 = add nuw nsw i64 %indvars.iv191, 2 ; 2 uses
  %niter287.next.1 = add i64 %niter287, 2         ; 2 uses
  %niter287.ncmp.1 = icmp eq i64 %niter287.next.1, %unroll_iter286
  br i1 %niter287.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !315

bb.ao:                                            ; preds = %._crit_edge163
  %i.hk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.70) ; 0 uses
  %i.hl = load i32, ptr %i.dh, align 8, !tbaa !297
  %i.hm = icmp sgt i32 %i.hl, 0
  br i1 %i.hm, label %.lr.ph166, label %._crit_edge167

._crit_edge167:                                   ; preds = %.lr.ph166, %bb.ao
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9) ; 0 uses
  br label %bb.ap

.lr.ph166:                                        ; preds = %bb.ao, %.lr.ph166
  %indvars.iv199 = phi i64 [ %indvars.iv.next200, %.lr.ph166 ], [ 0, %bb.ao ] ; 2 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0135.0, i64 %indvars.iv199
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !33
  %i.hp = fpext float %i.ho to double
  %i.hq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48, double noundef %i.hp) ; 0 uses
  %indvars.iv.next200 = add nuw nsw i64 %indvars.iv199, 1 ; 2 uses
  %i.hr = load i32, ptr %i.dh, align 8, !tbaa !297
  %i.hs = sext i32 %i.hr to i64
  %i.ht = icmp slt i64 %indvars.iv.next200, %i.hs
  br i1 %i.ht, label %.lr.ph166, label %._crit_edge167, !llvm.loop !316

bb.ap:                                            ; preds = %._crit_edge167, %._crit_edge163
  %.not.i.i.i110 = icmp eq ptr %.sroa.0130.0, null
  br i1 %.not.i.i.i110, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hu = ptrtoint ptr %.sroa.11.0 to i64
  %i.hv = ptrtoint ptr %.sroa.0130.0 to i64
  %i.hw = sub i64 %i.hu, %i.hv
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0130.0, i64 noundef %i.hw) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.ap, %bb.aq
  %.not.i.i.i111 = icmp eq ptr %.sroa.0135.0, null
  br i1 %.not.i.i.i111, label %_ZNSt6vectorIfSaIfEED2Ev.exit112, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.hx = ptrtoint ptr %.sroa.13.0 to i64
  %i.hy = ptrtoint ptr %.sroa.0135.0 to i64
  %i.hz = sub i64 %i.hx, %i.hy
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0135.0, i64 noundef %i.hz) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit112

_ZNSt6vectorIfSaIfEED2Ev.exit112:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.ar
  %.not.i.i.i113 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i.i113, label %_ZNSt6vectorIfSaIfEED2Ev.exit114, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit112
  %i.ia = ptrtoint ptr %i.ef to i64
  %i.ib = ptrtoint ptr %i.ed to i64
  %i.ic = sub i64 %i.ia, %i.ib
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ed, i64 noundef %i.ic) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit114

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.af, %bb.ag, %bb.ah, %bb.ae
  %.pn89.pn = phi { ptr, i32 } [ %i.fk, %bb.ae ], [ %i.fl, %bb.af ], [ %i.fm, %bb.ag ], [ %i.fm, %bb.ah ] ; 2 uses
  %.not.i.i.i115 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i.i115, label %_ZNSt6vectorIfSaIfEED2Ev.exit116, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.id = ptrtoint ptr %i.ef to i64
  %i.ie = ptrtoint ptr %i.ed to i64
  %i.if = sub i64 %i.id, %i.ie
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ed, i64 noundef %i.if) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit116

bb.au:                                            ; preds = %bb.j
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !297
  %i.ii = icmp eq i32 %i.ih, 0
  br i1 %i.ii, label %bb.bd, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.ij = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.ij, ptr %3, align 8, !tbaa !9
  %i.ik = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.ik, align 8, !tbaa !17
  store i8 0, ptr %i.ij, align 8, !tbaa !16
  %i.il = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72) #22 ; 2 uses
  %i.im = icmp sgt i32 %i.il, 0
  br i1 %i.im, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.in = zext nneg i32 %i.il to i64              ; 2 uses
  %i.io = add nuw nsw i64 %i.in, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.io)
          to label %bb.ax unwind label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ip = load ptr, ptr %3, align 8, !tbaa !13
  %i.iq = load i64, ptr %i.ik, align 8, !tbaa !17
  %i.ir = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ip, i64 noundef %i.iq, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72) #22 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.in)
          to label %bb.az unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ba, %bb.ax, %bb.aw
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.az:                                            ; preds = %bb.ax, %bb.av
  %i.it = call ptr @__cxa_allocate_exception(i64 40) #22 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.it, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss9PCAMatrix10prepare_AbEv, ptr noundef nonnull @.str.1, i32 noundef 871)
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %bb.az
  invoke void @__cxa_throw(ptr nonnull %i.it, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #29
          to label %bb.bq unwind label %bb.ay

bb.bb:                                            ; preds = %bb.az
  %i.iu = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.it) #22
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ay
  %.pn92 = phi { ptr, i32 } [ %i.is, %bb.ay ], [ %i.iu, %bb.bb ]
  %i.iv = load ptr, ptr %3, align 8, !tbaa !13    ; 2 uses
  %i.iw = icmp eq ptr %i.iv, %i.ij
end_hunk_0
