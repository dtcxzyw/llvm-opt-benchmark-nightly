inline.NumInlined: 806
inline.NumDeleted: 384
begin_hunk_0_@_ZN5arrow8internal29MakeSparseCSXMatrixFromTensorENS0_26SparseMatrixCompressedAxisERKNS_6TensorERKSt10shared_ptrINS_8DataTypeEEPNS_10MemoryPoolEPS5_INS_11SparseIndexEEPS5_INS_6BufferEE:bb.a
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.dy) #19, !inline_history !87
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19, !noalias !25
  %i.ec = load ptr, ptr %13, align 16, !tbaa !76, !noalias !25 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 9
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !67, !range !75, !noundef !38
  %i.ef = trunc nuw i8 %i.ee to i1
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.eh = load i8, ptr %i.eg, align 8, !range !75
  %i.ei = trunc nuw i8 %i.eh to i1
  %i.ej = select i1 %i.ef, i1 %i.ei, i1 false, !prof !57
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = select i1 %i.ej, ptr %i.el, ptr null, !prof !57 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19, !noalias !25
  %i.en = mul nsw i64 %i.br, %i.cv
  %i.eo = load ptr, ptr %i.f, align 8, !tbaa !24, !noalias !25
  invoke void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.31") align 8 %19, i64 noundef %i.en, ptr noundef %i.eo)
          to label %bb.am unwind label %bb.ap

bb.am:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i
  %i.ep = load ptr, ptr %19, align 8, !tbaa !28, !noalias !25
  %i.eq = icmp eq ptr %i.ep, null                 ; 2 uses
  br i1 %i.eq, label %bb.ar, label %bb.an, !prof !57

bb.an:                                            ; preds = %bb.am
  store ptr null, ptr %27, align 8, !tbaa !28, !alias.scope !25
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %_ZN5arrow6StatusC2ERKS0_.exit153.i unwind label %bb.aq

bb.ao:                                            ; preds = %bb.ae
  %i.er = landingpad { ptr, i32 }
          cleanup
  %i.es = load ptr, ptr %18, align 8, !tbaa !64, !noalias !25 ; 3 uses
  %.not.i154.i = icmp eq ptr %i.es, null
  br i1 %.not.i154.i, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit156.i, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i155.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i155.i: ; preds = %bb.ao
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !34
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8
  call void %i.ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.es) #19, !inline_history !87
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit156.i

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit156.i: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i155.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19, !noalias !25
  br label %bb.cn

bb.ap:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.aq:                                            ; preds = %bb.an
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit184.i

bb.ar:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19, !noalias !25
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.ey = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !64, !noalias !94
  store i64 %i.ez, ptr %20, align 8, !tbaa !64, !alias.scope !95, !noalias !25
  store ptr null, ptr %i.ey, align 8, !tbaa !64, !noalias !94
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19, !noalias !25
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %.noexc161.i unwind label %bb.cg

.noexc161.i:                                      ; preds = %bb.ar
  %i.fa = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !43, !noalias !25 ; 8 uses
  %i.fc = load <2 x ptr>, ptr %14, align 16, !tbaa !85, !noalias !25
  %i.fd = load <2 x ptr>, ptr %8, align 16, !tbaa !85, !noalias !25
  store <2 x ptr> %i.fd, ptr %14, align 16, !tbaa !85, !noalias !25
  store <2 x ptr> %i.fc, ptr %8, align 16, !tbaa !85, !noalias !25
  %.not.i.i.i.i157.i = icmp eq ptr %i.fb, null
  br i1 %.not.i.i.i.i157.i, label %bb.ay, label %bb.as

bb.as:                                            ; preds = %.noexc161.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 4 uses
  %i.ff = load atomic i64, ptr %i.fe acquire, align 8 ; 2 uses
  %i.fg = icmp eq i64 %i.ff, 4294967297
  %i.fh = trunc i64 %i.ff to i32                  ; 2 uses
  br i1 %i.fg, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 0, ptr %i.fe, align 8, !tbaa !46
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  store i32 0, ptr %i.fi, align 4, !tbaa !48
  %i.fj = load ptr, ptr %i.fb, align 8, !tbaa !34
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #19, !inline_history !86
  %i.fm = load ptr, ptr %i.fb, align 8, !tbaa !34
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8
  call void %i.fo(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #19, !inline_history !86
  br label %bb.ay

bb.au:                                            ; preds = %bb.as
  %i.fp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44, !noalias !25
  %.not.i.i.i.i.i158.i = icmp eq i8 %i.fp, 0
  br i1 %.not.i.i.i.i.i158.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fq = add nsw i32 %i.fh, -1
  store i32 %i.fq, ptr %i.fe, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i159.i

bb.aw:                                            ; preds = %bb.au
  %i.fr = atomicrmw volatile add ptr %i.fe, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i159.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i159.i: ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i.i.i160.i = phi i32 [ %i.fh, %bb.av ], [ %i.fr, %bb.aw ]
  %i.fs = icmp eq i32 %.0.i.i.i.i.i.i160.i, 1
  br i1 %i.fs, label %bb.ax, label %bb.ay, !prof !50

bb.ax:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i159.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #19
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i159.i, %bb.at, %.noexc161.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19, !noalias !25
  %i.ft = load ptr, ptr %20, align 8, !tbaa !64, !noalias !25 ; 3 uses
  %.not.i163.i = icmp eq ptr %i.ft, null
  br i1 %.not.i163.i, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit165.i, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i164.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i164.i: ; preds = %bb.ay
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !34
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8
  call void %i.fw(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ft) #19, !inline_history !87
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit165.i

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit165.i: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i164.i, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19, !noalias !25
  %i.fx = load ptr, ptr %14, align 16, !tbaa !76, !noalias !25 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 9
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !67, !range !75, !noundef !38
  %i.ga = trunc nuw i8 %i.fz to i1
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.gc = load i8, ptr %i.gb, align 8, !range !75
  %i.gd = trunc nuw i8 %i.gc to i1
  %i.ge = select i1 %i.ga, i1 %i.gd, i1 false, !prof !57
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = select i1 %i.ge, ptr %i.gg, ptr null, !prof !57
  %i.gi = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #20
          to label %bb.az unwind label %bb.ch     ; 7 uses

bb.az:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit165.i
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16 ; 5 uses
  %i.gk = icmp slt i32 %i.n, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gi, i8 0, i64 16, i1 false)
  br i1 %i.gk, label %_ZSt6fill_nIPhiiET_S1_T0_RKT1_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.az
  %i.gl = zext nneg i32 %i.n to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.em, i8 0, i64 %i.gl, i1 false), !tbaa !44
  br label %_ZSt6fill_nIPhiiET_S1_T0_RKT1_.exit.i

_ZSt6fill_nIPhiiET_S1_T0_RKT1_.exit.i:            ; preds = %.lr.ph.i.i.i.i.i, %bb.az
  %i.gm = icmp sgt i64 %i.bj, 0
  br i1 %i.gm, label %.preheader.lr.ph.i, label %._crit_edge365.i

.preheader.lr.ph.i:                               ; preds = %_ZSt6fill_nIPhiiET_S1_T0_RKT1_.exit.i
  %.0101356.i = getelementptr inbounds i8, ptr %i.em, i64 %i.cv ; 2 uses
  %i.gn = icmp sgt i64 %i.bm, 0
  %i.go = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.gq = ashr i64 %i.bs, 2                       ; 2 uses
  %i.gr = icmp sgt i64 %i.gq, 0
  %i.gs = icmp slt i32 %i.ad, 1
  %.not.i174.i = icmp eq i32 %i.ad, 1
  %i.gt = zext nneg i32 %i.ad to i64
  br i1 %i.gn, label %.preheader.us.preheader.i, label %.preheader.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %i.gu = and i64 %i.bs, -4
  %scevgep.i = getelementptr i8, ptr %i.ct, i64 %i.gu
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %28, %.preheader.us.preheader.i
  %.0101364.us.i = phi ptr [ %.0101.us.i, %28 ], [ %.0101356.i, %.preheader.us.preheader.i ] ; 2 uses
  %.098363.us.i = phi ptr [ %.2100.us.i, %28 ], [ %i.ck, %.preheader.us.preheader.i ]
  %.0102362.us.i = phi ptr [ %.2104.us.i, %28 ], [ %i.gh, %.preheader.us.preheader.i ]
  %.0105361.us.i = phi i64 [ %.2107.us.i, %28 ], [ 0, %.preheader.us.preheader.i ]
  %.0108360.us.i = phi i64 [ %29, %28 ], [ 0, %.preheader.us.preheader.i ] ; 4 uses
  %.sroa.0274.0359.us.i = phi ptr [ %.sroa.0274.2.us.i, %28 ], [ %i.gi, %.preheader.us.preheader.i ]
  %.sroa.12.0358.us.i = phi ptr [ %.sroa.12.2.us.i, %28 ], [ %i.gj, %.preheader.us.preheader.i ]
  %.sroa.26.0357.us.i = phi ptr [ %.sroa.26.2.us.i, %28 ], [ %i.gj, %.preheader.us.preheader.i ]
  br label %bb.ba

bb.ba:                                            ; preds = %.thread.us.i, %.preheader.us.i
  %.199349.us.i = phi ptr [ %.098363.us.i, %.preheader.us.i ], [ %.2100.us.i, %.thread.us.i ] ; 6 uses
  %.1103347.us.i = phi ptr [ %.0102362.us.i, %.preheader.us.i ], [ %.2104.us.i, %.thread.us.i ] ; 5 uses
  %.1106345.us.i = phi i64 [ %.0105361.us.i, %.preheader.us.i ], [ %.2107.us.i, %.thread.us.i ] ; 4 uses
  %.0109342.us.i = phi i64 [ 0, %.preheader.us.i ], [ %i.js, %.thread.us.i ] ; 5 uses
  %.sroa.0274.1341.us.i = phi ptr [ %.sroa.0274.0359.us.i, %.preheader.us.i ], [ %.sroa.0274.2.us.i, %.thread.us.i ] ; 17 uses
  %.sroa.12.1340.us.i = phi ptr [ %.sroa.12.0358.us.i, %.preheader.us.i ], [ %.sroa.12.2.us.i, %.thread.us.i ] ; 12 uses
  %.sroa.26.1339.us.i = phi ptr [ %.sroa.26.0357.us.i, %.preheader.us.i ], [ %.sroa.26.2.us.i, %.thread.us.i ] ; 7 uses
  %i.gv = load i8, ptr %i.c, align 8, !tbaa !7, !noalias !25
  %i.gw = icmp eq i8 %i.gv, 0
  %i.gx = ptrtoint ptr %.sroa.26.1339.us.i to i64
  %i.gy = ptrtoint ptr %.sroa.0274.1341.us.i to i64 ; 5 uses
  %i.gz = sub i64 %i.gx, %i.gy                    ; 3 uses
  %i.ha = icmp ult i64 %i.gz, 16                  ; 2 uses
  br i1 %i.gw, label %bb.bj, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19, !noalias !25
  store i64 %.0109342.us.i, ptr %i.b, align 8, !tbaa !55, !noalias !25
  store i64 %.0108360.us.i, ptr %i.go, align 8, !tbaa !55, !noalias !25
  br i1 %i.ha, label %bb.bi, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hb = ptrtoint ptr %.sroa.12.1340.us.i to i64
  %i.hc = sub i64 %i.hb, %i.gy                    ; 7 uses
  %.not.i255.us.i = icmp ult i64 %i.hc, 16
  br i1 %.not.i255.us.i, label %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i259.us.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0274.1341.us.i, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.0274.1341.us.i, i64 16 ; 2 uses
  %.not.i16.i256.us.i = icmp eq ptr %.sroa.12.1340.us.i, %i.hd
  %spec.select294.us.i = select i1 %.not.i16.i256.us.i, ptr %.sroa.12.1340.us.i, ptr %i.hd
  br label %_ZNSt6vectorIlSaIlEEaSESt16initializer_listIlE.exit173.us.i

_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i259.us.i: ; preds = %bb.bc
  %.sink.i.i260.us.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.hc ; 2 uses
  %i.he = icmp samesign ugt i64 %i.hc, 8
  br i1 %i.he, label %bb.bf, label %bb.be, !prof !57

bb.be:                                            ; preds = %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i259.us.i
  %i.hf = icmp eq i64 %i.hc, 8
  br i1 %i.hf, label %bb.bg, label %bb.bh

bb.bf:                                            ; preds = %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i259.us.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.0274.1341.us.i, ptr nonnull align 8 %i.b, i64 %i.hc, i1 false)
  %gepdiff.us447.i = sub nuw nsw i64 16, %i.hc
  br label %_ZSt22__uninitialized_copy_aIPKlPllET0_T_S4_S3_RSaIT1_E.exit.i262.us.i

bb.bg:                                            ; preds = %bb.be
  store i64 %.0109342.us.i, ptr %.sroa.0274.1341.us.i, align 8, !tbaa !55
  %i.hg = load i64, ptr %.sink.i.i260.us.i, align 8, !tbaa !55, !noalias !25
  store i64 %i.hg, ptr %.sroa.12.1340.us.i, align 8, !tbaa !55
  br label %_ZSt22__uninitialized_copy_aIPKlPllET0_T_S4_S3_RSaIT1_E.exit.i262.us.i

bb.bh:                                            ; preds = %bb.be
  %gepdiff.us.i = sub nuw nsw i64 16, %i.hc       ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.12.1340.us.i, ptr nonnull align 8 %.sink.i.i260.us.i, i64 %gepdiff.us.i, i1 false)
  br label %_ZSt22__uninitialized_copy_aIPKlPllET0_T_S4_S3_RSaIT1_E.exit.i262.us.i

_ZSt22__uninitialized_copy_aIPKlPllET0_T_S4_S3_RSaIT1_E.exit.i262.us.i: ; preds = %bb.bh, %bb.bg, %bb.bf
  %gepdiff.us448.i = phi i64 [ %gepdiff.us.i, %bb.bh ], [ 8, %bb.bg ], [ %gepdiff.us447.i, %bb.bf ]
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.12.1340.us.i, i64 %gepdiff.us448.i
  br label %_ZNSt6vectorIlSaIlEEaSESt16initializer_listIlE.exit173.us.i

bb.bi:                                            ; preds = %bb.bb
  %i.hi = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #20
          to label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit.i265.us.i unwind label %.split.us.i ; 3 uses

_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit.i265.us.i: ; preds = %bb.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hi, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0274.1341.us.i, i64 noundef %i.gz) #21
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16 ; 2 uses
  br label %_ZNSt6vectorIlSaIlEEaSESt16initializer_listIlE.exit173.us.i

_ZNSt6vectorIlSaIlEEaSESt16initializer_listIlE.exit173.us.i: ; preds = %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit.i265.us.i, %_ZSt22__uninitialized_copy_aIPKlPllET0_T_S4_S3_RSaIT1_E.exit.i262.us.i, %bb.bd
  %.sroa.26.5.us.i = phi ptr [ %i.hj, %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit.i265.us.i ], [ %.sroa.26.1339.us.i, %_ZSt22__uninitialized_copy_aIPKlPllET0_T_S4_S3_RSaIT1_E.exit.i262.us.i ], [ %.sroa.26.1339.us.i, %bb.bd ]
  %.sroa.12.4.us.i = phi ptr [ %i.hj, %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit.i265.us.i ], [ %i.hh, %_ZSt22__uninitialized_copy_aIPKlPllET0_T_S4_S3_RSaIT1_E.exit.i262.us.i ], [ %spec.select294.us.i, %bb.bd ]
  %.sroa.0274.5.us.i = phi ptr [ %i.hi, %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit.i265.us.i ], [ %.sroa.0274.1341.us.i, %_ZSt22__uninitialized_copy_aIPKlPllET0_T_S4_S3_RSaIT1_E.exit.i262.us.i ], [ %.sroa.0274.1341.us.i, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19, !noalias !25
  br label %bb.br

bb.bj:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19, !noalias !25
  store i64 %.0108360.us.i, ptr %i.a, align 8, !tbaa !55, !noalias !25
  store i64 %.0109342.us.i, ptr %i.gp, align 8, !tbaa !55, !noalias !25
  br i1 %i.ha, label %bb.bq, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hk = ptrtoint ptr %.sroa.12.1340.us.i to i64
  %i.hl = sub i64 %i.hk, %i.gy                    ; 7 uses
  %.not.i252.us.i = icmp ult i64 %i.hl, 16
  br i1 %.not.i252.us.i, label %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.us.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0274.1341.us.i, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0274.1341.us.i, i64 16 ; 2 uses
  %.not.i16.i.us.i = icmp eq ptr %.sroa.12.1340.us.i, %i.hm
  %spec.select.us.i = select i1 %.not.i16.i.us.i, ptr %.sroa.12.1340.us.i, ptr %i.hm
  br label %_ZNSt6vectorIlSaIlEEaSESt16initializer_listIlE.exit.us.i

_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.us.i: ; preds = %bb.bk
  %.sink.i.i.us.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hl ; 2 uses
  %i.hn = icmp samesign ugt i64 %i.hl, 8
  br i1 %i.hn, label %bb.bn, label %bb.bm, !prof !57

bb.bm:                                            ; preds = %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.us.i
  %i.ho = icmp eq i64 %i.hl, 8
  br i1 %i.ho, label %bb.bo, label %bb.bp

bb.bn:                                            ; preds = %_ZSt9__advanceIPKllEvRT_T0_St26random_access_iterator_tag.exit.i.us.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.0274.1341.us.i, ptr nonnull align 8 %i.a, i64 %i.hl, i1 false)
  %gepdiff295.us452.i = sub nuw nsw i64 16, %i.hl
  br label %_ZSt22__uninitialized_copy_aIPKlPllET0_T_S4_S3_RSaIT1_E.exit.i.us.i

bb.bo:                                            ; preds = %bb.bm
  store i64 %.0108360.us.i, ptr %.sroa.0274.1341.us.i, align 8, !tbaa !55
  %i.hp = load i64, ptr %.sink.i.i.us.i, align 8, !tbaa !55, !noalias !25
  store i64 %i.hp, ptr %.sroa.12.1340.us.i, align 8, !tbaa !55
  br label %_ZSt22__uninitialized_copy_aIPKlPllET0_T_S4_S3_RSaIT1_E.exit.i.us.i

bb.bp:                                            ; preds = %bb.bm
  %gepdiff295.us.i = sub nuw nsw i64 16, %i.hl    ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.12.1340.us.i, ptr nonnull align 8 %.sink.i.i.us.i, i64 %gepdiff295.us.i, i1 false)
  br label %_ZSt22__uninitialized_copy_aIPKlPllET0_T_S4_S3_RSaIT1_E.exit.i.us.i

_ZSt22__uninitialized_copy_aIPKlPllET0_T_S4_S3_RSaIT1_E.exit.i.us.i: ; preds = %bb.bp, %bb.bo, %bb.bn
  %gepdiff295.us453.i = phi i64 [ %gepdiff295.us.i, %bb.bp ], [ 8, %bb.bo ], [ %gepdiff295.us452.i, %bb.bn ]
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.12.1340.us.i, i64 %gepdiff295.us453.i
  br label %_ZNSt6vectorIlSaIlEEaSESt16initializer_listIlE.exit.us.i

bb.bq:                                            ; preds = %bb.bj
  %i.hr = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #20
          to label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit.i.us.i unwind label %.split373.us.i ; 3 uses

_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit.i.us.i: ; preds = %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hr, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0274.1341.us.i, i64 noundef %i.gz) #21
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16 ; 2 uses
  br label %_ZNSt6vectorIlSaIlEEaSESt16initializer_listIlE.exit.us.i

_ZNSt6vectorIlSaIlEEaSESt16initializer_listIlE.exit.us.i: ; preds = %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit.i.us.i, %_ZSt22__uninitialized_copy_aIPKlPllET0_T_S4_S3_RSaIT1_E.exit.i.us.i, %bb.bl
  %.sroa.26.4.us.i = phi ptr [ %i.hs, %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit.i.us.i ], [ %.sroa.26.1339.us.i, %_ZSt22__uninitialized_copy_aIPKlPllET0_T_S4_S3_RSaIT1_E.exit.i.us.i ], [ %.sroa.26.1339.us.i, %bb.bl ]
  %.sroa.12.3.us.i = phi ptr [ %i.hs, %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit.i.us.i ], [ %i.hq, %_ZSt22__uninitialized_copy_aIPKlPllET0_T_S4_S3_RSaIT1_E.exit.i.us.i ], [ %spec.select.us.i, %bb.bl ]
  %.sroa.0274.4.us.i = phi ptr [ %i.hr, %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit.i.us.i ], [ %.sroa.0274.1341.us.i, %_ZSt22__uninitialized_copy_aIPKlPllET0_T_S4_S3_RSaIT1_E.exit.i.us.i ], [ %.sroa.0274.1341.us.i, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19, !noalias !25
  br label %bb.br

bb.br:                                            ; preds = %_ZNSt6vectorIlSaIlEEaSESt16initializer_listIlE.exit.us.i, %_ZNSt6vectorIlSaIlEEaSESt16initializer_listIlE.exit173.us.i
  %.sroa.26.2.us.i = phi ptr [ %.sroa.26.4.us.i, %_ZNSt6vectorIlSaIlEEaSESt16initializer_listIlE.exit.us.i ], [ %.sroa.26.5.us.i, %_ZNSt6vectorIlSaIlEEaSESt16initializer_listIlE.exit173.us.i ] ; 5 uses
  %.sroa.12.2.us.i = phi ptr [ %.sroa.12.3.us.i, %_ZNSt6vectorIlSaIlEEaSESt16initializer_listIlE.exit.us.i ], [ %.sroa.12.4.us.i, %_ZNSt6vectorIlSaIlEEaSESt16initializer_listIlE.exit173.us.i ] ; 3 uses
  %.sroa.0274.2.us.i = phi ptr [ %.sroa.0274.4.us.i, %_ZNSt6vectorIlSaIlEEaSESt16initializer_listIlE.exit.us.i ], [ %.sroa.0274.5.us.i, %_ZNSt6vectorIlSaIlEEaSESt16initializer_listIlE.exit173.us.i ] ; 8 uses
  %i.ht = ptrtoint ptr %.sroa.12.2.us.i to i64
  %i.hu = ptrtoint ptr %.sroa.0274.2.us.i to i64  ; 3 uses
  %i.hv = sub i64 %i.ht, %i.hu
  %i.hw = ashr exact i64 %i.hv, 3                 ; 5 uses
  %i.hx = icmp sgt i64 %i.hw, 0
  br i1 %i.hx, label %.lr.ph.i.i.us.i, label %_ZNK5arrow6Tensor20CalculateValueOffsetERKSt6vectorIlSaIlEE.exit.us.i

.lr.ph.i.i.us.i:                                  ; preds = %bb.br
  %i.hy = load ptr, ptr %i.d, align 8, !tbaa !37, !noalias !25, !nonnull !38, !align !39
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 64
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !54 ; 2 uses
  %min.iters.check = icmp ult i64 %i.hw, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.us.i
  %n.vec = and i64 %i.hw, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ih, %vector.body ]
  %vec.phi174 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ii, %vector.body ]
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0274.2.us.i, i64 %index ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %wide.load = load <2 x i64>, ptr %i.ib, align 8, !tbaa !55
  %wide.load175 = load <2 x i64>, ptr %i.ic, align 8, !tbaa !55
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %index ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %wide.load176 = load <2 x i64>, ptr %i.id, align 8, !tbaa !55
  %wide.load177 = load <2 x i64>, ptr %i.ie, align 8, !tbaa !55
  %i.if = mul nsw <2 x i64> %wide.load176, %wide.load
  %i.ig = mul nsw <2 x i64> %wide.load177, %wide.load175
  %i.ih = add <2 x i64> %i.if, %vec.phi           ; 2 uses
  %i.ii = add <2 x i64> %i.ig, %vec.phi174        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ij = icmp eq i64 %index.next, %n.vec
  br i1 %i.ij, label %middle.block, label %vector.body, !llvm.loop !96

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ii, %i.ih
  %i.ik = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.hw, %n.vec
  br i1 %cmp.n, label %_ZNK5arrow6Tensor20CalculateValueOffsetERKSt6vectorIlSaIlEE.exit.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.us.i, %middle.block
  %.011.i.i.us.i.ph = phi i64 [ 0, %.lr.ph.i.i.us.i ], [ %n.vec, %middle.block ]
  %.0910.i.i.us.i.ph = phi i64 [ 0, %.lr.ph.i.i.us.i ], [ %i.ik, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.011.i.i.us.i = phi i64 [ %i.ir, %scalar.ph ], [ %.011.i.i.us.i.ph, %scalar.ph.preheader ] ; 3 uses
  %.0910.i.i.us.i = phi i64 [ %i.iq, %scalar.ph ], [ %.0910.i.i.us.i.ph, %scalar.ph.preheader ]
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0274.2.us.i, i64 %.011.i.i.us.i
  %i.im = load i64, ptr %i.il, align 8, !tbaa !55
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %.011.i.i.us.i
  %i.io = load i64, ptr %i.in, align 8, !tbaa !55
  %i.ip = mul nsw i64 %i.io, %i.im
  %i.iq = add nsw i64 %i.ip, %.0910.i.i.us.i      ; 2 uses
  %i.ir = add nuw nsw i64 %.011.i.i.us.i, 1       ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %i.ir, %i.hw
  br i1 %exitcond.not.i.i.us.i, label %_ZNK5arrow6Tensor20CalculateValueOffsetERKSt6vectorIlSaIlEE.exit.us.i, label %scalar.ph, !llvm.loop !100

_ZNK5arrow6Tensor20CalculateValueOffsetERKSt6vectorIlSaIlEE.exit.us.i: ; preds = %scalar.ph, %middle.block, %bb.br
  %.09.lcssa.i.i.us.i = phi i64 [ 0, %bb.br ], [ %i.ik, %middle.block ], [ %i.iq, %scalar.ph ] ; 2 uses
  %i.is = getelementptr inbounds i8, ptr %i.ct, i64 %.09.lcssa.i.i.us.i ; 5 uses
  %i.it = getelementptr inbounds i8, ptr %i.is, i64 %i.bs ; 2 uses
  %i.iu = ptrtoint ptr %i.it to i64
  br i1 %i.gr, label %.lr.ph.i.i.i.i.i.us.preheader.i, label %._crit_edge.i.i.i.i.i.us.i

.lr.ph.i.i.i.i.i.us.preheader.i:                  ; preds = %_ZNK5arrow6Tensor20CalculateValueOffsetERKSt6vectorIlSaIlEE.exit.us.i
  %scevgep404.i = getelementptr i8, ptr %scevgep.i, i64 %.09.lcssa.i.i.us.i
  br label %.lr.ph.i.i.i.i.i.us.i

.lr.ph.i.i.i.i.i.us.i:                            ; preds = %bb.bv, %.lr.ph.i.i.i.i.i.us.preheader.i
  %.047.i.i.i.i.i.us.i = phi i64 [ %i.jd, %bb.bv ], [ %i.gq, %.lr.ph.i.i.i.i.i.us.preheader.i ] ; 2 uses
  %.02946.i.i.i.i.i.us.i = phi ptr [ %i.jc, %bb.bv ], [ %i.is, %.lr.ph.i.i.i.i.i.us.preheader.i ] ; 9 uses
  %i.iv = load i8, ptr %.02946.i.i.i.i.i.us.i, align 1, !tbaa !44
  %.not296.us.i = icmp eq i8 %i.iv, 0
  br i1 %.not296.us.i, label %bb.bs, label %.loopexit.us.i

bb.bs:                                            ; preds = %.lr.ph.i.i.i.i.i.us.i
  %i.iw = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.us.i, i64 1
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !44
  %.not297.us.i = icmp eq i8 %i.ix, 0
  br i1 %.not297.us.i, label %bb.bt, label %.loopexit.us.i.loopexit.split.loop.exit145

bb.bt:                                            ; preds = %bb.bs
  %i.iy = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.us.i, i64 2
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !44
  %.not298.us.i = icmp eq i8 %i.iz, 0
  br i1 %.not298.us.i, label %bb.bu, label %.loopexit.us.i.loopexit.split.loop.exit143

bb.bu:                                            ; preds = %bb.bt
  %i.ja = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.us.i, i64 3
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !44
  %.not299.us.i = icmp eq i8 %i.jb, 0
  br i1 %.not299.us.i, label %bb.bv, label %.loopexit.us.i.loopexit.split.loop.exit

bb.bv:                                            ; preds = %bb.bu
  %i.jc = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.us.i, i64 4
  %i.jd = add nsw i64 %.047.i.i.i.i.i.us.i, -1
  %i.je = icmp sgt i64 %.047.i.i.i.i.i.us.i, 1
  br i1 %i.je, label %.lr.ph.i.i.i.i.i.us.i, label %._crit_edge.i.i.i.i.i.us.i, !llvm.loop !101

._crit_edge.i.i.i.i.i.us.i:                       ; preds = %bb.bv, %_ZNK5arrow6Tensor20CalculateValueOffsetERKSt6vectorIlSaIlEE.exit.us.i
  %.029.lcssa.i.i.i.i.i.us.i = phi ptr [ %i.is, %_ZNK5arrow6Tensor20CalculateValueOffsetERKSt6vectorIlSaIlEE.exit.us.i ], [ %scevgep404.i, %bb.bv ] ; 6 uses
  %.pre-phi.i.i.i.i.i.us.i = ptrtoint ptr %.029.lcssa.i.i.i.i.i.us.i to i64
  %i.jf = sub i64 %i.iu, %.pre-phi.i.i.i.i.i.us.i
  switch i64 %i.jf, label %.thread.us.i [
    i64 3, label %bb.bw
    i64 2, label %bb.by
    i64 1, label %bb.ca
  ]

bb.bw:                                            ; preds = %._crit_edge.i.i.i.i.i.us.i
  %i.jg = load i8, ptr %.029.lcssa.i.i.i.i.i.us.i, align 1, !tbaa !44
  %.not300.us.i = icmp eq i8 %i.jg, 0
  br i1 %.not300.us.i, label %bb.bx, label %.loopexit.us.i

bb.bx:                                            ; preds = %bb.bw
  %i.jh = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.us.i, i64 1
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %._crit_edge.i.i.i.i.i.us.i
  %.1.i.i.i.i.i.us.i = phi ptr [ %i.jh, %bb.bx ], [ %.029.lcssa.i.i.i.i.i.us.i, %._crit_edge.i.i.i.i.i.us.i ] ; 3 uses
  %i.ji = load i8, ptr %.1.i.i.i.i.i.us.i, align 1, !tbaa !44
  %.not301.us.i = icmp eq i8 %i.ji, 0
  br i1 %.not301.us.i, label %bb.bz, label %.loopexit.us.i

bb.bz:                                            ; preds = %bb.by
  %i.jj = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.us.i, i64 1
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %._crit_edge.i.i.i.i.i.us.i
  %.2.i.i.i.i.i.us.i = phi ptr [ %i.jj, %bb.bz ], [ %.029.lcssa.i.i.i.i.i.us.i, %._crit_edge.i.i.i.i.i.us.i ] ; 2 uses
  %i.jk = load i8, ptr %.2.i.i.i.i.i.us.i, align 1, !tbaa !44
  %.not302.us.i = icmp eq i8 %i.jk, 0
  br i1 %.not302.us.i, label %.thread.us.i, label %.loopexit.us.i

.loopexit.us.i.loopexit.split.loop.exit:          ; preds = %bb.bu
  %i.jl = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.us.i, i64 3
  br label %.loopexit.us.i

.loopexit.us.i.loopexit.split.loop.exit143:       ; preds = %bb.bt
  %i.jm = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.us.i, i64 2
  br label %.loopexit.us.i

.loopexit.us.i.loopexit.split.loop.exit145:       ; preds = %bb.bs
  %i.jn = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.us.i, i64 1
  br label %.loopexit.us.i

.loopexit.us.i:                                   ; preds = %.lr.ph.i.i.i.i.i.us.i, %.loopexit.us.i.loopexit.split.loop.exit, %.loopexit.us.i.loopexit.split.loop.exit143, %.loopexit.us.i.loopexit.split.loop.exit145, %bb.ca, %bb.by, %bb.bw
  %.028.i.i.i.i.i.us.i = phi ptr [ %.1.i.i.i.i.i.us.i, %bb.by ], [ %.029.lcssa.i.i.i.i.i.us.i, %bb.bw ], [ %.2.i.i.i.i.i.us.i, %bb.ca ], [ %i.jn, %.loopexit.us.i.loopexit.split.loop.exit145 ], [ %i.jm, %.loopexit.us.i.loopexit.split.loop.exit143 ], [ %i.jl, %.loopexit.us.i.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i.us.i, %.lr.ph.i.i.i.i.i.us.i ]
  %.not303.us.i = icmp eq ptr %i.it, %.028.i.i.i.i.i.us.i
  br i1 %.not303.us.i, label %.thread.us.i, label %bb.cb

bb.cb:                                            ; preds = %.loopexit.us.i
  br i1 %i.gs, label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  br i1 %.not.i174.i, label %bb.ce, label %bb.cd, !prof !50

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %.199349.us.i, ptr align 1 %i.is, i64 %i.gt, i1 false)
  br label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us.i

bb.ce:                                            ; preds = %bb.cc
  %i.jo = load i8, ptr %i.is, align 1, !tbaa !44
  store i8 %i.jo, ptr %.199349.us.i, align 1, !tbaa !44
  br label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us.i

_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us.i:         ; preds = %bb.ce, %bb.cd, %bb.cb
  invoke void @_ZN5arrow8internal26SparseTensorConverterMixin11AssignIndexEPhli(ptr noundef %.1103347.us.i, i64 noundef %.0109342.us.i, i32 noundef %i.n)
          to label %bb.cf unwind label %.split378.us.i

bb.cf:                                            ; preds = %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us.i
  %i.jp = getelementptr inbounds i8, ptr %.199349.us.i, i64 %i.bs
  %i.jq = getelementptr inbounds i8, ptr %.1103347.us.i, i64 %i.cv
  %i.jr = add nsw i64 %.1106345.us.i, 1
  br label %.thread.us.i

.thread.us.i:                                     ; preds = %bb.cf, %.loopexit.us.i, %bb.ca, %._crit_edge.i.i.i.i.i.us.i
  %.2107.us.i = phi i64 [ %i.jr, %bb.cf ], [ %.1106345.us.i, %.loopexit.us.i ], [ %.1106345.us.i, %._crit_edge.i.i.i.i.i.us.i ], [ %.1106345.us.i, %bb.ca ] ; 3 uses
  %.2104.us.i = phi ptr [ %i.jq, %bb.cf ], [ %.1103347.us.i, %.loopexit.us.i ], [ %.1103347.us.i, %._crit_edge.i.i.i.i.i.us.i ], [ %.1103347.us.i, %bb.ca ] ; 2 uses
  %.2100.us.i = phi ptr [ %i.jp, %bb.cf ], [ %.199349.us.i, %.loopexit.us.i ], [ %.199349.us.i, %._crit_edge.i.i.i.i.i.us.i ], [ %.199349.us.i, %bb.ca ] ; 2 uses
  %i.js = add nuw nsw i64 %.0109342.us.i, 1       ; 2 uses
  %exitcond405.not.i = icmp eq i64 %i.js, %i.bm
  br i1 %exitcond405.not.i, label %._crit_edge.us.i, label %bb.ba, !llvm.loop !102

28:                                               ; preds = %._crit_edge.us.i
  %29 = add nuw nsw i64 %.0108360.us.i, 1         ; 2 uses
  %.0101.us.i = getelementptr inbounds i8, ptr %.0101364.us.i, i64 %i.cv
  %exitcond406.not.i = icmp eq i64 %29, %i.bj
  br i1 %exitcond406.not.i, label %._crit_edge365.i, label %.preheader.us.i, !llvm.loop !103

._crit_edge.us.i:                                 ; preds = %.thread.us.i
  invoke void @_ZN5arrow8internal26SparseTensorConverterMixin11AssignIndexEPhli(ptr noundef %.0101364.us.i, i64 noundef %.2107.us.i, i32 noundef %i.n)
          to label %28 unwind label %.split383.us.i

.split.us.i:                                      ; preds = %bb.bi
  %i.jt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19, !noalias !25
  br label %.thread285.i

.split373.us.i:                                   ; preds = %bb.bq
  %i.ju = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19, !noalias !25
  br label %.thread285.i

.split378.us.i:                                   ; preds = %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us.i
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %.thread285.i

.split383.us.i:                                   ; preds = %._crit_edge.us.i
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %.thread285.i

.preheader.i:                                     ; preds = %.preheader.lr.ph.i, %bb.ci
  %.0101364.i = phi ptr [ %.0101.i, %bb.ci ], [ %.0101356.i, %.preheader.lr.ph.i ] ; 2 uses
  %.0108360.i = phi i64 [ %i.kg, %bb.ci ], [ 0, %.preheader.lr.ph.i ]
  invoke void @_ZN5arrow8internal26SparseTensorConverterMixin11AssignIndexEPhli(ptr noundef %.0101364.i, i64 noundef 0, i32 noundef %i.n)
          to label %bb.ci unwind label %.split.i

._crit_edge365.i:                                 ; preds = %bb.ci, %28, %_ZSt6fill_nIPhiiET_S1_T0_RKT1_.exit.i
  %.sroa.26.0.lcssa.i = phi ptr [ %i.gj, %_ZSt6fill_nIPhiiET_S1_T0_RKT1_.exit.i ], [ %.sroa.26.2.us.i, %28 ], [ %i.gj, %bb.ci ]
  %.sroa.0274.0.lcssa.i = phi ptr [ %i.gi, %_ZSt6fill_nIPhiiET_S1_T0_RKT1_.exit.i ], [ %.sroa.0274.2.us.i, %28 ], [ %i.gi, %bb.ci ] ; 2 uses
  %i.jx = ptrtoint ptr %.sroa.26.0.lcssa.i to i64
  %i.jy = ptrtoint ptr %.sroa.0274.0.lcssa.i to i64
  %i.jz = sub i64 %i.jx, %i.jy
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0274.0.lcssa.i, i64 noundef %i.jz) #21
  br label %_ZN5arrow6StatusC2ERKS0_.exit153.i

bb.cg:                                            ; preds = %bb.ar
  %i.ka = landingpad { ptr, i32 }
          cleanup
  %i.kb = load ptr, ptr %20, align 8, !tbaa !64, !noalias !25 ; 3 uses
  %.not.i168.i = icmp eq ptr %i.kb, null
  br i1 %.not.i168.i, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit170.i, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i169.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i169.i: ; preds = %bb.cg
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !34
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.ke = load ptr, ptr %i.kd, align 8
  call void %i.ke(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.kb) #19, !inline_history !87
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit170.i

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit170.i: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i169.i, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19, !noalias !25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit184.i

bb.ch:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit165.i
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit184.i

bb.ci:                                            ; preds = %.preheader.i
  %i.kg = add nuw nsw i64 %.0108360.i, 1          ; 2 uses
  %.0101.i = getelementptr inbounds i8, ptr %.0101364.i, i64 %i.cv
  %exitcond.not.i = icmp eq i64 %i.kg, %i.bj
  br i1 %exitcond.not.i, label %._crit_edge365.i, label %.preheader.i, !llvm.loop !103

.split.i:                                         ; preds = %.preheader.i
  %i.kh = landingpad { ptr, i32 }
          cleanup
  %.pre = ptrtoint ptr %i.gi to i64
  br label %.thread285.i

_ZN5arrow6StatusC2ERKS0_.exit153.i:               ; preds = %._crit_edge365.i, %bb.an
  %i.ki = load ptr, ptr %19, align 8, !tbaa !28, !noalias !25 ; 2 uses
  %i.kj = icmp eq ptr %i.ki, null
  br i1 %i.kj, label %bb.cj, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i, !prof !57

bb.cj:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit153.i
  %i.kk = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !64, !noalias !25 ; 3 uses
  %.not.i.i.i.i175.i = icmp eq ptr %i.kl, null
  br i1 %.not.i.i.i.i175.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i: ; preds = %bb.cj
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !34
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.ko = load ptr, ptr %i.kn, align 8
  call void %i.ko(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.kl) #19, !inline_history !104
  %.pr.pre.i.i = load ptr, ptr %19, align 8, !tbaa !28, !noalias !25 ; 2 uses
  %.not.i.i176.i = icmp eq ptr %.pr.pre.i.i, null
  br i1 %.not.i.i176.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i, !prof !105

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i, %_ZN5arrow6StatusC2ERKS0_.exit153.i
  %i.kp = phi ptr [ %.pr.pre.i.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i ], [ %i.ki, %_ZN5arrow6StatusC2ERKS0_.exit153.i ]
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 1
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !106, !range !75, !noundef !38
  %i.ks = trunc nuw i8 %i.kr to i1
  br i1 %i.ks, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i, label %bb.ck

bb.ck:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %19) #19
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i: ; preds = %bb.ck, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19, !noalias !25
  %i.kt = load ptr, ptr %17, align 8, !tbaa !28, !noalias !25 ; 2 uses
  %i.ku = icmp eq ptr %i.kt, null
  br i1 %i.ku, label %bb.cl, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i177.i, !prof !57

bb.cl:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i
  %i.kv = load ptr, ptr %i.dd, align 8, !tbaa !64, !noalias !25 ; 3 uses
  %.not.i.i.i.i178.i = icmp eq ptr %i.kv, null
  br i1 %.not.i.i.i.i178.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit182.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i179.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i179.i: ; preds = %bb.cl
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !34
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %i.ky = load ptr, ptr %i.kx, align 8
  call void %i.ky(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.kv) #19, !inline_history !104
  %.pr.pre.i180.i = load ptr, ptr %17, align 8, !tbaa !28, !noalias !25 ; 2 uses
  %.not.i.i181.i = icmp eq ptr %.pr.pre.i180.i, null
  br i1 %.not.i.i181.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit182.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i177.i, !prof !105

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i177.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i179.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i
  %i.kz = phi ptr [ %.pr.pre.i180.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i179.i ], [ %i.kt, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i ]
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 1
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !106, !range !75, !noundef !38
  %i.lc = trunc nuw i8 %i.lb to i1
  br i1 %i.lc, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit182.i, label %bb.cm

bb.cm:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i177.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %17) #19
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit182.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit182.i: ; preds = %bb.cm, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i177.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i179.i, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19, !noalias !25
  br i1 %i.eq, label %bb.co, label %_ZN5arrow6Status14NotImplementedIJRA19_KcEEES0_DpOT_.exit.i

.thread285.i:                                     ; preds = %.split.i, %.split383.us.i, %.split378.us.i, %.split373.us.i, %.split.us.i
  %.pre-phi = phi i64 [ %.pre, %.split.i ], [ %i.hu, %.split383.us.i ], [ %i.hu, %.split378.us.i ], [ %i.gy, %.split373.us.i ], [ %i.gy, %.split.us.i ]
  %.sroa.26.3.i = phi ptr [ %i.gj, %.split.i ], [ %.sroa.26.2.us.i, %.split383.us.i ], [ %.sroa.26.2.us.i, %.split378.us.i ], [ %.sroa.26.1339.us.i, %.split373.us.i ], [ %.sroa.26.1339.us.i, %.split.us.i ]
  %.sroa.0274.3.i = phi ptr [ %i.gi, %.split.i ], [ %.sroa.0274.2.us.i, %.split383.us.i ], [ %.sroa.0274.2.us.i, %.split378.us.i ], [ %.sroa.0274.1341.us.i, %.split373.us.i ], [ %.sroa.0274.1341.us.i, %.split.us.i ]
  %.pn115.pn.pn.i = phi { ptr, i32 } [ %i.kh, %.split.i ], [ %i.jw, %.split383.us.i ], [ %i.jv, %.split378.us.i ], [ %i.ju, %.split373.us.i ], [ %i.jt, %.split.us.i ]
  %i.ld = ptrtoint ptr %.sroa.26.3.i to i64
  %i.le = sub i64 %i.ld, %.pre-phi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0274.3.i, i64 noundef %i.le) #21
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit184.i

_ZNSt6vectorIlSaIlEED2Ev.exit184.i:               ; preds = %.thread285.i, %bb.ch, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit170.i, %bb.aq
  %.pn120.i = phi { ptr, i32 } [ %i.ex, %bb.aq ], [ %i.ka, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit170.i ], [ %i.kf, %bb.ch ], [ %.pn115.pn.pn.i, %.thread285.i ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %19) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19, !noalias !25
  br label %bb.cn

bb.cn:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit184.i, %bb.ap, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit156.i, %bb.ad
  %.pn123.i = phi { ptr, i32 } [ %i.dc, %bb.ad ], [ %i.er, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit156.i ], [ %.pn120.i, %_ZNSt6vectorIlSaIlEED2Ev.exit184.i ], [ %i.ew, %bb.ap ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %17) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19, !noalias !25
  br label %bb.eh

bb.co:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit182.i
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19, !noalias !25
  %i.lf = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #20
          to label %bb.cp unwind label %bb.cv     ; 3 uses

bb.cp:                                            ; preds = %bb.co
  store ptr %i.lf, ptr %21, align 8, !tbaa !54, !noalias !25
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 8 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 3 uses
  store ptr %i.lg, ptr %i.lh, align 8, !tbaa !114, !noalias !25
  store i64 %i.cw, ptr %i.lf, align 8, !tbaa !55
  %i.li = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %i.lg, ptr %i.li, align 8, !tbaa !51, !noalias !25
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19, !noalias !25
  %i.lj = load ptr, ptr %i.e, align 8, !tbaa !115, !noalias !25, !nonnull !38, !align !39
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.lk = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #20
          to label %.noexc186.i unwind label %bb.cw ; 6 uses

.noexc186.i:                                      ; preds = %bb.cp
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  store i32 1, ptr %i.ll, align 8, !tbaa !46, !noalias !116
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lk, i64 12
  store i32 1, ptr %i.lm, align 4, !tbaa !48, !noalias !116
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.lk, align 8, !tbaa !34, !noalias !116
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lk, i64 16 ; 2 uses
  invoke void @_ZN5arrow6TensorC1ERKSt10shared_ptrINS_8DataTypeEERKS1_INS_6BufferEERKSt6vectorIlSaIlEE(ptr noundef nonnull align 8 dereferenceable(112) %i.ln, ptr noundef nonnull align 8 dereferenceable(16) %i.lj, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(24) %21)
          to label %bb.cq unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i, !noalias !116

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i: ; preds = %.noexc186.i
  %i.lo = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.lk, i64 noundef 128) #21, !noalias !116
  br label %.body.i

bb.cq:                                            ; preds = %.noexc186.i
  %i.lp = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  store ptr %i.lk, ptr %i.lp, align 8, !tbaa !43, !alias.scope !116, !noalias !25
  store ptr %i.ln, ptr %22, align 8, !tbaa !22, !alias.scope !116, !noalias !25
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19, !noalias !25
  %i.lq = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #20
          to label %bb.cr unwind label %bb.cx     ; 3 uses

bb.cr:                                            ; preds = %bb.cq
  store ptr %i.lq, ptr %23, align 8, !tbaa !54, !noalias !25
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 3 uses
  store ptr %i.lr, ptr %i.ls, align 8, !tbaa !114, !noalias !25
  store i64 %i.br, ptr %i.lq, align 8, !tbaa !55
  %i.lt = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr %i.lr, ptr %i.lt, align 8, !tbaa !51, !noalias !25
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19, !noalias !25
  %i.lu = load ptr, ptr %i.e, align 8, !tbaa !115, !noalias !25, !nonnull !38, !align !39
  call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.lv = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #20
          to label %.noexc190.i unwind label %bb.cy ; 6 uses

.noexc190.i:                                      ; preds = %bb.cr
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  store i32 1, ptr %i.lw, align 8, !tbaa !46, !noalias !119
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lv, i64 12
  store i32 1, ptr %i.lx, align 4, !tbaa !48, !noalias !119
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.lv, align 8, !tbaa !34, !noalias !119
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lv, i64 16 ; 2 uses
  invoke void @_ZN5arrow6TensorC1ERKSt10shared_ptrINS_8DataTypeEERKS1_INS_6BufferEERKSt6vectorIlSaIlEE(ptr noundef nonnull align 8 dereferenceable(112) %i.ly, ptr noundef nonnull align 8 dereferenceable(16) %i.lu, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(24) %23)
          to label %bb.cs unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i189.i, !noalias !119

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i189.i: ; preds = %.noexc190.i
  %i.lz = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.lv, i64 noundef 128) #21, !noalias !119
  br label %.body191.i

bb.cs:                                            ; preds = %.noexc190.i
  %i.ma = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  store ptr %i.lv, ptr %i.ma, align 8, !tbaa !43, !alias.scope !119, !noalias !25
  store ptr %i.ly, ptr %24, align 8, !tbaa !22, !alias.scope !119, !noalias !25
  %i.mb = load i8, ptr %i.c, align 8, !tbaa !7, !noalias !25
  %i.mc = icmp eq i8 %i.mb, 0
  br i1 %i.mc, label %bb.ct, label %bb.da

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19, !noalias !25
  invoke void @_ZSt11make_sharedIN5arrow14SparseCSRIndexEJRSt10shared_ptrINS0_6TensorEES5_EES2_IT_EDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.40") align 8 %25, ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 8 dereferenceable(16) %24)
          to label %bb.cu unwind label %bb.cz

bb.cu:                                            ; preds = %bb.ct
  %i.md = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10shared_ptrIN5arrow11SparseIndexEEaSINS0_14SparseCSRIndexEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS2_E4typeEOSC_(ptr noundef nonnull align 8 dereferenceable(64) %26, ptr noundef nonnull align 8 dereferenceable(16) %25) #19 ; 0 uses
  call void @_ZNSt12__shared_ptrIN5arrow14SparseCSRIndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %25) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19, !noalias !25
  br label %_ZNSt12__shared_ptrIN5arrow14SparseCSCIndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.cv:                                            ; preds = %bb.co
  %i.me = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit227.i

bb.cw:                                            ; preds = %bb.cp
  %i.mf = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.cx:                                            ; preds = %bb.cq
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit225.i

bb.cy:                                            ; preds = %bb.cr
  %i.mh = landingpad { ptr, i32 }
          cleanup
  br label %.body191.i

bb.cz:                                            ; preds = %bb.ct
  %i.mi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19, !noalias !25
  br label %.body195.i

bb.da:                                            ; preds = %bb.cs
  %i.mj = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #20
          to label %.noexc194.i unwind label %bb.di ; 6 uses

.noexc194.i:                                      ; preds = %bb.da
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  store i32 1, ptr %i.mk, align 8, !tbaa !46, !noalias !122
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mj, i64 12
  store i32 1, ptr %i.ml, align 4, !tbaa !48, !noalias !122
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow14SparseCSCIndexESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.mj, align 8, !tbaa !34, !noalias !122
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mj, i64 16 ; 3 uses
  invoke void @_ZN5arrow8internal14SparseCSXIndexINS_14SparseCSCIndexELNS0_26SparseMatrixCompressedAxisE1EEC2ERKSt10shared_ptrINS_6TensorEES9_(ptr noundef nonnull align 8 dereferenceable(48) %i.mm, ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 8 dereferenceable(16) %24)
          to label %bb.db unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow14SparseCSCIndexESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i, !noalias !122

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow14SparseCSCIndexESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i: ; preds = %.noexc194.i
  %i.mn = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.mj, i64 noundef 64) #21, !noalias !122
  br label %.body195.i

bb.db:                                            ; preds = %.noexc194.i
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5arrow14SparseCSCIndexE, i64 16), ptr %i.mm, align 8, !tbaa !34, !noalias !122
  store ptr %i.mm, ptr %26, align 8, !tbaa !125, !noalias !25
  %i.mo = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !43, !noalias !25 ; 8 uses
  store ptr %i.mj, ptr %i.mo, align 8, !tbaa !43, !noalias !25
  %.not.i.i.i.i197.i = icmp eq ptr %i.mp, null
  br i1 %.not.i.i.i.i197.i, label %_ZNSt12__shared_ptrIN5arrow14SparseCSCIndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 8 ; 4 uses
  %i.mr = load atomic i64, ptr %i.mq acquire, align 8 ; 2 uses
  %i.ms = icmp eq i64 %i.mr, 4294967297
  %i.mt = trunc i64 %i.mr to i32                  ; 2 uses
  br i1 %i.ms, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  store i32 0, ptr %i.mq, align 8, !tbaa !46
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mp, i64 12
  store i32 0, ptr %i.mu, align 4, !tbaa !48
  %i.mv = load ptr, ptr %i.mp, align 8, !tbaa !34
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  %i.mx = load ptr, ptr %i.mw, align 8
  call void %i.mx(ptr noundef nonnull align 8 dereferenceable(16) %i.mp) #19, !inline_history !126
  %i.my = load ptr, ptr %i.mp, align 8, !tbaa !34
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 24
  %i.na = load ptr, ptr %i.mz, align 8
  call void %i.na(ptr noundef nonnull align 8 dereferenceable(16) %i.mp) #19, !inline_history !126
  br label %_ZNSt12__shared_ptrIN5arrow14SparseCSCIndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.de:                                            ; preds = %bb.dc
  %i.nb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44, !noalias !25
  %.not.i.i.i.i.i198.i = icmp eq i8 %i.nb, 0
  br i1 %.not.i.i.i.i.i198.i, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.nc = add nsw i32 %i.mt, -1
  store i32 %i.nc, ptr %i.mq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i199.i

bb.dg:                                            ; preds = %bb.de
  %i.nd = atomicrmw volatile add ptr %i.mq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i199.i

end_hunk_0
begin_hunk_1_@_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRKSt10shared_ptrINS0_8DataTypeEESt10unique_ptrINS0_6BufferESt14default_deleteISD_EERKSt6vectorIlSaIlEERSJ_RKSH_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISS_EEEEES2_DpOT_:.noexc

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !48
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #19, !inline_history !254
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !34
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #19, !inline_history !254
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %bb.h, !prof !50

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #19
  br label %bb.h

.body:                                            ; preds = %.noexc
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  resume { ptr, i32 } %i.u

bb.h:                                             ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  ret void
}

declare void @_ZN5arrow6TensorC1ERKSt10shared_ptrINS_8DataTypeEERKS1_INS_6BufferEERKSt6vectorIlSaIlEESE_RKSA_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISK_EE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #14 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { builtin nounwind }
attributes #22 = { noreturn nounwind }
attributes #23 = { noreturn }
attributes #24 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !18, i64 32}
!8 = !{!"_ZTSN5arrow8internal12_GLOBAL__N_124SparseCSXMatrixConverterE", !9, i64 0, !15, i64 16, !18, i64 32, !19, i64 40, !20, i64 48, !21, i64 56}
!9 = !{!"_ZTSSt10shared_ptrIN5arrow11SparseIndexEE", !10, i64 0}
!10 = !{!"_ZTSSt12__shared_ptrIN5arrow11SparseIndexELN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0, !13, i64 8}
!11 = !{!"p1 _ZTSN5arrow11SparseIndexE", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !14, i64 0}
!14 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0}
!15 = !{!"_ZTSSt10shared_ptrIN5arrow6BufferEE", !16, i64 0}
!16 = !{!"_ZTSSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EE", !17, i64 0, !13, i64 8}
!17 = !{!"p1 _ZTSN5arrow6BufferE", !12, i64 0}
!18 = !{!"_ZTSN5arrow8internal26SparseMatrixCompressedAxisE", !5, i64 0}
!19 = !{!"p1 _ZTSN5arrow6TensorE", !12, i64 0}
!20 = !{!"p1 _ZTSSt10shared_ptrIN5arrow8DataTypeEE", !12, i64 0}
!21 = !{!"p1 _ZTSN5arrow10MemoryPoolE", !12, i64 0}
!22 = !{!19, !19, i64 0}
!23 = !{!20, !20, i64 0}
!24 = !{!8, !21, i64 56}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_ZN5arrow8internal12_GLOBAL__N_124SparseCSXMatrixConverter7ConvertEv: argument 0"}
!27 = distinct !{!27, !"_ZN5arrow8internal12_GLOBAL__N_124SparseCSXMatrixConverter7ConvertEv"}
!28 = !{!29, !30, i64 0}
!29 = !{!"_ZTSN5arrow6StatusE", !30, i64 0}
!30 = !{!"p1 _ZTSN5arrow6Status5StateE", !12, i64 0}
!31 = !{!32, !33, i64 0}
!32 = !{!"_ZTSSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE", !33, i64 0, !13, i64 8}
!33 = !{!"p1 _ZTSN5arrow8DataTypeE", !12, i64 0}
!34 = !{!35, !35, i64 0}
!35 = !{!"vtable pointer", !6, i64 0}
!36 = distinct !{null}
!37 = !{!8, !19, i64 40}
!38 = !{}
!39 = !{i64 8}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZNK5arrow6Tensor4typeEv: argument 0"}
!42 = distinct !{!42, !"_ZNK5arrow6Tensor4typeEv"}
!43 = !{!13, !14, i64 0}
!44 = !{!5, !5, i64 0}
!45 = !{!41, !26}
!46 = !{!47, !4, i64 8}
!47 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!48 = !{!47, !4, i64 12}
!49 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!50 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!51 = !{!52, !53, i64 8}
!52 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!53 = !{!"p1 long", !12, i64 0}
!54 = !{!52, !53, i64 0}
!55 = !{!56, !56, i64 0}
!56 = !{!"long", !5, i64 0}
!57 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZNO5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE11ValueUnsafeEv: argument 0"}
!60 = distinct !{!60, !"_ZNO5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE11ValueUnsafeEv"}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE15MoveValueUnsafeEv: argument 0"}
!63 = distinct !{!63, !"_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE15MoveValueUnsafeEv"}
!64 = !{!17, !17, i64 0}
!65 = !{!62, !59, !26}
!66 = !{!62, !59}
!67 = !{!68, !69, i64 9}
!68 = !{!"_ZTSN5arrow6BufferE", !69, i64 8, !69, i64 9, !70, i64 16, !56, i64 24, !56, i64 32, !71, i64 40, !15, i64 48, !72, i64 64}
!69 = !{!"bool", !5, i64 0}
!70 = !{!"p1 omnipotent char", !12, i64 0}
!71 = !{!"_ZTSN5arrow20DeviceAllocationTypeE", !5, i64 0}
!72 = !{!"_ZTSSt10shared_ptrIN5arrow13MemoryManagerEE", !73, i64 0}
!73 = !{!"_ZTSSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EE", !74, i64 0, !13, i64 8}
!74 = !{!"p1 _ZTSN5arrow13MemoryManagerE", !12, i64 0}
!75 = !{i8 0, i8 2}
!76 = !{!16, !17, i64 0}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZNO5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE11ValueUnsafeEv: argument 0"}
!79 = distinct !{!79, !"_ZNO5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE11ValueUnsafeEv"}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE15MoveValueUnsafeEv: argument 0"}
!82 = distinct !{!82, !"_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE15MoveValueUnsafeEv"}
!83 = !{!81, !78, !26}
!84 = !{!81, !78}
!85 = !{!12, !12, i64 0}
!86 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!87 = distinct !{null, null, null}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZNO5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE11ValueUnsafeEv: argument 0"}
!90 = distinct !{!90, !"_ZNO5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE11ValueUnsafeEv"}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE15MoveValueUnsafeEv: argument 0"}
!93 = distinct !{!93, !"_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE15MoveValueUnsafeEv"}
!94 = !{!92, !89, !26}
!95 = !{!92, !89}
!96 = distinct !{!96, !97, !98, !99}
!97 = !{!"llvm.loop.mustprogress"}
!98 = !{!"llvm.loop.isvectorized", i32 1}
!99 = !{!"llvm.loop.unroll.runtime.disable"}
!100 = distinct !{!100, !97, !99, !98}
!101 = distinct !{!101, !97}
!102 = distinct !{!102, !97}
!103 = distinct !{!103, !97}
!104 = distinct !{null, ptr @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev, null, null, null, null}
!105 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!106 = !{!107, !69, i64 1}
!107 = !{!"_ZTSN5arrow6Status5StateE", !108, i64 0, !69, i64 1, !109, i64 8, !111, i64 40}
!108 = !{!"_ZTSN5arrow10StatusCodeE", !5, i64 0}
!109 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !110, i64 0, !56, i64 8, !5, i64 16}
!110 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !70, i64 0}
!111 = !{!"_ZTSSt10shared_ptrIN5arrow12StatusDetailEE", !112, i64 0}
!112 = !{!"_ZTSSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EE", !113, i64 0, !13, i64 8}
!113 = !{!"p1 _ZTSN5arrow12StatusDetailE", !12, i64 0}
!114 = !{!52, !53, i64 16}
!115 = !{!8, !20, i64 48}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZSt11make_sharedIN5arrow6TensorEJRKSt10shared_ptrINS0_8DataTypeEERS2_INS0_6BufferEERSt6vectorIlSaIlEEEES2_IT_EDpOT0_: argument 0"}
!118 = distinct !{!118, !"_ZSt11make_sharedIN5arrow6TensorEJRKSt10shared_ptrINS0_8DataTypeEERS2_INS0_6BufferEERSt6vectorIlSaIlEEEES2_IT_EDpOT0_"}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_ZSt11make_sharedIN5arrow6TensorEJRKSt10shared_ptrINS0_8DataTypeEERS2_INS0_6BufferEERSt6vectorIlSaIlEEEES2_IT_EDpOT0_: argument 0"}
!121 = distinct !{!121, !"_ZSt11make_sharedIN5arrow6TensorEJRKSt10shared_ptrINS0_8DataTypeEERS2_INS0_6BufferEERSt6vectorIlSaIlEEEES2_IT_EDpOT0_"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZSt11make_sharedIN5arrow14SparseCSCIndexEJRSt10shared_ptrINS0_6TensorEES5_EES2_IT_EDpOT0_: argument 0"}
!124 = distinct !{!124, !"_ZSt11make_sharedIN5arrow14SparseCSCIndexEJRSt10shared_ptrINS0_6TensorEES5_EES2_IT_EDpOT0_"}
!125 = !{!11, !11, i64 0}
!126 = distinct !{null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!127 = !{!128, !26}
!128 = distinct !{!128, !129, !"_ZN5arrow6Status2OKEv: argument 0"}
!129 = distinct !{!129, !"_ZN5arrow6Status2OKEv"}
!130 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow6TensorELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!131 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!132 = !{!10, !11, i64 0}
!133 = distinct !{null, null, null, null}
!134 = distinct !{null, null, null, null}
!135 = !{!136}
!136 = distinct !{!136, !137, !"_ZN5arrow6Status2OKEv: argument 0"}
!137 = distinct !{!137, !"_ZN5arrow6Status2OKEv"}
!138 = distinct !{ptr @_ZN5arrow8internal12_GLOBAL__N_124SparseCSXMatrixConverterD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!139 = distinct !{ptr @_ZN5arrow8internal12_GLOBAL__N_124SparseCSXMatrixConverterD2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!140 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!141 = distinct !{null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!142 = distinct !{null}
!143 = !{!144}
!144 = distinct !{!144, !145, !"_ZNK5arrow12SparseTensor4typeEv: argument 0"}
!145 = distinct !{!145, !"_ZNK5arrow12SparseTensor4typeEv"}
!146 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!147 = !{!148, !19, i64 0}
!148 = !{!"_ZTSSt12__shared_ptrIN5arrow6TensorELN9__gnu_cxx12_Lock_policyE2EE", !19, i64 0, !13, i64 8}
!149 = !{!150}
!150 = distinct !{!150, !151, !"_ZNK5arrow6Tensor4typeEv: argument 0"}
!151 = distinct !{!151, !"_ZNK5arrow6Tensor4typeEv"}
!152 = !{!153}
!153 = distinct !{!153, !154, !"_ZNK5arrow6Tensor4typeEv: argument 0"}
!154 = distinct !{!154, !"_ZNK5arrow6Tensor4typeEv"}
!155 = !{!156}
!156 = distinct !{!156, !157, !"_ZNO5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE11ValueUnsafeEv: argument 0"}
!157 = distinct !{!157, !"_ZNO5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE11ValueUnsafeEv"}
!158 = !{!159}
!159 = distinct !{!159, !160, !"_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE15MoveValueUnsafeEv: argument 0"}
!160 = distinct !{!160, !"_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE15MoveValueUnsafeEv"}
!161 = !{!159, !156}
!162 = distinct !{!162, !97}
!163 = distinct !{!163, !97}
!164 = !{!165}
!165 = distinct !{!165, !166, !"_ZSt11make_sharedIN5arrow6TensorEJRKSt10shared_ptrINS0_8DataTypeEESt10unique_ptrINS0_6BufferESt14default_deleteIS8_EERKSt6vectorIlSaIlEERSE_RKSC_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISN_EEEES2_IT_EDpOT0_: argument 0"}
!166 = distinct !{!166, !"_ZSt11make_sharedIN5arrow6TensorEJRKSt10shared_ptrINS0_8DataTypeEESt10unique_ptrINS0_6BufferESt14default_deleteIS8_EERKSt6vectorIlSaIlEERSE_RKSC_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISN_EEEES2_IT_EDpOT0_"}
!167 = distinct !{null, null}
!168 = distinct !{ptr @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev, null, null, null, null}
!169 = distinct !{ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!170 = !{!171}
!171 = distinct !{!171, !172, !"_ZNK5arrow12SparseTensor4typeEv: argument 0"}
!172 = distinct !{!172, !"_ZNK5arrow12SparseTensor4typeEv"}
!173 = distinct !{null, null, null, null}
!174 = !{!175, !176, i64 0}
!175 = !{!"_ZTSSt12__shared_ptrIN5arrow14SparseCSRIndexELN9__gnu_cxx12_Lock_policyE2EE", !176, i64 0, !13, i64 8}
!176 = !{!"p1 _ZTSN5arrow14SparseCSRIndexE", !12, i64 0}
!177 = !{!178}
!178 = distinct !{!178, !179, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow14SparseCSRIndexESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!179 = distinct !{!179, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow14SparseCSRIndexESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!180 = !{!176, !176, i64 0}
!181 = distinct !{null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!182 = !{!183}
!183 = distinct !{!183, !184, !"_ZN5arrow8internal12JoinToStringIJRA25_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!184 = distinct !{!184, !"_ZN5arrow8internal12JoinToStringIJRA25_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!185 = !{!186, !194, i64 8}
!186 = !{!"_ZTSN5arrow8internal19StringStreamWrapperE", !187, i64 0, !194, i64 8}
!187 = !{!"_ZTSSt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !188, i64 0}
!188 = !{!"_ZTSSt15__uniq_ptr_dataINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_ELb1ELb1EE", !189, i64 0}
!189 = !{!"_ZTSSt15__uniq_ptr_implINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !190, i64 0}
!190 = !{!"_ZTSSt5tupleIJPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !191, i64 0}
!191 = !{!"_ZTSSt11_Tuple_implILm0EJPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !192, i64 0}
!192 = !{!"_ZTSSt10_Head_baseILm0EPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEELb0EE", !193, i64 0}
!193 = !{!"p1 _ZTSNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE", !12, i64 0}
!194 = !{!"p1 _ZTSSo", !12, i64 0}
!195 = !{!109, !70, i64 0}
!196 = !{!197}
!197 = distinct !{!197, !198, !"_ZN5arrow8internal12JoinToStringIJRA19_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!198 = distinct !{!198, !"_ZN5arrow8internal12JoinToStringIJRA19_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!199 = !{!200, !17, i64 0}
!200 = !{!"_ZTSNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE5_ImplE", !17, i64 0}
!201 = distinct !{null, null}
!202 = distinct !{null}
!203 = !{!204, !17, i64 16}
!204 = !{!"_ZTSSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE", !47, i64 0, !200, i64 16}
!205 = distinct !{null}
!206 = !{!207, !70, i64 8}
!207 = !{!"_ZTSSt9type_info", !70, i64 8}
!208 = distinct !{null}
!209 = distinct !{null, null}
!210 = distinct !{null, null}
!211 = !{!212, !213, i64 8}
!212 = !{!"_ZTSN5arrow11SparseIndexE", !213, i64 8}
!213 = !{!"_ZTSN5arrow18SparseTensorFormat4typeE", !5, i64 0}
!214 = !{!215}
!215 = distinct !{!215, !216, !"_ZNK5arrow6Tensor4typeEv: argument 0"}
!216 = distinct !{!216, !"_ZNK5arrow6Tensor4typeEv"}
!217 = !{!218}
!218 = distinct !{!218, !219, !"_ZNK5arrow6Tensor4typeEv: argument 0"}
!219 = distinct !{!219, !"_ZNK5arrow6Tensor4typeEv"}
!220 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow6TensorELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!221 = distinct !{ptr @_ZN5arrow8internal14SparseCSXIndexINS_14SparseCSRIndexELNS0_26SparseMatrixCompressedAxisE0EED2Ev, ptr @_ZNSt12__shared_ptrIN5arrow6TensorELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!222 = !{ptr @_ZN5arrow8internal14SparseCSXIndexINS_14SparseCSRIndexELNS0_26SparseMatrixCompressedAxisE0EED2Ev}
!223 = !{!110, !70, i64 0}
!224 = !{!109, !56, i64 8}
!225 = !{!226}
!226 = distinct !{!226, !227, !"_ZN5arrow6Status2OKEv: argument 0"}
!227 = distinct !{!227, !"_ZN5arrow6Status2OKEv"}
!228 = !{!229, !231}
!229 = distinct !{!229, !230, !"_ZN5arrow6Status8FromArgsIJRA39_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_NS_10StatusCodeEDpOT_: argument 0"}
!230 = distinct !{!230, !"_ZN5arrow6Status8FromArgsIJRA39_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_NS_10StatusCodeEDpOT_"}
!231 = distinct !{!231, !232, !"_ZN5arrow6Status7InvalidIJRA39_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_DpOT_: argument 0"}
!232 = distinct !{!232, !"_ZN5arrow6Status7InvalidIJRA39_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_DpOT_"}
!233 = !{!234}
!234 = distinct !{!234, !235, !"_ZN5arrow8internal12JoinToStringIJRA26_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!235 = distinct !{!235, !"_ZN5arrow8internal12JoinToStringIJRA26_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!236 = distinct !{null, null}
!237 = !{!238}
!238 = distinct !{!238, !239, !"_ZNK5arrow6Tensor4typeEv: argument 0"}
!239 = distinct !{!239, !"_ZNK5arrow6Tensor4typeEv"}
!240 = !{!241}
!241 = distinct !{!241, !242, !"_ZNK5arrow6Tensor4typeEv: argument 0"}
!242 = distinct !{!242, !"_ZNK5arrow6Tensor4typeEv"}
!243 = distinct !{ptr @_ZN5arrow8internal14SparseCSXIndexINS_14SparseCSCIndexELNS0_26SparseMatrixCompressedAxisE1EED2Ev, ptr @_ZNSt12__shared_ptrIN5arrow6TensorELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!244 = !{ptr @_ZN5arrow8internal14SparseCSXIndexINS_14SparseCSCIndexELNS0_26SparseMatrixCompressedAxisE1EED2Ev}
!245 = !{!246}
!246 = distinct !{!246, !247, !"_ZN5arrow6Status2OKEv: argument 0"}
!247 = distinct !{!247, !"_ZN5arrow6Status2OKEv"}
!248 = !{!249, !251}
!249 = distinct !{!249, !250, !"_ZN5arrow6Status8FromArgsIJRA39_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_NS_10StatusCodeEDpOT_: argument 0"}
!250 = distinct !{!250, !"_ZN5arrow6Status8FromArgsIJRA39_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_NS_10StatusCodeEDpOT_"}
!251 = distinct !{!251, !252, !"_ZN5arrow6Status7InvalidIJRA39_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_DpOT_: argument 0"}
!252 = distinct !{!252, !"_ZN5arrow6Status7InvalidIJRA39_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_DpOT_"}
!253 = distinct !{null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!254 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
end_hunk_1
