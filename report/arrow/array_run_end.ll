inline.NumInlined: 1433
inline.NumDeleted: 531
begin_hunk_0_@_ZNK5arrow18RunEndEncodedArray14LogicalRunEndsEPNS_10MemoryPoolE:bb.a
  %i.eq = select i1 %i.en, ptr %i.ep, ptr null, !prof !60
  %i.er = getelementptr inbounds [2 x i8], ptr %i.eq, i64 %i.eg ; 2 uses
  %i.es = shl i64 %i.aj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.er, ptr nonnull align 2 %.0.i.i.i, i64 %i.es, i1 false)
  %i.et = load ptr, ptr %i.h, align 8, !tbaa !35, !noalias !137
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !154
  %i.ew = trunc i64 %i.ev to i16
  %i.ex = getelementptr inbounds [2 x i8], ptr %i.er, i64 %i.aj
  store i16 %i.ew, ptr %i.ex, align 2, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #19, !noalias !137
  invoke void @_ZN5arrow9MakeArrayERKSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.7") align 8 %42, ptr noundef nonnull align 8 dereferenceable(16) %37)
          to label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit115.i unwind label %bb.ak

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit115.i: ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIsEEPT_i.exit.i
  store ptr null, ptr %0, align 8, !tbaa !98, !alias.scope !137
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ez = load <2 x ptr>, ptr %42, align 16, !tbaa !69, !noalias !137
  store <2 x ptr> %i.ez, ptr %i.ey, align 8, !tbaa !69, !alias.scope !137
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #19, !noalias !137
  br label %bb.al

.loopexit.loopexit165.i:                          ; preds = %bb.u
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

.loopexit.loopexit.i:                             ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E.exit.i
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.bz) #19, !noalias !137
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %.loopexit.loopexit165.i
  %.pn77.i = phi { ptr, i32 } [ %i.fb, %.loopexit.loopexit.i ], [ %i.fa, %.loopexit.loopexit165.i ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %41) #19, !noalias !137
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #19, !noalias !137
  %i.fc = load ptr, ptr %40, align 8, !tbaa !163, !noalias !137 ; 3 uses
  %.not.i116.i = icmp eq ptr %i.fc, null
  br i1 %.not.i116.i, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit118.i, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i117.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i117.i: ; preds = %.loopexit.i
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !33, !noalias !137
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !noalias !137
  call void %i.ff(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.fc) #19, !noalias !137, !inline_history !167
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit118.i

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit118.i: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i117.i, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #19, !noalias !137
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %39) #19, !noalias !137
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #19, !noalias !137
  br label %bb.as

bb.ak:                                            ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIsEEPT_i.exit.i
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #19, !noalias !137
  br label %bb.as

bb.al:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit115.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i
  %i.fh = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !70, !noalias !137 ; 8 uses
  %.not.i.i119.i = icmp eq ptr %i.fi, null
  br i1 %.not.i.i119.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 4 uses
  %i.fk = load atomic i64, ptr %i.fj acquire, align 8 ; 2 uses
  %i.fl = icmp eq i64 %i.fk, 4294967297
  %i.fm = trunc i64 %i.fk to i32                  ; 2 uses
  br i1 %i.fl, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.fj, align 8, !tbaa !71
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 12
  store i32 0, ptr %i.fn, align 4, !tbaa !73
  %i.fo = load ptr, ptr %i.fi, align 8, !tbaa !33
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8
  call void %i.fq(ptr noundef nonnull align 8 dereferenceable(16) %i.fi) #19, !inline_history !170
  %i.fr = load ptr, ptr %i.fi, align 8, !tbaa !33
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(16) %i.fi) #19, !inline_history !170
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.ao:                                            ; preds = %bb.am
  %i.fu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75, !noalias !137
  %.not.i.i.i120.i = icmp eq i8 %i.fu, 0
  br i1 %.not.i.i.i120.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fv = add nsw i32 %i.fm, -1
  store i32 %i.fv, ptr %i.fj, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i121.i

bb.aq:                                            ; preds = %bb.ao
  %i.fw = atomicrmw volatile add ptr %i.fj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i121.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i121.i: ; preds = %bb.aq, %bb.ap
  %.0.i.i.i.i122.i = phi i32 [ %i.fm, %bb.ap ], [ %i.fw, %bb.aq ]
  %i.fx = icmp eq i32 %.0.i.i.i.i122.i, 1
  br i1 %i.fx, label %bb.ar, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !76

bb.ar:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i121.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fi) #19
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.ar, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i121.i, %bb.an, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19, !noalias !137
  br label %_ZN5arrow12_GLOBAL__N_118MakeLogicalRunEndsINS_9Int16TypeEEENS_6ResultISt10shared_ptrINS_5ArrayEEEERKNS_18RunEndEncodedArrayEPNS_10MemoryPoolE.exit

bb.as:                                            ; preds = %bb.ak, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit118.i, %bb.t
  %.pn81.pn.i = phi { ptr, i32 } [ %i.bw, %bb.t ], [ %.pn77.i, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit118.i ], [ %i.fg, %bb.ak ]
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %37) #19
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.s
  %.pn81.pn.pn.i = phi { ptr, i32 } [ %.pn81.pn.i, %bb.as ], [ %i.bv, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19, !noalias !137
  br label %common.resume

bb.au:                                            ; preds = %bb.b
  %i.fy = tail call noundef i64 @_ZNK5arrow18RunEndEncodedArray18FindPhysicalOffsetEv(ptr noundef nonnull readonly align 8 dereferenceable(64) %1), !noalias !137
  %i.fz = tail call noundef i64 @_ZNK5arrow18RunEndEncodedArray18FindPhysicalLengthEv(ptr noundef nonnull readonly align 8 dereferenceable(64) %1), !noalias !137 ; 4 uses
  %i.ga = load ptr, ptr %i.h, align 8, !tbaa !35, !noalias !137
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 64
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !64, !noalias !137
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !35, !noalias !137 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 40
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !78, !noalias !137
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !123, !noalias !137 ; 3 uses
  %.not.i.i123.i = icmp eq ptr %i.gh, null
  br i1 %.not.i.i123.i, label %_ZNK5arrow9ArrayData9GetValuesIsEEPKT_i.exit125.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gd, i64 32
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !140, !noalias !137
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 9
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !126, !range !111, !noalias !137, !noundef !112
  %i.gm = trunc nuw i8 %i.gl to i1
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.go = load ptr, ptr %i.gn, align 8, !noalias !137
  %i.gp = select i1 %i.gm, ptr %i.go, ptr null, !prof !60
  %i.gq = getelementptr inbounds [2 x i8], ptr %i.gp, i64 %i.gj
  br label %_ZNK5arrow9ArrayData9GetValuesIsEEPKT_i.exit125.i

_ZNK5arrow9ArrayData9GetValuesIsEEPKT_i.exit125.i: ; preds = %bb.av, %bb.au
  %.0.i.i124.i = phi ptr [ %i.gq, %bb.av ], [ null, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #19, !noalias !137
  %i.gr = getelementptr inbounds nuw i8, ptr %43, i64 8
  store ptr %2, ptr %i.gr, align 8, !tbaa !171, !noalias !137
  %i.gs = getelementptr inbounds nuw i8, ptr %43, i64 16
  store i64 64, ptr %i.gs, align 8, !tbaa !184, !noalias !137
  %i.gt = getelementptr inbounds nuw i8, ptr %43, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.gt, i8 0, i64 16, i1 false), !noalias !137
  %i.gu = getelementptr inbounds nuw i8, ptr %43, i64 40
  store ptr %2, ptr %i.gu, align 8, !tbaa !185, !noalias !137
  %i.gv = getelementptr inbounds nuw i8, ptr %43, i64 48 ; 3 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.gv, align 8, !tbaa !186, !noalias !137
  %i.gw = getelementptr inbounds nuw i8, ptr %43, i64 56
  %i.gx = getelementptr inbounds nuw i8, ptr %43, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gw, i8 0, i64 16, i1 false), !noalias !137
  store i64 64, ptr %i.gx, align 8, !tbaa !187, !noalias !137
  %i.gy = getelementptr inbounds nuw i8, ptr %43, i64 80 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gy, i8 0, i64 64, i1 false), !noalias !137
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow14NumericBuilderINS_9Int16TypeEEE, i64 16), ptr %43, align 8, !tbaa !33, !noalias !137
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.gz = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int16Ev()
          to label %.noexc.i.i unwind label %bb.az, !noalias !137 ; 2 uses

.noexc.i.i:                                       ; preds = %_ZNK5arrow9ArrayData9GetValuesIsEEPKT_i.exit125.i
  %i.ha = getelementptr inbounds nuw i8, ptr %43, i64 144
  %i.hb = getelementptr inbounds nuw i8, ptr %43, i64 152
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !70, !noalias !191 ; 2 uses
  %i.he = load <2 x ptr>, ptr %i.gz, align 8, !tbaa !69, !noalias !191
  store <2 x ptr> %i.he, ptr %i.ha, align 8, !tbaa !69, !alias.scope !188, !noalias !137
  %.not.i.i.i.i.i.i = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow14NumericBuilderINS_9Int16TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i, label %bb.aw

bb.aw:                                            ; preds = %.noexc.i.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 8 ; 3 uses
  %i.hg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75, !noalias !191
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.hg, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hh = load i32, ptr %i.hf, align 4, !tbaa !3, !noalias !191
  %i.hi = add nsw i32 %i.hh, 1
  store i32 %i.hi, ptr %i.hf, align 4, !tbaa !3, !noalias !191
  br label %_ZN5arrow14NumericBuilderINS_9Int16TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i

bb.ay:                                            ; preds = %bb.aw
  %i.hj = atomicrmw volatile add ptr %i.hf, i32 1 acq_rel, align 4, !noalias !191 ; 0 uses
  br label %_ZN5arrow14NumericBuilderINS_9Int16TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i

common.resume.sink.split:                         ; preds = %bb.az, %bb.eb, %bb.hd
  %.sink = phi ptr [ %13, %bb.hd ], [ %28, %bb.eb ], [ %43, %bb.az ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.ahy, %bb.hd ], [ %i.us, %bb.eb ], [ %i.hk, %bb.az ]
  call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(216) %.sink) #19, !noalias !112
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.gx, %bb.ig, %bb.dv, %bb.fe, %bb.at, %bb.cc
  %common.resume.op = phi { ptr, i32 } [ %.pn75.i11, %bb.fe ], [ %.pn75.i, %bb.cc ], [ %.pn75.i105, %bb.ig ], [ %.pn81.pn.pn.i, %bb.at ], [ %.pn81.pn.pn.i149, %bb.gx ], [ %.pn81.pn.pn.i55, %bb.dv ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.az:                                            ; preds = %_ZNK5arrow9ArrayData9GetValuesIsEEPKT_i.exit125.i
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_ZN5arrow14NumericBuilderINS_9Int16TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i: ; preds = %bb.ay, %bb.ax, %.noexc.i.i
  %i.hl = getelementptr inbounds nuw i8, ptr %43, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.hl, i8 0, i64 16, i1 false), !noalias !137
  %i.hm = getelementptr inbounds nuw i8, ptr %43, i64 176
  store ptr %2, ptr %i.hm, align 8, !tbaa !185, !noalias !137
  %i.hn = getelementptr inbounds nuw i8, ptr %43, i64 184 ; 3 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.hn, align 8, !tbaa !186, !noalias !137
  %i.ho = getelementptr inbounds nuw i8, ptr %43, i64 192
  %i.hp = getelementptr inbounds nuw i8, ptr %43, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ho, i8 0, i64 16, i1 false), !noalias !137
  store i64 64, ptr %i.hp, align 8, !tbaa !187, !noalias !137
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #19, !noalias !137
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #19, !noalias !137
  invoke void @_ZN5arrow14NumericBuilderINS_9Int16TypeEE6ResizeEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %45, ptr noundef nonnull align 8 dereferenceable(216) %43, i64 noundef %i.fz)
          to label %_ZN5arrow6StatusD2Ev.exit.i unwind label %bb.bd, !noalias !137

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %_ZN5arrow14NumericBuilderINS_9Int16TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i
  %i.hq = load ptr, ptr %45, align 8, !tbaa !98, !noalias !137 ; 2 uses
  store ptr %i.hq, ptr %44, align 8, !tbaa !98, !noalias !137
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #19, !noalias !137
  %i.hr = icmp eq ptr %i.hq, null
  br i1 %i.hr, label %_ZN5arrow6StatusD2Ev.exit132.i, label %bb.ba, !prof !60

bb.ba:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %44) #19
  %i.hs = load ptr, ptr %44, align 8, !tbaa !98, !noalias !137 ; 2 uses
  %.not.i127.i = icmp eq ptr %i.hs, null
  br i1 %.not.i127.i, label %_ZN5arrow6StatusD2Ev.exit128.i, label %bb.bb, !prof !60

bb.bb:                                            ; preds = %bb.ba
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 1
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !101, !range !111, !noundef !112
  %i.hv = trunc nuw i8 %i.hu to i1
  br i1 %i.hv, label %_ZN5arrow6StatusD2Ev.exit128.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %44) #19
  br label %_ZN5arrow6StatusD2Ev.exit128.i

_ZN5arrow6StatusD2Ev.exit128.i:                   ; preds = %bb.bc, %bb.bb, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #19, !noalias !137
  br label %bb.bp

bb.bd:                                            ; preds = %_ZN5arrow14NumericBuilderINS_9Int16TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i
  %i.hw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #19, !noalias !137
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #19, !noalias !137
  br label %bb.cc

_ZN5arrow6StatusD2Ev.exit132.i:                   ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #19, !noalias !137
  %i.hx = icmp sgt i64 %i.fz, 0
  br i1 %i.hx, label %.preheader.i, label %bb.bo

.preheader.i:                                     ; preds = %_ZN5arrow6StatusD2Ev.exit132.i
  %.not163.not.i = icmp eq i64 %i.fz, 1
  br i1 %.not163.not.i, label %.critedge89.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.hy = getelementptr [2 x i8], ptr %.0.i.i124.i, i64 %i.fy
  %i.hz = getelementptr inbounds nuw i8, ptr %43, i64 112
  %i.ia = getelementptr inbounds nuw i8, ptr %43, i64 104 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %43, i64 200 ; 3 uses
  %i.ic = add nsw i64 %i.fz, -2
  br label %bb.be

bb.be:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit141.i, %.lr.ph.i
  %.052164.i = phi i64 [ 0, %.lr.ph.i ], [ %i.js, %_ZN5arrow6StatusD2Ev.exit141.i ] ; 3 uses
  %i.id = getelementptr [2 x i8], ptr %i.hy, i64 %.052164.i
  %i.ie = load i16, ptr %i.id, align 2, !tbaa !155, !noalias !137
  %i.if = load ptr, ptr %i.h, align 8, !tbaa !35, !noalias !137
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 32
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !140, !noalias !137
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #19, !noalias !137
  %i.ii = trunc i64 %i.ih to i16
  %i.ij = sub i16 %i.ie, %i.ii
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #19, !noalias !192
  %i.ik = load i64, ptr %i.hz, align 8, !tbaa !195, !noalias !196 ; 2 uses
  %i.il = load ptr, ptr %43, align 8, !tbaa !33, !noalias !196
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %i.in = load ptr, ptr %i.im, align 8, !noalias !196
  %i.io = invoke noundef i64 %i.in(ptr noundef nonnull align 8 dereferenceable(216) %43)
          to label %.noexc.i unwind label %bb.bi, !noalias !137, !inline_history !199 ; 2 uses

.noexc.i:                                         ; preds = %bb.be
  %.not.i.not.i.i = icmp slt i64 %i.io, %i.ik
  br i1 %.not.i.not.i.i, label %_ZN5arrow6StatusD2Ev.exit10.thread.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i

_ZN5arrow6StatusD2Ev.exit10.thread.i.i:           ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #19, !noalias !192
  br label %_ZN5arrow6StatusD2Ev.exit141.i

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %.noexc.i
  %i.ip = add nsw i64 %i.io, 1
  %i.iq = shl nsw i64 %i.ik, 1
  %.sroa.speculated.i.i.i.i = call noundef i64 @llvm.smax.i64(i64 %i.ip, i64 %i.iq)
  %i.ir = load ptr, ptr %43, align 8, !tbaa !33, !noalias !196
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 24
  %i.it = load ptr, ptr %i.is, align 8, !noalias !196
  invoke void %i.it(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %34, ptr noundef nonnull align 8 dereferenceable(216) %43, i64 noundef %.sroa.speculated.i.i.i.i)
          to label %.noexc133.i unwind label %bb.bi, !noalias !137, !inline_history !199

.noexc133.i:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  %.pr.i.i = load ptr, ptr %34, align 8, !tbaa !98, !noalias !192 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #19, !noalias !192
  %i.iu = icmp eq ptr %.pr.i.i, null
  br i1 %i.iu, label %_ZN5arrow6StatusD2Ev.exit141.i, label %bb.bf

bb.bf:                                            ; preds = %.noexc133.i
  store ptr %.pr.i.i, ptr %46, align 8, !tbaa !98, !noalias !137
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %46) #19
  %i.iv = load ptr, ptr %46, align 8, !tbaa !98, !noalias !137 ; 2 uses
  %.not.i136.i = icmp eq ptr %i.iv, null
  br i1 %.not.i136.i, label %_ZN5arrow6StatusD2Ev.exit137.i, label %bb.bg, !prof !60

bb.bg:                                            ; preds = %bb.bf
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 1
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !101, !range !111, !noundef !112
  %i.iy = trunc nuw i8 %i.ix to i1
  br i1 %i.iy, label %_ZN5arrow6StatusD2Ev.exit137.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %46) #19
  br label %_ZN5arrow6StatusD2Ev.exit137.i

_ZN5arrow6StatusD2Ev.exit137.i:                   ; preds = %bb.bh, %bb.bg, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #19, !noalias !137
  br label %bb.bp

bb.bi:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i, %bb.be
  %i.iz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #19, !noalias !137
  br label %bb.cc

_ZN5arrow6StatusD2Ev.exit141.i:                   ; preds = %.noexc133.i, %_ZN5arrow6StatusD2Ev.exit10.thread.i.i
  %i.ja = load ptr, ptr %i.gv, align 8, !tbaa !186, !noalias !192
  %i.jb = load i64, ptr %i.gy, align 8, !tbaa !200, !noalias !192 ; 2 uses
  %i.jc = sdiv i64 %i.jb, 8
  %i.jd = getelementptr inbounds i8, ptr %i.ja, i64 %i.jc ; 2 uses
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !75, !noalias !192
  %i.jf = srem i64 %i.jb, 8
  %i.jg = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.jf
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !75, !noalias !192
  %i.ji = or i8 %i.jh, %i.je
  store i8 %i.ji, ptr %i.jd, align 1, !tbaa !75, !noalias !192
  %i.jj = load i64, ptr %i.gy, align 8, !tbaa !200, !noalias !192
  %i.jk = add nsw i64 %i.jj, 1
  store i64 %i.jk, ptr %i.gy, align 8, !tbaa !200, !noalias !192
  %i.jl = load i64, ptr %i.ia, align 8, !tbaa !201, !noalias !192
  %i.jm = add nsw i64 %i.jl, 1
  store i64 %i.jm, ptr %i.ia, align 8, !tbaa !201, !noalias !192
  %i.jn = load ptr, ptr %i.hn, align 8, !tbaa !186, !noalias !192
  %i.jo = load i64, ptr %i.ib, align 8, !tbaa !202, !noalias !192
  %i.jp = getelementptr inbounds i8, ptr %i.jn, i64 %i.jo
  store i16 %i.ij, ptr %i.jp, align 1, !noalias !192
  %i.jq = load i64, ptr %i.ib, align 8, !tbaa !202, !noalias !192
  %i.jr = add nsw i64 %i.jq, 2
  store i64 %i.jr, ptr %i.ib, align 8, !tbaa !202, !noalias !192
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #19, !noalias !137
  %i.js = add nuw nsw i64 %.052164.i, 1
  %exitcond.not.i = icmp eq i64 %.052164.i, %i.ic
  br i1 %exitcond.not.i, label %.critedge89.i, label %bb.be, !llvm.loop !203

bb.bj:                                            ; preds = %bb.bo
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.critedge89.i:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit141.i, %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #19, !noalias !137
  %i.ju = load ptr, ptr %i.h, align 8, !tbaa !35, !noalias !137
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !154, !noalias !137
  %i.jx = trunc i64 %i.jw to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #19, !noalias !204
  %i.jy = getelementptr inbounds nuw i8, ptr %43, i64 112
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !195, !noalias !207 ; 2 uses
  %i.ka = load ptr, ptr %43, align 8, !tbaa !33, !noalias !207
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  %i.kc = load ptr, ptr %i.kb, align 8, !noalias !207
  %i.kd = invoke noundef i64 %i.kc(ptr noundef nonnull align 8 dereferenceable(216) %43)
          to label %.noexc147.i unwind label %bb.bn, !noalias !137, !inline_history !199 ; 2 uses

.noexc147.i:                                      ; preds = %.critedge89.i
  %.not.i.not.i142.i = icmp slt i64 %i.kd, %i.jz
  br i1 %.not.i.not.i142.i, label %_ZN5arrow6StatusD2Ev.exit10.thread.i146.i, label %_ZN5arrow6StatusD2Ev.exit.i143.i

_ZN5arrow6StatusD2Ev.exit10.thread.i146.i:        ; preds = %.noexc147.i
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #19, !noalias !204
  br label %_ZN5arrow6StatusD2Ev.exit157.i

_ZN5arrow6StatusD2Ev.exit.i143.i:                 ; preds = %.noexc147.i
  %i.ke = add nsw i64 %i.kd, 1
  %i.kf = shl nsw i64 %i.jz, 1
  %.sroa.speculated.i.i.i144.i = call noundef i64 @llvm.smax.i64(i64 %i.ke, i64 %i.kf)
  %i.kg = load ptr, ptr %43, align 8, !tbaa !33, !noalias !207
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 24
end_hunk_0
begin_hunk_1_@_ZNK5arrow18RunEndEncodedArray14LogicalRunEndsEPNS_10MemoryPoolE:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.rz, ptr nonnull align 4 %.0.i.i.i51, i64 %i.sa, i1 false)
  %i.sb = load ptr, ptr %i.h, align 8, !tbaa !35, !noalias !213
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 16
  %i.sd = load i64, ptr %i.sc, align 8, !tbaa !154
  %i.se = trunc i64 %i.sd to i32
  %i.sf = getelementptr inbounds [4 x i8], ptr %i.rz, i64 %i.nr
  store i32 %i.se, ptr %i.sf, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #19, !noalias !213
  invoke void @_ZN5arrow9MakeArrayERKSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.7") align 8 %27, ptr noundef nonnull align 8 dereferenceable(16) %22)
          to label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit115.i69 unwind label %bb.dm

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit115.i69: ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i
  store ptr null, ptr %0, align 8, !tbaa !98, !alias.scope !213
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.sh = load <2 x ptr>, ptr %27, align 16, !tbaa !69, !noalias !213
  store <2 x ptr> %i.sh, ptr %i.sg, align 8, !tbaa !69, !alias.scope !213
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19, !noalias !213
  br label %bb.dn

.loopexit.loopexit165.i74:                        ; preds = %bb.cw
  %i.si = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i75

.loopexit.loopexit.i81:                           ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E.exit.i80
  %i.sj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.ph) #19, !noalias !213
  br label %.loopexit.i75

.loopexit.i75:                                    ; preds = %.loopexit.loopexit.i81, %.loopexit.loopexit165.i74
  %.pn77.i76 = phi { ptr, i32 } [ %i.sj, %.loopexit.loopexit.i81 ], [ %i.si, %.loopexit.loopexit165.i74 ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %26) #19, !noalias !213
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19, !noalias !213
  %i.sk = load ptr, ptr %25, align 8, !tbaa !163, !noalias !213 ; 3 uses
  %.not.i116.i77 = icmp eq ptr %i.sk, null
  br i1 %.not.i116.i77, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit118.i79, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i117.i78

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i117.i78: ; preds = %.loopexit.i75
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !33, !noalias !213
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 8
  %i.sn = load ptr, ptr %i.sm, align 8, !noalias !213
  call void %i.sn(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.sk) #19, !noalias !213, !inline_history !226
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit118.i79

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit118.i79: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i117.i78, %.loopexit.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19, !noalias !213
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %24) #19, !noalias !213
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19, !noalias !213
  br label %bb.du

bb.dm:                                            ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i
  %i.so = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19, !noalias !213
  br label %bb.du

bb.dn:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit115.i69, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i63
  %i.sp = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !70, !noalias !213 ; 8 uses
  %.not.i.i119.i64 = icmp eq ptr %i.sq, null
  br i1 %.not.i.i119.i64, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i68, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 8 ; 4 uses
  %i.ss = load atomic i64, ptr %i.sr acquire, align 8 ; 2 uses
  %i.st = icmp eq i64 %i.ss, 4294967297
  %i.su = trunc i64 %i.ss to i32                  ; 2 uses
  br i1 %i.st, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  store i32 0, ptr %i.sr, align 8, !tbaa !71
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sq, i64 12
  store i32 0, ptr %i.sv, align 4, !tbaa !73
  %i.sw = load ptr, ptr %i.sq, align 8, !tbaa !33
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 16
  %i.sy = load ptr, ptr %i.sx, align 8
  call void %i.sy(ptr noundef nonnull align 8 dereferenceable(16) %i.sq) #19, !inline_history !228
  %i.sz = load ptr, ptr %i.sq, align 8, !tbaa !33
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 24
  %i.tb = load ptr, ptr %i.ta, align 8
  call void %i.tb(ptr noundef nonnull align 8 dereferenceable(16) %i.sq) #19, !inline_history !228
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i68

bb.dq:                                            ; preds = %bb.do
  %i.tc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75, !noalias !213
  %.not.i.i.i120.i65 = icmp eq i8 %i.tc, 0
  br i1 %.not.i.i.i120.i65, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.td = add nsw i32 %i.su, -1
  store i32 %i.td, ptr %i.sr, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i121.i66

bb.ds:                                            ; preds = %bb.dq
  %i.te = atomicrmw volatile add ptr %i.sr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i121.i66

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i121.i66: ; preds = %bb.ds, %bb.dr
  %.0.i.i.i.i122.i67 = phi i32 [ %i.su, %bb.dr ], [ %i.te, %bb.ds ]
  %i.tf = icmp eq i32 %.0.i.i.i.i122.i67, 1
  br i1 %i.tf, label %bb.dt, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i68, !prof !76

bb.dt:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i121.i66
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.sq) #19
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i68

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i68: ; preds = %bb.dt, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i121.i66, %bb.dp, %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19, !noalias !213
  br label %_ZN5arrow12_GLOBAL__N_118MakeLogicalRunEndsINS_9Int32TypeEEENS_6ResultISt10shared_ptrINS_5ArrayEEEERKNS_18RunEndEncodedArrayEPNS_10MemoryPoolE.exit

bb.du:                                            ; preds = %bb.dm, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit118.i79, %bb.cv
  %.pn81.pn.i61 = phi { ptr, i32 } [ %i.pe, %bb.cv ], [ %.pn77.i76, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit118.i79 ], [ %i.so, %bb.dm ]
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %22) #19
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.cu
  %.pn81.pn.pn.i55 = phi { ptr, i32 } [ %.pn81.pn.i61, %bb.du ], [ %i.pd, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19, !noalias !213
  br label %common.resume

bb.dw:                                            ; preds = %bb.cd
  %i.tg = tail call noundef i64 @_ZNK5arrow18RunEndEncodedArray18FindPhysicalOffsetEv(ptr noundef nonnull readonly align 8 dereferenceable(64) %1), !noalias !213
  %i.th = tail call noundef i64 @_ZNK5arrow18RunEndEncodedArray18FindPhysicalLengthEv(ptr noundef nonnull readonly align 8 dereferenceable(64) %1), !noalias !213 ; 4 uses
  %i.ti = load ptr, ptr %i.h, align 8, !tbaa !35, !noalias !213
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 64
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !64, !noalias !213
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !35, !noalias !213 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 40
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !78, !noalias !213
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 16
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !123, !noalias !213 ; 3 uses
  %.not.i.i123.i4 = icmp eq ptr %i.tp, null
  br i1 %.not.i.i123.i4, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit125.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tl, i64 32
  %i.tr = load i64, ptr %i.tq, align 8, !tbaa !140, !noalias !213
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tp, i64 9
  %i.tt = load i8, ptr %i.ts, align 1, !tbaa !126, !range !111, !noalias !213, !noundef !112
  %i.tu = trunc nuw i8 %i.tt to i1
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tp, i64 16
  %i.tw = load ptr, ptr %i.tv, align 8, !noalias !213
  %i.tx = select i1 %i.tu, ptr %i.tw, ptr null, !prof !60
  %i.ty = getelementptr inbounds [4 x i8], ptr %i.tx, i64 %i.tr
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit125.i

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit125.i: ; preds = %bb.dx, %bb.dw
  %.0.i.i124.i5 = phi ptr [ %i.ty, %bb.dx ], [ null, %bb.dw ]
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #19, !noalias !213
  %i.tz = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr %2, ptr %i.tz, align 8, !tbaa !171, !noalias !213
  %i.ua = getelementptr inbounds nuw i8, ptr %28, i64 16
  store i64 64, ptr %i.ua, align 8, !tbaa !184, !noalias !213
  %i.ub = getelementptr inbounds nuw i8, ptr %28, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ub, i8 0, i64 16, i1 false), !noalias !213
  %i.uc = getelementptr inbounds nuw i8, ptr %28, i64 40
  store ptr %2, ptr %i.uc, align 8, !tbaa !185, !noalias !213
  %i.ud = getelementptr inbounds nuw i8, ptr %28, i64 48 ; 3 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ud, align 8, !tbaa !186, !noalias !213
  %i.ue = getelementptr inbounds nuw i8, ptr %28, i64 56
  %i.uf = getelementptr inbounds nuw i8, ptr %28, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ue, i8 0, i64 16, i1 false), !noalias !213
  store i64 64, ptr %i.uf, align 8, !tbaa !187, !noalias !213
  %i.ug = getelementptr inbounds nuw i8, ptr %28, i64 80 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ug, i8 0, i64 64, i1 false), !noalias !213
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow14NumericBuilderINS_9Int32TypeEEE, i64 16), ptr %28, align 8, !tbaa !33, !noalias !213
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229)
  %i.uh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int32Ev()
          to label %.noexc.i.i8 unwind label %bb.eb, !noalias !213 ; 2 uses

.noexc.i.i8:                                      ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit125.i
  %i.ui = getelementptr inbounds nuw i8, ptr %28, i64 144
  %i.uj = getelementptr inbounds nuw i8, ptr %28, i64 152
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uh, i64 8
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !70, !noalias !232 ; 2 uses
  %i.um = load <2 x ptr>, ptr %i.uh, align 8, !tbaa !69, !noalias !232
  store <2 x ptr> %i.um, ptr %i.ui, align 8, !tbaa !69, !alias.scope !229, !noalias !213
  %.not.i.i.i.i.i.i9 = icmp eq ptr %i.ul, null
  br i1 %.not.i.i.i.i.i.i9, label %_ZN5arrow14NumericBuilderINS_9Int32TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i, label %bb.dy

bb.dy:                                            ; preds = %.noexc.i.i8
  %i.un = getelementptr inbounds nuw i8, ptr %i.ul, i64 8 ; 3 uses
  %i.uo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75, !noalias !232
  %.not.i.i.i.i.i.i.i10 = icmp eq i8 %i.uo, 0
  br i1 %.not.i.i.i.i.i.i.i10, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.up = load i32, ptr %i.un, align 4, !tbaa !3, !noalias !232
  %i.uq = add nsw i32 %i.up, 1
  store i32 %i.uq, ptr %i.un, align 4, !tbaa !3, !noalias !232
  br label %_ZN5arrow14NumericBuilderINS_9Int32TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i

bb.ea:                                            ; preds = %bb.dy
  %i.ur = atomicrmw volatile add ptr %i.un, i32 1 acq_rel, align 4, !noalias !232 ; 0 uses
  br label %_ZN5arrow14NumericBuilderINS_9Int32TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i

bb.eb:                                            ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit125.i
  %i.us = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_ZN5arrow14NumericBuilderINS_9Int32TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i: ; preds = %bb.ea, %bb.dz, %.noexc.i.i8
  %i.ut = getelementptr inbounds nuw i8, ptr %28, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ut, i8 0, i64 16, i1 false), !noalias !213
  %i.uu = getelementptr inbounds nuw i8, ptr %28, i64 176
  store ptr %2, ptr %i.uu, align 8, !tbaa !185, !noalias !213
  %i.uv = getelementptr inbounds nuw i8, ptr %28, i64 184 ; 3 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.uv, align 8, !tbaa !186, !noalias !213
  %i.uw = getelementptr inbounds nuw i8, ptr %28, i64 192
  %i.ux = getelementptr inbounds nuw i8, ptr %28, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.uw, i8 0, i64 16, i1 false), !noalias !213
  store i64 64, ptr %i.ux, align 8, !tbaa !187, !noalias !213
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #19, !noalias !213
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #19, !noalias !213
  invoke void @_ZN5arrow14NumericBuilderINS_9Int32TypeEE6ResizeEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %30, ptr noundef nonnull align 8 dereferenceable(216) %28, i64 noundef %i.th)
          to label %_ZN5arrow6StatusD2Ev.exit.i12 unwind label %bb.ef, !noalias !213

_ZN5arrow6StatusD2Ev.exit.i12:                    ; preds = %_ZN5arrow14NumericBuilderINS_9Int32TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i
  %i.uy = load ptr, ptr %30, align 8, !tbaa !98, !noalias !213 ; 2 uses
  store ptr %i.uy, ptr %29, align 8, !tbaa !98, !noalias !213
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19, !noalias !213
  %i.uz = icmp eq ptr %i.uy, null
  br i1 %i.uz, label %_ZN5arrow6StatusD2Ev.exit132.i23, label %bb.ec, !prof !60

bb.ec:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i12
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %29) #19
  %i.va = load ptr, ptr %29, align 8, !tbaa !98, !noalias !213 ; 2 uses
  %.not.i127.i13 = icmp eq ptr %i.va, null
  br i1 %.not.i127.i13, label %_ZN5arrow6StatusD2Ev.exit128.i14, label %bb.ed, !prof !60

bb.ed:                                            ; preds = %bb.ec
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 1
  %i.vc = load i8, ptr %i.vb, align 1, !tbaa !101, !range !111, !noundef !112
  %i.vd = trunc nuw i8 %i.vc to i1
  br i1 %i.vd, label %_ZN5arrow6StatusD2Ev.exit128.i14, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %29) #19
  br label %_ZN5arrow6StatusD2Ev.exit128.i14

_ZN5arrow6StatusD2Ev.exit128.i14:                 ; preds = %bb.ee, %bb.ed, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #19, !noalias !213
  br label %bb.er

bb.ef:                                            ; preds = %_ZN5arrow14NumericBuilderINS_9Int32TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i
  %i.ve = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19, !noalias !213
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #19, !noalias !213
  br label %bb.fe

_ZN5arrow6StatusD2Ev.exit132.i23:                 ; preds = %_ZN5arrow6StatusD2Ev.exit.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #19, !noalias !213
  %i.vf = icmp sgt i64 %i.th, 0
  br i1 %i.vf, label %.preheader.i24, label %bb.ep

.preheader.i24:                                   ; preds = %_ZN5arrow6StatusD2Ev.exit132.i23
  %.not163.not.i25 = icmp eq i64 %i.th, 1
  br i1 %.not163.not.i25, label %.critedge89.i38, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %.preheader.i24
  %i.vg = getelementptr [4 x i8], ptr %.0.i.i124.i5, i64 %i.tg
  %i.vh = getelementptr inbounds nuw i8, ptr %28, i64 112
  %i.vi = getelementptr inbounds nuw i8, ptr %28, i64 104 ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %28, i64 200 ; 3 uses
  %i.vk = add nsw i64 %i.th, -2
  br label %bb.eg

bb.eg:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit141.i36, %.lr.ph.i26
  %.052164.i27 = phi i64 [ 0, %.lr.ph.i26 ], [ %i.xa, %_ZN5arrow6StatusD2Ev.exit141.i36 ] ; 3 uses
  %i.vl = getelementptr [4 x i8], ptr %i.vg, i64 %.052164.i27
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !3, !noalias !213
  %i.vn = load ptr, ptr %i.h, align 8, !tbaa !35, !noalias !213
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 32
  %i.vp = load i64, ptr %i.vo, align 8, !tbaa !140, !noalias !213
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #19, !noalias !213
  %i.vq = trunc i64 %i.vp to i32
  %i.vr = sub i32 %i.vm, %i.vq
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19, !noalias !233
  %i.vs = load i64, ptr %i.vh, align 8, !tbaa !195, !noalias !236 ; 2 uses
  %i.vt = load ptr, ptr %28, align 8, !tbaa !33, !noalias !236
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 16
  %i.vv = load ptr, ptr %i.vu, align 8, !noalias !236
  %i.vw = invoke noundef i64 %i.vv(ptr noundef nonnull align 8 dereferenceable(216) %28)
          to label %.noexc.i28 unwind label %bb.ek, !noalias !213, !inline_history !239 ; 2 uses

.noexc.i28:                                       ; preds = %bb.eg
  %.not.i.not.i.i29 = icmp slt i64 %i.vw, %i.vs
  br i1 %.not.i.not.i.i29, label %_ZN5arrow6StatusD2Ev.exit10.thread.i.i49, label %_ZN5arrow6StatusD2Ev.exit.i.i30

_ZN5arrow6StatusD2Ev.exit10.thread.i.i49:         ; preds = %.noexc.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19, !noalias !233
  br label %_ZN5arrow6StatusD2Ev.exit141.i36

_ZN5arrow6StatusD2Ev.exit.i.i30:                  ; preds = %.noexc.i28
  %i.vx = add nsw i64 %i.vw, 1
  %i.vy = shl nsw i64 %i.vs, 1
  %.sroa.speculated.i.i.i.i31 = call noundef i64 @llvm.smax.i64(i64 %i.vx, i64 %i.vy)
  %i.vz = load ptr, ptr %28, align 8, !tbaa !33, !noalias !236
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 24
  %i.wb = load ptr, ptr %i.wa, align 8, !noalias !236
  invoke void %i.wb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %19, ptr noundef nonnull align 8 dereferenceable(216) %28, i64 noundef %.sroa.speculated.i.i.i.i31)
          to label %.noexc133.i32 unwind label %bb.ek, !noalias !213, !inline_history !239

.noexc133.i32:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i30
  %.pr.i.i33 = load ptr, ptr %19, align 8, !tbaa !98, !noalias !233 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19, !noalias !233
  %i.wc = icmp eq ptr %.pr.i.i33, null
  br i1 %i.wc, label %_ZN5arrow6StatusD2Ev.exit141.i36, label %bb.eh

bb.eh:                                            ; preds = %.noexc133.i32
  store ptr %.pr.i.i33, ptr %31, align 8, !tbaa !98, !noalias !213
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %31) #19
  %i.wd = load ptr, ptr %31, align 8, !tbaa !98, !noalias !213 ; 2 uses
  %.not.i136.i34 = icmp eq ptr %i.wd, null
  br i1 %.not.i136.i34, label %_ZN5arrow6StatusD2Ev.exit137.i35, label %bb.ei, !prof !60

bb.ei:                                            ; preds = %bb.eh
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 1
  %i.wf = load i8, ptr %i.we, align 1, !tbaa !101, !range !111, !noundef !112
  %i.wg = trunc nuw i8 %i.wf to i1
  br i1 %i.wg, label %_ZN5arrow6StatusD2Ev.exit137.i35, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %31) #19
  br label %_ZN5arrow6StatusD2Ev.exit137.i35

_ZN5arrow6StatusD2Ev.exit137.i35:                 ; preds = %bb.ej, %bb.ei, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19, !noalias !213
  br label %bb.er

bb.ek:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i30, %bb.eg
  %i.wh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19, !noalias !213
  br label %bb.fe

_ZN5arrow6StatusD2Ev.exit141.i36:                 ; preds = %.noexc133.i32, %_ZN5arrow6StatusD2Ev.exit10.thread.i.i49
  %i.wi = load ptr, ptr %i.ud, align 8, !tbaa !186, !noalias !233
  %i.wj = load i64, ptr %i.ug, align 8, !tbaa !200, !noalias !233 ; 2 uses
  %i.wk = sdiv i64 %i.wj, 8
  %i.wl = getelementptr inbounds i8, ptr %i.wi, i64 %i.wk ; 2 uses
  %i.wm = load i8, ptr %i.wl, align 1, !tbaa !75, !noalias !233
  %i.wn = srem i64 %i.wj, 8
  %i.wo = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.wn
  %i.wp = load i8, ptr %i.wo, align 1, !tbaa !75, !noalias !233
  %i.wq = or i8 %i.wp, %i.wm
  store i8 %i.wq, ptr %i.wl, align 1, !tbaa !75, !noalias !233
  %i.wr = load i64, ptr %i.ug, align 8, !tbaa !200, !noalias !233
  %i.ws = add nsw i64 %i.wr, 1
  store i64 %i.ws, ptr %i.ug, align 8, !tbaa !200, !noalias !233
  %i.wt = load i64, ptr %i.vi, align 8, !tbaa !201, !noalias !233
  %i.wu = add nsw i64 %i.wt, 1
  store i64 %i.wu, ptr %i.vi, align 8, !tbaa !201, !noalias !233
  %i.wv = load ptr, ptr %i.uv, align 8, !tbaa !186, !noalias !233
  %i.ww = load i64, ptr %i.vj, align 8, !tbaa !202, !noalias !233
  %i.wx = getelementptr inbounds i8, ptr %i.wv, i64 %i.ww
  store i32 %i.vr, ptr %i.wx, align 1, !noalias !233
  %i.wy = load i64, ptr %i.vj, align 8, !tbaa !202, !noalias !233
  %i.wz = add nsw i64 %i.wy, 4
  store i64 %i.wz, ptr %i.vj, align 8, !tbaa !202, !noalias !233
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19, !noalias !213
  %i.xa = add nuw nsw i64 %.052164.i27, 1
  %exitcond.not.i37 = icmp eq i64 %.052164.i27, %i.vk
  br i1 %exitcond.not.i37, label %.critedge89.i38, label %bb.eg, !llvm.loop !240

.critedge89.i38:                                  ; preds = %_ZN5arrow6StatusD2Ev.exit141.i36, %.preheader.i24
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #19, !noalias !213
  %i.xb = load ptr, ptr %i.h, align 8, !tbaa !35, !noalias !213
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 16
  %i.xd = load i64, ptr %i.xc, align 8, !tbaa !154, !noalias !213
  %i.xe = trunc i64 %i.xd to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19, !noalias !241
  %i.xf = getelementptr inbounds nuw i8, ptr %28, i64 112
  %i.xg = load i64, ptr %i.xf, align 8, !tbaa !195, !noalias !244 ; 2 uses
  %i.xh = load ptr, ptr %28, align 8, !tbaa !33, !noalias !244
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 16
  %i.xj = load ptr, ptr %i.xi, align 8, !noalias !244
  %i.xk = invoke noundef i64 %i.xj(ptr noundef nonnull align 8 dereferenceable(216) %28)
          to label %.noexc147.i39 unwind label %bb.eo, !noalias !213, !inline_history !239 ; 2 uses

.noexc147.i39:                                    ; preds = %.critedge89.i38
  %.not.i.not.i142.i40 = icmp slt i64 %i.xk, %i.xg
  br i1 %.not.i.not.i142.i40, label %_ZN5arrow6StatusD2Ev.exit10.thread.i146.i48, label %_ZN5arrow6StatusD2Ev.exit.i143.i41

_ZN5arrow6StatusD2Ev.exit10.thread.i146.i48:      ; preds = %.noexc147.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19, !noalias !241
  br label %_ZN5arrow6StatusD2Ev.exit157.i47

_ZN5arrow6StatusD2Ev.exit.i143.i41:               ; preds = %.noexc147.i39
  %i.xl = add nsw i64 %i.xk, 1
  %i.xm = shl nsw i64 %i.xg, 1
  %.sroa.speculated.i.i.i144.i42 = call noundef i64 @llvm.smax.i64(i64 %i.xl, i64 %i.xm)
  %i.xn = load ptr, ptr %28, align 8, !tbaa !33, !noalias !244
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 24
  %i.xp = load ptr, ptr %i.xo, align 8, !noalias !244
  invoke void %i.xp(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %18, ptr noundef nonnull align 8 dereferenceable(216) %28, i64 noundef %.sroa.speculated.i.i.i144.i42)
          to label %.noexc148.i43 unwind label %bb.eo, !noalias !213, !inline_history !239

.noexc148.i43:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i143.i41
end_hunk_1
begin_hunk_2_@_ZNK5arrow18RunEndEncodedArray14LogicalRunEndsEPNS_10MemoryPoolE:bb.a
  %i.afh = shl i64 %i.aaz, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.afg, ptr nonnull align 8 %.0.i.i.i145, i64 %i.afh, i1 false)
  %i.afi = load ptr, ptr %i.h, align 8, !tbaa !35, !noalias !250
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afi, i64 16
  %i.afk = load i64, ptr %i.afj, align 8, !tbaa !154
  %i.afl = getelementptr inbounds [8 x i8], ptr %i.afg, i64 %i.aaz
  store i64 %i.afk, ptr %i.afl, align 8, !tbaa !201
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19, !noalias !250
  invoke void @_ZN5arrow9MakeArrayERKSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.7") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit115.i163 unwind label %bb.go

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit115.i163: ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIlEEPT_i.exit.i
  store ptr null, ptr %0, align 8, !tbaa !98, !alias.scope !250
  %i.afm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.afn = load <2 x ptr>, ptr %12, align 16, !tbaa !69, !noalias !250
  store <2 x ptr> %i.afn, ptr %i.afm, align 8, !tbaa !69, !alias.scope !250
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19, !noalias !250
  br label %bb.gp

.loopexit.loopexit165.i168:                       ; preds = %bb.fy
  %i.afo = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i169

.loopexit.loopexit.i175:                          ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E.exit.i174
  %i.afp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.aco) #19, !noalias !250
  br label %.loopexit.i169

.loopexit.i169:                                   ; preds = %.loopexit.loopexit.i175, %.loopexit.loopexit165.i168
  %.pn77.i170 = phi { ptr, i32 } [ %i.afp, %.loopexit.loopexit.i175 ], [ %i.afo, %.loopexit.loopexit165.i168 ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #19, !noalias !250
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19, !noalias !250
  %i.afq = load ptr, ptr %10, align 8, !tbaa !163, !noalias !250 ; 3 uses
  %.not.i116.i171 = icmp eq ptr %i.afq, null
  br i1 %.not.i116.i171, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit118.i173, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i117.i172

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i117.i172: ; preds = %.loopexit.i169
  %i.afr = load ptr, ptr %i.afq, align 8, !tbaa !33, !noalias !250
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 8
  %i.aft = load ptr, ptr %i.afs, align 8, !noalias !250
  call void %i.aft(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.afq) #19, !noalias !250, !inline_history !263
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit118.i173

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit118.i173: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i117.i172, %.loopexit.i169
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19, !noalias !250
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #19, !noalias !250
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19, !noalias !250
  br label %bb.gw

bb.go:                                            ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIlEEPT_i.exit.i
  %i.afu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19, !noalias !250
  br label %bb.gw

bb.gp:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit115.i163, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i157
  %i.afv = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.afw = load ptr, ptr %i.afv, align 8, !tbaa !70, !noalias !250 ; 8 uses
  %.not.i.i119.i158 = icmp eq ptr %i.afw, null
  br i1 %.not.i.i119.i158, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i162, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afw, i64 8 ; 4 uses
  %i.afy = load atomic i64, ptr %i.afx acquire, align 8 ; 2 uses
  %i.afz = icmp eq i64 %i.afy, 4294967297
  %i.aga = trunc i64 %i.afy to i32                ; 2 uses
  br i1 %i.afz, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  store i32 0, ptr %i.afx, align 8, !tbaa !71
  %i.agb = getelementptr inbounds nuw i8, ptr %i.afw, i64 12
  store i32 0, ptr %i.agb, align 4, !tbaa !73
  %i.agc = load ptr, ptr %i.afw, align 8, !tbaa !33
  %i.agd = getelementptr inbounds nuw i8, ptr %i.agc, i64 16
  %i.age = load ptr, ptr %i.agd, align 8
  call void %i.age(ptr noundef nonnull align 8 dereferenceable(16) %i.afw) #19, !inline_history !265
  %i.agf = load ptr, ptr %i.afw, align 8, !tbaa !33
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agf, i64 24
  %i.agh = load ptr, ptr %i.agg, align 8
  call void %i.agh(ptr noundef nonnull align 8 dereferenceable(16) %i.afw) #19, !inline_history !265
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i162

bb.gs:                                            ; preds = %bb.gq
  %i.agi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75, !noalias !250
  %.not.i.i.i120.i159 = icmp eq i8 %i.agi, 0
  br i1 %.not.i.i.i120.i159, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.agj = add nsw i32 %i.aga, -1
  store i32 %i.agj, ptr %i.afx, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i121.i160

bb.gu:                                            ; preds = %bb.gs
  %i.agk = atomicrmw volatile add ptr %i.afx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i121.i160

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i121.i160: ; preds = %bb.gu, %bb.gt
  %.0.i.i.i.i122.i161 = phi i32 [ %i.aga, %bb.gt ], [ %i.agk, %bb.gu ]
  %i.agl = icmp eq i32 %.0.i.i.i.i122.i161, 1
  br i1 %i.agl, label %bb.gv, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i162, !prof !76

bb.gv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i121.i160
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.afw) #19
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i162

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i162: ; preds = %bb.gv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i121.i160, %bb.gr, %bb.gp
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19, !noalias !250
  br label %_ZN5arrow12_GLOBAL__N_118MakeLogicalRunEndsINS_9Int64TypeEEENS_6ResultISt10shared_ptrINS_5ArrayEEEERKNS_18RunEndEncodedArrayEPNS_10MemoryPoolE.exit

bb.gw:                                            ; preds = %bb.go, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit118.i173, %bb.fx
  %.pn81.pn.i155 = phi { ptr, i32 } [ %i.acl, %bb.fx ], [ %.pn77.i170, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit118.i173 ], [ %i.afu, %bb.go ]
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #19
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.fw
  %.pn81.pn.pn.i149 = phi { ptr, i32 } [ %.pn81.pn.i155, %bb.gw ], [ %i.ack, %bb.fw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19, !noalias !250
  br label %common.resume

bb.gy:                                            ; preds = %bb.ff
  %i.agm = tail call noundef i64 @_ZNK5arrow18RunEndEncodedArray18FindPhysicalOffsetEv(ptr noundef nonnull readonly align 8 dereferenceable(64) %1), !noalias !250
  %i.agn = tail call noundef i64 @_ZNK5arrow18RunEndEncodedArray18FindPhysicalLengthEv(ptr noundef nonnull readonly align 8 dereferenceable(64) %1), !noalias !250 ; 4 uses
  %i.ago = load ptr, ptr %i.h, align 8, !tbaa !35, !noalias !250
  %i.agp = getelementptr inbounds nuw i8, ptr %i.ago, i64 64
  %i.agq = load ptr, ptr %i.agp, align 8, !tbaa !64, !noalias !250
  %i.agr = load ptr, ptr %i.agq, align 8, !tbaa !35, !noalias !250 ; 2 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 40
  %i.agt = load ptr, ptr %i.ags, align 8, !tbaa !78, !noalias !250
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agt, i64 16
  %i.agv = load ptr, ptr %i.agu, align 8, !tbaa !123, !noalias !250 ; 3 uses
  %.not.i.i123.i98 = icmp eq ptr %i.agv, null
  br i1 %.not.i.i123.i98, label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit125.i, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agr, i64 32
  %i.agx = load i64, ptr %i.agw, align 8, !tbaa !140, !noalias !250
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agv, i64 9
  %i.agz = load i8, ptr %i.agy, align 1, !tbaa !126, !range !111, !noalias !250, !noundef !112
  %i.aha = trunc nuw i8 %i.agz to i1
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.agv, i64 16
  %i.ahc = load ptr, ptr %i.ahb, align 8, !noalias !250
  %i.ahd = select i1 %i.aha, ptr %i.ahc, ptr null, !prof !60
  %i.ahe = getelementptr inbounds [8 x i8], ptr %i.ahd, i64 %i.agx
  br label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit125.i

_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit125.i: ; preds = %bb.gz, %bb.gy
  %.0.i.i124.i99 = phi ptr [ %i.ahe, %bb.gz ], [ null, %bb.gy ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19, !noalias !250
  %i.ahf = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %2, ptr %i.ahf, align 8, !tbaa !171, !noalias !250
  %i.ahg = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 64, ptr %i.ahg, align 8, !tbaa !184, !noalias !250
  %i.ahh = getelementptr inbounds nuw i8, ptr %13, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ahh, i8 0, i64 16, i1 false), !noalias !250
  %i.ahi = getelementptr inbounds nuw i8, ptr %13, i64 40
  store ptr %2, ptr %i.ahi, align 8, !tbaa !185, !noalias !250
  %i.ahj = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 3 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ahj, align 8, !tbaa !186, !noalias !250
  %i.ahk = getelementptr inbounds nuw i8, ptr %13, i64 56
  %i.ahl = getelementptr inbounds nuw i8, ptr %13, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ahk, i8 0, i64 16, i1 false), !noalias !250
  store i64 64, ptr %i.ahl, align 8, !tbaa !187, !noalias !250
  %i.ahm = getelementptr inbounds nuw i8, ptr %13, i64 80 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ahm, i8 0, i64 64, i1 false), !noalias !250
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow14NumericBuilderINS_9Int64TypeEEE, i64 16), ptr %13, align 8, !tbaa !33, !noalias !250
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  %i.ahn = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int64Ev()
          to label %.noexc.i.i102 unwind label %bb.hd, !noalias !250 ; 2 uses

.noexc.i.i102:                                    ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit125.i
  %i.aho = getelementptr inbounds nuw i8, ptr %13, i64 144
  %i.ahp = getelementptr inbounds nuw i8, ptr %13, i64 152
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahn, i64 8
  %i.ahr = load ptr, ptr %i.ahq, align 8, !tbaa !70, !noalias !269 ; 2 uses
  %i.ahs = load <2 x ptr>, ptr %i.ahn, align 8, !tbaa !69, !noalias !269
  store <2 x ptr> %i.ahs, ptr %i.aho, align 8, !tbaa !69, !alias.scope !266, !noalias !250
  %.not.i.i.i.i.i.i103 = icmp eq ptr %i.ahr, null
  br i1 %.not.i.i.i.i.i.i103, label %_ZN5arrow14NumericBuilderINS_9Int64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i, label %bb.ha

bb.ha:                                            ; preds = %.noexc.i.i102
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahr, i64 8 ; 3 uses
  %i.ahu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75, !noalias !269
  %.not.i.i.i.i.i.i.i104 = icmp eq i8 %i.ahu, 0
  br i1 %.not.i.i.i.i.i.i.i104, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.ahv = load i32, ptr %i.aht, align 4, !tbaa !3, !noalias !269
  %i.ahw = add nsw i32 %i.ahv, 1
  store i32 %i.ahw, ptr %i.aht, align 4, !tbaa !3, !noalias !269
  br label %_ZN5arrow14NumericBuilderINS_9Int64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i

bb.hc:                                            ; preds = %bb.ha
  %i.ahx = atomicrmw volatile add ptr %i.aht, i32 1 acq_rel, align 4, !noalias !269 ; 0 uses
  br label %_ZN5arrow14NumericBuilderINS_9Int64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i

bb.hd:                                            ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit125.i
  %i.ahy = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_ZN5arrow14NumericBuilderINS_9Int64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i: ; preds = %bb.hc, %bb.hb, %.noexc.i.i102
  %i.ahz = getelementptr inbounds nuw i8, ptr %13, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ahz, i8 0, i64 16, i1 false), !noalias !250
  %i.aia = getelementptr inbounds nuw i8, ptr %13, i64 176
  store ptr %2, ptr %i.aia, align 8, !tbaa !185, !noalias !250
  %i.aib = getelementptr inbounds nuw i8, ptr %13, i64 184 ; 3 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.aib, align 8, !tbaa !186, !noalias !250
  %i.aic = getelementptr inbounds nuw i8, ptr %13, i64 192
  %i.aid = getelementptr inbounds nuw i8, ptr %13, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aic, i8 0, i64 16, i1 false), !noalias !250
  store i64 64, ptr %i.aid, align 8, !tbaa !187, !noalias !250
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19, !noalias !250
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19, !noalias !250
  invoke void @_ZN5arrow14NumericBuilderINS_9Int64TypeEE6ResizeEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %15, ptr noundef nonnull align 8 dereferenceable(216) %13, i64 noundef %i.agn)
          to label %_ZN5arrow6StatusD2Ev.exit.i106 unwind label %bb.hh, !noalias !250

_ZN5arrow6StatusD2Ev.exit.i106:                   ; preds = %_ZN5arrow14NumericBuilderINS_9Int64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i
  %i.aie = load ptr, ptr %15, align 8, !tbaa !98, !noalias !250 ; 2 uses
  store ptr %i.aie, ptr %14, align 8, !tbaa !98, !noalias !250
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19, !noalias !250
  %i.aif = icmp eq ptr %i.aie, null
  br i1 %i.aif, label %_ZN5arrow6StatusD2Ev.exit132.i117, label %bb.he, !prof !60

bb.he:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i106
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %14) #19
  %i.aig = load ptr, ptr %14, align 8, !tbaa !98, !noalias !250 ; 2 uses
  %.not.i127.i107 = icmp eq ptr %i.aig, null
  br i1 %.not.i127.i107, label %_ZN5arrow6StatusD2Ev.exit128.i108, label %bb.hf, !prof !60

bb.hf:                                            ; preds = %bb.he
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aig, i64 1
  %i.aii = load i8, ptr %i.aih, align 1, !tbaa !101, !range !111, !noundef !112
  %i.aij = trunc nuw i8 %i.aii to i1
  br i1 %i.aij, label %_ZN5arrow6StatusD2Ev.exit128.i108, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #19
  br label %_ZN5arrow6StatusD2Ev.exit128.i108

_ZN5arrow6StatusD2Ev.exit128.i108:                ; preds = %bb.hg, %bb.hf, %bb.he
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19, !noalias !250
  br label %bb.ht

bb.hh:                                            ; preds = %_ZN5arrow14NumericBuilderINS_9Int64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i
  %i.aik = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19, !noalias !250
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19, !noalias !250
  br label %bb.ig

_ZN5arrow6StatusD2Ev.exit132.i117:                ; preds = %_ZN5arrow6StatusD2Ev.exit.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19, !noalias !250
  %i.ail = icmp sgt i64 %i.agn, 0
  br i1 %i.ail, label %.preheader.i118, label %bb.hr

.preheader.i118:                                  ; preds = %_ZN5arrow6StatusD2Ev.exit132.i117
  %.not163.not.i119 = icmp eq i64 %i.agn, 1
  br i1 %.not163.not.i119, label %.critedge89.i132, label %.lr.ph.i120

.lr.ph.i120:                                      ; preds = %.preheader.i118
  %i.aim = getelementptr [8 x i8], ptr %.0.i.i124.i99, i64 %i.agm
  %i.ain = getelementptr inbounds nuw i8, ptr %13, i64 112
  %i.aio = getelementptr inbounds nuw i8, ptr %13, i64 104 ; 2 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %13, i64 200 ; 3 uses
  %i.aiq = add nsw i64 %i.agn, -2
  br label %bb.hi

bb.hi:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit141.i130, %.lr.ph.i120
  %.052164.i121 = phi i64 [ 0, %.lr.ph.i120 ], [ %i.akf, %_ZN5arrow6StatusD2Ev.exit141.i130 ] ; 3 uses
  %i.air = getelementptr [8 x i8], ptr %i.aim, i64 %.052164.i121
  %i.ais = load i64, ptr %i.air, align 8, !tbaa !201, !noalias !250
  %i.ait = load ptr, ptr %i.h, align 8, !tbaa !35, !noalias !250
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ait, i64 32
  %i.aiv = load i64, ptr %i.aiu, align 8, !tbaa !140, !noalias !250
  %i.aiw = sub nsw i64 %i.ais, %i.aiv
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19, !noalias !250
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19, !noalias !270
  %i.aix = load i64, ptr %i.ain, align 8, !tbaa !195, !noalias !273 ; 2 uses
  %i.aiy = load ptr, ptr %13, align 8, !tbaa !33, !noalias !273
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiy, i64 16
  %i.aja = load ptr, ptr %i.aiz, align 8, !noalias !273
  %i.ajb = invoke noundef i64 %i.aja(ptr noundef nonnull align 8 dereferenceable(216) %13)
          to label %.noexc.i122 unwind label %bb.hm, !noalias !250, !inline_history !276 ; 2 uses

.noexc.i122:                                      ; preds = %bb.hi
  %.not.i.not.i.i123 = icmp slt i64 %i.ajb, %i.aix
  br i1 %.not.i.not.i.i123, label %_ZN5arrow6StatusD2Ev.exit10.thread.i.i143, label %_ZN5arrow6StatusD2Ev.exit.i.i124

_ZN5arrow6StatusD2Ev.exit10.thread.i.i143:        ; preds = %.noexc.i122
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19, !noalias !270
  br label %_ZN5arrow6StatusD2Ev.exit141.i130

_ZN5arrow6StatusD2Ev.exit.i.i124:                 ; preds = %.noexc.i122
  %i.ajc = add nsw i64 %i.ajb, 1
  %i.ajd = shl nsw i64 %i.aix, 1
  %.sroa.speculated.i.i.i.i125 = call noundef i64 @llvm.smax.i64(i64 %i.ajc, i64 %i.ajd)
  %i.aje = load ptr, ptr %13, align 8, !tbaa !33, !noalias !273
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aje, i64 24
  %i.ajg = load ptr, ptr %i.ajf, align 8, !noalias !273
  invoke void %i.ajg(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(216) %13, i64 noundef %.sroa.speculated.i.i.i.i125)
          to label %.noexc133.i126 unwind label %bb.hm, !noalias !250, !inline_history !276

.noexc133.i126:                                   ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i124
  %.pr.i.i127 = load ptr, ptr %4, align 8, !tbaa !98, !noalias !270 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19, !noalias !270
  %i.ajh = icmp eq ptr %.pr.i.i127, null
  br i1 %i.ajh, label %_ZN5arrow6StatusD2Ev.exit141.i130, label %bb.hj

bb.hj:                                            ; preds = %.noexc133.i126
  store ptr %.pr.i.i127, ptr %16, align 8, !tbaa !98, !noalias !250
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %16) #19
  %i.aji = load ptr, ptr %16, align 8, !tbaa !98, !noalias !250 ; 2 uses
  %.not.i136.i128 = icmp eq ptr %i.aji, null
  br i1 %.not.i136.i128, label %_ZN5arrow6StatusD2Ev.exit137.i129, label %bb.hk, !prof !60

bb.hk:                                            ; preds = %bb.hj
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aji, i64 1
  %i.ajk = load i8, ptr %i.ajj, align 1, !tbaa !101, !range !111, !noundef !112
  %i.ajl = trunc nuw i8 %i.ajk to i1
  br i1 %i.ajl, label %_ZN5arrow6StatusD2Ev.exit137.i129, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %16) #19
  br label %_ZN5arrow6StatusD2Ev.exit137.i129

_ZN5arrow6StatusD2Ev.exit137.i129:                ; preds = %bb.hl, %bb.hk, %bb.hj
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19, !noalias !250
  br label %bb.ht

bb.hm:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i124, %bb.hi
  %i.ajm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19, !noalias !250
  br label %bb.ig

_ZN5arrow6StatusD2Ev.exit141.i130:                ; preds = %.noexc133.i126, %_ZN5arrow6StatusD2Ev.exit10.thread.i.i143
  %i.ajn = load ptr, ptr %i.ahj, align 8, !tbaa !186, !noalias !270
  %i.ajo = load i64, ptr %i.ahm, align 8, !tbaa !200, !noalias !270 ; 2 uses
  %i.ajp = sdiv i64 %i.ajo, 8
  %i.ajq = getelementptr inbounds i8, ptr %i.ajn, i64 %i.ajp ; 2 uses
  %i.ajr = load i8, ptr %i.ajq, align 1, !tbaa !75, !noalias !270
  %i.ajs = srem i64 %i.ajo, 8
  %i.ajt = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.ajs
  %i.aju = load i8, ptr %i.ajt, align 1, !tbaa !75, !noalias !270
  %i.ajv = or i8 %i.aju, %i.ajr
  store i8 %i.ajv, ptr %i.ajq, align 1, !tbaa !75, !noalias !270
  %i.ajw = load i64, ptr %i.ahm, align 8, !tbaa !200, !noalias !270
  %i.ajx = add nsw i64 %i.ajw, 1
  store i64 %i.ajx, ptr %i.ahm, align 8, !tbaa !200, !noalias !270
  %i.ajy = load i64, ptr %i.aio, align 8, !tbaa !201, !noalias !270
  %i.ajz = add nsw i64 %i.ajy, 1
  store i64 %i.ajz, ptr %i.aio, align 8, !tbaa !201, !noalias !270
  %i.aka = load ptr, ptr %i.aib, align 8, !tbaa !186, !noalias !270
  %i.akb = load i64, ptr %i.aip, align 8, !tbaa !202, !noalias !270
  %i.akc = getelementptr inbounds i8, ptr %i.aka, i64 %i.akb
  store i64 %i.aiw, ptr %i.akc, align 1, !noalias !270
  %i.akd = load i64, ptr %i.aip, align 8, !tbaa !202, !noalias !270
  %i.ake = add nsw i64 %i.akd, 8
  store i64 %i.ake, ptr %i.aip, align 8, !tbaa !202, !noalias !270
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19, !noalias !250
  %i.akf = add nuw nsw i64 %.052164.i121, 1
  %exitcond.not.i131 = icmp eq i64 %.052164.i121, %i.aiq
  br i1 %exitcond.not.i131, label %.critedge89.i132, label %bb.hi, !llvm.loop !277

.critedge89.i132:                                 ; preds = %_ZN5arrow6StatusD2Ev.exit141.i130, %.preheader.i118
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19, !noalias !250
  %i.akg = load ptr, ptr %i.h, align 8, !tbaa !35, !noalias !250
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akg, i64 16
  %i.aki = load i64, ptr %i.akh, align 8, !tbaa !154, !noalias !250
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19, !noalias !278
  %i.akj = getelementptr inbounds nuw i8, ptr %13, i64 112
  %i.akk = load i64, ptr %i.akj, align 8, !tbaa !195, !noalias !281 ; 2 uses
  %i.akl = load ptr, ptr %13, align 8, !tbaa !33, !noalias !281
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akl, i64 16
  %i.akn = load ptr, ptr %i.akm, align 8, !noalias !281
  %i.ako = invoke noundef i64 %i.akn(ptr noundef nonnull align 8 dereferenceable(216) %13)
          to label %.noexc147.i133 unwind label %bb.hq, !noalias !250, !inline_history !276 ; 2 uses

.noexc147.i133:                                   ; preds = %.critedge89.i132
  %.not.i.not.i142.i134 = icmp slt i64 %i.ako, %i.akk
  br i1 %.not.i.not.i142.i134, label %_ZN5arrow6StatusD2Ev.exit10.thread.i146.i142, label %_ZN5arrow6StatusD2Ev.exit.i143.i135

_ZN5arrow6StatusD2Ev.exit10.thread.i146.i142:     ; preds = %.noexc147.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !278
  br label %_ZN5arrow6StatusD2Ev.exit157.i141

_ZN5arrow6StatusD2Ev.exit.i143.i135:              ; preds = %.noexc147.i133
  %i.akp = add nsw i64 %i.ako, 1
  %i.akq = shl nsw i64 %i.akk, 1
  %.sroa.speculated.i.i.i144.i136 = call noundef i64 @llvm.smax.i64(i64 %i.akp, i64 %i.akq)
  %i.akr = load ptr, ptr %13, align 8, !tbaa !33, !noalias !281
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akr, i64 24
  %i.akt = load ptr, ptr %i.aks, align 8, !noalias !281
  invoke void %i.akt(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(216) %13, i64 noundef %.sroa.speculated.i.i.i144.i136)
          to label %.noexc148.i137 unwind label %bb.hq, !noalias !250, !inline_history !276

.noexc148.i137:                                   ; preds = %_ZN5arrow6StatusD2Ev.exit.i143.i135
  %.pr.i145.i138 = load ptr, ptr %3, align 8, !tbaa !98, !noalias !278 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !278
end_hunk_2
