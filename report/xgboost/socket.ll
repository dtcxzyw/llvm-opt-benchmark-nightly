Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/socket?download=true
inline.NumInlined: 1156
inline.NumDeleted: 497
begin_hunk_0_@_ZN5rabit5utils10PollHelper4PollENSt6chrono8durationIlSt5ratioILl1ELl1EEEEb:bb.a
  %.02328.i.i73 = phi i64 [ %i.fh, %bb.ak ], [ %i.k, %bb.ae ] ; 5 uses
  %i.fb = icmp ult i64 %.02328.i.i73, 100
  br i1 %i.fb, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph.i.i71
  %i.fc = add i32 %.029.i.i72, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i74

bb.ag:                                            ; preds = %.lr.ph.i.i71
  %i.fd = icmp ult i64 %.02328.i.i73, 1000
  br i1 %i.fd, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fe = add i32 %.029.i.i72, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i74

bb.ai:                                            ; preds = %bb.ag
  %i.ff = icmp ult i64 %.02328.i.i73, 10000
  br i1 %i.ff, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fg = add i32 %.029.i.i72, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i74

bb.ak:                                            ; preds = %bb.ai
  %i.fh = udiv i64 %.02328.i.i73, 10000
  %i.fi = add i32 %.029.i.i72, 4                  ; 2 uses
  %i.fj = icmp ult i64 %.02328.i.i73, 100000
  br i1 %i.fj, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i74, label %.lr.ph.i.i71, !llvm.loop !264

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i74:  ; preds = %bb.ak, %bb.aj, %bb.ah, %bb.af, %bb.ae
  %.022.i.i75 = phi i32 [ %i.fg, %bb.aj ], [ %i.fc, %bb.af ], [ %i.fe, %bb.ah ], [ 1, %bb.ae ], [ %i.fi, %bb.ak ]
  %i.fk = zext i32 %.022.i.i75 to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  store ptr %i.fl, ptr %9, align 8, !tbaa !53, !alias.scope !279
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.fk, i8 noundef signext 0)
          to label %.noexc82 unwind label %bb.ar

.noexc82:                                         ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i74
  %i.fm = load ptr, ptr %9, align 8, !tbaa !43, !alias.scope !279 ; 4 uses
  %i.fn = icmp ugt i64 %i.k, 99
  br i1 %i.fn, label %.lr.ph.preheader.i.i79, label %._crit_edge.i.i76

.lr.ph.preheader.i.i79:                           ; preds = %.noexc82
  %i.fo = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !46, !alias.scope !279
  %i.fq = trunc i64 %i.fp to i32
  %i.fr = add i32 %i.fq, -1
  br label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %.lr.ph.i4.i, %.lr.ph.preheader.i.i79
  %.020.i.i80 = phi i64 [ %i.fu, %.lr.ph.i4.i ], [ %i.k, %.lr.ph.preheader.i.i79 ] ; 3 uses
  %.01819.i.i81 = phi i32 [ %i.ge, %.lr.ph.i4.i ], [ %i.fr, %.lr.ph.preheader.i.i79 ] ; 3 uses
  %i.fs = urem i64 %.020.i.i80, 100
  %i.ft = shl nuw nsw i64 %i.fs, 1
  %i.fu = udiv i64 %.020.i.i80, 100               ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ft ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 1
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !15, !noalias !279
  %i.fy = zext i32 %.01819.i.i81 to i64
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fy
  store i8 %i.fx, ptr %i.fz, align 1, !tbaa !15
  %i.ga = load i8, ptr %i.fv, align 2, !tbaa !15, !noalias !279
  %i.gb = add i32 %.01819.i.i81, -1
  %i.gc = zext i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.gc
  store i8 %i.ga, ptr %i.gd, align 1, !tbaa !15
  %i.ge = add i32 %.01819.i.i81, -2
  %i.gf = icmp ugt i64 %.020.i.i80, 9999
  br i1 %i.gf, label %.lr.ph.i4.i, label %._crit_edge.i.i76, !llvm.loop !265

._crit_edge.i.i76:                                ; preds = %.lr.ph.i4.i, %.noexc82
  %.0.lcssa.i.i77 = phi i64 [ %i.k, %.noexc82 ], [ %i.fu, %.lr.ph.i4.i ] ; 3 uses
  %i.gg = icmp samesign ugt i64 %.0.lcssa.i.i77, 9
  br i1 %i.gg, label %bb.al, label %bb.am

bb.al:                                            ; preds = %._crit_edge.i.i76
  %i.gh = shl nuw nsw i64 %.0.lcssa.i.i77, 1
  %i.gi = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.gh ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 1
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !15, !noalias !279
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  store i8 %i.gk, ptr %i.gl, align 1, !tbaa !15
  %i.gm = load i8, ptr %i.gi, align 2, !tbaa !15, !noalias !279
  br label %bb.an

bb.am:                                            ; preds = %._crit_edge.i.i76
  %i.gn = trunc nuw nsw i64 %.0.lcssa.i.i77 to i8
  %i.go = or disjoint i8 %i.gn, 48
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %storemerge.i.i78 = phi i8 [ %i.go, %bb.am ], [ %i.gm, %bb.al ]
  store i8 %storemerge.i.i78, ptr %i.fm, align 1, !tbaa !15
  %i.gp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.54, i64 noundef 18)
          to label %.noexc86 unwind label %bb.as  ; 6 uses

.noexc86:                                         ; preds = %bb.an
  %i.gq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.gq, ptr %8, align 8, !tbaa !53, !alias.scope !282
  %i.gr = load ptr, ptr %i.gp, align 8, !tbaa !43 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 16 ; 5 uses
  %i.gt = icmp eq ptr %i.gr, %i.gs
  br i1 %i.gt, label %bb.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

bb.ao:                                            ; preds = %.noexc86
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !46 ; 3 uses
  %i.gw = icmp ult i64 %i.gv, 16
  call void @llvm.assume(i1 %i.gw)
  %i.gx = add nuw nsw i64 %i.gv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gq, ptr noundef nonnull align 8 dereferenceable(1) %i.gs, i64 %i.gx, i1 false)
  br label %bb.ap

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %.noexc86
  store ptr %i.gr, ptr %8, align 8, !tbaa !43, !alias.scope !282
  %i.gy = load i64, ptr %i.gs, align 8, !tbaa !15
  store i64 %i.gy, ptr %i.gq, align 8, !tbaa !15, !alias.scope !282
  %.phi.trans.insert.i84 = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %.pre.i85 = load i64, ptr %.phi.trans.insert.i84, align 8, !tbaa !46
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83, %bb.ao
  %i.gz = phi i64 [ %i.gv, %bb.ao ], [ %.pre.i85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83 ]
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.hb = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.gz, ptr %i.hb, align 8, !tbaa !46, !alias.scope !282
  store ptr %i.gs, ptr %i.gp, align 8, !tbaa !43
  store i64 0, ptr %i.ha, align 8, !tbaa !46
  store i8 0, ptr %i.gs, align 8, !tbaa !15
  invoke void @_ZN7xgboost6system12FailWithCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"struct.xgboost::collective::Result") align 8 %0, ptr noundef nonnull align 8 %8)
          to label %bb.aq unwind label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.hc = load ptr, ptr %8, align 8, !tbaa !43    ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.gq
  br i1 %i.hd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %bb.aq
  %i.he = load i64, ptr %i.gq, align 8, !tbaa !15
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hf) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  %i.hg = load ptr, ptr %9, align 8, !tbaa !43    ; 2 uses
  %i.hh = icmp eq ptr %i.hg, %i.fl
  br i1 %i.hh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  %i.hi = load i64, ptr %i.fl, align 8, !tbaa !15
  %i.hj = add i64 %i.hi, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hj) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %_ZN7xgboost10collective6ResultD2Ev.exit

bb.ar:                                            ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i74
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

bb.as:                                            ; preds = %bb.an
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

bb.at:                                            ; preds = %bb.ap
  %i.hm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hn = load ptr, ptr %8, align 8, !tbaa !43    ; 2 uses
  %i.ho = icmp eq ptr %i.hn, %i.gq
  br i1 %i.ho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %bb.at
  %i.hp = load i64, ptr %i.gq, align 8, !tbaa !15
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94, %bb.as
  %.pn34 = phi { ptr, i32 } [ %i.hl, %bb.as ], [ %i.hm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ], [ %i.hm, %bb.at ] ; 2 uses
  %i.hr = load ptr, ptr %9, align 8, !tbaa !43    ; 2 uses
  %i.hs = icmp eq ptr %i.hr, %i.fl
  br i1 %i.hs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96
  %i.ht = load i64, ptr %i.fl, align 8, !tbaa !15
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hu) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97, %bb.ar
  %.pn34.pn = phi { ptr, i32 } [ %i.hk, %bb.ar ], [ %.pn34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97 ], [ %.pn34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %bb.be

bb.au:                                            ; preds = %.lr.ph181, %bb.bb
  %.sroa.0107.0180 = phi ptr [ %.sroa.0116.0.lcssa, %.lr.ph181 ], [ %i.ja, %bb.bb ] ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.0107.0180, i64 6 ; 2 uses
  invoke void @_ZN5rabit5utils9PollErrorIsEENSt9enable_ifIXsr3stdE13is_integral_vIT_EEN7xgboost10collective6ResultEE4typeERKS3_(ptr dead_on_unwind writable sret(%"struct.xgboost::collective::Result") align 8 %0, ptr noundef nonnull align 2 dereferenceable(2) %i.hv)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.hw = load ptr, ptr %0, align 8               ; 3 uses
  %.not.i100 = icmp ne ptr %i.hw, null
  %or.cond.not = select i1 %3, i1 %.not.i100, i1 false
  br i1 %or.cond.not, label %_ZN7xgboost10collective6ResultD2Ev.exit, label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.ax:                                            ; preds = %bb.av
  %i.hy = load i16, ptr %i.hv, align 2, !tbaa !285
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.0107.0180, i64 4
  %i.ia = load i16, ptr %i.hz, align 4, !tbaa !206
  %i.ib = load i32, ptr %.sroa.0107.0180, align 4, !tbaa !49 ; 4 uses
  %i.ic = sext i32 %i.ib to i64                   ; 2 uses
  %i.id = load i64, ptr %i.ez, align 8, !tbaa !199 ; 2 uses
  %i.ie = urem i64 %i.ic, %i.id                   ; 3 uses
  %i.if = load ptr, ptr %1, align 8, !tbaa !191
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.ie
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !212 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ih, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !201 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !49
  %i.il = icmp eq i32 %i.ib, %i.ik
  br i1 %i.il, label %.loopexit, label %.lr.ph.i.i.i.i

bb.az:                                            ; preds = %bb.ba
  %i.im = icmp eq i32 %i.ib, %i.ip
  br i1 %i.im, label %.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !213

.lr.ph.i.i.i.i:                                   ; preds = %bb.ay, %bb.az
  %.020.i.i.i.i = phi ptr [ %i.in, %bb.az ], [ %i.ii, %bb.ay ]
  %i.in = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !201 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.in, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i.i.i.i
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !49 ; 2 uses
  %i.iq = sext i32 %i.ip to i64
  %i.ir = urem i64 %i.iq, %i.id
  %.not19.i.i.i.i = icmp eq i64 %i.ir, %i.ie
  br i1 %.not19.i.i.i.i, label %bb.az, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !213

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.ba
  br label %.loopexit.i.i, !llvm.loop !213

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %bb.ax
  %i.is = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %.noexc101 unwind label %bb.bc ; 5 uses

.noexc101:                                        ; preds = %.loopexit.i.i
  store ptr null, ptr %i.is, align 8, !tbaa !201
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  store i32 %i.ib, ptr %i.it, align 8, !tbaa !202
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 12
  store i64 0, ptr %i.iu, align 4
  %i.iv = invoke ptr @_ZNSt10_HashtableIiSt4pairIKi6pollfdESaIS3_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS5_10_Hash_nodeIS3_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %i.ie, i64 noundef %i.ic, ptr noundef nonnull %i.is, i64 noundef 1)
          to label %.noexc101..loopexit_crit_edge unwind label %_ZNSt10_HashtableIiSt4pairIKi6pollfdESaIS3_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

.noexc101..loopexit_crit_edge:                    ; preds = %.noexc101
  %.pre = load ptr, ptr %0, align 8, !tbaa !69
  br label %.loopexit

_ZNSt10_HashtableIiSt4pairIKi6pollfdESaIS3_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.noexc101
  %i.iw = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.is, i64 noundef 24) #26
  br label %.body102

.loopexit:                                        ; preds = %bb.az, %.noexc101..loopexit_crit_edge, %bb.ay
  %i.ix = phi ptr [ %.pre, %.noexc101..loopexit_crit_edge ], [ %i.hw, %bb.ay ], [ %i.hw, %bb.az ] ; 3 uses
  %.pn.i.i = phi ptr [ %i.iv, %.noexc101..loopexit_crit_edge ], [ %i.ii, %bb.ay ], [ %i.in, %bb.az ]
  %i.iy = and i16 %i.ia, %i.hy
  %i.iz = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  store i16 %i.iy, ptr %i.iz, align 4, !tbaa !206
  %.not.i.i = icmp eq ptr %i.ix, null
  br i1 %.not.i.i, label %bb.bb, label %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i: ; preds = %.loopexit
  tail call void @_ZN7xgboost10collective6detail10ResultImplD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ix) #12, !inline_history !113
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ix, i64 noundef 56) #26, !inline_history !113
  br label %bb.bb

bb.bb:                                            ; preds = %.loopexit, %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.0107.0180, i64 8 ; 2 uses
  %.not146 = icmp eq ptr %i.ja, %.sroa.14.0.lcssa
  br i1 %.not146, label %.critedge, label %bb.au

bb.bc:                                            ; preds = %.loopexit.i.i
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %.body102

.body102:                                         ; preds = %_ZNSt10_HashtableIiSt4pairIKi6pollfdESaIS3_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i, %bb.bc
  %eh.lpad-body103 = phi { ptr, i32 } [ %i.jb, %bb.bc ], [ %i.iw, %_ZNSt10_HashtableIiSt4pairIKi6pollfdESaIS3_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  tail call void @_ZN7xgboost10collective6ResultD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #12
  br label %bb.be

.critedge:                                        ; preds = %bb.bb, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !54, !alias.scope !286
  br label %_ZN7xgboost10collective6ResultD2Ev.exit

_ZN7xgboost10collective6ResultD2Ev.exit:          ; preds = %bb.av, %.critedge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %.not.i.i.i104 = icmp eq ptr %.sroa.0116.0.lcssa, null
  br i1 %.not.i.i.i104, label %_ZNSt6vectorI6pollfdSaIS0_EED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZN7xgboost10collective6ResultD2Ev.exit
  %i.jc = ptrtoint ptr %.sroa.23.0.lcssa to i64
  %i.jd = sub i64 %i.jc, %i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0116.0.lcssa, i64 noundef %i.jd) #26
  br label %_ZNSt6vectorI6pollfdSaIS0_EED2Ev.exit

_ZNSt6vectorI6pollfdSaIS0_EED2Ev.exit:            ; preds = %_ZN7xgboost10collective6ResultD2Ev.exit, %bb.bd
  ret void

bb.be:                                            ; preds = %.loopexit147, %.loopexit.split-lp, %bb.aw, %.body102, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99
  %.sroa.0116.0169 = phi ptr [ %.sroa.0116.0.lcssa, %.body102 ], [ %.sroa.0116.0.lcssa, %bb.aw ], [ %.sroa.0116.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ], [ %.sroa.0116.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ], [ %.sroa.0116.0173.a, %.loopexit147 ], [ %.sroa.0116.0173.a, %.loopexit.split-lp ] ; 3 uses
  %.sroa.23.0163 = phi ptr [ %.sroa.23.0.lcssa, %.body102 ], [ %.sroa.23.0.lcssa, %bb.aw ], [ %.sroa.23.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ], [ %.sroa.23.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ], [ %.sroa.23.0175, %.loopexit147 ], [ %.sroa.23.0175, %.loopexit.split-lp ]
  %.pn42 = phi { ptr, i32 } [ %eh.lpad-body103, %.body102 ], [ %i.hx, %bb.aw ], [ %.pn37.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ], [ %.pn34.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ], [ %lpad.loopexit, %.loopexit147 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i105 = icmp eq ptr %.sroa.0116.0169, null
  br i1 %.not.i.i.i105, label %_ZNSt6vectorI6pollfdSaIS0_EED2Ev.exit106, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.je = ptrtoint ptr %.sroa.23.0163 to i64
  %i.jf = ptrtoint ptr %.sroa.0116.0169 to i64
  %i.jg = sub i64 %i.je, %i.jf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0116.0169, i64 noundef %i.jg) #26
  br label %_ZNSt6vectorI6pollfdSaIS0_EED2Ev.exit106

_ZNSt6vectorI6pollfdSaIS0_EED2Ev.exit106:         ; preds = %bb.be, %bb.bf
  resume { ptr, i32 } %.pn42
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7xgboost10collective9TCPSocket12GetSockErrorEv(ptr dead_on_unwind noalias writable sret(%"struct.xgboost::collective::Result") align 8 %0, ptr noundef nonnull align 4 dereferenceable(5) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 0, ptr %i.b, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 4, ptr %i.c, align 4, !tbaa !49
  %i.d = load i32, ptr %1, align 4, !tbaa !50
  %i.e = call i32 @getsockopt(i32 noundef %i.d, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #12
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.e, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  %i.f = tail call ptr @__errno_location() #28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !49
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #28
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.i, ptr %4, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 32, ptr %i.a, align 8, !tbaa !42
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !43
  %i.k = load i64, ptr %i.a, align 8, !tbaa !42   ; 3 uses
  store i64 %i.k, ptr %i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.j, ptr noundef nonnull align 1 dereferenceable(32) @.str.62, i64 32, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !46
  %i.m = load ptr, ptr %4, align 8, !tbaa !43
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !289)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  invoke void @_ZN7xgboost10collective6detail7MakeMsgEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.38, i32 noundef 344)
          to label %.noexc16 unwind label %bb.d

.noexc16:                                         ; preds = %.noexc.i
  call void @llvm.experimental.noalias.scope.decl(metadata !292)
  %i.o = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #29
          to label %.noexc.i15 unwind label %bb.b, !noalias !289 ; 7 uses

.noexc.i15:                                       ; preds = %.noexc16
  %i.p = load ptr, ptr %3, align 8, !tbaa !43, !noalias !295 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.r = icmp eq ptr %i.p, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread.i.i: ; preds = %.noexc.i15
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !46, !noalias !295 ; 3 uses
  %i.v = add nuw nsw i64 %i.u, 1
  %i.w = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.v, i1 false), !noalias !289
  br label %bb.c

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %.noexc.i15
  %i.x = load i64, ptr %i.q, align 8, !tbaa !15, !noalias !295
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !46, !noalias !295
  store i64 %i.x, ptr %i.s, align 8, !tbaa !15, !noalias !295
  br label %bb.c

bb.b:                                             ; preds = %.noexc16
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %3, align 8, !tbaa !43, !noalias !289 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %bb.b
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !15, !noalias !289
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #26, !noalias !289
  br label %.body

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread.i.i
  %.sink.i.i = phi ptr [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread.i.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i ]
  %i.ae = phi i64 [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread.i.i ], [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i ]
  store ptr %.sink.i.i, ptr %i.o, align 8, !tbaa !53, !noalias !295
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !46, !noalias !295
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i32 %i.g, ptr %i.ag, align 8, !tbaa !49, !noalias !295
  %.sroa.21.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store ptr %i.h, ptr %.sroa.21.0..sroa_idx.i.i.i.i, align 8, !tbaa !67, !noalias !295
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store ptr null, ptr %i.ah, align 8, !tbaa !54, !noalias !295
  store ptr %i.o, ptr %0, align 8, !tbaa !69, !alias.scope !295
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ai = load ptr, ptr %4, align 8, !tbaa !43    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.i
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.ak = load i64, ptr %i.i, align 8, !tbaa !15
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.d:                                             ; preds = %.noexc.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.am, %bb.d ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i ], [ %i.y, %bb.b ] ; 2 uses
  %i.an = load ptr, ptr %4, align 8, !tbaa !43    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.i
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %.body
end_hunk_0
