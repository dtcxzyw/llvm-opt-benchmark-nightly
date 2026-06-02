inline.NumInlined: 1076
inline.NumDeleted: 393
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a

.outer.outer1756:                                 ; preds = %.outer.outer1756.backedge, %.outer.outer1747
  %.052.ph.ph1757 = phi i8 [ %.052.ph.ph1749, %.outer.outer1747 ], [ 1, %.outer.outer1756.backedge ] ; 5 uses
  %.051.ph.ph1758 = phi i32 [ %.051.ph.ph1750, %.outer.outer1747 ], [ %i.bv, %.outer.outer1756.backedge ]
  %.049.ph.ph1759 = phi i1 [ %.049.ph.ph1751, %.outer.outer1747 ], [ %.049.ph684, %.outer.outer1756.backedge ]
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %.outer.outer1756
  %.051.ph = phi i32 [ %.051.ph.ph1758, %.outer.outer1756 ], [ %i.bv, %.outer.backedge ]
  %.049.ph = phi i1 [ %.049.ph.ph1759, %.outer.outer1756 ], [ %.049.ph684, %.outer.backedge ]
  br label %.outer682

.outer682:                                        ; preds = %.outer, %bb.i
  %.051.ph683 = phi i32 [ %.051.ph, %.outer ], [ %i.bv, %bb.i ]
  %.049.ph684 = phi i1 [ %.049.ph, %.outer ], [ false, %bb.i ] ; 5 uses
  br label %bb.f

bb.f:                                             ; preds = %.outer682, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189
  %.051 = phi i32 [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189 ], [ %.051.ph683, %.outer682 ]
  %i.bu = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_58nextlineERSiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.g unwind label %.loopexit674.loopexit

bb.g:                                             ; preds = %bb.f
  br i1 %i.bu, label %bb.h, label %bb.em

bb.h:                                             ; preds = %bb.g
  %i.bv = add nsw i32 %.051, 1                    ; 15 uses
  %i.bw = load i64, ptr %i.ai, align 8, !tbaa !13 ; 5 uses
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %._crit_edge.i.i177.thread, label %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit

._crit_edge.i.i177.thread:                        ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  store ptr %i.aj, ptr %13, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #23
  store i64 0, ptr %i.q, align 8, !tbaa !38
  br label %bb.o

_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit: ; preds = %bb.h
  %i.by = load ptr, ptr %6, align 8, !tbaa !26    ; 3 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !16
  %i.ca = icmp eq i8 %i.bz, 35
  br i1 %i.ca, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit
  br i1 %.049.ph684, label %.noexc.i, label %.outer682, !llvm.loop !39

.noexc.i:                                         ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.cb, ptr %9, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #23
  store i64 34, ptr %i.r, align 8, !tbaa !38
  %i.cc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.r, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.cc, ptr %9, align 8, !tbaa !26
  %i.cd = load i64, ptr %i.r, align 8, !tbaa !38  ; 3 uses
  store i64 %i.cd, ptr %i.cb, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) %i.cc, ptr noundef nonnull align 1 dereferenceable(34) @.str.4, i64 34, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !13
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cd
  store i8 0, ptr %i.cf, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #23
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat17ThrowErrorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_iS9_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.unreachable671 unwind label %bb.k

.unreachable671:                                  ; preds = %.noexc
  unreachable

.loopexit674.loopexit:                            ; preds = %bb.f
  %lpad.loopexit679 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit674

.loopexit674.loopexit.split-lp.loopexit.loopexit.loopexit: ; preds = %bb.ch, %bb.cj, %bb.cv, %bb.cx
  %lpad.loopexit1761 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit674

.loopexit674.loopexit.split-lp.loopexit.loopexit.loopexit.split-lp: ; preds = %bb.br, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i359
  %lpad.loopexit.split-lp1762 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit674

.loopexit674.loopexit.split-lp.loopexit.loopexit.split-lp: ; preds = %bb.aq
  %lpad.loopexit.split-lp1754 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit674

.loopexit674.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i
  %lpad.loopexit1765 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit674

.loopexit674.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.loopexit1746
  %lpad.loopexit.split-lp1766 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit674

.loopexit.split-lp675:                            ; preds = %.invoke
  %lpad.loopexit.split-lp677 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit674

bb.j:                                             ; preds = %.noexc.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

bb.k:                                             ; preds = %.noexc
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ci = load ptr, ptr %9, align 8, !tbaa !26    ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.cb
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174: ; preds = %bb.k
  %i.ck = load i64, ptr %i.cb, align 8, !tbaa !16
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174, %bb.j
  %.pn113 = phi { ptr, i32 } [ %i.cg, %bb.j ], [ %i.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174 ], [ %i.ch, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %.loopexit674

bb.l:                                             ; preds = %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  store ptr %i.aj, ptr %13, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #23
  store i64 %i.bw, ptr %i.q, align 8, !tbaa !38
  %i.cm = icmp ugt i64 %i.bw, 15
  br i1 %i.cm, label %.noexc.i178, label %._crit_edge.i.i177

.noexc.i178:                                      ; preds = %bb.l
  %i.cn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef 0)
          to label %.noexc179 unwind label %bb.v  ; 2 uses

.noexc179:                                        ; preds = %.noexc.i178
  store ptr %i.cn, ptr %13, align 8, !tbaa !26
  %i.co = load i64, ptr %i.q, align 8, !tbaa !38
  store i64 %i.co, ptr %i.aj, align 8, !tbaa !16
  br label %._crit_edge.i.i177

._crit_edge.i.i177:                               ; preds = %.noexc179, %bb.l
  %i.cp = phi ptr [ %i.cn, %.noexc179 ], [ %i.aj, %bb.l ] ; 2 uses
  %cond = icmp eq i64 %i.bw, 1
  br i1 %cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i177
  %i.cq = load i8, ptr %i.by, align 1, !tbaa !16
  store i8 %i.cq, ptr %i.cp, align 1, !tbaa !16
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i177
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cp, ptr nonnull align 1 %i.by, i64 %i.bw, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i177.thread
  %i.cr = load i64, ptr %i.q, align 8, !tbaa !38  ; 2 uses
  store i64 %i.cr, ptr %i.ak, align 8, !tbaa !13
  %i.cs = load ptr, ptr %13, align 8, !tbaa !26
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cr
  store i8 0, ptr %i.ct, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #23
  invoke void @_ZN11StringUtils4TrimENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull %13)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !41)
  %i.cu = load ptr, ptr %12, align 8, !tbaa !26, !noalias !41 ; 7 uses
  %i.cv = load i64, ptr %i.al, align 8, !tbaa !13, !noalias !41 ; 9 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cv
  %.not6.i.i = icmp samesign eq i64 %i.cv, 0
  br i1 %.not6.i.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i, label %iter.check1710

iter.check1710:                                   ; preds = %bb.p
  %min.iters.check1695 = icmp ult i64 %i.cv, 8
  br i1 %min.iters.check1695, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check1696

vector.main.loop.iter.check1696:                  ; preds = %iter.check1710
  %min.iters.check1697 = icmp ult i64 %i.cv, 32
  br i1 %min.iters.check1697, label %vec.epilog.ph1714, label %vector.ph1698

vector.ph1698:                                    ; preds = %vector.main.loop.iter.check1696
  %n.mod.vf1699 = and i64 %i.cv, 24
  %n.vec1700 = and i64 %i.cv, -32                 ; 4 uses
  %i.cx = getelementptr i8, ptr %i.cu, i64 %n.vec1700
  br label %vector.body1701

vector.body1701:                                  ; preds = %vector.body1701, %vector.ph1698
  %index1702 = phi i64 [ 0, %vector.ph1698 ], [ %index.next1706, %vector.body1701 ] ; 2 uses
  %next.gep1703 = getelementptr i8, ptr %i.cu, i64 %index1702 ; 3 uses
  %i.cy = getelementptr i8, ptr %next.gep1703, i64 16 ; 2 uses
  %wide.load1704 = load <16 x i8>, ptr %next.gep1703, align 1, !tbaa !16, !noalias !41 ; 3 uses
  %wide.load1705 = load <16 x i8>, ptr %i.cy, align 1, !tbaa !16, !noalias !41 ; 3 uses
  %i.cz = add <16 x i8> %wide.load1704, splat (i8 -65)
  %i.da = add <16 x i8> %wide.load1705, splat (i8 -65)
  %i.db = icmp ult <16 x i8> %i.cz, splat (i8 26)
  %i.dc = icmp ult <16 x i8> %i.da, splat (i8 26)
  %41 = or disjoint <16 x i8> %wide.load1704, splat (i8 32)
  %i.dd = or disjoint <16 x i8> %wide.load1705, splat (i8 32)
  %i.de = select <16 x i1> %i.db, <16 x i8> %41, <16 x i8> %wide.load1704
  %42 = select <16 x i1> %i.dc, <16 x i8> %i.dd, <16 x i8> %wide.load1705
  store <16 x i8> %i.de, ptr %next.gep1703, align 1, !tbaa !16, !noalias !41
  store <16 x i8> %42, ptr %i.cy, align 1, !tbaa !16, !noalias !41
  %index.next1706 = add nuw i64 %index1702, 32    ; 2 uses
  %i.df = icmp eq i64 %index.next1706, %n.vec1700
  br i1 %i.df, label %middle.block1707, label %vector.body1701, !llvm.loop !44

middle.block1707:                                 ; preds = %vector.body1701
  %cmp.n1708 = icmp eq i64 %i.cv, %n.vec1700
  br i1 %cmp.n1708, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %vec.epilog.iter.check1712

vec.epilog.iter.check1712:                        ; preds = %middle.block1707
  %min.epilog.iters.check1713 = icmp eq i64 %n.mod.vf1699, 0
  br i1 %min.epilog.iters.check1713, label %.lr.ph.i.i.preheader, label %vec.epilog.ph1714, !prof !47

vec.epilog.ph1714:                                ; preds = %vector.main.loop.iter.check1696, %vec.epilog.iter.check1712
  %vec.epilog.resume.val1709 = phi i64 [ %n.vec1700, %vec.epilog.iter.check1712 ], [ 0, %vector.main.loop.iter.check1696 ]
  %n.vec1716 = and i64 %i.cv, -8                  ; 3 uses
  %i.dg = getelementptr i8, ptr %i.cu, i64 %n.vec1716
  br label %vec.epilog.vector.body1717

vec.epilog.vector.body1717:                       ; preds = %vec.epilog.vector.body1717, %vec.epilog.ph1714
  %index1718 = phi i64 [ %vec.epilog.resume.val1709, %vec.epilog.ph1714 ], [ %index.next1721, %vec.epilog.vector.body1717 ] ; 2 uses
  %next.gep1719 = getelementptr i8, ptr %i.cu, i64 %index1718 ; 2 uses
  %wide.load1720 = load <8 x i8>, ptr %next.gep1719, align 1, !tbaa !16, !noalias !41 ; 3 uses
  %i.dh = add <8 x i8> %wide.load1720, splat (i8 -65)
  %i.di = icmp ult <8 x i8> %i.dh, splat (i8 26)
  %43 = or disjoint <8 x i8> %wide.load1720, splat (i8 32)
  %44 = select <8 x i1> %i.di, <8 x i8> %43, <8 x i8> %wide.load1720
  store <8 x i8> %44, ptr %next.gep1719, align 1, !tbaa !16, !noalias !41
  %index.next1721 = add nuw i64 %index1718, 8     ; 2 uses
  %i.dj = icmp eq i64 %index.next1721, %n.vec1716
  br i1 %i.dj, label %vec.epilog.middle.block1722, label %vec.epilog.vector.body1717, !llvm.loop !48

vec.epilog.middle.block1722:                      ; preds = %vec.epilog.vector.body1717
  %cmp.n1723 = icmp eq i64 %i.cv, %n.vec1716
  br i1 %cmp.n1723, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check1710, %vec.epilog.iter.check1712, %vec.epilog.middle.block1722
  %.sroa.0.08.i.i.ph = phi ptr [ %i.cu, %iter.check1710 ], [ %i.cx, %vec.epilog.iter.check1712 ], [ %i.dg, %vec.epilog.middle.block1722 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %i.dn, %.lr.ph.i.i ], [ %.sroa.0.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.dk = load i8, ptr %.sroa.0.08.i.i, align 1, !tbaa !16, !noalias !41 ; 3 uses
  %i.dl = add i8 %i.dk, -65
  %or.cond.i.i.i.i = icmp ult i8 %i.dl, 26
  %i.dm = or disjoint i8 %i.dk, 32
  %.0.i.i.i.i = select i1 %or.cond.i.i.i.i, i8 %i.dm, i8 %i.dk
  store i8 %.0.i.i.i.i, ptr %.sroa.0.08.i.i, align 1, !tbaa !16, !noalias !41
  %i.dn = getelementptr i8, ptr %.sroa.0.08.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dn, %i.cw
  br i1 %.not.i.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !49

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %vec.epilog.middle.block1722, %middle.block1707
  %.pre.i = load ptr, ptr %12, align 8, !tbaa !26, !noalias !41
  br label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, %bb.p
  %i.do = phi ptr [ %.pre.i, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i ], [ %i.cu, %bb.p ] ; 2 uses
  store ptr %i.am, ptr %11, align 8, !tbaa !9, !alias.scope !41
  %i.dp = icmp eq ptr %i.do, %i.an
  br i1 %i.dp, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180

bb.q:                                             ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i
  %i.dq = load i64, ptr %i.al, align 8, !tbaa !13, !noalias !41 ; 3 uses
  %i.dr = icmp ult i64 %i.dq, 16
  call void @llvm.assume(i1 %i.dr)
  %i.ds = add nuw nsw i64 %i.dq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.ds, i1 false)
  br label %bb.r

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i
  store ptr %i.do, ptr %11, align 8, !tbaa !26, !alias.scope !41
  %i.dt = load i64, ptr %i.an, align 8, !tbaa !16, !noalias !41
  store i64 %i.dt, ptr %i.am, align 8, !tbaa !16, !alias.scope !41
  %.pre4.i = load i64, ptr %i.al, align 8, !tbaa !13, !noalias !41
  br label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180, %bb.q
  %i.du = phi i64 [ %i.dq, %bb.q ], [ %.pre4.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180 ]
  store i64 %i.du, ptr %i.ao, align 8, !tbaa !13, !alias.scope !41
  store ptr %i.an, ptr %12, align 8, !tbaa !26, !noalias !41
  store i64 0, ptr %i.al, align 8, !tbaa !13, !noalias !41
  store i8 0, ptr %i.an, align 8, !tbaa !16, !noalias !41
  invoke void @_ZN11StringUtils18SplitByWhiteSpacesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.9") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.s unwind label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.dv = load ptr, ptr %7, align 16, !tbaa !50   ; 5 uses
  %i.dw = load ptr, ptr %i.ap, align 8, !tbaa !53 ; 2 uses
  %i.dx = load ptr, ptr %i.aq, align 16, !tbaa !54
  %i.dy = load <2 x ptr>, ptr %10, align 16, !tbaa !55
  store <2 x ptr> %i.dy, ptr %7, align 16, !tbaa !55
  %i.dz = load ptr, ptr %i.as, align 16, !tbaa !54
  store ptr %i.dz, ptr %i.aq, align 16, !tbaa !54
  %.not4.i.i.i.i.i = icmp eq ptr %i.dv, %i.dw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.s, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ef, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.dv, %bb.s ] ; 3 uses
  %i.ea = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !26 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !16
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ef, %i.dw
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !56

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, %bb.s
  %.not.i.i1.i.i.i = icmp eq ptr %i.dv, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit, label %bb.t

bb.t:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.eg = ptrtoint ptr %i.dx to i64
  %i.eh = ptrtoint ptr %i.dv to i64
  %i.ei = sub i64 %i.eg, %i.eh
  call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.ei) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.t
  %i.ej = load ptr, ptr %10, align 16, !tbaa !50  ; 3 uses
  %i.ek = load ptr, ptr %i.ar, align 8, !tbaa !53 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ej, %i.ek
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.eq, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.ej, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit ] ; 3 uses
  %i.el = load ptr, ptr %.05.i.i.i, align 8, !tbaa !26 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.eo = load i64, ptr %i.em, align 8, !tbaa !16
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.ep) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.eq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.eq, %i.ek
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !56

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %10, align 16, !tbaa !50
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit
  %i.er = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ej, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.er, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.es = load ptr, ptr %i.as, align 16, !tbaa !54
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = ptrtoint ptr %i.er to i64
  %i.ev = sub i64 %i.et, %i.eu
  call void @_ZdlPvm(ptr noundef nonnull %i.er, i64 noundef %i.ev) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.u
  %i.ew = load ptr, ptr %11, align 8, !tbaa !26   ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.am
  br i1 %i.ex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.ey = load i64, ptr %i.am, align 8, !tbaa !16
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ez) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181
  %i.fa = load ptr, ptr %12, align 8, !tbaa !26   ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.an
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183
  %i.fc = load i64, ptr %i.an, align 8, !tbaa !16
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184
  %i.fe = load ptr, ptr %13, align 8, !tbaa !26   ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.aj
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186
  %i.fg = load i64, ptr %i.aj, align 8, !tbaa !16
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.fi = load ptr, ptr %7, align 16, !tbaa !55   ; 3 uses
  %i.fj = load ptr, ptr %i.ap, align 8, !tbaa !55
  %i.fk = icmp eq ptr %i.fi, %i.fj
  br i1 %i.fk, label %bb.f, label %bb.y, !llvm.loop !39

bb.v:                                             ; preds = %.noexc.i178
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198

bb.w:                                             ; preds = %bb.o
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195

bb.x:                                             ; preds = %bb.r
  %i.fn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fo = load ptr, ptr %11, align 8, !tbaa !26   ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.am
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190: ; preds = %bb.x
  %i.fq = load i64, ptr %i.am, align 8, !tbaa !16
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190
  %i.fs = load ptr, ptr %12, align 8, !tbaa !26   ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.an
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192
  %i.fu = load i64, ptr %i.an, align 8, !tbaa !16
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fv) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193, %bb.w
  %.pn115.pn = phi { ptr, i32 } [ %i.fm, %bb.w ], [ %i.fn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193 ], [ %i.fn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ] ; 2 uses
  %i.fw = load ptr, ptr %13, align 8, !tbaa !26   ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.aj
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195
  %i.fy = load i64, ptr %i.aj, align 8, !tbaa !16
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.fz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196, %bb.v
  %.pn115.pn.pn = phi { ptr, i32 } [ %i.fl, %bb.v ], [ %.pn115.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196 ], [ %.pn115.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %.loopexit674

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store ptr %i.at, ptr %15, align 8, !tbaa !9
  %i.ga = load ptr, ptr %i.fi, align 8, !tbaa !26 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #23
  store i64 %i.gc, ptr %i.p, align 8, !tbaa !38
  %i.gd = icmp ugt i64 %i.gc, 15
  br i1 %i.gd, label %.noexc.i200, label %._crit_edge.i.i199

.noexc.i200:                                      ; preds = %bb.y
  %i.ge = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef 0)
          to label %.noexc201 unwind label %bb.af ; 2 uses

.noexc201:                                        ; preds = %.noexc.i200
  store ptr %i.ge, ptr %15, align 8, !tbaa !26
  %i.gf = load i64, ptr %i.p, align 8, !tbaa !38
  store i64 %i.gf, ptr %i.at, align 8, !tbaa !16
  br label %._crit_edge.i.i199

._crit_edge.i.i199:                               ; preds = %.noexc201, %bb.y
  %i.gg = phi ptr [ %i.ge, %.noexc201 ], [ %i.at, %bb.y ] ; 2 uses
  switch i64 %i.gc, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %bb.ab
  ]

bb.z:                                             ; preds = %._crit_edge.i.i199
  %i.gh = load i8, ptr %i.ga, align 1, !tbaa !16
  store i8 %i.gh, ptr %i.gg, align 1, !tbaa !16
  br label %bb.ab

bb.aa:                                            ; preds = %._crit_edge.i.i199
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gg, ptr align 1 %i.ga, i64 %i.gc, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %._crit_edge.i.i199
  %i.gi = load i64, ptr %i.p, align 8, !tbaa !38  ; 2 uses
  store i64 %i.gi, ptr %i.au, align 8, !tbaa !13
  %i.gj = load ptr, ptr %15, align 8, !tbaa !26
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.gi
  store i8 0, ptr %i.gk, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %i.gl = load ptr, ptr %15, align 8, !tbaa !26, !noalias !57 ; 7 uses
  %i.gm = load i64, ptr %i.au, align 8, !tbaa !13, !noalias !57 ; 9 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gm
  %.not6.i.i203 = icmp samesign eq i64 %i.gm, 0
  br i1 %.not6.i.i203, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i211, label %iter.check1680

iter.check1680:                                   ; preds = %bb.ab
  %min.iters.check1665 = icmp ult i64 %i.gm, 8
  br i1 %min.iters.check1665, label %.lr.ph.i.i204.preheader, label %vector.main.loop.iter.check1666

vector.main.loop.iter.check1666:                  ; preds = %iter.check1680
  %min.iters.check1667 = icmp ult i64 %i.gm, 32
  br i1 %min.iters.check1667, label %vec.epilog.ph1684, label %vector.ph1668

vector.ph1668:                                    ; preds = %vector.main.loop.iter.check1666
  %n.mod.vf1669 = and i64 %i.gm, 24
  %n.vec1670 = and i64 %i.gm, -32                 ; 4 uses
  %i.go = getelementptr i8, ptr %i.gl, i64 %n.vec1670
  br label %vector.body1671

vector.body1671:                                  ; preds = %vector.body1671, %vector.ph1668
  %index1672 = phi i64 [ 0, %vector.ph1668 ], [ %index.next1676, %vector.body1671 ] ; 2 uses
  %next.gep1673 = getelementptr i8, ptr %i.gl, i64 %index1672 ; 3 uses
  %i.gp = getelementptr i8, ptr %next.gep1673, i64 16 ; 2 uses
  %wide.load1674 = load <16 x i8>, ptr %next.gep1673, align 1, !tbaa !16, !noalias !57 ; 3 uses
  %wide.load1675 = load <16 x i8>, ptr %i.gp, align 1, !tbaa !16, !noalias !57 ; 3 uses
  %i.gq = add <16 x i8> %wide.load1674, splat (i8 -65)
  %i.gr = add <16 x i8> %wide.load1675, splat (i8 -65)
  %i.gs = icmp ult <16 x i8> %i.gq, splat (i8 26)
  %i.gt = icmp ult <16 x i8> %i.gr, splat (i8 26)
  %45 = or disjoint <16 x i8> %wide.load1674, splat (i8 32)
  %i.gu = or disjoint <16 x i8> %wide.load1675, splat (i8 32)
  %i.gv = select <16 x i1> %i.gs, <16 x i8> %45, <16 x i8> %wide.load1674
  %46 = select <16 x i1> %i.gt, <16 x i8> %i.gu, <16 x i8> %wide.load1675
  store <16 x i8> %i.gv, ptr %next.gep1673, align 1, !tbaa !16, !noalias !57
  store <16 x i8> %46, ptr %i.gp, align 1, !tbaa !16, !noalias !57
  %index.next1676 = add nuw i64 %index1672, 32    ; 2 uses
  %i.gw = icmp eq i64 %index.next1676, %n.vec1670
  br i1 %i.gw, label %middle.block1677, label %vector.body1671, !llvm.loop !60

middle.block1677:                                 ; preds = %vector.body1671
  %cmp.n1678 = icmp eq i64 %i.gm, %n.vec1670
  br i1 %cmp.n1678, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i209, label %vec.epilog.iter.check1682

vec.epilog.iter.check1682:                        ; preds = %middle.block1677
  %min.epilog.iters.check1683 = icmp eq i64 %n.mod.vf1669, 0
  br i1 %min.epilog.iters.check1683, label %.lr.ph.i.i204.preheader, label %vec.epilog.ph1684, !prof !47

vec.epilog.ph1684:                                ; preds = %vector.main.loop.iter.check1666, %vec.epilog.iter.check1682
  %vec.epilog.resume.val1679 = phi i64 [ %n.vec1670, %vec.epilog.iter.check1682 ], [ 0, %vector.main.loop.iter.check1666 ]
  %n.vec1686 = and i64 %i.gm, -8                  ; 3 uses
  %i.gx = getelementptr i8, ptr %i.gl, i64 %n.vec1686
  br label %vec.epilog.vector.body1687

vec.epilog.vector.body1687:                       ; preds = %vec.epilog.vector.body1687, %vec.epilog.ph1684
  %index1688 = phi i64 [ %vec.epilog.resume.val1679, %vec.epilog.ph1684 ], [ %index.next1691, %vec.epilog.vector.body1687 ] ; 2 uses
  %next.gep1689 = getelementptr i8, ptr %i.gl, i64 %index1688 ; 2 uses
  %wide.load1690 = load <8 x i8>, ptr %next.gep1689, align 1, !tbaa !16, !noalias !57 ; 3 uses
  %i.gy = add <8 x i8> %wide.load1690, splat (i8 -65)
  %i.gz = icmp ult <8 x i8> %i.gy, splat (i8 26)
  %47 = or disjoint <8 x i8> %wide.load1690, splat (i8 32)
  %48 = select <8 x i1> %i.gz, <8 x i8> %47, <8 x i8> %wide.load1690
  store <8 x i8> %48, ptr %next.gep1689, align 1, !tbaa !16, !noalias !57
  %index.next1691 = add nuw i64 %index1688, 8     ; 2 uses
  %i.ha = icmp eq i64 %index.next1691, %n.vec1686
  br i1 %i.ha, label %vec.epilog.middle.block1692, label %vec.epilog.vector.body1687, !llvm.loop !61

vec.epilog.middle.block1692:                      ; preds = %vec.epilog.vector.body1687
  %cmp.n1693 = icmp eq i64 %i.gm, %n.vec1686
  br i1 %cmp.n1693, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i209, label %.lr.ph.i.i204.preheader

.lr.ph.i.i204.preheader:                          ; preds = %iter.check1680, %vec.epilog.iter.check1682, %vec.epilog.middle.block1692
  %.sroa.0.08.i.i205.ph = phi ptr [ %i.gl, %iter.check1680 ], [ %i.go, %vec.epilog.iter.check1682 ], [ %i.gx, %vec.epilog.middle.block1692 ]
  br label %.lr.ph.i.i204

.lr.ph.i.i204:                                    ; preds = %.lr.ph.i.i204.preheader, %.lr.ph.i.i204
  %.sroa.0.08.i.i205 = phi ptr [ %i.he, %.lr.ph.i.i204 ], [ %.sroa.0.08.i.i205.ph, %.lr.ph.i.i204.preheader ] ; 3 uses
  %i.hb = load i8, ptr %.sroa.0.08.i.i205, align 1, !tbaa !16, !noalias !57 ; 3 uses
  %i.hc = add i8 %i.hb, -65
  %or.cond.i.i.i.i206 = icmp ult i8 %i.hc, 26
  %i.hd = or disjoint i8 %i.hb, 32
  %.0.i.i.i.i207 = select i1 %or.cond.i.i.i.i206, i8 %i.hd, i8 %i.hb
  store i8 %.0.i.i.i.i207, ptr %.sroa.0.08.i.i205, align 1, !tbaa !16, !noalias !57
  %i.he = getelementptr i8, ptr %.sroa.0.08.i.i205, i64 1 ; 2 uses
  %.not.i.i208 = icmp eq ptr %i.he, %i.gn
  br i1 %.not.i.i208, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i209, label %.lr.ph.i.i204, !llvm.loop !62

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i209: ; preds = %.lr.ph.i.i204, %vec.epilog.middle.block1692, %middle.block1677
  %.pre.i210 = load ptr, ptr %15, align 8, !tbaa !26, !noalias !57
  br label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i211

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i211: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i209, %bb.ab
  %i.hf = phi ptr [ %.pre.i210, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i209 ], [ %i.gl, %bb.ab ] ; 3 uses
  store ptr %i.av, ptr %14, align 8, !tbaa !9, !alias.scope !57
  %i.hg = icmp eq ptr %i.hf, %i.at
  br i1 %i.hg, label %bb.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212

bb.ac:                                            ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i211
  %i.hh = load i64, ptr %i.au, align 8, !tbaa !13, !noalias !57 ; 3 uses
  %i.hi = icmp ult i64 %i.hh, 16
  call void @llvm.assume(i1 %i.hi)
  %i.hj = add nuw nsw i64 %i.hh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.av, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.hj, i1 false)
  br label %bb.ad

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i211
  store ptr %i.hf, ptr %14, align 8, !tbaa !26, !alias.scope !57
  %i.hk = load i64, ptr %i.at, align 8, !tbaa !16, !noalias !57
  store i64 %i.hk, ptr %i.av, align 8, !tbaa !16, !alias.scope !57
  %.pre4.i213 = load i64, ptr %i.au, align 8, !tbaa !13, !noalias !57
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212, %bb.ac
  %i.hl = phi ptr [ %i.av, %bb.ac ], [ %i.hf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212 ] ; 4 uses
  %i.hm = phi i64 [ %i.hh, %bb.ac ], [ %.pre4.i213, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212 ] ; 3 uses
  store i64 %i.hm, ptr %i.aw, align 8, !tbaa !13, !alias.scope !57
  store ptr %i.at, ptr %15, align 8, !tbaa !26, !noalias !57
  store i64 0, ptr %i.au, align 8, !tbaa !13, !noalias !57
  store i8 0, ptr %i.at, align 8, !tbaa !16, !noalias !57
  %i.hn = icmp eq i64 %i.hm, 5
  br i1 %i.hn, label %bb.ae, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.ae:                                            ; preds = %bb.ad
  %i.ho = load i32, ptr %i.hl, align 1
  %i.hp = xor i32 %i.ho, 1819568500
  %i.hq = getelementptr i8, ptr %i.hl, i64 4
  %i.hr = load i8, ptr %i.hq, align 1
  %i.hs = zext i8 %i.hr to i32
  %i.ht = xor i32 %i.hs, 101
  %i.hu = or i32 %i.hp, %i.ht
  %i.hv = icmp ne i32 %i.hu, 0
  %i.hw = zext i1 %i.hv to i32
  %i.hx = icmp eq i32 %i.hw, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.ae, %bb.ad
  %i.hy = phi i1 [ false, %bb.ad ], [ %i.hx, %bb.ae ]
  %i.hz = icmp eq ptr %i.hl, %i.av
  br i1 %i.hz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ia = icmp ult i64 %i.hm, 16
  call void @llvm.assume(i1 %i.ia)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ib = load i64, ptr %i.av, align 8, !tbaa !16
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.ic) #24
  %.pre = load ptr, ptr %15, align 8, !tbaa !26   ; 2 uses
  %i.id = icmp eq ptr %.pre, %i.at
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217
  %i.ie = load i64, ptr %i.at, align 8, !tbaa !16
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.if) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br i1 %i.hy, label %.noexc.i222, label %bb.ai

.noexc.i222:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  %i.ig = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  store ptr %i.ig, ptr %16, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #23
  store i64 25, ptr %i.o, align 8, !tbaa !38
  %i.ih = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 noundef 0)
          to label %.noexc223 unwind label %bb.ag ; 2 uses

.noexc223:                                        ; preds = %.noexc.i222
  store ptr %i.ih, ptr %16, align 8, !tbaa !26
  %i.ii = load i64, ptr %i.o, align 8, !tbaa !38  ; 3 uses
  store i64 %i.ii, ptr %i.ig, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.ih, ptr noundef nonnull align 1 dereferenceable(25) @.str.6, i64 25, i1 false)
  %i.ij = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.ii, ptr %i.ij, align 8, !tbaa !13
  %i.ik = load ptr, ptr %16, align 8, !tbaa !26
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.ii
  store i8 0, ptr %i.il, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #23
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat17ThrowErrorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_iS9_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.unreachable670 unwind label %bb.ah

.unreachable670:                                  ; preds = %.noexc223
  unreachable

bb.af:                                            ; preds = %.noexc.i200
  %i.im = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %.loopexit674

bb.ag:                                            ; preds = %.noexc.i222
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236

bb.ah:                                            ; preds = %.noexc223
  %i.io = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ip = load ptr, ptr %16, align 8, !tbaa !26   ; 2 uses
  %i.iq = icmp eq ptr %i.ip, %i.ig
  br i1 %i.iq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234: ; preds = %bb.ah
  %i.ir = load i64, ptr %i.ig, align 8, !tbaa !16
  %i.is = add i64 %i.ir, 1
  call void @_ZdlPvm(ptr noundef %i.ip, i64 noundef %i.is) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234, %bb.ag
  %.pn154 = phi { ptr, i32 } [ %i.in, %bb.ag ], [ %i.io, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234 ], [ %i.io, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %.loopexit674

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.it = load ptr, ptr %7, align 16, !tbaa !50   ; 2 uses
  store ptr %i.ax, ptr %18, align 8, !tbaa !9
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !26 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #23
  store i64 %i.iw, ptr %i.n, align 8, !tbaa !38
  %i.ix = icmp ugt i64 %i.iw, 15
  br i1 %i.ix, label %.noexc.i238, label %._crit_edge.i.i237

.noexc.i238:                                      ; preds = %bb.ai
  %i.iy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef 0)
          to label %.noexc239 unwind label %bb.as ; 2 uses

.noexc239:                                        ; preds = %.noexc.i238
  store ptr %i.iy, ptr %18, align 8, !tbaa !26
  %i.iz = load i64, ptr %i.n, align 8, !tbaa !38
  store i64 %i.iz, ptr %i.ax, align 8, !tbaa !16
  br label %._crit_edge.i.i237

._crit_edge.i.i237:                               ; preds = %.noexc239, %bb.ai
  %i.ja = phi ptr [ %i.iy, %.noexc239 ], [ %i.ax, %bb.ai ] ; 2 uses
  switch i64 %i.iw, label %bb.ak [
    i64 1, label %bb.aj
    i64 0, label %bb.al
  ]

bb.aj:                                            ; preds = %._crit_edge.i.i237
  %i.jb = load i8, ptr %i.iu, align 1, !tbaa !16
  store i8 %i.jb, ptr %i.ja, align 1, !tbaa !16
  br label %bb.al

bb.ak:                                            ; preds = %._crit_edge.i.i237
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ja, ptr align 1 %i.iu, i64 %i.iw, i1 false)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %._crit_edge.i.i237
  %i.jc = load i64, ptr %i.n, align 8, !tbaa !38  ; 2 uses
  store i64 %i.jc, ptr %i.ay, align 8, !tbaa !13
  %i.jd = load ptr, ptr %18, align 8, !tbaa !26
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.jc
  store i8 0, ptr %i.je, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %i.jf = load ptr, ptr %18, align 8, !tbaa !26, !noalias !63 ; 7 uses
  %i.jg = load i64, ptr %i.ay, align 8, !tbaa !13, !noalias !63 ; 9 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 %i.jg
  %.not6.i.i241 = icmp samesign eq i64 %i.jg, 0
  br i1 %.not6.i.i241, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i249, label %iter.check1650

iter.check1650:                                   ; preds = %bb.al
  %min.iters.check1635 = icmp ult i64 %i.jg, 8
  br i1 %min.iters.check1635, label %.lr.ph.i.i242.preheader, label %vector.main.loop.iter.check1636

vector.main.loop.iter.check1636:                  ; preds = %iter.check1650
  %min.iters.check1637 = icmp ult i64 %i.jg, 32
  br i1 %min.iters.check1637, label %vec.epilog.ph1654, label %vector.ph1638

vector.ph1638:                                    ; preds = %vector.main.loop.iter.check1636
  %n.mod.vf1639 = and i64 %i.jg, 24
  %n.vec1640 = and i64 %i.jg, -32                 ; 4 uses
  %i.ji = getelementptr i8, ptr %i.jf, i64 %n.vec1640
  br label %vector.body1641

vector.body1641:                                  ; preds = %vector.body1641, %vector.ph1638
  %index1642 = phi i64 [ 0, %vector.ph1638 ], [ %index.next1646, %vector.body1641 ] ; 2 uses
  %next.gep1643 = getelementptr i8, ptr %i.jf, i64 %index1642 ; 3 uses
  %i.jj = getelementptr i8, ptr %next.gep1643, i64 16 ; 2 uses
  %wide.load1644 = load <16 x i8>, ptr %next.gep1643, align 1, !tbaa !16, !noalias !63 ; 3 uses
  %wide.load1645 = load <16 x i8>, ptr %i.jj, align 1, !tbaa !16, !noalias !63 ; 3 uses
  %i.jk = add <16 x i8> %wide.load1644, splat (i8 -65)
  %i.jl = add <16 x i8> %wide.load1645, splat (i8 -65)
  %i.jm = icmp ult <16 x i8> %i.jk, splat (i8 26)
  %i.jn = icmp ult <16 x i8> %i.jl, splat (i8 26)
  %49 = or disjoint <16 x i8> %wide.load1644, splat (i8 32)
  %i.jo = or disjoint <16 x i8> %wide.load1645, splat (i8 32)
  %i.jp = select <16 x i1> %i.jm, <16 x i8> %49, <16 x i8> %wide.load1644
  %50 = select <16 x i1> %i.jn, <16 x i8> %i.jo, <16 x i8> %wide.load1645
  store <16 x i8> %i.jp, ptr %next.gep1643, align 1, !tbaa !16, !noalias !63
  store <16 x i8> %50, ptr %i.jj, align 1, !tbaa !16, !noalias !63
  %index.next1646 = add nuw i64 %index1642, 32    ; 2 uses
  %i.jq = icmp eq i64 %index.next1646, %n.vec1640
  br i1 %i.jq, label %middle.block1647, label %vector.body1641, !llvm.loop !66

middle.block1647:                                 ; preds = %vector.body1641
  %cmp.n1648 = icmp eq i64 %i.jg, %n.vec1640
  br i1 %cmp.n1648, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i247, label %vec.epilog.iter.check1652

vec.epilog.iter.check1652:                        ; preds = %middle.block1647
  %min.epilog.iters.check1653 = icmp eq i64 %n.mod.vf1639, 0
  br i1 %min.epilog.iters.check1653, label %.lr.ph.i.i242.preheader, label %vec.epilog.ph1654, !prof !47

vec.epilog.ph1654:                                ; preds = %vector.main.loop.iter.check1636, %vec.epilog.iter.check1652
  %vec.epilog.resume.val1649 = phi i64 [ %n.vec1640, %vec.epilog.iter.check1652 ], [ 0, %vector.main.loop.iter.check1636 ]
  %n.vec1656 = and i64 %i.jg, -8                  ; 3 uses
  %i.jr = getelementptr i8, ptr %i.jf, i64 %n.vec1656
  br label %vec.epilog.vector.body1657

vec.epilog.vector.body1657:                       ; preds = %vec.epilog.vector.body1657, %vec.epilog.ph1654
  %index1658 = phi i64 [ %vec.epilog.resume.val1649, %vec.epilog.ph1654 ], [ %index.next1661, %vec.epilog.vector.body1657 ] ; 2 uses
  %next.gep1659 = getelementptr i8, ptr %i.jf, i64 %index1658 ; 2 uses
  %wide.load1660 = load <8 x i8>, ptr %next.gep1659, align 1, !tbaa !16, !noalias !63 ; 3 uses
  %i.js = add <8 x i8> %wide.load1660, splat (i8 -65)
  %i.jt = icmp ult <8 x i8> %i.js, splat (i8 26)
  %51 = or disjoint <8 x i8> %wide.load1660, splat (i8 32)
  %52 = select <8 x i1> %i.jt, <8 x i8> %51, <8 x i8> %wide.load1660
  store <8 x i8> %52, ptr %next.gep1659, align 1, !tbaa !16, !noalias !63
  %index.next1661 = add nuw i64 %index1658, 8     ; 2 uses
  %i.ju = icmp eq i64 %index.next1661, %n.vec1656
  br i1 %i.ju, label %vec.epilog.middle.block1662, label %vec.epilog.vector.body1657, !llvm.loop !67

vec.epilog.middle.block1662:                      ; preds = %vec.epilog.vector.body1657
  %cmp.n1663 = icmp eq i64 %i.jg, %n.vec1656
  br i1 %cmp.n1663, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i247, label %.lr.ph.i.i242.preheader

.lr.ph.i.i242.preheader:                          ; preds = %iter.check1650, %vec.epilog.iter.check1652, %vec.epilog.middle.block1662
  %.sroa.0.08.i.i243.ph = phi ptr [ %i.jf, %iter.check1650 ], [ %i.ji, %vec.epilog.iter.check1652 ], [ %i.jr, %vec.epilog.middle.block1662 ]
  br label %.lr.ph.i.i242

.lr.ph.i.i242:                                    ; preds = %.lr.ph.i.i242.preheader, %.lr.ph.i.i242
  %.sroa.0.08.i.i243 = phi ptr [ %i.jy, %.lr.ph.i.i242 ], [ %.sroa.0.08.i.i243.ph, %.lr.ph.i.i242.preheader ] ; 3 uses
  %i.jv = load i8, ptr %.sroa.0.08.i.i243, align 1, !tbaa !16, !noalias !63 ; 3 uses
  %i.jw = add i8 %i.jv, -65
  %or.cond.i.i.i.i244 = icmp ult i8 %i.jw, 26
  %i.jx = or disjoint i8 %i.jv, 32
  %.0.i.i.i.i245 = select i1 %or.cond.i.i.i.i244, i8 %i.jx, i8 %i.jv
  store i8 %.0.i.i.i.i245, ptr %.sroa.0.08.i.i243, align 1, !tbaa !16, !noalias !63
  %i.jy = getelementptr i8, ptr %.sroa.0.08.i.i243, i64 1 ; 2 uses
  %.not.i.i246 = icmp eq ptr %i.jy, %i.jh
  br i1 %.not.i.i246, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i247, label %.lr.ph.i.i242, !llvm.loop !68

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i247: ; preds = %.lr.ph.i.i242, %vec.epilog.middle.block1662, %middle.block1647
  %.pre.i248 = load ptr, ptr %18, align 8, !tbaa !26, !noalias !63
  br label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i249

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i249: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i247, %bb.al
  %i.jz = phi ptr [ %.pre.i248, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i247 ], [ %i.jf, %bb.al ] ; 3 uses
  store ptr %i.az, ptr %17, align 8, !tbaa !9, !alias.scope !63
  %i.ka = icmp eq ptr %i.jz, %i.ax
  br i1 %i.ka, label %bb.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250

bb.am:                                            ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i249
  %i.kb = load i64, ptr %i.ay, align 8, !tbaa !13, !noalias !63 ; 3 uses
  %i.kc = icmp ult i64 %i.kb, 16
  call void @llvm.assume(i1 %i.kc)
  %i.kd = add nuw nsw i64 %i.kb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.az, ptr noundef nonnull align 8 dereferenceable(1) %i.ax, i64 %i.kd, i1 false)
  br label %bb.an

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i249
  store ptr %i.jz, ptr %17, align 8, !tbaa !26, !alias.scope !63
  %i.ke = load i64, ptr %i.ax, align 8, !tbaa !16, !noalias !63
  store i64 %i.ke, ptr %i.az, align 8, !tbaa !16, !alias.scope !63
  %.pre4.i251 = load i64, ptr %i.ay, align 8, !tbaa !13, !noalias !63
  br label %bb.an

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250, %bb.am
  %i.kf = phi ptr [ %i.az, %bb.am ], [ %i.jz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250 ] ; 4 uses
  %i.kg = phi i64 [ %i.kb, %bb.am ], [ %.pre4.i251, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250 ] ; 3 uses
  store i64 %i.kg, ptr %i.ba, align 8, !tbaa !13, !alias.scope !63
  store ptr %i.ax, ptr %18, align 8, !tbaa !26, !noalias !63
  store i64 0, ptr %i.ay, align 8, !tbaa !13, !noalias !63
  store i8 0, ptr %i.ax, align 8, !tbaa !16, !noalias !63
  %i.kh = icmp eq i64 %i.kg, 11
  br i1 %i.kh, label %bb.ao, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit254

bb.ao:                                            ; preds = %bb.an
  %i.ki = load i64, ptr %i.kf, align 1
  %i.kj = xor i64 %i.ki, 8313473600366867820
  %i.kk = getelementptr i8, ptr %i.kf, i64 3
  %i.kl = load i64, ptr %i.kk, align 1
  %i.km = xor i64 %i.kl, 7312272889231978847
  %i.kn = or i64 %i.kj, %i.km
  %i.ko = icmp ne i64 %i.kn, 0
  %i.kp = zext i1 %i.ko to i32
  %i.kq = icmp eq i32 %i.kp, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit254

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit254: ; preds = %bb.ao, %bb.an
  %i.kr = phi i1 [ false, %bb.an ], [ %i.kq, %bb.ao ]
  %i.ks = icmp eq ptr %i.kf, %i.az
  br i1 %i.ks, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit254
  %i.kt = icmp ult i64 %i.kg, 16
  call void @llvm.assume(i1 %i.kt)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit254
  %i.ku = load i64, ptr %i.az, align 8, !tbaa !16
  %i.kv = add i64 %i.ku, 1
  call void @_ZdlPvm(ptr noundef %i.kf, i64 noundef %i.kv) #24
  %.pre1073 = load ptr, ptr %18, align 8, !tbaa !26 ; 2 uses
  %i.kw = icmp eq ptr %.pre1073, %i.ax
  br i1 %i.kw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257
  %i.kx = load i64, ptr %i.ax, align 8, !tbaa !16
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %.pre1073, i64 noundef %i.ky) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br i1 %i.kr, label %bb.ap, label %bb.az

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260
  %i.kz = load ptr, ptr %i.ap, align 8, !tbaa !53
  %i.la = load ptr, ptr %7, align 16, !tbaa !50   ; 2 uses
  %i.lb = ptrtoint ptr %i.kz to i64
  %i.lc = ptrtoint ptr %i.la to i64
  %i.ld = sub i64 %i.lb, %i.lc
  %.not151 = icmp eq i64 %i.ld, 64
  br i1 %.not151, label %bb.aq, label %.noexc.i262

bb.aq:                                            ; preds = %bb.ap
  %i.le = getelementptr inbounds nuw i8, ptr %i.la, i64 32
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !26
  %i.lg = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_511StringToIntEPiPKcb(ptr noundef nonnull %i.t, ptr noundef %i.lf, i1 noundef zeroext false)
          to label %bb.ar unwind label %.loopexit674.loopexit.split-lp.loopexit.loopexit.split-lp

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.lg, label %bb.av, label %.noexc.i262

.noexc.i262:                                      ; preds = %bb.ar, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  %i.lh = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  store ptr %i.lh, ptr %19, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #23
  store i64 26, ptr %i.m, align 8, !tbaa !38
  %i.li = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef 0)
          to label %.noexc263 unwind label %bb.at ; 2 uses

.noexc263:                                        ; preds = %.noexc.i262
  store ptr %i.li, ptr %19, align 8, !tbaa !26
  %i.lj = load i64, ptr %i.m, align 8, !tbaa !38  ; 3 uses
  store i64 %i.lj, ptr %i.lh, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.li, ptr noundef nonnull align 1 dereferenceable(26) @.str.8, i64 26, i1 false)
  %i.lk = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %i.lj, ptr %i.lk, align 8, !tbaa !13
  %i.ll = load ptr, ptr %19, align 8, !tbaa !26
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.lj
  store i8 0, ptr %i.lm, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #23
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat17ThrowErrorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_iS9_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.unreachable669 unwind label %bb.au

.unreachable669:                                  ; preds = %.noexc263
  unreachable

bb.as:                                            ; preds = %.noexc.i238
  %i.ln = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %.loopexit674

bb.at:                                            ; preds = %.noexc.i262
  %i.lo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276

bb.au:                                            ; preds = %.noexc263
  %i.lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lq = load ptr, ptr %19, align 8, !tbaa !26   ; 2 uses
  %i.lr = icmp eq ptr %i.lq, %i.lh
  br i1 %i.lr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i274

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i274: ; preds = %bb.au
  %i.ls = load i64, ptr %i.lh, align 8, !tbaa !16
  %i.lt = add i64 %i.ls, 1
  call void @_ZdlPvm(ptr noundef %i.lq, i64 noundef %i.lt) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i274, %bb.at
  %.pn152 = phi { ptr, i32 } [ %i.lo, %bb.at ], [ %i.lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i274 ], [ %i.lp, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br label %.loopexit674

bb.av:                                            ; preds = %bb.ar
  %i.lu = load i32, ptr %i.t, align 4, !tbaa !3   ; 2 uses
  %i.lv = icmp slt i32 %i.lu, 0
  br i1 %i.lv, label %.invoke, label %bb.aw

.invoke:                                          ; preds = %bb.av, %bb.bw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #25
          to label %.cont unwind label %.loopexit.split-lp675

.cont:                                            ; preds = %.invoke
  unreachable

bb.aw:                                            ; preds = %bb.av
  %i.lw = mul nuw nsw i32 %i.lu, 3
  %i.lx = zext nneg i32 %i.lw to i64              ; 3 uses
  %i.ly = icmp ult i64 %i.bt, %i.lx
  br i1 %i.ly, label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i, label %.outer.outer1747, !llvm.loop !39

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i: ; preds = %bb.aw
  %i.lz = ptrtoint ptr %.sroa.14.0.ph.ph to i64
  %i.ma = sub i64 %i.lz, %i.br                    ; 3 uses
  %i.mb = shl nuw nsw i64 %i.lx, 2
  %i.mc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mb) #22
          to label %.noexc278 unwind label %.loopexit674.loopexit.split-lp.loopexit.split-lp.loopexit ; 4 uses

.noexc278:                                        ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i
  %i.md = icmp sgt i64 %i.ma, 0
  br i1 %i.md, label %bb.ax, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i

bb.ax:                                            ; preds = %.noexc278
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.mc, ptr align 4 %.sroa.0647.0.ph.ph, i64 %i.ma, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i: ; preds = %bb.ax, %.noexc278
  %.not.i8.i = icmp eq ptr %.sroa.0647.0.ph.ph, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0647.0.ph.ph, i64 noundef %i.bs) #24
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i: ; preds = %bb.ay, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i
  %i.me = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.ma
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %i.lx
  br label %.outer.outer, !llvm.loop !39

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  %i.mg = load ptr, ptr %7, align 16, !tbaa !50   ; 2 uses
  store ptr %i.bb, ptr %21, align 8, !tbaa !9
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !26 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #23
  store i64 %i.mj, ptr %i.l, align 8, !tbaa !38
  %i.mk = icmp ugt i64 %i.mj, 15
  br i1 %i.mk, label %.noexc.i280, label %._crit_edge.i.i279

.noexc.i280:                                      ; preds = %bb.az
  %i.ml = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef 0)
          to label %.noexc281 unwind label %bb.bg ; 2 uses

.noexc281:                                        ; preds = %.noexc.i280
  store ptr %i.ml, ptr %21, align 8, !tbaa !26
  %i.mm = load i64, ptr %i.l, align 8, !tbaa !38
  store i64 %i.mm, ptr %i.bb, align 8, !tbaa !16
  br label %._crit_edge.i.i279

._crit_edge.i.i279:                               ; preds = %.noexc281, %bb.az
  %i.mn = phi ptr [ %i.ml, %.noexc281 ], [ %i.bb, %bb.az ] ; 2 uses
  switch i64 %i.mj, label %bb.bb [
    i64 1, label %bb.ba
    i64 0, label %bb.bc
  ]

bb.ba:                                            ; preds = %._crit_edge.i.i279
  %i.mo = load i8, ptr %i.mh, align 1, !tbaa !16
  store i8 %i.mo, ptr %i.mn, align 1, !tbaa !16
  br label %bb.bc

bb.bb:                                            ; preds = %._crit_edge.i.i279
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mn, ptr align 1 %i.mh, i64 %i.mj, i1 false)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %._crit_edge.i.i279
  %i.mp = load i64, ptr %i.l, align 8, !tbaa !38  ; 2 uses
  store i64 %i.mp, ptr %i.bc, align 8, !tbaa !13
  %i.mq = load ptr, ptr %21, align 8, !tbaa !26
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 %i.mp
  store i8 0, ptr %i.mr, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.ms = load ptr, ptr %21, align 8, !tbaa !26, !noalias !69 ; 7 uses
  %i.mt = load i64, ptr %i.bc, align 8, !tbaa !13, !noalias !69 ; 9 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 %i.mt
  %.not6.i.i283 = icmp samesign eq i64 %i.mt, 0
  br i1 %.not6.i.i283, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i291, label %iter.check1620

iter.check1620:                                   ; preds = %bb.bc
  %min.iters.check1605 = icmp ult i64 %i.mt, 8
  br i1 %min.iters.check1605, label %.lr.ph.i.i284.preheader, label %vector.main.loop.iter.check1606

vector.main.loop.iter.check1606:                  ; preds = %iter.check1620
  %min.iters.check1607 = icmp ult i64 %i.mt, 32
  br i1 %min.iters.check1607, label %vec.epilog.ph1624, label %vector.ph1608

vector.ph1608:                                    ; preds = %vector.main.loop.iter.check1606
  %n.mod.vf1609 = and i64 %i.mt, 24
  %n.vec1610 = and i64 %i.mt, -32                 ; 4 uses
  %i.mv = getelementptr i8, ptr %i.ms, i64 %n.vec1610
  br label %vector.body1611

vector.body1611:                                  ; preds = %vector.body1611, %vector.ph1608
  %index1612 = phi i64 [ 0, %vector.ph1608 ], [ %index.next1616, %vector.body1611 ] ; 2 uses
  %next.gep1613 = getelementptr i8, ptr %i.ms, i64 %index1612 ; 3 uses
  %i.mw = getelementptr i8, ptr %next.gep1613, i64 16 ; 2 uses
  %wide.load1614 = load <16 x i8>, ptr %next.gep1613, align 1, !tbaa !16, !noalias !69 ; 3 uses
  %wide.load1615 = load <16 x i8>, ptr %i.mw, align 1, !tbaa !16, !noalias !69 ; 3 uses
  %i.mx = add <16 x i8> %wide.load1614, splat (i8 -65)
  %i.my = add <16 x i8> %wide.load1615, splat (i8 -65)
  %i.mz = icmp ult <16 x i8> %i.mx, splat (i8 26)
  %i.na = icmp ult <16 x i8> %i.my, splat (i8 26)
  %53 = or disjoint <16 x i8> %wide.load1614, splat (i8 32)
  %i.nb = or disjoint <16 x i8> %wide.load1615, splat (i8 32)
  %i.nc = select <16 x i1> %i.mz, <16 x i8> %53, <16 x i8> %wide.load1614
  %54 = select <16 x i1> %i.na, <16 x i8> %i.nb, <16 x i8> %wide.load1615
  store <16 x i8> %i.nc, ptr %next.gep1613, align 1, !tbaa !16, !noalias !69
  store <16 x i8> %54, ptr %i.mw, align 1, !tbaa !16, !noalias !69
  %index.next1616 = add nuw i64 %index1612, 32    ; 2 uses
  %i.nd = icmp eq i64 %index.next1616, %n.vec1610
  br i1 %i.nd, label %middle.block1617, label %vector.body1611, !llvm.loop !72

middle.block1617:                                 ; preds = %vector.body1611
  %cmp.n1618 = icmp eq i64 %i.mt, %n.vec1610
  br i1 %cmp.n1618, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i289, label %vec.epilog.iter.check1622

vec.epilog.iter.check1622:                        ; preds = %middle.block1617
  %min.epilog.iters.check1623 = icmp eq i64 %n.mod.vf1609, 0
  br i1 %min.epilog.iters.check1623, label %.lr.ph.i.i284.preheader, label %vec.epilog.ph1624, !prof !47

vec.epilog.ph1624:                                ; preds = %vector.main.loop.iter.check1606, %vec.epilog.iter.check1622
  %vec.epilog.resume.val1619 = phi i64 [ %n.vec1610, %vec.epilog.iter.check1622 ], [ 0, %vector.main.loop.iter.check1606 ]
  %n.vec1626 = and i64 %i.mt, -8                  ; 3 uses
  %i.ne = getelementptr i8, ptr %i.ms, i64 %n.vec1626
  br label %vec.epilog.vector.body1627

vec.epilog.vector.body1627:                       ; preds = %vec.epilog.vector.body1627, %vec.epilog.ph1624
  %index1628 = phi i64 [ %vec.epilog.resume.val1619, %vec.epilog.ph1624 ], [ %index.next1631, %vec.epilog.vector.body1627 ] ; 2 uses
  %next.gep1629 = getelementptr i8, ptr %i.ms, i64 %index1628 ; 2 uses
  %wide.load1630 = load <8 x i8>, ptr %next.gep1629, align 1, !tbaa !16, !noalias !69 ; 3 uses
  %i.nf = add <8 x i8> %wide.load1630, splat (i8 -65)
  %i.ng = icmp ult <8 x i8> %i.nf, splat (i8 26)
  %55 = or disjoint <8 x i8> %wide.load1630, splat (i8 32)
  %56 = select <8 x i1> %i.ng, <8 x i8> %55, <8 x i8> %wide.load1630
  store <8 x i8> %56, ptr %next.gep1629, align 1, !tbaa !16, !noalias !69
  %index.next1631 = add nuw i64 %index1628, 8     ; 2 uses
  %i.nh = icmp eq i64 %index.next1631, %n.vec1626
  br i1 %i.nh, label %vec.epilog.middle.block1632, label %vec.epilog.vector.body1627, !llvm.loop !73

vec.epilog.middle.block1632:                      ; preds = %vec.epilog.vector.body1627
  %cmp.n1633 = icmp eq i64 %i.mt, %n.vec1626
  br i1 %cmp.n1633, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i289, label %.lr.ph.i.i284.preheader

.lr.ph.i.i284.preheader:                          ; preds = %iter.check1620, %vec.epilog.iter.check1622, %vec.epilog.middle.block1632
  %.sroa.0.08.i.i285.ph = phi ptr [ %i.ms, %iter.check1620 ], [ %i.mv, %vec.epilog.iter.check1622 ], [ %i.ne, %vec.epilog.middle.block1632 ]
  br label %.lr.ph.i.i284

.lr.ph.i.i284:                                    ; preds = %.lr.ph.i.i284.preheader, %.lr.ph.i.i284
  %.sroa.0.08.i.i285 = phi ptr [ %i.nl, %.lr.ph.i.i284 ], [ %.sroa.0.08.i.i285.ph, %.lr.ph.i.i284.preheader ] ; 3 uses
  %i.ni = load i8, ptr %.sroa.0.08.i.i285, align 1, !tbaa !16, !noalias !69 ; 3 uses
  %i.nj = add i8 %i.ni, -65
  %or.cond.i.i.i.i286 = icmp ult i8 %i.nj, 26
  %i.nk = or disjoint i8 %i.ni, 32
  %.0.i.i.i.i287 = select i1 %or.cond.i.i.i.i286, i8 %i.nk, i8 %i.ni
  store i8 %.0.i.i.i.i287, ptr %.sroa.0.08.i.i285, align 1, !tbaa !16, !noalias !69
  %i.nl = getelementptr i8, ptr %.sroa.0.08.i.i285, i64 1 ; 2 uses
  %.not.i.i288 = icmp eq ptr %i.nl, %i.mu
  br i1 %.not.i.i288, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i289, label %.lr.ph.i.i284, !llvm.loop !74

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i289: ; preds = %.lr.ph.i.i284, %vec.epilog.middle.block1632, %middle.block1617
  %.pre.i290 = load ptr, ptr %21, align 8, !tbaa !26, !noalias !69
  br label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i291

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i291: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i289, %bb.bc
  %i.nm = phi ptr [ %.pre.i290, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i289 ], [ %i.ms, %bb.bc ] ; 3 uses
  store ptr %i.bd, ptr %20, align 8, !tbaa !9, !alias.scope !69
  %i.nn = icmp eq ptr %i.nm, %i.bb
  br i1 %i.nn, label %bb.bd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292

bb.bd:                                            ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i291
  %i.no = load i64, ptr %i.bc, align 8, !tbaa !13, !noalias !69 ; 3 uses
  %i.np = icmp ult i64 %i.no, 16
  call void @llvm.assume(i1 %i.np)
  %i.nq = add nuw nsw i64 %i.no, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bd, ptr noundef nonnull align 8 dereferenceable(1) %i.bb, i64 %i.nq, i1 false)
  br label %bb.be

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i291
  store ptr %i.nm, ptr %20, align 8, !tbaa !26, !alias.scope !69
  %i.nr = load i64, ptr %i.bb, align 8, !tbaa !16, !noalias !69
  store i64 %i.nr, ptr %i.bd, align 8, !tbaa !16, !alias.scope !69
  %.pre4.i293 = load i64, ptr %i.bc, align 8, !tbaa !13, !noalias !69
  br label %bb.be

bb.be:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292, %bb.bd
  %i.ns = phi ptr [ %i.bd, %bb.bd ], [ %i.nm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292 ] ; 4 uses
  %i.nt = phi i64 [ %i.no, %bb.bd ], [ %.pre4.i293, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292 ] ; 3 uses
  store i64 %i.nt, ptr %i.be, align 8, !tbaa !13, !alias.scope !69
  store ptr %i.bb, ptr %21, align 8, !tbaa !26, !noalias !69
  store i64 0, ptr %i.bc, align 8, !tbaa !13, !noalias !69
  store i8 0, ptr %i.bb, align 8, !tbaa !16, !noalias !69
  %i.nu = icmp eq i64 %i.nt, 11
  br i1 %i.nu, label %bb.bf, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit296

bb.bf:                                            ; preds = %bb.be
  %i.nv = load i64, ptr %i.ns, align 1
  %i.nw = xor i64 %i.nv, 8313473604661835116
  %i.nx = getelementptr i8, ptr %i.ns, i64 3
  %i.ny = load i64, ptr %i.nx, align 1
  %i.nz = xor i64 %i.ny, 7312272889231979103
  %i.oa = or i64 %i.nw, %i.nz
  %i.ob = icmp ne i64 %i.oa, 0
  %i.oc = zext i1 %i.ob to i32
  %i.od = icmp eq i32 %i.oc, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit296

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit296: ; preds = %bb.bf, %bb.be
  %i.oe = phi i1 [ false, %bb.be ], [ %i.od, %bb.bf ]
  %i.of = icmp eq ptr %i.ns, %i.bd
  br i1 %i.of, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit296
  %i.og = icmp ult i64 %i.nt, 16
  call void @llvm.assume(i1 %i.og)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit296
  %i.oh = load i64, ptr %i.bd, align 8, !tbaa !16
  %i.oi = add i64 %i.oh, 1
  call void @_ZdlPvm(ptr noundef %i.ns, i64 noundef %i.oi) #24
  %.pre1074 = load ptr, ptr %21, align 8, !tbaa !26 ; 2 uses
  %i.oj = icmp eq ptr %.pre1074, %i.bb
  br i1 %i.oj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299
  %i.ok = load i64, ptr %i.bb, align 8, !tbaa !16
  %i.ol = add i64 %i.ok, 1
  call void @_ZdlPvm(ptr noundef %.pre1074, i64 noundef %i.ol) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br i1 %i.oe, label %.noexc.i304, label %bb.bj

.noexc.i304:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  %i.om = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 4 uses
  store ptr %i.om, ptr %22, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #23
  store i64 31, ptr %i.k, align 8, !tbaa !38
  %i.on = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 0)
          to label %.noexc305 unwind label %bb.bh ; 2 uses

.noexc305:                                        ; preds = %.noexc.i304
  store ptr %i.on, ptr %22, align 8, !tbaa !26
  %i.oo = load i64, ptr %i.k, align 8, !tbaa !38  ; 3 uses
  store i64 %i.oo, ptr %i.om, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.on, ptr noundef nonnull align 1 dereferenceable(31) @.str.10, i64 31, i1 false)
  %i.op = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 %i.oo, ptr %i.op, align 8, !tbaa !13
  %i.oq = load ptr, ptr %22, align 8, !tbaa !26
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 %i.oo
  store i8 0, ptr %i.or, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #23
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat17ThrowErrorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_iS9_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.unreachable668 unwind label %bb.bi

.unreachable668:                                  ; preds = %.noexc305
  unreachable

bb.bg:                                            ; preds = %.noexc.i280
  %i.os = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %.loopexit674

bb.bh:                                            ; preds = %.noexc.i304
  %i.ot = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318

bb.bi:                                            ; preds = %.noexc305
  %i.ou = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ov = load ptr, ptr %22, align 8, !tbaa !26   ; 2 uses
  %i.ow = icmp eq ptr %i.ov, %i.om
  br i1 %i.ow, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316: ; preds = %bb.bi
  %i.ox = load i64, ptr %i.om, align 8, !tbaa !16
  %i.oy = add i64 %i.ox, 1
  call void @_ZdlPvm(ptr noundef %i.ov, i64 noundef %i.oy) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316, %bb.bh
  %.pn149 = phi { ptr, i32 } [ %i.ot, %bb.bh ], [ %i.ou, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316 ], [ %i.ou, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br label %.loopexit674

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  %i.oz = load ptr, ptr %7, align 16, !tbaa !50   ; 2 uses
  store ptr %i.bf, ptr %24, align 8, !tbaa !9
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !26 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  %i.pc = load i64, ptr %i.pb, align 8, !tbaa !13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #23
  store i64 %i.pc, ptr %i.j, align 8, !tbaa !38
  %i.pd = icmp ugt i64 %i.pc, 15
  br i1 %i.pd, label %.noexc.i320, label %._crit_edge.i.i319

.noexc.i320:                                      ; preds = %bb.bj
  %i.pe = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0)
          to label %.noexc321 unwind label %bb.bt ; 2 uses

.noexc321:                                        ; preds = %.noexc.i320
  store ptr %i.pe, ptr %24, align 8, !tbaa !26
  %i.pf = load i64, ptr %i.j, align 8, !tbaa !38
  store i64 %i.pf, ptr %i.bf, align 8, !tbaa !16
  br label %._crit_edge.i.i319

._crit_edge.i.i319:                               ; preds = %.noexc321, %bb.bj
  %i.pg = phi ptr [ %i.pe, %.noexc321 ], [ %i.bf, %bb.bj ] ; 2 uses
  switch i64 %i.pc, label %bb.bl [
    i64 1, label %bb.bk
    i64 0, label %bb.bm
  ]

bb.bk:                                            ; preds = %._crit_edge.i.i319
  %i.ph = load i8, ptr %i.pa, align 1, !tbaa !16
  store i8 %i.ph, ptr %i.pg, align 1, !tbaa !16
  br label %bb.bm

bb.bl:                                            ; preds = %._crit_edge.i.i319
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pg, ptr align 1 %i.pa, i64 %i.pc, i1 false)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %._crit_edge.i.i319
  %i.pi = load i64, ptr %i.j, align 8, !tbaa !38  ; 2 uses
  store i64 %i.pi, ptr %i.bg, align 8, !tbaa !13
  %i.pj = load ptr, ptr %24, align 8, !tbaa !26
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 %i.pi
  store i8 0, ptr %i.pk, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %i.pl = load ptr, ptr %24, align 8, !tbaa !26, !noalias !75 ; 7 uses
  %i.pm = load i64, ptr %i.bg, align 8, !tbaa !13, !noalias !75 ; 9 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pl, i64 %i.pm
  %.not6.i.i323 = icmp samesign eq i64 %i.pm, 0
  br i1 %.not6.i.i323, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i331, label %iter.check1590

iter.check1590:                                   ; preds = %bb.bm
  %min.iters.check1575 = icmp ult i64 %i.pm, 8
  br i1 %min.iters.check1575, label %.lr.ph.i.i324.preheader, label %vector.main.loop.iter.check1576

vector.main.loop.iter.check1576:                  ; preds = %iter.check1590
  %min.iters.check1577 = icmp ult i64 %i.pm, 32
  br i1 %min.iters.check1577, label %vec.epilog.ph1594, label %vector.ph1578

vector.ph1578:                                    ; preds = %vector.main.loop.iter.check1576
  %n.mod.vf1579 = and i64 %i.pm, 24
  %n.vec1580 = and i64 %i.pm, -32                 ; 4 uses
  %i.po = getelementptr i8, ptr %i.pl, i64 %n.vec1580
  br label %vector.body1581

vector.body1581:                                  ; preds = %vector.body1581, %vector.ph1578
  %index1582 = phi i64 [ 0, %vector.ph1578 ], [ %index.next1586, %vector.body1581 ] ; 2 uses
  %next.gep1583 = getelementptr i8, ptr %i.pl, i64 %index1582 ; 3 uses
  %i.pp = getelementptr i8, ptr %next.gep1583, i64 16 ; 2 uses
  %wide.load1584 = load <16 x i8>, ptr %next.gep1583, align 1, !tbaa !16, !noalias !75 ; 3 uses
  %wide.load1585 = load <16 x i8>, ptr %i.pp, align 1, !tbaa !16, !noalias !75 ; 3 uses
  %i.pq = add <16 x i8> %wide.load1584, splat (i8 -65)
  %i.pr = add <16 x i8> %wide.load1585, splat (i8 -65)
  %i.ps = icmp ult <16 x i8> %i.pq, splat (i8 26)
  %i.pt = icmp ult <16 x i8> %i.pr, splat (i8 26)
  %57 = or disjoint <16 x i8> %wide.load1584, splat (i8 32)
  %i.pu = or disjoint <16 x i8> %wide.load1585, splat (i8 32)
  %i.pv = select <16 x i1> %i.ps, <16 x i8> %57, <16 x i8> %wide.load1584
  %58 = select <16 x i1> %i.pt, <16 x i8> %i.pu, <16 x i8> %wide.load1585
  store <16 x i8> %i.pv, ptr %next.gep1583, align 1, !tbaa !16, !noalias !75
  store <16 x i8> %58, ptr %i.pp, align 1, !tbaa !16, !noalias !75
  %index.next1586 = add nuw i64 %index1582, 32    ; 2 uses
  %i.pw = icmp eq i64 %index.next1586, %n.vec1580
  br i1 %i.pw, label %middle.block1587, label %vector.body1581, !llvm.loop !78

middle.block1587:                                 ; preds = %vector.body1581
  %cmp.n1588 = icmp eq i64 %i.pm, %n.vec1580
  br i1 %cmp.n1588, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i329, label %vec.epilog.iter.check1592

vec.epilog.iter.check1592:                        ; preds = %middle.block1587
  %min.epilog.iters.check1593 = icmp eq i64 %n.mod.vf1579, 0
  br i1 %min.epilog.iters.check1593, label %.lr.ph.i.i324.preheader, label %vec.epilog.ph1594, !prof !47

vec.epilog.ph1594:                                ; preds = %vector.main.loop.iter.check1576, %vec.epilog.iter.check1592
  %vec.epilog.resume.val1589 = phi i64 [ %n.vec1580, %vec.epilog.iter.check1592 ], [ 0, %vector.main.loop.iter.check1576 ]
  %n.vec1596 = and i64 %i.pm, -8                  ; 3 uses
  %i.px = getelementptr i8, ptr %i.pl, i64 %n.vec1596
  br label %vec.epilog.vector.body1597

vec.epilog.vector.body1597:                       ; preds = %vec.epilog.vector.body1597, %vec.epilog.ph1594
  %index1598 = phi i64 [ %vec.epilog.resume.val1589, %vec.epilog.ph1594 ], [ %index.next1601, %vec.epilog.vector.body1597 ] ; 2 uses
  %next.gep1599 = getelementptr i8, ptr %i.pl, i64 %index1598 ; 2 uses
  %wide.load1600 = load <8 x i8>, ptr %next.gep1599, align 1, !tbaa !16, !noalias !75 ; 3 uses
  %i.py = add <8 x i8> %wide.load1600, splat (i8 -65)
  %i.pz = icmp ult <8 x i8> %i.py, splat (i8 26)
  %59 = or disjoint <8 x i8> %wide.load1600, splat (i8 32)
  %60 = select <8 x i1> %i.pz, <8 x i8> %59, <8 x i8> %wide.load1600
  store <8 x i8> %60, ptr %next.gep1599, align 1, !tbaa !16, !noalias !75
  %index.next1601 = add nuw i64 %index1598, 8     ; 2 uses
  %i.qa = icmp eq i64 %index.next1601, %n.vec1596
  br i1 %i.qa, label %vec.epilog.middle.block1602, label %vec.epilog.vector.body1597, !llvm.loop !79

vec.epilog.middle.block1602:                      ; preds = %vec.epilog.vector.body1597
  %cmp.n1603 = icmp eq i64 %i.pm, %n.vec1596
  br i1 %cmp.n1603, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i329, label %.lr.ph.i.i324.preheader

.lr.ph.i.i324.preheader:                          ; preds = %iter.check1590, %vec.epilog.iter.check1592, %vec.epilog.middle.block1602
  %.sroa.0.08.i.i325.ph = phi ptr [ %i.pl, %iter.check1590 ], [ %i.po, %vec.epilog.iter.check1592 ], [ %i.px, %vec.epilog.middle.block1602 ]
  br label %.lr.ph.i.i324

.lr.ph.i.i324:                                    ; preds = %.lr.ph.i.i324.preheader, %.lr.ph.i.i324
  %.sroa.0.08.i.i325 = phi ptr [ %i.qe, %.lr.ph.i.i324 ], [ %.sroa.0.08.i.i325.ph, %.lr.ph.i.i324.preheader ] ; 3 uses
  %i.qb = load i8, ptr %.sroa.0.08.i.i325, align 1, !tbaa !16, !noalias !75 ; 3 uses
  %i.qc = add i8 %i.qb, -65
  %or.cond.i.i.i.i326 = icmp ult i8 %i.qc, 26
  %i.qd = or disjoint i8 %i.qb, 32
  %.0.i.i.i.i327 = select i1 %or.cond.i.i.i.i326, i8 %i.qd, i8 %i.qb
  store i8 %.0.i.i.i.i327, ptr %.sroa.0.08.i.i325, align 1, !tbaa !16, !noalias !75
  %i.qe = getelementptr i8, ptr %.sroa.0.08.i.i325, i64 1 ; 2 uses
  %.not.i.i328 = icmp eq ptr %i.qe, %i.pn
  br i1 %.not.i.i328, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i329, label %.lr.ph.i.i324, !llvm.loop !80

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i329: ; preds = %.lr.ph.i.i324, %vec.epilog.middle.block1602, %middle.block1587
  %.pre.i330 = load ptr, ptr %24, align 8, !tbaa !26, !noalias !75
  br label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i331

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i331: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i329, %bb.bm
  %i.qf = phi ptr [ %.pre.i330, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i329 ], [ %i.pl, %bb.bm ] ; 3 uses
  store ptr %i.bh, ptr %23, align 8, !tbaa !9, !alias.scope !75
  %i.qg = icmp eq ptr %i.qf, %i.bf
  br i1 %i.qg, label %bb.bn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332

bb.bn:                                            ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i331
  %i.qh = load i64, ptr %i.bg, align 8, !tbaa !13, !noalias !75 ; 3 uses
  %i.qi = icmp ult i64 %i.qh, 16
  call void @llvm.assume(i1 %i.qi)
  %i.qj = add nuw nsw i64 %i.qh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bh, ptr noundef nonnull align 8 dereferenceable(1) %i.bf, i64 %i.qj, i1 false)
  br label %bb.bo

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i331
  store ptr %i.qf, ptr %23, align 8, !tbaa !26, !alias.scope !75
  %i.qk = load i64, ptr %i.bf, align 8, !tbaa !16, !noalias !75
  store i64 %i.qk, ptr %i.bh, align 8, !tbaa !16, !alias.scope !75
  %.pre4.i333 = load i64, ptr %i.bg, align 8, !tbaa !13, !noalias !75
  br label %bb.bo

bb.bo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332, %bb.bn
  %i.ql = phi ptr [ %i.bh, %bb.bn ], [ %i.qf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332 ] ; 4 uses
  %i.qm = phi i64 [ %i.qh, %bb.bn ], [ %.pre4.i333, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332 ] ; 3 uses
  store i64 %i.qm, ptr %i.bi, align 8, !tbaa !13, !alias.scope !75
  store ptr %i.bf, ptr %24, align 8, !tbaa !26, !noalias !75
  store i64 0, ptr %i.bg, align 8, !tbaa !13, !noalias !75
  store i8 0, ptr %i.bf, align 8, !tbaa !16, !noalias !75
  %i.qn = icmp eq i64 %i.qm, 11
  br i1 %i.qn, label %bb.bp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit336

bb.bp:                                            ; preds = %bb.bo
  %i.qo = load i64, ptr %i.ql, align 1
  %i.qp = xor i64 %i.qo, 8313473608956802412
  %i.qq = getelementptr i8, ptr %i.ql, i64 3
  %i.qr = load i64, ptr %i.qq, align 1
  %i.qs = xor i64 %i.qr, 7312272889231979359
  %i.qt = or i64 %i.qp, %i.qs
  %i.qu = icmp ne i64 %i.qt, 0
  %i.qv = zext i1 %i.qu to i32
  %i.qw = icmp eq i32 %i.qv, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit336

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit336: ; preds = %bb.bp, %bb.bo
  %i.qx = phi i1 [ false, %bb.bo ], [ %i.qw, %bb.bp ]
  %i.qy = icmp eq ptr %i.ql, %i.bh
  br i1 %i.qy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit336
  %i.qz = icmp ult i64 %i.qm, 16
  call void @llvm.assume(i1 %i.qz)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit336
  %i.ra = load i64, ptr %i.bh, align 8, !tbaa !16
  %i.rb = add i64 %i.ra, 1
  call void @_ZdlPvm(ptr noundef %i.ql, i64 noundef %i.rb) #24
  %.pre1075 = load ptr, ptr %24, align 8, !tbaa !26 ; 2 uses
  %i.rc = icmp eq ptr %.pre1075, %i.bf
  br i1 %i.rc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i340

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i340: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339
  %i.rd = load i64, ptr %i.bf, align 8, !tbaa !16
  %i.re = add i64 %i.rd, 1
  call void @_ZdlPvm(ptr noundef %.pre1075, i64 noundef %i.re) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i340
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br i1 %i.qx, label %bb.bq, label %bb.ca

bb.bq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342
  %i.rf = load ptr, ptr %i.ap, align 8, !tbaa !53
  %i.rg = load ptr, ptr %7, align 16, !tbaa !50   ; 2 uses
  %i.rh = ptrtoint ptr %i.rf to i64
  %i.ri = ptrtoint ptr %i.rg to i64
  %i.rj = sub i64 %i.rh, %i.ri
  %.not146 = icmp eq i64 %i.rj, 64
  br i1 %.not146, label %bb.br, label %.noexc.i344

bb.br:                                            ; preds = %bb.bq
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rg, i64 32
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !26
  %i.rm = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_511StringToIntEPiPKcb(ptr noundef nonnull %i.s, ptr noundef %i.rl, i1 noundef zeroext false)
          to label %bb.bs unwind label %.loopexit674.loopexit.split-lp.loopexit.loopexit.loopexit.split-lp

bb.bs:                                            ; preds = %bb.br
  br i1 %i.rm, label %bb.bw, label %.noexc.i344

.noexc.i344:                                      ; preds = %bb.bs, %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #23
  %i.rn = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  store ptr %i.rn, ptr %25, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #23
  store i64 26, ptr %i.i, align 8, !tbaa !38
  %i.ro = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0)
          to label %.noexc345 unwind label %bb.bu ; 2 uses

.noexc345:                                        ; preds = %.noexc.i344
  store ptr %i.ro, ptr %25, align 8, !tbaa !26
  %i.rp = load i64, ptr %i.i, align 8, !tbaa !38  ; 3 uses
  store i64 %i.rp, ptr %i.rn, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.ro, ptr noundef nonnull align 1 dereferenceable(26) @.str.12, i64 26, i1 false)
  %i.rq = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 %i.rp, ptr %i.rq, align 8, !tbaa !13
  %i.rr = load ptr, ptr %25, align 8, !tbaa !26
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 %i.rp
  store i8 0, ptr %i.rs, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #23
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat17ThrowErrorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_iS9_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.unreachable667 unwind label %bb.bv

.unreachable667:                                  ; preds = %.noexc345
  unreachable

bb.bt:                                            ; preds = %.noexc.i320
  %i.rt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br label %.loopexit674

bb.bu:                                            ; preds = %.noexc.i344
  %i.ru = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358

bb.bv:                                            ; preds = %.noexc345
  %i.rv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rw = load ptr, ptr %25, align 8, !tbaa !26   ; 2 uses
  %i.rx = icmp eq ptr %i.rw, %i.rn
  br i1 %i.rx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356: ; preds = %bb.bv
  %i.ry = load i64, ptr %i.rn, align 8, !tbaa !16
  %i.rz = add i64 %i.ry, 1
  call void @_ZdlPvm(ptr noundef %i.rw, i64 noundef %i.rz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356, %bb.bu
  %.pn147 = phi { ptr, i32 } [ %i.ru, %bb.bu ], [ %i.rv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356 ], [ %i.rv, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  br label %.loopexit674

bb.bw:                                            ; preds = %bb.bs
  %i.sa = load i32, ptr %i.s, align 4, !tbaa !3   ; 3 uses
  %i.sb = mul nsw i32 %i.sa, 3
  %i.sc = mul nsw i32 %i.sb, %i.sa
  %i.sd = mul nsw i32 %i.sc, %i.sa                ; 2 uses
  %i.se = sext i32 %i.sd to i64                   ; 3 uses
  %i.sf = icmp slt i32 %i.sd, 0
  br i1 %i.sf, label %.invoke, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.sg = load ptr, ptr %i.bp, align 8, !tbaa !81
  %i.sh = load ptr, ptr %5, align 8, !tbaa !84    ; 4 uses
  %i.si = ptrtoint ptr %i.sg to i64
  %i.sj = ptrtoint ptr %i.sh to i64               ; 2 uses
  %i.sk = sub i64 %i.si, %i.sj                    ; 2 uses
  %i.sl = ashr exact i64 %i.sk, 2
  %i.sm = icmp ult i64 %i.sl, %i.se
  br i1 %i.sm, label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i359, label %.outer.outer1756.backedge

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i359: ; preds = %bb.bx
  %i.sn = load ptr, ptr %i.bo, align 8, !tbaa !85
  %i.so = ptrtoint ptr %i.sn to i64
  %i.sp = sub i64 %i.so, %i.sj                    ; 3 uses
  %i.sq = shl nuw nsw i64 %i.se, 2
  %i.sr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sq) #22
          to label %.noexc364 unwind label %.loopexit674.loopexit.split-lp.loopexit.loopexit.loopexit.split-lp ; 4 uses

.noexc364:                                        ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i359
  %i.ss = icmp sgt i64 %i.sp, 0
  br i1 %i.ss, label %bb.by, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i360

bb.by:                                            ; preds = %.noexc364
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.sr, ptr align 4 %i.sh, i64 %i.sp, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i360

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i360: ; preds = %bb.by, %.noexc364
  %.not.i8.i361 = icmp eq ptr %i.sh, null
  br i1 %.not.i8.i361, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i362, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i360
  call void @_ZdlPvm(ptr noundef nonnull %i.sh, i64 noundef %i.sk) #24
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i362

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i362: ; preds = %bb.bz, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i360
  store ptr %i.sr, ptr %5, align 8, !tbaa !84
  %i.st = getelementptr inbounds nuw i8, ptr %i.sr, i64 %i.sp
  store ptr %i.st, ptr %i.bo, align 8, !tbaa !85
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.sr, i64 %i.se
  store ptr %i.su, ptr %i.bp, align 8, !tbaa !81
  br label %.outer.outer1756.backedge

.outer.outer1756.backedge:                        ; preds = %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i362, %bb.bx
  br label %.outer.outer1756, !llvm.loop !39

bb.ca:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342
  %i.sv = load ptr, ptr %7, align 16, !tbaa !50   ; 2 uses
  store ptr %i.bj, ptr %26, align 8, !tbaa !9
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !26 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sv, i64 8
  %i.sy = load i64, ptr %i.sx, align 8, !tbaa !13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  store i64 %i.sy, ptr %i.h, align 8, !tbaa !38
  %i.sz = icmp ugt i64 %i.sy, 15
  br i1 %i.sz, label %.noexc.i367, label %._crit_edge.i.i366

.noexc.i367:                                      ; preds = %bb.ca
  %i.ta = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %.noexc368 unwind label %bb.cl ; 2 uses

.noexc368:                                        ; preds = %.noexc.i367
  store ptr %i.ta, ptr %26, align 8, !tbaa !26
  %i.tb = load i64, ptr %i.h, align 8, !tbaa !38
  store i64 %i.tb, ptr %i.bj, align 8, !tbaa !16
  br label %._crit_edge.i.i366

._crit_edge.i.i366:                               ; preds = %.noexc368, %bb.ca
  %i.tc = phi ptr [ %i.ta, %.noexc368 ], [ %i.bj, %bb.ca ] ; 2 uses
  switch i64 %i.sy, label %bb.cc [
    i64 1, label %bb.cb
    i64 0, label %bb.cd
  ]

bb.cb:                                            ; preds = %._crit_edge.i.i366
  %i.td = load i8, ptr %i.sw, align 1, !tbaa !16
  store i8 %i.td, ptr %i.tc, align 1, !tbaa !16
  br label %bb.cd

bb.cc:                                            ; preds = %._crit_edge.i.i366
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.tc, ptr align 1 %i.sw, i64 %i.sy, i1 false)
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb, %._crit_edge.i.i366
  %i.te = load i64, ptr %i.h, align 8, !tbaa !38  ; 2 uses
  store i64 %i.te, ptr %i.bk, align 8, !tbaa !13
  %i.tf = load ptr, ptr %26, align 8, !tbaa !26
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 %i.te
  store i8 0, ptr %i.tg, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  %i.th = load ptr, ptr %26, align 8, !tbaa !26, !noalias !86 ; 7 uses
  %i.ti = load i64, ptr %i.bk, align 8, !tbaa !13, !noalias !86 ; 9 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.th, i64 %i.ti
  %.not6.i.i370 = icmp samesign eq i64 %i.ti, 0
  br i1 %.not6.i.i370, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i378, label %iter.check1560

iter.check1560:                                   ; preds = %bb.cd
  %min.iters.check1545 = icmp ult i64 %i.ti, 8
  br i1 %min.iters.check1545, label %.lr.ph.i.i371.preheader, label %vector.main.loop.iter.check1546

vector.main.loop.iter.check1546:                  ; preds = %iter.check1560
  %min.iters.check1547 = icmp ult i64 %i.ti, 32
  br i1 %min.iters.check1547, label %vec.epilog.ph1564, label %vector.ph1548

vector.ph1548:                                    ; preds = %vector.main.loop.iter.check1546
  %n.mod.vf1549 = and i64 %i.ti, 24
  %n.vec1550 = and i64 %i.ti, -32                 ; 4 uses
  %i.tk = getelementptr i8, ptr %i.th, i64 %n.vec1550
  br label %vector.body1551

vector.body1551:                                  ; preds = %vector.body1551, %vector.ph1548
  %index1552 = phi i64 [ 0, %vector.ph1548 ], [ %index.next1556, %vector.body1551 ] ; 2 uses
  %next.gep1553 = getelementptr i8, ptr %i.th, i64 %index1552 ; 3 uses
  %i.tl = getelementptr i8, ptr %next.gep1553, i64 16 ; 2 uses
  %wide.load1554 = load <16 x i8>, ptr %next.gep1553, align 1, !tbaa !16, !noalias !86 ; 3 uses
  %wide.load1555 = load <16 x i8>, ptr %i.tl, align 1, !tbaa !16, !noalias !86 ; 3 uses
  %i.tm = add <16 x i8> %wide.load1554, splat (i8 -65)
  %i.tn = add <16 x i8> %wide.load1555, splat (i8 -65)
  %i.to = icmp ult <16 x i8> %i.tm, splat (i8 26)
  %i.tp = icmp ult <16 x i8> %i.tn, splat (i8 26)
  %61 = or disjoint <16 x i8> %wide.load1554, splat (i8 32)
  %i.tq = or disjoint <16 x i8> %wide.load1555, splat (i8 32)
  %i.tr = select <16 x i1> %i.to, <16 x i8> %61, <16 x i8> %wide.load1554
  %62 = select <16 x i1> %i.tp, <16 x i8> %i.tq, <16 x i8> %wide.load1555
  store <16 x i8> %i.tr, ptr %next.gep1553, align 1, !tbaa !16, !noalias !86
  store <16 x i8> %62, ptr %i.tl, align 1, !tbaa !16, !noalias !86
  %index.next1556 = add nuw i64 %index1552, 32    ; 2 uses
  %i.ts = icmp eq i64 %index.next1556, %n.vec1550
  br i1 %i.ts, label %middle.block1557, label %vector.body1551, !llvm.loop !89

middle.block1557:                                 ; preds = %vector.body1551
  %cmp.n1558 = icmp eq i64 %i.ti, %n.vec1550
  br i1 %cmp.n1558, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i376, label %vec.epilog.iter.check1562

vec.epilog.iter.check1562:                        ; preds = %middle.block1557
  %min.epilog.iters.check1563 = icmp eq i64 %n.mod.vf1549, 0
  br i1 %min.epilog.iters.check1563, label %.lr.ph.i.i371.preheader, label %vec.epilog.ph1564, !prof !47

vec.epilog.ph1564:                                ; preds = %vector.main.loop.iter.check1546, %vec.epilog.iter.check1562
  %vec.epilog.resume.val1559 = phi i64 [ %n.vec1550, %vec.epilog.iter.check1562 ], [ 0, %vector.main.loop.iter.check1546 ]
  %n.vec1566 = and i64 %i.ti, -8                  ; 3 uses
  %i.tt = getelementptr i8, ptr %i.th, i64 %n.vec1566
  br label %vec.epilog.vector.body1567

vec.epilog.vector.body1567:                       ; preds = %vec.epilog.vector.body1567, %vec.epilog.ph1564
  %index1568 = phi i64 [ %vec.epilog.resume.val1559, %vec.epilog.ph1564 ], [ %index.next1571, %vec.epilog.vector.body1567 ] ; 2 uses
  %next.gep1569 = getelementptr i8, ptr %i.th, i64 %index1568 ; 2 uses
  %wide.load1570 = load <8 x i8>, ptr %next.gep1569, align 1, !tbaa !16, !noalias !86 ; 3 uses
  %i.tu = add <8 x i8> %wide.load1570, splat (i8 -65)
  %i.tv = icmp ult <8 x i8> %i.tu, splat (i8 26)
  %63 = or disjoint <8 x i8> %wide.load1570, splat (i8 32)
  %64 = select <8 x i1> %i.tv, <8 x i8> %63, <8 x i8> %wide.load1570
  store <8 x i8> %64, ptr %next.gep1569, align 1, !tbaa !16, !noalias !86
  %index.next1571 = add nuw i64 %index1568, 8     ; 2 uses
  %i.tw = icmp eq i64 %index.next1571, %n.vec1566
  br i1 %i.tw, label %vec.epilog.middle.block1572, label %vec.epilog.vector.body1567, !llvm.loop !90

vec.epilog.middle.block1572:                      ; preds = %vec.epilog.vector.body1567
  %cmp.n1573 = icmp eq i64 %i.ti, %n.vec1566
  br i1 %cmp.n1573, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i376, label %.lr.ph.i.i371.preheader

.lr.ph.i.i371.preheader:                          ; preds = %iter.check1560, %vec.epilog.iter.check1562, %vec.epilog.middle.block1572
  %.sroa.0.08.i.i372.ph = phi ptr [ %i.th, %iter.check1560 ], [ %i.tk, %vec.epilog.iter.check1562 ], [ %i.tt, %vec.epilog.middle.block1572 ]
  br label %.lr.ph.i.i371

.lr.ph.i.i371:                                    ; preds = %.lr.ph.i.i371.preheader, %.lr.ph.i.i371
  %.sroa.0.08.i.i372 = phi ptr [ %i.ua, %.lr.ph.i.i371 ], [ %.sroa.0.08.i.i372.ph, %.lr.ph.i.i371.preheader ] ; 3 uses
  %i.tx = load i8, ptr %.sroa.0.08.i.i372, align 1, !tbaa !16, !noalias !86 ; 3 uses
  %i.ty = add i8 %i.tx, -65
  %or.cond.i.i.i.i373 = icmp ult i8 %i.ty, 26
  %i.tz = or disjoint i8 %i.tx, 32
  %.0.i.i.i.i374 = select i1 %or.cond.i.i.i.i373, i8 %i.tz, i8 %i.tx
  store i8 %.0.i.i.i.i374, ptr %.sroa.0.08.i.i372, align 1, !tbaa !16, !noalias !86
  %i.ua = getelementptr i8, ptr %.sroa.0.08.i.i372, i64 1 ; 2 uses
  %.not.i.i375 = icmp eq ptr %i.ua, %i.tj
  br i1 %.not.i.i375, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i376, label %.lr.ph.i.i371, !llvm.loop !91

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i376: ; preds = %.lr.ph.i.i371, %vec.epilog.middle.block1572, %middle.block1557
  %.pre.i377 = load ptr, ptr %26, align 8, !tbaa !26, !noalias !86
  br label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i378

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i378: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i376, %bb.cd
  %i.ub = phi ptr [ %.pre.i377, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i376 ], [ %i.th, %bb.cd ] ; 4 uses
  %i.uc = icmp eq ptr %i.ub, %i.bj
  br i1 %i.uc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit386.thread.thread, label %bb.ce

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit386.thread.thread: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i378
  store ptr %i.bj, ptr %26, align 8, !tbaa !26, !noalias !86
  store i64 0, ptr %i.bk, align 8, !tbaa !13, !noalias !86
  store i8 0, ptr %i.bj, align 8, !tbaa !16, !noalias !86
  br label %bb.co

bb.ce:                                            ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i378
  %i.ud = load i64, ptr %i.bj, align 8, !tbaa !16, !noalias !86
  %.pre4.i380 = load i64, ptr %i.bk, align 8, !tbaa !13, !noalias !86
  store ptr %i.bj, ptr %26, align 8, !tbaa !26, !noalias !86
  store i64 0, ptr %i.bk, align 8, !tbaa !13, !noalias !86
  store i8 0, ptr %i.bj, align 8, !tbaa !16, !noalias !86
  %i.ue = icmp eq i64 %.pre4.i380, 18
  br i1 %i.ue, label %bb.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit386

bb.cf:                                            ; preds = %bb.ce
  %i.uf = load i128, ptr %i.ub, align 1
  %i.ug = xor i128 %i.uf, 146721052089031115846878402901911565676
  %i.uh = getelementptr i8, ptr %i.ub, i64 16
  %i.ui = load i16, ptr %i.uh, align 1
  %i.uj = zext i16 %i.ui to i128
  %i.uk = xor i128 %i.uj, 25959
  %i.ul = or i128 %i.ug, %i.uk
  %i.um = icmp ne i128 %i.ul, 0
  %i.un = zext i1 %i.um to i32
  %i.uo = icmp eq i32 %i.un, 0
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit386

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit386: ; preds = %bb.ce, %bb.cf
  %i.up = phi i1 [ false, %bb.ce ], [ %i.uo, %bb.cf ] ; 2 uses
  %i.uq = add i64 %i.ud, 1
  call void @_ZdlPvm(ptr noundef %i.ub, i64 noundef %i.uq) #24
  %.pre1076 = load ptr, ptr %26, align 8, !tbaa !26 ; 2 uses
  %i.ur = icmp eq ptr %.pre1076, %i.bj
  br i1 %i.ur, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i388, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i388: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit386
  br i1 %i.up, label %bb.cg, label %bb.co

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit386
  %i.us = load i64, ptr %i.bj, align 8, !tbaa !16
  %i.ut = add i64 %i.us, 1
  call void @_ZdlPvm(ptr noundef %.pre1076, i64 noundef %i.ut) #24
  br i1 %i.up, label %bb.cg, label %bb.co

bb.cg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i388, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389
  %i.uu = load ptr, ptr %i.ap, align 8, !tbaa !53
  %i.uv = load ptr, ptr %7, align 16, !tbaa !50   ; 2 uses
  %i.uw = ptrtoint ptr %i.uu to i64
  %i.ux = ptrtoint ptr %i.uv to i64
  %i.uy = sub i64 %i.uw, %i.ux
  %.not143 = icmp eq i64 %i.uy, 96
  br i1 %.not143, label %bb.ch, label %.noexc.i391

bb.ch:                                            ; preds = %bb.cg
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uv, i64 32
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !26
  %i.vb = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_513StringToFloatEPfPKc(ptr noundef nonnull %i.u, ptr noundef %i.va)
          to label %bb.ci unwind label %.loopexit674.loopexit.split-lp.loopexit.loopexit.loopexit

bb.ci:                                            ; preds = %bb.ch
  br i1 %i.vb, label %bb.cj, label %.noexc.i391

bb.cj:                                            ; preds = %bb.ci
  %i.vc = load ptr, ptr %7, align 16, !tbaa !50
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 64
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !26
  %i.vf = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_513StringToFloatEPfPKc(ptr noundef nonnull %i.v, ptr noundef %i.ve)
          to label %bb.ck unwind label %.loopexit674.loopexit.split-lp.loopexit.loopexit.loopexit

bb.ck:                                            ; preds = %bb.cj
  br i1 %i.vf, label %.outer.backedge, label %.noexc.i391

.noexc.i391:                                      ; preds = %bb.ck, %bb.ci, %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #23
  %i.vg = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 4 uses
  store ptr %i.vg, ptr %27, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  store i64 33, ptr %i.g, align 8, !tbaa !38
  %i.vh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc392 unwind label %bb.cm ; 3 uses

.noexc392:                                        ; preds = %.noexc.i391
  store ptr %i.vh, ptr %27, align 8, !tbaa !26
  %i.vi = load i64, ptr %i.g, align 8, !tbaa !38  ; 3 uses
  store i64 %i.vi, ptr %i.vg, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.vh, ptr noundef nonnull align 1 dereferenceable(33) @.str.14, i64 33, i1 false)
  %i.vj = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 %i.vi, ptr %i.vj, align 8, !tbaa !13
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vh, i64 %i.vi
  store i8 0, ptr %i.vk, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat17ThrowErrorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_iS9_(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.unreachable666 unwind label %bb.cn

.unreachable666:                                  ; preds = %.noexc392
  unreachable

bb.cl:                                            ; preds = %.noexc.i367
  %i.vl = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit674

bb.cm:                                            ; preds = %.noexc.i391
  %i.vm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405

bb.cn:                                            ; preds = %.noexc392
  %i.vn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vo = load ptr, ptr %27, align 8, !tbaa !26   ; 2 uses
  %i.vp = icmp eq ptr %i.vo, %i.vg
  br i1 %i.vp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403: ; preds = %bb.cn
  %i.vq = load i64, ptr %i.vg, align 8, !tbaa !16
  %i.vr = add i64 %i.vq, 1
  call void @_ZdlPvm(ptr noundef %i.vo, i64 noundef %i.vr) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403, %bb.cm
  %.pn144 = phi { ptr, i32 } [ %i.vm, %bb.cm ], [ %i.vn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403 ], [ %i.vn, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  br label %.loopexit674

bb.co:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit386.thread.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i388, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389
  %i.vs = load ptr, ptr %7, align 16, !tbaa !50   ; 2 uses
  store ptr %i.bl, ptr %28, align 8, !tbaa !9
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !26 ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vs, i64 8
  %i.vv = load i64, ptr %i.vu, align 8, !tbaa !13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  store i64 %i.vv, ptr %i.f, align 8, !tbaa !38
  %i.vw = icmp ugt i64 %i.vv, 15
  br i1 %i.vw, label %.noexc.i407, label %._crit_edge.i.i406

.noexc.i407:                                      ; preds = %bb.co
  %i.vx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc408 unwind label %bb.cz ; 2 uses

.noexc408:                                        ; preds = %.noexc.i407
  store ptr %i.vx, ptr %28, align 8, !tbaa !26
  %i.vy = load i64, ptr %i.f, align 8, !tbaa !38
  store i64 %i.vy, ptr %i.bl, align 8, !tbaa !16
  br label %._crit_edge.i.i406

._crit_edge.i.i406:                               ; preds = %.noexc408, %bb.co
  %i.vz = phi ptr [ %i.vx, %.noexc408 ], [ %i.bl, %bb.co ] ; 2 uses
  switch i64 %i.vv, label %bb.cq [
    i64 1, label %bb.cp
    i64 0, label %bb.cr
  ]

bb.cp:                                            ; preds = %._crit_edge.i.i406
  %i.wa = load i8, ptr %i.vt, align 1, !tbaa !16
  store i8 %i.wa, ptr %i.vz, align 1, !tbaa !16
  br label %bb.cr

bb.cq:                                            ; preds = %._crit_edge.i.i406
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.vz, ptr align 1 %i.vt, i64 %i.vv, i1 false)
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp, %._crit_edge.i.i406
  %i.wb = load i64, ptr %i.f, align 8, !tbaa !38  ; 2 uses
  store i64 %i.wb, ptr %i.bm, align 8, !tbaa !13
  %i.wc = load ptr, ptr %28, align 8, !tbaa !26
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 %i.wb
  store i8 0, ptr %i.wd, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  %i.we = load ptr, ptr %28, align 8, !tbaa !26, !noalias !92 ; 7 uses
  %i.wf = load i64, ptr %i.bm, align 8, !tbaa !13, !noalias !92 ; 9 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.we, i64 %i.wf
  %.not6.i.i410 = icmp samesign eq i64 %i.wf, 0
  br i1 %.not6.i.i410, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i418, label %iter.check

iter.check:                                       ; preds = %bb.cr
  %min.iters.check = icmp ult i64 %i.wf, 8
  br i1 %min.iters.check, label %.lr.ph.i.i411.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1535 = icmp ult i64 %i.wf, 32
  br i1 %min.iters.check1535, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.wf, 24
  %n.vec = and i64 %i.wf, -32                     ; 4 uses
  %i.wh = getelementptr i8, ptr %i.we, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.we, i64 %index ; 3 uses
  %i.wi = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !16, !noalias !92 ; 3 uses
  %wide.load1536 = load <16 x i8>, ptr %i.wi, align 1, !tbaa !16, !noalias !92 ; 3 uses
  %i.wj = add <16 x i8> %wide.load, splat (i8 -65)
  %i.wk = add <16 x i8> %wide.load1536, splat (i8 -65)
  %i.wl = icmp ult <16 x i8> %i.wj, splat (i8 26)
  %i.wm = icmp ult <16 x i8> %i.wk, splat (i8 26)
  %65 = or disjoint <16 x i8> %wide.load, splat (i8 32)
  %i.wn = or disjoint <16 x i8> %wide.load1536, splat (i8 32)
  %i.wo = select <16 x i1> %i.wl, <16 x i8> %65, <16 x i8> %wide.load
  %66 = select <16 x i1> %i.wm, <16 x i8> %i.wn, <16 x i8> %wide.load1536
  store <16 x i8> %i.wo, ptr %next.gep, align 1, !tbaa !16, !noalias !92
  store <16 x i8> %66, ptr %i.wi, align 1, !tbaa !16, !noalias !92
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.wp = icmp eq i64 %index.next, %n.vec
  br i1 %i.wp, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.wf, %n.vec
  br i1 %cmp.n, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i416, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i411.preheader, label %vec.epilog.ph, !prof !47

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1538 = and i64 %i.wf, -8                  ; 3 uses
  %i.wq = getelementptr i8, ptr %i.we, i64 %n.vec1538
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1539 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1542, %vec.epilog.vector.body ] ; 2 uses
  %next.gep1540 = getelementptr i8, ptr %i.we, i64 %index1539 ; 2 uses
  %wide.load1541 = load <8 x i8>, ptr %next.gep1540, align 1, !tbaa !16, !noalias !92 ; 3 uses
  %i.wr = add <8 x i8> %wide.load1541, splat (i8 -65)
  %i.ws = icmp ult <8 x i8> %i.wr, splat (i8 26)
  %67 = or disjoint <8 x i8> %wide.load1541, splat (i8 32)
  %68 = select <8 x i1> %i.ws, <8 x i8> %67, <8 x i8> %wide.load1541
  store <8 x i8> %68, ptr %next.gep1540, align 1, !tbaa !16, !noalias !92
  %index.next1542 = add nuw i64 %index1539, 8     ; 2 uses
  %i.wt = icmp eq i64 %index.next1542, %n.vec1538
  br i1 %i.wt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !96

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1543 = icmp eq i64 %i.wf, %n.vec1538
  br i1 %cmp.n1543, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i416, label %.lr.ph.i.i411.preheader

.lr.ph.i.i411.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i412.ph = phi ptr [ %i.we, %iter.check ], [ %i.wh, %vec.epilog.iter.check ], [ %i.wq, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i411

.lr.ph.i.i411:                                    ; preds = %.lr.ph.i.i411.preheader, %.lr.ph.i.i411
  %.sroa.0.08.i.i412 = phi ptr [ %i.wx, %.lr.ph.i.i411 ], [ %.sroa.0.08.i.i412.ph, %.lr.ph.i.i411.preheader ] ; 3 uses
  %i.wu = load i8, ptr %.sroa.0.08.i.i412, align 1, !tbaa !16, !noalias !92 ; 3 uses
  %i.wv = add i8 %i.wu, -65
  %or.cond.i.i.i.i413 = icmp ult i8 %i.wv, 26
  %i.ww = or disjoint i8 %i.wu, 32
  %.0.i.i.i.i414 = select i1 %or.cond.i.i.i.i413, i8 %i.ww, i8 %i.wu
  store i8 %.0.i.i.i.i414, ptr %.sroa.0.08.i.i412, align 1, !tbaa !16, !noalias !92
  %i.wx = getelementptr i8, ptr %.sroa.0.08.i.i412, i64 1 ; 2 uses
  %.not.i.i415 = icmp eq ptr %i.wx, %i.wg
  br i1 %.not.i.i415, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i416, label %.lr.ph.i.i411, !llvm.loop !97

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i416: ; preds = %.lr.ph.i.i411, %vec.epilog.middle.block, %middle.block
  %.pre.i417 = load ptr, ptr %28, align 8, !tbaa !26, !noalias !92
  br label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i418

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i418: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i416, %bb.cr
  %i.wy = phi ptr [ %.pre.i417, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i416 ], [ %i.we, %bb.cr ] ; 4 uses
  %i.wz = icmp eq ptr %i.wy, %i.bl
  br i1 %i.wz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426.thread.thread, label %bb.cs

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426.thread.thread: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i418
  store ptr %i.bl, ptr %28, align 8, !tbaa !26, !noalias !92
  store i64 0, ptr %i.bm, align 8, !tbaa !13, !noalias !92
  store i8 0, ptr %i.bl, align 8, !tbaa !16, !noalias !92
  br label %.loopexit1746

bb.cs:                                            ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i418
  %i.xa = load i64, ptr %i.bl, align 8, !tbaa !16, !noalias !92
  %.pre4.i420 = load i64, ptr %i.bm, align 8, !tbaa !13, !noalias !92
  store ptr %i.bl, ptr %28, align 8, !tbaa !26, !noalias !92
  store i64 0, ptr %i.bm, align 8, !tbaa !13, !noalias !92
  store i8 0, ptr %i.bl, align 8, !tbaa !16, !noalias !92
  %i.xb = icmp eq i64 %.pre4.i420, 18
  br i1 %i.xb, label %bb.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426

bb.ct:                                            ; preds = %bb.cs
  %i.xc = load i128, ptr %i.wy, align 1
  %i.xd = xor i128 %i.xc, 146721052089031115846878402910501500268
  %i.xe = getelementptr i8, ptr %i.wy, i64 16
  %i.xf = load i16, ptr %i.xe, align 1
  %i.xg = zext i16 %i.xf to i128
  %i.xh = xor i128 %i.xg, 25959
  %i.xi = or i128 %i.xd, %i.xh
  %i.xj = icmp ne i128 %i.xi, 0
  %i.xk = zext i1 %i.xj to i32
  %i.xl = icmp eq i32 %i.xk, 0
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426: ; preds = %bb.cs, %bb.ct
  %i.xm = phi i1 [ false, %bb.cs ], [ %i.xl, %bb.ct ] ; 2 uses
  %i.xn = add i64 %i.xa, 1
  call void @_ZdlPvm(ptr noundef %i.wy, i64 noundef %i.xn) #24
  %.pre1077 = load ptr, ptr %28, align 8, !tbaa !26 ; 2 uses
  %i.xo = icmp eq ptr %.pre1077, %i.bl
  br i1 %i.xo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i428, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i428: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426
  br i1 %i.xm, label %bb.cu, label %.loopexit1746

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426
  %i.xp = load i64, ptr %i.bl, align 8, !tbaa !16
  %i.xq = add i64 %i.xp, 1
  call void @_ZdlPvm(ptr noundef %.pre1077, i64 noundef %i.xq) #24
  br i1 %i.xm, label %bb.cu, label %.loopexit1746

bb.cu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i428, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429
  %i.xr = load ptr, ptr %i.ap, align 8, !tbaa !53
  %i.xs = load ptr, ptr %7, align 16, !tbaa !50   ; 2 uses
  %i.xt = ptrtoint ptr %i.xr to i64
  %i.xu = ptrtoint ptr %i.xs to i64
  %i.xv = sub i64 %i.xt, %i.xu
  %.not140 = icmp eq i64 %i.xv, 96
  br i1 %.not140, label %bb.cv, label %.noexc.i431

bb.cv:                                            ; preds = %bb.cu
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xs, i64 32
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !26
  %i.xy = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_513StringToFloatEPfPKc(ptr noundef nonnull %i.w, ptr noundef %i.xx)
          to label %bb.cw unwind label %.loopexit674.loopexit.split-lp.loopexit.loopexit.loopexit

bb.cw:                                            ; preds = %bb.cv
  br i1 %i.xy, label %bb.cx, label %.noexc.i431

bb.cx:                                            ; preds = %bb.cw
  %i.xz = load ptr, ptr %7, align 16, !tbaa !50
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 64
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !26
  %i.yc = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_513StringToFloatEPfPKc(ptr noundef nonnull %i.x, ptr noundef %i.yb)
          to label %bb.cy unwind label %.loopexit674.loopexit.split-lp.loopexit.loopexit.loopexit

bb.cy:                                            ; preds = %bb.cx
  br i1 %i.yc, label %.outer.backedge, label %.noexc.i431

.outer.backedge:                                  ; preds = %bb.cy, %bb.ck
  br label %.outer, !llvm.loop !39

.noexc.i431:                                      ; preds = %bb.cy, %bb.cw, %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  %i.yd = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 4 uses
  store ptr %i.yd, ptr %29, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i64 33, ptr %i.e, align 8, !tbaa !38
  %i.ye = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc432 unwind label %bb.da ; 3 uses

.noexc432:                                        ; preds = %.noexc.i431
  store ptr %i.ye, ptr %29, align 8, !tbaa !26
  %i.yf = load i64, ptr %i.e, align 8, !tbaa !38  ; 3 uses
  store i64 %i.yf, ptr %i.yd, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.ye, ptr noundef nonnull align 1 dereferenceable(33) @.str.16, i64 33, i1 false)
  %i.yg = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 %i.yf, ptr %i.yg, align 8, !tbaa !13
  %i.yh = getelementptr inbounds nuw i8, ptr %i.ye, i64 %i.yf
  store i8 0, ptr %i.yh, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat17ThrowErrorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_iS9_(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.unreachable665 unwind label %bb.db

.unreachable665:                                  ; preds = %.noexc432
  unreachable

bb.cz:                                            ; preds = %.noexc.i407
  %i.yi = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit674

bb.da:                                            ; preds = %.noexc.i431
  %i.yj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445

bb.db:                                            ; preds = %.noexc432
  %i.yk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yl = load ptr, ptr %29, align 8, !tbaa !26   ; 2 uses
  %i.ym = icmp eq ptr %i.yl, %i.yd
  br i1 %i.ym, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i443

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i443: ; preds = %bb.db
  %i.yn = load i64, ptr %i.yd, align 8, !tbaa !16
  %i.yo = add i64 %i.yn, 1
  call void @_ZdlPvm(ptr noundef %i.yl, i64 noundef %i.yo) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445: ; preds = %bb.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i443, %bb.da
  %.pn141 = phi { ptr, i32 } [ %i.yj, %bb.da ], [ %i.yk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i443 ], [ %i.yk, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  br label %.loopexit674

.loopexit1746:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i428, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426.thread.thread
  %i.yp = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_519StringVecToFloatVecERSt6vectorIfSaIfEERKS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.dc unwind label %.loopexit674.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dc:                                            ; preds = %.loopexit1746
  br i1 %i.yp, label %bb.dd, label %.noexc.i447

bb.dd:                                            ; preds = %bb.dc
  %i.yq = load ptr, ptr %i.bn, align 8, !tbaa !85
  %i.yr = load ptr, ptr %8, align 8, !tbaa !84    ; 5 uses
  %i.ys = ptrtoint ptr %i.yq to i64
  %i.yt = ptrtoint ptr %i.yr to i64
  %i.yu = sub i64 %i.ys, %i.yt
  %.not137 = icmp eq i64 %i.yu, 12
  br i1 %.not137, label %.preheader, label %.noexc.i447

.preheader:                                       ; preds = %bb.dd
  %i.yv = trunc nuw i8 %.054.ph.ph1748 to i1      ; 3 uses
  %i.yw = load i32, ptr %i.t, align 4
  %i.yx = icmp slt i32 %.047.ph.ph.ph, %i.yw
  %or.cond = select i1 %i.yv, i1 %i.yx, i1 false
  br i1 %or.cond, label %bb.dg, label %bb.dm

.noexc.i447:                                      ; preds = %bb.dd, %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  %i.yy = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 4 uses
  store ptr %i.yy, ptr %30, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i64 34, ptr %i.d, align 8, !tbaa !38
  %i.yz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc448 unwind label %bb.de ; 3 uses

.noexc448:                                        ; preds = %.noexc.i447
  store ptr %i.yz, ptr %30, align 8, !tbaa !26
  %i.za = load i64, ptr %i.d, align 8, !tbaa !38  ; 3 uses
  store i64 %i.za, ptr %i.yy, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) %i.yz, ptr noundef nonnull align 1 dereferenceable(34) @.str.17, i64 34, i1 false)
end_hunk_0
