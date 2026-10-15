Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_anaeig?download=true
inline.NumInlined: 415
inline.NumDeleted: 168
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_Z10gmx_anaeigiPPc:bb.a
bb.bj:                                            ; preds = %bb.bi
  invoke void @_Z17read_eigenvectorsPKcPiPbPPA3_fS2_S5_S2_S1_PS1_PS5_PPf(ptr noundef nonnull %i.ef, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.z, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.af, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.al, ptr noundef nonnull %i.ay)
          to label %bb.br unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.bl:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA66_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %32, ptr noundef nonnull align 1 dereferenceable(66) @.str.111, i8 noundef zeroext 2)
          to label %bb.bm unwind label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %32, i32 noundef 1291, ptr noundef nonnull @.str.119) #26
          to label %bb.bn unwind label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  unreachable

bb.bo:                                            ; preds = %bb.bl
  %i.ky = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bm
  %i.kz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %32) #23
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.pn270 = phi { ptr, i32 } [ %i.kz, %bb.bp ], [ %i.ky, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  br label %bb.ch

bb.br:                                            ; preds = %bb.bj
  %i.la = load i32, ptr %i.bb, align 4, !tbaa !9  ; 2 uses
  %i.lb = mul nsw i32 %i.la, 3
  %i.lc = load i32, ptr %i.af, align 4, !tbaa !9
  %.sroa.speculated487 = call i32 @llvm.smin.i32(i32 %i.lb, i32 %i.lc) ; 2 uses
  br i1 %i.fc, label %bb.bs, label %bb.bz

bb.bs:                                            ; preds = %bb.br
  %i.ld = load i32, ptr %i.an, align 4, !tbaa !9
  %.not275 = icmp eq i32 %i.la, %i.ld
  br i1 %.not275, label %bb.cg, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #23
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA66_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %33, ptr noundef nonnull align 1 dereferenceable(66) @.str.111, i8 noundef zeroext 2)
          to label %bb.bu unwind label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.le = load i32, ptr %i.an, align 4, !tbaa !9
  %i.lf = load i32, ptr %i.bb, align 4, !tbaa !9
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %33, i32 noundef 1304, ptr noundef nonnull @.str.120, i32 noundef %i.le, i32 noundef %i.lf) #26
          to label %bb.bv unwind label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  unreachable

bb.bw:                                            ; preds = %bb.bt
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bx:                                            ; preds = %bb.bu
  %i.lh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %33) #23
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.pn306 = phi { ptr, i32 } [ %i.lh, %bb.bx ], [ %i.lg, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  br label %bb.ch

bb.bz:                                            ; preds = %bb.br
  %.not272 = icmp eq i32 %.sroa.speculated487, %.0226
  br i1 %.not272, label %bb.cg, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #23
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA66_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %34, ptr noundef nonnull align 1 dereferenceable(66) @.str.111, i8 noundef zeroext 2)
          to label %bb.cb unwind label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %34, i32 noundef 1315, ptr noundef nonnull @.str.121) #26
          to label %bb.cc unwind label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  unreachable

bb.cd:                                            ; preds = %bb.ca
  %i.li = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cb
  %i.lj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %34) #23
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.pn273 = phi { ptr, i32 } [ %i.lj, %bb.ce ], [ %i.li, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #23
  br label %bb.ch

bb.cg:                                            ; preds = %bb.bz, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb) #23
  br label %bb.cj

bb.ch:                                            ; preds = %bb.cf, %bb.by, %bb.bq, %bb.bk
  %.pn306.pn = phi { ptr, i32 } [ %.pn306, %bb.by ], [ %.pn273, %bb.cf ], [ %i.kx, %bb.bk ], [ %.pn270, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit325

bb.ci:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  store i32 0, ptr %i.af, align 4, !tbaa !9
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.cg
  %.0224 = phi i32 [ %.sroa.speculated487, %bb.cg ], [ 0, %bb.ci ]
  %i.lk = load ptr, ptr %i.au, align 8, !tbaa !18
  %.not276 = icmp eq ptr %i.lk, null
  br i1 %.not276, label %bb.cr, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #23
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %35, ptr noundef nonnull align 8 dereferenceable(8) %i.au, i8 noundef zeroext 2)
          to label %bb.cl unwind label %bb.co

bb.cl:                                            ; preds = %bb.ck
  %i.ll = invoke noundef i32 @_Z8read_xvgRKNSt10filesystem7__cxx114pathEPPPdPi(ptr noundef nonnull align 8 dereferenceable(40) %35, ptr noundef nonnull %i.az, ptr noundef nonnull %i.ap)
          to label %bb.cm unwind label %bb.cp     ; 7 uses

bb.cm:                                            ; preds = %bb.cl
  %i.lm = getelementptr inbounds nuw i8, ptr %35, i64 32 ; 2 uses
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i327 = icmp eq ptr %i.ln, null
  br i1 %.not.i.i.i327, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i328, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.lm, ptr noundef nonnull %i.ln) #23
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i328

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i328: ; preds = %bb.cn, %bb.cm
  %i.lo = load ptr, ptr %35, align 8, !tbaa !25   ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.lq = icmp eq ptr %i.lo, %i.lp
  br i1 %i.lq, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit331, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i329

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i329: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i328
  %i.lr = load i64, ptr %i.lp, align 8, !tbaa !26
  %i.ls = add i64 %i.lr, 1
  call void @_ZdlPvm(ptr noundef %i.lo, i64 noundef %i.ls) #25
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit331

_ZNSt10filesystem7__cxx114pathD2Ev.exit331:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i328, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i329
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #23
  %i.lt = sext i32 %i.ll to i64
  %i.lu = load ptr, ptr %i.ay, align 8, !tbaa !15
  %i.lv = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.111, i32 noundef 1328, ptr noundef %i.lu, i64 noundef range(i64 -2147483648, 2147483648) %i.lt, i64 noundef 4)
          to label %_ZL15gmx_srenew_implIfEvPKcS1_iRPT_m.exit333 unwind label %.loopexit.split-lp605 ; 4 uses

_ZL15gmx_srenew_implIfEvPKcS1_iRPT_m.exit333:     ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit331
  store ptr %i.lv, ptr %i.ay, align 8, !tbaa !15
  %i.lw = icmp sgt i32 %i.ll, 0
  br i1 %i.lw, label %iter.check, label %.preheader603

iter.check:                                       ; preds = %_ZL15gmx_srenew_implIfEvPKcS1_iRPT_m.exit333
  %i.lx = load ptr, ptr %i.az, align 8, !tbaa !148
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !150 ; 3 uses
  %wide.trip.count747 = zext nneg i32 %i.ll to i64 ; 6 uses
  %min.iters.check1046 = icmp ult i32 %i.ll, 4
  br i1 %min.iters.check1046, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1047 = icmp ult i32 %i.ll, 16
  br i1 %min.iters.check1047, label %vec.epilog.ph, label %vector.ph1048

vector.ph1048:                                    ; preds = %vector.main.loop.iter.check
  %i.ma = and i64 %wide.trip.count747, 12
  %n.vec1049 = and i64 %wide.trip.count747, 2147483632 ; 4 uses
  br label %vector.body1050

vector.body1050:                                  ; preds = %vector.ph1048, %vector.body1050
  %index1051 = phi i64 [ 0, %vector.ph1048 ], [ %index.next1056, %vector.body1050 ] ; 3 uses
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %index1051 ; 4 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 32
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 64
  %i.me = getelementptr inbounds nuw i8, ptr %i.mb, i64 96
  %wide.load1052 = load <4 x double>, ptr %i.mb, align 8, !tbaa !152
  %wide.load1053 = load <4 x double>, ptr %i.mc, align 8, !tbaa !152
  %wide.load1054 = load <4 x double>, ptr %i.md, align 8, !tbaa !152
  %wide.load1055 = load <4 x double>, ptr %i.me, align 8, !tbaa !152
  %41 = fptrunc <4 x double> %wide.load1052 to <4 x float>
  %42 = fptrunc <4 x double> %wide.load1053 to <4 x float>
  %43 = fptrunc <4 x double> %wide.load1054 to <4 x float>
  %44 = fptrunc <4 x double> %wide.load1055 to <4 x float>
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %index1051 ; 4 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  %45 = getelementptr inbounds nuw i8, ptr %i.mf, i64 32
  %46 = getelementptr inbounds nuw i8, ptr %i.mf, i64 48
  store <4 x float> %41, ptr %i.mf, align 4, !tbaa !28
  store <4 x float> %42, ptr %i.mg, align 4, !tbaa !28
  store <4 x float> %43, ptr %45, align 4, !tbaa !28
  store <4 x float> %44, ptr %46, align 4, !tbaa !28
  %index.next1056 = add nuw i64 %index1051, 16    ; 2 uses
  %i.mh = icmp eq i64 %index.next1056, %n.vec1049
  br i1 %i.mh, label %middle.block1057, label %vector.body1050, !llvm.loop !43

middle.block1057:                                 ; preds = %vector.body1050
  %cmp.n1058 = icmp eq i64 %n.vec1049, %wide.trip.count747
  br i1 %cmp.n1058, label %.preheader603, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block1057
  %min.epilog.iters.check = icmp eq i64 %i.ma, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !157

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec1049, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1059 = and i64 %wide.trip.count747, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1060 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1062, %vec.epilog.vector.body ] ; 3 uses
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %index1060
  %wide.load1061 = load <4 x double>, ptr %i.mi, align 8, !tbaa !152
  %i.mj = fptrunc <4 x double> %wide.load1061 to <4 x float>
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %index1060
  store <4 x float> %i.mj, ptr %i.mk, align 4, !tbaa !28
  %index.next1062 = add nuw i64 %index1060, 4     ; 2 uses
  %i.ml = icmp eq i64 %index.next1062, %n.vec1059
  br i1 %i.ml, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !44

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1063 = icmp eq i64 %n.vec1059, %wide.trip.count747
  br i1 %cmp.n1063, label %.preheader603, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv744.ph = phi i64 [ 0, %iter.check ], [ %n.vec1049, %vec.epilog.iter.check ], [ %n.vec1059, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.preheader603:                                    ; preds = %vec.epilog.scalar.ph, %middle.block1057, %vec.epilog.middle.block, %_ZL15gmx_srenew_implIfEvPKcS1_iRPT_m.exit333
  %i.mm = load i32, ptr %i.ap, align 4, !tbaa !9
  %i.mn = icmp sgt i32 %i.mm, 0
  br i1 %i.mn, label %.lr.ph653, label %._crit_edge654

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv744 = phi i64 [ %indvars.iv.next745, %vec.epilog.scalar.ph ], [ %indvars.iv744.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %indvars.iv744
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !152
  %i.mq = fptrunc double %i.mp to float
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %indvars.iv744
  store float %i.mq, ptr %i.mr, align 4, !tbaa !28
  %indvars.iv.next745 = add nuw nsw i64 %indvars.iv744, 1 ; 2 uses
  %exitcond748.not = icmp eq i64 %indvars.iv.next745, %wide.trip.count747
  br i1 %exitcond748.not, label %.preheader603, label %vec.epilog.scalar.ph, !llvm.loop !45

bb.co:                                            ; preds = %bb.ck
  %i.ms = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cl
  %i.mt = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %35) #23
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.pn277 = phi { ptr, i32 } [ %i.mt, %bb.cp ], [ %i.ms, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit325

.lr.ph653:                                        ; preds = %.preheader603, %_ZL14gmx_sfree_implIdEvPKcS1_iPT_.exit335
  %indvars.iv749 = phi i64 [ %indvars.iv.next750, %_ZL14gmx_sfree_implIdEvPKcS1_iPT_.exit335 ], [ 0, %.preheader603 ] ; 2 uses
  %i.mu = load ptr, ptr %i.az, align 8, !tbaa !148
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.mu, i64 %indvars.iv749
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !150
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.111, i32 noundef 1335, ptr noundef %i.mw)
          to label %_ZL14gmx_sfree_implIdEvPKcS1_iPT_.exit335 unwind label %.loopexit604

_ZL14gmx_sfree_implIdEvPKcS1_iPT_.exit335:        ; preds = %.lr.ph653
  %indvars.iv.next750 = add nuw nsw i64 %indvars.iv749, 1 ; 2 uses
  %i.mx = load i32, ptr %i.ap, align 4, !tbaa !9
  %i.my = sext i32 %i.mx to i64
  %i.mz = icmp slt i64 %indvars.iv.next750, %i.my
  br i1 %i.mz, label %.lr.ph653, label %._crit_edge654, !llvm.loop !46

._crit_edge654:                                   ; preds = %_ZL14gmx_sfree_implIdEvPKcS1_iPT_.exit335, %.preheader603
  %i.na = load ptr, ptr %i.az, align 8, !tbaa !148
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.111, i32 noundef 1337, ptr noundef %i.na)
          to label %_ZL14gmx_sfree_implIPdEvPKcS2_iPT_.exit337 unwind label %.loopexit.split-lp605

_ZL14gmx_sfree_implIPdEvPKcS2_iPT_.exit337:       ; preds = %._crit_edge654
  %i.nb = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.nc = load ptr, ptr %i.au, align 8, !tbaa !18
  %i.nd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nb, ptr noundef nonnull @.str.115, i32 noundef %i.ll, ptr noundef %i.nc) #24 ; 0 uses
  br label %bb.cr

bb.cr:                                            ; preds = %_ZL14gmx_sfree_implIPdEvPKcS2_iPT_.exit337, %bb.cj
  %.1225 = phi i32 [ %i.ll, %_ZL14gmx_sfree_implIPdEvPKcS2_iPT_.exit337 ], [ %.0224, %bb.cj ] ; 6 uses
  %i.ne = load i8, ptr %i.av, align 1, !tbaa !154, !range !155, !noundef !156
  %i.nf = trunc nuw i8 %i.ne to i1
  %i.ng = load ptr, ptr %i.y, align 8
  %i.nh = icmp eq ptr %i.ng, null                 ; 2 uses
  %or.cond31.not280 = and i1 %i.nh, %i.nf
  %i.ni = load i8, ptr %i.aa, align 1, !range !155
  %i.nj = trunc nuw i8 %i.ni to i1
  %or.cond33 = select i1 %or.cond31.not280, i1 true, i1 %i.nj
  %i.nk = load i8, ptr %i.ab, align 1, !range !155
  %i.nl = trunc nuw i8 %i.nk to i1
  %or.cond35 = select i1 %or.cond33, i1 true, i1 %i.nl
  %spec.select320 = and i1 %i.fh, %or.cond35      ; 3 uses
  %or.cond37 = or i1 %i.fk, %spec.select320
  %or.cond321 = select i1 %i.nh, i1 %or.cond37, i1 false
  %.0228 = select i1 %or.cond321, i1 true, i1 %or.cond27
  store ptr null, ptr %i.x, align 8, !tbaa !15
  store i32 0, ptr %i.aq, align 4, !tbaa !9
  store ptr null, ptr %i.as, align 8, !tbaa !136
  br i1 %.0228, label %bb.cs, label %bb.dy

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc) #23
  %i.nm = invoke noundef ptr @_Z6ftp2fniiPK8t_filenm(i32 noundef 26, i32 noundef 16, ptr noundef nonnull %29)
          to label %bb.ct unwind label %bb.db

bb.ct:                                            ; preds = %bb.cs
  store ptr %i.nm, ptr %i.bc, align 8, !tbaa !18
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %36, ptr noundef nonnull align 8 dereferenceable(8) %i.bc, i8 noundef zeroext 2)
          to label %bb.cu unwind label %bb.db

bb.cu:                                            ; preds = %bb.ct
  %i.nn = invoke noundef zeroext i1 @_Z13read_tps_confRKNSt10filesystem7__cxx114pathEP10t_topologyP7PbcTypePPA3_fSA_S9_b(ptr noundef nonnull align 8 dereferenceable(40) %36, ptr noundef nonnull %28, ptr noundef nonnull %i.w, ptr noundef nonnull %i.x, ptr noundef null, ptr noundef nonnull %i.am, i1 noundef zeroext %spec.select320)
          to label %bb.cv unwind label %bb.dc

bb.cv:                                            ; preds = %bb.cu
  %i.no = getelementptr inbounds nuw i8, ptr %36, i64 32 ; 2 uses
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i338 = icmp eq ptr %i.np, null
  br i1 %.not.i.i.i338, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i339, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.no, ptr noundef nonnull %i.np) #23
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i339

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i339: ; preds = %bb.cw, %bb.cv
  %i.nq = load ptr, ptr %36, align 8, !tbaa !25   ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.ns = icmp eq ptr %i.nq, %i.nr
  br i1 %i.ns, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit342, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i340

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i340: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i339
  %i.nt = load i64, ptr %i.nr, align 8, !tbaa !26
  %i.nu = add i64 %i.nt, 1
  call void @_ZdlPvm(ptr noundef %i.nq, i64 noundef %i.nu) #25
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit342

_ZNSt10filesystem7__cxx114pathD2Ev.exit342:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i339, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #23
  %i.nv = getelementptr inbounds nuw i8, ptr %28, i64 2344 ; 7 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.nx = load i32, ptr %i.w, align 4, !tbaa !134
  %i.ny = load i32, ptr %i.nv, align 8, !tbaa !164
  %i.nz = invoke noundef ptr @_Z14gmx_rmpbc_initPK6t_idef7PbcTypei(ptr noundef nonnull %i.nw, i32 noundef %i.nx, i32 noundef %i.ny)
          to label %bb.cx unwind label %.loopexit.split-lp605 ; 2 uses

bb.cx:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit342
  %i.oa = load i32, ptr %i.nv, align 8, !tbaa !164
  %i.ob = load ptr, ptr %i.x, align 8, !tbaa !15
  invoke void @_Z15gmx_rmpbc_applyP9gmx_rmpbciPA3_KfPA3_f(ptr noundef %i.nz, i32 noundef %i.oa, ptr noundef nonnull %i.am, ptr noundef %i.ob)
          to label %bb.cy unwind label %.loopexit.split-lp605

bb.cy:                                            ; preds = %bb.cx
  %i.oc = load i8, ptr %i.av, align 1, !range !155
  %i.od = trunc nuw i8 %i.oc to i1
  %or.cond39 = select i1 %spec.select, i1 %i.od, i1 false
  br i1 %or.cond39, label %bb.cz, label %.loopexit602

bb.cz:                                            ; preds = %bb.cy
  %i.oe = load ptr, ptr %i.y, align 8, !tbaa !15
  %i.of = icmp eq ptr %i.oe, null
  br i1 %i.of, label %bb.da, label %bb.de

bb.da:                                            ; preds = %bb.cz
  %i.og = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.123, ptr noundef %i.eg) ; 0 uses
  br label %bb.de

bb.db:                                            ; preds = %bb.ct, %bb.cs
  %i.oh = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.dc:                                            ; preds = %bb.cu
  %i.oi = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %36) #23
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.pn281 = phi { ptr, i32 } [ %i.oi, %bb.dc ], [ %i.oh, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit325
end_hunk_0
