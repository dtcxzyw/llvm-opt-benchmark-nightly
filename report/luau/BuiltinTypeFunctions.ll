Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/BuiltinTypeFunctions?download=true
inline.NumInlined: 5299
inline.NumDeleted: 1488
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4Luau17indexFunctionImplERKSt6vectorIPKNS_4TypeESaIS3_EERKS0_IPKNS_11TypePackVarESaISA_EENS_7NotNullINS_19TypeFunctionContextEEEb:bb.a

bb.bw:                                            ; preds = %bb.bt
  %.sroa.6.0223 = load i8, ptr %.sroa.6.0..sroa_idx, align 8
  %i.fb = trunc nuw i8 %.sroa.6.0223 to i1
  br i1 %i.fb, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.bw, %bb.by
  %.sroa.0168.0.in224 = phi ptr [ %i.fk, %bb.by ], [ %i.ew, %bb.bw ]
  %.sroa.0168.0 = load ptr, ptr %.sroa.0168.0.in224, align 8
  %i.fc = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %.sroa.0168.0)
          to label %_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit131 unwind label %bb.bz ; 6 uses

_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit131: ; preds = %.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fc) ]
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !131
  %i.fe = icmp eq i32 %i.fd, 11
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fg = select i1 %i.fe, ptr %i.ff, ptr null
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 40
  invoke void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull align 8 dereferenceable(48) %i.fh)
          to label %bb.bx unwind label %bb.bz

bb.bx:                                            ; preds = %_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit131
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 216
  %i.fj = invoke noundef zeroext i1 @_ZN4Luau21searchPropsAndIndexerEPKNS_4TypeESt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8PropertyESt4lessIS9_ESaISt4pairIKS9_SA_EEESt8optionalINS_12TableIndexerEERNS_12DenseHashSetIS2_NS_16DenseHashPointerESt8equal_toIS2_EEENS_7NotNullINS_19TypeFunctionContextEEE(ptr noundef %i.ex, ptr noundef nonnull align 8 %12, ptr noundef nonnull byval(%"class.std::optional.343") align 8 %i.fi, ptr noundef nonnull align 8 dereferenceable(40) %10, ptr %3)
          to label %bb.by unwind label %bb.ca     ; 2 uses

bb.by:                                            ; preds = %bb.bx
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %12) #29
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 80
  %.sroa.6.0..sroa_idx170 = getelementptr inbounds nuw i8, ptr %i.fc, i64 96
  %.sroa.6.0 = load i8, ptr %.sroa.6.0..sroa_idx170, align 8
  %i.fl = trunc nuw i8 %.sroa.6.0 to i1
  %i.fm = xor i1 %i.fj, true
  %i.fn = and i1 %i.fm, %i.fl
  br i1 %i.fn, label %.lr.ph, label %._crit_edge, !llvm.loop !567

bb.bz:                                            ; preds = %_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit131, %.lr.ph
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.ca:                                            ; preds = %bb.bx
  %i.fp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %12) #29
  br label %bb.dn

._crit_edge:                                      ; preds = %bb.by
  br i1 %i.fj, label %.thread, label %.critedge

.critedge:                                        ; preds = %bb.bw, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %.sroa.014.0.copyload = load ptr, ptr %i.eh, align 8, !tbaa !190
  %i.fq = load ptr, ptr %.sroa.0179.0230, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.101, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.cb unwind label %bb.cd

bb.cb:                                            ; preds = %.critedge
  %i.fr = invoke { ptr, i8 } @_ZN4Luau18findMetatableEntryENS_7NotNullINS_12BuiltinTypesEEERSt6vectorINS_9TypeErrorESaIS4_EEPKNS_4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8LocationE(ptr %.sroa.014.0.copyload, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef %i.fq, ptr noundef nonnull align 8 dereferenceable(32) %14, i64 0, i64 0)
          to label %bb.cc unwind label %bb.ce     ; 2 uses

bb.cc:                                            ; preds = %bb.cb
  %i.fs = extractvalue { ptr, i8 } %i.fr, 0
  %i.ft = extractvalue { ptr, i8 } %i.fr, 1
  %i.fu = load ptr, ptr %14, align 8, !tbaa !62   ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.ei
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.cc
  %i.fw = load i64, ptr %i.ei, align 8, !tbaa !63
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fx) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  %i.fy = trunc nuw i8 %i.ft to i1
  br i1 %i.fy, label %bb.cf, label %bb.ck

bb.cd:                                            ; preds = %.critedge
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

bb.ce:                                            ; preds = %bb.cb
  %i.ga = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gb = load ptr, ptr %14, align 8, !tbaa !62   ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.ei
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132: ; preds = %bb.ce
  %i.gd = load i64, ptr %i.ei, align 8, !tbaa !63
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.ge) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132, %bb.cd
  %.pn = phi { ptr, i32 } [ %i.fz, %bb.cd ], [ %i.ga, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132 ], [ %i.ga, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  br label %bb.cj

bb.cf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.gf = invoke noundef zeroext i1 @_ZN4Luau12tblIndexIntoEPKNS_4TypeES2_RNS_12DenseHashSetIS2_NS_16DenseHashPointerESt8equal_toIS2_EEENS_7NotNullINS_19TypeFunctionContextEEEb(ptr noundef %i.ex, ptr noundef %i.fs, ptr noundef nonnull align 8 dereferenceable(40) %10, ptr nonnull %3, i1 noundef zeroext false)
          to label %bb.cg unwind label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  br i1 %i.gf, label %bb.ci, label %bb.ck

bb.ch:                                            ; preds = %bb.cf
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.ci:                                            ; preds = %bb.cg
  call void @_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %.thread

.thread:                                          ; preds = %._crit_edge, %bb.bt, %bb.ci
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.0175.0226, i64 8 ; 2 uses
  %.not219 = icmp eq ptr %i.gh, %i.et
  br i1 %.not219, label %._crit_edge228.loopexit, label %bb.br

bb.cj:                                            ; preds = %bb.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134
  %.pn98 = phi { ptr, i32 } [ %i.gg, %bb.ch ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134 ]
  call void @_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %bb.dn

bb.ck:                                            ; preds = %bb.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.gi, align 8, !tbaa !70
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 2, ptr %i.gj, align 8, !tbaa !93
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 0, ptr %i.gl, align 8, !tbaa !94
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gk, i8 0, i64 48, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gm, i8 0, i64 24, i1 false)
  call void @_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %bb.dk

._crit_edge228.loopexit:                          ; preds = %.thread
  %.pre = load ptr, ptr %5, align 8, !tbaa !189
  br label %._crit_edge228

._crit_edge228:                                   ; preds = %._crit_edge228.loopexit, %_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit
  %i.gn = phi ptr [ %.pre, %._crit_edge228.loopexit ], [ %i.ej, %_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit ] ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.0179.0230, i64 8 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 160
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !128
  %.not216 = icmp eq ptr %i.go, %i.gq
  br i1 %.not216, label %.thread211, label %bb.bo, !llvm.loop !568

.thread211:                                       ; preds = %._crit_edge228, %..thread211_crit_edge, %bb.bn
  %i.gr = phi ptr [ %.pre245, %..thread211_crit_edge ], [ %i.ec, %bb.bn ], [ %i.gn, %._crit_edge228 ]
  %i.gs = invoke noundef zeroext i1 @_ZNK4Luau14NormalizedType9hasTablesEv(ptr noundef nonnull align 8 dereferenceable(489) %i.gr)
          to label %bb.cl unwind label %bb.bm

bb.cl:                                            ; preds = %.thread211
  br i1 %i.gs, label %bb.cm, label %.critedge125

bb.cm:                                            ; preds = %bb.cl
  %i.gt = load ptr, ptr %5, align 8, !tbaa !189
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 280
  %i.gv = invoke ptr @_ZNK4Luau7TypeIds5beginEv(ptr noundef nonnull align 8 dereferenceable(72) %i.gu)
          to label %.preheader unwind label %bb.ct ; 2 uses

.preheader:                                       ; preds = %bb.cm
  %..sroa.sel187.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %8, ptr %i.ds
  %..sroa.sel187.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %..sroa.sel187.v.sroa.sel.v.sroa.sel.v, i64 8 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %3, i64 8
  br i1 %4, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %.critedge123.us
  %.sroa.0162.0.us = phi ptr [ %18, %.critedge123.us ], [ %i.gv, %.preheader ] ; 3 uses
  %i.gx = load ptr, ptr %5, align 8, !tbaa !189
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 280
  %i.gz = invoke ptr @_ZNK4Luau7TypeIds3endEv(ptr noundef nonnull align 8 dereferenceable(72) %i.gy)
          to label %bb.cn unwind label %.split238.us

bb.cn:                                            ; preds = %.preheader.split.us
  %.not217.us = icmp eq ptr %.sroa.0162.0.us, %i.gz
  br i1 %.not217.us, label %.critedge125, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ha = load ptr, ptr %., align 8, !tbaa !128   ; 2 uses
  %i.hb = load ptr, ptr %..sroa.sel187.v.sroa.sel.v.sroa.sel, align 8, !tbaa !128 ; 2 uses
  %.not218233.us = icmp eq ptr %i.ha, %i.hb
  br i1 %.not218233.us, label %.critedge123.us, label %.lr.ph236.us

.critedge123.us:                                  ; preds = %bb.cr, %bb.co
  %18 = getelementptr inbounds nuw i8, ptr %.sroa.0162.0.us, i64 8
  br label %.preheader.split.us, !llvm.loop !569

.lr.ph236.us:                                     ; preds = %bb.co, %bb.cr
  %.sroa.0158.0234.us.us = phi ptr [ %i.hi, %bb.cr ], [ %i.ha, %bb.co ] ; 2 uses
  %i.hc = load ptr, ptr %.sroa.0158.0234.us.us, align 8, !tbaa !65
  %i.hd = load ptr, ptr %.sroa.0162.0.us, align 8, !tbaa !65
  %i.he = invoke noundef zeroext i1 @_ZN4Luau12tblIndexIntoEPKNS_4TypeES2_RNS_12DenseHashSetIS2_NS_16DenseHashPointerESt8equal_toIS2_EEENS_7NotNullINS_19TypeFunctionContextEEEb(ptr noundef %i.hc, ptr noundef %i.hd, ptr noundef nonnull align 8 dereferenceable(40) %10, ptr %3, i1 noundef zeroext true)
          to label %bb.cp unwind label %.split.us.split.us

bb.cp:                                            ; preds = %.lr.ph236.us
  br i1 %i.he, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.hf = load ptr, ptr %i.gw, align 8, !tbaa !68
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  %i.hh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE6insertERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.hg)
          to label %bb.cr unwind label %.split.us.split.us ; 0 uses

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.0158.0234.us.us, i64 8 ; 2 uses
  %.not218.us.us = icmp eq ptr %i.hi, %i.hb
  br i1 %.not218.us.us, label %.critedge123.us, label %.lr.ph236.us

.split238.us:                                     ; preds = %.preheader.split.us
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

.split.us.split.us:                               ; preds = %bb.cq, %.lr.ph236.us
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

.preheader.split:                                 ; preds = %.preheader, %.critedge123
  %.sroa.0162.0 = phi ptr [ %i.hx, %.critedge123 ], [ %i.gv, %.preheader ] ; 3 uses
  %i.hl = load ptr, ptr %5, align 8, !tbaa !189
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 280
  %i.hn = invoke ptr @_ZNK4Luau7TypeIds3endEv(ptr noundef nonnull align 8 dereferenceable(72) %i.hm)
          to label %bb.cs unwind label %.split238

bb.cs:                                            ; preds = %.preheader.split
  %.not217 = icmp eq ptr %.sroa.0162.0, %i.hn
  br i1 %.not217, label %.critedge125, label %bb.cu

bb.ct:                                            ; preds = %bb.cm
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

.split238:                                        ; preds = %.preheader.split
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.cu:                                            ; preds = %bb.cs
  %i.hq = load ptr, ptr %., align 8, !tbaa !128   ; 2 uses
  %i.hr = load ptr, ptr %..sroa.sel187.v.sroa.sel.v.sroa.sel, align 8, !tbaa !128 ; 2 uses
  %.not218233 = icmp eq ptr %i.hq, %i.hr
  br i1 %.not218233, label %.critedge123, label %.lr.ph236

.lr.ph236:                                        ; preds = %bb.cu, %bb.cw
  %.sroa.0158.0234 = phi ptr [ %i.hw, %bb.cw ], [ %i.hq, %bb.cu ] ; 2 uses
  %i.hs = load ptr, ptr %.sroa.0158.0234, align 8, !tbaa !65
  %i.ht = load ptr, ptr %.sroa.0162.0, align 8, !tbaa !65
  %i.hu = invoke noundef zeroext i1 @_ZN4Luau12tblIndexIntoEPKNS_4TypeES2_RNS_12DenseHashSetIS2_NS_16DenseHashPointerESt8equal_toIS2_EEENS_7NotNullINS_19TypeFunctionContextEEEb(ptr noundef %i.hs, ptr noundef %i.ht, ptr noundef nonnull align 8 dereferenceable(40) %10, ptr %3, i1 noundef zeroext false)
          to label %bb.cv unwind label %.split

bb.cv:                                            ; preds = %.lr.ph236
  br i1 %i.hu, label %bb.cw, label %bb.cx

.split:                                           ; preds = %.lr.ph236
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.cw:                                            ; preds = %bb.cv
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.0158.0234, i64 8 ; 2 uses
  %.not218 = icmp eq ptr %i.hw, %i.hr
  br i1 %.not218, label %.critedge123, label %.lr.ph236

.critedge123:                                     ; preds = %bb.cw, %bb.cu
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.0162.0, i64 8
  br label %.preheader.split, !llvm.loop !569

bb.cx:                                            ; preds = %bb.cv
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.hy, align 8, !tbaa !70
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 2, ptr %i.hz, align 8, !tbaa !93
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 0, ptr %i.ib, align 8, !tbaa !94
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ia, i8 0, i64 48, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ic, i8 0, i64 24, i1 false)
  br label %bb.dk

.critedge125:                                     ; preds = %bb.cs, %bb.cn, %bb.cl
  %i.id = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !318
  %i.if = icmp eq i64 %i.ie, 1
  br i1 %i.if, label %bb.cy, label %bb.db

bb.cy:                                            ; preds = %.critedge125
  %i.ig = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !273 ; 3 uses
  %.not.i.i135 = icmp eq i64 %i.ih, 0
  %.pre246 = load ptr, ptr %10, align 8, !tbaa !245 ; 2 uses
  br i1 %.not.i.i135, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.cy
  %i.ii = load ptr, ptr %i.dt, align 8, !tbaa !65
  br label %bb.cz

bb.cz:                                            ; preds = %bb.da, %.lr.ph.i.i
  %.04.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.im, %bb.da ] ; 3 uses
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %.pre246, i64 %.04.i.i
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !65
  %i.il = icmp eq ptr %i.ik, %i.ii
  br i1 %i.il, label %bb.da, label %.loopexit

bb.da:                                            ; preds = %bb.cz
  %i.im = add nuw i64 %.04.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.im, %i.ih
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.cz, !llvm.loop !9

.loopexit:                                        ; preds = %bb.da, %bb.cz, %bb.cy
  %.0.lcssa.i.i = phi i64 [ 0, %bb.cy ], [ %i.ih, %bb.da ], [ %.04.i.i, %bb.cz ]
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %.pre246, i64 %.0.lcssa.i.i
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !65
  store ptr %i.io, ptr %0, align 8, !tbaa !63
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ip, align 8, !tbaa !70
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.iq, align 8, !tbaa !93
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 0, ptr %i.is, align 8, !tbaa !94
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ir, i8 0, i64 48, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.it, i8 0, i64 24, i1 false)
  br label %bb.dk

bb.db:                                            ; preds = %.critedge125
  %i.iu = load ptr, ptr %3, align 8, !tbaa !156
  %i.iv = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !273 ; 4 uses
  %.not.i.i136 = icmp eq i64 %i.iw, 0
  br i1 %.not.i.i136, label %.loopexit220, label %.lr.ph.i.i137

.lr.ph.i.i137:                                    ; preds = %bb.db
  %i.ix = load ptr, ptr %10, align 8, !tbaa !245
  %i.iy = load ptr, ptr %i.dt, align 8, !tbaa !65
  br label %bb.dc

bb.dc:                                            ; preds = %bb.dd, %.lr.ph.i.i137
  %.04.i.i138 = phi i64 [ 0, %.lr.ph.i.i137 ], [ %i.jc, %bb.dd ] ; 3 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %.04.i.i138
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !65
  %i.jb = icmp eq ptr %i.ja, %i.iy
  br i1 %i.jb, label %bb.dd, label %.loopexit220

bb.dd:                                            ; preds = %bb.dc
  %i.jc = add nuw i64 %.04.i.i138, 1              ; 2 uses
  %exitcond.not.i.i142 = icmp eq i64 %i.jc, %i.iw
  br i1 %exitcond.not.i.i142, label %.loopexit220, label %bb.dc, !llvm.loop !9

.loopexit220:                                     ; preds = %bb.dc, %bb.dd, %bb.db
  %.0.lcssa.i.i139 = phi i64 [ 0, %bb.db ], [ %i.iw, %bb.dd ], [ %.04.i.i138, %bb.dc ]
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  invoke void @_ZNSt6vectorIPKN4Luau4TypeESaIS3_EEC2INS0_6detail14DenseHashTableIS3_S3_S3_NS7_16ItemInterfaceSetIS3_EENS0_16DenseHashPointerESt8equal_toIS3_EE8iteratorEvEET_SG_RKS4_(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr nonnull %10, i64 %.0.lcssa.i.i139, ptr nonnull %10, i64 %i.iw, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.de unwind label %bb.dh

bb.de:                                            ; preds = %.loopexit220
  %i.jd = invoke noundef ptr @_ZN4Luau9TypeArena7addTypeINS_9UnionTypeEEEPKNS_4TypeET_(ptr noundef nonnull align 8 dereferenceable(184) %i.iu, ptr noundef nonnull align 8 %16)
          to label %bb.df unwind label %bb.di

bb.df:                                            ; preds = %bb.de
  store ptr %i.jd, ptr %0, align 8, !tbaa !63
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.je, align 8, !tbaa !70
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.jf, align 8, !tbaa !93
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 0, ptr %i.jh, align 8, !tbaa !94
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.jg, i8 0, i64 48, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ji, i8 0, i64 24, i1 false)
  %i.jj = load ptr, ptr %16, align 8, !tbaa !52   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.jj, null
  br i1 %.not.i.i.i.i, label %_ZN4Luau9UnionTypeD2Ev.exit, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.jk = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !115
  %i.jm = ptrtoint ptr %i.jl to i64
  %i.jn = ptrtoint ptr %i.jj to i64
  %i.jo = sub i64 %i.jm, %i.jn
  call void @_ZdlPvm(ptr noundef nonnull %i.jj, i64 noundef %i.jo) #31
  br label %_ZN4Luau9UnionTypeD2Ev.exit

_ZN4Luau9UnionTypeD2Ev.exit:                      ; preds = %bb.df, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  br label %bb.dk

bb.dh:                                            ; preds = %.loopexit220
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Luau9UnionTypeD2Ev.exit147

bb.di:                                            ; preds = %bb.de
  %i.jq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jr = load ptr, ptr %16, align 8, !tbaa !52   ; 3 uses
  %.not.i.i.i.i146 = icmp eq ptr %i.jr, null
  br i1 %.not.i.i.i.i146, label %_ZN4Luau9UnionTypeD2Ev.exit147, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.js = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !115
  %i.ju = ptrtoint ptr %i.jt to i64
  %i.jv = ptrtoint ptr %i.jr to i64
end_hunk_0
