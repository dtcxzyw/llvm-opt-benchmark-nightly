Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/loopsubdiv?download=true
inline.NumInlined: 1399
inline.NumDeleted: 708
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN4pbrt13LoopSubdivideEPKNS_9TransformEbiN4pstd4spanIKiEENS4_IKNS_6Point3IfEEEENS3_3pmr21polymorphic_allocatorISt4byteEE:.noexc
  invoke void %i.bdi(ptr noundef nonnull align 8 dereferenceable(8) %i.bdf, ptr noundef nonnull %.pre49.i951, i64 noundef %i.bde, i64 noundef 4)
          to label %bb.hn unwind label %bb.hk, !inline_history !1

bb.hk:                                            ; preds = %bb.hj
  %i.bdj = landingpad { ptr, i32 }
          catch ptr null
  %i.bdk = extractvalue { ptr, i32 } %i.bdj, 0
  call void @__clang_call_terminate(ptr %i.bdk) #22
  unreachable

bb.hl:                                            ; preds = %_ZN4pbrt13InlinedVectorINS_6Point3IfEELi16EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EmRKS6_.exit.i942
  %i.bdl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt13InlinedVectorINS_6Point3IfEELi16EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %.body928

bb.hm:                                            ; preds = %bb.hm, %.lr.ph.i958.new
  %indvars.iv.i961 = phi i64 [ 0, %.lr.ph.i958.new ], [ %indvars.iv.next.i973.3, %bb.hm ] ; 5 uses
  %.sroa.040.045.i962 = phi <2 x float> [ %i.bcr, %.lr.ph.i958.new ], [ %i.beh, %bb.hm ]
  %.sroa.6.044.i963 = phi float [ %i.bcs, %.lr.ph.i958.new ], [ %i.bei, %bb.hm ]
  %niter2496 = phi i64 [ 0, %.lr.ph.i958.new ], [ %niter2496.next.3, %bb.hm ]
  %i.bdm = getelementptr inbounds nuw [12 x i8], ptr %i.bcu, i64 %indvars.iv.i961 ; 2 uses
  %.sroa.07.0.copyload.i964 = load <2 x float>, ptr %i.bdm, align 4
  %.sroa.28.0..sroa_idx.i965 = getelementptr inbounds nuw i8, ptr %i.bdm, i64 8
  %.sroa.28.0.copyload.i966 = load float, ptr %.sroa.28.0..sroa_idx.i965, align 4, !tbaa !164
  %i.bdn = fmul float %i.bbc, %.sroa.28.0.copyload.i966
  %i.bdo = fmul <2 x float> %i.bcw, %.sroa.07.0.copyload.i964
  %i.bdp = fadd <2 x float> %.sroa.040.045.i962, %i.bdo
  %i.bdq = fadd float %.sroa.6.044.i963, %i.bdn
  %i.bdr = getelementptr inbounds nuw [12 x i8], ptr %i.bcu, i64 %indvars.iv.i961 ; 2 uses
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bdr, i64 12
  %.sroa.07.0.copyload.i964.1 = load <2 x float>, ptr %i.bds, align 4
  %.sroa.28.0..sroa_idx.i965.1 = getelementptr inbounds nuw i8, ptr %i.bdr, i64 20
  %.sroa.28.0.copyload.i966.1 = load float, ptr %.sroa.28.0..sroa_idx.i965.1, align 4, !tbaa !164
  %i.bdt = fmul float %i.bbc, %.sroa.28.0.copyload.i966.1
  %i.bdu = fmul <2 x float> %i.bcw, %.sroa.07.0.copyload.i964.1
  %i.bdv = fadd <2 x float> %i.bdp, %i.bdu
  %i.bdw = fadd float %i.bdq, %i.bdt
  %i.bdx = getelementptr inbounds nuw [12 x i8], ptr %i.bcu, i64 %indvars.iv.i961 ; 2 uses
  %i.bdy = getelementptr inbounds nuw i8, ptr %i.bdx, i64 24
  %.sroa.07.0.copyload.i964.2 = load <2 x float>, ptr %i.bdy, align 4
  %.sroa.28.0..sroa_idx.i965.2 = getelementptr inbounds nuw i8, ptr %i.bdx, i64 32
  %.sroa.28.0.copyload.i966.2 = load float, ptr %.sroa.28.0..sroa_idx.i965.2, align 4, !tbaa !164
  %i.bdz = fmul float %i.bbc, %.sroa.28.0.copyload.i966.2
  %i.bea = fmul <2 x float> %i.bcw, %.sroa.07.0.copyload.i964.2
  %i.beb = fadd <2 x float> %i.bdv, %i.bea
  %i.bec = fadd float %i.bdw, %i.bdz
  %i.bed = getelementptr inbounds nuw [12 x i8], ptr %i.bcu, i64 %indvars.iv.i961 ; 2 uses
  %i.bee = getelementptr inbounds nuw i8, ptr %i.bed, i64 36
  %.sroa.07.0.copyload.i964.3 = load <2 x float>, ptr %i.bee, align 4
  %.sroa.28.0..sroa_idx.i965.3 = getelementptr inbounds nuw i8, ptr %i.bed, i64 44
  %.sroa.28.0.copyload.i966.3 = load float, ptr %.sroa.28.0..sroa_idx.i965.3, align 4, !tbaa !164
  %i.bef = fmul float %i.bbc, %.sroa.28.0.copyload.i966.3
  %i.beg = fmul <2 x float> %i.bcw, %.sroa.07.0.copyload.i964.3
  %i.beh = fadd <2 x float> %i.beb, %i.beg        ; 3 uses
  %i.bei = fadd float %i.bec, %i.bef              ; 3 uses
  %indvars.iv.next.i973.3 = add nuw nsw i64 %indvars.iv.i961, 4 ; 2 uses
  %niter2496.next.3 = add i64 %niter2496, 4       ; 2 uses
  %niter2496.ncmp.3 = icmp eq i64 %niter2496.next.3, %unroll_iter2495
  br i1 %niter2496.ncmp.3, label %._crit_edge.i952.loopexit.unr-lcssa, label %bb.hm, !llvm.loop !114

bb.hn:                                            ; preds = %bb.hj, %._crit_edge.i952
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.hp

bb.ho:                                            ; preds = %_ZN4pbrt13InlinedVectorINS_6Point3IfEELi16EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit.thread.i.i.i975, %bb.hg, %bb.hf
  %i.bej = landingpad { ptr, i32 }
          cleanup
  br label %.body928

bb.hp:                                            ; preds = %bb.hd, %bb.hn
  %.sroa.056.4.vec.insert67.i922.sink = phi <2 x float> [ %i.bar, %bb.hd ], [ %.sroa.040.0.lcssa.i954, %bb.hn ]
  %.sink2328 = phi float [ %i.bai, %bb.hd ], [ %.sroa.6.0.lcssa.i953, %bb.hn ]
  %i.bek = load ptr, ptr %21, align 8, !tbaa !66
  %i.bel = getelementptr inbounds nuw [12 x i8], ptr %i.bek, i64 %.05831812 ; 2 uses
  store <2 x float> %.sroa.056.4.vec.insert67.i922.sink, ptr %i.bel, align 4
  %.sroa.5270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bel, i64 8
  store float %.sink2328, ptr %.sroa.5270.0..sroa_idx, align 4
  %i.bem = add nuw i64 %.05831812, 1              ; 2 uses
  %i.ben = load ptr, ptr %i.lx, align 8, !tbaa !53 ; 2 uses
  %i.beo = load ptr, ptr %16, align 8, !tbaa !52  ; 4 uses
  %i.bep = ptrtoint ptr %i.ben to i64
  %i.beq = ptrtoint ptr %i.beo to i64
  %i.ber = sub i64 %i.bep, %i.beq
  %i.bes = ashr exact i64 %i.ber, 3
  %i.bet = icmp ult i64 %i.bem, %i.bes
  br i1 %i.bet, label %bb.gx, label %.preheader1611, !llvm.loop !125

.thread2246:                                      ; preds = %bb.gv, %.thread2236, %.preheader1611
  %.ph2243 = phi ptr [ %i.axr, %.preheader1611 ], [ %i.axr, %bb.gv ], [ %i.nf, %.thread2236 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false)
  %i.beu = getelementptr inbounds nuw i8, ptr %22, i64 16
  br label %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EE7reserveEm.exit

._crit_edge1817:                                  ; preds = %.lr.ph1816
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false)
  %i.bev = icmp ugt i64 %i.bfu, 768614336404564650
  br i1 %i.bev, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %._crit_edge1817
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #18
          to label %.noexc985 unwind label %bb.hv

.noexc985:                                        ; preds = %bb.hq
  unreachable

bb.hr:                                            ; preds = %._crit_edge1817
  %i.bew = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 4 uses
  %.not2190 = icmp eq ptr %i.bfp, %i.bfq
  br i1 %.not2190, label %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN4pbrt7Normal3IfEESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN4pbrt7Normal3IfEESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.hr
  %i.bex = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.bey = mul nuw nsw i64 %i.bfu, 12
  %i.bez = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bey) #17
          to label %.noexc986 unwind label %bb.hv ; 4 uses

.noexc986:                                        ; preds = %_ZNSt12_Vector_baseIN4pbrt7Normal3IfEESaIS2_EE11_M_allocateEm.exit.i
  %i.bfa = load ptr, ptr %22, align 8, !tbaa !71  ; 5 uses
  %i.bfb = load ptr, ptr %i.bex, align 8, !tbaa !72 ; 2 uses
  %.not10.i.i.i.i981 = icmp eq ptr %i.bfa, %i.bfb
  br i1 %.not10.i.i.i.i981, label %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i982

.lr.ph.i.i.i.i982:                                ; preds = %.noexc986, %.lr.ph.i.i.i.i982
  %.012.i.i.i.i983 = phi ptr [ %i.bfd, %.lr.ph.i.i.i.i982 ], [ %i.bez, %.noexc986 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bfc, %.lr.ph.i.i.i.i982 ], [ %i.bfa, %.noexc986 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i983, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i, i64 12, i1 false), !alias.scope !169
  %i.bfc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 12 ; 2 uses
  %i.bfd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i983, i64 12
  %.not.i.i.i.i984 = icmp eq ptr %i.bfc, %i.bfb
  br i1 %.not.i.i.i.i984, label %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i982, !llvm.loop !129

_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %.lr.ph.i.i.i.i982, %.noexc986
  %.not.i8.i = icmp eq ptr %i.bfa, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN4pbrt7Normal3IfEESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.hs

bb.hs:                                            ; preds = %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  %i.bfe = load ptr, ptr %i.bew, align 8, !tbaa !73
  %i.bff = ptrtoint ptr %i.bfe to i64
  %i.bfg = ptrtoint ptr %i.bfa to i64
  %i.bfh = sub i64 %i.bff, %i.bfg
  call void @_ZdlPvm(ptr noundef nonnull %i.bfa, i64 noundef %i.bfh) #19
  br label %_ZNSt12_Vector_baseIN4pbrt7Normal3IfEESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIN4pbrt7Normal3IfEESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.hs, %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.bez, ptr %22, align 8, !tbaa !71
  store ptr %i.bez, ptr %i.bex, align 8, !tbaa !72
  %i.bfi = getelementptr inbounds nuw [12 x i8], ptr %i.bez, i64 %i.bfu
  store ptr %i.bfi, ptr %i.bew, align 8, !tbaa !73
  br label %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EE7reserveEm.exit

.lr.ph1816:                                       ; preds = %.preheader1611, %.lr.ph1816
  %i.bfj = phi ptr [ %i.bfq, %.lr.ph1816 ], [ %i.beo, %.preheader1611 ]
  %.05841815 = phi i64 [ %i.bfo, %.lr.ph1816 ], [ 0, %.preheader1611 ] ; 3 uses
  %i.bfk = load ptr, ptr %21, align 8, !tbaa !66
  %i.bfl = getelementptr inbounds nuw [12 x i8], ptr %i.bfk, i64 %.05841815
  %i.bfm = getelementptr inbounds nuw [8 x i8], ptr %i.bfj, i64 %.05841815
  %i.bfn = load ptr, ptr %i.bfm, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bfn, ptr noundef nonnull align 4 dereferenceable(12) %i.bfl, i64 12, i1 false)
  %i.bfo = add nuw i64 %.05841815, 1              ; 2 uses
  %i.bfp = load ptr, ptr %i.lx, align 8, !tbaa !53 ; 2 uses
  %i.bfq = load ptr, ptr %16, align 8, !tbaa !52  ; 3 uses
  %i.bfr = ptrtoint ptr %i.bfp to i64
  %i.bfs = ptrtoint ptr %i.bfq to i64
  %i.bft = sub i64 %i.bfr, %i.bfs
  %i.bfu = ashr exact i64 %i.bft, 3               ; 4 uses
  %i.bfv = icmp ult i64 %i.bfo, %i.bfu
  br i1 %i.bfv, label %.lr.ph1816, label %._crit_edge1817, !llvm.loop !130

_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EE7reserveEm.exit: ; preds = %.thread2246, %_ZNSt12_Vector_baseIN4pbrt7Normal3IfEESaIS2_EE13_M_deallocateEPS2_m.exit.i, %bb.hr
  %i.bfw = phi ptr [ %i.beu, %.thread2246 ], [ %i.bew, %_ZNSt12_Vector_baseIN4pbrt7Normal3IfEESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ %i.bew, %bb.hr ] ; 4 uses
  %i.bfx = phi ptr [ %.ph2243, %.thread2246 ], [ %i.axr, %_ZNSt12_Vector_baseIN4pbrt7Normal3IfEESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ %i.axr, %bb.hr ] ; 3 uses
  %i.bfy = invoke noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #17
          to label %.noexc988 unwind label %bb.hw ; 4 uses

.noexc988:                                        ; preds = %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EE7reserveEm.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %i.bfy, i8 0, i64 192, i1 false)
  %i.bfz = getelementptr inbounds nuw i8, ptr %i.bfy, i64 192 ; 3 uses
  %i.bga = load ptr, ptr %16, align 8, !tbaa !161 ; 2 uses
  %i.bgb = load ptr, ptr %i.lx, align 8, !tbaa !161 ; 2 uses
  %.not15931837 = icmp eq ptr %i.bga, %i.bgb
  br i1 %.not15931837, label %._crit_edge1843, label %.lr.ph1842

.lr.ph1842:                                       ; preds = %.noexc988
  %i.bgc = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 4 uses
  br label %bb.hx

._crit_edge1843:                                  ; preds = %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EE9push_backEOS2_.exit, %.noexc988
  %.sroa.01416.0.lcssa = phi ptr [ %i.bfy, %.noexc988 ], [ %.sroa.01416.2, %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EE9push_backEOS2_.exit ] ; 3 uses
  %.sroa.34.0.lcssa = phi ptr [ %i.bfz, %.noexc988 ], [ %.sroa.34.2, %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  %i.bgd = load ptr, ptr %i.lg, align 8, !tbaa !46 ; 2 uses
  %i.bge = load ptr, ptr %15, align 8, !tbaa !45  ; 2 uses
  %i.bgf = ptrtoint ptr %i.bgd to i64
  %i.bgg = ptrtoint ptr %i.bge to i64
  %i.bgh = sub i64 %i.bgf, %i.bgg
  %i.bgi = ashr exact i64 %i.bgh, 3               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  %i.bgj = mul nsw i64 %i.bgi, 3                  ; 2 uses
  %i.bgk = icmp ugt i64 %i.bgj, 2305843009213693951
  br i1 %i.bgk, label %bb.ht, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.ht:                                            ; preds = %._crit_edge1843
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #18
          to label %.noexc991 unwind label %bb.iq

.noexc991:                                        ; preds = %bb.ht
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %._crit_edge1843
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i64 24, i1 false)
  %.not.i.i.i.i989 = icmp eq ptr %i.bgd, %i.bge   ; 2 uses
  br i1 %.not.i.i.i.i989, label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i, label %bb.hu

bb.hu:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.bgl = mul nuw nsw i64 %i.bgi, 12             ; 3 uses
  %i.bgm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bgl) #17
          to label %.noexc992 unwind label %bb.iq ; 6 uses

.noexc992:                                        ; preds = %bb.hu
  store ptr %i.bgm, ptr %23, align 8, !tbaa !76
  %i.bgn = getelementptr inbounds nuw [4 x i8], ptr %i.bgm, i64 %i.bgj
  %i.bgo = getelementptr inbounds nuw i8, ptr %23, i64 16
  store ptr %i.bgn, ptr %i.bgo, align 8, !tbaa !77
  store i32 0, ptr %i.bgm, align 4, !tbaa !31
  %i.bgp = getelementptr i8, ptr %i.bgm, i64 4
  %i.bgq = add nsw i64 %i.bgl, -4
  call void @llvm.memset.p0.i64(ptr align 4 %i.bgp, i8 0, i64 %i.bgq, i1 false), !tbaa !31
  %28 = getelementptr i8, ptr %i.bgm, i64 %i.bgl
  br label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i

bb.hv:                                            ; preds = %_ZNSt12_Vector_baseIN4pbrt7Normal3IfEESaIS2_EE11_M_allocateEm.exit.i, %bb.hq
  %i.bgr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EED2Ev.exit1185

bb.hw:                                            ; preds = %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EE7reserveEm.exit
  %i.bgs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EED2Ev.exit1185

bb.hx:                                            ; preds = %.lr.ph1842, %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EE9push_backEOS2_.exit
  %.sroa.01409.01841 = phi ptr [ %i.bga, %.lr.ph1842 ], [ %i.bpz, %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  %.sroa.34.01840 = phi ptr [ %i.bfz, %.lr.ph1842 ], [ %.sroa.34.2, %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EE9push_backEOS2_.exit ] ; 8 uses
  %.sroa.26.01839 = phi ptr [ %i.bfz, %.lr.ph1842 ], [ %.sroa.26.1, %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EE9push_backEOS2_.exit ] ; 9 uses
  %.sroa.01416.01838 = phi ptr [ %i.bfy, %.lr.ph1842 ], [ %.sroa.01416.2, %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EE9push_backEOS2_.exit ] ; 12 uses
  %i.bgt = load ptr, ptr %.sroa.01409.01841, align 8, !tbaa !20 ; 9 uses
  %i.bgu = invoke noundef i32 @_ZN4pbrt8SDVertex7valenceEv(ptr noundef nonnull align 8 dereferenceable(34) %i.bgt)
          to label %bb.hy unwind label %.loopexit1605 ; 13 uses

bb.hy:                                            ; preds = %bb.hx
  %i.bgv = ptrtoint ptr %.sroa.26.01839 to i64    ; 2 uses
  %i.bgw = ptrtoint ptr %.sroa.01416.01838 to i64 ; 2 uses
  %i.bgx = sub i64 %i.bgv, %i.bgw                 ; 2 uses
  %i.bgy = sdiv exact i64 %i.bgx, 12              ; 8 uses
  %i.bgz = trunc i64 %i.bgy to i32
  %i.bha = icmp sgt i32 %i.bgu, %i.bgz
  br i1 %i.bha, label %bb.hz, label %_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EE6resizeEm.exit

bb.hz:                                            ; preds = %bb.hy
  %i.bhb = sext i32 %i.bgu to i64                 ; 4 uses
  %i.bhc = icmp ult i64 %i.bgy, %i.bhb
  br i1 %i.bhc, label %bb.ia, label %bb.id

bb.ia:                                            ; preds = %bb.hz
  %i.bhd = sub nuw nsw i64 %i.bhb, %i.bgy         ; 5 uses
  %i.bhe = ptrtoint ptr %.sroa.34.01840 to i64    ; 2 uses
  %i.bhf = sub i64 %i.bhe, %i.bgv
  %i.bhg = sdiv exact i64 %i.bhf, 12              ; 2 uses
  %i.bhh = icmp ult i64 %i.bgy, 768614336404564651
  call void @llvm.assume(i1 %i.bhh)
  %i.bhi = sub nuw nsw i64 768614336404564650, %i.bgy
  %i.bhj = icmp ule i64 %i.bhg, %i.bhi
  call void @llvm.assume(i1 %i.bhj)
  %.not28.i = icmp ult i64 %i.bhg, %i.bhd
  br i1 %.not28.i, label %bb.ib, label %_ZSt27__uninitialized_default_n_aIPN4pbrt6Point3IfEEmS2_ET_S4_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPN4pbrt6Point3IfEEmS2_ET_S4_T0_RSaIT1_E.exit.i: ; preds = %bb.ia
  %i.bhk = mul nuw nsw i64 %i.bhd, 12             ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %.sroa.26.01839, i8 0, i64 %i.bhk, i1 false)
  %scevgep.i.i.i.i = getelementptr i8, ptr %.sroa.26.01839, i64 %i.bhk
  br label %_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EE6resizeEm.exit

bb.ib:                                            ; preds = %bb.ia
  %i.bhl = icmp slt i32 %i.bgu, 0
  br i1 %i.bhl, label %bb.ic, label %_ZNKSt6vectorIN4pbrt6Point3IfEESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.ic:                                            ; preds = %bb.ib
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
          to label %.noexc1338 unwind label %.loopexit.split-lp

.noexc1338:                                       ; preds = %bb.ic
  unreachable

_ZNKSt6vectorIN4pbrt6Point3IfEESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ib
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bgy, i64 %i.bhd)
  %i.bhm = add nuw nsw i64 %.sroa.speculated.i.i, %i.bgy
  %i.bhn = call i64 @llvm.umin.i64(i64 %i.bhm, i64 768614336404564650) ; 2 uses
  %i.bho = mul nuw nsw i64 %i.bhn, 12
  %i.bhp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bho) #17
          to label %.noexc1339 unwind label %.loopexit1605 ; 4 uses

.noexc1339:                                       ; preds = %_ZNKSt6vectorIN4pbrt6Point3IfEESaIS2_EE12_M_check_lenEmPKc.exit.i
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bhp, i64 %i.bgx ; 2 uses
  %i.bhr = mul nuw nsw i64 %i.bhd, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bhq, i8 0, i64 %i.bhr, i1 false)
  %.not10.i.i.i.i1333 = icmp eq ptr %.sroa.01416.01838, %.sroa.26.01839
  br i1 %.not10.i.i.i.i1333, label %_ZNSt12_Vector_baseIN4pbrt6Point3IfEESaIS2_EE13_M_deallocateEPS2_m.exit37.i, label %.lr.ph.i.i.i.i1334

.lr.ph.i.i.i.i1334:                               ; preds = %.noexc1339, %.lr.ph.i.i.i.i1334
  %.012.i.i.i.i1335 = phi ptr [ %i.bht, %.lr.ph.i.i.i.i1334 ], [ %i.bhp, %.noexc1339 ] ; 2 uses
  %.0911.i.i.i.i1336 = phi ptr [ %i.bhs, %.lr.ph.i.i.i.i1334 ], [ %.sroa.01416.01838, %.noexc1339 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i1335, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i1336, i64 12, i1 false), !alias.scope !170
  %i.bhs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i1336, i64 12 ; 2 uses
  %i.bht = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1335, i64 12
  %.not.i.i.i.i1337 = icmp eq ptr %i.bhs, %.sroa.26.01839
  br i1 %.not.i.i.i.i1337, label %_ZNSt12_Vector_baseIN4pbrt6Point3IfEESaIS2_EE13_M_deallocateEPS2_m.exit37.i, label %.lr.ph.i.i.i.i1334, !llvm.loop !134

_ZNSt12_Vector_baseIN4pbrt6Point3IfEESaIS2_EE13_M_deallocateEPS2_m.exit37.i: ; preds = %.lr.ph.i.i.i.i1334, %.noexc1339
  %i.bhu = sub i64 %i.bhe, %i.bgw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01416.01838, i64 noundef %i.bhu) #19
  %i.bhv = getelementptr inbounds nuw [12 x i8], ptr %i.bhq, i64 %i.bhd
  %i.bhw = getelementptr inbounds nuw [12 x i8], ptr %i.bhp, i64 %i.bhn
  br label %_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EE6resizeEm.exit

bb.id:                                            ; preds = %bb.hz
  %i.bhx = icmp ugt i64 %i.bgy, %i.bhb
  br i1 %i.bhx, label %bb.ie, label %_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EE6resizeEm.exit

bb.ie:                                            ; preds = %bb.id
  %i.bhy = getelementptr inbounds nuw [12 x i8], ptr %.sroa.01416.01838, i64 %i.bhb ; 2 uses
  %.not.i.i993 = icmp eq ptr %.sroa.26.01839, %i.bhy
  %spec.select = select i1 %.not.i.i993, ptr %.sroa.26.01839, ptr %i.bhy
  br label %_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EE6resizeEm.exit

.loopexit1605:                                    ; preds = %bb.hx, %_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EE6resizeEm.exit, %_ZNKSt6vectorIN4pbrt6Point3IfEESaIS2_EE12_M_check_lenEmPKc.exit.i
  %.sroa.01416.1.ph = phi ptr [ %.sroa.01416.01838, %bb.hx ], [ %.sroa.01416.01838, %_ZNKSt6vectorIN4pbrt6Point3IfEESaIS2_EE12_M_check_lenEmPKc.exit.i ], [ %.sroa.01416.2, %_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EE6resizeEm.exit ]
  %.sroa.34.1.ph = phi ptr [ %.sroa.34.01840, %bb.hx ], [ %.sroa.34.01840, %_ZNKSt6vectorIN4pbrt6Point3IfEESaIS2_EE12_M_check_lenEmPKc.exit.i ], [ %.sroa.34.2, %_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EE6resizeEm.exit ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.kh

.loopexit.split-lp:                               ; preds = %bb.ic
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.kh

_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EE6resizeEm.exit: ; preds = %bb.ie, %bb.id, %_ZNSt12_Vector_baseIN4pbrt6Point3IfEESaIS2_EE13_M_deallocateEPS2_m.exit37.i, %_ZSt27__uninitialized_default_n_aIPN4pbrt6Point3IfEEmS2_ET_S4_T0_RSaIT1_E.exit.i, %bb.hy
  %.sroa.01416.2 = phi ptr [ %.sroa.01416.01838, %bb.hy ], [ %.sroa.01416.01838, %bb.id ], [ %.sroa.01416.01838, %bb.ie ], [ %.sroa.01416.01838, %_ZSt27__uninitialized_default_n_aIPN4pbrt6Point3IfEEmS2_ET_S4_T0_RSaIT1_E.exit.i ], [ %i.bhp, %_ZNSt12_Vector_baseIN4pbrt6Point3IfEESaIS2_EE13_M_deallocateEPS2_m.exit37.i ] ; 25 uses
  %.sroa.26.1 = phi ptr [ %.sroa.26.01839, %bb.hy ], [ %.sroa.26.01839, %bb.id ], [ %spec.select, %bb.ie ], [ %scevgep.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN4pbrt6Point3IfEEmS2_ET_S4_T0_RSaIT1_E.exit.i ], [ %i.bhv, %_ZNSt12_Vector_baseIN4pbrt6Point3IfEESaIS2_EE13_M_deallocateEPS2_m.exit37.i ]
  %.sroa.34.2 = phi ptr [ %.sroa.34.01840, %bb.hy ], [ %.sroa.34.01840, %bb.id ], [ %.sroa.34.01840, %bb.ie ], [ %.sroa.34.01840, %_ZSt27__uninitialized_default_n_aIPN4pbrt6Point3IfEEmS2_ET_S4_T0_RSaIT1_E.exit.i ], [ %i.bhw, %_ZNSt12_Vector_baseIN4pbrt6Point3IfEESaIS2_EE13_M_deallocateEPS2_m.exit37.i ] ; 5 uses
  invoke void @_ZN4pbrt8SDVertex7oneRingEPNS_6Point3IfEE(ptr noundef nonnull align 8 dereferenceable(34) %i.bgt, ptr noundef nonnull %.sroa.01416.2)
          to label %bb.if unwind label %.loopexit1605

bb.if:                                            ; preds = %_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EE6resizeEm.exit
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.bgt, i64 33
  %i.bia = load i8, ptr %i.bhz, align 1, !tbaa !47, !range !48, !noundef !57
  %i.bib = trunc nuw i8 %i.bia to i1
  br i1 %i.bib, label %bb.ih, label %.preheader1604

.preheader1604:                                   ; preds = %bb.if
  %i.bic = icmp sgt i32 %i.bgu, 0
  br i1 %i.bic, label %.lr.ph1824, label %.loopexit

.lr.ph1824:                                       ; preds = %.preheader1604
  %i.bid = uitofp nneg i32 %i.bgu to float        ; 3 uses
  %wide.trip.count = zext nneg i32 %i.bgu to i64  ; 2 uses
  %xtraiter2504 = and i64 %wide.trip.count, 1
  %i.bie = icmp eq i32 %i.bgu, 1
  br i1 %i.bie, label %.epil.preheader2503, label %.lr.ph1824.new

.lr.ph1824.new:                                   ; preds = %.lr.ph1824
  %unroll_iter2512 = and i64 %wide.trip.count, 2147483646
  br label %bb.ig

bb.ig:                                            ; preds = %bb.ig, %.lr.ph1824.new
  %indvars.iv1943 = phi i64 [ 0, %.lr.ph1824.new ], [ %indvars.iv.next1944.1, %bb.ig ] ; 4 uses
  %.sroa.01370.01822 = phi <2 x float> [ zeroinitializer, %.lr.ph1824.new ], [ %i.bjp, %bb.ig ]
  %.sroa.23.01821 = phi float [ 0.000000e+00, %.lr.ph1824.new ], [ %i.bjq, %bb.ig ]
  %.sroa.01400.01820 = phi <2 x float> [ zeroinitializer, %.lr.ph1824.new ], [ %i.bji, %bb.ig ]
  %.sroa.11.01819 = phi float [ 0.000000e+00, %.lr.ph1824.new ], [ %i.bjj, %bb.ig ]
  %niter2513 = phi i64 [ 0, %.lr.ph1824.new ], [ %niter2513.next.1, %bb.ig ]
  %i.bif = trunc nuw nsw i64 %indvars.iv1943 to i32
  %i.big = uitofp nneg i32 %i.bif to float
  %i.bih = fmul nnan float %i.big, f0x40C90FDB
  %i.bii = fdiv float %i.bih, %i.bid              ; 2 uses
  %i.bij = call noundef float @cosf(float noundef %i.bii) #20 ; 2 uses
  %i.bik = getelementptr inbounds nuw [12 x i8], ptr %.sroa.01416.2, i64 %indvars.iv1943 ; 2 uses
  %.sroa.0223.0.copyload = load <2 x float>, ptr %i.bik, align 4 ; 2 uses
  %.sroa.2224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bik, i64 8 ; 2 uses
  %.sroa.2224.0.copyload = load float, ptr %.sroa.2224.0..sroa_idx, align 4
  %i.bil = fmul float %i.bij, %.sroa.2224.0.copyload
  %i.bim = insertelement <2 x float> poison, float %i.bij, i64 0
  %i.bin = shufflevector <2 x float> %i.bim, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bio = fmul <2 x float> %i.bin, %.sroa.0223.0.copyload
  %i.bip = fadd <2 x float> %.sroa.01400.01820, %i.bio
  %i.biq = fadd float %.sroa.11.01819, %i.bil
  %i.bir = call noundef float @sinf(float noundef %i.bii) #20 ; 2 uses
  %.sroa.2208.0.copyload = load float, ptr %.sroa.2224.0..sroa_idx, align 4
  %i.bis = fmul float %i.bir, %.sroa.2208.0.copyload
  %i.bit = insertelement <2 x float> poison, float %i.bir, i64 0
  %i.biu = shufflevector <2 x float> %i.bit, <2 x float> poison, <2 x i32> zeroinitializer
  %i.biv = fmul <2 x float> %.sroa.0223.0.copyload, %i.biu
  %i.biw = fadd <2 x float> %.sroa.01370.01822, %i.biv
  %i.bix = fadd float %.sroa.23.01821, %i.bis
  %indvars.iv.next1944 = or disjoint i64 %indvars.iv1943, 1 ; 2 uses
  %i.biy = trunc nuw nsw i64 %indvars.iv.next1944 to i32
  %i.biz = uitofp nneg i32 %i.biy to float
  %i.bja = fmul nnan float %i.biz, f0x40C90FDB
  %i.bjb = fdiv float %i.bja, %i.bid              ; 2 uses
  %i.bjc = call noundef float @cosf(float noundef %i.bjb) #20 ; 2 uses
  %i.bjd = getelementptr inbounds nuw [12 x i8], ptr %.sroa.01416.2, i64 %indvars.iv.next1944 ; 2 uses
  %.sroa.0223.0.copyload.1 = load <2 x float>, ptr %i.bjd, align 4 ; 2 uses
  %.sroa.2224.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.bjd, i64 8 ; 2 uses
  %.sroa.2224.0.copyload.1 = load float, ptr %.sroa.2224.0..sroa_idx.1, align 4
  %i.bje = fmul float %i.bjc, %.sroa.2224.0.copyload.1
  %i.bjf = insertelement <2 x float> poison, float %i.bjc, i64 0
  %i.bjg = shufflevector <2 x float> %i.bjf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bjh = fmul <2 x float> %i.bjg, %.sroa.0223.0.copyload.1
  %i.bji = fadd <2 x float> %i.bip, %i.bjh        ; 3 uses
  %i.bjj = fadd float %i.biq, %i.bje              ; 3 uses
  %i.bjk = call noundef float @sinf(float noundef %i.bjb) #20 ; 2 uses
  %.sroa.2208.0.copyload.1 = load float, ptr %.sroa.2224.0..sroa_idx.1, align 4
  %i.bjl = fmul float %i.bjk, %.sroa.2208.0.copyload.1
  %i.bjm = insertelement <2 x float> poison, float %i.bjk, i64 0
  %i.bjn = shufflevector <2 x float> %i.bjm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bjo = fmul <2 x float> %.sroa.0223.0.copyload.1, %i.bjn
  %i.bjp = fadd <2 x float> %i.biw, %i.bjo        ; 3 uses
  %i.bjq = fadd float %i.bix, %i.bjl              ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN4pbrt13LoopSubdivideEPKNS_9TransformEbiN4pstd4spanIKiEENS4_IKNS_6Point3IfEEEENS3_3pmr21polymorphic_allocatorISt4byteEE:.noexc

._crit_edge1834.loopexit.unr-lcssa:               ; preds = %.lr.ph1833
  %lcmp.mod2516.not = icmp eq i64 %xtraiter2514, 0
  br i1 %lcmp.mod2516.not, label %._crit_edge1834, label %.lr.ph1833.epil.preheader

.lr.ph1833.epil.preheader:                        ; preds = %._crit_edge1834.loopexit.unr-lcssa, %.lr.ph1833.preheader
  %indvars.iv1947.epil.init = phi i64 [ 1, %.lr.ph1833.preheader ], [ %indvars.iv.next1948.1, %._crit_edge1834.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01370.11830.epil.init = phi <2 x float> [ %i.blo, %.lr.ph1833.preheader ], [ %i.bmx, %._crit_edge1834.loopexit.unr-lcssa ]
  %.sroa.23.11829.epil.init = phi float [ %i.blp, %.lr.ph1833.preheader ], [ %i.bmy, %._crit_edge1834.loopexit.unr-lcssa ]
  %lcmp.mod2519 = trunc i32 %i.bgu to i1
  call void @llvm.assume(i1 %lcmp.mod2519)
  %i.bmz = call noundef float @cosf(float noundef %i.bli) #20
  %i.bna = fmul float %i.bmz, 2.000000e+00
  %i.bnb = fadd float %i.bna, -2.000000e+00
  %i.bnc = trunc nuw nsw i64 %indvars.iv1947.epil.init to i32
  %i.bnd = uitofp nneg i32 %i.bnc to float
  %i.bne = fmul float %i.bli, %i.bnd
  %i.bnf = call noundef float @sinf(float noundef %i.bne) #20
  %i.bng = fmul float %i.bnf, %i.bnb              ; 2 uses
  %i.bnh = getelementptr inbounds nuw [12 x i8], ptr %.sroa.01416.2, i64 %indvars.iv1947.epil.init ; 2 uses
  %.sroa.041.0.copyload.epil = load <2 x float>, ptr %i.bnh, align 4
  %.sroa.242.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.bnh, i64 8
  %.sroa.242.0.copyload.epil = load float, ptr %.sroa.242.0..sroa_idx.epil, align 4, !tbaa !164
  %i.bni = fmul float %i.bng, %.sroa.242.0.copyload.epil
  %i.bnj = insertelement <2 x float> poison, float %i.bng, i64 0
  %i.bnk = shufflevector <2 x float> %i.bnj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bnl = fmul <2 x float> %i.bnk, %.sroa.041.0.copyload.epil
  %i.bnm = fadd <2 x float> %.sroa.01370.11830.epil.init, %i.bnl
  %i.bnn = fadd float %.sroa.23.11829.epil.init, %i.bni
  br label %._crit_edge1834

._crit_edge1834:                                  ; preds = %.lr.ph1833.epil.preheader, %._crit_edge1834.loopexit.unr-lcssa, %bb.il
  %.sroa.23.1.lcssa = phi float [ %i.blp, %bb.il ], [ %i.bmy, %._crit_edge1834.loopexit.unr-lcssa ], [ %i.bnn, %.lr.ph1833.epil.preheader ]
  %.sroa.01370.1.lcssa = phi <2 x float> [ %i.blo, %bb.il ], [ %i.bmx, %._crit_edge1834.loopexit.unr-lcssa ], [ %i.bnm, %.lr.ph1833.epil.preheader ]
  %i.bno = fneg <2 x float> %.sroa.01370.1.lcssa
  %i.bnp = fneg float %.sroa.23.1.lcssa
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.ig
  %lcmp.mod2506.not = icmp eq i64 %xtraiter2504, 0
  br i1 %lcmp.mod2506.not, label %.loopexit, label %.epil.preheader2503

.epil.preheader2503:                              ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph1824
  %indvars.iv1943.epil.init = phi i64 [ 0, %.lr.ph1824 ], [ %indvars.iv.next1944.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01370.01822.epil.init = phi <2 x float> [ zeroinitializer, %.lr.ph1824 ], [ %i.bjp, %.loopexit.loopexit.unr-lcssa ]
  %.sroa.23.01821.epil.init = phi float [ 0.000000e+00, %.lr.ph1824 ], [ %i.bjq, %.loopexit.loopexit.unr-lcssa ]
  %.sroa.01400.01820.epil.init = phi <2 x float> [ zeroinitializer, %.lr.ph1824 ], [ %i.bji, %.loopexit.loopexit.unr-lcssa ]
  %.sroa.11.01819.epil.init = phi float [ 0.000000e+00, %.lr.ph1824 ], [ %i.bjj, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod2511 = trunc i32 %i.bgu to i1
  call void @llvm.assume(i1 %lcmp.mod2511)
  %i.bnq = trunc nuw nsw i64 %indvars.iv1943.epil.init to i32
  %i.bnr = uitofp nneg i32 %i.bnq to float
  %i.bns = fmul nnan float %i.bnr, f0x40C90FDB
  %i.bnt = fdiv float %i.bns, %i.bid              ; 2 uses
  %i.bnu = call noundef float @cosf(float noundef %i.bnt) #20 ; 2 uses
  %i.bnv = getelementptr inbounds nuw [12 x i8], ptr %.sroa.01416.2, i64 %indvars.iv1943.epil.init ; 2 uses
  %.sroa.0223.0.copyload.epil = load <2 x float>, ptr %i.bnv, align 4 ; 2 uses
  %.sroa.2224.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.bnv, i64 8 ; 2 uses
  %.sroa.2224.0.copyload.epil = load float, ptr %.sroa.2224.0..sroa_idx.epil, align 4
  %i.bnw = fmul float %i.bnu, %.sroa.2224.0.copyload.epil
  %i.bnx = insertelement <2 x float> poison, float %i.bnu, i64 0
  %i.bny = shufflevector <2 x float> %i.bnx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bnz = fmul <2 x float> %i.bny, %.sroa.0223.0.copyload.epil
  %i.boa = fadd <2 x float> %.sroa.01400.01820.epil.init, %i.bnz
  %i.bob = fadd float %.sroa.11.01819.epil.init, %i.bnw
  %i.boc = call noundef float @sinf(float noundef %i.bnt) #20 ; 2 uses
  %.sroa.2208.0.copyload.epil = load float, ptr %.sroa.2224.0..sroa_idx.epil, align 4
  %i.bod = fmul float %i.boc, %.sroa.2208.0.copyload.epil
  %i.boe = insertelement <2 x float> poison, float %i.boc, i64 0
  %i.bof = shufflevector <2 x float> %i.boe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bog = fmul <2 x float> %.sroa.0223.0.copyload.epil, %i.bof
  %i.boh = fadd <2 x float> %.sroa.01370.01822.epil.init, %i.bog
  %i.boi = fadd float %.sroa.23.01821.epil.init, %i.bod
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader2503, %.loopexit.loopexit.unr-lcssa, %.preheader1604, %bb.ii, %bb.ik, %._crit_edge1834, %bb.ij
  %.sroa.11.1 = phi float [ %i.bjy, %._crit_edge1834 ], [ %i.bjy, %bb.ii ], [ %i.bjy, %bb.ij ], [ %i.bjy, %bb.ik ], [ 0.000000e+00, %.preheader1604 ], [ %i.bjj, %.loopexit.loopexit.unr-lcssa ], [ %i.bob, %.epil.preheader2503 ] ; 3 uses
  %.sroa.01400.1 = phi <2 x float> [ %i.bjv, %._crit_edge1834 ], [ %i.bjv, %bb.ii ], [ %i.bjv, %bb.ij ], [ %i.bjv, %bb.ik ], [ zeroinitializer, %.preheader1604 ], [ %i.bji, %.loopexit.loopexit.unr-lcssa ], [ %i.boa, %.epil.preheader2503 ] ; 2 uses
  %.sroa.23.2 = phi float [ %i.bnp, %._crit_edge1834 ], [ %i.bkf, %bb.ii ], [ %i.bkl, %bb.ij ], [ %i.blg, %bb.ik ], [ 0.000000e+00, %.preheader1604 ], [ %i.bjq, %.loopexit.loopexit.unr-lcssa ], [ %i.boi, %.epil.preheader2503 ] ; 3 uses
  %.sroa.01370.2 = phi <2 x float> [ %i.bno, %._crit_edge1834 ], [ %i.bke, %bb.ii ], [ %i.bki, %bb.ij ], [ %i.blf, %bb.ik ], [ zeroinitializer, %.preheader1604 ], [ %i.bjp, %.loopexit.loopexit.unr-lcssa ], [ %i.boh, %.epil.preheader2503 ] ; 2 uses
  %.sroa.011.4.vec.extract.i = extractelement <2 x float> %.sroa.01400.1, i64 1 ; 3 uses
  %.sroa.03.4.vec.extract.i1125 = extractelement <2 x float> %.sroa.01370.2, i64 1 ; 3 uses
  %i.boj = fmul float %.sroa.11.1, %.sroa.03.4.vec.extract.i1125 ; 2 uses
  %i.bok = fneg float %i.boj
  %i.bol = call noundef float @llvm.fma.f32(float %.sroa.011.4.vec.extract.i, float %.sroa.23.2, float %i.bok)
  %i.bom = fneg float %.sroa.11.1
  %i.bon = call noundef float @llvm.fma.f32(float %i.bom, float %.sroa.03.4.vec.extract.i1125, float %i.boj)
  %i.boo = fadd float %i.bol, %i.bon              ; 2 uses
  %.sroa.03.0.vec.extract.i1126 = extractelement <2 x float> %.sroa.01370.2, i64 0 ; 3 uses
  %.sroa.011.0.vec.extract.i = extractelement <2 x float> %.sroa.01400.1, i64 0 ; 3 uses
  %i.bop = fmul float %.sroa.011.0.vec.extract.i, %.sroa.23.2 ; 2 uses
  %i.boq = fneg float %i.bop
  %i.bor = call noundef float @llvm.fma.f32(float %.sroa.11.1, float %.sroa.03.0.vec.extract.i1126, float %i.boq)
  %i.bos = fneg float %.sroa.011.0.vec.extract.i
  %i.bot = call noundef float @llvm.fma.f32(float %i.bos, float %.sroa.23.2, float %i.bop)
  %i.bou = fadd float %i.bot, %i.bor              ; 2 uses
  %i.bov = fmul float %.sroa.011.4.vec.extract.i, %.sroa.03.0.vec.extract.i1126 ; 2 uses
  %i.bow = fneg float %i.bov
  %i.box = call noundef float @llvm.fma.f32(float %.sroa.011.0.vec.extract.i, float %.sroa.03.4.vec.extract.i1125, float %i.bow)
  %i.boy = fneg float %.sroa.011.4.vec.extract.i
  %i.boz = call noundef float @llvm.fma.f32(float %i.boy, float %.sroa.03.0.vec.extract.i1126, float %i.bov)
  %i.bpa = fadd float %i.box, %i.boz              ; 2 uses
  %i.bpb = load ptr, ptr %i.bgc, align 8, !tbaa !72 ; 7 uses
  %i.bpc = load ptr, ptr %i.bfw, align 8, !tbaa !73
  %.not.i.i1133 = icmp eq ptr %i.bpb, %i.bpc
  br i1 %.not.i.i1133, label %bb.in, label %bb.im

bb.im:                                            ; preds = %.loopexit
  store float %i.boo, ptr %i.bpb, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bpb, i64 4
  store float %i.bou, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bpb, i64 8
  store float %i.bpa, ptr %.sroa.7.0..sroa_idx, align 4
  %i.bpd = load ptr, ptr %i.bgc, align 8, !tbaa !72
  %i.bpe = getelementptr inbounds nuw i8, ptr %i.bpd, i64 12
  store ptr %i.bpe, ptr %i.bgc, align 8, !tbaa !72
  br label %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EE9push_backEOS2_.exit

bb.in:                                            ; preds = %.loopexit
  %i.bpf = load ptr, ptr %22, align 8, !tbaa !71  ; 5 uses
  %i.bpg = ptrtoint ptr %i.bpb to i64
  %i.bph = ptrtoint ptr %i.bpf to i64             ; 2 uses
  %i.bpi = sub i64 %i.bpg, %i.bph                 ; 3 uses
  %i.bpj = icmp eq i64 %i.bpi, 9223372036854775800
  br i1 %i.bpj, label %bb.io, label %_ZNKSt6vectorIN4pbrt7Normal3IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.io:                                            ; preds = %bb.in
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #18
          to label %.noexc1138 unwind label %.loopexit.split-lp1607

.noexc1138:                                       ; preds = %bb.io
  unreachable

_ZNKSt6vectorIN4pbrt7Normal3IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.in
  %i.bpk = sdiv exact i64 %i.bpi, 12              ; 3 uses
  %.sroa.speculated.i.i.i.i1134 = call i64 @llvm.umax.i64(i64 %i.bpk, i64 1)
  %i.bpl = add nsw i64 %.sroa.speculated.i.i.i.i1134, %i.bpk ; 2 uses
  %i.bpm = icmp ult i64 %i.bpl, %i.bpk
  %i.bpn = call i64 @llvm.umin.i64(i64 %i.bpl, i64 768614336404564650)
  %i.bpo = select i1 %i.bpm, i64 768614336404564650, i64 %i.bpn ; 3 uses
  %.not.i.i.i.i1135 = icmp ne i64 %i.bpo, 0
  call void @llvm.assume(i1 %.not.i.i.i.i1135)
  %i.bpp = mul nuw nsw i64 %i.bpo, 12
  %i.bpq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bpp) #17
          to label %.noexc1139 unwind label %.loopexit1606 ; 5 uses

.noexc1139:                                       ; preds = %_ZNKSt6vectorIN4pbrt7Normal3IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bpr = getelementptr inbounds nuw i8, ptr %i.bpq, i64 %i.bpi ; 3 uses
  store float %i.boo, ptr %i.bpr, align 4
  %.sroa.6.0..sroa_idx1342 = getelementptr inbounds nuw i8, ptr %i.bpr, i64 4
  store float %i.bou, ptr %.sroa.6.0..sroa_idx1342, align 4
  %.sroa.7.0..sroa_idx1344 = getelementptr inbounds nuw i8, ptr %i.bpr, i64 8
  store float %i.bpa, ptr %.sroa.7.0..sroa_idx1344, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bpf, %i.bpb
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i1136

.lr.ph.i.i.i.i.i.i1136:                           ; preds = %.noexc1139, %.lr.ph.i.i.i.i.i.i1136
  %.012.i.i.i.i.i.i = phi ptr [ %i.bpt, %.lr.ph.i.i.i.i.i.i1136 ], [ %i.bpq, %.noexc1139 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bps, %.lr.ph.i.i.i.i.i.i1136 ], [ %i.bpf, %.noexc1139 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i.i, i64 12, i1 false), !alias.scope !171
  %i.bps = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.bpt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i1137 = icmp eq ptr %i.bps, %i.bpb
  br i1 %.not.i.i.i.i.i.i1137, label %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i1136, !llvm.loop !129

_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i1136, %.noexc1139
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bpq, %.noexc1139 ], [ %i.bpt, %.lr.ph.i.i.i.i.i.i1136 ]
  %i.bpu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 12
  %.not.i23.i.i.i = icmp eq ptr %i.bpf, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.ip

bb.ip:                                            ; preds = %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  %i.bpv = load ptr, ptr %i.bfw, align 8, !tbaa !73
  %i.bpw = ptrtoint ptr %i.bpv to i64
  %i.bpx = sub i64 %i.bpw, %i.bph
  call void @_ZdlPvm(ptr noundef nonnull %i.bpf, i64 noundef %i.bpx) #19
  br label %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.ip, %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.bpq, ptr %22, align 8, !tbaa !71
  store ptr %i.bpu, ptr %i.bgc, align 8, !tbaa !72
  %i.bpy = getelementptr inbounds nuw [12 x i8], ptr %i.bpq, i64 %i.bpo
  store ptr %i.bpy, ptr %i.bfw, align 8, !tbaa !73
  br label %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.im
  %i.bpz = getelementptr inbounds nuw i8, ptr %.sroa.01409.01841, i64 8 ; 2 uses
  %.not1593 = icmp eq ptr %i.bpz, %i.bgb
  br i1 %.not1593, label %._crit_edge1843, label %bb.hx

.loopexit1606:                                    ; preds = %_ZNKSt6vectorIN4pbrt7Normal3IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit1608 = landingpad { ptr, i32 }
          cleanup
  br label %bb.kh

.loopexit.split-lp1607:                           ; preds = %bb.io
  %lpad.loopexit.split-lp1609 = landingpad { ptr, i32 }
          cleanup
  br label %bb.kh

_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, %.noexc992
  %29 = phi ptr [ %i.bgm, %.noexc992 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.0.i.i.i.i.i990 = phi ptr [ %28, %.noexc992 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.bqa = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr %.0.i.i.i.i.i990, ptr %i.bqa, align 8, !tbaa !78
  %i.bqb = load ptr, ptr %i.lx, align 8, !tbaa !53 ; 2 uses
  %i.bqc = load ptr, ptr %16, align 8, !tbaa !52  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  %i.bqd = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 18 uses
  store i32 0, ptr %i.bqd, align 8, !tbaa !151
  %i.bqe = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 5 uses
  store ptr null, ptr %i.bqe, align 8, !tbaa !28
  %i.bqf = getelementptr inbounds nuw i8, ptr %24, i64 24
  store ptr %i.bqd, ptr %i.bqf, align 8, !tbaa !29
  %i.bqg = getelementptr inbounds nuw i8, ptr %24, i64 32
  store ptr %i.bqd, ptr %i.bqg, align 8, !tbaa !152
  %i.bqh = getelementptr inbounds nuw i8, ptr %24, i64 40 ; 7 uses
  store i64 0, ptr %i.bqh, align 8, !tbaa !30
  %.not1861 = icmp eq ptr %i.bqb, %i.bqc
  br i1 %.not1861, label %.preheader1603, label %.lr.ph1848.preheader

.lr.ph1848.preheader:                             ; preds = %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i
  %i.bqi = ptrtoint ptr %i.bqb to i64
  %i.bqj = ptrtoint ptr %i.bqc to i64
  %i.bqk = sub i64 %i.bqi, %i.bqj
  %i.bql = ashr exact i64 %i.bqk, 3
  br label %.lr.ph1848

.preheader1603:                                   ; preds = %bb.ir, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i
  br i1 %.not.i.i.i.i989, label %._crit_edge1853, label %.preheader

bb.iq:                                            ; preds = %bb.hu, %bb.ht
  %i.bqm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit1183

.lr.ph1848:                                       ; preds = %.lr.ph1848.preheader, %bb.ir
  %.05361846 = phi i64 [ %i.bqr, %bb.ir ], [ 0, %.lr.ph1848.preheader ] ; 3 uses
  %i.bqn = load ptr, ptr %16, align 8, !tbaa !52
  %i.bqo = getelementptr inbounds nuw [8 x i8], ptr %i.bqn, i64 %.05361846
  %i.bqp = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIPN4pbrt8SDVertexEiSt4lessIS2_ESaISt4pairIKS2_iEEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %24, ptr noundef nonnull align 8 dereferenceable(8) %i.bqo)
          to label %bb.ir unwind label %bb.is

bb.ir:                                            ; preds = %.lr.ph1848
  %i.bqq = trunc i64 %.05361846 to i32
  store i32 %i.bqq, ptr %i.bqp, align 4, !tbaa !31
  %i.bqr = add nuw i64 %.05361846, 1              ; 2 uses
  %exitcond1952.not = icmp eq i64 %i.bqr, %i.bql
  br i1 %exitcond1952.not, label %.preheader1603, label %.lr.ph1848, !llvm.loop !140

bb.is:                                            ; preds = %.lr.ph1848
  %i.bqs = landingpad { ptr, i32 }
          cleanup
  br label %.body1154

.preheader:                                       ; preds = %.preheader1603, %bb.jn
  %.05351852 = phi i64 [ %i.buk, %bb.jn ], [ 0, %.preheader1603 ] ; 4 uses
  %.05371851 = phi ptr [ %i.buj, %bb.jn ], [ %29, %.preheader1603 ] ; 4 uses
  %i.bqt = load ptr, ptr %15, align 8, !tbaa !45
  %i.bqu = getelementptr inbounds nuw [8 x i8], ptr %i.bqt, i64 %.05351852
  %i.bqv = load ptr, ptr %i.bqu, align 8, !tbaa !23 ; 2 uses
  %i.bqw = load ptr, ptr %i.bqe, align 8, !tbaa !28 ; 2 uses
  %.not10.i.i.i.i1142 = icmp eq ptr %i.bqw, null
  br i1 %.not10.i.i.i.i1142, label %.critedge.i1151, label %.lr.ph.i.i.i.i1143

._crit_edge1853:                                  ; preds = %bb.jn, %.preheader1603
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %26, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %27, i8 0, i64 24, i1 false)
  %i.bqx = load ptr, ptr %12, align 8, !tbaa !173 ; 2 uses
  %i.bqy = load ptr, ptr %i.bqx, align 8, !tbaa !55
  %i.bqz = getelementptr inbounds nuw i8, ptr %i.bqy, i64 16
  %i.bra = load ptr, ptr %i.bqz, align 8
  %i.brb = invoke noundef ptr %i.bra(ptr noundef nonnull align 8 dereferenceable(8) %i.bqx, i64 noundef 64, i64 noundef 8)
          to label %.noexc1140 unwind label %bb.kc, !inline_history !141 ; 2 uses

.noexc1140:                                       ; preds = %._crit_edge1853
  invoke void @_ZN4pstd3pmr21polymorphic_allocatorISt4byteE9constructIN4pbrt12TriangleMeshEJRKNS5_9TransformERbRSt6vectorIiSaIiEERSB_INS5_6Point3IfEESaISG_EESB_INS5_7Vector3IfEESaISL_EERSB_INS5_7Normal3IfEESaISP_EESB_INS5_6Point2IfEESaISU_EESD_RS3_EEEvPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %i.brb, ptr noundef nonnull align 4 dereferenceable(128) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectIN4pbrt12TriangleMeshEJRKNS5_9TransformERbRSt6vectorIiSaIiEERSB_INS5_6Point3IfEESaISG_EESB_INS5_7Vector3IfEESaISL_EERSB_INS5_7Normal3IfEESaISP_EESB_INS5_6Point2IfEESaISU_EESD_RS3_EEEPT_DpOT0_.exit unwind label %bb.kc

.lr.ph.i.i.i.i1143:                               ; preds = %.preheader
  %i.brc = load ptr, ptr %i.bqv, align 8, !tbaa !20 ; 2 uses
  br label %bb.it

bb.it:                                            ; preds = %bb.it, %.lr.ph.i.i.i.i1143
  %.012.i.i.i.i1144 = phi ptr [ %i.bqw, %.lr.ph.i.i.i.i1143 ], [ %.1.i.i.i.i1149, %bb.it ] ; 4 uses
  %.0811.i.i.i.i1145 = phi ptr [ %i.bqd, %.lr.ph.i.i.i.i1143 ], [ %.19.i.i.i.i1146, %bb.it ] ; 2 uses
  %i.brd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1144, i64 32
  %i.bre = load ptr, ptr %i.brd, align 8, !tbaa !20
  %i.brf = icmp ult ptr %i.bre, %i.brc            ; 3 uses
  %.19.i.i.i.i1146 = select i1 %i.brf, ptr %.0811.i.i.i.i1145, ptr %.012.i.i.i.i1144 ; 5 uses
  %.1.in.v.i.i.i.i1147 = select i1 %i.brf, i64 24, i64 16
  %.1.in.i.i.i.i1148 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1144, i64 %.1.in.v.i.i.i.i1147
  %.1.i.i.i.i1149 = load ptr, ptr %.1.in.i.i.i.i1148, align 8, !tbaa !37 ; 2 uses
  %.not.i.i.i.i1150 = icmp eq ptr %.1.i.i.i.i1149, null
  br i1 %.not.i.i.i.i1150, label %_ZNSt3mapIPN4pbrt8SDVertexEiSt4lessIS2_ESaISt4pairIKS2_iEEE11lower_boundERS6_.exit.i, label %bb.it, !llvm.loop !4

_ZNSt3mapIPN4pbrt8SDVertexEiSt4lessIS2_ESaISt4pairIKS2_iEEE11lower_boundERS6_.exit.i: ; preds = %bb.it
  %i.brg = icmp eq ptr %.19.i.i.i.i1146, %i.bqd
  br i1 %i.brg, label %.critedge.i1151, label %bb.iu

bb.iu:                                            ; preds = %_ZNSt3mapIPN4pbrt8SDVertexEiSt4lessIS2_ESaISt4pairIKS2_iEEE11lower_boundERS6_.exit.i
  %.19.i.i.i.i1146.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.brf, ptr %.0811.i.i.i.i1145, ptr %.012.i.i.i.i1144
  %.19.i.i.i.i1146.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i1146.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.brh = load ptr, ptr %.19.i.i.i.i1146.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !80
  %i.bri = icmp ult ptr %i.brc, %i.brh
  br i1 %i.bri, label %.critedge.i1151, label %bb.iz

.critedge.i1151:                                  ; preds = %bb.iu, %_ZNSt3mapIPN4pbrt8SDVertexEiSt4lessIS2_ESaISt4pairIKS2_iEEE11lower_boundERS6_.exit.i, %.preheader
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i1146, %bb.iu ], [ %.19.i.i.i.i1146, %_ZNSt3mapIPN4pbrt8SDVertexEiSt4lessIS2_ESaISt4pairIKS2_iEEE11lower_boundERS6_.exit.i ], [ %i.bqd, %.preheader ]
  %i.brj = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #17
          to label %.noexc1153 unwind label %bb.jo ; 6 uses

.noexc1153:                                       ; preds = %.critedge.i1151
  %i.brk = getelementptr inbounds nuw i8, ptr %i.brj, i64 32 ; 3 uses
  %i.brl = load ptr, ptr %i.bqv, align 8, !tbaa !20
  store ptr %i.brl, ptr %i.brk, align 8, !tbaa !80
  %i.brm = getelementptr inbounds nuw i8, ptr %i.brj, i64 40
  store i32 0, ptr %i.brm, align 8, !tbaa !81
  %i.brn = invoke { ptr, ptr } @_ZNSt8_Rb_treeIPN4pbrt8SDVertexESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %24, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(8) %i.brk)
          to label %bb.iv unwind label %_ZNSt8_Rb_treeIPN4pbrt8SDVertexESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit.i.i ; 2 uses

bb.iv:                                            ; preds = %.noexc1153
  %i.bro = extractvalue { ptr, ptr } %i.brn, 0    ; 2 uses
  %i.brp = extractvalue { ptr, ptr } %i.brn, 1    ; 4 uses
  %.not.i.i1152 = icmp eq ptr %i.brp, null
  br i1 %.not.i.i1152, label %bb.iy, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %.not.i.i.i4.i = icmp ne ptr %i.bro, null
  %i.brq = icmp eq ptr %i.brp, %i.bqd
  %or.cond.i.i.i.i = or i1 %.not.i.i.i4.i, %i.brq
  br i1 %or.cond.i.i.i.i, label %.thread.i.i, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.brr = load ptr, ptr %i.brk, align 8, !tbaa !20
  %i.brs = getelementptr inbounds nuw i8, ptr %i.brp, i64 32
  %i.brt = load ptr, ptr %i.brs, align 8, !tbaa !20
  %i.bru = icmp ult ptr %i.brr, %i.brt
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.ix, %bb.iw
  %i.brv = phi i1 [ %i.bru, %bb.ix ], [ true, %bb.iw ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.brv, ptr noundef nonnull %i.brj, ptr noundef nonnull %i.brp, ptr noundef nonnull align 8 dereferenceable(32) %i.bqd) #20
  %i.brw = load i64, ptr %i.bqh, align 8, !tbaa !30
  %i.brx = add i64 %i.brw, 1
  store i64 %i.brx, ptr %i.bqh, align 8, !tbaa !30
  br label %bb.iz

_ZNSt8_Rb_treeIPN4pbrt8SDVertexESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit.i.i: ; preds = %.noexc1153.2, %.noexc1153.1, %.noexc1153
  %.lcssa1864 = phi ptr [ %i.brj, %.noexc1153 ], [ %i.bso, %.noexc1153.1 ], [ %i.bts, %.noexc1153.2 ]
  %i.bry = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa1864, i64 noundef 48) #19
  br label %.body1154

bb.iy:                                            ; preds = %bb.iv
  call void @_ZdlPvm(ptr noundef nonnull %i.brj, i64 noundef 48) #19
  br label %bb.iz

bb.iz:                                            ; preds = %bb.iy, %.thread.i.i, %bb.iu
  %.sroa.09.0.i = phi ptr [ %.19.i.i.i.i1146, %bb.iu ], [ %i.brj, %.thread.i.i ], [ %i.bro, %bb.iy ]
  %i.brz = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i, i64 40
  %i.bsa = load i32, ptr %i.brz, align 4, !tbaa !31
  store i32 %i.bsa, ptr %.05371851, align 4, !tbaa !31
  %i.bsb = getelementptr inbounds nuw i8, ptr %.05371851, i64 4
  %i.bsc = load ptr, ptr %15, align 8, !tbaa !45
  %i.bsd = getelementptr inbounds nuw [8 x i8], ptr %i.bsc, i64 %.05351852
  %i.bse = load ptr, ptr %i.bsd, align 8, !tbaa !23
  %i.bsf = getelementptr inbounds nuw i8, ptr %i.bse, i64 8 ; 2 uses
  %i.bsg = load ptr, ptr %i.bqe, align 8, !tbaa !28 ; 2 uses
  %.not10.i.i.i.i1142.1 = icmp eq ptr %i.bsg, null
  br i1 %.not10.i.i.i.i1142.1, label %.critedge.i1151.1, label %.lr.ph.i.i.i.i1143.1

.lr.ph.i.i.i.i1143.1:                             ; preds = %bb.iz
  %i.bsh = load ptr, ptr %i.bsf, align 8, !tbaa !20 ; 2 uses
  br label %bb.ja

bb.ja:                                            ; preds = %bb.ja, %.lr.ph.i.i.i.i1143.1
  %.012.i.i.i.i1144.1 = phi ptr [ %i.bsg, %.lr.ph.i.i.i.i1143.1 ], [ %.1.i.i.i.i1149.1, %bb.ja ] ; 4 uses
  %.0811.i.i.i.i1145.1 = phi ptr [ %i.bqd, %.lr.ph.i.i.i.i1143.1 ], [ %.19.i.i.i.i1146.1, %bb.ja ] ; 2 uses
  %i.bsi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1144.1, i64 32
  %i.bsj = load ptr, ptr %i.bsi, align 8, !tbaa !20
  %i.bsk = icmp ult ptr %i.bsj, %i.bsh            ; 3 uses
  %.19.i.i.i.i1146.1 = select i1 %i.bsk, ptr %.0811.i.i.i.i1145.1, ptr %.012.i.i.i.i1144.1 ; 5 uses
  %.1.in.v.i.i.i.i1147.1 = select i1 %i.bsk, i64 24, i64 16
  %.1.in.i.i.i.i1148.1 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1144.1, i64 %.1.in.v.i.i.i.i1147.1
  %.1.i.i.i.i1149.1 = load ptr, ptr %.1.in.i.i.i.i1148.1, align 8, !tbaa !37 ; 2 uses
  %.not.i.i.i.i1150.1 = icmp eq ptr %.1.i.i.i.i1149.1, null
  br i1 %.not.i.i.i.i1150.1, label %_ZNSt3mapIPN4pbrt8SDVertexEiSt4lessIS2_ESaISt4pairIKS2_iEEE11lower_boundERS6_.exit.i.1, label %bb.ja, !llvm.loop !4

_ZNSt3mapIPN4pbrt8SDVertexEiSt4lessIS2_ESaISt4pairIKS2_iEEE11lower_boundERS6_.exit.i.1: ; preds = %bb.ja
  %i.bsl = icmp eq ptr %.19.i.i.i.i1146.1, %i.bqd
  br i1 %i.bsl, label %.critedge.i1151.1, label %bb.jb

bb.jb:                                            ; preds = %_ZNSt3mapIPN4pbrt8SDVertexEiSt4lessIS2_ESaISt4pairIKS2_iEEE11lower_boundERS6_.exit.i.1
  %.19.i.i.i.i1146.sroa.sel.v.1.sroa.sel.v.sroa.sel.v = select i1 %i.bsk, ptr %.0811.i.i.i.i1145.1, ptr %.012.i.i.i.i1144.1
  %.19.i.i.i.i1146.sroa.sel.v.1.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i1146.sroa.sel.v.1.sroa.sel.v.sroa.sel.v, i64 32
  %i.bsm = load ptr, ptr %.19.i.i.i.i1146.sroa.sel.v.1.sroa.sel.v.sroa.sel, align 8, !tbaa !80
  %i.bsn = icmp ult ptr %i.bsh, %i.bsm
  br i1 %i.bsn, label %.critedge.i1151.1, label %bb.jg

.critedge.i1151.1:                                ; preds = %bb.jb, %_ZNSt3mapIPN4pbrt8SDVertexEiSt4lessIS2_ESaISt4pairIKS2_iEEE11lower_boundERS6_.exit.i.1, %bb.iz
  %.08.lcssa.i.i.i14.i.1 = phi ptr [ %.19.i.i.i.i1146.1, %bb.jb ], [ %.19.i.i.i.i1146.1, %_ZNSt3mapIPN4pbrt8SDVertexEiSt4lessIS2_ESaISt4pairIKS2_iEEE11lower_boundERS6_.exit.i.1 ], [ %i.bqd, %bb.iz ]
  %i.bso = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #17
          to label %.noexc1153.1 unwind label %bb.jo ; 6 uses

.noexc1153.1:                                     ; preds = %.critedge.i1151.1
  %i.bsp = getelementptr inbounds nuw i8, ptr %i.bso, i64 32 ; 3 uses
  %i.bsq = load ptr, ptr %i.bsf, align 8, !tbaa !20
  store ptr %i.bsq, ptr %i.bsp, align 8, !tbaa !80
  %i.bsr = getelementptr inbounds nuw i8, ptr %i.bso, i64 40
  store i32 0, ptr %i.bsr, align 8, !tbaa !81
  %i.bss = invoke { ptr, ptr } @_ZNSt8_Rb_treeIPN4pbrt8SDVertexESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %24, ptr %.08.lcssa.i.i.i14.i.1, ptr noundef nonnull align 8 dereferenceable(8) %i.bsp)
          to label %bb.jc unwind label %_ZNSt8_Rb_treeIPN4pbrt8SDVertexESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit.i.i ; 2 uses

bb.jc:                                            ; preds = %.noexc1153.1
  %i.bst = extractvalue { ptr, ptr } %i.bss, 0    ; 2 uses
  %i.bsu = extractvalue { ptr, ptr } %i.bss, 1    ; 4 uses
  %.not.i.i1152.1 = icmp eq ptr %i.bsu, null
  br i1 %.not.i.i1152.1, label %bb.jf, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %.not.i.i.i4.i.1 = icmp ne ptr %i.bst, null
  %i.bsv = icmp eq ptr %i.bsu, %i.bqd
  %or.cond.i.i.i.i.1 = or i1 %.not.i.i.i4.i.1, %i.bsv
  br i1 %or.cond.i.i.i.i.1, label %.thread.i.i.1, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.bsw = load ptr, ptr %i.bsp, align 8, !tbaa !20
  %i.bsx = getelementptr inbounds nuw i8, ptr %i.bsu, i64 32
  %i.bsy = load ptr, ptr %i.bsx, align 8, !tbaa !20
  %i.bsz = icmp ult ptr %i.bsw, %i.bsy
  br label %.thread.i.i.1

.thread.i.i.1:                                    ; preds = %bb.je, %bb.jd
  %i.bta = phi i1 [ %i.bsz, %bb.je ], [ true, %bb.jd ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bta, ptr noundef nonnull %i.bso, ptr noundef nonnull %i.bsu, ptr noundef nonnull align 8 dereferenceable(32) %i.bqd) #20
  %i.btb = load i64, ptr %i.bqh, align 8, !tbaa !30
  %i.btc = add i64 %i.btb, 1
  store i64 %i.btc, ptr %i.bqh, align 8, !tbaa !30
  br label %bb.jg

bb.jf:                                            ; preds = %bb.jc
  call void @_ZdlPvm(ptr noundef nonnull %i.bso, i64 noundef 48) #19
  br label %bb.jg

bb.jg:                                            ; preds = %bb.jf, %.thread.i.i.1, %bb.jb
  %.sroa.09.0.i.1 = phi ptr [ %.19.i.i.i.i1146.1, %bb.jb ], [ %i.bso, %.thread.i.i.1 ], [ %i.bst, %bb.jf ]
  %i.btd = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.1, i64 40
  %i.bte = load i32, ptr %i.btd, align 4, !tbaa !31
  store i32 %i.bte, ptr %i.bsb, align 4, !tbaa !31
  %i.btf = getelementptr inbounds nuw i8, ptr %.05371851, i64 8
  %i.btg = load ptr, ptr %15, align 8, !tbaa !45
  %i.bth = getelementptr inbounds nuw [8 x i8], ptr %i.btg, i64 %.05351852
end_hunk_1
