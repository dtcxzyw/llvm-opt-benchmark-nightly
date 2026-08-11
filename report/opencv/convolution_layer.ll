inline.NumInlined: 1238
inline.NumDeleted: 554
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN2cv3dnn24BaseConvolutionLayerImpl8finalizeERKNS_11_InputArrayERKNS_12_OutputArrayE:bb.a
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %27)
          to label %bb.az unwind label %bb.bb

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull @__func__._ZN2cv3dnn24BaseConvolutionLayerImpl8finalizeERKNS_11_InputArrayERKNS_12_OutputArrayE, ptr noundef nonnull @.str.2, i32 noundef 133) #24
          to label %bb.ba unwind label %bb.bc

bb.ba:                                            ; preds = %bb.az
  unreachable

bb.bb:                                            ; preds = %bb.ay
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

bb.bc:                                            ; preds = %bb.az
  %i.fg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fh = load ptr, ptr %26, align 8, !tbaa !60   ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.fj = icmp eq ptr %i.fh, %i.fi
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %bb.bc
  %i.fk = load i64, ptr %i.fi, align 8, !tbaa !29
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fl) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103, %bb.bb
  %.pn72 = phi { ptr, i32 } [ %i.ff, %bb.bb ], [ %i.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103 ], [ %i.fg, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  br label %.body

bb.bd:                                            ; preds = %._crit_edge
  %i.fm = icmp eq i64 %i.dx, 8
  br i1 %i.fm, label %bb.bf, label %.thread

bb.be:                                            ; preds = %._crit_edge.thread, %._crit_edge
  %i.fn = phi i32 [ %i.ep, %._crit_edge.thread ], [ %i.el, %._crit_edge ] ; 2 uses
  %i.fo = phi ptr [ %i.en, %._crit_edge.thread ], [ %i.ej, %._crit_edge ]
  %i.fp = and i32 %i.fn, -2
  %switch = icmp eq i32 %i.fp, 4
  br i1 %switch, label %bb.bf, label %.thread

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.fq = phi i1 [ false, %bb.be ], [ true, %bb.bd ]
  %i.fr = phi i32 [ %i.fn, %bb.be ], [ 3, %bb.bd ]
  %i.fs = phi ptr [ %i.fo, %bb.be ], [ %i.ej, %bb.bd ] ; 6 uses
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !92
  %i.fu = and i32 %i.ft, 4095                     ; 2 uses
  switch i32 %i.fu, label %.thread [
    i32 5, label %bb.bk
    i32 7, label %bb.bk
  ]

.thread:                                          ; preds = %._crit_edge.thread, %bb.bf, %bb.bd, %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %29)
          to label %bb.bg unwind label %bb.bi

bb.bg:                                            ; preds = %.thread
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull @__func__._ZN2cv3dnn24BaseConvolutionLayerImpl8finalizeERKNS_11_InputArrayERKNS_12_OutputArrayE, ptr noundef nonnull @.str.2, i32 noundef 137) #24
          to label %bb.bh unwind label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  unreachable

bb.bi:                                            ; preds = %.thread
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

bb.bj:                                            ; preds = %bb.bg
  %i.fw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fx = load ptr, ptr %28, align 8, !tbaa !60   ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.fz = icmp eq ptr %i.fx, %i.fy
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %bb.bj
  %i.ga = load i64, ptr %i.fy, align 8, !tbaa !29
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.gb) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106, %bb.bi
  %.pn59 = phi { ptr, i32 } [ %i.fv, %bb.bi ], [ %i.fw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106 ], [ %i.fw, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  br label %.body

bb.bk:                                            ; preds = %bb.bf, %bb.bf
  %i.gc = load ptr, ptr %i.g, align 8, !tbaa !114 ; 2 uses
  %i.gd = load ptr, ptr %18, align 8, !tbaa !115  ; 2 uses
  %.not245 = icmp eq ptr %i.gc, %i.gd
  br i1 %.not245, label %._crit_edge236.thread, label %.lr.ph235

._crit_edge236.thread:                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %36, i8 0, i64 24, i1 false)
  br label %.lr.ph242

.lr.ph235:                                        ; preds = %bb.bk
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = sub i64 %i.ge, %i.gf
  %i.gh = sdiv exact i64 %i.gg, 208
  %i.gi = icmp eq i64 %i.dx, 8
  %or.cond = and i1 %i.gi, %i.fq
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fs, i64 72
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fs, i64 84
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fs, i64 88
  br label %bb.bl

._crit_edge236:                                   ; preds = %._crit_edge232
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %36, i8 0, i64 24, i1 false)
  %i.gm = icmp sgt i32 %i.fr, 2
  br i1 %i.gm, label %.lr.ph242, label %._crit_edge243

.lr.ph242:                                        ; preds = %._crit_edge236.thread, %._crit_edge236
  %i.gn = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  br label %bb.cx

bb.bl:                                            ; preds = %.lr.ph235, %._crit_edge232
  %.034233 = phi i64 [ 0, %.lr.ph235 ], [ %i.ik, %._crit_edge232 ] ; 2 uses
  %i.gp = getelementptr inbounds nuw [208 x i8], ptr %i.fs, i64 %.034233 ; 6 uses
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !92
  %i.gr = and i32 %i.gq, 4095
  %i.gs = icmp eq i32 %i.gr, %i.fu
  br i1 %i.gs, label %bb.bs, label %bb.bn

bb.bm:                                            ; preds = %bb.bz, %bb.bv
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bn:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %31)
          to label %bb.bo unwind label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull @__func__._ZN2cv3dnn24BaseConvolutionLayerImpl8finalizeERKNS_11_InputArrayERKNS_12_OutputArrayE, ptr noundef nonnull @.str.2, i32 noundef 140) #24
          to label %bb.bp unwind label %bb.br

bb.bp:                                            ; preds = %bb.bo
  unreachable

bb.bq:                                            ; preds = %bb.bn
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

bb.br:                                            ; preds = %bb.bo
  %i.gv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gw = load ptr, ptr %30, align 8, !tbaa !60   ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.gy = icmp eq ptr %i.gw, %i.gx
  br i1 %i.gy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %bb.br
  %i.gz = load i64, ptr %i.gx, align 8, !tbaa !29
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.ha) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109, %bb.bq
  %.pn63 = phi { ptr, i32 } [ %i.gu, %bb.bq ], [ %i.gv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109 ], [ %i.gv, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  br label %.body

bb.bs:                                            ; preds = %bb.bl
  br i1 %or.cond, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !117
  %i.hd = and i32 %i.hc, -2
  %switch210 = icmp eq i32 %i.hd, 4
  br i1 %switch210, label %bb.bu, label %bb.cd

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.he = getelementptr inbounds nuw i8, ptr %i.gp, i64 72
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !132 ; 2 uses
  %i.hg = icmp sgt i32 %i.hf, 1
  br i1 %i.hg, label %bb.by, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %.noexc117 unwind label %bb.bm

.noexc117:                                        ; preds = %bb.bv
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.18, i32 noundef 97) #24
          to label %bb.bw unwind label %bb.bx

bb.bw:                                            ; preds = %.noexc117
  unreachable

bb.bx:                                            ; preds = %.noexc117
  %i.hh = landingpad { ptr, i32 }
          cleanup
  %i.hi = load ptr, ptr %13, align 8, !tbaa !60   ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.hk = icmp eq ptr %i.hi, %i.hj
  br i1 %i.hk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114: ; preds = %bb.bx
  %i.hl = load i64, ptr %i.hj, align 8, !tbaa !29
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hm) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i115: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %.body

bb.by:                                            ; preds = %bb.bu
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gp, i64 84
  %i.ho = load i32, ptr %i.gj, align 8, !tbaa !132 ; 2 uses
  %i.hp = icmp sgt i32 %i.ho, 1
  br i1 %i.hp, label %bb.cc, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %.noexc126 unwind label %bb.bm

.noexc126:                                        ; preds = %bb.bz
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.18, i32 noundef 103) #24
          to label %bb.ca unwind label %bb.cb

bb.ca:                                            ; preds = %.noexc126
  unreachable

bb.cb:                                            ; preds = %.noexc126
  %i.hq = landingpad { ptr, i32 }
          cleanup
  %i.hr = load ptr, ptr %11, align 8, !tbaa !60   ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ht = icmp eq ptr %i.hr, %i.hs
  br i1 %i.ht, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i123: ; preds = %bb.cb
  %i.hu = load i64, ptr %i.hs, align 8, !tbaa !29
  %i.hv = add i64 %i.hu, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hv) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i124

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i124: ; preds = %bb.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %.body

bb.cc:                                            ; preds = %bb.by
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gp, i64 88
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !82
  %i.hy = load i32, ptr %i.gl, align 8, !tbaa !82
  %i.hz = icmp eq i32 %i.hx, %i.hy
  br i1 %i.hz, label %.preheader, label %bb.cd

.preheader:                                       ; preds = %bb.cc
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !117 ; 2 uses
  %i.ic = icmp sgt i32 %i.ib, 0
  br i1 %i.ic, label %.lr.ph231.preheader, label %._crit_edge232

.lr.ph231.preheader:                              ; preds = %.preheader
  %wide.trip.count263 = zext nneg i32 %i.hf to i64
  %wide.trip.count265 = zext nneg i32 %i.ho to i64
  %wide.trip.count267 = zext nneg i32 %i.ib to i64
  br label %.lr.ph231

bb.cd:                                            ; preds = %bb.bt, %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %33)
          to label %bb.ce unwind label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull @__func__._ZN2cv3dnn24BaseConvolutionLayerImpl8finalizeERKNS_11_InputArrayERKNS_12_OutputArrayE, ptr noundef nonnull @.str.2, i32 noundef 141) #24
          to label %bb.cf unwind label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  unreachable

bb.cg:                                            ; preds = %bb.cd
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

bb.ch:                                            ; preds = %bb.ce
  %i.ie = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.if = load ptr, ptr %32, align 8, !tbaa !60   ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.ih = icmp eq ptr %i.if, %i.ig
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %bb.ch
  %i.ii = load i64, ptr %i.ig, align 8, !tbaa !29
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ij) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %bb.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129, %bb.cg
  %.pn65 = phi { ptr, i32 } [ %i.id, %bb.cg ], [ %i.ie, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129 ], [ %i.ie, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  br label %.body

bb.ci:                                            ; preds = %bb.cq
  %indvars.iv.next261 = add nuw nsw i64 %indvars.iv260, 1 ; 2 uses
  %exitcond268.not = icmp eq i64 %indvars.iv.next261, %wide.trip.count267
  br i1 %exitcond268.not, label %._crit_edge232, label %.lr.ph231, !llvm.loop !246

._crit_edge232:                                   ; preds = %bb.ci, %.preheader
  %i.ik = add nuw i64 %.034233, 1                 ; 2 uses
  %exitcond270.not = icmp eq i64 %i.ik, %i.gh
  br i1 %exitcond270.not, label %._crit_edge236, label %bb.bl, !llvm.loop !247

.lr.ph231:                                        ; preds = %.lr.ph231.preheader, %bb.ci
  %indvars.iv260 = phi i64 [ 0, %.lr.ph231.preheader ], [ %indvars.iv.next261, %bb.ci ] ; 5 uses
  %exitcond264.not = icmp eq i64 %indvars.iv260, %wide.trip.count263
  br i1 %exitcond264.not, label %bb.cj, label %bb.cm

bb.cj:                                            ; preds = %.lr.ph231
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc137 unwind label %bb.cr

.noexc137:                                        ; preds = %bb.cj
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.18, i32 noundef 97) #24
          to label %bb.ck unwind label %bb.cl

bb.ck:                                            ; preds = %.noexc137
  unreachable

bb.cl:                                            ; preds = %.noexc137
  %i.il = landingpad { ptr, i32 }
          cleanup
  %i.im = load ptr, ptr %9, align 8, !tbaa !60    ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.io = icmp eq ptr %i.im, %i.in
  br i1 %i.io, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i134: ; preds = %bb.cl
  %i.ip = load i64, ptr %i.in, align 8, !tbaa !29
  %i.iq = add i64 %i.ip, 1
  call void @_ZdlPvm(ptr noundef %i.im, i64 noundef %i.iq) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i135: ; preds = %bb.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i134
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %.body

bb.cm:                                            ; preds = %.lr.ph231
  %exitcond266.not = icmp eq i64 %indvars.iv260, %wide.trip.count265
  br i1 %exitcond266.not, label %bb.cn, label %bb.cq

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %.noexc146 unwind label %bb.cr

.noexc146:                                        ; preds = %bb.cn
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.18, i32 noundef 103) #24
          to label %bb.co unwind label %bb.cp

bb.co:                                            ; preds = %.noexc146
  unreachable

bb.cp:                                            ; preds = %.noexc146
  %i.ir = landingpad { ptr, i32 }
          cleanup
  %i.is = load ptr, ptr %7, align 8, !tbaa !60    ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.iu = icmp eq ptr %i.is, %i.it
  br i1 %i.iu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i143: ; preds = %bb.cp
  %i.iv = load i64, ptr %i.it, align 8, !tbaa !29
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.is, i64 noundef %i.iw) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i144: ; preds = %bb.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i143
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %.body

bb.cq:                                            ; preds = %bb.cm
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %indvars.iv260
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !82
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv260
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !82
  %i.jb = icmp eq i32 %i.iy, %i.ja
  br i1 %i.jb, label %bb.ci, label %bb.cs

bb.cr:                                            ; preds = %bb.cn, %bb.cj
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cs:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %35)
          to label %bb.ct unwind label %bb.cv

bb.ct:                                            ; preds = %bb.cs
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull @__func__._ZN2cv3dnn24BaseConvolutionLayerImpl8finalizeERKNS_11_InputArrayERKNS_12_OutputArrayE, ptr noundef nonnull @.str.2, i32 noundef 143) #24
          to label %bb.cu unwind label %bb.cw

bb.cu:                                            ; preds = %bb.ct
  unreachable

bb.cv:                                            ; preds = %bb.cs
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

bb.cw:                                            ; preds = %bb.ct
  %i.je = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jf = load ptr, ptr %34, align 8, !tbaa !60   ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.jh = icmp eq ptr %i.jf, %i.jg
  br i1 %i.jh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %bb.cw
  %i.ji = load i64, ptr %i.jg, align 8, !tbaa !29
  %i.jj = add i64 %i.ji, 1
  call void @_ZdlPvm(ptr noundef %i.jf, i64 noundef %i.jj) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %bb.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150, %bb.cv
  %.pn67 = phi { ptr, i32 } [ %i.jd, %bb.cv ], [ %i.je, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150 ], [ %i.je, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  br label %.body

._crit_edge243:                                   ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit182, %._crit_edge236
  %.sroa.11.0.lcssa = phi ptr [ null, %._crit_edge236 ], [ %.sroa.11.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit182 ] ; 2 uses
  %.sroa.0200.0.lcssa = phi ptr [ null, %._crit_edge236 ], [ %.sroa.0200.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit182 ] ; 4 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 320
  invoke void @_ZN2cv3dnn19getConvPoolPaddingsERKSt6vectorIiSaIiEERKS1_ImSaImEES9_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS7_SI_(ptr noundef nonnull align 8 dereferenceable(24) %36, ptr noundef nonnull align 8 dereferenceable(24) %i.dr, ptr noundef nonnull align 8 dereferenceable(24) %i.jk, ptr noundef nonnull align 8 dereferenceable(32) %i.jl, ptr noundef nonnull align 8 dereferenceable(24) %i.jm, ptr noundef nonnull align 8 dereferenceable(24) %i.jn)
          to label %bb.dq unwind label %bb.ds

bb.cx:                                            ; preds = %.lr.ph242, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit182
  %indvars.iv271 = phi i64 [ 2, %.lr.ph242 ], [ %indvars.iv.next272, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit182 ] ; 5 uses
  %i.jo = phi ptr [ %i.fs, %.lr.ph242 ], [ %i.lz, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit182 ] ; 2 uses
  %.sroa.0200.0239 = phi ptr [ null, %.lr.ph242 ], [ %.sroa.0200.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit182 ] ; 9 uses
  %.sroa.8.0238 = phi ptr [ null, %.lr.ph242 ], [ %.sroa.8.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit182 ] ; 6 uses
  %.sroa.11.0237 = phi ptr [ null, %.lr.ph242 ], [ %.sroa.11.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit182 ] ; 8 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 72
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !132
  %i.jr = sext i32 %i.jq to i64
  %i.js = icmp slt i64 %indvars.iv271, %i.jr
  br i1 %i.js, label %bb.db, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
end_hunk_0
