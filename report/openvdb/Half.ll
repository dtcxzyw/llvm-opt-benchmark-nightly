Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/Half?download=true
inline.NumInlined: 13
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN7openvdb5v13_04math8internallsERSoNS2_4halfE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, i16 %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i16 %1 to i32
  %i.b = shl nuw nsw i32 %i.a, 13
  %i.c = and i32 %i.b, 268427264                  ; 6 uses
  %.signext.i.i = sext i16 %1 to i32
  %i.d = and i32 %.signext.i.i, -2147483648       ; 3 uses
  %i.e = icmp samesign ugt i32 %i.c, 8388607
  br i1 %i.e, label %bb.b, label %bb.e, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.f = or disjoint i32 %i.c, %i.d               ; 2 uses
  %i.g = icmp samesign ult i32 %i.c, 260046848
  br i1 %i.g, label %bb.c, label %bb.d, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw nsw i32 %i.f, 939524096
  br label %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit

bb.d:                                             ; preds = %bb.b
  %i.i = or i32 %i.f, 2139095040
  br label %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit

bb.e:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.c, i1 true)
  %i.k = add nsw i32 %i.j, -8                     ; 2 uses
  %i.l = shl i32 %i.c, %i.k
  %i.m = or i32 %i.d, %i.l
  %i.n = or i32 %i.m, 947912704
  %i.o = shl nuw nsw i32 %i.k, 23
  %i.p = sub nuw i32 %i.n, %i.o
  br label %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit

_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit:  ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.0.0.i.i = phi i32 [ %i.h, %bb.c ], [ %i.i, %bb.d ], [ %i.p, %bb.f ], [ %i.d, %bb.e ]
  %i.q = bitcast i32 %.sroa.0.0.i.i to float
  %i.r = fpext float %i.q to double
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.r) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN7openvdb5v13_04math8internalrsERSiRNS2_4halfE(ptr noundef nonnull returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull writeonly align 2 captures(none) dereferenceable(2) initializes((0, 2)) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIfEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  %i.c = load float, ptr %i.a, align 4, !tbaa !25 ; 2 uses
  %i.d = bitcast float %i.c to i32
  %i.e = call float @llvm.fabs.f32(float %i.c)
  %i.f = bitcast float %i.e to i32                ; 10 uses
  %i.g = lshr i32 %i.d, 16                        ; 3 uses
  %i.h = trunc nuw i32 %i.g to i16
  %i.i = and i16 %i.h, -32768                     ; 3 uses
  %i.j = icmp samesign ugt i32 %i.f, 947912703
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = icmp samesign ugt i32 %i.f, 2139095039
  br i1 %i.k, label %bb.c, label %bb.e, !prof !26

bb.c:                                             ; preds = %bb.b
  %i.l = or disjoint i16 %i.i, 31744              ; 2 uses
  %i.m = icmp eq i32 %i.f, 2139095040
  br i1 %i.m, label %_ZN7openvdb5v13_04math8internal4halfC2Ef.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = lshr i32 %i.f, 13
  %i.o = and i32 %i.n, 1023                       ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  %i.q = zext i1 %i.p to i16
  %i.r = trunc nuw nsw i32 %i.o to i16
  %i.s = or i16 %i.r, %i.q
  %i.t = or disjoint i16 %i.s, %i.l
  br label %_ZN7openvdb5v13_04math8internal4halfC2Ef.exit

bb.e:                                             ; preds = %bb.b
  %i.u = icmp samesign ugt i32 %i.f, 1199566847
  br i1 %i.u, label %bb.f, label %bb.g, !prof !26

bb.f:                                             ; preds = %bb.e
  %i.v = or disjoint i16 %i.i, 31744
  br label %_ZN7openvdb5v13_04math8internal4halfC2Ef.exit

bb.g:                                             ; preds = %bb.e
  %i.w = add nuw nsw i32 %i.f, 134221823
  %i.x = lshr i32 %i.f, 13
  %i.y = and i32 %i.x, 1
  %i.z = add nuw nsw i32 %i.w, %i.y
  %i.aa = lshr i32 %i.z, 13
  %i.ab = and i32 %i.g, 32768
  %i.ac = or i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i16
  br label %_ZN7openvdb5v13_04math8internal4halfC2Ef.exit

bb.h:                                             ; preds = %bb.a
  %i.ae = icmp samesign ult i32 %i.f, 855638017
  br i1 %i.ae, label %_ZN7openvdb5v13_04math8internal4halfC2Ef.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = lshr i32 %i.f, 23                       ; 2 uses
  %i.ag = sub nuw nsw i32 126, %i.af
  %i.ah = and i32 %i.f, 8388607
  %i.ai = or disjoint i32 %i.ah, 8388608          ; 2 uses
  %i.aj = add nsw i32 %i.af, -94
  %i.ak = shl i32 %i.ai, %i.aj                    ; 2 uses
  %i.al = lshr i32 %i.ai, %i.ag                   ; 2 uses
  %i.am = and i32 %i.g, 32768
  %i.an = or i32 %i.al, %i.am
  %i.ao = trunc nuw i32 %i.an to i16
  %i.ap = icmp ugt i32 %i.ak, -2147483648
  %2 = icmp eq i32 %i.ak, -2147483648
  %3 = trunc nuw nsw i32 %i.al to i16
  %4 = and i16 %3, 1
  %5 = select i1 %2, i16 %4, i16 0
  %6 = select i1 %i.ap, i16 1, i16 %5
  %spec.select.i.i = add nuw i16 %6, %i.ao
  br label %_ZN7openvdb5v13_04math8internal4halfC2Ef.exit

_ZN7openvdb5v13_04math8internal4halfC2Ef.exit:    ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h, %bb.i
  %.033.i.i = phi i16 [ %i.i, %bb.h ], [ %i.t, %bb.d ], [ %i.v, %bb.f ], [ %i.ad, %bb.g ], [ %i.l, %bb.c ], [ %spec.select.i.i, %bb.i ]
  store i16 %.033.i.i, ptr %1, align 2, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_04math8internal9printBitsERSoNS2_4halfE(ptr noundef nonnull align 8 dereferenceable(8) %0, i16 %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = zext i16 %1 to i32
  br label %bb.c

bb.b:                                             ; preds = %bb.i
  ret void

bb.c:                                             ; preds = %bb.a, %bb.i
  %.011 = phi i32 [ 15, %bb.a ], [ %i.u, %bb.i ]  ; 4 uses
  %2 = lshr i32 %i.c, %.011
  %3 = trunc i32 %2 to i1
  %i.d = select i1 %3, i8 49, i8 48               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.d, ptr %i.b, align 1, !tbaa !8
  %i.e = load ptr, ptr %0, align 8, !tbaa !10
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %0, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !21
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.e:                                             ; preds = %bb.c
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.d) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  switch i32 %.011, label %bb.i [
    i32 15, label %bb.f
    i32 10, label %bb.f
  ]

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 32, ptr %i.a, align 1, !tbaa !8
  %i.m = load ptr, ptr %0, align 8, !tbaa !10
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %0, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !21
  %.not.i8 = icmp eq i64 %i.r, 0
  br i1 %.not.i8, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit10

bb.h:                                             ; preds = %bb.f
  %i.t = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 32) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit10

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit10: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit10
  %i.u = add nsw i32 %.011, -1
  %.not12 = icmp eq i32 %.011, 0
  br i1 %.not12, label %bb.b, label %bb.c, !llvm.loop !29
}

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_04math8internal9printBitsERSof(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = bitcast float %1 to i32
  br label %bb.c

bb.b:                                             ; preds = %bb.i
  ret void

bb.c:                                             ; preds = %bb.a, %bb.i
  %.011 = phi i32 [ 31, %bb.a ], [ %i.v, %bb.i ]  ; 4 uses
  %2 = lshr i32 %i.c, %.011
  %3 = trunc i32 %2 to i1
  %i.d = select i1 %3, i8 49, i8 48               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.d, ptr %i.b, align 1, !tbaa !8
  %i.e = load ptr, ptr %0, align 8, !tbaa !10
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %0, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !21
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.e:                                             ; preds = %bb.c
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.d) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.m = and i32 %.011, 2147483639
  %or.cond = icmp eq i32 %i.m, 23
  br i1 %or.cond, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 32, ptr %i.a, align 1, !tbaa !8
  %i.n = load ptr, ptr %0, align 8, !tbaa !10
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %0, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !21
  %.not.i8 = icmp eq i64 %i.s, 0
  br i1 %.not.i8, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit10

bb.h:                                             ; preds = %bb.f
  %i.u = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 32) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit10

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit10: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit10, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.v = add nsw i32 %.011, -1
  %.not12 = icmp eq i32 %.011, 0
  br i1 %.not12, label %bb.b, label %bb.c, !llvm.loop !30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN7openvdb5v13_04math8internal9printBitsEPcNS2_4halfE(ptr nofree noundef writeonly captures(none) initializes((0, 19)) %0, i16 %1) local_unnamed_addr #2 {
bb.a:
  %i.a = zext i16 %1 to i32                       ; 4 uses
  %.not = icmp sgt i16 %1, -1
  %i.b = select i1 %.not, i8 48, i8 49
  store i8 %i.b, ptr %0, align 1, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 32, ptr %i.c, align 1, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = insertelement <4 x i32> poison, i32 %i.a, i64 0
  %i.f = shufflevector <4 x i32> %i.e, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.g = and <4 x i32> %i.f, <i32 16384, i32 8192, i32 4096, i32 2048>
  %i.h = icmp eq <4 x i32> %i.g, zeroinitializer
  %i.i = select <4 x i1> %i.h, <4 x i8> splat (i8 48), <4 x i8> splat (i8 49)
  store <4 x i8> %i.i, ptr %i.d, align 1, !tbaa !8
  %i.j = and i32 %i.a, 1024
  %.not.5 = icmp eq i32 %i.j, 0
  %i.k = select i1 %.not.5, i8 48, i8 49
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.k, ptr %i.l, align 1, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 32, ptr %i.m, align 1, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = insertelement <8 x i32> poison, i32 %i.a, i64 0
  %i.p = shufflevector <8 x i32> %i.o, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.q = and <8 x i32> %i.p, <i32 512, i32 256, i32 128, i32 64, i32 32, i32 16, i32 8, i32 4>
  %i.r = icmp eq <8 x i32> %i.q, zeroinitializer
  %i.s = select <8 x i1> %i.r, <8 x i8> splat (i8 48), <8 x i8> splat (i8 49)
  store <8 x i8> %i.s, ptr %i.n, align 1, !tbaa !8
  %i.t = and i32 %i.a, 2
  %.not.14 = icmp eq i32 %i.t, 0
  %i.u = select i1 %.not.14, i8 48, i8 49
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.u, ptr %i.v, align 1, !tbaa !8
  %2 = trunc i16 %1 to i1
  %i.w = select i1 %2, i8 49, i8 48
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.w, ptr %i.x, align 1, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 0, ptr %i.y, align 1, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define void @_ZN7openvdb5v13_04math8internal9printBitsEPcf(ptr nofree noundef writeonly captures(none) %0, float noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = bitcast float %1 to i32
  br label %bb.c

bb.b:                                             ; preds = %bb.e
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 0, ptr %i.b, align 1, !tbaa !8
  ret void

bb.c:                                             ; preds = %bb.a, %bb.e
  %.014 = phi i32 [ 0, %bb.a ], [ %i.k, %bb.e ]   ; 3 uses
  %.01213 = phi i32 [ 31, %bb.a ], [ %i.j, %bb.e ] ; 4 uses
  %2 = lshr i32 %i.a, %.01213
  %3 = trunc i32 %2 to i1
  %i.c = select i1 %3, i8 49, i8 48
  %i.d = sext i32 %.014 to i64
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  store i8 %i.c, ptr %i.e, align 1, !tbaa !8
  %i.f = and i32 %.01213, 2147483639
  %or.cond = icmp eq i32 %i.f, 23
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %.014, 1                     ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds i8, ptr %0, i64 %i.h
  store i8 32, ptr %i.i, align 1, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i32 [ %i.g, %bb.d ], [ %.014, %bb.c ]
  %i.j = add nsw i32 %.01213, -1
  %i.k = add nsw i32 %.1, 1
  %.not15 = icmp eq i32 %.01213, 0
  br i1 %.not15, label %bb.b, label %bb.c, !llvm.loop !31
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIfEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{!"vtable pointer", !3, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"long", !4, i64 0}
!12 = !{!"_ZTSSt13_Ios_Fmtflags", !4, i64 0}
!13 = !{!"_ZTSSt12_Ios_Iostate", !4, i64 0}
!14 = !{!"any pointer", !4, i64 0}
!15 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !14, i64 0}
!16 = !{!"_ZTSNSt8ios_base6_WordsE", !14, i64 0, !11, i64 8}
!17 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !14, i64 0}
!18 = !{!"p1 _ZTSNSt6locale5_ImplE", !14, i64 0}
!19 = !{!"_ZTSSt6locale", !18, i64 0}
!20 = !{!"_ZTSSt8ios_base", !11, i64 8, !11, i64 16, !12, i64 24, !13, i64 28, !13, i64 32, !15, i64 40, !16, i64 48, !4, i64 64, !5, i64 192, !17, i64 200, !19, i64 208}
!21 = !{!20, !11, i64 16}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!24 = !{!"float", !4, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!27 = !{!"short", !4, i64 0}
!28 = !{!27, !27, i64 0}
!29 = distinct !{!29, !22}
!30 = distinct !{!30, !22}
!31 = distinct !{!31, !22}
end_hunk_0
