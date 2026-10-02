Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/Base64_SSE4_2?download=true
inline.NumInlined: 34
inline.NumDeleted: 26
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm = comdat any

$_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE13_M_set_lengthEm = comdat any

@_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE = internal unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 16
@_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE = internal unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_\00", align 16

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !19
  %i.b = load ptr, ptr %0, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %1
  store i8 0, ptr %i.c, align 1, !tbaa !14
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !24
  %i.b = load ptr, ptr %0, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %1
  store i32 0, ptr %i.c, align 4, !tbaa !27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef ptr @_ZN5folly6detail13base64_detail19base64Encode_SSE4_2EPKcS3_Pc(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(ret: address, provenance) %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %.lr.ph, label %_ZN5folly6detail13base64_detail20base64SimdEncodeImplINS1_22Base64_SSE4_2_PlatformELb0EEEPcPKcS6_S4_.exit

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i8 = phi ptr [ %i.t, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.011.i7 = phi ptr [ %i.s, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.e = load <16 x i8>, ptr %.011.i7, align 1, !tbaa !14
  %i.f = shufflevector <16 x i8> %i.e, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 2, i32 1, i32 4, i32 3, i32 5, i32 4, i32 7, i32 6, i32 8, i32 7, i32 10, i32 9, i32 11, i32 10> ; 2 uses
  %i.g = bitcast <16 x i8> %i.f to <8 x i16>
  %i.h = and <8 x i16> %i.g, <i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032>
  %3 = call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.h, <8 x i16> <i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024>)
  %i.i = bitcast <16 x i8> %i.f to <8 x i16>
  %i.j = and <8 x i16> %i.i, <i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63>
  %i.k = shl <8 x i16> %i.j, <i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8>
  %i.l = or <8 x i16> %i.k, %3
  %i.m = bitcast <8 x i16> %i.l to <16 x i8>      ; 3 uses
  %i.n = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.m, <16 x i8> splat (i8 51))
  %i.o = icmp sgt <16 x i8> %i.m, splat (i8 25)
  %.neg.i = zext <16 x i1> %i.o to <16 x i8>
  %i.p = add nuw <16 x i8> %i.n, %.neg.i
  %i.q = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 65, i8 71, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -19, i8 -16, i8 -3, i8 -65>, <16 x i8> %i.p)
  %i.r = add <16 x i8> %i.q, %i.m
  store <16 x i8> %i.r, ptr %.0.i8, align 1, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %.011.i7, i64 12 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i8, i64 16 ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.a, %i.u                       ; 2 uses
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %.lr.ph, label %_ZN5folly6detail13base64_detail20base64SimdEncodeImplINS1_22Base64_SSE4_2_PlatformELb0EEEPcPKcS6_S4_.exit, !llvm.loop !28

_ZN5folly6detail13base64_detail20base64SimdEncodeImplINS1_22Base64_SSE4_2_PlatformELb0EEEPcPKcS6_S4_.exit: ; preds = %.lr.ph, %bb.a
  %.011.i.lcssa = phi ptr [ %0, %bb.a ], [ %i.s, %.lr.ph ] ; 2 uses
  %.0.i.lcssa = phi ptr [ %2, %bb.a ], [ %i.t, %.lr.ph ] ; 2 uses
  %.lcssa5 = phi i64 [ %i.c, %bb.a ], [ %i.v, %.lr.ph ] ; 2 uses
  %i.x = icmp samesign ugt i64 %.lcssa5, 2
  br i1 %i.x, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5folly6detail13base64_detail20base64SimdEncodeImplINS1_22Base64_SSE4_2_PlatformELb0EEEPcPKcS6_S4_.exit, %.lr.ph.i.i
  %.026.i.i = phi ptr [ %i.ba, %.lr.ph.i.i ], [ %.011.i.lcssa, %_ZN5folly6detail13base64_detail20base64SimdEncodeImplINS1_22Base64_SSE4_2_PlatformELb0EEEPcPKcS6_S4_.exit ] ; 4 uses
  %.02325.i.i = phi ptr [ %i.bb, %.lr.ph.i.i ], [ %.0.i.lcssa, %_ZN5folly6detail13base64_detail20base64SimdEncodeImplINS1_22Base64_SSE4_2_PlatformELb0EEEPcPKcS6_S4_.exit ] ; 5 uses
  %i.y = load i8, ptr %.026.i.i, align 1, !tbaa !14 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !14   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !14  ; 2 uses
  %i.ad = lshr i8 %i.y, 2
  %i.ae = shl i8 %i.y, 4
  %i.af = lshr i8 %i.aa, 4
  %.masked.i.i = and i8 %i.ae, 48
  %i.ag = or disjoint i8 %.masked.i.i, %i.af
  %i.ah = shl i8 %i.aa, 2
  %i.ai = lshr i8 %i.ac, 6
  %.masked24.i.i = and i8 %i.ah, 60
  %i.aj = or disjoint i8 %.masked24.i.i, %i.ai
  %i.ak = and i8 %i.ac, 63
  %i.al = zext nneg i8 %i.ad to i64
  %i.am = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !14
  store i8 %i.an, ptr %.02325.i.i, align 1, !tbaa !14
  %i.ao = zext nneg i8 %i.ag to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !14
  %i.ar = getelementptr inbounds nuw i8, ptr %.02325.i.i, i64 1
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !14
  %i.as = zext nneg i8 %i.aj to i64
  %i.at = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !14
  %i.av = getelementptr inbounds nuw i8, ptr %.02325.i.i, i64 2
  store i8 %i.au, ptr %i.av, align 1, !tbaa !14
  %i.aw = zext nneg i8 %i.ak to i64
  %i.ax = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %.02325.i.i, i64 3
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !14
  %i.ba = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 3 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.02325.i.i, i64 4 ; 2 uses
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.a, %i.bc                     ; 2 uses
  %i.be = icmp sgt i64 %i.bd, 2
  br i1 %i.be, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !29

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %_ZN5folly6detail13base64_detail20base64SimdEncodeImplINS1_22Base64_SSE4_2_PlatformELb0EEEPcPKcS6_S4_.exit
  %.023.lcssa.i.i = phi ptr [ %.0.i.lcssa, %_ZN5folly6detail13base64_detail20base64SimdEncodeImplINS1_22Base64_SSE4_2_PlatformELb0EEEPcPKcS6_S4_.exit ], [ %i.bb, %.lr.ph.i.i ] ; 6 uses
  %.0.lcssa.i.i = phi ptr [ %.011.i.lcssa, %_ZN5folly6detail13base64_detail20base64SimdEncodeImplINS1_22Base64_SSE4_2_PlatformELb0EEEPcPKcS6_S4_.exit ], [ %i.ba, %.lr.ph.i.i ] ; 3 uses
  %.lcssa.i.i = phi i64 [ %.lcssa5, %_ZN5folly6detail13base64_detail20base64SimdEncodeImplINS1_22Base64_SSE4_2_PlatformELb0EEEPcPKcS6_S4_.exit ], [ %i.bd, %.lr.ph.i.i ]
  %i.bf = icmp eq ptr %.0.lcssa.i.i, %1
  br i1 %i.bf, label %_ZN5folly6detail13base64_detail18base64EncodeScalarEPKcS3_Pc.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.bg = load i8, ptr %.0.lcssa.i.i, align 1, !tbaa !14 ; 3 uses
  %i.bh = lshr i8 %i.bg, 2
  %i.bi = zext nneg i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !14
  %i.bl = getelementptr inbounds nuw i8, ptr %.023.lcssa.i.i, i64 1
  store i8 %i.bk, ptr %.023.lcssa.i.i, align 1, !tbaa !14
  %i.bm = icmp eq i64 %.lcssa.i.i, 1
  br i1 %i.bm, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bn = shl i8 %i.bg, 4
  %i.bo = and i8 %i.bn, 48
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !14  ; 2 uses
  %i.br = shl i8 %i.bg, 4
  %i.bs = lshr i8 %i.bq, 4
  %.masked.i.i.i = and i8 %i.br, 48
  %i.bt = or disjoint i8 %i.bs, %.masked.i.i.i
  %i.bu = shl i8 %i.bq, 2
  %i.bv = and i8 %i.bu, 60
  %i.bw = zext nneg i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 4, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn.in.i.i.i = phi i8 [ %i.bo, %bb.c ], [ %i.bt, %bb.d ]
  %.sink.i.i.i = phi i8 [ 61, %bb.c ], [ %i.by, %bb.d ]
  %.pn.i.i.i = zext nneg i8 %.pn.in.i.i.i to i64
  %.sink27.in.i.i.i = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL14kBase64CharsetE, i64 %.pn.i.i.i
  %.sink27.i.i.i = load i8, ptr %.sink27.in.i.i.i, align 1, !tbaa !14
  store i8 %.sink27.i.i.i, ptr %i.bl, align 1, !tbaa !14
  %i.bz = getelementptr inbounds nuw i8, ptr %.023.lcssa.i.i, i64 2
  store i8 %.sink.i.i.i, ptr %i.bz, align 1, !tbaa !14
  %i.ca = getelementptr inbounds nuw i8, ptr %.023.lcssa.i.i, i64 3
  store i8 61, ptr %i.ca, align 1, !tbaa !14
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.023.lcssa.i.i, i64 4
  br label %_ZN5folly6detail13base64_detail18base64EncodeScalarEPKcS3_Pc.exit

_ZN5folly6detail13base64_detail18base64EncodeScalarEPKcS3_Pc.exit: ; preds = %._crit_edge.i.i, %bb.e
  %.1.i.i.i = phi ptr [ %.0.i.i.i, %bb.e ], [ %.023.lcssa.i.i, %._crit_edge.i.i ]
  ret ptr %.1.i.i.i
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8>, <16 x i8>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.usub.sat.v16i8(<16 x i8>, <16 x i8>) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef ptr @_ZN5folly6detail13base64_detail22base64URLEncode_SSE4_2EPKcS3_Pc(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(ret: address, provenance) %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %.lr.ph, label %_ZN5folly6detail13base64_detail20base64SimdEncodeImplINS1_22Base64_SSE4_2_PlatformELb1EEEPcPKcS6_S4_.exit

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i8 = phi ptr [ %i.t, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.011.i7 = phi ptr [ %i.s, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.e = load <16 x i8>, ptr %.011.i7, align 1, !tbaa !14
  %i.f = shufflevector <16 x i8> %i.e, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 2, i32 1, i32 4, i32 3, i32 5, i32 4, i32 7, i32 6, i32 8, i32 7, i32 10, i32 9, i32 11, i32 10> ; 2 uses
  %i.g = bitcast <16 x i8> %i.f to <8 x i16>
  %i.h = and <8 x i16> %i.g, <i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032>
  %3 = call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.h, <8 x i16> <i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024>)
  %i.i = bitcast <16 x i8> %i.f to <8 x i16>
  %i.j = and <8 x i16> %i.i, <i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63>
  %i.k = shl <8 x i16> %i.j, <i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8>
  %i.l = or <8 x i16> %i.k, %3
  %i.m = bitcast <8 x i16> %i.l to <16 x i8>      ; 3 uses
  %i.n = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.m, <16 x i8> splat (i8 51))
  %i.o = icmp sgt <16 x i8> %i.m, splat (i8 25)
  %.neg.i = zext <16 x i1> %i.o to <16 x i8>
  %i.p = add nuw <16 x i8> %i.n, %.neg.i
  %i.q = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 65, i8 71, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -17, i8 32, i8 -3, i8 -65>, <16 x i8> %i.p)
  %i.r = add <16 x i8> %i.q, %i.m
  store <16 x i8> %i.r, ptr %.0.i8, align 1, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %.011.i7, i64 12 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i8, i64 16 ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.a, %i.u                       ; 2 uses
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %.lr.ph, label %_ZN5folly6detail13base64_detail20base64SimdEncodeImplINS1_22Base64_SSE4_2_PlatformELb1EEEPcPKcS6_S4_.exit, !llvm.loop !30

_ZN5folly6detail13base64_detail20base64SimdEncodeImplINS1_22Base64_SSE4_2_PlatformELb1EEEPcPKcS6_S4_.exit: ; preds = %.lr.ph, %bb.a
  %.011.i.lcssa = phi ptr [ %0, %bb.a ], [ %i.s, %.lr.ph ] ; 2 uses
  %.0.i.lcssa = phi ptr [ %2, %bb.a ], [ %i.t, %.lr.ph ] ; 2 uses
  %.lcssa5 = phi i64 [ %i.c, %bb.a ], [ %i.v, %.lr.ph ] ; 2 uses
  %i.x = icmp samesign ugt i64 %.lcssa5, 2
  br i1 %i.x, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5folly6detail13base64_detail20base64SimdEncodeImplINS1_22Base64_SSE4_2_PlatformELb1EEEPcPKcS6_S4_.exit, %.lr.ph.i.i
  %.026.i.i = phi ptr [ %i.ba, %.lr.ph.i.i ], [ %.011.i.lcssa, %_ZN5folly6detail13base64_detail20base64SimdEncodeImplINS1_22Base64_SSE4_2_PlatformELb1EEEPcPKcS6_S4_.exit ] ; 4 uses
  %.02325.i.i = phi ptr [ %i.bb, %.lr.ph.i.i ], [ %.0.i.lcssa, %_ZN5folly6detail13base64_detail20base64SimdEncodeImplINS1_22Base64_SSE4_2_PlatformELb1EEEPcPKcS6_S4_.exit ] ; 5 uses
  %i.y = load i8, ptr %.026.i.i, align 1, !tbaa !14 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !14   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !14  ; 2 uses
  %i.ad = lshr i8 %i.y, 2
  %i.ae = shl i8 %i.y, 4
  %i.af = lshr i8 %i.aa, 4
  %.masked.i.i = and i8 %i.ae, 48
  %i.ag = or disjoint i8 %.masked.i.i, %i.af
  %i.ah = shl i8 %i.aa, 2
  %i.ai = lshr i8 %i.ac, 6
  %.masked24.i.i = and i8 %i.ah, 60
  %i.aj = or disjoint i8 %.masked24.i.i, %i.ai
  %i.ak = and i8 %i.ac, 63
  %i.al = zext nneg i8 %i.ad to i64
  %i.am = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !14
  store i8 %i.an, ptr %.02325.i.i, align 1, !tbaa !14
  %i.ao = zext nneg i8 %i.ag to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !14
  %i.ar = getelementptr inbounds nuw i8, ptr %.02325.i.i, i64 1
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !14
  %i.as = zext nneg i8 %i.aj to i64
  %i.at = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !14
  %i.av = getelementptr inbounds nuw i8, ptr %.02325.i.i, i64 2
  store i8 %i.au, ptr %i.av, align 1, !tbaa !14
  %i.aw = zext nneg i8 %i.ak to i64
  %i.ax = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %.02325.i.i, i64 3
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !14
  %i.ba = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 3 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.02325.i.i, i64 4 ; 2 uses
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.a, %i.bc                     ; 2 uses
  %i.be = icmp sgt i64 %i.bd, 2
  br i1 %i.be, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !31

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %_ZN5folly6detail13base64_detail20base64SimdEncodeImplINS1_22Base64_SSE4_2_PlatformELb1EEEPcPKcS6_S4_.exit
  %.023.lcssa.i.i = phi ptr [ %.0.i.lcssa, %_ZN5folly6detail13base64_detail20base64SimdEncodeImplINS1_22Base64_SSE4_2_PlatformELb1EEEPcPKcS6_S4_.exit ], [ %i.bb, %.lr.ph.i.i ] ; 6 uses
  %.0.lcssa.i.i = phi ptr [ %.011.i.lcssa, %_ZN5folly6detail13base64_detail20base64SimdEncodeImplINS1_22Base64_SSE4_2_PlatformELb1EEEPcPKcS6_S4_.exit ], [ %i.ba, %.lr.ph.i.i ] ; 3 uses
  %.lcssa.i.i = phi i64 [ %.lcssa5, %_ZN5folly6detail13base64_detail20base64SimdEncodeImplINS1_22Base64_SSE4_2_PlatformELb1EEEPcPKcS6_S4_.exit ], [ %i.bd, %.lr.ph.i.i ]
  %i.bf = icmp eq ptr %.0.lcssa.i.i, %1
  br i1 %i.bf, label %_ZN5folly6detail13base64_detail21base64URLEncodeScalarEPKcS3_Pc.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.bg = load i8, ptr %.0.lcssa.i.i, align 1, !tbaa !14 ; 3 uses
  %i.bh = lshr i8 %i.bg, 2
  %i.bi = zext nneg i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !14
  %i.bl = getelementptr inbounds nuw i8, ptr %.023.lcssa.i.i, i64 1 ; 2 uses
  store i8 %i.bk, ptr %.023.lcssa.i.i, align 1, !tbaa !14
  %i.bm = icmp eq i64 %.lcssa.i.i, 1
  br i1 %i.bm, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bn = shl i8 %i.bg, 4
  %i.bo = and i8 %i.bn, 48
  %i.bp = zext nneg i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 16, !tbaa !14
  %i.bs = getelementptr inbounds nuw i8, ptr %.023.lcssa.i.i, i64 2
  store i8 %i.br, ptr %i.bl, align 1, !tbaa !14
  br label %_ZN5folly6detail13base64_detail21base64URLEncodeScalarEPKcS3_Pc.exit

bb.d:                                             ; preds = %bb.b
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !14  ; 2 uses
  %i.bv = shl i8 %i.bg, 4
  %i.bw = lshr i8 %i.bu, 4
  %.masked.i.i.i = and i8 %i.bv, 48
  %i.bx = or disjoint i8 %i.bw, %.masked.i.i.i
  %i.by = shl i8 %i.bu, 2
  %i.bz = and i8 %i.by, 60
  %i.ca = zext nneg i8 %i.bx to i64
  %i.cb = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !14
  %i.cd = getelementptr inbounds nuw i8, ptr %.023.lcssa.i.i, i64 2
  store i8 %i.cc, ptr %i.bl, align 1, !tbaa !14
  %i.ce = zext nneg i8 %i.bz to i64
  %i.cf = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail13base64_detail9constantsL17kBase64URLCharsetE, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 4, !tbaa !14
  %i.ch = getelementptr inbounds nuw i8, ptr %.023.lcssa.i.i, i64 3
  store i8 %i.cg, ptr %i.cd, align 1, !tbaa !14
  br label %_ZN5folly6detail13base64_detail21base64URLEncodeScalarEPKcS3_Pc.exit

_ZN5folly6detail13base64_detail21base64URLEncodeScalarEPKcS3_Pc.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %.1.i.i.i = phi ptr [ %.023.lcssa.i.i, %._crit_edge.i.i ], [ %i.bs, %bb.c ], [ %i.ch, %bb.d ]
  ret ptr %.1.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define { i8, ptr } @_ZN5folly6detail13base64_detail19base64Decode_SSE4_2EPKcS3_Pc(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp ugt i64 %i.c, 23
  br i1 %i.d, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i6 = phi ptr [ %i.y, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.012.i5 = phi ptr [ %i.x, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.e = phi <16 x i8> [ %i.q, %.lr.ph ], [ splat (i8 -1), %bb.a ]
  %i.f = load <16 x i8>, ptr %.012.i5, align 1, !tbaa !14 ; 3 uses
  %i.g = icmp slt <16 x i8> %i.f, splat (i8 44)
  %i.h = tail call <16 x i8> @llvm.sadd.sat.v16i8(<16 x i8> %i.f, <16 x i8> splat (i8 -15))
  %i.i = select <16 x i1> %i.g, <16 x i8> %i.h, <16 x i8> %i.f ; 3 uses
  %i.j = bitcast <16 x i8> %i.i to <4 x i32>
  %i.k = lshr <4 x i32> %i.j, splat (i32 4)
  %i.l = bitcast <4 x i32> %i.k to <16 x i8>
  %i.m = and <16 x i8> %i.l, splat (i8 15)        ; 2 uses
  %i.n = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.m)
  %i.o = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -88, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -16, i8 80, i8 82, i8 80, i8 80, i8 84>, <16 x i8> %i.i)
  %i.p = and <16 x i8> %i.o, %i.n
  %i.q = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.p, <16 x i8> %i.e) ; 2 uses
  %i.r = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 0, i8 34, i8 16, i8 4, i8 -65, i8 -65, i8 -71, i8 -71, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.m)
  %i.s = add <16 x i8> %i.r, %i.i
  %i.t = tail call <8 x i16> @llvm.x86.ssse3.pmadd.ub.sw.128(<16 x i8> %i.s, <16 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.u = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.t, <8 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.v = bitcast <4 x i32> %i.u to <16 x i8>
  %i.w = shufflevector <16 x i8> %i.v, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 16, i32 16, i32 16, i32 16>
  store <16 x i8> %i.w, ptr %.0.i6, align 1, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i5, i64 16 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i6, i64 12 ; 3 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.a, %i.z
  %i.ab = icmp ugt i64 %i.aa, 23
  br i1 %i.ab, label %.lr.ph, label %._crit_edge, !llvm.loop !32

._crit_edge:                                      ; preds = %.lr.ph
  %i.ac = icmp eq <16 x i8> %i.q, zeroinitializer
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = icmp eq i16 %i.ad, 0
  br i1 %i.ae, label %._crit_edge.thread, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.af = insertvalue { i8, ptr } { i8 0, ptr poison }, ptr %i.y, 1
  br label %_ZN5folly6detail13base64_detail16base64SimdDecodeINS1_22Base64_SSE4_2_PlatformEEENS1_18Base64DecodeResultEPKcS6_Pc.exit

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.0.i.lcssa16 = phi ptr [ %i.y, %._crit_edge ], [ %2, %bb.a ]
  %.012.i.lcssa15 = phi ptr [ %i.x, %._crit_edge ], [ %0, %bb.a ]
  %i.ag = tail call { i8, ptr } @_ZN5folly6detail13base64_detail16base64DecodeSWAREPKcS3_Pc(ptr noundef %.012.i.lcssa15, ptr noundef %1, ptr noundef %.0.i.lcssa16) #6
  br label %_ZN5folly6detail13base64_detail16base64SimdDecodeINS1_22Base64_SSE4_2_PlatformEEENS1_18Base64DecodeResultEPKcS6_Pc.exit

_ZN5folly6detail13base64_detail16base64SimdDecodeINS1_22Base64_SSE4_2_PlatformEEENS1_18Base64DecodeResultEPKcS6_Pc.exit: ; preds = %bb.b, %._crit_edge.thread
  %.fca.1.insert.merged.i = phi { i8, ptr } [ %i.af, %bb.b ], [ %i.ag, %._crit_edge.thread ]
  ret { i8, ptr } %.fca.1.insert.merged.i
}

; Function Attrs: nounwind
declare { i8, ptr } @_ZN5folly6detail13base64_detail16base64DecodeSWAREPKcS3_Pc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.umin.v16i8(<16 x i8>, <16 x i8>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.ssse3.pmadd.ub.sw.128(<16 x i8>, <16 x i8>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.sadd.sat.v16i8(<16 x i8>, <16 x i8>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umulh.v8i16(<8 x i16>, <8 x i16>) #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"long", !8, i64 0}
!14 = !{!8, !8, i64 0}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !16, i64 0}
!18 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !17, i64 0, !13, i64 8, !8, i64 16}
!19 = !{!18, !13, i64 8}
!20 = !{!18, !16, i64 0}
!21 = !{!"p1 wchar_t", !12, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE12_Alloc_hiderE", !21, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE", !22, i64 0, !13, i64 8, !8, i64 16}
!24 = !{!23, !13, i64 8}
!25 = !{!23, !21, i64 0}
!26 = !{!"wchar_t", !8, i64 0}
!27 = !{!26, !26, i64 0}
!28 = distinct !{!28, !15}
!29 = distinct !{!29, !15}
!30 = distinct !{!30, !15}
!31 = distinct !{!31, !15}
!32 = distinct !{!32, !15}
end_hunk_0
