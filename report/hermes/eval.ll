inline.NumInlined: 328
inline.NumDeleted: 252
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
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
define hidden { i32, i64 } @_ZN6hermes2vm17evalInEnvironmentERNS0_7RuntimeEN4llvh9StringRefENS0_6HandleINS0_11EnvironmentEEERKNS_10ScopeChainENS5_INS0_11HermesValueEEEbb(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, i64 %2, ptr nofree readnone captures(none) %3, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %4, ptr nofree readnone captures(none) %5, i1 noundef zeroext %6, i1 noundef zeroext %7) local_unnamed_addr #0 {
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
define hidden { i32, i64 } @_ZN6hermes2vm10directEvalERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEERKNS_10ScopeChainEbb(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, ptr nofree nonnull readnone align 8 captures(none) %2, i1 zeroext %3, i1 zeroext %4) local_unnamed_addr #0 {
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
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %i.o = icmp ugt i32 %i.n, 150994943
  br i1 %i.o, label %bb.d, label %bb.e, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !17
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %.mask.i.i.i.i.i.i.i.i.i.i = and i32 %i.n, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i, label %bb.h [
    i32 134217728, label %bb.f
    i32 67108864, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i = load i64, ptr %i.t, align 8, !tbaa !15
  %i.u = and i64 %.sroa.0.0.copyload.i.i.i2.i.i, 281474976710655
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !17
  br label %bb.j

bb.i:                                             ; preds = %bb.b
  %i.y = and i64 %i.g, 1073741823                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.y
  br label %_ZNK6hermes2vm10StringView3endEv.exit

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.d
  %.0.i.sink.i.i.ph = phi ptr [ %i.x, %bb.h ], [ %i.s, %bb.g ], [ %i.r, %bb.f ], [ %i.q, %bb.d ]
  %i.aa = and i64 %i.g, 1073741823                ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i.ph, i64 %i.aa ; 4 uses
  %.sroa.0.0.copyload.i.i.i.i.i25 = load i64, ptr %i.e, align 8, !tbaa !15
  %i.ac = and i64 %.sroa.0.0.copyload.i.i.i.i.i25, 281474976710655
  %i.ad = inttoptr i64 %i.ac to ptr               ; 5 uses
  %i.ae = load i32, ptr %i.ad, align 4            ; 2 uses
  %i.af = icmp ugt i32 %i.ae, 150994943
  br i1 %i.af, label %bb.k, label %bb.l, !prof !16

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !17
  br label %_ZNK6hermes2vm10StringView3endEv.exit

bb.l:                                             ; preds = %bb.j
  %.mask.i.i.i.i.i.i.i.i.i.i26 = and i32 %i.ae, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i26, label %bb.o [
    i32 134217728, label %bb.m
    i32 67108864, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  br label %_ZNK6hermes2vm10StringView3endEv.exit

bb.n:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  br label %_ZNK6hermes2vm10StringView3endEv.exit

bb.o:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i29 = load i64, ptr %i.ak, align 8, !tbaa !15
  %i.al = and i64 %.sroa.0.0.copyload.i.i.i2.i.i29, 281474976710655
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !17
  br label %_ZNK6hermes2vm10StringView3endEv.exit

_ZNK6hermes2vm10StringView3endEv.exit:            ; preds = %bb.i, %bb.k, %bb.m, %bb.n, %bb.o
  %i.ap = phi ptr [ %i.z, %bb.i ], [ %i.ab, %bb.k ], [ %i.ab, %bb.m ], [ %i.ab, %bb.n ], [ %i.ab, %bb.o ] ; 9 uses
  %i.aq = phi i64 [ %i.y, %bb.i ], [ %i.aa, %bb.k ], [ %i.aa, %bb.m ], [ %i.aa, %bb.n ], [ %i.aa, %bb.o ] ; 3 uses
  %.0.i.sink.i.i28 = phi ptr [ %i.e, %bb.i ], [ %i.ah, %bb.k ], [ %i.ai, %bb.m ], [ %i.aj, %bb.n ], [ %i.ao, %bb.o ] ; 3 uses
  %.0.i.sink.i.i2858 = ptrtoint ptr %.0.i.sink.i.i28 to i64 ; 2 uses
  %9 = ptrtoint ptr %i.ap to i64                  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i28, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.j ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
  store ptr %i.at, ptr %7, align 8, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 7 uses
  store i64 0, ptr %i.au, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %.not.i.i.i = icmp eq ptr %.0.i.sink.i.i28, null
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = ptrtoint ptr %i.ap to i64               ; 2 uses
  %i.ax = sub i64 %i.av, %i.aw
  %.0.i.i.i = select i1 %.not.i.i.i, i64 0, i64 %i.ax ; 2 uses
  store i64 %.0.i.i.i, ptr %i.a, align 8, !tbaa !15
  %i.ay = icmp ugt i64 %.0.i.i.i, 15
  br i1 %i.ay, label %bb.p, label %_ZNK6hermes2vm10StringView14const_iteratormiERKS2_.exit._crit_edge.i.i

bb.p:                                             ; preds = %_ZNK6hermes2vm10StringView3endEv.exit
  %i.az = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #8 ; 2 uses
  store ptr %i.az, ptr %7, align 8, !tbaa !17
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !15
  store i64 %i.ba, ptr %i.at, align 8, !tbaa !14
  br label %_ZNK6hermes2vm10StringView14const_iteratormiERKS2_.exit._crit_edge.i.i

_ZNK6hermes2vm10StringView14const_iteratormiERKS2_.exit._crit_edge.i.i: ; preds = %bb.p, %_ZNK6hermes2vm10StringView3endEv.exit
  %i.bb = phi ptr [ %i.az, %bb.p ], [ %i.at, %_ZNK6hermes2vm10StringView3endEv.exit ] ; 6 uses
  %.not.i.i.i.i.i53 = icmp eq ptr %i.ap, null
  %.not.i11.i.i54 = icmp eq ptr %i.ap, %i.as
  %or.cond55 = select i1 %.not.i.i.i.i.i53, i1 true, i1 %.not.i11.i.i54
  br i1 %or.cond55, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN6hermes2vm10StringView14const_iteratorEvEET_SA_RKS3_.exit, label %iter.check

iter.check:                                       ; preds = %_ZNK6hermes2vm10StringView14const_iteratormiERKS2_.exit._crit_edge.i.i
  %i.bc = ptrtoaddr ptr %i.bb to i64
  %i.bd = add i64 %i.j, %.0.i.sink.i.i2858
  %i.be = add i64 %i.bd, %i.aq
  %i.bf = sub i64 %9, %i.be
  %i.bg = call i64 @llvm.umax.i64(i64 %9, i64 %i.bf)
  %i.bh = sub i64 0, %i.bg                        ; 7 uses
  %min.iters.check = icmp ult i64 %i.bh, 4
  %i.bi = sub i64 %i.aw, %i.bc
  %diff.check = icmp ugt i64 %i.bi, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check59 = icmp ult i64 %i.bh, 32
  br i1 %min.iters.check59, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bh, 28
  %n.vec = and i64 %i.bh, -32                     ; 5 uses
  %i.bj = getelementptr i8, ptr %i.bb, i64 %n.vec
  %i.bk = getelementptr i8, ptr %i.ap, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.bb, i64 %index ; 2 uses
  %next.gep60 = getelementptr i8, ptr %i.ap, i64 %index ; 2 uses
  %i.bl = getelementptr i8, ptr %next.gep60, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep60, align 1, !tbaa !14
  %wide.load61 = load <16 x i8>, ptr %i.bl, align 1, !tbaa !14
  %i.bm = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !14
  store <16 x i8> %wide.load61, ptr %i.bm, align 1, !tbaa !14
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bh
  br i1 %cmp.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN6hermes2vm10StringView14const_iteratorEvEET_SA_RKS3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.preheader, label %vec.epilog.ph, !prof !22

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec64 = and i64 %i.bh, -4                    ; 4 uses
  %i.bo = getelementptr i8, ptr %i.bb, i64 %n.vec64
  %i.bp = getelementptr i8, ptr %i.ap, i64 %n.vec64
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index65 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next69, %vec.epilog.vector.body ] ; 3 uses
  %next.gep66 = getelementptr i8, ptr %i.bb, i64 %index65
  %next.gep67 = getelementptr i8, ptr %i.ap, i64 %index65
  %wide.load68 = load <4 x i8>, ptr %next.gep67, align 1, !tbaa !14
  store <4 x i8> %wide.load68, ptr %next.gep66, align 1, !tbaa !14
  %index.next69 = add nuw i64 %index65, 4         ; 2 uses
  %i.bq = icmp eq i64 %index.next69, %n.vec64
  br i1 %i.bq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !23

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n70 = icmp eq i64 %n.vec64, %i.bh
  br i1 %cmp.n70, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN6hermes2vm10StringView14const_iteratorEvEET_SA_RKS3_.exit, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.preheader

_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0.i10.i.i57.ph = phi ptr [ %i.bb, %iter.check ], [ %i.bj, %vec.epilog.iter.check ], [ %i.bo, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.03.0.i.i.i56.ph = phi ptr [ %i.ap, %iter.check ], [ %i.bk, %vec.epilog.iter.check ], [ %i.bp, %vec.epilog.middle.block ] ; 3 uses
  %i.br = add i64 %i.j, %.0.i.sink.i.i2858
  %i.bs = add i64 %i.br, %i.aq                    ; 2 uses
  %.sroa.03.0.i.i.i56.ph73 = ptrtoint ptr %.sroa.03.0.i.i.i56.ph to i64 ; 2 uses
  %i.bt = sub i64 %i.bs, %.sroa.03.0.i.i.i56.ph73
  %xtraiter = and i64 %i.bt, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.prol.loopexit, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.prol

_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.prol: ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.preheader, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.prol
  %.0.i10.i.i57.prol = phi ptr [ %i.bw, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.prol ], [ %.0.i10.i.i57.ph, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.preheader ] ; 2 uses
  %.sroa.03.0.i.i.i56.prol = phi ptr [ %i.bv, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.prol ], [ %.sroa.03.0.i.i.i56.ph, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.prol ], [ 0, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.preheader ]
  %i.bu = load i8, ptr %.sroa.03.0.i.i.i56.prol, align 1, !tbaa !14
  store i8 %i.bu, ptr %.0.i10.i.i57.prol, align 1, !tbaa !14
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i56.prol, i64 1 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i10.i.i57.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.prol.loopexit, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.prol, !llvm.loop !24

_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.prol.loopexit: ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.prol, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.preheader
  %.0.i10.i.i57.unr = phi ptr [ %.0.i10.i.i57.ph, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.preheader ], [ %i.bw, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.prol ]
  %.sroa.03.0.i.i.i56.unr = phi ptr [ %.sroa.03.0.i.i.i56.ph, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.preheader ], [ %i.bv, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.prol ]
  %i.bx = sub i64 %.sroa.03.0.i.i.i56.ph73, %i.bs
  %i.by = icmp ugt i64 %i.bx, -8
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN6hermes2vm10StringView14const_iteratorEvEET_SA_RKS3_.exit, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i

_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i: ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.prol.loopexit, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i
  %.0.i10.i.i57 = phi ptr [ %i.cw, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i ], [ %.0.i10.i.i57.unr, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.prol.loopexit ] ; 9 uses
  %.sroa.03.0.i.i.i56 = phi ptr [ %i.cv, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i ], [ %.sroa.03.0.i.i.i56.unr, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.prol.loopexit ] ; 9 uses
  %i.bz = load i8, ptr %.sroa.03.0.i.i.i56, align 1, !tbaa !14
  store i8 %i.bz, ptr %.0.i10.i.i57, align 1, !tbaa !14
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i56, i64 1
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i10.i.i57, i64 1
  %i.cc = load i8, ptr %i.ca, align 1, !tbaa !14
  store i8 %i.cc, ptr %i.cb, align 1, !tbaa !14
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i56, i64 2
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i10.i.i57, i64 2
  %i.cf = load i8, ptr %i.cd, align 1, !tbaa !14
  store i8 %i.cf, ptr %i.ce, align 1, !tbaa !14
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i56, i64 3
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i10.i.i57, i64 3
  %i.ci = load i8, ptr %i.cg, align 1, !tbaa !14
  store i8 %i.ci, ptr %i.ch, align 1, !tbaa !14
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i56, i64 4
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i10.i.i57, i64 4
  %i.cl = load i8, ptr %i.cj, align 1, !tbaa !14
  store i8 %i.cl, ptr %i.ck, align 1, !tbaa !14
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i56, i64 5
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i10.i.i57, i64 5
  %i.co = load i8, ptr %i.cm, align 1, !tbaa !14
  store i8 %i.co, ptr %i.cn, align 1, !tbaa !14
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i56, i64 6
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i10.i.i57, i64 6
  %i.cr = load i8, ptr %i.cp, align 1, !tbaa !14
  store i8 %i.cr, ptr %i.cq, align 1, !tbaa !14
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i56, i64 7
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i10.i.i57, i64 7
  %i.cu = load i8, ptr %i.cs, align 1, !tbaa !14
  store i8 %i.cu, ptr %i.ct, align 1, !tbaa !14
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i56, i64 8 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i10.i.i57, i64 8
  %.not.i11.i.i.7 = icmp eq ptr %i.cv, %i.as
  br i1 %.not.i11.i.i.7, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN6hermes2vm10StringView14const_iteratorEvEET_SA_RKS3_.exit, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i, !llvm.loop !26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN6hermes2vm10StringView14const_iteratorEvEET_SA_RKS3_.exit: ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.prol.loopexit, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNK6hermes2vm10StringView14const_iteratormiERKS2_.exit._crit_edge.i.i
  %i.cx = load i64, ptr %i.a, align 8, !tbaa !15  ; 2 uses
  store i64 %i.cx, ptr %i.au, align 8, !tbaa !11
  %i.cy = load ptr, ptr %7, align 8, !tbaa !17
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cx
  store i8 0, ptr %i.cz, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.da = load ptr, ptr %5, align 8, !tbaa !17    ; 6 uses
  %i.db = icmp eq ptr %i.da, %i.b
  %i.dc = load ptr, ptr %7, align 8, !tbaa !17    ; 5 uses
  %i.dd = icmp eq ptr %i.dc, %i.at                ; 2 uses
  br i1 %i.db, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN6hermes2vm10StringView14const_iteratorEvEET_SA_RKS3_.exit
  br i1 %i.dd, label %bb.q, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN6hermes2vm10StringView14const_iteratorEvEET_SA_RKS3_.exit
  br i1 %i.dd, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.de = load i64, ptr %i.au, align 8, !tbaa !11 ; 3 uses
  %i.df = icmp ult i64 %i.de, 16
  call void @llvm.assume(i1 %i.df)
  switch i64 %i.de, label %bb.s [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.dg = load i8, ptr %i.dc, align 1, !tbaa !14
  store i8 %i.dg, ptr %i.da, align 1, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.da, ptr align 1 %i.dc, i64 %i.de, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.s, %bb.r, %bb.q
  %i.dh = load i64, ptr %i.au, align 8, !tbaa !11 ; 2 uses
  store i64 %i.dh, ptr %i.c, align 8, !tbaa !11
  %i.di = load ptr, ptr %5, align 8, !tbaa !17
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dh
  store i8 0, ptr %i.dj, align 1, !tbaa !14
  %.pre.i = load ptr, ptr %7, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.dc, ptr %5, align 8, !tbaa !17
  %i.dk = load <2 x i64>, ptr %i.au, align 8, !tbaa !14
  store <2 x i64> %i.dk, ptr %i.c, align 8, !tbaa !14
  br label %bb.u

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.dl = load i64, ptr %i.b, align 8, !tbaa !14
  store ptr %i.dc, ptr %5, align 8, !tbaa !17
  %i.dm = load <2 x i64>, ptr %i.au, align 8, !tbaa !14
  store <2 x i64> %i.dm, ptr %i.c, align 8, !tbaa !14
  %.not.i = icmp eq ptr %i.da, null
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.da, ptr %7, align 8, !tbaa !17
  store i64 %i.dl, ptr %i.at, align 8, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.at, ptr %7, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.t, %bb.u
  %i.dn = phi ptr [ %i.da, %bb.t ], [ %i.at, %bb.u ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.au, align 8, !tbaa !11
  store i8 0, ptr %i.dn, align 1, !tbaa !14
  %i.do = load ptr, ptr %7, align 8, !tbaa !17    ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.at
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.dq = load i64, ptr %i.at, align 8, !tbaa !14
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %bb.x

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.ds = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.ds, ptr %8, align 8, !tbaa !27
  %i.dt = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 0, ptr %i.dt, align 8, !tbaa !29
  %i.du = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 4, ptr %i.du, align 4, !tbaa !30
  %i.dv = call { ptr, i64 } @_ZNK6hermes2vm10StringView11getUTF16RefERN4llvh15SmallVectorImplIDsEEb(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %8, i1 noundef zeroext false) #8 ; 2 uses
  %i.dw = extractvalue { ptr, i64 } %i.dv, 0
  %i.dx = extractvalue { ptr, i64 } %i.dv, 1
  %i.dy = call noundef zeroext i1 @_ZN6hermes34convertUTF16ToUTF8WithReplacementsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvh8ArrayRefIDsEEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr %i.dw, i64 %i.dx, i64 noundef 0) #8 ; 0 uses
  %i.dz = load ptr, ptr %8, align 8, !tbaa !27    ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.ds
  br i1 %i.ea, label %_ZN4llvh11SmallVectorIDsLj4EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @free(ptr noundef %i.dz) #8
  br label %_ZN4llvh11SmallVectorIDsLj4EED2Ev.exit

_ZN4llvh11SmallVectorIDsLj4EED2Ev.exit:           ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br label %bb.x

bb.x:                                             ; preds = %_ZN4llvh11SmallVectorIDsLj4EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.eb = load ptr, ptr %5, align 8, !tbaa !17
  %i.ec = load i64, ptr %i.c, align 8, !tbaa !11
  %i.ed = call ptr @_ZN6hermes2vm7Runtime9getGlobalEv(ptr noundef nonnull align 8 dereferenceable(9816) %0) #8 ; 0 uses
  %i.ee = call noundef i32 @_ZN6hermes2vm7Runtime20raiseEvalUnsupportedEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.eb, i64 %i.ec) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  %i.ef = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.b
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.x
  %i.eh = load i64, ptr %i.b, align 8, !tbaa !14
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  %.fca.0.insert.i30 = insertvalue { i32, i64 } poison, i32 %i.ee, 0
  %.fca.1.insert.i31 = insertvalue { i32, i64 } %.fca.0.insert.i30, i64 undef, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  ret { i32, i64 } %.fca.1.insert.i31
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #1
end_hunk_0
