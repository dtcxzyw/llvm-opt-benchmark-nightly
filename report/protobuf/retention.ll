inline.NumInlined: 1424
inline.NumDeleted: 734
begin_hunk_0_@_ZN6google8protobuf8compiler27StripSourceRetentionOptionsERKNS0_14DescriptorPoolERNS0_19FileDescriptorProtoE:bb.a
  %i.al = and i64 %i.ak, 1
  %i.am = icmp eq i64 %i.al, 0
  %i.an = add i64 %i.ak, -1
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.i
  %.0.i.i.i.i.i = select i1 %i.am, ptr %i.s, ptr %i.aq
  %i.ar = load ptr, ptr %.0.i.i.i.i.i, align 8, !tbaa !41 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.12.0179.i, %.sroa.21119.0178.i
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %i.at = load i32, ptr %i.as, align 4, !tbaa !42
  %i.au = and i32 %i.at, 1
  %i.av = icmp eq i32 %i.au, 0
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8
  %.0.v.i.i.i.i.i.i.i.i.i.i = select i1 %i.av, ptr %i.as, ptr %i.ax
  %.0.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 28
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !44
  %i.ba = sext i32 %i.az to i64
  store ptr %.0.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.12.0179.i, align 8, !tbaa !46
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.12.0179.i, i64 8
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !48
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.12.0179.i, i64 16
  %i.bd = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.bd, ptr %i.bc, align 8, !tbaa !49
  br label %_ZNSt6vectorISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE12emplace_backIJRKN6google8protobuf13RepeatedFieldIiEERiEEERS6_DpOT_.exit.i

bb.l:                                             ; preds = %.lr.ph.i
  %i.be = ptrtoint ptr %.sroa.12.0179.i to i64
  %i.bf = ptrtoint ptr %.sroa.0109.0180.i to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 4 uses
  %i.bh = icmp eq i64 %i.bg, 9223372036854775800
  br i1 %i.bh, label %bb.m, label %_ZNKSt6vectorISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #23
          to label %.noexc71.i unwind label %.loopexit.split-lp157.i

.noexc71.i:                                       ; preds = %bb.m
  unreachable

_ZNKSt6vectorISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.bi = sdiv exact i64 %i.bg, 24                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bi, i64 1)
  %i.bj = add nsw i64 %.sroa.speculated.i.i.i, %i.bi ; 2 uses
  %i.bk = icmp ult i64 %i.bj, %i.bi
  %i.bl = call i64 @llvm.umin.i64(i64 %i.bj, i64 384307168202282325)
  %i.bm = select i1 %i.bk, i64 384307168202282325, i64 %i.bl ; 3 uses
  %.not.i.i61.i = icmp ne i64 %i.bm, 0
  call void @llvm.assume(i1 %.not.i.i61.i)
  %i.bn = mul nuw nsw i64 %i.bm, 24
  %i.bo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #24
          to label %.noexc72.i unwind label %.loopexit156.i ; 5 uses

.noexc72.i:                                       ; preds = %_ZNKSt6vectorISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bg ; 3 uses
  %i.bq = load i32, ptr %i.as, align 4, !tbaa !42
  %i.br = and i32 %i.bq, 1
  %i.bs = icmp eq i32 %i.br, 0
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8
  %.0.v.i.i.i.i.i.i.i.i.i62.i = select i1 %i.bs, ptr %i.as, ptr %i.bu
  %.0.i.i.i.i.i.i.i.i.i63.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i.i.i.i.i62.i, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ar, i64 28
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !44
  %i.bx = sext i32 %i.bw to i64
  store ptr %.0.i.i.i.i.i.i.i.i.i63.i, ptr %i.bp, align 8, !tbaa !46
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !48
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.ca = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.ca, ptr %i.bz, align 8, !tbaa !49
  %.not10.i.i.i.i64.i = icmp eq ptr %.sroa.0109.0180.i, %.sroa.12.0179.i
  br i1 %.not10.i.i.i.i64.i, label %.noexc35.i, label %.lr.ph.i.i.i.i65.i

.lr.ph.i.i.i.i65.i:                               ; preds = %.noexc72.i, %.lr.ph.i.i.i.i65.i
  %.012.i.i.i.i66.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i65.i ], [ %i.bo, %.noexc72.i ] ; 2 uses
  %.0911.i.i.i.i67.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i65.i ], [ %.sroa.0109.0180.i, %.noexc72.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i66.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i67.i, i64 24, i1 false), !alias.scope !51
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i67.i, i64 24 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i66.i, i64 24 ; 2 uses
  %.not.i.i.i.i68.i = icmp eq ptr %i.cb, %.sroa.12.0179.i
  br i1 %.not.i.i.i.i68.i, label %.noexc35.i, label %.lr.ph.i.i.i.i65.i, !llvm.loop !55

.noexc35.i:                                       ; preds = %.lr.ph.i.i.i.i65.i, %.noexc72.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bo, %.noexc72.i ], [ %i.cc, %.lr.ph.i.i.i.i65.i ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0109.0180.i, i64 noundef %i.bg) #25
  %.pre.pre.i = load i32, ptr %i.t, align 8, !tbaa !37
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %i.bm
  br label %_ZNSt6vectorISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE12emplace_backIJRKN6google8protobuf13RepeatedFieldIiEERiEEERS6_DpOT_.exit.i

_ZNSt6vectorISt4pairIN4absl12lts_202505124SpanIKiEEiESaIS6_EE12emplace_backIJRKN6google8protobuf13RepeatedFieldIiEERiEEERS6_DpOT_.exit.i: ; preds = %.noexc35.i, %bb.k
  %i.ce = phi i32 [ %.pre.pre.i, %.noexc35.i ], [ %i.ai, %bb.k ] ; 2 uses
  %.sroa.21119.4.i = phi ptr [ %i.cd, %.noexc35.i ], [ %.sroa.21119.0178.i, %bb.k ] ; 5 uses
  %.0.lcssa.i.i.i.i.pn.i = phi ptr [ %.0.lcssa.i.i.i.i.i, %.noexc35.i ], [ %.sroa.12.0179.i, %bb.k ]
  %.sroa.0109.4.i = phi ptr [ %i.bo, %.noexc35.i ], [ %.sroa.0109.0180.i, %bb.k ] ; 10 uses
  %.sroa.12.2.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.pn.i, i64 24 ; 6 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cf = sext i32 %i.ce to i64
  %i.cg = icmp slt i64 %indvars.iv.next.i, %i.cf
  br i1 %i.cg, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !57

_ZN4absl12lts_202505126c_sortISt6vectorISt4pairINS0_4SpanIKiEEiESaIS7_EEEEvRT_.exit.i: ; preds = %.noexc33.i, %._crit_edge.i, %bb.h
  %.sroa.0109.0.lcssa252.i = phi ptr [ %.sroa.0109.4.i, %.noexc33.i ], [ %.sroa.0109.4.i, %._crit_edge.i ], [ null, %bb.h ] ; 8 uses
  %.sroa.12.0.lcssa251.i = phi ptr [ %.sroa.12.2.i, %.noexc33.i ], [ %.sroa.0109.4.i, %._crit_edge.i ], [ null, %bb.h ] ; 2 uses
  %.sroa.21119.0.lcssa247.i = phi ptr [ %.sroa.21119.4.i, %.noexc33.i ], [ %.sroa.21119.4.i, %._crit_edge.i ], [ null, %bb.h ] ; 4 uses
  %i.ch = load ptr, ptr %4, align 8, !tbaa !58    ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !58 ; 4 uses
  %.not.i.i.i36.i = icmp eq ptr %i.ch, %i.cj
  br i1 %.not.i.i.i36.i, label %_ZN4absl12lts_202505126c_sortISt6vectorIS2_IiSaIiEESaIS4_EEEEvRT_.exit.thread.i, label %bb.n

_ZN4absl12lts_202505126c_sortISt6vectorIS2_IiSaIiEESaIS4_EEEEvRT_.exit.thread.i: ; preds = %_ZN4absl12lts_202505126c_sortISt6vectorISt4pairINS0_4SpanIKiEEiESaIS7_EEEEvRT_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store i64 1, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i.i256.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i256.i, align 8
  br label %._crit_edge188.i

bb.n:                                             ; preds = %_ZN4absl12lts_202505126c_sortISt6vectorISt4pairINS0_4SpanIKiEEiESaIS7_EEEEvRT_.exit.i
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.ch to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = sdiv exact i64 %i.cm, 24
  %i.co = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cn, i1 true)
  %i.cp = shl nuw nsw i64 %i.co, 1
  %i.cq = xor i64 %i.cp, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %i.ch, ptr %i.cj, i64 noundef %i.cq)
          to label %.noexc37.i unwind label %bb.j

.noexc37.i:                                       ; preds = %bb.n
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %i.ch, ptr %i.cj)
          to label %_ZN4absl12lts_202505126c_sortISt6vectorIS2_IiSaIiEESaIS4_EEEEvRT_.exit.i unwind label %bb.j

_ZN4absl12lts_202505126c_sortISt6vectorIS2_IiSaIiEESaIS4_EEEEvRT_.exit.i: ; preds = %.noexc37.i
  %.pre200.i = load ptr, ptr %4, align 8, !tbaa !58 ; 2 uses
  %.pre201.i = load ptr, ptr %i.ci, align 8, !tbaa !58 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store i64 1, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %i.cr = icmp ne ptr %.pre200.i, %.pre201.i
  %i.cs = icmp ne ptr %.sroa.0109.0.lcssa252.i, %.sroa.12.0.lcssa251.i
  %or.cond184.i = and i1 %i.cs, %i.cr
  br i1 %or.cond184.i, label %.lr.ph187.i, label %._crit_edge188.i

.lr.ph187.i:                                      ; preds = %_ZN4absl12lts_202505126c_sortISt6vectorIS2_IiSaIiEESaIS4_EEEEvRT_.exit.i
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.o

bb.o:                                             ; preds = %bb.u, %.lr.ph187.i
  %i.cu = phi ptr [ %.pre201.i, %.lr.ph187.i ], [ %i.ds, %bb.u ] ; 2 uses
  %.sroa.0101.0186.i = phi ptr [ %.pre200.i, %.lr.ph187.i ], [ %.sroa.0101.1.i, %bb.u ] ; 5 uses
  %.sroa.095.0185.i = phi ptr [ %.sroa.0109.0.lcssa252.i, %.lr.ph187.i ], [ %.sroa.095.1.i, %bb.u ] ; 6 uses
  %i.cv = load ptr, ptr %.sroa.0101.0186.i, align 8, !tbaa !60 ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0101.0186.i, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !62 ; 2 uses
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = sub i64 %i.cy, %i.cz                    ; 3 uses
  %i.db = ashr exact i64 %i.da, 2
  %.sroa.05.0.copyload.i = load ptr, ptr %.sroa.095.0185.i, align 8, !tbaa !63 ; 4 uses
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.095.0185.i, i64 8
  %.sroa.26.0.copyload.i = load i64, ptr %.sroa.26.0..sroa_idx.i, align 8, !tbaa !64 ; 3 uses
  %.not.i.i.i.i.not.i.i = icmp ugt i64 %i.db, %.sroa.26.0.copyload.i ; 2 uses
  br i1 %.not.i.i.i.i.not.i.i, label %_ZN6google8protobuf8compiler12_GLOBAL__N_18IsPrefixEN4absl12lts_202505124SpanIKiEES7_.exit.thread125.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cx, %i.cv
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i, label %_ZN6google8protobuf8compiler12_GLOBAL__N_18IsPrefixEN4absl12lts_202505124SpanIKiEES7_.exit.thread.i, label %_ZN6google8protobuf8compiler12_GLOBAL__N_18IsPrefixEN4absl12lts_202505124SpanIKiEES7_.exit.i

_ZN6google8protobuf8compiler12_GLOBAL__N_18IsPrefixEN4absl12lts_202505124SpanIKiEES7_.exit.i: ; preds = %bb.p
  %bcmp.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr readonly %i.cv, ptr readonly %.sroa.05.0.copyload.i, i64 %i.da)
  %.not9.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i.i.i.i.i.i, label %_ZN6google8protobuf8compiler12_GLOBAL__N_18IsPrefixEN4absl12lts_202505124SpanIKiEES7_.exit.thread.i, label %_ZN6google8protobuf8compiler12_GLOBAL__N_18IsPrefixEN4absl12lts_202505124SpanIKiEES7_.exit.thread125.i

_ZN6google8protobuf8compiler12_GLOBAL__N_18IsPrefixEN4absl12lts_202505124SpanIKiEES7_.exit.thread.i: ; preds = %_ZN6google8protobuf8compiler12_GLOBAL__N_18IsPrefixEN4absl12lts_202505124SpanIKiEES7_.exit.i, %bb.p
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.095.0185.i, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !65)
  call void @llvm.experimental.noalias.scope.decl(metadata !68)
  call void @llvm.experimental.noalias.scope.decl(metadata !71)
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  call void @llvm.experimental.noalias.scope.decl(metadata !80)
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE22find_or_prepare_insertIiEESt4pairINSB_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.120") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.dc)
          to label %.noexc39.i unwind label %bb.r

.noexc39.i:                                       ; preds = %_ZN6google8protobuf8compiler12_GLOBAL__N_18IsPrefixEN4absl12lts_202505124SpanIKiEES7_.exit.thread.i
  %i.dd = load i8, ptr %i.ct, align 8, !tbaa !83, !range !86, !alias.scope !87, !noundef !88
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.q, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE6insertIiLi0EEESt4pairINSB_8iteratorEbERKT_.exit.i

bb.q:                                             ; preds = %.noexc39.i
  %.sroa.2.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !87
  %i.df = load i32, ptr %i.dc, align 4, !tbaa !4, !noalias !87
  store i32 %i.df, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i, align 4, !tbaa !4
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE6insertIiLi0EEESt4pairINSB_8iteratorEbERKT_.exit.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE6insertIiLi0EEESt4pairINSB_8iteratorEbERKT_.exit.i: ; preds = %bb.q, %.noexc39.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.095.0185.i, i64 24
  %.pre202.i = load ptr, ptr %i.ci, align 8, !tbaa !58
  br label %bb.u

bb.r:                                             ; preds = %_ZN6google8protobuf8compiler12_GLOBAL__N_18IsPrefixEN4absl12lts_202505124SpanIKiEES7_.exit.thread.i
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZNSt6vectorIPN6google8protobuf23SourceCodeInfo_LocationESaIS3_EED2Ev.exit58.i

_ZN6google8protobuf8compiler12_GLOBAL__N_18IsPrefixEN4absl12lts_202505124SpanIKiEES7_.exit.thread125.i: ; preds = %_ZN6google8protobuf8compiler12_GLOBAL__N_18IsPrefixEN4absl12lts_202505124SpanIKiEES7_.exit.i, %bb.o
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.sroa.05.0.copyload.i, i64 %.sroa.26.0.copyload.i
  %.idx5.i.i.i = shl nuw nsw i64 %.sroa.26.0.copyload.i, 2
  %.v.i.i = select i1 %.not.i.i.i.i.not.i.i, i64 %.idx5.i.i.i, i64 %i.da ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.v.i.i
  %.not22.i.i.i.i.i.i.i.i = icmp samesign eq i64 %.v.i.i, 0
  br i1 %.not22.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_20250512ltIKiSt6vectorIiSaIiEEvEEbRKT0_NS0_4SpanIT_EE.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZN6google8protobuf8compiler12_GLOBAL__N_18IsPrefixEN4absl12lts_202505124SpanIKiEES7_.exit.thread125.i, %bb.t
  %.01924.i.i.i.i.i.i.i.i = phi ptr [ %i.dp, %bb.t ], [ %.sroa.05.0.copyload.i, %_ZN6google8protobuf8compiler12_GLOBAL__N_18IsPrefixEN4absl12lts_202505124SpanIKiEES7_.exit.thread125.i ] ; 2 uses
  %.02023.i.i.i.i.i.i.i.i = phi ptr [ %i.do, %bb.t ], [ %i.cv, %_ZN6google8protobuf8compiler12_GLOBAL__N_18IsPrefixEN4absl12lts_202505124SpanIKiEES7_.exit.thread125.i ] ; 2 uses
  %i.dk = load i32, ptr %.02023.i.i.i.i.i.i.i.i, align 4, !tbaa !4 ; 2 uses
  %i.dl = load i32, ptr %.01924.i.i.i.i.i.i.i.i, align 4, !tbaa !4 ; 2 uses
  %i.dm = icmp slt i32 %i.dk, %i.dl
  br i1 %i.dm, label %_ZN4absl12lts_20250512ltIKiSt6vectorIiSaIiEEvEEbRKT0_NS0_4SpanIT_EE.exit.thread.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.dn = icmp slt i32 %i.dl, %i.dk
  br i1 %i.dn, label %_ZN4absl12lts_20250512ltIKiSt6vectorIiSaIiEEvEEbRKT0_NS0_4SpanIT_EE.exit.thread128.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.do = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.do, %i.dj
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_20250512ltIKiSt6vectorIiSaIiEEvEEbRKT0_NS0_4SpanIT_EE.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !89

_ZN4absl12lts_20250512ltIKiSt6vectorIiSaIiEEvEEbRKT0_NS0_4SpanIT_EE.exit.i: ; preds = %bb.t, %_ZN6google8protobuf8compiler12_GLOBAL__N_18IsPrefixEN4absl12lts_202505124SpanIKiEES7_.exit.thread125.i
  %.019.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.05.0.copyload.i, %_ZN6google8protobuf8compiler12_GLOBAL__N_18IsPrefixEN4absl12lts_202505124SpanIKiEES7_.exit.thread125.i ], [ %i.dp, %bb.t ]
  %.not155.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i.i, %i.di
  br i1 %.not155.i, label %_ZN4absl12lts_20250512ltIKiSt6vectorIiSaIiEEvEEbRKT0_NS0_4SpanIT_EE.exit.thread128.i, label %_ZN4absl12lts_20250512ltIKiSt6vectorIiSaIiEEvEEbRKT0_NS0_4SpanIT_EE.exit.thread.i

_ZN4absl12lts_20250512ltIKiSt6vectorIiSaIiEEvEEbRKT0_NS0_4SpanIT_EE.exit.thread.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZN4absl12lts_20250512ltIKiSt6vectorIiSaIiEEvEEbRKT0_NS0_4SpanIT_EE.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0101.0186.i, i64 24
  br label %bb.u

_ZN4absl12lts_20250512ltIKiSt6vectorIiSaIiEEvEEbRKT0_NS0_4SpanIT_EE.exit.thread128.i: ; preds = %bb.s, %_ZN4absl12lts_20250512ltIKiSt6vectorIiSaIiEEvEEbRKT0_NS0_4SpanIT_EE.exit.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.095.0185.i, i64 24
  br label %bb.u

bb.u:                                             ; preds = %_ZN4absl12lts_20250512ltIKiSt6vectorIiSaIiEEvEEbRKT0_NS0_4SpanIT_EE.exit.thread128.i, %_ZN4absl12lts_20250512ltIKiSt6vectorIiSaIiEEvEEbRKT0_NS0_4SpanIT_EE.exit.thread.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE6insertIiLi0EEESt4pairINSB_8iteratorEbERKT_.exit.i
  %i.ds = phi ptr [ %.pre202.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE6insertIiLi0EEESt4pairINSB_8iteratorEbERKT_.exit.i ], [ %i.cu, %_ZN4absl12lts_20250512ltIKiSt6vectorIiSaIiEEvEEbRKT0_NS0_4SpanIT_EE.exit.thread.i ], [ %i.cu, %_ZN4absl12lts_20250512ltIKiSt6vectorIiSaIiEEvEEbRKT0_NS0_4SpanIT_EE.exit.thread128.i ] ; 2 uses
  %.sroa.095.1.i = phi ptr [ %i.dg, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE6insertIiLi0EEESt4pairINSB_8iteratorEbERKT_.exit.i ], [ %.sroa.095.0185.i, %_ZN4absl12lts_20250512ltIKiSt6vectorIiSaIiEEvEEbRKT0_NS0_4SpanIT_EE.exit.thread.i ], [ %i.dr, %_ZN4absl12lts_20250512ltIKiSt6vectorIiSaIiEEvEEbRKT0_NS0_4SpanIT_EE.exit.thread128.i ] ; 2 uses
  %.sroa.0101.1.i = phi ptr [ %.sroa.0101.0186.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE6insertIiLi0EEESt4pairINSB_8iteratorEbERKT_.exit.i ], [ %i.dq, %_ZN4absl12lts_20250512ltIKiSt6vectorIiSaIiEEvEEbRKT0_NS0_4SpanIT_EE.exit.thread.i ], [ %.sroa.0101.0186.i, %_ZN4absl12lts_20250512ltIKiSt6vectorIiSaIiEEvEEbRKT0_NS0_4SpanIT_EE.exit.thread128.i ] ; 2 uses
  %i.dt = icmp ne ptr %.sroa.0101.1.i, %i.ds
  %i.du = icmp ne ptr %.sroa.095.1.i, %.sroa.12.0.lcssa251.i
  %or.cond.i = select i1 %i.dt, i1 %i.du, i1 false
  br i1 %or.cond.i, label %bb.o, label %._crit_edge188.i, !llvm.loop !90

._crit_edge188.i:                                 ; preds = %bb.u, %_ZN4absl12lts_202505126c_sortISt6vectorIS2_IiSaIiEESaIS4_EEEEvRT_.exit.i, %_ZN4absl12lts_202505126c_sortISt6vectorIS2_IiSaIiEESaIS4_EEEEvRT_.exit.thread.i
  %.sroa.4.0..sroa_idx.i.i258.i = phi ptr [ %.sroa.4.0..sroa_idx.i.i256.i, %_ZN4absl12lts_202505126c_sortISt6vectorIS2_IiSaIiEESaIS4_EEEEvRT_.exit.thread.i ], [ %.sroa.4.0..sroa_idx.i.i.i, %_ZN4absl12lts_202505126c_sortISt6vectorIS2_IiSaIiEESaIS4_EEEEvRT_.exit.i ], [ %.sroa.4.0..sroa_idx.i.i.i, %bb.u ] ; 4 uses
  %i.dv = load i32, ptr %i.t, align 8, !tbaa !37  ; 5 uses
  %i.dw = sext i32 %i.dv to i64                   ; 3 uses
  %.not154.i = icmp eq i32 %i.dv, 0               ; 2 uses
  br i1 %.not154.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %._crit_edge188.i
  %i.dx = icmp slt i32 %i.dv, 0
  br i1 %i.dx, label %bb.w, label %_ZNKSt6vectorIPN6google8protobuf23SourceCodeInfo_LocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #23
          to label %.noexc76.i unwind label %.thread146.i

.noexc76.i:                                       ; preds = %bb.w
  unreachable

_ZNKSt6vectorIPN6google8protobuf23SourceCodeInfo_LocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.v
  %i.dy = shl nuw nsw i64 %i.dw, 3
  %i.dz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dy) #24
          to label %.noexc77.i unwind label %.thread146.i ; 4 uses

.noexc77.i:                                       ; preds = %_ZNKSt6vectorIPN6google8protobuf23SourceCodeInfo_LocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  store ptr null, ptr %i.dz, align 8, !tbaa !91
  %i.ea = add nsw i64 %i.dw, -1                   ; 2 uses
  %i.eb = icmp eq i64 %i.ea, 0
  br i1 %i.eb, label %.noexc40.i, label %_ZSt6fill_nIPPN6google8protobuf23SourceCodeInfo_LocationEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i30.i.i

_ZSt6fill_nIPPN6google8protobuf23SourceCodeInfo_LocationEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i30.i.i: ; preds = %.noexc77.i
  %i.ec = getelementptr i8, ptr %i.dz, i64 8
  %.idx.i.i.i.i.i31.i.i = shl nuw nsw i64 %i.ea, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ec, i8 0, i64 %.idx.i.i.i.i.i31.i.i, i1 false), !tbaa !91
  br label %.noexc40.i

.noexc40.i:                                       ; preds = %_ZSt6fill_nIPPN6google8protobuf23SourceCodeInfo_LocationEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i30.i.i, %.noexc77.i
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.dw
  %i.ee = ptrtoint ptr %i.ed to i64
  br label %bb.x

bb.x:                                             ; preds = %.noexc40.i, %._crit_edge188.i
  %.sroa.0.2.i = phi ptr [ null, %._crit_edge188.i ], [ %i.dz, %.noexc40.i ] ; 11 uses
  %.sroa.14.0.i = phi i64 [ 0, %._crit_edge188.i ], [ %i.ee, %.noexc40.i ] ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.o, i64 52 ; 3 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !93 ; 3 uses
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE8GetArenaEv.exit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ei = sext i32 %i.eg to i64
  %i.ej = getelementptr inbounds i8, ptr %i.s, i64 %i.ei
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !29 ; 3 uses
  %i.el = trunc i64 %i.ek to i1
  br i1 %i.el, label %bb.z, label %bb.aa, !prof !32

bb.z:                                             ; preds = %bb.y
  %i.em = add nsw i64 %i.ek, -1
  %i.en = inttoptr i64 %i.em to ptr
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !33
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE8GetArenaEv.exit.i.i

bb.aa:                                            ; preds = %bb.y
  %i.ep = inttoptr i64 %i.ek to ptr
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE8GetArenaEv.exit.i.i

_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE8GetArenaEv.exit.i.i: ; preds = %bb.aa, %bb.z, %bb.x
  %.0.i.i.i.i.i41.i = phi ptr [ null, %bb.x ], [ %i.eo, %bb.z ], [ %i.ep, %bb.aa ]
  %i.eq = zext nneg i32 %i.dv to i64              ; 2 uses
  br i1 %.not154.i, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE8GetArenaEv.exit.i.i
  %.not.i.i42.i = icmp eq ptr %.sroa.0.2.i, null
  br i1 %.not.i.i42.i, label %.loopexit.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.er = load ptr, ptr %i.s, align 8, !tbaa !40
  %i.es = ptrtoint ptr %i.er to i64               ; 2 uses
  %i.et = and i64 %i.es, 1
  %i.eu = icmp eq i64 %i.et, 0
  %i.ev = add i64 %i.es, -1
  %i.ew = inttoptr i64 %i.ev to ptr
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = select i1 %i.eu, ptr %i.s, ptr %i.ex    ; 2 uses
  %.not22.i.i.i = icmp eq ptr %.0.i.i.i.i.i41.i, null
  br i1 %.not22.i.i.i, label %bb.ad, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ac, %.noexc43.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.noexc43.i ], [ 0, %bb.ac ] ; 3 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %indvars.iv.i.i.i
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !91
  %i.fb = invoke noundef ptr @_ZN6google8protobuf8internal9CloneSlowEPNS0_5ArenaERKNS0_11MessageLiteE(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %i.fa)
          to label %.noexc43.i unwind label %.loopexit.i

.noexc43.i:                                       ; preds = %.lr.ph.i.i.i
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.2.i, i64 %indvars.iv.i.i.i
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !91
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.eq
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !94

bb.ad:                                            ; preds = %bb.ac
  %i.fd = shl nuw nsw i64 %i.eq, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.2.i, ptr nonnull align 8 %i.ey, i64 %i.fd, i1 false)
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.noexc43.i, %bb.ad, %bb.ab
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase8CloseGapEii(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i32 noundef 0, i32 noundef %i.dv)
          to label %.loopexit.i.i._crit_edge.i unwind label %.loopexit.split-lp.i

.loopexit.i.i._crit_edge.i:                       ; preds = %.loopexit.i.i.i
  %.pre203.i = load i32, ptr %i.ef, align 4, !tbaa !93
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit.i.i._crit_edge.i, %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE8GetArenaEv.exit.i.i
  %i.fe = phi i32 [ %.pre203.i, %.loopexit.i.i._crit_edge.i ], [ %i.eg, %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE8GetArenaEv.exit.i.i ] ; 2 uses
  %i.ff = ptrtoint ptr %.sroa.0.2.i to i64        ; 2 uses
  %i.fg = sub i64 %.sroa.14.0.i, %i.ff            ; 3 uses
  %i.fh = ashr exact i64 %i.fg, 3                 ; 2 uses
  %i.fi = load i64, ptr %.sroa.4.0..sroa_idx.i.i258.i, align 8, !tbaa !95
  %i.fj = lshr i64 %i.fi, 17
  %i.fk = sub nsw i64 %i.fh, %i.fj
  %i.fl = trunc i64 %i.fk to i32
  %i.fm = icmp eq i32 %i.fe, 0
  br i1 %i.fm, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE8GetArenaEv.exit.i45.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fn = sext i32 %i.fe to i64
  %i.fo = getelementptr inbounds i8, ptr %i.s, i64 %i.fn
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !29 ; 3 uses
  %i.fq = trunc i64 %i.fp to i1
  br i1 %i.fq, label %bb.ag, label %bb.ah, !prof !32

bb.ag:                                            ; preds = %bb.af
  %i.fr = add nsw i64 %i.fp, -1
  %i.fs = inttoptr i64 %i.fr to ptr
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !33
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE8GetArenaEv.exit.i45.i
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8compiler27StripSourceRetentionOptionsERKNS0_14DescriptorPoolERNS0_19FileDescriptorProtoE:bb.a
bb.ak:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEED2Ev.exit.i
  %i.gh = ptrtoint ptr %.sroa.21119.0.lcssa247.i to i64
  %i.gi = ptrtoint ptr %.sroa.0109.0.lcssa252.i to i64
  %i.gj = sub i64 %i.gh, %i.gi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0109.0.lcssa252.i, i64 noundef %i.gj) #25
  br label %_ZN6google8protobuf8compiler12_GLOBAL__N_119StripSourceCodeInfoERSt6vectorIS3_IiSaIiEESaIS5_EERNS0_14SourceCodeInfoE.exit

bb.al:                                            ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE12AddAllocatedEPS2_.exit.i, %.lr.ph190.i
  %.0189.i = phi i64 [ 0, %.lr.ph190.i ], [ %i.kg, %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE12AddAllocatedEPS2_.exit.i ] ; 5 uses
  %i.gk = trunc i64 %.0189.i to i32               ; 2 uses
  %i.gl = load i64, ptr %2, align 8, !tbaa !97    ; 4 uses
  %i.gm = icmp ne i64 %i.gl, 0
  call void @llvm.assume(i1 %i.gm)
  %i.gn = icmp ult i64 %i.gl, 2
  br i1 %i.gn, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.go = load i64, ptr %.sroa.4.0..sroa_idx.i.i258.i, align 8, !tbaa !95
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.go, 131071
  %i.gp = load i32, ptr %i.fv, align 8
  %i.gq = icmp eq i32 %i.gp, %i.gk
  %or.cond153.i = select i1 %.not.i.i.i.i.i.i, i1 %i.gq, i1 false
  br i1 %or.cond153.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit.thread131.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit.thread.i

bb.an:                                            ; preds = %bb.al
  %i.gr = load ptr, ptr %i.fv, align 8, !tbaa !36 ; 2 uses
  call void @llvm.prefetch.p0(ptr %i.gr, i32 0, i32 1, i32 1)
  %i.gs = and i64 %.0189.i, 4294967295
  %i.gt = xor i64 %i.gs, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.gu = mul i64 %i.gt, -2543921745674291987
  %i.gv = call noundef i64 @llvm.bswap.i64(i64 %i.gu) ; 2 uses
  %i.gw = load i64, ptr %.sroa.4.0..sroa_idx.i.i258.i, align 8, !tbaa !95, !noalias !99
  %i.gx = and i64 %i.gw, 65535
  %i.gy = lshr i64 %i.gv, 7
  %i.gz = xor i64 %i.gx, %i.gy
  %i.ha = trunc i64 %i.gv to i8
  %i.hb = and i8 %i.ha, 127
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.fw, align 8, !tbaa !36 ; 2 uses
  %i.hc = insertelement <16 x i8> poison, i8 %i.hb, i64 0
  %i.hd = shufflevector <16 x i8> %i.hc, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ao

bb.ao:                                            ; preds = %bb.aq, %bb.an
  %.pn.i6.i.i.i.i = phi i64 [ %i.gz, %bb.an ], [ %i.hv, %bb.aq ]
  %.sroa.13.0.i.i.i.i.i = phi i64 [ 0, %bb.an ], [ %i.hu, %bb.aq ]
  %.sroa.6.0.i.i.i.i.i = and i64 %.pn.i6.i.i.i.i, %i.gl ; 4 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i.i
  call void @llvm.prefetch.p0(ptr %i.he, i32 0, i32 3, i32 1)
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.sroa.6.0.i.i.i.i.i
  %i.hg = load <16 x i8>, ptr %i.hf, align 1, !tbaa !36 ; 2 uses
  %i.hh = icmp eq <16 x i8> %i.hd, %i.hg
  %i.hi = bitcast <16 x i1> %i.hh to i16          ; 2 uses
  %.not46.i.i.i.i.i = icmp eq i16 %i.hi, 0
  br i1 %.not46.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i50.i

.lr.ph.i.i.i.i50.i:                               ; preds = %bb.ao, %bb.ap
  %.sroa.017.047.i.i.i.i.i = phi i16 [ %i.hr, %bb.ap ], [ %i.hi, %bb.ao ] ; 3 uses
  %i.hj = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i.i.i, i1 true)
  %i.hk = zext nneg i16 %i.hj to i64
  %i.hl = add i64 %.sroa.6.0.i.i.i.i.i, %i.hk
  %i.hm = and i64 %i.hl, %i.gl
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !4
  %i.hp = icmp eq i32 %i.ho, %i.gk
  br i1 %i.hp, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit.thread131.i, label %bb.ap, !prof !102

bb.ap:                                            ; preds = %.lr.ph.i.i.i.i50.i
  %i.hq = add i16 %.sroa.017.047.i.i.i.i.i, -1
  %i.hr = and i16 %i.hq, %.sroa.017.047.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i51.i = icmp eq i16 %i.hr, 0
  br i1 %.not.i.i.i.i51.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i50.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.ap, %bb.ao
  %i.hs = icmp eq <16 x i8> %i.hg, splat (i8 -128)
  %i.ht = bitcast <16 x i1> %i.hs to i16
  %.not43.i.i.i.i.i = icmp eq i16 %i.ht, 0
  br i1 %.not43.i.i.i.i.i, label %bb.aq, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit.thread.i, !prof !32

bb.aq:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.hu = add i64 %.sroa.13.0.i.i.i.i.i, 16       ; 2 uses
  %i.hv = add i64 %i.hu, %.sroa.6.0.i.i.i.i.i
  br label %bb.ao, !llvm.loop !103

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit.thread131.i: ; preds = %.lr.ph.i.i.i.i50.i, %bb.am
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.2.i, i64 %.0189.i
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !91 ; 3 uses
  %i.hy = icmp eq ptr %i.hx, null
  br i1 %i.hy, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE12AddAllocatedEPS2_.exit.i, label %bb.ar

bb.ar:                                            ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit.thread131.i
  call void @_ZN6google8protobuf23SourceCodeInfo_LocationD1Ev(ptr noundef nonnull align 8 dereferenceable(104) %i.hx) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.hx, i64 noundef 104) #25
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE12AddAllocatedEPS2_.exit.i

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit.thread.i: ; preds = %._crit_edge.i.i.i.i.i, %bb.am
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.2.i, i64 %.0189.i
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !91 ; 3 uses
  %i.ib = load i32, ptr %i.ef, align 4, !tbaa !93 ; 2 uses
  %i.ic = icmp eq i32 %i.ib, 0
  br i1 %i.ic, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE8GetArenaEv.exit.i52.i, label %bb.as

bb.as:                                            ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit.thread.i
  %i.id = sext i32 %i.ib to i64
  %i.ie = getelementptr inbounds i8, ptr %i.s, i64 %i.id
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !29 ; 3 uses
  %i.ig = trunc i64 %i.if to i1
  br i1 %i.ig, label %bb.at, label %bb.au, !prof !32

bb.at:                                            ; preds = %bb.as
  %i.ih = add nsw i64 %i.if, -1
  %i.ii = inttoptr i64 %i.ih to ptr
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !33
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE8GetArenaEv.exit.i52.i

bb.au:                                            ; preds = %bb.as
  %i.ik = inttoptr i64 %i.if to ptr
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE8GetArenaEv.exit.i52.i

_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE8GetArenaEv.exit.i52.i: ; preds = %bb.au, %bb.at, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit.thread.i
  %.0.i.i.i.i.i53.i = phi ptr [ null, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit.thread.i ], [ %i.ij, %bb.at ], [ %i.ik, %bb.au ] ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.im = load i64, ptr %i.il, align 8, !tbaa !29 ; 3 uses
  %i.in = trunc i64 %i.im to i1
  br i1 %i.in, label %bb.av, label %bb.aw, !prof !32

bb.av:                                            ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE8GetArenaEv.exit.i52.i
  %i.io = add nsw i64 %i.im, -1
  %i.ip = inttoptr i64 %i.io to ptr
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !33
  br label %_ZN6google8protobuf8internal18GenericTypeHandlerINS0_23SourceCodeInfo_LocationEE8GetArenaEPS3_.exit.i.i.i.i

bb.aw:                                            ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE8GetArenaEv.exit.i52.i
  %i.ir = inttoptr i64 %i.im to ptr
  br label %_ZN6google8protobuf8internal18GenericTypeHandlerINS0_23SourceCodeInfo_LocationEE8GetArenaEPS3_.exit.i.i.i.i

_ZN6google8protobuf8internal18GenericTypeHandlerINS0_23SourceCodeInfo_LocationEE8GetArenaEPS3_.exit.i.i.i.i: ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i.i.i.i.i.i54.i = phi ptr [ %i.iq, %bb.av ], [ %i.ir, %bb.aw ] ; 2 uses
  %.not.i.i.i55.i = icmp eq ptr %.0.i.i.i.i.i53.i, %.0.i.i.i.i.i.i.i.i.i54.i
  br i1 %.not.i.i.i55.i, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %_ZN6google8protobuf8internal18GenericTypeHandlerINS0_23SourceCodeInfo_LocationEE8GetArenaEPS3_.exit.i.i.i.i
  %i.is = load ptr, ptr %i.s, align 8, !tbaa !40  ; 2 uses
  %i.it = ptrtoint ptr %i.is to i64               ; 2 uses
  %i.iu = and i64 %i.it, 1
  %i.iv = icmp eq i64 %i.iu, 0
  br i1 %i.iv, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase23AllocatedSizeAtCapacityEv.exit.i.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.iw = add nsw i64 %i.it, -1
  %i.ix = inttoptr i64 %i.iw to ptr               ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !104 ; 3 uses
  %i.ja = load i32, ptr %i.ix, align 8, !tbaa !106
  %i.jb = icmp eq i32 %i.iz, %i.ja
  br i1 %i.jb, label %bb.az, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.thread.i.i.i.i

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase23AllocatedSizeAtCapacityEv.exit.i.i.i.i: ; preds = %bb.ax
  %.not.i.i.not.i.i.i.i = icmp eq ptr %i.is, null
  br i1 %.not.i.i.not.i.i.i.i, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.i.i.i.i, label %bb.az

bb.az:                                            ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase23AllocatedSizeAtCapacityEv.exit.i.i.i.i, %bb.ay, %_ZN6google8protobuf8internal18GenericTypeHandlerINS0_23SourceCodeInfo_LocationEE8GetArenaEPS3_.exit.i.i.i.i
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase24AddAllocatedSlowWithCopyINS1_18GenericTypeHandlerINS0_23SourceCodeInfo_LocationEEEEEvPNT_4TypeEPNS0_5ArenaESB_(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull %i.ia, ptr noundef %.0.i.i.i.i.i.i.i.i.i54.i, ptr noundef %.0.i.i.i.i.i53.i)
          to label %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE12AddAllocatedEPS2_.exit.i unwind label %.thread.i

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.i.i.i.i: ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase23AllocatedSizeAtCapacityEv.exit.i.i.i.i
  %i.jc = load i32, ptr %i.t, align 8, !tbaa !37  ; 4 uses
  %i.jd = icmp slt i32 %i.jc, 0
  br i1 %i.jd, label %bb.ba, label %bb.bc

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.thread.i.i.i.i: ; preds = %bb.ay
  %i.je = getelementptr inbounds nuw i8, ptr %i.ix, i64 8 ; 3 uses
  %i.jf = load i32, ptr %i.t, align 8, !tbaa !37  ; 4 uses
  %i.jg = icmp slt i32 %i.jf, %i.iz
  br i1 %i.jg, label %bb.bb, label %bb.bc

bb.ba:                                            ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.i.i.i.i
  %i.jh = sext i32 %i.jc to i64
  %i.ji = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.jh
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit12.i.i.i.i

bb.bb:                                            ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.thread.i.i.i.i
  %i.jj = sext i32 %i.jf to i64
  %i.jk = getelementptr inbounds [8 x i8], ptr %i.je, i64 %i.jj
  %i.jl = sext i32 %i.iz to i64
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit12.i.i.i.i

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit12.i.i.i.i: ; preds = %bb.bb, %bb.ba
  %.in.i.i.i.i = phi ptr [ %i.ji, %bb.ba ], [ %i.jk, %bb.bb ]
  %i.jm = phi i32 [ %i.jc, %bb.ba ], [ %i.jf, %bb.bb ]
  %i.jn = phi ptr [ %i.s, %bb.ba ], [ %i.je, %bb.bb ] ; 2 uses
  %i.jo = phi i64 [ 0, %bb.ba ], [ %i.jl, %bb.bb ]
  %i.jp = load ptr, ptr %.in.i.i.i.i, align 8, !tbaa !41
  %i.jq = getelementptr inbounds [8 x i8], ptr %i.jn, i64 %i.jo
  store ptr %i.jp, ptr %i.jq, align 8, !tbaa !41
  br label %bb.bc

bb.bc:                                            ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit12.i.i.i.i, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.thread.i.i.i.i, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.i.i.i.i
  %i.jr = phi ptr [ %i.je, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.thread.i.i.i.i ], [ %i.jn, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit12.i.i.i.i ], [ %i.s, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.i.i.i.i ]
  %i.js = phi i32 [ %i.jf, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.thread.i.i.i.i ], [ %i.jm, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit12.i.i.i.i ], [ %i.jc, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.i.i.i.i ] ; 2 uses
  %i.jt = add nsw i32 %i.js, 1
  store i32 %i.jt, ptr %i.t, align 4, !tbaa !4
  %i.ju = sext i32 %i.js to i64
  %i.jv = getelementptr inbounds [8 x i8], ptr %i.jr, i64 %i.ju
  store ptr %i.ia, ptr %i.jv, align 8, !tbaa !41
  %i.jw = load ptr, ptr %i.s, align 8, !tbaa !40
  %i.jx = ptrtoint ptr %i.jw to i64               ; 2 uses
  %i.jy = and i64 %i.jx, 1
  %i.jz = icmp eq i64 %i.jy, 0
  br i1 %i.jz, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE12AddAllocatedEPS2_.exit.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ka = add nsw i64 %i.jx, -1
  %i.kb = inttoptr i64 %i.ka to ptr
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 4 ; 2 uses
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !104
  %i.ke = add nsw i32 %i.kd, 1
  store i32 %i.ke, ptr %i.kc, align 4, !tbaa !104
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE12AddAllocatedEPS2_.exit.i

.thread.i:                                        ; preds = %bb.az
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE12AddAllocatedEPS2_.exit.i: ; preds = %bb.bd, %bb.bc, %bb.az, %bb.ar, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit.thread131.i
  %i.kg = add nuw i64 %.0189.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.kg, %i.fh
  br i1 %exitcond.not.i, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE7ReserveEi.exit._crit_edge.thread.i, label %bb.al, !llvm.loop !107

.thread146.i:                                     ; preds = %_ZNKSt6vectorIPN6google8protobuf23SourceCodeInfo_LocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %bb.w
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN6google8protobuf23SourceCodeInfo_LocationESaIS3_EED2Ev.exit58.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.loopexit.split-lp.i:                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE8GetArenaEv.exit.i45.i, %.loopexit.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.be:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.not.i.i.i57.i = icmp eq ptr %.sroa.0.2.i, null
  br i1 %.not.i.i.i57.i, label %_ZNSt6vectorIPN6google8protobuf23SourceCodeInfo_LocationESaIS3_EED2Ev.exit58.i, label %._crit_edge207.i

._crit_edge207.i:                                 ; preds = %bb.be
  %.pre208.i = ptrtoint ptr %.sroa.0.2.i to i64
  %.pre209.i = sub i64 %.sroa.14.0.i, %.pre208.i
  br label %bb.bf

bb.bf:                                            ; preds = %._crit_edge207.i, %.thread.i
  %.pre-phi210.i = phi i64 [ %.pre209.i, %._crit_edge207.i ], [ %i.fg, %.thread.i ]
  %.pn.pn139.i = phi { ptr, i32 } [ %lpad.phi.i, %._crit_edge207.i ], [ %i.kf, %.thread.i ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.2.i, i64 noundef %.pre-phi210.i) #25
  br label %_ZNSt6vectorIPN6google8protobuf23SourceCodeInfo_LocationESaIS3_EED2Ev.exit58.i

_ZNSt6vectorIPN6google8protobuf23SourceCodeInfo_LocationESaIS3_EED2Ev.exit58.i: ; preds = %bb.bf, %bb.be, %.thread146.i, %bb.r
  %.pn28.i = phi { ptr, i32 } [ %i.dh, %bb.r ], [ %lpad.thr_comm.i, %.thread146.i ], [ %lpad.phi.i, %bb.be ], [ %.pn.pn139.i, %bb.bf ]
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIPN6google8protobuf23SourceCodeInfo_LocationESaIS3_EED2Ev.exit58.i, %.loopexit.split-lp157.i, %.loopexit156.i, %bb.j
  %.sroa.21119.2.i = phi ptr [ %.sroa.21119.1.i, %bb.j ], [ %.sroa.21119.0.lcssa247.i, %_ZNSt6vectorIPN6google8protobuf23SourceCodeInfo_LocationESaIS3_EED2Ev.exit58.i ], [ %.sroa.12.0179.i, %.loopexit156.i ], [ %.sroa.12.0179.i, %.loopexit.split-lp157.i ]
  %.sroa.0109.2.i = phi ptr [ %.sroa.0109.1.i, %bb.j ], [ %.sroa.0109.0.lcssa252.i, %_ZNSt6vectorIPN6google8protobuf23SourceCodeInfo_LocationESaIS3_EED2Ev.exit58.i ], [ %.sroa.0109.0180.i, %.loopexit156.i ], [ %.sroa.0109.0180.i, %.loopexit.split-lp157.i ] ; 3 uses
  %.pn30.i = phi { ptr, i32 } [ %i.ah, %bb.j ], [ %.pn28.i, %_ZNSt6vectorIPN6google8protobuf23SourceCodeInfo_LocationESaIS3_EED2Ev.exit58.i ], [ %lpad.loopexit158.i, %.loopexit156.i ], [ %lpad.loopexit.split-lp159.i, %.loopexit.split-lp157.i ] ; 2 uses
  %.not.i.i.i59.i = icmp eq ptr %.sroa.0109.2.i, null
  br i1 %.not.i.i.i59.i, label %.body, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.kh = ptrtoint ptr %.sroa.21119.2.i to i64
  %i.ki = ptrtoint ptr %.sroa.0109.2.i to i64
  %i.kj = sub i64 %i.kh, %i.ki
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0109.2.i, i64 noundef %i.kj) #25
  br label %.body

bb.bi:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i, %bb.a
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.bg, %bb.bh, %bb.bi
  %eh.lpad-body = phi { ptr, i32 } [ %i.kk, %bb.bi ], [ %.pn30.i, %bb.bh ], [ %.pn30.i, %bb.bg ]
  call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %eh.lpad-body

_ZN6google8protobuf8compiler12_GLOBAL__N_119StripSourceCodeInfoERSt6vectorIS3_IiSaIiEESaIS5_EERNS0_14SourceCodeInfoE.exit: ; preds = %bb.ak, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEED2Ev.exit.i, %bb.b
  %i.kl = load ptr, ptr %4, align 8, !tbaa !108   ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !110 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.kl, %i.kn
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i5

.lr.ph.i.i.i5:                                    ; preds = %_ZN6google8protobuf8compiler12_GLOBAL__N_119StripSourceCodeInfoERSt6vectorIS3_IiSaIiEESaIS5_EERNS0_14SourceCodeInfoE.exit, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ku, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i ], [ %i.kl, %_ZN6google8protobuf8compiler12_GLOBAL__N_119StripSourceCodeInfoERSt6vectorIS3_IiSaIiEESaIS5_EERNS0_14SourceCodeInfoE.exit ] ; 3 uses
  %i.ko = load ptr, ptr %.05.i.i.i, align 8, !tbaa !60 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ko, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.i.i.i5
  %i.kp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !111
  %i.kr = ptrtoint ptr %i.kq to i64
  %i.ks = ptrtoint ptr %i.ko to i64
  %i.kt = sub i64 %i.kr, %i.ks
  call void @_ZdlPvm(ptr noundef nonnull %i.ko, i64 noundef %i.kt) #25
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i:  ; preds = %bb.bj, %.lr.ph.i.i.i5
  %i.ku = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ku, %i.kn
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i5, !llvm.loop !112

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !108
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZN6google8protobuf8compiler12_GLOBAL__N_119StripSourceCodeInfoERSt6vectorIS3_IiSaIiEESaIS5_EERNS0_14SourceCodeInfoE.exit
  %i.kv = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.kl, %_ZN6google8protobuf8compiler12_GLOBAL__N_119StripSourceCodeInfoERSt6vectorIS3_IiSaIiEESaIS5_EERNS0_14SourceCodeInfoE.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.kv, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i
  %i.kw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !113
  %i.ky = ptrtoint ptr %i.kx to i64
  %i.kz = ptrtoint ptr %i.kv to i64
  %i.la = sub i64 %i.ky, %i.kz
  call void @_ZdlPvm(ptr noundef nonnull %i.kv, i64 noundef %i.la) #25
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6google8protobuf19FileDescriptorProtoD1Ev(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobuf8compiler12_GLOBAL__N_138ConvertToDynamicMessageAndStripOptionsERNS0_7MessageERKNS0_14DescriptorPoolEPSt6vectorIS8_IiSaIiEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.68", align 8    ; 11 uses
  %4 = alloca %"class.google::protobuf::DynamicMessageFactory", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %7 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %8 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %9 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %i.a = tail call { i64, ptr } @_ZNK6google8protobuf11MessageLite11GetTypeNameEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0
  %i.c = extractvalue { i64, ptr } %i.a, 1
  %i.d = tail call noundef ptr @_ZNK6google8protobuf14DescriptorPool21FindMessageTypeByNameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(120) %1, i64 %i.b, ptr %i.c) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = invoke noundef ptr @_ZN6google8protobuf14DescriptorPool14generated_poolEv()
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq ptr %1, %i.f
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.a
  invoke fastcc void @_ZN6google8protobuf8compiler12_GLOBAL__N_112StripMessageERNS0_7MessageERSt6vectorIiSaIiEEPS5_IS7_SaIS7_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %2)
          to label %bb.ay unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZN6google8protobuf21DynamicMessageFactoryC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.i = invoke noundef ptr @_ZN6google8protobuf21DynamicMessageFactory12GetPrototypeEPKNS0_10DescriptorE(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull %i.d)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.j = invoke noundef ptr @_ZNK6google8protobuf11MessageLite3NewEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef null)
          to label %_ZNK6google8protobuf7Message3NewEv.exit unwind label %bb.k ; 9 uses

_ZNK6google8protobuf7Message3NewEv.exit:          ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.k, ptr %5, align 8, !tbaa !114
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEED2Ev:bb.a

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !95
  %i.h = and i64 %i.g, 65536
  %i.i = icmp ne i64 %i.h, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.a, ptr noundef %i.e, i64 noundef 4, i64 noundef 4, i1 noundef zeroext %i.i)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE15destructor_implEv.exit unwind label %bb.c

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE15destructor_implEv.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_less_iterEEvT_SG_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.std::pair", align 8        ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_less_iterEEvT_SG_SG_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph30

bb.b:                                             ; preds = %.lr.ph30
  %i.g = icmp eq i64 %i.v, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph30, !llvm.loop !220

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.ab, %bb.b ]
  %storemerge16.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.z, %bb.b ]
  %i.h = udiv exact i64 %.lcssa, 24               ; 2 uses
  %i.i = add nsw i64 %i.h, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.07.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.l, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [24 x i8], ptr %0, i64 %.07.i.i
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEElS8_NS0_5__ops15_Iter_less_iterEEvT_T0_SH_T1_T2_(ptr %0, i64 noundef %.07.i.i, i64 noundef %i.h, ptr noundef nonnull byval(%"struct.std::pair") align 8 %i.k)
  %.not.i.i = icmp eq i64 %.07.i.i, 0
  %i.l = add nsw i64 %.07.i.i, -1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %bb.c, !llvm.loop !221

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.05.i.i = phi ptr [ %storemerge16.lcssa, %.lr.ph.i.i ], [ %i.n, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.n, ptr noundef nonnull align 8 dereferenceable(20) %0, i64 16, i1 false), !tbaa.struct !222
  %i.o = load i32, ptr %i.m, align 4, !tbaa !4
  %i.p = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8
  store i32 %i.o, ptr %i.p, align 8, !tbaa !49
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = sdiv exact i64 %i.r, 24
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEElS8_NS0_5__ops15_Iter_less_iterEEvT_T0_SH_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, ptr noundef nonnull byval(%"struct.std::pair") align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.t = icmp sgt i64 %i.r, 24
  br i1 %i.t, label %bb.d, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_less_iterEEvT_SG_SG_T0_.exit, !llvm.loop !223

.lr.ph30:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1629 = phi ptr [ %i.z, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01728 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %i.u = phi i64 [ %i.ab, %bb.b ], [ %i.c, %.lr.ph ]
  %i.v = add nsw i64 %.01728, -1                  ; 3 uses
  %i.w = udiv i64 %i.u, 48
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.w
  %i.y = getelementptr inbounds i8, ptr %storemerge1629, i64 -24
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_less_iterEEvT_SG_SG_SG_T0_(ptr %0, ptr nonnull %i.e, ptr %i.x, ptr nonnull %i.y)
  %i.z = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_less_iterEET_SG_SG_SG_T0_(ptr nonnull %i.e, ptr %storemerge1629, ptr %0) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_less_iterEEvT_SG_T0_T1_(ptr %i.z, ptr %storemerge1629, i64 noundef %i.v)
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.a                     ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, 384
  br i1 %i.ac, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_less_iterEEvT_SG_SG_T0_.exit, !llvm.loop !220

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_less_iterEEvT_SG_SG_T0_.exit: ; preds = %.lr.ph30, %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_less_iterEEvT_SG_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_less_iterEEvT_SG_T0_(ptr %0, ptr nonnull %i.e)
  %.not8.i = icmp eq ptr %i.e, %1
  br i1 %.not8.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_less_iterEEvT_SG_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i
  %.sroa.0.09.i = phi ptr [ %i.ag, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i ], [ %i.e, %bb.b ] ; 5 uses
  %.sroa.03.0.copyload.i.i = load ptr, ptr %.sroa.0.09.i, align 8 ; 7 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i, i64 8
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8 ; 5 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i, i64 16
  %.sroa.6.0.copyload.i.i = load i32, ptr %.sroa.6.0..sroa_idx.i.i, align 8 ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.0.copyload.i.i, i64 %.sroa.5.0.copyload.i.i ; 2 uses
  %.idx5.i.i12.i.i.i.i = shl nuw nsw i64 %.sroa.5.0.copyload.i.i, 2
  br label %bb.c

bb.c:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4absl12lts_202505124SpanIKiEEiENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread.i.i, %.lr.ph.i
  %.sroa.08.0.i.i = phi ptr [ %.sroa.0.09.i, %.lr.ph.i ], [ %.sroa.0.0.i.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4absl12lts_202505124SpanIKiEEiENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread.i.i ] ; 9 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.08.0.i.i, i64 -24 ; 3 uses
  %.sroa.03.0.copyload.i.i.i.i = load ptr, ptr %.sroa.0.0.i.i, align 8, !tbaa !63 ; 6 uses
  %.sroa.24.0..sroa_idx.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.08.0.i.i, i64 -16
  %.sroa.24.0.copyload.i.i.i.i = load i64, ptr %.sroa.24.0..sroa_idx.i.i.i.i, align 8, !tbaa !64 ; 4 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.0.copyload.i.i.i.i, i64 %.sroa.24.0.copyload.i.i.i.i ; 2 uses
  %.idx5.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.24.0.copyload.i.i.i.i, 2
  %i.h = icmp ult i64 %.sroa.24.0.copyload.i.i.i.i, %.sroa.5.0.copyload.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i, i64 %.idx5.i.i.i.i.i.i
  %i.j = select i1 %i.h, ptr %i.i, ptr %i.f       ; 2 uses
  %.not22.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.03.0.copyload.i.i, %i.j
  br i1 %.not22.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.c, %bb.e
  %.01924.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.p, %bb.e ], [ %.sroa.03.0.copyload.i.i.i.i, %bb.c ] ; 2 uses
  %.02023.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.o, %bb.e ], [ %.sroa.03.0.copyload.i.i, %bb.c ] ; 2 uses
  %i.k = load i32, ptr %.02023.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !4 ; 2 uses
  %i.l = load i32, ptr %.01924.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !4 ; 2 uses
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4absl12lts_202505124SpanIKiEEiENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.n = icmp slt i32 %i.l, %i.k
  br i1 %i.n, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, %i.j
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !89

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i.i.i: ; preds = %bb.e, %bb.c
  %.019.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.03.0.copyload.i.i.i.i, %bb.c ], [ %i.p, %bb.e ]
  %.not.i.i.i.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i.i.i.i.i, %i.g
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4absl12lts_202505124SpanIKiEEiENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread.i.i

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i.i: ; preds = %bb.d, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i.i.i
  %i.q = icmp ult i64 %.sroa.5.0.copyload.i.i, %.sroa.24.0.copyload.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i.i.i, i64 %.idx5.i.i12.i.i.i.i
  %i.s = select i1 %i.q, ptr %i.r, ptr %i.g       ; 2 uses
  %.not22.i.i.i.i.i.i.i13.i.i.i.i = icmp eq ptr %.sroa.03.0.copyload.i.i.i.i, %i.s
  br i1 %.not22.i.i.i.i.i.i.i13.i.i.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i14.i.i.i.i

.lr.ph.i.i.i.i.i.i.i14.i.i.i.i:                   ; preds = %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i.i, %bb.g
  %.01924.i.i.i.i.i.i.i15.i.i.i.i = phi ptr [ %i.y, %bb.g ], [ %.sroa.03.0.copyload.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i.i ] ; 2 uses
  %.02023.i.i.i.i.i.i.i16.i.i.i.i = phi ptr [ %i.x, %bb.g ], [ %.sroa.03.0.copyload.i.i.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i.i ] ; 2 uses
  %i.t = load i32, ptr %.02023.i.i.i.i.i.i.i16.i.i.i.i, align 4, !tbaa !4 ; 2 uses
  %i.u = load i32, ptr %.01924.i.i.i.i.i.i.i15.i.i.i.i, align 4, !tbaa !4 ; 2 uses
  %i.v = icmp slt i32 %i.t, %i.u
  br i1 %i.v, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i14.i.i.i.i
  %i.w = icmp slt i32 %i.u, %i.t
  br i1 %i.w, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4absl12lts_202505124SpanIKiEEiENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i16.i.i.i.i, i64 4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i15.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i17.i.i.i.i = icmp eq ptr %i.x, %i.s
  br i1 %.not.i.i.i.i.i.i.i17.i.i.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i14.i.i.i.i, !llvm.loop !89

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i.i.i: ; preds = %bb.g, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i.i
  %.019.lcssa.i.i.i.i.i.i.i19.i.i.i.i = phi ptr [ %.sroa.03.0.copyload.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i.i ], [ %i.y, %bb.g ]
  %.not28.i.i.i.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i19.i.i.i.i, %i.f
  br i1 %.not28.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4absl12lts_202505124SpanIKiEEiENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4absl12lts_202505124SpanIKiEEiENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i.i: ; preds = %bb.f, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i.i.i
  %i.z = getelementptr inbounds i8, ptr %.sroa.08.0.i.i, i64 -8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !49
  %i.ab = icmp slt i32 %.sroa.6.0.copyload.i.i, %i.aa
  br i1 %i.ab, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4absl12lts_202505124SpanIKiEEiENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4absl12lts_202505124SpanIKiEEiENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4absl12lts_202505124SpanIKiEEiENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.08.0.i.i, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.0.0.i.i, i64 16, i1 false), !tbaa.struct !222
  %i.ac = getelementptr inbounds i8, ptr %.sroa.08.0.i.i, i64 -8
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i.i, i64 16
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !49
  br label %bb.c, !llvm.loop !224

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4absl12lts_202505124SpanIKiEEiENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i14.i.i.i.i
  store ptr %.sroa.03.0.copyload.i.i, ptr %.sroa.08.0.i.i, align 8, !tbaa !63
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i.i, i64 8
  store i64 %.sroa.5.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx5.i.i, align 8, !tbaa !64
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i.i, i64 16
  store i32 %.sroa.6.0.copyload.i.i, ptr %i.af, align 8, !tbaa !49
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.ag, %1
  br i1 %.not.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_less_iterEEvT_SG_T0_.exit, label %.lr.ph.i, !llvm.loop !225

bb.h:                                             ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_less_iterEEvT_SG_T0_(ptr %0, ptr %1)
  br label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_less_iterEEvT_SG_T0_.exit

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_less_iterEEvT_SG_T0_.exit: ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %bb.b, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEElS8_NS0_5__ops15_Iter_less_iterEEvT_T0_SH_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef byval(%"struct.std::pair") align 8 %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41
  %.048 = phi i64 [ %i.ah, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41 ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.048, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 4 uses
  %i.f = getelementptr inbounds [24 x i8], ptr %0, i64 %i.e ; 3 uses
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [24 x i8], ptr %0, i64 %i.g ; 3 uses
  %.sroa.05.0.copyload.i.i = load ptr, ptr %i.f, align 8, !tbaa !63 ; 6 uses
  %.sroa.26.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.26.0.copyload.i.i = load i64, ptr %.sroa.26.0..sroa_idx.i.i, align 8, !tbaa !64 ; 4 uses
  %.sroa.03.0.copyload.i.i = load ptr, ptr %i.h, align 8, !tbaa !63 ; 6 uses
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.24.0.copyload.i.i = load i64, ptr %.sroa.24.0..sroa_idx.i.i, align 8, !tbaa !64 ; 4 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.sroa.05.0.copyload.i.i, i64 %.sroa.26.0.copyload.i.i ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.0.copyload.i.i, i64 %.sroa.24.0.copyload.i.i ; 2 uses
  %.idx5.i.i.i.i = shl nuw nsw i64 %.sroa.24.0.copyload.i.i, 2
  %i.k = icmp ult i64 %.sroa.24.0.copyload.i.i, %.sroa.26.0.copyload.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i, i64 %.idx5.i.i.i.i
  %i.m = select i1 %i.k, ptr %i.l, ptr %i.i       ; 2 uses
  %.not22.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.05.0.copyload.i.i, %i.m
  br i1 %.not22.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph, %bb.c
  %.01924.i.i.i.i.i.i.i.i.i = phi ptr [ %i.s, %bb.c ], [ %.sroa.03.0.copyload.i.i, %.lr.ph ] ; 2 uses
  %.02023.i.i.i.i.i.i.i.i.i = phi ptr [ %i.r, %bb.c ], [ %.sroa.05.0.copyload.i.i, %.lr.ph ] ; 2 uses
  %i.n = load i32, ptr %.02023.i.i.i.i.i.i.i.i.i, align 4, !tbaa !4 ; 2 uses
  %i.o = load i32, ptr %.01924.i.i.i.i.i.i.i.i.i, align 4, !tbaa !4 ; 2 uses
  %i.p = icmp slt i32 %i.n, %i.o
  br i1 %i.p, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.q = icmp slt i32 %i.o, %i.n
  br i1 %i.q, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, %i.m
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !89

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i: ; preds = %bb.c, %.lr.ph
  %.019.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.03.0.copyload.i.i, %.lr.ph ], [ %i.s, %bb.c ]
  %.not.i.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i.i.i, %i.j
  br i1 %.not.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i: ; preds = %bb.b, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i
  %.idx5.i.i12.i.i = shl nuw nsw i64 %.sroa.26.0.copyload.i.i, 2
  %i.t = icmp ult i64 %.sroa.26.0.copyload.i.i, %.sroa.24.0.copyload.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i, i64 %.idx5.i.i12.i.i
  %i.v = select i1 %i.t, ptr %i.u, ptr %i.j       ; 2 uses
  %.not22.i.i.i.i.i.i.i13.i.i = icmp eq ptr %.sroa.03.0.copyload.i.i, %i.v
  br i1 %.not22.i.i.i.i.i.i.i13.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i, label %.lr.ph.i.i.i.i.i.i.i14.i.i

.lr.ph.i.i.i.i.i.i.i14.i.i:                       ; preds = %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i, %bb.e
  %.01924.i.i.i.i.i.i.i15.i.i = phi ptr [ %i.ab, %bb.e ], [ %.sroa.05.0.copyload.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i ] ; 2 uses
  %.02023.i.i.i.i.i.i.i16.i.i = phi ptr [ %i.aa, %bb.e ], [ %.sroa.03.0.copyload.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i ] ; 2 uses
  %i.w = load i32, ptr %.02023.i.i.i.i.i.i.i16.i.i, align 4, !tbaa !4 ; 2 uses
  %i.x = load i32, ptr %.01924.i.i.i.i.i.i.i15.i.i, align 4, !tbaa !4 ; 2 uses
  %i.y = icmp slt i32 %i.w, %i.x
  br i1 %i.y, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i14.i.i
  %i.z = icmp slt i32 %i.x, %i.w
  br i1 %i.z, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i16.i.i, i64 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i15.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i17.i.i = icmp eq ptr %i.aa, %i.v
  br i1 %.not.i.i.i.i.i.i.i17.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i, label %.lr.ph.i.i.i.i.i.i.i14.i.i, !llvm.loop !89

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i: ; preds = %bb.e, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i
  %.019.lcssa.i.i.i.i.i.i.i19.i.i = phi ptr [ %.sroa.05.0.copyload.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i ], [ %i.ab, %bb.e ]
  %.not28.i.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i19.i.i, %i.i
  br i1 %.not28.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit: ; preds = %bb.d, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !49
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !49
  %i.ag = icmp slt i32 %i.ad, %i.af
  %cond.fr = freeze i1 %i.ag
  br i1 %cond.fr, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41: ; preds = %.lr.ph.i.i.i.i.i.i.i14.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread
  %i.ah = phi i64 [ %i.g, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread ], [ %i.e, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit ], [ %i.e, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i ], [ %i.e, %.lr.ph.i.i.i.i.i.i.i14.i.i ] ; 4 uses
  %i.ai = getelementptr inbounds [24 x i8], ptr %0, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds [24 x i8], ptr %0, i64 %.048 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aj, ptr noundef nonnull align 8 dereferenceable(20) %i.ai, i64 16, i1 false), !tbaa.struct !222
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i32 %i.al, ptr %i.am, align 8, !tbaa !49
  %i.an = icmp slt i64 %i.ah, %i.b
  br i1 %i.an, label %.lr.ph, label %._crit_edge, !llvm.loop !226

._crit_edge:                                      ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.ah, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread41 ] ; 5 uses
  %i.ao = and i64 %2, 1
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.f, label %bb.h

bb.f:                                             ; preds = %._crit_edge
  %i.aq = add nsw i64 %2, -2
  %i.ar = ashr exact i64 %i.aq, 1
  %i.as = icmp eq i64 %.0.lcssa, %i.ar
  br i1 %i.as, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.at = shl nsw i64 %.0.lcssa, 1
  %i.au = or disjoint i64 %i.at, 1                ; 2 uses
  %i.av = getelementptr inbounds [24 x i8], ptr %0, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aw, ptr noundef nonnull align 8 dereferenceable(20) %i.av, i64 16, i1 false), !tbaa.struct !222
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !4
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i32 %i.ay, ptr %i.az, align 8, !tbaa !49
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge
  %.1 = phi i64 [ %i.au, %bb.g ], [ %.0.lcssa, %bb.f ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.038.0.copyload = load ptr, ptr %3, align 8 ; 7 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 5 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %i.ba = icmp sgt i64 %.1, %1
  br i1 %i.ba, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEElS8_NS0_5__ops14_Iter_less_valEEvT_T0_SH_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.038.0.copyload, i64 %.sroa.2.0.copyload ; 2 uses
  %.idx5.i.i.i.i.i = shl nuw nsw i64 %.sroa.2.0.copyload, 2
  br label %bb.i

bb.i:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESA_EEbT_RT0_.exit.thread.i, %.lr.ph.i
  %.024.i = phi i64 [ %.1, %.lr.ph.i ], [ %.0925.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESA_EEbT_RT0_.exit.thread.i ] ; 5 uses
  %.0925.in.i = add nsw i64 %.024.i, -1
  %.0925.i = sdiv i64 %.0925.in.i, 2              ; 4 uses
  %i.bc = getelementptr inbounds [24 x i8], ptr %0, i64 %.0925.i ; 5 uses
  %.sroa.05.0.copyload.i.i.i = load ptr, ptr %i.bc, align 8, !tbaa !63 ; 6 uses
  %.sroa.26.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.26.0.copyload.i.i.i = load i64, ptr %.sroa.26.0..sroa_idx.i.i.i, align 8, !tbaa !64 ; 4 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.05.0.copyload.i.i.i, i64 %.sroa.26.0.copyload.i.i.i ; 2 uses
  %i.be = icmp ult i64 %.sroa.2.0.copyload, %.sroa.26.0.copyload.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i.i, i64 %.idx5.i.i.i.i.i
  %i.bg = select i1 %i.be, ptr %i.bf, ptr %i.bd   ; 2 uses
  %.not22.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.05.0.copyload.i.i.i, %i.bg
  br i1 %.not22.i.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.i, %bb.k
  %.01924.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bm, %bb.k ], [ %.sroa.038.0.copyload, %bb.i ] ; 2 uses
  %.02023.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bl, %bb.k ], [ %.sroa.05.0.copyload.i.i.i, %bb.i ] ; 2 uses
  %i.bh = load i32, ptr %.02023.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !4 ; 2 uses
  %i.bi = load i32, ptr %.01924.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !4 ; 2 uses
  %i.bj = icmp slt i32 %i.bh, %i.bi
  br i1 %i.bj, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESA_EEbT_RT0_.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.bk = icmp slt i32 %i.bi, %i.bh
  br i1 %i.bk, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bl, %i.bg
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !89

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i.i: ; preds = %bb.k, %bb.i
  %.019.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.038.0.copyload, %bb.i ], [ %i.bm, %bb.k ]
  %.not.i.i.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i.i.i.i, %i.bb
  br i1 %.not.i.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESA_EEbT_RT0_.exit.thread.i

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i: ; preds = %bb.j, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i.i
  %.idx5.i.i12.i.i.i = shl nuw nsw i64 %.sroa.26.0.copyload.i.i.i, 2
  %i.bn = icmp ult i64 %.sroa.26.0.copyload.i.i.i, %.sroa.2.0.copyload
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.038.0.copyload, i64 %.idx5.i.i12.i.i.i
  %i.bp = select i1 %i.bn, ptr %i.bo, ptr %i.bb   ; 2 uses
  %.not22.i.i.i.i.i.i.i13.i.i.i = icmp eq ptr %.sroa.038.0.copyload, %i.bp
  br i1 %.not22.i.i.i.i.i.i.i13.i.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i.i, label %.lr.ph.i.i.i.i.i.i.i14.i.i.i

.lr.ph.i.i.i.i.i.i.i14.i.i.i:                     ; preds = %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i, %bb.m
  %.01924.i.i.i.i.i.i.i15.i.i.i = phi ptr [ %i.bv, %bb.m ], [ %.sroa.05.0.copyload.i.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i ] ; 2 uses
  %.02023.i.i.i.i.i.i.i16.i.i.i = phi ptr [ %i.bu, %bb.m ], [ %.sroa.038.0.copyload, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i ] ; 2 uses
  %i.bq = load i32, ptr %.02023.i.i.i.i.i.i.i16.i.i.i, align 4, !tbaa !4 ; 2 uses
  %i.br = load i32, ptr %.01924.i.i.i.i.i.i.i15.i.i.i, align 4, !tbaa !4 ; 2 uses
  %i.bs = icmp slt i32 %i.bq, %i.br
  br i1 %i.bs, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEElS8_NS0_5__ops14_Iter_less_valEEvT_T0_SH_T1_RT2_.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i14.i.i.i
  %i.bt = icmp slt i32 %i.br, %i.bq
  br i1 %i.bt, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESA_EEbT_RT0_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i16.i.i.i, i64 4 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i15.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i17.i.i.i = icmp eq ptr %i.bu, %i.bp
  br i1 %.not.i.i.i.i.i.i.i17.i.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i.i, label %.lr.ph.i.i.i.i.i.i.i14.i.i.i, !llvm.loop !89

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i.i: ; preds = %bb.m, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i
  %.019.lcssa.i.i.i.i.i.i.i19.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i ], [ %i.bv, %bb.m ]
  %.not28.i.i.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i19.i.i.i, %i.bd
  br i1 %.not28.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESA_EEbT_RT0_.exit.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEElS8_NS0_5__ops14_Iter_less_valEEvT_T0_SH_T1_RT2_.exit

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESA_EEbT_RT0_.exit.i: ; preds = %bb.l, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !49
  %i.by = icmp slt i32 %i.bx, %.sroa.3.0.copyload
  br i1 %i.by, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESA_EEbT_RT0_.exit.thread.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEElS8_NS0_5__ops14_Iter_less_valEEvT_T0_SH_T1_RT2_.exit

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESA_EEbT_RT0_.exit.thread.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESA_EEbT_RT0_.exit.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i.i
  %i.bz = getelementptr inbounds [24 x i8], ptr %0, i64 %.024.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bz, ptr noundef nonnull align 8 dereferenceable(20) %i.bc, i64 16, i1 false), !tbaa.struct !222
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store i32 %i.cb, ptr %i.cc, align 8, !tbaa !49
  %i.cd = icmp sgt i64 %.0925.i, %1
  br i1 %i.cd, label %bb.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEElS8_NS0_5__ops14_Iter_less_valEEvT_T0_SH_T1_RT2_.exit, !llvm.loop !227

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEElS8_NS0_5__ops14_Iter_less_valEEvT_T0_SH_T1_RT2_.exit: ; preds = %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESA_EEbT_RT0_.exit.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESA_EEbT_RT0_.exit.thread.i, %.lr.ph.i.i.i.i.i.i.i14.i.i.i, %bb.h
  %.021.i = phi i64 [ %.1, %bb.h ], [ %.024.i, %.lr.ph.i.i.i.i.i.i.i14.i.i.i ], [ %.0925.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESA_EEbT_RT0_.exit.thread.i ], [ %.024.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i.i ], [ %.024.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESA_EEbT_RT0_.exit.i ]
  %i.ce = getelementptr inbounds [24 x i8], ptr %0, i64 %.021.i ; 3 uses
  store ptr %.sroa.038.0.copyload, ptr %i.ce, align 8, !tbaa !63
  %.sroa.5.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i64 %.sroa.2.0.copyload, ptr %.sroa.5.0..sroa_idx36, align 8, !tbaa !64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store i32 %.sroa.3.0.copyload, ptr %i.cf, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_less_iterEEvT_SG_SG_SG_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"class.absl::lts_20250512::Span", align 8 ; 4 uses
  %5 = alloca %"class.absl::lts_20250512::Span", align 8 ; 4 uses
  %6 = alloca %"class.absl::lts_20250512::Span", align 8 ; 4 uses
  %7 = alloca %"class.absl::lts_20250512::Span", align 8 ; 4 uses
  %8 = alloca %"class.absl::lts_20250512::Span", align 8 ; 4 uses
  %9 = alloca %"class.absl::lts_20250512::Span", align 8 ; 4 uses
  %.sroa.05.0.copyload.i.i = load ptr, ptr %1, align 8, !tbaa !63 ; 16 uses
  %.sroa.26.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.26.0.copyload.i.i = load i64, ptr %.sroa.26.0..sroa_idx.i.i, align 8, !tbaa !64 ; 9 uses
  %.sroa.03.0.copyload.i.i = load ptr, ptr %2, align 8, !tbaa !63 ; 16 uses
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.24.0.copyload.i.i = load i64, ptr %.sroa.24.0..sroa_idx.i.i, align 8, !tbaa !64 ; 8 uses
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %.sroa.05.0.copyload.i.i, i64 %.sroa.26.0.copyload.i.i ; 6 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.0.copyload.i.i, i64 %.sroa.24.0.copyload.i.i ; 6 uses
  %.idx5.i.i.i.i = shl nuw nsw i64 %.sroa.24.0.copyload.i.i, 2 ; 3 uses
  %i.c = icmp ult i64 %.sroa.24.0.copyload.i.i, %.sroa.26.0.copyload.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i, i64 %.idx5.i.i.i.i
  %i.e = select i1 %i.c, ptr %i.d, ptr %i.a       ; 2 uses
  %.not22.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.05.0.copyload.i.i, %i.e
  br i1 %.not22.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.a, %bb.c
  %.01924.i.i.i.i.i.i.i.i.i = phi ptr [ %i.k, %bb.c ], [ %.sroa.03.0.copyload.i.i, %bb.a ] ; 2 uses
  %.02023.i.i.i.i.i.i.i.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.05.0.copyload.i.i, %bb.a ] ; 2 uses
  %i.f = load i32, ptr %.02023.i.i.i.i.i.i.i.i.i, align 4, !tbaa !4 ; 2 uses
  %i.g = load i32, ptr %.01924.i.i.i.i.i.i.i.i.i, align 4, !tbaa !4 ; 2 uses
  %i.h = icmp slt i32 %i.f, %i.g
  br i1 %i.h, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.i = icmp slt i32 %i.g, %i.f
  br i1 %i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, %i.e
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !89

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i: ; preds = %bb.c, %bb.a
  %.019.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.03.0.copyload.i.i, %bb.a ], [ %i.k, %bb.c ]
  %.not.i.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i.i.i, %i.b
  br i1 %.not.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i: ; preds = %bb.b, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i
  %.idx5.i.i12.i.i = shl nuw nsw i64 %.sroa.26.0.copyload.i.i, 2 ; 2 uses
  %i.l = icmp ult i64 %.sroa.26.0.copyload.i.i, %.sroa.24.0.copyload.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i, i64 %.idx5.i.i12.i.i
  %i.n = select i1 %i.l, ptr %i.m, ptr %i.b       ; 2 uses
  %.not22.i.i.i.i.i.i.i13.i.i = icmp eq ptr %.sroa.03.0.copyload.i.i, %i.n
  br i1 %.not22.i.i.i.i.i.i.i13.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i, label %.lr.ph.i.i.i.i.i.i.i14.i.i

.lr.ph.i.i.i.i.i.i.i14.i.i:                       ; preds = %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i, %bb.e
  %.01924.i.i.i.i.i.i.i15.i.i = phi ptr [ %i.t, %bb.e ], [ %.sroa.05.0.copyload.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i ] ; 2 uses
  %.02023.i.i.i.i.i.i.i16.i.i = phi ptr [ %i.s, %bb.e ], [ %.sroa.03.0.copyload.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i ] ; 2 uses
  %i.o = load i32, ptr %.02023.i.i.i.i.i.i.i16.i.i, align 4, !tbaa !4 ; 2 uses
  %i.p = load i32, ptr %.01924.i.i.i.i.i.i.i15.i.i, align 4, !tbaa !4 ; 2 uses
  %i.q = icmp slt i32 %i.o, %i.p
  br i1 %i.q, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread135, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i14.i.i
  %i.r = icmp slt i32 %i.p, %i.o
  br i1 %i.r, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i16.i.i, i64 4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i15.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i17.i.i = icmp eq ptr %i.s, %i.n
  br i1 %.not.i.i.i.i.i.i.i17.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i, label %.lr.ph.i.i.i.i.i.i.i14.i.i, !llvm.loop !89

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i: ; preds = %bb.e, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i
  %.019.lcssa.i.i.i.i.i.i.i19.i.i = phi ptr [ %.sroa.05.0.copyload.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i ], [ %i.t, %bb.e ]
  %.not28.i.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i19.i.i, %i.a
  br i1 %.not28.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread135

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit: ; preds = %bb.d, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i32, ptr %i.u, align 8, !tbaa !49
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !49
  %i.y = icmp slt i32 %i.v, %i.x
  br i1 %i.y, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread135

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit
  %.sroa.03.0.copyload.i.i29 = load ptr, ptr %3, align 8, !tbaa !63 ; 11 uses
  %.sroa.24.0..sroa_idx.i.i30 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.24.0.copyload.i.i31 = load i64, ptr %.sroa.24.0..sroa_idx.i.i30, align 8, !tbaa !64 ; 6 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.0.copyload.i.i29, i64 %.sroa.24.0.copyload.i.i31 ; 4 uses
  %.idx5.i.i.i.i32 = shl nuw nsw i64 %.sroa.24.0.copyload.i.i31, 2 ; 2 uses
  %i.aa = icmp ult i64 %.sroa.24.0.copyload.i.i31, %.sroa.24.0.copyload.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i, i64 %.idx5.i.i.i.i32
  %i.ac = select i1 %i.aa, ptr %i.ab, ptr %i.b    ; 2 uses
  %.not22.i.i.i.i.i.i.i.i.i33 = icmp eq ptr %.sroa.03.0.copyload.i.i, %i.ac
  br i1 %.not22.i.i.i.i.i.i.i.i.i33, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i38, label %.lr.ph.i.i.i.i.i.i.i.i.i34

.lr.ph.i.i.i.i.i.i.i.i.i34:                       ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread, %bb.g
  %.01924.i.i.i.i.i.i.i.i.i35 = phi ptr [ %i.ai, %bb.g ], [ %.sroa.03.0.copyload.i.i29, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread ] ; 2 uses
  %.02023.i.i.i.i.i.i.i.i.i36 = phi ptr [ %i.ah, %bb.g ], [ %.sroa.03.0.copyload.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread ] ; 2 uses
  %i.ad = load i32, ptr %.02023.i.i.i.i.i.i.i.i.i36, align 4, !tbaa !4 ; 2 uses
  %i.ae = load i32, ptr %.01924.i.i.i.i.i.i.i.i.i35, align 4, !tbaa !4 ; 2 uses
  %i.af = icmp slt i32 %i.ad, %i.ae
  br i1 %i.af, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit52.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i34
  %i.ag = icmp slt i32 %i.ae, %i.ad
  br i1 %i.ag, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i41, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i.i.i36, i64 4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i.i.i35, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i37 = icmp eq ptr %i.ah, %i.ac
  br i1 %.not.i.i.i.i.i.i.i.i.i37, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i38, label %.lr.ph.i.i.i.i.i.i.i.i.i34, !llvm.loop !89

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i38: ; preds = %bb.g, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread
  %.019.lcssa.i.i.i.i.i.i.i.i.i39 = phi ptr [ %.sroa.03.0.copyload.i.i29, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread ], [ %i.ai, %bb.g ]
  %.not.i.i40 = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i.i.i39, %i.z
  br i1 %.not.i.i40, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i41, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit52.thread

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i41: ; preds = %bb.f, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i38
  %i.aj = icmp ult i64 %.sroa.24.0.copyload.i.i, %.sroa.24.0.copyload.i.i31
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i29, i64 %.idx5.i.i.i.i
  %i.al = select i1 %i.aj, ptr %i.ak, ptr %i.z    ; 2 uses
  %.not22.i.i.i.i.i.i.i13.i.i43 = icmp eq ptr %.sroa.03.0.copyload.i.i29, %i.al
  br i1 %.not22.i.i.i.i.i.i.i13.i.i43, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i48, label %.lr.ph.i.i.i.i.i.i.i14.i.i44

.lr.ph.i.i.i.i.i.i.i14.i.i44:                     ; preds = %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i41, %bb.i
  %.01924.i.i.i.i.i.i.i15.i.i45 = phi ptr [ %i.ar, %bb.i ], [ %.sroa.03.0.copyload.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i41 ] ; 2 uses
  %.02023.i.i.i.i.i.i.i16.i.i46 = phi ptr [ %i.aq, %bb.i ], [ %.sroa.03.0.copyload.i.i29, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i41 ] ; 2 uses
  %i.am = load i32, ptr %.02023.i.i.i.i.i.i.i16.i.i46, align 4, !tbaa !4 ; 2 uses
  %i.an = load i32, ptr %.01924.i.i.i.i.i.i.i15.i.i45, align 4, !tbaa !4 ; 2 uses
  %i.ao = icmp slt i32 %i.am, %i.an
  br i1 %i.ao, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit52.thread137, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i14.i.i44
  %i.ap = icmp slt i32 %i.an, %i.am
  br i1 %i.ap, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit52, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i16.i.i46, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i15.i.i45, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i17.i.i47 = icmp eq ptr %i.aq, %i.al
  br i1 %.not.i.i.i.i.i.i.i17.i.i47, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i48, label %.lr.ph.i.i.i.i.i.i.i14.i.i44, !llvm.loop !89

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i48: ; preds = %bb.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i41
  %.019.lcssa.i.i.i.i.i.i.i19.i.i49 = phi ptr [ %.sroa.03.0.copyload.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i41 ], [ %i.ar, %bb.i ]
  %.not28.i.i50 = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i19.i.i49, %i.b
  br i1 %.not28.i.i50, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit52, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit52.thread137

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit52: ; preds = %bb.h, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i48
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.at = load i32, ptr %i.as, align 8, !tbaa !49
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.av = load i32, ptr %i.au, align 8, !tbaa !49
  %i.aw = icmp slt i32 %i.at, %i.av
  br i1 %i.aw, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit52.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit52.thread137

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit52.thread: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i34, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i38, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit52
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(20) %0, i64 16, i1 false), !tbaa.struct !222
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(20) %2, i64 16, i1 false), !tbaa.struct !222
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !222
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.v

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit52.thread137: ; preds = %.lr.ph.i.i.i.i.i.i.i14.i.i44, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i48, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit52
  %i.ax = icmp ult i64 %.sroa.24.0.copyload.i.i31, %.sroa.26.0.copyload.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i, i64 %.idx5.i.i.i.i32
  %i.az = select i1 %i.ax, ptr %i.ay, ptr %i.a    ; 2 uses
  %.not22.i.i.i.i.i.i.i.i.i60 = icmp eq ptr %.sroa.05.0.copyload.i.i, %i.az
  br i1 %.not22.i.i.i.i.i.i.i.i.i60, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i65, label %.lr.ph.i.i.i.i.i.i.i.i.i61

.lr.ph.i.i.i.i.i.i.i.i.i61:                       ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit52.thread137, %bb.k
  %.01924.i.i.i.i.i.i.i.i.i62 = phi ptr [ %i.bf, %bb.k ], [ %.sroa.03.0.copyload.i.i29, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit52.thread137 ] ; 2 uses
  %.02023.i.i.i.i.i.i.i.i.i63 = phi ptr [ %i.be, %bb.k ], [ %.sroa.05.0.copyload.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit52.thread137 ] ; 2 uses
  %i.ba = load i32, ptr %.02023.i.i.i.i.i.i.i.i.i63, align 4, !tbaa !4 ; 2 uses
  %i.bb = load i32, ptr %.01924.i.i.i.i.i.i.i.i.i62, align 4, !tbaa !4 ; 2 uses
  %i.bc = icmp slt i32 %i.ba, %i.bb
  br i1 %i.bc, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit79.thread, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i61
  %i.bd = icmp slt i32 %i.bb, %i.ba
end_hunk_2
begin_hunk_3_@_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_less_iterEEvT_SG_T0_:bb.a
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %.sroa.07.027 = phi ptr [ %.sroa.07.024, %.lr.ph ], [ %.sroa.07.0, %bb.l ] ; 7 uses
  %.pn26 = phi ptr [ %0, %.lr.ph ], [ %.sroa.07.027, %bb.l ] ; 5 uses
  %.sroa.05.0.copyload.i.i = load ptr, ptr %.sroa.07.027, align 8, !tbaa !63 ; 12 uses
  %.sroa.26.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn26, i64 32
  %.sroa.26.0.copyload.i.i = load i64, ptr %.sroa.26.0..sroa_idx.i.i, align 8, !tbaa !64 ; 7 uses
  %.sroa.03.0.copyload.i.i = load ptr, ptr %0, align 8, !tbaa !63 ; 6 uses
  %.sroa.24.0.copyload.i.i = load i64, ptr %.sroa.24.0..sroa_idx.i.i, align 8, !tbaa !64 ; 4 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %.sroa.05.0.copyload.i.i, i64 %.sroa.26.0.copyload.i.i ; 4 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.0.copyload.i.i, i64 %.sroa.24.0.copyload.i.i ; 2 uses
  %.idx5.i.i.i.i = shl nuw nsw i64 %.sroa.24.0.copyload.i.i, 2
  %i.f = icmp ult i64 %.sroa.24.0.copyload.i.i, %.sroa.26.0.copyload.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i, i64 %.idx5.i.i.i.i
  %i.h = select i1 %i.f, ptr %i.g, ptr %i.d       ; 2 uses
  %.not22.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.05.0.copyload.i.i, %i.h
  br i1 %.not22.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.b, %bb.d
  %.01924.i.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %bb.d ], [ %.sroa.03.0.copyload.i.i, %bb.b ] ; 2 uses
  %.02023.i.i.i.i.i.i.i.i.i = phi ptr [ %i.m, %bb.d ], [ %.sroa.05.0.copyload.i.i, %bb.b ] ; 2 uses
  %i.i = load i32, ptr %.02023.i.i.i.i.i.i.i.i.i, align 4, !tbaa !4 ; 2 uses
  %i.j = load i32, ptr %.01924.i.i.i.i.i.i.i.i.i, align 4, !tbaa !4 ; 2 uses
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.l = icmp slt i32 %i.j, %i.i
  br i1 %i.l, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !89

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i: ; preds = %bb.d, %bb.b
  %.019.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.03.0.copyload.i.i, %bb.b ], [ %i.n, %bb.d ]
  %.not.i.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i.i.i, %i.e
  br i1 %.not.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i: ; preds = %bb.c, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i
  %.idx5.i.i12.i.i = shl nuw nsw i64 %.sroa.26.0.copyload.i.i, 2 ; 2 uses
  %i.o = icmp ult i64 %.sroa.26.0.copyload.i.i, %.sroa.24.0.copyload.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i, i64 %.idx5.i.i12.i.i
  %i.q = select i1 %i.o, ptr %i.p, ptr %i.e       ; 2 uses
  %.not22.i.i.i.i.i.i.i13.i.i = icmp eq ptr %.sroa.03.0.copyload.i.i, %i.q
  br i1 %.not22.i.i.i.i.i.i.i13.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i, label %.lr.ph.i.i.i.i.i.i.i14.i.i

.lr.ph.i.i.i.i.i.i.i14.i.i:                       ; preds = %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i, %bb.f
  %.01924.i.i.i.i.i.i.i15.i.i = phi ptr [ %i.w, %bb.f ], [ %.sroa.05.0.copyload.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i ] ; 2 uses
  %.02023.i.i.i.i.i.i.i16.i.i = phi ptr [ %i.v, %bb.f ], [ %.sroa.03.0.copyload.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i ] ; 2 uses
  %i.r = load i32, ptr %.02023.i.i.i.i.i.i.i16.i.i, align 4, !tbaa !4 ; 2 uses
  %i.s = load i32, ptr %.01924.i.i.i.i.i.i.i15.i.i, align 4, !tbaa !4 ; 2 uses
  %i.t = icmp slt i32 %i.r, %i.s
  br i1 %i.t, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread17, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i14.i.i
  %i.u = icmp slt i32 %i.s, %i.r
  br i1 %i.u, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i16.i.i, i64 4 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i15.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i17.i.i = icmp eq ptr %i.v, %i.q
  br i1 %.not.i.i.i.i.i.i.i17.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i, label %.lr.ph.i.i.i.i.i.i.i14.i.i, !llvm.loop !89

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i: ; preds = %bb.f, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i
  %.019.lcssa.i.i.i.i.i.i.i19.i.i = phi ptr [ %.sroa.05.0.copyload.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i ], [ %i.w, %bb.f ]
  %.not28.i.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i19.i.i, %i.d
  br i1 %.not28.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread17

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit: ; preds = %bb.e, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.pn26, i64 40
  %i.y = load i32, ptr %i.x, align 8, !tbaa !49
  %i.z = load i32, ptr %i.b, align 8, !tbaa !49
  %i.aa = icmp slt i32 %i.y, %i.z
  br i1 %i.aa, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread17

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.027, i64 16, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.pn26, i64 40
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ab = ptrtoint ptr %.sroa.07.027 to i64
  %i.ac = sub i64 %i.ab, %i.c                     ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread
  %i.ae = getelementptr inbounds nuw i8, ptr %.pn26, i64 48
  %i.af = udiv exact i64 %i.ac, 24
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i ], [ %i.af, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %i.ae, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.078.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.sroa.07.027, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ah, ptr noundef nonnull align 8 dereferenceable(20) %i.ag, i64 16, i1 false), !tbaa.struct !222
  %i.ai = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.ak = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !49
  %i.al = add nsw i64 %.010.i.i.i.i.i, -1
  %i.am = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.am, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit, !llvm.loop !231

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false), !tbaa.struct !222
  store i32 %.sroa.4.0.copyload, ptr %i.b, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.l

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread17: ; preds = %.lr.ph.i.i.i.i.i.i.i14.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn26, i64 40
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 8 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4absl12lts_202505124SpanIKiEEiENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread17
  %.sroa.08.0.i = phi ptr [ %.sroa.07.027, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread17 ], [ %.sroa.0.0.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4absl12lts_202505124SpanIKiEEiENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread.i ] ; 9 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.08.0.i, i64 -24 ; 3 uses
  %.sroa.03.0.copyload.i.i.i = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !63 ; 6 uses
  %.sroa.24.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.08.0.i, i64 -16
  %.sroa.24.0.copyload.i.i.i = load i64, ptr %.sroa.24.0..sroa_idx.i.i.i, align 8, !tbaa !64 ; 4 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.0.copyload.i.i.i, i64 %.sroa.24.0.copyload.i.i.i ; 2 uses
  %.idx5.i.i.i.i.i = shl nuw nsw i64 %.sroa.24.0.copyload.i.i.i, 2
  %i.ao = icmp ult i64 %.sroa.24.0.copyload.i.i.i, %.sroa.26.0.copyload.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i, i64 %.idx5.i.i.i.i.i
  %i.aq = select i1 %i.ao, ptr %i.ap, ptr %i.d    ; 2 uses
  %.not22.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.05.0.copyload.i.i, %i.aq
  br i1 %.not22.i.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.g, %bb.i
  %.01924.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aw, %bb.i ], [ %.sroa.03.0.copyload.i.i.i, %bb.g ] ; 2 uses
  %.02023.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.av, %bb.i ], [ %.sroa.05.0.copyload.i.i, %bb.g ] ; 2 uses
  %i.ar = load i32, ptr %.02023.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !4 ; 2 uses
  %i.as = load i32, ptr %.01924.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !4 ; 2 uses
  %i.at = icmp slt i32 %i.ar, %i.as
  br i1 %i.at, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4absl12lts_202505124SpanIKiEEiENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.au = icmp slt i32 %i.as, %i.ar
  br i1 %i.au, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.av, %i.aq
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !89

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i.i: ; preds = %bb.i, %bb.g
  %.019.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.03.0.copyload.i.i.i, %bb.g ], [ %i.aw, %bb.i ]
  %.not.i.i.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i.i.i.i, %i.an
  br i1 %.not.i.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4absl12lts_202505124SpanIKiEEiENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread.i

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i: ; preds = %bb.h, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i.i
  %i.ax = icmp ult i64 %.sroa.26.0.copyload.i.i, %.sroa.24.0.copyload.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i.i, i64 %.idx5.i.i12.i.i
  %i.az = select i1 %i.ax, ptr %i.ay, ptr %i.an   ; 2 uses
  %.not22.i.i.i.i.i.i.i13.i.i.i = icmp eq ptr %.sroa.03.0.copyload.i.i.i, %i.az
  br i1 %.not22.i.i.i.i.i.i.i13.i.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i.i, label %.lr.ph.i.i.i.i.i.i.i14.i.i.i

.lr.ph.i.i.i.i.i.i.i14.i.i.i:                     ; preds = %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i, %bb.k
  %.01924.i.i.i.i.i.i.i15.i.i.i = phi ptr [ %i.bf, %bb.k ], [ %.sroa.05.0.copyload.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i ] ; 2 uses
  %.02023.i.i.i.i.i.i.i16.i.i.i = phi ptr [ %i.be, %bb.k ], [ %.sroa.03.0.copyload.i.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i ] ; 2 uses
  %i.ba = load i32, ptr %.02023.i.i.i.i.i.i.i16.i.i.i, align 4, !tbaa !4 ; 2 uses
  %i.bb = load i32, ptr %.01924.i.i.i.i.i.i.i15.i.i.i, align 4, !tbaa !4 ; 2 uses
  %i.bc = icmp slt i32 %i.ba, %i.bb
  br i1 %i.bc, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i14.i.i.i
  %i.bd = icmp slt i32 %i.bb, %i.ba
  br i1 %i.bd, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4absl12lts_202505124SpanIKiEEiENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i16.i.i.i, i64 4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i15.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i17.i.i.i = icmp eq ptr %i.be, %i.az
  br i1 %.not.i.i.i.i.i.i.i17.i.i.i, label %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i.i, label %.lr.ph.i.i.i.i.i.i.i14.i.i.i, !llvm.loop !89

_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i.i: ; preds = %bb.k, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i
  %.019.lcssa.i.i.i.i.i.i.i19.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.thread23.i.i.i ], [ %i.bf, %bb.k ]
  %.not28.i.i.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i19.i.i.i, %i.d
  br i1 %.not28.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4absl12lts_202505124SpanIKiEEiENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4absl12lts_202505124SpanIKiEEiENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i: ; preds = %bb.j, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i.i
  %i.bg = getelementptr inbounds i8, ptr %.sroa.08.0.i, i64 -8
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !49
  %i.bi = icmp slt i32 %.sroa.6.0.copyload.i, %i.bh
  br i1 %i.bi, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4absl12lts_202505124SpanIKiEEiENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4absl12lts_202505124SpanIKiEEiENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4absl12lts_202505124SpanIKiEEiENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i, %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.08.0.i, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.0.0.i, i64 16, i1 false), !tbaa.struct !222
  %i.bj = getelementptr inbounds i8, ptr %.sroa.08.0.i, i64 -8
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !4
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i, i64 16
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !49
  br label %bb.g, !llvm.loop !224

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit: ; preds = %_ZN4absl12lts_20250512ltIKiEEbNS0_4SpanIT_EES5_.exit21.i.i.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIN4absl12lts_202505124SpanIKiEEiENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i, %.lr.ph.i.i.i.i.i.i.i14.i.i.i
  store ptr %.sroa.05.0.copyload.i.i, ptr %.sroa.08.0.i, align 8, !tbaa !63
  %.sroa.5.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i, i64 8
  store i64 %.sroa.26.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx5.i, align 8, !tbaa !64
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i, i64 16
  store i32 %.sroa.6.0.copyload.i, ptr %i.bm, align 8, !tbaa !49
  br label %bb.l

bb.l:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4absl12lts_202505124SpanIKiEEiESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit
  %.sroa.07.0 = getelementptr inbounds nuw i8, ptr %.sroa.07.027, i64 24 ; 2 uses
  %.not = icmp eq ptr %.sroa.07.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !232

.loopexit:                                        ; preds = %bb.l, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.68", align 16   ; 7 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph124

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_T0_.exit
  %i.h = icmp eq i64 %i.by, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph124, !llvm.loop !233

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa120 = phi i64 [ %i.c, %.lr.ph ], [ %i.ca, %bb.b ]
  %storemerge41.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.019.1.i.i, %bb.b ]
  %i.i = udiv exact i64 %.lcssa120, 24            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.j = add nsw i64 %i.i, -2
  %i.k = lshr i64 %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit10.i.i, %._crit_edge
  %.08.i.i = phi i64 [ %i.k, %._crit_edge ], [ %i.v, %_ZNSt6vectorIiSaIiEED2Ev.exit10.i.i ] ; 4 uses
  %i.m = getelementptr inbounds [24 x i8], ptr %0, i64 %.08.i.i ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !111
  %i.p = load <2 x ptr>, ptr %i.m, align 8, !tbaa !63
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.p, ptr %3, align 16, !tbaa !63
  store ptr %i.o, ptr %i.l, align 16, !tbaa !111
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_(ptr nonnull %0, i64 noundef %.08.i.i, i64 noundef %i.i, ptr noundef nonnull %3)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %3, align 16, !tbaa !60    ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit10.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.l, align 16, !tbaa !111
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit10.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit10.i.i:              ; preds = %bb.e, %bb.d
  %.not.i.i10 = icmp eq i64 %.08.i.i, 0
  %i.v = add nsw i64 %.08.i.i, -1
  br i1 %.not.i.i10, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_.exit, label %bb.c, !llvm.loop !234

bb.f:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %3, align 16, !tbaa !60    ; 3 uses
  %.not.i.i.i11.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i11.i.i, label %common.resume.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.l, align 16, !tbaa !111
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ab) #25
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.w

_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit10.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_RT0_(ptr nonnull %0, ptr %storemerge41.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.loopexit

.lr.ph124:                                        ; preds = %.lr.ph, %bb.b
  %storemerge41123 = phi ptr [ %.sroa.019.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.042122 = phi i64 [ %i.by, %bb.b ], [ %2, %.lr.ph ]
  %i.ac = phi i64 [ %i.ca, %bb.b ], [ %i.c, %.lr.ph ]
  %i.ad = udiv i64 %i.ac, 48
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.ad
  %i.af = getelementptr inbounds i8, ptr %storemerge41123, i64 -24
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_(ptr %0, ptr nonnull %i.e, ptr %i.ae, ptr nonnull %i.af)
  br label %bb.h

bb.h:                                             ; preds = %bb.n, %.lr.ph124
  %.sroa.019.0.i.i = phi ptr [ %i.e, %.lr.ph124 ], [ %i.bx, %bb.n ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge41123, %.lr.ph124 ], [ %.sroa.0.1.i.i, %bb.n ]
  %i.ag = load ptr, ptr %0, align 8, !tbaa !63    ; 6 uses
  %i.ah = load ptr, ptr %i.f, align 8, !tbaa !63  ; 3 uses
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit.thread.i.i, %bb.h
  %.sroa.019.1.i.i = phi ptr [ %.sroa.019.0.i.i, %bb.h ], [ %i.ba, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit.thread.i.i ] ; 12 uses
  %i.al = load ptr, ptr %.sroa.019.1.i.i, align 8, !tbaa !63 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.019.1.i.i, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !63 ; 3 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = icmp slt i64 %i.ak, %i.aq
  %i.as = getelementptr inbounds i8, ptr %i.al, i64 %i.ak
  %i.at = select i1 %i.ar, ptr %i.as, ptr %i.an   ; 2 uses
  %.not22.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.al, %i.at
  br i1 %.not22.i.i.i.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.i, %bb.k
  %.01924.i.i.i.i.i.i.i.i.i = phi ptr [ %i.az, %bb.k ], [ %i.ag, %bb.i ] ; 2 uses
  %.02023.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ay, %bb.k ], [ %i.al, %bb.i ] ; 2 uses
  %i.au = load i32, ptr %.02023.i.i.i.i.i.i.i.i.i, align 4, !tbaa !4 ; 2 uses
  %i.av = load i32, ptr %.01924.i.i.i.i.i.i.i.i.i, align 4, !tbaa !4 ; 2 uses
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit.thread.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ax = icmp slt i32 %i.av, %i.au
  br i1 %i.ax, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit.thread23.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.at
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !89

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit.i.i: ; preds = %bb.k, %bb.i
  %.019.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ag, %bb.i ], [ %i.az, %bb.k ]
  %.not.i.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i.i.i, %i.ah
  br i1 %.not.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit.thread23.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit.thread.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit.thread.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.019.1.i.i, i64 24
  br label %bb.i, !llvm.loop !235

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit.thread23.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit.i.i, %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.019.1.i.i, i64 8
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit16.thread.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit16.thread.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit16.thread.i.i.backedge, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit.thread23.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.0.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit.thread23.i.i ], [ %.sroa.0.1.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit16.thread.i.i.backedge ] ; 4 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24 ; 5 uses
  %i.bc = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !63 ; 4 uses
  %i.bd = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !63 ; 3 uses
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = sub i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = icmp slt i64 %i.bh, %i.ak
  %i.bj = getelementptr inbounds i8, ptr %i.ag, i64 %i.bh
  %i.bk = select i1 %i.bi, ptr %i.bj, ptr %i.ah   ; 2 uses
  %.not22.i.i.i.i.i.i.i8.i.i = icmp eq ptr %i.ag, %i.bk
  br i1 %.not22.i.i.i.i.i.i.i8.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit16.i.i, label %.lr.ph.i.i.i.i.i.i.i9.i.i

.lr.ph.i.i.i.i.i.i.i9.i.i:                        ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit16.thread.i.i, %bb.m
  %.01924.i.i.i.i.i.i.i10.i.i = phi ptr [ %i.bq, %bb.m ], [ %i.bc, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit16.thread.i.i ] ; 2 uses
  %.02023.i.i.i.i.i.i.i11.i.i = phi ptr [ %i.bp, %bb.m ], [ %i.ag, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit16.thread.i.i ] ; 2 uses
  %i.bl = load i32, ptr %.02023.i.i.i.i.i.i.i11.i.i, align 4, !tbaa !4 ; 2 uses
  %i.bm = load i32, ptr %.01924.i.i.i.i.i.i.i10.i.i, align 4, !tbaa !4 ; 2 uses
  %i.bn = icmp slt i32 %i.bl, %i.bm
  br i1 %i.bn, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit16.thread.i.i.backedge, label %bb.l, !llvm.loop !236

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i9.i.i
  %i.bo = icmp slt i32 %i.bm, %i.bl
  br i1 %i.bo, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit16.thread26.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
end_hunk_3
