Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/descriptor?download=true
inline.NumInlined: 22185
inline.NumDeleted: 7876
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN6google8protobuf17DescriptorBuilder13BuildFileImplERKNS0_19FileDescriptorProtoERNS0_8internal13FlatAllocatorE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #40
  br label %bb.dh

bb.bu:                                            ; preds = %_ZN6google8protobuf17DescriptorBuilder19AddTwiceListedErrorERKNS0_19FileDescriptorProtoESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE6insertIS7_Li0EEESt4pairINSC_8iteratorEbERKT_.exit
  %.sroa.293.0.copyload = phi ptr [ %.sroa.293.0.copyload.pre, %_ZN6google8protobuf17DescriptorBuilder19AddTwiceListedErrorERKNS0_19FileDescriptorProtoESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %.sroa.293.0.copyload.pre1104, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE6insertIS7_Li0EEESt4pairINSC_8iteratorEbERKT_.exit ]
  %.sroa.092.0.copyload = phi i64 [ %.sroa.092.0.copyload.pre, %_ZN6google8protobuf17DescriptorBuilder19AddTwiceListedErrorERKNS0_19FileDescriptorProtoESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %.sroa.092.0.copyload.pre1102, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE6insertIS7_Li0EEESt4pairINSC_8iteratorEbERKT_.exit ]
  %i.mr = load ptr, ptr %i.fg, align 8, !tbaa !463
  %i.ms = invoke noundef ptr @_ZNK6google8protobuf14DescriptorPool6Tables8FindFileESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(416) %i.mr, i64 %.sroa.092.0.copyload, ptr %.sroa.293.0.copyload)
          to label %bb.bv unwind label %bb.dd     ; 2 uses

bb.bv:                                            ; preds = %bb.bu
  %i.mt = icmp eq ptr %i.ms, null
  br i1 %i.mt, label %bb.bw, label %thread-pre-split

bb.bw:                                            ; preds = %bb.bv
  %i.mu = load ptr, ptr %0, align 8, !tbaa !462   ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 40
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !253 ; 2 uses
  %.not313 = icmp eq ptr %i.mw, null
  br i1 %.not313, label %.thread.a, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %.sroa.090.0.copyload = load i64, ptr %50, align 8, !tbaa !59
  %.sroa.291.0.copyload = load ptr, ptr %i.jm, align 8, !tbaa !255
  %i.mx = invoke noundef ptr @_ZNK6google8protobuf14DescriptorPool14FindFileByNameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(120) %i.mw, i64 %.sroa.090.0.copyload, ptr %.sroa.291.0.copyload)
          to label %thread-pre-split unwind label %bb.dd

thread-pre-split:                                 ; preds = %bb.bx, %bb.bv
  %.0 = phi ptr [ %i.ms, %bb.bv ], [ %i.mx, %bb.bx ] ; 14 uses
  %.not = icmp eq ptr %.0, %i.f
  br i1 %.not, label %.thread370, label %bb.by

.thread370:                                       ; preds = %thread-pre-split
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #40
  br label %._crit_edge511

bb.by:                                            ; preds = %thread-pre-split
  %i.my = icmp eq ptr %.0, null
  %.pre1106 = load ptr, ptr %0, align 8, !tbaa !462 ; 3 uses
  br i1 %i.my, label %.thread.a, label %bb.cq

.thread.a:                                        ; preds = %bb.bw, %bb.by
  %i.mz = phi ptr [ %i.mu, %bb.bw ], [ %.pre1106, %bb.by ] ; 3 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 65
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !377, !range !71, !noundef !72
  %i.nc = trunc nuw i8 %i.nb to i1
  br i1 %i.nc, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit, label %bb.bz

bb.bz:                                            ; preds = %.thread.a
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mz, i64 66
  %i.ne = load i8, ptr %i.nd, align 2, !tbaa !591, !range !71, !noundef !72
  %i.nf = trunc nuw i8 %i.ne to i1
  br i1 %i.nf, label %bb.cj, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mz, i64 67
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !617, !range !71, !noundef !72
  %i.ni = trunc nuw i8 %i.nh to i1
  br i1 %i.ni, label %bb.ci, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.nj = load i64, ptr %47, align 8, !tbaa !93   ; 4 uses
  %i.nk = icmp ne i64 %i.nj, 0
  call void @llvm.assume(i1 %i.nk)
  %i.nl = icmp ult i64 %i.nj, 2
  br i1 %i.nl, label %bb.cc, label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  %i.nm = load i64, ptr %.sroa.4.0..sroa_idx.i.i607, align 8, !tbaa !97
  %.not.i.i.i.i.i = icmp ult i64 %i.nm, 131072
  br i1 %.not.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.nn = load i32, ptr %i.jz, align 8, !tbaa !47
  %i.no = zext i32 %i.nn to i64
  %i.np = icmp eq i64 %indvars.iv1080, %i.no
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit

bb.ce:                                            ; preds = %bb.cb
  %i.nq = load ptr, ptr %i.jz, align 8, !tbaa !62 ; 3 uses
  call void @llvm.prefetch.p0(ptr %i.nq, i32 0, i32 1, i32 1)
  %i.nr = xor i64 %indvars.iv1080, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ns = mul i64 %i.nr, -2543921745674291987
  %i.nt = call noundef i64 @llvm.bswap.i64(i64 %i.ns) ; 2 uses
  %i.nu = load i64, ptr %.sroa.4.0..sroa_idx.i.i607, align 8, !tbaa !97, !noalias !1653
  %i.nv = and i64 %i.nu, 65535
  %i.nw = lshr i64 %i.nt, 7
  %i.nx = xor i64 %i.nv, %i.nw
  %i.ny = trunc i64 %i.nt to i8
  %i.nz = and i8 %i.ny, 127
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.ka, align 8, !tbaa !62 ; 2 uses
  %i.oa = insertelement <16 x i8> poison, i8 %i.nz, i64 0
  %i.ob = shufflevector <16 x i8> %i.oa, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ch, %bb.ce
  %.pn.i6.i.i.i = phi i64 [ %i.nx, %bb.ce ], [ %i.ov, %bb.ch ]
  %.sroa.13.0.i.i.i.i = phi i64 [ 0, %bb.ce ], [ %i.ou, %bb.ch ]
  %.sroa.6.0.i.i.i.i = and i64 %.pn.i6.i.i.i, %i.nj ; 4 uses
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  call void @llvm.prefetch.p0(ptr %i.oc, i32 0, i32 3, i32 1)
  %i.od = getelementptr inbounds nuw i8, ptr %i.nq, i64 %.sroa.6.0.i.i.i.i
  %i.oe = load <16 x i8>, ptr %i.od, align 1, !tbaa !62 ; 2 uses
  %i.of = icmp eq <16 x i8> %i.ob, %i.oe
  %i.og = bitcast <16 x i1> %i.of to i16          ; 2 uses
  %.not46.i.i.i.i = icmp eq i16 %i.og, 0
  br i1 %.not46.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.cf, %bb.cg
  %.sroa.017.047.i.i.i.i = phi i16 [ %i.or, %bb.cg ], [ %i.og, %bb.cf ] ; 3 uses
  %i.oh = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i.i, i1 true)
  %i.oi = zext nneg i16 %i.oh to i64
  %i.oj = add i64 %.sroa.6.0.i.i.i.i, %i.oi
  %i.ok = and i64 %i.oj, %i.nj
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %i.ok
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !47
  %i.on = zext i32 %i.om to i64
  %i.oo = icmp eq i64 %indvars.iv1080, %i.on
  br i1 %i.oo, label %.thread32.i.i.i.i, label %bb.cg, !prof !283

.thread32.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i
  %i.op = icmp ne ptr %i.nq, null
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit

bb.cg:                                            ; preds = %.lr.ph.i.i.i.i
  %i.oq = add i16 %.sroa.017.047.i.i.i.i, -1
  %i.or = and i16 %i.oq, %.sroa.017.047.i.i.i.i   ; 2 uses
  %.not.i.i.i.i618 = icmp eq i16 %i.or, 0
  br i1 %.not.i.i.i.i618, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.cg, %bb.cf
  %i.os = icmp eq <16 x i8> %i.oe, splat (i8 -128)
  %i.ot = bitcast <16 x i1> %i.os to i16
  %.not43.i.i.i.i = icmp eq i16 %i.ot, 0
  br i1 %.not43.i.i.i.i, label %bb.ch, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit, !prof !170

bb.ch:                                            ; preds = %._crit_edge.i.i.i.i
  %i.ou = add i64 %.sroa.13.0.i.i.i.i, 16         ; 2 uses
  %i.ov = add i64 %i.ou, %.sroa.6.0.i.i.i.i
  br label %bb.cf, !llvm.loop !16

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit: ; preds = %._crit_edge.i.i.i.i, %.thread32.i.i.i.i, %bb.cd, %bb.cc
  %.pn.i.i.i = phi i1 [ %i.np, %bb.cd ], [ false, %bb.cc ], [ %i.op, %.thread32.i.i.i.i ], [ false, %._crit_edge.i.i.i.i ]
  %or.cond = or i1 %i.kw, %.pn.i.i.i
  br i1 %or.cond, label %bb.cj, label %bb.cp

bb.ci:                                            ; preds = %bb.ca
  br i1 %i.kw, label %bb.cj, label %bb.cp

bb.cj:                                            ; preds = %bb.ci, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit, %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %52, i8 0, i64 224, i1 false)
  store i32 184, ptr %i.ke, align 8, !tbaa !47
  store i32 1, ptr %i.kf, align 4, !tbaa !47
  invoke fastcc void @_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16FinalizePlanningIPNS0_14DescriptorPool6TablesEEEvRT_(ptr noundef nonnull align 8 dereferenceable(224) %52, ptr noundef nonnull align 8 dereferenceable(8) %i.fg)
          to label %bb.ck unwind label %bb.cn

bb.ck:                                            ; preds = %bb.cj
  %i.ow = load ptr, ptr %0, align 8, !tbaa !462
  %.sroa.088.0.copyload = load i64, ptr %50, align 8, !tbaa !59
  %.sroa.289.0.copyload = load ptr, ptr %i.jm, align 8, !tbaa !255
  %i.ox = invoke noundef ptr @_ZNK6google8protobuf14DescriptorPool31NewPlaceholderFileWithMutexHeldESt17basic_string_viewIcSt11char_traitsIcEERNS0_8internal13FlatAllocatorE(ptr noundef nonnull align 8 dereferenceable(120) %i.ow, i64 %.sroa.088.0.copyload, ptr %.sroa.289.0.copyload, ptr noundef nonnull align 8 dereferenceable(224) %52)
          to label %bb.cl unwind label %bb.cn

bb.cl:                                            ; preds = %bb.ck
  br i1 %i.kw, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %bb.cl
  %i.oy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRSt17basic_string_viewIcS3_EEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %49, ptr noundef nonnull align 8 dereferenceable(16) %50)
          to label %bb.co unwind label %bb.cn     ; 0 uses

bb.cn:                                            ; preds = %bb.cm, %bb.ck, %bb.cj
  %i.oz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #40
  br label %bb.dh

bb.co:                                            ; preds = %bb.cm, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #40
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit

bb.cp:                                            ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit, %bb.ci
  %.sroa.086.0.copyload = load i64, ptr %50, align 8, !tbaa !59 ; 2 uses
  %.sroa.287.0.copyload = load ptr, ptr %i.jm, align 8, !tbaa !255 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  store i64 %.sroa.086.0.copyload, ptr %25, align 8
  store ptr %.sroa.287.0.copyload, ptr %i.kb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #40
  store ptr %0, ptr %26, align 8, !tbaa !612
  store ptr %25, ptr %i.kc, align 8, !tbaa !583
  store ptr @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder14AddImportErrorERKNS4_19FileDescriptorProtoESt17basic_string_viewIcSt11char_traitsIcEEE3$_0NSt7__cxx1112basic_stringIcSB_SaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE", ptr %i.kd, align 8, !tbaa !579
  store ptr %26, ptr %27, align 8, !tbaa !62
  invoke void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcS4_SaIcEEEvEEE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %.sroa.086.0.copyload, ptr %.sroa.287.0.copyload, ptr noundef nonnull align 8 dereferenceable(200) %1, i32 noundef 9, ptr noundef nonnull byval(%"class.absl::lts_20250512::FunctionRef.311") align 8 %27)
          to label %_ZN6google8protobuf17DescriptorBuilder14AddImportErrorERKNS0_19FileDescriptorProtoESt17basic_string_viewIcSt11char_traitsIcEE.exit unwind label %bb.dd

_ZN6google8protobuf17DescriptorBuilder14AddImportErrorERKNS0_19FileDescriptorProtoESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  br label %bb.df

bb.cq:                                            ; preds = %bb.by
  %i.pa = getelementptr inbounds nuw i8, ptr %.pre1106, i64 64
  %i.pb = load i8, ptr %i.pa, align 8, !tbaa !354, !range !71, !noundef !72
  %i.pc = trunc nuw i8 %i.pb to i1
  br i1 %i.pc, label %bb.cr, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit

bb.cr:                                            ; preds = %bb.cq
  %i.pd = load ptr, ptr %i.dt, align 8, !tbaa !260
  %i.pe = ptrtoint ptr %i.pd to i64
  %i.pf = and i64 %i.pe, -4
  %i.pg = inttoptr i64 %i.pf to ptr
  %i.ph = getelementptr inbounds nuw i8, ptr %.pre1106, i64 80
  %i.pi = invoke { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_bEEE4findIS9_EENSH_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.pg)
          to label %bb.cs unwind label %bb.dd

bb.cs:                                            ; preds = %bb.cr
  %i.pj = extractvalue { ptr, ptr } %i.pi, 0
  %.not830.a = icmp eq ptr %i.pj, null
  br i1 %.not830.a, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.pk = getelementptr inbounds nuw i8, ptr %.0, i64 52
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !475
  %i.pm = icmp eq i32 %i.pl, 0
  br i1 %i.pm, label %bb.cu, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit

bb.cu:                                            ; preds = %bb.ct
  %i.pn = load i64, ptr %i.ja, align 8, !tbaa !93, !noalias !1654 ; 5 uses
  %i.po = icmp ne i64 %i.pn, 0
  call void @llvm.assume(i1 %i.po)
  %i.pp = icmp ult i64 %i.pn, 2
  br i1 %i.pp, label %bb.cv, label %bb.cz

bb.cv:                                            ; preds = %bb.cu
  %i.pq = load i64, ptr %i.jx, align 8, !tbaa !97, !noalias !1655
  %.not.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.pq, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  store i64 131072, ptr %i.jx, align 8, !tbaa !59, !noalias !1655
  br label %bb.dc

bb.cx:                                            ; preds = %bb.cv
  %i.pr = load ptr, ptr %i.jw, align 8, !tbaa !171, !noalias !1655 ; 2 uses
  %i.ps = icmp eq ptr %i.pr, %.0
  br i1 %i.ps, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.pt = ptrtoint ptr %i.pr to i64               ; 2 uses
  %i.pu = xor i64 %i.pt, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.pv = mul i64 %i.pu, -2543921745674291987
  %i.pw = call noundef i64 @llvm.bswap.i64(i64 %i.pv)
  %i.px = xor i64 %i.pw, %i.pt
  %i.py = mul i64 %i.px, 6679450291180483821
  %i.pz = lshr i64 %i.py, 56
  %i.qa = trunc nuw i64 %i.pz to i8
  %i.qb = and i8 %i.qa, 127
  %i.qc = ptrtoint ptr %.0 to i64                 ; 2 uses
  %i.qd = xor i64 %i.qc, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.qe = mul i64 %i.qd, -2543921745674291987
  %i.qf = call noundef i64 @llvm.bswap.i64(i64 %i.qe)
  %i.qg = xor i64 %i.qf, %i.qc
  %i.qh = mul i64 %i.qg, -2543921745674291987
  %i.qi = call noundef i64 @llvm.bswap.i64(i64 %i.qh)
  %i.qj = invoke noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %i.ja, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.qi, i8 noundef signext %i.qb)
          to label %.noexc633 unwind label %bb.dd

.noexc633:                                        ; preds = %bb.cy
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.jy, align 8, !tbaa !62, !noalias !1655
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.qj
  br label %bb.dc

bb.cz:                                            ; preds = %bb.cu
  %i.ql = load ptr, ptr %i.jw, align 8, !tbaa !62, !noalias !1656 ; 2 uses
  call void @llvm.prefetch.p0(ptr %i.ql, i32 0, i32 1, i32 1), !noalias !1656
  %i.qm = ptrtoint ptr %.0 to i64                 ; 2 uses
  %i.qn = xor i64 %i.qm, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.qo = mul i64 %i.qn, -2543921745674291987
  %i.qp = call noundef i64 @llvm.bswap.i64(i64 %i.qo)
  %i.qq = xor i64 %i.qp, %i.qm
  %i.qr = mul i64 %i.qq, -2543921745674291987
  %i.qs = call noundef i64 @llvm.bswap.i64(i64 %i.qr) ; 3 uses
  %i.qt = load i64, ptr %i.jx, align 8, !tbaa !97, !noalias !1657
  %i.qu = and i64 %i.qt, 65535
  %i.qv = lshr i64 %i.qs, 7
  %i.qw = xor i64 %i.qu, %i.qv
  %i.qx = trunc i64 %i.qs to i8
  %i.qy = and i8 %i.qx, 127
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.jy, align 8, !tbaa !62, !noalias !1656 ; 2 uses
  %i.qz = insertelement <16 x i8> poison, i8 %i.qy, i64 0
  %i.ra = shufflevector <16 x i8> %i.qz, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.da

bb.da:                                            ; preds = %bb.db, %bb.cz
  %.pn.i = phi i64 [ %i.qw, %bb.cz ], [ %i.ry, %bb.db ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.cz ], [ %i.rx, %bb.db ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.pn            ; 5 uses
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.7.0.i
  call void @llvm.prefetch.p0(ptr %i.rb, i32 0, i32 3, i32 1), !noalias !1656
  %i.rc = getelementptr inbounds nuw i8, ptr %i.ql, i64 %.sroa.7.0.i
  %i.rd = load <16 x i8>, ptr %i.rc, align 1, !tbaa !62, !noalias !1656 ; 2 uses
  %i.re = icmp eq <16 x i8> %i.ra, %i.rd
  %i.rf = bitcast <16 x i1> %i.re to i16          ; 2 uses
  %.not59.i = icmp eq i16 %i.rf, 0
  br i1 %.not59.i, label %.critedge18.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.da, %.critedge.i750
  %.sroa.033.060.i = phi i16 [ %i.ro, %.critedge.i750 ], [ %i.rf, %bb.da ] ; 3 uses
  %i.rg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.060.i, i1 true)
  %i.rh = zext nneg i16 %i.rg to i64
  %i.ri = add i64 %.sroa.7.0.i, %i.rh
  %i.rj = and i64 %i.ri, %i.pn
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.rj
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !171, !noalias !1656
  %i.rm = icmp eq ptr %i.rl, %.0
  br i1 %i.rm, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit, label %.critedge.i750, !prof !283

.critedge.i750:                                   ; preds = %.lr.ph.i
  %i.rn = add i16 %.sroa.033.060.i, -1
  %i.ro = and i16 %i.rn, %.sroa.033.060.i         ; 2 uses
  %.not.i751 = icmp eq i16 %i.ro, 0
  br i1 %.not.i751, label %.critedge18.i, label %.lr.ph.i

.critedge18.i:                                    ; preds = %.critedge.i750, %bb.da
  %i.rp = icmp eq <16 x i8> %i.rd, splat (i8 -128)
  %i.rq = bitcast <16 x i1> %i.rp to i16          ; 2 uses
  %.not51.i = icmp eq i16 %i.rq, 0
  br i1 %.not51.i, label %bb.db, label %.thread.i, !prof !170

.thread.i:                                        ; preds = %.critedge18.i
  %i.rr = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.rq, i1 true)
  %i.rs = zext nneg i16 %i.rr to i64
  %i.rt = add i64 %.sroa.7.0.i, %i.rs
  %i.ru = and i64 %i.rt, %i.pn
  %i.rv = invoke noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %i.ja, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.qs, i64 %i.ru, i64 %.sroa.15.0.i)
          to label %.noexc754 unwind label %bb.dd

.noexc754:                                        ; preds = %.thread.i
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.jy, align 8, !tbaa !62, !noalias !1656
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i, i64 %i.rv
  br label %bb.dc

bb.db:                                            ; preds = %.critedge18.i
  %i.rx = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.ry = add i64 %i.rx, %.sroa.7.0.i
  br label %bb.da

bb.dc:                                            ; preds = %.noexc633, %bb.cw, %.noexc754
  %.sroa.5.0.ph = phi ptr [ %i.rw, %.noexc754 ], [ %i.jw, %bb.cw ], [ %i.qk, %.noexc633 ]
  store ptr %.0, ptr %.sroa.5.0.ph, align 8, !tbaa !171
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit

bb.dd:                                            ; preds = %bb.cr, %bb.bu, %bb.bx, %bb.cp, %bb.bs, %.thread.i, %bb.cy
  %i.rz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit: ; preds = %.lr.ph.i, %bb.cs, %bb.cq, %bb.cx, %bb.dc, %bb.ct, %.thread.a, %bb.co
  %.2 = phi ptr [ null, %.thread.a ], [ %i.ox, %bb.co ], [ %.0, %bb.cx ], [ %.0, %bb.ct ], [ %.0, %bb.dc ], [ %.0, %bb.cs ], [ %.0, %bb.cq ], [ %.0, %.lr.ph.i ] ; 3 uses
  br i1 %i.kw, label %bb.de, label %bb.df

bb.de:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit
  %i.sa = load i32, ptr %i.gp, align 8, !tbaa !339 ; 2 uses
  %i.sb = trunc nuw nsw i64 %indvars.iv1080 to i32
  %i.sc = sub nsw i32 %i.sb, %i.sa
  %i.sd = sext i32 %i.sc to i64
  %i.se = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0797.0, i64 %i.sd
  store ptr %.2, ptr %i.se, align 8, !tbaa !171
  br label %bb.dg

bb.df:                                            ; preds = %_ZN6google8protobuf17DescriptorBuilder14AddImportErrorERKNS0_19FileDescriptorProtoESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit
  %.3 = phi ptr [ %.2, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIS8_Li0EEESt4pairINSF_8iteratorEbERKT_.exit ], [ null, %_ZN6google8protobuf17DescriptorBuilder14AddImportErrorERKNS0_19FileDescriptorProtoESt17basic_string_viewIcSt11char_traitsIcEE.exit ] ; 2 uses
  %i.sf = load ptr, ptr %i.hf, align 8, !tbaa !478
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %indvars.iv1080
  store ptr %.3, ptr %i.sg, align 8, !tbaa !171
  %.pre1107 = load i32, ptr %i.gp, align 8, !tbaa !339
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %i.sh = phi i32 [ %i.sa, %bb.de ], [ %.pre1107, %bb.df ] ; 4 uses
  %.4812 = phi ptr [ %.2, %bb.de ], [ %.3, %bb.df ]
  %i.si = load ptr, ptr %0, align 8, !tbaa !462
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 65
  %i.sk = load i8, ptr %i.sj, align 1, !tbaa !377, !range !71, !noundef !72
  %i.sl = trunc nuw i8 %i.sk to i1
  %i.sm = icmp eq ptr %.4812, null
  %or.cond5.not = and i1 %i.sm, %i.sl
  %spec.select = select i1 %or.cond5.not, i1 true, i1 %.0288948 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #40
  %indvars.iv.next1081 = add nuw nsw i64 %indvars.iv1080, 1 ; 2 uses
  %i.sn = load i32, ptr %i.hg, align 8, !tbaa !339
  %i.so = add nsw i32 %i.sn, %i.sh
  %i.sp = sext i32 %i.so to i64
  %.not321 = icmp slt i64 %indvars.iv.next1081, %i.sp
  br i1 %.not321, label %bb.bi, label %._crit_edge951, !llvm.loop !1580

bb.dh:                                            ; preds = %bb.cn, %bb.dd, %bb.bt
  %.pn315.pn = phi { ptr, i32 } [ %i.mq, %bb.bt ], [ %i.oz, %bb.cn ], [ %i.rz, %bb.dd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #40
  br label %.loopexit.split-lp

._crit_edge951:                                   ; preds = %bb.dg
  br i1 %spec.select, label %.preheader395.preheader.preheader, label %.loopexit900

.preheader395.preheader.preheader:                ; preds = %._crit_edge951
  %i.sq = sext i32 %i.sh to i64
  %i.sr = icmp sgt i32 %i.sh, 0
  br i1 %i.sr, label %.lr.ph956, label %.preheader395.preheader._crit_edge

.lr.ph956:                                        ; preds = %.preheader395.preheader.preheader
  %i.ss = load ptr, ptr %i.hf, align 8, !tbaa !478
  br label %bb.di

.preheader395.preheader._crit_edge.loopexit:      ; preds = %.preheader395.preheader
  %i.st = add nsw i32 %.1297, 5
  br label %.preheader395.preheader._crit_edge

.preheader395.preheader._crit_edge:               ; preds = %.preheader395.preheader._crit_edge.loopexit, %.preheader395.preheader.preheader
  %.0296.lcssa = phi i32 [ 4, %.preheader395.preheader.preheader ], [ %i.st, %.preheader395.preheader._crit_edge.loopexit ]
  %i.su = load ptr, ptr %i.fg, align 8, !tbaa !463
  %i.sv = invoke noundef ptr @_ZN6google8protobuf14DescriptorPool6Tables13AllocateBytesEi(ptr noundef nonnull align 8 dereferenceable(416) %i.su, i32 noundef %.0296.lcssa)
          to label %bb.dk unwind label %.loopexit.split-lp831.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit3396 ; 3 uses

bb.di:                                            ; preds = %.lr.ph956, %.preheader395.preheader
  %.0296955 = phi i32 [ 0, %.lr.ph956 ], [ %i.tm, %.preheader395.preheader ] ; 2 uses
  %indvars.iv484954 = phi i64 [ 0, %.lr.ph956 ], [ %indvars.iv.next485, %.preheader395.preheader ] ; 3 uses
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %i.ss, i64 %indvars.iv484954
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !171
  %i.sy = icmp eq ptr %i.sx, null
  br i1 %i.sy, label %bb.dj, label %.preheader395.preheader

bb.dj:                                            ; preds = %bb.di
  %i.sz = load ptr, ptr %i.jr, align 8, !tbaa !340
  %i.ta = ptrtoint ptr %i.sz to i64               ; 2 uses
  %i.tb = and i64 %i.ta, 1
  %i.tc = icmp eq i64 %i.tb, 0
  %i.td = add i64 %i.ta, -1
  %i.te = inttoptr i64 %i.td to ptr
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 8
  %i.tg = getelementptr inbounds nuw [8 x i8], ptr %i.tf, i64 %indvars.iv484954
  %.0.i.i.i.i.i635 = select i1 %i.tc, ptr %i.jr, ptr %i.tg
  %i.th = load ptr, ptr %.0.i.i.i.i.i635, align 8, !tbaa !284
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 8
  %i.tj = load i64, ptr %i.ti, align 8, !tbaa !63
  %i.tk = trunc i64 %i.tj to i32
  %i.tl = add nsw i32 %.0296955, %i.tk
  br label %.preheader395.preheader

.preheader395.preheader:                          ; preds = %bb.dj, %bb.di
  %.1297 = phi i32 [ %i.tl, %bb.dj ], [ %.0296955, %bb.di ] ; 2 uses
  %i.tm = add nsw i32 %.1297, 1
  %indvars.iv.next485 = add nuw nsw i64 %indvars.iv484954, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next485, %i.sq
  br i1 %exitcond.not, label %.preheader395.preheader._crit_edge.loopexit, label %bb.di, !llvm.loop !1581

bb.dk:                                            ; preds = %.preheader395.preheader._crit_edge
  store i32 0, ptr %i.sv, align 4, !tbaa !123
  store ptr %i.sv, ptr %i.iz, align 8, !tbaa !476
  %i.tn = load i32, ptr %i.gp, align 8, !tbaa !339
  %i.to = icmp sgt i32 %i.tn, 0
  br i1 %i.to, label %.lr.ph961, label %.loopexit900

.lr.ph961:                                        ; preds = %bb.dk
  %i.tp = getelementptr inbounds nuw i8, ptr %i.sv, i64 4
  br label %bb.dl

bb.dl:                                            ; preds = %.lr.ph961, %bb.dn
  %.0307959 = phi ptr [ %i.tp, %.lr.ph961 ], [ %i.uu, %bb.dn ] ; 3 uses
  %indvars.iv487958 = phi i64 [ 0, %.lr.ph961 ], [ %indvars.iv.next488, %bb.dn ] ; 4 uses
  %i.tq = load ptr, ptr %i.c, align 8, !tbaa !171
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 80
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !478
  %i.tt = getelementptr inbounds nuw [8 x i8], ptr %i.ts, i64 %indvars.iv487958
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !171
  %i.tv = icmp eq ptr %i.tu, null
  br i1 %i.tv, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.tw = load ptr, ptr %i.jr, align 8, !tbaa !340
  %i.tx = ptrtoint ptr %i.tw to i64               ; 2 uses
  %i.ty = and i64 %i.tx, 1
  %i.tz = icmp eq i64 %i.ty, 0
  %i.ua = add i64 %i.tx, -1
  %i.ub = inttoptr i64 %i.ua to ptr
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  %i.ud = getelementptr inbounds nuw [8 x i8], ptr %i.uc, i64 %indvars.iv487958
  %.0.i.i.i.i.i636 = select i1 %i.tz, ptr %i.jr, ptr %i.ud
  %i.ue = load ptr, ptr %.0.i.i.i.i.i636, align 8, !tbaa !284 ; 2 uses
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !61
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ue, i64 8
  %i.uh = load i64, ptr %i.ug, align 8, !tbaa !63
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0307959, ptr align 1 %i.uf, i64 %i.uh, i1 false)
  %i.ui = load ptr, ptr %i.jr, align 8, !tbaa !340
  %i.uj = ptrtoint ptr %i.ui to i64               ; 2 uses
  %i.uk = and i64 %i.uj, 1
  %i.ul = icmp eq i64 %i.uk, 0
  %i.um = add i64 %i.uj, -1
  %i.un = inttoptr i64 %i.um to ptr
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 8
  %i.up = getelementptr inbounds nuw [8 x i8], ptr %i.uo, i64 %indvars.iv487958
  %.0.i.i.i.i.i638 = select i1 %i.ul, ptr %i.jr, ptr %i.up
  %i.uq = load ptr, ptr %.0.i.i.i.i.i638, align 8, !tbaa !284
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 8
  %i.us = load i64, ptr %i.ur, align 8, !tbaa !63
  %i.ut = getelementptr inbounds nuw i8, ptr %.0307959, i64 %i.us
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %.1308 = phi ptr [ %i.ut, %bb.dm ], [ %.0307959, %bb.dl ] ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %.1308, i64 1
  store i8 0, ptr %.1308, align 1, !tbaa !62
  %indvars.iv.next488 = add nuw nsw i64 %indvars.iv487958, 1 ; 2 uses
  %i.uv = load i32, ptr %i.gp, align 8, !tbaa !339
  %i.uw = sext i32 %i.uv to i64
  %i.ux = icmp slt i64 %indvars.iv.next488, %i.uw
  br i1 %i.ux, label %bb.dl, label %.loopexit900, !llvm.loop !1582

.loopexit900:                                     ; preds = %bb.dn, %._crit_edge945, %bb.dk, %._crit_edge951
  %i.uy = getelementptr inbounds nuw i8, ptr %1, i64 108 ; 3 uses
  %i.uz = load i32, ptr %i.uy, align 4, !tbaa !344
  %i.va = invoke fastcc noundef ptr @_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE13AllocateArrayIiEEPT_i(ptr noundef nonnull align 8 dereferenceable(224) %2, i32 noundef %i.uz)
          to label %bb.do unwind label %.loopexit.split-lp831.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit3396

bb.do:                                            ; preds = %.loopexit900
  %i.vb = load ptr, ptr %i.c, align 8, !tbaa !171 ; 6 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 88 ; 2 uses
  store ptr %i.va, ptr %i.vc, align 8, !tbaa !480
  %i.vd = load i32, ptr %i.uy, align 4, !tbaa !344
  %i.ve = icmp sgt i32 %i.vd, 0
  br i1 %i.ve, label %.lr.ph965, label %._crit_edge966

.lr.ph965:                                        ; preds = %bb.do
  %i.vf = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vb, i64 40
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vb, i64 80
  br label %bb.dr

._crit_edge966:                                   ; preds = %bb.ec, %bb.do
  %.0304.lcssa = phi i32 [ 0, %bb.do ], [ %.1305, %bb.ec ]
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vb, i64 52
  store i32 %.0304.lcssa, ptr %i.vj, align 4, !tbaa !475
  %i.vk = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.vl = load i64, ptr %i.vk, align 8, !tbaa !93 ; 3 uses
  %i.vm = icmp ne i64 %i.vl, 0
  call void @llvm.assume(i1 %i.vm)
  %i.vn = icmp ult i64 %i.vl, 2
  br i1 %i.vn, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %._crit_edge966
  %i.vo = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 0, ptr %i.vo, align 8, !tbaa !59
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5clearEv.exit640

bb.dq:                                            ; preds = %._crit_edge966
  %i.vp = icmp ult i64 %i.vl, 128
  invoke void @_ZN4absl12lts_2025051218container_internal17ClearBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPvbb(ptr noundef nonnull align 8 dereferenceable(32) %i.vk, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE18GetPolicyFunctionsEvE5value, ptr noundef nonnull align 8 dereferenceable(32) %i.vk, i1 noundef zeroext %i.vp, i1 noundef zeroext true)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5clearEv.exit640 unwind label %.loopexit.split-lp831.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit3396

bb.dr:                                            ; preds = %.lr.ph965, %bb.ec
  %indvars.iv1082 = phi i64 [ 0, %.lr.ph965 ], [ %indvars.iv.next1083, %bb.ec ] ; 2 uses
  %.0304962 = phi i32 [ 0, %.lr.ph965 ], [ %.1305, %bb.ec ] ; 3 uses
  %i.vq = load i32, ptr %i.vf, align 8, !tbaa !342
  %i.vr = and i32 %i.vq, 1
  %i.vs = icmp eq i32 %i.vr, 0
  %i.vt = load ptr, ptr %i.vg, align 8
  %.0.v.i.i.i.i.i.i641 = select i1 %i.vs, ptr %i.vf, ptr %i.vt
  %.0.i.i.i.i.i.i642 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i.i641, i64 8
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i.i642, i64 %indvars.iv1082
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !47 ; 4 uses
  %i.vw = icmp sgt i32 %i.vv, -1
  br i1 %i.vw, label %bb.ds, label %bb.eb

bb.ds:                                            ; preds = %bb.dr
  %i.vx = load i32, ptr %i.gp, align 8, !tbaa !339
  %i.vy = icmp slt i32 %i.vv, %i.vx
  br i1 %i.vy, label %bb.dt, label %bb.eb

bb.dt:                                            ; preds = %bb.ds
  %i.vz = load ptr, ptr %i.vc, align 8, !tbaa !480
  %i.wa = add nsw i32 %.0304962, 1                ; 2 uses
  %i.wb = sext i32 %.0304962 to i64
  %i.wc = getelementptr inbounds [4 x i8], ptr %i.vz, i64 %i.wb
  store i32 %i.vv, ptr %i.wc, align 4, !tbaa !47
  %i.wd = load ptr, ptr %0, align 8, !tbaa !462
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 65
end_hunk_0
