Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/coordinateoperationfactory?download=true
inline.NumInlined: 9028
inline.NumDeleted: 2068
loop-unroll.NumCompletelyUnrolled: 114
loop-unroll.NumUnrolled: 114
begin_hunk_0_@"_ZZN5osgeo4proj9operation26CoordinateOperationFactory7Private30createOperationsWithDatumPivotERSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrINS1_19CoordinateOperationEEEESaISB_EERKNS7_IS8_INS0_3crs3CRSEEEERKNS0_4util8optionalINS0_6common9DataEpochEEESK_SR_PKNSF_11GeodeticCRSESU_RNS3_7ContextEENK3$_0clESK_SK_RKSB_bb":bb.a
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation20PointMotionOperationEEEEEvPT_.exit.i.i.i202

_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation20PointMotionOperationEEEEEvPT_.exit.i.i.i202: ; preds = %bb.bk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i200, %bb.bg, %.lr.ph.i.i.i196
  %i.go = getelementptr inbounds nuw i8, ptr %.05.i.i.i197, i64 16 ; 2 uses
  %.not.i.i.i203 = icmp eq ptr %i.go, %i.fw
  br i1 %.not.i.i.i203, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation20PointMotionOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i204, label %.lr.ph.i.i.i196, !llvm.loop !46

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation20PointMotionOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i204: ; preds = %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation20PointMotionOperationEEEEEvPT_.exit.i.i.i202
  %.pr.i205 = load ptr, ptr %6, align 8, !tbaa !320
  br label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation20PointMotionOperationEEEES9_EvT_SB_RSaIT0_E.exit.i206

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation20PointMotionOperationEEEES9_EvT_SB_RSaIT0_E.exit.i206: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation20PointMotionOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i204, %bb.be
  %i.gp = phi ptr [ %.pr.i205, %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation20PointMotionOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i204 ], [ %i.fv, %bb.be ] ; 3 uses
  %.not.i.i1.i207 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i1.i207, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation20PointMotionOperationEEEESaIS9_EED2Ev.exit208, label %bb.bl

bb.bl:                                            ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation20PointMotionOperationEEEES9_EvT_SB_RSaIT0_E.exit.i206
  %i.gq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !322
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = ptrtoint ptr %i.gp to i64
  %i.gu = sub i64 %i.gs, %i.gt
  call void @_ZdlPvm(ptr noundef nonnull %i.gp, i64 noundef %i.gu) #32
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation20PointMotionOperationEEEESaIS9_EED2Ev.exit208

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation20PointMotionOperationEEEESaIS9_EED2Ev.exit208: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation20PointMotionOperationEEEES9_EvT_SB_RSaIT0_E.exit.i206, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.bo

bb.bm:                                            ; preds = %bb.bd, %bb.y
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bd ], [ %i.cf, %bb.y ]
  call void @_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation20PointMotionOperationEEEESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #31
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.x
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.bm ], [ %i.ce, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit588

bb.bo:                                            ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation20PointMotionOperationEEEESaIS9_EED2Ev.exit208, %bb.c, %bb.b, %bb.a
  %.sroa.13763.1 = phi ptr [ null, %bb.c ], [ %.sroa.13763.0, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation20PointMotionOperationEEEESaIS9_EED2Ev.exit208 ], [ null, %bb.b ], [ null, %bb.a ] ; 5 uses
  %.sroa.19768.1 = phi i64 [ 0, %bb.c ], [ %.sroa.19768.0, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation20PointMotionOperationEEEESaIS9_EED2Ev.exit208 ], [ 0, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.sroa.0745.2 = phi ptr [ null, %bb.c ], [ %.sroa.0745.1, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation20PointMotionOperationEEEESaIS9_EED2Ev.exit208 ], [ null, %bb.b ], [ null, %bb.a ] ; 11 uses
  %.sroa.13.2 = phi ptr [ null, %bb.c ], [ %.sroa.13.1, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation20PointMotionOperationEEEESaIS9_EED2Ev.exit208 ], [ null, %bb.b ], [ null, %bb.a ] ; 5 uses
  %.sroa.19.2 = phi i64 [ 0, %bb.c ], [ %.sroa.19.1, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation20PointMotionOperationEEEESaIS9_EED2Ev.exit208 ], [ 0, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.sroa.0757.1 = phi ptr [ null, %bb.c ], [ %.sroa.0757.0, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation20PointMotionOperationEEEESaIS9_EED2Ev.exit208 ], [ null, %bb.b ], [ null, %bb.a ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  br i1 %5, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !543, !nonnull !118, !align !197
  invoke void @_ZN5osgeo4proj9operation26CoordinateOperationFactory7Private23findOpsInRegistryDirectERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEESD_RNS3_7ContextERb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.35") align 8 %14, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(112) %i.gw, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.br unwind label %bb.dh

bb.bq:                                            ; preds = %bb.bo
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !542, !nonnull !118, !align !197 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !543, !nonnull !118, !align !197
  invoke void @_ZN5osgeo4proj9operation26CoordinateOperationFactory7Private16createOperationsERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEERKNS0_4util8optionalINS0_6common9DataEpochEEESD_SK_RNS3_7ContextE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.35") align 8 %14, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.gy, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.gy, ptr noundef nonnull align 8 dereferenceable(112) %i.ha)
          to label %bb.br unwind label %bb.dh

bb.br:                                            ; preds = %bb.bq, %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !546, !nonnull !118
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !242, !range !117, !noundef !118
  %i.he = trunc nuw i8 %i.hd to i1                ; 3 uses
  %i.hf = load ptr, ptr %2, align 8, !tbaa !162   ; 2 uses
  br i1 %i.he, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  %i.hg = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  store ptr %i.hg, ptr %17, align 8, !tbaa !229
  %i.hh = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 0, ptr %i.hh, align 8, !tbaa !206
  store i8 0, ptr %i.hg, align 8, !tbaa !90
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !547, !nonnull !118, !align !197
  invoke void @_ZNK5osgeo4proj3crs3CRS11promoteTo3DERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrINS0_2io15DatabaseContextEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.40") align 8 %16, ptr noundef nonnull align 8 dereferenceable(64) %i.hf, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(16) %i.hj)
          to label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEC2ERKS8_.exit unwind label %.thread

bb.bt:                                            ; preds = %bb.br
  store ptr %i.hf, ptr %16, align 8, !tbaa !162
  %i.hk = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !89 ; 3 uses
  store ptr %i.hm, ptr %i.hk, align 8, !tbaa !89
  %.not.i.i.i.i209 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i.i.i209, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEC2ERKS8_.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8 ; 3 uses
  %i.ho = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i.i210 = icmp eq i8 %i.ho, 0
  br i1 %.not.i.i.i.i.i210, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hp = load i32, ptr %i.hn, align 4, !tbaa !91
  %i.hq = add nsw i32 %i.hp, 1
  store i32 %i.hq, ptr %i.hn, align 4, !tbaa !91
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEC2ERKS8_.exit

bb.bw:                                            ; preds = %bb.bu
  %i.hr = atomicrmw volatile add ptr %i.hn, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEC2ERKS8_.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEC2ERKS8_.exit: ; preds = %bb.bw, %bb.bv, %bb.bt, %bb.bs
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !542, !nonnull !118, !align !197 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !548, !nonnull !118, !align !197
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !543, !nonnull !118, !align !197
  invoke void @_ZN5osgeo4proj9operation26CoordinateOperationFactory7Private16createOperationsERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEERKNS0_4util8optionalINS0_6common9DataEpochEEESD_SK_RNS3_7ContextE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.35") align 8 %15, ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %i.ht, ptr noundef nonnull align 8 dereferenceable(16) %i.hv, ptr noundef nonnull align 8 dereferenceable(16) %i.ht, ptr noundef nonnull align 8 dereferenceable(112) %i.hx)
          to label %bb.bx unwind label %bb.di

bb.bx:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEC2ERKS8_.exit
  %i.hy = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !89 ; 8 uses
  %.not.i.i.i211 = icmp eq ptr %i.hz, null
  br i1 %.not.i.i.i211, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8 ; 4 uses
  %i.ib = load atomic i64, ptr %i.ia acquire, align 8 ; 2 uses
  %i.ic = icmp eq i64 %i.ib, 4294967297
  %i.id = trunc i64 %i.ib to i32                  ; 2 uses
  br i1 %i.ic, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  store i32 0, ptr %i.ia, align 8, !tbaa !93
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hz, i64 12
  store i32 0, ptr %i.ie, align 4, !tbaa !94
  %i.if = load ptr, ptr %i.hz, align 8, !tbaa !80
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.ih = load ptr, ptr %i.ig, align 8
  call void %i.ih(ptr noundef nonnull align 8 dereferenceable(16) %i.hz) #31, !inline_history !11
  %i.ii = load ptr, ptr %i.hz, align 8, !tbaa !80
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 24
  %i.ik = load ptr, ptr %i.ij, align 8
  call void %i.ik(ptr noundef nonnull align 8 dereferenceable(16) %i.hz) #31, !inline_history !11
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit

bb.ca:                                            ; preds = %bb.by
  %i.il = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i212 = icmp eq i8 %i.il, 0
  br i1 %.not.i.i.i.i212, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.im = add nsw i32 %i.id, -1
  store i32 %i.im, ptr %i.ia, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i213

bb.cc:                                            ; preds = %bb.ca
  %i.in = atomicrmw volatile add ptr %i.ia, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i213

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i213: ; preds = %bb.cc, %bb.cb
  %.0.i.i.i.i.i214 = phi i32 [ %i.id, %bb.cb ], [ %i.in, %bb.cc ]
  %i.io = icmp eq i32 %.0.i.i.i.i.i214, 1
  br i1 %i.io, label %bb.cd, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit, !prof !95

bb.cd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i213
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hz) #31
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit: ; preds = %bb.bx, %bb.bz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i213, %bb.cd
  br i1 %i.he, label %bb.ce, label %.critedge

bb.ce:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit
  %i.ip = load ptr, ptr %17, align 8, !tbaa !132  ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ir = icmp eq ptr %i.ip, %i.iq
  br i1 %i.ir, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ce
  %i.is = load i64, ptr %i.iq, align 8, !tbaa !90
  %i.it = add i64 %i.is, 1
  call void @_ZdlPvm(ptr noundef %i.ip, i64 noundef %i.it) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  br label %.critedge

.critedge:                                        ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  %i.iu = load ptr, ptr %15, align 8, !tbaa !157  ; 5 uses
  %i.iv = ptrtoint ptr %.sroa.13763.1 to i64
  %i.iw = ptrtoint ptr %.sroa.0757.1 to i64       ; 2 uses
  %i.ix = sub i64 %i.iv, %i.iw
  %i.iy = ashr exact i64 %i.ix, 4
  %i.iz = ptrtoint ptr %.sroa.13.2 to i64
  %i.ja = ptrtoint ptr %.sroa.0745.2 to i64       ; 2 uses
  %i.jb = sub i64 %i.iz, %i.ja
  %i.jc = ashr exact i64 %i.jb, 4
  %46 = call i64 @llvm.umax.i64(i64 %i.iy, i64 %i.jc)
  %.sroa.speculated = call i64 @llvm.umax.i64(i64 %46, i64 1)
  %i.jd = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 5 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 6 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 6 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.jk = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.jl = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.jm = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.jn = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.jo = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 6 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 5 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.js = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 6 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.ju = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 6 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.jw = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.jx = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.jy = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.jz = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.ka = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 21 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 17 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.kd = icmp eq ptr %.sroa.0757.1, %.sroa.13763.1 ; 2 uses
  %i.ke = icmp eq ptr %.sroa.0745.2, %.sroa.13.2  ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.iu, i64 8 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.kh = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.kj = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.kk = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.km = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.kn = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.ko = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.kq = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 3 uses
  %i.kr = load ptr, ptr %14, align 8, !tbaa !154
  %i.ks = load ptr, ptr %i.jd, align 8, !tbaa !154
  %i.kt = icmp eq ptr %i.kr, %i.ks
  br i1 %i.kt, label %.split.us, label %.critedge.split

.split.us.loopexit887:                            ; preds = %._crit_edge885
  %.pre904 = load ptr, ptr %15, align 8, !tbaa !157
  br label %.split.us

.split.us:                                        ; preds = %.critedge, %.split.us.loopexit887
  %i.ku = phi ptr [ %.pre904, %.split.us.loopexit887 ], [ %i.iu, %.critedge ] ; 3 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !158 ; 2 uses
  %.not4.i.i.i216 = icmp eq ptr %i.ku, %i.kw
  br i1 %.not4.i.i.i216, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i227, label %.lr.ph.i.i.i217

.lr.ph.i.i.i217:                                  ; preds = %.split.us, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i223
  %.05.i.i.i218 = phi ptr [ %i.lo, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i223 ], [ %i.ku, %.split.us ] ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.05.i.i.i218, i64 8
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !89 ; 8 uses
  %.not.i.i.i.i.i.i.i219 = icmp eq ptr %i.ky, null
  br i1 %.not.i.i.i.i.i.i.i219, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i223, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph.i.i.i217
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8 ; 4 uses
  %i.la = load atomic i64, ptr %i.kz acquire, align 8 ; 2 uses
  %i.lb = icmp eq i64 %i.la, 4294967297
  %i.lc = trunc i64 %i.la to i32                  ; 2 uses
  br i1 %i.lb, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  store i32 0, ptr %i.kz, align 8, !tbaa !93
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ky, i64 12
  store i32 0, ptr %i.ld, align 4, !tbaa !94
  %i.le = load ptr, ptr %i.ky, align 8, !tbaa !80
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %i.lg = load ptr, ptr %i.lf, align 8
  call void %i.lg(ptr noundef nonnull align 8 dereferenceable(16) %i.ky) #31, !inline_history !4
  %i.lh = load ptr, ptr %i.ky, align 8, !tbaa !80
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 24
  %i.lj = load ptr, ptr %i.li, align 8
  call void %i.lj(ptr noundef nonnull align 8 dereferenceable(16) %i.ky) #31, !inline_history !4
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i223

bb.ch:                                            ; preds = %bb.cf
  %i.lk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i.i.i.i.i220 = icmp eq i8 %i.lk, 0
  br i1 %.not.i.i.i.i.i.i.i.i220, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ll = add nsw i32 %i.lc, -1
  store i32 %i.ll, ptr %i.kz, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i221

bb.cj:                                            ; preds = %bb.ch
  %i.lm = atomicrmw volatile add ptr %i.kz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i221

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i221: ; preds = %bb.cj, %bb.ci
  %.0.i.i.i.i.i.i.i.i.i222 = phi i32 [ %i.lc, %bb.ci ], [ %i.lm, %bb.cj ]
  %i.ln = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i222, 1
  br i1 %i.ln, label %bb.ck, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i223, !prof !95

bb.ck:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i221
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ky) #31
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i223

_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i223: ; preds = %bb.ck, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i221, %bb.cg, %.lr.ph.i.i.i217
  %i.lo = getelementptr inbounds nuw i8, ptr %.05.i.i.i218, i64 16 ; 2 uses
  %.not.i.i.i224 = icmp eq ptr %i.lo, %i.kw
  br i1 %.not.i.i.i224, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i225, label %.lr.ph.i.i.i217, !llvm.loop !5

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i225: ; preds = %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i223
  %.pr.i226 = load ptr, ptr %15, align 8, !tbaa !157
  br label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i227

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i227: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i225, %.split.us
  %i.lp = phi ptr [ %.pr.i226, %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i225 ], [ %i.ku, %.split.us ] ; 3 uses
  %.not.i.i1.i228 = icmp eq ptr %i.lp, null
  br i1 %.not.i.i1.i228, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit229, label %bb.cl

bb.cl:                                            ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i227
  %i.lq = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !159
  %i.ls = ptrtoint ptr %i.lr to i64
  %i.lt = ptrtoint ptr %i.lp to i64
  %i.lu = sub i64 %i.ls, %i.lt
  call void @_ZdlPvm(ptr noundef nonnull %i.lp, i64 noundef %i.lu) #32
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit229

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit229: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i227, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  %i.lv = load ptr, ptr %14, align 8, !tbaa !157  ; 3 uses
  %i.lw = load ptr, ptr %i.jd, align 8, !tbaa !158 ; 2 uses
  %.not4.i.i.i230 = icmp eq ptr %i.lv, %i.lw
  br i1 %.not4.i.i.i230, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i241, label %.lr.ph.i.i.i231

.lr.ph.i.i.i231:                                  ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit229, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i237
  %.05.i.i.i232 = phi ptr [ %i.mo, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i237 ], [ %i.lv, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit229 ] ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.05.i.i.i232, i64 8
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !89 ; 8 uses
  %.not.i.i.i.i.i.i.i233 = icmp eq ptr %i.ly, null
  br i1 %.not.i.i.i.i.i.i.i233, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i237, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph.i.i.i231
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8 ; 4 uses
  %i.ma = load atomic i64, ptr %i.lz acquire, align 8 ; 2 uses
  %i.mb = icmp eq i64 %i.ma, 4294967297
  %i.mc = trunc i64 %i.ma to i32                  ; 2 uses
  br i1 %i.mb, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  store i32 0, ptr %i.lz, align 8, !tbaa !93
  %i.md = getelementptr inbounds nuw i8, ptr %i.ly, i64 12
  store i32 0, ptr %i.md, align 4, !tbaa !94
  %i.me = load ptr, ptr %i.ly, align 8, !tbaa !80
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  %i.mg = load ptr, ptr %i.mf, align 8
  call void %i.mg(ptr noundef nonnull align 8 dereferenceable(16) %i.ly) #31, !inline_history !4
  %i.mh = load ptr, ptr %i.ly, align 8, !tbaa !80
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 24
  %i.mj = load ptr, ptr %i.mi, align 8
  call void %i.mj(ptr noundef nonnull align 8 dereferenceable(16) %i.ly) #31, !inline_history !4
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i237

bb.co:                                            ; preds = %bb.cm
  %i.mk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i.i.i.i.i234 = icmp eq i8 %i.mk, 0
  br i1 %.not.i.i.i.i.i.i.i.i234, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ml = add nsw i32 %i.mc, -1
  store i32 %i.ml, ptr %i.lz, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i235

bb.cq:                                            ; preds = %bb.co
  %i.mm = atomicrmw volatile add ptr %i.lz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i235

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i235: ; preds = %bb.cq, %bb.cp
  %.0.i.i.i.i.i.i.i.i.i236 = phi i32 [ %i.mc, %bb.cp ], [ %i.mm, %bb.cq ]
  %i.mn = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i236, 1
  br i1 %i.mn, label %bb.cr, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i237, !prof !95

bb.cr:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i235
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ly) #31
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i237

_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i237: ; preds = %bb.cr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i235, %bb.cn, %.lr.ph.i.i.i231
  %i.mo = getelementptr inbounds nuw i8, ptr %.05.i.i.i232, i64 16 ; 2 uses
  %.not.i.i.i238 = icmp eq ptr %i.mo, %i.lw
  br i1 %.not.i.i.i238, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i239, label %.lr.ph.i.i.i231, !llvm.loop !5

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i239: ; preds = %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i237
  %.pr.i240 = load ptr, ptr %14, align 8, !tbaa !157
  br label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i241

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i241: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i239, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit229
  %i.mp = phi ptr [ %.pr.i240, %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i239 ], [ %i.lv, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit229 ] ; 3 uses
  %.not.i.i1.i242 = icmp eq ptr %i.mp, null
end_hunk_0
begin_hunk_1_@"_ZZN5osgeo4proj9operation26CoordinateOperationFactory7Private30createOperationsWithDatumPivotERSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrINS1_19CoordinateOperationEEEESaISB_EERKNS7_IS8_INS0_3crs3CRSEEEERKNS0_4util8optionalINS0_6common9DataEpochEEESK_SR_PKNSF_11GeodeticCRSESU_RNS3_7ContextEENK3$_0clESK_SK_RKSB_bb":bb.a
  %i.mt = ptrtoint ptr %i.mp to i64
  %i.mu = sub i64 %i.ms, %i.mt
  call void @_ZdlPvm(ptr noundef nonnull %i.mp, i64 noundef %i.mu) #32
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit243

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit243: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i241, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  br i1 %i.ke, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i255, label %.lr.ph.i.i.i245

.lr.ph.i.i.i245:                                  ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit243, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i251
  %.05.i.i.i246 = phi ptr [ %i.nm, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i251 ], [ %.sroa.0745.2, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit243 ] ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.05.i.i.i246, i64 8
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !89 ; 8 uses
  %.not.i.i.i.i.i.i.i247 = icmp eq ptr %i.mw, null
  br i1 %.not.i.i.i.i.i.i.i247, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i251, label %bb.ct

bb.ct:                                            ; preds = %.lr.ph.i.i.i245
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 8 ; 4 uses
  %i.my = load atomic i64, ptr %i.mx acquire, align 8 ; 2 uses
  %i.mz = icmp eq i64 %i.my, 4294967297
  %i.na = trunc i64 %i.my to i32                  ; 2 uses
  br i1 %i.mz, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  store i32 0, ptr %i.mx, align 8, !tbaa !93
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mw, i64 12
  store i32 0, ptr %i.nb, align 4, !tbaa !94
  %i.nc = load ptr, ptr %i.mw, align 8, !tbaa !80
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 16
  %i.ne = load ptr, ptr %i.nd, align 8
  call void %i.ne(ptr noundef nonnull align 8 dereferenceable(16) %i.mw) #31, !inline_history !4
  %i.nf = load ptr, ptr %i.mw, align 8, !tbaa !80
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 24
  %i.nh = load ptr, ptr %i.ng, align 8
  call void %i.nh(ptr noundef nonnull align 8 dereferenceable(16) %i.mw) #31, !inline_history !4
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i251

bb.cv:                                            ; preds = %bb.ct
  %i.ni = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i.i.i.i.i248 = icmp eq i8 %i.ni, 0
  br i1 %.not.i.i.i.i.i.i.i.i248, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.nj = add nsw i32 %i.na, -1
  store i32 %i.nj, ptr %i.mx, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i249

bb.cx:                                            ; preds = %bb.cv
  %i.nk = atomicrmw volatile add ptr %i.mx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i249

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i249: ; preds = %bb.cx, %bb.cw
  %.0.i.i.i.i.i.i.i.i.i250 = phi i32 [ %i.na, %bb.cw ], [ %i.nk, %bb.cx ]
  %i.nl = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i250, 1
  br i1 %i.nl, label %bb.cy, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i251, !prof !95

bb.cy:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i249
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mw) #31
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i251

_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i251: ; preds = %bb.cy, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i249, %bb.cu, %.lr.ph.i.i.i245
  %i.nm = getelementptr inbounds nuw i8, ptr %.05.i.i.i246, i64 16 ; 2 uses
  %.not.i.i.i252 = icmp eq ptr %i.nm, %.sroa.13.2
  br i1 %.not.i.i.i252, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i255, label %.lr.ph.i.i.i245, !llvm.loop !5

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i255: ; preds = %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i251, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit243
  %.not.i.i1.i256 = icmp eq ptr %.sroa.0745.2, null
  br i1 %.not.i.i1.i256, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit257, label %bb.cz

bb.cz:                                            ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i255
  %i.nn = sub i64 %.sroa.19.2, %i.ja
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0745.2, i64 noundef %i.nn) #32
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit257

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit257: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i255, %bb.cz
  br i1 %i.kd, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i269, label %.lr.ph.i.i.i259

.lr.ph.i.i.i259:                                  ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit257, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i265
  %.05.i.i.i260 = phi ptr [ %i.of, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i265 ], [ %.sroa.0757.1, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit257 ] ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.05.i.i.i260, i64 8
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !89 ; 8 uses
  %.not.i.i.i.i.i.i.i261 = icmp eq ptr %i.np, null
  br i1 %.not.i.i.i.i.i.i.i261, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i265, label %bb.da

bb.da:                                            ; preds = %.lr.ph.i.i.i259
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 8 ; 4 uses
  %i.nr = load atomic i64, ptr %i.nq acquire, align 8 ; 2 uses
  %i.ns = icmp eq i64 %i.nr, 4294967297
  %i.nt = trunc i64 %i.nr to i32                  ; 2 uses
  br i1 %i.ns, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  store i32 0, ptr %i.nq, align 8, !tbaa !93
  %i.nu = getelementptr inbounds nuw i8, ptr %i.np, i64 12
  store i32 0, ptr %i.nu, align 4, !tbaa !94
  %i.nv = load ptr, ptr %i.np, align 8, !tbaa !80
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  %i.nx = load ptr, ptr %i.nw, align 8
  call void %i.nx(ptr noundef nonnull align 8 dereferenceable(16) %i.np) #31, !inline_history !4
  %i.ny = load ptr, ptr %i.np, align 8, !tbaa !80
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 24
  %i.oa = load ptr, ptr %i.nz, align 8
  call void %i.oa(ptr noundef nonnull align 8 dereferenceable(16) %i.np) #31, !inline_history !4
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i265

bb.dc:                                            ; preds = %bb.da
  %i.ob = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i.i.i.i.i262 = icmp eq i8 %i.ob, 0
  br i1 %.not.i.i.i.i.i.i.i.i262, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.oc = add nsw i32 %i.nt, -1
  store i32 %i.oc, ptr %i.nq, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i263

bb.de:                                            ; preds = %bb.dc
  %i.od = atomicrmw volatile add ptr %i.nq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i263

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i263: ; preds = %bb.de, %bb.dd
  %.0.i.i.i.i.i.i.i.i.i264 = phi i32 [ %i.nt, %bb.dd ], [ %i.od, %bb.de ]
  %i.oe = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i264, 1
  br i1 %i.oe, label %bb.df, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i265, !prof !95

bb.df:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i263
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.np) #31
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i265

_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i265: ; preds = %bb.df, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i263, %bb.db, %.lr.ph.i.i.i259
  %i.of = getelementptr inbounds nuw i8, ptr %.05.i.i.i260, i64 16 ; 2 uses
  %.not.i.i.i266 = icmp eq ptr %i.of, %.sroa.13763.1
  br i1 %.not.i.i.i266, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i269, label %.lr.ph.i.i.i259, !llvm.loop !5

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i269: ; preds = %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i265, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit257
  %.not.i.i1.i270 = icmp eq ptr %.sroa.0757.1, null
  br i1 %.not.i.i1.i270, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit271, label %bb.dg

bb.dg:                                            ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i269
  %i.og = sub i64 %.sroa.19768.1, %i.iw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0757.1, i64 noundef %i.og) #32
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit271

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit271: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i269, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret void

bb.dh:                                            ; preds = %bb.bq, %bb.bp
  %i.oh = landingpad { ptr, i32 }
          cleanup
  br label %bb.rg

.thread:                                          ; preds = %bb.bs
  %i.oi = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.di:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEC2ERKS8_.exit
  %i.oj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #31
  br i1 %i.he, label %bb.dj, label %.critedge139

bb.dj:                                            ; preds = %.thread, %bb.di
  %.pn102774 = phi { ptr, i32 } [ %i.oi, %.thread ], [ %i.oj, %bb.di ]
  %i.ok = load ptr, ptr %17, align 8, !tbaa !132  ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.om = icmp eq ptr %i.ok, %i.ol
  br i1 %i.om, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272: ; preds = %bb.dj
  %i.on = load i64, ptr %i.ol, align 8, !tbaa !90
  %i.oo = add i64 %i.on, 1
  call void @_ZdlPvm(ptr noundef %i.ok, i64 noundef %i.oo) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274: ; preds = %bb.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  br label %.critedge139

.critedge139:                                     ; preds = %bb.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274
  %.pn102773 = phi { ptr, i32 } [ %i.oj, %bb.di ], [ %.pn102774, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit546

.critedge.split:                                  ; preds = %.critedge, %._crit_edge885
  %.058886 = phi i64 [ %i.ov, %._crit_edge885 ], [ 0, %.critedge ] ; 3 uses
  %i.op = load ptr, ptr %14, align 8, !tbaa !154  ; 2 uses
  %i.oq = load ptr, ptr %i.jd, align 8, !tbaa !154 ; 2 uses
  %.not830881 = icmp eq ptr %i.op, %i.oq
  br i1 %.not830881, label %._crit_edge885, label %.lr.ph884

.lr.ph884:                                        ; preds = %.critedge.split
  %i.or = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0757.1, i64 %.058886 ; 3 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 8 ; 2 uses
  %i.ot = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0745.2, i64 %.058886 ; 3 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 8 ; 2 uses
  br label %bb.dk

._crit_edge885:                                   ; preds = %bb.qc, %.critedge.split
  %i.ov = add nuw i64 %.058886, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ov, %.sroa.speculated
  br i1 %exitcond.not, label %.split.us.loopexit887, label %.critedge.split, !llvm.loop !518

bb.dk:                                            ; preds = %.lr.ph884, %bb.qc
  %.sroa.0739.0882 = phi ptr [ %i.op, %.lr.ph884 ], [ %i.azc, %bb.qc ] ; 6 uses
  %i.ow = invoke fastcc noundef zeroext i1 @_ZN5osgeo4proj9operationL14hasIdentifiersERKN7dropbox6oxygen2nnISt10shared_ptrINS1_19CoordinateOperationEEEE(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0739.0882)
          to label %bb.dl unwind label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  br i1 %i.ow, label %bb.dn, label %bb.qc

bb.dm:                                            ; preds = %bb.dk
  %i.ox = landingpad { ptr, i32 }
          cleanup
  br label %bb.qr

bb.dn:                                            ; preds = %bb.dl
  %i.oy = load ptr, ptr %.sroa.0739.0882, align 8, !tbaa !191 ; 2 uses
  %i.oz = icmp eq ptr %i.oy, null
  br i1 %i.oz, label %.thread775, label %bb.dp

bb.do:                                            ; preds = %bb.dq
  %i.pa = landingpad { ptr, i32 }
          cleanup
  br label %bb.qr

bb.dp:                                            ; preds = %bb.dn
  %i.pb = call ptr @__dynamic_cast(ptr nonnull %i.oy, ptr nonnull @_ZTIN5osgeo4proj9operation19CoordinateOperationE, ptr nonnull @_ZTIN5osgeo4proj9operation15SingleOperationE, i64 -1) #31 ; 2 uses
  %.not = icmp eq ptr %i.pb, null
  br i1 %.not, label %.thread775, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.pc = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj9operation15SingleOperation6methodEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pb) #36
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !325
  %i.pe = call noundef i32 @_ZNK5osgeo4proj9operation15OperationMethod11getEPSGCodeEv(ptr noundef nonnull align 8 dereferenceable(56) %i.pd) #36
  %i.pf = invoke noundef zeroext i1 @_ZN5osgeo4proj9operation19isAxisOrderReversalEi(i32 noundef %i.pe)
          to label %bb.dr unwind label %bb.do

bb.dr:                                            ; preds = %bb.dq
  br i1 %i.pf, label %bb.qc, label %.thread775

.thread775:                                       ; preds = %bb.dn, %bb.dr, %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.pg = load ptr, ptr %i.iu, align 8, !tbaa !191
  %i.ph = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj6common16IdentifiedObject7nameStrB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.pg) #36 ; 6 uses
  %i.pi = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ph, ptr noundef nonnull @.str.29, i64 noundef 0, i64 noundef 3) #31
  %.not.i275 = icmp eq i64 %i.pi, -1
  br i1 %.not.i275, label %bb.ds, label %_ZN5osgeo4proj9operationL20isNullTransformationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.ds:                                            ; preds = %.thread775
  %i.pj = load ptr, ptr @_ZN5osgeo4proj9operation31BALLPARK_GEOCENTRIC_TRANSLATIONE, align 8, !tbaa !316 ; 2 uses
  %i.pk = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.pj) #36 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !206 ; 4 uses
  %i.pn = icmp ult i64 %i.pm, %i.pk
  br i1 %i.pn, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit.thread.i, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit.i

_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit.i: ; preds = %bb.ds
  %i.po = load ptr, ptr %i.ph, align 8, !tbaa !132
  %bcmp.i.i = call i32 @bcmp(ptr %i.po, ptr nonnull %i.pj, i64 %i.pk)
  %i.pp = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.pp, label %_ZN5osgeo4proj9operationL20isNullTransformationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit.thread.i

_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit.thread.i: ; preds = %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit.i, %bb.ds
  %i.pq = load ptr, ptr @_ZN5osgeo4proj9operation26BALLPARK_GEOGRAPHIC_OFFSETE, align 8, !tbaa !316 ; 2 uses
  %i.pr = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.pq) #36 ; 2 uses
  %i.ps = icmp ult i64 %i.pm, %i.pr
  br i1 %i.ps, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit8.thread.i, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit8.i

_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit8.i: ; preds = %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit.thread.i
  %i.pt = load ptr, ptr %i.ph, align 8, !tbaa !132
  %bcmp.i6.i = call i32 @bcmp(ptr %i.pt, ptr nonnull %i.pq, i64 %i.pr)
  %i.pu = icmp eq i32 %bcmp.i6.i, 0
  br i1 %i.pu, label %_ZN5osgeo4proj9operationL20isNullTransformationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit8.thread.i

_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit8.thread.i: ; preds = %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit8.i, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit.thread.i
  %i.pv = load ptr, ptr @_ZN5osgeo4proj9operation22NULL_GEOGRAPHIC_OFFSETE, align 8, !tbaa !316 ; 2 uses
  %i.pw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.pv) #36 ; 2 uses
  %i.px = icmp ult i64 %i.pm, %i.pw
  br i1 %i.px, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit11.thread.i, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit11.i

_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit11.i: ; preds = %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit8.thread.i
  %i.py = load ptr, ptr %i.ph, align 8, !tbaa !132
  %bcmp.i9.i = call i32 @bcmp(ptr %i.py, ptr nonnull %i.pv, i64 %i.pw)
  %i.pz = icmp eq i32 %bcmp.i9.i, 0
  br i1 %i.pz, label %_ZN5osgeo4proj9operationL20isNullTransformationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit11.thread.i

_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit11.thread.i: ; preds = %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit11.i, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit8.thread.i
  %i.qa = load ptr, ptr @_ZN5osgeo4proj9operation27NULL_GEOCENTRIC_TRANSLATIONE, align 8, !tbaa !316 ; 2 uses
  %i.qb = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.qa) #36 ; 2 uses
  %i.qc = icmp ult i64 %i.pm, %i.qb
  br i1 %i.qc, label %_ZN5osgeo4proj9operationL20isNullTransformationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.dt

bb.dt:                                            ; preds = %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit11.thread.i
  %i.qd = load ptr, ptr %i.ph, align 8, !tbaa !132
  %bcmp.i12.i = call i32 @bcmp(ptr %i.qd, ptr nonnull %i.qa, i64 %i.qb)
  %i.qe = icmp eq i32 %bcmp.i12.i, 0
  br label %_ZN5osgeo4proj9operationL20isNullTransformationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN5osgeo4proj9operationL20isNullTransformationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit11.i, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit8.i, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #31
  br label %bb.dv

_ZN5osgeo4proj9operationL20isNullTransformationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.thread775, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit11.thread.i, %bb.dt
  %.0.i = phi i1 [ false, %.thread775 ], [ false, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit11.thread.i ], [ %i.qe, %bb.dt ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #31
  %or.cond = or i1 %4, %.0.i
  br i1 %or.cond, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %_ZN5osgeo4proj9operationL20isNullTransformationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.qf = load ptr, ptr %i.hb, align 8, !tbaa !546, !nonnull !118
  %i.qg = load i8, ptr %i.qf, align 1, !tbaa !242, !range !117, !noundef !118
  %i.qh = trunc nuw i8 %i.qg to i1
  br i1 %i.qh, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %_ZN5osgeo4proj9operationL20isNullTransformationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, %bb.du, %_ZN5osgeo4proj9operationL20isNullTransformationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %or.cond782 = phi i1 [ true, %_ZN5osgeo4proj9operationL20isNullTransformationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread ], [ false, %bb.du ], [ true, %_ZN5osgeo4proj9operationL20isNullTransformationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ]
  %.0.i780 = phi i1 [ true, %_ZN5osgeo4proj9operationL20isNullTransformationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread ], [ false, %bb.du ], [ %.0.i, %_ZN5osgeo4proj9operationL20isNullTransformationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 8 uses
  %i.qi = load ptr, ptr %.sroa.0739.0882, align 8, !tbaa !191
  invoke void @_ZNK5osgeo4proj9operation19CoordinateOperation12shallowCloneEv(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.44") align 8 %19, ptr noundef nonnull align 8 dereferenceable(72) %i.qi)
          to label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit unwind label %bb.eg

bb.dw:                                            ; preds = %bb.du
  %i.qj = getelementptr inbounds nuw i8, ptr %.sroa.0739.0882, i64 8
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !89 ; 2 uses
  %i.ql = load <2 x ptr>, ptr %.sroa.0739.0882, align 8, !tbaa !155
  store <2 x ptr> %i.ql, ptr %19, align 16, !tbaa !155
  %.not.i.i.i.i276 = icmp eq ptr %i.qk, null
  br i1 %.not.i.i.i.i276, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.thread, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qk, i64 8 ; 3 uses
  %i.qn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i.i277 = icmp eq i8 %i.qn, 0
  br i1 %.not.i.i.i.i.i277, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.qo = load i32, ptr %i.qm, align 4, !tbaa !91
  %i.qp = add nsw i32 %i.qo, 1
  store i32 %i.qp, ptr %i.qm, align 4, !tbaa !91
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.thread

bb.dz:                                            ; preds = %bb.dx
  %i.qq = atomicrmw volatile add ptr %i.qm, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.thread

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit: ; preds = %bb.dv
  br i1 %or.cond782, label %bb.ea, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.thread

bb.ea:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit
  %i.qr = load ptr, ptr %19, align 16, !tbaa !191
  %i.qs = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj6common16IdentifiedObject11identifiersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.qr) #36 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 8
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !270
  %i.qv = load ptr, ptr %i.qs, align 8, !tbaa !238 ; 2 uses
  %i.qw = ptrtoint ptr %i.qu to i64
  %i.qx = ptrtoint ptr %i.qv to i64
  %i.qy = sub i64 %i.qw, %i.qx
  %i.qz = icmp eq i64 %i.qy, 16
  br i1 %i.qz, label %bb.eb, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.thread

bb.eb:                                            ; preds = %bb.ea
  %i.ra = load ptr, ptr %i.qv, align 8, !tbaa !205
  %i.rb = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5osgeo4proj8metadata10Identifier9codeSpaceB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.ra) #36
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  %i.rd = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %i.rc, ptr noundef nonnull @.str.50, i64 noundef 0, i64 noundef 12) #31
  %i.re = icmp eq i64 %i.rd, -1
  br i1 %i.re, label %bb.ec, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.thread

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #31
  invoke void @_ZN5osgeo4proj4util11PropertyMapC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.ed unwind label %bb.eh

bb.ed:                                            ; preds = %bb.ec
  %i.rf = load ptr, ptr %19, align 16, !tbaa !191
  invoke void @_ZN5osgeo4proj9operation21addModifiedIdentifierERNS0_4util11PropertyMapEPKNS0_6common16IdentifiedObjectEbb(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %i.rf, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %bb.ee unwind label %bb.ei

bb.ee:                                            ; preds = %bb.ed
  %i.rg = load ptr, ptr %19, align 16, !tbaa !191
  invoke void @_ZN5osgeo4proj9operation19CoordinateOperation13setPropertiesERKNS0_4util11PropertyMapE(ptr noundef nonnull align 8 dereferenceable(72) %i.rg, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.ef unwind label %bb.ei

bb.ef:                                            ; preds = %bb.ee
  call void @_ZN5osgeo4proj4util11PropertyMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31
  %i.rh = load ptr, ptr %19, align 16, !tbaa !191 ; 2 uses
  %i.ri = icmp eq ptr %i.rh, null
  br i1 %i.ri, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.thread, label %bb.ek

bb.eg:                                            ; preds = %bb.dv
  %i.rj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit518

.loopexit834:                                     ; preds = %_ZNKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12_M_check_lenEmPKc.exit.i596, %_ZNKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12_M_check_lenEmPKc.exit.i619, %_ZNKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12_M_check_lenEmPKc.exit.i643, %_ZNKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12_M_check_lenEmPKc.exit.i667, %_ZNKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12_M_check_lenEmPKc.exit.i691
  %lpad.loopexit836 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit839

end_hunk_1
