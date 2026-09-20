Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/pngdetail?download=true
inline.NumInlined: 2280
inline.NumDeleted: 605
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_Z11showExifIFDPKhmmb:bb.a
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i507 = icmp eq ptr %i.ju, null
  br i1 %.not.i.i.i507, label %.invoke1370, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i508

.invoke1370:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit338, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit291, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit334
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.cont1371 unwind label %.loopexit.split-lp.loopexit.split-lp

.cont1371:                                        ; preds = %.invoke1370
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i508: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit338
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 56
  %i.jw = load i8, ptr %i.jv, align 8, !tbaa !41
  %.not.i1.i.i509 = icmp eq i8 %i.jw, 0
  br i1 %.not.i1.i.i509, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i508
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ju, i64 67
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !42
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i510

bb.bd:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i508
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ju)
          to label %.noexc513.a unwind label %.loopexit

.noexc513.a:                                      ; preds = %bb.bd
  %i.jz = load ptr, ptr %i.ju, align 8, !tbaa !17
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 48
  %i.kb = load ptr, ptr %i.ka, align 8
  %i.kc = invoke noundef signext i8 %i.kb(ptr noundef nonnull align 8 dereferenceable(570) %i.ju, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i510 unwind label %.loopexit, !inline_history !3

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i510: ; preds = %.noexc513.a, %bb.bc
  %.0.i.i.i511 = phi i8 [ %i.jy, %bb.bc ], [ %i.kc, %.noexc513.a ]
  %i.kd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i511)
          to label %.noexc515 unwind label %.loopexit

.noexc515:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i510
  %i.ke = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.kd)
          to label %_ZNSolsEPFRSoS_E.exit293 unwind label %.loopexit ; 0 uses

bb.be:                                            ; preds = %bb.ba
  switch i32 %.0.i285567577, label %bb.cm [
    i32 1, label %bb.bf
    i32 2, label %.preheader635
    i32 3, label %bb.bm
    i32 4, label %bb.bq
    i32 5, label %bb.cg
  ]

.preheader635:                                    ; preds = %bb.be
  %i.kf = zext i32 %spec.select593 to i64
  %invariant.gep = getelementptr inbounds nuw i8, ptr %0, i64 %i.kf
  br label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.kg = zext i32 %spec.select593 to i64
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 %i.kg
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !42
  %i.kj = zext i8 %i.ki to i64
  br label %.invoke1214

.invoke1214:                                      ; preds = %bb.bp, %bb.bo, %bb.bm, %_Z14readExifUint32PKhmmb.exit363, %bb.bf
  %i.kk = phi i64 [ %i.kj, %bb.bf ], [ %i.ms, %_Z14readExifUint32PKhmmb.exit363 ], [ %i.li, %bb.bp ], [ %i.lg, %bb.bo ], [ 0, %bb.bm ]
  %i.kl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.kk)
          to label %_ZNSolsEj.exit342 unwind label %.loopexit ; 0 uses

bb.bg:                                            ; preds = %.preheader635, %bb.bk
  %.0195859 = phi i64 [ 0, %.preheader635 ], [ %i.kv, %bb.bk ] ; 2 uses
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.0195859
  %i.km = load i8, ptr %gep, align 1, !tbaa !42   ; 3 uses
  %.not227 = icmp eq i8 %i.km, 0
  br i1 %.not227, label %_ZNSolsEj.exit342, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.km, ptr %i.c, align 1, !tbaa !42
  %i.kn = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.ko = getelementptr i8, ptr %i.kn, i64 -24
  %i.kp = load i64, ptr %i.ko, align 8
  %i.kq = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.kp
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !109
  %.not.i.i = icmp eq i64 %i.ks, 0
  br i1 %.not.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.kt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %bb.bk unwind label %bb.bl     ; 0 uses

bb.bj:                                            ; preds = %bb.bh
  %i.ku = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %i.km)
          to label %bb.bk unwind label %bb.bl     ; 0 uses

bb.bk:                                            ; preds = %bb.bi, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.kv = add nuw nsw i64 %.0195859, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.kv, %i.ih
  br i1 %exitcond.not, label %_ZNSolsEj.exit342, label %bb.bg, !llvm.loop !327

bb.bl:                                            ; preds = %bb.bj, %bb.bi
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp645

bb.bm:                                            ; preds = %bb.be
  %i.kx = icmp ult i32 %i.is, 2
  br i1 %i.kx, label %.invoke1214, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ky = zext i32 %spec.select593 to i64
  %i.kz = getelementptr i8, ptr %0, i64 %i.ky     ; 3 uses
  br i1 %3, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !42
  %i.lb = zext i8 %i.la to i64
  %i.lc = shl nuw nsw i64 %i.lb, 8
  %i.ld = getelementptr i8, ptr %i.kz, i64 1
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !42
  %i.lf = zext i8 %i.le to i64
  %i.lg = or disjoint i64 %i.lc, %i.lf
  br label %.invoke1214

bb.bp:                                            ; preds = %bb.bn
  %i.lh = load i16, ptr %i.kz, align 1
  %i.li = zext i16 %i.lh to i64
  br label %.invoke1214

bb.bq:                                            ; preds = %bb.be
  %i.lj = icmp eq i32 %.0.i283559565579, 34665
  br i1 %i.lj, label %bb.br, label %bb.cc

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  %i.lk = icmp ult i32 %i.is, 4
  br i1 %i.lk, label %_Z14readExifUint32PKhmmb.exit350.thread, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ll = zext i32 %spec.select593 to i64
  %i.lm = getelementptr i8, ptr %0, i64 %i.ll     ; 2 uses
  br i1 %3, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.ln = load i32, ptr %i.lm, align 1
  %i.lo = call i32 @llvm.bswap.i32(i32 %i.ln)
  br label %_Z14readExifUint32PKhmmb.exit350

bb.bu:                                            ; preds = %bb.bs
  %i.lp = load i32, ptr %i.lm, align 1
  br label %_Z14readExifUint32PKhmmb.exit350

_Z14readExifUint32PKhmmb.exit350:                 ; preds = %bb.bt, %bb.bu
  %.0.i349 = phi i32 [ %i.lp, %bb.bu ], [ %i.lo, %bb.bt ] ; 2 uses
  %i.lq = zext i32 %.0.i349 to i64                ; 4 uses
  store i64 %i.lq, ptr %i.e, align 8, !tbaa !81
  %.not225 = icmp eq i32 %.0.i349, 0
  br i1 %.not225, label %_Z14readExifUint32PKhmmb.exit350.thread, label %bb.bv

bb.bv:                                            ; preds = %_Z14readExifUint32PKhmmb.exit350
  %i.lr = load ptr, ptr %i.g, align 8, !tbaa !92  ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.lr, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bv, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.lr, %bb.bv ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.f, %bb.bv ] ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !81
  %i.lu = icmp ult i64 %i.lt, %i.lq               ; 3 uses
  %.19.i.i.i = select i1 %i.lu, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.lu, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !105 ; 2 uses
  %.not.i.i.i351 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i351, label %_ZNKSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !328

_ZNKSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.lv = icmp eq ptr %.19.i.i.i, %i.f
  br i1 %i.lv, label %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit.thread, label %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit

_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit: ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.lu, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.lw = load i64, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !81
  %.not631 = icmp ugt i64 %i.lw, %i.lq
  br i1 %.not631, label %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit.thread, label %_Z14readExifUint32PKhmmb.exit350.thread

_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit.thread: ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, %bb.bv, %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit
  %.not.i352 = icmp eq ptr %.sroa.11.1867, %.sroa.21.3868
  br i1 %.not.i352, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit.thread
  store i64 %i.lq, ptr %.sroa.11.1867, align 8, !tbaa !81
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit361

bb.bx:                                            ; preds = %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit.thread
  %i.lx = ptrtoint ptr %.sroa.21.3868 to i64
  %i.ly = ptrtoint ptr %.sroa.0.3866 to i64
  %i.lz = sub i64 %i.lx, %i.ly                    ; 7 uses
  %i.ma = icmp eq i64 %i.lz, 9223372036854775800
  br i1 %i.ma, label %bb.by, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i353

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.250) #25
          to label %.noexc359 unwind label %.loopexit.split-lp640

.noexc359:                                        ; preds = %bb.by
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i353: ; preds = %bb.bx
  %i.mb = ashr exact i64 %i.lz, 3
  %mul2.i.i353 = ashr exact i64 %i.lz, 2
  %5 = call i64 @llvm.umax.i64(i64 %mul2.i.i353, i64 1) ; 2 uses
  %i.mc = icmp ult i64 %5, %i.mb
  %i.md = call i64 @llvm.umin.i64(i64 %5, i64 1152921504606846975)
  %i.me = select i1 %i.mc, i64 1152921504606846975, i64 %i.md ; 2 uses
  %i.mf = shl nuw nsw i64 %i.me, 3
  %i.mg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mf) #29
          to label %.noexc360 unwind label %.loopexit639 ; 4 uses

.noexc360:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i353
  %i.mh = getelementptr inbounds i8, ptr %i.mg, i64 %i.lz ; 2 uses
  %i.mi = load i64, ptr %i.e, align 8, !tbaa !81
  store i64 %i.mi, ptr %i.mh, align 8, !tbaa !81
  %i.mj = icmp sgt i64 %i.lz, 0
  br i1 %i.mj, label %bb.bz, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i358

bb.bz:                                            ; preds = %.noexc360
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.mg, ptr align 8 %.sroa.0.3866, i64 %i.lz, i1 false)
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i358

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i358: ; preds = %bb.bz, %.noexc360
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.3866, i64 noundef %i.lz) #27
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.mg, i64 %i.me
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit361

_ZNSt6vectorImSaImEE9push_backERKm.exit361:       ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i358, %bb.bw
  %.sroa.0.15 = phi ptr [ %i.mg, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i358 ], [ %.sroa.0.3866, %bb.bw ] ; 2 uses
  %.pn = phi ptr [ %i.mh, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i358 ], [ %.sroa.11.1867, %bb.bw ]
  %.sroa.21.15 = phi ptr [ %i.mk, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i358 ], [ %.sroa.21.3868, %bb.bw ] ; 2 uses
  %i.ml = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3mapImbSt4lessImESaISt4pairIKmbEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.ca unwind label %.loopexit639

bb.ca:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit361
  %.sroa.11.8 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  store i8 1, ptr %i.ml, align 1, !tbaa !96
  br label %_Z14readExifUint32PKhmmb.exit350.thread

.loopexit639:                                     ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit361, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i353
  %.sroa.0.5.ph = phi ptr [ %.sroa.0.3866, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i353 ], [ %.sroa.0.15, %_ZNSt6vectorImSaImEE9push_backERKm.exit361 ]
  %.sroa.21.5.ph = phi ptr [ %.sroa.21.3868, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i353 ], [ %.sroa.21.15, %_ZNSt6vectorImSaImEE9push_backERKm.exit361 ]
  %lpad.loopexit641 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

.loopexit.split-lp640:                            ; preds = %bb.by
  %lpad.loopexit.split-lp642 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.cb:                                            ; preds = %.loopexit.split-lp640, %.loopexit639
  %.sroa.0.5 = phi ptr [ %.sroa.0.5.ph, %.loopexit639 ], [ %.sroa.0.3866, %.loopexit.split-lp640 ]
  %.sroa.21.5 = phi ptr [ %.sroa.21.5.ph, %.loopexit639 ], [ %.sroa.21.3868, %.loopexit.split-lp640 ]
  %lpad.phi643 = phi { ptr, i32 } [ %lpad.loopexit641, %.loopexit639 ], [ %lpad.loopexit.split-lp642, %.loopexit.split-lp640 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  br label %.loopexit.split-lp645

_Z14readExifUint32PKhmmb.exit350.thread:          ; preds = %bb.br, %bb.ca, %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit, %_Z14readExifUint32PKhmmb.exit350
  %.sroa.0.6 = phi ptr [ %.sroa.0.3866, %_Z14readExifUint32PKhmmb.exit350 ], [ %.sroa.0.15, %bb.ca ], [ %.sroa.0.3866, %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit ], [ %.sroa.0.3866, %bb.br ]
  %.sroa.11.2 = phi ptr [ %.sroa.11.1867, %_Z14readExifUint32PKhmmb.exit350 ], [ %.sroa.11.8, %bb.ca ], [ %.sroa.11.1867, %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit ], [ %.sroa.11.1867, %bb.br ]
  %.sroa.21.6 = phi ptr [ %.sroa.21.3868, %_Z14readExifUint32PKhmmb.exit350 ], [ %.sroa.21.15, %bb.ca ], [ %.sroa.21.3868, %_ZNKSt3mapImbSt4lessImESaISt4pairIKmbEEE5countERS3_.exit ], [ %.sroa.21.3868, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  br label %_ZNSolsEj.exit342

bb.cc:                                            ; preds = %bb.bq
  %i.mm = icmp ult i32 %i.is, 4
  br i1 %i.mm, label %_Z14readExifUint32PKhmmb.exit363, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.mn = zext i32 %spec.select593 to i64
  %i.mo = getelementptr i8, ptr %0, i64 %i.mn     ; 2 uses
  br i1 %3, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.mp = load i32, ptr %i.mo, align 1
  %i.mq = call i32 @llvm.bswap.i32(i32 %i.mp)
  br label %_Z14readExifUint32PKhmmb.exit363

bb.cf:                                            ; preds = %bb.cd
  %i.mr = load i32, ptr %i.mo, align 1
  br label %_Z14readExifUint32PKhmmb.exit363

_Z14readExifUint32PKhmmb.exit363:                 ; preds = %bb.cc, %bb.ce, %bb.cf
  %.0.i362 = phi i32 [ %i.mr, %bb.cf ], [ %i.mq, %bb.ce ], [ 0, %bb.cc ]
  %i.ms = zext i32 %.0.i362 to i64
  br label %.invoke1214

bb.cg:                                            ; preds = %bb.be
  %i.mt = icmp ult i32 %i.is, 4
  br i1 %i.mt, label %_Z14readExifUint32PKhmmb.exit367.a, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.mu = zext i32 %spec.select593 to i64
  %i.mv = getelementptr i8, ptr %0, i64 %i.mu     ; 2 uses
  br i1 %3, label %_Z14readExifUint32PKhmmb.exit367.thread600, label %_Z14readExifUint32PKhmmb.exit367.thread

_Z14readExifUint32PKhmmb.exit367.a:               ; preds = %bb.cg
  %i.mw = add i32 %spec.select593, 4              ; 3 uses
  %i.mx = icmp ugt i32 %i.mw, %i.k
  %i.my = sub nuw i32 %i.k, %i.mw
  %i.mz = icmp ult i32 %i.my, 4
  %i.na = select i1 %i.mx, i1 true, i1 %i.mz
  br i1 %i.na, label %_Z14readExifUint32PKhmmb.exit369, label %bb.ci

_Z14readExifUint32PKhmmb.exit367.thread600:       ; preds = %bb.ch
  %i.nb = load i32, ptr %i.mv, align 1
  %i.nc = call i32 @llvm.bswap.i32(i32 %i.nb)
  %i.nd = uitofp i32 %i.nc to double              ; 2 uses
  %i.ne = add i32 %spec.select593, 4              ; 3 uses
  %i.nf = icmp ugt i32 %i.ne, %i.k
  %i.ng = sub nuw i32 %i.k, %i.ne
  %i.nh = icmp ult i32 %i.ng, 4
  %i.ni = select i1 %i.nf, i1 true, i1 %i.nh
  br i1 %i.ni, label %_Z14readExifUint32PKhmmb.exit369, label %.thread602

.thread602:                                       ; preds = %_Z14readExifUint32PKhmmb.exit367.thread600
  %i.nj = zext i32 %i.ne to i64
  %i.nk = getelementptr i8, ptr %0, i64 %i.nj
  br label %bb.cj

_Z14readExifUint32PKhmmb.exit367.thread:          ; preds = %bb.ch
  %i.nl = load i32, ptr %i.mv, align 1
  %i.nm = uitofp i32 %i.nl to double              ; 2 uses
  %i.nn = add i32 %spec.select593, 4              ; 3 uses
  %i.no = icmp ugt i32 %i.nn, %i.k
  %i.np = sub nuw i32 %i.k, %i.nn
  %i.nq = icmp ult i32 %i.np, 4
  %i.nr = select i1 %i.no, i1 true, i1 %i.nq
  br i1 %i.nr, label %_Z14readExifUint32PKhmmb.exit369, label %.thread599

.thread599:                                       ; preds = %_Z14readExifUint32PKhmmb.exit367.thread
  %i.ns = zext i32 %i.nn to i64
  %i.nt = getelementptr i8, ptr %0, i64 %i.ns
  br label %bb.ck

bb.ci:                                            ; preds = %_Z14readExifUint32PKhmmb.exit367.a
  %i.nu = zext i32 %i.mw to i64
  %i.nv = getelementptr i8, ptr %0, i64 %i.nu     ; 2 uses
  br i1 %3, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %.thread602, %bb.ci
  %i.nw = phi ptr [ %i.nk, %.thread602 ], [ %i.nv, %bb.ci ]
  %i.nx = phi double [ %i.nd, %.thread602 ], [ 0.000000e+00, %bb.ci ]
  %i.ny = load i32, ptr %i.nw, align 1
  %i.nz = call i32 @llvm.bswap.i32(i32 %i.ny)
  br label %_Z14readExifUint32PKhmmb.exit369

bb.ck:                                            ; preds = %.thread599, %bb.ci
  %i.oa = phi ptr [ %i.nt, %.thread599 ], [ %i.nv, %bb.ci ]
  %i.ob = phi double [ %i.nm, %.thread599 ], [ 0.000000e+00, %bb.ci ]
  %i.oc = load i32, ptr %i.oa, align 1
  br label %_Z14readExifUint32PKhmmb.exit369

_Z14readExifUint32PKhmmb.exit369:                 ; preds = %_Z14readExifUint32PKhmmb.exit367.thread600, %_Z14readExifUint32PKhmmb.exit367.thread, %_Z14readExifUint32PKhmmb.exit367.a, %bb.cj, %bb.ck
  %i.od = phi double [ %i.ob, %bb.ck ], [ %i.nx, %bb.cj ], [ 0.000000e+00, %_Z14readExifUint32PKhmmb.exit367.a ], [ %i.nm, %_Z14readExifUint32PKhmmb.exit367.thread ], [ %i.nd, %_Z14readExifUint32PKhmmb.exit367.thread600 ]
  %.0.i368 = phi i32 [ %i.oc, %bb.ck ], [ %i.nz, %bb.cj ], [ 0, %_Z14readExifUint32PKhmmb.exit367.a ], [ 0, %_Z14readExifUint32PKhmmb.exit367.thread ], [ 0, %_Z14readExifUint32PKhmmb.exit367.thread600 ]
  %i.oe = uitofp i32 %.0.i368 to double
  %i.of = fdiv double %i.od, %i.oe
  %i.og = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.of)
          to label %_ZNSolsEj.exit342 unwind label %bb.cl ; 0 uses

bb.cl:                                            ; preds = %_Z14readExifUint32PKhmmb.exit369
  %i.oh = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp645

bb.cm:                                            ; preds = %bb.be
  %i.oi = icmp eq i32 %.0.i285567577, 7           ; 2 uses
  %i.oj = icmp ugt i32 %i.ig, 8
  %or.cond14 = and i1 %i.oi, %i.oj
  br i1 %or.cond14, label %bb.cn, label %bb.cw

bb.cn:                                            ; preds = %bb.cm
  %i.ok = zext i32 %spec.select593 to i64
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 %i.ok ; 2 uses
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !42
  %i.on = icmp eq i8 %i.om, 65
  br i1 %i.on, label %bb.co, label %.thread606

bb.co:                                            ; preds = %bb.cn
  %i.oo = add i32 %spec.select593, 1
  %i.op = zext i32 %i.oo to i64
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 %i.op
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !42
  %i.os = icmp eq i8 %i.or, 83
  br i1 %i.os, label %bb.cp, label %.thread606

bb.cp:                                            ; preds = %bb.co
  %i.ot = add i32 %spec.select593, 2
  %i.ou = zext i32 %i.ot to i64
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 %i.ou
  %i.ow = load i8, ptr %i.ov, align 1, !tbaa !42
  %i.ox = icmp eq i8 %i.ow, 67
  br i1 %i.ox, label %bb.cq, label %.thread606

bb.cq:                                            ; preds = %bb.cp
  %i.oy = add i32 %spec.select593, 3
  %i.oz = zext i32 %i.oy to i64
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 %i.oz
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !42
  %i.pc = icmp eq i8 %i.pb, 73
  br i1 %i.pc, label %bb.cr, label %.thread606

bb.cr:                                            ; preds = %bb.cq
  %i.pd = add i32 %spec.select593, 4
  %i.pe = zext i32 %i.pd to i64
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_:bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !81   ; 2 uses
  %i.o = icmp ult i64 %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !105 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !358

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !93
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #30 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load i64, ptr %.phi.trans.insert80, align 8, !tbaa !81
  %.pre82 = load i64, ptr %2, align 8, !tbaa !81
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi i64 [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi i64 [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp ult i64 %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i64, ptr %2, align 8, !tbaa !81     ; 8 uses
  %i.y = load i64, ptr %i.w, align 8, !tbaa !81   ; 2 uses
  %i.z = icmp ult i64 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !105 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #30 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !81
  %i.ag = icmp ult i64 %i.af, %i.x
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !142
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8, !tbaa !105 ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load i64, ptr %i.al, align 8, !tbaa !81 ; 2 uses
  %i.an = icmp ult i64 %i.x, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !105 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !358

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #30 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i64, ptr %.phi.trans.insert78, align 8, !tbaa !81
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i64 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp ult i64 %i.aq, %i.x                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp ult i64 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !105 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #30 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !81
  %i.az = icmp ult i64 %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !142
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8, !tbaa !105 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !81 ; 2 uses
  %i.bg = icmp ult i64 %i.x, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !105 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !358

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !93
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #30 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !81
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi i64 [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp ult i64 %i.bl, %i.x                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_.exit

_ZNSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #5 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !84   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !85     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.250) #25
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 5
  %mul2 = ashr exact i64 %i.g, 4
  %3 = tail call i64 @llvm.umax.i64(i64 %mul2, i64 1) ; 2 uses
  %i.j = icmp ult i64 %3, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %3, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.f
  %i.o = shl nuw nsw i64 %i.l, 5                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #29 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !47
  %i.s = load ptr, ptr %2, align 8, !tbaa !50     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !49   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.u, ptr %i.a, align 8, !tbaa !81
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.w, ptr %i.q, align 8, !tbaa !50
  %i.x = load i64, ptr %i.a, align 8, !tbaa !81
  store i64 %i.x, ptr %i.r, align 8, !tbaa !42
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.y = phi ptr [ %i.w, %.noexc ], [ %i.r, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.u, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.z = load i8, ptr %i.s, align 1, !tbaa !42
  store i8 %i.z, ptr %i.y, align 1, !tbaa !42
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !81  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !49
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !50
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %bb.e ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !366)
  call void @llvm.experimental.noalias.scope.decl(metadata !367)
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !47, !alias.scope !366, !noalias !367
  %i.af = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !50, !alias.scope !367, !noalias !366 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !49, !alias.scope !367, !noalias !366 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.al, i1 false), !alias.scope !368
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !50, !alias.scope !366, !noalias !367
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !42, !alias.scope !367, !noalias !366
  store i64 %i.am, ptr %i.ae, align 8, !tbaa !42, !alias.scope !366, !noalias !367
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !49, !alias.scope !367, !noalias !366
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.f
  %i.an = phi i64 [ %i.aj, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !49, !alias.scope !366, !noalias !367
  store ptr %i.ag, ptr %.0911.i.i.i, align 8, !tbaa !50, !alias.scope !367, !noalias !366
  store i64 0, ptr %i.ao, align 8, !tbaa !49, !alias.scope !367, !noalias !366
  store i8 0, ptr %i.ag, align 8, !tbaa !42, !alias.scope !367, !noalias !366
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !362

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.e ], [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !369)
  call void @llvm.experimental.noalias.scope.decl(metadata !370)
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.at, ptr %.012.i.i.i28, align 8, !tbaa !47, !alias.scope !369, !noalias !370
  %i.au = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !50, !alias.scope !370, !noalias !369 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !49, !alias.scope !370, !noalias !369 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.av, i64 %i.ba, i1 false), !alias.scope !371
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.au, ptr %.012.i.i.i28, align 8, !tbaa !50, !alias.scope !369, !noalias !370
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !42, !alias.scope !370, !noalias !369
  store i64 %i.bb, ptr %i.at, align 8, !tbaa !42, !alias.scope !369, !noalias !370
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !49, !alias.scope !370, !noalias !369
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30, %bb.g
  %i.bc = phi i64 [ %i.ay, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.bc, ptr %i.be, align 8, !tbaa !49, !alias.scope !369, !noalias !370
  store ptr %i.av, ptr %.0911.i.i.i29, align 8, !tbaa !50, !alias.scope !370, !noalias !369
  store i64 0, ptr %i.bd, align 8, !tbaa !49, !alias.scope !370, !noalias !369
  store i8 0, ptr %i.av, align 8, !tbaa !42, !alias.scope !370, !noalias !369
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bf, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !362

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !97
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bk) #27
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.h
  store ptr %i.p, ptr %0, align 8, !tbaa !85
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !84
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bl, ptr %i.bh, align 8, !tbaa !97
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  %i.bp = call ptr @__cxa_begin_catch(ptr %i.bo) #26 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #27
  invoke void @__cxa_rethrow() #25
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bm

bb.l:                                             ; preds = %bb.i
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #28
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7
end_hunk_1
