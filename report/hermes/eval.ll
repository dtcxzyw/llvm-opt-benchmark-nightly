inline.NumInlined: 328
inline.NumDeleted: 252
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.hermes::vm::PinnedHermesValue" = type { %"class.hermes::vm::HermesValue" }
%"class.hermes::vm::HermesValue" = type { i64 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.hermes::vm::StringView" = type { %union.anon.147, i32, i32 }
%union.anon.147 = type { ptr }
%"class.hermes::vm::SmallXString" = type { %"class.llvh::SmallVector.150" }
%"class.llvh::SmallVector.150" = type { %"class.llvh::SmallVectorImpl.151", %"struct.llvh::SmallVectorStorage.154" }
%"class.llvh::SmallVectorImpl.151" = type { %"class.llvh::SmallVectorTemplateBase.152" }
%"class.llvh::SmallVectorTemplateBase.152" = type { %"class.llvh::SmallVectorTemplateCommon.153" }
%"class.llvh::SmallVectorTemplateCommon.153" = type { %"class.llvh::SmallVectorBase" }
%"class.llvh::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvh::SmallVectorStorage.154" = type { [4 x %"struct.llvh::AlignedCharArrayUnion.155"] }
%"struct.llvh::AlignedCharArrayUnion.155" = type { %"struct.llvh::AlignedCharArray.156" }
%"struct.llvh::AlignedCharArray.156" = type { [2 x i8] }
%"class.hermes::vm::GCScope" = type <{ ptr, ptr, [128 x i8], %"class.llvh::SmallVector.164", ptr, ptr, i32, [4 x i8] }>
%"class.llvh::SmallVector.164" = type { %"class.llvh::SmallVectorImpl.165", %"struct.llvh::SmallVectorStorage.168" }
%"class.llvh::SmallVectorImpl.165" = type { %"class.llvh::SmallVectorTemplateBase.166" }
%"class.llvh::SmallVectorTemplateBase.166" = type { %"class.llvh::SmallVectorTemplateCommon.167" }
%"class.llvh::SmallVectorTemplateCommon.167" = type { %"class.llvh::SmallVectorBase" }
%"struct.llvh::SmallVectorStorage.168" = type { [4 x %"struct.llvh::AlignedCharArrayUnion.169"] }
%"struct.llvh::AlignedCharArrayUnion.169" = type { %"struct.llvh::AlignedCharArray.149" }
%"struct.llvh::AlignedCharArray.149" = type { [8 x i8] }

@_ZN6hermes2vm15HandleRootOwner12nullPointer_E = external global %"class.hermes::vm::PinnedHermesValue", align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm17evalInEnvironmentERNS0_7RuntimeEN4llvh9StringRefENS0_6HandleINS0_11EnvironmentEEERKNS_10ScopeChainENS5_INS0_11HermesValueEEEbb(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, i64 %2, ptr readnone captures(none) %3, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(24) %4, ptr readnone captures(none) %5, i1 noundef zeroext %6, i1 noundef zeroext %7) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_ZN6hermes2vm7Runtime20raiseEvalUnsupportedEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, i64 %2) #8
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %i.a, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 undef, 1
  ret { i32, i64 } %.fca.1.insert
}

declare noundef i32 @_ZN6hermes2vm7Runtime20raiseEvalUnsupportedEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm10directEvalERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEERKNS_10ScopeChainEbb(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, ptr nonnull readnone align 8 captures(none) %2, i1 zeroext %3, i1 zeroext %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.hermes::vm::StringView", align 8 ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.hermes::vm::SmallXString", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.b, ptr %5, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i64 0, ptr %i.c, align 8, !tbaa !11
  store i8 0, ptr %i.b, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.d = call { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1) #8 ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0        ; 5 uses
  store ptr %i.e, ptr %6, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.g = extractvalue { ptr, i64 } %i.d, 1        ; 5 uses
  store i64 %i.g, ptr %i.f, align 8
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  %i.j = lshr i64 %i.g, 32                        ; 3 uses
  br i1 %i.i, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  %i.k = and i32 %i.h, 1073741824
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !15
  %i.l = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 281474976710655
  %i.m = inttoptr i64 %i.l to ptr                 ; 5 uses
  %9 = load i32, ptr %i.m, align 4                ; 2 uses
  %i.n = icmp ugt i32 %9, 150994943
  br i1 %i.n, label %bb.d, label %bb.e, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !17
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %.mask.i.i.i.i.i.i.i.i.i.i = and i32 %9, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i, label %bb.h [
    i32 134217728, label %bb.f
    i32 67108864, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i = load i64, ptr %i.s, align 8, !tbaa !15
  %i.t = and i64 %.sroa.0.0.copyload.i.i.i2.i.i, 281474976710655
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !17
  br label %bb.j

bb.i:                                             ; preds = %bb.b
  %i.x = and i64 %i.g, 1073741823                 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.x
  br label %_ZNK6hermes2vm10StringView3endEv.exit

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.d
  %.0.i.sink.i.i.ph = phi ptr [ %i.w, %bb.h ], [ %i.r, %bb.g ], [ %i.q, %bb.f ], [ %i.p, %bb.d ]
  %i.z = and i64 %i.g, 1073741823                 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i.ph, i64 %i.z ; 4 uses
  %.sroa.0.0.copyload.i.i.i.i.i25 = load i64, ptr %i.e, align 8, !tbaa !15
  %i.ab = and i64 %.sroa.0.0.copyload.i.i.i.i.i25, 281474976710655
  %i.ac = inttoptr i64 %i.ab to ptr               ; 5 uses
  %10 = load i32, ptr %i.ac, align 4              ; 2 uses
  %i.ad = icmp ugt i32 %10, 150994943
  br i1 %i.ad, label %bb.k, label %bb.l, !prof !16

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !17
  br label %_ZNK6hermes2vm10StringView3endEv.exit

bb.l:                                             ; preds = %bb.j
  %.mask.i.i.i.i.i.i.i.i.i.i26 = and i32 %10, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i26, label %bb.o [
    i32 134217728, label %bb.m
    i32 67108864, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  br label %_ZNK6hermes2vm10StringView3endEv.exit

bb.n:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  br label %_ZNK6hermes2vm10StringView3endEv.exit

bb.o:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i29 = load i64, ptr %i.ai, align 8, !tbaa !15
  %i.aj = and i64 %.sroa.0.0.copyload.i.i.i2.i.i29, 281474976710655
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !17
  br label %_ZNK6hermes2vm10StringView3endEv.exit

_ZNK6hermes2vm10StringView3endEv.exit:            ; preds = %bb.i, %bb.k, %bb.m, %bb.n, %bb.o
  %i.an = phi ptr [ %i.y, %bb.i ], [ %i.aa, %bb.k ], [ %i.aa, %bb.m ], [ %i.aa, %bb.n ], [ %i.aa, %bb.o ] ; 9 uses
  %i.ao = phi i64 [ %i.x, %bb.i ], [ %i.z, %bb.k ], [ %i.z, %bb.m ], [ %i.z, %bb.n ], [ %i.z, %bb.o ] ; 3 uses
  %.0.i.sink.i.i28 = phi ptr [ %i.e, %bb.i ], [ %i.af, %bb.k ], [ %i.ag, %bb.m ], [ %i.ah, %bb.n ], [ %i.am, %bb.o ] ; 3 uses
  %.0.i.sink.i.i2858 = ptrtoint ptr %.0.i.sink.i.i28 to i64 ; 2 uses
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i28, i64 %i.ao
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.j ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
  store ptr %i.as, ptr %7, align 8, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 7 uses
  store i64 0, ptr %i.at, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %.not.i.i.i = icmp eq ptr %.0.i.sink.i.i28, null
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aw = sub i64 %i.au, %i.av
  %.0.i.i.i = select i1 %.not.i.i.i, i64 0, i64 %i.aw ; 2 uses
  store i64 %.0.i.i.i, ptr %i.a, align 8, !tbaa !15
  %i.ax = icmp ugt i64 %.0.i.i.i, 15
  br i1 %i.ax, label %bb.p, label %_ZNK6hermes2vm10StringView14const_iteratormiERKS2_.exit._crit_edge.i.i

bb.p:                                             ; preds = %_ZNK6hermes2vm10StringView3endEv.exit
  %i.ay = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #8 ; 2 uses
  store ptr %i.ay, ptr %7, align 8, !tbaa !17
  %i.az = load i64, ptr %i.a, align 8, !tbaa !15
  store i64 %i.az, ptr %i.as, align 8, !tbaa !14
  br label %_ZNK6hermes2vm10StringView14const_iteratormiERKS2_.exit._crit_edge.i.i

_ZNK6hermes2vm10StringView14const_iteratormiERKS2_.exit._crit_edge.i.i: ; preds = %bb.p, %_ZNK6hermes2vm10StringView3endEv.exit
  %i.ba = phi ptr [ %i.ay, %bb.p ], [ %i.as, %_ZNK6hermes2vm10StringView3endEv.exit ] ; 6 uses
  %.not.i.i.i.i.i53 = icmp eq ptr %i.an, null
  %.not.i11.i.i54 = icmp eq ptr %i.an, %i.ar
  %or.cond55 = select i1 %.not.i.i.i.i.i53, i1 true, i1 %.not.i11.i.i54
  br i1 %or.cond55, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN6hermes2vm10StringView14const_iteratorEvEET_SA_RKS3_.exit, label %iter.check

iter.check:                                       ; preds = %_ZNK6hermes2vm10StringView14const_iteratormiERKS2_.exit._crit_edge.i.i
  %i.bb = ptrtoaddr ptr %i.ba to i64
  %i.bc = add i64 %i.j, %.0.i.sink.i.i2858
  %i.bd = add i64 %i.bc, %i.ao
  %i.be = sub i64 %i.ap, %i.bd
  %i.bf = call i64 @llvm.umax.i64(i64 %i.ap, i64 %i.be)
  %i.bg = sub i64 0, %i.bf                        ; 7 uses
  %min.iters.check = icmp ult i64 %i.bg, 4
  %i.bh = sub i64 %i.bb, %i.av
  %diff.check = icmp ult i64 %i.bh, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check59 = icmp ult i64 %i.bg, 32
  br i1 %min.iters.check59, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bg, 28
  %n.vec = and i64 %i.bg, -32                     ; 5 uses
  %i.bi = getelementptr i8, ptr %i.ba, i64 %n.vec
  %i.bj = getelementptr i8, ptr %i.an, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ba, i64 %index ; 2 uses
  %next.gep60 = getelementptr i8, ptr %i.an, i64 %index ; 2 uses
  %i.bk = getelementptr i8, ptr %next.gep60, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep60, align 1, !tbaa !14
  %wide.load61 = load <16 x i8>, ptr %i.bk, align 1, !tbaa !14
  %i.bl = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !14
  store <16 x i8> %wide.load61, ptr %i.bl, align 1, !tbaa !14
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bg
  br i1 %cmp.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN6hermes2vm10StringView14const_iteratorEvEET_SA_RKS3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.preheader, label %vec.epilog.ph, !prof !22

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec64 = and i64 %i.bg, -4                    ; 4 uses
  %i.bn = getelementptr i8, ptr %i.ba, i64 %n.vec64
  %i.bo = getelementptr i8, ptr %i.an, i64 %n.vec64
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index65 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next69, %vec.epilog.vector.body ] ; 3 uses
  %next.gep66 = getelementptr i8, ptr %i.ba, i64 %index65
  %next.gep67 = getelementptr i8, ptr %i.an, i64 %index65
  %wide.load68 = load <4 x i8>, ptr %next.gep67, align 1, !tbaa !14
  store <4 x i8> %wide.load68, ptr %next.gep66, align 1, !tbaa !14
  %index.next69 = add nuw i64 %index65, 4         ; 2 uses
  %i.bp = icmp eq i64 %index.next69, %n.vec64
  br i1 %i.bp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !23

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n70 = icmp eq i64 %n.vec64, %i.bg
  br i1 %cmp.n70, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN6hermes2vm10StringView14const_iteratorEvEET_SA_RKS3_.exit, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.preheader

_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0.i10.i.i57.ph = phi ptr [ %i.ba, %iter.check ], [ %i.bi, %vec.epilog.iter.check ], [ %i.bn, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.03.0.i.i.i56.ph = phi ptr [ %i.an, %iter.check ], [ %i.bj, %vec.epilog.iter.check ], [ %i.bo, %vec.epilog.middle.block ] ; 3 uses
  %i.bq = add i64 %i.j, %.0.i.sink.i.i2858
  %i.br = add i64 %i.bq, %i.ao                    ; 2 uses
  %.sroa.03.0.i.i.i56.ph73 = ptrtoint ptr %.sroa.03.0.i.i.i56.ph to i64 ; 2 uses
  %i.bs = sub i64 %i.br, %.sroa.03.0.i.i.i56.ph73
  %xtraiter = and i64 %i.bs, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.prol.loopexit, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.prol

_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.prol: ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.preheader, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.prol
  %.0.i10.i.i57.prol = phi ptr [ %i.bv, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.prol ], [ %.0.i10.i.i57.ph, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.preheader ] ; 2 uses
  %.sroa.03.0.i.i.i56.prol = phi ptr [ %i.bu, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.prol ], [ %.sroa.03.0.i.i.i56.ph, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.prol ], [ 0, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.preheader ]
  %i.bt = load i8, ptr %.sroa.03.0.i.i.i56.prol, align 1, !tbaa !14
  store i8 %i.bt, ptr %.0.i10.i.i57.prol, align 1, !tbaa !14
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i56.prol, i64 1 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i10.i.i57.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.prol.loopexit, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.prol, !llvm.loop !24

_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.prol.loopexit: ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.prol, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.preheader
  %.0.i10.i.i57.unr = phi ptr [ %.0.i10.i.i57.ph, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.preheader ], [ %i.bv, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.prol ]
  %.sroa.03.0.i.i.i56.unr = phi ptr [ %.sroa.03.0.i.i.i56.ph, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.preheader ], [ %i.bu, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.prol ]
  %i.bw = sub i64 %.sroa.03.0.i.i.i56.ph73, %i.br
  %i.bx = icmp ugt i64 %i.bw, -8
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN6hermes2vm10StringView14const_iteratorEvEET_SA_RKS3_.exit, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i

_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i: ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.prol.loopexit, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i
  %.0.i10.i.i57 = phi ptr [ %i.cv, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i ], [ %.0.i10.i.i57.unr, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.prol.loopexit ] ; 9 uses
  %.sroa.03.0.i.i.i56 = phi ptr [ %i.cu, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i ], [ %.sroa.03.0.i.i.i56.unr, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.prol.loopexit ] ; 9 uses
  %i.by = load i8, ptr %.sroa.03.0.i.i.i56, align 1, !tbaa !14
  store i8 %i.by, ptr %.0.i10.i.i57, align 1, !tbaa !14
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i56, i64 1
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i10.i.i57, i64 1
  %i.cb = load i8, ptr %i.bz, align 1, !tbaa !14
  store i8 %i.cb, ptr %i.ca, align 1, !tbaa !14
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i56, i64 2
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i10.i.i57, i64 2
  %i.ce = load i8, ptr %i.cc, align 1, !tbaa !14
  store i8 %i.ce, ptr %i.cd, align 1, !tbaa !14
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i56, i64 3
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i10.i.i57, i64 3
  %i.ch = load i8, ptr %i.cf, align 1, !tbaa !14
  store i8 %i.ch, ptr %i.cg, align 1, !tbaa !14
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i56, i64 4
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i10.i.i57, i64 4
  %i.ck = load i8, ptr %i.ci, align 1, !tbaa !14
  store i8 %i.ck, ptr %i.cj, align 1, !tbaa !14
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i56, i64 5
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i10.i.i57, i64 5
  %i.cn = load i8, ptr %i.cl, align 1, !tbaa !14
  store i8 %i.cn, ptr %i.cm, align 1, !tbaa !14
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i56, i64 6
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i10.i.i57, i64 6
  %i.cq = load i8, ptr %i.co, align 1, !tbaa !14
  store i8 %i.cq, ptr %i.cp, align 1, !tbaa !14
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i56, i64 7
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i10.i.i57, i64 7
  %i.ct = load i8, ptr %i.cr, align 1, !tbaa !14
  store i8 %i.ct, ptr %i.cs, align 1, !tbaa !14
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i56, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i10.i.i57, i64 8
  %.not.i11.i.i.7 = icmp eq ptr %i.cu, %i.ar
  br i1 %.not.i11.i.i.7, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN6hermes2vm10StringView14const_iteratorEvEET_SA_RKS3_.exit, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i, !llvm.loop !26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN6hermes2vm10StringView14const_iteratorEvEET_SA_RKS3_.exit: ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.prol.loopexit, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNK6hermes2vm10StringView14const_iteratormiERKS2_.exit._crit_edge.i.i
  %i.cw = load i64, ptr %i.a, align 8, !tbaa !15  ; 2 uses
  store i64 %i.cw, ptr %i.at, align 8, !tbaa !11
  %i.cx = load ptr, ptr %7, align 8, !tbaa !17
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cw
  store i8 0, ptr %i.cy, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.cz = load ptr, ptr %5, align 8, !tbaa !17    ; 6 uses
  %i.da = icmp eq ptr %i.cz, %i.b
  %i.db = load ptr, ptr %7, align 8, !tbaa !17    ; 5 uses
  %i.dc = icmp eq ptr %i.db, %i.as                ; 2 uses
  br i1 %i.da, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN6hermes2vm10StringView14const_iteratorEvEET_SA_RKS3_.exit
  br i1 %i.dc, label %bb.q, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN6hermes2vm10StringView14const_iteratorEvEET_SA_RKS3_.exit
  br i1 %i.dc, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dd = load i64, ptr %i.at, align 8, !tbaa !11 ; 3 uses
  %i.de = icmp ult i64 %i.dd, 16
  call void @llvm.assume(i1 %i.de)
  switch i64 %i.dd, label %bb.s [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.df = load i8, ptr %i.db, align 1, !tbaa !14
  store i8 %i.df, ptr %i.cz, align 1, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cz, ptr align 1 %i.db, i64 %i.dd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.s, %bb.r, %bb.q
  %i.dg = load i64, ptr %i.at, align 8, !tbaa !11 ; 2 uses
  store i64 %i.dg, ptr %i.c, align 8, !tbaa !11
  %i.dh = load ptr, ptr %5, align 8, !tbaa !17
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dg
  store i8 0, ptr %i.di, align 1, !tbaa !14
  %.pre.i = load ptr, ptr %7, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.db, ptr %5, align 8, !tbaa !17
  %i.dj = load <2 x i64>, ptr %i.at, align 8, !tbaa !14
  store <2 x i64> %i.dj, ptr %i.c, align 8, !tbaa !14
  br label %bb.u

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.dk = load i64, ptr %i.b, align 8, !tbaa !14
  store ptr %i.db, ptr %5, align 8, !tbaa !17
  %i.dl = load <2 x i64>, ptr %i.at, align 8, !tbaa !14
  store <2 x i64> %i.dl, ptr %i.c, align 8, !tbaa !14
  %.not.i = icmp eq ptr %i.cz, null
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.cz, ptr %7, align 8, !tbaa !17
  store i64 %i.dk, ptr %i.as, align 8, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.as, ptr %7, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.t, %bb.u
  %i.dm = phi ptr [ %i.cz, %bb.t ], [ %i.as, %bb.u ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.at, align 8, !tbaa !11
  store i8 0, ptr %i.dm, align 1, !tbaa !14
  %i.dn = load ptr, ptr %7, align 8, !tbaa !17    ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.as
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.dp = load i64, ptr %i.as, align 8, !tbaa !14
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %bb.x

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.dr = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.dr, ptr %8, align 8, !tbaa !27
  %i.ds = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 0, ptr %i.ds, align 8, !tbaa !29
  %i.dt = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 4, ptr %i.dt, align 4, !tbaa !30
  %i.du = call { ptr, i64 } @_ZNK6hermes2vm10StringView11getUTF16RefERN4llvh15SmallVectorImplIDsEEb(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %8, i1 noundef zeroext false) #8 ; 2 uses
  %i.dv = extractvalue { ptr, i64 } %i.du, 0
  %i.dw = extractvalue { ptr, i64 } %i.du, 1
  %i.dx = call noundef zeroext i1 @_ZN6hermes34convertUTF16ToUTF8WithReplacementsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvh8ArrayRefIDsEEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr %i.dv, i64 %i.dw, i64 noundef 0) #8 ; 0 uses
  %i.dy = load ptr, ptr %8, align 8, !tbaa !27    ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.dr
  br i1 %i.dz, label %_ZN4llvh11SmallVectorIDsLj4EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @free(ptr noundef %i.dy) #8
  br label %_ZN4llvh11SmallVectorIDsLj4EED2Ev.exit

_ZN4llvh11SmallVectorIDsLj4EED2Ev.exit:           ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br label %bb.x

bb.x:                                             ; preds = %_ZN4llvh11SmallVectorIDsLj4EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ea = load ptr, ptr %5, align 8, !tbaa !17
  %i.eb = load i64, ptr %i.c, align 8, !tbaa !11
  %i.ec = call ptr @_ZN6hermes2vm7Runtime9getGlobalEv(ptr noundef nonnull align 8 dereferenceable(9816) %0) #8 ; 0 uses
  %i.ed = call noundef i32 @_ZN6hermes2vm7Runtime20raiseEvalUnsupportedEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.ea, i64 %i.eb) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  %i.ee = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.b
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.x
  %i.eg = load i64, ptr %i.b, align 8, !tbaa !14
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eh) #9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  %.fca.0.insert.i30 = insertvalue { i32, i64 } poison, i32 %i.ed, 0
  %.fca.1.insert.i31 = insertvalue { i32, i64 } %.fca.0.insert.i30, i64 undef, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  ret { i32, i64 } %.fca.1.insert.i31
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare noundef zeroext i1 @_ZN6hermes34convertUTF16ToUTF8WithReplacementsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvh8ArrayRefIDsEEm(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64 noundef) local_unnamed_addr #1

declare ptr @_ZN6hermes2vm7Runtime9getGlobalEv(ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm4evalEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr noundef readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store ptr %1, ptr %3, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33
  store ptr %i.c, ptr %i.a, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !30
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 192
  store ptr %i.e, ptr %i.i, align 8, !tbaa !44
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 200
  store ptr %i.d, ptr %i.j, align 8, !tbaa !45
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 208
  store i32 0, ptr %i.k, align 8, !tbaa !46
  store ptr %3, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !47
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit5, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit

_ZNK6hermes2vm10NativeArgs6getArgEj.exit:         ; preds = %bb.a
  %i.n = load ptr, ptr %2, align 8, !tbaa !50, !noalias !51
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.o, align 8, !tbaa !15 ; 3 uses
  %.mask.i = and i64 %.sroa.0.0.copyload.i, -281474976710656
  %i.p = icmp eq i64 %.mask.i, -844424930131968
  br i1 %i.p, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_15StringPrimitiveEEENS0_6HandleIT_EEj.exit, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit5

_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_15StringPrimitiveEEENS0_6HandleIT_EEj.exit: ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.q = and i64 %.sroa.0.0.copyload.i, 281474976710655
  %i.r = inttoptr i64 %i.q to ptr
  %4 = load i32, ptr %i.r, align 4
  %5 = add i32 %4, -50331648
  %i.s = icmp ult i32 %5, 134217728
  %spec.select.i = select i1 %i.s, ptr %i.o, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  %i.t = call { i32, i64 } @_ZN6hermes2vm10directEvalERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEERKNS_10ScopeChainEbb(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %spec.select.i, ptr nonnull align 8 poison, i1 zeroext poison, i1 zeroext poison) ; 2 uses
  %i.u = extractvalue { i32, i64 } %i.t, 0
  %i.v = extractvalue { i32, i64 } %i.t, 1
  br label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit5

_ZNK6hermes2vm10NativeArgs6getArgEj.exit5:        ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit, %bb.a, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_15StringPrimitiveEEENS0_6HandleIT_EEj.exit
  %.sroa.07.0 = phi i32 [ %i.u, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_15StringPrimitiveEEENS0_6HandleIT_EEj.exit ], [ 1, %bb.a ], [ 1, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit ]
  %.sroa.3.0 = phi i64 [ %i.v, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_15StringPrimitiveEEENS0_6HandleIT_EEj.exit ], [ -1688849860263936, %bb.a ], [ %.sroa.0.0.copyload.i, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.07.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: nounwind
declare void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212)) unnamed_addr #3

declare { ptr, i64 } @_ZNK6hermes2vm10StringView11getUTF16RefERN4llvh15SmallVectorImplIDsEEb(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { builtin nounwind }

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
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !13, i64 8}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !8, i64 0, !13, i64 8, !5, i64 16}
!13 = !{!"long", !5, i64 0}
!14 = !{!5, !5, i64 0}
!15 = !{!13, !13, i64 0}
!16 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!17 = !{!12, !9, i64 0}
!18 = distinct !{!18, !19, !20, !21}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = !{!"branch_weights", i32 4, i32 28}
!23 = distinct !{!23, !19, !20, !21}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = distinct !{!26, !19, !20}
!27 = !{!28, !10, i64 0}
!28 = !{!"_ZTSN4llvh15SmallVectorBaseE", !10, i64 0, !4, i64 8, !4, i64 12}
!29 = !{!28, !4, i64 8}
!30 = !{!28, !4, i64 12}
!31 = !{!32, !32, i64 0}
!32 = !{!"p1 _ZTSN6hermes2vm15HandleRootOwnerE", !10, i64 0}
!33 = !{!34, !35, i64 8}
!34 = !{!"_ZTSN6hermes2vm15HandleRootOwnerE", !35, i64 8}
!35 = !{!"p1 _ZTSN6hermes2vm7GCScopeE", !10, i64 0}
!36 = !{!37, !35, i64 8}
!37 = !{!"_ZTSN6hermes2vm7GCScopeE", !32, i64 0, !35, i64 8, !5, i64 16, !38, i64 144, !43, i64 192, !43, i64 200, !4, i64 208}
!38 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes2vm17PinnedHermesValueELj4EEE", !39, i64 0, !42, i64 16}
!39 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes2vm17PinnedHermesValueEEE", !40, i64 0}
!40 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes2vm17PinnedHermesValueELb1EEE", !41, i64 0}
!41 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes2vm17PinnedHermesValueEvEE", !28, i64 0}
!42 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes2vm17PinnedHermesValueELj4EEE", !5, i64 0}
!43 = !{!"p1 _ZTSN6hermes2vm17PinnedHermesValueE", !10, i64 0}
!44 = !{!37, !43, i64 192}
!45 = !{!37, !43, i64 200}
!46 = !{!37, !4, i64 208}
!47 = !{!48, !4, i64 8}
!48 = !{!"_ZTSN6hermes2vm10NativeArgsE", !49, i64 0, !4, i64 8, !43, i64 16}
!49 = !{!"_ZTSSt16reverse_iteratorIPKN6hermes2vm17PinnedHermesValueEE", !43, i64 0}
!50 = !{!49, !43, i64 0}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!53 = distinct !{!53, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
end_hunk_0
