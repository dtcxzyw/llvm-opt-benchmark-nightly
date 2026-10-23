Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/btv_l1?download=true
inline.NumInlined: 783
inline.NumDeleted: 222
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN12_GLOBAL__N_15BTVL112processFrameEi:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207.i: ; preds = %bb.bd
  %i.gh = load i64, ptr %i.gf, align 8, !tbaa !61
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gi) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207.i, %bb.bc
  %.pn112.i = phi { ptr, i32 } [ %i.gc, %bb.bc ], [ %i.gd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207.i ], [ %i.gd, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #31
  br label %.body.i

bb.be:                                            ; preds = %bb.ay
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !56 ; 3 uses
  %i.gl = icmp sgt i32 %i.gk, 0
  br i1 %i.gl, label %bb.bk, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %70, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %71)
          to label %bb.bg unwind label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %70, ptr noundef nonnull @__func__._ZN12_GLOBAL__N_110BTVL1_Base7processERKN2cv11_InputArrayERKNS1_12_OutputArrayES4_S4_i, ptr noundef nonnull @.str.2, i32 noundef 680) #34
          to label %bb.bh unwind label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  unreachable

bb.bi:                                            ; preds = %bb.bf
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212.i

bb.bj:                                            ; preds = %bb.bg
  %i.gn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.go = load ptr, ptr %70, align 8, !tbaa !93   ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %70, i64 16 ; 2 uses
  %i.gq = icmp eq ptr %i.go, %i.gp
  br i1 %i.gq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210.i: ; preds = %bb.bj
  %i.gr = load i64, ptr %i.gp, align 8, !tbaa !61
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gs) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212.i: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210.i, %bb.bi
  %.pn114.i = phi { ptr, i32 } [ %i.gm, %bb.bi ], [ %i.gn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210.i ], [ %i.gn, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #31
  br label %.body.i

bb.bk:                                            ; preds = %bb.be
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !57 ; 3 uses
  %i.gv = fcmp ult double %i.gu, 0.000000e+00
  br i1 %i.gv, label %bb.bl, label %bb.bq

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %72, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %73)
          to label %bb.bm unwind label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %72, ptr noundef nonnull @__func__._ZN12_GLOBAL__N_110BTVL1_Base7processERKN2cv11_InputArrayERKNS1_12_OutputArrayES4_S4_i, ptr noundef nonnull @.str.2, i32 noundef 681) #34
          to label %bb.bn unwind label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  unreachable

bb.bo:                                            ; preds = %bb.bl
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215.i

bb.bp:                                            ; preds = %bb.bm
  %i.gx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gy = load ptr, ptr %72, align 8, !tbaa !93   ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %72, i64 16 ; 2 uses
  %i.ha = icmp eq ptr %i.gy, %i.gz
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213.i: ; preds = %bb.bp
  %i.hb = load i64, ptr %i.gz, align 8, !tbaa !61
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.hc) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215.i: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213.i, %bb.bo
  %.pn116.i = phi { ptr, i32 } [ %i.gw, %bb.bo ], [ %i.gx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213.i ], [ %i.gx, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #31
  br label %.body.i

bb.bq:                                            ; preds = %bb.bk
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !66
  %.not.i81 = icmp eq i32 %i.gk, %i.he
  br i1 %.not.i81, label %bb.br, label %._crit_edge442.i

._crit_edge442.i:                                 ; preds = %bb.bq
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !75
  br label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !67
  %i.hh = fcmp une double %i.gu, %i.hg
  %.pre443.i.a = load ptr, ptr %i.i, align 8, !tbaa !75 ; 4 uses
  br i1 %i.hh, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hi = load i32, ptr %.pre443.i.a, align 8, !tbaa !94
  %i.hj = and i32 %i.hi, 4095
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !68
  %.not118.i = icmp eq i32 %i.hj, %i.hl
  br i1 %.not118.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br, %._crit_edge442.i
  %i.hm = phi ptr [ %.pre.i, %._crit_edge442.i ], [ %.pre443.i.a, %bb.bs ], [ %.pre443.i.a, %bb.br ] ; 2 uses
  store i32 %i.gk, ptr %i.hd, align 8, !tbaa !66
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 128
  store double %i.gu, ptr %i.hn, align 8, !tbaa !67
  %i.ho = load i32, ptr %i.hm, align 8, !tbaa !94
  %i.hp = and i32 %i.ho, 4095
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.hp, ptr %i.hq, align 8, !tbaa !68
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.hr = phi ptr [ %i.hm, %bb.bt ], [ %.pre443.i.a, %bb.bs ]
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !182 ; 6 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !182 ; 3 uses
  %i.hw = icmp eq ptr %i.ht, %i.hv
  br i1 %i.hw, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !69
  %.not119.i = icmp eq i32 %i.ga, %i.hy
  br i1 %.not119.i, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !70
  %i.ib = fcmp une double %i.fq, %i.ia
  br i1 %i.ib, label %bb.bx, label %bb.cb

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %bb.bu
  %i.ic = mul nuw nsw i32 %i.ga, %i.ga
  %i.id = zext nneg i32 %i.ic to i64              ; 4 uses
  %i.ie = ptrtoint ptr %i.hv to i64
  %i.if = ptrtoint ptr %i.ht to i64
  %i.ig = sub i64 %i.ie, %i.if
  %i.ih = ashr exact i64 %i.ig, 2                 ; 3 uses
  %i.ii = icmp ult i64 %i.ih, %i.id
  br i1 %i.ii, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.ij = sub nuw nsw i64 %i.id, %i.ih
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.hs, i64 noundef %i.ij)
          to label %..preheader.lr.ph.i_crit_edge.i unwind label %.loopexit.split-lp402.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

..preheader.lr.ph.i_crit_edge.i:                  ; preds = %bb.by
  %.pre444.i = load ptr, ptr %i.hs, align 8, !tbaa !64
  br label %.preheader.lr.ph.i.i

bb.bz:                                            ; preds = %bb.bx
  %i.ik = icmp ugt i64 %i.ih, %i.id
  br i1 %i.ik, label %bb.ca, label %.preheader.lr.ph.i.i

bb.ca:                                            ; preds = %bb.bz
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.id ; 2 uses
  %.not.i.i.i.i83 = icmp eq ptr %i.hv, %i.il
  br i1 %.not.i.i.i.i83, label %.preheader.lr.ph.i.i, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %bb.ca
  store ptr %i.il, ptr %i.hu, align 8, !tbaa !95
  br label %.preheader.lr.ph.i.i

.preheader.lr.ph.i.i:                             ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i.i, %bb.ca, %bb.bz, %..preheader.lr.ph.i_crit_edge.i
  %i.im = phi ptr [ %.pre444.i, %..preheader.lr.ph.i_crit_edge.i ], [ %i.ht, %bb.bz ], [ %i.ht, %bb.ca ], [ %i.ht, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i.i ] ; 3 uses
  %i.in = add nsw i32 %i.ga, -1
  %i.io = lshr i32 %i.in, 1                       ; 6 uses
  %i.ip = fptrunc double %i.fq to float
  %i.iq = fpext float %i.ip to double             ; 3 uses
  %i.ir = add nsw i32 %i.io, -1
  br label %.lr.ph.i.i.a

.lr.ph.i.i.a:                                     ; preds = %._crit_edge.i.i.a, %.preheader.lr.ph.i.i
  %indvars.iv153.in = phi i32 [ %indvars.iv153, %._crit_edge.i.i.a ], [ %i.io, %.preheader.lr.ph.i.i ] ; 2 uses
  %.01825.i.i = phi i64 [ %indvars.iv.next.i.i.lcssa, %._crit_edge.i.i.a ], [ 0, %.preheader.lr.ph.i.i ] ; 4 uses
  %.01924.i.i = phi i32 [ %i.jc, %._crit_edge.i.i.a ], [ 0, %.preheader.lr.ph.i.i ] ; 6 uses
  %indvars.iv153 = add nuw i32 %indvars.iv153.in, 1 ; 2 uses
  %i.is = trunc i64 %.01825.i.i to i32
  %i.it = add i32 %indvars.iv153, %i.is
  %i.iu = sub nsw i32 %i.io, %.01924.i.i
  %i.iv = and i32 %i.iu, 1
  %lcmp.mod.not.not = icmp eq i32 %i.iv, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i.i.a
  %i.iw = add nuw nsw i32 %i.io, %.01924.i.i
  %i.ix = uitofp nneg i32 %i.iw to double
  %i.iy = call noundef double @pow(double noundef %i.iq, double noundef %i.ix) #31
  %i.iz = fptrunc double %i.iy to float
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %.01825.i.i
  store float %i.iz, ptr %i.ja, align 4, !tbaa !97
  %indvars.iv.next.i.i.prol = add i64 %.01825.i.i, 1 ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i.i.a
  %indvars.iv.next.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.a ], [ %indvars.iv.next.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %indvars.iv.i.i.unr = phi i64 [ %.01825.i.i, %.lr.ph.i.i.a ], [ %indvars.iv.next.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.022.i.i.unr = phi i32 [ %i.io, %.lr.ph.i.i.a ], [ %i.ir, %.prol.loopexit.unr-lcssa ]
  %i.jb = icmp eq i32 %indvars.iv153.in, 0
  br i1 %i.jb, label %._crit_edge.i.i.a, label %.lr.ph.i.i.new

._crit_edge.i.i.a:                                ; preds = %.lr.ph.i.i.new, %.prol.loopexit
  %indvars.iv.next.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.lcssa.unr, %.prol.loopexit ], [ %indvars.iv.next.i.i.1, %.lr.ph.i.i.new ]
  %i.jc = add nuw nsw i32 %.01924.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %.01924.i.i, %i.io
  br i1 %exitcond.not.i.i, label %_ZN12_GLOBAL__N_114calcBtvWeightsEidRSt6vectorIfSaIfEE.exit.i, label %.lr.ph.i.i.a, !llvm.loop !142

.lr.ph.i.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i.i.new ], [ %indvars.iv.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.022.i.i = phi i32 [ %i.jr, %.lr.ph.i.i.new ], [ %.022.i.i.unr, %.prol.loopexit ] ; 3 uses
  %i.jd = call i32 @llvm.abs.i32(i32 %.022.i.i, i1 true)
  %i.je = add nuw nsw i32 %i.jd, %.01924.i.i
  %i.jf = uitofp nneg i32 %i.je to double
  %i.jg = call noundef double @pow(double noundef %i.iq, double noundef %i.jf) #31
  %i.jh = fptrunc double %i.jg to float
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %indvars.iv.i.i
  store float %i.jh, ptr %i.ji, align 4, !tbaa !97
  %i.jj = add nsw i32 %.022.i.i, -1
  %i.jk = call i32 @llvm.abs.i32(i32 %i.jj, i1 true)
  %i.jl = add nuw nsw i32 %i.jk, %.01924.i.i
  %i.jm = uitofp nneg i32 %i.jl to double
  %i.jn = call noundef double @pow(double noundef %i.iq, double noundef %i.jm) #31
  %i.jo = fptrunc double %i.jn to float
  %i.jp = getelementptr [4 x i8], ptr %i.im, i64 %indvars.iv.i.i
  %i.jq = getelementptr i8, ptr %i.jp, i64 4
  store float %i.jo, ptr %i.jq, align 4, !tbaa !97
  %i.jr = add nsw i32 %.022.i.i, -2
  %indvars.iv.next.i.i.1 = add i64 %indvars.iv.i.i, 2 ; 3 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next.i.i.1 to i32
  %exitcond155.1 = icmp eq i32 %i.it, %lftr.wideiv.1
  br i1 %exitcond155.1, label %._crit_edge.i.i.a, label %.lr.ph.i.i.new, !llvm.loop !143

_ZN12_GLOBAL__N_114calcBtvWeightsEidRSt6vectorIfSaIfEE.exit.i: ; preds = %._crit_edge.i.i.a
  %i.js = load i32, ptr %i.fz, align 8, !tbaa !55
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i32 %i.js, ptr %i.jt, align 8, !tbaa !69
  %i.ju = load double, ptr %i.fp, align 8, !tbaa !54
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 360
  store double %i.ju, ptr %i.jv, align 8, !tbaa !70
  %.pre445.i = load ptr, ptr %i.i, align 8, !tbaa !75
  br label %bb.cb

bb.cb:                                            ; preds = %_ZN12_GLOBAL__N_114calcBtvWeightsEidRSt6vectorIfSaIfEE.exit.i, %bb.bw
  %i.jw = phi ptr [ %.pre445.i, %_ZN12_GLOBAL__N_114calcBtvWeightsEidRSt6vectorIfSaIfEE.exit.i ], [ %i.hr, %bb.bw ] ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 7 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 7 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 72
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !183 ; 6 uses
  %i.kb = icmp slt i32 %i.ka, 3
  br i1 %i.kb, label %bb.cf, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %57, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %58)
          to label %.noexc216.i unwind label %.loopexit.split-lp402.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc216.i:                                      ; preds = %bb.cc
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %57, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.14, i32 noundef 109) #34
          to label %bb.cd unwind label %bb.ce

bb.cd:                                            ; preds = %.noexc216.i
  unreachable

bb.ce:                                            ; preds = %.noexc216.i
  %i.kc = landingpad { ptr, i32 }
          cleanup
  %i.kd = load ptr, ptr %57, align 8, !tbaa !93   ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %57, i64 16 ; 2 uses
  %i.kf = icmp eq ptr %i.kd, %i.ke
  br i1 %i.kf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ce
  %i.kg = load i64, ptr %i.ke, align 8, !tbaa !61
  %i.kh = add i64 %i.kg, 1
  call void @_ZdlPvm(ptr noundef %i.kd, i64 noundef %i.kh) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #31
  br label %.body.i

bb.cf:                                            ; preds = %bb.cb
  %i.ki = icmp sgt i32 %i.ka, 0
  br i1 %i.ki, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jw, i64 84
  %i.kk = icmp eq i32 %i.ka, 2
  %i.kl = zext i1 %i.kk to i64
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %i.kl
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !62
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  %i.ko = icmp eq i32 %i.ka, 0
  %i.kp = zext i1 %i.ko to i32
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.kq = phi i32 [ %i.kn, %bb.cg ], [ %i.kp, %bb.ch ]
  %i.kr = icmp eq i32 %i.ka, 2
  %i.ks = getelementptr inbounds nuw i8, ptr %i.jw, i64 84
  %i.kt = load i32, ptr %i.ks, align 4
  %i.ku = icmp sgt i32 %i.ka, -1
  %i.kv = zext i1 %i.ku to i32
  %i.kw = select i1 %i.kr, i32 %i.kt, i32 %i.kv
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.kw to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.kq to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i ; 2 uses
  %i.kx = load ptr, ptr %i.x, align 8, !tbaa !76
  %i.ky = load ptr, ptr %i.w, align 8, !tbaa !75
  %i.kz = ptrtoint ptr %i.kx to i64
  %i.la = ptrtoint ptr %i.ky to i64
  %i.lb = sub i64 %i.kz, %i.la
  %i.lc = sdiv exact i64 %i.lb, 208               ; 2 uses
  %i.ld = trunc i64 %i.lc to i32                  ; 2 uses
  %sext.i217.i = shl i64 %i.lc, 32
  %i.le = ashr exact i64 %sext.i217.i, 32         ; 8 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !76 ; 3 uses
  %i.lh = load ptr, ptr %i.jx, align 8, !tbaa !75 ; 2 uses
  %i.li = ptrtoint ptr %i.lg to i64
  %i.lj = ptrtoint ptr %i.lh to i64
  %i.lk = sub i64 %i.li, %i.lj
  %i.ll = sdiv exact i64 %i.lk, 208               ; 3 uses
  %i.lm = icmp ugt i64 %i.le, %i.ll
  br i1 %i.lm, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.ln = sub nuw nsw i64 %i.le, %i.ll
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.jx, i64 noundef %i.ln)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit.i.i unwind label %.loopexit.split-lp402.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ck:                                            ; preds = %bb.ci
  %i.lo = icmp ult i64 %i.le, %i.ll
  br i1 %i.lo, label %bb.cl, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit.i.i

bb.cl:                                            ; preds = %bb.ck
  %i.lp = getelementptr inbounds nuw [208 x i8], ptr %i.lh, i64 %i.le ; 3 uses
  %.not.i.i.i223.i = icmp eq ptr %i.lg, %i.lp
  br i1 %.not.i.i.i223.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.cl, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.lq, %.lr.ph.i.i.i.i.i.i ], [ %i.lp, %bb.cl ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i.i.i) #31
  %i.lq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.lq, %i.lg
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %i.lp, ptr %i.lf, align 8, !tbaa !76
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit.i.i

_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit.i.i: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, %bb.cl, %bb.ck, %bb.cj
  %i.lr = sext i32 %.031.lcssa to i64             ; 6 uses
  %i.ls = load ptr, ptr %i.jx, align 8, !tbaa !75
  %i.lt = getelementptr inbounds nuw [208 x i8], ptr %i.ls, i64 %i.lr
  invoke void @_ZN2cv3Mat6createENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %i.lt, i64 %.sroa.0.0.insert.insert.i.i, i32 noundef 37)
          to label %.noexc225.i.a unwind label %.loopexit.split-lp402.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc225.i.a:                                    ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit.i.i
  %i.lu = load ptr, ptr %i.jx, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #31
  %i.lv = getelementptr inbounds nuw i8, ptr %41, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %42, i8 0, i64 32, i1 false)
  store i32 -1056833530, ptr %41, align 8, !tbaa !84
  %i.lw = getelementptr inbounds nuw i8, ptr %41, i64 8
  store ptr %42, ptr %i.lw, align 8, !tbaa !85
  store i64 17179869185, ptr %i.lv, align 8, !tbaa !62
  %i.lx = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %.noexc226.i unwind label %.loopexit.split-lp402.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc226.i:                                      ; preds = %.noexc225.i.a
  %i.ly = getelementptr inbounds nuw [208 x i8], ptr %i.lu, i64 %i.lr
  %i.lz = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %i.ly, ptr noundef nonnull align 8 dereferenceable(24) %41, ptr noundef nonnull align 8 dereferenceable(24) %i.lx)
          to label %.noexc227.i.a unwind label %.loopexit.split-lp402.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc227.i.a:                                    ; preds = %.noexc226.i
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #31
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !76 ; 3 uses
  %i.mc = load ptr, ptr %i.jy, align 8, !tbaa !75 ; 2 uses
  %i.md = ptrtoint ptr %i.mb to i64
  %i.me = ptrtoint ptr %i.mc to i64
  %i.mf = sub i64 %i.md, %i.me
  %i.mg = sdiv exact i64 %i.mf, 208               ; 3 uses
  %i.mh = icmp ugt i64 %i.le, %i.mg
  br i1 %i.mh, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %.noexc227.i.a
  %i.mi = sub nuw nsw i64 %i.le, %i.mg
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.jy, i64 noundef %i.mi)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit84.i.i unwind label %.loopexit.split-lp402.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cn:                                            ; preds = %.noexc227.i.a
  %i.mj = icmp ult i64 %i.le, %i.mg
  br i1 %i.mj, label %bb.co, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit84.i.i

bb.co:                                            ; preds = %bb.cn
  %i.mk = getelementptr inbounds nuw [208 x i8], ptr %i.mc, i64 %i.le ; 3 uses
  %.not.i.i79.i.i = icmp eq ptr %i.mb, %i.mk
  br i1 %.not.i.i79.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit84.i.i, label %.lr.ph.i.i.i.i80.i.i

.lr.ph.i.i.i.i80.i.i:                             ; preds = %bb.co, %.lr.ph.i.i.i.i80.i.i
  %.05.i.i.i.i81.i.i = phi ptr [ %i.ml, %.lr.ph.i.i.i.i80.i.i ], [ %i.mk, %bb.co ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i81.i.i) #31
  %i.ml = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i81.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i82.i.i = icmp eq ptr %i.ml, %i.mb
  br i1 %.not.i.i.i.i82.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i83.i.i, label %.lr.ph.i.i.i.i80.i.i, !llvm.loop !0

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i83.i.i: ; preds = %.lr.ph.i.i.i.i80.i.i
  store ptr %i.mk, ptr %i.ma, align 8, !tbaa !76
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit84.i.i

_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit84.i.i: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i83.i.i, %bb.co, %bb.cn, %bb.cm
  %i.mm = load ptr, ptr %i.jy, align 8, !tbaa !75
  %i.mn = getelementptr inbounds nuw [208 x i8], ptr %i.mm, i64 %i.lr
  invoke void @_ZN2cv3Mat6createENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %i.mn, i64 %.sroa.0.0.insert.insert.i.i, i32 noundef 37)
          to label %.noexc229.i.a unwind label %.loopexit.split-lp402.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc229.i.a:                                    ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit84.i.i
  %i.mo = load ptr, ptr %i.jy, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #31
end_hunk_0
