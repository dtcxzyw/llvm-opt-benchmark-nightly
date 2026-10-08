Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/buffers_adaptor?download=true
inline.NumInlined: 1930
inline.NumDeleted: 564
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5boost5beast6detail27test_mutable_dynamic_bufferINS0_15buffers_adaptorINS0_14buffers_tripleEEEEEvRKT_St17integral_constantIbLb1EE:_ZSt9__advanceIPKN5boost4asio14mutable_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i.i

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.gb = phi i64 [ -1, %bb.y ], [ %i.fg, %bb.x ]
  %i.gc = phi ptr [ %i.fe, %bb.y ], [ %i.fy, %bb.x ] ; 2 uses
  %.061.i.i.i.i = phi i64 [ %i.ga, %bb.y ], [ %i.fg, %bb.x ] ; 2 uses
  %.0.i.i.i.i = phi ptr [ %i.fy, %bb.y ], [ %i.fu, %bb.x ] ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16 ; 2 uses
  %i.ge = icmp eq ptr %i.gd, %i.gc
  br i1 %i.ge, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.aa, %bb.z
  %.162.lcssa.i.i.i.i = phi i64 [ %.061.i.i.i.i, %bb.z ], [ %i.gi, %bb.aa ]
  %.sroa.speculated41.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.gb, i64 %.162.lcssa.i.i.i.i)
  store i64 %.sroa.speculated41.i.i.i.i, ptr %i.fj, align 8, !tbaa !155, !alias.scope !358
  br label %_ZNK5boost5beast15buffers_adaptorINS0_14buffers_tripleEE5cdataEv.exit

.lr.ph.i.i.i.i:                                   ; preds = %bb.z, %bb.aa
  %i.gf = phi ptr [ %i.gj, %bb.aa ], [ %i.gd, %bb.z ] ; 3 uses
  %.pn.i.i.i.i = phi ptr [ %i.gf, %bb.aa ], [ %.0.i.i.i.i, %bb.z ]
  %.16270.i.i.i.i = phi i64 [ %i.gi, %bb.aa ], [ %.061.i.i.i.i, %bb.z ] ; 3 uses
  %.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 8
  %i.gg = load i64, ptr %.in.i.i.i.i, align 8, !tbaa !41, !noalias !358 ; 2 uses
  %i.gh = icmp ult i64 %i.gg, %.16270.i.i.i.i
  br i1 %i.gh, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i
  %i.gi = sub nuw i64 %.16270.i.i.i.i, %i.gg      ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 16 ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.gc
  br i1 %i.gk, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i
  store i64 %.16270.i.i.i.i, ptr %i.fj, align 8, !tbaa !155, !alias.scope !358
  store ptr %i.gf, ptr %i.fh, align 8, !tbaa !153, !alias.scope !358
  br label %_ZNK5boost5beast15buffers_adaptorINS0_14buffers_tripleEE5cdataEv.exit

_ZNK5boost5beast15buffers_adaptorINS0_14buffers_tripleEE5cdataEv.exit: ; preds = %bb.t, %bb.v, %._crit_edge.i.i.i.i, %bb.ab
  call void @_ZN5boost5beast17buffers_to_stringINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb0EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.gl = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.gl, ptr %8, align 8, !tbaa !65
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %spec.select, i8 noundef signext 42)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit37 unwind label %bb.dw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit37: ; preds = %_ZNK5boost5beast15buffers_adaptorINS0_14buffers_tripleEE5cdataEv.exit
  %i.gm = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !69 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !69
  %i.gq = icmp eq i64 %i.gn, %i.gp
  br i1 %i.gq, label %bb.ac, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit39

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit37
  %i.gr = icmp eq i64 %i.gn, 0
  br i1 %i.gr, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit39, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gs = load ptr, ptr %8, align 8, !tbaa !67
  %i.gt = load ptr, ptr %6, align 8, !tbaa !67
  %bcmp.i38 = call i32 @bcmp(ptr %i.gt, ptr %i.gs, i64 %i.gn)
  %i.gu = icmp eq i32 %bcmp.i38, 0
  %i.gv = zext i1 %i.gu to i8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit39

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit37, %bb.ac, %bb.ad
  %i.gw = phi i8 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit37 ], [ %i.gv, %bb.ad ], [ 1, %bb.ac ]
  store i8 %i.gw, ptr %i.d, align 1, !tbaa !125
  %i.gx = invoke noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.fc, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 1 dereferenceable(1) @.str.6, ptr noundef nonnull @.str.9, i32 noundef 318)
          to label %_ZN5boost5beast9unit_test5suite6expectIbEEbRKT_PKci.exit40 unwind label %bb.dx ; 0 uses

_ZN5boost5beast9unit_test5suite6expectIbEEbRKT_PKci.exit40: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit39
  %i.gy = load ptr, ptr %8, align 8, !tbaa !67    ; 2 uses
  %i.gz = icmp eq ptr %i.gy, %i.gl
  br i1 %i.gz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %_ZN5boost5beast9unit_test5suite6expectIbEEbRKT_PKci.exit40
  %i.ha = load i64, ptr %i.gl, align 8, !tbaa !68
  %i.hb = add i64 %i.ha, 1
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.hb) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %_ZN5boost5beast9unit_test5suite6expectIbEEbRKT_PKci.exit40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.hc = load ptr, ptr %6, align 8, !tbaa !67    ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.he = icmp eq ptr %i.hc, %i.hd
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %i.hf = load i64, ptr %i.hd, align 8, !tbaa !68
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hg) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  %i.hh = load ptr, ptr %i.x, align 8, !tbaa !113, !noalias !359 ; 5 uses
  %i.hi = load ptr, ptr %i.ac, align 8, !tbaa !115, !noalias !359 ; 4 uses
  %i.hj = load i64, ptr %i.ae, align 8, !tbaa !144, !noalias !359 ; 4 uses
  %i.hk = load i64, ptr %i.ah, align 8, !tbaa !143, !noalias !359 ; 6 uses
  %i.hl = icmp eq i64 %i.hk, 0
  br i1 %i.hl, label %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit75.thread, label %bb.ae

_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit75.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  %.not16.i.i432 = icmp ne i64 %i.ag, 0
  br label %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorINS2_14buffers_tripleEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  %i.hm = icmp eq ptr %i.hh, %i.hi
  br i1 %i.hm, label %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit75.thread755, label %bb.af

_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit75.thread755: ; preds = %bb.ae
  %.not16.i.i760 = icmp ne i64 %i.ag, 0
  br label %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorINS2_14buffers_tripleEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit

bb.af:                                            ; preds = %bb.ae
  %.not.old.i.i.i47 = icmp eq i64 %i.hj, 0
  br i1 %.not.old.i.i.i47, label %.loopexit.i.i.i61, label %.preheader.i.i.preheader.i48

.preheader.i.i.preheader.i48:                     ; preds = %bb.af
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !41, !noalias !359 ; 2 uses
  %.sroa.speculated31.i.i12.i49 = call i64 @llvm.umin.i64(i64 %i.ho, i64 %i.hj) ; 2 uses
  %.not21.i.i13.i50 = icmp ult i64 %i.hj, %i.ho
  br i1 %.not21.i.i13.i50, label %.loopexit.i.i.i61, label %.lr.ph.i51

.preheader.i.i.i55:                               ; preds = %.lr.ph.i51
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hr, i64 24
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !41, !noalias !359 ; 2 uses
  %.sroa.speculated31.i.i.i56 = call i64 @llvm.umin.i64(i64 %i.hq, i64 %i.ht) ; 2 uses
  %.not21.i.i.i57 = icmp ult i64 %i.ht, %i.hq
  br i1 %.not21.i.i.i57, label %.loopexit.i.i.i61, label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %.preheader.i.i.preheader.i48, %.preheader.i.i.i55
  %.sroa.speculated31.i.i15.i52 = phi i64 [ %.sroa.speculated31.i.i.i56, %.preheader.i.i.i55 ], [ %.sroa.speculated31.i.i12.i49, %.preheader.i.i.preheader.i48 ]
  %.060.i.i14.i53 = phi i64 [ %i.ht, %.preheader.i.i.i55 ], [ %i.hj, %.preheader.i.i.preheader.i48 ]
  %i.hr = phi ptr [ %i.hs, %.preheader.i.i.i55 ], [ %i.hh, %.preheader.i.i.preheader.i48 ] ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16 ; 3 uses
  %i.ht = sub nuw i64 %.060.i.i14.i53, %.sroa.speculated31.i.i15.i52 ; 4 uses
  %.not.i.i.i54 = icmp eq i64 %i.ht, 0
  br i1 %.not.i.i.i54, label %.loopexit.i.i.i61, label %.preheader.i.i.i55

.loopexit.i.i.i61:                                ; preds = %.lr.ph.i51, %.preheader.i.i.i55, %.preheader.i.i.preheader.i48, %bb.af
  %.sroa.0405.0 = phi ptr [ %i.hh, %bb.af ], [ %i.hh, %.preheader.i.i.preheader.i48 ], [ %i.hs, %.preheader.i.i.i55 ], [ %i.hs, %.lr.ph.i51 ] ; 7 uses
  %.sroa.14.0 = phi i64 [ 0, %bb.af ], [ %.sroa.speculated31.i.i12.i49, %.preheader.i.i.preheader.i48 ], [ 0, %.lr.ph.i51 ], [ %.sroa.speculated31.i.i.i56, %.preheader.i.i.i55 ] ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.0405.0, i64 8
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !41, !noalias !359
  %i.hw = sub i64 %i.hv, %.sroa.14.0              ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.0405.0, i64 16 ; 3 uses
  %i.hy = icmp eq ptr %i.hx, %i.hi
  br i1 %i.hy, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.loopexit.i.i.i61
  %.sroa.speculated.i.i.i72 = call i64 @llvm.umin.i64(i64 %i.hk, i64 %i.hw)
  br label %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit75

bb.ah:                                            ; preds = %.loopexit.i.i.i61
  %.not22.i.i.i62 = icmp ult i64 %i.hw, %i.hk
  br i1 %.not22.i.i.i62, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.hz = sub nuw i64 %i.hk, %i.hw
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %.sroa.7.0 = phi ptr [ %i.hi, %bb.ai ], [ %i.hx, %bb.ah ] ; 3 uses
  %i.ia = phi i64 [ -1, %bb.ai ], [ %i.hk, %bb.ah ]
  %.061.i.i.i63 = phi i64 [ %i.hz, %bb.ai ], [ %i.hk, %bb.ah ] ; 2 uses
  %.0.i.i.i64 = phi ptr [ %i.hx, %bb.ai ], [ %.sroa.0405.0, %bb.ah ] ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.0.i.i.i64, i64 16 ; 2 uses
  %i.ic = icmp eq ptr %i.ib, %.sroa.7.0
  br i1 %i.ic, label %._crit_edge.i.i.i69, label %.lr.ph.i.i.i65

._crit_edge.i.i.i69:                              ; preds = %bb.ak, %bb.aj
  %.162.lcssa.i.i.i70 = phi i64 [ %.061.i.i.i63, %bb.aj ], [ %i.ig, %bb.ak ]
  %.sroa.speculated41.i.i.i71 = call i64 @llvm.umin.i64(i64 %i.ia, i64 %.162.lcssa.i.i.i70)
  br label %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit75

.lr.ph.i.i.i65:                                   ; preds = %bb.aj, %bb.ak
  %i.id = phi ptr [ %i.ih, %bb.ak ], [ %i.ib, %bb.aj ] ; 3 uses
  %.pn.i.i.i66 = phi ptr [ %i.id, %bb.ak ], [ %.0.i.i.i64, %bb.aj ]
  %.16270.i.i.i67 = phi i64 [ %i.ig, %bb.ak ], [ %.061.i.i.i63, %bb.aj ] ; 3 uses
  %.in.i.i.i68 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i66, i64 8
  %i.ie = load i64, ptr %.in.i.i.i68, align 8, !tbaa !41, !noalias !359 ; 2 uses
  %i.if = icmp ult i64 %i.ie, %.16270.i.i.i67
  br i1 %i.if, label %bb.ak, label %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit75

bb.ak:                                            ; preds = %.lr.ph.i.i.i65
  %i.ig = sub nuw i64 %.16270.i.i.i67, %i.ie      ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.id, i64 16 ; 2 uses
  %i.ii = icmp eq ptr %i.ih, %.sroa.7.0
  br i1 %i.ii, label %._crit_edge.i.i.i69, label %.lr.ph.i.i.i65, !llvm.loop !8

_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit75: ; preds = %.lr.ph.i.i.i65, %bb.ag, %._crit_edge.i.i.i69
  %.sroa.7.2 = phi ptr [ %.sroa.7.0, %._crit_edge.i.i.i69 ], [ %i.hi, %bb.ag ], [ %i.id, %.lr.ph.i.i.i65 ] ; 3 uses
  %.sroa.19.0 = phi i64 [ %.sroa.speculated41.i.i.i71, %._crit_edge.i.i.i69 ], [ %.sroa.speculated.i.i.i72, %bb.ag ], [ %.16270.i.i.i67, %.lr.ph.i.i.i65 ] ; 2 uses
  %.not16.i.i = icmp ne i64 %i.ag, 0              ; 2 uses
  %i.ij = icmp ne ptr %.sroa.0405.0, %.sroa.7.2
  %or.cond17.i.i = select i1 %.not16.i.i, i1 %i.ij, i1 false
  br i1 %or.cond17.i.i, label %.lr.ph.i.i76.preheader, label %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorINS2_14buffers_tripleEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit

.lr.ph.i.i76.preheader:                           ; preds = %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit75
  %.sroa.6.0..sroa_idx.i.i.i.peel = getelementptr inbounds nuw i8, ptr %.sroa.0405.0, i64 8
  %.sroa.6.0.copyload.i.i.i.peel = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.peel, align 8, !tbaa !30 ; 2 uses
  %..i.i.i.i.peel = call i64 @llvm.umin.i64(i64 %.sroa.14.0, i64 %.sroa.6.0.copyload.i.i.i.peel) ; 2 uses
  %.sroa.6.0.i.i.i.peel = sub i64 %.sroa.6.0.copyload.i.i.i.peel, %..i.i.i.i.peel ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0405.0, i64 16 ; 2 uses
  %i.il = icmp ne ptr %i.ik, %.sroa.7.2           ; 2 uses
  %.sroa.speculated.i.i.i78.peel = call i64 @llvm.umin.i64(i64 %.sroa.6.0.i.i.i.peel, i64 %.sroa.19.0)
  %.sroa.6.1.i.i.i.peel = select i1 %i.il, i64 %.sroa.6.0.i.i.i.peel, i64 %.sroa.speculated.i.i.i78.peel ; 2 uses
  %i.im = call i64 @llvm.umin.i64(i64 %.sroa.6.1.i.i.i.peel, i64 %spec.select) ; 5 uses
  %.not.i.i.i77.peel = icmp eq i64 %.sroa.6.1.i.i.i.peel, 0
  br i1 %.not.i.i.i77.peel, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.peel, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i.i76.preheader
  %.sroa.03.0.copyload.i.i.i.peel = load ptr, ptr %.sroa.0405.0, align 8, !tbaa !29
  %.sroa.03.0.i.i.i.peel = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i.i.peel, i64 %..i.i.i.i.peel
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.03.0.i.i.i.peel, ptr nonnull align 1 @.str.10, i64 %i.im, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.peel

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.peel: ; preds = %bb.al, %.lr.ph.i.i76.preheader
  %i.in = sub nuw nsw i64 %spec.select, %i.im     ; 2 uses
  %.not.i.i.peel = icmp ne i64 %i.in, 0
  %or.cond.i.i.peel = and i1 %.not.i.i.peel, %i.il
  br i1 %or.cond.i.i.peel, label %.lr.ph.i.i76.peel.next, label %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorINS2_14buffers_tripleEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit

.lr.ph.i.i76.peel.next:                           ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.peel
  %i.io = getelementptr inbounds nuw i8, ptr @.str.10, i64 %i.im
  br label %.lr.ph.i.i76

.lr.ph.i.i76:                                     ; preds = %.lr.ph.i.i76.peel.next, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i
  %.021.i.i = phi i64 [ %i.is, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ], [ %i.im, %.lr.ph.i.i76.peel.next ]
  %.sroa.07.020.i.i = phi ptr [ %i.it, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ], [ %i.io, %.lr.ph.i.i76.peel.next ] ; 2 uses
  %.sroa.6.019.i.i = phi i64 [ %i.iu, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ], [ %i.in, %.lr.ph.i.i76.peel.next ] ; 2 uses
  %.sroa.412.018.i.i = phi ptr [ %i.ip, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ], [ %i.ik, %.lr.ph.i.i76.peel.next ] ; 3 uses
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.412.018.i.i, i64 8
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !tbaa !30 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.412.018.i.i, i64 16 ; 2 uses
  %i.iq = icmp ne ptr %i.ip, %.sroa.7.2           ; 2 uses
  %.sroa.speculated.i.i.i78 = call i64 @llvm.umin.i64(i64 %.sroa.6.0.copyload.i.i.i, i64 %.sroa.19.0)
  %.sroa.6.1.i.i.i = select i1 %i.iq, i64 %.sroa.6.0.copyload.i.i.i, i64 %.sroa.speculated.i.i.i78 ; 2 uses
  %i.ir = call i64 @llvm.umin.i64(i64 %.sroa.6.1.i.i.i, i64 %.sroa.6.019.i.i) ; 4 uses
  %.not.i.i.i77 = icmp eq i64 %.sroa.6.1.i.i.i, 0
  br i1 %.not.i.i.i77, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i.i76
  %.sroa.03.0.copyload.i.i.i = load ptr, ptr %.sroa.412.018.i.i, align 8, !tbaa !29
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.03.0.copyload.i.i.i, ptr align 1 %.sroa.07.020.i.i, i64 %i.ir, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i: ; preds = %bb.am, %.lr.ph.i.i76
  %i.is = add i64 %i.ir, %.021.i.i                ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.07.020.i.i, i64 %i.ir
  %i.iu = sub nuw nsw i64 %.sroa.6.019.i.i, %i.ir ; 2 uses
  %.not.i.i = icmp ne i64 %i.iu, 0
  %or.cond.i.i = and i1 %.not.i.i, %i.iq
  br i1 %or.cond.i.i, label %.lr.ph.i.i76, label %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorINS2_14buffers_tripleEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit, !llvm.loop !334

_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorINS2_14buffers_tripleEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit: ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.peel, %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit75.thread755, %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit75.thread, %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit75
  %.not16.i.i434 = phi i1 [ %.not16.i.i, %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit75 ], [ %.not16.i.i432, %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit75.thread ], [ %.not16.i.i760, %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit75.thread755 ], [ true, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.peel ], [ true, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ]
  %.0.lcssa.i.i = phi i64 [ 0, %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit75 ], [ 0, %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit75.thread ], [ 0, %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit75.thread755 ], [ %i.im, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.peel ], [ %i.is, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ]
  %i.iv = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  %i.iw = icmp eq i64 %.0.lcssa.i.i, %spec.select
  %i.ix = zext i1 %i.iw to i8
  store i8 %i.ix, ptr %i.e, align 1, !tbaa !125
  %i.iy = call noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.iv, ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull align 1 dereferenceable(1) @.str.6, ptr noundef nonnull @.str.9, i32 noundef 322) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  %i.iz = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !360)
  %i.ja = load ptr, ptr %i.x, align 8, !tbaa !113, !noalias !360 ; 7 uses
  %i.jb = load ptr, ptr %i.ac, align 8, !tbaa !115, !noalias !360 ; 4 uses
  %i.jc = load i64, ptr %i.ae, align 8, !tbaa !144, !noalias !360 ; 4 uses
  %i.jd = load i64, ptr %i.ah, align 8, !tbaa !143, !noalias !360 ; 6 uses
  store ptr %i.ja, ptr %10, align 8, !tbaa !146, !alias.scope !360
  %i.je = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  store ptr %i.jb, ptr %i.je, align 8, !tbaa !147, !alias.scope !360
  %i.jf = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store i64 0, ptr %i.jf, align 8, !tbaa !148, !alias.scope !360
  %i.jg = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  %i.jh = icmp eq i64 %i.jd, 0
  br i1 %i.jh, label %.thread88.i.i.i106, label %bb.an

.thread88.i.i.i106:                               ; preds = %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorINS2_14buffers_tripleEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit
  store ptr %i.ja, ptr %i.je, align 8, !tbaa !147, !alias.scope !360
  br label %bb.ao

bb.an:                                            ; preds = %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorINS2_14buffers_tripleEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit
  %i.ji = icmp eq ptr %i.ja, %i.jb
  br i1 %i.ji, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an, %.thread88.i.i.i106
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jf, i8 0, i64 16, i1 false), !alias.scope !360
  br label %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit107

bb.ap:                                            ; preds = %bb.an
  %.not.old.i.i.i79 = icmp eq i64 %i.jc, 0
  br i1 %.not.old.i.i.i79, label %.loopexit.i.i.i93, label %.preheader.i.i.preheader.i80

.preheader.i.i.preheader.i80:                     ; preds = %bb.ap
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !41, !noalias !360 ; 2 uses
  %.sroa.speculated31.i.i12.i81 = call i64 @llvm.umin.i64(i64 %i.jk, i64 %i.jc) ; 2 uses
  %.not21.i.i13.i82 = icmp ult i64 %i.jc, %i.jk
  br i1 %.not21.i.i13.i82, label %.loopexit.i.i.i93.sink.split, label %.lr.ph.i83

.preheader.i.i.i87:                               ; preds = %.lr.ph.i83
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jn, i64 24
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !41, !noalias !360 ; 2 uses
  %.sroa.speculated31.i.i.i88 = call i64 @llvm.umin.i64(i64 %i.jm, i64 %i.jp) ; 2 uses
  %.not21.i.i.i89 = icmp ult i64 %i.jp, %i.jm
  br i1 %.not21.i.i.i89, label %.loopexit.i.i.i93.sink.split, label %.lr.ph.i83

.lr.ph.i83:                                       ; preds = %.preheader.i.i.preheader.i80, %.preheader.i.i.i87
  %.sroa.speculated31.i.i15.i84 = phi i64 [ %.sroa.speculated31.i.i.i88, %.preheader.i.i.i87 ], [ %.sroa.speculated31.i.i12.i81, %.preheader.i.i.preheader.i80 ]
  %.060.i.i14.i85 = phi i64 [ %i.jp, %.preheader.i.i.i87 ], [ %i.jc, %.preheader.i.i.preheader.i80 ]
  %i.jn = phi ptr [ %i.jo, %.preheader.i.i.i87 ], [ %i.ja, %.preheader.i.i.preheader.i80 ] ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16 ; 3 uses
  %i.jp = sub nuw i64 %.060.i.i14.i85, %.sroa.speculated31.i.i15.i84 ; 4 uses
  %.not.i.i.i86 = icmp eq i64 %i.jp, 0
  br i1 %.not.i.i.i86, label %.loopexit.i.i.i93.sink.split, label %.preheader.i.i.i87

.loopexit.i.i.i93.sink.split:                     ; preds = %.lr.ph.i83, %.preheader.i.i.i87, %.preheader.i.i.preheader.i80
  %.sink915 = phi ptr [ %i.ja, %.preheader.i.i.preheader.i80 ], [ %i.jo, %.preheader.i.i.i87 ], [ %i.jo, %.lr.ph.i83 ] ; 2 uses
  %.sink914 = phi i64 [ %.sroa.speculated31.i.i12.i81, %.preheader.i.i.preheader.i80 ], [ 0, %.lr.ph.i83 ], [ %.sroa.speculated31.i.i.i88, %.preheader.i.i.i87 ] ; 2 uses
  store ptr %.sink915, ptr %10, align 8, !alias.scope !360
  store i64 %.sink914, ptr %i.jf, align 8, !alias.scope !360
  br label %.loopexit.i.i.i93

.loopexit.i.i.i93:                                ; preds = %.loopexit.i.i.i93.sink.split, %bb.ap
  %i.jq = phi i64 [ 0, %bb.ap ], [ %.sink914, %.loopexit.i.i.i93.sink.split ]
  %i.jr = phi ptr [ %i.ja, %bb.ap ], [ %.sink915, %.loopexit.i.i.i93.sink.split ] ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !41, !noalias !360
  %i.ju = sub i64 %i.jt, %i.jq                    ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jr, i64 16 ; 5 uses
  %i.jw = icmp eq ptr %i.jv, %i.jb
  br i1 %i.jw, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.loopexit.i.i.i93
  %.sroa.speculated.i.i.i104 = call i64 @llvm.umin.i64(i64 %i.jd, i64 %i.ju)
  store i64 %.sroa.speculated.i.i.i104, ptr %i.jg, align 8, !tbaa !150, !alias.scope !360
  store ptr %i.jv, ptr %i.je, align 8, !tbaa !147, !alias.scope !360
  br label %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit107

bb.ar:                                            ; preds = %.loopexit.i.i.i93
  %.not22.i.i.i94 = icmp ult i64 %i.ju, %i.jd
  br i1 %.not22.i.i.i94, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store ptr %i.jv, ptr %i.je, align 8, !tbaa !147, !alias.scope !360
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.jx = sub nuw i64 %i.jd, %i.ju
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.jy = phi i64 [ -1, %bb.at ], [ %i.jd, %bb.as ]
  %i.jz = phi ptr [ %i.jb, %bb.at ], [ %i.jv, %bb.as ] ; 2 uses
  %.061.i.i.i95 = phi i64 [ %i.jx, %bb.at ], [ %i.jd, %bb.as ] ; 2 uses
  %.0.i.i.i96 = phi ptr [ %i.jv, %bb.at ], [ %i.jr, %bb.as ] ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.0.i.i.i96, i64 16 ; 2 uses
  %i.kb = icmp eq ptr %i.ka, %i.jz
  br i1 %i.kb, label %._crit_edge.i.i.i101, label %.lr.ph.i.i.i97

._crit_edge.i.i.i101:                             ; preds = %bb.av, %bb.au
  %.162.lcssa.i.i.i102 = phi i64 [ %.061.i.i.i95, %bb.au ], [ %i.kf, %bb.av ]
  %.sroa.speculated41.i.i.i103 = call i64 @llvm.umin.i64(i64 %i.jy, i64 %.162.lcssa.i.i.i102)
  store i64 %.sroa.speculated41.i.i.i103, ptr %i.jg, align 8, !tbaa !150, !alias.scope !360
  br label %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit107

.lr.ph.i.i.i97:                                   ; preds = %bb.au, %bb.av
  %i.kc = phi ptr [ %i.kg, %bb.av ], [ %i.ka, %bb.au ] ; 3 uses
  %.pn.i.i.i98 = phi ptr [ %i.kc, %bb.av ], [ %.0.i.i.i96, %bb.au ]
  %.16270.i.i.i99 = phi i64 [ %i.kf, %bb.av ], [ %.061.i.i.i95, %bb.au ] ; 3 uses
  %.in.i.i.i100 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i98, i64 8
  %i.kd = load i64, ptr %.in.i.i.i100, align 8, !tbaa !41, !noalias !360 ; 2 uses
  %i.ke = icmp ult i64 %i.kd, %.16270.i.i.i99
  br i1 %i.ke, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.lr.ph.i.i.i97
  %i.kf = sub nuw i64 %.16270.i.i.i99, %i.kd      ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kc, i64 16 ; 2 uses
  %i.kh = icmp eq ptr %i.kg, %i.jz
  br i1 %i.kh, label %._crit_edge.i.i.i101, label %.lr.ph.i.i.i97, !llvm.loop !8

bb.aw:                                            ; preds = %.lr.ph.i.i.i97
  store i64 %.16270.i.i.i99, ptr %i.jg, align 8, !tbaa !150, !alias.scope !360
  store ptr %i.kc, ptr %i.je, align 8, !tbaa !147, !alias.scope !360
  br label %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit107

_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit107: ; preds = %bb.ao, %bb.aq, %._crit_edge.i.i.i101, %bb.aw
  call void @_ZN5boost5beast17buffers_to_stringINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb1EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
  %i.ki = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !69
  %i.kk = icmp eq i64 %i.kj, %spec.select
  br i1 %i.kk, label %bb.ax, label %_ZN5boost4coreeqISaIcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcET_EENS0_17basic_string_viewIcEE.exit

bb.ax:                                            ; preds = %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit107
  %i.kl = icmp eq i64 %i.ag, 0
  br i1 %i.kl, label %_ZN5boost4coreeqISaIcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcET_EENS0_17basic_string_viewIcEE.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.km = load ptr, ptr %9, align 8, !tbaa !67
  %bcmp.i108 = call i32 @bcmp(ptr %i.km, ptr nonnull @.str.10, i64 %spec.select)
  %i.kn = icmp eq i32 %bcmp.i108, 0
  %i.ko = zext i1 %i.kn to i8
  br label %_ZN5boost4coreeqISaIcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcET_EENS0_17basic_string_viewIcEE.exit

_ZN5boost4coreeqISaIcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcET_EENS0_17basic_string_viewIcEE.exit: ; preds = %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit107, %bb.ax, %bb.ay
  %i.kp = phi i8 [ 0, %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit107 ], [ %i.ko, %bb.ay ], [ 1, %bb.ax ]
  store i8 %i.kp, ptr %i.f, align 1, !tbaa !125
  %i.kq = invoke noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.iz, ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 1 dereferenceable(1) @.str.6, ptr noundef nonnull @.str.9, i32 noundef 324)
          to label %_ZN5boost5beast9unit_test5suite6expectIbEEbRKT_PKci.exit109 unwind label %bb.dy ; 0 uses

_ZN5boost5beast9unit_test5suite6expectIbEEbRKT_PKci.exit109: ; preds = %_ZN5boost4coreeqISaIcEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcET_EENS0_17basic_string_viewIcEE.exit
  %i.kr = load ptr, ptr %9, align 8, !tbaa !67    ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.kt = icmp eq ptr %i.kr, %i.ks
  br i1 %i.kt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %_ZN5boost5beast9unit_test5suite6expectIbEEbRKT_PKci.exit109
  %i.ku = load i64, ptr %i.ks, align 8, !tbaa !68
  %i.kv = add i64 %i.ku, 1
  call void @_ZdlPvm(ptr noundef %i.kr, i64 noundef %i.kv) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %_ZN5boost5beast9unit_test5suite6expectIbEEbRKT_PKci.exit109, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  %i.kw = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !361)
  call void @llvm.experimental.noalias.scope.decl(metadata !362)
  %i.kx = load ptr, ptr %i.x, align 8, !tbaa !113, !noalias !363 ; 7 uses
  %i.ky = load ptr, ptr %i.ac, align 8, !tbaa !115, !noalias !363 ; 4 uses
  %i.kz = load i64, ptr %i.ae, align 8, !tbaa !144, !noalias !363 ; 4 uses
  %i.la = load i64, ptr %i.ah, align 8, !tbaa !143, !noalias !363 ; 6 uses
  store ptr %i.kx, ptr %12, align 8, !tbaa !152, !alias.scope !363
  %i.lb = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 5 uses
  store ptr %i.ky, ptr %i.lb, align 8, !tbaa !153, !alias.scope !363
  %i.lc = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store i64 0, ptr %i.lc, align 8, !tbaa !154, !alias.scope !363
  %i.ld = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 3 uses
  %i.le = icmp eq i64 %i.la, 0
  br i1 %i.le, label %.thread88.i.i.i.i140, label %bb.az

.thread88.i.i.i.i140:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112
  store ptr %i.kx, ptr %i.lb, align 8, !tbaa !153, !alias.scope !363
end_hunk_0
