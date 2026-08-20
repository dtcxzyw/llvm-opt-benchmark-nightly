inline.NumInlined: 17858
inline.NumDeleted: 5985
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZNK5Catch5clara6detail6Parser5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS1_11TokenStreamE:.preheader262
  %i.if = load ptr, ptr %i.cg, align 8, !tbaa !36 ; 2 uses
  %i.ig = icmp eq ptr %i.if, %i.ch
  br i1 %i.ig, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i82: ; preds = %bb.aw
  %i.ih = load i64, ptr %i.ch, align 8, !tbaa !41
  %i.ii = add i64 %i.ih, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ii) #57, !inline_history !1347
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i82
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch5clara6detail15ResultValueBaseINS1_10ParseStateEEE, i64 16), ptr %8, align 8, !tbaa !15
  %i.ij = load i32, ptr %i.cb, align 8, !tbaa !1338
  %i.ik = icmp eq i32 %i.ij, 0
  br i1 %i.ik, label %bb.ax, label %_ZN5Catch5clara6detail11BasicResultINS1_10ParseStateEED2Ev.exit

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.il = load ptr, ptr %i.ce, align 8, !tbaa !1348 ; 3 uses
  %i.im = load ptr, ptr %i.cf, align 8, !tbaa !1351 ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.il, %i.im
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5Catch5clara6detail5TokenES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.ax, %_ZSt8_DestroyIN5Catch5clara6detail5TokenEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.it, %_ZSt8_DestroyIN5Catch5clara6detail5TokenEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.il, %bb.ax ] ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 8
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !36 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.iq = icmp eq ptr %i.io, %i.ip
  br i1 %i.iq, label %_ZSt8_DestroyIN5Catch5clara6detail5TokenEEvPT_.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ir = load i64, ptr %i.ip, align 8, !tbaa !41
  %i.is = add i64 %i.ir, 1
  call void @_ZdlPvm(ptr noundef %i.io, i64 noundef %i.is) #57, !inline_history !1352
  br label %_ZSt8_DestroyIN5Catch5clara6detail5TokenEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIN5Catch5clara6detail5TokenEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.it = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.it, %i.im
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5Catch5clara6detail5TokenES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1353

_ZSt8_DestroyIPN5Catch5clara6detail5TokenES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN5Catch5clara6detail5TokenEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %i.ce, align 8, !tbaa !1348
  br label %_ZSt8_DestroyIPN5Catch5clara6detail5TokenES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPN5Catch5clara6detail5TokenES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN5Catch5clara6detail5TokenES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %bb.ax
  %i.iu = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPN5Catch5clara6detail5TokenES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.il, %bb.ax ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.iu, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZN5Catch5clara6detail11BasicResultINS1_10ParseStateEED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZSt8_DestroyIPN5Catch5clara6detail5TokenES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i
  %i.iv = load ptr, ptr %i.cj, align 8, !tbaa !1354
  %i.iw = ptrtoint ptr %i.iv to i64
  %i.ix = ptrtoint ptr %i.iu to i64
  %i.iy = sub i64 %i.iw, %i.ix
  call void @_ZdlPvm(ptr noundef nonnull %i.iu, i64 noundef %i.iy) #57, !inline_history !1352
  br label %_ZN5Catch5clara6detail11BasicResultINS1_10ParseStateEED2Ev.exit

_ZN5Catch5clara6detail11BasicResultINS1_10ParseStateEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZSt8_DestroyIPN5Catch5clara6detail5TokenES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i, %bb.ay
  %i.iz = load ptr, ptr %i.by, align 8, !tbaa !1348 ; 3 uses
  %i.ja = load ptr, ptr %i.bz, align 8, !tbaa !1351 ; 2 uses
  %.not4.i.i.i.i84 = icmp eq ptr %i.iz, %i.ja
  br i1 %.not4.i.i.i.i84, label %_ZSt8_DestroyIPN5Catch5clara6detail5TokenES3_EvT_S5_RSaIT0_E.exit.i.i92, label %.lr.ph.i.i.i.i85

.lr.ph.i.i.i.i85:                                 ; preds = %_ZN5Catch5clara6detail11BasicResultINS1_10ParseStateEED2Ev.exit, %_ZSt8_DestroyIN5Catch5clara6detail5TokenEEvPT_.exit.i.i.i.i88
  %.05.i.i.i.i86 = phi ptr [ %i.jh, %_ZSt8_DestroyIN5Catch5clara6detail5TokenEEvPT_.exit.i.i.i.i88 ], [ %i.iz, %_ZN5Catch5clara6detail11BasicResultINS1_10ParseStateEED2Ev.exit ] ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i86, i64 8
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !36 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i86, i64 24 ; 2 uses
  %i.je = icmp eq ptr %i.jc, %i.jd
  br i1 %i.je, label %_ZSt8_DestroyIN5Catch5clara6detail5TokenEEvPT_.exit.i.i.i.i88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i87: ; preds = %.lr.ph.i.i.i.i85
  %i.jf = load i64, ptr %i.jd, align 8, !tbaa !41
  %i.jg = add i64 %i.jf, 1
  call void @_ZdlPvm(ptr noundef %i.jc, i64 noundef %i.jg) #57
  br label %_ZSt8_DestroyIN5Catch5clara6detail5TokenEEvPT_.exit.i.i.i.i88

_ZSt8_DestroyIN5Catch5clara6detail5TokenEEvPT_.exit.i.i.i.i88: ; preds = %.lr.ph.i.i.i.i85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i87
  %i.jh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i86, i64 40 ; 2 uses
  %.not.i.i.i.i89 = icmp eq ptr %i.jh, %i.ja
  br i1 %.not.i.i.i.i89, label %_ZSt8_DestroyIPN5Catch5clara6detail5TokenES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i90, label %.lr.ph.i.i.i.i85, !llvm.loop !1353

_ZSt8_DestroyIPN5Catch5clara6detail5TokenES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i90: ; preds = %_ZSt8_DestroyIN5Catch5clara6detail5TokenEEvPT_.exit.i.i.i.i88
  %.pr.i.i91 = load ptr, ptr %i.by, align 8, !tbaa !1348
  br label %_ZSt8_DestroyIPN5Catch5clara6detail5TokenES3_EvT_S5_RSaIT0_E.exit.i.i92

_ZSt8_DestroyIPN5Catch5clara6detail5TokenES3_EvT_S5_RSaIT0_E.exit.i.i92: ; preds = %_ZSt8_DestroyIPN5Catch5clara6detail5TokenES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i90, %_ZN5Catch5clara6detail11BasicResultINS1_10ParseStateEED2Ev.exit
  %i.ji = phi ptr [ %.pr.i.i91, %_ZSt8_DestroyIPN5Catch5clara6detail5TokenES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i90 ], [ %i.iz, %_ZN5Catch5clara6detail11BasicResultINS1_10ParseStateEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i93 = icmp eq ptr %i.ji, null
  br i1 %.not.i.i1.i.i93, label %_ZN5Catch5clara6detail11TokenStreamD2Ev.exit95, label %bb.az

bb.az:                                            ; preds = %_ZSt8_DestroyIPN5Catch5clara6detail5TokenES3_EvT_S5_RSaIT0_E.exit.i.i92
  %i.jj = load ptr, ptr %i.ca, align 8, !tbaa !1354
  %i.jk = ptrtoint ptr %i.jj to i64
  %i.jl = ptrtoint ptr %i.ji to i64
  %i.jm = sub i64 %i.jk, %i.jl
  call void @_ZdlPvm(ptr noundef nonnull %i.ji, i64 noundef %i.jm) #57
  br label %_ZN5Catch5clara6detail11TokenStreamD2Ev.exit95

_ZN5Catch5clara6detail11TokenStreamD2Ev.exit95:   ; preds = %_ZSt8_DestroyIPN5Catch5clara6detail5TokenES3_EvT_S5_RSaIT0_E.exit.i.i92, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #56
  %i.jn = load i32, ptr %i.av, align 8, !tbaa !1338 ; 2 uses
  %i.jo = icmp eq i32 %i.jn, 0
  br i1 %i.jo, label %bb.bd, label %.noexc97

.noexc97:                                         ; preds = %_ZN5Catch5clara6detail11TokenStreamD2Ev.exit95
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.jn, ptr %i.jp, align 8, !tbaa !1338
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch5clara6detail11BasicResultINS1_10ParseStateEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store ptr %i.jr, ptr %i.jq, align 8, !tbaa !48
  %i.js = load ptr, ptr %i.bo, align 8, !tbaa !36 ; 2 uses
  %i.jt = icmp eq ptr %i.js, %i.bp
  br i1 %i.jt, label %bb.ba, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

bb.ba:                                            ; preds = %.noexc97
  %i.ju = load i64, ptr %i.bq, align 8, !tbaa !40 ; 3 uses
  %i.jv = icmp ult i64 %i.ju, 16
  call void @llvm.assume(i1 %i.jv)
  %i.jw = add nuw nsw i64 %i.ju, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jr, ptr noundef nonnull align 8 dereferenceable(1) %i.bp, i64 %i.jw, i1 false)
  br label %.thread239.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %.noexc97
  store ptr %i.js, ptr %i.jq, align 8, !tbaa !36
  %i.jx = load i64, ptr %i.bp, align 8, !tbaa !41
  store i64 %i.jx, ptr %i.jr, align 8, !tbaa !41
  %.pre444 = load i64, ptr %i.bq, align 8, !tbaa !40
  br label %.thread239.thread

.body173:                                         ; preds = %.lr.ph383, %bb.q, %bb.bd
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %.body67

.loopexit245:                                     ; preds = %bb.s, %_ZNSt15__new_allocatorIN5Catch5clara6detail5TokenEE8allocateEmPKv.exit.i.i.i.i.i.i72
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body78

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i.i75
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body78

bb.bb:                                            ; preds = %.loopexit
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.loopexit246:                                     ; preds = %_ZNSt15__new_allocatorIN5Catch5clara6detail5TokenEE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %lpad.loopexit248 = landingpad { ptr, i32 }
          cleanup
  br label %.body163

.loopexit.split-lp247:                            ; preds = %.noexc.i.i.i.i.i
  %lpad.loopexit.split-lp249 = landingpad { ptr, i32 }
          cleanup
  br label %.body163

.body163:                                         ; preds = %.loopexit246, %.loopexit.split-lp247, %.body208, %bb.aq
  %eh.lpad-body164 = phi { ptr, i32 } [ %i.hj, %.body208 ], [ %i.hj, %bb.aq ], [ %lpad.loopexit248, %.loopexit246 ], [ %lpad.loopexit.split-lp249, %.loopexit.split-lp247 ]
  call void @_ZN5Catch5clara6detail11BasicResultINS1_10ParseStateEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %8) #56
  br label %bb.bc

bb.bc:                                            ; preds = %.body163, %bb.bb
  %.pn = phi { ptr, i32 } [ %eh.lpad-body164, %.body163 ], [ %i.jz, %bb.bb ]
  call void @_ZN5Catch5clara6detail11TokenStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #56
  br label %.body78

.body78:                                          ; preds = %.loopexit245, %.loopexit.split-lp, %bb.ac, %bb.bc
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bc ], [ %i.ff, %bb.ac ], [ %lpad.loopexit, %.loopexit245 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #56
  br label %.body67

bb.bd:                                            ; preds = %_ZN5Catch5clara6detail11TokenStreamD2Ev.exit95
  %i.ka = load ptr, ptr %6, align 8, !tbaa !15
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  %i.kc = load ptr, ptr %i.kb, align 8
  invoke void %i.kc(ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %_ZNK5Catch5clara6detail15ResultValueBaseINS1_10ParseStateEE5valueEv.exit99 unwind label %.body173, !inline_history !2464

_ZNK5Catch5clara6detail15ResultValueBaseINS1_10ParseStateEE5valueEv.exit99: ; preds = %bb.bd
  %i.kd = load i32, ptr %i.aw, align 8, !tbaa !2320
  %.not = icmp eq i32 %i.kd, 1
  br i1 %.not, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %_ZNK5Catch5clara6detail15ResultValueBaseINS1_10ParseStateEE5valueEv.exit99
  %i.ke = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 2 uses
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !2468
  %i.kg = add i64 %i.kf, 1
  store i64 %i.kg, ptr %i.ke, align 8, !tbaa !2468
  br label %.loopexit244

bb.bf:                                            ; preds = %_ZNK5Catch5clara6detail15ResultValueBaseINS1_10ParseStateEE5valueEv.exit99, %bb.r
  %i.kh = add nuw i64 %.028382, 1                 ; 2 uses
  %12 = icmp ult i64 %i.kh, %i.t
  br i1 %12, label %.lr.ph383, label %.loopexit244, !llvm.loop !2472

.loopexit244:                                     ; preds = %bb.bf, %.preheader, %bb.be
  %i.ki = phi i1 [ true, %bb.be ], [ false, %.preheader ], [ false, %bb.bf ]
  %i.kj = load ptr, ptr %6, align 8, !tbaa !15
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  %i.kl = load ptr, ptr %i.kk, align 8
  invoke void %i.kl(ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %_ZNK5Catch5clara6detail15ResultValueBaseINS1_10ParseStateEE5valueEv.exit101 unwind label %.loopexit256, !inline_history !2464

_ZNK5Catch5clara6detail15ResultValueBaseINS1_10ParseStateEE5valueEv.exit101: ; preds = %.loopexit244
  %i.km = load i32, ptr %i.aw, align 8, !tbaa !2320
  %i.kn = icmp eq i32 %i.km, 2
  br i1 %i.kn, label %bb.bg, label %bb.bm

bb.bg:                                            ; preds = %_ZNK5Catch5clara6detail15ResultValueBaseINS1_10ParseStateEE5valueEv.exit101
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kp = load i32, ptr %i.av, align 8, !tbaa !1338 ; 2 uses
  store i32 %i.kp, ptr %i.ko, align 8, !tbaa !1338
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch5clara6detail15ResultValueBaseINS1_10ParseStateEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.kq = icmp eq i32 %i.kp, 0
  br i1 %i.kq, label %bb.bh, label %.noexc103

bb.bh:                                            ; preds = %bb.bg
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 2, ptr %i.kr, align 8, !tbaa !2320
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ks, ptr noundef nonnull align 8 dereferenceable(40) %i.ax, i64 16, i1 false)
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ku = load ptr, ptr %i.bg, align 8, !tbaa !1351 ; 3 uses
  %i.kv = load ptr, ptr %i.ay, align 8, !tbaa !1348 ; 3 uses
  %i.kw = ptrtoint ptr %i.ku to i64
  %i.kx = ptrtoint ptr %i.kv to i64
  %i.ky = sub i64 %i.kw, %i.kx                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kt, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i175 = icmp eq ptr %i.ku, %i.kv
  br i1 %.not.i.i.i.i.i.i.i175, label %.noexc4.i177, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.kz = sdiv exact i64 %i.ky, 40
  %i.la = icmp ugt i64 %i.kz, 230584300921369395
  br i1 %i.la, label %.noexc.i.i.i.i.i181, label %_ZNSt15__new_allocatorIN5Catch5clara6detail5TokenEE8allocateEmPKv.exit.i.i.i.i.i.i.i176, !prof !156

.noexc.i.i.i.i.i181:                              ; preds = %bb.bi
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #58
          to label %.noexc182 unwind label %.loopexit.split-lp257

.noexc182:                                        ; preds = %.noexc.i.i.i.i.i181
  unreachable

_ZNSt15__new_allocatorIN5Catch5clara6detail5TokenEE8allocateEmPKv.exit.i.i.i.i.i.i.i176: ; preds = %bb.bi
  %i.lb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ky) #59
          to label %.noexc4.i177 unwind label %.loopexit.split-lp257

.noexc4.i177:                                     ; preds = %_ZNSt15__new_allocatorIN5Catch5clara6detail5TokenEE8allocateEmPKv.exit.i.i.i.i.i.i.i176, %bb.bh
  %i.lc = phi ptr [ null, %bb.bh ], [ %i.lb, %_ZNSt15__new_allocatorIN5Catch5clara6detail5TokenEE8allocateEmPKv.exit.i.i.i.i.i.i.i176 ] ; 4 uses
  store ptr %i.lc, ptr %i.kt, align 8, !tbaa !1348
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.lc, ptr %i.ld, align 8, !tbaa !1351
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.ky
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.le, ptr %i.lf, align 8, !tbaa !1354
  %i.lg = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN5Catch5clara6detail5TokenESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_(ptr %i.kv, ptr %i.ku, ptr noundef %i.lc)
          to label %_ZN5Catch5clara6detail10ParseStateC2ERKS2_.exit.i180 unwind label %bb.bj

bb.bj:                                            ; preds = %.noexc4.i177
  %i.lh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.li = load ptr, ptr %i.kt, align 8, !tbaa !1348 ; 3 uses
  %.not.i.i.i.i.i.i178 = icmp eq ptr %i.li, null
  br i1 %.not.i.i.i.i.i.i178, label %.body67, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.lj = load ptr, ptr %i.lf, align 8, !tbaa !1354
  %i.lk = ptrtoint ptr %i.lj to i64
  %i.ll = ptrtoint ptr %i.li to i64
  %i.lm = sub i64 %i.lk, %i.ll
  call void @_ZdlPvm(ptr noundef nonnull %i.li, i64 noundef %i.lm) #57
  br label %.body67

_ZN5Catch5clara6detail10ParseStateC2ERKS2_.exit.i180: ; preds = %.noexc4.i177
  store ptr %i.lg, ptr %i.ld, align 8, !tbaa !1351
  br label %.noexc103

.noexc103:                                        ; preds = %_ZN5Catch5clara6detail10ParseStateC2ERKS2_.exit.i180, %bb.bg
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch5clara6detail11BasicResultINS1_10ParseStateEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store ptr %i.lo, ptr %i.ln, align 8, !tbaa !48
  %i.lp = load ptr, ptr %i.bo, align 8, !tbaa !36 ; 2 uses
  %i.lq = icmp eq ptr %i.lp, %i.bp
  br i1 %i.lq, label %bb.bl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

bb.bl:                                            ; preds = %.noexc103
  %i.lr = load i64, ptr %i.bq, align 8, !tbaa !40 ; 3 uses
  %i.ls = icmp ult i64 %i.lr, 16
  call void @llvm.assume(i1 %i.ls)
  %i.lt = add nuw nsw i64 %i.lr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.lo, ptr noundef nonnull align 8 dereferenceable(1) %i.bp, i64 %i.lt, i1 false)
  br label %.thread239.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %.noexc103
  store ptr %i.lp, ptr %i.ln, align 8, !tbaa !36
  %i.lu = load i64, ptr %i.bp, align 8, !tbaa !41
  store i64 %i.lu, ptr %i.lo, align 8, !tbaa !41
  %.pre445 = load i64, ptr %i.bq, align 8, !tbaa !40
  br label %.thread239.thread

.loopexit256:                                     ; preds = %.loopexit244
  %lpad.loopexit258 = landingpad { ptr, i32 }
          cleanup
  br label %.body67

.loopexit.split-lp257:                            ; preds = %.noexc.i.i.i.i.i181, %_ZNSt15__new_allocatorIN5Catch5clara6detail5TokenEE8allocateEmPKv.exit.i.i.i.i.i.i.i176
  %lpad.loopexit.split-lp259 = landingpad { ptr, i32 }
          cleanup
  br label %.body67

bb.bm:                                            ; preds = %_ZNK5Catch5clara6detail15ResultValueBaseINS1_10ParseStateEE5valueEv.exit101
  br i1 %i.ki, label %bb.j, label %bb.bn, !llvm.loop !2473

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #56
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #56
  %i.lv = load ptr, ptr %6, align 8, !tbaa !15
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  %i.lx = load ptr, ptr %i.lw, align 8
  invoke void %i.lx(ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %_ZNK5Catch5clara6detail15ResultValueBaseINS1_10ParseStateEE5valueEv.exit106 unwind label %bb.bx, !inline_history !2464

_ZNK5Catch5clara6detail15ResultValueBaseINS1_10ParseStateEE5valueEv.exit106: ; preds = %bb.bn
  call void @llvm.experimental.noalias.scope.decl(metadata !2474)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 8 dereferenceable(40) %i.ax, i64 16, i1 false)
  %i.ly = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.lz = load ptr, ptr %i.bg, align 8, !tbaa !1351, !noalias !2474 ; 3 uses
  %i.ma = load ptr, ptr %i.ay, align 8, !tbaa !1348, !noalias !2474 ; 3 uses
  %i.mb = ptrtoint ptr %i.lz to i64
  %i.mc = ptrtoint ptr %i.ma to i64
  %i.md = sub i64 %i.mb, %i.mc                    ; 5 uses
  %.not.i.i.i.i.i.i107 = icmp eq ptr %i.lz, %i.ma
  br i1 %.not.i.i.i.i.i.i107, label %.noexc113, label %bb.bo

bb.bo:                                            ; preds = %_ZNK5Catch5clara6detail15ResultValueBaseINS1_10ParseStateEE5valueEv.exit106
  %i.me = sdiv exact i64 %i.md, 40
  %i.mf = icmp ugt i64 %i.me, 230584300921369395
  br i1 %i.mf, label %.noexc.i.i.i.i111, label %_ZNSt15__new_allocatorIN5Catch5clara6detail5TokenEE8allocateEmPKv.exit.i.i.i.i.i.i108, !prof !156

.noexc.i.i.i.i111:                                ; preds = %bb.bo
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #58
          to label %.noexc112 unwind label %bb.bx

.noexc112:                                        ; preds = %.noexc.i.i.i.i111
  unreachable

_ZNSt15__new_allocatorIN5Catch5clara6detail5TokenEE8allocateEmPKv.exit.i.i.i.i.i.i108: ; preds = %bb.bo
  %i.mg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.md) #59
          to label %.noexc113 unwind label %bb.bx

.noexc113:                                        ; preds = %_ZNSt15__new_allocatorIN5Catch5clara6detail5TokenEE8allocateEmPKv.exit.i.i.i.i.i.i108, %_ZNK5Catch5clara6detail15ResultValueBaseINS1_10ParseStateEE5valueEv.exit106
  %.pr.i.i130 = phi ptr [ null, %_ZNK5Catch5clara6detail15ResultValueBaseINS1_10ParseStateEE5valueEv.exit106 ], [ %i.mg, %_ZNSt15__new_allocatorIN5Catch5clara6detail5TokenEE8allocateEmPKv.exit.i.i.i.i.i.i108 ] ; 11 uses
  store ptr %.pr.i.i130, ptr %i.ly, align 8, !tbaa !1348, !alias.scope !2474
  %i.mh = getelementptr inbounds nuw i8, ptr %.pr.i.i130, i64 %i.md
  %i.mi = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %i.mh, ptr %i.mi, align 8, !tbaa !1354, !alias.scope !2474
  %i.mj = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN5Catch5clara6detail5TokenESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_(ptr %i.ma, ptr %i.lz, ptr noundef %.pr.i.i130)
          to label %bb.br unwind label %bb.bp, !noalias !2474 ; 3 uses

bb.bp:                                            ; preds = %.noexc113
  %i.mk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i.i.i109 = icmp eq ptr %.pr.i.i130, null
  br i1 %.not.i.i.i.i.i109, label %.body114, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i.i130, i64 noundef %i.md) #57, !noalias !2474
  br label %.body114

bb.br:                                            ; preds = %.noexc113
  %i.ml = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %i.mj, ptr %i.ml, align 8, !tbaa !1351, !alias.scope !2474
  %i.mm = getelementptr inbounds nuw i8, ptr %.pr.i.i130, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2477)
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !36, !noalias !2477
  %i.mo = getelementptr inbounds nuw i8, ptr %.pr.i.i130, i64 16
  %i.mp = load i64, ptr %i.mo, align 8, !tbaa !40, !noalias !2477 ; 3 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.mq, ptr %10, align 8, !tbaa !48, !alias.scope !2480
  %i.mr = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store i64 0, ptr %i.mr, align 8, !tbaa !40, !alias.scope !2480
  store i8 0, ptr %i.mq, align 8, !tbaa !41, !alias.scope !2480
  %i.ms = add i64 %i.mp, 20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.ms)
          to label %bb.bs unwind label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.mt = load i64, ptr %i.mr, align 8, !tbaa !40, !alias.scope !2480
  %i.mu = add i64 %i.mt, -4611686018427387884
  %i.mv = icmp ult i64 %i.mu, 20
  br i1 %i.mv, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.bs
end_hunk_0
begin_hunk_1_@_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_word_boundaryEv:bb.a
bb.i:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i
  %i.al = and i32 %i.y, 65536
  %.not.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.an = load i8, ptr %i.am, align 8, !tbaa !530
  %.not.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 152
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !41
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i

bb.l:                                             ; preds = %bb.j
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ae)
  %i.aq = load ptr, ptr %i.ae, align 8, !tbaa !15
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef signext i8 %i.as(ptr noundef nonnull align 8 dereferenceable(570) %i.ae, i8 noundef signext 95), !inline_history !3792
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i

_ZNKSt5ctypeIcE5widenEc.exit.i.i:                 ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi i8 [ %i.ap, %bb.k ], [ %i.at, %bb.l ]
  %i.au = icmp eq i8 %i.s, %.0.i.i.i
  %i.av = zext i1 %i.au to i32
  br label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i, %bb.i, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i, %bb.f
  %.1 = phi i32 [ 0, %bb.f ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i ], [ 0, %bb.i ], [ %i.av, %_ZNKSt5ctypeIcE5widenEc.exit.i.i ]
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !85  ; 2 uses
  %i.ax = load ptr, ptr %i.i, align 8, !tbaa !85
  %.not18 = icmp eq ptr %i.aw, %i.ax
  br i1 %.not18, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15, label %bb.m

bb.m:                                             ; preds = %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !41  ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !3773, !nonnull !80, !align !104
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !3700
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 80 ; 2 uses
  %i.be = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @_ZZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEcE3__s, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEcE3__s, i64 1), i1 noundef zeroext false) ; 2 uses
  %i.bf = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #56
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !3204
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !3205
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bf
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !3208 ; 7 uses
  %.not.not.i.i.i7 = icmp eq ptr %i.bk, null
  br i1 %.not.not.i.i.i7, label %bb.n, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt16__throw_bad_castv() #58
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8: ; preds = %bb.m
  %.sroa.0.0.extract.trunc.i.i9 = trunc i32 %i.be to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !3296
  %i.bn = zext i8 %i.ay to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !3297
  %i.bq = and i16 %i.bp, %.sroa.0.0.extract.trunc.i.i9
  %.not4.i.i10 = icmp eq i16 %i.bq, 0
  br i1 %.not4.i.i10, label %bb.o, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15

bb.o:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8
  %i.br = and i32 %i.be, 65536
  %.not.i.i11 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i11, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !530
  %.not.i.i.i12 = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i12, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 152
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !41
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i13

bb.r:                                             ; preds = %bb.p
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bk)
  %i.bw = load ptr, ptr %i.bk, align 8, !tbaa !15
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = tail call noundef signext i8 %i.by(ptr noundef nonnull align 8 dereferenceable(570) %i.bk, i8 noundef signext 95), !inline_history !3792
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i13

_ZNKSt5ctypeIcE5widenEc.exit.i.i13:               ; preds = %bb.r, %bb.q
  %.0.i.i.i14 = phi i8 [ %i.bv, %bb.q ], [ %i.bz, %bb.r ]
  %i.ca = icmp eq i8 %i.ay, %.0.i.i.i14
  %i.cb = zext i1 %i.ca to i32
  br label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i13, %bb.o, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit
  %i.cc = phi i32 [ 0, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8 ], [ 0, %bb.o ], [ %i.cb, %_ZNKSt5ctypeIcE5widenEc.exit.i.i13 ]
  %i.cd = icmp ne i32 %.1, %i.cc
  br label %bb.s

bb.s:                                             ; preds = %bb.d, %bb.b, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15
  %.0 = phi i1 [ %i.cd, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15 ], [ false, %bb.b ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE12_M_lookaheadEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.881", align 8   ; 14 uses
  %3 = alloca %"class.std::__detail::_Executor", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #56
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3753 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !933    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store ptr %i.h, ptr %i.i, align 8, !tbaa !936
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = sdiv exact i64 %i.f, 24
  %i.k = icmp ugt i64 %i.j, 384307168202282325
  br i1 %i.k, label %.noexc.i.i, label %bb.c, !prof !156

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #58
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #59 ; 4 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !933
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !3753
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !936
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.c, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3764

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.thread
  %i.r = phi ptr [ %i.i, %.thread ], [ %i.o, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.s = phi ptr [ %i.g, %.thread ], [ %i.m, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %.thread ], [ %i.q, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.s, align 8, !tbaa !3753
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #56
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.06.0.copyload = load ptr, ptr %i.t, align 8, !tbaa !85
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload = load ptr, ptr %i.u, align 8, !tbaa !85
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !3773, !nonnull !80, !align !104
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = load i32, ptr %i.x, align 8, !tbaa !3701
  invoke void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EEC2ESB_SB_RSt6vectorISD_SE_ERKNS5_11basic_regexIcSG_EENSt15regex_constants15match_flag_typeE(ptr noundef nonnull align 8 dereferenceable(141) %3, ptr %.sroa.06.0.copyload, ptr %.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i32 noundef %i.y)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 128
  store i64 %1, ptr %i.z, align 8, !tbaa !3760
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !85
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !85
  %i.ad = invoke noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_main_dispatchENSH_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %3, i8 noundef zeroext 1)
          to label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit unwind label %bb.f, !inline_history !3793 ; 2 uses

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit: ; preds = %bb.d
  br i1 %i.ad, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit
  %i.ae = load ptr, ptr %i.s, align 8, !tbaa !3753 ; 2 uses
  %i.af = load ptr, ptr %2, align 8, !tbaa !933   ; 5 uses
  %.not = icmp eq ptr %i.ae, %i.af
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = sdiv i64 %i.ai, 24                      ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.aj, i64 1) ; 3 uses
  %xtraiter = and i64 %umax, 1
  %4 = icmp ult i64 %i.aj, 2
  br i1 %4, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %umax, -2
  br label %.lr.ph

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(141) dereferenceable(141) %3) #56
  br label %bb.r

.lr.ph:                                           ; preds = %bb.i, %.lr.ph.preheader.new
  %.021 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bj, %bb.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.i ]
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %.021 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !3744, !range !79, !noundef !80
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.g, label %.lr.ph.1

bb.g:                                             ; preds = %.lr.ph
  %i.aq = load ptr, ptr %0, align 8, !tbaa !933
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %.021 ; 3 uses
  %i.as = load i64, ptr %i.am, align 8, !tbaa !85
  store i64 %i.as, ptr %i.ar, align 8, !tbaa !85
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.av = load i64, ptr %i.at, align 8, !tbaa !85
  store i64 %i.av, ptr %i.au, align 8, !tbaa !85
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i8 1, ptr %i.aw, align 8, !tbaa !3744
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.g, %.lr.ph
  %i.ax = or disjoint i64 %.021, 1                ; 2 uses
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.ax ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !3744, !range !79, !noundef !80
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.1
  %i.bc = load ptr, ptr %0, align 8, !tbaa !933
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %i.ax ; 3 uses
  %i.be = load i64, ptr %i.ay, align 8, !tbaa !85
  store i64 %i.be, ptr %i.bd, align 8, !tbaa !85
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !85
  store i64 %i.bh, ptr %i.bg, align 8, !tbaa !85
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i8 1, ptr %i.bi, align 8, !tbaa !3744
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.1
  %i.bj = add nuw i64 %.021, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !3794

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.021.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bj, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod35 = trunc i64 %umax to i1
  call void @llvm.assume(i1 %lcmp.mod35)
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %.021.epil.init ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !3744, !range !79, !noundef !80
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %.lr.ph.epil.preheader
  %i.bo = load ptr, ptr %0, align 8, !tbaa !933
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %.021.epil.init ; 3 uses
  %i.bq = load i64, ptr %i.bk, align 8, !tbaa !85
  store i64 %i.bq, ptr %i.bp, align 8, !tbaa !85
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !85
  store i64 %i.bt, ptr %i.bs, align 8, !tbaa !85
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store i8 1, ptr %i.bu, align 8, !tbaa !3744
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.j, %.lr.ph.epil.preheader, %.preheader, %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !3724 ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit
  call void @_ZdaPv(ptr noundef nonnull %i.bx) #57
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %i.bz = load ptr, ptr %i.bv, align 8, !tbaa !3725 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !3726 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.bz, %i.cb
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i16

.lr.ph.i.i.i.i.i16:                               ; preds = %bb.l, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.cj, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i ], [ %i.bz, %bb.l ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !933 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i16
  %i.ce = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !936
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.cd to i64
  %i.ci = sub i64 %i.cg, %i.ch
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.ci) #57
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.m, %.lr.ph.i.i.i.i.i16
  %i.cj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i17 = icmp eq ptr %i.cj, %i.cb
  br i1 %.not.i.i.i.i.i17, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i16, !llvm.loop !3727

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.bv, align 8, !tbaa !3725
  br label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.l
  %i.ck = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.bz, %bb.l ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !3728
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.ck to i64
  %i.cp = sub i64 %i.cn, %i.co
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.cp) #57
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i: ; preds = %bb.n, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !3729 ; 3 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i18, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !3730
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cr to i64
  %i.cw = sub i64 %i.cu, %i.cv
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.cw) #57
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i: ; preds = %bb.o, %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i
  %i.cx = load ptr, ptr %3, align 8, !tbaa !933   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !936
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.dc) #57
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #56
  %i.dd = load ptr, ptr %2, align 8, !tbaa !933   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit
  %i.de = load ptr, ptr %i.r, align 8, !tbaa !936
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dd to i64
  %i.dh = sub i64 %i.df, %i.dg
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.dh) #57
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit: ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  ret i1 %i.ad

bb.r:                                             ; preds = %bb.f, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.al, %bb.f ], [ %i.ak, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #56
  %i.di = load ptr, ptr %2, align 8, !tbaa !933   ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i19, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit20, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dj = load ptr, ptr %i.r, align 8, !tbaa !936
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = ptrtoint ptr %i.di to i64
  %i.dm = sub i64 %i.dk, %i.dl
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.dm) #57
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit20

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit20: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #29

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail16_Backref_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_12regex_traitsIcEEE8_M_applyESB_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr %2, ptr %3, ptr %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::locale", align 8       ; 7 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !3789, !range !79, !noundef !80
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = ptrtoint ptr %4 to i64
  %i.g = ptrtoint ptr %3 to i64
  %i.h = sub i64 %i.f, %i.g
  %.not.i = icmp eq i64 %i.e, %i.h
  br i1 %.not.i, label %bb.c, label %_ZSt8__equal4IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EbT_SB_T0_SC_.exit

bb.c:                                             ; preds = %bb.b
  %.not.not.i.i.i.i.i = icmp eq ptr %2, %1
  br i1 %.not.not.i.i.i.i.i, label %_ZSt8__equal4IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EbT_SB_T0_SC_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %1, ptr %3, i64 %i.e)
  %.not9.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br label %_ZSt8__equal4IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EbT_SB_T0_SC_.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #56
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !3795, !nonnull !80, !align !104
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.j) #56
  %i.k = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #56
  %i.l = load ptr, ptr %5, align 8, !tbaa !3204
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !3205
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.k
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !3208 ; 5 uses
  %.not.not.i = icmp eq ptr %i.p, null
  br i1 %.not.not.i, label %bb.f, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt16__throw_bad_castv() #58
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit:  ; preds = %bb.e
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #56
  %i.q = ptrtoint ptr %2 to i64
  %i.r = ptrtoint ptr %1 to i64
end_hunk_1
begin_hunk_2_@_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE12_M_lookaheadEl:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store ptr %i.h, ptr %i.i, align 8, !tbaa !936
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = sdiv exact i64 %i.f, 24
  %i.k = icmp ugt i64 %i.j, 384307168202282325
  br i1 %i.k, label %.noexc.i.i, label %bb.c, !prof !156

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #58
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #59 ; 4 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !933
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !3753
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !936
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.c, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3764

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.thread
  %i.r = phi ptr [ %i.i, %.thread ], [ %i.o, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.s = phi ptr [ %i.g, %.thread ], [ %i.m, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %.thread ], [ %i.q, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.s, align 8, !tbaa !3753
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #56
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.06.0.copyload = load ptr, ptr %i.t, align 8, !tbaa !85 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.x = load i32, ptr %i.w, align 8, !tbaa !3751 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(117) %3, i8 0, i64 24, i1 false)
  store ptr %.sroa.06.0.copyload, ptr %i.y, align 8, !tbaa !85
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !3806, !nonnull !80, !align !104
  %i.ab = load <2 x ptr>, ptr %i.u, align 8, !tbaa !648
  store <2 x ptr> %i.ab, ptr %i.z, align 8, !tbaa !648
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !3700 ; 3 uses
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !3262
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %2, ptr %i.af, align 8, !tbaa !3732
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !3251 ; 2 uses
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !3213 ; 2 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = sdiv exact i64 %i.an, 48                ; 7 uses
  %i.ap = icmp ugt i64 %i.ao, 576460752303423487
  %i.aq = ptrtoint ptr %.sroa.06.0.copyload to i64
  br i1 %i.ap, label %bb.d, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.393) #58
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.d
  unreachable

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i16 = icmp eq ptr %i.aj, %i.ak
  br i1 %.not.i.i.i.i.i16, label %.loopexit.i, label %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i

_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i
  %i.ar = shl nuw nsw i64 %i.ao, 4
  %i.as = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #59
          to label %.noexc9.i unwind label %bb.e  ; 4 uses

.noexc9.i:                                        ; preds = %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i
  store ptr %i.as, ptr %i.ag, align 8, !tbaa !3729
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.ao
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 88
  store ptr %i.at, ptr %i.au, align 8, !tbaa !3730
  %xtraiter = and i64 %i.ao, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.noexc9.i, %.lr.ph.i.i.i.i.i.i.prol
  %.013.i.i.i.i.i.i.prol = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.as, %.noexc9.i ] ; 3 uses
  %.01012.i.i.i.i.i.i.prol = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ao, %.noexc9.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.noexc9.i ]
  store ptr null, ptr %.013.i.i.i.i.i.i.prol, align 8, !tbaa !3722
  %i.av = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 8
  store i32 0, ptr %i.av, align 8, !tbaa !3733
  %i.aw = add i64 %.01012.i.i.i.i.i.i.prol, -1    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !3814

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.noexc9.i
  %.lcssa.unr = phi ptr [ poison, %.noexc9.i ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.i.unr = phi ptr [ %i.as, %.noexc9.i ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.i.unr = phi i64 [ %i.ao, %.noexc9.i ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ay = icmp ult i64 %i.ao, 8
  br i1 %i.ay, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i.i = phi i64 [ %i.bo, %.lr.ph.i.i.i.i.i.i ], [ %.01012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  store ptr null, ptr %.013.i.i.i.i.i.i, align 8, !tbaa !3722
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.az, align 8, !tbaa !3733
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 16
  store ptr null, ptr %i.ba, align 8, !tbaa !3722
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 24
  store i32 0, ptr %i.bb, align 8, !tbaa !3733
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 32
  store ptr null, ptr %i.bc, align 8, !tbaa !3722
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 40
  store i32 0, ptr %i.bd, align 8, !tbaa !3733
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 48
  store ptr null, ptr %i.be, align 8, !tbaa !3722
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 56
  store i32 0, ptr %i.bf, align 8, !tbaa !3733
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 64
  store ptr null, ptr %i.bg, align 8, !tbaa !3722
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 72
  store i32 0, ptr %i.bh, align 8, !tbaa !3733
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 80
  store ptr null, ptr %i.bi, align 8, !tbaa !3722
  %i.bj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 88
  store i32 0, ptr %i.bj, align 8, !tbaa !3733
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 96
  store ptr null, ptr %i.bk, align 8, !tbaa !3722
  %i.bl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 104
  store i32 0, ptr %i.bl, align 8, !tbaa !3733
  %i.bm = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 112
  store ptr null, ptr %i.bm, align 8, !tbaa !3722
  %i.bn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 120
  store i32 0, ptr %i.bn, align 8, !tbaa !3733
  %i.bo = add i64 %.01012.i.i.i.i.i.i, -8         ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i.i.i.i.i.7, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3736

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.bp, %.lr.ph.i.i.i.i.i.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 80
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.bq, align 8, !tbaa !3737
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.bu = and i32 %i.x, 128
  %.not.i = icmp eq i32 %i.bu, 0
  %i.bv = and i32 %i.x, -6
  %spec.select = select i1 %.not.i, i32 %i.x, i32 %i.bv
  store i32 %spec.select, ptr %i.bt, align 8, !tbaa !3721
  store i64 %1, ptr %i.br, align 8, !tbaa !3742
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.aq, ptr %i.bw, align 8, !tbaa !85
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 116 ; 2 uses
  store i8 0, ptr %i.bx, align 4, !tbaa !3740
  store i64 0, ptr %i.bs, align 8, !tbaa !85
  %i.by = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(117) %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.g, !inline_history !3815 ; 0 uses

bb.e:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i, %bb.d
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body

.noexc:                                           ; preds = %.loopexit.i
  %i.ca = load i64, ptr %i.br, align 8, !tbaa !3742
  invoke void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %3, i8 noundef zeroext 1, i64 noundef %i.ca)
          to label %bb.f unwind label %bb.g, !inline_history !3815

bb.f:                                             ; preds = %.noexc
  %i.cb = load i8, ptr %i.bx, align 4, !tbaa !3740, !range !79, !noundef !80
  %i.cc = trunc nuw i8 %i.cb to i1                ; 2 uses
  br i1 %i.cc, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.f
  %i.cd = load ptr, ptr %i.s, align 8, !tbaa !3753 ; 2 uses
  %i.ce = load ptr, ptr %2, align 8, !tbaa !933   ; 5 uses
  %.not = icmp eq ptr %i.cd, %i.ce
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = sdiv i64 %i.ch, 24                      ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.ci, i64 1) ; 3 uses
  %xtraiter37 = and i64 %umax, 1
  %4 = icmp ult i64 %i.ci, 2
  br i1 %4, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %umax, -2
  br label %.lr.ph

bb.g:                                             ; preds = %.noexc, %.loopexit.i
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(117) dereferenceable(117) %3) #56
  br label %.body

.lr.ph:                                           ; preds = %bb.j, %.lr.ph.preheader.new
  %.024 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.dh, %bb.j ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.j ]
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %.024 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load i8, ptr %i.cl, align 8, !tbaa !3744, !range !79, !noundef !80
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.h, label %.lr.ph.1

bb.h:                                             ; preds = %.lr.ph
  %i.co = load ptr, ptr %0, align 8, !tbaa !933
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.co, i64 %.024 ; 3 uses
  %i.cq = load i64, ptr %i.ck, align 8, !tbaa !85
  store i64 %i.cq, ptr %i.cp, align 8, !tbaa !85
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !85
  store i64 %i.ct, ptr %i.cs, align 8, !tbaa !85
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i8 1, ptr %i.cu, align 8, !tbaa !3744
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.h, %.lr.ph
  %i.cv = or disjoint i64 %.024, 1                ; 2 uses
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %i.cv ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !3744, !range !79, !noundef !80
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.1
  %i.da = load ptr, ptr %0, align 8, !tbaa !933
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.da, i64 %i.cv ; 3 uses
  %i.dc = load i64, ptr %i.cw, align 8, !tbaa !85
  store i64 %i.dc, ptr %i.db, align 8, !tbaa !85
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !85
  store i64 %i.df, ptr %i.de, align 8, !tbaa !85
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store i8 1, ptr %i.dg, align 8, !tbaa !3744
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.1
  %i.dh = add nuw i64 %.024, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !3816

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.j
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.024.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.dh, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod39 = trunc i64 %umax to i1
  call void @llvm.assume(i1 %lcmp.mod39)
  %i.di = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %.024.epil.init ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load i8, ptr %i.dj, align 8, !tbaa !3744, !range !79, !noundef !80
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.lr.ph.epil.preheader
  %i.dm = load ptr, ptr %0, align 8, !tbaa !933
  %i.dn = getelementptr inbounds nuw [24 x i8], ptr %i.dm, i64 %.024.epil.init ; 3 uses
  %i.do = load i64, ptr %i.di, align 8, !tbaa !85
  store i64 %i.do, ptr %i.dn, align 8, !tbaa !85
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !85
  store i64 %i.dr, ptr %i.dq, align 8, !tbaa !85
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store i8 1, ptr %i.ds, align 8, !tbaa !3744
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.k, %.lr.ph.epil.preheader, %.preheader, %bb.f
  %i.dt = load ptr, ptr %i.ag, align 8, !tbaa !3729 ; 3 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i.i18, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %.loopexit
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !3730
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %i.dt to i64
  %i.dy = sub i64 %i.dw, %i.dx
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.dy) #57
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i: ; preds = %bb.l, %.loopexit
  %i.dz = load ptr, ptr %3, align 8, !tbaa !933   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !936
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = ptrtoint ptr %i.dz to i64
  %i.ee = sub i64 %i.ec, %i.ed
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.ee) #57
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #56
  %i.ef = load ptr, ptr %2, align 8, !tbaa !933   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit
  %i.eg = load ptr, ptr %i.r, align 8, !tbaa !936
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = ptrtoint ptr %i.ef to i64
  %i.ej = sub i64 %i.eh, %i.ei
  call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef %i.ej) #57
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit: ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  ret i1 %i.cc

.body:                                            ; preds = %bb.e, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.cj, %bb.g ], [ %i.bz, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #56
  %i.ek = load ptr, ptr %2, align 8, !tbaa !933   ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit21, label %bb.o

bb.o:                                             ; preds = %.body
  %i.el = load ptr, ptr %i.r, align 8, !tbaa !936
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = ptrtoint ptr %i.ek to i64
  %i.eo = sub i64 %i.em, %i.en
  call void @_ZdlPvm(ptr noundef nonnull %i.ek, i64 noundef %i.eo) #57
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit21

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit21: ; preds = %.body, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt11_Deque_baseIcSaIcEE15_M_allocate_mapEm.exit:
  %i.a = lshr i64 %1, 9                           ; 2 uses
  %i.b = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.c, 3     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %.sroa.speculated, ptr %i.d, align 8, !tbaa !995
  %i.e = shl nuw nsw i64 %.sroa.speculated, 3
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #59 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !992
  %i.g = sub nsw i64 %.sroa.speculated, %i.b
  %i.h = lshr i64 %i.g, 1
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h ; 6 uses
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseIcSaIcEE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseIcSaIcEE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.l, %_ZNSt11_Deque_baseIcSaIcEE16_M_allocate_nodeEv.exit.i ], [ %i.i, %_ZNSt11_Deque_baseIcSaIcEE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.k = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #59
          to label %_ZNSt11_Deque_baseIcSaIcEE16_M_allocate_nodeEv.exit.i unwind label %bb.a

_ZNSt11_Deque_baseIcSaIcEE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.k, ptr %.011.i, align 8, !tbaa !85
  %i.l = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.m = icmp ult ptr %i.l, %i.j
  br i1 %i.m, label %.lr.ph.i, label %_ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_.exit, !llvm.loop !3817

bb.a:                                             ; preds = %.lr.ph.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = tail call ptr @__cxa_begin_catch(ptr %i.o) #56 ; 0 uses
  %i.q = icmp ult ptr %i.i, %.011.i
  br i1 %i.q, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.i, %bb.a ] ; 2 uses
  %i.r = load ptr, ptr %.06.i.i, align 8, !tbaa !85
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef 512) #57
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.t = icmp ult ptr %i.s, %.011.i
  br i1 %i.t, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.i, !llvm.loop !994

_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  invoke void @__cxa_rethrow() #58
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #61
  unreachable

bb.d:                                             ; preds = %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.i
  unreachable

.body:                                            ; preds = %bb.b
  %i.x = extractvalue { ptr, i32 } %i.u, 0
  %i.y = tail call ptr @__cxa_begin_catch(ptr %i.x) #56 ; 0 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !992
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !995
  %i.ab = shl i64 %i.aa, 3
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ab) #57
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #58
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %.body
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ac

_ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_.exit: ; preds = %_ZNSt11_Deque_baseIcSaIcEE16_M_allocate_nodeEv.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.i, ptr %i.ae, align 8, !tbaa !978
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !85  ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !979
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 512
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !980
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = getelementptr inbounds i8, ptr %i.j, i64 -8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !978
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !85 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.am, ptr %i.an, align 8, !tbaa !979
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !980
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !3818
  %i.aq = and i64 %1, 511
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.aq
  store ptr %i.ar, ptr %i.aj, align 8, !tbaa !971
  ret void

bb.g:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
end_hunk_2
