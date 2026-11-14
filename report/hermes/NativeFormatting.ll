Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/NativeFormatting?download=true
inline.NumInlined: 116
inline.NumDeleted: 72
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvh::SmallString" = type { %"class.llvh::SmallVector" }
%"class.llvh::SmallVector" = type { %"class.llvh::SmallVectorImpl", %"struct.llvh::SmallVectorStorage" }
%"class.llvh::SmallVectorImpl" = type { %"class.llvh::SmallVectorTemplateBase" }
%"class.llvh::SmallVectorTemplateBase" = type { %"class.llvh::SmallVectorTemplateCommon" }
%"class.llvh::SmallVectorTemplateCommon" = type { %"class.llvh::SmallVectorBase" }
%"class.llvh::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvh::SmallVectorStorage" = type { [8 x %"struct.llvh::AlignedCharArrayUnion.0"] }
%"struct.llvh::AlignedCharArrayUnion.0" = type { %"struct.llvh::AlignedCharArray.1" }
%"struct.llvh::AlignedCharArray.1" = type { [1 x i8] }
%"class.llvh::raw_svector_ostream" = type { %"class.llvh::raw_pwrite_stream.base", ptr }
%"class.llvh::raw_pwrite_stream.base" = type { %"class.llvh::raw_ostream.base" }
%"class.llvh::raw_ostream.base" = type <{ ptr, ptr, ptr, ptr, i32 }>

@.str = private unnamed_addr constant [4 x i8] c"nan\00", align 1, !guid !8
@.str.1 = private unnamed_addr constant [4 x i8] c"INF\00", align 1, !guid !9
@.str.2 = private unnamed_addr constant [3 x i8] c"%.\00", align 1, !guid !10
@_ZTVN4llvh19raw_svector_ostreamE = external unnamed_addr constant { [14 x ptr] }, align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh13write_integerERNS_11raw_ostreamEjmNS_12IntegerStyleE(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 !guid !19 {
bb.a:
  tail call fastcc void @_ZL19write_unsigned_implIjEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleEb(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1, i64 noundef %2, i32 noundef %3, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh13write_integerERNS_11raw_ostreamEimNS_12IntegerStyleE(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 !guid !20 {
bb.a:
  %i.a = icmp sgt i32 %1, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZL19write_unsigned_implIjEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleEb(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1, i64 noundef %2, i32 noundef %3, i1 noundef zeroext false)
  br label %_ZL12write_signedIiEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleE.exit

bb.c:                                             ; preds = %bb.a
  %i.b = sub i32 0, %1
  tail call fastcc void @_ZL19write_unsigned_implIjEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleEb(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %i.b, i64 noundef %2, i32 noundef %3, i1 noundef zeroext true)
  br label %_ZL12write_signedIiEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleE.exit

_ZL12write_signedIiEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleE.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh13write_integerERNS_11raw_ostreamEmmNS_12IntegerStyleE(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 !guid !21 {
bb.a:
  tail call fastcc void @_ZL14write_unsignedImEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleEb(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL14write_unsignedImEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleEb(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 !guid !24 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  %i.b = icmp ult i64 %1, 4294967296
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = trunc nuw i64 %1 to i32
  tail call fastcc void @_ZL19write_unsigned_implIjEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleEb(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %i.c, i64 noundef %2, i32 noundef %3, i1 noundef zeroext %4)
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 48, i64 128, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.07.i.i = phi i64 [ %1, %bb.c ], [ %i.i, %bb.d ] ; 3 uses
  %.0.i.i = phi ptr [ %i.d, %bb.c ], [ %i.h, %bb.d ]
  %i.e = urem i64 %.07.i.i, 10
  %i.f = trunc nuw nsw i64 %i.e to i8
  %i.g = or disjoint i8 %i.f, 48
  %i.h = getelementptr inbounds i8, ptr %.0.i.i, i64 -1 ; 3 uses
  store i8 %i.g, ptr %i.h, align 1, !tbaa !11
  %i.i = udiv i64 %.07.i.i, 10
  %.not.i.i = icmp ult i64 %.07.i.i, 10
  br i1 %.not.i.i, label %_ZL16format_to_bufferImLm128EEiT_RAT0__c.exit.i, label %bb.d, !llvm.loop !22

_ZL16format_to_bufferImLm128EEiT_RAT0__c.exit.i:  ; preds = %bb.d
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = shl i64 %i.l, 32
  %i.n = ashr exact i64 %i.m, 32                  ; 7 uses
  br i1 %4, label %bb.e, label %_ZN4llvh11raw_ostreamlsEc.exit.i

bb.e:                                             ; preds = %_ZL16format_to_bufferImLm128EEiT_RAT0__c.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !17   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !18
  %.not.i20.i = icmp ult ptr %i.p, %i.r
  br i1 %.not.i20.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %0, i8 noundef zeroext 45) #11 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit.i

bb.g:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store ptr %i.t, ptr %i.o, align 8, !tbaa !17
  store i8 45, ptr %i.p, align 1, !tbaa !11
  br label %_ZN4llvh11raw_ostreamlsEc.exit.i

_ZN4llvh11raw_ostreamlsEc.exit.i:                 ; preds = %bb.g, %bb.f, %_ZL16format_to_bufferImLm128EEiT_RAT0__c.exit.i
  %i.u = icmp ugt i64 %2, %i.n
  %i.v = icmp ne i32 %3, 1                        ; 2 uses
  %or.cond.i = and i1 %i.v, %i.u
  br i1 %or.cond.i, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %_ZN4llvh11raw_ostreamlsEc.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvh11raw_ostreamlsEc.exit24.i, %.preheader.i
  %.025.i = phi i64 [ %i.n, %.preheader.i ], [ %i.ac, %_ZN4llvh11raw_ostreamlsEc.exit24.i ]
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !17   ; 3 uses
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !18
  %.not.i22.i = icmp ult ptr %i.y, %i.z
  br i1 %.not.i22.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %0, i8 noundef zeroext 48) #11 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit24.i

bb.j:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store ptr %i.ab, ptr %i.w, align 8, !tbaa !17
  store i8 48, ptr %i.y, align 1, !tbaa !11
  br label %_ZN4llvh11raw_ostreamlsEc.exit24.i

_ZN4llvh11raw_ostreamlsEc.exit24.i:               ; preds = %bb.j, %bb.i
  %i.ac = add nuw i64 %.025.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ac, %2
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.h, !llvm.loop !23

.loopexit.i:                                      ; preds = %_ZN4llvh11raw_ostreamlsEc.exit24.i, %_ZN4llvh11raw_ostreamlsEc.exit.i
  %i.ad = sub nsw i64 0, %i.n
  %i.ae = getelementptr inbounds i8, ptr %i.d, i64 %i.ad ; 3 uses
  br i1 %i.v, label %bb.o, label %bb.k

bb.k:                                             ; preds = %.loopexit.i
  %i.af = add nsw i64 %i.n, -1
  %i.ag = urem i64 %i.af, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 3 uses
  %..i.i.i = call i64 @llvm.umin.i64(i64 %i.ah, i64 %i.n)
  %i.ai = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %i.ae, i64 noundef %..i.i.i) #11 ; 0 uses
  %i.aj = sub nsw i64 %i.n, %i.ah                 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_ZL19write_unsigned_implImEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleEb.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ah
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.l

bb.l:                                             ; preds = %_ZN4llvh11raw_ostreamlsEc.exit.i.i, %.lr.ph.i.i
  %.pn2630.i.i = phi i64 [ %i.aj, %.lr.ph.i.i ], [ %i.at, %_ZN4llvh11raw_ostreamlsEc.exit.i.i ]
  %.pn2829.i.i = phi ptr [ %i.al, %.lr.ph.i.i ], [ %i.au, %_ZN4llvh11raw_ostreamlsEc.exit.i.i ] ; 2 uses
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !17 ; 3 uses
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !18
  %.not.i.i.i = icmp ult ptr %i.ao, %i.ap
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %0, i8 noundef zeroext 44) #11 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  store ptr %i.ar, ptr %i.am, align 8, !tbaa !17
  store i8 44, ptr %i.ao, align 1, !tbaa !11
  br label %_ZN4llvh11raw_ostreamlsEc.exit.i.i

_ZN4llvh11raw_ostreamlsEc.exit.i.i:               ; preds = %bb.n, %bb.m
  %i.as = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %.pn2829.i.i, i64 noundef 3) #11 ; 0 uses
  %i.at = add i64 %.pn2630.i.i, -3                ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.pn2829.i.i, i64 3
  %i.av = icmp eq i64 %i.at, 0
  br i1 %i.av, label %_ZL19write_unsigned_implImEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleEb.exit, label %bb.l, !llvm.loop !0

bb.o:                                             ; preds = %.loopexit.i
  %i.aw = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %i.ae, i64 noundef %i.n) #11 ; 0 uses
  br label %_ZL19write_unsigned_implImEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleEb.exit

_ZL19write_unsigned_implImEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleEb.exit: ; preds = %_ZN4llvh11raw_ostreamlsEc.exit.i.i, %bb.k, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.p

bb.p:                                             ; preds = %_ZL19write_unsigned_implImEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleEb.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh13write_integerERNS_11raw_ostreamElmNS_12IntegerStyleE(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 !guid !25 {
bb.a:
  %i.a = icmp sgt i64 %1, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZL14write_unsignedImEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleEb(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i1 noundef zeroext false)
  br label %_ZL12write_signedIlEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleE.exit

bb.c:                                             ; preds = %bb.a
  %i.b = sub i64 0, %1
  tail call fastcc void @_ZL14write_unsignedImEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleEb(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %i.b, i64 noundef %2, i32 noundef %3, i1 noundef zeroext true)
  br label %_ZL12write_signedIlEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleE.exit

_ZL12write_signedIlEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleE.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh13write_integerERNS_11raw_ostreamEymNS_12IntegerStyleE(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 !guid !26 {
bb.a:
  tail call fastcc void @_ZL14write_unsignedIyEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleEb(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL14write_unsignedIyEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleEb(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 !guid !29 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  %i.b = icmp ult i64 %1, 4294967296
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = trunc nuw i64 %1 to i32
  tail call fastcc void @_ZL19write_unsigned_implIjEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleEb(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %i.c, i64 noundef %2, i32 noundef %3, i1 noundef zeroext %4)
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 48, i64 128, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.07.i.i = phi i64 [ %1, %bb.c ], [ %i.i, %bb.d ] ; 3 uses
  %.0.i.i = phi ptr [ %i.d, %bb.c ], [ %i.h, %bb.d ]
  %i.e = urem i64 %.07.i.i, 10
  %i.f = trunc nuw nsw i64 %i.e to i8
  %i.g = or disjoint i8 %i.f, 48
  %i.h = getelementptr inbounds i8, ptr %.0.i.i, i64 -1 ; 3 uses
  store i8 %i.g, ptr %i.h, align 1, !tbaa !11
  %i.i = udiv i64 %.07.i.i, 10
  %.not.i.i = icmp ult i64 %.07.i.i, 10
  br i1 %.not.i.i, label %_ZL16format_to_bufferIyLm128EEiT_RAT0__c.exit.i, label %bb.d, !llvm.loop !27

_ZL16format_to_bufferIyLm128EEiT_RAT0__c.exit.i:  ; preds = %bb.d
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = shl i64 %i.l, 32
  %i.n = ashr exact i64 %i.m, 32                  ; 7 uses
  br i1 %4, label %bb.e, label %_ZN4llvh11raw_ostreamlsEc.exit.i

bb.e:                                             ; preds = %_ZL16format_to_bufferIyLm128EEiT_RAT0__c.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !17   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !18
  %.not.i20.i = icmp ult ptr %i.p, %i.r
  br i1 %.not.i20.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %0, i8 noundef zeroext 45) #11 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit.i

bb.g:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store ptr %i.t, ptr %i.o, align 8, !tbaa !17
  store i8 45, ptr %i.p, align 1, !tbaa !11
  br label %_ZN4llvh11raw_ostreamlsEc.exit.i

_ZN4llvh11raw_ostreamlsEc.exit.i:                 ; preds = %bb.g, %bb.f, %_ZL16format_to_bufferIyLm128EEiT_RAT0__c.exit.i
  %i.u = icmp ugt i64 %2, %i.n
  %i.v = icmp ne i32 %3, 1                        ; 2 uses
  %or.cond.i = and i1 %i.v, %i.u
  br i1 %or.cond.i, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %_ZN4llvh11raw_ostreamlsEc.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvh11raw_ostreamlsEc.exit24.i, %.preheader.i
  %.025.i = phi i64 [ %i.n, %.preheader.i ], [ %i.ac, %_ZN4llvh11raw_ostreamlsEc.exit24.i ]
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !17   ; 3 uses
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !18
  %.not.i22.i = icmp ult ptr %i.y, %i.z
  br i1 %.not.i22.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %0, i8 noundef zeroext 48) #11 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit24.i

bb.j:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store ptr %i.ab, ptr %i.w, align 8, !tbaa !17
  store i8 48, ptr %i.y, align 1, !tbaa !11
  br label %_ZN4llvh11raw_ostreamlsEc.exit24.i

_ZN4llvh11raw_ostreamlsEc.exit24.i:               ; preds = %bb.j, %bb.i
  %i.ac = add nuw i64 %.025.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ac, %2
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.h, !llvm.loop !28

.loopexit.i:                                      ; preds = %_ZN4llvh11raw_ostreamlsEc.exit24.i, %_ZN4llvh11raw_ostreamlsEc.exit.i
  %i.ad = sub nsw i64 0, %i.n
  %i.ae = getelementptr inbounds i8, ptr %i.d, i64 %i.ad ; 3 uses
  br i1 %i.v, label %bb.o, label %bb.k

bb.k:                                             ; preds = %.loopexit.i
  %i.af = add nsw i64 %i.n, -1
  %i.ag = urem i64 %i.af, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 3 uses
  %..i.i.i = call i64 @llvm.umin.i64(i64 %i.ah, i64 %i.n)
  %i.ai = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %i.ae, i64 noundef %..i.i.i) #11 ; 0 uses
  %i.aj = sub nsw i64 %i.n, %i.ah                 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_ZL19write_unsigned_implIyEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleEb.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ah
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.l

bb.l:                                             ; preds = %_ZN4llvh11raw_ostreamlsEc.exit.i.i, %.lr.ph.i.i
  %.pn2630.i.i = phi i64 [ %i.aj, %.lr.ph.i.i ], [ %i.at, %_ZN4llvh11raw_ostreamlsEc.exit.i.i ]
  %.pn2829.i.i = phi ptr [ %i.al, %.lr.ph.i.i ], [ %i.au, %_ZN4llvh11raw_ostreamlsEc.exit.i.i ] ; 2 uses
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !17 ; 3 uses
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !18
  %.not.i.i.i = icmp ult ptr %i.ao, %i.ap
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %0, i8 noundef zeroext 44) #11 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  store ptr %i.ar, ptr %i.am, align 8, !tbaa !17
  store i8 44, ptr %i.ao, align 1, !tbaa !11
  br label %_ZN4llvh11raw_ostreamlsEc.exit.i.i

_ZN4llvh11raw_ostreamlsEc.exit.i.i:               ; preds = %bb.n, %bb.m
  %i.as = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %.pn2829.i.i, i64 noundef 3) #11 ; 0 uses
  %i.at = add i64 %.pn2630.i.i, -3                ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.pn2829.i.i, i64 3
  %i.av = icmp eq i64 %i.at, 0
  br i1 %i.av, label %_ZL19write_unsigned_implIyEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleEb.exit, label %bb.l, !llvm.loop !0

bb.o:                                             ; preds = %.loopexit.i
  %i.aw = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %i.ae, i64 noundef %i.n) #11 ; 0 uses
  br label %_ZL19write_unsigned_implIyEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleEb.exit

_ZL19write_unsigned_implIyEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleEb.exit: ; preds = %_ZN4llvh11raw_ostreamlsEc.exit.i.i, %bb.k, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.p

bb.p:                                             ; preds = %_ZL19write_unsigned_implIyEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleEb.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh13write_integerERNS_11raw_ostreamExmNS_12IntegerStyleE(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 !guid !30 {
bb.a:
  %i.a = icmp sgt i64 %1, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZL14write_unsignedIyEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleEb(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i1 noundef zeroext false)
  br label %_ZL12write_signedIxEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleE.exit

bb.c:                                             ; preds = %bb.a
  %i.b = sub i64 0, %1
  tail call fastcc void @_ZL14write_unsignedIyEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleEb(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %i.b, i64 noundef %2, i32 noundef %3, i1 noundef zeroext true)
  br label %_ZL12write_signedIxEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleE.exit

_ZL12write_signedIxEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleE.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh9write_hexERNS_11raw_ostreamEmNS_13HexPrintStyleENS_8OptionalImEE(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %1, i32 noundef %2, i64 %3, i8 %4) local_unnamed_addr #0 !guid !32 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 6 uses
  %i.b = trunc nuw i8 %4 to i1
  %i.c = tail call i64 @llvm.umin.i64(i64 %3, i64 128)
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %1, i1 false)
  %i.e = sub nuw nsw i64 67, %i.d
  %i.f = lshr i64 %i.e, 2
  %i.g = trunc nuw nsw i64 %i.f to i32
  %i.h = and i32 %2, -2
  %i.i = icmp eq i32 %i.h, 2                      ; 2 uses
  %i.j = and i32 %2, -3
  %.not36 = icmp eq i32 %i.j, 0
  %i.k = select i1 %i.i, i32 2, i32 0
  %i.l = trunc nuw nsw i64 %i.c to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.g, i32 1)
  %i.m = add nuw nsw i32 %.sroa.speculated, %i.k  ; 2 uses
  %i.n = tail call i32 @llvm.umax.i32(i32 %i.l, i32 %i.m)
  %.sroa.speculated23 = select i1 %i.b, i32 %i.n, i32 %i.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 48, i64 128, i1 false)
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 120, ptr %i.o, align 1, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = zext nneg i32 %.sroa.speculated23 to i64 ; 2 uses
  %.not37 = icmp eq i64 %1, 0
  br i1 %.not37, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.p
  %i.r = select i1 %.not36, i32 55, i32 87
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.039 = phi i64 [ %1, %.lr.ph ], [ %i.aa, %bb.d ] ; 2 uses
  %.01838 = phi ptr [ %i.q, %.lr.ph ], [ %i.z, %bb.d ]
  %i.s = trunc i64 %.039 to i32
  %i.t = and i32 %i.s, 15                         ; 3 uses
  %i.u = icmp samesign ult i32 %i.t, 10
  %i.v = or disjoint i32 %i.t, 48
  %i.w = add nuw nsw i32 %i.r, %i.t
  %i.x = select i1 %i.u, i32 %i.v, i32 %i.w
  %i.y = trunc nuw nsw i32 %i.x to i8
  %i.z = getelementptr inbounds i8, ptr %.01838, i64 -1 ; 2 uses
  store i8 %i.y, ptr %i.z, align 1, !tbaa !11
  %i.aa = lshr i64 %.039, 4                       ; 2 uses
  %.not = icmp eq i64 %i.aa, 0
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !31

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %i.ab = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %i.a, i64 noundef %i.p) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh12write_doubleERNS_11raw_ostreamEdNS_10FloatStyleENS_8OptionalImEE(ptr noundef nonnull align 8 dereferenceable(36) %0, double noundef %1, i32 noundef %2, i64 %3, i8 %4) local_unnamed_addr #0 !guid !33 {
bb.a:
  %5 = alloca %"class.llvh::SmallString", align 8 ; 14 uses
  %6 = alloca %"class.llvh::raw_svector_ostream", align 8 ; 12 uses
  %i.a = alloca [32 x i8], align 16               ; 11 uses
  %switch.i = icmp ult i32 %2, 2
  %..i = select i1 %switch.i, i64 6, i64 2
  %i.b = trunc nuw i8 %4 to i1
  %i.c = select i1 %i.b, i64 %3, i64 %..i
  %i.d = fcmp uno double %1, 0.000000e+00
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = icmp ult i64 %i.k, 3
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @.str, i64 noundef 3) #11 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.h, ptr noundef nonnull align 1 dereferenceable(3) @.str, i64 3, i1 false)
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 3
  store ptr %i.o, ptr %i.g, align 8, !tbaa !17
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.e:                                             ; preds = %bb.a
  %i.p = tail call double @llvm.fabs.f64(double %1)
  %i.q = fcmp oeq double %i.p, +inf
  br i1 %i.q, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !17   ; 2 uses
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp ult i64 %i.x, 3
  br i1 %i.y, label %bb.g, label %bb.h
end_hunk_0
begin_hunk_1_@_ZN4llvh12write_doubleERNS_11raw_ostreamEdNS_10FloatStyleENS_8OptionalImEE:bb.a
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !17
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bk ; 2 uses
  store ptr %i.bv, ptr %i.bn, align 8, !tbaa !17
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit25

_ZN4llvh11raw_ostreamlsEPKc.exit25:               ; preds = %bb.p, %bb.q, %bb.r
  %i.bw = phi ptr [ %.pre, %bb.p ], [ %i.bo, %bb.q ], [ %i.bv, %bb.r ] ; 3 uses
  %i.bx = load ptr, ptr %i.bl, align 8, !tbaa !18
  %.not.i26 = icmp ult ptr %i.bw, %i.bx
  br i1 %.not.i26, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit25
  %i.by = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %0, i8 noundef zeroext 37) #11 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit28

bb.t:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit25
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  store ptr %i.bz, ptr %i.bn, align 8, !tbaa !17
  store i8 37, ptr %i.bw, align 1, !tbaa !11
  br label %_ZN4llvh11raw_ostreamlsEc.exit28

.critedge:                                        ; preds = %_ZN4llvh11raw_ostreamlsEc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.ca = load i32, ptr %i.ad, align 8, !tbaa !36 ; 2 uses
  %i.cb = load i32, ptr %i.ae, align 4, !tbaa !37
  %.not.i.i29 = icmp ult i32 %i.ca, %i.cb
  br i1 %.not.i.i29, label %_ZN4llvh11SmallStringILj8EE5c_strEv.exit31, label %bb.u, !prof !43

bb.u:                                             ; preds = %.critedge
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %i.ac, i64 noundef 0, i64 noundef 1) #11
  %.pre.i.i30 = load i32, ptr %i.ad, align 8, !tbaa !36
  br label %_ZN4llvh11SmallStringILj8EE5c_strEv.exit31

_ZN4llvh11SmallStringILj8EE5c_strEv.exit31:       ; preds = %.critedge, %bb.u
  %i.cc = phi i32 [ %.pre.i.i30, %bb.u ], [ %i.ca, %.critedge ]
  %i.cd = load ptr, ptr %5, align 8, !tbaa !35
  %i.ce = zext i32 %i.cc to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ce
  store i8 0, ptr %i.cf, align 1
  %i.cg = load ptr, ptr %5, align 8, !tbaa !35
  %i.ch = call noundef i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef %i.cg, double noundef %1) #11 ; 0 uses
  %i.ci = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #12 ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !18
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !17 ; 2 uses
  %i.cn = ptrtoint ptr %i.ck to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = icmp ugt i64 %i.ci, %i.cp
  br i1 %i.cq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN4llvh11SmallStringILj8EE5c_strEv.exit31
  %i.cr = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %i.a, i64 noundef %i.ci) #11 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit28

bb.w:                                             ; preds = %_ZN4llvh11SmallStringILj8EE5c_strEv.exit31
  %.not.i2.i33 = icmp eq i64 %i.ci, 0
  br i1 %.not.i2.i33, label %_ZN4llvh11raw_ostreamlsEc.exit28, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cm, ptr nonnull align 16 %i.a, i64 %i.ci, i1 false)
  %i.cs = load ptr, ptr %i.cl, align 8, !tbaa !17
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ci
  store ptr %i.ct, ptr %i.cl, align 8, !tbaa !17
  br label %_ZN4llvh11raw_ostreamlsEc.exit28

_ZN4llvh11raw_ostreamlsEc.exit28:                 ; preds = %bb.x, %bb.w, %bb.v, %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.cu = load ptr, ptr %5, align 8, !tbaa !35    ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.ac
  br i1 %i.cv, label %_ZN4llvh11SmallVectorIcLj8EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZN4llvh11raw_ostreamlsEc.exit28
  call void @free(ptr noundef %i.cu) #11
  br label %_ZN4llvh11SmallVectorIcLj8EED2Ev.exit

_ZN4llvh11SmallVectorIcLj8EED2Ev.exit:            ; preds = %_ZN4llvh11raw_ostreamlsEc.exit28, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.h, %bb.g, %bb.d, %bb.c, %_ZN4llvh11SmallVectorIcLj8EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i64 2, 7) i64 @_ZN4llvh19getDefaultPrecisionENS_10FloatStyleE(i32 noundef %0) local_unnamed_addr #4 !guid !44 {
bb.a:
  %switch = icmp ult i32 %0, 2
  %. = select i1 %switch, i64 6, i64 2
  ret i64 %.
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36), i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36)) unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN4llvh18isPrefixedHexStyleENS_13HexPrintStyleE(i32 noundef %0) local_unnamed_addr #4 !guid !45 {
bb.a:
  %i.a = and i32 %0, -2
  %i.b = icmp eq i32 %i.a, 2
  ret i1 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

declare void @_ZN4llvh11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36), i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #8

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL19write_unsigned_implIjEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleEb(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1, i64 noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 !guid !48 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 48, i64 128, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.07.i = phi i32 [ %1, %bb.a ], [ %i.g, %bb.b ] ; 3 uses
  %.0.i = phi ptr [ %i.b, %bb.a ], [ %i.f, %bb.b ]
  %i.c = urem i32 %.07.i, 10
  %i.d = trunc nuw nsw i32 %i.c to i8
  %i.e = or disjoint i8 %i.d, 48
  %i.f = getelementptr inbounds i8, ptr %.0.i, i64 -1 ; 3 uses
  store i8 %i.e, ptr %i.f, align 1, !tbaa !11
  %i.g = udiv i32 %.07.i, 10
  %.not.i = icmp ult i32 %.07.i, 10
  br i1 %.not.i, label %_ZL16format_to_bufferIjLm128EEiT_RAT0__c.exit, label %bb.b, !llvm.loop !46

_ZL16format_to_bufferIjLm128EEiT_RAT0__c.exit:    ; preds = %bb.b
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = shl i64 %i.j, 32
  %i.l = ashr exact i64 %i.k, 32                  ; 7 uses
  br i1 %4, label %bb.c, label %_ZN4llvh11raw_ostreamlsEc.exit

bb.c:                                             ; preds = %_ZL16format_to_bufferIjLm128EEiT_RAT0__c.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !17   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !18
  %.not.i20 = icmp ult ptr %i.n, %i.p
  br i1 %.not.i20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %0, i8 noundef zeroext 45) #11 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store ptr %i.r, ptr %i.m, align 8, !tbaa !17
  store i8 45, ptr %i.n, align 1, !tbaa !11
  br label %_ZN4llvh11raw_ostreamlsEc.exit

_ZN4llvh11raw_ostreamlsEc.exit:                   ; preds = %bb.e, %bb.d, %_ZL16format_to_bufferIjLm128EEiT_RAT0__c.exit
  %i.s = icmp ugt i64 %2, %i.l
  %i.t = icmp ne i32 %3, 1                        ; 2 uses
  %or.cond = and i1 %i.t, %i.s
  br i1 %or.cond, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZN4llvh11raw_ostreamlsEc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %_ZN4llvh11raw_ostreamlsEc.exit24
  %.025 = phi i64 [ %i.l, %.preheader ], [ %i.aa, %_ZN4llvh11raw_ostreamlsEc.exit24 ]
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !17   ; 3 uses
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !18
  %.not.i22 = icmp ult ptr %i.w, %i.x
  br i1 %.not.i22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %0, i8 noundef zeroext 48) #11 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit24

bb.h:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store ptr %i.z, ptr %i.u, align 8, !tbaa !17
  store i8 48, ptr %i.w, align 1, !tbaa !11
  br label %_ZN4llvh11raw_ostreamlsEc.exit24

_ZN4llvh11raw_ostreamlsEc.exit24:                 ; preds = %bb.g, %bb.h
  %i.aa = add i64 %.025, 1                        ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %2
  br i1 %exitcond.not, label %.loopexit, label %bb.f, !llvm.loop !47

.loopexit:                                        ; preds = %_ZN4llvh11raw_ostreamlsEc.exit24, %_ZN4llvh11raw_ostreamlsEc.exit
  %i.ab = sub nsw i64 0, %i.l
  %i.ac = getelementptr inbounds i8, ptr %i.b, i64 %i.ab ; 3 uses
  br i1 %i.t, label %bb.m, label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.ad = add nsw i64 %i.l, -1
  %i.ae = urem i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1                ; 3 uses
  %..i.i = call i64 @llvm.umin.i64(i64 %i.af, i64 %i.l)
  %i.ag = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %i.ac, i64 noundef %..i.i) #11 ; 0 uses
  %i.ah = sub nsw i64 %i.l, %i.af                 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_ZL15writeWithCommasRN4llvh11raw_ostreamENS_8ArrayRefIcEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.af
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.j

bb.j:                                             ; preds = %_ZN4llvh11raw_ostreamlsEc.exit.i, %.lr.ph.i
  %.pn2630.i = phi i64 [ %i.ah, %.lr.ph.i ], [ %i.ar, %_ZN4llvh11raw_ostreamlsEc.exit.i ]
  %.pn2829.i = phi ptr [ %i.aj, %.lr.ph.i ], [ %i.as, %_ZN4llvh11raw_ostreamlsEc.exit.i ] ; 2 uses
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !17 ; 3 uses
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !18
  %.not.i.i = icmp ult ptr %i.am, %i.an
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %0, i8 noundef zeroext 44) #11 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  store ptr %i.ap, ptr %i.ak, align 8, !tbaa !17
  store i8 44, ptr %i.am, align 1, !tbaa !11
  br label %_ZN4llvh11raw_ostreamlsEc.exit.i

_ZN4llvh11raw_ostreamlsEc.exit.i:                 ; preds = %bb.l, %bb.k
  %i.aq = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %.pn2829.i, i64 noundef 3) #11 ; 0 uses
  %i.ar = add i64 %.pn2630.i, -3                  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.pn2829.i, i64 3
  %i.at = icmp eq i64 %i.ar, 0
  br i1 %i.at, label %_ZL15writeWithCommasRN4llvh11raw_ostreamENS_8ArrayRefIcEE.exit, label %bb.j, !llvm.loop !0

bb.m:                                             ; preds = %.loopexit
  %i.au = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %i.ac, i64 noundef %i.l) #11 ; 0 uses
  br label %_ZL15writeWithCommasRN4llvh11raw_ostreamENS_8ArrayRefIcEE.exit

_ZL15writeWithCommasRN4llvh11raw_ostreamENS_8ArrayRefIcEE.exit: ; preds = %_ZN4llvh11raw_ostreamlsEc.exit.i, %bb.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

declare void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = distinct !{!0, !12}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{i64 -7272543920750569017}
!9 = !{i64 -1629767042204399512}
!10 = !{i64 -5710468560920888735}
!11 = !{!5, !5, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"_ZTSN4llvh11raw_ostream10BufferKindE", !5, i64 0}
!16 = !{!"_ZTSN4llvh11raw_ostreamE", !14, i64 8, !14, i64 16, !14, i64 24, !15, i64 32}
!17 = !{!16, !14, i64 24}
!18 = !{!16, !14, i64 16}
!19 = !{i64 -4515013603582783927}
!20 = !{i64 -1408007668422481688}
!21 = !{i64 2860283537962460967}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = !{i64 2543634058029657594}
!25 = !{i64 -8182822727116388985}
!26 = !{i64 2586421509458517803}
!27 = distinct !{!27, !12}
!28 = distinct !{!28, !12}
!29 = !{i64 -1460683619130786069}
!30 = !{i64 -4681502607168510225}
!31 = distinct !{!31, !12}
!32 = !{i64 8083009198614375224}
!33 = !{i64 -7533049260723536203}
!34 = !{!"_ZTSN4llvh15SmallVectorBaseE", !13, i64 0, !6, i64 8, !6, i64 12}
!35 = !{!34, !13, i64 0}
!36 = !{!34, !6, i64 8}
!37 = !{!34, !6, i64 12}
!38 = !{!16, !15, i64 32}
!39 = !{!"vtable pointer", !4, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!"p1 _ZTSN4llvh15SmallVectorImplIcEE", !13, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!44 = !{i64 111566378134241706}
!45 = !{i64 -1826182976501768426}
!46 = distinct !{!46, !12}
!47 = distinct !{!47, !12}
!48 = !{i64 -6616253988755226063}
end_hunk_1
