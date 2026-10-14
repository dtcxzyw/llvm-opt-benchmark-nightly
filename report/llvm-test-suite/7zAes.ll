Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/7zAes?download=true
inline.NumInlined: 113
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN7NCrypto7NSevenZ5CBase15CalculateDigestEv:bb.a
  br i1 %i.m, label %_ZN7NCrypto7NSevenZ13CKeyInfoCache3AddERNS0_8CKeyInfoE.exit, label %bb.m

bb.m:                                             ; preds = %.noexc10
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !27
  %i.q = load i32, ptr %0, align 8, !tbaa !36
  %.not.i9 = icmp slt i32 %i.p, %i.q
  br i1 %.not.i9, label %.noexc11.invoke, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN17CBaseRecordVector10DeleteBackEv(ptr noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %.noexc11.invoke unwind label %bb.f

.noexc11.invoke:                                  ; preds = %bb.d, %bb.e, %bb.m, %bb.n
  %i.r = phi ptr [ %i.n, %bb.m ], [ %i.n, %bb.n ], [ getelementptr inbounds nuw (i8, ptr @_ZN7NCrypto7NSevenZL16g_GlobalKeyCacheE, i64 8), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @_ZN7NCrypto7NSevenZL16g_GlobalKeyCacheE, i64 8), %bb.d ]
  invoke void @_ZN13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEE6InsertEiRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(80) %i.b)
          to label %_ZN7NCrypto7NSevenZ13CKeyInfoCache3AddERNS0_8CKeyInfoE.exit unwind label %bb.f

_ZN7NCrypto7NSevenZ13CKeyInfoCache3AddERNS0_8CKeyInfoE.exit: ; preds = %.noexc11.invoke, %.noexc10, %.noexc
  %i.s = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN7NCrypto7NSevenZL31g_GlobalKeyCacheCriticalSectionE) #20 ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN7NCrypto7NSevenZ8CEncoder15ResetInitVectorEv(ptr noundef nonnull align 8 dereferenceable(192) initializes((160, 164)) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 8, ptr %i.a, align 8, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @_ZN16CRandomGenerator8GenerateEPhj(ptr noundef nonnull align 1 dereferenceable(21) @g_RandomGenerator, ptr noundef nonnull %i.b, i32 noundef 8)
  ret i32 0
}

declare void @_ZN16CRandomGenerator8GenerateEPhj(ptr noundef nonnull align 1 dereferenceable(21), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: uwtable
define dso_local noundef i32 @_ZThn184_N7NCrypto7NSevenZ8CEncoder15ResetInitVectorEv(ptr noundef initializes((-24, -20)) %0) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -24
  store i32 8, ptr %i.a, align 8, !tbaa !40
  %i.b = getelementptr inbounds i8, ptr %0, i64 -40
  tail call void @_ZN16CRandomGenerator8GenerateEPhj(ptr noundef nonnull align 1 dereferenceable(21) @g_RandomGenerator, ptr noundef nonnull %i.b, i32 noundef 8)
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN7NCrypto7NSevenZ8CEncoder20WriteCoderPropertiesEP20ISequentialOutStream(ptr noundef nonnull align 8 dereferenceable(192) initializes((64, 68)) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !40   ; 4 uses
  %i.e = icmp ult i32 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = zext nneg i32 %i.d to i64
  %i.g = getelementptr i8, ptr %0, i64 %i.f
  %scevgep = getelementptr i8, ptr %i.g, i64 144
  %narrow = sub nuw nsw i32 16, %i.d
  %i.h = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 %i.h, i1 false), !tbaa !20
  %.pre = load i32, ptr %i.c, align 8, !tbaa !40
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = phi i32 [ %.pre, %.lr.ph ], [ %i.d, %bb.a ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 19, ptr %i.j, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !42
  %.not = icmp eq i32 %i.l, 0
  %i.m = select i1 %.not, i8 19, i8 -109
  %i.n = icmp eq i32 %i.i, 0                      ; 3 uses
  %i.o = select i1 %i.n, i8 0, i8 64
  %i.p = or disjoint i8 %i.m, %i.o
  store i8 %i.p, ptr %i.a, align 1, !tbaa !20
  %i.q = load ptr, ptr %1, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call noundef i32 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef null) ; 2 uses
  %.not44 = icmp eq i32 %i.t, 0
  br i1 %.not44, label %bb.b, label %bb.j

bb.b:                                             ; preds = %._crit_edge
  %i.u = load i32, ptr %i.k, align 4, !tbaa !42   ; 2 uses
  %i.v = icmp eq i32 %i.u, 0                      ; 2 uses
  %or.cond = select i1 %i.v, i1 %i.n, i1 false
  br i1 %or.cond, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = shl i32 %i.u, 4
  %i.x = add i32 %i.w, 240
  %i.y = select i1 %i.v, i32 0, i32 %i.x
  %i.z = call i32 @llvm.usub.sat.i32(i32 %i.i, i32 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.aa = or i32 %i.y, %i.z
  %i.ab = trunc i32 %i.aa to i8
  store i8 %i.ab, ptr %i.b, align 1, !tbaa !20
  %i.ac = load ptr, ptr %1, align 8, !tbaa !31
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call noundef i32 %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i32 noundef 1, ptr noundef null) ; 2 uses
  %.not45 = icmp eq i32 %i.af, 0
  br i1 %.not45, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.ag = load i32, ptr %i.k, align 4, !tbaa !42  ; 2 uses
  %.not46 = icmp eq i32 %i.ag, 0
  br i1 %.not46, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ai = zext i32 %i.ag to i64
  %i.aj = call noundef i32 @_Z11WriteStreamP20ISequentialOutStreamPKvm(ptr noundef nonnull %1, ptr noundef nonnull %i.ah, i64 noundef %i.ai) ; 2 uses
  %.not47 = icmp eq i32 %i.aj, 0
  br i1 %.not47, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %i.n, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.al = zext i32 %i.i to i64
  %i.am = call noundef i32 @_Z11WriteStreamP20ISequentialOutStreamPKvm(ptr noundef nonnull %1, ptr noundef nonnull %i.ak, i64 noundef %i.al) ; 2 uses
  %.not49 = icmp eq i32 %i.am, 0
  br i1 %.not49, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.g, %bb.c, %bb.h
  %.5 = phi i32 [ 0, %bb.h ], [ %i.am, %bb.g ], [ %i.aj, %bb.e ], [ %i.af, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %._crit_edge, %bb.i
  %.6 = phi i32 [ %i.t, %._crit_edge ], [ %.5, %bb.i ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.6
}

declare noundef i32 @_Z11WriteStreamP20ISequentialOutStreamPKvm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: uwtable
define dso_local noundef i32 @_ZThn176_N7NCrypto7NSevenZ8CEncoder20WriteCoderPropertiesEP20ISequentialOutStream(ptr noundef initializes((-112, -108)) %0, ptr noundef %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -176
  %i.b = tail call noundef i32 @_ZN7NCrypto7NSevenZ8CEncoder20WriteCoderPropertiesEP20ISequentialOutStream(ptr noundef nonnull align 8 dereferenceable(192) %i.a, ptr noundef %1)
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN7NCrypto7NSevenZ8CEncoder12CreateFilterEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(328) ptr @_Znwm(i64 noundef 328) #22 ; 5 uses
  invoke void @_ZN7NCrypto14CAesCbcEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(328) %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.a), !inline_history !3 ; 0 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !45   ; 3 uses
  %.not6.i = icmp eq ptr %i.g, null
  br i1 %.not6.i, label %_ZN9CMyComPtrI15ICompressFilterEaSEPS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef i32 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g), !inline_history !3 ; 0 uses
  br label %_ZN9CMyComPtrI15ICompressFilterEaSEPS0_.exit

_ZN9CMyComPtrI15ICompressFilterEaSEPS0_.exit:     ; preds = %bb.b, %bb.c
  store ptr %i.a, ptr %i.b, align 8, !tbaa !45
  ret i32 0

bb.d:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 328) #21
  resume { ptr, i32 } %i.l
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

declare void @_ZN7NCrypto14CAesCbcEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(328)) unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef range(i32 -2147467263, 1) i32 @_ZN7NCrypto7NSevenZ8CDecoder21SetDecoderProperties2EPKhj(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(184) initializes((64, 88), (144, 160)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #12 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !tbaa !20
  %i.e = icmp eq i32 %2, 0
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %1, align 1, !tbaa !20      ; 2 uses
  %i.g = zext i8 %i.f to i32                      ; 3 uses
  %i.h = and i32 %i.g, 63                         ; 2 uses
  store i32 %i.h, ptr %i.c, align 8, !tbaa !41
  %i.i = icmp ult i8 %i.f, 64
  br i1 %i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = lshr i32 %i.g, 7                         ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  store i32 %i.j, ptr %i.k, align 4, !tbaa !42
  %i.l = icmp eq i32 %2, 1
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = lshr i32 %i.g, 6
  %i.n = and i32 %i.m, 1
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !20
  %i.q = zext i8 %i.p to i32                      ; 2 uses
  %i.r = lshr i32 %i.q, 4
  %i.s = add nuw nsw i32 %i.r, %i.j               ; 6 uses
  store i32 %i.s, ptr %i.k, align 4, !tbaa !42
  %i.t = and i32 %i.q, 15
  %i.u = add nuw nsw i32 %i.t, %i.n               ; 5 uses
  %i.v = add nuw nsw i32 %i.s, 2
  %i.w = add nuw nsw i32 %i.v, %i.u
  %i.x = icmp ugt i32 %i.w, %2
  br i1 %i.x, label %bb.e, label %.preheader39

.preheader39:                                     ; preds = %bb.d
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %.preheader, label %iter.check

iter.check:                                       ; preds = %.preheader39
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.s to i64    ; 6 uses
  %min.iters.check = icmp samesign ult i32 %i.s, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.z = sub i64 %i.b, %i.a
  %i.aa = add i64 %i.z, 69
  %diff.check = icmp ult i64 %i.aa, 15
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check64 = icmp samesign ult i32 %i.s, 16
  br i1 %min.iters.check64, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %wide.trip.count, 16           ; 4 uses
  %i.ab = or disjoint i64 %n.vec, 2               ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 2
  %wide.load = load <16 x i8>, ptr %i.ac, align 1, !tbaa !20
  store <16 x i8> %wide.load, ptr %i.y, align 8, !tbaa !20
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %vector.ph
  %i.ad = and i64 %wide.trip.count, 12
  %min.epilog.iters.check = icmp eq i64 %i.ad, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec65 = and i64 %wide.trip.count, 28         ; 4 uses
  %i.ae = or disjoint i64 %n.vec65, 2             ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next, %vec.epilog.vector.body ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %wide.load66 = load <4 x i8>, ptr %i.ag, align 1, !tbaa !20
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 %index
  store <4 x i8> %wide.load66, ptr %i.ah, align 4, !tbaa !20
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec65
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !62

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n67 = icmp eq i64 %n.vec65, %wide.trip.count
  br i1 %cmp.n67, label %.preheader, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv48.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec65, %vec.epilog.middle.block ]
  %indvars.iv.ph = phi i64 [ 2, %iter.check ], [ 2, %vector.memcheck ], [ %i.ab, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.preheader:                                       ; preds = %vec.epilog.scalar.ph, %vector.ph, %vec.epilog.middle.block, %.preheader39
  %.0.lcssa = phi i64 [ 2, %.preheader39 ], [ %i.ae, %vec.epilog.middle.block ], [ %i.ab, %vector.ph ], [ %indvars.iv.next, %vec.epilog.scalar.ph ] ; 7 uses
  %.not46 = icmp eq i32 %i.u, 0
  br i1 %.not46, label %._crit_edge, label %iter.check82

iter.check82:                                     ; preds = %.preheader
  %wide.trip.count60 = zext nneg i32 %i.u to i64  ; 6 uses
  %min.iters.check72 = icmp samesign ult i32 %i.u, 4
  br i1 %min.iters.check72, label %vec.epilog.scalar.ph83.preheader, label %vector.memcheck70

vector.memcheck70:                                ; preds = %iter.check82
  %i.aj = add i64 %.0.lcssa, %i.a
  %i.ak = sub i64 %i.b, %i.aj
  %i.al = add i64 %i.ak, 143
  %diff.check71 = icmp ult i64 %i.al, 15
  br i1 %diff.check71, label %vec.epilog.scalar.ph83.preheader, label %vector.main.loop.iter.check73

vector.main.loop.iter.check73:                    ; preds = %vector.memcheck70
  %min.iters.check74 = icmp samesign ult i32 %i.u, 16
  br i1 %min.iters.check74, label %vec.epilog.ph86, label %vector.ph75

vector.ph75:                                      ; preds = %vector.main.loop.iter.check73
  %n.vec76 = and i64 %wide.trip.count60, 16       ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %.0.lcssa
  %wide.load78 = load <16 x i8>, ptr %i.am, align 1, !tbaa !20
  store <16 x i8> %wide.load78, ptr %i.d, align 8, !tbaa !20
  %cmp.n80 = icmp eq i64 %n.vec76, %wide.trip.count60
  br i1 %cmp.n80, label %._crit_edge, label %vec.epilog.iter.check84

vec.epilog.iter.check84:                          ; preds = %vector.ph75
  %i.an = add i64 %.0.lcssa, %n.vec76
  %i.ao = and i64 %wide.trip.count60, 12
  %min.epilog.iters.check85 = icmp eq i64 %i.ao, 0
  br i1 %min.epilog.iters.check85, label %vec.epilog.scalar.ph83.preheader, label %vec.epilog.ph86, !prof !25

vec.epilog.ph86:                                  ; preds = %vector.main.loop.iter.check73, %vec.epilog.iter.check84
  %vec.epilog.resume.val81 = phi i64 [ %n.vec76, %vec.epilog.iter.check84 ], [ 0, %vector.main.loop.iter.check73 ]
  %n.vec87 = and i64 %wide.trip.count60, 28       ; 4 uses
  %i.ap = add i64 %.0.lcssa, %n.vec87
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %.0.lcssa
  br label %vec.epilog.vector.body88

vec.epilog.vector.body88:                         ; preds = %vec.epilog.vector.body88, %vec.epilog.ph86
  %index89 = phi i64 [ %vec.epilog.resume.val81, %vec.epilog.ph86 ], [ %index.next91, %vec.epilog.vector.body88 ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %index89
  %wide.load90 = load <4 x i8>, ptr %i.ar, align 1, !tbaa !20
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 %index89
  store <4 x i8> %wide.load90, ptr %i.as, align 4, !tbaa !20
  %index.next91 = add nuw i64 %index89, 4         ; 2 uses
  %i.at = icmp eq i64 %index.next91, %n.vec87
  br i1 %i.at, label %vec.epilog.middle.block92, label %vec.epilog.vector.body88, !llvm.loop !63

vec.epilog.middle.block92:                        ; preds = %vec.epilog.vector.body88
  %cmp.n93 = icmp eq i64 %n.vec87, %wide.trip.count60
  br i1 %cmp.n93, label %._crit_edge, label %vec.epilog.scalar.ph83.preheader

vec.epilog.scalar.ph83.preheader:                 ; preds = %iter.check82, %vector.memcheck70, %vec.epilog.iter.check84, %vec.epilog.middle.block92
  %indvars.iv55.ph = phi i64 [ 0, %iter.check82 ], [ 0, %vector.memcheck70 ], [ %n.vec76, %vec.epilog.iter.check84 ], [ %n.vec87, %vec.epilog.middle.block92 ]
  %indvars.iv53.ph = phi i64 [ %.0.lcssa, %iter.check82 ], [ %.0.lcssa, %vector.memcheck70 ], [ %i.an, %vec.epilog.iter.check84 ], [ %i.ap, %vec.epilog.middle.block92 ]
  br label %vec.epilog.scalar.ph83

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %vec.epilog.scalar.ph ], [ %indvars.iv48.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.av = load i8, ptr %i.au, align 1, !tbaa !20
  %i.aw = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv48
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !20
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next49, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %vec.epilog.scalar.ph, !llvm.loop !64

vec.epilog.scalar.ph83:                           ; preds = %vec.epilog.scalar.ph83.preheader, %vec.epilog.scalar.ph83
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %vec.epilog.scalar.ph83 ], [ %indvars.iv55.ph, %vec.epilog.scalar.ph83.preheader ] ; 2 uses
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %vec.epilog.scalar.ph83 ], [ %indvars.iv53.ph, %vec.epilog.scalar.ph83.preheader ] ; 2 uses
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv53
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !20
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv55
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !20
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %exitcond61.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count60
  br i1 %exitcond61.not, label %._crit_edge, label %vec.epilog.scalar.ph83, !llvm.loop !65

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph83, %vector.ph75, %vec.epilog.middle.block92, %.preheader
  %i.ba = icmp samesign ult i32 %i.h, 25
  %i.bb = select i1 %i.ba, i32 0, i32 -2147467263
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %._crit_edge, %bb.d, %bb.c, %bb.a
  %.3 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ -2147024809, %bb.c ], [ %i.bb, %._crit_edge ], [ -2147024809, %bb.d ]
  ret i32 %.3
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef range(i32 -2147467263, 1) i32 @_ZThn176_N7NCrypto7NSevenZ8CDecoder21SetDecoderProperties2EPKhj(ptr nofree noundef writeonly captures(none) initializes((-112, -88), (-32, -16)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #13 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %0, i64 -112 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds i8, ptr %0, i64 -32 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !tbaa !20
  %i.e = icmp eq i32 %2, 0
  br i1 %i.e, label %_ZN7NCrypto7NSevenZ8CDecoder21SetDecoderProperties2EPKhj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %1, align 1, !tbaa !20      ; 2 uses
  %i.g = zext i8 %i.f to i32                      ; 3 uses
  %i.h = and i32 %i.g, 63                         ; 2 uses
  store i32 %i.h, ptr %i.c, align 8, !tbaa !41
  %i.i = icmp ult i8 %i.f, 64
  br i1 %i.i, label %_ZN7NCrypto7NSevenZ8CDecoder21SetDecoderProperties2EPKhj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = lshr i32 %i.g, 7                         ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %0, i64 -108 ; 2 uses
  store i32 %i.j, ptr %i.k, align 4, !tbaa !42
  %i.l = icmp eq i32 %2, 1
  br i1 %i.l, label %_ZN7NCrypto7NSevenZ8CDecoder21SetDecoderProperties2EPKhj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = lshr i32 %i.g, 6
  %i.n = and i32 %i.m, 1
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !20
  %i.q = zext i8 %i.p to i32                      ; 2 uses
  %i.r = lshr i32 %i.q, 4
  %i.s = add nuw nsw i32 %i.r, %i.j               ; 6 uses
  store i32 %i.s, ptr %i.k, align 4, !tbaa !42
  %i.t = and i32 %i.q, 15
  %i.u = add nuw nsw i32 %i.t, %i.n               ; 5 uses
  %i.v = add nuw nsw i32 %i.s, 2
  %i.w = add nuw nsw i32 %i.v, %i.u
  %i.x = icmp ugt i32 %i.w, %2
  br i1 %i.x, label %_ZN7NCrypto7NSevenZ8CDecoder21SetDecoderProperties2EPKhj.exit, label %.preheader39.i

.preheader39.i:                                   ; preds = %bb.d
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %.preheader.i, label %iter.check

iter.check:                                       ; preds = %.preheader39.i
  %i.y = getelementptr inbounds i8, ptr %0, i64 -104 ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.s to i64  ; 6 uses
  %min.iters.check = icmp samesign ult i32 %i.s, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.z = sub i64 %i.b, %i.a
  %i.aa = add i64 %i.z, -107
  %diff.check = icmp ult i64 %i.aa, 15
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check4 = icmp samesign ult i32 %i.s, 16
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %wide.trip.count.i, 16         ; 4 uses
  %i.ab = or disjoint i64 %n.vec, 2               ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 2
  %wide.load = load <16 x i8>, ptr %i.ac, align 1, !tbaa !20
  store <16 x i8> %wide.load, ptr %i.y, align 8, !tbaa !20
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.preheader.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %vector.ph
  %i.ad = and i64 %wide.trip.count.i, 12
  %min.epilog.iters.check = icmp eq i64 %i.ad, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec5 = and i64 %wide.trip.count.i, 28        ; 4 uses
  %i.ae = or disjoint i64 %n.vec5, 2              ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next, %vec.epilog.vector.body ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %wide.load6 = load <4 x i8>, ptr %i.ag, align 1, !tbaa !20
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 %index
  store <4 x i8> %wide.load6, ptr %i.ah, align 1, !tbaa !20
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec5
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !66

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n7 = icmp eq i64 %n.vec5, %wide.trip.count.i
  br i1 %cmp.n7, label %.preheader.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv48.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ]
  %indvars.iv.i.ph = phi i64 [ 2, %iter.check ], [ 2, %vector.memcheck ], [ %i.ab, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.preheader.i:                                     ; preds = %vec.epilog.scalar.ph, %vector.ph, %vec.epilog.middle.block, %.preheader39.i
  %.0.lcssa.i = phi i64 [ 2, %.preheader39.i ], [ %i.ae, %vec.epilog.middle.block ], [ %i.ab, %vector.ph ], [ %indvars.iv.next.i, %vec.epilog.scalar.ph ] ; 7 uses
  %.not46.i = icmp eq i32 %i.u, 0
  br i1 %.not46.i, label %._crit_edge.i, label %iter.check22

iter.check22:                                     ; preds = %.preheader.i
  %wide.trip.count60.i = zext nneg i32 %i.u to i64 ; 6 uses
  %min.iters.check12 = icmp samesign ult i32 %i.u, 4
  br i1 %min.iters.check12, label %vec.epilog.scalar.ph23.preheader, label %vector.memcheck10

vector.memcheck10:                                ; preds = %iter.check22
  %i.aj = add i64 %.0.lcssa.i, %i.a
  %i.ak = sub i64 %i.b, %i.aj
  %i.al = add i64 %i.ak, -33
  %diff.check11 = icmp ult i64 %i.al, 15
  br i1 %diff.check11, label %vec.epilog.scalar.ph23.preheader, label %vector.main.loop.iter.check13

vector.main.loop.iter.check13:                    ; preds = %vector.memcheck10
  %min.iters.check14 = icmp samesign ult i32 %i.u, 16
  br i1 %min.iters.check14, label %vec.epilog.ph26, label %vector.ph15

vector.ph15:                                      ; preds = %vector.main.loop.iter.check13
  %n.vec16 = and i64 %wide.trip.count60.i, 16     ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %.0.lcssa.i
  %wide.load18 = load <16 x i8>, ptr %i.am, align 1, !tbaa !20
  store <16 x i8> %wide.load18, ptr %i.d, align 8, !tbaa !20
  %cmp.n20 = icmp eq i64 %n.vec16, %wide.trip.count60.i
  br i1 %cmp.n20, label %._crit_edge.i, label %vec.epilog.iter.check24

vec.epilog.iter.check24:                          ; preds = %vector.ph15
  %i.an = add i64 %.0.lcssa.i, %n.vec16
  %i.ao = and i64 %wide.trip.count60.i, 12
  %min.epilog.iters.check25 = icmp eq i64 %i.ao, 0
  br i1 %min.epilog.iters.check25, label %vec.epilog.scalar.ph23.preheader, label %vec.epilog.ph26, !prof !25

vec.epilog.ph26:                                  ; preds = %vector.main.loop.iter.check13, %vec.epilog.iter.check24
  %vec.epilog.resume.val21 = phi i64 [ %n.vec16, %vec.epilog.iter.check24 ], [ 0, %vector.main.loop.iter.check13 ]
  %n.vec27 = and i64 %wide.trip.count60.i, 28     ; 4 uses
  %i.ap = add i64 %.0.lcssa.i, %n.vec27
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %.0.lcssa.i
  br label %vec.epilog.vector.body28

vec.epilog.vector.body28:                         ; preds = %vec.epilog.vector.body28, %vec.epilog.ph26
  %index29 = phi i64 [ %vec.epilog.resume.val21, %vec.epilog.ph26 ], [ %index.next31, %vec.epilog.vector.body28 ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %index29
  %wide.load30 = load <4 x i8>, ptr %i.ar, align 1, !tbaa !20
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 %index29
  store <4 x i8> %wide.load30, ptr %i.as, align 1, !tbaa !20
  %index.next31 = add nuw i64 %index29, 4         ; 2 uses
  %i.at = icmp eq i64 %index.next31, %n.vec27
  br i1 %i.at, label %vec.epilog.middle.block32, label %vec.epilog.vector.body28, !llvm.loop !67

vec.epilog.middle.block32:                        ; preds = %vec.epilog.vector.body28
  %cmp.n33 = icmp eq i64 %n.vec27, %wide.trip.count60.i
  br i1 %cmp.n33, label %._crit_edge.i, label %vec.epilog.scalar.ph23.preheader

vec.epilog.scalar.ph23.preheader:                 ; preds = %iter.check22, %vector.memcheck10, %vec.epilog.iter.check24, %vec.epilog.middle.block32
  %indvars.iv55.i.ph = phi i64 [ 0, %iter.check22 ], [ 0, %vector.memcheck10 ], [ %n.vec16, %vec.epilog.iter.check24 ], [ %n.vec27, %vec.epilog.middle.block32 ]
  %indvars.iv53.i.ph = phi i64 [ %.0.lcssa.i, %iter.check22 ], [ %.0.lcssa.i, %vector.memcheck10 ], [ %i.an, %vec.epilog.iter.check24 ], [ %i.ap, %vec.epilog.middle.block32 ]
  br label %vec.epilog.scalar.ph23

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv48.i = phi i64 [ %indvars.iv.next49.i, %vec.epilog.scalar.ph ], [ %indvars.iv48.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i
  %i.av = load i8, ptr %i.au, align 1, !tbaa !20
  %i.aw = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv48.i
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !20
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next49.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.i, label %vec.epilog.scalar.ph, !llvm.loop !68

vec.epilog.scalar.ph23:                           ; preds = %vec.epilog.scalar.ph23.preheader, %vec.epilog.scalar.ph23
  %indvars.iv55.i = phi i64 [ %indvars.iv.next56.i, %vec.epilog.scalar.ph23 ], [ %indvars.iv55.i.ph, %vec.epilog.scalar.ph23.preheader ] ; 2 uses
  %indvars.iv53.i = phi i64 [ %indvars.iv.next54.i, %vec.epilog.scalar.ph23 ], [ %indvars.iv53.i.ph, %vec.epilog.scalar.ph23.preheader ] ; 2 uses
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv53.i
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !20
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv55.i
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !20
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %exitcond61.not.i = icmp eq i64 %indvars.iv.next56.i, %wide.trip.count60.i
  br i1 %exitcond61.not.i, label %._crit_edge.i, label %vec.epilog.scalar.ph23, !llvm.loop !69

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph23, %vector.ph15, %vec.epilog.middle.block32, %.preheader.i
  %i.ba = icmp samesign ult i32 %i.h, 25
  %i.bb = select i1 %i.ba, i32 0, i32 -2147467263
  br label %_ZN7NCrypto7NSevenZ8CDecoder21SetDecoderProperties2EPKhj.exit

_ZN7NCrypto7NSevenZ8CDecoder21SetDecoderProperties2EPKhj.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %._crit_edge.i
  %.3.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ -2147024809, %bb.c ], [ %i.bb, %._crit_edge.i ], [ -2147024809, %bb.d ]
  ret i32 %.3.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN7NCrypto7NSevenZ10CBaseCoder17CryptoSetPasswordEPKhj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(176) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = zext i32 %2 to i64                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !21
  %i.d = icmp eq i64 %i.c, %i.a
  br i1 %i.d, label %._ZN7CBufferIhE11SetCapacityEm.exit_crit_edge, label %bb.b

._ZN7CBufferIhE11SetCapacityEm.exit_crit_edge:    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !22
  br label %_ZN7CBufferIhE11SetCapacityEm.exit

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.a) #22 ; 3 uses
  %i.f = load i64, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  %.not10.i = icmp eq i64 %i.f, 0
  br i1 %.not10.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %i.a)
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.e, ptr align 1 %i.h, i64 %i.i, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0.i = phi ptr [ %i.e, %bb.d ], [ %i.e, %bb.c ], [ null, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %.0.i, ptr %i.j, align 8, !tbaa !22
  store i64 %i.a, ptr %i.b, align 8, !tbaa !21
  br label %_ZN7CBufferIhE11SetCapacityEm.exit

_ZN7CBufferIhE11SetCapacityEm.exit:               ; preds = %._ZN7CBufferIhE11SetCapacityEm.exit_crit_edge, %bb.g
  %i.m = phi ptr [ %.pre, %._ZN7CBufferIhE11SetCapacityEm.exit_crit_edge ], [ %.0.i, %bb.g ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %1, i64 %i.a, i1 false)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: uwtable
define dso_local noundef i32 @_ZThn8_N7NCrypto7NSevenZ10CBaseCoder17CryptoSetPasswordEPKhj(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #9 align 2 {
bb.a:
  %i.a = zext i32 %2 to i64                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !21
  %i.d = icmp eq i64 %i.c, %i.a
  br i1 %i.d, label %._ZN7CBufferIhE11SetCapacityEm.exit_crit_edge.i, label %bb.b

._ZN7CBufferIhE11SetCapacityEm.exit_crit_edge.i:  ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !22
  br label %_ZN7NCrypto7NSevenZ10CBaseCoder17CryptoSetPasswordEPKhj.exit

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %2, 0
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.a) #22 ; 3 uses
  %i.f = load i64, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  %.not10.i.i = icmp eq i64 %i.f, 0
  br i1 %.not10.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %i.a)
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.e, ptr align 1 %i.h, i64 %i.i, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.e, %bb.d ], [ %i.e, %bb.c ], [ null, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %.0.i.i, ptr %i.j, align 8, !tbaa !22
  store i64 %i.a, ptr %i.b, align 8, !tbaa !21
  br label %_ZN7NCrypto7NSevenZ10CBaseCoder17CryptoSetPasswordEPKhj.exit

_ZN7NCrypto7NSevenZ10CBaseCoder17CryptoSetPasswordEPKhj.exit: ; preds = %._ZN7CBufferIhE11SetCapacityEm.exit_crit_edge.i, %bb.g
  %i.m = phi ptr [ %.pre.i, %._ZN7CBufferIhE11SetCapacityEm.exit_crit_edge.i ], [ %.0.i.i, %bb.g ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr readonly align 1 %1, i64 %i.a, i1 false)
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN7NCrypto7NSevenZ10CBaseCoder4InitEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.CMyComPtr.0, align 8         ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN7NCrypto7NSevenZ5CBase15CalculateDigestEv(ptr noundef nonnull align 8 dereferenceable(140) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
end_hunk_0
