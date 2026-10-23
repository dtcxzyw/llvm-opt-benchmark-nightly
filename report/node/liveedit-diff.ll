Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/liveedit-diff?download=true
inline.NumInlined: 319
inline.NumDeleted: 197
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.v8::internal::(anonymous namespace)::MyersDiffer" = type { ptr, ptr, %"class.v8::internal::(anonymous namespace)::MyersDiffer::FurthestReaching", %"class.v8::internal::(anonymous namespace)::MyersDiffer::FurthestReaching" }
%"class.v8::internal::(anonymous namespace)::MyersDiffer::FurthestReaching" = type { %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload.base", [7 x i8] }
%"struct.std::_Optional_payload.base" = type { %"struct.std::_Optional_payload_base.base" }
%"struct.std::_Optional_payload_base.base" = type <{ %"union.std::_Optional_payload_base<v8::internal::(anonymous namespace)::MyersDiffer::Path>::_Storage", i8 }>
%"union.std::_Optional_payload_base<v8::internal::(anonymous namespace)::MyersDiffer::Path>::_Storage" = type { %"struct.v8::internal::(anonymous namespace)::MyersDiffer::Path" }
%"struct.v8::internal::(anonymous namespace)::MyersDiffer::Path" = type { %"class.std::vector.1" }
%"class.std::vector.1" = type { %"struct.std::_Vector_base.2" }
%"struct.std::_Vector_base.2" = type { %"struct.std::_Vector_base<v8::internal::(anonymous namespace)::MyersDiffer::Point, std::allocator<v8::internal::(anonymous namespace)::MyersDiffer::Point>>::_Vector_impl" }
%"struct.std::_Vector_base<v8::internal::(anonymous namespace)::MyersDiffer::Point, std::allocator<v8::internal::(anonymous namespace)::MyersDiffer::Point>>::_Vector_impl" = type { %"struct.std::_Vector_base<v8::internal::(anonymous namespace)::MyersDiffer::Point, std::allocator<v8::internal::(anonymous namespace)::MyersDiffer::Point>>::_Vector_impl_data" }
%"struct.std::_Vector_base<v8::internal::(anonymous namespace)::MyersDiffer::Point, std::allocator<v8::internal::(anonymous namespace)::MyersDiffer::Point>>::_Vector_impl_data" = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"change_start_\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal10Comparator19CalculateDifferenceEPNS1_5InputEPNS1_6OutputE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::(anonymous namespace)::MyersDiffer", align 8 ; 19 uses
  %3 = alloca %"class.std::optional", align 8     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  store ptr %0, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.c = load ptr, ptr %0, align 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %0) #8, !inline_history !9
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %0) #8, !inline_history !9
  %i.j = add nsw i32 %i.i, %i.e                   ; 2 uses
  %i.k = add nsw i32 %i.j, 1                      ; 2 uses
  %i.l = sext i32 %i.k to i64                     ; 3 uses
  %i.m = icmp slt i32 %i.j, -1
  br i1 %i.m, label %bb.b, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #9
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i: ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer16FurthestReachingC2Em.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i
  %i.n = shl nuw nsw i64 %i.l, 2
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #10 ; 4 uses
  store ptr %i.o, ptr %i.b, align 8
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.p, ptr %i.q, align 8
  store i32 0, ptr %i.o, align 4
  %i.r = getelementptr i8, ptr %i.o, i64 4        ; 3 uses
  %i.s = add nsw i64 %i.l, -1                     ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer16FurthestReachingC2Em.exit.i.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.s, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.r, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  br label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer16FurthestReachingC2Em.exit.i.i

_ZN2v88internal12_GLOBAL__N_111MyersDiffer16FurthestReachingC2Em.exit.i.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i, %bb.c, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.u, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i ], [ %i.r, %bb.c ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %.0.i.i.i.i.i.i.i.i, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.x = load ptr, ptr %0, align 8
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i32 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %0) #8, !inline_history !9
  %i.aa = load ptr, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef i32 %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %0) #8, !inline_history !9
  %i.ae = add nsw i32 %i.ad, %i.z                 ; 2 uses
  %i.af = add nsw i32 %i.ae, 1                    ; 2 uses
  %i.ag = sext i32 %i.af to i64                   ; 3 uses
  %i.ah = icmp slt i32 %i.ae, -1
  br i1 %i.ah, label %bb.d, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i7.i.i

bb.d:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_111MyersDiffer16FurthestReachingC2Em.exit.i.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #9
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i7.i.i: ; preds = %_ZN2v88internal12_GLOBAL__N_111MyersDiffer16FurthestReachingC2Em.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i8.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i.i.i8.i.i, label %_ZN2v88internal12_GLOBAL__N_111MyersDifferC2EPNS0_10Comparator5InputEPNS3_6OutputE.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i7.i.i
  %i.ai = shl nuw nsw i64 %i.ag, 2
  %i.aj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #10 ; 4 uses
  store ptr %i.aj, ptr %i.w, align 8
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ag
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.ak, ptr %i.al, align 8
  store i32 0, ptr %i.aj, align 4
  %i.am = getelementptr i8, ptr %i.aj, i64 4      ; 3 uses
  %i.an = add nsw i64 %i.ag, -1                   ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_ZN2v88internal12_GLOBAL__N_111MyersDifferC2EPNS0_10Comparator5InputEPNS3_6OutputE.exit.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i9.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i9.i.i: ; preds = %bb.e
  %.idx.i.i.i.i.i.i.i.i10.i.i = shl nuw nsw i64 %i.an, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.am, i8 0, i64 %.idx.i.i.i.i.i.i.i.i10.i.i, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx.i.i.i.i.i.i.i.i10.i.i
  br label %_ZN2v88internal12_GLOBAL__N_111MyersDifferC2EPNS0_10Comparator5InputEPNS3_6OutputE.exit.i

_ZN2v88internal12_GLOBAL__N_111MyersDifferC2EPNS0_10Comparator5InputEPNS3_6OutputE.exit.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i9.i.i, %bb.e, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i7.i.i
  %.0.i.i.i.i.i.i11.i.i = phi ptr [ %i.ap, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i9.i.i ], [ %i.am, %bb.e ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i7.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %.0.i.i.i.i.i.i11.i.i, ptr %i.aq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.ar = load ptr, ptr %0, align 8, !noalias !22
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !22
  %i.at = tail call noundef i32 %i.as(ptr noundef nonnull align 8 dereferenceable(8) %0) #8, !noalias !22, !inline_history !12
  %i.au = load ptr, ptr %0, align 8, !noalias !22
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !22
  %i.ax = tail call noundef i32 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %0) #8, !noalias !22, !inline_history !12
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.ax to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.at to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  call fastcc void @_ZN2v88internal12_GLOBAL__N_111MyersDiffer12FindEditPathENS2_5PointES3_(ptr dead_on_unwind noalias nonnull writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 0, i64 %.sroa.0.0.insert.insert.i.i)
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val.i = load i8, ptr %i.ay, align 8, !range !5, !noundef !6
  %i.az = trunc nuw i8 %.val.i to i1
  br i1 %i.az, label %bb.f, label %_ZNSt14_Optional_baseIN2v88internal12_GLOBAL__N_111MyersDiffer4PathELb0ELb0EED2Ev.exit.i

bb.f:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_111MyersDifferC2EPNS0_10Comparator5InputEPNS3_6OutputE.exit.i
  %.val2.i = load ptr, ptr %3, align 8            ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val3.i = load ptr, ptr %i.ba, align 8         ; 3 uses
  %i.bb = load ptr, ptr %i.a, align 8             ; 6 uses
  %i.bc = ptrtoint ptr %.val3.i to i64
  %i.bd = ptrtoint ptr %.val2.i to i64            ; 2 uses
  %i.be = sub i64 %i.bc, %i.bd
  %4 = ashr exact i64 %i.be, 3                    ; 2 uses
  %i.bf = icmp ugt i64 %4, 1
  br i1 %i.bf, label %.lr.ph.i.i, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer11WriteResultERKNS2_4PathE.exit.thread.i

._crit_edge.i.i:                                  ; preds = %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit55.i.i
  %i.bg = trunc nuw i8 %.sroa.6.11.i.i to i1
  %i.bh = getelementptr inbounds i8, ptr %.val3.i, i64 -8
  %.val26.i.i = load i32, ptr %i.bh, align 4
  %i.bi = getelementptr i8, ptr %.val3.i, i64 -4
  %.val27.i.i = load i32, ptr %i.bi, align 4
  br i1 %i.bg, label %bb.g, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer11WriteResultERKNS2_4PathE.exit.thread.i

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.bj = trunc nuw i8 %.sroa.25.5.fr.i.i to i1
  br i1 %i.bj, label %bb.i, label %bb.h, !prof !7

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #9
  unreachable

bb.i:                                             ; preds = %bb.g
  %.sroa.1737.12.extract.trunc.i.i = trunc i64 %.sroa.1737.3.i.i to i32 ; 2 uses
  %.sroa.1737.16.extract.shift.i.i = lshr i64 %.sroa.1737.3.i.i, 32
  %.sroa.1737.16.extract.trunc.i.i = trunc nuw i64 %.sroa.1737.16.extract.shift.i.i to i32 ; 2 uses
  %i.bk = sub nsw i32 %.val26.i.i, %.sroa.1737.12.extract.trunc.i.i
  %i.bl = sub nsw i32 %.val27.i.i, %.sroa.1737.16.extract.trunc.i.i
  %i.bm = load ptr, ptr %i.bb, align 8
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, i32 noundef %.sroa.1737.12.extract.trunc.i.i, i32 noundef %.sroa.1737.16.extract.trunc.i.i, i32 noundef %i.bk, i32 noundef %i.bl) #8, !inline_history !13
  br label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer11WriteResultERKNS2_4PathE.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.f, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit55.i.i
  %.065.i.i = phi i64 [ %i.fb, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit55.i.i ], [ 1, %bb.f ] ; 2 uses
  %.sroa.6.064.i.i = phi i8 [ %.sroa.6.11.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit55.i.i ], [ 0, %bb.f ] ; 5 uses
  %.sroa.25.063.i.i = phi i8 [ %.sroa.25.5.fr.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit55.i.i ], [ 0, %bb.f ] ; 4 uses
  %.sroa.1737.062.i.i = phi i64 [ %.sroa.1737.3.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit55.i.i ], [ undef, %bb.f ] ; 5 uses
  %i.bo = getelementptr [8 x i8], ptr %.val2.i, i64 %.065.i.i ; 3 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 -8
  %i.bq = load i64, ptr %i.bp, align 4            ; 2 uses
  %.sroa.07.0.copyload.i.i = load i32, ptr %i.bo, align 4 ; 11 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %.sroa.6.0.copyload.i.i = load i32, ptr %.sroa.6.0..sroa_idx.i.i, align 4 ; 11 uses
  %.sroa.0.0.extract.trunc6.i.i.i = trunc i64 %i.bq to i32 ; 8 uses
  %.sroa.6.0.extract.shift.i.i.i = lshr i64 %i.bq, 32 ; 2 uses
  %.sroa.6.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i to i32 ; 8 uses
  %i.br = icmp sgt i32 %.sroa.07.0.copyload.i.i, %.sroa.0.0.extract.trunc6.i.i.i
  %i.bs = icmp sgt i32 %.sroa.6.0.copyload.i.i, %.sroa.6.0.extract.trunc.i.i.i
  %or.cond10.i.i.i = select i1 %i.br, i1 %i.bs, i1 false
  br i1 %or.cond10.i.i.i, label %.lr.ph.i.preheader.i.i, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %.lr.ph.i.i
  %i.bt = trunc i8 %.sroa.25.063.i.i to i1
  %.sroa.1737.12.extract.trunc39.i.i = trunc i64 %.sroa.1737.062.i.i to i32 ; 2 uses
  %.sroa.1737.16.extract.shift43.i.i = lshr i64 %.sroa.1737.062.i.i, 32
  %.sroa.1737.16.extract.trunc44.i.i = trunc nuw i64 %.sroa.1737.16.extract.shift43.i.i to i32 ; 2 uses
  %i.bu = load ptr, ptr %2, align 8               ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = call noundef zeroext i1 %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, i32 noundef %.sroa.0.0.extract.trunc6.i.i.i, i32 noundef %.sroa.6.0.extract.trunc.i.i.i) #8, !inline_history !14 ; 2 uses
  br i1 %i.bt, label %.lr.ph.i.us.preheader.i.i, label %.lr.ph.i.preheader71.i.i, !prof !7

.lr.ph.i.preheader71.i.i:                         ; preds = %.lr.ph.i.preheader.i.i
  br i1 %i.by, label %bb.j, label %.critedge.loopexit.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.preheader71.i.i
  %i.bz = trunc nuw i8 %.sroa.6.064.i.i to i1
  br i1 %i.bz, label %.loopexit79.i.i, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i.peel.i.i

_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i.peel.i.i: ; preds = %bb.j
  %i.ca = add nsw i32 %.sroa.0.0.extract.trunc6.i.i.i, 1 ; 3 uses
  %i.cb = add nsw i32 %.sroa.6.0.extract.trunc.i.i.i, 1 ; 3 uses
  %i.cc = icmp slt i32 %i.ca, %.sroa.07.0.copyload.i.i
  %i.cd = icmp slt i32 %i.cb, %.sroa.6.0.copyload.i.i
  %or.cond.i.peel.i.i = select i1 %i.cc, i1 %i.cd, i1 false
  br i1 %or.cond.i.peel.i.i, label %.lr.ph.i.i.i, label %.critedge.loopexit.i.i.i

.lr.ph.i.us.preheader.i.i:                        ; preds = %.lr.ph.i.preheader.i.i
  br i1 %i.by, label %bb.k, label %.critedge.loopexit.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.us.preheader.i.i
  %i.ce = trunc nuw i8 %.sroa.6.064.i.i to i1
  br i1 %i.ce, label %bb.l, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i.us.peel.i.i

bb.l:                                             ; preds = %bb.k
  %i.cf = sub nsw i32 %.sroa.0.0.extract.trunc6.i.i.i, %.sroa.1737.12.extract.trunc39.i.i
  %i.cg = sub nsw i32 %.sroa.6.0.extract.trunc.i.i.i, %.sroa.1737.16.extract.trunc44.i.i
  %i.ch = load ptr, ptr %i.bb, align 8
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, i32 noundef %.sroa.1737.12.extract.trunc39.i.i, i32 noundef %.sroa.1737.16.extract.trunc44.i.i, i32 noundef %i.cf, i32 noundef %i.cg) #8, !inline_history !15
  br label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i.us.peel.i.i

_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i.us.peel.i.i: ; preds = %bb.l, %bb.k
  %i.cj = add nsw i32 %.sroa.0.0.extract.trunc6.i.i.i, 1 ; 3 uses
  %i.ck = add nsw i32 %.sroa.6.0.extract.trunc.i.i.i, 1 ; 3 uses
  %i.cl = icmp slt i32 %i.cj, %.sroa.07.0.copyload.i.i
  %i.cm = icmp slt i32 %i.ck, %.sroa.6.0.copyload.i.i
  %or.cond.i.us.peel.i.i = select i1 %i.cl, i1 %i.cm, i1 false
  br i1 %or.cond.i.us.peel.i.i, label %.lr.ph.i.us.i.i, label %.critedge.loopexit.i.i.i

.lr.ph.i.us.i.i:                                  ; preds = %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i.us.peel.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i.us.i.i
  %.sroa.0.012.i.us.i.i = phi i32 [ %i.cs, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i.us.i.i ], [ %i.cj, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i.us.peel.i.i ] ; 3 uses
  %.sroa.6.011.i.us.i.i = phi i32 [ %i.ct, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i.us.i.i ], [ %i.ck, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i.us.peel.i.i ] ; 3 uses
  %i.cn = load ptr, ptr %2, align 8               ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = call noundef zeroext i1 %i.cq(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, i32 noundef %.sroa.0.012.i.us.i.i, i32 noundef %.sroa.6.011.i.us.i.i) #8, !inline_history !16
  br i1 %i.cr, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i.us.i.i, label %.critedge.loopexit.i.i.i

_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i.us.i.i: ; preds = %.lr.ph.i.us.i.i
  %i.cs = add nsw i32 %.sroa.0.012.i.us.i.i, 1    ; 3 uses
  %i.ct = add nsw i32 %.sroa.6.011.i.us.i.i, 1    ; 3 uses
  %i.cu = icmp slt i32 %i.cs, %.sroa.07.0.copyload.i.i
  %i.cv = icmp slt i32 %i.ct, %.sroa.6.0.copyload.i.i
  %or.cond.i.us.i.i = select i1 %i.cu, i1 %i.cv, i1 false
  br i1 %or.cond.i.us.i.i, label %.lr.ph.i.us.i.i, label %.critedge.loopexit.i.i.i, !llvm.loop !17

.lr.ph.i.i.i:                                     ; preds = %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i.peel.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i.i.i
  %.sroa.0.012.i.i.i = phi i32 [ %i.db, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i.i.i ], [ %i.ca, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i.peel.i.i ] ; 3 uses
  %.sroa.6.011.i.i.i = phi i32 [ %i.dc, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i.i.i ], [ %i.cb, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i.peel.i.i ] ; 3 uses
  %i.cw = load ptr, ptr %2, align 8               ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = call noundef zeroext i1 %i.cz(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, i32 noundef %.sroa.0.012.i.i.i, i32 noundef %.sroa.6.011.i.i.i) #8, !inline_history !16
  br i1 %i.da, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i.i.i, label %.critedge.loopexit.i.i.i

.loopexit79.i.i:                                  ; preds = %bb.j
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #9
  unreachable

_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.db = add nsw i32 %.sroa.0.012.i.i.i, 1       ; 3 uses
  %i.dc = add nsw i32 %.sroa.6.011.i.i.i, 1       ; 3 uses
  %i.dd = icmp slt i32 %i.db, %.sroa.07.0.copyload.i.i
  %i.de = icmp slt i32 %i.dc, %.sroa.6.0.copyload.i.i
  %or.cond.i.i.i = select i1 %i.dd, i1 %i.de, i1 false
  br i1 %or.cond.i.i.i, label %.lr.ph.i.i.i, label %.critedge.loopexit.i.i.i, !llvm.loop !18

.critedge.loopexit.i.i.i:                         ; preds = %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i.i.i, %.lr.ph.i.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i.us.i.i, %.lr.ph.i.us.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i.us.peel.i.i, %.lr.ph.i.us.preheader.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i.peel.i.i, %.lr.ph.i.preheader71.i.i
  %.us-phi.i.i = phi i8 [ 0, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i.peel.i.i ], [ %.sroa.6.064.i.i, %.lr.ph.i.us.preheader.i.i ], [ 0, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i.us.peel.i.i ], [ 0, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i.us.i.i ], [ %.sroa.6.064.i.i, %.lr.ph.i.preheader71.i.i ], [ 0, %.lr.ph.i.us.i.i ], [ 0, %.lr.ph.i.i.i ], [ 0, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i.i.i ]
  %.us-phi58.i.i = phi i32 [ %i.cb, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i.peel.i.i ], [ %.sroa.6.0.extract.trunc.i.i.i, %.lr.ph.i.us.preheader.i.i ], [ %i.ck, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i.us.peel.i.i ], [ %i.ct, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i.us.i.i ], [ %.sroa.6.0.extract.trunc.i.i.i, %.lr.ph.i.preheader71.i.i ], [ %.sroa.6.011.i.us.i.i, %.lr.ph.i.us.i.i ], [ %i.dc, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i.i.i ], [ %.sroa.6.011.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %.us-phi59.i.i = phi i32 [ %i.ca, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i.peel.i.i ], [ %.sroa.0.0.extract.trunc6.i.i.i, %.lr.ph.i.us.preheader.i.i ], [ %i.cj, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i.us.peel.i.i ], [ %i.cs, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i.us.i.i ], [ %.sroa.0.0.extract.trunc6.i.i.i, %.lr.ph.i.preheader71.i.i ], [ %.sroa.0.012.i.us.i.i, %.lr.ph.i.us.i.i ], [ %i.db, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i.i.i ], [ %.sroa.0.012.i.i.i, %.lr.ph.i.i.i ]
  %i.df = zext i32 %.us-phi58.i.i to i64
  br label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit.i.i

_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit.i.i: ; preds = %.critedge.loopexit.i.i.i, %.lr.ph.i.i
  %.sroa.12.0.extract.trunc18.pre-phi.i.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i, %.lr.ph.i.i ], [ %.us-phi58.i.i, %.critedge.loopexit.i.i.i ] ; 3 uses
  %.sroa.6.4.i.i = phi i8 [ %.sroa.6.064.i.i, %.lr.ph.i.i ], [ %.us-phi.i.i, %.critedge.loopexit.i.i.i ] ; 3 uses
  %.sroa.6.0.lcssa.i.i.i = phi i64 [ %.sroa.6.0.extract.shift.i.i.i, %.lr.ph.i.i ], [ %i.df, %.critedge.loopexit.i.i.i ] ; 3 uses
  %.sroa.0.0.lcssa.i.i.i = phi i32 [ %.sroa.0.0.extract.trunc6.i.i.i, %.lr.ph.i.i ], [ %.us-phi59.i.i, %.critedge.loopexit.i.i.i ] ; 6 uses
  %i.dg = add i32 %.sroa.07.0.copyload.i.i, %.sroa.12.0.extract.trunc18.pre-phi.i.i
  %i.dh = add i32 %.sroa.6.0.copyload.i.i, %.sroa.0.0.lcssa.i.i.i
  %i.di = sub i32 %i.dg, %i.dh
  switch i32 %i.di, label %bb.m [
    i32 -1, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter25RecordInsertionOrDeletionERKNS2_5PointE.exit.i.i
    i32 1, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter25RecordInsertionOrDeletionERKNS2_5PointE.exit35.i.i
  ]

_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter25RecordInsertionOrDeletionERKNS2_5PointE.exit.i.i: ; preds = %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit.i.i
  %.sroa.12.0.insert.shift26.i.i = shl nuw i64 %.sroa.6.0.lcssa.i.i.i, 32
  %.sroa.0.0.insert.ext10.i.i = zext i32 %.sroa.0.0.lcssa.i.i.i to i64
  %.sroa.0.0.insert.insert12.i.i = or disjoint i64 %.sroa.12.0.insert.shift26.i.i, %.sroa.0.0.insert.ext10.i.i
  %i.dj = trunc nuw i8 %.sroa.6.4.i.i to i1       ; 2 uses
  %.sroa.1737.1.i.i = select i1 %i.dj, i64 %.sroa.1737.062.i.i, i64 %.sroa.0.0.insert.insert12.i.i
  %.sroa.25.2.i.i = select i1 %i.dj, i8 %.sroa.25.063.i.i, i8 1
  %i.dk = trunc nuw i64 %.sroa.6.0.lcssa.i.i.i to i32
  %.pre85.i.i = add i32 %i.dk, 1
  br label %bb.m

_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter25RecordInsertionOrDeletionERKNS2_5PointE.exit35.i.i: ; preds = %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit.i.i
  %.sroa.12.0.insert.shift22.i.i = shl nuw i64 %.sroa.6.0.lcssa.i.i.i, 32
  %.sroa.0.0.insert.ext7.i.i = zext i32 %.sroa.0.0.lcssa.i.i.i to i64
  %.sroa.0.0.insert.insert9.i.i = or disjoint i64 %.sroa.12.0.insert.shift22.i.i, %.sroa.0.0.insert.ext7.i.i
  %i.dl = trunc nuw i8 %.sroa.6.4.i.i to i1       ; 2 uses
  %.sroa.1737.2.i.i = select i1 %i.dl, i64 %.sroa.1737.062.i.i, i64 %.sroa.0.0.insert.insert9.i.i
  %.sroa.25.4.i.i = select i1 %i.dl, i8 %.sroa.25.063.i.i, i8 1
  %i.dm = add nsw i32 %.sroa.0.0.lcssa.i.i.i, 1
  br label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter25RecordInsertionOrDeletionERKNS2_5PointE.exit35.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter25RecordInsertionOrDeletionERKNS2_5PointE.exit.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit.i.i
  %.sroa.6.0.extract.trunc.i38.pre-phi.i.i = phi i32 [ %.sroa.12.0.extract.trunc18.pre-phi.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit.i.i ], [ %.sroa.12.0.extract.trunc18.pre-phi.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter25RecordInsertionOrDeletionERKNS2_5PointE.exit35.i.i ], [ %.pre85.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter25RecordInsertionOrDeletionERKNS2_5PointE.exit.i.i ] ; 5 uses
  %.sroa.1737.3.i.i = phi i64 [ %.sroa.1737.062.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit.i.i ], [ %.sroa.1737.2.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter25RecordInsertionOrDeletionERKNS2_5PointE.exit35.i.i ], [ %.sroa.1737.1.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter25RecordInsertionOrDeletionERKNS2_5PointE.exit.i.i ] ; 5 uses
  %.sroa.25.5.i.i = phi i8 [ %.sroa.25.063.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit.i.i ], [ %.sroa.25.4.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter25RecordInsertionOrDeletionERKNS2_5PointE.exit35.i.i ], [ %.sroa.25.2.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter25RecordInsertionOrDeletionERKNS2_5PointE.exit.i.i ]
  %.sroa.6.7.i.i = phi i8 [ %.sroa.6.4.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit.i.i ], [ 1, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter25RecordInsertionOrDeletionERKNS2_5PointE.exit35.i.i ], [ 1, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter25RecordInsertionOrDeletionERKNS2_5PointE.exit.i.i ] ; 5 uses
  %.sroa.0.0.i.i = phi i32 [ %.sroa.0.0.lcssa.i.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit.i.i ], [ %i.dm, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter25RecordInsertionOrDeletionERKNS2_5PointE.exit35.i.i ], [ %.sroa.0.0.lcssa.i.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter25RecordInsertionOrDeletionERKNS2_5PointE.exit.i.i ] ; 5 uses
  %.sroa.25.5.fr.i.i = freeze i8 %.sroa.25.5.i.i  ; 3 uses
  %i.dn = icmp slt i32 %.sroa.0.0.i.i, %.sroa.07.0.copyload.i.i
  %i.do = icmp sgt i32 %.sroa.6.0.copyload.i.i, %.sroa.6.0.extract.trunc.i38.pre-phi.i.i
  %or.cond10.i40.i.i = select i1 %i.dn, i1 %i.do, i1 false
  br i1 %or.cond10.i40.i.i, label %.lr.ph.i46.preheader.i.i, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit55.i.i

.lr.ph.i46.preheader.i.i:                         ; preds = %bb.m
  %i.dp = trunc i8 %.sroa.25.5.fr.i.i to i1
  %.sroa.1737.12.extract.trunc41.i.i = trunc i64 %.sroa.1737.3.i.i to i32 ; 2 uses
  %.sroa.1737.16.extract.shift46.i.i = lshr i64 %.sroa.1737.3.i.i, 32
  %.sroa.1737.16.extract.trunc47.i.i = trunc nuw i64 %.sroa.1737.16.extract.shift46.i.i to i32 ; 2 uses
  %i.dq = load ptr, ptr %2, align 8               ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = call noundef zeroext i1 %i.dt(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, i32 noundef %.sroa.0.0.i.i, i32 noundef %.sroa.6.0.extract.trunc.i38.pre-phi.i.i) #8, !inline_history !14 ; 2 uses
  br i1 %i.dp, label %.lr.ph.i46.us.preheader.i.i, label %.lr.ph.i46.preheader68.i.i, !prof !7

.lr.ph.i46.preheader68.i.i:                       ; preds = %.lr.ph.i46.preheader.i.i
  br i1 %i.du, label %bb.n, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit55.i.i

bb.n:                                             ; preds = %.lr.ph.i46.preheader68.i.i
  %i.dv = trunc nuw i8 %.sroa.6.7.i.i to i1
  br i1 %i.dv, label %.loopexit83.i.i, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.peel.i.i

_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.peel.i.i: ; preds = %bb.n
  %i.dw = add nsw i32 %.sroa.0.0.i.i, 1           ; 2 uses
  %i.dx = add nsw i32 %.sroa.6.0.extract.trunc.i38.pre-phi.i.i, 1 ; 2 uses
  %i.dy = icmp slt i32 %i.dw, %.sroa.07.0.copyload.i.i
  %i.dz = icmp slt i32 %i.dx, %.sroa.6.0.copyload.i.i
  %or.cond.i53.peel.i.i = select i1 %i.dy, i1 %i.dz, i1 false
  br i1 %or.cond.i53.peel.i.i, label %.lr.ph.i46.i.i, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit55.i.i

.lr.ph.i46.us.preheader.i.i:                      ; preds = %.lr.ph.i46.preheader.i.i
  br i1 %i.du, label %bb.o, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit55.i.i

bb.o:                                             ; preds = %.lr.ph.i46.us.preheader.i.i
  %i.ea = trunc nuw i8 %.sroa.6.7.i.i to i1
  br i1 %i.ea, label %bb.p, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.us.peel.i.i

bb.p:                                             ; preds = %bb.o
  %i.eb = sub nsw i32 %.sroa.0.0.i.i, %.sroa.1737.12.extract.trunc41.i.i
  %i.ec = sub nsw i32 %.sroa.6.0.extract.trunc.i38.pre-phi.i.i, %.sroa.1737.16.extract.trunc47.i.i
  %i.ed = load ptr, ptr %i.bb, align 8
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, i32 noundef %.sroa.1737.12.extract.trunc41.i.i, i32 noundef %.sroa.1737.16.extract.trunc47.i.i, i32 noundef %i.eb, i32 noundef %i.ec) #8, !inline_history !15
  br label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.us.peel.i.i

_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.us.peel.i.i: ; preds = %bb.p, %bb.o
  %i.ef = add nsw i32 %.sroa.0.0.i.i, 1           ; 2 uses
  %i.eg = add nsw i32 %.sroa.6.0.extract.trunc.i38.pre-phi.i.i, 1 ; 2 uses
  %i.eh = icmp slt i32 %i.ef, %.sroa.07.0.copyload.i.i
  %i.ei = icmp slt i32 %i.eg, %.sroa.6.0.copyload.i.i
  %or.cond.i53.us.peel.i.i = select i1 %i.eh, i1 %i.ei, i1 false
  br i1 %or.cond.i53.us.peel.i.i, label %.lr.ph.i46.us.i.i, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit55.i.i

.lr.ph.i46.us.i.i:                                ; preds = %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.us.peel.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.us.i.i
  %.sroa.0.012.i47.us.i.i = phi i32 [ %i.eo, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.us.i.i ], [ %i.ef, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.us.peel.i.i ] ; 2 uses
  %.sroa.6.011.i48.us.i.i = phi i32 [ %i.ep, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.us.i.i ], [ %i.eg, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.us.peel.i.i ] ; 2 uses
  %i.ej = load ptr, ptr %2, align 8               ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = call noundef zeroext i1 %i.em(ptr noundef nonnull align 8 dereferenceable(8) %i.ej, i32 noundef %.sroa.0.012.i47.us.i.i, i32 noundef %.sroa.6.011.i48.us.i.i) #8, !inline_history !16
  br i1 %i.en, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.us.i.i, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit55.i.i

_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.us.i.i: ; preds = %.lr.ph.i46.us.i.i
  %i.eo = add nsw i32 %.sroa.0.012.i47.us.i.i, 1  ; 2 uses
  %i.ep = add nsw i32 %.sroa.6.011.i48.us.i.i, 1  ; 2 uses
  %i.eq = icmp slt i32 %i.eo, %.sroa.07.0.copyload.i.i
  %i.er = icmp slt i32 %i.ep, %.sroa.6.0.copyload.i.i
  %or.cond.i53.us.i.i = select i1 %i.eq, i1 %i.er, i1 false
  br i1 %or.cond.i53.us.i.i, label %.lr.ph.i46.us.i.i, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit55.i.i, !llvm.loop !19

.lr.ph.i46.i.i:                                   ; preds = %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.peel.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.i.i
  %.sroa.0.012.i47.i.i = phi i32 [ %i.ex, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.i.i ], [ %i.dw, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.peel.i.i ] ; 2 uses
  %.sroa.6.011.i48.i.i = phi i32 [ %i.ey, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.i.i ], [ %i.dx, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.peel.i.i ] ; 2 uses
  %i.es = load ptr, ptr %2, align 8               ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = call noundef zeroext i1 %i.ev(ptr noundef nonnull align 8 dereferenceable(8) %i.es, i32 noundef %.sroa.0.012.i47.i.i, i32 noundef %.sroa.6.011.i48.i.i) #8, !inline_history !16
  br i1 %i.ew, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.i.i, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit55.i.i

.loopexit83.i.i:                                  ; preds = %bb.n
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #9
  unreachable

_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.i.i: ; preds = %.lr.ph.i46.i.i
  %i.ex = add nsw i32 %.sroa.0.012.i47.i.i, 1     ; 2 uses
  %i.ey = add nsw i32 %.sroa.6.011.i48.i.i, 1     ; 2 uses
  %i.ez = icmp slt i32 %i.ex, %.sroa.07.0.copyload.i.i
  %i.fa = icmp slt i32 %i.ey, %.sroa.6.0.copyload.i.i
  %or.cond.i53.i.i = select i1 %i.ez, i1 %i.fa, i1 false
  br i1 %or.cond.i53.i.i, label %.lr.ph.i46.i.i, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit55.i.i, !llvm.loop !20

_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit55.i.i: ; preds = %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.i.i, %.lr.ph.i46.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.us.i.i, %.lr.ph.i46.us.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.us.peel.i.i, %.lr.ph.i46.us.preheader.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.peel.i.i, %.lr.ph.i46.preheader68.i.i, %bb.m
  %.sroa.6.11.i.i = phi i8 [ %.sroa.6.7.i.i, %bb.m ], [ 0, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.peel.i.i ], [ %.sroa.6.7.i.i, %.lr.ph.i46.us.preheader.i.i ], [ 0, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.us.peel.i.i ], [ 0, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.us.i.i ], [ %.sroa.6.7.i.i, %.lr.ph.i46.preheader68.i.i ], [ 0, %.lr.ph.i46.us.i.i ], [ 0, %.lr.ph.i46.i.i ], [ 0, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.i.i ] ; 2 uses
  %i.fb = add nuw i64 %.065.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.fb, %4
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !21

_ZN2v88internal12_GLOBAL__N_111MyersDiffer11WriteResultERKNS2_4PathE.exit.thread.i: ; preds = %bb.i, %._crit_edge.i.i, %bb.f
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val2.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseIN2v88internal12_GLOBAL__N_111MyersDiffer4PathELb0ELb0EED2Ev.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_111MyersDiffer11WriteResultERKNS2_4PathE.exit.thread.i
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val1.i.i.i.i.i = load ptr, ptr %i.fc, align 8
  %i.fd = ptrtoint ptr %.val1.i.i.i.i.i to i64
  %i.fe = sub i64 %i.fd, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %.val2.i, i64 noundef %i.fe) #11
  br label %_ZNSt14_Optional_baseIN2v88internal12_GLOBAL__N_111MyersDiffer4PathELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseIN2v88internal12_GLOBAL__N_111MyersDiffer4PathELb0ELb0EED2Ev.exit.i: ; preds = %bb.q, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer11WriteResultERKNS2_4PathE.exit.thread.i, %_ZN2v88internal12_GLOBAL__N_111MyersDifferC2EPNS0_10Comparator5InputEPNS3_6OutputE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %.val2.i.i = load ptr, ptr %i.w, align 8        ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.val2.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer16FurthestReachingD2Ev.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt14_Optional_baseIN2v88internal12_GLOBAL__N_111MyersDiffer4PathELb0ELb0EED2Ev.exit.i
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.val3.i.i = load ptr, ptr %i.ff, align 8
  %i.fg = ptrtoint ptr %.val3.i.i to i64
  %i.fh = ptrtoint ptr %.val2.i.i to i64
  %i.fi = sub i64 %i.fg, %i.fh
  call void @_ZdlPvm(ptr noundef nonnull %.val2.i.i, i64 noundef %i.fi) #11
  br label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer16FurthestReachingD2Ev.exit.i.i

_ZN2v88internal12_GLOBAL__N_111MyersDiffer16FurthestReachingD2Ev.exit.i.i: ; preds = %bb.r, %_ZNSt14_Optional_baseIN2v88internal12_GLOBAL__N_111MyersDiffer4PathELb0ELb0EED2Ev.exit.i
  %.val.i.i = load ptr, ptr %i.b, align 8         ; 3 uses
  %.not.i.i.i.i4.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i.i4.i.i, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer9MyersDiffEPNS0_10Comparator5InputEPNS3_6OutputE.exit, label %bb.s

bb.s:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_111MyersDiffer16FurthestReachingD2Ev.exit.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.val1.i.i = load ptr, ptr %i.fj, align 8
  %i.fk = ptrtoint ptr %.val1.i.i to i64
  %i.fl = ptrtoint ptr %.val.i.i to i64
  %i.fm = sub i64 %i.fk, %i.fl
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i, i64 noundef %i.fm) #11
  br label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer9MyersDiffEPNS0_10Comparator5InputEPNS3_6OutputE.exit

_ZN2v88internal12_GLOBAL__N_111MyersDiffer9MyersDiffEPNS0_10Comparator5InputEPNS3_6OutputE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_111MyersDiffer16FurthestReachingD2Ev.exit.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_111MyersDiffer12FindEditPathENS2_5PointES3_(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 %2, i64 %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.std::optional", align 8     ; 8 uses
  %5 = alloca %"class.std::optional", align 8     ; 8 uses
  %6 = alloca %"struct.v8::internal::(anonymous namespace)::MyersDiffer::Path", align 8 ; 15 uses
  %.sroa.0.0.extract.trunc45.i = trunc i64 %2 to i32 ; 7 uses
  %.sroa.18.8.extract.trunc77.i = trunc i64 %3 to i32 ; 5 uses
  %.sroa.0.4.extract.shift.i = lshr i64 %2, 32
  %.sroa.0.4.extract.trunc.i = trunc nuw i64 %.sroa.0.4.extract.shift.i to i32 ; 6 uses
  %.sroa.18.12.extract.shift.i = lshr i64 %3, 32
  %.sroa.18.12.extract.trunc.i = trunc nuw i64 %.sroa.18.12.extract.shift.i to i32 ; 4 uses
  %i.a = add i32 %.sroa.0.4.extract.trunc.i, %.sroa.0.0.extract.trunc45.i
  %i.b = sub i32 %.sroa.18.8.extract.trunc77.i, %i.a
  %i.c = add i32 %i.b, %.sroa.18.12.extract.trunc.i ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %.val8.i = load ptr, ptr %i.e, align 8, !noalias !37
  %i.f = getelementptr inbounds nuw i8, ptr %.val8.i, i64 4
  store i32 %.sroa.0.0.extract.trunc45.i, ptr %i.f, align 4, !noalias !37
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %.val.i = load ptr, ptr %i.g, align 8, !noalias !37 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %.val7.i = load ptr, ptr %i.h, align 8, !noalias !37
  %i.i = ptrtoint ptr %.val7.i to i64
  %i.j = ptrtoint ptr %.val.i to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = getelementptr i8, ptr %.val.i, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 -4
  store i32 %.sroa.18.8.extract.trunc77.i, ptr %i.m, align 4, !noalias !37
  %i.n = sitofp i32 %i.c to float
  %i.o = fmul nnan float %i.n, 5.000000e-01
  %i.p = tail call noundef float @llvm.ceil.f32(float %i.o) ; 2 uses
  %i.q = fcmp ult float %i.p, 0.000000e+00
  br i1 %i.q, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.s = add i32 %.sroa.0.4.extract.trunc.i, %.sroa.18.8.extract.trunc77.i
  %i.t = add i32 %.sroa.0.0.extract.trunc45.i, %.sroa.18.12.extract.trunc.i
  %.reass.i = sub i32 %i.s, %i.t                  ; 3 uses
  %.not36.i.i = trunc i32 %.reass.i to i1         ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.v, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.v ] ; 11 uses
  %i.u = sub nsw i64 0, %indvars.iv.i             ; 5 uses
  %i.v = sub nsw i64 1, %indvars.iv.i             ; 5 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  %indvars.iv.i.i = phi i64 [ %i.u, %bb.c ], [ %indvars.iv.next.i.i, %bb.k ] ; 12 uses
  %i.w = icmp eq i64 %indvars.iv.i.i, %i.u
  %.val51.pre.i.i = load ptr, ptr %i.e, align 8, !noalias !38 ; 7 uses
  %.val52.pre.i.i = load ptr, ptr %i.r, align 8, !noalias !38 ; 3 uses
  br i1 %i.w, label %._crit_edge100.i.i, label %bb.e

._crit_edge100.i.i:                               ; preds = %bb.d
  %.pre101.i.i = ptrtoint ptr %.val52.pre.i.i to i64
  %.pre103.i.i = ptrtoint ptr %.val51.pre.i.i to i64
  %.pre105.i.i = sub i64 %.pre101.i.i, %.pre103.i.i
  %.pre107.i.i = ashr exact i64 %.pre105.i.i, 2
  %.pre109.i.i = add nsw i64 %.pre107.i.i, %i.v
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.x = icmp eq i64 %indvars.iv.i.i, %indvars.iv.i
  %.pre111.i.i = add nsw i64 %indvars.iv.i.i, -1  ; 3 uses
  %.pre113.i.i = ptrtoint ptr %.val52.pre.i.i to i64
  %.pre115.i.i = ptrtoint ptr %.val51.pre.i.i to i64
  %.pre117.i.i = sub i64 %.pre113.i.i, %.pre115.i.i
  %.pre119.i.i = ashr exact i64 %.pre117.i.i, 2   ; 2 uses
  %.pre121.i.i = add nsw i64 %.pre119.i.i, %.pre111.i.i ; 2 uses
  br i1 %i.x, label %._crit_edge.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = icmp slt i64 %indvars.iv.i.i, 1
  %i.z = select i1 %i.y, i64 %.pre121.i.i, i64 %.pre111.i.i
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.val51.pre.i.i, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !noalias !38
  %i.ac = add nsw i64 %indvars.iv.i.i, 1          ; 3 uses
  %i.ad = add nsw i64 %.pre119.i.i, %i.ac         ; 2 uses
  %i.ae = icmp slt i64 %indvars.iv.i.i, -1
  %i.af = select i1 %i.ae, i64 %i.ad, i64 %i.ac
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.val51.pre.i.i, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !noalias !38
  %i.ai = icmp slt i32 %i.ab, %i.ah
  br i1 %i.ai, label %bb.g, label %._crit_edge.i.i

bb.g:                                             ; preds = %bb.f, %._crit_edge100.i.i
  %.pre-phi110.i.i = phi i64 [ %.pre109.i.i, %._crit_edge100.i.i ], [ %i.ad, %bb.f ]
  %.pre-phi.i.i = phi i64 [ %i.v, %._crit_edge100.i.i ], [ %i.ac, %bb.f ]
  %i.aj = icmp slt i64 %indvars.iv.i.i, -1
  %i.ak = select i1 %i.aj, i64 %.pre-phi110.i.i, i64 %.pre-phi.i.i
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.val51.pre.i.i, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !noalias !38 ; 2 uses
  br label %bb.h

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.f
  %i.an = icmp slt i64 %indvars.iv.i.i, 1
  %i.ao = select i1 %i.an, i64 %.pre121.i.i, i64 %.pre111.i.i
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.val51.pre.i.i, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !noalias !38 ; 2 uses
  %i.ar = add nsw i32 %i.aq, 1
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i, %bb.g
  %storemerge.i.i = phi i32 [ %i.ar, %._crit_edge.i.i ], [ %i.am, %bb.g ] ; 5 uses
  %.sroa.0.0.i.i = phi i32 [ %i.aq, %._crit_edge.i.i ], [ %i.am, %bb.g ] ; 2 uses
  %i.as = trunc nsw i64 %indvars.iv.i.i to i32    ; 2 uses
  %i.at = add i32 %.sroa.0.0.extract.trunc45.i, %i.as
  %i.au = sub i32 %.sroa.0.4.extract.trunc.i, %i.at
  %i.av = add i32 %i.au, %storemerge.i.i          ; 4 uses
  %i.aw = icmp slt i32 %storemerge.i.i, %.sroa.18.8.extract.trunc77.i
  %i.ax = icmp slt i32 %i.av, %.sroa.18.12.extract.trunc.i
  %i.ay = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %i.ay, label %.lr.ph.i.i, label %.critedge.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.i
  %.sroa.11.080.i.i = phi i32 [ %i.bf, %bb.i ], [ %i.av, %bb.h ] ; 3 uses
  %.sroa.065.079.i.i = phi i32 [ %i.be, %bb.i ], [ %storemerge.i.i, %bb.h ] ; 3 uses
  %i.az = load ptr, ptr %1, align 8, !noalias !38 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !38
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !38
  %i.bd = tail call noundef zeroext i1 %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.az, i32 noundef %.sroa.065.079.i.i, i32 noundef %.sroa.11.080.i.i) #8, !noalias !38, !inline_history !28
  br i1 %i.bd, label %bb.i, label %.critedge.loopexit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.be = add nsw i32 %.sroa.065.079.i.i, 1       ; 3 uses
  %i.bf = add nsw i32 %.sroa.11.080.i.i, 1        ; 3 uses
  %i.bg = icmp slt i32 %i.be, %.sroa.18.8.extract.trunc77.i
  %i.bh = icmp slt i32 %i.bf, %.sroa.18.12.extract.trunc.i
  %i.bi = select i1 %i.bg, i1 %i.bh, i1 false
  br i1 %i.bi, label %.lr.ph.i.i, label %.critedge.loopexit.i.i, !llvm.loop !29

.critedge.loopexit.i.i:                           ; preds = %bb.i, %.lr.ph.i.i
  %.sroa.065.0.lcssa.ph.i.i = phi i32 [ %.sroa.065.079.i.i, %.lr.ph.i.i ], [ %i.be, %bb.i ]
  %.sroa.11.0.lcssa.ph.i.i = phi i32 [ %.sroa.11.080.i.i, %.lr.ph.i.i ], [ %i.bf, %bb.i ]
  %.val47.pre.i.i = load ptr, ptr %i.e, align 8, !noalias !38
  %.val48.pre.i.i = load ptr, ptr %i.r, align 8, !noalias !38
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge.loopexit.i.i, %bb.h
  %.val48.i.i = phi ptr [ %.val52.pre.i.i, %bb.h ], [ %.val48.pre.i.i, %.critedge.loopexit.i.i ]
  %.val47.i.i = phi ptr [ %.val51.pre.i.i, %bb.h ], [ %.val47.pre.i.i, %.critedge.loopexit.i.i ] ; 2 uses
  %.sroa.065.0.lcssa.i.i = phi i32 [ %storemerge.i.i, %bb.h ], [ %.sroa.065.0.lcssa.ph.i.i, %.critedge.loopexit.i.i ] ; 3 uses
  %.sroa.11.0.lcssa.i.i = phi i32 [ %i.av, %bb.h ], [ %.sroa.11.0.lcssa.ph.i.i, %.critedge.loopexit.i.i ]
  %i.bj = ptrtoint ptr %.val48.i.i to i64
end_hunk_0
