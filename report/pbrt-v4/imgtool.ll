Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/imgtool?download=true
inline.NumInlined: 9676
inline.NumDeleted: 2116
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 158
loop-unroll.NumUnrolled: 216
begin_hunk_0_@_Z4diffSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE:._crit_edge.i.i
  %cmp.n1692 = icmp eq i64 %wide.trip.count.i617, %n.vec1682
  br i1 %cmp.n1692, label %_ZNK4pbrt5Image15AllChannelsDescEv.exit624, label %vec.epilog.scalar.ph1678.preheader

vec.epilog.scalar.ph1678.preheader:               ; preds = %iter.check1677, %vec.epilog.iter.check1679, %vec.epilog.middle.block1691
  %indvars.iv.i618.ph = phi i64 [ 0, %iter.check1677 ], [ %n.vec1665, %vec.epilog.iter.check1679 ], [ %n.vec1682, %vec.epilog.middle.block1691 ]
  br label %vec.epilog.scalar.ph1678

bb.fc:                                            ; preds = %bb.fb
  %i.aeu = landingpad { ptr, i32 }
          cleanup
  br label %.body622

vec.epilog.scalar.ph1678:                         ; preds = %vec.epilog.scalar.ph1678.preheader, %vec.epilog.scalar.ph1678
  %indvars.iv.i618 = phi i64 [ %indvars.iv.next.i619, %vec.epilog.scalar.ph1678 ], [ %indvars.iv.i618.ph, %vec.epilog.scalar.ph1678.preheader ] ; 3 uses
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr %i.aek, i64 %indvars.iv.i618
  %i.aew = trunc nuw nsw i64 %indvars.iv.i618 to i32
  store i32 %i.aew, ptr %i.aev, align 4, !tbaa !67
  %indvars.iv.next.i619 = add nuw nsw i64 %indvars.iv.i618, 1 ; 2 uses
  %exitcond.not.i620 = icmp eq i64 %indvars.iv.next.i619, %wide.trip.count.i617
  br i1 %exitcond.not.i620, label %_ZNK4pbrt5Image15AllChannelsDescEv.exit624, label %vec.epilog.scalar.ph1678, !llvm.loop !710

_ZNK4pbrt5Image15AllChannelsDescEv.exit624:       ; preds = %vec.epilog.scalar.ph1678, %middle.block1674, %vec.epilog.middle.block1691, %_ZN4pbrt13InlinedVectorIiLi4EN4pstd3pmr21polymorphic_allocatorIiEEE6resizeEm.exit.i614
  invoke void @_ZNK4pbrt5Image7AverageERKNS_16ImageChannelDescE(ptr dead_on_unwind nonnull writable sret(%"struct.pbrt::ImageChannelValues") align 8 %42, ptr noundef nonnull align 8 dereferenceable(152) %28, ptr noundef nonnull align 8 dereferenceable(48) %43)
          to label %bb.fd unwind label %bb.fv

bb.fd:                                            ; preds = %_ZNK4pbrt5Image15AllChannelsDescEv.exit624
  %i.aex = getelementptr inbounds nuw i8, ptr %42, i64 40 ; 2 uses
  %i.aey = load i64, ptr %i.aex, align 8, !tbaa !193 ; 5 uses
  %.not.i625 = icmp eq i64 %i.aey, 0
  %.phi.trans.insert1412 = getelementptr inbounds nuw i8, ptr %42, i64 8
  %.pre1413 = load ptr, ptr %.phi.trans.insert1412, align 8, !tbaa !192 ; 4 uses
  br i1 %.not.i625, label %.loopexit1213, label %.lr.ph.i626

.lr.ph.i626:                                      ; preds = %bb.fd
  %.not.i.i.i627 = icmp eq ptr %.pre1413, null
  %i.aez = getelementptr inbounds nuw i8, ptr %42, i64 16
  %i.afa = select i1 %.not.i.i.i627, ptr %i.aez, ptr %.pre1413 ; 9 uses
  %xtraiter1837 = and i64 %i.aey, 7               ; 3 uses
  %i.afb = icmp ult i64 %i.aey, 8
  br i1 %i.afb, label %.epil.preheader1836, label %.lr.ph.i626.new

.lr.ph.i626.new:                                  ; preds = %.lr.ph.i626
  %unroll_iter1842 = and i64 %i.aey, -8
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fe, %.lr.ph.i626.new
  %indvars.iv.i628 = phi i64 [ 0, %.lr.ph.i626.new ], [ %indvars.iv.next.i630.7, %bb.fe ] ; 9 uses
  %.057.i629 = phi float [ 0.000000e+00, %.lr.ph.i626.new ], [ %i.agg, %bb.fe ]
  %niter1843 = phi i64 [ 0, %.lr.ph.i626.new ], [ %niter1843.next.7, %bb.fe ]
  %i.afc = getelementptr inbounds nuw [4 x i8], ptr %i.afa, i64 %indvars.iv.i628
  %i.afd = load float, ptr %i.afc, align 4, !tbaa !66
  %i.afe = fadd float %.057.i629, %i.afd
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %i.afa, i64 %indvars.iv.i628
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 4
  %i.afh = load float, ptr %i.afg, align 4, !tbaa !66
  %i.afi = fadd float %i.afe, %i.afh
  %i.afj = getelementptr inbounds nuw [4 x i8], ptr %i.afa, i64 %indvars.iv.i628
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 8
  %i.afl = load float, ptr %i.afk, align 4, !tbaa !66
  %i.afm = fadd float %i.afi, %i.afl
  %i.afn = getelementptr inbounds nuw [4 x i8], ptr %i.afa, i64 %indvars.iv.i628
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afn, i64 12
  %i.afp = load float, ptr %i.afo, align 4, !tbaa !66
  %i.afq = fadd float %i.afm, %i.afp
  %i.afr = getelementptr inbounds nuw [4 x i8], ptr %i.afa, i64 %indvars.iv.i628
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 16
  %i.aft = load float, ptr %i.afs, align 4, !tbaa !66
  %i.afu = fadd float %i.afq, %i.aft
  %i.afv = getelementptr inbounds nuw [4 x i8], ptr %i.afa, i64 %indvars.iv.i628
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afv, i64 20
  %i.afx = load float, ptr %i.afw, align 4, !tbaa !66
  %i.afy = fadd float %i.afu, %i.afx
  %i.afz = getelementptr inbounds nuw [4 x i8], ptr %i.afa, i64 %indvars.iv.i628
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afz, i64 24
  %i.agb = load float, ptr %i.aga, align 4, !tbaa !66
  %i.agc = fadd float %i.afy, %i.agb
  %i.agd = getelementptr inbounds nuw [4 x i8], ptr %i.afa, i64 %indvars.iv.i628
  %i.age = getelementptr inbounds nuw i8, ptr %i.agd, i64 28
  %i.agf = load float, ptr %i.age, align 4, !tbaa !66
  %i.agg = fadd float %i.agc, %i.agf              ; 3 uses
  %indvars.iv.next.i630.7 = add nuw nsw i64 %indvars.iv.i628, 8 ; 2 uses
  %niter1843.next.7 = add nuw i64 %niter1843, 8   ; 2 uses
  %niter1843.ncmp.7 = icmp eq i64 %niter1843.next.7, %unroll_iter1842
  br i1 %niter1843.ncmp.7, label %.loopexit1213.loopexit.unr-lcssa, label %bb.fe, !llvm.loop !17

.loopexit1213.loopexit.unr-lcssa:                 ; preds = %bb.fe
  %lcmp.mod1839.not = icmp eq i64 %xtraiter1837, 0
  br i1 %lcmp.mod1839.not, label %.loopexit1213, label %.epil.preheader1836

.epil.preheader1836:                              ; preds = %.loopexit1213.loopexit.unr-lcssa, %.lr.ph.i626
  %indvars.iv.i628.epil.init = phi i64 [ 0, %.lr.ph.i626 ], [ %indvars.iv.next.i630.7, %.loopexit1213.loopexit.unr-lcssa ]
  %.057.i629.epil.init = phi float [ 0.000000e+00, %.lr.ph.i626 ], [ %i.agg, %.loopexit1213.loopexit.unr-lcssa ]
  %lcmp.mod1841 = icmp ne i64 %xtraiter1837, 0
  call void @llvm.assume(i1 %lcmp.mod1841)
  br label %bb.ff

bb.ff:                                            ; preds = %bb.ff, %.epil.preheader1836
  %indvars.iv.i628.epil = phi i64 [ %indvars.iv.i628.epil.init, %.epil.preheader1836 ], [ %indvars.iv.next.i630.epil, %bb.ff ] ; 2 uses
  %.057.i629.epil = phi float [ %.057.i629.epil.init, %.epil.preheader1836 ], [ %i.agj, %bb.ff ]
  %epil.iter1838 = phi i64 [ 0, %.epil.preheader1836 ], [ %epil.iter1838.next, %bb.ff ]
  %i.agh = getelementptr inbounds nuw [4 x i8], ptr %i.afa, i64 %indvars.iv.i628.epil
  %i.agi = load float, ptr %i.agh, align 4, !tbaa !66
  %i.agj = fadd float %.057.i629.epil, %i.agi     ; 2 uses
  %indvars.iv.next.i630.epil = add nuw nsw i64 %indvars.iv.i628.epil, 1
  %epil.iter1838.next = add i64 %epil.iter1838, 1 ; 2 uses
  %epil.iter1838.cmp.not = icmp eq i64 %epil.iter1838.next, %xtraiter1837
  br i1 %epil.iter1838.cmp.not, label %.loopexit1213, label %bb.ff, !llvm.loop !711

.loopexit1213:                                    ; preds = %.loopexit1213.loopexit.unr-lcssa, %bb.ff, %bb.fd
  %.05.lcssa.i632 = phi float [ 0.000000e+00, %bb.fd ], [ %i.agg, %.loopexit1213.loopexit.unr-lcssa ], [ %i.agj, %bb.ff ]
  %i.agk = uitofp nneg i64 %i.aey to float
  %i.agl = fdiv float %.05.lcssa.i632, %i.agk
  store i64 0, ptr %i.aex, align 8, !tbaa !193
  %.not.i.i.i.i634 = icmp eq ptr %.pre1413, null
  br i1 %.not.i.i.i.i634, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit635, label %bb.fg

bb.fg:                                            ; preds = %.loopexit1213
  %i.agm = getelementptr inbounds nuw i8, ptr %42, i64 32
  %i.agn = load i64, ptr %i.agm, align 8, !tbaa !194
  %i.ago = shl i64 %i.agn, 2
  %i.agp = load ptr, ptr %42, align 8, !tbaa !120 ; 2 uses
  %i.agq = load ptr, ptr %i.agp, align 8, !tbaa !122
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agq, i64 24
  %i.ags = load ptr, ptr %i.agr, align 8
  invoke void %i.ags(ptr noundef nonnull align 8 dereferenceable(8) %i.agp, ptr noundef nonnull %.pre1413, i64 noundef %i.ago, i64 noundef 4)
          to label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit635 unwind label %bb.fh, !inline_history !3

bb.fh:                                            ; preds = %bb.fg
  %i.agt = landingpad { ptr, i32 }
          catch ptr null
  %i.agu = extractvalue { ptr, i32 } %i.agt, 0
  call void @__clang_call_terminate(ptr %i.agu) #40
  unreachable

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit635: ; preds = %.loopexit1213, %bb.fg
  store i64 0, ptr %i.adw, align 8, !tbaa !187
  %i.agv = load ptr, ptr %i.adr, align 8, !tbaa !188 ; 2 uses
  %.not.i.i.i.i.i636 = icmp eq ptr %i.agv, null
  br i1 %.not.i.i.i.i.i636, label %bb.fk, label %bb.fi

bb.fi:                                            ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit635
  %i.agw = load i64, ptr %i.ads, align 8, !tbaa !189
  %i.agx = shl i64 %i.agw, 2
  %i.agy = load ptr, ptr %43, align 8, !tbaa !190 ; 2 uses
  %i.agz = load ptr, ptr %i.agy, align 8, !tbaa !122
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 24
  %i.ahb = load ptr, ptr %i.aha, align 8
  invoke void %i.ahb(ptr noundef nonnull align 8 dereferenceable(8) %i.agy, ptr noundef nonnull %i.agv, i64 noundef %i.agx, i64 noundef 4)
          to label %bb.fk unwind label %bb.fj, !inline_history !9

bb.fj:                                            ; preds = %bb.fi
  %i.ahc = landingpad { ptr, i32 }
          catch ptr null
  %i.ahd = extractvalue { ptr, i32 } %i.ahc, 0
  call void @__clang_call_terminate(ptr %i.ahd) #40
  unreachable

bb.fk:                                            ; preds = %bb.fi, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit635
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #37
  store float %i.agl, ptr %i.o, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #37
  %i.ahe = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #37
  store i32 0, ptr %44, align 8, !tbaa !150
  %i.ahf = getelementptr inbounds nuw i8, ptr %44, i64 4 ; 2 uses
  store i32 0, ptr %i.ahf, align 4, !tbaa !151
  %i.ahg = getelementptr inbounds nuw i8, ptr %44, i64 8
  store i32 0, ptr %i.ahg, align 8, !tbaa !152
  %i.ahh = getelementptr inbounds nuw i8, ptr %44, i64 16
  %i.ahi = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #37
  %i.ahj = ptrtoint ptr %i.ahi to i64
  store i64 %i.ahj, ptr %i.ahh, align 8, !tbaa !153
  %i.ahk = getelementptr inbounds nuw i8, ptr %44, i64 24
  %i.ahl = getelementptr inbounds nuw i8, ptr %44, i64 56
  %i.ahm = ptrtoint ptr %i.ahe to i64             ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ahk, i8 0, i64 32, i1 false)
  store i64 %i.ahm, ptr %i.ahl, align 8, !tbaa !153
  %i.ahn = getelementptr inbounds nuw i8, ptr %44, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ahn, i8 0, i64 24, i1 false)
  %i.aho = getelementptr inbounds nuw i8, ptr %44, i64 88
  store i64 %i.ahm, ptr %i.aho, align 8, !tbaa !153
  %i.ahp = getelementptr inbounds nuw i8, ptr %44, i64 96 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ahp, i8 0, i64 24, i1 false)
  %i.ahq = getelementptr inbounds nuw i8, ptr %44, i64 120
  store i64 %i.ahm, ptr %i.ahq, align 8, !tbaa !153
  %i.ahr = getelementptr inbounds nuw i8, ptr %44, i64 128 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ahr, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #37
  %i.ahs = load i64, ptr %i.aae, align 8, !tbaa !138
  %sext = shl i64 %i.ahs, 32                      ; 4 uses
  %i.aht = ashr exact i64 %sext, 32               ; 3 uses
  %i.ahu = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #37 ; 3 uses
  %i.ahv = ptrtoint ptr %i.ahu to i64
  store i64 %i.ahv, ptr %45, align 8, !tbaa !153
  %i.ahw = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 9 uses
  store ptr null, ptr %i.ahw, align 8, !tbaa !192
  %i.ahx = getelementptr inbounds nuw i8, ptr %45, i64 32 ; 4 uses
  %i.ahy = getelementptr inbounds nuw i8, ptr %45, i64 40 ; 5 uses
  %.not.i.i.i638 = icmp ugt i64 %i.aht, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ahx, i8 0, i64 16, i1 false)
  %65 = icmp eq i64 %sext, 0                      ; 2 uses
  br i1 %.not.i.i.i638, label %66, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i

66:                                               ; preds = %bb.fk
  br i1 %65, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i, label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i

_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i: ; preds = %66
  %i.ahz = ashr exact i64 %sext, 30
  %i.aia = load ptr, ptr %i.ahu, align 8, !tbaa !122
  %i.aib = getelementptr inbounds nuw i8, ptr %i.aia, i64 16
  %i.aic = load ptr, ptr %i.aib, align 8
  %i.aid = invoke noundef ptr %i.aic(ptr noundef nonnull align 8 dereferenceable(8) %i.ahu, i64 noundef %i.ahz, i64 noundef 4)
          to label %.noexc640 unwind label %bb.fw, !inline_history !18 ; 14 uses

.noexc640:                                        ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i
  %.pre.pre.i.i.i = load ptr, ptr %i.ahw, align 8, !tbaa !192 ; 4 uses
  %.pr.i.i = load i64, ptr %i.ahy, align 8, !tbaa !193 ; 11 uses
  %.not15.i.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not15.i.i.i, label %._crit_edge.i.i.i, label %iter.check1708

iter.check1708:                                   ; preds = %.noexc640
  %i.aie = ptrtoaddr ptr %i.aid to i64
  %.not.i12.i.i.i = icmp eq ptr %.pre.pre.i.i.i, null
  %i.aif = getelementptr inbounds nuw i8, ptr %45, i64 16
  %i.aig = select i1 %.not.i12.i.i.i, ptr %i.aif, ptr %.pre.pre.i.i.i ; 12 uses
  %min.iters.check1694 = icmp ult i64 %.pr.i.i, 4
  %i.aih = ptrtoaddr ptr %i.aig to i64
  %i.aii = sub i64 %i.aih, %i.aie
  %diff.check = icmp ugt i64 %i.aii, -128
  %or.cond = select i1 %min.iters.check1694, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph1709.preheader, label %vector.main.loop.iter.check1695

vector.main.loop.iter.check1695:                  ; preds = %iter.check1708
  %min.iters.check1696 = icmp ult i64 %.pr.i.i, 32
  br i1 %min.iters.check1696, label %vec.epilog.ph1712, label %vector.ph1697

vector.ph1697:                                    ; preds = %vector.main.loop.iter.check1695
  %i.aij = and i64 %.pr.i.i, 28
  %n.vec1698 = and i64 %.pr.i.i, -32              ; 4 uses
  br label %vector.body1699

vector.body1699:                                  ; preds = %vector.body1699, %vector.ph1697
  %index1700 = phi i64 [ 0, %vector.ph1697 ], [ %index.next1704, %vector.body1699 ] ; 3 uses
  %i.aik = getelementptr inbounds nuw [4 x i8], ptr %i.aid, i64 %index1700 ; 4 uses
  %i.ail = getelementptr inbounds nuw [4 x i8], ptr %i.aig, i64 %index1700 ; 4 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ail, i64 32
  %i.ain = getelementptr inbounds nuw i8, ptr %i.ail, i64 64
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ail, i64 96
  %wide.load = load <8 x float>, ptr %i.ail, align 4, !tbaa !66
  %wide.load1701 = load <8 x float>, ptr %i.aim, align 4, !tbaa !66
  %wide.load1702 = load <8 x float>, ptr %i.ain, align 4, !tbaa !66
  %wide.load1703 = load <8 x float>, ptr %i.aio, align 4, !tbaa !66
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aik, i64 32
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aik, i64 64
  %i.air = getelementptr inbounds nuw i8, ptr %i.aik, i64 96
  store <8 x float> %wide.load, ptr %i.aik, align 4, !tbaa !66
  store <8 x float> %wide.load1701, ptr %i.aip, align 4, !tbaa !66
  store <8 x float> %wide.load1702, ptr %i.aiq, align 4, !tbaa !66
  store <8 x float> %wide.load1703, ptr %i.air, align 4, !tbaa !66
  %index.next1704 = add nuw i64 %index1700, 32    ; 2 uses
  %i.ais = icmp eq i64 %index.next1704, %n.vec1698
  br i1 %i.ais, label %middle.block1705, label %vector.body1699, !llvm.loop !712

middle.block1705:                                 ; preds = %vector.body1699
  %cmp.n1706 = icmp eq i64 %.pr.i.i, %n.vec1698
  br i1 %cmp.n1706, label %._crit_edge.i.i.i, label %vec.epilog.iter.check1710

vec.epilog.iter.check1710:                        ; preds = %middle.block1705
  %min.epilog.iters.check1711 = icmp eq i64 %i.aij, 0
  br i1 %min.epilog.iters.check1711, label %vec.epilog.scalar.ph1709.preheader, label %vec.epilog.ph1712, !prof !199

vec.epilog.ph1712:                                ; preds = %vector.main.loop.iter.check1695, %vec.epilog.iter.check1710
  %vec.epilog.resume.val1707 = phi i64 [ %n.vec1698, %vec.epilog.iter.check1710 ], [ 0, %vector.main.loop.iter.check1695 ]
  %n.vec1713 = and i64 %.pr.i.i, -4               ; 3 uses
  br label %vec.epilog.vector.body1714

vec.epilog.vector.body1714:                       ; preds = %vec.epilog.vector.body1714, %vec.epilog.ph1712
  %index1715 = phi i64 [ %vec.epilog.resume.val1707, %vec.epilog.ph1712 ], [ %index.next1717, %vec.epilog.vector.body1714 ] ; 3 uses
  %i.ait = getelementptr inbounds nuw [4 x i8], ptr %i.aid, i64 %index1715
  %i.aiu = getelementptr inbounds nuw [4 x i8], ptr %i.aig, i64 %index1715
  %wide.load1716 = load <4 x float>, ptr %i.aiu, align 4, !tbaa !66
  store <4 x float> %wide.load1716, ptr %i.ait, align 4, !tbaa !66
  %index.next1717 = add nuw i64 %index1715, 4     ; 2 uses
  %i.aiv = icmp eq i64 %index.next1717, %n.vec1713
  br i1 %i.aiv, label %vec.epilog.middle.block1718, label %vec.epilog.vector.body1714, !llvm.loop !713

vec.epilog.middle.block1718:                      ; preds = %vec.epilog.vector.body1714
  %cmp.n1719 = icmp eq i64 %.pr.i.i, %n.vec1713
  br i1 %cmp.n1719, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph1709.preheader

vec.epilog.scalar.ph1709.preheader:               ; preds = %iter.check1708, %vec.epilog.iter.check1710, %vec.epilog.middle.block1718
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %iter.check1708 ], [ %n.vec1698, %vec.epilog.iter.check1710 ], [ %n.vec1713, %vec.epilog.middle.block1718 ] ; 4 uses
  %i.aiw = sub i64 %.pr.i.i, %indvars.iv.i.i.i.ph
  %xtraiter1844 = and i64 %i.aiw, 7               ; 2 uses
  %lcmp.mod1845.not = icmp eq i64 %xtraiter1844, 0
  br i1 %lcmp.mod1845.not, label %vec.epilog.scalar.ph1709.prol.loopexit, label %vec.epilog.scalar.ph1709.prol

vec.epilog.scalar.ph1709.prol:                    ; preds = %vec.epilog.scalar.ph1709.preheader, %vec.epilog.scalar.ph1709.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %vec.epilog.scalar.ph1709.prol ], [ %indvars.iv.i.i.i.ph, %vec.epilog.scalar.ph1709.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph1709.prol ], [ 0, %vec.epilog.scalar.ph1709.preheader ]
  %i.aix = getelementptr inbounds nuw [4 x i8], ptr %i.aid, i64 %indvars.iv.i.i.i.prol
  %i.aiy = getelementptr inbounds nuw [4 x i8], ptr %i.aig, i64 %indvars.iv.i.i.i.prol
  %i.aiz = load float, ptr %i.aiy, align 4, !tbaa !66
  store float %i.aiz, ptr %i.aix, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1844
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph1709.prol.loopexit, label %vec.epilog.scalar.ph1709.prol, !llvm.loop !714

vec.epilog.scalar.ph1709.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1709.prol, %vec.epilog.scalar.ph1709.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %vec.epilog.scalar.ph1709.preheader ], [ %indvars.iv.next.i.i.i.prol, %vec.epilog.scalar.ph1709.prol ]
  %i.aja = sub i64 %indvars.iv.i.i.i.ph, %.pr.i.i
  %i.ajb = icmp ugt i64 %i.aja, -8
  br i1 %i.ajb, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph1709

._crit_edge.i.i.i:                                ; preds = %vec.epilog.scalar.ph1709.prol.loopexit, %vec.epilog.scalar.ph1709, %middle.block1705, %vec.epilog.middle.block1718, %.noexc640
  %.not.i.i.i.i.i.i = icmp eq ptr %.pre.pre.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i, label %bb.fl

bb.fl:                                            ; preds = %._crit_edge.i.i.i
  %i.ajc = load i64, ptr %i.ahx, align 8, !tbaa !194
  %i.ajd = shl i64 %i.ajc, 2
  %i.aje = load ptr, ptr %45, align 8, !tbaa !120 ; 2 uses
  %i.ajf = load ptr, ptr %i.aje, align 8, !tbaa !122
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajf, i64 24
  %i.ajh = load ptr, ptr %i.ajg, align 8
  invoke void %i.ajh(ptr noundef nonnull align 8 dereferenceable(8) %i.aje, ptr noundef nonnull %.pre.pre.i.i.i, i64 noundef %i.ajd, i64 noundef 4)
          to label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i unwind label %bb.fw, !inline_history !18

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i: ; preds = %bb.fl, %._crit_edge.i.i.i, %66
  %.0.i.i.i.i1418.i.i = phi ptr [ %i.aid, %._crit_edge.i.i.i ], [ null, %66 ], [ %i.aid, %bb.fl ] ; 2 uses
  store i64 %i.aht, ptr %i.ahx, align 8, !tbaa !194
  store ptr %.0.i.i.i.i1418.i.i, ptr %i.ahw, align 8, !tbaa !192
  br label %.lr.ph.i.i639

vec.epilog.scalar.ph1709:                         ; preds = %vec.epilog.scalar.ph1709.prol.loopexit, %vec.epilog.scalar.ph1709
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.7, %vec.epilog.scalar.ph1709 ], [ %indvars.iv.i.i.i.unr, %vec.epilog.scalar.ph1709.prol.loopexit ] ; 10 uses
  %i.aji = getelementptr inbounds nuw [4 x i8], ptr %i.aid, i64 %indvars.iv.i.i.i
  %i.ajj = getelementptr inbounds nuw [4 x i8], ptr %i.aig, i64 %indvars.iv.i.i.i
  %i.ajk = load float, ptr %i.ajj, align 4, !tbaa !66
  store float %i.ajk, ptr %i.aji, align 4, !tbaa !66
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ajl = getelementptr inbounds nuw [4 x i8], ptr %i.aid, i64 %indvars.iv.next.i.i.i
  %i.ajm = getelementptr inbounds nuw [4 x i8], ptr %i.aig, i64 %indvars.iv.next.i.i.i
  %i.ajn = load float, ptr %i.ajm, align 4, !tbaa !66
  store float %i.ajn, ptr %i.ajl, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ajo = getelementptr inbounds nuw [4 x i8], ptr %i.aid, i64 %indvars.iv.next.i.i.i.1
  %i.ajp = getelementptr inbounds nuw [4 x i8], ptr %i.aig, i64 %indvars.iv.next.i.i.i.1
  %i.ajq = load float, ptr %i.ajp, align 4, !tbaa !66
  store float %i.ajq, ptr %i.ajo, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ajr = getelementptr inbounds nuw [4 x i8], ptr %i.aid, i64 %indvars.iv.next.i.i.i.2
  %i.ajs = getelementptr inbounds nuw [4 x i8], ptr %i.aig, i64 %indvars.iv.next.i.i.i.2
  %i.ajt = load float, ptr %i.ajs, align 4, !tbaa !66
  store float %i.ajt, ptr %i.ajr, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %i.aju = getelementptr inbounds nuw [4 x i8], ptr %i.aid, i64 %indvars.iv.next.i.i.i.3
  %i.ajv = getelementptr inbounds nuw [4 x i8], ptr %i.aig, i64 %indvars.iv.next.i.i.i.3
  %i.ajw = load float, ptr %i.ajv, align 4, !tbaa !66
  store float %i.ajw, ptr %i.aju, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.4 = add nuw nsw i64 %indvars.iv.i.i.i, 5 ; 2 uses
  %i.ajx = getelementptr inbounds nuw [4 x i8], ptr %i.aid, i64 %indvars.iv.next.i.i.i.4
  %i.ajy = getelementptr inbounds nuw [4 x i8], ptr %i.aig, i64 %indvars.iv.next.i.i.i.4
  %i.ajz = load float, ptr %i.ajy, align 4, !tbaa !66
  store float %i.ajz, ptr %i.ajx, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.5 = add nuw nsw i64 %indvars.iv.i.i.i, 6 ; 2 uses
  %i.aka = getelementptr inbounds nuw [4 x i8], ptr %i.aid, i64 %indvars.iv.next.i.i.i.5
  %i.akb = getelementptr inbounds nuw [4 x i8], ptr %i.aig, i64 %indvars.iv.next.i.i.i.5
  %i.akc = load float, ptr %i.akb, align 4, !tbaa !66
  store float %i.akc, ptr %i.aka, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.6 = add nuw nsw i64 %indvars.iv.i.i.i, 7 ; 2 uses
  %i.akd = getelementptr inbounds nuw [4 x i8], ptr %i.aid, i64 %indvars.iv.next.i.i.i.6
  %i.ake = getelementptr inbounds nuw [4 x i8], ptr %i.aig, i64 %indvars.iv.next.i.i.i.6
  %i.akf = load float, ptr %i.ake, align 4, !tbaa !66
  store float %i.akf, ptr %i.akd, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.7 = add nuw nsw i64 %indvars.iv.i.i.i, 8 ; 2 uses
  %exitcond.not.i.i.i.7 = icmp eq i64 %indvars.iv.next.i.i.i.7, %.pr.i.i
  br i1 %exitcond.not.i.i.i.7, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph1709, !llvm.loop !715

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i: ; preds = %bb.fk
  br i1 %65, label %.loopexit1212, label %.lr.ph.i.i639

.lr.ph.i.i639:                                    ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i
  %i.akg = phi ptr [ %.0.i.i.i.i1418.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i ], [ null, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i ] ; 2 uses
  %.not.i9.i.i = icmp eq ptr %i.akg, null
  %i.akh = getelementptr inbounds nuw i8, ptr %45, i64 16
  %i.aki = select i1 %.not.i9.i.i, ptr %i.akh, ptr %i.akg
  %i.akj = ashr exact i64 %sext, 30
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aki, i8 0, i64 %i.akj, i1 false), !tbaa !66
  br label %.loopexit1212

.loopexit1212:                                    ; preds = %.lr.ph.i.i639, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i
  store i64 %i.aht, ptr %i.ahy, align 8, !tbaa !193
  %i.akk = load i64, ptr %i.y, align 8, !tbaa !45 ; 2 uses
  switch i64 %i.akk, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit688.thread1191 [
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit688
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.loopexit1212
  %i.akl = load ptr, ptr %9, align 8, !tbaa !48   ; 4 uses
  %i.akm = load i16, ptr %i.akl, align 1
  %i.akn = xor i16 %i.akm, 16717
  %i.ako = getelementptr i8, ptr %i.akl, i64 2
  %i.akp = load i8, ptr %i.ako, align 1
  %i.akq = zext i8 %i.akp to i16
  %i.akr = xor i16 %i.akq, 69
  %i.aks = or i16 %i.akn, %i.akr
  %i.akt = icmp ne i16 %i.aks, 0
  %i.aku = zext i1 %i.akt to i32
  %i.akv = icmp eq i32 %i.aku, 0
  br i1 %i.akv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit664

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !752)
  %i.akw = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #37, !noalias !752 ; 3 uses
  %i.akx = ptrtoint ptr %i.akw to i64
  store i64 %i.akx, ptr %47, align 8, !tbaa !153, !alias.scope !752
  %i.aky = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 3 uses
  store ptr null, ptr %i.aky, align 8, !tbaa !188, !alias.scope !752
  %i.akz = getelementptr inbounds nuw i8, ptr %47, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.akz, i8 0, i64 16, i1 false), !alias.scope !752
  %i.ala = load i64, ptr %i.adt, align 8, !tbaa !138, !noalias !752 ; 3 uses
  %sext.i642 = shl i64 %i.ala, 32                 ; 3 uses
  %i.alb = ashr exact i64 %sext.i642, 32          ; 3 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %47, i64 40 ; 2 uses
  %.not.i643 = icmp eq i64 %sext.i642, 0
  br i1 %.not.i643, label %_ZN4pbrt13InlinedVectorIiLi4EN4pstd3pmr21polymorphic_allocatorIiEEE6resizeEm.exit.i647, label %bb.fm

bb.fm:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.not.i14.i.i644 = icmp ugt i64 %i.alb, 4
  %i.ald = ashr exact i64 %sext.i642, 30          ; 2 uses
  br i1 %.not.i14.i.i644, label %bb.fn, label %.lr.ph.i.i645

bb.fn:                                            ; preds = %bb.fm
  %i.ale = load ptr, ptr %i.akw, align 8, !tbaa !122, !noalias !752
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ale, i64 16
  %i.alg = load ptr, ptr %i.alf, align 8, !noalias !752
  %i.alh = invoke noundef ptr %i.alg(ptr noundef nonnull align 8 dereferenceable(8) %i.akw, i64 noundef %i.ald, i64 noundef 4)
          to label %_ZN4pstd3pmr21polymorphic_allocatorIiE17deallocate_objectIiEEvPT_m.exit.i.i.i654 unwind label %bb.fo, !noalias !752, !inline_history !16 ; 2 uses

_ZN4pstd3pmr21polymorphic_allocatorIiE17deallocate_objectIiEEvPT_m.exit.i.i.i654: ; preds = %bb.fn
  store i64 %i.alb, ptr %i.akz, align 8, !tbaa !189, !alias.scope !752
  store ptr %i.alh, ptr %i.aky, align 8, !tbaa !188, !alias.scope !752
  %.pre1416.pre = load i64, ptr %i.adt, align 8, !tbaa !138, !noalias !752
  br label %.lr.ph.i.i645

.lr.ph.i.i645:                                    ; preds = %bb.fm, %_ZN4pstd3pmr21polymorphic_allocatorIiE17deallocate_objectIiEEvPT_m.exit.i.i.i654
  %.pre1416 = phi i64 [ %.pre1416.pre, %_ZN4pstd3pmr21polymorphic_allocatorIiE17deallocate_objectIiEEvPT_m.exit.i.i.i654 ], [ %i.ala, %bb.fm ]
  %i.ali = phi ptr [ %i.alh, %_ZN4pstd3pmr21polymorphic_allocatorIiE17deallocate_objectIiEEvPT_m.exit.i.i.i654 ], [ null, %bb.fm ] ; 3 uses
  %.not.i15.i.i646 = icmp eq ptr %i.ali, null
  %i.alj = getelementptr inbounds nuw i8, ptr %47, i64 16
  %i.alk = select i1 %.not.i15.i.i646, ptr %i.alj, ptr %i.ali
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.alk, i8 0, i64 %i.ald, i1 false), !tbaa !67
  br label %_ZN4pbrt13InlinedVectorIiLi4EN4pstd3pmr21polymorphic_allocatorIiEEE6resizeEm.exit.i647

_ZN4pbrt13InlinedVectorIiLi4EN4pstd3pmr21polymorphic_allocatorIiEEE6resizeEm.exit.i647: ; preds = %.lr.ph.i.i645, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.all = phi i64 [ %.pre1416, %.lr.ph.i.i645 ], [ %i.ala, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 5 uses
  %i.alm = phi ptr [ %i.ali, %.lr.ph.i.i645 ], [ null, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 2 uses
  store i64 %i.alb, ptr %i.alc, align 8, !tbaa !187, !alias.scope !752
  %i.aln = trunc i64 %i.all to i32
  %i.alo = icmp sgt i32 %i.aln, 0
  br i1 %i.alo, label %iter.check1770, label %_ZNK4pbrt5Image15AllChannelsDescEv.exit657

iter.check1770:                                   ; preds = %_ZN4pbrt13InlinedVectorIiLi4EN4pstd3pmr21polymorphic_allocatorIiEEE6resizeEm.exit.i647
  %.not.i.i.i649 = icmp eq ptr %i.alm, null
  %i.alp = getelementptr inbounds nuw i8, ptr %47, i64 16
  %i.alq = select i1 %.not.i.i.i649, ptr %i.alp, ptr %i.alm ; 3 uses
  %wide.trip.count.i650 = and i64 %i.all, 2147483647 ; 5 uses
  %min.iters.check1754 = icmp samesign ult i64 %wide.trip.count.i650, 8
  br i1 %min.iters.check1754, label %vec.epilog.scalar.ph1771.preheader, label %vector.main.loop.iter.check1755

vector.main.loop.iter.check1755:                  ; preds = %iter.check1770
  %min.iters.check1756 = icmp samesign ult i64 %wide.trip.count.i650, 32
  br i1 %min.iters.check1756, label %vec.epilog.ph1774, label %vector.ph1757

vector.ph1757:                                    ; preds = %vector.main.loop.iter.check1755
  %i.alr = and i64 %i.all, 24
  %n.vec1758 = and i64 %i.all, 2147483616         ; 4 uses
  br label %vector.body1759

vector.body1759:                                  ; preds = %vector.body1759, %vector.ph1757
  %index1760 = phi i64 [ 0, %vector.ph1757 ], [ %index.next1765, %vector.body1759 ] ; 2 uses
  %vec.ind1761 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph1757 ], [ %vec.ind.next1766, %vector.body1759 ] ; 5 uses
  %step.add1762 = add <8 x i32> %vec.ind1761, splat (i32 8)
  %step.add.21763 = add <8 x i32> %vec.ind1761, splat (i32 16)
  %step.add.31764 = add <8 x i32> %vec.ind1761, splat (i32 24)
  %i.als = getelementptr inbounds nuw [4 x i8], ptr %i.alq, i64 %index1760 ; 4 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %i.als, i64 32
  %i.alu = getelementptr inbounds nuw i8, ptr %i.als, i64 64
  %i.alv = getelementptr inbounds nuw i8, ptr %i.als, i64 96
  store <8 x i32> %vec.ind1761, ptr %i.als, align 4, !tbaa !67
  store <8 x i32> %step.add1762, ptr %i.alt, align 4, !tbaa !67
  store <8 x i32> %step.add.21763, ptr %i.alu, align 4, !tbaa !67
  store <8 x i32> %step.add.31764, ptr %i.alv, align 4, !tbaa !67
  %index.next1765 = add nuw i64 %index1760, 32    ; 2 uses
  %vec.ind.next1766 = add <8 x i32> %vec.ind1761, splat (i32 32)
  %i.alw = icmp eq i64 %index.next1765, %n.vec1758
  br i1 %i.alw, label %middle.block1767, label %vector.body1759, !llvm.loop !718

middle.block1767:                                 ; preds = %vector.body1759
  %cmp.n1768 = icmp eq i64 %wide.trip.count.i650, %n.vec1758
  br i1 %cmp.n1768, label %_ZNK4pbrt5Image15AllChannelsDescEv.exit657, label %vec.epilog.iter.check1772

vec.epilog.iter.check1772:                        ; preds = %middle.block1767
  %min.epilog.iters.check1773 = icmp eq i64 %i.alr, 0
  br i1 %min.epilog.iters.check1773, label %vec.epilog.scalar.ph1771.preheader, label %vec.epilog.ph1774, !prof !278

vec.epilog.ph1774:                                ; preds = %vector.main.loop.iter.check1755, %vec.epilog.iter.check1772
  %vec.epilog.resume.val1769 = phi i64 [ %n.vec1758, %vec.epilog.iter.check1772 ], [ 0, %vector.main.loop.iter.check1755 ] ; 2 uses
  %n.vec1775 = and i64 %i.all, 2147483640         ; 3 uses
  %i.alx = trunc nuw nsw i64 %vec.epilog.resume.val1769 to i32
  %broadcast.splatinsert1776 = insertelement <8 x i32> poison, i32 %i.alx, i64 0
  %broadcast.splat1777 = shufflevector <8 x i32> %broadcast.splatinsert1776, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction1778 = or disjoint <8 x i32> %broadcast.splat1777, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body1779

vec.epilog.vector.body1779:                       ; preds = %vec.epilog.vector.body1779, %vec.epilog.ph1774
  %index1780 = phi i64 [ %vec.epilog.resume.val1769, %vec.epilog.ph1774 ], [ %index.next1782, %vec.epilog.vector.body1779 ] ; 2 uses
  %vec.ind1781 = phi <8 x i32> [ %induction1778, %vec.epilog.ph1774 ], [ %vec.ind.next1783, %vec.epilog.vector.body1779 ] ; 2 uses
  %i.aly = getelementptr inbounds nuw [4 x i8], ptr %i.alq, i64 %index1780
  store <8 x i32> %vec.ind1781, ptr %i.aly, align 4, !tbaa !67
  %index.next1782 = add nuw i64 %index1780, 8     ; 2 uses
  %vec.ind.next1783 = add <8 x i32> %vec.ind1781, splat (i32 8)
  %i.alz = icmp eq i64 %index.next1782, %n.vec1775
  br i1 %i.alz, label %vec.epilog.middle.block1784, label %vec.epilog.vector.body1779, !llvm.loop !719

vec.epilog.middle.block1784:                      ; preds = %vec.epilog.vector.body1779
  %cmp.n1785 = icmp eq i64 %wide.trip.count.i650, %n.vec1775
  br i1 %cmp.n1785, label %_ZNK4pbrt5Image15AllChannelsDescEv.exit657, label %vec.epilog.scalar.ph1771.preheader

vec.epilog.scalar.ph1771.preheader:               ; preds = %iter.check1770, %vec.epilog.iter.check1772, %vec.epilog.middle.block1784
  %indvars.iv.i651.ph = phi i64 [ 0, %iter.check1770 ], [ %n.vec1758, %vec.epilog.iter.check1772 ], [ %n.vec1775, %vec.epilog.middle.block1784 ]
  br label %vec.epilog.scalar.ph1771

bb.fo:                                            ; preds = %bb.fn
  %i.ama = landingpad { ptr, i32 }
          cleanup
  br label %.body655

vec.epilog.scalar.ph1771:                         ; preds = %vec.epilog.scalar.ph1771.preheader, %vec.epilog.scalar.ph1771
  %indvars.iv.i651 = phi i64 [ %indvars.iv.next.i652, %vec.epilog.scalar.ph1771 ], [ %indvars.iv.i651.ph, %vec.epilog.scalar.ph1771.preheader ] ; 3 uses
  %i.amb = getelementptr inbounds nuw [4 x i8], ptr %i.alq, i64 %indvars.iv.i651
  %i.amc = trunc nuw nsw i64 %indvars.iv.i651 to i32
  store i32 %i.amc, ptr %i.amb, align 4, !tbaa !67
  %indvars.iv.next.i652 = add nuw nsw i64 %indvars.iv.i651, 1 ; 2 uses
  %exitcond.not.i653 = icmp eq i64 %indvars.iv.next.i652, %wide.trip.count.i650
  br i1 %exitcond.not.i653, label %_ZNK4pbrt5Image15AllChannelsDescEv.exit657, label %vec.epilog.scalar.ph1771, !llvm.loop !720

_ZNK4pbrt5Image15AllChannelsDescEv.exit657:       ; preds = %vec.epilog.scalar.ph1771, %middle.block1767, %vec.epilog.middle.block1784, %_ZN4pbrt13InlinedVectorIiLi4EN4pstd3pmr21polymorphic_allocatorIiEEE6resizeEm.exit.i647
  invoke void @_ZNK4pbrt5Image3MAEERKNS_16ImageChannelDescERKS0_PS0_(ptr dead_on_unwind nonnull writable sret(%"struct.pbrt::ImageChannelValues") align 8 %46, ptr noundef nonnull align 8 dereferenceable(152) %28, ptr noundef nonnull align 8 dereferenceable(48) %47, ptr noundef nonnull align 8 dereferenceable(152) %23, ptr noundef nonnull %44)
          to label %bb.fp unwind label %bb.fy

bb.fp:                                            ; preds = %_ZNK4pbrt5Image15AllChannelsDescEv.exit657
  %i.amd = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %45, ptr noundef nonnull align 8 dereferenceable(48) %46)
          to label %_ZN4pbrt18ImageChannelValuesaSEOS0_.exit unwind label %bb.fz ; 0 uses

_ZN4pbrt18ImageChannelValuesaSEOS0_.exit:         ; preds = %bb.fp
  %i.ame = getelementptr inbounds nuw i8, ptr %46, i64 40
  store i64 0, ptr %i.ame, align 8, !tbaa !193
  %i.amf = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.amg = load ptr, ptr %i.amf, align 8, !tbaa !192 ; 2 uses
  %.not.i.i.i.i659 = icmp eq ptr %i.amg, null
  br i1 %.not.i.i.i.i659, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit660, label %bb.fq

bb.fq:                                            ; preds = %_ZN4pbrt18ImageChannelValuesaSEOS0_.exit
  %i.amh = getelementptr inbounds nuw i8, ptr %46, i64 32
  %i.ami = load i64, ptr %i.amh, align 8, !tbaa !194
  %i.amj = shl i64 %i.ami, 2
  %i.amk = load ptr, ptr %46, align 8, !tbaa !120 ; 2 uses
  %i.aml = load ptr, ptr %i.amk, align 8, !tbaa !122
  %i.amm = getelementptr inbounds nuw i8, ptr %i.aml, i64 24
  %i.amn = load ptr, ptr %i.amm, align 8
  invoke void %i.amn(ptr noundef nonnull align 8 dereferenceable(8) %i.amk, ptr noundef nonnull %i.amg, i64 noundef %i.amj, i64 noundef 4)
          to label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit660 unwind label %bb.fr, !inline_history !3

bb.fr:                                            ; preds = %bb.fq
  %i.amo = landingpad { ptr, i32 }
          catch ptr null
  %i.amp = extractvalue { ptr, i32 } %i.amo, 0
  call void @__clang_call_terminate(ptr %i.amp) #40
  unreachable
end_hunk_0
begin_hunk_1_@_Z7convertSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE:bb.a
  %i.hxe = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %.body1310

.split4397.us:                                    ; preds = %bb.lb
  %i.hxf = landingpad { ptr, i32 }
          catch ptr null
  %i.hxg = extractvalue { ptr, i32 } %i.hxf, 0
  call void @__clang_call_terminate(ptr %i.hxg) #40
  unreachable

.split4400.us:                                    ; preds = %bb.lm, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i2012.us, %bb.lh, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i2047.us
  %i.hxh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %.body1310

.split4403.us:                                    ; preds = %bb.lo
  %i.hxi = landingpad { ptr, i32 }
          catch ptr null
  %i.hxj = extractvalue { ptr, i32 } %i.hxi, 0
  call void @__clang_call_terminate(ptr %i.hxj) #40
  unreachable

.split4406.us:                                    ; preds = %bb.lz, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i2082.us, %bb.lu, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i2117.us
  %i.hxk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %9) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %.body1310

.split4409.us:                                    ; preds = %bb.mb
  %i.hxl = landingpad { ptr, i32 }
          catch ptr null
  %i.hxm = extractvalue { ptr, i32 } %i.hxl, 0
  call void @__clang_call_terminate(ptr %i.hxm) #40
  unreachable

.split4412.us:                                    ; preds = %bb.mw, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i1732.us, %bb.mr, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i1767.us
  %i.hxn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %.body1310

.split4415.us:                                    ; preds = %bb.my
  %i.hxo = landingpad { ptr, i32 }
          catch ptr null
  %i.hxp = extractvalue { ptr, i32 } %i.hxo, 0
  call void @__clang_call_terminate(ptr %i.hxp) #40
  unreachable

.split4418.us:                                    ; preds = %bb.nj, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i1802.us, %bb.ne, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i1837.us
  %i.hxq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %.body1310

.split4421.us:                                    ; preds = %bb.nl
  %i.hxr = landingpad { ptr, i32 }
          catch ptr null
  %i.hxs = extractvalue { ptr, i32 } %i.hxr, 0
  call void @__clang_call_terminate(ptr %i.hxs) #40
  unreachable

.split4424.us:                                    ; preds = %bb.nv, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i1872.us, %bb.nq, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i1907.us
  %i.hxt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %.body1310

.split4427.us:                                    ; preds = %bb.nx
  %i.hxu = landingpad { ptr, i32 }
          catch ptr null
  %i.hxv = extractvalue { ptr, i32 } %i.hxu, 0
  call void @__clang_call_terminate(ptr %i.hxv) #40
  unreachable

.split4430.us:                                    ; preds = %bb.ou, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i.i.us, %bb.op, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i99.i.i.us
  %i.hxw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %.body1310

.split4433.us:                                    ; preds = %bb.ow
  %i.hxx = landingpad { ptr, i32 }
          catch ptr null
  %i.hxy = extractvalue { ptr, i32 } %i.hxx, 0
  call void @__clang_call_terminate(ptr %i.hxy) #40
  unreachable

.loopexit12.i.i.i.i.split.us:                     ; preds = %bb.pm, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i41.i.i.i.us
  %lpad.loopexit.i.i.i.i.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.rz

.loopexit.split-lp.i.i.i.i.split.us:              ; preds = %bb.ps, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.us
  %lpad.loopexit.split-lp.i.i.i.i.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.rz

.split4438.us:                                    ; preds = %bb.pu
  %i.hxz = landingpad { ptr, i32 }
          catch ptr null
  %i.hya = extractvalue { ptr, i32 } %i.hxz, 0
  call void @__clang_call_terminate(ptr %i.hya) #40
  unreachable

.loopexit.i.i.i.split.us:                         ; preds = %bb.qd, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i.i.i.us
  %lpad.loopexit.i.i.i.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.ry

.loopexit.split-lp.i.i.i.split.us:                ; preds = %bb.qi, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i1697.us
  %lpad.loopexit.split-lp.i.i.i.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.ry

.split4443.us:                                    ; preds = %bb.qk
  %i.hyb = landingpad { ptr, i32 }
          catch ptr null
  %i.hyc = extractvalue { ptr, i32 } %i.hyb, 0
  call void @__clang_call_terminate(ptr %i.hyc) #40
  unreachable

.split4446.us:                                    ; preds = %.loopexit.i.i.i.i.us
  %i.hyd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %14) #37
  call void @_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %13) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  br label %.body1310

.split4449.us:                                    ; preds = %bb.qq
  %i.hye = landingpad { ptr, i32 }
          catch ptr null
  %i.hyf = extractvalue { ptr, i32 } %i.hye, 0
  call void @__clang_call_terminate(ptr %i.hyf) #40
  unreachable

.split4452.us:                                    ; preds = %bb.rb, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i2152.us
  %i.hyg = landingpad { ptr, i32 }
          cleanup
  br label %bb.rx

.split4455.us:                                    ; preds = %.loopexit.i15.i.i.i.us
  %i.hyh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %12) #37
  br label %bb.rx

.split4458.us:                                    ; preds = %bb.rf
  %i.hyi = landingpad { ptr, i32 }
          catch ptr null
  %i.hyj = extractvalue { ptr, i32 } %i.hyi, 0
  call void @__clang_call_terminate(ptr %i.hyj) #40
  unreachable

.split4461.us:                                    ; preds = %_ZN4pbrt18ImageChannelValuesaSEOS0_.exit.i.i26.i.i.us, %_ZN4pbrt18ImageChannelValuesC2EOS0_.exit.i.i.i.i.us
  %i.hyk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %10) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br label %.body1310

.split4464.us:                                    ; preds = %bb.ri
  %i.hyl = landingpad { ptr, i32 }
          catch ptr null
  %i.hym = extractvalue { ptr, i32 } %i.hyl, 0
  call void @__clang_call_terminate(ptr %i.hym) #40
  unreachable

.split4467.us:                                    ; preds = %"_ZSt11nth_elementIPN4pbrt18ImageChannelValuesEZ7convertSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEE3$_1EvT_SD_SD_T0_.exit.us"
  %i.hyn = landingpad { ptr, i32 }
          cleanup
  br label %.body1310

bb.rk:                                            ; preds = %bb.jk
  %i.hyo = landingpad { ptr, i32 }
          cleanup
  br label %bb.sk

bb.rl:                                            ; preds = %bb.jl, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit1286
  %.04444364 = phi i32 [ 0, %bb.jl ], [ %i.icc, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit1286 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #37
  %i.hyp = load i64, ptr %i.ro, align 8, !tbaa !138
  %sext = shl i64 %i.hyp, 32                      ; 4 uses
  %i.hyq = ashr exact i64 %sext, 32               ; 3 uses
  %i.hyr = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #37 ; 3 uses
  %i.hys = ptrtoint ptr %i.hyr to i64
  store i64 %i.hys, ptr %88, align 8, !tbaa !153
  store ptr null, ptr %i.axa, align 8, !tbaa !192
  %.not.i.i.i1278 = icmp ugt i64 %i.hyq, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.axb, i8 0, i64 16, i1 false)
  %98 = icmp eq i64 %sext, 0                      ; 2 uses
  br i1 %.not.i.i.i1278, label %99, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i

99:                                               ; preds = %bb.rl
  br i1 %98, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i, label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i

_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i: ; preds = %99
  %i.hyt = ashr exact i64 %sext, 30
  %i.hyu = load ptr, ptr %i.hyr, align 8, !tbaa !122
  %i.hyv = getelementptr inbounds nuw i8, ptr %i.hyu, i64 16
  %i.hyw = load ptr, ptr %i.hyv, align 8
  %i.hyx = invoke noundef ptr %i.hyw(ptr noundef nonnull align 8 dereferenceable(8) %i.hyr, i64 noundef %i.hyt, i64 noundef 4)
          to label %.noexc1280 unwind label %bb.ru, !inline_history !18 ; 14 uses

.noexc1280:                                       ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i
  %.pre.pre.i.i.i = load ptr, ptr %i.axa, align 8, !tbaa !192 ; 4 uses
  %.pr.i.i = load i64, ptr %i.axc, align 8, !tbaa !193 ; 11 uses
  %.not15.i.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not15.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %.noexc1280
  %i.hyy = ptrtoaddr ptr %i.hyx to i64
  %.not.i12.i.i.i = icmp eq ptr %.pre.pre.i.i.i, null
  %i.hyz = select i1 %.not.i12.i.i.i, ptr %i.axd, ptr %.pre.pre.i.i.i ; 12 uses
  %min.iters.check = icmp ult i64 %.pr.i.i, 4
  %i.hza = ptrtoaddr ptr %i.hyz to i64
  %i.hzb = sub i64 %i.hza, %i.hyy
  %diff.check = icmp ugt i64 %i.hzb, -128
  %or.cond7195 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond7195, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check5312 = icmp ult i64 %.pr.i.i, 32
  br i1 %min.iters.check5312, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hzc = and i64 %.pr.i.i, 28
  %n.vec = and i64 %.pr.i.i, -32                  ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hzd = getelementptr inbounds nuw [4 x i8], ptr %i.hyx, i64 %index ; 4 uses
  %i.hze = getelementptr inbounds nuw [4 x i8], ptr %i.hyz, i64 %index ; 4 uses
  %i.hzf = getelementptr inbounds nuw i8, ptr %i.hze, i64 32
  %i.hzg = getelementptr inbounds nuw i8, ptr %i.hze, i64 64
  %i.hzh = getelementptr inbounds nuw i8, ptr %i.hze, i64 96
  %wide.load = load <8 x float>, ptr %i.hze, align 4, !tbaa !66
  %wide.load5313 = load <8 x float>, ptr %i.hzf, align 4, !tbaa !66
  %wide.load5314 = load <8 x float>, ptr %i.hzg, align 4, !tbaa !66
  %wide.load5315 = load <8 x float>, ptr %i.hzh, align 4, !tbaa !66
  %i.hzi = getelementptr inbounds nuw i8, ptr %i.hzd, i64 32
  %i.hzj = getelementptr inbounds nuw i8, ptr %i.hzd, i64 64
  %i.hzk = getelementptr inbounds nuw i8, ptr %i.hzd, i64 96
  store <8 x float> %wide.load, ptr %i.hzd, align 4, !tbaa !66
  store <8 x float> %wide.load5313, ptr %i.hzi, align 4, !tbaa !66
  store <8 x float> %wide.load5314, ptr %i.hzj, align 4, !tbaa !66
  store <8 x float> %wide.load5315, ptr %i.hzk, align 4, !tbaa !66
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.hzl = icmp eq i64 %index.next, %n.vec
  br i1 %i.hzl, label %middle.block, label %vector.body, !llvm.loop !1120

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.pr.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.hzc, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !199

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec5316 = and i64 %.pr.i.i, -4               ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index5317 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next5319, %vec.epilog.vector.body ] ; 3 uses
  %i.hzm = getelementptr inbounds nuw [4 x i8], ptr %i.hyx, i64 %index5317
  %i.hzn = getelementptr inbounds nuw [4 x i8], ptr %i.hyz, i64 %index5317
  %wide.load5318 = load <4 x float>, ptr %i.hzn, align 4, !tbaa !66
  store <4 x float> %wide.load5318, ptr %i.hzm, align 4, !tbaa !66
  %index.next5319 = add nuw i64 %index5317, 4     ; 2 uses
  %i.hzo = icmp eq i64 %index.next5319, %n.vec5316
  br i1 %i.hzo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1121

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n5320 = icmp eq i64 %.pr.i.i, %n.vec5316
  br i1 %cmp.n5320, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5316, %vec.epilog.middle.block ] ; 4 uses
  %i.hzp = sub i64 %.pr.i.i, %indvars.iv.i.i.i.ph
  %xtraiter = and i64 %i.hzp, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.hzq = getelementptr inbounds nuw [4 x i8], ptr %i.hyx, i64 %indvars.iv.i.i.i.prol
  %i.hzr = getelementptr inbounds nuw [4 x i8], ptr %i.hyz, i64 %indvars.iv.i.i.i.prol
  %i.hzs = load float, ptr %i.hzr, align 4, !tbaa !66
  store float %i.hzs, ptr %i.hzq, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1122

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.hzt = sub i64 %indvars.iv.i.i.i.ph, %.pr.i.i
  %i.hzu = icmp ugt i64 %i.hzt, -8
  br i1 %i.hzu, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph

._crit_edge.i.i.i:                                ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.noexc1280
  %.not.i.i.i.i.i.i = icmp eq ptr %.pre.pre.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i, label %bb.rm

bb.rm:                                            ; preds = %._crit_edge.i.i.i
  %i.hzv = load i64, ptr %i.axb, align 8, !tbaa !194
  %i.hzw = shl i64 %i.hzv, 2
  %i.hzx = load ptr, ptr %88, align 8, !tbaa !120 ; 2 uses
  %i.hzy = load ptr, ptr %i.hzx, align 8, !tbaa !122
  %i.hzz = getelementptr inbounds nuw i8, ptr %i.hzy, i64 24
  %i.iaa = load ptr, ptr %i.hzz, align 8
  invoke void %i.iaa(ptr noundef nonnull align 8 dereferenceable(8) %i.hzx, ptr noundef nonnull %.pre.pre.i.i.i, i64 noundef %i.hzw, i64 noundef 4)
          to label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i unwind label %bb.ru, !inline_history !18

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i: ; preds = %bb.rm, %._crit_edge.i.i.i, %99
  %.0.i.i.i.i1418.i.i = phi ptr [ %i.hyx, %._crit_edge.i.i.i ], [ null, %99 ], [ %i.hyx, %bb.rm ] ; 2 uses
  store i64 %i.hyq, ptr %i.axb, align 8, !tbaa !194
  store ptr %.0.i.i.i.i1418.i.i, ptr %i.axa, align 8, !tbaa !192
  br label %.lr.ph.i.i

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.7, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %i.iab = getelementptr inbounds nuw [4 x i8], ptr %i.hyx, i64 %indvars.iv.i.i.i
  %i.iac = getelementptr inbounds nuw [4 x i8], ptr %i.hyz, i64 %indvars.iv.i.i.i
  %i.iad = load float, ptr %i.iac, align 4, !tbaa !66
  store float %i.iad, ptr %i.iab, align 4, !tbaa !66
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.iae = getelementptr inbounds nuw [4 x i8], ptr %i.hyx, i64 %indvars.iv.next.i.i.i
  %i.iaf = getelementptr inbounds nuw [4 x i8], ptr %i.hyz, i64 %indvars.iv.next.i.i.i
  %i.iag = load float, ptr %i.iaf, align 4, !tbaa !66
  store float %i.iag, ptr %i.iae, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.iah = getelementptr inbounds nuw [4 x i8], ptr %i.hyx, i64 %indvars.iv.next.i.i.i.1
  %i.iai = getelementptr inbounds nuw [4 x i8], ptr %i.hyz, i64 %indvars.iv.next.i.i.i.1
  %i.iaj = load float, ptr %i.iai, align 4, !tbaa !66
  store float %i.iaj, ptr %i.iah, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.iak = getelementptr inbounds nuw [4 x i8], ptr %i.hyx, i64 %indvars.iv.next.i.i.i.2
  %i.ial = getelementptr inbounds nuw [4 x i8], ptr %i.hyz, i64 %indvars.iv.next.i.i.i.2
  %i.iam = load float, ptr %i.ial, align 4, !tbaa !66
  store float %i.iam, ptr %i.iak, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %i.ian = getelementptr inbounds nuw [4 x i8], ptr %i.hyx, i64 %indvars.iv.next.i.i.i.3
  %i.iao = getelementptr inbounds nuw [4 x i8], ptr %i.hyz, i64 %indvars.iv.next.i.i.i.3
  %i.iap = load float, ptr %i.iao, align 4, !tbaa !66
  store float %i.iap, ptr %i.ian, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.4 = add nuw nsw i64 %indvars.iv.i.i.i, 5 ; 2 uses
  %i.iaq = getelementptr inbounds nuw [4 x i8], ptr %i.hyx, i64 %indvars.iv.next.i.i.i.4
  %i.iar = getelementptr inbounds nuw [4 x i8], ptr %i.hyz, i64 %indvars.iv.next.i.i.i.4
  %i.ias = load float, ptr %i.iar, align 4, !tbaa !66
  store float %i.ias, ptr %i.iaq, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.5 = add nuw nsw i64 %indvars.iv.i.i.i, 6 ; 2 uses
  %i.iat = getelementptr inbounds nuw [4 x i8], ptr %i.hyx, i64 %indvars.iv.next.i.i.i.5
  %i.iau = getelementptr inbounds nuw [4 x i8], ptr %i.hyz, i64 %indvars.iv.next.i.i.i.5
  %i.iav = load float, ptr %i.iau, align 4, !tbaa !66
  store float %i.iav, ptr %i.iat, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.6 = add nuw nsw i64 %indvars.iv.i.i.i, 7 ; 2 uses
  %i.iaw = getelementptr inbounds nuw [4 x i8], ptr %i.hyx, i64 %indvars.iv.next.i.i.i.6
  %i.iax = getelementptr inbounds nuw [4 x i8], ptr %i.hyz, i64 %indvars.iv.next.i.i.i.6
  %i.iay = load float, ptr %i.iax, align 4, !tbaa !66
  store float %i.iay, ptr %i.iaw, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.7 = add nuw nsw i64 %indvars.iv.i.i.i, 8 ; 2 uses
  %exitcond.not.i.i.i.7 = icmp eq i64 %indvars.iv.next.i.i.i.7, %.pr.i.i
  br i1 %exitcond.not.i.i.i.7, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph, !llvm.loop !1123

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i: ; preds = %bb.rl
  br i1 %98, label %.loopexit3244, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i
  %i.iaz = phi ptr [ %.0.i.i.i.i1418.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i ], [ null, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i ] ; 2 uses
  %.not.i9.i.i = icmp eq ptr %i.iaz, null
  %i.iba = select i1 %.not.i9.i.i, ptr %i.axd, ptr %i.iaz
  %i.ibb = ashr exact i64 %sext, 30
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.iba, i8 0, i64 %i.ibb, i1 false), !tbaa !66
  br label %.loopexit3244

.loopexit3244:                                    ; preds = %.lr.ph.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i
  store i64 %i.hyq, ptr %i.axc, align 8, !tbaa !193
  %i.ibc = load ptr, ptr %i.axe, align 8, !tbaa !294 ; 10 uses
  %i.ibd = load ptr, ptr %i.axf, align 8, !tbaa !295
  %.not.i.i1282 = icmp eq ptr %i.ibc, %i.ibd
  br i1 %.not.i.i1282, label %bb.rr, label %bb.rn

bb.rn:                                            ; preds = %.loopexit3244
  %i.ibe = load i64, ptr %88, align 8, !tbaa !153
  store i64 %i.ibe, ptr %i.ibc, align 8, !tbaa !153
  %i.ibf = getelementptr inbounds nuw i8, ptr %i.ibc, i64 8 ; 2 uses
  store ptr null, ptr %i.ibf, align 8, !tbaa !192
  %i.ibg = getelementptr inbounds nuw i8, ptr %i.ibc, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ibg, i8 0, i64 16, i1 false)
  %i.ibh = load i64, ptr %i.axc, align 8, !tbaa !193 ; 4 uses
  %i.ibi = load <2 x i64>, ptr %i.axb, align 8, !tbaa !47
  store <2 x i64> %i.ibi, ptr %i.ibg, align 8, !tbaa !47
  %i.ibj = load ptr, ptr %i.axa, align 8, !tbaa !192
  store ptr %i.ibj, ptr %i.ibf, align 8, !tbaa !192
  %i.ibk = add i64 %i.ibh, -5
  %or.cond5274 = icmp ult i64 %i.ibk, -4
  br i1 %or.cond5274, label %_ZNSt6vectorIN4pbrt18ImageChannelValuesESaIS1_EE9push_backEOS1_.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.rn
  %i.ibl = getelementptr inbounds nuw i8, ptr %i.ibc, i64 16
  %i.ibm = load float, ptr %i.axd, align 8, !tbaa !66
  store float %i.ibm, ptr %i.ibl, align 8, !tbaa !66
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ibh, 1
  br i1 %exitcond.not.i.i.i.i, label %_ZNSt6vectorIN4pbrt18ImageChannelValuesESaIS1_EE9push_backEOS1_.exit.thread, label %bb.ro

bb.ro:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ibn = getelementptr inbounds nuw i8, ptr %i.ibc, i64 20
  %i.ibo = load float, ptr %i.axg, align 4, !tbaa !66
  store float %i.ibo, ptr %i.ibn, align 4, !tbaa !66
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %i.ibh, 2
  br i1 %exitcond.not.i.i.i.i.1, label %_ZNSt6vectorIN4pbrt18ImageChannelValuesESaIS1_EE9push_backEOS1_.exit.thread, label %bb.rp

bb.rp:                                            ; preds = %bb.ro
  %i.ibp = getelementptr inbounds nuw i8, ptr %i.ibc, i64 24
  %i.ibq = load float, ptr %i.axh, align 8, !tbaa !66
  store float %i.ibq, ptr %i.ibp, align 8, !tbaa !66
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %i.ibh, 3
  br i1 %exitcond.not.i.i.i.i.2, label %_ZNSt6vectorIN4pbrt18ImageChannelValuesESaIS1_EE9push_backEOS1_.exit.thread, label %bb.rq

bb.rq:                                            ; preds = %bb.rp
  %i.ibr = getelementptr inbounds nuw i8, ptr %i.ibc, i64 28
  %i.ibs = load float, ptr %i.axi, align 4, !tbaa !66
  store float %i.ibs, ptr %i.ibr, align 4, !tbaa !66
  br label %_ZNSt6vectorIN4pbrt18ImageChannelValuesESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN4pbrt18ImageChannelValuesESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %.lr.ph.i.i.i.i, %bb.ro, %bb.rp, %bb.rq, %bb.rn
  %i.ibt = getelementptr inbounds nuw i8, ptr %i.ibc, i64 48
  store ptr %i.ibt, ptr %i.axe, align 8, !tbaa !294
  br label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit1286

bb.rr:                                            ; preds = %.loopexit3244
  invoke void @_ZNSt6vectorIN4pbrt18ImageChannelValuesESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %87, ptr %i.ibc, ptr noundef nonnull align 8 dereferenceable(48) %88)
          to label %_ZNSt6vectorIN4pbrt18ImageChannelValuesESaIS1_EE9push_backEOS1_.exit unwind label %bb.rv

_ZNSt6vectorIN4pbrt18ImageChannelValuesESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.rr
  %.pr3139 = load ptr, ptr %i.axa, align 8, !tbaa !192 ; 2 uses
  store i64 0, ptr %i.axc, align 8, !tbaa !193
  %.not.i.i.i.i1285 = icmp eq ptr %.pr3139, null
  br i1 %.not.i.i.i.i1285, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit1286, label %bb.rs

bb.rs:                                            ; preds = %_ZNSt6vectorIN4pbrt18ImageChannelValuesESaIS1_EE9push_backEOS1_.exit
  %i.ibu = load i64, ptr %i.axb, align 8, !tbaa !194
  %i.ibv = shl i64 %i.ibu, 2
  %i.ibw = load ptr, ptr %88, align 8, !tbaa !120 ; 2 uses
  %i.ibx = load ptr, ptr %i.ibw, align 8, !tbaa !122
  %i.iby = getelementptr inbounds nuw i8, ptr %i.ibx, i64 24
  %i.ibz = load ptr, ptr %i.iby, align 8
  invoke void %i.ibz(ptr noundef nonnull align 8 dereferenceable(8) %i.ibw, ptr noundef nonnull %.pr3139, i64 noundef %i.ibv, i64 noundef 4)
          to label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit1286 unwind label %bb.rt, !inline_history !3

bb.rt:                                            ; preds = %bb.rs
  %i.ica = landingpad { ptr, i32 }
          catch ptr null
  %i.icb = extractvalue { ptr, i32 } %i.ica, 0
  call void @__clang_call_terminate(ptr %i.icb) #40
  unreachable

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit1286: ; preds = %_ZNSt6vectorIN4pbrt18ImageChannelValuesESaIS1_EE9push_backEOS1_.exit.thread, %_ZNSt6vectorIN4pbrt18ImageChannelValuesESaIS1_EE9push_backEOS1_.exit, %bb.rs
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #37
  %i.icc = add nuw nsw i32 %.04444364, 1          ; 2 uses
  %exitcond4621.not = icmp eq i32 %i.icc, 9
  br i1 %exitcond4621.not, label %.preheader3243, label %bb.rl, !llvm.loop !1124

bb.ru:                                            ; preds = %bb.rm, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i
  %i.icd = landingpad { ptr, i32 }
          cleanup
  br label %bb.rw

bb.rv:                                            ; preds = %bb.rr
  %i.ice = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %88) #37
  br label %bb.rw

bb.rw:                                            ; preds = %bb.rv, %bb.ru
  %.pn689 = phi { ptr, i32 } [ %i.ice, %bb.rv ], [ %i.icd, %bb.ru ]
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #37
  br label %.body1310

._crit_edge4377:                                  ; preds = %._crit_edge4373.us, %.preheader3242.lr.ph, %.preheader3243
  %.0445.lcssa = phi i32 [ 0, %.preheader3243 ], [ 0, %.preheader3242.lr.ph ], [ %.2447.us, %._crit_edge4373.us ]
  invoke void @_ZN4pstd4swapIN4pbrt5ImageEEEvRT_S4_(ptr noundef nonnull align 8 dereferenceable(152) %67, ptr noundef nonnull align 8 dereferenceable(152) %86)
          to label %bb.sc unwind label %bb.sg

bb.rx:                                            ; preds = %.split4455.us, %.split4452.us
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.hyh, %.split4455.us ], [ %i.hyg, %.split4452.us ]
  call void @_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %11) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br label %.body1310

bb.ry:                                            ; preds = %.loopexit.split-lp.i.i.i.split.us, %.loopexit.i.i.i.split.us
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.us, %.loopexit.i.i.i.split.us ], [ %lpad.loopexit.split-lp.i.i.i.us, %.loopexit.split-lp.i.i.i.split.us ]
  call void @_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %.body1310

bb.rz:                                            ; preds = %.loopexit.split-lp.i.i.i.i.split.us, %.loopexit12.i.i.i.i.split.us
  %lpad.phi.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.us, %.loopexit12.i.i.i.i.split.us ], [ %lpad.loopexit.split-lp.i.i.i.i.us, %.loopexit.split-lp.i.i.i.i.split.us ]
  call void @_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br label %.body1310

bb.sa:                                            ; preds = %.split4387.us
  %i.icf = load i64, ptr %i.axr, align 8, !tbaa !194
  %i.icg = shl i64 %i.icf, 2
  %i.ich = load ptr, ptr %90, align 8, !tbaa !120 ; 2 uses
  %i.ici = load ptr, ptr %i.ich, align 8, !tbaa !122
  %i.icj = getelementptr inbounds nuw i8, ptr %i.ici, i64 24
  %i.ick = load ptr, ptr %i.icj, align 8
  invoke void %i.ick(ptr noundef nonnull align 8 dereferenceable(8) %i.ich, ptr noundef nonnull %i.hxb, i64 noundef %i.icg, i64 noundef 4)
          to label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit1317 unwind label %bb.sb, !inline_history !3

bb.sb:                                            ; preds = %bb.sa
  %i.icl = landingpad { ptr, i32 }
          catch ptr null
  %i.icm = extractvalue { ptr, i32 } %i.icl, 0
  call void @__clang_call_terminate(ptr %i.icm) #40
  unreachable

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit1317: ; preds = %bb.sa, %.split4387.us, %.split4384.us
  %.pn685 = phi { ptr, i32 } [ %i.hwz, %.split4384.us ], [ %i.hxa, %.split4387.us ], [ %i.hxa, %bb.sa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #37
  br label %.body1310

bb.sc:                                            ; preds = %._crit_edge4377
  %i.icn = load ptr, ptr @stderr, align 8, !tbaa !60
  %i.ico = load ptr, ptr %21, align 8, !tbaa !48
  %i.icp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.icn, ptr noundef nonnull @.str.195, ptr noundef %i.ico, i32 noundef %.0445.lcssa) #42 ; 0 uses
  %i.icq = load ptr, ptr %87, align 8, !tbaa !291 ; 3 uses
  %i.icr = load ptr, ptr %i.axe, align 8, !tbaa !294 ; 2 uses
  %.not4.i.i.i1318 = icmp eq ptr %i.icq, %i.icr
  br i1 %.not4.i.i.i1318, label %_ZSt8_DestroyIPN4pbrt18ImageChannelValuesES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i1319

.lr.ph.i.i.i1319:                                 ; preds = %bb.sc, %_ZSt8_DestroyIN4pbrt18ImageChannelValuesEEvPT_.exit.i.i.i
  %.05.i.i.i1320 = phi ptr [ %i.ide, %_ZSt8_DestroyIN4pbrt18ImageChannelValuesEEvPT_.exit.i.i.i ], [ %i.icq, %bb.sc ] ; 5 uses
  %i.ics = getelementptr inbounds nuw i8, ptr %.05.i.i.i1320, i64 40
  store i64 0, ptr %i.ics, align 8, !tbaa !193
  %i.ict = getelementptr inbounds nuw i8, ptr %.05.i.i.i1320, i64 8
  %i.icu = load ptr, ptr %i.ict, align 8, !tbaa !192 ; 2 uses
  %.not.i.i.i.i.i.i.i.i1321 = icmp eq ptr %i.icu, null
  br i1 %.not.i.i.i.i.i.i.i.i1321, label %_ZSt8_DestroyIN4pbrt18ImageChannelValuesEEvPT_.exit.i.i.i, label %bb.sd

bb.sd:                                            ; preds = %.lr.ph.i.i.i1319
  %i.icv = getelementptr inbounds nuw i8, ptr %.05.i.i.i1320, i64 32
  %i.icw = load i64, ptr %i.icv, align 8, !tbaa !194
  %i.icx = shl i64 %i.icw, 2
  %i.icy = load ptr, ptr %.05.i.i.i1320, align 8, !tbaa !120 ; 2 uses
  %i.icz = load ptr, ptr %i.icy, align 8, !tbaa !122
  %i.ida = getelementptr inbounds nuw i8, ptr %i.icz, i64 24
  %i.idb = load ptr, ptr %i.ida, align 8
  invoke void %i.idb(ptr noundef nonnull align 8 dereferenceable(8) %i.icy, ptr noundef nonnull %i.icu, i64 noundef %i.icx, i64 noundef 4)
          to label %_ZSt8_DestroyIN4pbrt18ImageChannelValuesEEvPT_.exit.i.i.i unwind label %bb.se, !inline_history !3

bb.se:                                            ; preds = %bb.sd
  %i.idc = landingpad { ptr, i32 }
          catch ptr null
  %i.idd = extractvalue { ptr, i32 } %i.idc, 0
  call void @__clang_call_terminate(ptr %i.idd) #40
  unreachable

_ZSt8_DestroyIN4pbrt18ImageChannelValuesEEvPT_.exit.i.i.i: ; preds = %bb.sd, %.lr.ph.i.i.i1319
  %i.ide = getelementptr inbounds nuw i8, ptr %.05.i.i.i1320, i64 48 ; 2 uses
  %.not.i.i.i1322 = icmp eq ptr %i.ide, %i.icr
  br i1 %.not.i.i.i1322, label %_ZSt8_DestroyIPN4pbrt18ImageChannelValuesES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i1319, !llvm.loop !19

_ZSt8_DestroyIPN4pbrt18ImageChannelValuesES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4pbrt18ImageChannelValuesEEvPT_.exit.i.i.i
  %.pr.i1323 = load ptr, ptr %87, align 8, !tbaa !291
  br label %_ZSt8_DestroyIPN4pbrt18ImageChannelValuesES1_EvT_S3_RSaIT0_E.exit.i

end_hunk_1
begin_hunk_2_@"_ZNSt17_Function_handlerIFN4pbrt7Array2DISt6vectorINS0_17VarianceEstimatorIdEESaIS4_EEEEvEZ5errorS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEE3$_1E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation":bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef double @_ZNSt17_Function_handlerIFdvEZN4pbrt11ThreadLocalIdEC1EvEUlvE_E9_M_invokeERKSt9_Any_data(ptr noundef nonnull align 8 dereferenceable(16) %0) #2 comdat align 2 {
bb.a:
  ret double 0.000000e+00
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFdvEZN4pbrt11ThreadLocalIdEC1EvEUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN4pbrt11ThreadLocalIdEC1EvEUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIZN4pbrt11ThreadLocalIdEC1EvEUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN4pbrt11ThreadLocalIdEC1EvEUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN4pbrt11ThreadLocalIdEC1EvEUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @_ZTIZN4pbrt11ThreadLocalIdEC1EvEUlvE_, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !98
  br label %_ZNSt14_Function_base13_Base_managerIZN4pbrt11ThreadLocalIdEC1EvEUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN4pbrt11ThreadLocalIdEC1EvEUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN4pbrt11ThreadLocalIdEC1EvEUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvlEZ5errorSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE3$_2E9_M_invokeERKSt9_Any_dataOl"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 6 uses
  %i.b = alloca float, align 4                    ; 6 uses
  %i.c = alloca float, align 4                    ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"struct.pbrt::ImageAndMetadata", align 8 ; 31 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.pbrt::ColorEncoding", align 8 ; 4 uses
  %5 = alloca %"class.pbrt::Image", align 8       ; 19 uses
  %6 = alloca %"struct.pbrt::ImageChannelValues", align 8 ; 16 uses
  %7 = alloca %"struct.pbrt::ImageChannelValues", align 8 ; 10 uses
  %8 = alloca %"struct.pbrt::ImageChannelDesc", align 8 ; 12 uses
  %9 = alloca %"struct.pbrt::ImageChannelValues", align 8 ; 10 uses
  %10 = alloca %"struct.pbrt::ImageChannelDesc", align 8 ; 12 uses
  %11 = alloca %"struct.pbrt::ImageChannelValues", align 8 ; 10 uses
  %12 = alloca %"struct.pbrt::ImageChannelDesc", align 8 ; 12 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !98    ; 7 uses
  %.val2 = load i64, ptr %1, align 8, !tbaa !47   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %i.e = load ptr, ptr %.val, align 8, !tbaa !2611, !nonnull !162, !align !324
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !163
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %.val2 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !42
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !48   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !45   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  store i64 %i.k, ptr %i.d, align 8, !tbaa !47
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.a
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.m, ptr %3, align 8, !tbaa !48
  %i.n = load i64, ptr %i.d, align 8, !tbaa !47
  store i64 %i.n, ptr %i.h, align 8, !tbaa !46
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc.i.i.i.i, %bb.a
  %i.o = phi ptr [ %i.m, %.noexc.i.i.i.i ], [ %i.h, %bb.a ] ; 2 uses
  switch i64 %i.k, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.p = load i8, ptr %i.i, align 1, !tbaa !46
  store i8 %i.p, ptr %i.o, align 1, !tbaa !46
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.i, i64 %i.k, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i.i
  %i.q = load i64, ptr %i.d, align 8, !tbaa !47   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !45
  %i.s = load ptr, ptr %3, align 8, !tbaa !48
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  %i.u = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #37
  store i64 0, ptr %4, align 8, !tbaa !75
  invoke void @_ZN4pbrt5Image4ReadENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pstd3pmr21polymorphic_allocatorISt4byteEENS_13ColorEncodingE(ptr dead_on_unwind nonnull writable sret(%"struct.pbrt::ImageAndMetadata") align 8 %2, ptr nofree noundef nonnull align 8 dereferenceable(32) %3, ptr %i.u, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %4)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %3, align 8, !tbaa !48     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.h
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.e
  %i.x = load i64, ptr %i.h, align 8, !tbaa !46
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !2612, !nonnull !162, !align !324
  %.val.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !2614
  invoke fastcc void @"_ZZ5errorSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEENK3$_3clERN4pbrt5ImageE"(ptr %.val.i.i.i, ptr noundef nonnull align 8 dereferenceable(152) %2)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 332
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !111, !range !161, !noundef !162
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4pbrt8LogFatalIJRA44_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.86, i32 noundef 998, ptr noundef nonnull @.str.87, ptr noundef nonnull align 1 dereferenceable(44) @.str.315) #39
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = load ptr, ptr %3, align 8, !tbaa !48    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.h
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i.i.i: ; preds = %bb.i
  %i.ah = load i64, ptr %i.h, align 8, !tbaa !46
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i.i.i

bb.j:                                             ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.k:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !67
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !2615, !nonnull !162, !align !324
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !179
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.val2
  store i32 %i.al, ptr %i.ap, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.aq = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #37
  store i32 0, ptr %5, align 8, !tbaa !150
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.ar, align 4, !tbaa !151
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.as, align 8, !tbaa !152
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.au = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #37
  %i.av = ptrtoint ptr %i.au to i64
  store i64 %i.av, ptr %i.at, align 8, !tbaa !153
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ay = ptrtoint ptr %i.aq to i64               ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, i8 0, i64 32, i1 false)
  store i64 %i.ay, ptr %i.ax, align 8, !tbaa !153
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i8 0, i64 24, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 88
  store i64 %i.ay, ptr %i.ba, align 8, !tbaa !153
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i8 0, i64 24, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 120
  store i64 %i.ay, ptr %i.bc, align 8, !tbaa !153
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.be = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 5 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !2616, !nonnull !162, !align !324
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !138
  %sext.i.i.i = shl i64 %i.bh, 32                 ; 4 uses
  %i.bi = ashr exact i64 %sext.i.i.i, 32          ; 3 uses
  %i.bj = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #37 ; 3 uses
  %i.bk = ptrtoint ptr %i.bj to i64
  store i64 %i.bk, ptr %6, align 8, !tbaa !153
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store ptr null, ptr %i.bl, align 8, !tbaa !192
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 5 uses
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.bi, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  %13 = icmp eq i64 %sext.i.i.i, 0                ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %14, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i.i.i.i

14:                                               ; preds = %bb.k
  br i1 %13, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i, label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i.i.i.i

_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i.i.i.i: ; preds = %14
  %i.bo = ashr exact i64 %sext.i.i.i, 30
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !122
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = invoke noundef ptr %i.br(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, i64 noundef %i.bo, i64 noundef 4)
          to label %.noexc71.i.i.i unwind label %bb.u, !inline_history !18 ; 14 uses

.noexc71.i.i.i:                                   ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i.i.i.i
  %.pre.pre.i.i.i.i.i.i = load ptr, ptr %i.bl, align 8, !tbaa !192 ; 4 uses
  %.pr.i.i.i.i.i = load i64, ptr %i.bn, align 8, !tbaa !193 ; 11 uses
  %.not15.i.i.i.i.i.i = icmp eq i64 %.pr.i.i.i.i.i, 0
  br i1 %.not15.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %iter.check

iter.check:                                       ; preds = %.noexc71.i.i.i
  %i.bt = ptrtoaddr ptr %i.bs to i64
  %.not.i12.i.i.i.i.i.i = icmp eq ptr %.pre.pre.i.i.i.i.i.i, null
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bv = select i1 %.not.i12.i.i.i.i.i.i, ptr %i.bu, ptr %.pre.pre.i.i.i.i.i.i ; 12 uses
  %min.iters.check = icmp ult i64 %.pr.i.i.i.i.i, 4
  %i.bw = ptrtoaddr ptr %i.bv to i64
  %i.bx = sub i64 %i.bw, %i.bt
  %diff.check = icmp ugt i64 %i.bx, -128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check24 = icmp ult i64 %.pr.i.i.i.i.i, 32
  br i1 %min.iters.check24, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.by = and i64 %.pr.i.i.i.i.i, 28
  %n.vec = and i64 %.pr.i.i.i.i.i, -32            ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %index ; 4 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %index ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 96
  %wide.load = load <8 x float>, ptr %i.ca, align 4, !tbaa !66
  %wide.load25 = load <8 x float>, ptr %i.cb, align 4, !tbaa !66
  %wide.load26 = load <8 x float>, ptr %i.cc, align 4, !tbaa !66
  %wide.load27 = load <8 x float>, ptr %i.cd, align 4, !tbaa !66
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 96
  store <8 x float> %wide.load, ptr %i.bz, align 4, !tbaa !66
  store <8 x float> %wide.load25, ptr %i.ce, align 4, !tbaa !66
  store <8 x float> %wide.load26, ptr %i.cf, align 4, !tbaa !66
  store <8 x float> %wide.load27, ptr %i.cg, align 4, !tbaa !66
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !2587

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.pr.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.by, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !199

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec28 = and i64 %.pr.i.i.i.i.i, -4           ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index29 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next31, %vec.epilog.vector.body ] ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %index29
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %index29
  %wide.load30 = load <4 x float>, ptr %i.cj, align 4, !tbaa !66
  store <4 x float> %wide.load30, ptr %i.ci, align 4, !tbaa !66
  %index.next31 = add nuw i64 %index29, 4         ; 2 uses
  %i.ck = icmp eq i64 %index.next31, %n.vec28
  br i1 %i.ck, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2588

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n32 = icmp eq i64 %.pr.i.i.i.i.i, %n.vec28
  br i1 %cmp.n32, label %._crit_edge.i.i.i.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec28, %vec.epilog.middle.block ] ; 4 uses
  %i.cl = sub i64 %.pr.i.i.i.i.i, %indvars.iv.i.i.i.i.i.i.ph
  %xtraiter = and i64 %i.cl, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.i.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.i.i.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.i.i.i.i.i.i.prol
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.i.i.i.i.i.i.prol
  %i.co = load float, ptr %i.cn, align 4, !tbaa !66
  store float %i.co, ptr %i.cm, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !2589

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.i.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.cp = sub i64 %indvars.iv.i.i.i.i.i.i.ph, %.pr.i.i.i.i.i
  %i.cq = icmp ugt i64 %i.cp, -8
  br i1 %i.cq, label %._crit_edge.i.i.i.i.i.i, label %vec.epilog.scalar.ph

._crit_edge.i.i.i.i.i.i:                          ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.noexc71.i.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.pre.pre.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.cr = load i64, ptr %i.bm, align 8, !tbaa !194
  %i.cs = shl i64 %i.cr, 2
  %i.ct = load ptr, ptr %6, align 8, !tbaa !120   ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !122
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8
  invoke void %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr noundef nonnull %.pre.pre.i.i.i.i.i.i, i64 noundef %i.cs, i64 noundef 4)
          to label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i unwind label %bb.u, !inline_history !18

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i: ; preds = %bb.l, %._crit_edge.i.i.i.i.i.i, %14
  %.0.i.i.i.i1418.i.i.i.i.i = phi ptr [ %i.bs, %._crit_edge.i.i.i.i.i.i ], [ null, %14 ], [ %i.bs, %bb.l ] ; 2 uses
  store i64 %i.bi, ptr %i.bm, align 8, !tbaa !194
  store ptr %.0.i.i.i.i1418.i.i.i.i.i, ptr %i.bl, align 8, !tbaa !192
  br label %.lr.ph.i.i.i.i.i

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.7, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.i.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.i.i.i.i.i.i
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.i.i.i.i.i.i
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !66
  store float %i.cz, ptr %i.cx, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.next.i.i.i.i.i.i
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.next.i.i.i.i.i.i
  %i.dc = load float, ptr %i.db, align 4, !tbaa !66
  store float %i.dc, ptr %i.da, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 2 ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.next.i.i.i.i.i.i.1
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.next.i.i.i.i.i.i.1
  %i.df = load float, ptr %i.de, align 4, !tbaa !66
  store float %i.df, ptr %i.dd, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 3 ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.next.i.i.i.i.i.i.2
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.next.i.i.i.i.i.i.2
  %i.di = load float, ptr %i.dh, align 4, !tbaa !66
  store float %i.di, ptr %i.dg, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 4 ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.next.i.i.i.i.i.i.3
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.next.i.i.i.i.i.i.3
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !66
  store float %i.dl, ptr %i.dj, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.i.i.i.4 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 5 ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.next.i.i.i.i.i.i.4
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.next.i.i.i.i.i.i.4
  %i.do = load float, ptr %i.dn, align 4, !tbaa !66
  store float %i.do, ptr %i.dm, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.i.i.i.5 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 6 ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.next.i.i.i.i.i.i.5
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.next.i.i.i.i.i.i.5
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !66
  store float %i.dr, ptr %i.dp, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.i.i.i.6 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 7 ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.next.i.i.i.i.i.i.6
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.next.i.i.i.i.i.i.6
  %i.du = load float, ptr %i.dt, align 4, !tbaa !66
  store float %i.du, ptr %i.ds, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.i.i.i.7 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 8 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.7 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.7, %.pr.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.7, label %._crit_edge.i.i.i.i.i.i, label %vec.epilog.scalar.ph, !llvm.loop !2590

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i.i.i.i: ; preds = %bb.k
  br i1 %13, label %.loopexit321.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i.i.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i
  %i.dv = phi ptr [ %.0.i.i.i.i1418.i.i.i.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i ], [ null, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i.i.i.i ] ; 2 uses
  %.not.i9.i.i.i.i.i = icmp eq ptr %i.dv, null
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dx = select i1 %.not.i9.i.i.i.i.i, ptr %i.dw, ptr %i.dv
  %15 = ashr exact i64 %sext.i.i.i, 30
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dx, i8 0, i64 %15, i1 false), !tbaa !66
  br label %.loopexit321.i.i.i

.loopexit321.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i.i.i.i
  store i64 %i.bi, ptr %i.bn, align 8, !tbaa !193
  %i.dy = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !2617, !nonnull !162, !align !324 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !45
  %cond.i.i.i = icmp eq i64 %i.eb, 3
  br i1 %cond.i.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit77.thread318.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i: ; preds = %.loopexit321.i.i.i
  %i.ec = load ptr, ptr %i.dz, align 8, !tbaa !48 ; 4 uses
  %i.ed = load i16, ptr %i.ec, align 1
  %i.ee = xor i16 %i.ed, 16717
  %i.ef = getelementptr i8, ptr %i.ec, i64 2
  %i.eg = load i8, ptr %i.ef, align 1
  %i.eh = zext i8 %i.eg to i16
  %i.ei = xor i16 %i.eh, 69
  %i.ej = or i16 %i.ee, %i.ei
  %i.ek = icmp ne i16 %i.ej, 0
  %i.el = zext i1 %i.ek to i32
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit77.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !2618)
  %i.en = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #37, !noalias !2618 ; 3 uses
  %i.eo = ptrtoint ptr %i.en to i64
  store i64 %i.eo, ptr %8, align 8, !tbaa !153, !alias.scope !2618
  %i.ep = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store ptr null, ptr %i.ep, align 8, !tbaa !188, !alias.scope !2618
  %i.eq = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eq, i8 0, i64 16, i1 false), !alias.scope !2618
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !138, !noalias !2618 ; 3 uses
  %sext.i.i.i.i = shl i64 %i.es, 32               ; 3 uses
  %i.et = ashr exact i64 %sext.i.i.i.i, 32        ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %sext.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZN4pbrt13InlinedVectorIiLi4EN4pstd3pmr21polymorphic_allocatorIiEEE6resizeEm.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i.i
  %.not.i14.i.i.i.i.i = icmp ugt i64 %i.et, 4
  %i.ev = ashr exact i64 %sext.i.i.i.i, 30        ; 2 uses
  br i1 %.not.i14.i.i.i.i.i, label %bb.n, label %.lr.ph.i.i73.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.ew = load ptr, ptr %i.en, align 8, !tbaa !122, !noalias !2618
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !noalias !2618
  %i.ez = invoke noundef ptr %i.ey(ptr noundef nonnull align 8 dereferenceable(8) %i.en, i64 noundef %i.ev, i64 noundef 4)
          to label %_ZN4pstd3pmr21polymorphic_allocatorIiE17deallocate_objectIiEEvPT_m.exit.i.i.i.i.i.i unwind label %bb.o, !noalias !2618, !inline_history !16 ; 2 uses

_ZN4pstd3pmr21polymorphic_allocatorIiE17deallocate_objectIiEEvPT_m.exit.i.i.i.i.i.i: ; preds = %bb.n
  store i64 %i.et, ptr %i.eq, align 8, !tbaa !189, !alias.scope !2618
  store ptr %i.ez, ptr %i.ep, align 8, !tbaa !188, !alias.scope !2618
  %.pre336.pre.i.i.i = load i64, ptr %i.er, align 8, !tbaa !138, !noalias !2618
  br label %.lr.ph.i.i73.i.i.i

.lr.ph.i.i73.i.i.i:                               ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIiE17deallocate_objectIiEEvPT_m.exit.i.i.i.i.i.i, %bb.m
  %.pre336.i.i.i = phi i64 [ %.pre336.pre.i.i.i, %_ZN4pstd3pmr21polymorphic_allocatorIiE17deallocate_objectIiEEvPT_m.exit.i.i.i.i.i.i ], [ %i.es, %bb.m ]
  %i.fa = phi ptr [ %i.ez, %_ZN4pstd3pmr21polymorphic_allocatorIiE17deallocate_objectIiEEvPT_m.exit.i.i.i.i.i.i ], [ null, %bb.m ] ; 3 uses
  %.not.i15.i.i.i.i.i = icmp eq ptr %i.fa, null
  %i.fb = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.fc = select i1 %.not.i15.i.i.i.i.i, ptr %i.fb, ptr %i.fa
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fc, i8 0, i64 %i.ev, i1 false), !tbaa !67
  br label %_ZN4pbrt13InlinedVectorIiLi4EN4pstd3pmr21polymorphic_allocatorIiEEE6resizeEm.exit.i.i.i.i

_ZN4pbrt13InlinedVectorIiLi4EN4pstd3pmr21polymorphic_allocatorIiEEE6resizeEm.exit.i.i.i.i: ; preds = %.lr.ph.i.i73.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i.i
  %i.fd = phi i64 [ %.pre336.i.i.i, %.lr.ph.i.i73.i.i.i ], [ %i.es, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i.i ] ; 5 uses
  %i.fe = phi ptr [ %i.fa, %.lr.ph.i.i73.i.i.i ], [ null, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i.i ] ; 2 uses
  store i64 %i.et, ptr %i.eu, align 8, !tbaa !187, !alias.scope !2618
  %i.ff = trunc i64 %i.fd to i32
  %i.fg = icmp sgt i32 %i.ff, 0
  br i1 %i.fg, label %iter.check107, label %_ZNK4pbrt5Image15AllChannelsDescEv.exit.i.i.i

iter.check107:                                    ; preds = %_ZN4pbrt13InlinedVectorIiLi4EN4pstd3pmr21polymorphic_allocatorIiEEE6resizeEm.exit.i.i.i.i
  %.not.i.i.i74.i.i.i = icmp eq ptr %i.fe, null
  %i.fh = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.fi = select i1 %.not.i.i.i74.i.i.i, ptr %i.fh, ptr %i.fe ; 3 uses
  %wide.trip.count.i.i.i.i = and i64 %i.fd, 2147483647 ; 5 uses
  %min.iters.check91 = icmp samesign ult i64 %wide.trip.count.i.i.i.i, 8
  br i1 %min.iters.check91, label %vec.epilog.scalar.ph108.preheader, label %vector.main.loop.iter.check92

vector.main.loop.iter.check92:                    ; preds = %iter.check107
  %min.iters.check93 = icmp samesign ult i64 %wide.trip.count.i.i.i.i, 32
  br i1 %min.iters.check93, label %vec.epilog.ph111, label %vector.ph94

vector.ph94:                                      ; preds = %vector.main.loop.iter.check92
  %i.fj = and i64 %i.fd, 24
  %n.vec95 = and i64 %i.fd, 2147483616            ; 4 uses
  br label %vector.body96

vector.body96:                                    ; preds = %vector.body96, %vector.ph94
  %index97 = phi i64 [ 0, %vector.ph94 ], [ %index.next102, %vector.body96 ] ; 2 uses
  %vec.ind98 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph94 ], [ %vec.ind.next103, %vector.body96 ] ; 5 uses
  %step.add99 = add <8 x i32> %vec.ind98, splat (i32 8)
  %step.add.2100 = add <8 x i32> %vec.ind98, splat (i32 16)
  %step.add.3101 = add <8 x i32> %vec.ind98, splat (i32 24)
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %index97 ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 64
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 96
  store <8 x i32> %vec.ind98, ptr %i.fk, align 4, !tbaa !67
  store <8 x i32> %step.add99, ptr %i.fl, align 4, !tbaa !67
  store <8 x i32> %step.add.2100, ptr %i.fm, align 4, !tbaa !67
  store <8 x i32> %step.add.3101, ptr %i.fn, align 4, !tbaa !67
  %index.next102 = add nuw i64 %index97, 32       ; 2 uses
  %vec.ind.next103 = add <8 x i32> %vec.ind98, splat (i32 32)
  %i.fo = icmp eq i64 %index.next102, %n.vec95
  br i1 %i.fo, label %middle.block104, label %vector.body96, !llvm.loop !2593

middle.block104:                                  ; preds = %vector.body96
  %cmp.n105 = icmp eq i64 %wide.trip.count.i.i.i.i, %n.vec95
  br i1 %cmp.n105, label %_ZNK4pbrt5Image15AllChannelsDescEv.exit.i.i.i, label %vec.epilog.iter.check109

vec.epilog.iter.check109:                         ; preds = %middle.block104
  %min.epilog.iters.check110 = icmp eq i64 %i.fj, 0
  br i1 %min.epilog.iters.check110, label %vec.epilog.scalar.ph108.preheader, label %vec.epilog.ph111, !prof !278

vec.epilog.ph111:                                 ; preds = %vector.main.loop.iter.check92, %vec.epilog.iter.check109
  %vec.epilog.resume.val106 = phi i64 [ %n.vec95, %vec.epilog.iter.check109 ], [ 0, %vector.main.loop.iter.check92 ] ; 2 uses
  %n.vec112 = and i64 %i.fd, 2147483640           ; 3 uses
  %i.fp = trunc nuw nsw i64 %vec.epilog.resume.val106 to i32
  %broadcast.splatinsert113 = insertelement <8 x i32> poison, i32 %i.fp, i64 0
  %broadcast.splat114 = shufflevector <8 x i32> %broadcast.splatinsert113, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction115 = or disjoint <8 x i32> %broadcast.splat114, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body116

vec.epilog.vector.body116:                        ; preds = %vec.epilog.vector.body116, %vec.epilog.ph111
  %index117 = phi i64 [ %vec.epilog.resume.val106, %vec.epilog.ph111 ], [ %index.next119, %vec.epilog.vector.body116 ] ; 2 uses
  %vec.ind118 = phi <8 x i32> [ %induction115, %vec.epilog.ph111 ], [ %vec.ind.next120, %vec.epilog.vector.body116 ] ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %index117
  store <8 x i32> %vec.ind118, ptr %i.fq, align 4, !tbaa !67
  %index.next119 = add nuw i64 %index117, 8       ; 2 uses
  %vec.ind.next120 = add <8 x i32> %vec.ind118, splat (i32 8)
  %i.fr = icmp eq i64 %index.next119, %n.vec112
  br i1 %i.fr, label %vec.epilog.middle.block121, label %vec.epilog.vector.body116, !llvm.loop !2594

vec.epilog.middle.block121:                       ; preds = %vec.epilog.vector.body116
  %cmp.n122 = icmp eq i64 %wide.trip.count.i.i.i.i, %n.vec112
  br i1 %cmp.n122, label %_ZNK4pbrt5Image15AllChannelsDescEv.exit.i.i.i, label %vec.epilog.scalar.ph108.preheader

vec.epilog.scalar.ph108.preheader:                ; preds = %iter.check107, %vec.epilog.iter.check109, %vec.epilog.middle.block121
  %indvars.iv.i.i.i.i.ph = phi i64 [ 0, %iter.check107 ], [ %n.vec95, %vec.epilog.iter.check109 ], [ %n.vec112, %vec.epilog.middle.block121 ]
  br label %vec.epilog.scalar.ph108

bb.o:                                             ; preds = %bb.n
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

vec.epilog.scalar.ph108:                          ; preds = %vec.epilog.scalar.ph108.preheader, %vec.epilog.scalar.ph108
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %vec.epilog.scalar.ph108 ], [ %indvars.iv.i.i.i.i.ph, %vec.epilog.scalar.ph108.preheader ] ; 3 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv.i.i.i.i
  %i.fu = trunc nuw nsw i64 %indvars.iv.i.i.i.i to i32
  store i32 %i.fu, ptr %i.ft, align 4, !tbaa !67
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZNK4pbrt5Image15AllChannelsDescEv.exit.i.i.i, label %vec.epilog.scalar.ph108, !llvm.loop !2595

_ZNK4pbrt5Image15AllChannelsDescEv.exit.i.i.i:    ; preds = %vec.epilog.scalar.ph108, %middle.block104, %vec.epilog.middle.block121, %_ZN4pbrt13InlinedVectorIiLi4EN4pstd3pmr21polymorphic_allocatorIiEEE6resizeEm.exit.i.i.i.i
  %i.fv = load ptr, ptr %i.be, align 8, !tbaa !2616, !nonnull !162, !align !324
  invoke void @_ZNK4pbrt5Image3MAEERKNS_16ImageChannelDescERKS0_PS0_(ptr dead_on_unwind nonnull writable sret(%"struct.pbrt::ImageChannelValues") align 8 %7, ptr noundef nonnull align 8 dereferenceable(152) %2, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(152) %i.fv, ptr noundef nonnull %5)
          to label %bb.p unwind label %bb.v

bb.p:                                             ; preds = %_ZNK4pbrt5Image15AllChannelsDescEv.exit.i.i.i
  %i.fw = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %_ZN4pbrt18ImageChannelValuesaSEOS0_.exit.i.i.i unwind label %bb.w ; 0 uses

_ZN4pbrt18ImageChannelValuesaSEOS0_.exit.i.i.i:   ; preds = %bb.p
  %i.fx = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.fx, align 8, !tbaa !193
  %i.fy = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !192 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZN4pbrt18ImageChannelValuesaSEOS0_.exit.i.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !194
  %i.gc = shl i64 %i.gb, 2
  %i.gd = load ptr, ptr %7, align 8, !tbaa !120   ; 2 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !122
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  %i.gg = load ptr, ptr %i.gf, align 8
  invoke void %i.gg(ptr noundef nonnull align 8 dereferenceable(8) %i.gd, ptr noundef nonnull %i.fz, i64 noundef %i.gc, i64 noundef 4)
          to label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i unwind label %bb.r, !inline_history !3

bb.r:                                             ; preds = %bb.q
  %i.gh = landingpad { ptr, i32 }
          catch ptr null
  %i.gi = extractvalue { ptr, i32 } %i.gh, 0
  call void @__clang_call_terminate(ptr %i.gi) #40
  unreachable

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i: ; preds = %bb.q, %_ZN4pbrt18ImageChannelValuesaSEOS0_.exit.i.i.i
end_hunk_2
begin_hunk_3_@_ZN4pbrt6detail21stringPrintfRecursiveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJiiEEEvPS7_PKcOT_DpOT0_:bb.a
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.l
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = load ptr, ptr %7, align 8, !tbaa !48    ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.ai
  br i1 %i.ci, label %.body28, label %.body28.sink.split

.body28.sink.split:                               ; preds = %bb.o, %bb.k
  %.sink = phi ptr [ %i.ar, %bb.k ], [ %i.ch, %bb.o ]
  %.pn21.ph = phi { ptr, i32 } [ %i.aq, %bb.k ], [ %i.cg, %bb.o ]
  %i.cj = load i64, ptr %i.ai, align 8, !tbaa !46
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ck) #38
  br label %.body28

.body28:                                          ; preds = %.body28.sink.split, %bb.o, %bb.k
  %.pn21 = phi { ptr, i32 } [ %i.aq, %bb.k ], [ %i.cg, %bb.o ], [ %.pn21.ph, %.body28.sink.split ] ; 2 uses
  %i.cl = load ptr, ptr %8, align 8, !tbaa !48    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.n
  br i1 %i.cm, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %.body28, %bb.h
  %.sink76 = phi ptr [ %i.ab, %bb.h ], [ %i.cl, %.body28 ]
  %.pn21.pn.ph = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %.pn21, %.body28 ]
  %i.cn = load i64, ptr %i.n, align 8, !tbaa !46
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %.sink76, i64 noundef %i.co) #38
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.body28, %bb.h
  %.pn21.pn = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %.pn21, %.body28 ], [ %.pn21.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.p

bb.p:                                             ; preds = %.body, %bb.n
  %.pn21.pn.pn = phi { ptr, i32 } [ %.pn21.pn, %.body ], [ %i.cf, %bb.n ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6) #37
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.pn21.pn.pn.pn = phi { ptr, i32 } [ %.pn21.pn.pn, %bb.p ], [ %i.ce, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.v

bb.r:                                             ; preds = %bb.d
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !45
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %.invoke, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cs = load ptr, ptr %5, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.cs, ptr %i.a, align 8, !tbaa !195
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store ptr @_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr %i.b, align 8, !tbaa !195
  invoke void @_ZN4pbrt8LogFatalIJPKcRS2_EEEvNS_8LogLevelES2_iS2_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.240, i32 noundef 176, ptr noundef nonnull @.str.295, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #39
          to label %.noexc40 unwind label %bb.t

.noexc40:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.invoke:                                          ; preds = %bb.a, %bb.r, %bb.c
  %i.cu = phi i32 [ 257, %bb.c ], [ 266, %bb.r ], [ 229, %bb.a ]
  %i.cv = phi ptr [ @.str.242, %bb.c ], [ @.str.243, %bb.r ], [ @.str.241, %bb.a ]
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.240, i32 noundef %i.cu, ptr noundef nonnull %i.cv) #39
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.u:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.cw = load ptr, ptr %5, align 8, !tbaa !48    ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.u
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !46
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  ret void

bb.v:                                             ; preds = %bb.t, %bb.q, %bb.b
  %.pn26 = phi { ptr, i32 } [ %i.g, %bb.b ], [ %.pn21.pn.pn.pn, %bb.q ], [ %i.ct, %bb.t ]
  %i.db = load ptr, ptr %5, align 8, !tbaa !48    ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.v
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !46
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  resume { ptr, i32 } %.pn26
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvllEZ12makeequiareaSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE3$_1E9_M_invokeERKSt9_Any_dataOlSF_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.pbrt::ImageChannelValues", align 8 ; 12 uses
  %4 = alloca %"struct.pbrt::ImageChannelValues", align 8 ; 9 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !98    ; 8 uses
  %.val3 = load i64, ptr %1, align 8, !tbaa !47   ; 4 uses
  %.val4 = load i64, ptr %2, align 8, !tbaa !47   ; 2 uses
  %i.a = shl i64 %.val3, 1
  %i.b = or disjoint i64 %i.a, 1                  ; 4 uses
  %sext167.i.i.i = shl i64 %.val3, 32
  %i.c = ashr exact i64 %sext167.i.i.i, 32        ; 2 uses
  %i.d = icmp sgt i64 %.val4, %i.c
  br i1 %i.d, label %.preheader102.lr.ph.i.i.i, label %"_ZSt10__invoke_rIvRZ12makeequiareaSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE3$_1JllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit"

.preheader102.lr.ph.i.i.i:                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.r = load ptr, ptr %.val, align 8, !tbaa !2876, !nonnull !162, !align !343
  %i.s = load i32, ptr %i.r, align 4, !tbaa !67   ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.preheader102.preheader.i.i.i, label %"_ZSt10__invoke_rIvRZ12makeequiareaSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE3$_1JllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit"

.preheader102.preheader.i.i.i:                    ; preds = %.preheader102.lr.ph.i.i.i
  %i.u = lshr i64 %.val3, 31
  %i.v = xor i64 %i.u, %.val3
  %i.w = mul i64 %i.v, 9202493588570546565        ; 2 uses
  %i.x = lshr i64 %i.w, 27
  %i.y = xor i64 %i.x, %i.w
  %i.z = mul i64 %i.y, -9089707755183418291       ; 2 uses
  %i.aa = lshr i64 %i.z, 33
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = add i64 %i.ab, %i.b
  %i.ad = mul i64 %i.ac, 6364136223846793005
  %i.ae = add i64 %i.ad, %i.b
  br label %.preheader102.i.i.i

.preheader102.i.i.i:                              ; preds = %._crit_edge162.i.i.i, %.preheader102.preheader.i.i.i
  %i.af = phi i32 [ %i.s, %.preheader102.preheader.i.i.i ], [ %i.al, %._crit_edge162.i.i.i ] ; 2 uses
  %indvars.iv182.i.i.i = phi i64 [ %i.c, %.preheader102.preheader.i.i.i ], [ %indvars.iv.next183.i.i.i, %._crit_edge162.i.i.i ] ; 3 uses
  %.sroa.095.0164.i.i.i = phi i64 [ %i.ae, %.preheader102.preheader.i.i.i ], [ %.sroa.095.1.lcssa.i.i.i, %._crit_edge162.i.i.i ] ; 2 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph161.i.i.i, label %._crit_edge162.i.i.i

.lr.ph161.i.i.i:                                  ; preds = %.preheader102.i.i.i
  %i.ah = trunc nsw i64 %indvars.iv182.i.i.i to i32
  %i.ai = sitofp i32 %i.ah to float
  %i.aj = fadd float %i.ai, 5.000000e-01
  %.sroa.2.0.insert.ext.i.i.i = shl i64 %indvars.iv182.i.i.i, 32
  %i.ak = insertelement <2 x float> poison, float %i.aj, i64 0
  br label %bb.b

._crit_edge162.i.i.i:                             ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit84.i.i.i, %.preheader102.i.i.i
  %i.al = phi i32 [ %i.af, %.preheader102.i.i.i ], [ %i.or, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit84.i.i.i ]
  %.sroa.095.1.lcssa.i.i.i = phi i64 [ %.sroa.095.0164.i.i.i, %.preheader102.i.i.i ], [ %.sroa.095.2.lcssa.i.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit84.i.i.i ]
  %indvars.iv.next183.i.i.i = add i64 %indvars.iv182.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next183.i.i.i, %.val4
  br i1 %exitcond.not.i.i, label %"_ZSt10__invoke_rIvRZ12makeequiareaSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE3$_1JllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit", label %.preheader102.i.i.i, !llvm.loop !2854

bb.b:                                             ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit84.i.i.i, %.lr.ph161.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph161.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit84.i.i.i ] ; 3 uses
  %.sroa.095.1159.i.i.i = phi i64 [ %.sroa.095.0164.i.i.i, %.lr.ph161.i.i.i ], [ %.sroa.095.2.lcssa.i.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit84.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.am = load ptr, ptr %i.e, align 8, !tbaa !2877, !nonnull !162, !align !324
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !138
  %sext.i.i.i = shl i64 %i.ao, 32                 ; 4 uses
  %i.ap = ashr exact i64 %sext.i.i.i, 32          ; 4 uses
  %i.aq = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #37 ; 3 uses
  %i.ar = ptrtoint ptr %i.aq to i64
  store i64 %i.ar, ptr %3, align 8, !tbaa !153
  store ptr null, ptr %i.f, align 8, !tbaa !192
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.ap, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %5 = icmp eq i64 %sext.i.i.i, 0                 ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %6, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i.i.i.i

6:                                                ; preds = %bb.b
  br i1 %5, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i, label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i.i.i.i

_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i.i.i.i: ; preds = %6
  %i.as = ashr exact i64 %sext.i.i.i, 30
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !122
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = call noundef ptr %i.av(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, i64 noundef %i.as, i64 noundef 4), !inline_history !2855 ; 14 uses
  %.pre.pre.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !192 ; 4 uses
  %.pr.i.i.i.i.i = load i64, ptr %i.h, align 8, !tbaa !193 ; 11 uses
  %.not15.i.i.i.i.i.i = icmp eq i64 %.pr.i.i.i.i.i, 0
  br i1 %.not15.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %iter.check122

iter.check122:                                    ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i.i.i.i
  %i.ax = ptrtoaddr ptr %i.aw to i64
  %.not.i12.i.i.i.i.i.i = icmp eq ptr %.pre.pre.i.i.i.i.i.i, null
  %i.ay = select i1 %.not.i12.i.i.i.i.i.i, ptr %i.i, ptr %.pre.pre.i.i.i.i.i.i ; 12 uses
  %min.iters.check107 = icmp ult i64 %.pr.i.i.i.i.i, 4
  %i.az = ptrtoaddr ptr %i.ay to i64
  %i.ba = sub i64 %i.az, %i.ax
  %diff.check = icmp ugt i64 %i.ba, -128
  %or.cond = select i1 %min.iters.check107, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph123.preheader, label %vector.main.loop.iter.check108

vector.main.loop.iter.check108:                   ; preds = %iter.check122
  %min.iters.check109 = icmp ult i64 %.pr.i.i.i.i.i, 32
  br i1 %min.iters.check109, label %vec.epilog.ph126, label %vector.ph110

vector.ph110:                                     ; preds = %vector.main.loop.iter.check108
  %i.bb = and i64 %.pr.i.i.i.i.i, 28
  %n.vec111 = and i64 %.pr.i.i.i.i.i, -32         ; 4 uses
  br label %vector.body112

vector.body112:                                   ; preds = %vector.body112, %vector.ph110
  %index113 = phi i64 [ 0, %vector.ph110 ], [ %index.next118, %vector.body112 ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %index113 ; 4 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %index113 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 96
  %wide.load114 = load <8 x float>, ptr %i.bd, align 4, !tbaa !66
  %wide.load115 = load <8 x float>, ptr %i.be, align 4, !tbaa !66
  %wide.load116 = load <8 x float>, ptr %i.bf, align 4, !tbaa !66
  %wide.load117 = load <8 x float>, ptr %i.bg, align 4, !tbaa !66
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 96
  store <8 x float> %wide.load114, ptr %i.bc, align 4, !tbaa !66
  store <8 x float> %wide.load115, ptr %i.bh, align 4, !tbaa !66
  store <8 x float> %wide.load116, ptr %i.bi, align 4, !tbaa !66
  store <8 x float> %wide.load117, ptr %i.bj, align 4, !tbaa !66
  %index.next118 = add nuw i64 %index113, 32      ; 2 uses
  %i.bk = icmp eq i64 %index.next118, %n.vec111
  br i1 %i.bk, label %middle.block119, label %vector.body112, !llvm.loop !2856

middle.block119:                                  ; preds = %vector.body112
  %cmp.n120 = icmp eq i64 %.pr.i.i.i.i.i, %n.vec111
  br i1 %cmp.n120, label %._crit_edge.i.i.i.i.i.i, label %vec.epilog.iter.check124

vec.epilog.iter.check124:                         ; preds = %middle.block119
  %min.epilog.iters.check125 = icmp eq i64 %i.bb, 0
  br i1 %min.epilog.iters.check125, label %vec.epilog.scalar.ph123.preheader, label %vec.epilog.ph126, !prof !199

vec.epilog.ph126:                                 ; preds = %vector.main.loop.iter.check108, %vec.epilog.iter.check124
  %vec.epilog.resume.val121 = phi i64 [ %n.vec111, %vec.epilog.iter.check124 ], [ 0, %vector.main.loop.iter.check108 ]
  %n.vec127 = and i64 %.pr.i.i.i.i.i, -4          ; 3 uses
  br label %vec.epilog.vector.body128

vec.epilog.vector.body128:                        ; preds = %vec.epilog.vector.body128, %vec.epilog.ph126
  %index129 = phi i64 [ %vec.epilog.resume.val121, %vec.epilog.ph126 ], [ %index.next131, %vec.epilog.vector.body128 ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %index129
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %index129
  %wide.load130 = load <4 x float>, ptr %i.bm, align 4, !tbaa !66
  store <4 x float> %wide.load130, ptr %i.bl, align 4, !tbaa !66
  %index.next131 = add nuw i64 %index129, 4       ; 2 uses
  %i.bn = icmp eq i64 %index.next131, %n.vec127
  br i1 %i.bn, label %vec.epilog.middle.block132, label %vec.epilog.vector.body128, !llvm.loop !2857

vec.epilog.middle.block132:                       ; preds = %vec.epilog.vector.body128
  %cmp.n133 = icmp eq i64 %.pr.i.i.i.i.i, %n.vec127
  br i1 %cmp.n133, label %._crit_edge.i.i.i.i.i.i, label %vec.epilog.scalar.ph123.preheader

vec.epilog.scalar.ph123.preheader:                ; preds = %iter.check122, %vec.epilog.iter.check124, %vec.epilog.middle.block132
  %indvars.iv.i.i.i.i.i.i.ph = phi i64 [ 0, %iter.check122 ], [ %n.vec111, %vec.epilog.iter.check124 ], [ %n.vec127, %vec.epilog.middle.block132 ] ; 4 uses
  %i.bo = sub i64 %.pr.i.i.i.i.i, %indvars.iv.i.i.i.i.i.i.ph
  %xtraiter = and i64 %i.bo, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph123.prol.loopexit, label %vec.epilog.scalar.ph123.prol

vec.epilog.scalar.ph123.prol:                     ; preds = %vec.epilog.scalar.ph123.preheader, %vec.epilog.scalar.ph123.prol
  %indvars.iv.i.i.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.prol, %vec.epilog.scalar.ph123.prol ], [ %indvars.iv.i.i.i.i.i.i.ph, %vec.epilog.scalar.ph123.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph123.prol ], [ 0, %vec.epilog.scalar.ph123.preheader ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i.i.i.i.i.i.prol
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.i.i.i.i.i.i.prol
  %i.br = load float, ptr %i.bq, align 4, !tbaa !66
  store float %i.br, ptr %i.bp, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph123.prol.loopexit, label %vec.epilog.scalar.ph123.prol, !llvm.loop !2858

vec.epilog.scalar.ph123.prol.loopexit:            ; preds = %vec.epilog.scalar.ph123.prol, %vec.epilog.scalar.ph123.preheader
  %indvars.iv.i.i.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.i.i.ph, %vec.epilog.scalar.ph123.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.prol, %vec.epilog.scalar.ph123.prol ]
  %i.bs = sub i64 %indvars.iv.i.i.i.i.i.i.ph, %.pr.i.i.i.i.i
  %i.bt = icmp ugt i64 %i.bs, -8
  br i1 %i.bt, label %._crit_edge.i.i.i.i.i.i, label %vec.epilog.scalar.ph123

._crit_edge.i.i.i.i.i.i:                          ; preds = %vec.epilog.scalar.ph123.prol.loopexit, %vec.epilog.scalar.ph123, %middle.block119, %vec.epilog.middle.block132, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.pre.pre.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.bu = load i64, ptr %i.g, align 8, !tbaa !194
  %i.bv = shl i64 %i.bu, 2
  %i.bw = load ptr, ptr %3, align 8, !tbaa !120   ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !122
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef nonnull %.pre.pre.i.i.i.i.i.i, i64 noundef %i.bv, i64 noundef 4), !inline_history !2859
  br label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i: ; preds = %bb.c, %._crit_edge.i.i.i.i.i.i, %6
  %.0.i.i.i.i1418.i.i.i.i.i = phi ptr [ %i.aw, %._crit_edge.i.i.i.i.i.i ], [ %i.aw, %bb.c ], [ null, %6 ] ; 2 uses
  store i64 %i.ap, ptr %i.g, align 8, !tbaa !194
  store ptr %.0.i.i.i.i1418.i.i.i.i.i, ptr %i.f, align 8, !tbaa !192
  br label %.lr.ph.i.i.i.i.i

vec.epilog.scalar.ph123:                          ; preds = %vec.epilog.scalar.ph123.prol.loopexit, %vec.epilog.scalar.ph123
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.7, %vec.epilog.scalar.ph123 ], [ %indvars.iv.i.i.i.i.i.i.unr, %vec.epilog.scalar.ph123.prol.loopexit ] ; 10 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i.i.i.i.i.i
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.i.i.i.i.i.i
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !66
  store float %i.cc, ptr %i.ca, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.next.i.i.i.i.i.i
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.next.i.i.i.i.i.i
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !66
  store float %i.cf, ptr %i.cd, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 2 ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.next.i.i.i.i.i.i.1
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.next.i.i.i.i.i.i.1
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !66
  store float %i.ci, ptr %i.cg, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 3 ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.next.i.i.i.i.i.i.2
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.next.i.i.i.i.i.i.2
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !66
  store float %i.cl, ptr %i.cj, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 4 ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.next.i.i.i.i.i.i.3
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.next.i.i.i.i.i.i.3
  %i.co = load float, ptr %i.cn, align 4, !tbaa !66
  store float %i.co, ptr %i.cm, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.i.i.i.4 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 5 ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.next.i.i.i.i.i.i.4
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.next.i.i.i.i.i.i.4
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !66
  store float %i.cr, ptr %i.cp, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.i.i.i.5 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 6 ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.next.i.i.i.i.i.i.5
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.next.i.i.i.i.i.i.5
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !66
  store float %i.cu, ptr %i.cs, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.i.i.i.6 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 7 ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.next.i.i.i.i.i.i.6
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.next.i.i.i.i.i.i.6
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !66
  store float %i.cx, ptr %i.cv, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.i.i.i.7 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 8 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.7 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.7, %.pr.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.7, label %._crit_edge.i.i.i.i.i.i, label %vec.epilog.scalar.ph123, !llvm.loop !2860

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i.i.i.i: ; preds = %bb.b
  br i1 %5, label %_ZN4pbrt18ImageChannelValuesC2Emf.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i.i.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i
  %i.cy = phi ptr [ %.0.i.i.i.i1418.i.i.i.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i.i.i.i ], [ null, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i.i.i.i ] ; 2 uses
  %.not.i9.i.i.i.i.i = icmp eq ptr %i.cy, null
  %i.cz = select i1 %.not.i9.i.i.i.i.i, ptr %i.i, ptr %i.cy
  %7 = ashr exact i64 %sext.i.i.i, 30
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cz, i8 0, i64 %7, i1 false), !tbaa !66
  br label %_ZN4pbrt18ImageChannelValuesC2Emf.exit.i.i.i

_ZN4pbrt18ImageChannelValuesC2Emf.exit.i.i.i:     ; preds = %.lr.ph.i.i.i.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i.i.i.i
  store i64 %i.ap, ptr %i.h, align 8, !tbaa !193
  %i.da = load ptr, ptr %i.j, align 8, !tbaa !2878, !nonnull !162, !align !343
  %i.db = load i32, ptr %i.da, align 4, !tbaa !67 ; 2 uses
  %i.dc = icmp sgt i32 %i.db, 0
  br i1 %i.dc, label %.preheader100.preheader.i.i.i, label %.preheader101.i.i.i

.preheader100.preheader.i.i.i:                    ; preds = %_ZN4pbrt18ImageChannelValuesC2Emf.exit.i.i.i
  %i.dd = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  %i.de = uitofp nneg i32 %i.dd to float
  %i.df = fadd float %i.de, 5.000000e-01
  %i.dg = insertelement <2 x float> %i.ak, float %i.df, i64 1
  br label %.preheader100.i.i.i

.preheader101.loopexit.i.i.i:                     ; preds = %._crit_edge148.i.i.i
  %.pre185.i.i.i = load i64, ptr %i.h, align 8, !tbaa !193
  br label %.preheader101.i.i.i

.preheader101.i.i.i:                              ; preds = %.preheader101.loopexit.i.i.i, %_ZN4pbrt18ImageChannelValuesC2Emf.exit.i.i.i
  %i.dh = phi i64 [ %i.ap, %_ZN4pbrt18ImageChannelValuesC2Emf.exit.i.i.i ], [ %.pre185.i.i.i, %.preheader101.loopexit.i.i.i ] ; 9 uses
  %.sroa.095.2.lcssa.i.i.i = phi i64 [ %.sroa.095.1159.i.i.i, %_ZN4pbrt18ImageChannelValuesC2Emf.exit.i.i.i ], [ %.sroa.095.3.lcssa.i.i.i, %.preheader101.loopexit.i.i.i ] ; 2 uses
  %.057.lcssa.i.i.i = phi float [ 0.000000e+00, %_ZN4pbrt18ImageChannelValuesC2Emf.exit.i.i.i ], [ %.1.lcssa.i.i.i, %.preheader101.loopexit.i.i.i ] ; 3 uses
  %.not168.i.i.i = icmp eq i64 %i.dh, 0
  br i1 %.not168.i.i.i, label %._crit_edge158.i.i.i, label %iter.check

iter.check:                                       ; preds = %.preheader101.i.i.i
  %i.di = load ptr, ptr %i.f, align 8, !tbaa !192 ; 2 uses
  %.not.i.i81.i.i.i = icmp eq ptr %i.di, null
  %i.dj = select i1 %.not.i.i81.i.i.i, ptr %i.i, ptr %i.di ; 3 uses
  %min.iters.check = icmp ult i64 %i.dh, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check57 = icmp ult i64 %i.dh, 32
  br i1 %min.iters.check57, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dk = and i64 %i.dh, 28
  %n.vec = and i64 %i.dh, -32                     ; 4 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %.057.lcssa.i.i.i, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %index ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 32 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 64 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 96 ; 2 uses
  %wide.load = load <8 x float>, ptr %i.dl, align 4, !tbaa !66
  %wide.load58 = load <8 x float>, ptr %i.dm, align 4, !tbaa !66
  %wide.load59 = load <8 x float>, ptr %i.dn, align 4, !tbaa !66
  %wide.load60 = load <8 x float>, ptr %i.do, align 4, !tbaa !66
  %i.dp = fdiv <8 x float> %wide.load, %broadcast.splat ; 2 uses
  %i.dq = fdiv <8 x float> %wide.load58, %broadcast.splat ; 2 uses
  %i.dr = fdiv <8 x float> %wide.load59, %broadcast.splat ; 2 uses
  %i.ds = fdiv <8 x float> %wide.load60, %broadcast.splat ; 2 uses
  %i.dt = fcmp ogt <8 x float> %i.dp, zeroinitializer
  %i.du = fcmp ogt <8 x float> %i.dq, zeroinitializer
  %i.dv = fcmp ogt <8 x float> %i.dr, zeroinitializer
  %i.dw = fcmp ogt <8 x float> %i.ds, zeroinitializer
  %i.dx = select <8 x i1> %i.dt, <8 x float> %i.dp, <8 x float> zeroinitializer
  %i.dy = select <8 x i1> %i.du, <8 x float> %i.dq, <8 x float> zeroinitializer
  %i.dz = select <8 x i1> %i.dv, <8 x float> %i.dr, <8 x float> zeroinitializer
  %i.ea = select <8 x i1> %i.dw, <8 x float> %i.ds, <8 x float> zeroinitializer
  store <8 x float> %i.dx, ptr %i.dl, align 4, !tbaa !66
  store <8 x float> %i.dy, ptr %i.dm, align 4, !tbaa !66
  store <8 x float> %i.dz, ptr %i.dn, align 4, !tbaa !66
  store <8 x float> %i.ea, ptr %i.do, align 4, !tbaa !66
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.eb = icmp eq i64 %index.next, %n.vec
  br i1 %i.eb, label %middle.block, label %vector.body, !llvm.loop !2861

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dh, %n.vec
  br i1 %cmp.n, label %._crit_edge158.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dk, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !199

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec61 = and i64 %i.dh, -4                    ; 3 uses
  %broadcast.splatinsert62 = insertelement <4 x float> poison, float %.057.lcssa.i.i.i, i64 0
  %broadcast.splat63 = shufflevector <4 x float> %broadcast.splatinsert62, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index64 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next66, %vec.epilog.vector.body ] ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %index64 ; 2 uses
  %wide.load65 = load <4 x float>, ptr %i.ec, align 4, !tbaa !66
  %i.ed = fdiv <4 x float> %wide.load65, %broadcast.splat63 ; 2 uses
  %i.ee = fcmp ogt <4 x float> %i.ed, zeroinitializer
  %i.ef = select <4 x i1> %i.ee, <4 x float> %i.ed, <4 x float> zeroinitializer
  store <4 x float> %i.ef, ptr %i.ec, align 4, !tbaa !66
  %index.next66 = add nuw i64 %index64, 4         ; 2 uses
  %i.eg = icmp eq i64 %index.next66, %n.vec61
  br i1 %i.eg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2862

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n67 = icmp eq i64 %i.dh, %n.vec61
  br i1 %cmp.n67, label %._crit_edge158.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0156.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec61, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.preheader100.i.i.i:                              ; preds = %._crit_edge148.i.i.i, %.preheader100.preheader.i.i.i
  %i.eh = phi i32 [ %i.el, %._crit_edge148.i.i.i ], [ %i.db, %.preheader100.preheader.i.i.i ] ; 3 uses
  %.057152.i.i.i = phi float [ %.1.lcssa.i.i.i, %._crit_edge148.i.i.i ], [ 0.000000e+00, %.preheader100.preheader.i.i.i ] ; 2 uses
  %.058151.i.i.i = phi i32 [ %i.em, %._crit_edge148.i.i.i ], [ 0, %.preheader100.preheader.i.i.i ] ; 2 uses
  %.sroa.095.2150.i.i.i = phi i64 [ %.sroa.095.3.lcssa.i.i.i, %._crit_edge148.i.i.i ], [ %.sroa.095.1159.i.i.i, %.preheader100.preheader.i.i.i ] ; 2 uses
  %i.ei = icmp sgt i32 %i.eh, 0
  br i1 %i.ei, label %.lr.ph147.i.i.i, label %._crit_edge148.i.i.i

.lr.ph147.i.i.i:                                  ; preds = %.preheader100.i.i.i
  %i.ej = uitofp nneg i32 %.058151.i.i.i to float
  %i.ek = insertelement <2 x float> poison, float %i.ej, i64 0
  br label %bb.d

._crit_edge148.i.i.i:                             ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i, %.preheader100.i.i.i
  %i.el = phi i32 [ %i.eh, %.preheader100.i.i.i ], [ %i.mu, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i ] ; 2 uses
  %.sroa.095.3.lcssa.i.i.i = phi i64 [ %.sroa.095.2150.i.i.i, %.preheader100.i.i.i ], [ %i.es, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i ] ; 2 uses
  %.1.lcssa.i.i.i = phi float [ %.057152.i.i.i, %.preheader100.i.i.i ], [ %i.mj, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i ] ; 2 uses
  %i.em = add nuw nsw i32 %.058151.i.i.i, 1       ; 2 uses
  %i.en = icmp slt i32 %i.em, %i.el
  br i1 %i.en, label %.preheader100.i.i.i, label %.preheader101.loopexit.i.i.i, !llvm.loop !2863

bb.d:                                             ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i, %.lr.ph147.i.i.i
  %i.eo = phi i32 [ %i.eh, %.lr.ph147.i.i.i ], [ %i.mu, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i ]
  %.1146.i.i.i = phi float [ %.057152.i.i.i, %.lr.ph147.i.i.i ], [ %i.mj, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i ]
  %.059145.i.i.i = phi i32 [ 0, %.lr.ph147.i.i.i ], [ %i.ms, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i ] ; 2 uses
  %.sroa.095.3144.i.i.i = phi i64 [ %.sroa.095.2150.i.i.i, %.lr.ph147.i.i.i ], [ %i.es, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i ] ; 2 uses
  %i.ep = mul i64 %.sroa.095.3144.i.i.i, 6364136223846793005
  %i.eq = add i64 %i.ep, %i.b                     ; 2 uses
  %i.er = mul i64 %i.eq, 6364136223846793005
  %i.es = add i64 %i.er, %i.b                     ; 2 uses
  %i.et = insertelement <2 x i64> poison, i64 %i.eq, i64 0
  %i.eu = insertelement <2 x i64> %i.et, i64 %.sroa.095.3144.i.i.i, i64 1 ; 3 uses
  %i.ev = lshr <2 x i64> %i.eu, splat (i64 45)
  %i.ew = lshr <2 x i64> %i.eu, splat (i64 27)
  %i.ex = xor <2 x i64> %i.ev, %i.ew
  %i.ey = trunc <2 x i64> %i.ex to <2 x i32>      ; 2 uses
  %i.ez = lshr <2 x i64> %i.eu, splat (i64 59)
  %i.fa = trunc nuw nsw <2 x i64> %i.ez to <2 x i32>
  %i.fb = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.ey, <2 x i32> %i.ey, <2 x i32> %i.fa)
  %i.fc = uitofp <2 x i32> %i.fb to <2 x float>
  %i.fd = fmul nnan <2 x float> %i.fc, splat (float f0x2F800000) ; 2 uses
  %i.fe = fcmp olt <2 x float> %i.fd, splat (float f0x3F7FFFFF)
  %i.ff = uitofp nneg i32 %.059145.i.i.i to float
  %i.fg = sitofp i32 %i.eo to float
  %i.fh = select <2 x i1> %i.fe, <2 x float> %i.fd, <2 x float> splat (float f0x3F7FFFFF)
  %i.fi = insertelement <2 x float> %i.ek, float %i.ff, i64 1
  %i.fj = fadd <2 x float> %i.fh, %i.fi
  %i.fk = insertelement <2 x float> poison, float %i.fg, i64 0
  %i.fl = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fm = fdiv <2 x float> %i.fj, %i.fl           ; 3 uses
  %i.fn = load ptr, ptr %i.k, align 8, !tbaa !2879, !nonnull !162, !align !324 ; 11 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 176
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !117
  %sext.i.i.i.i.i = shl i64 %i.fp, 32
  %i.fq = ashr exact i64 %sext.i.i.i.i.i, 32      ; 2 uses
  %i.fr = add nsw i64 %i.fq, -2                   ; 2 uses
  %i.fs = icmp sgt i64 %i.fq, 2
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fn, i64 160
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !118 ; 2 uses
  br i1 %i.fs, label %.lr.ph.i.i.i87.i.i.i.preheader, label %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i.i.i.i.i

.lr.ph.i.i.i87.i.i.i.preheader:                   ; preds = %bb.d
  %i.fv = extractelement <2 x float> %i.fm, i64 0
  br label %.lr.ph.i.i.i87.i.i.i

.lr.ph.i.i.i87.i.i.i:                             ; preds = %.lr.ph.i.i.i87.i.i.i.preheader, %.lr.ph.i.i.i87.i.i.i
  %.017.i.i.i.i.i.i = phi i64 [ %.fr.i.i.i.i.i.i, %.lr.ph.i.i.i87.i.i.i ], [ 1, %.lr.ph.i.i.i87.i.i.i.preheader ] ; 2 uses
  %.01516.i.i.i.i.i.i = phi i64 [ %i.gf, %.lr.ph.i.i.i87.i.i.i ], [ %i.fr, %.lr.ph.i.i.i87.i.i.i.preheader ] ; 2 uses
  %i.fw = lshr i64 %.01516.i.i.i.i.i.i, 1         ; 3 uses
  %i.fx = add i64 %i.fw, %.017.i.i.i.i.i.i        ; 2 uses
  %sext.i.i.i.i.i.i = shl i64 %i.fx, 32
  %i.fy = ashr exact i64 %sext.i.i.i.i.i.i, 30
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fy
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !66
  %i.gb = fcmp ole float %i.ga, %i.fv             ; 2 uses
  %i.gc = add i64 %i.fx, 1
  %i.gd = select i1 %i.gb, i64 %i.gc, i64 %.017.i.i.i.i.i.i
  %.fr.i.i.i.i.i.i = freeze i64 %i.gd             ; 3 uses
  %.neg.i.i.i.i.i.i = xor i64 %i.fw, -1
  %i.ge = add nsw i64 %.01516.i.i.i.i.i.i, %.neg.i.i.i.i.i.i
  %i.gf = select i1 %i.gb, i64 %i.ge, i64 %i.fw   ; 2 uses
  %i.gg = icmp sgt i64 %i.gf, 0
  br i1 %i.gg, label %.lr.ph.i.i.i87.i.i.i, label %._crit_edge.i.i.i88.i.i.i, !llvm.loop !2864

._crit_edge.i.i.i88.i.i.i:                        ; preds = %.lr.ph.i.i.i87.i.i.i
  %i.gh = add nsw i64 %.fr.i.i.i.i.i.i, -1
  %..i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.gh, i64 %i.fr)
  %.inv.i.i.i.i.i.i = icmp sgt i64 %.fr.i.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i.i = select i1 %.inv.i.i.i.i.i.i, i64 %..i.i.i.i.i.i.i, i64 0
  br label %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i.i.i.i.i
end_hunk_3
