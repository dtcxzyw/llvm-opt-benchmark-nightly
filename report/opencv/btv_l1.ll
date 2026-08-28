Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/btv_l1?download=true
inline.NumInlined: 783
inline.NumDeleted: 222
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN12_GLOBAL__N_15BTVL112processFrameEi:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207.i, %bb.bd
  %.pn112.i = phi { ptr, i32 } [ %i.gd, %bb.bd ], [ %i.ge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207.i ], [ %i.ge, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #31
  br label %.body.i

bb.bf:                                            ; preds = %bb.az
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !60 ; 3 uses
  %i.gm = icmp sgt i32 %i.gl, 0
  br i1 %i.gm, label %bb.bl, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %70, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %71)
          to label %bb.bh unwind label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %70, ptr noundef nonnull @__func__._ZN12_GLOBAL__N_110BTVL1_Base7processERKN2cv11_InputArrayERKNS1_12_OutputArrayES4_S4_i, ptr noundef nonnull @.str.2, i32 noundef 680) #34
          to label %bb.bi unwind label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  unreachable

bb.bj:                                            ; preds = %bb.bg
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212.i

bb.bk:                                            ; preds = %bb.bh
  %i.go = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gp = load ptr, ptr %70, align 8, !tbaa !117  ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %70, i64 16 ; 2 uses
  %i.gr = icmp eq ptr %i.gp, %i.gq
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210.i: ; preds = %bb.bk
  %i.gs = load i64, ptr %i.gq, align 8, !tbaa !68
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gt) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212.i: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210.i, %bb.bj
  %.pn114.i = phi { ptr, i32 } [ %i.gn, %bb.bj ], [ %i.go, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210.i ], [ %i.go, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #31
  br label %.body.i

bb.bl:                                            ; preds = %bb.bf
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !61 ; 3 uses
  %i.gw = fcmp ult double %i.gv, 0.000000e+00
  br i1 %i.gw, label %bb.bm, label %bb.br

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %72, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %73)
          to label %bb.bn unwind label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %72, ptr noundef nonnull @__func__._ZN12_GLOBAL__N_110BTVL1_Base7processERKN2cv11_InputArrayERKNS1_12_OutputArrayES4_S4_i, ptr noundef nonnull @.str.2, i32 noundef 681) #34
          to label %bb.bo unwind label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  unreachable

bb.bp:                                            ; preds = %bb.bm
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215.i

bb.bq:                                            ; preds = %bb.bn
  %i.gy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gz = load ptr, ptr %72, align 8, !tbaa !117  ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %72, i64 16 ; 2 uses
  %i.hb = icmp eq ptr %i.gz, %i.ha
  br i1 %i.hb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213.i: ; preds = %bb.bq
  %i.hc = load i64, ptr %i.ha, align 8, !tbaa !68
  %i.hd = add i64 %i.hc, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hd) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215.i: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213.i, %bb.bp
  %.pn116.i = phi { ptr, i32 } [ %i.gx, %bb.bp ], [ %i.gy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213.i ], [ %i.gy, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #31
  br label %.body.i

bb.br:                                            ; preds = %bb.bl
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !75
  %.not.i81 = icmp eq i32 %i.gl, %i.hf
  br i1 %.not.i81, label %bb.bs, label %._crit_edge419.i

._crit_edge419.i:                                 ; preds = %bb.br
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !90
  br label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !76
  %i.hi = fcmp une double %i.gv, %i.hh
  %.pre420.i = load ptr, ptr %i.i, align 8, !tbaa !90 ; 4 uses
  br i1 %i.hi, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hj = load i32, ptr %.pre420.i, align 8, !tbaa !120
  %i.hk = and i32 %i.hj, 4095
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !77
  %.not118.i = icmp eq i32 %i.hk, %i.hm
  br i1 %.not118.i, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %._crit_edge419.i
  %i.hn = phi ptr [ %.pre.i, %._crit_edge419.i ], [ %.pre420.i, %bb.bt ], [ %.pre420.i, %bb.bs ] ; 2 uses
  store i32 %i.gl, ptr %i.he, align 8, !tbaa !75
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 128
  store double %i.gv, ptr %i.ho, align 8, !tbaa !76
  %i.hp = load i32, ptr %i.hn, align 8, !tbaa !120
  %i.hq = and i32 %i.hp, 4095
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.hq, ptr %i.hr, align 8, !tbaa !77
  br label %bb.bw

bb.bv:                                            ; preds = %bb.cz, %bb.cw, %bb.ca
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.bw:                                            ; preds = %bb.bu, %bb.bt
  %i.ht = phi ptr [ %i.hn, %bb.bu ], [ %.pre420.i, %bb.bt ]
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !121 ; 6 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !121 ; 3 uses
  %i.hy = icmp eq ptr %i.hv, %i.hx
  br i1 %i.hy, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !78
  %.not119.i = icmp eq i32 %i.gb, %i.ia
  br i1 %.not119.i, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !79
  %i.id = fcmp une double %i.fr, %i.ic
  br i1 %i.id, label %bb.bz, label %bb.cd

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.bw
  %i.ie = mul nuw nsw i32 %i.gb, %i.gb
  %i.if = zext nneg i32 %i.ie to i64              ; 4 uses
  %i.ig = ptrtoint ptr %i.hx to i64
  %i.ih = ptrtoint ptr %i.hv to i64
  %i.ii = sub i64 %i.ig, %i.ih
  %i.ij = ashr exact i64 %i.ii, 2                 ; 3 uses
  %i.ik = icmp ult i64 %i.ij, %i.if
  br i1 %i.ik, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.il = sub nuw nsw i64 %i.if, %i.ij
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.hu, i64 noundef %i.il)
          to label %..preheader.lr.ph.i_crit_edge.i unwind label %bb.bv

..preheader.lr.ph.i_crit_edge.i:                  ; preds = %bb.ca
  %.pre421.i.a = load ptr, ptr %i.hu, align 8, !tbaa !73
  br label %.preheader.lr.ph.i.i

bb.cb:                                            ; preds = %bb.bz
  %i.im = icmp ugt i64 %i.ij, %i.if
  br i1 %i.im, label %bb.cc, label %.preheader.lr.ph.i.i

bb.cc:                                            ; preds = %bb.cb
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.if ; 2 uses
  %.not.i.i.i.i83 = icmp eq ptr %i.hx, %i.in
  br i1 %.not.i.i.i.i83, label %.preheader.lr.ph.i.i, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %bb.cc
  store ptr %i.in, ptr %i.hw, align 8, !tbaa !122
  br label %.preheader.lr.ph.i.i

.preheader.lr.ph.i.i:                             ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i.i, %bb.cc, %bb.cb, %..preheader.lr.ph.i_crit_edge.i
  %i.io = phi ptr [ %.pre421.i.a, %..preheader.lr.ph.i_crit_edge.i ], [ %i.hv, %bb.cb ], [ %i.hv, %bb.cc ], [ %i.hv, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i.i ] ; 3 uses
  %i.ip = add nsw i32 %i.gb, -1
  %i.iq = lshr i32 %i.ip, 1                       ; 6 uses
  %i.ir = fptrunc double %i.fr to float
  %i.is = fpext float %i.ir to double             ; 3 uses
  %i.it = add nsw i32 %i.iq, -1
  br label %.lr.ph.i.i.a

.lr.ph.i.i.a:                                     ; preds = %._crit_edge.i.i.a, %.preheader.lr.ph.i.i
  %indvars.iv114.in = phi i32 [ %indvars.iv114, %._crit_edge.i.i.a ], [ %i.iq, %.preheader.lr.ph.i.i ] ; 2 uses
  %.01825.i.i = phi i64 [ %indvars.iv.next.i.i.lcssa, %._crit_edge.i.i.a ], [ 0, %.preheader.lr.ph.i.i ] ; 2 uses
  %.01924.i.i = phi i32 [ %i.je, %._crit_edge.i.i.a ], [ 0, %.preheader.lr.ph.i.i ] ; 6 uses
  %indvars.iv114 = add i32 %indvars.iv114.in, 1   ; 2 uses
  %sext.i.i = shl i64 %.01825.i.i, 32
  %116 = ashr exact i64 %sext.i.i, 32             ; 3 uses
  %i.iu = trunc i64 %.01825.i.i to i32
  %i.iv = add i32 %indvars.iv114, %i.iu
  %i.iw = sub nsw i32 %i.iq, %.01924.i.i
  %i.ix = and i32 %i.iw, 1
  %lcmp.mod.not.not = icmp eq i32 %i.ix, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i.i.a
  %i.iy = add nuw nsw i32 %i.iq, %.01924.i.i
  %i.iz = uitofp nneg i32 %i.iy to double
  %i.ja = call noundef double @pow(double noundef %i.is, double noundef %i.iz) #31
  %i.jb = fptrunc double %i.ja to float
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %116
  store float %i.jb, ptr %i.jc, align 4, !tbaa !123
  %indvars.iv.next.i.i.prol = add nsw i64 %116, 1 ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i.i.a
  %indvars.iv.next.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.a ], [ %indvars.iv.next.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %indvars.iv.i.i.unr = phi i64 [ %116, %.lr.ph.i.i.a ], [ %indvars.iv.next.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.022.i.i.unr = phi i32 [ %i.iq, %.lr.ph.i.i.a ], [ %i.it, %.prol.loopexit.unr-lcssa ]
  %i.jd = icmp eq i32 %indvars.iv114.in, 0
  br i1 %i.jd, label %._crit_edge.i.i.a, label %.lr.ph.i.i.new

._crit_edge.i.i.a:                                ; preds = %.lr.ph.i.i.new, %.prol.loopexit
  %indvars.iv.next.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.lcssa.unr, %.prol.loopexit ], [ %indvars.iv.next.i.i.1, %.lr.ph.i.i.new ]
  %i.je = add nuw nsw i32 %.01924.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %.01924.i.i, %i.iq
  br i1 %exitcond.not.i.i, label %_ZN12_GLOBAL__N_114calcBtvWeightsEidRSt6vectorIfSaIfEE.exit.i, label %.lr.ph.i.i.a, !llvm.loop !125

.lr.ph.i.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i.i.new ], [ %indvars.iv.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.022.i.i = phi i32 [ %i.jt, %.lr.ph.i.i.new ], [ %.022.i.i.unr, %.prol.loopexit ] ; 3 uses
  %i.jf = call i32 @llvm.abs.i32(i32 %.022.i.i, i1 true)
  %i.jg = add nuw nsw i32 %i.jf, %.01924.i.i
  %i.jh = uitofp nneg i32 %i.jg to double
  %i.ji = call noundef double @pow(double noundef %i.is, double noundef %i.jh) #31
  %i.jj = fptrunc double %i.ji to float
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %indvars.iv.i.i
  store float %i.jj, ptr %i.jk, align 4, !tbaa !123
  %i.jl = add nsw i32 %.022.i.i, -1
  %i.jm = call i32 @llvm.abs.i32(i32 %i.jl, i1 true)
  %i.jn = add nuw nsw i32 %i.jm, %.01924.i.i
  %i.jo = uitofp nneg i32 %i.jn to double
  %i.jp = call noundef double @pow(double noundef %i.is, double noundef %i.jo) #31
  %i.jq = fptrunc double %i.jp to float
  %i.jr = getelementptr [4 x i8], ptr %i.io, i64 %indvars.iv.i.i
  %i.js = getelementptr i8, ptr %i.jr, i64 4
  store float %i.jq, ptr %i.js, align 4, !tbaa !123
  %i.jt = add nsw i32 %.022.i.i, -2
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, 2 ; 3 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next.i.i.1 to i32
  %exitcond116.1 = icmp eq i32 %i.iv, %lftr.wideiv.1
  br i1 %exitcond116.1, label %._crit_edge.i.i.a, label %.lr.ph.i.i.new, !llvm.loop !126

_ZN12_GLOBAL__N_114calcBtvWeightsEidRSt6vectorIfSaIfEE.exit.i: ; preds = %._crit_edge.i.i.a
  %i.ju = load i32, ptr %i.ga, align 8, !tbaa !59
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i32 %i.ju, ptr %i.jv, align 8, !tbaa !78
  %i.jw = load double, ptr %i.fq, align 8, !tbaa !58
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 360
  store double %i.jw, ptr %i.jx, align 8, !tbaa !79
  %.pre422.i = load ptr, ptr %i.i, align 8, !tbaa !90
  br label %bb.cd

bb.cd:                                            ; preds = %_ZN12_GLOBAL__N_114calcBtvWeightsEidRSt6vectorIfSaIfEE.exit.i, %bb.by
  %i.jy = phi ptr [ %.pre422.i, %_ZN12_GLOBAL__N_114calcBtvWeightsEidRSt6vectorIfSaIfEE.exit.i ], [ %i.ht, %bb.by ] ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 7 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 7 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jy, i64 72
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !127 ; 6 uses
  %i.kd = icmp slt i32 %i.kc, 3
  br i1 %i.kd, label %bb.ch, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %57, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %58)
          to label %.noexc216.i unwind label %.loopexit.split-lp400.loopexit.split-lp.i

.noexc216.i:                                      ; preds = %bb.ce
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %57, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.14, i32 noundef 109) #34
          to label %bb.cf unwind label %bb.cg

bb.cf:                                            ; preds = %.noexc216.i
  unreachable

bb.cg:                                            ; preds = %.noexc216.i
  %i.ke = landingpad { ptr, i32 }
          cleanup
  %i.kf = load ptr, ptr %57, align 8, !tbaa !117  ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %57, i64 16 ; 2 uses
  %i.kh = icmp eq ptr %i.kf, %i.kg
  br i1 %i.kh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.cg
  %i.ki = load i64, ptr %i.kg, align 8, !tbaa !68
  %i.kj = add i64 %i.ki, 1
  call void @_ZdlPvm(ptr noundef %i.kf, i64 noundef %i.kj) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #31
  br label %.body.i

bb.ch:                                            ; preds = %bb.cd
  %i.kk = icmp sgt i32 %i.kc, 0
  br i1 %i.kk, label %bb.ci, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.ch
  %i.kl = icmp eq i32 %i.kc, 0
  %i.km = zext i1 %i.kl to i32
  br label %bb.ck

bb.ci:                                            ; preds = %bb.ch
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jy, i64 84 ; 2 uses
  %i.ko = icmp eq i32 %i.kc, 2
  %i.kp = zext i1 %i.ko to i64
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %i.kp
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !69 ; 2 uses
  %.not.i.i82 = icmp eq i32 %i.kc, 1
  br i1 %.not.i.i82, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ks = load i32, ptr %i.kn, align 4, !tbaa !69
  br label %bb.cl

bb.ck:                                            ; preds = %bb.ci, %.thread.i.i
  %i.kt = phi i32 [ %i.km, %.thread.i.i ], [ %i.kr, %bb.ci ]
  %i.ku = icmp sgt i32 %i.kc, -1
  %i.kv = zext i1 %i.ku to i32
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.kw = phi i32 [ %i.kr, %bb.cj ], [ %i.kt, %bb.ck ]
  %i.kx = phi i32 [ %i.ks, %bb.cj ], [ %i.kv, %bb.ck ]
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.kx to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.kw to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i ; 2 uses
  %i.ky = load ptr, ptr %i.x, align 8, !tbaa !91
  %i.kz = load ptr, ptr %i.w, align 8, !tbaa !90
  %i.la = ptrtoint ptr %i.ky to i64
  %i.lb = ptrtoint ptr %i.kz to i64
  %i.lc = sub i64 %i.la, %i.lb
  %i.ld = sdiv exact i64 %i.lc, 208               ; 2 uses
  %i.le = trunc i64 %i.ld to i32                  ; 2 uses
  %sext.i217.i = shl i64 %i.ld, 32
  %i.lf = ashr exact i64 %sext.i217.i, 32         ; 8 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !91 ; 3 uses
  %i.li = load ptr, ptr %i.jz, align 8, !tbaa !90 ; 2 uses
  %i.lj = ptrtoint ptr %i.lh to i64
  %i.lk = ptrtoint ptr %i.li to i64
  %i.ll = sub i64 %i.lj, %i.lk
  %i.lm = sdiv exact i64 %i.ll, 208               ; 3 uses
  %i.ln = icmp ugt i64 %i.lf, %i.lm
  br i1 %i.ln, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.lo = sub nuw nsw i64 %i.lf, %i.lm
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.jz, i64 noundef %i.lo)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit.i.i unwind label %.loopexit.split-lp400.loopexit.split-lp.i

bb.cn:                                            ; preds = %bb.cl
  %i.lp = icmp ult i64 %i.lf, %i.lm
  br i1 %i.lp, label %bb.co, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit.i.i

bb.co:                                            ; preds = %bb.cn
  %i.lq = getelementptr inbounds nuw [208 x i8], ptr %i.li, i64 %i.lf ; 3 uses
  %.not.i.i.i223.i = icmp eq ptr %i.lh, %i.lq
  br i1 %.not.i.i.i223.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.co, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.lr, %.lr.ph.i.i.i.i.i.i ], [ %i.lq, %bb.co ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i.i.i) #31
  %i.lr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.lr, %i.lh
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !92

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %i.lq, ptr %i.lg, align 8, !tbaa !91
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit.i.i

_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit.i.i: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, %bb.co, %bb.cn, %bb.cm
  %i.ls = sext i32 %.031.lcssa to i64             ; 6 uses
  %i.lt = load ptr, ptr %i.jz, align 8, !tbaa !90
  %i.lu = getelementptr inbounds nuw [208 x i8], ptr %i.lt, i64 %i.ls
  invoke void @_ZN2cv3Mat6createENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %i.lu, i64 %.sroa.0.0.insert.insert.i.i, i32 noundef 37)
          to label %.noexc225.i.a unwind label %.loopexit.split-lp400.loopexit.split-lp.i

.noexc225.i.a:                                    ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit.i.i
  %i.lv = load ptr, ptr %i.jz, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #31
  %i.lw = getelementptr inbounds nuw i8, ptr %41, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %42, i8 0, i64 32, i1 false)
  store i32 -1056833530, ptr %41, align 8, !tbaa !101
  %i.lx = getelementptr inbounds nuw i8, ptr %41, i64 8
  store ptr %42, ptr %i.lx, align 8, !tbaa !104
  store i64 17179869185, ptr %i.lw, align 8
  %i.ly = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %.noexc226.i unwind label %.loopexit.split-lp400.loopexit.split-lp.i

.noexc226.i:                                      ; preds = %.noexc225.i.a
  %i.lz = getelementptr inbounds nuw [208 x i8], ptr %i.lv, i64 %i.ls
  %i.ma = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %i.lz, ptr noundef nonnull align 8 dereferenceable(24) %41, ptr noundef nonnull align 8 dereferenceable(24) %i.ly)
          to label %.noexc227.i.a unwind label %.loopexit.split-lp400.loopexit.split-lp.i ; 0 uses

.noexc227.i.a:                                    ; preds = %.noexc226.i
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #31
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !91 ; 3 uses
  %i.md = load ptr, ptr %i.ka, align 8, !tbaa !90 ; 2 uses
  %i.me = ptrtoint ptr %i.mc to i64
  %i.mf = ptrtoint ptr %i.md to i64
  %i.mg = sub i64 %i.me, %i.mf
  %i.mh = sdiv exact i64 %i.mg, 208               ; 3 uses
  %i.mi = icmp ugt i64 %i.lf, %i.mh
  br i1 %i.mi, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %.noexc227.i.a
  %i.mj = sub nuw nsw i64 %i.lf, %i.mh
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ka, i64 noundef %i.mj)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit84.i.i unwind label %.loopexit.split-lp400.loopexit.split-lp.i

bb.cq:                                            ; preds = %.noexc227.i.a
  %i.mk = icmp ult i64 %i.lf, %i.mh
  br i1 %i.mk, label %bb.cr, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit84.i.i

bb.cr:                                            ; preds = %bb.cq
  %i.ml = getelementptr inbounds nuw [208 x i8], ptr %i.md, i64 %i.lf ; 3 uses
  %.not.i.i79.i.i = icmp eq ptr %i.mc, %i.ml
  br i1 %.not.i.i79.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit84.i.i, label %.lr.ph.i.i.i.i80.i.i

.lr.ph.i.i.i.i80.i.i:                             ; preds = %bb.cr, %.lr.ph.i.i.i.i80.i.i
  %.05.i.i.i.i81.i.i = phi ptr [ %i.mm, %.lr.ph.i.i.i.i80.i.i ], [ %i.ml, %bb.cr ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i81.i.i) #31
  %i.mm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i81.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i82.i.i = icmp eq ptr %i.mm, %i.mc
  br i1 %.not.i.i.i.i82.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i83.i.i, label %.lr.ph.i.i.i.i80.i.i, !llvm.loop !92

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i83.i.i: ; preds = %.lr.ph.i.i.i.i80.i.i
  store ptr %i.ml, ptr %i.mb, align 8, !tbaa !91
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit84.i.i

_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit84.i.i: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i83.i.i, %bb.cr, %bb.cq, %bb.cp
  %i.mn = load ptr, ptr %i.ka, align 8, !tbaa !90
  %i.mo = getelementptr inbounds nuw [208 x i8], ptr %i.mn, i64 %i.ls
end_hunk_0
