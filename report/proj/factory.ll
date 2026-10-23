Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/factory?download=true
inline.NumInlined: 16553
inline.NumDeleted: 4622
loop-unroll.NumCompletelyUnrolled: 127
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 128
begin_hunk_0_@_ZNK5osgeo4proj2io15DatabaseContext15lookForGridInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbRS8_SB_SB_RbSC_SC_:bb.a
  store i8 %i.ex, ptr %7, align 1, !tbaa !582
  %i.ey = getelementptr inbounds nuw i8, ptr %i.en, i64 168
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !167
  %i.fa = icmp eq i64 %i.ez, 0
  %spec.select286.v = select i1 %i.fa, i64 192, i64 160
  %spec.select286 = getelementptr inbounds nuw i8, ptr %i.en, i64 %spec.select286.v ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %spec.select286, i64 8
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !167
  %i.fd = icmp eq i64 %i.fc, 1
  br i1 %i.fd, label %bb.u, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159

bb.u:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit157
  %i.fe = load ptr, ptr %spec.select286, align 8, !tbaa !164
  %lhsc370 = load i8, ptr %i.fe, align 1
  %i.ff = icmp eq i8 %lhsc370, 49
  %i.fg = zext i1 %i.ff to i8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit157, %bb.u
  %i.fh = phi i8 [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit157 ], [ %i.fg, %bb.u ]
  store i8 %i.fh, ptr %6, align 1, !tbaa !582
  %i.fi = getelementptr inbounds nuw i8, ptr %i.en, i64 224 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.en, i64 256 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.en, i64 232
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !167 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.en, i64 264
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !167 ; 4 uses
  %i.fo = icmp eq i64 %i.fl, %i.fn
  br i1 %i.fo, label %bb.v, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.v:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159
  %i.fp = icmp eq i64 %i.fl, 0
  br i1 %i.fp, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread279, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.v
  %i.fq = load ptr, ptr %i.fj, align 8, !tbaa !164
  %i.fr = load ptr, ptr %i.fi, align 8, !tbaa !164
  %bcmp.i.i = call i32 @bcmp(ptr %i.fr, ptr %i.fq, i64 %i.fl)
  %.not288 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not288, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread279, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.fs = load i64, ptr %i.o, align 8, !tbaa !167
  %i.ft = icmp eq i64 %i.fn, %i.fs
  br i1 %i.ft, label %bb.w, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread279

bb.w:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.fu = icmp eq i64 %i.fn, 0
  br i1 %i.fu, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.w
  %i.fv = load ptr, ptr %1, align 8, !tbaa !164
  %i.fw = load ptr, ptr %i.fj, align 8, !tbaa !164
  %bcmp.i160 = call i32 @bcmp(ptr %i.fw, ptr %i.fv, i64 %i.fn)
  %i.fx = icmp eq i32 %bcmp.i160, 0
  br i1 %i.fx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread279

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.w, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #33
  %i.fy = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.fy, ptr %18, align 8, !tbaa !166
  %i.fz = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  store i64 0, ptr %i.fz, align 8, !tbaa !167
  store i8 0, ptr %i.fy, align 8, !tbaa !165
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef 2048, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit unwind label %bb.ad

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.ga = invoke i32 @proj_context_errno(ptr noundef %.095)
          to label %bb.x unwind label %bb.ad

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.gb = load ptr, ptr %i.fi, align 8, !tbaa !164
  %i.gc = load ptr, ptr %18, align 8, !tbaa !164
  %i.gd = load i64, ptr %i.fz, align 8, !tbaa !167
  %i.ge = add i64 %i.gd, -1
  %i.gf = invoke noundef i32 @_Z12pj_find_fileP6pj_ctxPKcPcm(ptr noundef %.095, ptr noundef %i.gb, ptr noundef nonnull %i.gc, i64 noundef %i.ge)
          to label %bb.y unwind label %bb.ad

bb.y:                                             ; preds = %bb.x
  %.not115 = icmp eq i32 %i.gf, 0
  invoke void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef %.095, i32 noundef %i.ga)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.gg = load ptr, ptr %18, align 8, !tbaa !164
  %i.gh = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gg) #38
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef %i.gh, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit163 unwind label %bb.ad

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit163: ; preds = %bb.z
  br i1 %.not115, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit163
  store i8 1, ptr %8, align 1, !tbaa !582
  %i.gi = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %18) #33 ; 0 uses
  br label %bb.ae

bb.ab:                                            ; preds = %_ZN5osgeo4proj2io15DatabaseContext7Private20getGridInfoFromCacheERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS3_13GridInfoCacheE.exit
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

bb.ac:                                            ; preds = %.noexc.i.i146
  %i.gk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !164 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 2 uses
  %i.go = icmp eq ptr %i.gm, %i.gn
  br i1 %i.go, label %.loopexit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i164: ; preds = %bb.ac
  %i.gp = load i64, ptr %i.gn, align 8, !tbaa !165
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gq) #34
  br label %.loopexit

.body:                                            ; preds = %.lr.ph.i.i, %.noexc.i149, %.noexc.i149.1
  %i.gr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt7__cxx1110_List_baseIN5osgeo4proj2io9SQLValuesESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #33
  %i.gs = getelementptr inbounds nuw i8, ptr %17, i64 64
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !164 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %17, i64 80 ; 2 uses
  %i.gv = icmp eq ptr %i.gt, %i.gu
  br i1 %i.gv, label %_ZN5osgeo4proj2io9SQLValuesD2Ev.exit169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i167: ; preds = %.body
  %i.gw = load i64, ptr %i.gu, align 8, !tbaa !165
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gt, i64 noundef %i.gx) #34
  br label %_ZN5osgeo4proj2io9SQLValuesD2Ev.exit169

_ZN5osgeo4proj2io9SQLValuesD2Ev.exit169:          ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i167
  %i.gy = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !164 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 2 uses
  %i.hb = icmp eq ptr %i.gz, %i.ha
  br i1 %i.hb, label %.loopexit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i167.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i167.1: ; preds = %_ZN5osgeo4proj2io9SQLValuesD2Ev.exit169
  %i.hc = load i64, ptr %i.ha, align 8, !tbaa !165
  %i.hd = add i64 %i.hc, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hd) #34
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN5osgeo4proj2io9SQLValuesD2Ev.exit169, %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i167.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i164, %.thread
  %.pn.pn = phi { ptr, i32 } [ %i.gk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i164 ], [ %i.ce, %.thread ], [ %i.gr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i167.1 ], [ %i.gk, %bb.ac ], [ %i.gr, %_ZN5osgeo4proj2io9SQLValuesD2Ev.exit169 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #33
  %i.he = load ptr, ptr %15, align 8, !tbaa !164  ; 2 uses
  %i.hf = icmp eq ptr %i.he, %i.bt
  br i1 %i.hf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170: ; preds = %.loopexit
  %i.hg = load i64, ptr %i.bt, align 8, !tbaa !165
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hh) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170, %bb.ab
  %.pn.pn.pn = phi { ptr, i32 } [ %i.gj, %bb.ab ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170 ], [ %.pn.pn, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  br label %bb.bu

bb.ad:                                            ; preds = %bb.z, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit, %bb.y, %bb.x
  %i.hi = landingpad { ptr, i32 }
          cleanup
  %i.hj = load ptr, ptr %18, align 8, !tbaa !164  ; 2 uses
  %i.hk = icmp eq ptr %i.hj, %i.fy
  br i1 %i.hk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173: ; preds = %bb.ad
  %i.hl = load i64, ptr %i.fy, align 8, !tbaa !165
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hm) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #33
  br label %bb.bt

bb.ae:                                            ; preds = %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit163
  %i.hn = load ptr, ptr %18, align 8, !tbaa !164  ; 2 uses
  %i.ho = icmp eq ptr %i.hn, %i.fy
  br i1 %i.ho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176: ; preds = %bb.ae
  %i.hp = load i64, ptr %i.fy, align 8, !tbaa !165
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hq) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #33
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread279

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread279: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.hr = load i8, ptr %8, align 1, !tbaa !582, !range !160, !noundef !161
  %22 = trunc nuw i8 %i.hr to i1
  %.not = xor i1 %22, true
  %or.cond = and i1 %2, %.not
  br i1 %or.cond, label %bb.af, label %bb.am

bb.af:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread279
  %i.hs = load i64, ptr %i.bo, align 8, !tbaa !167
  %i.ht = icmp eq i64 %i.hs, 0
  br i1 %i.ht, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.hu = load i64, ptr %i.bq, align 8, !tbaa !167
  %i.hv = icmp eq i64 %i.hu, 0
  br i1 %i.hv, label %bb.am, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hw = load i8, ptr %7, align 1, !tbaa !582, !range !160, !noundef !161
  %i.hx = trunc nuw i8 %i.hw to i1
  br i1 %i.hx, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah, %bb.af
  %i.hy = invoke i32 @proj_context_is_network_enabled(ptr noundef %.095)
          to label %bb.aj unwind label %bb.aw

bb.aj:                                            ; preds = %bb.ai
  %i.hz = invoke i32 @proj_context_set_enable_network(ptr noundef %.095, i32 noundef 0)
          to label %bb.ak unwind label %bb.aw     ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 2048, i8 noundef signext 0)
          to label %.noexc180 unwind label %bb.aw

.noexc180:                                        ; preds = %bb.ak
  %i.ia = invoke i32 @proj_context_errno(ptr noundef %.095)
          to label %.noexc181 unwind label %bb.aw

.noexc181:                                        ; preds = %.noexc180
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  %i.ib = load ptr, ptr %1, align 8, !tbaa !164
  %i.ic = load ptr, ptr %3, align 8, !tbaa !164
  %i.id = load i64, ptr %i.bm, align 8, !tbaa !167
  %i.ie = add i64 %i.id, -1
  invoke void @_ZN5osgeo4proj11FileManager18open_resource_fileEP6pj_ctxPKcPcm(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.1181") align 8 %11, ptr noundef %.095, ptr noundef %i.ib, ptr noundef nonnull %i.ic, i64 noundef %i.ie)
          to label %.noexc182 unwind label %bb.aw

.noexc182:                                        ; preds = %.noexc181
  %i.if = load ptr, ptr %11, align 8, !tbaa !1270 ; 3 uses
  %.not.i.i179.not = icmp eq ptr %i.if, null
  br i1 %.not.i.i179.not, label %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN5osgeo4proj4FileEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN5osgeo4proj4FileEEclEPS2_.exit.i.i: ; preds = %.noexc182
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !201
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8
  call void %i.ii(ptr noundef nonnull align 8 dereferenceable(73) %i.if) #33, !inline_history !1259
  br label %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5osgeo4proj4FileEEclEPS2_.exit.i.i, %.noexc182
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  invoke void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef %.095, i32 noundef %i.ia)
          to label %.noexc183 unwind label %bb.aw

.noexc183:                                        ; preds = %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit.i
  %i.ij = load ptr, ptr %3, align 8, !tbaa !164
  %i.ik = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ij) #38
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ik, i8 noundef signext 0)
          to label %"_ZZNK5osgeo4proj2io15DatabaseContext15lookForGridInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbRS8_SB_SB_RbSC_SC_ENK3$_0clEv.exit" unwind label %bb.aw

"_ZZNK5osgeo4proj2io15DatabaseContext15lookForGridInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbRS8_SB_SB_RbSC_SC_ENK3$_0clEv.exit": ; preds = %.noexc183
  %i.il = invoke i32 @proj_context_set_enable_network(ptr noundef %.095, i32 noundef %i.hy)
          to label %bb.al unwind label %bb.aw     ; 0 uses

bb.al:                                            ; preds = %"_ZZNK5osgeo4proj2io15DatabaseContext15lookForGridInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbRS8_SB_SB_RbSC_SC_ENK3$_0clEv.exit"
  store i8 1, ptr %8, align 1, !tbaa !582
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ah, %bb.ag, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread279
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit186 unwind label %bb.aw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit186: ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #33
  %i.im = load ptr, ptr %0, align 8, !tbaa !408
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 144
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !366
  %i.ip = invoke ptr @proj_context_get_url_endpoint(ptr noundef %i.io)
          to label %bb.an unwind label %bb.ax     ; 4 uses

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit186
  %i.iq = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 7 uses
  store ptr %i.iq, ptr %19, align 8, !tbaa !166
  %i.ir = icmp eq ptr %i.ip, null
  br i1 %i.ir, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.610) #36
          to label %.noexc189 unwind label %bb.ax

.noexc189:                                        ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.is = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ip) #33 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i64 %i.is, ptr %i.b, align 8, !tbaa !168
  %i.it = icmp ugt i64 %i.is, 15
  br i1 %i.it, label %.noexc.i188, label %._crit_edge.i.i187

.noexc.i188:                                      ; preds = %bb.ap
  %i.iu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc190 unwind label %bb.ax ; 2 uses

.noexc190:                                        ; preds = %.noexc.i188
  store ptr %i.iu, ptr %19, align 8, !tbaa !164
  %i.iv = load i64, ptr %i.b, align 8, !tbaa !168
  store i64 %i.iv, ptr %i.iq, align 8, !tbaa !165
  br label %._crit_edge.i.i187

._crit_edge.i.i187:                               ; preds = %.noexc190, %bb.ap
  %i.iw = phi ptr [ %i.iu, %.noexc190 ], [ %i.iq, %bb.ap ] ; 2 uses
  switch i64 %i.is, label %bb.ar [
    i64 1, label %bb.aq
    i64 0, label %bb.as
  ]

bb.aq:                                            ; preds = %._crit_edge.i.i187
  %i.ix = load i8, ptr %i.ip, align 1, !tbaa !165
  store i8 %i.ix, ptr %i.iw, align 1, !tbaa !165
  br label %bb.as

bb.ar:                                            ; preds = %._crit_edge.i.i187
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.iw, ptr nonnull align 1 %i.ip, i64 %i.is, i1 false)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %._crit_edge.i.i187
  %i.iy = load i64, ptr %i.b, align 8, !tbaa !168 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  store i64 %i.iy, ptr %i.iz, align 8, !tbaa !167
  %i.ja = load ptr, ptr %19, align 8, !tbaa !164
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.iy
  store i8 0, ptr %i.jb, align 1, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  %i.jc = load i64, ptr %i.iz, align 8, !tbaa !167 ; 2 uses
  %i.jd = icmp eq i64 %i.jc, 0
  br i1 %i.jd, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.je = load i64, ptr %i.bq, align 8, !tbaa !167 ; 2 uses
  %i.jf = icmp ult i64 %i.je, 21
  br i1 %i.jf, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit.thread, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit

_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit: ; preds = %bb.at
  %i.jg = load ptr, ptr %5, align 8, !tbaa !164   ; 2 uses
  %i.jh = load i128, ptr %i.jg, align 1
  %i.ji = xor i128 %i.jh, 141476833587117232640820007089323930728
  %i.jj = getelementptr i8, ptr %i.jg, i64 5
  %i.jk = load i128, ptr %i.jj, align 1
  %i.jl = xor i128 %i.jk, 63010843381705971528340342371093786426
  %i.jm = or i128 %i.ji, %i.jl
  %i.jn = icmp ne i128 %i.jm, 0
  %i.jo = zext i1 %i.jn to i32
  %i.jp = icmp eq i32 %i.jo, 0
  br i1 %i.jp, label %bb.au, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit.thread

bb.au:                                            ; preds = %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit
  %i.jq = load ptr, ptr %19, align 8, !tbaa !164
  %i.jr = getelementptr i8, ptr %i.jq, i64 %i.jc
  %i.js = getelementptr i8, ptr %i.jr, i64 -1
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !165
  %.not119 = icmp eq i8 %i.jt, 47
  br i1 %.not119, label %.thread371, label %bb.av

.thread371:                                       ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #33
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.av:                                            ; preds = %bb.au
  %i.ju = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc(ptr noundef nonnull align 8 dereferenceable(32) %19, i8 noundef signext 47)
          to label %bb.az unwind label %bb.ay     ; 0 uses

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit243, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit241, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit237.thread, %bb.br, %.noexc229, %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit.i224, %.noexc227, %.noexc226, %bb.bq, %bb.am, %.noexc183, %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit.i, %.noexc181, %.noexc180, %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit153, %bb.s, %bb.ai, %bb.aj, %"_ZZNK5osgeo4proj2io15DatabaseContext15lookForGridInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbRS8_SB_SB_RbSC_SC_ENK3$_0clEv.exit"
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit186, %.noexc.i188, %bb.ao
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222

bb.ay:                                            ; preds = %.noexc214, %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit.i209, %.noexc212, %.noexc211, %bb.bn, %bb.av
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.az:                                            ; preds = %bb.av
  %.pre = load i64, ptr %i.bq, align 8, !tbaa !167, !noalias !1271 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !1271)
  %i.jy = icmp ult i64 %.pre, 21
end_hunk_0
