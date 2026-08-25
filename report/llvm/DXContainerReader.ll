Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DXContainerReader?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvm::Expected" = type <{ %union.anon, i8, [7 x i8] }>
%union.anon = type { %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.llvm::object::content_iterator" = type { %"class.llvm::object::SectionRef" }
%"class.llvm::object::SectionRef" = type { %"union.llvm::object::DataRefImpl", ptr }
%"union.llvm::object::DataRefImpl" = type { i64 }
%"class.llvm::Expected.125" = type <{ %union.anon.126, i8, [7 x i8] }>
%union.anon.126 = type { %"class.llvm::StringRef" }
%"class.llvm::StringRef" = type { ptr, i64 }
%"class.llvm::Expected.128" = type <{ %union.anon.129, i8, [7 x i8] }>
%union.anon.129 = type { %"class.llvm::ArrayRef" }
%"class.llvm::ArrayRef" = type { ptr, i64 }
%"struct.llvm::objcopy::dxbc::Part" = type { %"class.llvm::StringRef", %"class.llvm::ArrayRef" }

$_ZN4llvm23SmallVectorTemplateBaseINS_7objcopy4dxbc4PartELb1EE15growAndPushBackERKS3_ = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm7objcopy4dxbc17DXContainerReader6createEv(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::object::content_iterator", align 8 ; 7 uses
  %3 = alloca %"class.llvm::Expected.125", align 8 ; 9 uses
  %4 = alloca %"class.llvm::Expected.128", align 8 ; 8 uses
  %5 = alloca %"struct.llvm::objcopy::dxbc::Part", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #8, !noalias !8 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.a, i8 0, i64 80, i1 false), !noalias !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !11, !noalias !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 44 ; 2 uses
  store i32 1, ptr %i.d, align 4, !tbaa !14, !noalias !8
  %i.e = load ptr, ptr %1, align 8, !tbaa !15, !nonnull !18, !align !19 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !tbaa.struct !20
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !25, !noalias !27
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.i = load ptr, ptr %i.h, align 8, !noalias !27
  %i.j = tail call { i64, ptr } %i.i(ptr noundef nonnull align 8 dereferenceable(48) %i.e) #9, !noalias !27, !inline_history !30 ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.j, 0        ; 3 uses
  %i.l = extractvalue { i64, ptr } %i.j, 1        ; 2 uses
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !25, !noalias !27
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 360
  %i.o = load ptr, ptr %i.n, align 8, !noalias !27
  %i.p = tail call { i64, ptr } %i.o(ptr noundef nonnull align 8 dereferenceable(48) %i.e) #9, !noalias !27, !inline_history !30 ; 2 uses
  %i.q = extractvalue { i64, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { i64, ptr } %i.p, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  store i64 %i.k, ptr %2, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store ptr %i.l, ptr %i.s, align 8
  %i.t = icmp ne ptr %i.l, %i.r
  %.not.i.i.i.i67 = icmp ne i64 %i.k, %i.q
  %.not2.i68 = select i1 %i.t, i1 true, i1 %.not.i.i.i.i67
  br i1 %.not2.i68, label %.lr.ph, label %..thread_crit_edge84

..thread_crit_edge84:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre85 = load i8, ptr %.phi.trans.insert, align 8
  br label %.thread

.lr.ph:                                           ; preds = %bb.a
  %.promoted = load ptr, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  %.promoted70 = load i8, ptr %i.w, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %i.z = phi i8 [ %.promoted70, %.lr.ph ], [ %i.bb, %bb.h ] ; 3 uses
  %lhsv.i.i.i.i69 = phi i64 [ %i.k, %.lr.ph ], [ %lhsv.i.i.i.i, %bb.h ] ; 2 uses
  %i.aa = phi ptr [ %.promoted, %.lr.ph ], [ %i.bc, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.ab = load ptr, ptr %1, align 8, !tbaa !15, !nonnull !18, !align !19 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !25
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.125") align 8 %3, ptr noundef nonnull align 8 dereferenceable(1448) %i.ab, i64 %lhsv.i.i.i.i69) #9
  %i.af = load i8, ptr %i.u, align 8, !noalias !31
  %i.ag = trunc i8 %i.af to i1
  br i1 %i.ag, label %_ZN4llvm8ExpectedINS_9StringRefEE9takeErrorEv.exit, label %_ZN4llvm5ErrorD2Ev.exit28

_ZN4llvm8ExpectedINS_9StringRefEE9takeErrorEv.exit: ; preds = %bb.b
  %i.ah = load i64, ptr %3, align 8, !tbaa !34, !noalias !31 ; 2 uses
  store ptr null, ptr %3, align 8, !tbaa !34, !noalias !31
  %.not = icmp eq i64 %i.ah, 0
  br i1 %.not, label %_ZN4llvm5ErrorD2Ev.exit28, label %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit

_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit:       ; preds = %_ZN4llvm8ExpectedINS_9StringRefEE9takeErrorEv.exit
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = or i8 %i.z, 1
  store i8 %i.aj, ptr %i.w, align 8
  store ptr %i.ai, ptr %0, align 8, !tbaa !34, !alias.scope !36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.i

_ZN4llvm5ErrorD2Ev.exit28:                        ; preds = %bb.b, %_ZN4llvm8ExpectedINS_9StringRefEE9takeErrorEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.ak = load ptr, ptr %1, align 8, !tbaa !15, !nonnull !18, !align !19 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !25
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 176
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.128") align 8 %4, ptr noundef nonnull align 8 dereferenceable(1448) %i.ak, i64 %lhsv.i.i.i.i69) #9
  %i.ao = load i8, ptr %i.v, align 8, !noalias !39 ; 3 uses
  %i.ap = trunc i8 %i.ao to i1
  br i1 %i.ap, label %_ZN4llvm8ExpectedINS_8ArrayRefIhEEE9takeErrorEv.exit, label %_ZN4llvm5ErrorD2Ev.exit32

_ZN4llvm8ExpectedINS_8ArrayRefIhEEE9takeErrorEv.exit: ; preds = %_ZN4llvm5ErrorD2Ev.exit28
  %i.aq = load i64, ptr %4, align 8, !tbaa !34, !noalias !39 ; 2 uses
  store ptr null, ptr %4, align 8, !tbaa !34, !noalias !39
  %.not60 = icmp eq i64 %i.aq, 0
  br i1 %.not60, label %_ZN4llvm5ErrorD2Ev.exit32, label %_ZN4llvm5ErrorD2Ev.exit31

_ZN4llvm5ErrorD2Ev.exit31:                        ; preds = %_ZN4llvm8ExpectedINS_8ArrayRefIhEEE9takeErrorEv.exit
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = or i8 %i.z, 1
  br label %bb.e

_ZN4llvm5ErrorD2Ev.exit32:                        ; preds = %_ZN4llvm5ErrorD2Ev.exit28, %_ZN4llvm8ExpectedINS_8ArrayRefIhEEE9takeErrorEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !42
  %i.at = load i32, ptr %i.y, align 8, !tbaa !47  ; 2 uses
  %i.au = load i32, ptr %i.d, align 4, !tbaa !14
  %.not.i = icmp ult i32 %i.at, %i.au
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !48

bb.c:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit32
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7objcopy4dxbc4PartELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %5)
  %.pre.pre = load i8, ptr %i.v, align 8
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7objcopy4dxbc4PartELb1EE9push_backERKS3_.exit

bb.d:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit32
  %i.av = zext i32 %i.at to i64
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.aw, i64 %i.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  %i.ay = load i32, ptr %i.y, align 8, !tbaa !47
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr %i.y, align 8, !tbaa !47
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7objcopy4dxbc4PartELb1EE9push_backERKS3_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_7objcopy4dxbc4PartELb1EE9push_backERKS3_.exit: ; preds = %bb.c, %bb.d
  %.pre = phi i8 [ %.pre.pre, %bb.c ], [ %i.ao, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit31, %_ZN4llvm23SmallVectorTemplateBaseINS_7objcopy4dxbc4PartELb1EE9push_backERKS3_.exit
  %i.ba = phi i8 [ %i.ao, %_ZN4llvm5ErrorD2Ev.exit31 ], [ %.pre, %_ZN4llvm23SmallVectorTemplateBaseINS_7objcopy4dxbc4PartELb1EE9push_backERKS3_.exit ]
  %i.bb = phi i8 [ %i.as, %_ZN4llvm5ErrorD2Ev.exit31 ], [ %i.z, %_ZN4llvm23SmallVectorTemplateBaseINS_7objcopy4dxbc4PartELb1EE9push_backERKS3_.exit ] ; 3 uses
  %i.bc = phi ptr [ %i.ar, %_ZN4llvm5ErrorD2Ev.exit31 ], [ %i.aa, %_ZN4llvm23SmallVectorTemplateBaseINS_7objcopy4dxbc4PartELb1EE9push_backERKS3_.exit ] ; 2 uses
  %i.bd = phi i1 [ false, %_ZN4llvm5ErrorD2Ev.exit31 ], [ true, %_ZN4llvm23SmallVectorTemplateBaseINS_7objcopy4dxbc4PartELb1EE9push_backERKS3_.exit ]
  %i.be = trunc i8 %i.ba to i1
  br i1 %i.be, label %bb.f, label %_ZN4llvm8ExpectedINS_8ArrayRefIhEEED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.bf = load ptr, ptr %4, align 8, !tbaa !34    ; 3 uses
  %.not.i.i34 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i34, label %_ZN4llvm8ExpectedINS_8ArrayRefIhEEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i35

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i35: ; preds = %bb.f
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !25
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %i.bf) #9, !inline_history !49
  br label %_ZN4llvm8ExpectedINS_8ArrayRefIhEEED2Ev.exit

_ZN4llvm8ExpectedINS_8ArrayRefIhEEED2Ev.exit:     ; preds = %bb.e, %bb.f, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %i.bj = load i8, ptr %i.u, align 8
  %i.bk = trunc i8 %i.bj to i1
  br i1 %i.bk, label %bb.g, label %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit39

bb.g:                                             ; preds = %_ZN4llvm8ExpectedINS_8ArrayRefIhEEED2Ev.exit
  %i.bl = load ptr, ptr %3, align 8, !tbaa !34    ; 3 uses
  %.not.i.i37 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i37, label %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit39, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i38

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i38: ; preds = %bb.g
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !25
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %i.bl) #9, !inline_history !50
  br label %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit39

_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit39:     ; preds = %_ZN4llvm8ExpectedINS_8ArrayRefIhEEED2Ev.exit, %bb.g, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br i1 %i.bd, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit39
  %i.bp = load ptr, ptr %i.s, align 8, !tbaa !51  ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !25
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 136
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(48) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %2) #9, !inline_history !54
  %i.bt = load ptr, ptr %i.s, align 8, !tbaa !51
  %i.bu = icmp ne ptr %i.bt, %i.r
  %lhsv.i.i.i.i = load i64, ptr %2, align 8       ; 2 uses
  %.not.i.i.i.i = icmp ne i64 %lhsv.i.i.i.i, %i.q
  %.not2.i = select i1 %i.bu, i1 true, i1 %.not.i.i.i.i
  br i1 %.not2.i, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.h, %..thread_crit_edge84
  %i.bv = phi i8 [ %.pre85, %..thread_crit_edge84 ], [ %i.bb, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bx = and i8 %i.bv, -2
  store i8 %i.bx, ptr %i.bw, align 8
  %i.by = ptrtoint ptr %i.a to i64
  store i64 %i.by, ptr %0, align 8, !tbaa !55
  br label %_ZNSt10unique_ptrIN4llvm7objcopy4dxbc6ObjectESt14default_deleteIS3_EED2Ev.exit

.loopexit:                                        ; preds = %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit39
  store i8 %i.bb, ptr %i.w, align 8
  store ptr %i.bc, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  %i.bz = load ptr, ptr %i.b, align 8, !tbaa !11  ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.c
  br i1 %i.ca, label %_ZNKSt14default_deleteIN4llvm7objcopy4dxbc6ObjectEEclEPS3_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef %i.bz) #9
  br label %_ZNKSt14default_deleteIN4llvm7objcopy4dxbc6ObjectEEclEPS3_.exit.i

_ZNKSt14default_deleteIN4llvm7objcopy4dxbc6ObjectEEclEPS3_.exit.i: ; preds = %bb.j, %bb.i
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #10
  br label %_ZNSt10unique_ptrIN4llvm7objcopy4dxbc6ObjectESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm7objcopy4dxbc6ObjectESt14default_deleteIS3_EED2Ev.exit: ; preds = %.thread, %_ZNKSt14default_deleteIN4llvm7objcopy4dxbc6ObjectEEclEPS3_.exit.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_7objcopy4dxbc4PartELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %2 = alloca %"struct.llvm::objcopy::dxbc::Part", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !57
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !47
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 32) #9
  %i.f = load ptr, ptr %0, align 8, !tbaa !11
  %i.g = load i32, ptr %i.a, align 8, !tbaa !47
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.j = load i32, ptr %i.a, align 8, !tbaa !47
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { builtin nounwind allocsize(0) }
attributes #9 = { nounwind }
attributes #10 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZSt11make_uniqueIN4llvm7objcopy4dxbc6ObjectEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!10 = distinct !{!10, !"_ZSt11make_uniqueIN4llvm7objcopy4dxbc6ObjectEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!11 = !{!12, !13, i64 0}
!12 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !13, i64 0, !5, i64 8, !5, i64 12}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!12, !5, i64 12}
!15 = !{!16, !17, i64 0}
!16 = !{!"_ZTSN4llvm7objcopy4dxbc17DXContainerReaderE", !17, i64 0}
!17 = !{!"p1 _ZTSN4llvm6object21DXContainerObjectFileE", !13, i64 0}
!18 = !{}
!19 = !{i64 8}
!20 = !{i64 0, i64 4, !21, i64 4, i64 16, !21, i64 20, i64 2, !22, i64 22, i64 2, !22, i64 24, i64 4, !24, i64 28, i64 4, !24}
!21 = !{!6, !6, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"short", !6, i64 0}
!24 = !{!5, !5, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"vtable pointer", !7, i64 0}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_ZNK4llvm6object10ObjectFile8sectionsEv: argument 0"}
!29 = distinct !{!29, !"_ZNK4llvm6object10ObjectFile8sectionsEv"}
!30 = distinct !{null}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZN4llvm8ExpectedINS_9StringRefEE9takeErrorEv: argument 0"}
!33 = distinct !{!33, !"_ZN4llvm8ExpectedINS_9StringRefEE9takeErrorEv"}
!34 = !{!35, !35, i64 0}
!35 = !{!"p1 _ZTSN4llvm13ErrorInfoBaseE", !13, i64 0}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZN4llvm5Error11takePayloadEv: argument 0"}
!38 = distinct !{!38, !"_ZN4llvm5Error11takePayloadEv"}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_ZN4llvm8ExpectedINS_8ArrayRefIhEEE9takeErrorEv: argument 0"}
!41 = distinct !{!41, !"_ZN4llvm8ExpectedINS_8ArrayRefIhEEE9takeErrorEv"}
!42 = !{i64 0, i64 8, !43, i64 8, i64 8, !45}
!43 = !{!44, !44, i64 0}
!44 = !{!"p1 omnipotent char", !13, i64 0}
!45 = !{!46, !46, i64 0}
!46 = !{!"long", !6, i64 0}
!47 = !{!12, !5, i64 8}
!48 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!49 = distinct !{null, null, null}
!50 = distinct !{null, null, null}
!51 = !{!52, !53, i64 8}
!52 = !{!"_ZTSN4llvm6object10SectionRefE", !6, i64 0, !53, i64 8}
!53 = !{!"p1 _ZTSN4llvm6object10ObjectFileE", !13, i64 0}
!54 = distinct !{null, null}
!55 = !{!56, !56, i64 0}
!56 = !{!"p1 _ZTSN4llvm7objcopy4dxbc6ObjectE", !13, i64 0}
!57 = !{i64 0, i64 8, !43, i64 8, i64 8, !45, i64 16, i64 8, !43, i64 24, i64 8, !45}
end_hunk_0
