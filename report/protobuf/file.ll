inline.NumInlined: 5513
inline.NumDeleted: 2439
begin_hunk_0_@_ZNK6google8protobuf8compiler10objectivec13FileGenerator19DetermineNeededDepsEPN4absl12lts_2025051213flat_hash_setIPKNS0_14FileDescriptorENS5_18container_internal6HashEqIS9_vE4HashENSC_2EqESaIS9_EEENS3_18PublicDepsHandlingE:bb.a
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !12, !noalias !594 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.an, i32 0, i32 1, i32 1), !noalias !594
  %i.ao = ptrtoint ptr %i.o to i64                ; 2 uses
  %i.ap = xor i64 %i.ao, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.aq = mul i64 %i.ap, -2543921745674291987
  %i.ar = tail call noundef i64 @llvm.bswap.i64(i64 %i.aq)
  %i.as = xor i64 %i.ar, %i.ao
  %i.at = mul i64 %i.as, -2543921745674291987
  %i.au = tail call noundef i64 @llvm.bswap.i64(i64 %i.at) ; 3 uses
  %i.av = load i64, ptr %i.h, align 8, !tbaa !11, !noalias !597
  %i.aw = and i64 %i.av, 65535
  %i.ax = lshr i64 %i.au, 7
  %i.ay = xor i64 %i.aw, %i.ax
  %i.az = trunc i64 %i.au to i8
  %i.ba = and i8 %i.az, 127
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !12, !noalias !594 ; 2 uses
  %i.bb = insertelement <16 x i8> poison, i8 %i.ba, i64 0
  %i.bc = shufflevector <16 x i8> %i.bb, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.pn.i = phi i64 [ %i.ay, %bb.g ], [ %i.cc, %bb.i ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.g ], [ %i.cb, %bb.i ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.p             ; 5 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.bd, i32 0, i32 3, i32 1), !noalias !594
  %i.be = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.7.0.i
  %i.bf = load <16 x i8>, ptr %i.be, align 1, !tbaa !12, !noalias !594 ; 2 uses
  %i.bg = icmp eq <16 x i8> %i.bc, %i.bf
  %i.bh = bitcast <16 x i1> %i.bg to i16          ; 2 uses
  %.not59.i = icmp eq i16 %i.bh, 0
  br i1 %.not59.i, label %.critedge18.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.critedge.i
  %.sroa.033.060.i = phi i16 [ %i.bq, %.critedge.i ], [ %i.bh, %bb.h ] ; 3 uses
  %i.bi = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.060.i, i1 true)
  %i.bj = zext nneg i16 %i.bi to i64
  %i.bk = add i64 %.sroa.7.0.i, %i.bj
  %i.bl = and i64 %i.bk, %i.p
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !13, !noalias !594
  %i.bo = icmp eq ptr %i.bn, %i.o
  br i1 %i.bo, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertEOS8_.exit, label %.critedge.i, !prof !20

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.bp = add i16 %.sroa.033.060.i, -1
  %i.bq = and i16 %i.bp, %.sroa.033.060.i         ; 2 uses
  %.not.i = icmp eq i16 %i.bq, 0
  br i1 %.not.i, label %.critedge18.i, label %.lr.ph.i

.critedge18.i:                                    ; preds = %.critedge.i, %bb.h
  %i.br = icmp eq <16 x i8> %i.bf, splat (i8 -128)
  %i.bs = bitcast <16 x i1> %i.br to i16          ; 2 uses
  %.not51.i = icmp eq i16 %i.bs, 0
  br i1 %.not51.i, label %bb.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread32, !prof !21

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread32: ; preds = %.critedge18.i
  %i.bt = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bs, i1 true)
  %i.bu = zext nneg i16 %i.bt to i64
  %i.bv = add i64 %.sroa.7.0.i, %i.bu
  %i.bw = and i64 %i.bv, %i.p
  %i.bx = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.au, i64 %i.bw, i64 %.sroa.15.0.i), !noalias !594 ; 2 uses
  %i.by = load ptr, ptr %i.g, align 8, !tbaa !12, !noalias !594
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bx
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.i, align 8, !tbaa !12, !noalias !594
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i, i64 %i.bx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bz) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread

bb.i:                                             ; preds = %.critedge18.i
  %i.cb = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.cc = add i64 %i.cb, %.sroa.7.0.i
  br label %bb.h

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread: ; preds = %bb.d, %bb.f, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread32
  %.sroa.4.029 = phi ptr [ %i.ca, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread32 ], [ %i.g, %bb.d ], [ %i.am, %bb.f ]
  store ptr %i.o, ptr %.sroa.4.029, align 8, !tbaa !13
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertEOS8_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertEOS8_.exit: ; preds = %.lr.ph.i, %bb.e, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE22find_or_prepare_insertIS8_EESt4pairINSF_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cd = load ptr, ptr %i.b, align 8, !tbaa !210 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 52
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !374
  %i.cg = sext i32 %i.cf to i64
  %i.ch = icmp slt i64 %indvars.iv.next, %i.cg
  br i1 %i.ch, label %bb.b, label %.loopexit38, !llvm.loop !600

.loopexit38:                                      ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertEOS8_.exit, %.preheader37, %bb.a
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !362 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !362 ; 2 uses
  %.not44 = icmp eq ptr %i.cj, %i.cl
  br i1 %.not44, label %._crit_edge, label %.lr.ph46

._crit_edge:                                      ; preds = %.lr.ph46, %.loopexit38
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !363 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !363 ; 2 uses
  %.not3647 = icmp eq ptr %i.cn, %i.cp
  br i1 %.not3647, label %._crit_edge51, label %.lr.ph50

.lr.ph46:                                         ; preds = %.loopexit38, %.lr.ph46
  %.sroa.022.045 = phi ptr [ %i.cr, %.lr.ph46 ], [ %i.cj, %.loopexit38 ] ; 2 uses
  %i.cq = load ptr, ptr %.sroa.022.045, align 8, !tbaa !280
  tail call void @_ZNK6google8protobuf8compiler10objectivec16MessageGenerator20DetermineNeededFilesEPN4absl12lts_2025051213flat_hash_setIPKNS0_14FileDescriptorENS5_18container_internal6HashEqIS9_vE4HashENSC_2EqESaIS9_EEE(ptr noundef nonnull align 8 dereferenceable(196) %i.cq, ptr noundef %1)
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.022.045, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cr, %i.cl
  br i1 %.not, label %._crit_edge, label %.lr.ph46

._crit_edge51:                                    ; preds = %.lr.ph50, %._crit_edge
  %i.cs = icmp eq i32 %2, 2
  br i1 %i.cs, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %._crit_edge51
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !210
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 52
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !374
  %i.cx = icmp sgt i32 %i.cw, 0
  br i1 %i.cx, label %.lr.ph53, label %.loopexit

.lr.ph50:                                         ; preds = %._crit_edge, %.lr.ph50
  %.sroa.018.048 = phi ptr [ %i.cz, %.lr.ph50 ], [ %i.cn, %._crit_edge ] ; 2 uses
  %i.cy = load ptr, ptr %.sroa.018.048, align 8, !tbaa !252
  tail call void @_ZNK6google8protobuf8compiler10objectivec18ExtensionGenerator20DetermineNeededFilesEPN4absl12lts_2025051213flat_hash_setIPKNS0_14FileDescriptorENS5_18container_internal6HashEqIS9_vE4HashENSC_2EqESaIS9_EEE(ptr noundef nonnull align 8 dereferenceable(112) %i.cy, ptr noundef %1)
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.018.048, i64 8 ; 2 uses
  %.not36 = icmp eq ptr %i.cz, %i.cp
  br i1 %.not36, label %._crit_edge51, label %.lr.ph50

.lr.ph53:                                         ; preds = %.preheader, %.lr.ph53
  %.052 = phi i32 [ %i.db, %.lr.ph53 ], [ 0, %.preheader ]
  %i.da = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseIS8_EEmRKT_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.ct) ; 0 uses
  %i.db = add nuw nsw i32 %.052, 1                ; 2 uses
  %i.dc = load ptr, ptr %i.ct, align 8, !tbaa !210
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 52
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !374
  %i.df = icmp slt i32 %i.db, %i.de
  br i1 %i.df, label %.lr.ph53, label %.loopexit, !llvm.loop !427

.loopexit:                                        ; preds = %.lr.ph53, %.preheader, %._crit_edge51
  ret void
}

declare noundef zeroext i1 @_ZN6google8protobuf8compiler10objectivec22HasWKTWithObjCCategoryEPKNS0_14FileDescriptorE(ptr noundef) local_unnamed_addr #2

declare void @_ZN6google8protobuf8compiler10objectivec12ImportWriter7AddFileEPKNS0_14FileDescriptorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !7      ; 3 uses
  %i.b = icmp ne i64 %i.a, 0
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp ult i64 %i.a, 2
  br i1 %i.c, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE15destructor_implEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !11
  %i.h = and i64 %i.g, 65536
  %i.i = icmp ne i64 %i.h, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.a, ptr noundef %i.e, i64 noundef 16, i64 noundef 8, i1 noundef zeroext %i.i)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE15destructor_implEv.exit unwind label %bb.c

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE15destructor_implEv.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseIS8_EEmRKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !7      ; 4 uses
  %i.b = icmp ne i64 %i.a, 0
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp ult i64 %i.a, 2
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11
  %.not.i.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseENSF_8iteratorE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.h = load ptr, ptr %1, align 8, !tbaa !13
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit.thread9, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseENSF_8iteratorE.exit

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12   ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.k, i32 0, i32 1, i32 1)
  %i.l = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.n = xor i64 %i.m, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.o = mul i64 %i.n, -2543921745674291987
  %i.p = tail call noundef i64 @llvm.bswap.i64(i64 %i.o)
  %i.q = xor i64 %i.p, %i.m
  %i.r = mul i64 %i.q, -2543921745674291987
  %i.s = tail call noundef i64 @llvm.bswap.i64(i64 %i.r) ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !11, !noalias !601
  %i.v = and i64 %i.u, 65535
  %i.w = lshr i64 %i.s, 7
  %i.x = xor i64 %i.w, %i.v
  %i.y = trunc i64 %i.s to i8
  %i.z = and i8 %i.y, 127
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !12 ; 2 uses
  %i.ab = insertelement <16 x i8> poison, i8 %i.z, i64 0
  %i.ac = shufflevector <16 x i8> %i.ab, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i6.i = phi i64 [ %i.x, %bb.d ], [ %i.au, %bb.g ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.d ], [ %i.at, %bb.g ]
  %.sroa.6.0.i.i = and i64 %.pn.i6.i, %i.a        ; 4 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.ad, i32 0, i32 3, i32 1)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.6.0.i.i
  %i.af = load <16 x i8>, ptr %i.ae, align 1, !tbaa !12 ; 2 uses
  %i.ag = icmp eq <16 x i8> %i.ac, %i.af
  %i.ah = bitcast <16 x i1> %i.ag to i16          ; 2 uses
  %.not46.i.i = icmp eq i16 %i.ah, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i = phi i16 [ %i.aq, %bb.f ], [ %i.ah, %bb.e ] ; 3 uses
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i, i1 true)
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = add i64 %.sroa.6.0.i.i, %i.aj
  %i.al = and i64 %i.ak, %i.a                     ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !13
  %i.ao = icmp eq ptr %i.an, %i.l
  br i1 %i.ao, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit, label %bb.f, !prof !20

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ap = add i16 %.sroa.017.047.i.i, -1
  %i.aq = and i16 %i.ap, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.ar = icmp eq <16 x i8> %i.af, splat (i8 -128)
  %i.as = bitcast <16 x i1> %i.ar to i16
  %.not43.i.i = icmp eq i16 %i.as, 0
  br i1 %.not43.i.i, label %bb.g, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseENSF_8iteratorE.exit, !prof !21

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.at = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.au = add i64 %i.at, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !129

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit.thread9: ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.av, align 8, !tbaa !89
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseENSF_8iteratorE.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit: ; preds = %.lr.ph.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.al
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !12
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  tail call void @_ZN4absl12lts_2025051218container_internal13EraseMetaOnlyERNS1_12CommonFieldsEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bb, i64 noundef 8)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseENSF_8iteratorE.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE5eraseENSF_8iteratorE.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit.thread9
  %.0 = phi i64 [ 1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit ], [ 1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE4findIS8_EENSF_8iteratorERKT_.exit.thread9 ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %._crit_edge.i.i ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf2io7Printer3SubC2IRA13_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(13) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !216
  %i.c = load ptr, ptr %1, align 8, !tbaa !182    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !178  ; 2 uses
  %i.h = icmp ult i64 %i.g, 16
  tail call void @llvm.assume(i1 %i.h)
  %i.i = add nuw nsw i64 %i.g, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.c, ptr %0, align 8, !tbaa !182
  %i.j = load i64, ptr %i.d, align 8, !tbaa !12
  store i64 %i.j, ptr %i.b, align 8, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !178
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !178
  store ptr %i.d, ptr %1, align 8, !tbaa !182
  store i64 0, ptr %i.k, align 8, !tbaa !178
  store i8 0, ptr %i.d, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.o, ptr %3, align 8, !tbaa !216
  %i.p = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(13) %2) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.p, ptr %i.a, align 8, !tbaa !89
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.r = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.r, ptr %3, align 8, !tbaa !182
  %i.s = load i64, ptr %i.a, align 8, !tbaa !89
  store i64 %i.s, ptr %i.o, align 8, !tbaa !12
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.t = phi ptr [ %i.r, %.noexc ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 2 uses
  switch i64 %i.p, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.u = load i8, ptr %2, align 1, !tbaa !12
  store i8 %i.u, ptr %i.t, align 1, !tbaa !12
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr nonnull align 1 dereferenceable(13) %2, i64 %i.p, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.v = load i64, ptr %i.a, align 8, !tbaa !89   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %i.v, ptr %i.w, align 8, !tbaa !178
  %i.x = load ptr, ptr %3, align 8, !tbaa !182
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !604)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.z, ptr %i.n, align 8, !tbaa !216, !alias.scope !604
  %i.aa = load ptr, ptr %3, align 8, !tbaa !182, !noalias !604 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.o
  br i1 %i.ab, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !178, !noalias !604 ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 16
  call void @llvm.assume(i1 %i.ad)
  %i.ae = add nuw nsw i64 %i.ac, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(1) %i.o, i64 %i.ae, i1 false)
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  store ptr %i.aa, ptr %i.n, align 8, !tbaa !182, !alias.scope !604
  %i.af = load i64, ptr %i.o, align 8, !tbaa !12, !noalias !604
  store i64 %i.af, ptr %i.z, align 8, !tbaa !12, !alias.scope !604
  %.pre.i.i = load i64, ptr %i.w, align 8, !tbaa !178, !noalias !604
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f
  %i.ag = phi i64 [ %i.ac, %bb.f ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !178, !alias.scope !604
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.ai, align 8, !tbaa !517, !alias.scope !604
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !216
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.al, align 8, !tbaa !178
  store i8 0, ptr %i.ak, align 8, !tbaa !12
end_hunk_0
begin_hunk_1_@"_ZNSt17_Function_handlerIFvvEZNK6google8protobuf8compiler10objectivec13FileGenerator14GenerateHeaderEPNS2_2io7PrinterESt17basic_string_viewIcSt11char_traitsIcEEE3$_0E9_M_invokeERKSt9_Any_data":bb.a
  invoke void @_ZN6google8protobuf2io7Printer4EmitEN4absl12lts_202505124SpanIKNS2_3SubEEESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE(ptr noundef nonnull align 16 dereferenceable(296) %i.jx, ptr null, i64 0, i64 46, ptr nonnull @.str.79)
          to label %_ZN6google8protobuf2io7Printer4EmitESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE.exit144.preheader.i.i.i unwind label %bb.j

_ZN6google8protobuf2io7Printer4EmitESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE.exit144.preheader.i.i.i: ; preds = %bb.ak
  %i.jy = load i64, ptr %i.ju, align 8, !tbaa !245
  %.not221.i.i.i = icmp eq i64 %i.jy, 0
  br i1 %.not221.i.i.i, label %_ZN6google8protobuf2io7Printer4EmitESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE.exit144._crit_edge.i.i.i, label %.lr.ph215.i.i.i

.lr.ph215.i.i.i:                                  ; preds = %_ZN6google8protobuf2io7Printer4EmitESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE.exit144.preheader.i.i.i
  %i.jz = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  br label %bb.al

_ZN6google8protobuf2io7Printer4EmitESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE.exit144._crit_edge.i.i.i: ; preds = %_ZN6google8protobuf2io7Printer4EmitESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE.exit144.i.i.i, %_ZN6google8protobuf2io7Printer4EmitESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE.exit144.preheader.i.i.i
  %i.ka = load ptr, ptr %i.m, align 8, !tbaa !899, !nonnull !16, !align !372
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !337
  invoke void @_ZN6google8protobuf2io7Printer4EmitEN4absl12lts_202505124SpanIKNS2_3SubEEESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE(ptr noundef nonnull align 16 dereferenceable(296) %i.kb, ptr null, i64 0, i64 6, ptr nonnull @.str.80)
          to label %_ZN6google8protobuf2io7Printer4EmitESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE.exit146.i.i.i unwind label %bb.j

bb.al:                                            ; preds = %_ZN6google8protobuf2io7Printer4EmitESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE.exit144.i.i.i, %.lr.ph215.i.i.i
  %.037214.i.i.i = phi i64 [ 0, %.lr.ph215.i.i.i ], [ %i.kh, %_ZN6google8protobuf2io7Printer4EmitESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE.exit144.i.i.i ] ; 2 uses
  %i.kc = load ptr, ptr %i.jz, align 8, !tbaa !244
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %.037214.i.i.i
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !252
  %i.kf = load ptr, ptr %i.m, align 8, !tbaa !899, !nonnull !16, !align !372
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !337
  invoke void @_ZNK6google8protobuf8compiler10objectivec18ExtensionGenerator21GenerateMethodsHeaderEPNS0_2io7PrinterE(ptr noundef nonnull align 8 dereferenceable(112) %i.ke, ptr noundef %i.kg)
          to label %_ZN6google8protobuf2io7Printer4EmitESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE.exit144.i.i.i unwind label %bb.am

_ZN6google8protobuf2io7Printer4EmitESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE.exit144.i.i.i: ; preds = %bb.al
  %i.kh = add nuw i64 %.037214.i.i.i, 1           ; 2 uses
  %i.ki = load i64, ptr %i.ju, align 8, !tbaa !245
  %i.kj = icmp ult i64 %i.kh, %i.ki
  br i1 %i.kj, label %bb.al, label %_ZN6google8protobuf2io7Printer4EmitESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE.exit144._crit_edge.i.i.i, !llvm.loop !921

bb.am:                                            ; preds = %bb.al
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

_ZN6google8protobuf2io7Printer4EmitESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE.exit146.i.i.i: ; preds = %_ZN6google8protobuf2io7Printer4EmitESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE.exit144._crit_edge.i.i.i, %_ZN6google8protobuf2io7Printer4EmitESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE.exit142.i.i.i, %.loopexit.i.i.i
  %i.kl = load ptr, ptr %i.g, align 8, !tbaa !362 ; 2 uses
  %i.km = load ptr, ptr %i.i, align 8, !tbaa !362 ; 2 uses
  %.not203216.i.i.i = icmp eq ptr %i.kl, %i.km
  br i1 %.not203216.i.i.i, label %._crit_edge219.i.i.i, label %.lr.ph218.i.i.i

._crit_edge219.i.i.i:                             ; preds = %bb.an, %_ZN6google8protobuf2io7Printer4EmitESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE.exit146.i.i.i
  %i.kn = load ptr, ptr %i.m, align 8, !tbaa !899, !nonnull !16, !align !372
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !337
  invoke void @_ZN6google8protobuf2io7Printer4EmitEN4absl12lts_202505124SpanIKNS2_3SubEEESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE(ptr noundef nonnull align 16 dereferenceable(296) %i.ko, ptr null, i64 0, i64 56, ptr nonnull @.str.81)
          to label %_ZN6google8protobuf2io7Printer4EmitESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE.exit148.i.i.i unwind label %bb.j

.lr.ph218.i.i.i:                                  ; preds = %_ZN6google8protobuf2io7Printer4EmitESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE.exit146.i.i.i, %bb.an
  %.sroa.0153.0217.i.i.i = phi ptr [ %i.ks, %bb.an ], [ %i.kl, %_ZN6google8protobuf2io7Printer4EmitESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE.exit146.i.i.i ] ; 2 uses
  %i.kp = load ptr, ptr %.sroa.0153.0217.i.i.i, align 8, !tbaa !280
  %i.kq = load ptr, ptr %i.m, align 8, !tbaa !899, !nonnull !16, !align !372
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !337
  invoke void @_ZNK6google8protobuf8compiler10objectivec16MessageGenerator21GenerateMessageHeaderEPNS0_2io7PrinterE(ptr noundef nonnull align 8 dereferenceable(196) %i.kp, ptr noundef %i.kr)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %.lr.ph218.i.i.i
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.0153.0217.i.i.i, i64 8 ; 2 uses
  %.not203.i.i.i = icmp eq ptr %i.ks, %i.km
  br i1 %.not203.i.i.i, label %._crit_edge219.i.i.i, label %.lr.ph218.i.i.i

bb.ao:                                            ; preds = %.lr.ph218.i.i.i
  %i.kt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

_ZN6google8protobuf2io7Printer4EmitESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE.exit148.i.i.i: ; preds = %._crit_edge219.i.i.i
  %i.ku = load i64, ptr %i.f, align 8, !tbaa !361
  %i.kv = icmp eq i64 %i.ku, 0
  br i1 %i.kv, label %"_ZSt10__invoke_rIvRZNK6google8protobuf8compiler10objectivec13FileGenerator14GenerateHeaderEPNS1_2io7PrinterESt17basic_string_viewIcSt11char_traitsIcEEE3$_0JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit", label %bb.ap

bb.ap:                                            ; preds = %_ZN6google8protobuf2io7Printer4EmitESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE.exit148.i.i.i
  %i.kw = load ptr, ptr %5, align 8, !tbaa !354
  invoke void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_ELi256ELb0EEEE16clear_and_deleteEPSE_PSC_(ptr noundef %i.kw, ptr noundef nonnull %i.e)
          to label %"_ZSt10__invoke_rIvRZNK6google8protobuf8compiler10objectivec13FileGenerator14GenerateHeaderEPNS1_2io7PrinterESt17basic_string_viewIcSt11char_traitsIcEEE3$_0JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit" unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.kx = landingpad { ptr, i32 }
          catch ptr null
  %i.ky = extractvalue { ptr, i32 } %i.kx, 0
  call void @__clang_call_terminate(ptr %i.ky) #30
  unreachable

bb.ar:                                            ; preds = %bb.ao, %bb.am, %bb.ai, %bb.ae, %.loopexit205.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i.i.i, %bb.j, %bb.e
  %.pn63.i.i.i = phi { ptr, i32 } [ %i.y, %bb.e ], [ %i.iw, %bb.ae ], [ %i.jm, %bb.ai ], [ %i.kk, %bb.am ], [ %i.kt, %bb.ao ], [ %i.bv, %bb.j ], [ %.pn55.pn.pn.pn.pn.i.i.i, %.loopexit205.i.i.i ], [ %.pn.pn.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i.i.i ]
  call void @_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_ESaISA_ELi256ELb0EEEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  resume { ptr, i32 } %.pn63.i.i.i

"_ZSt10__invoke_rIvRZNK6google8protobuf8compiler10objectivec13FileGenerator14GenerateHeaderEPNS1_2io7PrinterESt17basic_string_viewIcSt11char_traitsIcEEE3$_0JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit": ; preds = %_ZN6google8protobuf2io7Printer4EmitESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE.exit148.i.i.i, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvvEZNK6google8protobuf8compiler10objectivec13FileGenerator14GenerateHeaderEPNS2_2io7PrinterESt17basic_string_viewIcSt11char_traitsIcEEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation"(ptr noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #5 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZNK6google8protobuf8compiler10objectivec13FileGenerator14GenerateHeaderEPNS2_2io7PrinterESt17basic_string_viewIcSt11char_traitsIcEEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZNK6google8protobuf8compiler10objectivec13FileGenerator14GenerateHeaderEPNS0_2io7PrinterESt17basic_string_viewIcSt11char_traitsIcEEE3$_0", ptr %0, align 8, !tbaa !769
  br label %"_ZNSt14_Function_base13_Base_managerIZNK6google8protobuf8compiler10objectivec13FileGenerator14GenerateHeaderEPNS2_2io7PrinterESt17basic_string_viewIcSt11char_traitsIcEEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !344
  store ptr %.val, ptr %0, align 8, !tbaa !344
  br label %"_ZNSt14_Function_base13_Base_managerIZNK6google8protobuf8compiler10objectivec13FileGenerator14GenerateHeaderEPNS2_2io7PrinterESt17basic_string_viewIcSt11char_traitsIcEEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !922
  store ptr %i.a, ptr %0, align 8, !tbaa !344
  br label %"_ZNSt14_Function_base13_Base_managerIZNK6google8protobuf8compiler10objectivec13FileGenerator14GenerateHeaderEPNS2_2io7PrinterESt17basic_string_viewIcSt11char_traitsIcEEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !344 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZNK6google8protobuf8compiler10objectivec13FileGenerator14GenerateHeaderEPNS2_2io7PrinterESt17basic_string_viewIcSt11char_traitsIcEEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #33
  br label %"_ZNSt14_Function_base13_Base_managerIZNK6google8protobuf8compiler10objectivec13FileGenerator14GenerateHeaderEPNS2_2io7PrinterESt17basic_string_viewIcSt11char_traitsIcEEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZNK6google8protobuf8compiler10objectivec13FileGenerator14GenerateHeaderEPNS2_2io7PrinterESt17basic_string_viewIcSt11char_traitsIcEEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare void @_ZNK6google8protobuf8compiler10objectivec16MessageGenerator28DetermineForwardDeclarationsEPN4absl12lts_202505129btree_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISC_ESaISC_EEEb(ptr noundef nonnull align 8 dereferenceable(196), ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZNK6google8protobuf8compiler10objectivec13EnumGenerator14GenerateHeaderEPNS0_2io7PrinterE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) local_unnamed_addr #2

declare void @_ZNK6google8protobuf8compiler10objectivec18ExtensionGenerator23GenerateFunctionsHeaderEPNS0_2io7PrinterE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef) local_unnamed_addr #2

declare void @_ZNK6google8protobuf8compiler10objectivec18ExtensionGenerator21GenerateMethodsHeaderEPNS0_2io7PrinterE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef) local_unnamed_addr #2

declare void @_ZNK6google8protobuf8compiler10objectivec16MessageGenerator21GenerateMessageHeaderEPNS0_2io7PrinterE(ptr noundef nonnull align 8 dereferenceable(196), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051216strings_internal13JoinAlgorithmINS0_18container_internal14btree_iteratorIKNS3_10btree_nodeINS3_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISC_ESaISC_ELi256ELb0EEEEERKSC_PSJ_EEvEESC_T_SN_St17basic_string_viewIcSA_ENS1_11NoFormatterE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %1, i32 %2, ptr %3, i32 %4, ptr noundef byval(%"class.std::basic_string_view") align 8 %5) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !216
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !178
  store i8 0, ptr %i.a, align 8, !tbaa !12
  %i.c = icmp ne ptr %1, %3
  %i.d = icmp ne i32 %2, %4
  %.not3.i = select i1 %i.c, i1 true, i1 %i.d
  br i1 %.not3.i, label %bb.b, label %.loopexit84

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %2, 255
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %i.f ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !178
  %i.k = load i64, ptr %5, align 8                ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %bb.b
  %.sroa.066.0 = phi ptr [ %1, %bb.b ], [ %.sroa.066.1, %bb.h ] ; 6 uses
  %.sroa.869.0 = phi i32 [ %2, %bb.b ], [ %.sroa.869.1, %bb.h ] ; 2 uses
  %.021 = phi i64 [ %i.j, %bb.b ], [ %i.ar, %bb.h ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.066.0, i64 11
  %i.m = load i8, ptr %i.l, align 1, !tbaa !12
  %.not.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i, label %.thread.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = add nsw i32 %.sroa.869.0, 1              ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.066.0, i64 10
  %i.p = load i8, ptr %i.o, align 1, !tbaa !12
  %i.q = zext i8 %i.p to i32
  %i.r = icmp eq i32 %i.n, %i.q
  br i1 %i.r, label %.lr.ph.i.i.i, label %.loopexit85

.lr.ph.i.i.i:                                     ; preds = %bb.d, %bb.e
  %.01521.i.i.i = phi ptr [ %i.s, %bb.e ], [ %.sroa.066.0, %bb.d ] ; 2 uses
  %i.s = load ptr, ptr %.01521.i.i.i, align 8, !tbaa !654 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 11
  %i.u = load i8, ptr %i.t, align 1, !tbaa !12
  %.not17.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not17.i.i.i, label %bb.e, label %.loopexit85

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.01521.i.i.i, i64 8
  %i.w = load i8, ptr %i.v, align 1, !tbaa !12    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 10
  %i.y = load i8, ptr %i.x, align 1, !tbaa !12
  %i.z = icmp eq i8 %i.w, %i.y
  br i1 %i.z, label %.lr.ph.i.i.i, label %.critedge.loopexit23.i.i.i, !llvm.loop !923

.thread.i.i:                                      ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.066.0, i64 240
  %i.ab = add i32 %.sroa.869.0, 1
  %i.ac = and i32 %i.ab, 255
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ad
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.thread.i.i
  %.116.in.i.i.i = phi ptr [ %i.ae, %.thread.i.i ], [ %i.ah, %bb.f ]
  %.116.i.i.i = load ptr, ptr %.116.in.i.i.i, align 8, !tbaa !654 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 11
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !12
  %.not.i.i.i.i = icmp eq i8 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 240
  br i1 %.not.i.i.i.i, label %bb.f, label %.loopexit85, !llvm.loop !924

.critedge.loopexit23.i.i.i:                       ; preds = %bb.e
  %i.ai = zext i8 %i.w to i32
  br label %.loopexit85

.loopexit85:                                      ; preds = %.lr.ph.i.i.i, %bb.f, %.critedge.loopexit23.i.i.i, %bb.d
  %.sroa.066.1 = phi ptr [ %.116.i.i.i, %bb.f ], [ %.sroa.066.0, %bb.d ], [ %i.s, %.critedge.loopexit23.i.i.i ], [ %.sroa.066.0, %.lr.ph.i.i.i ] ; 3 uses
  %.sroa.869.1 = phi i32 [ 0, %bb.f ], [ %i.n, %bb.d ], [ %i.ai, %.critedge.loopexit23.i.i.i ], [ %i.n, %.lr.ph.i.i.i ] ; 3 uses
  %i.aj = icmp ne ptr %.sroa.066.1, %3
  %i.ak = icmp ne i32 %.sroa.869.1, %4
  %.not3.i40 = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %.not3.i40, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit85
  %.not = icmp eq i64 %.021, 0
  br i1 %.not, label %.loopexit84, label %bb.i

bb.h:                                             ; preds = %.loopexit85
  %i.al = and i32 %.sroa.869.1, 255
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %.sroa.066.1, i64 %i.am
  %i.ao = add i64 %i.k, %.021
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !178
  %i.ar = add i64 %i.ao, %i.aq
  br label %bb.c, !llvm.loop !925

bb.i:                                             ; preds = %bb.g
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.021, i8 noundef signext 0)
          to label %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit unwind label %bb.n

_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit: ; preds = %bb.i
  %i.as = load ptr, ptr %0, align 8, !tbaa !182   ; 2 uses
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !182
  %i.au = load i64, ptr %i.i, align 8, !tbaa !178
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.as, ptr align 1 %i.at, i64 %i.au, i1 false)
  %i.av = load i64, ptr %i.i, align 8, !tbaa !178
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.o, %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit
  %.sroa.8.0 = phi i32 [ %2, %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit ], [ %.sroa.8.1, %bb.o ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %1, %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit ], [ %.sroa.0.1, %bb.o ] ; 6 uses
  %.0 = phi ptr [ %i.aw, %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit ], [ %i.cl, %bb.o ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 11
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !12
  %.not.i.i41 = icmp eq i8 %i.ba, 0
  br i1 %.not.i.i41, label %.thread.i.i52, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = add nsw i32 %.sroa.8.0, 1               ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 10
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !12
  %i.be = zext i8 %i.bd to i32
  %i.bf = icmp eq i32 %i.bb, %i.be
  br i1 %i.bf, label %.lr.ph.i.i.i48, label %.loopexit

.lr.ph.i.i.i48:                                   ; preds = %bb.k, %bb.l
  %.01521.i.i.i49 = phi ptr [ %i.bg, %bb.l ], [ %.sroa.0.0, %bb.k ] ; 2 uses
  %i.bg = load ptr, ptr %.01521.i.i.i49, align 8, !tbaa !654 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 11
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !12
  %.not17.i.i.i50 = icmp eq i8 %i.bi, 0
  br i1 %.not17.i.i.i50, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %.lr.ph.i.i.i48
  %i.bj = getelementptr inbounds nuw i8, ptr %.01521.i.i.i49, i64 8
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !12  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 10
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !12
  %i.bn = icmp eq i8 %i.bk, %i.bm
  br i1 %i.bn, label %.lr.ph.i.i.i48, label %.critedge.loopexit23.i.i.i51, !llvm.loop !923

.thread.i.i52:                                    ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 240
  %i.bp = add i32 %.sroa.8.0, 1
  %i.bq = and i32 %i.bp, 255
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.br
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.thread.i.i52
  %.116.in.i.i.i53 = phi ptr [ %i.bs, %.thread.i.i52 ], [ %i.bv, %bb.m ]
  %.116.i.i.i54 = load ptr, ptr %.116.in.i.i.i53, align 8, !tbaa !654 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.116.i.i.i54, i64 11
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !12
  %.not.i.i.i.i55 = icmp eq i8 %i.bu, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %.116.i.i.i54, i64 240
  br i1 %.not.i.i.i.i55, label %bb.m, label %.loopexit, !llvm.loop !924

.critedge.loopexit23.i.i.i51:                     ; preds = %bb.l
  %i.bw = zext i8 %i.bk to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.i48, %bb.m, %.critedge.loopexit23.i.i.i51, %bb.k
  %.sroa.8.1 = phi i32 [ 0, %bb.m ], [ %i.bb, %bb.k ], [ %i.bw, %.critedge.loopexit23.i.i.i51 ], [ %i.bb, %.lr.ph.i.i.i48 ] ; 3 uses
  %.sroa.0.1 = phi ptr [ %.116.i.i.i54, %bb.m ], [ %.sroa.0.0, %bb.k ], [ %i.bg, %.critedge.loopexit23.i.i.i51 ], [ %.sroa.0.0, %.lr.ph.i.i.i48 ] ; 3 uses
  %i.bx = icmp ne ptr %.sroa.0.1, %3
  %i.by = icmp ne i32 %.sroa.8.1, %4
  %.not3.i60 = select i1 %i.bx, i1 true, i1 %i.by
  br i1 %.not3.i60, label %bb.o, label %.loopexit84

bb.n:                                             ; preds = %bb.i
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = load ptr, ptr %0, align 8, !tbaa !182   ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.a
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.o:                                             ; preds = %.loopexit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0, ptr align 1 %i.ay, i64 %i.k, i1 false)
  %i.cc = and i32 %.sroa.8.1, 255
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 16
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %i.ce, i64 %i.cd ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0, i64 %i.k ; 2 uses
  %i.ch = load ptr, ptr %i.cf, align 8, !tbaa !182
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !178
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cg, ptr align 1 %i.ch, i64 %i.cj, i1 false)
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !178
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ck
  br label %bb.j, !llvm.loop !926

.loopexit84:                                      ; preds = %.loopexit, %bb.a, %bb.g
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.cm = load i64, ptr %i.a, align 8, !tbaa !12
  %i.cn = add i64 %i.cm, 1
  tail call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cn) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.bz
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !351  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !349    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #31
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #32
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !216
  %i.t = load ptr, ptr %2, align 8, !tbaa !182    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !178  ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  store ptr %i.t, ptr %i.r, align 8, !tbaa !182
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !12
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !12
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !178
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ab = phi i64 [ %i.x, %bb.d ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.ab, ptr %i.ad, align 8, !tbaa !178
  store ptr %i.u, ptr %2, align 8, !tbaa !182
  store i64 0, ptr %i.ac, align 8, !tbaa !178
  store i8 0, ptr %i.u, align 8, !tbaa !12
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !927)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !930)
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !216, !alias.scope !927, !noalias !930
  %i.af = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !182, !alias.scope !930, !noalias !927 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !178, !alias.scope !930, !noalias !927 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.al, i1 false), !alias.scope !932
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !182, !alias.scope !927, !noalias !930
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !12, !alias.scope !930, !noalias !927
  store i64 %i.am, ptr %i.ae, align 8, !tbaa !12, !alias.scope !927, !noalias !930
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !178, !alias.scope !930, !noalias !927
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.e
  %i.an = phi i64 [ %i.aj, %bb.e ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !178, !alias.scope !927, !noalias !930
  store ptr %i.ag, ptr %.0911.i.i.i, align 8, !tbaa !182, !alias.scope !930, !noalias !927
  store i64 0, ptr %i.ao, align 8, !tbaa !178, !alias.scope !930, !noalias !927
  store i8 0, ptr %i.ag, align 8, !tbaa !12, !alias.scope !930, !noalias !927
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !933

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !934)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !937)
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.at, ptr %.012.i.i.i18, align 8, !tbaa !216, !alias.scope !934, !noalias !937
  %i.au = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !182, !alias.scope !937, !noalias !934 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.aw = icmp eq ptr %i.au, %i.av
end_hunk_1
