Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_anaeig?download=true
inline.NumInlined: 415
inline.NumDeleted: 168
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_Z10gmx_anaeigiPPc:bb.a
bb.bh:                                            ; preds = %bb.bg
  invoke void @_Z17read_eigenvectorsPKcPiPbPPA3_fS2_S5_S2_S1_PS1_PS5_PPf(ptr noundef nonnull %i.ef, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.z, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.af, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.al, ptr noundef nonnull %i.ay)
          to label %bb.bp unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.bj:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA66_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %32, ptr noundef nonnull align 1 dereferenceable(66) @.str.111, i8 noundef zeroext 2)
          to label %bb.bk unwind label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %32, i32 noundef 1291, ptr noundef nonnull @.str.119) #26
          to label %bb.bl unwind label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  unreachable

bb.bm:                                            ; preds = %bb.bj
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bk
  %i.kx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %32) #23
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.pn270 = phi { ptr, i32 } [ %i.kx, %bb.bn ], [ %i.kw, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  br label %bb.cf

bb.bp:                                            ; preds = %bb.bh
  %i.ky = load i32, ptr %i.bb, align 4, !tbaa !9  ; 2 uses
  %i.kz = mul nsw i32 %i.ky, 3
  %i.la = load i32, ptr %i.af, align 4, !tbaa !9
  %.sroa.speculated487 = call i32 @llvm.smin.i32(i32 %i.kz, i32 %i.la) ; 2 uses
  br i1 %i.fc, label %bb.bq, label %bb.bx

bb.bq:                                            ; preds = %bb.bp
  %i.lb = load i32, ptr %i.an, align 4, !tbaa !9
  %.not275 = icmp eq i32 %i.ky, %i.lb
  br i1 %.not275, label %bb.ce, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #23
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA66_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %33, ptr noundef nonnull align 1 dereferenceable(66) @.str.111, i8 noundef zeroext 2)
          to label %bb.bs unwind label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %i.lc = load i32, ptr %i.an, align 4, !tbaa !9
  %i.ld = load i32, ptr %i.bb, align 4, !tbaa !9
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %33, i32 noundef 1304, ptr noundef nonnull @.str.120, i32 noundef %i.lc, i32 noundef %i.ld) #26
          to label %bb.bt unwind label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  unreachable

bb.bu:                                            ; preds = %bb.br
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bs
  %i.lf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %33) #23
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.pn306 = phi { ptr, i32 } [ %i.lf, %bb.bv ], [ %i.le, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  br label %bb.cf

bb.bx:                                            ; preds = %bb.bp
  %.not272 = icmp eq i32 %.sroa.speculated487, %.0226
  br i1 %.not272, label %bb.ce, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #23
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA66_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %34, ptr noundef nonnull align 1 dereferenceable(66) @.str.111, i8 noundef zeroext 2)
          to label %bb.bz unwind label %bb.cb

bb.bz:                                            ; preds = %bb.by
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %34, i32 noundef 1315, ptr noundef nonnull @.str.121) #26
          to label %bb.ca unwind label %bb.cc

bb.ca:                                            ; preds = %bb.bz
  unreachable

bb.cb:                                            ; preds = %bb.by
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bz
  %i.lh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %34) #23
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.pn273 = phi { ptr, i32 } [ %i.lh, %bb.cc ], [ %i.lg, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #23
  br label %bb.cf

bb.ce:                                            ; preds = %bb.bx, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb) #23
  br label %bb.ch

bb.cf:                                            ; preds = %bb.cd, %bb.bw, %bb.bo, %bb.bi
  %.pn306.pn = phi { ptr, i32 } [ %.pn306, %bb.bw ], [ %.pn273, %bb.cd ], [ %i.kv, %bb.bi ], [ %.pn270, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit325

bb.cg:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  store i32 0, ptr %i.af, align 4, !tbaa !9
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.ce
  %.0224 = phi i32 [ %.sroa.speculated487, %bb.ce ], [ 0, %bb.cg ]
  %i.li = load ptr, ptr %i.au, align 8, !tbaa !18
  %.not276 = icmp eq ptr %i.li, null
  br i1 %.not276, label %bb.cp, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #23
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %35, ptr noundef nonnull align 8 dereferenceable(8) %i.au, i8 noundef zeroext 2)
          to label %bb.cj unwind label %bb.cm

bb.cj:                                            ; preds = %bb.ci
  %i.lj = invoke noundef i32 @_Z8read_xvgRKNSt10filesystem7__cxx114pathEPPPdPi(ptr noundef nonnull align 8 dereferenceable(40) %35, ptr noundef nonnull %i.az, ptr noundef nonnull %i.ap)
          to label %bb.ck unwind label %bb.cn     ; 7 uses

bb.ck:                                            ; preds = %bb.cj
  %i.lk = getelementptr inbounds nuw i8, ptr %35, i64 32 ; 2 uses
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i327 = icmp eq ptr %i.ll, null
  br i1 %.not.i.i.i327, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i328, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.lk, ptr noundef nonnull %i.ll) #23
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i328

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i328: ; preds = %bb.cl, %bb.ck
  %i.lm = load ptr, ptr %35, align 8, !tbaa !25   ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.lo = icmp eq ptr %i.lm, %i.ln
  br i1 %i.lo, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit331, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i329

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i329: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i328
  %i.lp = load i64, ptr %i.ln, align 8, !tbaa !26
  %i.lq = add i64 %i.lp, 1
  call void @_ZdlPvm(ptr noundef %i.lm, i64 noundef %i.lq) #25
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit331

_ZNSt10filesystem7__cxx114pathD2Ev.exit331:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i328, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i329
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #23
  %i.lr = sext i32 %i.lj to i64
  %i.ls = load ptr, ptr %i.ay, align 8, !tbaa !15
  %i.lt = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.111, i32 noundef 1328, ptr noundef %i.ls, i64 noundef range(i64 -2147483648, 2147483648) %i.lr, i64 noundef 4)
          to label %_ZL15gmx_srenew_implIfEvPKcS1_iRPT_m.exit333 unwind label %.loopexit.split-lp614.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

_ZL15gmx_srenew_implIfEvPKcS1_iRPT_m.exit333:     ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit331
  store ptr %i.lt, ptr %i.ay, align 8, !tbaa !15
  %i.lu = icmp sgt i32 %i.lj, 0
  br i1 %i.lu, label %iter.check, label %.preheader612

iter.check:                                       ; preds = %_ZL15gmx_srenew_implIfEvPKcS1_iRPT_m.exit333
  %i.lv = load ptr, ptr %i.az, align 8, !tbaa !148
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !150 ; 3 uses
  %wide.trip.count793 = zext nneg i32 %i.lj to i64 ; 6 uses
  %min.iters.check1132 = icmp ult i32 %i.lj, 4
  br i1 %min.iters.check1132, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1133 = icmp ult i32 %i.lj, 16
  br i1 %min.iters.check1133, label %vec.epilog.ph, label %vector.ph1134

vector.ph1134:                                    ; preds = %vector.main.loop.iter.check
  %i.ly = and i64 %wide.trip.count793, 12
  %n.vec1135 = and i64 %wide.trip.count793, 2147483632 ; 4 uses
  br label %vector.body1136

vector.body1136:                                  ; preds = %vector.ph1134, %vector.body1136
  %index1137 = phi i64 [ 0, %vector.ph1134 ], [ %index.next1142, %vector.body1136 ] ; 3 uses
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %index1137 ; 4 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 32
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lz, i64 64
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lz, i64 96
  %wide.load1138 = load <4 x double>, ptr %i.lz, align 8, !tbaa !152
  %wide.load1139 = load <4 x double>, ptr %i.ma, align 8, !tbaa !152
  %wide.load1140 = load <4 x double>, ptr %i.mb, align 8, !tbaa !152
  %wide.load1141 = load <4 x double>, ptr %i.mc, align 8, !tbaa !152
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %index1137 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 32
  %41 = shufflevector <4 x double> %wide.load1138, <4 x double> %wide.load1139, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %42 = fptrunc <8 x double> %41 to <8 x float>
  store <8 x float> %42, ptr %i.md, align 4, !tbaa !28
  %43 = shufflevector <4 x double> %wide.load1140, <4 x double> %wide.load1141, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %44 = fptrunc <8 x double> %43 to <8 x float>
  store <8 x float> %44, ptr %i.me, align 4, !tbaa !28
  %index.next1142 = add nuw i64 %index1137, 16    ; 2 uses
  %i.mf = icmp eq i64 %index.next1142, %n.vec1135
  br i1 %i.mf, label %middle.block1143, label %vector.body1136, !llvm.loop !43

middle.block1143:                                 ; preds = %vector.body1136
  %cmp.n1144 = icmp eq i64 %n.vec1135, %wide.trip.count793
  br i1 %cmp.n1144, label %.preheader612, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block1143
  %min.epilog.iters.check = icmp eq i64 %i.ly, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !157

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec1135, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1145 = and i64 %wide.trip.count793, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1146 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1148, %vec.epilog.vector.body ] ; 3 uses
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %index1146
  %wide.load1147 = load <4 x double>, ptr %i.mg, align 8, !tbaa !152
  %i.mh = fptrunc <4 x double> %wide.load1147 to <4 x float>
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %index1146
  store <4 x float> %i.mh, ptr %i.mi, align 4, !tbaa !28
  %index.next1148 = add nuw i64 %index1146, 4     ; 2 uses
  %i.mj = icmp eq i64 %index.next1148, %n.vec1145
  br i1 %i.mj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !44

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1149 = icmp eq i64 %n.vec1145, %wide.trip.count793
  br i1 %cmp.n1149, label %.preheader612, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv790.ph = phi i64 [ 0, %iter.check ], [ %n.vec1135, %vec.epilog.iter.check ], [ %n.vec1145, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.preheader612:                                    ; preds = %vec.epilog.scalar.ph, %middle.block1143, %vec.epilog.middle.block, %_ZL15gmx_srenew_implIfEvPKcS1_iRPT_m.exit333
  %i.mk = load i32, ptr %i.ap, align 4, !tbaa !9
  %i.ml = icmp sgt i32 %i.mk, 0
  br i1 %i.ml, label %.lr.ph660, label %._crit_edge661

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv790 = phi i64 [ %indvars.iv.next791, %vec.epilog.scalar.ph ], [ %indvars.iv790.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %indvars.iv790
  %i.mn = load double, ptr %i.mm, align 8, !tbaa !152
  %i.mo = fptrunc double %i.mn to float
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %indvars.iv790
  store float %i.mo, ptr %i.mp, align 4, !tbaa !28
  %indvars.iv.next791 = add nuw nsw i64 %indvars.iv790, 1 ; 2 uses
  %exitcond794.not = icmp eq i64 %indvars.iv.next791, %wide.trip.count793
  br i1 %exitcond794.not, label %.preheader612, label %vec.epilog.scalar.ph, !llvm.loop !45

bb.cm:                                            ; preds = %bb.ci
  %i.mq = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.cn:                                            ; preds = %bb.cj
  %i.mr = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %35) #23
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %.pn277 = phi { ptr, i32 } [ %i.mr, %bb.cn ], [ %i.mq, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit325

.lr.ph660:                                        ; preds = %.preheader612, %_ZL14gmx_sfree_implIdEvPKcS1_iPT_.exit335
  %indvars.iv795 = phi i64 [ %indvars.iv.next796, %_ZL14gmx_sfree_implIdEvPKcS1_iPT_.exit335 ], [ 0, %.preheader612 ] ; 2 uses
  %i.ms = load ptr, ptr %i.az, align 8, !tbaa !148
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %indvars.iv795
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !150
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.111, i32 noundef 1335, ptr noundef %i.mu)
          to label %_ZL14gmx_sfree_implIdEvPKcS1_iPT_.exit335 unwind label %.loopexit.split-lp614.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL14gmx_sfree_implIdEvPKcS1_iPT_.exit335:        ; preds = %.lr.ph660
  %indvars.iv.next796 = add nuw nsw i64 %indvars.iv795, 1 ; 2 uses
  %i.mv = load i32, ptr %i.ap, align 4, !tbaa !9
  %i.mw = sext i32 %i.mv to i64
  %i.mx = icmp slt i64 %indvars.iv.next796, %i.mw
  br i1 %i.mx, label %.lr.ph660, label %._crit_edge661, !llvm.loop !46

._crit_edge661:                                   ; preds = %_ZL14gmx_sfree_implIdEvPKcS1_iPT_.exit335, %.preheader612
  %i.my = load ptr, ptr %i.az, align 8, !tbaa !148
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.111, i32 noundef 1337, ptr noundef %i.my)
          to label %_ZL14gmx_sfree_implIPdEvPKcS2_iPT_.exit337 unwind label %.loopexit.split-lp614.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL14gmx_sfree_implIPdEvPKcS2_iPT_.exit337:       ; preds = %._crit_edge661
  %i.mz = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.na = load ptr, ptr %i.au, align 8, !tbaa !18
  %i.nb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mz, ptr noundef nonnull @.str.115, i32 noundef %i.lj, ptr noundef %i.na) #24 ; 0 uses
  br label %bb.cp

bb.cp:                                            ; preds = %_ZL14gmx_sfree_implIPdEvPKcS2_iPT_.exit337, %bb.ch
  %.1225 = phi i32 [ %i.lj, %_ZL14gmx_sfree_implIPdEvPKcS2_iPT_.exit337 ], [ %.0224, %bb.ch ] ; 6 uses
  %i.nc = load i8, ptr %i.av, align 1, !tbaa !154, !range !155, !noundef !156
  %i.nd = trunc nuw i8 %i.nc to i1
  %i.ne = load ptr, ptr %i.y, align 8
  %i.nf = icmp eq ptr %i.ne, null                 ; 2 uses
  %or.cond31.not280 = and i1 %i.nf, %i.nd
  %i.ng = load i8, ptr %i.aa, align 1, !range !155
  %i.nh = trunc nuw i8 %i.ng to i1
  %or.cond33 = select i1 %or.cond31.not280, i1 true, i1 %i.nh
  %i.ni = load i8, ptr %i.ab, align 1, !range !155
  %i.nj = trunc nuw i8 %i.ni to i1
  %or.cond35 = select i1 %or.cond33, i1 true, i1 %i.nj
  %spec.select320 = and i1 %i.fh, %or.cond35      ; 3 uses
  %or.cond37 = or i1 %i.fk, %spec.select320
  %or.cond321 = select i1 %i.nf, i1 %or.cond37, i1 false
  %.0228 = select i1 %or.cond321, i1 true, i1 %or.cond27
  store ptr null, ptr %i.x, align 8, !tbaa !15
  store i32 0, ptr %i.aq, align 4, !tbaa !9
  store ptr null, ptr %i.as, align 8, !tbaa !136
  br i1 %.0228, label %bb.cq, label %bb.dw

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc) #23
  %i.nk = invoke noundef ptr @_Z6ftp2fniiPK8t_filenm(i32 noundef 26, i32 noundef 16, ptr noundef nonnull %29)
          to label %bb.cr unwind label %bb.cz

bb.cr:                                            ; preds = %bb.cq
  store ptr %i.nk, ptr %i.bc, align 8, !tbaa !18
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %36, ptr noundef nonnull align 8 dereferenceable(8) %i.bc, i8 noundef zeroext 2)
          to label %bb.cs unwind label %bb.cz

bb.cs:                                            ; preds = %bb.cr
  %i.nl = invoke noundef zeroext i1 @_Z13read_tps_confRKNSt10filesystem7__cxx114pathEP10t_topologyP7PbcTypePPA3_fSA_S9_b(ptr noundef nonnull align 8 dereferenceable(40) %36, ptr noundef nonnull %28, ptr noundef nonnull %i.w, ptr noundef nonnull %i.x, ptr noundef null, ptr noundef nonnull %i.am, i1 noundef zeroext %spec.select320)
          to label %bb.ct unwind label %bb.da

bb.ct:                                            ; preds = %bb.cs
  %i.nm = getelementptr inbounds nuw i8, ptr %36, i64 32 ; 2 uses
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i338 = icmp eq ptr %i.nn, null
  br i1 %.not.i.i.i338, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i339, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.nm, ptr noundef nonnull %i.nn) #23
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i339

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i339: ; preds = %bb.cu, %bb.ct
  %i.no = load ptr, ptr %36, align 8, !tbaa !25   ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.nq = icmp eq ptr %i.no, %i.np
  br i1 %i.nq, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit342, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i340

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i340: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i339
  %i.nr = load i64, ptr %i.np, align 8, !tbaa !26
  %i.ns = add i64 %i.nr, 1
  call void @_ZdlPvm(ptr noundef %i.no, i64 noundef %i.ns) #25
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit342

_ZNSt10filesystem7__cxx114pathD2Ev.exit342:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i339, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #23
  %i.nt = getelementptr inbounds nuw i8, ptr %28, i64 2344 ; 7 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.nv = load i32, ptr %i.w, align 4, !tbaa !134
  %i.nw = load i32, ptr %i.nt, align 8, !tbaa !164
  %i.nx = invoke noundef ptr @_Z14gmx_rmpbc_initPK6t_idef7PbcTypei(ptr noundef nonnull %i.nu, i32 noundef %i.nv, i32 noundef %i.nw)
          to label %bb.cv unwind label %.loopexit.split-lp614.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cv:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit342
  %i.ny = load i32, ptr %i.nt, align 8, !tbaa !164
  %i.nz = load ptr, ptr %i.x, align 8, !tbaa !15
  invoke void @_Z15gmx_rmpbc_applyP9gmx_rmpbciPA3_KfPA3_f(ptr noundef %i.nx, i32 noundef %i.ny, ptr noundef nonnull %i.am, ptr noundef %i.nz)
          to label %bb.cw unwind label %.loopexit.split-lp614.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cw:                                            ; preds = %bb.cv
  %i.oa = load i8, ptr %i.av, align 1, !range !155
  %i.ob = trunc nuw i8 %i.oa to i1
  %or.cond39 = select i1 %spec.select, i1 %i.ob, i1 false
  br i1 %or.cond39, label %bb.cx, label %.loopexit611

bb.cx:                                            ; preds = %bb.cw
  %i.oc = load ptr, ptr %i.y, align 8, !tbaa !15
  %i.od = icmp eq ptr %i.oc, null
  br i1 %i.od, label %bb.cy, label %bb.dc

bb.cy:                                            ; preds = %bb.cx
  %i.oe = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.123, ptr noundef %i.eg) ; 0 uses
  br label %bb.dc

bb.cz:                                            ; preds = %bb.cr, %bb.cq
  %i.of = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.da:                                            ; preds = %bb.cs
  %i.og = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %36) #23
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %.pn281 = phi { ptr, i32 } [ %i.og, %bb.da ], [ %i.of, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit325
end_hunk_0
