inline.NumInlined: 420
inline.NumDeleted: 204
begin_hunk_0_@_ZNK6google8protobuf8internal12ExtensionSet13IsInitializedEPNS0_5ArenaEPKNS0_11MessageLiteE
; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf8internal13ReflectionOps13IsInitializedERKNS0_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector", align 8       ; 17 uses
  %i.a = alloca [1 x ptr], align 8                ; 5 uses
  %2 = alloca %"class.google::protobuf::ConstMapIterator", align 8 ; 9 uses
  %3 = alloca %"class.google::protobuf::ConstMapIterator", align 8 ; 7 uses
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internal13ReflectionOps13IsInitializedERKNS0_7MessageE:bb.a

bb.f:                                             ; preds = %bb.e
  store ptr %i.s, ptr %i.a, align 8, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.v = load ptr, ptr %1, align 8, !tbaa !29     ; 4 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.y = sub i64 %i.w, %i.x
  %i.z = icmp ult i64 %i.y, 8
  br i1 %i.z, label %bb.g, label %bb.i

end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8internal13ReflectionOps13IsInitializedERKNS0_7MessageE:bb.a
.noexc:                                           ; preds = %bb.g
  store ptr %i.s, ptr %i.aa, align 8, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %4 = load ptr, ptr %1, align 8, !tbaa !29       ; 3 uses
  %.not.i.i = icmp eq ptr %4, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE13_M_deallocateEPS4_m.exit.i, label %bb.h

bb.h:                                             ; preds = %.noexc
  %5 = load ptr, ptr %i.t, align 8, !tbaa !31
  %6 = ptrtoint ptr %5 to i64
  %7 = ptrtoint ptr %4 to i64
  %8 = sub i64 %6, %7
  tail call void @_ZdlPvm(ptr noundef nonnull %4, i64 noundef %8) #16
  br label %_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE13_M_deallocateEPS4_m.exit.i

_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE13_M_deallocateEPS4_m.exit.i: ; preds = %bb.h, %.noexc
end_hunk_2
begin_hunk_3_@_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE
define linkonce_odr hidden noundef ptr @_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %3, null
  %i.a = load i32, ptr %0, align 8, !tbaa !111
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  br i1 %.not, label %.split8, label %.split

.split:                                           ; preds = %bb.a
end_hunk_3
begin_hunk_4_@_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE:bb.a
  br label %_ZNK6google8protobuf8internal14MessageCreator12PlacementNewINS0_11MessageLiteEEEPT_PKS5_S8_PvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %.split8
  %4 = load i32, ptr %0, align 8, !tbaa !111      ; 6 uses
  %5 = zext i32 %4 to i64                         ; 11 uses
  %i.bj = icmp eq i8 %i.be, 0
  %i.bk = icmp ult i32 %4, 33                     ; 2 uses
  br i1 %i.bj, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  br i1 %i.bk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 %5
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  br label %bb.w

bb.q:                                             ; preds = %bb.o
  %i.bn = icmp ult i32 %4, 65
  br i1 %i.bn, label %bb.r, label %.preheader.i14

.preheader.i14:                                   ; preds = %bb.q
  %i.bo = icmp ugt i32 %4, 80
  br i1 %i.bo, label %.lr.ph64.i16, label %._crit_edge65.i15

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bp, i8 0, i64 16, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 %5
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.br, i8 0, i64 32, i1 false)
  br label %bb.w

._crit_edge65.i15:                                ; preds = %.lr.ph64.i16, %.preheader.i14
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bc, i64 %5
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.bt, i8 0, i64 64, i1 false)
  br label %bb.w
end_hunk_4
begin_hunk_5_@_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE:bb.a
  tail call void asm sideeffect "prefetchw $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.bw) #15, !srcloc !114
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.bv, i8 0, i64 64, i1 false)
  %i.bx = add nuw nsw i64 %i.bu, 64               ; 2 uses
  %i.by = icmp samesign ult i64 %i.bx, %5
  br i1 %i.by, label %.lr.ph64.i16, label %._crit_edge65.i15, !llvm.loop !115

bb.s:                                             ; preds = %bb.n
  br i1 %i.bk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bc, i64 %5
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -16
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 %5
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ca, ptr noundef nonnull align 1 dereferenceable(16) %i.cc, i64 16, i1 false)
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cd = icmp ult i32 %4, 65
  br i1 %i.cd, label %bb.v, label %.preheader61.i9

.preheader61.i9:                                  ; preds = %bb.u
  %i.ce = icmp ugt i32 %4, 80
  br i1 %i.ce, label %.lr.ph.i12, label %._crit_edge.i10

bb.v:                                             ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.cf, ptr noundef nonnull align 1 dereferenceable(16) %i.cg, i64 16, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bc, i64 %5
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -32
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 %5
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ci, ptr noundef nonnull align 1 dereferenceable(32) %i.ck, i64 32, i1 false)
  br label %bb.w

._crit_edge.i10:                                  ; preds = %.lr.ph.i12, %.preheader61.i9
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bc, i64 %5
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -64
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 %5
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.cm, ptr noundef nonnull align 1 dereferenceable(64) %i.co, i64 64, i1 false)
  br label %bb.w
end_hunk_5
begin_hunk_6_@_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE:bb.a
  tail call void asm sideeffect "prefetchw $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.ct) #15, !srcloc !114
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.cs, ptr noundef nonnull align 1 dereferenceable(64) %i.cq, i64 64, i1 false)
  %i.cu = add nuw nsw i64 %i.cp, 64               ; 2 uses
  %i.cv = icmp samesign ult i64 %i.cu, %5
  br i1 %i.cv, label %.lr.ph.i12, label %._crit_edge.i10, !llvm.loop !116

bb.w:                                             ; preds = %._crit_edge.i10, %bb.v, %bb.t, %._crit_edge65.i15, %bb.r, %bb.p
end_hunk_6
