Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/rewrites_fp?download=true
inline.NumInlined: 316
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN4bzla11RewriteRuleILNS_15RewriteRuleKindE280EE6_applyERNS_8RewriterERKNS_4NodeE:bb.a
  ret void
}

declare void @_ZNK4bzla13FloatingPoint5fprtiENS_12RoundingModeE(ptr dead_on_unwind writable sret(%"class.bzla::FloatingPoint") align 8, ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN4bzla11RewriteRuleILNS_15RewriteRuleKindE281EE6_applyERNS_8RewriterERKNS_4NodeE(ptr dead_on_unwind noalias writable sret(%"class.bzla::Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.bzla::FloatingPoint", align 8 ; 7 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0)
  %i.b = tail call noundef zeroext i1 @_ZNK4bzla4Node8is_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 1)
  %i.d = tail call noundef zeroext i1 @_ZNK4bzla4Node8is_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.e = tail call noundef nonnull align 8 dereferenceable(216) ptr @_ZN4bzla8Rewriter2nmEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 1)
  %i.g = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK4bzla4Node5valueINS_13FloatingPointEEERKT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0)
  %i.i = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK4bzla4Node5valueINS_12RoundingModeEEERKT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %i.j = load i32, ptr %i.i, align 4, !tbaa !21
  call void @_ZNK4bzla13FloatingPoint6fpsqrtENS_12RoundingModeE(ptr dead_on_unwind nonnull writable sret(%"class.bzla::FloatingPoint") align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i32 noundef %i.j)
  invoke void @_ZN4bzla11NodeManager8mk_valueERKNS_13FloatingPointE(ptr dead_on_unwind writable sret(%"class.bzla::Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZN4bzla13FloatingPointD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla13FloatingPointD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  resume { ptr, i32 } %i.k

bb.g:                                             ; preds = %bb.e, %bb.c
  ret void
}

declare void @_ZNK4bzla13FloatingPoint6fpsqrtENS_12RoundingModeE(ptr dead_on_unwind writable sret(%"class.bzla::FloatingPoint") align 8, ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN4bzla11RewriteRuleILNS_15RewriteRuleKindE282EE6_applyERNS_8RewriterERKNS_4NodeE(ptr dead_on_unwind noalias writable sret(%"class.bzla::Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.bzla::FloatingPoint", align 8 ; 7 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0)
  %i.b = tail call noundef zeroext i1 @_ZNK4bzla4Node8is_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(216) ptr @_ZN4bzla8Rewriter2nmEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.d = tail call noundef i64 @_ZNK4bzla4Node5indexEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0)
  %i.e = tail call noundef i64 @_ZNK4bzla4Node5indexEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 1)
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0)
  %i.g = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4bzla4Node5valueINS_9BitVectorEEERKT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  call void @_ZN4bzla13FloatingPointC1EmmRKNS_9BitVectorE(ptr noundef nonnull align 8 dereferenceable(48) %3, i64 noundef %i.d, i64 noundef %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.g)
  invoke void @_ZN4bzla11NodeManager8mk_valueERKNS_13FloatingPointE(ptr dead_on_unwind writable sret(%"class.bzla::Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN4bzla13FloatingPointD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla13FloatingPointD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  resume { ptr, i32 } %i.h

bb.f:                                             ; preds = %bb.d, %bb.b
  ret void
}

declare noundef i64 @_ZNK4bzla4Node5indexEm(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4bzla4Node5valueINS_9BitVectorEEERKT_v(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN4bzla13FloatingPointC1EmmRKNS_9BitVectorE(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN4bzla11RewriteRuleILNS_15RewriteRuleKindE283EE6_applyERNS_8RewriterERKNS_4NodeE(ptr dead_on_unwind noalias writable sret(%"class.bzla::Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.bzla::FloatingPoint", align 8 ; 7 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0)
  %i.b = tail call noundef zeroext i1 @_ZNK4bzla4Node8is_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 1)
  %i.d = tail call noundef zeroext i1 @_ZNK4bzla4Node8is_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.e = tail call noundef nonnull align 8 dereferenceable(216) ptr @_ZN4bzla8Rewriter2nmEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.f = tail call noundef i64 @_ZNK4bzla4Node5indexEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0)
  %i.g = tail call noundef i64 @_ZNK4bzla4Node5indexEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 1)
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0)
  %i.i = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK4bzla4Node5valueINS_12RoundingModeEEERKT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %i.j = load i32, ptr %i.i, align 4, !tbaa !21
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 1)
  %i.l = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK4bzla4Node5valueINS_13FloatingPointEEERKT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  call void @_ZN4bzla13FloatingPointC1EmmNS_12RoundingModeERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %3, i64 noundef %i.f, i64 noundef %i.g, i32 noundef %i.j, ptr noundef nonnull align 8 dereferenceable(48) %i.l)
  invoke void @_ZN4bzla11NodeManager8mk_valueERKNS_13FloatingPointE(ptr dead_on_unwind writable sret(%"class.bzla::Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZN4bzla13FloatingPointD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla13FloatingPointD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  resume { ptr, i32 } %i.m

bb.g:                                             ; preds = %bb.e, %bb.c
  ret void
}

declare void @_ZN4bzla13FloatingPointC1EmmNS_12RoundingModeERKS0_(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef, i64 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN4bzla11RewriteRuleILNS_15RewriteRuleKindE284EE6_applyERNS_8RewriterERKNS_4NodeE(ptr dead_on_unwind noalias writable sret(%"class.bzla::Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.bzla::FloatingPoint", align 8 ; 7 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0)
  %i.b = tail call noundef zeroext i1 @_ZNK4bzla4Node8is_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 1)
  %i.d = tail call noundef zeroext i1 @_ZNK4bzla4Node8is_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.e = tail call noundef nonnull align 8 dereferenceable(216) ptr @_ZN4bzla8Rewriter2nmEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.f = tail call noundef i64 @_ZNK4bzla4Node5indexEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0)
  %i.g = tail call noundef i64 @_ZNK4bzla4Node5indexEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 1)
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0)
  %i.i = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK4bzla4Node5valueINS_12RoundingModeEEERKT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %i.j = load i32, ptr %i.i, align 4, !tbaa !21
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 1)
  %i.l = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4bzla4Node5valueINS_9BitVectorEEERKT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  call void @_ZN4bzla13FloatingPointC1EmmNS_12RoundingModeERKNS_9BitVectorEb(ptr noundef nonnull align 8 dereferenceable(48) %3, i64 noundef %i.f, i64 noundef %i.g, i32 noundef %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i1 noundef zeroext true)
  invoke void @_ZN4bzla11NodeManager8mk_valueERKNS_13FloatingPointE(ptr dead_on_unwind writable sret(%"class.bzla::Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZN4bzla13FloatingPointD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla13FloatingPointD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  resume { ptr, i32 } %i.m

bb.g:                                             ; preds = %bb.e, %bb.c
  ret void
}

declare void @_ZN4bzla13FloatingPointC1EmmNS_12RoundingModeERKNS_9BitVectorEb(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef, i64 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN4bzla11RewriteRuleILNS_15RewriteRuleKindE285EE6_applyERNS_8RewriterERKNS_4NodeE(ptr dead_on_unwind noalias writable sret(%"class.bzla::Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.bzla::Node", align 8        ; 8 uses
  %4 = alloca %"class.std::vector.44", align 8    ; 13 uses
  %5 = alloca [2 x %"class.bzla::Node"], align 8  ; 11 uses
  %6 = alloca %"class.std::vector.49", align 8    ; 12 uses
  %7 = alloca %"class.std::vector.44", align 8    ; 13 uses
  %8 = alloca [3 x %"class.bzla::Node"], align 8  ; 21 uses
  %9 = alloca %"class.std::vector.44", align 8    ; 13 uses
  %10 = alloca [2 x %"class.bzla::Node"], align 8 ; 14 uses
  %11 = alloca %"class.bzla::BitVector", align 8  ; 7 uses
  %12 = alloca %"class.std::vector.49", align 8   ; 9 uses
  %13 = alloca %"class.std::vector.44", align 8   ; 13 uses
  %14 = alloca [1 x %"class.bzla::Node"], align 8 ; 7 uses
  %15 = alloca %"class.std::vector.49", align 8   ; 9 uses
  %16 = alloca %"class.std::vector.49", align 8   ; 9 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 1)
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4Node4typeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.c = tail call noundef i64 @_ZNK4bzla4Type7bv_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.bu

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.d unwind label %.thread

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 1)
          to label %bb.e unwind label %.loopexit211.loopexit220

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.f unwind label %.loopexit211.loopexit220

bb.f:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.h = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #11
          to label %.noexc unwind label %bb.j     ; 6 uses

.noexc:                                           ; preds = %bb.f
  store ptr %i.h, ptr %4, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !13
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %.thread262

.thread262:                                       ; preds = %.noexc
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  %i.m = call ptr @__cxa_begin_catch(ptr %i.l) #10 ; 0 uses
  br label %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i

_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1 unwind label %.lr.ph.i.i.i.i.i.i.i.preheader

_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1: ; preds = %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.q = invoke noundef i64 @_ZNK4bzla4Node5indexEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0)
          to label %bb.l unwind label %bb.bd

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  %i.t = call ptr @__cxa_begin_catch(ptr %i.s) #10 ; 0 uses
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.h) #10
  br label %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i

_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.thread262
  invoke void @__cxa_rethrow() #12
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body155 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #13
  unreachable

bb.i:                                             ; preds = %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i
  unreachable

bb.j:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body155

.body155:                                         ; preds = %bb.g, %bb.j
  %eh.lpad-body156 = phi { ptr, i32 } [ %i.x, %bb.j ], [ %i.u, %bb.g ] ; 2 uses
  %i.y = load ptr, ptr %4, align 8, !tbaa !12     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %.body, label %bb.k

bb.k:                                             ; preds = %.body155
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !13
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #14
  br label %.body

bb.l:                                             ; preds = %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %i.ae = invoke noundef i64 @_ZNK4bzla4Node5indexEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 1)
          to label %bb.m unwind label %bb.bd

bb.m:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.af = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #11
          to label %bb.p unwind label %bb.n       ; 4 uses

bb.n:                                             ; preds = %bb.m
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %6, align 8, !tbaa !17    ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i4.i, label %.body83, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !18
  %17 = ptrtoint ptr %i.aj to i64
  %18 = ptrtoint ptr %i.ah to i64
  %19 = sub i64 %17, %18
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %19) #14
  br label %.body83

bb.p:                                             ; preds = %bb.m
  store ptr %i.af, ptr %6, align 8, !tbaa !17
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !18
  store i64 %i.q, ptr %i.af, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %i.ae, ptr %.sroa.5.0..sroa_idx, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !22
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla8Rewriter7mk_nodeENS_4node4KindERKSt6vectorINS_4NodeESaIS4_EERKS3_ImSaImEE(ptr noundef nonnull align 8 dereferenceable(208) %1, i8 noundef zeroext 91, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.q unwind label %bb.be

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %bb.r unwind label %bb.be

bb.r:                                             ; preds = %bb.q
  %i.ao = load ptr, ptr %6, align 8, !tbaa !17    ; 3 uses
  %.not.i.i.i85 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i85, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.as) #14
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %i.at = load ptr, ptr %4, align 8, !tbaa !12    ; 3 uses
  %i.au = load ptr, ptr %i.p, align 8, !tbaa !14  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.at, %i.au
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i ], [ %i.at, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 2 uses
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i) #10
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i87 = icmp eq ptr %i.av, %i.au
  br i1 %.not.i.i.i87, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !12
  br label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorImSaImEED2Ev.exit
  %i.aw = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.at, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i
  %i.ax = load ptr, ptr %i.j, align 8, !tbaa !13
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = sub i64 %i.ay, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.ba) #14
  br label %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit

_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit:       ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i, %bb.t
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bb) #10
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 1)
          to label %bb.u unwind label %bb.bg

bb.u:                                             ; preds = %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.bc)
          to label %bb.v unwind label %bb.bg

bb.v:                                             ; preds = %bb.u
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.be = invoke noundef nonnull align 8 dereferenceable(216) ptr @_ZN4bzla8Rewriter2nmEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
          to label %bb.w unwind label %bb.bg

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  invoke void @_ZN4bzla9BitVector6mk_oneEm(ptr dead_on_unwind nonnull writable sret(%"class.bzla::BitVector") align 8 %11, i64 noundef 1)
          to label %bb.x unwind label %bb.bh

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN4bzla11NodeManager8mk_valueERKNS_9BitVectorE(ptr dead_on_unwind nonnull writable sret(%"class.bzla::Node") align 8 %i.bd, ptr noundef nonnull align 8 dereferenceable(216) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.y unwind label %bb.bi

bb.y:                                             ; preds = %bb.x
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.bf = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #11
          to label %.noexc167 unwind label %bb.ac ; 6 uses

.noexc167:                                        ; preds = %bb.y
  store ptr %i.bf, ptr %9, align 8, !tbaa !12
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !13
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i165 unwind label %.thread265

.thread265:                                       ; preds = %.noexc167
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  %i.bk = call ptr @__cxa_begin_catch(ptr %i.bj) #10 ; 0 uses
  br label %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i164

_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i165: ; preds = %.noexc167
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull align 8 dereferenceable(8) %i.bd)
          to label %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i165.1 unwind label %.lr.ph.i.i.i.i.i.i.i161.preheader

_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i165.1: ; preds = %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i165
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.bo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla8Rewriter7mk_nodeENS_4node4KindERKSt6vectorINS_4NodeESaIS4_EERKS3_ImSaImEE(ptr noundef nonnull align 8 dereferenceable(208) %1, i8 noundef zeroext 5, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.ae unwind label %bb.bj

.lr.ph.i.i.i.i.i.i.i161.preheader:                ; preds = %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i165
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  %i.br = call ptr @__cxa_begin_catch(ptr %i.bq) #10 ; 0 uses
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bf) #10
  br label %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i164

_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i164: ; preds = %.lr.ph.i.i.i.i.i.i.i161.preheader, %.thread265
  invoke void @__cxa_rethrow() #12
          to label %bb.ab unwind label %bb.z

bb.z:                                             ; preds = %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i164
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body168 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #13
  unreachable

bb.ab:                                            ; preds = %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i164
  unreachable

bb.ac:                                            ; preds = %bb.y
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body168

.body168:                                         ; preds = %bb.z, %bb.ac
  %eh.lpad-body169 = phi { ptr, i32 } [ %i.bv, %bb.ac ], [ %i.bs, %bb.z ] ; 2 uses
  %i.bw = load ptr, ptr %9, align 8, !tbaa !12    ; 3 uses
  %.not.i.i.i89 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i89, label %.body91, label %bb.ad

bb.ad:                                            ; preds = %.body168
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !13
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bw to i64
  %i.cb = sub i64 %i.bz, %i.ca
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.cb) #14
  br label %.body91

bb.ae:                                            ; preds = %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i165.1
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.bo)
          to label %bb.af unwind label %bb.bj

bb.af:                                            ; preds = %bb.ae
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #10
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.ag unwind label %bb.bk

bb.ag:                                            ; preds = %bb.af
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.cd = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #11
          to label %.noexc181 unwind label %bb.ak ; 3 uses

.noexc181:                                        ; preds = %bb.ag
  store ptr %i.cd, ptr %13, align 8, !tbaa !12
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !13
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i179 unwind label %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i178

_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i179: ; preds = %.noexc181
end_hunk_0
begin_hunk_1_@_ZN4bzla11RewriteRuleILNS_15RewriteRuleKindE285EE6_applyERNS_8RewriterERKNS_4NodeE:bb.a

bb.ar:                                            ; preds = %bb.aq
  %i.dk = landingpad { ptr, i32 }
          catch ptr null
  %i.dl = extractvalue { ptr, i32 } %i.dk, 0
  call void @__clang_call_terminate(ptr %i.dl) #13
  unreachable

bb.as:                                            ; preds = %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i192
  unreachable

bb.at:                                            ; preds = %bb.ao
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %.body196

.body196:                                         ; preds = %bb.aq, %bb.at
  %eh.lpad-body197 = phi { ptr, i32 } [ %i.dm, %bb.at ], [ %i.dj, %bb.aq ] ; 2 uses
  %i.dn = load ptr, ptr %7, align 8, !tbaa !12    ; 3 uses
  %.not.i.i.i99 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i99, label %.body101, label %bb.au

bb.au:                                            ; preds = %.body196
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !13
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.dn to i64
  %i.ds = sub i64 %i.dq, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef %i.ds) #14
  br label %.body101

bb.av:                                            ; preds = %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i193.2
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.dd)
          to label %bb.aw unwind label %bb.bm

bb.aw:                                            ; preds = %bb.av
  %i.dt = load ptr, ptr %16, align 8, !tbaa !17   ; 3 uses
  %.not.i.i.i104 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i104, label %_ZNSt6vectorImSaImEED2Ev.exit106, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.du = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !18
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %i.dt to i64
  %i.dy = sub i64 %i.dw, %i.dx
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.dy) #14
  br label %_ZNSt6vectorImSaImEED2Ev.exit106

_ZNSt6vectorImSaImEED2Ev.exit106:                 ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #10
  %i.dz = load ptr, ptr %7, align 8, !tbaa !12    ; 3 uses
  %i.ea = load ptr, ptr %i.dc, align 8, !tbaa !14 ; 2 uses
  %.not4.i.i.i107 = icmp eq ptr %i.dz, %i.ea
  br i1 %.not4.i.i.i107, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i113, label %.lr.ph.i.i.i108

.lr.ph.i.i.i108:                                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit106, %.lr.ph.i.i.i108
  %.05.i.i.i109 = phi ptr [ %i.eb, %.lr.ph.i.i.i108 ], [ %i.dz, %_ZNSt6vectorImSaImEED2Ev.exit106 ] ; 2 uses
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i109) #10
  %i.eb = getelementptr inbounds nuw i8, ptr %.05.i.i.i109, i64 8 ; 2 uses
  %.not.i.i.i110 = icmp eq ptr %i.eb, %i.ea
  br i1 %.not.i.i.i110, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i111, label %.lr.ph.i.i.i108, !llvm.loop !0

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i111: ; preds = %.lr.ph.i.i.i108
  %.pr.i112 = load ptr, ptr %7, align 8, !tbaa !12
  br label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i113

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i113: ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i111, %_ZNSt6vectorImSaImEED2Ev.exit106
  %i.ec = phi ptr [ %.pr.i112, %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i111 ], [ %i.dz, %_ZNSt6vectorImSaImEED2Ev.exit106 ] ; 3 uses
  %.not.i.i1.i114 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i1.i114, label %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit116, label %bb.ay

bb.ay:                                            ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i113
  %i.ed = load ptr, ptr %i.cy, align 8, !tbaa !13
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = ptrtoint ptr %i.ec to i64
  %i.eg = sub i64 %i.ee, %i.ef
  call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.eg) #14
  br label %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit116

_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit116:    ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i113, %bb.ay
  %i.eh = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.eh) #10
  %i.ei = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ei) #10
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #10
  %i.ej = load ptr, ptr %15, align 8, !tbaa !17   ; 3 uses
  %.not.i.i.i117 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i117, label %_ZNSt6vectorImSaImEED2Ev.exit119, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit116
  %i.ek = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !18
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = ptrtoint ptr %i.ej to i64
  %i.eo = sub i64 %i.em, %i.en
  call void @_ZdlPvm(ptr noundef nonnull %i.ej, i64 noundef %i.eo) #14
  br label %_ZNSt6vectorImSaImEED2Ev.exit119

_ZNSt6vectorImSaImEED2Ev.exit119:                 ; preds = %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit116, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #10
  %i.ep = load ptr, ptr %13, align 8, !tbaa !12   ; 3 uses
  %i.eq = load ptr, ptr %i.cg, align 8, !tbaa !14 ; 2 uses
  %.not4.i.i.i120 = icmp eq ptr %i.ep, %i.eq
  br i1 %.not4.i.i.i120, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i126, label %.lr.ph.i.i.i121

.lr.ph.i.i.i121:                                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit119, %.lr.ph.i.i.i121
  %.05.i.i.i122 = phi ptr [ %i.er, %.lr.ph.i.i.i121 ], [ %i.ep, %_ZNSt6vectorImSaImEED2Ev.exit119 ] ; 2 uses
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i122) #10
  %i.er = getelementptr inbounds nuw i8, ptr %.05.i.i.i122, i64 8 ; 2 uses
  %.not.i.i.i123 = icmp eq ptr %i.er, %i.eq
  br i1 %.not.i.i.i123, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i124, label %.lr.ph.i.i.i121, !llvm.loop !0

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i124: ; preds = %.lr.ph.i.i.i121
  %.pr.i125 = load ptr, ptr %13, align 8, !tbaa !12
  br label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i126

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i126: ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i124, %_ZNSt6vectorImSaImEED2Ev.exit119
  %i.es = phi ptr [ %.pr.i125, %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i124 ], [ %i.ep, %_ZNSt6vectorImSaImEED2Ev.exit119 ] ; 3 uses
  %.not.i.i1.i127 = icmp eq ptr %i.es, null
  br i1 %.not.i.i1.i127, label %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit129, label %bb.ba

bb.ba:                                            ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i126
  %i.et = load ptr, ptr %i.cf, align 8, !tbaa !13
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = ptrtoint ptr %i.es to i64
  %i.ew = sub i64 %i.eu, %i.ev
  call void @_ZdlPvm(ptr noundef nonnull %i.es, i64 noundef %i.ew) #14
  br label %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit129

_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit129:    ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i126, %bb.ba
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #10
  %i.ex = load ptr, ptr %12, align 8, !tbaa !17   ; 3 uses
  %.not.i.i.i130 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i130, label %_ZNSt6vectorImSaImEED2Ev.exit132, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit129
  %i.ey = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !18
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = ptrtoint ptr %i.ex to i64
  %i.fc = sub i64 %i.fa, %i.fb
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef %i.fc) #14
  br label %_ZNSt6vectorImSaImEED2Ev.exit132

_ZNSt6vectorImSaImEED2Ev.exit132:                 ; preds = %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit129, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #10
  %i.fd = load ptr, ptr %9, align 8, !tbaa !12    ; 3 uses
  %i.fe = load ptr, ptr %i.bn, align 8, !tbaa !14 ; 2 uses
  %.not4.i.i.i133 = icmp eq ptr %i.fd, %i.fe
  br i1 %.not4.i.i.i133, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i139, label %.lr.ph.i.i.i134

.lr.ph.i.i.i134:                                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit132, %.lr.ph.i.i.i134
  %.05.i.i.i135 = phi ptr [ %i.ff, %.lr.ph.i.i.i134 ], [ %i.fd, %_ZNSt6vectorImSaImEED2Ev.exit132 ] ; 2 uses
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i135) #10
  %i.ff = getelementptr inbounds nuw i8, ptr %.05.i.i.i135, i64 8 ; 2 uses
  %.not.i.i.i136 = icmp eq ptr %i.ff, %i.fe
  br i1 %.not.i.i.i136, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i137, label %.lr.ph.i.i.i134, !llvm.loop !0

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i137: ; preds = %.lr.ph.i.i.i134
  %.pr.i138 = load ptr, ptr %9, align 8, !tbaa !12
  br label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i139

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i139: ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i137, %_ZNSt6vectorImSaImEED2Ev.exit132
  %i.fg = phi ptr [ %.pr.i138, %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i137 ], [ %i.fd, %_ZNSt6vectorImSaImEED2Ev.exit132 ] ; 3 uses
  %.not.i.i1.i140 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i1.i140, label %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit142, label %bb.bc

bb.bc:                                            ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i139
  %i.fh = load ptr, ptr %i.bh, align 8, !tbaa !13
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = ptrtoint ptr %i.fg to i64
  %i.fk = sub i64 %i.fi, %i.fj
  call void @_ZdlPvm(ptr noundef nonnull %i.fg, i64 noundef %i.fk) #14
  br label %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit142

_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit142:    ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i139, %bb.bc
  %i.fl = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fl) #10
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #10
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.bv

.thread:                                          ; preds = %bb.c, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit211

.loopexit211.loopexit220:                         ; preds = %bb.e, %bb.d
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #10
  br label %.loopexit211

bb.bd:                                            ; preds = %bb.l, %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %.body83

bb.be:                                            ; preds = %bb.q, %bb.p
  %i.fn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fo = load ptr, ptr %6, align 8, !tbaa !17    ; 3 uses
  %.not.i.i.i143 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i.i143, label %.body83, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %20 = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.fp = ptrtoint ptr %20 to i64
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = sub i64 %i.fp, %i.fq
  call void @_ZdlPvm(ptr noundef nonnull %i.fo, i64 noundef %i.fr) #14
  br label %.body83

.body83:                                          ; preds = %bb.n, %bb.o, %bb.be, %bb.bf, %bb.bd
  %.pn.pn = phi { ptr, i32 } [ %i.fm, %bb.bd ], [ %i.ag, %bb.n ], [ %i.fn, %bb.bf ], [ %i.ag, %bb.o ], [ %i.fn, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #10
  br label %.body

.body:                                            ; preds = %bb.k, %.body155, %.body83
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body83 ], [ %eh.lpad-body156, %.body155 ], [ %eh.lpad-body156, %bb.k ]
  %i.fs = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fs) #10
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #10
  br label %.loopexit211

.loopexit211:                                     ; preds = %.loopexit211.loopexit220, %.body, %.thread
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %lpad.thr_comm, %.thread ], [ %lpad.thr_comm.split-lp, %.loopexit211.loopexit220 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.bt

bb.bg:                                            ; preds = %bb.v, %bb.u, %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit
  %.057 = phi ptr [ %i.bd, %bb.v ], [ %10, %bb.u ], [ %10, %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit ]
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bh:                                            ; preds = %bb.w
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bi:                                            ; preds = %bb.x
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit208

bb.bj:                                            ; preds = %bb.ae, %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i165.1
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bk:                                            ; preds = %bb.af
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit209

bb.bl:                                            ; preds = %bb.an, %bb.am, %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i179
  %.059 = phi ptr [ %i.cv, %bb.an ], [ %i.cc, %bb.am ], [ %i.cc, %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i179 ]
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit210

bb.bm:                                            ; preds = %bb.av, %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i193.2
  %i.fz = landingpad { ptr, i32 }
          cleanup
  %i.ga = load ptr, ptr %16, align 8, !tbaa !17   ; 3 uses
  %.not.i.i.i146 = icmp eq ptr %i.ga, null
  br i1 %.not.i.i.i146, label %_ZNSt6vectorImSaImEED2Ev.exit148, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gb = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !18
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = ptrtoint ptr %i.ga to i64
  %i.gf = sub i64 %i.gd, %i.ge
  call void @_ZdlPvm(ptr noundef nonnull %i.ga, i64 noundef %i.gf) #14
  br label %_ZNSt6vectorImSaImEED2Ev.exit148

_ZNSt6vectorImSaImEED2Ev.exit148:                 ; preds = %bb.bm, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #10
  call void @_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #10
  br label %.body101

.body101:                                         ; preds = %bb.au, %.body196, %_ZNSt6vectorImSaImEED2Ev.exit148
  %.pn72 = phi { ptr, i32 } [ %i.fz, %_ZNSt6vectorImSaImEED2Ev.exit148 ], [ %eh.lpad-body197, %.body196 ], [ %eh.lpad-body197, %bb.au ]
  %i.gg = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gg) #10
  %i.gh = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gh) #10
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #10
  br label %.loopexit210

.loopexit210:                                     ; preds = %.body101, %bb.bl
  %.160 = phi ptr [ %.059, %bb.bl ], [ %i.cv, %.body101 ]
  %.pn72.pn = phi { ptr, i32 } [ %i.fy, %bb.bl ], [ %.pn72, %.body101 ]
  %i.gi = phi i1 [ false, %bb.bl ], [ true, %.body101 ]
  %i.gj = load ptr, ptr %15, align 8, !tbaa !17   ; 3 uses
  %.not.i.i.i149 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i.i149, label %_ZNSt6vectorImSaImEED2Ev.exit151, label %bb.bo

bb.bo:                                            ; preds = %.loopexit210
  %i.gk = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !18
  %i.gm = ptrtoint ptr %i.gl to i64
  %i.gn = ptrtoint ptr %i.gj to i64
  %i.go = sub i64 %i.gm, %i.gn
  call void @_ZdlPvm(ptr noundef nonnull %i.gj, i64 noundef %i.go) #14
  br label %_ZNSt6vectorImSaImEED2Ev.exit151

_ZNSt6vectorImSaImEED2Ev.exit151:                 ; preds = %.loopexit210, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #10
  call void @_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #10
  br label %.body96

.body96:                                          ; preds = %bb.al, %.body182, %_ZNSt6vectorImSaImEED2Ev.exit151
  %.261 = phi ptr [ %.160, %_ZNSt6vectorImSaImEED2Ev.exit151 ], [ %i.cc, %.body182 ], [ %i.cc, %bb.al ]
  %.pn72.pn.pn = phi { ptr, i32 } [ %.pn72.pn, %_ZNSt6vectorImSaImEED2Ev.exit151 ], [ %eh.lpad-body183, %.body182 ], [ %eh.lpad-body183, %bb.al ]
  %.1 = phi i1 [ %i.gi, %_ZNSt6vectorImSaImEED2Ev.exit151 ], [ false, %.body182 ], [ false, %bb.al ]
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #10
  br label %.loopexit209

.loopexit209:                                     ; preds = %.body96, %bb.bk
  %.362 = phi ptr [ %i.cc, %bb.bk ], [ %.261, %.body96 ]
  %.pn72.pn.pn.pn = phi { ptr, i32 } [ %i.fx, %bb.bk ], [ %.pn72.pn.pn, %.body96 ]
  %.2 = phi i1 [ false, %bb.bk ], [ %.1, %.body96 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #10
  br label %bb.bp

bb.bp:                                            ; preds = %.loopexit209, %bb.bj
  %.463 = phi ptr [ %.362, %.loopexit209 ], [ %8, %bb.bj ]
  %.pn72.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn72.pn.pn.pn, %.loopexit209 ], [ %i.fw, %bb.bj ]
  %.3 = phi i1 [ %.2, %.loopexit209 ], [ false, %bb.bj ]
  %i.gp = load ptr, ptr %12, align 8, !tbaa !17   ; 3 uses
  %.not.i.i.i152 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i152, label %_ZNSt6vectorImSaImEED2Ev.exit154, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gq = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !18
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = ptrtoint ptr %i.gp to i64
  %i.gu = sub i64 %i.gs, %i.gt
  call void @_ZdlPvm(ptr noundef nonnull %i.gp, i64 noundef %i.gu) #14
  br label %_ZNSt6vectorImSaImEED2Ev.exit154

_ZNSt6vectorImSaImEED2Ev.exit154:                 ; preds = %bb.bp, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #10
  call void @_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #10
  br label %.body91

.body91:                                          ; preds = %bb.ad, %.body168, %_ZNSt6vectorImSaImEED2Ev.exit154
  %.564 = phi ptr [ %.463, %_ZNSt6vectorImSaImEED2Ev.exit154 ], [ %8, %.body168 ], [ %8, %bb.ad ]
  %.pn72.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn72.pn.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit154 ], [ %eh.lpad-body169, %.body168 ], [ %eh.lpad-body169, %bb.ad ]
  %.4 = phi i1 [ %.3, %_ZNSt6vectorImSaImEED2Ev.exit154 ], [ false, %.body168 ], [ false, %bb.ad ]
  %i.gv = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gv) #10
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #10
  br label %.loopexit208

.loopexit208:                                     ; preds = %.body91, %bb.bi
  %.665 = phi ptr [ %8, %bb.bi ], [ %.564, %.body91 ]
  %i.gw = phi i1 [ false, %bb.bi ], [ true, %.body91 ]
  %.pn72.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fv, %bb.bi ], [ %.pn72.pn.pn.pn.pn.pn, %.body91 ]
  %.5 = phi i1 [ false, %bb.bi ], [ %.4, %.body91 ]
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #10
  br label %bb.br

bb.br:                                            ; preds = %.loopexit208, %bb.bh
  %.766 = phi ptr [ %.665, %.loopexit208 ], [ %8, %bb.bh ]
  %.155 = phi i1 [ %i.gw, %.loopexit208 ], [ false, %bb.bh ]
  %.pn72.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn72.pn.pn.pn.pn.pn.pn, %.loopexit208 ], [ %i.fu, %bb.bh ]
  %.6 = phi i1 [ %.5, %.loopexit208 ], [ false, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bg
  %.867 = phi ptr [ %.766, %bb.br ], [ %8, %bb.bg ] ; 2 uses
  %.158 = phi ptr [ %i.bd, %bb.br ], [ %.057, %bb.bg ] ; 2 uses
  %.256 = phi i1 [ %.155, %bb.br ], [ false, %bb.bg ]
  %.pn72.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn72.pn.pn.pn.pn.pn.pn.pn, %bb.br ], [ %i.ft, %bb.bg ]
  %.7 = phi i1 [ %.6, %bb.br ], [ false, %bb.bg ]
  %i.gx = icmp eq ptr %10, %.158
  %or.cond = select i1 %.256, i1 true, i1 %i.gx
  br i1 %or.cond, label %.loopexit207, label %.preheader206

.preheader206:                                    ; preds = %bb.bs, %.preheader206
  %i.gy = phi ptr [ %i.gz, %.preheader206 ], [ %.158, %bb.bs ]
  %i.gz = getelementptr inbounds i8, ptr %i.gy, i64 -8 ; 3 uses
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gz) #10
  %i.ha = icmp eq ptr %i.gz, %10
  br i1 %i.ha, label %.loopexit207, label %.preheader206

.loopexit207:                                     ; preds = %.preheader206, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  %i.hb = icmp eq ptr %8, %.867
  %or.cond4 = select i1 %.7, i1 true, i1 %i.hb
  br i1 %or.cond4, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit207, %.preheader
  %i.hc = phi ptr [ %i.hd, %.preheader ], [ %.867, %.loopexit207 ]
  %i.hd = getelementptr inbounds i8, ptr %i.hc, i64 -8 ; 3 uses
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.hd) #10
  %i.he = icmp eq ptr %i.hd, %8
  br i1 %i.he, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %.loopexit207
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #10
  br label %bb.bt

bb.bt:                                            ; preds = %.loopexit, %.loopexit211
  %.pn72.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn72.pn.pn.pn.pn.pn.pn.pn.pn, %.loopexit ], [ %.pn.pn.pn.pn, %.loopexit211 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  resume { ptr, i32 } %.pn72.pn.pn.pn.pn.pn.pn.pn.pn.pn

bb.bu:                                            ; preds = %bb.a
  tail call void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit142
  ret void
}

end_hunk_1
begin_hunk_2_@_ZN4bzla11RewriteRuleILNS_15RewriteRuleKindE288EE6_applyERNS_8RewriterERKNS_4NodeE:bb.a
          cleanup
  br label %.body105

.body105:                                         ; preds = %bb.f, %bb.i
  %eh.lpad-body106 = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.s, %bb.f ] ; 2 uses
  %i.w = load ptr, ptr %7, align 8, !tbaa !12     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %.loopexit147, label %bb.j

bb.j:                                             ; preds = %.body105
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !13
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #14
  br label %.loopexit147

bb.k:                                             ; preds = %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.l unwind label %bb.ap

bb.l:                                             ; preds = %bb.k
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.ac = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #11
          to label %.noexc117 unwind label %bb.p  ; 6 uses

.noexc117:                                        ; preds = %bb.l
  store ptr %i.ac, ptr %5, align 8, !tbaa !12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !13
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i115 unwind label %.thread187

.thread187:                                       ; preds = %.noexc117
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  %i.ah = call ptr @__cxa_begin_catch(ptr %i.ag) #10 ; 0 uses
  br label %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i114

_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i115: ; preds = %.noexc117
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i115.1 unwind label %.lr.ph.i.i.i.i.i.i.i111.preheader

_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i115.1: ; preds = %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i115
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla8Rewriter7mk_nodeENS_4node4KindERKSt6vectorINS_4NodeESaIS4_EERKS3_ImSaImEE(ptr noundef nonnull align 8 dereferenceable(208) %1, i8 noundef zeroext 17, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.r unwind label %bb.aq

.lr.ph.i.i.i.i.i.i.i111.preheader:                ; preds = %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i115
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  %i.ao = call ptr @__cxa_begin_catch(ptr %i.an) #10 ; 0 uses
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ac) #10
  br label %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i114

_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i114: ; preds = %.lr.ph.i.i.i.i.i.i.i111.preheader, %.thread187
  invoke void @__cxa_rethrow() #12
          to label %bb.o unwind label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i114
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body118 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #13
  unreachable

bb.o:                                             ; preds = %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i114
  unreachable

bb.p:                                             ; preds = %bb.l
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body118

.body118:                                         ; preds = %bb.m, %bb.p
  %eh.lpad-body119 = phi { ptr, i32 } [ %i.as, %bb.p ], [ %i.ap, %bb.m ] ; 2 uses
  %i.at = load ptr, ptr %5, align 8, !tbaa !12    ; 3 uses
  %.not.i.i.i54 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i54, label %.body56, label %bb.q

bb.q:                                             ; preds = %.body118
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !13
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ay) #14
  br label %.body56

bb.r:                                             ; preds = %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i115.1
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %bb.s unwind label %bb.aq

bb.s:                                             ; preds = %bb.r
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.az = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #11
          to label %.noexc131 unwind label %bb.w  ; 3 uses

.noexc131:                                        ; preds = %bb.s
  store ptr %i.az, ptr %3, align 8, !tbaa !12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !13
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i129 unwind label %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i128

_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i129: ; preds = %.noexc131
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.ba, ptr %i.bc, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 1)
          to label %bb.y unwind label %bb.ar

_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i128: ; preds = %.noexc131
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  %i.bg = call ptr @__cxa_begin_catch(ptr %i.bf) #10 ; 0 uses
  invoke void @__cxa_rethrow() #12
          to label %bb.v unwind label %bb.t

bb.t:                                             ; preds = %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i128
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body132 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #13
  unreachable

bb.v:                                             ; preds = %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i128
  unreachable

bb.w:                                             ; preds = %bb.s
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body132

.body132:                                         ; preds = %bb.t, %bb.w
  %eh.lpad-body133 = phi { ptr, i32 } [ %i.bk, %bb.w ], [ %i.bh, %bb.t ] ; 2 uses
  %i.bl = load ptr, ptr %3, align 8, !tbaa !12    ; 3 uses
  %.not.i.i.i59 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i59, label %.body61, label %bb.x

bb.x:                                             ; preds = %.body132
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !13
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bl to i64
  %i.bq = sub i64 %i.bo, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bq) #14
  br label %.body61

bb.y:                                             ; preds = %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i129
  %i.br = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4Node4typeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bd)
          to label %bb.z unwind label %bb.ar

bb.z:                                             ; preds = %bb.y
  %i.bs = invoke noundef i64 @_ZNK4bzla4Type7bv_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.br)
          to label %bb.aa unwind label %bb.ar

bb.aa:                                            ; preds = %bb.z
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 2)
          to label %bb.ab unwind label %bb.ar

bb.ab:                                            ; preds = %bb.aa
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4Node4typeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bt)
          to label %bb.ac unwind label %bb.ar

bb.ac:                                            ; preds = %bb.ab
  %i.bv = invoke noundef i64 @_ZNK4bzla4Type7bv_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bu)
          to label %bb.ad unwind label %bb.ar

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.bw = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #11
          to label %bb.ag unwind label %bb.ae     ; 4 uses

bb.ae:                                            ; preds = %bb.ad
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.by = load ptr, ptr %11, align 8, !tbaa !17   ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i4.i, label %.body64, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bz = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !18
  %12 = ptrtoint ptr %i.ca to i64
  %13 = ptrtoint ptr %i.by to i64
  %14 = sub i64 %12, %13
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %14) #14
  br label %.body64

bb.ag:                                            ; preds = %bb.ad
  %i.cb = add i64 %i.bv, 1
  store ptr %i.bw, ptr %11, align 8, !tbaa !17
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !18
  store i64 %i.bs, ptr %i.bw, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i64 %i.cb, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.cc, ptr %i.ce, align 8, !tbaa !22
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla8Rewriter7mk_nodeENS_4node4KindERKSt6vectorINS_4NodeESaIS4_EERKS3_ImSaImEE(ptr noundef nonnull align 8 dereferenceable(208) %1, i8 noundef zeroext 88, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.ah unwind label %bb.as

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.cf)
          to label %bb.ai unwind label %bb.as

bb.ai:                                            ; preds = %bb.ah
  %i.cg = load ptr, ptr %11, align 8, !tbaa !17   ; 3 uses
  %.not.i.i.i66 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i66, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !18
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cg to i64
  %i.ck = sub i64 %i.ci, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.ck) #14
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  %i.cl = load ptr, ptr %3, align 8, !tbaa !12    ; 3 uses
  %i.cm = load ptr, ptr %i.bc, align 8, !tbaa !14 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.cl, %i.cm
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i ], [ %i.cl, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 2 uses
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i) #10
  %i.cn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i68 = icmp eq ptr %i.cn, %i.cm
  br i1 %.not.i.i.i68, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !12
  br label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorImSaImEED2Ev.exit
  %i.co = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.cl, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i
  %i.cp = load ptr, ptr %i.bb, align 8, !tbaa !13
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.co to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.cs) #14
  br label %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit

_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit:       ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i, %bb.ak
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #10
  %i.ct = load ptr, ptr %10, align 8, !tbaa !17   ; 3 uses
  %.not.i.i.i70 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i70, label %_ZNSt6vectorImSaImEED2Ev.exit72, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !18
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.ct to i64
  %i.cy = sub i64 %i.cw, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cy) #14
  br label %_ZNSt6vectorImSaImEED2Ev.exit72

_ZNSt6vectorImSaImEED2Ev.exit72:                  ; preds = %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  %i.cz = load ptr, ptr %5, align 8, !tbaa !12    ; 3 uses
  %i.da = load ptr, ptr %i.ak, align 8, !tbaa !14 ; 2 uses
  %.not4.i.i.i73 = icmp eq ptr %i.cz, %i.da
  br i1 %.not4.i.i.i73, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i79, label %.lr.ph.i.i.i74

.lr.ph.i.i.i74:                                   ; preds = %_ZNSt6vectorImSaImEED2Ev.exit72, %.lr.ph.i.i.i74
  %.05.i.i.i75 = phi ptr [ %i.db, %.lr.ph.i.i.i74 ], [ %i.cz, %_ZNSt6vectorImSaImEED2Ev.exit72 ] ; 2 uses
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i75) #10
  %i.db = getelementptr inbounds nuw i8, ptr %.05.i.i.i75, i64 8 ; 2 uses
  %.not.i.i.i76 = icmp eq ptr %i.db, %i.da
  br i1 %.not.i.i.i76, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i77, label %.lr.ph.i.i.i74, !llvm.loop !0

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i77: ; preds = %.lr.ph.i.i.i74
  %.pr.i78 = load ptr, ptr %5, align 8, !tbaa !12
  br label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i79

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i79: ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i77, %_ZNSt6vectorImSaImEED2Ev.exit72
  %i.dc = phi ptr [ %.pr.i78, %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i77 ], [ %i.cz, %_ZNSt6vectorImSaImEED2Ev.exit72 ] ; 3 uses
  %.not.i.i1.i80 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i1.i80, label %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit82, label %bb.am

bb.am:                                            ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i79
  %i.dd = load ptr, ptr %i.ae, align 8, !tbaa !13
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = ptrtoint ptr %i.dc to i64
  %i.dg = sub i64 %i.de, %i.df
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.dg) #14
  br label %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit82

_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit82:     ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i79, %bb.am
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dh) #10
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #10
  %i.di = load ptr, ptr %9, align 8, !tbaa !17    ; 3 uses
  %.not.i.i.i83 = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i83, label %_ZNSt6vectorImSaImEED2Ev.exit85, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit82
  %i.dj = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !18
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = ptrtoint ptr %i.di to i64
  %i.dn = sub i64 %i.dl, %i.dm
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.dn) #14
  br label %_ZNSt6vectorImSaImEED2Ev.exit85

_ZNSt6vectorImSaImEED2Ev.exit85:                  ; preds = %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit82, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  %i.do = load ptr, ptr %7, align 8, !tbaa !12    ; 3 uses
  %i.dp = load ptr, ptr %i.n, align 8, !tbaa !14  ; 2 uses
  %.not4.i.i.i86 = icmp eq ptr %i.do, %i.dp
  br i1 %.not4.i.i.i86, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i92, label %.lr.ph.i.i.i87

.lr.ph.i.i.i87:                                   ; preds = %_ZNSt6vectorImSaImEED2Ev.exit85, %.lr.ph.i.i.i87
  %.05.i.i.i88 = phi ptr [ %i.dq, %.lr.ph.i.i.i87 ], [ %i.do, %_ZNSt6vectorImSaImEED2Ev.exit85 ] ; 2 uses
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i88) #10
  %i.dq = getelementptr inbounds nuw i8, ptr %.05.i.i.i88, i64 8 ; 2 uses
  %.not.i.i.i89 = icmp eq ptr %i.dq, %i.dp
  br i1 %.not.i.i.i89, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i90, label %.lr.ph.i.i.i87, !llvm.loop !0

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i90: ; preds = %.lr.ph.i.i.i87
  %.pr.i91 = load ptr, ptr %7, align 8, !tbaa !12
  br label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i92

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i92: ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i90, %_ZNSt6vectorImSaImEED2Ev.exit85
  %i.dr = phi ptr [ %.pr.i91, %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i90 ], [ %i.do, %_ZNSt6vectorImSaImEED2Ev.exit85 ] ; 3 uses
  %.not.i.i1.i93 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i1.i93, label %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit95, label %bb.ao

bb.ao:                                            ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i92
  %i.ds = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = ptrtoint ptr %i.dr to i64
  %i.dv = sub i64 %i.dt, %i.du
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.dv) #14
  br label %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit95

_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit95:     ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i92, %bb.ao
  %i.dw = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dw) #10
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret void

.thread:                                          ; preds = %bb.b, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit147.thread

.loopexit147.loopexit156:                         ; preds = %bb.d, %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #10
  br label %.loopexit147.thread

bb.ap:                                            ; preds = %bb.k, %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit148

bb.aq:                                            ; preds = %bb.r, %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i115.1
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit149

bb.ar:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i129
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %.body64

bb.as:                                            ; preds = %bb.ah, %bb.ag
  %i.ea = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eb = load ptr, ptr %11, align 8, !tbaa !17   ; 3 uses
  %.not.i.i.i96 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i96, label %.body64, label %bb.at

bb.at:                                            ; preds = %bb.as
  %15 = load ptr, ptr %i.cd, align 8, !tbaa !18
  %i.ec = ptrtoint ptr %15 to i64
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.ec, %i.ed
  call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef %i.ee) #14
  br label %.body64

.body64:                                          ; preds = %bb.ae, %bb.af, %bb.as, %bb.at, %bb.ar
  %.pn.pn = phi { ptr, i32 } [ %i.dz, %bb.ar ], [ %i.bx, %bb.ae ], [ %i.ea, %bb.at ], [ %i.bx, %bb.af ], [ %i.ea, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  call void @_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #10
  br label %.body61

.body61:                                          ; preds = %bb.x, %.body132, %.body64
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body64 ], [ %eh.lpad-body133, %.body132 ], [ %eh.lpad-body133, %bb.x ]
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #10
  br label %.loopexit149

.loopexit149:                                     ; preds = %.body61, %bb.aq
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dy, %bb.aq ], [ %.pn.pn.pn, %.body61 ]
  %i.ef = load ptr, ptr %10, align 8, !tbaa !17   ; 3 uses
  %.not.i.i.i99 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i99, label %_ZNSt6vectorImSaImEED2Ev.exit101, label %bb.au

bb.au:                                            ; preds = %.loopexit149
  %i.eg = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !18
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = ptrtoint ptr %i.ef to i64
  %i.ek = sub i64 %i.ei, %i.ej
  call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef %i.ek) #14
  br label %_ZNSt6vectorImSaImEED2Ev.exit101

_ZNSt6vectorImSaImEED2Ev.exit101:                 ; preds = %.loopexit149, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  call void @_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #10
  br label %.body56

.body56:                                          ; preds = %bb.q, %.body118, %_ZNSt6vectorImSaImEED2Ev.exit101
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit101 ], [ %eh.lpad-body119, %.body118 ], [ %eh.lpad-body119, %bb.q ]
  %i.el = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.el) #10
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #10
  br label %.loopexit148

.loopexit148:                                     ; preds = %.body56, %bb.ap
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dx, %bb.ap ], [ %.pn.pn.pn.pn.pn, %.body56 ]
  %.031 = phi i1 [ true, %bb.ap ], [ false, %.body56 ]
  %i.em = load ptr, ptr %9, align 8, !tbaa !17    ; 3 uses
  %.not.i.i.i102 = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i102, label %_ZNSt6vectorImSaImEED2Ev.exit104, label %bb.av

bb.av:                                            ; preds = %.loopexit148
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !18
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = ptrtoint ptr %i.em to i64
  %i.er = sub i64 %i.ep, %i.eq
  call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef %i.er) #14
  br label %_ZNSt6vectorImSaImEED2Ev.exit104

_ZNSt6vectorImSaImEED2Ev.exit104:                 ; preds = %.loopexit148, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  call void @_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #10
  br label %.loopexit147

.loopexit147.thread:                              ; preds = %.thread, %.loopexit147.loopexit156
  %.pn.pn.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.loopexit147.loopexit156 ], [ %lpad.thr_comm, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %.preheader.preheader

.loopexit147:                                     ; preds = %_ZNSt6vectorImSaImEED2Ev.exit104, %.body105, %bb.j
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit104 ], [ %eh.lpad-body106, %.body105 ], [ %eh.lpad-body106, %bb.j ] ; 2 uses
  %.132 = phi i1 [ %.031, %_ZNSt6vectorImSaImEED2Ev.exit104 ], [ true, %.body105 ], [ true, %bb.j ]
  %i.es = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.es) #10
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br i1 %.132, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.loopexit147.thread, %.loopexit147
  %.pn.pn.pn.pn.pn.pn.pn.pn193 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.ph, %.loopexit147.thread ], [ %.pn.pn.pn.pn.pn.pn.pn, %.loopexit147 ]
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #10
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %.loopexit147
  %.pn.pn.pn.pn.pn.pn.pn.pn192 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn193, %.preheader.preheader ], [ %.pn.pn.pn.pn.pn.pn.pn, %.loopexit147 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn192
}

; Function Attrs: mustprogress uwtable
define void @_ZN4bzla11RewriteRuleILNS_15RewriteRuleKindE289EE6_applyERNS_8RewriterERKNS_4NodeE(ptr dead_on_unwind noalias writable sret(%"class.bzla::Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.44", align 8    ; 11 uses
  %4 = alloca [2 x %"class.bzla::Node"], align 8  ; 10 uses
  %5 = alloca %"class.std::vector.49", align 8    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 1)
  call void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0)
          to label %bb.b unwind label %.loopexit.loopexit21

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %.loopexit.loopexit21

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.d = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #11
          to label %.noexc unwind label %.body15.thread ; 7 uses

.noexc:                                           ; preds = %bb.c
  store ptr %i.d, ptr %3, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !13
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %.thread

.thread:                                          ; preds = %.noexc
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = call ptr @__cxa_begin_catch(ptr %i.h) #10 ; 0 uses
  br label %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i

_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1 unwind label %.lr.ph.i.i.i.i.i.i.i.preheader

_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1: ; preds = %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla8Rewriter7mk_nodeENS_4node4KindERKSt6vectorINS_4NodeESaIS4_EERKS3_ImSaImEE(ptr noundef nonnull align 8 dereferenceable(208) %1, i8 noundef zeroext 78, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.g unwind label %bb.k

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = call ptr @__cxa_begin_catch(ptr %i.o) #10 ; 0 uses
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.d) #10
  br label %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i

_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.thread
  invoke void @__cxa_rethrow() #12
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body15 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #13
  unreachable

bb.f:                                             ; preds = %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i
  unreachable

.body15.thread:                                   ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body15:                                          ; preds = %bb.d
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 16) #14
  br label %.body

bb.g:                                             ; preds = %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %5, align 8, !tbaa !17     ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !18
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #14
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  %i.aa = load ptr, ptr %3, align 8, !tbaa !12    ; 3 uses
  %i.ab = load ptr, ptr %i.l, align 8, !tbaa !14  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.aa, %i.ab
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i
end_hunk_2
