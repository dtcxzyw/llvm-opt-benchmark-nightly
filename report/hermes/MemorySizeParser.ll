inline.NumInlined: 71
inline.NumDeleted: 38
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvh::Twine" = type <{ %"union.llvh::Twine::Child", %"union.llvh::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvh::Twine::Child" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

@.str = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"' value invalid for file size argument!\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@switch.table._ZN2cl16MemorySizeParser5parseERN4llvh2cl6OptionENS1_9StringRefERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_10MemorySizeE = private unnamed_addr constant [39 x i8] [i8 30, i8 poison, i8 poison, i8 poison, i8 10, i8 poison, i8 20, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 30, i8 poison, i8 poison, i8 poison, i8 10, i8 poison, i8 20], align 4

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2cl16MemorySizeParser5parseERN4llvh2cl6OptionENS1_9StringRefERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_10MemorySizeE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(352) %0, ptr noundef nonnull align 8 dereferenceable(145) %1, ptr nofree readnone captures(none) %2, i64 %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %6 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = load ptr, ptr %4, align 8, !tbaa !7      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.c = call i64 @__isoc23_strtol(ptr noundef %i.b, ptr noundef nonnull %i.a, i32 noundef 0) #8
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  store i32 %i.d, ptr %5, align 4, !tbaa !13
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.b
  br i1 %i.f, label %bb.b, label %.preheader.outer

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  call void @llvm.experimental.noalias.scope.decl(metadata !16)
  %i.g = load ptr, ptr %4, align 8, !tbaa !7, !noalias !16
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !19, !noalias !16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.j, ptr %8, align 8, !tbaa !20, !alias.scope !21
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store i64 0, ptr %i.k, align 8, !tbaa !19, !alias.scope !21
  store i8 0, ptr %i.j, align 8, !tbaa !24, !alias.scope !21
  %i.l = add i64 %i.i, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.l) #8
  %i.m = load i64, ptr %i.k, align 8, !tbaa !19, !alias.scope !21
  %i.n = icmp eq i64 %i.m, 4611686018427387903
  br i1 %i.n, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

bb.c:                                             ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #9
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %bb.b
  %i.o = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str, i64 noundef 1) #8 ; 0 uses
  %i.p = load i64, ptr %i.k, align 8, !tbaa !19, !alias.scope !21
  %i.q = sub i64 4611686018427387903, %i.p
  %i.r = icmp ult i64 %i.q, %i.i
  br i1 %i.r, label %bb.d, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #9
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.s = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %i.g, i64 noundef %i.i) #8 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25)
  %i.t = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !25
  %i.u = add i64 %i.t, -4611686018427387865
  %i.v = icmp ult i64 %i.u, 39
  br i1 %i.v, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.e:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #9, !noalias !25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.w = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.1, i64 noundef 39) #8, !noalias !25 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.x, ptr %7, align 8, !tbaa !20, !alias.scope !25
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !7    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 5 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !19 ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 16
  call void @llvm.assume(i1 %i.ad)
  %i.ae = add nuw nsw i64 %i.ac, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(1) %i.z, i64 %i.ae, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.y, ptr %7, align 8, !tbaa !7, !alias.scope !25
  %i.af = load i64, ptr %i.z, align 8, !tbaa !24
  store i64 %i.af, ptr %i.x, align 8, !tbaa !24, !alias.scope !25
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !19
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ag = phi i64 [ %i.ac, %bb.f ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ag, ptr %i.ai, align 8, !tbaa !19, !alias.scope !25
  store ptr %i.z, ptr %i.w, align 8, !tbaa !7
  store i64 0, ptr %i.ah, align 8, !tbaa !19
  store i8 0, ptr %i.z, align 8, !tbaa !24
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 4, ptr %i.aj, align 8, !tbaa !28
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 1, ptr %i.ak, align 1, !tbaa !31
  store ptr %7, ptr %6, align 8, !tbaa !24
  %i.al = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #8
  %i.am = call noundef zeroext i1 @_ZN4llvh2cl6Option5errorERKNS_5TwineENS_9StringRefERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(145) %1, ptr noundef nonnull align 8 dereferenceable(18) %6, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(36) %i.al) #8
  %i.an = load ptr, ptr %7, align 8, !tbaa !7     ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.x
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %i.ap = load i64, ptr %i.x, align 8, !tbaa !24
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  %i.ar = load ptr, ptr %8, align 8, !tbaa !7     ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.j
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.at = load i64, ptr %i.j, align 8, !tbaa !24
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %.thread

select.unfold88:                                  ; preds = %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %bb.l, %bb.k, %bb.q, %bb.s, %.loopexit109
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %i.av = load ptr, ptr %4, align 8, !tbaa !7, !noalias !32
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !19, !noalias !32 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr %i.ay, ptr %11, align 8, !tbaa !20, !alias.scope !35
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store i64 0, ptr %i.az, align 8, !tbaa !19, !alias.scope !35
  store i8 0, ptr %i.ay, align 8, !tbaa !24, !alias.scope !35
  %i.ba = add i64 %i.ax, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.ba) #8
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !19, !alias.scope !35
  %i.bc = icmp eq i64 %i.bb, 4611686018427387903
  br i1 %i.bc, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i30

bb.g:                                             ; preds = %select.unfold88
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #9
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i30: ; preds = %select.unfold88
  %i.bd = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str, i64 noundef 1) #8 ; 0 uses
  %i.be = load i64, ptr %i.az, align 8, !tbaa !19, !alias.scope !35
  %i.bf = sub i64 4611686018427387903, %i.be
  %i.bg = icmp ult i64 %i.bf, %i.ax
  br i1 %i.bg, label %bb.h, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit31

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i30
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #9
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i30
  %i.bh = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %i.av, i64 noundef %i.ax) #8 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %i.bi = load i64, ptr %i.az, align 8, !tbaa !19, !noalias !38
  %i.bj = add i64 %i.bi, -4611686018427387865
  %i.bk = icmp ult i64 %i.bj, 39
  br i1 %i.bk, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i32

bb.i:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit31
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #9, !noalias !38
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i32: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit31
  %i.bl = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.1, i64 noundef 39) #8, !noalias !38 ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  store ptr %i.bm, ptr %10, align 8, !tbaa !20, !alias.scope !38
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !7  ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 5 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !19 ; 3 uses
  %i.bs = icmp ult i64 %i.br, 16
  call void @llvm.assume(i1 %i.bs)
  %i.bt = add nuw nsw i64 %i.br, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bm, ptr noundef nonnull align 8 dereferenceable(1) %i.bo, i64 %i.bt, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit36
end_hunk_0
begin_hunk_1_@_ZN2cl16MemorySizeParser5parseERN4llvh2cl6OptionENS1_9StringRefERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_10MemorySizeE:bb.a
  store ptr %i.bn, ptr %10, align 8, !tbaa !7, !alias.scope !38
  %i.bu = load i64, ptr %i.bo, align 8, !tbaa !24
  store i64 %i.bu, ptr %i.bm, align 8, !tbaa !24, !alias.scope !38
  %.phi.trans.insert.i34 = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.pre.i35 = load i64, ptr %.phi.trans.insert.i34, align 8, !tbaa !19
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit36

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit36: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  %i.bv = phi i64 [ %i.br, %bb.j ], [ %.pre.i35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33 ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.bv, ptr %i.bx, align 8, !tbaa !19, !alias.scope !38
  store ptr %i.bo, ptr %i.bl, align 8, !tbaa !7
  store i64 0, ptr %i.bw, align 8, !tbaa !19
  store i8 0, ptr %i.bo, align 8, !tbaa !24
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i8 4, ptr %i.by, align 8, !tbaa !28
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 17
  store i8 1, ptr %i.bz, align 1, !tbaa !31
  store ptr %10, ptr %9, align 8, !tbaa !24
  %i.ca = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #8
  %i.cb = call noundef zeroext i1 @_ZN4llvh2cl6Option5errorERKNS_5TwineENS_9StringRefERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(145) %1, ptr noundef nonnull align 8 dereferenceable(18) %9, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(36) %i.ca) #8
  %i.cc = load ptr, ptr %10, align 8, !tbaa !7    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.bm
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit36
  %i.ce = load i64, ptr %i.bm, align 8, !tbaa !24
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  %i.cg = load ptr, ptr %11, align 8, !tbaa !7    ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.ay
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
  %i.ci = load i64, ptr %i.ay, align 8, !tbaa !24
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  br label %.thread

.preheader:                                       ; preds = %.preheader.backedge, %.preheader.outer.peel.newph
  %i.ck = phi i1 [ %.be.peel, %.preheader.outer.peel.newph ], [ %.be, %.preheader.backedge ]
  %i.cl = phi i1 [ %.be98.peel, %.preheader.outer.peel.newph ], [ false, %.preheader.backedge ]
  %i.cm = phi i1 [ %.be99.peel, %.preheader.outer.peel.newph ], [ %.be99, %.preheader.backedge ]
  %i.cn = phi ptr [ %i.eh, %.preheader.outer.peel.newph ], [ %i.co, %.preheader.backedge ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 1 ; 2 uses
  store ptr %i.co, ptr %i.a, align 8, !tbaa !15
  %i.cp = load i8, ptr %i.cn, align 1, !tbaa !24
  switch i8 %i.cp, label %.loopexit [
    i8 0, label %.loopexit109
    i8 105, label %bb.k
    i8 98, label %bb.l
    i8 66, label %bb.l
    i8 103, label %select.unfold88
    i8 71, label %select.unfold88
    i8 109, label %select.unfold88
    i8 77, label %select.unfold88
    i8 107, label %select.unfold88
    i8 75, label %select.unfold88
  ]

.loopexit109:                                     ; preds = %.preheader
  br i1 %i.cm, label %select.unfold88, label %.thread

bb.k:                                             ; preds = %.preheader
  br i1 %i.cl, label %.preheader.backedge, label %select.unfold88

bb.l:                                             ; preds = %.preheader, %.preheader
  br i1 %i.ck, label %select.unfold88, label %.preheader.backedge

.loopexit:                                        ; preds = %.preheader.outer, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #8
  call void @llvm.experimental.noalias.scope.decl(metadata !41)
  %i.cq = load ptr, ptr %4, align 8, !tbaa !7, !noalias !41
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !19, !noalias !41 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  store ptr %i.ct, ptr %14, align 8, !tbaa !20, !alias.scope !44
  %i.cu = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  store i64 0, ptr %i.cu, align 8, !tbaa !19, !alias.scope !44
  store i8 0, ptr %i.ct, align 8, !tbaa !24, !alias.scope !44
  %i.cv = add i64 %i.cs, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef %i.cv) #8
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !19, !alias.scope !44
  %i.cx = icmp eq i64 %i.cw, 4611686018427387903
  br i1 %i.cx, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i43

bb.m:                                             ; preds = %.loopexit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #9
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i43: ; preds = %.loopexit
  %i.cy = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str, i64 noundef 1) #8 ; 0 uses
  %i.cz = load i64, ptr %i.cu, align 8, !tbaa !19, !alias.scope !44
  %i.da = sub i64 4611686018427387903, %i.cz
  %i.db = icmp ult i64 %i.da, %i.cs
  br i1 %i.db, label %bb.n, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit44

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i43
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #9
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i43
  %i.dc = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef %i.cq, i64 noundef %i.cs) #8 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.dd = load i64, ptr %i.cu, align 8, !tbaa !19, !noalias !47
  %i.de = add i64 %i.dd, -4611686018427387865
  %i.df = icmp ult i64 %i.de, 39
  br i1 %i.df, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i45

bb.o:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit44
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #9, !noalias !47
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i45: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit44
  %i.dg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.1, i64 noundef 39) #8, !noalias !47 ; 6 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  store ptr %i.dh, ptr %13, align 8, !tbaa !20, !alias.scope !47
  %i.di = load ptr, ptr %i.dg, align 8, !tbaa !7  ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 5 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i45
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !19 ; 3 uses
  %i.dn = icmp ult i64 %i.dm, 16
  call void @llvm.assume(i1 %i.dn)
  %i.do = add nuw nsw i64 %i.dm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dh, ptr noundef nonnull align 8 dereferenceable(1) %i.dj, i64 %i.do, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i45
  store ptr %i.di, ptr %13, align 8, !tbaa !7, !alias.scope !47
  %i.dp = load i64, ptr %i.dj, align 8, !tbaa !24
  store i64 %i.dp, ptr %i.dh, align 8, !tbaa !24, !alias.scope !47
  %.phi.trans.insert.i47 = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %.pre.i48 = load i64, ptr %.phi.trans.insert.i47, align 8, !tbaa !19
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit49

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit49: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
  %i.dq = phi i64 [ %i.dm, %bb.p ], [ %.pre.i48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ]
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.dq, ptr %i.ds, align 8, !tbaa !19, !alias.scope !47
  store ptr %i.dj, ptr %i.dg, align 8, !tbaa !7
  store i64 0, ptr %i.dr, align 8, !tbaa !19
  store i8 0, ptr %i.dj, align 8, !tbaa !24
  %i.dt = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i8 4, ptr %i.dt, align 8, !tbaa !28
  %i.du = getelementptr inbounds nuw i8, ptr %12, i64 17
  store i8 1, ptr %i.du, align 1, !tbaa !31
  store ptr %13, ptr %12, align 8, !tbaa !24
  %i.dv = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #8
  %i.dw = call noundef zeroext i1 @_ZN4llvh2cl6Option5errorERKNS_5TwineENS_9StringRefERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(145) %1, ptr noundef nonnull align 8 dereferenceable(18) %12, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(36) %i.dv) #8
  %i.dx = load ptr, ptr %13, align 8, !tbaa !7    ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.dh
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit49
  %i.dz = load i64, ptr %i.dh, align 8, !tbaa !24
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  %i.eb = load ptr, ptr %14, align 8, !tbaa !7    ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.ct
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %i.ed = load i64, ptr %i.ct, align 8, !tbaa !24
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  br label %.thread

.preheader.backedge:                              ; preds = %bb.k, %bb.l
  %.be = phi i1 [ false, %bb.k ], [ true, %bb.l ]
  %.be99 = phi i1 [ true, %bb.k ], [ false, %bb.l ]
  br label %.preheader, !llvm.loop !50

switch.lookup:                                    ; preds = %switch.hole_check.peel
  %i.ef = zext nneg i8 %switch.tableidx.peel to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN2cl16MemorySizeParser5parseERN4llvh2cl6OptionENS1_9StringRefERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_10MemorySizeE, i64 %i.ef
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext nneg i8 %switch.load to i32
  %i.eg = shl i32 %.ph97, %switch.ext             ; 2 uses
  store i32 %i.eg, ptr %5, align 4, !tbaa !13
  br label %.preheader.outer, !llvm.loop !53

.preheader.outer:                                 ; preds = %bb.a, %switch.lookup
  %.not.ph = phi i1 [ false, %switch.lookup ], [ true, %bb.a ]
  %.ph = phi i1 [ true, %switch.lookup ], [ false, %bb.a ]
  %.ph96 = phi ptr [ %i.eh, %switch.lookup ], [ %i.e, %bb.a ] ; 2 uses
  %.ph97 = phi i32 [ %i.eg, %switch.lookup ], [ %i.d, %bb.a ]
  %i.eh = getelementptr inbounds nuw i8, ptr %.ph96, i64 1 ; 3 uses
  store ptr %i.eh, ptr %i.a, align 8, !tbaa !15
  %i.ei = load i8, ptr %.ph96, align 1, !tbaa !24 ; 2 uses
  switch i8 %i.ei, label %.loopexit [
    i8 0, label %.thread
    i8 105, label %bb.s
    i8 98, label %.preheader.outer.peel.newph
    i8 66, label %.preheader.outer.peel.newph
    i8 103, label %bb.q
    i8 71, label %bb.q
    i8 109, label %bb.q
    i8 77, label %bb.q
    i8 107, label %bb.q
    i8 75, label %bb.q
  ]

bb.q:                                             ; preds = %.preheader.outer, %.preheader.outer, %.preheader.outer, %.preheader.outer, %.preheader.outer, %.preheader.outer
  br i1 %.not.ph, label %bb.r, label %select.unfold88

bb.r:                                             ; preds = %bb.q
  %switch.tableidx.peel = add i8 %i.ei, -71       ; 3 uses
  %i.ej = icmp ult i8 %switch.tableidx.peel, 39
  br i1 %i.ej, label %switch.hole_check.peel, label %.preheader.outer.peel.newph

switch.hole_check.peel:                           ; preds = %bb.r
  %switch.maskindex.peel = zext nneg i8 %switch.tableidx.peel to i64
  %switch.shifted.peel = lshr i64 347892351057, %switch.maskindex.peel
  %switch.lobit.peel = trunc i64 %switch.shifted.peel to i1
  br i1 %switch.lobit.peel, label %switch.lookup, label %.preheader.outer.peel.newph

bb.s:                                             ; preds = %.preheader.outer
  br i1 %.ph, label %.preheader.outer.peel.newph, label %select.unfold88

.preheader.outer.peel.newph:                      ; preds = %bb.r, %switch.hole_check.peel, %bb.s, %.preheader.outer, %.preheader.outer
  %.be.peel = phi i1 [ false, %switch.hole_check.peel ], [ false, %bb.r ], [ false, %bb.s ], [ true, %.preheader.outer ], [ true, %.preheader.outer ]
  %.be98.peel = phi i1 [ true, %switch.hole_check.peel ], [ true, %bb.r ], [ false, %bb.s ], [ false, %.preheader.outer ], [ false, %.preheader.outer ]
  %.be99.peel = phi i1 [ false, %switch.hole_check.peel ], [ false, %bb.r ], [ true, %bb.s ], [ false, %.preheader.outer ], [ false, %.preheader.outer ]
  br label %.preheader

.thread:                                          ; preds = %.preheader.outer, %.loopexit109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %.3 = phi i1 [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ], [ %i.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ], [ %i.dw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ], [ false, %.loopexit109 ], [ false, %.preheader.outer ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i1 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4llvh2cl6Option5errorERKNS_5TwineENS_9StringRefERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(145), ptr noundef nonnull align 8 dereferenceable(18), ptr, i64, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !10, i64 0}
!8 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0, !12, i64 8, !5, i64 16}
!9 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!14, !4, i64 0}
!14 = !{!"_ZTSN2cl10MemorySizeE", !4, i64 0}
!15 = !{!10, !10, i64 0}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!18 = distinct !{!18, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!19 = !{!8, !12, i64 8}
!20 = !{!9, !10, i64 0}
!21 = !{!22, !17}
!22 = distinct !{!22, !23, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!23 = distinct !{!23, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!24 = !{!5, !5, i64 0}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!27 = distinct !{!27, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!28 = !{!29, !30, i64 16}
!29 = !{!"_ZTSN4llvh5TwineE", !5, i64 0, !5, i64 8, !30, i64 16, !30, i64 17}
!30 = !{!"_ZTSN4llvh5Twine8NodeKindE", !5, i64 0}
!31 = !{!29, !30, i64 17}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!34 = distinct !{!34, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!35 = !{!36, !33}
!36 = distinct !{!36, !37, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!37 = distinct !{!37, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!40 = distinct !{!40, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!43 = distinct !{!43, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!44 = !{!45, !42}
!45 = distinct !{!45, !46, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!46 = distinct !{!46, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!47 = !{!48}
!48 = distinct !{!48, !49, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!49 = distinct !{!49, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!50 = distinct !{!50, !51, !52}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"llvm.loop.peeled.count", i32 1}
!53 = distinct !{!53, !51}
end_hunk_1
