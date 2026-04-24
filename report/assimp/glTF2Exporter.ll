inline.NumInlined: 7264
inline.NumDeleted: 2661
begin_hunk_0
@_ZTVN5glTF29AnimationE = linkonce_odr hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5glTF29AnimationE, ptr @_ZNK5glTF26Object9IsSpecialEv, ptr @_ZN5glTF29AnimationD2Ev, ptr @_ZN5glTF29AnimationD0Ev] }, comdat, align 8
@_ZTIN5glTF29AnimationE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5glTF29AnimationE, ptr @_ZTIN5glTF26ObjectE }, comdat, align 8
@_ZTSN5glTF29AnimationE = linkonce_odr hidden constant [19 x i8] c"N5glTF29AnimationE\00", comdat, align 1
@switch.table._ZN5glTF28Accessor17WriteSparseValuesEmPKvm = private unnamed_addr constant [7 x i32] [i32 1, i32 1, i32 2, i32 2, i32 poison, i32 4, i32 4], align 4

@_ZN6Assimp13glTF2ExporterC1EPKcPNS_8IOSystemEPK7aiScenePKNS_16ExportPropertiesEb = hidden unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, i1), ptr @_ZN6Assimp13glTF2ExporterC2EPKcPNS_8IOSystemEPK7aiScenePKNS_16ExportPropertiesEb
end_hunk_0
begin_hunk_1_@_Z10ExportSkinRN5glTF25AssetEPK6aiMeshRN10glTFCommon3RefINS_4MeshEEERNS6_INS_6BufferEEERNS6_INS_4SkinEEERSt6vectorI12aiMatrix4x4tIfESaISI_EEb:bb.a
  %i.lo = load i64, ptr %i.ln, align 8            ; 7 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lc, i64 288
  %i.lq = load i32, ptr %i.lp, align 8            ; 3 uses
  %switch.tableidx = add i32 %i.lq, -5120         ; 2 uses
  %i.lr = icmp ult i32 %switch.tableidx, 7
  %switch.maskindex = trunc i32 %i.lq to i8
  %switch.shifted = lshr i8 111, %switch.maskindex
end_hunk_1
begin_hunk_2_@_Z10ExportSkinRN5glTF25AssetEPK6aiMeshRN10glTFCommon3RefINS_4MeshEEERNS6_INS_6BufferEEERNS6_INS_4SkinEEERSt6vectorI12aiMatrix4x4tIfESaISI_EEb:bb.a

switch.lookup:                                    ; preds = %bb.av
  %i.ma = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN5glTF28Accessor17WriteSparseValuesEmPKvm, i64 %i.ma
  %switch.load = load i32, ptr %switch.gep, align 4 ; 2 uses
  %10 = shl i64 %i.lo, 1
  %11 = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %switch.load, i1 true)
  %12 = zext nneg i32 %11 to i64
  %i.mb = lshr i64 %10, %12
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lk, i64 264
  %.sroa.0247.0.copyload = load ptr, ptr %i.mc, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lk, i64 272
end_hunk_2
begin_hunk_3_@_Z10ExportSkinRN5glTF25AssetEPK6aiMeshRN10glTFCommon3RefINS_4MeshEEERNS6_INS_6BufferEEERNS6_INS_4SkinEEERSt6vectorI12aiMatrix4x4tIfESaISI_EEb:bb.a
  %i.nh = getelementptr inbounds nuw i8, ptr %i.md, i64 %i.ng
  store i16 %i.ne, ptr %i.nh, align 1
  %i.ni = add i32 %.0148397, 1
  %i.nj = add i32 %.0147398, %switch.load         ; 2 uses
  %i.nk = zext i32 %i.nj to i64                   ; 2 uses
  %i.nl = icmp ugt i64 %i.lo, %i.nk
  br i1 %i.nl, label %bb.bf, label %bb.bc, !llvm.loop !177
end_hunk_3
begin_hunk_4_@_Z10ExportDataRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEmPvNS_10AttribType5ValueESG_NS_13ComponentTypeENS_16BufferViewTargetE:bb.a
  %i.h = getelementptr inbounds nuw [16 x i8], ptr @_ZN5glTF210AttribType4dataILi0EE5infosE, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %switch.tableidx = add i32 %7, -5120            ; 2 uses
  %i.k = icmp ult i32 %switch.tableidx, 7
  %switch.maskindex = trunc i32 %7 to i8
  %switch.shifted = lshr i8 111, %switch.maskindex
end_hunk_4
begin_hunk_5_@_Z10ExportDataRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEmPvNS_10AttribType5ValueESG_NS_13ComponentTypeENS_16BufferViewTargetE:bb.a
  unreachable

switch.lookup:                                    ; preds = %bb.b
  %i.t = zext nneg i32 %switch.tableidx to i64
  %switch.gep.a = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN5glTF28Accessor17WriteSparseValuesEmPKvm, i64 %i.t
  %switch.load.a = load i32, ptr %switch.gep.a, align 4 ; 2 uses
  %i.u = load ptr, ptr %2, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i32, ptr %i.v, align 8
end_hunk_5
begin_hunk_6_@_Z10ExportDataRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEmPvNS_10AttribType5ValueESG_NS_13ComponentTypeENS_16BufferViewTargetE:bb.a
  %i.aa = load ptr, ptr %i.z, align 8             ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 264 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8            ; 4 uses
  %12 = zext nneg i32 %switch.load.a to i64       ; 2 uses
  %i.ad = add nsw i64 %12, -1
  %i.ae = and i64 %i.ac, %i.ad                    ; 2 uses
  %i.af = zext i32 %i.j to i64
  %i.ag = mul i64 %3, %i.af
  %i.ah = mul i64 %i.ag, %12                      ; 2 uses
  %i.ai = add i64 %i.ae, %i.ah                    ; 3 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_ZN5glTF26Buffer4GrowEm.exit, label %bb.i
end_hunk_6
begin_hunk_7_@_Z16ExportDataSparseRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEmPvNS_10AttribType5ValueESG_NS_13ComponentTypeENS_16BufferViewTargetESE_:bb.a
  %i.j = getelementptr inbounds nuw [16 x i8], ptr @_ZN5glTF210AttribType4dataILi0EE5infosE, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 8              ; 3 uses
  %switch.tableidx = add i32 %7, -5120            ; 2 uses
  %i.m = icmp ult i32 %switch.tableidx, 7
  %switch.maskindex = trunc i32 %7 to i8
  %switch.shifted = lshr i8 111, %switch.maskindex
end_hunk_7
begin_hunk_8_@_Z16ExportDataSparseRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEmPvNS_10AttribType5ValueESG_NS_13ComponentTypeENS_16BufferViewTargetESE_:bb.a
  unreachable

switch.lookup:                                    ; preds = %bb.b
  %i.v = zext nneg i32 %switch.tableidx to i64
  %switch.gep.a = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN5glTF28Accessor17WriteSparseValuesEmPKvm, i64 %i.v
  %switch.load.a = load i32, ptr %switch.gep.a, align 4 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 216
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  call void @_ZN5glTF25Asset12FindUniqueIDERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(3624) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.246)
end_hunk_8
begin_hunk_9_@_Z16ExportDataSparseRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEmPvNS_10AttribType5ValueESG_NS_13ComponentTypeENS_16BufferViewTargetESE_:bb.a
  %i.bj = load ptr, ptr %i.bi, align 8            ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 264 ; 3 uses
  %i.bl = load i64, ptr %i.bk, align 8            ; 4 uses
  %15 = zext nneg i32 %switch.load.a to i64       ; 2 uses
  %i.bm = add nsw i64 %15, -1
  %i.bn = and i64 %i.bl, %i.bm                    ; 2 uses
  %i.bo = zext i32 %i.l to i64
  %i.bp = mul i64 %3, %i.bo
  %i.bq = mul i64 %i.bp, %15                      ; 2 uses
  %i.br = add i64 %i.bn, %i.bq                    ; 3 uses
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_ZN5glTF26Buffer4GrowEm.exit, label %bb.j
end_hunk_9
begin_hunk_10_@_Z16ExportDataSparseRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEmPvNS_10AttribType5ValueESG_NS_13ComponentTypeENS_16BufferViewTargetESE_:bb.a
  %i.lh = load ptr, ptr %i.lg, align 8            ; 3 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 264 ; 3 uses
  %i.lj = load i64, ptr %i.li, align 8            ; 4 uses
  %16 = zext nneg i32 %switch.load.a to i64       ; 2 uses
  %i.lk = add nsw i64 %16, -1
  %i.ll = and i64 %i.lj, %i.lk                    ; 2 uses
  %i.lm = zext i32 %i.l to i64
  %i.ln = mul nuw nsw i64 %16, %i.lm
  %i.lo = mul i64 %i.ln, %i.fp                    ; 2 uses
  %i.lp = add i64 %i.ll, %i.lo                    ; 3 uses
  %i.lq = icmp eq i64 %i.lp, 0
end_hunk_10
begin_hunk_11_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_9AnimationERNS_11AssetWriterE:bb.a
  br label %bb.h

bb.h:                                             ; preds = %.sink.split401, %.noexc.i.i119
  %.sroa.0183.0.a = phi i32 [ 1, %.noexc.i.i119 ], [ 2, %.sink.split401 ] ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
end_hunk_11
begin_hunk_12_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_9AnimationERNS_11AssetWriterE:bb.a
  %i.hc = icmp sgt i32 %i.hb, -1
  %.sroa.5.14.insert.ext.i.i155 = select i1 %i.hc, i64 141300438308749312, i64 51228445761339392
  %i.hd = sext i32 %i.hb to i64
  %3 = zext nneg i32 %.sroa.0183.0.a to i64
  %i.he = getelementptr inbounds nuw [32 x i8], ptr %i.gm, i64 %3 ; 5 uses
  store i32 6, ptr %i.he, align 8
  %.sroa.6.0..sroa_idx.i156 = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i156, align 4
end_hunk_12
begin_hunk_13_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_9AnimationERNS_11AssetWriterE:bb.a
  store i64 %i.hd, ptr %i.hf, align 8
  %.sroa.5.0..sroa_idx.i.i158 = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  store i64 %.sroa.5.14.insert.ext.i.i155, ptr %.sroa.5.0..sroa_idx.i.i158, align 8
  %4 = add nuw nsw i32 %.sroa.0183.0.a, 1
  %i.hg = load ptr, ptr %i.j, align 8, !nonnull !13, !align !122
  %i.hh = zext i32 %.sroa.9.0362 to i64           ; 2 uses
  %.not.i163 = icmp samesign ult i64 %.037364, %i.hh
end_hunk_13
begin_hunk_14_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_9AnimationERNS_11AssetWriterE:bb.a
  %i.ib = inttoptr i64 %i.ia to ptr
  %i.ic = add nuw nsw i64 %.037364, 1             ; 3 uses
  %i.id = getelementptr inbounds nuw [16 x i8], ptr %i.ib, i64 %.037364 ; 3 uses
  store i32 %4, ptr %i.id, align 8
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.id, i64 4
  store i32 16, ptr %.sroa.26.0..sroa_idx, align 4
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.id, i64 8
end_hunk_14
begin_hunk_15_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  br label %bb.n

bb.n:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIjEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit.i.i, %.noexc.i182
  %.sroa.03.0.i.a = phi i32 [ 1, %.noexc.i182 ], [ 2, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIjEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit.i.i ] ; 3 uses
  %i.hc = fcmp une float %.sroa.6673.0.copyload, 1.000000e+00
  br i1 %i.hc, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIfEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit.i, label %bb.o

end_hunk_15
begin_hunk_16_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  %i.hd = or i64 ptrtoint (ptr @.str.26 to i64), 289637751035265024
  %i.he = inttoptr i64 %i.hd to ptr
  %i.hf = fpext float %.sroa.6673.0.copyload to double
  %19 = zext nneg i32 %.sroa.03.0.i.a to i64
  %i.hg = getelementptr inbounds nuw [32 x i8], ptr %i.gv, i64 %19 ; 5 uses
  store i32 8, ptr %i.hg, align 8
  %.sroa.6.0..sroa_idx.i.i189 = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i189, align 4
end_hunk_16
begin_hunk_17_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  br label %_ZN5glTF212_GLOBAL__N_18WriteVecILm4EEEvRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEERAT__fPKcRAT__KfRS8_.exit257

_ZN5glTF212_GLOBAL__N_18WriteVecILm4EEEvRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEERAT__fPKcRAT__KfRS8_.exit257: ; preds = %bb.ag, %_ZN5glTF212_GLOBAL__N_18WriteVecILm4EEEvRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEERAT__fPKcRS8_.exit.i244
  %i.sg = phi i32 [ 0, %bb.ag ], [ 16, %_ZN5glTF212_GLOBAL__N_18WriteVecILm4EEEvRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEERAT__fPKcRS8_.exit.i244 ] ; 8 uses
  %i.sh = phi i32 [ 0, %bb.ag ], [ 1, %_ZN5glTF212_GLOBAL__N_18WriteVecILm4EEEvRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEERAT__fPKcRS8_.exit.i244 ] ; 4 uses
  %i.si = phi ptr [ %i.rk, %bb.ag ], [ %.pre715, %_ZN5glTF212_GLOBAL__N_18WriteVecILm4EEEvRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEERAT__fPKcRS8_.exit.i244 ] ; 3 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %1, i64 616 ; 2 uses
  %i.sk = load float, ptr %i.sj, align 8
end_hunk_17
begin_hunk_18_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  %i.sy = ptrtoint ptr %i.sx to i64               ; 2 uses
  %i.sz = and i64 %i.sy, 281474976710655
  %i.ta = inttoptr i64 %i.sz to ptr
  %20 = shl nuw nsw i32 %i.sg, 5
  %21 = zext nneg i32 %20 to i64
  %i.tb = shl nuw nsw i32 %i.su, 5
  %i.tc = zext nneg i32 %i.tb to i64
  %i.td = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.si, ptr noundef %i.ta, i64 noundef %21, i64 noundef %i.tc)
  %i.te = and i64 %i.sy, -281474976710656
  %i.tf = ptrtoint ptr %i.td to i64
  %i.tg = or i64 %i.te, %i.tf
end_hunk_18
begin_hunk_19_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  %i.tn = ptrtoint ptr %i.tm to i64
  %i.to = and i64 %i.tn, 281474976710655
  %i.tp = inttoptr i64 %i.to to ptr
  %22 = zext nneg i32 %i.sh to i64
  %i.tq = getelementptr inbounds nuw [32 x i8], ptr %i.tp, i64 %22 ; 4 uses
  store i32 14, ptr %i.tq, align 8
  %.sroa.6.0..sroa_idx.i.i.i262 = getelementptr inbounds nuw i8, ptr %i.tq, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i.i262, align 4
end_hunk_19
begin_hunk_20_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a

bb.as:                                            ; preds = %_ZN5glTF212_GLOBAL__N_110WriteFloatERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEfPKcRS7_.exit306, %bb.ar
  %.pre720 = phi ptr [ %.pre720.pre, %_ZN5glTF212_GLOBAL__N_110WriteFloatERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEfPKcRS7_.exit306 ], [ %.pre720.pre736, %bb.ar ] ; 3 uses
  %i.xw = phi i32 [ 16, %_ZN5glTF212_GLOBAL__N_110WriteFloatERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEfPKcRS7_.exit306 ], [ 0, %bb.ar ] ; 5 uses
  %i.xx = phi i32 [ 1, %_ZN5glTF212_GLOBAL__N_110WriteFloatERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEfPKcRS7_.exit306 ], [ 0, %bb.ar ] ; 3 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %1, i64 740 ; 2 uses
  %i.xz = load float, ptr %i.xy, align 4
  %i.ya = fcmp une float %i.xz, 1.000000e+00
end_hunk_20
begin_hunk_21_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  %i.yp = ptrtoint ptr %i.yo to i64               ; 2 uses
  %i.yq = and i64 %i.yp, 281474976710655
  %i.yr = inttoptr i64 %i.yq to ptr
  %23 = shl nuw nsw i32 %i.xw, 5
  %24 = zext nneg i32 %23 to i64
  %i.ys = shl nuw nsw i32 %i.yl, 5
  %i.yt = zext nneg i32 %i.ys to i64
  %i.yu = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %.pre720, ptr noundef %i.yr, i64 noundef %24, i64 noundef %i.yt)
  %i.yv = and i64 %i.yp, -281474976710656
  %i.yw = ptrtoint ptr %i.yu to i64
  %i.yx = or i64 %i.yv, %i.yw
end_hunk_21
begin_hunk_22_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  %i.zd = ptrtoint ptr %i.zc to i64
  %i.ze = and i64 %i.zd, 281474976710655
  %i.zf = inttoptr i64 %i.ze to ptr
  %25 = zext nneg i32 %i.xx to i64
  %i.zg = getelementptr inbounds nuw [32 x i8], ptr %i.zf, i64 %25 ; 4 uses
  store i32 19, ptr %i.zg, align 8
  %.sroa.6.0..sroa_idx.i.i309 = getelementptr inbounds nuw i8, ptr %i.zg, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i309, align 4
end_hunk_22
begin_hunk_23_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  br label %_ZN5glTF212_GLOBAL__N_110WriteFloatERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEfPKcRS7_.exit346

_ZN5glTF212_GLOBAL__N_110WriteFloatERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEfPKcRS7_.exit346: ; preds = %_ZN5glTF212_GLOBAL__N_18WriteVecILm3EEEvRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEERAT__fPKcRAT__KfRS8_.exit337, %.noexc.i.i343
  %i.ack = phi i32 [ 0, %.noexc.i.i343 ], [ 1, %_ZN5glTF212_GLOBAL__N_18WriteVecILm3EEEvRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEERAT__fPKcRAT__KfRS8_.exit337 ] ; 2 uses
  %i.acl = phi float [ %i.abx, %.noexc.i.i343 ], [ %i.abu, %_ZN5glTF212_GLOBAL__N_18WriteVecILm3EEEvRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEERAT__fPKcRAT__KfRS8_.exit337 ]
  %i.acm = fpext float %i.acl to double
  %i.acn = or i64 ptrtoint (ptr @.str.169 to i64), 289637751035265024
end_hunk_23
begin_hunk_24_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  %i.acr = ptrtoint ptr %i.acq to i64
  %i.acs = and i64 %i.acr, 281474976710655
  %i.act = inttoptr i64 %i.acs to ptr
  %26 = zext nneg i32 %i.ack to i64
  %i.acu = getelementptr inbounds nuw [32 x i8], ptr %i.act, i64 %26 ; 5 uses
  store i32 20, ptr %i.acu, align 8
  %.sroa.6.0..sroa_idx.i.i340 = getelementptr inbounds nuw i8, ptr %i.acu, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i340, align 4
end_hunk_24
begin_hunk_25_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  store double %i.acm, ptr %i.acv, align 8
  %.sroa.6.0..sroa_idx.i342 = getelementptr inbounds nuw i8, ptr %i.acu, i64 24
  store i64 150307637563490304, ptr %.sroa.6.0..sroa_idx.i342, align 8
  %27 = add nuw nsw i32 %i.ack, 1
  store i32 %27, ptr %14, align 8
  %.pre721 = load ptr, ptr %i.d, align 8
  br label %bb.ba

end_hunk_25
begin_hunk_26_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  br label %_ZN5glTF212_GLOBAL__N_110WriteFloatERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEfPKcRS7_.exit372

_ZN5glTF212_GLOBAL__N_110WriteFloatERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEfPKcRS7_.exit372: ; preds = %bb.bg, %.noexc.i.i369
  %i.afs = phi i32 [ 0, %.noexc.i.i369 ], [ 1, %bb.bg ] ; 2 uses
  %i.aft = phi float [ %i.aff, %.noexc.i.i369 ], [ %i.afc, %bb.bg ]
  %i.afu = fpext float %i.aft to double
  %i.afv = or i64 ptrtoint (ptr @.str.174 to i64), 289637751035265024
end_hunk_26
begin_hunk_27_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  %i.afz = ptrtoint ptr %i.afy to i64
  %i.aga = and i64 %i.afz, 281474976710655
  %i.agb = inttoptr i64 %i.aga to ptr
  %28 = zext nneg i32 %i.afs to i64
  %i.agc = getelementptr inbounds nuw [32 x i8], ptr %i.agb, i64 %28 ; 5 uses
  store i32 24, ptr %i.agc, align 8
  %.sroa.6.0..sroa_idx.i.i366 = getelementptr inbounds nuw i8, ptr %i.agc, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i366, align 4
end_hunk_27
begin_hunk_28_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  store double %i.afu, ptr %i.agd, align 8
  %.sroa.6.0..sroa_idx.i368 = getelementptr inbounds nuw i8, ptr %i.agc, i64 24
  store i64 150307637563490304, ptr %.sroa.6.0..sroa_idx.i368, align 8
  %29 = add nuw nsw i32 %i.afs, 1
  store i32 %29, ptr %15, align 8
  %.pre724 = load ptr, ptr %i.d, align 8
  br label %bb.bh

end_hunk_28
begin_hunk_29_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  br label %_ZN5glTF212_GLOBAL__N_110WriteFloatERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEfPKcRS7_.exit490

_ZN5glTF212_GLOBAL__N_110WriteFloatERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEfPKcRS7_.exit490: ; preds = %bb.ch, %.noexc.i.i487
  %i.atu = phi i32 [ 0, %.noexc.i.i487 ], [ 1, %bb.ch ] ; 2 uses
  %i.atv = phi float [ %i.ath, %.noexc.i.i487 ], [ %i.ate, %bb.ch ]
  %i.atw = fpext float %i.atv to double
  %i.atx = or i64 ptrtoint (ptr @.str.192 to i64), 289637751035265024
end_hunk_29
begin_hunk_30_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  %i.aub = ptrtoint ptr %i.aua to i64
  %i.auc = and i64 %i.aub, 281474976710655
  %i.aud = inttoptr i64 %i.auc to ptr
  %30 = zext nneg i32 %i.atu to i64
  %i.aue = getelementptr inbounds nuw [32 x i8], ptr %i.aud, i64 %30 ; 5 uses
  store i32 18, ptr %i.aue, align 8
  %.sroa.6.0..sroa_idx.i.i484 = getelementptr inbounds nuw i8, ptr %i.aue, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i484, align 4
end_hunk_30
begin_hunk_31_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  store double %i.atw, ptr %i.auf, align 8
  %.sroa.6.0..sroa_idx.i486 = getelementptr inbounds nuw i8, ptr %i.aue, i64 24
  store i64 150307637563490304, ptr %.sroa.6.0..sroa_idx.i486, align 8
  %31 = add nuw nsw i32 %i.atu, 1
  store i32 %31, ptr %18, align 8
  %.pre733 = load ptr, ptr %i.d, align 8
  br label %bb.ci

end_hunk_31
begin_hunk_32_@_ZN5glTF212_GLOBAL__N_18WriteTexERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEENS_17NormalTextureInfoEPKcRS7_:bb.a
  br label %bb.d

bb.d:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIjEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit.i, %.noexc
  %.sroa.018.1.a = phi i32 [ 1, %.noexc ], [ 2, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIjEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit.i ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.av = load float, ptr %i.au, align 8          ; 2 uses
  %i.aw = fcmp une float %i.av, 1.000000e+00
end_hunk_32
begin_hunk_33_@_ZN5glTF212_GLOBAL__N_18WriteTexERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEENS_17NormalTextureInfoEPKcRS7_:bb.a
  %i.ax = or i64 ptrtoint (ptr @.str.25 to i64), 289637751035265024
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = fpext float %i.av to double
  %4 = zext nneg i32 %.sroa.018.1.a to i64
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %i.an, i64 %4 ; 5 uses
  store i32 5, ptr %i.ba, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i, align 4
end_hunk_33
begin_hunk_34_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_4MeshERNS_11AssetWriterE:bb.a
bb.d:                                             ; preds = %.thread, %.noexc.i107
  %.sroa.5.14.insert.ext450 = phi i64 [ %.sroa.5.14.insert.ext447, %.thread ], [ %.sroa.5.14.insert.ext, %.noexc.i107 ]
  %.in = phi i32 [ %i.cc, %.thread ], [ %i.ce, %.noexc.i107 ]
  %.sroa.0259.0449 = phi i32 [ 1, %.thread ], [ 0, %.noexc.i107 ] ; 3 uses
  %.sroa.42.5.in.in = phi i64 [ %i.by, %.thread ], [ %i.ci, %.noexc.i107 ] ; 4 uses
  %.sroa.42.5.in = or i64 %.sroa.42.5.in.in, 844424930131968 ; 2 uses
  %.sroa.42.5 = inttoptr i64 %.sroa.42.5.in to ptr ; 2 uses
  %i.cj = sext i32 %.in to i64
  %i.ck = and i64 %.sroa.42.5.in.in, 281474976710655
  %i.cl = inttoptr i64 %i.ck to ptr               ; 2 uses
  %7 = zext nneg i32 %.sroa.0259.0449 to i64
  %i.cm = getelementptr inbounds nuw [32 x i8], ptr %i.cl, i64 %7 ; 5 uses
  store i32 4, ptr %i.cm, align 8
  %.sroa.6.0..sroa_idx.i105 = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i105, align 4
end_hunk_34
begin_hunk_35_@_ZN5glTF211AssetWriter19WriteExtensionsUsedEv:bb.a
  br label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8PushBackENS_16GenericStringRefIcEERS5_.exit10

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8PushBackENS_16GenericStringRefIcEERS5_.exit10: ; preds = %bb.b, %.noexc.i.i7
  %.sroa.0136.0276283 = phi i32 [ 0, %.noexc.i.i7 ], [ 1, %bb.b ] ; 2 uses
  %.sroa.67.13 = phi ptr [ %i.aa, %.noexc.i.i7 ], [ %i.k, %bb.b ] ; 2 uses
  %i.ab = or i64 ptrtoint (ptr @.str.163 to i64), 289637751035265024
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = ptrtoint ptr %.sroa.67.13 to i64
  %i.ae = and i64 %i.ad, 281474976710655
  %i.af = inttoptr i64 %i.ae to ptr
  %1 = add nuw nsw i32 %.sroa.0136.0276283, 1
  %2 = zext nneg i32 %.sroa.0136.0276283 to i64
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %2 ; 3 uses
  store i32 19, ptr %i.ag, align 8
  %.sroa.6.0..sroa_idx.i.i5 = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i5, align 4
end_hunk_35
begin_hunk_36_@_ZN5glTF211AssetWriter19WriteExtensionsUsedEv:bb.a
bb.c:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8PushBackENS_16GenericStringRefIcEERS5_.exit10, %bb.b
  %i.ah = phi ptr [ %.pre241, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8PushBackENS_16GenericStringRefIcEERS5_.exit10 ], [ %.pre, %bb.b ] ; 2 uses
  %.sroa.67.1 = phi ptr [ %.sroa.67.13, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8PushBackENS_16GenericStringRefIcEERS5_.exit10 ], [ %i.k, %bb.b ] ; 2 uses
  %.sroa.0136.1 = phi i32 [ %1, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8PushBackENS_16GenericStringRefIcEERS5_.exit10 ], [ 1, %bb.b ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 25
  %i.aj = load i8, ptr %i.ai, align 1, !range !12, !noundef !13
  %i.ak = trunc nuw i8 %i.aj to i1
end_hunk_36
begin_hunk_37_@llvm.smin.i64
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

end_hunk_37
