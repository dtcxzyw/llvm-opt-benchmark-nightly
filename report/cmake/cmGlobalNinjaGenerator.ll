Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmGlobalNinjaGenerator?download=true
inline.NumInlined: 8431
inline.NumDeleted: 2509
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN22cmGlobalNinjaGenerator26WriteTargetRebuildManifestERSo:.noexc.i
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit328, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #32
  %i.uh = load ptr, ptr %26, align 8, !tbaa !47   ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.uj = icmp eq ptr %i.uh, %i.ui
  br i1 %i.uj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331
  %i.uk = load i64, ptr %i.ui, align 8, !tbaa !48
  %i.ul = add i64 %i.uk, 1
  call void @_ZdlPvm(ptr noundef %i.uh, i64 noundef %i.ul) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #32
  call void @_ZN12cmNinjaBuildD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %22) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #32
  br label %bb.dm

bb.bz:                                            ; preds = %.noexc227, %_ZNKSt6vectorISt10unique_ptrI16cmLocalGeneratorSt14default_deleteIS1_EESaIS4_EE2atEm.exit.i225, %bb.at
  %i.um = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340

bb.ca:                                            ; preds = %bb.au, %_ZNK22cmGlobalNinjaGenerator8CMakeCmdB5cxx11Ev.exit229
  %i.un = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337

bb.cb:                                            ; preds = %bb.av
  %i.uo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.up = load ptr, ptr %21, align 8, !tbaa !47   ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.ur = icmp eq ptr %i.up, %i.uq
  br i1 %i.ur, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335: ; preds = %bb.cb
  %i.us = load i64, ptr %i.uq, align 8, !tbaa !48
  %i.ut = add i64 %i.us, 1
  call void @_ZdlPvm(ptr noundef %i.up, i64 noundef %i.ut) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337: ; preds = %bb.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335, %bb.ca
  %.pn95 = phi { ptr, i32 } [ %i.un, %bb.ca ], [ %i.uo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335 ], [ %i.uo, %bb.cb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  %i.uu = load ptr, ptr %20, align 8, !tbaa !47   ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.uw = icmp eq ptr %i.uu, %i.uv
  br i1 %i.uw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337
  %i.ux = load i64, ptr %i.uv, align 8, !tbaa !48
  %i.uy = add i64 %i.ux, 1
  call void @_ZdlPvm(ptr noundef %i.uu, i64 noundef %i.uy) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338, %bb.bz
  %.pn95.pn = phi { ptr, i32 } [ %i.um, %bb.bz ], [ %.pn95, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338 ], [ %.pn95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  br label %bb.cd

bb.cc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit254, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit256
  %i.uz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340
  %.pn98 = phi { ptr, i32 } [ %i.uz, %bb.cc ], [ %.pn95.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340 ]
  call void @_ZN11cmNinjaRuleD2Ev(ptr noundef nonnull align 8 dead_on_return(289) dereferenceable(289) %17) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  br label %.loopexit.split-lp.loopexit.split-lp

bb.ce:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277
  %i.va = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.cf:                                            ; preds = %bb.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit267
  %i.vb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343

bb.cg:                                            ; preds = %bb.bg
  %i.vc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vd = load ptr, ptr %24, align 8, !tbaa !47   ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.vf = icmp eq ptr %i.vd, %i.ve
  br i1 %i.vf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341: ; preds = %bb.cg
  %i.vg = load i64, ptr %i.ve, align 8, !tbaa !48
  %i.vh = add i64 %i.vg, 1
  call void @_ZdlPvm(ptr noundef %i.vd, i64 noundef %i.vh) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343: ; preds = %bb.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341, %bb.cf
  %.pn101 = phi { ptr, i32 } [ %i.vb, %bb.cf ], [ %i.vc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341 ], [ %i.vc, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #32
  br label %bb.co

bb.ch:                                            ; preds = %bb.bh, %._crit_edge.i.i278
  %i.vi = landingpad { ptr, i32 }
          cleanup
  %i.vj = load ptr, ptr %25, align 8, !tbaa !47   ; 2 uses
  %i.vk = icmp eq ptr %i.vj, %i.qf
  br i1 %i.vk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344: ; preds = %bb.ch
  %i.vl = load i64, ptr %i.qf, align 8, !tbaa !48
  %i.vm = add i64 %i.vl, 1
  call void @_ZdlPvm(ptr noundef %i.vj, i64 noundef %i.vm) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346: ; preds = %bb.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #32
  br label %bb.co

bb.ci:                                            ; preds = %bb.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286
  %i.vn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355

bb.cj:                                            ; preds = %bb.bk, %bb.bj
  %i.vo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352

bb.ck:                                            ; preds = %bb.bp, %bb.bo, %.noexc.i.i301, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEaSERKSC_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit304
  %i.vp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12cmNinjaBuildD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %28) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #32
  br label %bb.cn

bb.cl:                                            ; preds = %.noexc310, %._crit_edge.i.i306
  %i.vq = landingpad { ptr, i32 }
          cleanup
  %i.vr = load ptr, ptr %30, align 8, !tbaa !47   ; 2 uses
  %i.vs = icmp eq ptr %i.vr, %i.sh
  br i1 %i.vs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347: ; preds = %bb.cl
  %i.vt = load i64, ptr %i.sh, align 8, !tbaa !48
  %i.vu = add i64 %i.vt, 1
  call void @_ZdlPvm(ptr noundef %i.vr, i64 noundef %i.vu) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349: ; preds = %bb.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #32
  br label %bb.cn

bb.cm:                                            ; preds = %bb.by, %.noexc.i.i325, %bb.bu, %.noexc.i.i318
  %i.vv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349, %bb.ck
  %.pn109 = phi { ptr, i32 } [ %i.vv, %bb.cm ], [ %i.vq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349 ], [ %i.vp, %bb.ck ] ; 2 uses
  %i.vw = load ptr, ptr %27, align 8, !tbaa !47   ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.vy = icmp eq ptr %i.vw, %i.vx
  br i1 %i.vy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350: ; preds = %bb.cn
  %i.vz = load i64, ptr %i.vx, align 8, !tbaa !48
  %i.wa = add i64 %i.vz, 1
  call void @_ZdlPvm(ptr noundef %i.vw, i64 noundef %i.wa) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350, %bb.cj
  %.pn109.pn = phi { ptr, i32 } [ %i.vo, %bb.cj ], [ %.pn109, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350 ], [ %.pn109, %bb.cn ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #32
  %i.wb = load ptr, ptr %26, align 8, !tbaa !47   ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.wd = icmp eq ptr %i.wb, %i.wc
  br i1 %i.wd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352
  %i.we = load i64, ptr %i.wc, align 8, !tbaa !48
  %i.wf = add i64 %i.we, 1
  call void @_ZdlPvm(ptr noundef %i.wb, i64 noundef %i.wf) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353, %bb.ci
  %.pn109.pn.pn = phi { ptr, i32 } [ %i.vn, %bb.ci ], [ %.pn109.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353 ], [ %.pn109.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #32
  br label %bb.co

bb.co:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343, %bb.ce
  %.pn109.pn.pn.pn = phi { ptr, i32 } [ %.pn109.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355 ], [ %i.vi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346 ], [ %i.va, %bb.ce ], [ %.pn101, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343 ]
  call void @_ZN12cmNinjaBuildD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %22) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #32
  br label %.loopexit.split-lp.loopexit.split-lp

bb.cp:                                            ; preds = %bb.as
  %.pre447 = load i8, ptr %i.kx, align 2, !tbaa !465, !range !55
  %i.wg = trunc nuw i8 %.pre447 to i1
  br i1 %i.wg, label %bb.dm, label %.thread

.thread:                                          ; preds = %bb.aq, %bb.cp
  %i.wh = invoke noundef zeroext i1 @_ZNK5cmake23DoWriteGlobVerifyTargetEv(ptr noundef nonnull align 8 dereferenceable(2456) %i.z)
          to label %bb.cq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cq:                                            ; preds = %.thread
  br i1 %i.wh, label %bb.cr, label %bb.dm

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #32
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %31)
          to label %bb.cs unwind label %bb.de

bb.cs:                                            ; preds = %bb.cr
  %i.wi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull @.str.154, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.df ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.cs
  %i.wj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit358 unwind label %bb.df ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit358: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.wk = getelementptr inbounds nuw i8, ptr %0, i64 2904
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !47
  %i.wm = getelementptr inbounds nuw i8, ptr %0, i64 2912
  %i.wn = load i64, ptr %i.wm, align 8, !tbaa !49
  %i.wo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef %i.wl, i64 noundef %i.wn)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.df ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit358
  %i.wp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.wo, ptr noundef nonnull @.str.9, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit361 unwind label %bb.df ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit361: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.wq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.wo, ptr noundef nonnull @.str.155, i64 noundef 132)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit363 unwind label %bb.df ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit363: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit361
  %i.wr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.wo, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %bb.ct unwind label %bb.df     ; 0 uses

bb.ct:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit363
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #32
  %i.ws = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 7 uses
  store ptr %i.ws, ptr %32, align 8, !tbaa !43, !alias.scope !1457
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.ws, ptr noundef nonnull align 1 dereferenceable(3) @.str.294, i64 3, i1 false)
  %i.wt = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i64 3, ptr %i.wt, align 8, !tbaa !49, !alias.scope !1457
  %i.wu = getelementptr inbounds nuw i8, ptr %32, i64 19
  store i8 0, ptr %i.wu, align 1, !tbaa !48, !alias.scope !1457
  %i.wv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.wo, ptr noundef nonnull %i.ws, i64 noundef 3)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit368 unwind label %bb.dg

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit368: ; preds = %bb.ct
  %i.ww = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.wv, ptr noundef nonnull @.str.9, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit370 unwind label %bb.dg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit370: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit368
  %i.wx = load ptr, ptr %32, align 8, !tbaa !47   ; 2 uses
  %i.wy = icmp eq ptr %i.wx, %i.ws
  br i1 %i.wy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i371

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i371: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit370
  %i.wz = load i64, ptr %i.ws, align 8, !tbaa !48
  %i.xa = add i64 %i.wz, 1
  call void @_ZdlPvm(ptr noundef %i.wx, i64 noundef %i.xa) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit370, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i371
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #32
  %i.xb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull @.str.156, i64 noundef 106)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit375 unwind label %bb.df ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit375: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373
  %i.xc = load ptr, ptr %i.y, align 8, !tbaa !298 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !1458)
  call void @llvm.experimental.noalias.scope.decl(metadata !1459)
  %i.xd = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 7 uses
  store ptr %i.xd, ptr %33, align 8, !tbaa !43, !alias.scope !1460
  %i.xe = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i64 0, ptr %i.xe, align 8, !tbaa !49, !alias.scope !1460
  store i8 0, ptr %i.xd, align 8, !tbaa !48, !alias.scope !1460
  %i.xf = getelementptr inbounds nuw i8, ptr %31, i64 48
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !257, !noalias !1460 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.xg, null
  %i.xh = getelementptr inbounds nuw i8, ptr %31, i64 32
  %i.xi = load ptr, ptr %i.xh, align 8, !noalias !1460 ; 2 uses
  %i.xj = icmp ugt ptr %i.xg, %i.xi
  %.08.i.i.i = select i1 %i.xj, ptr %i.xg, ptr %i.xi ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i376 = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i376, label %bb.cw, label %bb.cu

bb.cu:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit375
  %i.xk = getelementptr inbounds nuw i8, ptr %31, i64 40
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !258, !noalias !1460 ; 2 uses
  %i.xm = ptrtoint ptr %.08.i.i.i to i64
  %i.xn = ptrtoint ptr %i.xl to i64
  %i.xo = sub i64 %i.xm, %i.xn
  %i.xp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %33, i64 noundef 0, i64 noundef 0, ptr noundef %i.xl, i64 noundef %i.xo)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.cv ; 0 uses

bb.cv:                                            ; preds = %bb.cw, %bb.cu
  %i.xq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xr = load ptr, ptr %33, align 8, !tbaa !47, !alias.scope !1460 ; 2 uses
  %i.xs = icmp eq ptr %i.xr, %i.xd
  br i1 %i.xs, label %.body, label %.body.sink.split

bb.cw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit375
  %i.xt = getelementptr inbounds nuw i8, ptr %31, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(32) %i.xt)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.cv

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.cw, %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %34, i8 0, i64 32, i1 false)
  invoke void @_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceEC2Ev(ptr noundef nonnull align 8 dereferenceable(25) %34)
          to label %bb.cx unwind label %bb.dh

bb.cx:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.xu = getelementptr inbounds nuw i8, ptr %34, i64 16
  store i64 0, ptr %i.xu, align 8
  %i.xv = getelementptr inbounds nuw i8, ptr %34, i64 24
  store i8 0, ptr %i.xv, align 8, !tbaa !1464
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xc, i64 2096
  invoke void @_ZNK5cmake15IssueDiagnosticEN13cmDiagnostics18DiagnosticCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK15cmStateSnapshotRK19cmDiagnosticContext(ptr noundef nonnull align 8 dereferenceable(2456) %i.xc, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(24) %i.xw, ptr noundef nonnull align 8 dereferenceable(25) %34)
          to label %_ZNK5cmake15IssueDiagnosticEN13cmDiagnostics18DiagnosticCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK19cmDiagnosticContext.exit unwind label %bb.di

_ZNK5cmake15IssueDiagnosticEN13cmDiagnostics18DiagnosticCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK19cmDiagnosticContext.exit: ; preds = %bb.cx
  %i.xx = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !301 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.xy, null
  br i1 %.not.i.i.i.i, label %_ZN19cmDiagnosticContextD2Ev.exit, label %bb.cy

bb.cy:                                            ; preds = %_ZNK5cmake15IssueDiagnosticEN13cmDiagnostics18DiagnosticCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK19cmDiagnosticContext.exit
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 8 ; 4 uses
  %i.ya = load atomic i64, ptr %i.xz acquire, align 8 ; 2 uses
  %i.yb = icmp eq i64 %i.ya, 4294967297
  %i.yc = trunc i64 %i.ya to i32                  ; 2 uses
  br i1 %i.yb, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  store i32 0, ptr %i.xz, align 8, !tbaa !303
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xy, i64 12
  store i32 0, ptr %i.yd, align 4, !tbaa !304
  %i.ye = load ptr, ptr %i.xy, align 8, !tbaa !59
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 16
  %i.yg = load ptr, ptr %i.yf, align 8
  call void %i.yg(ptr noundef nonnull align 8 dereferenceable(16) %i.xy) #32, !inline_history !1431
  %i.yh = load ptr, ptr %i.xy, align 8, !tbaa !59
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 24
  %i.yj = load ptr, ptr %i.yi, align 8
  call void %i.yj(ptr noundef nonnull align 8 dereferenceable(16) %i.xy) #32, !inline_history !1431
  br label %_ZN19cmDiagnosticContextD2Ev.exit

bb.da:                                            ; preds = %bb.cy
  %i.yk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !48
  %.not.i.i.i.i.i = icmp eq i8 %i.yk, 0
  br i1 %.not.i.i.i.i.i, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.yl = add nsw i32 %i.yc, -1
  store i32 %i.yl, ptr %i.xz, align 8, !tbaa !266
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.dc:                                            ; preds = %bb.da
  %i.ym = atomicrmw volatile add ptr %i.xz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.dc, %bb.db
  %.0.i.i.i.i.i.i = phi i32 [ %i.yc, %bb.db ], [ %i.ym, %bb.dc ]
  %i.yn = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.yn, label %bb.dd, label %_ZN19cmDiagnosticContextD2Ev.exit, !prof !278

bb.dd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.xy) #32
  br label %_ZN19cmDiagnosticContextD2Ev.exit

_ZN19cmDiagnosticContextD2Ev.exit:                ; preds = %_ZNK5cmake15IssueDiagnosticEN13cmDiagnostics18DiagnosticCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK19cmDiagnosticContext.exit, %bb.cz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #32
  %i.yo = load ptr, ptr %33, align 8, !tbaa !47   ; 2 uses
  %i.yp = icmp eq ptr %i.yo, %i.xd
  br i1 %i.yp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i379

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i379: ; preds = %_ZN19cmDiagnosticContextD2Ev.exit
  %i.yq = load i64, ptr %i.xd, align 8, !tbaa !48
  %i.yr = add i64 %i.yq, 1
  call void @_ZdlPvm(ptr noundef %i.yo, i64 noundef %i.yr) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381: ; preds = %_ZN19cmDiagnosticContextD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i379
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #32
  %i.ys = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ys, ptr %31, align 8, !tbaa !59
  %i.yt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.yu = getelementptr i8, ptr %i.ys, i64 -24
end_hunk_0
begin_hunk_1_@_Z25cmcmd_cmake_ninja_dependsN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEESC_:bb.a
  %i.ot = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  store ptr %i.ot, ptr %24, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 48, ptr %i.a, align 8, !tbaa !45
  %i.ou = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc355 unwind label %bb.da ; 3 uses

.noexc355:                                        ; preds = %.noexc.i354
  store ptr %i.ou, ptr %24, align 8, !tbaa !47
  %i.ov = load i64, ptr %i.a, align 8, !tbaa !45  ; 3 uses
  store i64 %i.ov, ptr %i.ot, align 8, !tbaa !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.ou, ptr noundef nonnull align 1 dereferenceable(48) @.str.210, i64 48, i1 false)
  %i.ow = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 %i.ov, ptr %i.ow, align 8, !tbaa !49
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ou, i64 %i.ov
  store i8 0, ptr %i.ox, align 1, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  invoke void @_ZN13cmSystemTools5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %bb.cz unwind label %bb.db

bb.cz:                                            ; preds = %.noexc355
  %i.oy = load ptr, ptr %24, align 8, !tbaa !47   ; 2 uses
  %i.oz = icmp eq ptr %i.oy, %i.ot
  br i1 %i.oz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357: ; preds = %bb.cz
  %i.pa = load i64, ptr %i.ot, align 8, !tbaa !48
  %i.pb = add i64 %i.pa, 1
  call void @_ZdlPvm(ptr noundef %i.oy, i64 noundef %i.pb) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359: ; preds = %bb.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #32
  br label %bb.eu

bb.da:                                            ; preds = %.noexc.i354
  %i.pc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362

bb.db:                                            ; preds = %.noexc355
  %i.pd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pe = load ptr, ptr %24, align 8, !tbaa !47   ; 2 uses
  %i.pf = icmp eq ptr %i.pe, %i.ot
  br i1 %i.pf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360: ; preds = %bb.db
  %i.pg = load i64, ptr %i.ot, align 8, !tbaa !48
  %i.ph = add i64 %i.pg, 1
  call void @_ZdlPvm(ptr noundef %i.pe, i64 noundef %i.ph) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362: ; preds = %bb.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360, %bb.da
  %.pn95 = phi { ptr, i32 } [ %i.pc, %bb.da ], [ %i.pd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360 ], [ %i.pd, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #32
  br label %bb.ev

bb.dc:                                            ; preds = %bb.cy
  %i.pi = load i64, ptr %i.ab, align 8, !tbaa !49
  %i.pj = icmp eq i64 %i.pi, 0
  br i1 %i.pj, label %bb.dd, label %bb.di

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @.str.211, ptr noundef nonnull align 1 dereferenceable(1) %26)
          to label %bb.de unwind label %bb.dg

bb.de:                                            ; preds = %bb.dd
  invoke void @_ZN13cmSystemTools5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %25)
          to label %bb.df unwind label %bb.dh

bb.df:                                            ; preds = %bb.de
  %i.pk = load ptr, ptr %25, align 8, !tbaa !47   ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.pm = icmp eq ptr %i.pk, %i.pl
  br i1 %i.pm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i363

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i363: ; preds = %bb.df
  %i.pn = load i64, ptr %i.pl, align 8, !tbaa !48
  %i.po = add i64 %i.pn, 1
  call void @_ZdlPvm(ptr noundef %i.pk, i64 noundef %i.po) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i363
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #32
  br label %bb.eu

bb.dg:                                            ; preds = %bb.dd
  %i.pp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368

bb.dh:                                            ; preds = %bb.de
  %i.pq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pr = load ptr, ptr %25, align 8, !tbaa !47   ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.pt = icmp eq ptr %i.pr, %i.ps
  br i1 %i.pt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366: ; preds = %bb.dh
  %i.pu = load i64, ptr %i.ps, align 8, !tbaa !48
  %i.pv = add i64 %i.pu, 1
  call void @_ZdlPvm(ptr noundef %i.pr, i64 noundef %i.pv) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368: ; preds = %bb.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366, %bb.dg
  %.pn93 = phi { ptr, i32 } [ %i.pp, %bb.dg ], [ %i.pq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366 ], [ %i.pq, %bb.dh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #32
  br label %bb.ev

bb.di:                                            ; preds = %bb.dc
  %i.pw = load i64, ptr %i.ad, align 8, !tbaa !49
  %i.px = icmp eq i64 %i.pw, 0
  br i1 %i.px, label %bb.dj, label %bb.do

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull @.str.212, ptr noundef nonnull align 1 dereferenceable(1) %28)
          to label %bb.dk unwind label %bb.dm

bb.dk:                                            ; preds = %bb.dj
  invoke void @_ZN13cmSystemTools5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %27)
          to label %bb.dl unwind label %bb.dn

bb.dl:                                            ; preds = %bb.dk
  %i.py = load ptr, ptr %27, align 8, !tbaa !47   ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.qa = icmp eq ptr %i.py, %i.pz
  br i1 %i.qa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i369

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i369: ; preds = %bb.dl
  %i.qb = load i64, ptr %i.pz, align 8, !tbaa !48
  %i.qc = add i64 %i.qb, 1
  call void @_ZdlPvm(ptr noundef %i.py, i64 noundef %i.qc) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371: ; preds = %bb.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i369
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #32
  br label %bb.eu

bb.dm:                                            ; preds = %bb.dj
  %i.qd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374

bb.dn:                                            ; preds = %bb.dk
  %i.qe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qf = load ptr, ptr %27, align 8, !tbaa !47   ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.qh = icmp eq ptr %i.qf, %i.qg
  br i1 %i.qh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372: ; preds = %bb.dn
  %i.qi = load i64, ptr %i.qg, align 8, !tbaa !48
  %i.qj = add i64 %i.qi, 1
  call void @_ZdlPvm(ptr noundef %i.qf, i64 noundef %i.qj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374: ; preds = %bb.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372, %bb.dm
  %.pn91 = phi { ptr, i32 } [ %i.qd, %bb.dm ], [ %i.qe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372 ], [ %i.qe, %bb.dn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #32
  br label %bb.ev

bb.do:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #32
  %i.qk = getelementptr inbounds nuw i8, ptr %29, i64 128 ; 6 uses
  store i8 0, ptr %i.qk, align 8, !tbaa !500
  %i.ql = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.81)
  br i1 %i.ql, label %bb.dp, label %bb.du

bb.dp:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #32
  invoke fastcc void @_ZN12_GLOBAL__N_133cmcmd_cmake_ninja_depends_fortranERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_(ptr dead_on_unwind noalias writable align 8 %30, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.dq unwind label %bb.dt

bb.dq:                                            ; preds = %bb.dp
  %i.qm = call fastcc noundef nonnull align 8 dereferenceable(136) ptr @_ZNSt8optionalIN12_GLOBAL__N_112cmSourceInfoEEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(136) %29, ptr noundef nonnull align 8 dereferenceable(136) %30) #32 ; 0 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %30, i64 128 ; 2 uses
  %i.qo = load i8, ptr %i.qn, align 8, !tbaa !500, !range !55, !noundef !56
  %i.qp = trunc nuw i8 %i.qo to i1
  br i1 %i.qp, label %bb.dr, label %_ZNSt14_Optional_baseIN12_GLOBAL__N_112cmSourceInfoELb0ELb0EED2Ev.exit

bb.dr:                                            ; preds = %bb.dq
  store i8 0, ptr %i.qn, align 8, !tbaa !500
  call fastcc void @_ZN12_GLOBAL__N_112cmSourceInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(136) %30) #32
  br label %_ZNSt14_Optional_baseIN12_GLOBAL__N_112cmSourceInfoELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN12_GLOBAL__N_112cmSourceInfoELb0ELb0EED2Ev.exit: ; preds = %bb.dq, %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #32
  %.val = load i8, ptr %i.qk, align 8, !tbaa !500, !range !55, !noundef !56
  %i.qq = trunc nuw i8 %.val to i1
  br i1 %i.qq, label %bb.dz, label %bb.eq

bb.ds:                                            ; preds = %bb.dz, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit389
  %i.qr = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.dt:                                            ; preds = %bb.dp
  %i.qs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #32
  br label %bb.es

bb.du:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #32
  invoke void @_Z8cmStrCatIRA48_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA10_S0_EES8_OT_OT0_DpOT1_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %31, ptr noundef nonnull align 1 dereferenceable(48) @.str.213, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 1 dereferenceable(10) @.str.214)
          to label %bb.dv unwind label %bb.dx

bb.dv:                                            ; preds = %bb.du
  invoke void @_ZN13cmSystemTools5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %31)
          to label %bb.dw unwind label %bb.dy

bb.dw:                                            ; preds = %bb.dv
  %i.qt = load ptr, ptr %31, align 8, !tbaa !47   ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.qv = icmp eq ptr %i.qt, %i.qu
  br i1 %i.qv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375: ; preds = %bb.dw
  %i.qw = load i64, ptr %i.qu, align 8, !tbaa !48
  %i.qx = add i64 %i.qw, 1
  call void @_ZdlPvm(ptr noundef %i.qt, i64 noundef %i.qx) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377: ; preds = %bb.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #32
  br label %bb.eq

bb.dx:                                            ; preds = %bb.du
  %i.qy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380

bb.dy:                                            ; preds = %bb.dv
  %i.qz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ra = load ptr, ptr %31, align 8, !tbaa !47   ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.rc = icmp eq ptr %i.ra, %i.rb
  br i1 %i.rc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378: ; preds = %bb.dy
  %i.rd = load i64, ptr %i.rb, align 8, !tbaa !48
  %i.re = add i64 %i.rd, 1
  call void @_ZdlPvm(ptr noundef %i.ra, i64 noundef %i.re) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380: ; preds = %bb.dy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378, %bb.dx
  %.pn79 = phi { ptr, i32 } [ %i.qy, %bb.dx ], [ %i.qz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378 ], [ %i.qz, %bb.dy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #32
  br label %bb.es

bb.dz:                                            ; preds = %_ZNSt14_Optional_baseIN12_GLOBAL__N_112cmSourceInfoELb0ELb0EED2Ev.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit382 unwind label %bb.ds

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit382: ; preds = %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #32
  invoke void @_ZN21cmGeneratedFileStreamC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb16codecvt_Encoding(ptr noundef nonnull align 8 dereferenceable(348) %32, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.ea unwind label %bb.ec

bb.ea:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit382
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #32
  invoke void @_ZN5cmsys11SystemTools23ConvertToUnixOutputPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %33, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.eb unwind label %bb.ed

bb.eb:                                            ; preds = %bb.ea
  %i.rf = load ptr, ptr %33, align 8, !tbaa !47
  %i.rg = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.rh = load i64, ptr %i.rg, align 8, !tbaa !49
  %i.ri = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef %i.rf, i64 noundef %i.rh)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.ee

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.eb
  %i.rj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ri, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ee ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.rk = load ptr, ptr %33, align 8, !tbaa !47   ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.rm = icmp eq ptr %i.rk, %i.rl
  br i1 %i.rm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.rn = load i64, ptr %i.rl, align 8, !tbaa !48
  %i.ro = add i64 %i.rn, 1
  call void @_ZdlPvm(ptr noundef %i.rk, i64 noundef %i.ro) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #32
  %i.rp = getelementptr inbounds nuw i8, ptr %29, i64 104
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !79 ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %29, i64 112
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !79 ; 2 uses
  %.not512526 = icmp eq ptr %i.rq, %i.rs
  br i1 %.not512526, label %._crit_edge, label %.lr.ph528

.lr.ph528:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387
  %i.rt = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.ru = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 4 uses
  br label %bb.ef

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387
  %i.rv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull @.str.9, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit389 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ec:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit382
  %i.rw = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.ed:                                            ; preds = %bb.ea
  %i.rx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392

bb.ee:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.eb
  %i.ry = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rz = load ptr, ptr %33, align 8, !tbaa !47   ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.sb = icmp eq ptr %i.rz, %i.sa
  br i1 %i.sb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i390

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i390: ; preds = %bb.ee
  %i.sc = load i64, ptr %i.sa, align 8, !tbaa !48
  %i.sd = add i64 %i.sc, 1
  call void @_ZdlPvm(ptr noundef %i.rz, i64 noundef %i.sd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392: ; preds = %bb.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i390, %bb.ed
  %.pn81 = phi { ptr, i32 } [ %i.rx, %bb.ed ], [ %i.ry, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i390 ], [ %i.ry, %bb.ee ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #32
  br label %.loopexit.split-lp

bb.ef:                                            ; preds = %.lr.ph528, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399
  %.sroa.0459.0527 = phi ptr [ %i.rq, %.lr.ph528 ], [ %i.sm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399 ] ; 2 uses
  %i.se = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull @.str.215, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit394 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit394: ; preds = %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #32
  invoke void @_ZN5cmsys11SystemTools23ConvertToUnixOutputPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %34, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0459.0527)
          to label %bb.eg unwind label %bb.eh

bb.eg:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit394
  %i.sf = load ptr, ptr %34, align 8, !tbaa !47
  %i.sg = load i64, ptr %i.rt, align 8, !tbaa !49
  %i.sh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef %i.sf, i64 noundef %i.sg)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit396 unwind label %bb.ei ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit396: ; preds = %bb.eg
  %i.si = load ptr, ptr %34, align 8, !tbaa !47   ; 2 uses
  %i.sj = icmp eq ptr %i.si, %i.ru
  br i1 %i.sj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit396
  %i.sk = load i64, ptr %i.ru, align 8, !tbaa !48
  %i.sl = add i64 %i.sk, 1
  call void @_ZdlPvm(ptr noundef %i.si, i64 noundef %i.sl) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit396, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #32
  %i.sm = getelementptr inbounds nuw i8, ptr %.sroa.0459.0527, i64 32 ; 2 uses
  %.not512 = icmp eq ptr %i.sm, %i.rs
  br i1 %.not512, label %._crit_edge, label %bb.ef

bb.eh:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit394
  %i.sn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402

bb.ei:                                            ; preds = %bb.eg
  %i.so = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sp = load ptr, ptr %34, align 8, !tbaa !47   ; 2 uses
  %i.sq = icmp eq ptr %i.sp, %i.ru
  br i1 %i.sq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400: ; preds = %bb.ei
  %i.sr = load i64, ptr %i.ru, align 8, !tbaa !48
  %i.ss = add i64 %i.sr, 1
  call void @_ZdlPvm(ptr noundef %i.sp, i64 noundef %i.ss) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402: ; preds = %bb.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400, %bb.eh
  %.pn85 = phi { ptr, i32 } [ %i.sn, %bb.eh ], [ %i.so, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400 ], [ %i.so, %bb.ei ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #32
  br label %.loopexit.split-lp

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit389: ; preds = %._crit_edge
  call void @_ZN21cmGeneratedFileStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(348) %32) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #32
  %i.st = invoke noundef zeroext i1 @_Z27cmScanDepFormat_P1689_WriteRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK13cmScanDepInfo(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(104) %29)
          to label %bb.ej unwind label %bb.ds

bb.ej:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit389
  br i1 %i.st, label %bb.eq, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #32
  invoke void @_Z8cmStrCatIRA40_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEES8_OT_OT0_DpOT1_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %35, ptr noundef nonnull align 1 dereferenceable(40) @.str.216, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.el unwind label %bb.eo

bb.el:                                            ; preds = %bb.ek
  invoke void @_ZN13cmSystemTools5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %35)
          to label %bb.em unwind label %bb.ep

bb.em:                                            ; preds = %bb.el
  %i.su = load ptr, ptr %35, align 8, !tbaa !47   ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.sw = icmp eq ptr %i.su, %i.sv
  br i1 %i.sw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403: ; preds = %bb.em
  %i.sx = load i64, ptr %i.sv, align 8, !tbaa !48
  %i.sy = add i64 %i.sx, 1
  call void @_ZdlPvm(ptr noundef %i.su, i64 noundef %i.sy) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405: ; preds = %bb.em, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #32
  br label %bb.eq

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ef, %._crit_edge
  %lpad.loopexit.split-lp745 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392
  %.pn85.pn.pn = phi { ptr, i32 } [ %.pn81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392 ], [ %.pn85, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402 ], [ %lpad.loopexit.split-lp745, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN21cmGeneratedFileStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(348) %32) #32
  br label %bb.en

bb.en:                                            ; preds = %.loopexit.split-lp, %bb.ec
  %.pn85.pn.pn.pn = phi { ptr, i32 } [ %.pn85.pn.pn, %.loopexit.split-lp ], [ %i.rw, %bb.ec ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #32
  br label %bb.es

bb.eo:                                            ; preds = %bb.ek
  %i.sz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408

bb.ep:                                            ; preds = %bb.el
  %i.ta = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tb = load ptr, ptr %35, align 8, !tbaa !47   ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.td = icmp eq ptr %i.tb, %i.tc
  br i1 %i.td, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406: ; preds = %bb.ep
  %i.te = load i64, ptr %i.tc, align 8, !tbaa !48
  %i.tf = add i64 %i.te, 1
  call void @_ZdlPvm(ptr noundef %i.tb, i64 noundef %i.tf) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408: ; preds = %bb.ep, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406, %bb.eo
  %.pn83 = phi { ptr, i32 } [ %i.sz, %bb.eo ], [ %i.ta, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406 ], [ %i.ta, %bb.ep ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #32
  br label %bb.es

bb.eq:                                            ; preds = %bb.ej, %_ZNSt14_Optional_baseIN12_GLOBAL__N_112cmSourceInfoELb0ELb0EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377
  %.3 = phi i32 [ 1, %_ZNSt14_Optional_baseIN12_GLOBAL__N_112cmSourceInfoELb0ELb0EED2Ev.exit ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377 ], [ 0, %bb.ej ]
  %i.tg = load i8, ptr %i.qk, align 8, !tbaa !500, !range !55, !noundef !56
  %i.th = trunc nuw i8 %i.tg to i1
  br i1 %i.th, label %bb.er, label %_ZNSt14_Optional_baseIN12_GLOBAL__N_112cmSourceInfoELb0ELb0EED2Ev.exit409

bb.er:                                            ; preds = %bb.eq
  store i8 0, ptr %i.qk, align 8, !tbaa !500
  call fastcc void @_ZN12_GLOBAL__N_112cmSourceInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(136) %29) #32
  br label %_ZNSt14_Optional_baseIN12_GLOBAL__N_112cmSourceInfoELb0ELb0EED2Ev.exit409

_ZNSt14_Optional_baseIN12_GLOBAL__N_112cmSourceInfoELb0ELb0EED2Ev.exit409: ; preds = %bb.eq, %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #32
  br label %bb.eu

bb.es:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408, %bb.en, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380, %bb.dt, %bb.ds
  %.pn85.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn85.pn.pn.pn, %bb.en ], [ %.pn83, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408 ], [ %i.qr, %bb.ds ], [ %i.qs, %bb.dt ], [ %.pn79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380 ]
  %i.ti = load i8, ptr %i.qk, align 8, !tbaa !500, !range !55, !noundef !56
  %i.tj = trunc nuw i8 %i.ti to i1
  br i1 %i.tj, label %bb.et, label %_ZNSt14_Optional_baseIN12_GLOBAL__N_112cmSourceInfoELb0ELb0EED2Ev.exit410

bb.et:                                            ; preds = %bb.es
  store i8 0, ptr %i.qk, align 8, !tbaa !500
  call fastcc void @_ZN12_GLOBAL__N_112cmSourceInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(136) %29) #32
  br label %_ZNSt14_Optional_baseIN12_GLOBAL__N_112cmSourceInfoELb0ELb0EED2Ev.exit410

_ZNSt14_Optional_baseIN12_GLOBAL__N_112cmSourceInfoELb0ELb0EED2Ev.exit410: ; preds = %bb.es, %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #32
  br label %bb.ev

bb.eu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312, %_ZNSt14_Optional_baseIN12_GLOBAL__N_112cmSourceInfoELb0ELb0EED2Ev.exit409, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319
  %.4 = phi i32 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371 ], [ %.3, %_ZNSt14_Optional_baseIN12_GLOBAL__N_112cmSourceInfoELb0ELb0EED2Ev.exit409 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312 ]
  %i.tk = load ptr, ptr %9, align 8, !tbaa !47    ; 2 uses
  %i.tl = icmp eq ptr %i.tk, %i.ac
  br i1 %i.tl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit413, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i411

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i411: ; preds = %bb.eu
  %i.tm = load i64, ptr %i.ac, align 8, !tbaa !48
  %i.tn = add i64 %i.tm, 1
  call void @_ZdlPvm(ptr noundef %i.tk, i64 noundef %i.tn) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit413

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit413: ; preds = %bb.eu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i411
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %i.to = load ptr, ptr %8, align 8, !tbaa !47    ; 2 uses
  %i.tp = icmp eq ptr %i.to, %i.aa
  br i1 %i.tp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit416, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i414

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i414: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit413
  %i.tq = load i64, ptr %i.aa, align 8, !tbaa !48
  %i.tr = add i64 %i.tq, 1
  call void @_ZdlPvm(ptr noundef %i.to, i64 noundef %i.tr) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit416

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit416: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit413, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i414
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %i.ts = load ptr, ptr %7, align 8, !tbaa !47    ; 2 uses
  %i.tt = icmp eq ptr %i.ts, %i.y
  br i1 %i.tt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit419, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i417

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i417: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit416
  %i.tu = load i64, ptr %i.y, align 8, !tbaa !48
  %i.tv = add i64 %i.tu, 1
  call void @_ZdlPvm(ptr noundef %i.ts, i64 noundef %i.tv) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit419

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit419: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit416, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i417
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %i.tw = load ptr, ptr %6, align 8, !tbaa !47    ; 2 uses
  %i.tx = icmp eq ptr %i.tw, %i.w
  br i1 %i.tx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i420

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i420: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit419
  %i.ty = load i64, ptr %i.w, align 8, !tbaa !48
  %i.tz = add i64 %i.ty, 1
  call void @_ZdlPvm(ptr noundef %i.tw, i64 noundef %i.tz) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit419, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i420
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %i.ua = load ptr, ptr %5, align 8, !tbaa !47    ; 2 uses
  %i.ub = icmp eq ptr %i.ua, %i.u
  br i1 %i.ub, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit425, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i423

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i423: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422
  %i.uc = load i64, ptr %i.u, align 8, !tbaa !48
  %i.ud = add i64 %i.uc, 1
  call void @_ZdlPvm(ptr noundef %i.ua, i64 noundef %i.ud) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit425

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit425: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i423
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.ue = load ptr, ptr %4, align 8, !tbaa !47    ; 2 uses
  %i.uf = icmp eq ptr %i.ue, %i.s
  br i1 %i.uf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i426

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i426: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit425
  %i.ug = load i64, ptr %i.s, align 8, !tbaa !48
  %i.uh = add i64 %i.ug, 1
  call void @_ZdlPvm(ptr noundef %i.ue, i64 noundef %i.uh) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit425, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i426
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.ui = load ptr, ptr %3, align 8, !tbaa !47    ; 2 uses
  %i.uj = icmp eq ptr %i.ui, %i.q
  br i1 %i.uj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i429

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i429: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428
  %i.uk = load i64, ptr %i.q, align 8, !tbaa !48
  %i.ul = add i64 %i.uk, 1
  call void @_ZdlPvm(ptr noundef %i.ui, i64 noundef %i.ul) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i429
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.um = load ptr, ptr %2, align 8, !tbaa !47    ; 2 uses
  %i.un = icmp eq ptr %i.um, %i.o
  br i1 %i.un, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i432

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i432: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431
  %i.uo = load i64, ptr %i.o, align 8, !tbaa !48
  %i.up = add i64 %i.uo, 1
  call void @_ZdlPvm(ptr noundef %i.um, i64 noundef %i.up) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i432
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret i32 %.4

bb.ev:                                            ; preds = %bb.k, %bb.l, %bb.u, %bb.ad, %bb.am, %bb.av, %bb.be, %bb.bn, %bb.bw, %bb.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315, %_ZNSt14_Optional_baseIN12_GLOBAL__N_112cmSourceInfoELb0ELb0EED2Ev.exit410, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322
  %.pn103.pn = phi { ptr, i32 } [ %.pn103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322 ], [ %.pn101, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332 ], [ %.pn99, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342 ], [ %.pn97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352 ], [ %.pn95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362 ], [ %.pn93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368 ], [ %.pn91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374 ], [ %.pn85.pn.pn.pn.pn, %_ZNSt14_Optional_baseIN12_GLOBAL__N_112cmSourceInfoELb0ELb0EED2Ev.exit410 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315 ], [ %i.cf, %bb.l ], [ %i.dj, %bb.u ], [ %i.eo, %bb.ad ], [ %i.fs, %bb.am ], [ %i.gw, %bb.av ], [ %i.ia, %bb.be ], [ %i.je, %bb.bn ], [ %i.kj, %bb.bw ], [ %i.ce, %bb.k ], [ %i.lo, %bb.cf ]
  %i.uq = load ptr, ptr %9, align 8, !tbaa !47    ; 2 uses
  %i.ur = icmp eq ptr %i.uq, %i.ac
  br i1 %i.ur, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i435

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i435: ; preds = %bb.ev
  %i.us = load i64, ptr %i.ac, align 8, !tbaa !48
  %i.ut = add i64 %i.us, 1
  call void @_ZdlPvm(ptr noundef %i.uq, i64 noundef %i.ut) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437: ; preds = %bb.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i435
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %i.uu = load ptr, ptr %8, align 8, !tbaa !47    ; 2 uses
  %i.uv = icmp eq ptr %i.uu, %i.aa
  br i1 %i.uv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i438

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i438: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437
  %i.uw = load i64, ptr %i.aa, align 8, !tbaa !48
  %i.ux = add i64 %i.uw, 1
  call void @_ZdlPvm(ptr noundef %i.uu, i64 noundef %i.ux) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i438
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %i.uy = load ptr, ptr %7, align 8, !tbaa !47    ; 2 uses
  %i.uz = icmp eq ptr %i.uy, %i.y
  br i1 %i.uz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i441

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i441: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440
  %i.va = load i64, ptr %i.y, align 8, !tbaa !48
  %i.vb = add i64 %i.va, 1
  call void @_ZdlPvm(ptr noundef %i.uy, i64 noundef %i.vb) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i441
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %i.vc = load ptr, ptr %6, align 8, !tbaa !47    ; 2 uses
  %i.vd = icmp eq ptr %i.vc, %i.w
  br i1 %i.vd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i444

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i444: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443
  %i.ve = load i64, ptr %i.w, align 8, !tbaa !48
  %i.vf = add i64 %i.ve, 1
  call void @_ZdlPvm(ptr noundef %i.vc, i64 noundef %i.vf) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i444
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %i.vg = load ptr, ptr %5, align 8, !tbaa !47    ; 2 uses
  %i.vh = icmp eq ptr %i.vg, %i.u
  br i1 %i.vh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i447

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i447: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446
  %i.vi = load i64, ptr %i.u, align 8, !tbaa !48
  %i.vj = add i64 %i.vi, 1
  call void @_ZdlPvm(ptr noundef %i.vg, i64 noundef %i.vj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i447
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.vk = load ptr, ptr %4, align 8, !tbaa !47    ; 2 uses
  %i.vl = icmp eq ptr %i.vk, %i.s
  br i1 %i.vl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i450

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i450: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449
  %i.vm = load i64, ptr %i.s, align 8, !tbaa !48
  %i.vn = add i64 %i.vm, 1
  call void @_ZdlPvm(ptr noundef %i.vk, i64 noundef %i.vn) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i450
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.vo = load ptr, ptr %3, align 8, !tbaa !47    ; 2 uses
  %i.vp = icmp eq ptr %i.vo, %i.q
  br i1 %i.vp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452
  %i.vq = load i64, ptr %i.q, align 8, !tbaa !48
  %i.vr = add i64 %i.vq, 1
  call void @_ZdlPvm(ptr noundef %i.vo, i64 noundef %i.vr) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.vs = load ptr, ptr %2, align 8, !tbaa !47    ; 2 uses
  %i.vt = icmp eq ptr %i.vs, %i.o
  br i1 %i.vt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455
  %i.vu = load i64, ptr %i.o, align 8, !tbaa !48
  %i.vv = add i64 %i.vu, 1
  call void @_ZdlPvm(ptr noundef %i.vs, i64 noundef %i.vv) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn103.pn
}

; Function Attrs: inlinehint mustprogress uwtable
end_hunk_1
