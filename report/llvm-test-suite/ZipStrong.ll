inline.NumInlined: 25
inline.NumDeleted: 9
begin_hunk_0_@_ZN7NCrypto10NZipStrong8CKeyInfo11SetPasswordEPKhj:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @_ZN7NCrypto5NSha112CContextBase4InitEv(ptr noundef nonnull align 8 dereferenceable(100) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.a, align 8, !tbaa !8
  %i.b = zext i32 %2 to i64
  call void @_ZN7NCrypto5NSha18CContext6UpdateEPKhm(ptr noundef nonnull align 8 dereferenceable(100) %3, ptr noundef %1, i64 noundef %i.b)
  call fastcc void @_ZN7NCrypto10NZipStrongL9DeriveKeyERNS_5NSha18CContextEPh(ptr noundef nonnull align 8 dereferenceable(100) %3, ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN7NCrypto5NSha18CContext6UpdateEPKhm(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7NCrypto10NZipStrongL9DeriveKeyERNS_5NSha18CContextEPh(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull writeonly captures(none) initializes((0, 32)) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %2 = alloca %"class.NCrypto::NSha1::CContext", align 8 ; 6 uses
  %i.b = alloca [64 x i8], align 16               ; 5 uses
  %3 = alloca %"class.NCrypto::NSha1::CContext", align 8 ; 6 uses
  %i.c = alloca [20 x i8], align 16               ; 6 uses
  %i.d = alloca [40 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @_ZN7NCrypto5NSha18CContext5FinalEPh(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.e, i8 54, i64 48, i1 false)
  %i.f = load <16 x i8>, ptr %i.c, align 16, !tbaa !12
  %i.g = xor <16 x i8> %i.f, splat (i8 54)
  store <16 x i8> %i.g, ptr %i.b, align 16, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.i = load <4 x i8>, ptr %i.h, align 16, !tbaa !12
  %i.j = xor <4 x i8> %i.i, splat (i8 54)
  store <4 x i8> %i.j, ptr %i.e, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @_ZN7NCrypto5NSha112CContextBase4InitEv(ptr noundef nonnull align 8 dereferenceable(100) %3)
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.k, align 8, !tbaa !8
  call void @_ZN7NCrypto5NSha18CContext6UpdateEPKhm(ptr noundef nonnull align 8 dereferenceable(100) %3, ptr noundef nonnull %i.b, i64 noundef 64)
  call void @_ZN7NCrypto5NSha18CContext5FinalEPh(ptr noundef nonnull align 8 dereferenceable(100) %3, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.m, i8 92, i64 48, i1 false)
  %i.n = load <16 x i8>, ptr %i.c, align 16, !tbaa !12
  %i.o = xor <16 x i8> %i.n, splat (i8 92)
  store <16 x i8> %i.o, ptr %i.a, align 16, !tbaa !12
  %i.p = load <4 x i8>, ptr %i.h, align 16, !tbaa !12
  %i.q = xor <4 x i8> %i.p, splat (i8 92)
  store <4 x i8> %i.q, ptr %i.m, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @_ZN7NCrypto5NSha112CContextBase4InitEv(ptr noundef nonnull align 8 dereferenceable(100) %2)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 0, ptr %i.r, align 8, !tbaa !8
  call void @_ZN7NCrypto5NSha18CContext6UpdateEPKhm(ptr noundef nonnull align 8 dereferenceable(100) %2, ptr noundef nonnull %i.a, i64 noundef 64)
  call void @_ZN7NCrypto5NSha18CContext5FinalEPh(ptr noundef nonnull align 8 dereferenceable(100) %2, ptr noundef nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %1, ptr noundef nonnull align 16 dereferenceable(32) %i.d, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN7NCrypto10NZipStrong10CBaseCoder17CryptoSetPasswordEPKhj(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(408) initializes((336, 368)) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.NCrypto::NSha1::CContext", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @_ZN7NCrypto5NSha112CContextBase4InitEv(ptr noundef nonnull align 8 dereferenceable(100) %3)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.b, align 8, !tbaa !8
  %i.c = zext i32 %2 to i64
  call void @_ZN7NCrypto5NSha18CContext6UpdateEPKhm(ptr noundef nonnull align 8 dereferenceable(100) %3, ptr noundef %1, i64 noundef %i.c)
  call fastcc void @_ZN7NCrypto10NZipStrongL9DeriveKeyERNS_5NSha18CContextEPh(ptr noundef nonnull align 8 dereferenceable(100) %3, ptr noundef nonnull align 4 dereferenceable(36) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret i32 0
}

; Function Attrs: uwtable
define dso_local noundef i32 @_ZThn328_N7NCrypto10NZipStrong10CBaseCoder17CryptoSetPasswordEPKhj(ptr noundef writeonly captures(none) initializes((8, 40)) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.NCrypto::NSha1::CContext", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @_ZN7NCrypto5NSha112CContextBase4InitEv(ptr noundef nonnull align 8 dereferenceable(100) %3)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.b, align 8, !tbaa !8
  %i.c = zext i32 %2 to i64
  call void @_ZN7NCrypto5NSha18CContext6UpdateEPKhm(ptr noundef nonnull align 8 dereferenceable(100) %3, ptr noundef %1, i64 noundef %i.c)
  call fastcc void @_ZN7NCrypto10NZipStrongL9DeriveKeyERNS_5NSha18CContextEPh(ptr noundef nonnull align 8 dereferenceable(100) %3, ptr noundef nonnull align 4 dereferenceable(36) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN7NCrypto10NZipStrong8CDecoder10ReadHeaderEP19ISequentialInStreamjy(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = call noundef i32 @_Z16ReadStream_FALSEP19ISequentialInStreamPvm(ptr noundef %1, ptr noundef nonnull %i.a, i64 noundef 2) ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr %i.a, align 4, !tbaa !13   ; 2 uses
  %i.d = zext i16 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i32 %i.d, ptr %i.e, align 8, !tbaa !15
  %cond = icmp eq i16 %i.c, 16
  br i1 %cond, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.g = call noundef i32 @_Z16ReadStream_FALSEP19ISequentialInStreamPvm(ptr noundef %1, ptr noundef nonnull %i.f, i64 noundef 16) ; 2 uses
  %.not22 = icmp eq i32 %i.g, 0
  br i1 %.not22, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.h = call noundef i32 @_Z16ReadStream_FALSEP19ISequentialInStreamPvm(ptr noundef %1, ptr noundef nonnull %i.a, i64 noundef 4) ; 2 uses
  %.not23 = icmp eq i32 %i.h, 0
  br i1 %.not23, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.i = load i32, ptr %i.a, align 4, !tbaa !4    ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 428 ; 3 uses
  store i32 %i.i, ptr %i.j, align 4, !tbaa !30
  %i.k = add i32 %i.i, -262145
  %or.cond = icmp ult i32 %i.k, -262129
  br i1 %or.cond, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = add nuw nsw i32 %i.i, 16
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !31
  %i.q = icmp ult i64 %i.p, %i.m
  br i1 %i.q, label %bb.g, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 400
  %.pre24 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !32
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !33   ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZN7CBufferIhE4FreeEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.s) #13
  %.pre = load i32, ptr %i.j, align 4, !tbaa !30
  %.pre26 = add i32 %.pre, 16
  %.pre27 = zext i32 %.pre26 to i64
  br label %_ZN7CBufferIhE4FreeEv.exit

_ZN7CBufferIhE4FreeEv.exit:                       ; preds = %bb.g, %bb.h
  %.pre-phi28 = phi i64 [ %i.m, %bb.g ], [ %.pre27, %bb.h ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  call void @_ZN7CBufferIhE11SetCapacityEm(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %.pre-phi28)
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 15
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = and i64 %i.w, -16
  %i.y = inttoptr i64 %i.x to ptr                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 400
  store ptr %i.y, ptr %i.z, align 8, !tbaa !32
  %.pre25 = load i32, ptr %i.j, align 4, !tbaa !30
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %_ZN7CBufferIhE4FreeEv.exit
  %i.aa = phi i32 [ %i.i, %._crit_edge ], [ %.pre25, %_ZN7CBufferIhE4FreeEv.exit ]
  %i.ab = phi ptr [ %.pre24, %._crit_edge ], [ %i.y, %_ZN7CBufferIhE4FreeEv.exit ]
  %i.ac = zext i32 %i.aa to i64
  %i.ad = call noundef i32 @_Z16ReadStream_FALSEP19ISequentialInStreamPvm(ptr noundef %1, ptr noundef %i.ab, i64 noundef %i.ac)
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.i, %bb.e, %bb.d, %bb.c, %bb.a
  %.4 = phi i32 [ %i.b, %bb.a ], [ -2147467263, %bb.e ], [ %i.h, %bb.d ], [ %i.g, %bb.c ], [ -2147467263, %bb.b ], [ %i.ad, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.4
}

declare noundef i32 @_Z16ReadStream_FALSEP19ISequentialInStreamPvm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7CBufferIhE11SetCapacityEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !31
  %i.c = icmp eq i64 %1, %i.b
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %1) #14 ; 3 uses
  %2 = load i64, ptr %i.a, align 8, !tbaa !31     ; 2 uses
  %.not10 = icmp eq i64 %2, 0
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.g = tail call noundef i64 @llvm.umin.i64(i64 %2, i64 %1)
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.d, ptr align 1 %i.f, i64 %i.g, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.0 = phi ptr [ %i.d, %bb.d ], [ %i.d, %bb.c ], [ null, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !33   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %.0, ptr %i.h, align 8, !tbaa !33
  store i64 %1, ptr %i.a, align 8, !tbaa !31
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN7NCrypto10NZipStrong8CDecoder13CheckPasswordERb(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull writeonly align 1 captures(none) dereferenceable(1) initializes((0, 1)) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %2 = alloca %"class.NCrypto::NSha1::CContext", align 8 ; 7 uses
  store i8 0, ptr %1, align 1, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 428 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !30   ; 2 uses
  %i.d = icmp ult i32 %i.c, 16
  br i1 %i.d, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32   ; 10 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !13
  %.not = icmp eq i16 %i.g, 3
  br i1 %.not, label %bb.c, label %bb.t

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !13   ; 2 uses
  %i.j = icmp ult i16 %i.i, 26126
  br i1 %i.j, label %bb.t, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = add i16 %i.i, -26126                     ; 2 uses
  %i.l = zext i16 %i.k to i32                     ; 2 uses
  %i.m = icmp ugt i16 %i.k, 2
  br i1 %i.m, label %bb.t, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.o = load i16, ptr %i.n, align 2, !tbaa !13
  %i.p = shl nuw nsw i32 %i.l, 6
  %i.q = add nuw nsw i32 %i.p, 128
  %i.r = zext i16 %i.o to i32
  %.not66 = icmp eq i32 %i.q, %i.r
  br i1 %.not66, label %bb.f, label %bb.t

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %i.t = load i16, ptr %i.s, align 2, !tbaa !13
  %i.u = shl nuw nsw i32 %i.l, 3
  %i.v = add nuw nsw i32 %i.u, 16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  store i32 %i.v, ptr %i.x, align 8, !tbaa !36
  %i.y = and i16 %i.t, 16385
  %or.cond = icmp eq i16 %i.y, 1
  br i1 %or.cond, label %bb.g, label %bb.t

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !13  ; 2 uses
  %i.ab = zext i16 %i.aa to i32                   ; 4 uses
  %i.ac = and i32 %i.ab, 15
  %.not68 = icmp eq i32 %i.ac, 0
  br i1 %.not68, label %bb.h, label %bb.t

bb.h:                                             ; preds = %bb.g
  %i.ad = add nuw nsw i32 %i.ab, 16               ; 2 uses
  %i.ae = icmp ugt i32 %i.ad, %i.c
  br i1 %i.ae, label %bb.t, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %i.ag = zext i16 %i.aa to i64                   ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull align 1 %i.af, i64 %i.ag, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ag ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 10
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4
  %.not69 = icmp eq i32 %i.ak, 0
  br i1 %.not69, label %bb.j, label %bb.t

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 14
  %i.am = load i16, ptr %i.al, align 2, !tbaa !13 ; 2 uses
  %i.an = zext i16 %i.am to i32                   ; 4 uses
  %i.ao = and i32 %i.an, 15
  %.not70 = icmp eq i32 %i.ao, 0
  br i1 %.not70, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.ap = add nuw nsw i32 %i.ad, %i.an
  %i.aq = load i32, ptr %i.b, align 4, !tbaa !30
  %.not71 = icmp eq i32 %i.ap, %i.aq
  br i1 %.not71, label %bb.l, label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.ar = load i32, ptr %i.x, align 8, !tbaa !36
  %i.as = load ptr, ptr %0, align 8, !tbaa !37
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call noundef i32 %i.au(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull %i.w, i32 noundef %i.ar) ; 2 uses
  %.not72 = icmp eq i32 %i.av, 0
  br i1 %.not72, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 3 uses
  %i.ax = load ptr, ptr %0, align 8, !tbaa !37
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = tail call noundef i32 %i.az(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull %i.aw, i32 noundef 16) ; 2 uses
  %.not73 = icmp eq i32 %i.ba, 0
  br i1 %.not73, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.bb = load ptr, ptr %0, align 8, !tbaa !37
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = tail call noundef i32 %i.bd(ptr noundef nonnull align 8 dereferenceable(328) %0) ; 0 uses
  %i.bf = load ptr, ptr %0, align 8, !tbaa !37
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = tail call noundef i32 %i.bh(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull %i.f, i32 noundef %i.ab) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @_ZN7NCrypto5NSha112CContextBase4InitEv(ptr noundef nonnull align 8 dereferenceable(100) %2)
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 0, ptr %i.bj, align 8, !tbaa !8
  call void @_ZN7NCrypto5NSha18CContext6UpdateEPKhm(ptr noundef nonnull align 8 dereferenceable(100) %2, ptr noundef nonnull %i.aw, i64 noundef 16)
  %i.bk = add nsw i32 %i.ab, -16
  %i.bl = zext i32 %i.bk to i64
  call void @_ZN7NCrypto5NSha18CContext6UpdateEPKhm(ptr noundef nonnull align 8 dereferenceable(100) %2, ptr noundef nonnull %i.f, i64 noundef %i.bl)
  call fastcc void @_ZN7NCrypto10NZipStrongL9DeriveKeyERNS_5NSha18CContextEPh(ptr noundef nonnull align 8 dereferenceable(100) %2, ptr noundef %i.a)
  %i.bm = load i32, ptr %i.x, align 8, !tbaa !36
  %i.bn = load ptr, ptr %0, align 8, !tbaa !37
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = call noundef i32 %i.bp(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull %i.a, i32 noundef %i.bm) ; 2 uses
  %.not74 = icmp eq i32 %i.bq, 0
  br i1 %.not74, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.br = load ptr, ptr %0, align 8, !tbaa !37
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = call noundef i32 %i.bt(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull %i.aw, i32 noundef 16) ; 2 uses
  %.not75 = icmp eq i32 %i.bu, 0
  br i1 %.not75, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.bv = load ptr, ptr %0, align 8, !tbaa !37
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = call noundef i32 %i.bx(ptr noundef nonnull align 8 dereferenceable(328) %0) ; 0 uses
  %i.bz = load ptr, ptr %0, align 8, !tbaa !37
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = call noundef i32 %i.cb(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull %i.ai, i32 noundef %i.an) ; 0 uses
  %i.cd = icmp ult i16 %i.am, 4
  br i1 %i.cd, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ce = add nsw i32 %i.an, -4
  %i.cf = zext nneg i32 %i.ce to i64              ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !4
  %i.ci = call i32 @CrcCalc(ptr noundef nonnull %i.ai, i64 noundef %i.cf)
  %.not76 = icmp eq i32 %i.ch, %i.ci
  br i1 %.not76, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i8 1, ptr %1, align 1, !tbaa !34
  %i.cj = load ptr, ptr %0, align 8, !tbaa !37
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = call noundef i32 %i.cl(ptr noundef nonnull align 8 dereferenceable(328) %0) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.r
  %.4 = phi i32 [ %i.bq, %bb.n ], [ -2147467263, %bb.p ], [ 0, %bb.r ], [ %i.bu, %bb.o ], [ 0, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.t

end_hunk_0
