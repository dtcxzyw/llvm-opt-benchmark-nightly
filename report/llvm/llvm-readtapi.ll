Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/llvm-readtapi?download=true
inline.NumInlined: 2208
inline.NumDeleted: 1054
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_Z18llvm_readtapi_mainiPPcRKN4llvm11ToolContextE:bb.a
  %i.ow = icmp eq ptr %i.ov, %i.na
  br i1 %i.ow, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i: ; preds = %_ZN4llvm11ExitOnErrorD2Ev.exit.i
  %i.ox = load i64, ptr %i.na, align 8, !tbaa !28
  %i.oy = add i64 %i.ox, 1
  call void @_ZdlPvm(ptr noundef %i.ov, i64 noundef %i.oy) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN4llvm11ExitOnErrorD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  %i.oz = load ptr, ptr %44, align 8, !tbaa !281  ; 2 uses
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !27
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  %i.pc = load i64, ptr %i.pb, align 8, !tbaa !61
  call fastcc void @_ZL16getInterfaceFileN4llvm9StringRefEb(ptr dead_on_unwind noalias writable align 8 %28, ptr %i.pa, i64 %i.pc, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #25
  %i.pd = load ptr, ptr %i.mm, align 8, !tbaa !68
  %i.pe = load ptr, ptr %44, align 8, !tbaa !92   ; 3 uses
  %i.pf = ptrtoint ptr %i.pd to i64
  %i.pg = ptrtoint ptr %i.pe to i64
  %i.ph = sub i64 %i.pf, %i.pg
  %i.pi = ashr exact i64 %i.ph, 5                 ; 2 uses
  %.not.i.i15.i = icmp ugt i64 %i.pi, 1
  br i1 %.not.i.i15.i, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit.i, label %bb.br

bb.br:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.51, i64 noundef 1, i64 noundef %i.pi) #27
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pe, i64 32
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !27
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pe, i64 40
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !61
  call fastcc void @_ZL16getInterfaceFileN4llvm9StringRefEb(ptr dead_on_unwind noalias writable align 8 %29, ptr %i.pk, i64 %i.pm, i1 noundef zeroext true)
  %i.pn = load i32, ptr %i.m, align 4, !tbaa !40
  %i.po = icmp eq i32 %i.pn, 0
  br i1 %i.po, label %bb.bx, label %bb.bs

bb.bs:                                            ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #25
  %i.pp = load ptr, ptr %28, align 8, !tbaa !82   ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 80
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !30
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pp, i64 88
  %i.pt = load i32, ptr %i.ps, align 8, !tbaa !31
  %i.pu = zext i32 %i.pt to i64
  %i.pv = call i32 @_ZN4llvm5MachO20mapToArchitectureSetENS_8ArrayRefINS0_6TargetEEE(ptr %i.pr, i64 %i.pu) #25
  store i32 %i.pv, ptr %30, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #25
  %i.pw = load ptr, ptr %29, align 8, !tbaa !82   ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 80
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !30
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pw, i64 88
  %i.qa = load i32, ptr %i.pz, align 8, !tbaa !31
  %i.qb = zext i32 %i.qa to i64
  %i.qc = call i32 @_ZN4llvm5MachO20mapToArchitectureSetENS_8ArrayRefINS0_6TargetEEE(ptr %i.py, i64 %i.qb) #25
  store i32 %i.qc, ptr %31, align 4
  %i.qd = call { i32, ptr } @_ZNK4llvm5MachO15ArchitectureSet5beginEv(ptr noundef nonnull align 4 dereferenceable(4) %i.m)
  %.fr.i = freeze { i32, ptr } %i.qd              ; 2 uses
  %i.qe = extractvalue { i32, ptr } %.fr.i, 0     ; 3 uses
  %i.qf = extractvalue { i32, ptr } %.fr.i, 1     ; 3 uses
  %i.qg = icmp ne ptr %i.qf, %i.m                 ; 2 uses
  %i.qh = icmp ne i32 %i.qe, -1
  %.not3.i37.i = or i1 %i.qh, %i.qg
  br i1 %.not3.i37.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.bs
  br i1 %i.qg, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %.lr.ph.split.us.i.backedge
  %.sroa.021.038.us.i = phi i32 [ %.sroa.021.038.us.i.be, %.lr.ph.split.us.i.backedge ], [ %i.qe, %.lr.ph.i ] ; 5 uses
  %i.qi = trunc i32 %.sroa.021.038.us.i to i8     ; 2 uses
  call fastcc void @"_ZZL19handleCompareActionRKN12_GLOBAL__N_17ContextEENK3$_0clISt10unique_ptrIN4llvm5MachO13InterfaceFileESt14default_deleteIS8_EEEEDaRT_RKNS7_15ArchitectureSetENS7_12ArchitectureE"(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 4 dereferenceable(4) %30, i8 noundef zeroext %i.qi)
  call fastcc void @"_ZZL19handleCompareActionRKN12_GLOBAL__N_17ContextEENK3$_0clISt10unique_ptrIN4llvm5MachO13InterfaceFileESt14default_deleteIS8_EEEEDaRT_RKNS7_15ArchitectureSetENS7_12ArchitectureE"(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 4 dereferenceable(4) %31, i8 noundef zeroext %i.qi)
  %i.qj = icmp eq i32 %.sroa.021.038.us.i, -1
  br i1 %i.qj, label %.lr.ph.split.us.i.backedge, label %.preheader.i.i.us.i

.preheader.i.i.us.i:                              ; preds = %.lr.ph.split.us.i
  %umax.i.us.i = call i32 @llvm.umax.i32(i32 %.sroa.021.038.us.i, i32 31)
  %wide.trip.count.i.us.i = zext i32 %umax.i.us.i to i64
  %exitcond.not.i.us.i567 = icmp ugt i32 %.sroa.021.038.us.i, 30
  br i1 %exitcond.not.i.us.i567, label %.lr.ph.split.us.i.backedge, label %.lr.ph569

.lr.ph.split.us.i.backedge:                       ; preds = %bb.bt, %.preheader.i.i.us.i, %_ZN4llvm5MachO15ArchitectureSet13arch_iteratorIKjEppEv.exit.loopexit.split.loop.exit.us.i, %.lr.ph.split.us.i
  %.sroa.021.038.us.i.be = phi i32 [ -1, %.preheader.i.i.us.i ], [ -1, %.lr.ph.split.us.i ], [ %i.qp, %_ZN4llvm5MachO15ArchitectureSet13arch_iteratorIKjEppEv.exit.loopexit.split.loop.exit.us.i ], [ -1, %bb.bt ]
  br label %.lr.ph.split.us.i

.lr.ph569:                                        ; preds = %.preheader.i.i.us.i
  %i.qk = zext nneg i32 %.sroa.021.038.us.i to i64
  %i.ql = load i32, ptr %i.qf, align 4, !tbaa !93
  %i.qm = zext i32 %i.ql to i64
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bu
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %wide.trip.count.i.us.i
  br i1 %exitcond.not.i.us.i, label %.lr.ph.split.us.i.backedge, label %bb.bu, !llvm.loop !217

bb.bu:                                            ; preds = %.lr.ph569, %bb.bt
  %indvars.iv.i.us.i568 = phi i64 [ %i.qk, %.lr.ph569 ], [ %indvars.iv.next.i.us.i, %bb.bt ] ; 2 uses
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i568, 1 ; 3 uses
  %i.qn = shl nuw nsw i64 2, %indvars.iv.i.us.i568
  %i.qo = and i64 %i.qn, %i.qm
  %.not.i.i16.us.i = icmp eq i64 %i.qo, 0
  br i1 %.not.i.i16.us.i, label %bb.bt, label %_ZN4llvm5MachO15ArchitectureSet13arch_iteratorIKjEppEv.exit.loopexit.split.loop.exit.us.i, !llvm.loop !217

_ZN4llvm5MachO15ArchitectureSet13arch_iteratorIKjEppEv.exit.loopexit.split.loop.exit.us.i: ; preds = %bb.bu
  %i.qp = trunc nuw i64 %indvars.iv.next.i.us.i to i32
  br label %.lr.ph.split.us.i.backedge

._crit_edge.i:                                    ; preds = %_ZN4llvm5MachO15ArchitectureSet13arch_iteratorIKjEppEv.exit.i, %.lr.ph.split.i, %.preheader.i.i.i, %bb.bv, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #25
  br label %bb.bx

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_ZN4llvm5MachO15ArchitectureSet13arch_iteratorIKjEppEv.exit.i
  %.sroa.021.038.i = phi i32 [ %i.qx, %_ZN4llvm5MachO15ArchitectureSet13arch_iteratorIKjEppEv.exit.i ], [ %i.qe, %.lr.ph.i ] ; 5 uses
  %i.qq = trunc i32 %.sroa.021.038.i to i8        ; 2 uses
  call fastcc void @"_ZZL19handleCompareActionRKN12_GLOBAL__N_17ContextEENK3$_0clISt10unique_ptrIN4llvm5MachO13InterfaceFileESt14default_deleteIS8_EEEEDaRT_RKNS7_15ArchitectureSetENS7_12ArchitectureE"(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 4 dereferenceable(4) %30, i8 noundef zeroext %i.qq)
  call fastcc void @"_ZZL19handleCompareActionRKN12_GLOBAL__N_17ContextEENK3$_0clISt10unique_ptrIN4llvm5MachO13InterfaceFileESt14default_deleteIS8_EEEEDaRT_RKNS7_15ArchitectureSetENS7_12ArchitectureE"(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 4 dereferenceable(4) %31, i8 noundef zeroext %i.qq)
  %i.qr = icmp eq i32 %.sroa.021.038.i, -1
  br i1 %i.qr, label %._crit_edge.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.lr.ph.split.i
  %umax.i.i = call i32 @llvm.umax.i32(i32 %.sroa.021.038.i, i32 31)
  %wide.trip.count.i.i = zext i32 %umax.i.i to i64
  %exitcond.not.i.i564 = icmp ugt i32 %.sroa.021.038.i, 30
  br i1 %exitcond.not.i.i564, label %._crit_edge.i, label %.lr.ph566

.lr.ph566:                                        ; preds = %.preheader.i.i.i
  %i.qs = zext nneg i32 %.sroa.021.038.i to i64
  %i.qt = load i32, ptr %i.qf, align 4, !tbaa !93
  %i.qu = zext i32 %i.qt to i64
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bw
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i, label %bb.bw, !llvm.loop !217

bb.bw:                                            ; preds = %.lr.ph566, %bb.bv
  %indvars.iv.i.i565 = phi i64 [ %i.qs, %.lr.ph566 ], [ %indvars.iv.next.i.i, %bb.bv ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i565, 1 ; 4 uses
  %i.qv = shl nuw nsw i64 2, %indvars.iv.i.i565
  %i.qw = and i64 %i.qv, %i.qu
  %.not.i.i16.i143 = icmp eq i64 %i.qw, 0
  br i1 %.not.i.i16.i143, label %bb.bv, label %_ZN4llvm5MachO15ArchitectureSet13arch_iteratorIKjEppEv.exit.i, !llvm.loop !217

_ZN4llvm5MachO15ArchitectureSet13arch_iteratorIKjEppEv.exit.i: ; preds = %bb.bw
  %i.qx = trunc nuw i64 %indvars.iv.next.i.i to i32
  %.not40.i = icmp eq i64 %indvars.iv.next.i.i, 4294967295
  br i1 %.not40.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.bx:                                            ; preds = %._crit_edge.i, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit.i
  %i.qy = load ptr, ptr %i.n, align 8, !tbaa !74  ; 2 uses
  %.not34.i = icmp eq ptr %i.qy, null
  br i1 %.not34.i, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.qz = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #25
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.ra = phi ptr [ %i.qz, %bb.by ], [ %i.qy, %bb.bx ]
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #25
  %i.rb = load ptr, ptr %28, align 8, !tbaa !82   ; 4 uses
  %i.rc = load ptr, ptr %29, align 8, !tbaa !82   ; 4 uses
  store ptr %i.rb, ptr %32, align 8, !tbaa !294
  %i.rd = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr %i.rc, ptr %i.rd, align 8, !tbaa !295
  %i.re = call noundef zeroext i1 @_ZN4llvm10DiffEngine12compareFilesERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(16) %32, ptr noundef nonnull align 8 dereferenceable(48) %i.ra) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #25
  %.not.i.i142 = icmp eq ptr %i.rc, null
  br i1 %.not.i.i142, label %_ZNSt10unique_ptrIN4llvm5MachO13InterfaceFileESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN4llvm5MachO13InterfaceFileEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN4llvm5MachO13InterfaceFileEEclEPS2_.exit.i.i: ; preds = %bb.bz
  call void @_ZN4llvm5MachO13InterfaceFileD2Ev(ptr noundef nonnull align 8 dead_on_return(448) dereferenceable(448) %i.rc) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.rc, i64 noundef 448) #26
  br label %_ZNSt10unique_ptrIN4llvm5MachO13InterfaceFileESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN4llvm5MachO13InterfaceFileESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN4llvm5MachO13InterfaceFileEEclEPS2_.exit.i.i, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  %.not.i17.i = icmp eq ptr %i.rb, null
  br i1 %.not.i17.i, label %_ZL19handleCompareActionRKN12_GLOBAL__N_17ContextE.exit, label %_ZNKSt14default_deleteIN4llvm5MachO13InterfaceFileEEclEPS2_.exit.i18.i

_ZNKSt14default_deleteIN4llvm5MachO13InterfaceFileEEclEPS2_.exit.i18.i: ; preds = %_ZNSt10unique_ptrIN4llvm5MachO13InterfaceFileESt14default_deleteIS2_EED2Ev.exit.i
  call void @_ZN4llvm5MachO13InterfaceFileD2Ev(ptr noundef nonnull align 8 dead_on_return(448) dereferenceable(448) %i.rb) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.rb, i64 noundef 448) #26
  br label %_ZL19handleCompareActionRKN12_GLOBAL__N_17ContextE.exit

_ZL19handleCompareActionRKN12_GLOBAL__N_17ContextE.exit: ; preds = %_ZNSt10unique_ptrIN4llvm5MachO13InterfaceFileESt14default_deleteIS2_EED2Ev.exit.i, %_ZNKSt14default_deleteIN4llvm5MachO13InterfaceFileEEclEPS2_.exit.i18.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  %i.rf = zext i1 %i.re to i32
  br label %_ZNSt10unique_ptrIN4llvm5MachO13InterfaceFileESt14default_deleteIS2_EED2Ev.exit

bb.ca:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  %i.rg = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !68 ; 2 uses
  %i.ri = load ptr, ptr %44, align 8, !tbaa !92   ; 2 uses
  %i.rj = ptrtoint ptr %i.rh to i64
  %i.rk = ptrtoint ptr %i.ri to i64
  %i.rl = sub i64 %i.rj, %i.rk
  %i.rm = icmp ult i64 %i.rl, 33
  br i1 %i.rm, label %bb.cb, label %.lr.ph.i144

.lr.ph.i144:                                      ; preds = %bb.ca
  %i.rn = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  br label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  store ptr @.str.52, ptr %20, align 8
  %.sroa.229.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %20, i64 32
  store i8 3, ptr %.sroa.229.0..sroa_idx.i, align 8
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %20, i64 33
  store i8 1, ptr %.sroa.430.0..sroa_idx.i, align 1
  %i.ro = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #25
  %i.rp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.ro, ptr noundef nonnull align 8 dereferenceable(32) @_ZN12_GLOBAL__N_18TOOLNAMEB5cxx11E)
  %i.rq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.rp, ptr noundef nonnull @.str.37)
  %i.rr = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvmlsERNS_11raw_ostreamERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(48) %i.rq, ptr noundef nonnull align 8 dereferenceable(34) %20)
  %i.rs = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.rr, ptr noundef nonnull @.str.38) ; 0 uses
  %i.rt = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #25
  call void @_ZN4llvm11raw_ostream5flushEv(ptr noundef nonnull align 8 dereferenceable(48) %i.rt)
  call void @exit(i32 noundef 1) #30
  unreachable

._crit_edge.i149:                                 ; preds = %_ZNSt10unique_ptrIN4llvm5MachO13InterfaceFileESt14default_deleteIS2_EED2Ev.exit16.i
  %63 = ptrtoint ptr %.sroa.023.133.i to i64
  store i64 %63, ptr %23, align 8, !tbaa !82
  call fastcc void @_ZL17handleWriteActionRKN12_GLOBAL__N_17ContextESt10unique_ptrIN4llvm5MachO13InterfaceFileESt14default_deleteIS6_EE(ptr noundef nonnull readonly align 8 dereferenceable(46) %44, ptr nofree noundef align 8 dereferenceable(8) %23)
  %i.ru = load ptr, ptr %23, align 8, !tbaa !82   ; 3 uses
  %.not.i.i150 = icmp eq ptr %i.ru, null
  br i1 %.not.i.i150, label %_ZL17handleMergeActionRKN12_GLOBAL__N_17ContextE.exit, label %_ZNKSt14default_deleteIN4llvm5MachO13InterfaceFileEEclEPS2_.exit.i.i151

_ZNKSt14default_deleteIN4llvm5MachO13InterfaceFileEEclEPS2_.exit.i.i151: ; preds = %._crit_edge.i149
  call void @_ZN4llvm5MachO13InterfaceFileD2Ev(ptr noundef nonnull align 8 dead_on_return(448) dereferenceable(448) %i.ru) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.ru, i64 noundef 448) #26
  br label %_ZL17handleMergeActionRKN12_GLOBAL__N_17ContextE.exit

bb.cc:                                            ; preds = %_ZNSt10unique_ptrIN4llvm5MachO13InterfaceFileESt14default_deleteIS2_EED2Ev.exit16.i, %.lr.ph.i144
  %.sroa.020.038.i = phi ptr [ %i.ri, %.lr.ph.i144 ], [ %i.sy, %_ZNSt10unique_ptrIN4llvm5MachO13InterfaceFileESt14default_deleteIS2_EED2Ev.exit16.i ] ; 3 uses
  %.sroa.023.037.i = phi ptr [ null, %.lr.ph.i144 ], [ %.sroa.023.133.i, %_ZNSt10unique_ptrIN4llvm5MachO13InterfaceFileESt14default_deleteIS2_EED2Ev.exit16.i ] ; 4 uses
  %i.rv = load ptr, ptr %.sroa.020.038.i, align 8, !tbaa !27
  %i.rw = getelementptr inbounds nuw i8, ptr %.sroa.020.038.i, i64 8
  %i.rx = load i64, ptr %i.rw, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  call fastcc void @_ZL16getInterfaceFileN4llvm9StringRefEb(ptr dead_on_unwind noalias writable align 8 %21, ptr %i.rv, i64 %i.rx, i1 noundef zeroext true)
  %.not34.i145 = icmp eq ptr %.sroa.023.037.i, null
  br i1 %.not34.i145, label %.thread.i, label %bb.cd

.thread.i:                                        ; preds = %bb.cc
  %i.ry = load ptr, ptr %21, align 8, !tbaa !82
  br label %_ZNSt10unique_ptrIN4llvm5MachO13InterfaceFileESt14default_deleteIS2_EED2Ev.exit16.i

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  %i.rz = load ptr, ptr %21, align 8, !tbaa !82
  call void @_ZNK4llvm5MachO13InterfaceFile5mergeEPKS1_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected") align 8 %22, ptr noundef nonnull align 8 dereferenceable(448) %.sroa.023.037.i, ptr noundef %i.rz) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.experimental.noalias.scope.decl(metadata !296)
  %i.sa = load i8, ptr %i.rn, align 8, !noalias !297
  %i.sb = trunc i8 %i.sa to i1
  br i1 %i.sb, label %_ZN4llvm8ExpectedISt10unique_ptrINS_5MachO13InterfaceFileESt14default_deleteIS3_EEE9takeErrorEv.exit.i.i, label %_ZN4llvm8ExpectedISt10unique_ptrINS_5MachO13InterfaceFileESt14default_deleteIS3_EEE9takeErrorEv.exit.thread.i.i

_ZN4llvm8ExpectedISt10unique_ptrINS_5MachO13InterfaceFileESt14default_deleteIS3_EEE9takeErrorEv.exit.thread.i.i: ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %17), !noalias !298
  call void @llvm.lifetime.start.p0(ptr nonnull %18), !noalias !298
  %.pre.i.i146 = load i64, ptr %22, align 8, !tbaa !82, !noalias !298
  %i.sc = inttoptr i64 %.pre.i.i146 to ptr
  br label %_ZNSt10unique_ptrIN4llvm5MachO13InterfaceFileESt14default_deleteIS2_EED2Ev.exit13.i

_ZN4llvm8ExpectedISt10unique_ptrINS_5MachO13InterfaceFileESt14default_deleteIS3_EEE9takeErrorEv.exit.i.i: ; preds = %bb.cd
  %i.sd = load i64, ptr %22, align 8, !tbaa !98, !noalias !297 ; 2 uses
  %i.se = inttoptr i64 %i.sd to ptr
  store ptr null, ptr %22, align 8, !tbaa !98, !noalias !297
  store ptr %i.se, ptr %19, align 8, !tbaa !100, !alias.scope !296, !noalias !298
  call void @llvm.lifetime.start.p0(ptr nonnull %17), !noalias !298
  call void @llvm.lifetime.start.p0(ptr nonnull %18), !noalias !298
  %.not.i.i.i152 = icmp eq i64 %i.sd, 0
  br i1 %.not.i.i.i152, label %_ZNSt10unique_ptrIN4llvm5MachO13InterfaceFileESt14default_deleteIS2_EED2Ev.exit13.i, label %bb.ce

bb.ce:                                            ; preds = %_ZN4llvm8ExpectedISt10unique_ptrINS_5MachO13InterfaceFileESt14default_deleteIS3_EEE9takeErrorEv.exit.i.i
  %i.sf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_19ExitOnErrE, i64 48), align 8, !tbaa !22, !noalias !298
  %.not.i.i.i.i153 = icmp eq ptr %i.sf, null
  br i1 %.not.i.i.i.i153, label %bb.cf, label %_ZNKSt8functionIFiRKN4llvm5ErrorEEEclES3_.exit.i.i

bb.cf:                                            ; preds = %bb.ce
  call void @_ZSt25__throw_bad_function_callv() #27, !noalias !298
  unreachable

_ZNKSt8functionIFiRKN4llvm5ErrorEEEclES3_.exit.i.i: ; preds = %bb.ce
  %i.sg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_19ExitOnErrE, i64 56), align 8, !tbaa !95, !noalias !298
  %i.sh = call noundef i32 %i.sg(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_19ExitOnErrE, i64 32), ptr noundef nonnull align 8 dereferenceable(8) %19) #25, !noalias !298, !inline_history !222
  %i.si = load ptr, ptr %19, align 8, !tbaa !100, !noalias !298
  store ptr %i.si, ptr %17, align 8, !tbaa !100, !noalias !298
  store ptr null, ptr %19, align 8, !tbaa !100, !noalias !298
  %i.sj = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #25, !noalias !298
  %i.sk = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i8 4, ptr %i.sk, align 8, !tbaa !77, !noalias !298
  %i.sl = getelementptr inbounds nuw i8, ptr %18, i64 33
  store i8 1, ptr %i.sl, align 1, !tbaa !78, !noalias !298
  store ptr @_ZN12_GLOBAL__N_19ExitOnErrE, ptr %18, align 8, !tbaa !28, !noalias !298
  call void @_ZN4llvm21logAllUnhandledErrorsENS_5ErrorERNS_11raw_ostreamENS_5TwineE(ptr nofree noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(48) %i.sj, ptr noundef nonnull byval(%"class.llvm::Twine") align 8 %18) #25, !noalias !298
  %i.sm = load ptr, ptr %17, align 8, !tbaa !100, !noalias !298 ; 3 uses
  %i.sn = icmp eq ptr %i.sm, null
  br i1 %i.sn, label %_ZN4llvm5ErrorD2Ev.exit.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %_ZNKSt8functionIFiRKN4llvm5ErrorEEEclES3_.exit.i.i
  %i.so = load ptr, ptr %i.sm, align 8, !tbaa !34, !noalias !298
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 8
  %i.sq = load ptr, ptr %i.sp, align 8, !noalias !298
  call void %i.sq(ptr noundef nonnull align 8 dereferenceable(8) %i.sm) #25, !noalias !298, !inline_history !223
  br label %_ZN4llvm5ErrorD2Ev.exit.i.i.i

_ZN4llvm5ErrorD2Ev.exit.i.i.i:                    ; preds = %bb.cg, %_ZNKSt8functionIFiRKN4llvm5ErrorEEEclES3_.exit.i.i
  call void @exit(i32 noundef %i.sh) #27, !noalias !298
  unreachable

_ZNSt10unique_ptrIN4llvm5MachO13InterfaceFileESt14default_deleteIS2_EED2Ev.exit13.i: ; preds = %_ZN4llvm8ExpectedISt10unique_ptrINS_5MachO13InterfaceFileESt14default_deleteIS3_EEE9takeErrorEv.exit.i.i, %_ZN4llvm8ExpectedISt10unique_ptrINS_5MachO13InterfaceFileESt14default_deleteIS3_EEE9takeErrorEv.exit.thread.i.i
  %i.sr = phi ptr [ null, %_ZN4llvm8ExpectedISt10unique_ptrINS_5MachO13InterfaceFileESt14default_deleteIS3_EEE9takeErrorEv.exit.i.i ], [ %i.sc, %_ZN4llvm8ExpectedISt10unique_ptrINS_5MachO13InterfaceFileESt14default_deleteIS3_EEE9takeErrorEv.exit.thread.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17), !noalias !298
  call void @llvm.lifetime.end.p0(ptr nonnull %18), !noalias !298
  store ptr null, ptr %22, align 8, !tbaa !82, !noalias !298
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @_ZN4llvm5MachO13InterfaceFileD2Ev(ptr noundef nonnull align 8 dead_on_return(448) dereferenceable(448) %.sroa.023.037.i) #25
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.023.037.i, i64 noundef 448) #26
  %i.ss = load i8, ptr %i.rn, align 8
  %i.st = trunc i8 %i.ss to i1
  %i.su = load ptr, ptr %22, align 8, !tbaa !96   ; 5 uses
  %.not.i1.i.i = icmp eq ptr %i.su, null          ; 2 uses
  br i1 %i.st, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %_ZNSt10unique_ptrIN4llvm5MachO13InterfaceFileESt14default_deleteIS2_EED2Ev.exit13.i
  br i1 %.not.i1.i.i, label %bb.cj, label %_ZNKSt14default_deleteIN4llvm5MachO13InterfaceFileEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN4llvm5MachO13InterfaceFileEEclEPS2_.exit.i.i.i: ; preds = %bb.ch
  call void @_ZN4llvm5MachO13InterfaceFileD2Ev(ptr noundef nonnull align 8 dead_on_return(448) dereferenceable(448) %i.su) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.su, i64 noundef 448) #26
  br label %bb.cj

bb.ci:                                            ; preds = %_ZNSt10unique_ptrIN4llvm5MachO13InterfaceFileESt14default_deleteIS2_EED2Ev.exit13.i
  br i1 %.not.i1.i.i, label %bb.cj, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i: ; preds = %bb.ci
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !34
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 8
  %i.sx = load ptr, ptr %i.sw, align 8
  call void %i.sx(ptr noundef nonnull align 8 dereferenceable(8) %i.su) #25, !inline_history !224
  br label %bb.cj

bb.cj:                                            ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i, %bb.ci, %_ZNKSt14default_deleteIN4llvm5MachO13InterfaceFileEEclEPS2_.exit.i.i.i, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  %.pr.i147 = load ptr, ptr %21, align 8, !tbaa !82 ; 3 uses
  %.not.i14.i = icmp eq ptr %.pr.i147, null
  br i1 %.not.i14.i, label %_ZNSt10unique_ptrIN4llvm5MachO13InterfaceFileESt14default_deleteIS2_EED2Ev.exit16.i, label %_ZNKSt14default_deleteIN4llvm5MachO13InterfaceFileEEclEPS2_.exit.i15.i

_ZNKSt14default_deleteIN4llvm5MachO13InterfaceFileEEclEPS2_.exit.i15.i: ; preds = %bb.cj
  call void @_ZN4llvm5MachO13InterfaceFileD2Ev(ptr noundef nonnull align 8 dead_on_return(448) dereferenceable(448) %.pr.i147) #25
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i147, i64 noundef 448) #26
  br label %_ZNSt10unique_ptrIN4llvm5MachO13InterfaceFileESt14default_deleteIS2_EED2Ev.exit16.i

_ZNSt10unique_ptrIN4llvm5MachO13InterfaceFileESt14default_deleteIS2_EED2Ev.exit16.i: ; preds = %_ZNKSt14default_deleteIN4llvm5MachO13InterfaceFileEEclEPS2_.exit.i15.i, %bb.cj, %.thread.i
  %.sroa.023.133.i = phi ptr [ %i.ry, %.thread.i ], [ %i.sr, %bb.cj ], [ %i.sr, %_ZNKSt14default_deleteIN4llvm5MachO13InterfaceFileEEclEPS2_.exit.i15.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  %i.sy = getelementptr inbounds nuw i8, ptr %.sroa.020.038.i, i64 32 ; 2 uses
  %.not.i148 = icmp eq ptr %i.sy, %i.rh
  br i1 %.not.i148, label %._crit_edge.i149, label %bb.cc

_ZL17handleMergeActionRKN12_GLOBAL__N_17ContextE.exit: ; preds = %._crit_edge.i149, %_ZNKSt14default_deleteIN4llvm5MachO13InterfaceFileEEclEPS2_.exit.i.i151
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  br label %_ZNSt10unique_ptrIN4llvm5MachO13InterfaceFileESt14default_deleteIS2_EED2Ev.exit

_ZNSt8functionIFN4llvm8ExpectedISt10unique_ptrINS0_5MachO13InterfaceFileESt14default_deleteIS4_EEEERKS4_NS3_12ArchitectureEEEC2IMS4_KFS8_SB_EvEEOT_.exit: ; preds = %bb.bd
  %i.sz = getelementptr inbounds nuw i8, ptr %61, i64 24
  %i.ta = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 2 uses
  store i64 ptrtoint (ptr @_ZNK4llvm5MachO13InterfaceFile7extractENS0_12ArchitectureE to i64), ptr %61, align 8, !tbaa !28
  %.repack4.i.i.i = getelementptr inbounds nuw i8, ptr %61, i64 8
  store i64 0, ptr %.repack4.i.i.i, align 8, !tbaa !28
  store ptr @_ZNSt17_Function_handlerIFN4llvm8ExpectedISt10unique_ptrINS0_5MachO13InterfaceFileESt14default_deleteIS4_EEEERKS4_NS3_12ArchitectureEEMS4_KFS8_SB_EE9_M_invokeERKSt9_Any_dataSA_OSB_, ptr %i.sz, align 8, !tbaa !102
  store ptr @_ZNSt17_Function_handlerIFN4llvm8ExpectedISt10unique_ptrINS0_5MachO13InterfaceFileESt14default_deleteIS4_EEEERKS4_NS3_12ArchitectureEEMS4_KFS8_SB_EE10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation, ptr %i.ta, align 8, !tbaa !22
  call fastcc void @_ZL22handleSingleFileActionRKN12_GLOBAL__N_17ContextEN4llvm9StringRefESt8functionIFNS3_8ExpectedISt10unique_ptrINS3_5MachO13InterfaceFileESt14default_deleteIS9_EEEERKS9_NS8_12ArchitectureEEE(ptr noundef nonnull align 8 dereferenceable(46) %44, ptr nonnull @.str.13, i64 7, ptr nofree noundef align 8 dereferenceable(32) %61)
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !22 ; 2 uses
  %.not.i156 = icmp eq ptr %i.tb, null
  br i1 %.not.i156, label %_ZNSt10unique_ptrIN4llvm5MachO13InterfaceFileESt14default_deleteIS2_EED2Ev.exit, label %bb.ck

bb.ck:                                            ; preds = %_ZNSt8functionIFN4llvm8ExpectedISt10unique_ptrINS0_5MachO13InterfaceFileESt14default_deleteIS4_EEEERKS4_NS3_12ArchitectureEEEC2IMS4_KFS8_SB_EvEEOT_.exit
  %i.tc = call noundef zeroext i1 %i.tb(ptr noundef nonnull align 8 dereferenceable(32) %61, ptr noundef nonnull align 8 dereferenceable(32) %61, i32 noundef 3) #25, !inline_history !0 ; 0 uses
  br label %_ZNSt10unique_ptrIN4llvm5MachO13InterfaceFileESt14default_deleteIS2_EED2Ev.exit

_ZNSt8functionIFN4llvm8ExpectedISt10unique_ptrINS0_5MachO13InterfaceFileESt14default_deleteIS4_EEEERKS4_NS3_12ArchitectureEEEC2IMS4_KFS8_SB_EvEEOT_.exit164: ; preds = %bb.bd
  %i.td = getelementptr inbounds nuw i8, ptr %62, i64 24
  %i.te = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 2 uses
  store i64 ptrtoint (ptr @_ZNK4llvm5MachO13InterfaceFile6removeENS0_12ArchitectureE to i64), ptr %62, align 8, !tbaa !28
  %.repack4.i.i.i163 = getelementptr inbounds nuw i8, ptr %62, i64 8
  store i64 0, ptr %.repack4.i.i.i163, align 8, !tbaa !28
  store ptr @_ZNSt17_Function_handlerIFN4llvm8ExpectedISt10unique_ptrINS0_5MachO13InterfaceFileESt14default_deleteIS4_EEEERKS4_NS3_12ArchitectureEEMS4_KFS8_SB_EE9_M_invokeERKSt9_Any_dataSA_OSB_, ptr %i.td, align 8, !tbaa !102
  store ptr @_ZNSt17_Function_handlerIFN4llvm8ExpectedISt10unique_ptrINS0_5MachO13InterfaceFileESt14default_deleteIS4_EEEERKS4_NS3_12ArchitectureEEMS4_KFS8_SB_EE10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation, ptr %i.te, align 8, !tbaa !22
  call fastcc void @_ZL22handleSingleFileActionRKN12_GLOBAL__N_17ContextEN4llvm9StringRefESt8functionIFNS3_8ExpectedISt10unique_ptrINS3_5MachO13InterfaceFileESt14default_deleteIS9_EEEERKS9_NS8_12ArchitectureEEE(ptr noundef nonnull align 8 dereferenceable(46) %44, ptr nonnull @.str.14, i64 6, ptr nofree noundef align 8 dereferenceable(32) %62)
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !22 ; 2 uses
  %.not.i165.a = icmp eq ptr %i.tf, null
  br i1 %.not.i165.a, label %_ZNSt10unique_ptrIN4llvm5MachO13InterfaceFileESt14default_deleteIS2_EED2Ev.exit, label %bb.cl

bb.cl:                                            ; preds = %_ZNSt8functionIFN4llvm8ExpectedISt10unique_ptrINS0_5MachO13InterfaceFileESt14default_deleteIS4_EEEERKS4_NS3_12ArchitectureEEEC2IMS4_KFS8_SB_EvEEOT_.exit164
  %i.tg = call noundef zeroext i1 %i.tf(ptr noundef nonnull align 8 dereferenceable(32) %62, ptr noundef nonnull align 8 dereferenceable(32) %62, i32 noundef 3) #25, !inline_history !0 ; 0 uses
  br label %_ZNSt10unique_ptrIN4llvm5MachO13InterfaceFileESt14default_deleteIS2_EED2Ev.exit

bb.cm:                                            ; preds = %bb.bd
  %i.th = getelementptr inbounds nuw i8, ptr %44, i64 24 ; 2 uses
  %i.ti = call fastcc noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN12_GLOBAL__N_12IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(352) %46, i32 noundef 8)
  %i.tj = icmp ne ptr %i.ti, null
  %i.tk = zext i1 %i.tj to i8
  store i8 %i.tk, ptr %i.th, align 8, !tbaa !299
  %i.tl = call fastcc noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN12_GLOBAL__N_12IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(352) %46, i32 noundef 9)
  %i.tm = icmp ne ptr %i.tl, null
  %i.tn = getelementptr inbounds nuw i8, ptr %44, i64 25
  %i.to = zext i1 %i.tm to i8
  store i8 %i.to, ptr %i.tn, align 1, !tbaa !300
  %i.tp = call fastcc noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN12_GLOBAL__N_12IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(352) %46, i32 noundef 21)
  %i.tq = icmp ne ptr %i.tp, null
  %i.tr = getelementptr inbounds nuw i8, ptr %44, i64 26
  %i.ts = zext i1 %i.tq to i8
  store i8 %i.ts, ptr %i.tr, align 2, !tbaa !301
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.tt = load ptr, ptr %44, align 8, !tbaa !281  ; 3 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !281 ; 3 uses
  %i.tw = icmp eq ptr %i.tt, %i.tv
  br i1 %i.tw, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr @.str.55, ptr %7, align 8
  %.sroa.2186.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 3, ptr %.sroa.2186.0..sroa_idx.i, align 8
  %.sroa.4187.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %.sroa.4187.0..sroa_idx.i, align 1
  %i.tx = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #25
  %i.ty = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.tx, ptr noundef nonnull align 8 dereferenceable(32) @_ZN12_GLOBAL__N_18TOOLNAMEB5cxx11E)
  %i.tz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.ty, ptr noundef nonnull @.str.37)
  %i.ua = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvmlsERNS_11raw_ostreamERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(48) %i.tz, ptr noundef nonnull align 8 dereferenceable(34) %7)
  %i.ub = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.ua, ptr noundef nonnull @.str.38) ; 0 uses
  %i.uc = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #25
  call void @_ZN4llvm11raw_ostream5flushEv(ptr noundef nonnull align 8 dereferenceable(48) %i.uc)
  call void @exit(i32 noundef 1) #30
  unreachable

bb.co:                                            ; preds = %bb.cm
  %i.ud = ptrtoint ptr %i.tv to i64
  %i.ue = ptrtoint ptr %i.tt to i64
  %i.uf = sub i64 %i.ud, %i.ue
  %i.ug = icmp ult i64 %i.uf, 33
  %i.uh = load ptr, ptr %i.n, align 8
  %.not.i167 = icmp eq ptr %i.uh, null
  %or.cond.i = select i1 %i.ug, i1 true, i1 %.not.i167
  br i1 %or.cond.i, label %.lr.ph.i168, label %bb.cp

.lr.ph.i168:                                      ; preds = %bb.co
  %i.ui = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.uj = getelementptr inbounds nuw i8, ptr %8, i64 33
  %i.uk = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ul = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.um = getelementptr inbounds nuw i8, ptr %13, i64 33
  %i.un = getelementptr inbounds nuw i8, ptr %13, i64 8
  br label %bb.cq

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr @.str.56, ptr %6, align 8
  %.sroa.2181.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 3, ptr %.sroa.2181.0..sroa_idx.i, align 8
  %.sroa.4182.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %.sroa.4182.0..sroa_idx.i, align 1
  %i.uo = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #25
  %i.up = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.uo, ptr noundef nonnull align 8 dereferenceable(32) @_ZN12_GLOBAL__N_18TOOLNAMEB5cxx11E)
  %i.uq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.up, ptr noundef nonnull @.str.37)
  %i.ur = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvmlsERNS_11raw_ostreamERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(48) %i.uq, ptr noundef nonnull align 8 dereferenceable(34) %6)
  %i.us = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.ur, ptr noundef nonnull @.str.38) ; 0 uses
  %i.ut = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #25
  call void @_ZN4llvm11raw_ostream5flushEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ut)
  call void @exit(i32 noundef 1) #30
  unreachable

bb.cq:                                            ; preds = %bb.cw, %.lr.ph.i168
  %.sroa.0177.0208.i = phi ptr [ %i.tt, %.lr.ph.i168 ], [ %i.ww, %bb.cw ] ; 3 uses
  %i.uu = load ptr, ptr %.sroa.0177.0208.i, align 8, !tbaa !27 ; 7 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %.sroa.0177.0208.i, i64 8
  %i.uw = load i64, ptr %i.uv, align 8, !tbaa !61 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 0, ptr %i.a, align 1, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store i8 5, ptr %i.ui, align 8, !tbaa !77
  store i8 1, ptr %i.uj, align 1, !tbaa !78
  store ptr %i.uu, ptr %8, align 8, !tbaa !28
  store i64 %i.uw, ptr %i.uk, align 8, !tbaa !28
  %i.ux = call { i32, ptr } @_ZN4llvm3sys2fs12is_directoryERKNS_5TwineERb(ptr noundef nonnull align 8 dereferenceable(34) %8, ptr noundef nonnull align 1 dereferenceable(1) %i.a) #25 ; 2 uses
  %i.uy = extractvalue { i32, ptr } %i.ux, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %.not190.i = icmp eq i32 %i.uy, 0
  br i1 %.not190.i, label %bb.cr, label %_ZN4llvmplERKNS_5TwineES2_.exit.i

_ZN4llvmplERKNS_5TwineES2_.exit.i:                ; preds = %bb.cq
  %i.uz = extractvalue { i32, ptr } %i.ux, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.va = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 5, ptr %i.va, align 8, !tbaa !77, !alias.scope !302
  %i.vb = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 3, ptr %i.vb, align 1, !tbaa !78, !alias.scope !302
  store ptr %i.uu, ptr %9, align 8, !tbaa !28, !alias.scope !302
  %i.vc = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.uw, ptr %i.vc, align 8, !tbaa !28, !alias.scope !302
  %i.vd = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr @.str.57, ptr %i.vd, align 8, !tbaa !28, !alias.scope !302
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.ve = load ptr, ptr %i.uz, align 8, !tbaa !34, !noalias !303
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 32
  %i.vg = load ptr, ptr %i.vf, align 8, !noalias !303
  call void %i.vg(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.uz, i32 noundef %i.uy) #25, !inline_history !229
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %9, ptr %5, align 8
  %.sroa.5142.0..sroa_idx145.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %10, ptr %.sroa.5142.0..sroa_idx145.i, align 8
  %.sroa.7152.0..sroa_idx155.i = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 2, ptr %.sroa.7152.0..sroa_idx155.i, align 8
  %.sroa.9157.0..sroa_idx160.i = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 4, ptr %.sroa.9157.0..sroa_idx160.i, align 1
  %i.vh = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #25
  %i.vi = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.vh, ptr noundef nonnull align 8 dereferenceable(32) @_ZN12_GLOBAL__N_18TOOLNAMEB5cxx11E)
  %i.vj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.vi, ptr noundef nonnull @.str.37)
  %i.vk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvmlsERNS_11raw_ostreamERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(48) %i.vj, ptr noundef nonnull align 8 dereferenceable(34) %5)
  %i.vl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.vk, ptr noundef nonnull @.str.38) ; 0 uses
  %i.vm = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #25
  call void @_ZN4llvm11raw_ostream5flushEv(ptr noundef nonnull align 8 dereferenceable(48) %i.vm)
  call void @exit(i32 noundef 1) #30
  unreachable

bb.cr:                                            ; preds = %bb.cq
  %i.vn = load i8, ptr %i.a, align 1, !tbaa !103, !range !104, !noundef !88
  %i.vo = trunc nuw i8 %i.vn to i1
  br i1 %i.vo, label %bb.cs, label %bb.cu

bb.cs:                                            ; preds = %bb.cr
  %i.vp = load ptr, ptr %i.n, align 8, !tbaa !74
  %.not192.i = icmp eq ptr %i.vp, null
  br i1 %.not192.i, label %bb.ct, label %_ZN4llvmplERKNS_5TwineES2_.exit38.i

_ZN4llvmplERKNS_5TwineES2_.exit38.i:              ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.vq = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 3, ptr %i.vq, align 8, !tbaa !77, !alias.scope !304
  %i.vr = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 5, ptr %i.vr, align 1, !tbaa !78, !alias.scope !304
  store ptr @.str.58, ptr %11, align 8, !tbaa !28, !alias.scope !304
  %i.vs = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.uu, ptr %i.vs, align 8, !tbaa !28, !alias.scope !304
  %i.vt = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i64 %i.uw, ptr %i.vt, align 8, !tbaa !28, !alias.scope !304
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %11, ptr %4, align 8
  %.sroa.5111.0..sroa_idx114.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.59, ptr %.sroa.5111.0..sroa_idx114.i, align 8
  %.sroa.7121.0..sroa_idx124.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 2, ptr %.sroa.7121.0..sroa_idx124.i, align 8
  %.sroa.9126.0..sroa_idx129.i = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 3, ptr %.sroa.9126.0..sroa_idx129.i, align 1
  %i.vu = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #25
  %i.vv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.vu, ptr noundef nonnull align 8 dereferenceable(32) @_ZN12_GLOBAL__N_18TOOLNAMEB5cxx11E)
  %i.vw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.vv, ptr noundef nonnull @.str.37)
end_hunk_0
