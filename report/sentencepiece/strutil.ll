Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/strutil?download=true
inline.NumInlined: 763
inline.NumDeleted: 191
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6google8protobuf22FastUInt32ToBufferLeftEjPc:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %.169, i64 1
  store i8 %i.p, ptr %i.q, align 1, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %.169, i64 2
  br label %bb.e

bb.e:                                             ; preds = %bb.w, %bb.d
  %.173 = phi i32 [ %.072, %bb.d ], [ %0, %bb.w ]
  %.270 = phi ptr [ %i.r, %bb.d ], [ %i.bo, %bb.w ]
  %.1 = phi i32 [ %i.k, %bb.d ], [ %i.bl, %bb.w ]
  %.neg81 = mul i32 %.1, -1000000
  %i.s = add i32 %.neg81, %.173
  br label %bb.f

bb.f:                                             ; preds = %bb.s, %bb.e
  %.274 = phi i32 [ %i.s, %bb.e ], [ %0, %bb.s ]  ; 2 uses
  %.371 = phi ptr [ %.270, %bb.e ], [ %1, %bb.s ] ; 3 uses
  %i.t = udiv i32 %.274, 10000                    ; 2 uses
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [2 x i8], ptr @_ZN6google8protobufL16two_ASCII_digitsE, i64 %i.u ; 2 uses
  %i.w = load i8, ptr %i.v, align 2, !tbaa !21
  store i8 %i.w, ptr %.371, align 1, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %.371, i64 1
  store i8 %i.y, ptr %i.z, align 1, !tbaa !21
  %i.aa = getelementptr inbounds nuw i8, ptr %.371, i64 2
  br label %bb.g

bb.g:                                             ; preds = %bb.t, %bb.f
  %.375 = phi i32 [ %.274, %bb.f ], [ %0, %bb.t ]
  %.4 = phi ptr [ %i.aa, %bb.f ], [ %i.bi, %bb.t ]
  %.2 = phi i32 [ %i.t, %bb.f ], [ %i.bf, %bb.t ]
  %.neg82 = mul i32 %.2, -10000
  %i.ab = add i32 %.neg82, %.375
  br label %bb.h

bb.h:                                             ; preds = %bb.p, %bb.g
  %.476 = phi i32 [ %i.ab, %bb.g ], [ %0, %bb.p ] ; 2 uses
  %.5 = phi ptr [ %.4, %bb.g ], [ %1, %bb.p ]     ; 3 uses
  %i.ac = udiv i32 %.476, 100                     ; 2 uses
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr @_ZN6google8protobufL16two_ASCII_digitsE, i64 %i.ad ; 2 uses
  %i.af = load i8, ptr %i.ae, align 2, !tbaa !21
  store i8 %i.af, ptr %.5, align 1, !tbaa !21
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !21
  %i.ai = getelementptr inbounds nuw i8, ptr %.5, i64 1
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !21
  %i.aj = getelementptr inbounds nuw i8, ptr %.5, i64 2
  br label %bb.i

bb.i:                                             ; preds = %bb.q, %bb.h
  %.577 = phi i32 [ %.476, %bb.h ], [ %0, %bb.q ]
  %.6 = phi ptr [ %i.aj, %bb.h ], [ %i.bc, %bb.q ]
  %.3 = phi i32 [ %i.ac, %bb.h ], [ %.zext, %bb.q ]
  %.neg83 = mul i32 %.3, -100
  %i.ak = add i32 %.neg83, %.577
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.i
  %.678 = phi i32 [ %i.ak, %bb.i ], [ %0, %bb.m ]
  %.7 = phi ptr [ %.6, %bb.i ], [ %1, %bb.m ]     ; 3 uses
  %i.al = zext i32 %.678 to i64
  %i.am = getelementptr inbounds nuw [2 x i8], ptr @_ZN6google8protobufL16two_ASCII_digitsE, i64 %i.al ; 2 uses
  %i.an = load i8, ptr %i.am, align 2, !tbaa !21
  store i8 %i.an, ptr %.7, align 1, !tbaa !21
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !21
  %i.aq = getelementptr inbounds nuw i8, ptr %.7, i64 1
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !21
  %i.ar = getelementptr inbounds nuw i8, ptr %.7, i64 2
  br label %bb.k

bb.k:                                             ; preds = %bb.n, %bb.j
  %.8 = phi ptr [ %i.ar, %bb.j ], [ %i.aw, %bb.n ] ; 2 uses
  store i8 0, ptr %.8, align 1, !tbaa !21
  ret ptr %.8

bb.l:                                             ; preds = %bb.a
  %i.as = icmp samesign ult i32 %0, 100
  br i1 %i.as, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.at = icmp samesign ugt i32 %0, 9
  br i1 %i.at, label %bb.j, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = trunc nuw nsw i32 %0 to i8
  %i.av = or disjoint i8 %i.au, 48
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.av, ptr %1, align 1, !tbaa !21
  br label %bb.k

bb.o:                                             ; preds = %bb.l
  %i.ax = icmp samesign ult i32 %0, 10000
  br i1 %i.ax, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ay = icmp samesign ugt i32 %0, 999
  br i1 %i.ay, label %bb.h, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.lhs.trunc = trunc nuw nsw i32 %0 to i16
  %i.az = udiv i16 %.lhs.trunc, 100               ; 2 uses
  %.zext = zext nneg i16 %i.az to i32
  %i.ba = trunc nuw nsw i16 %i.az to i8
  %i.bb = or disjoint i8 %i.ba, 48
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.bb, ptr %1, align 1, !tbaa !21
  br label %bb.i

bb.r:                                             ; preds = %bb.o
  %i.bd = icmp samesign ult i32 %0, 1000000
  br i1 %i.bd, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.be = icmp samesign ugt i32 %0, 99999
  br i1 %i.be, label %bb.f, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = udiv i32 %0, 10000                      ; 2 uses
  %i.bg = trunc nuw nsw i32 %i.bf to i8
  %i.bh = or disjoint i8 %i.bg, 48
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.bh, ptr %1, align 1, !tbaa !21
  br label %bb.g

bb.u:                                             ; preds = %bb.r
  %i.bj = icmp samesign ult i32 %0, 100000000
  br i1 %i.bj, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bk = icmp samesign ugt i32 %0, 9999999
  br i1 %i.bk, label %bb.d, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bl = udiv i32 %0, 1000000                    ; 2 uses
  %i.bm = trunc nuw nsw i32 %i.bl to i8
  %i.bn = add nuw nsw i8 %i.bm, 48
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.bn, ptr %1, align 1, !tbaa !21
  br label %bb.e

bb.x:                                             ; preds = %bb.u
  %i.bp = udiv i32 %0, 100000000                  ; 2 uses
  %i.bq = trunc nuw nsw i32 %i.bp to i8
  %i.br = or disjoint i8 %i.bq, 48
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.br, ptr %1, align 1, !tbaa !21
  br label %bb.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull ptr @_ZN6google8protobuf21FastInt32ToBufferLeftEiPc(i32 noundef %0, ptr nofree noundef writeonly captures(ret: address, provenance) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 45, ptr %1, align 1, !tbaa !21
  %i.c = sub i32 0, %0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.06 = phi ptr [ %i.b, %bb.b ], [ %1, %bb.a ]
  %.0 = phi i32 [ %i.c, %bb.b ], [ %0, %bb.a ]
  %i.d = tail call noundef ptr @_ZN6google8protobuf22FastUInt32ToBufferLeftEjPc(i32 noundef %.0, ptr noundef %.06)
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree nosync nounwind memory(write, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull ptr @_ZN6google8protobuf22FastUInt64ToBufferLeftEmPc(i64 noundef %0, ptr noundef %1) local_unnamed_addr #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i64 %0, 4294967296
  br i1 %i.a, label %common.ret, label %bb.b

common.ret:                                       ; preds = %bb.a
  %i.b = trunc nuw i64 %0 to i32
  %i.c = tail call noundef ptr @_ZN6google8protobuf22FastUInt32ToBufferLeftEjPc(i32 noundef %i.b, ptr noundef %1)
  br label %common.ret56

common.ret56:                                     ; preds = %bb.b, %common.ret
  %common.ret56.op = phi ptr [ %i.c, %common.ret ], [ %i.ab, %bb.b ]
  ret ptr %common.ret56.op

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 %0, 1000000000                  ; 2 uses
  %i.e = tail call noundef ptr @_ZN6google8protobuf22FastUInt64ToBufferLeftEmPc(i64 noundef %i.d, ptr noundef %1) ; 4 uses
  %.neg = mul i64 %i.d, 3294967296
  %i.f = add i64 %.neg, %0
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  %i.h = udiv i32 %i.g, 10000000                  ; 2 uses
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [2 x i8], ptr @_ZN6google8protobufL16two_ASCII_digitsE, i64 %i.i
  %.neg52 = mul nsw i32 %i.h, -10000000
  %i.k = add i32 %.neg52, %i.g                    ; 2 uses
  %i.l = udiv i32 %i.k, 100000                    ; 2 uses
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [2 x i8], ptr @_ZN6google8protobufL16two_ASCII_digitsE, i64 %i.m
  %2 = load <2 x i8>, ptr %i.j, align 2, !tbaa !21
  %3 = load <2 x i8>, ptr %i.n, align 2, !tbaa !21
  %4 = shufflevector <2 x i8> %2, <2 x i8> %3, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %4, ptr %i.e, align 1, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.neg53 = mul nsw i32 %i.l, -100000
  %i.p = add i32 %.neg53, %i.k                    ; 2 uses
  %i.q = udiv i32 %i.p, 1000                      ; 2 uses
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [2 x i8], ptr @_ZN6google8protobufL16two_ASCII_digitsE, i64 %i.r
  %.neg54 = mul nsw i32 %i.q, -1000
  %i.t = add i32 %.neg54, %i.p                    ; 2 uses
  %i.u = udiv i32 %i.t, 10                        ; 2 uses
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [2 x i8], ptr @_ZN6google8protobufL16two_ASCII_digitsE, i64 %i.v
  %5 = load <2 x i8>, ptr %i.s, align 2, !tbaa !21
  %6 = load <2 x i8>, ptr %i.w, align 2, !tbaa !21
  %7 = shufflevector <2 x i8> %5, <2 x i8> %6, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %7, ptr %i.o, align 1, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.neg55 = mul nuw nsw i32 %i.u, 246
  %i.y = add i32 %.neg55, %i.t
  %i.z = trunc i32 %i.y to i8
  %i.aa = add i8 %i.z, 48
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 9 ; 2 uses
  store i8 %i.aa, ptr %i.x, align 1, !tbaa !21
  store i8 0, ptr %i.ab, align 1, !tbaa !21
  br label %common.ret56
}

; Function Attrs: mustprogress nofree nosync nounwind memory(write, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull ptr @_ZN6google8protobuf21FastInt64ToBufferLeftElPc(i64 noundef %0, ptr noundef %1) local_unnamed_addr #15 {
bb.a:
  %i.a = icmp slt i64 %0, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 45, ptr %1, align 1, !tbaa !21
  %i.c = sub i64 0, %0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.06 = phi ptr [ %i.b, %bb.b ], [ %1, %bb.a ]
  %.0 = phi i64 [ %i.c, %bb.b ], [ %0, %bb.a ]
  %i.d = tail call noundef ptr @_ZN6google8protobuf22FastUInt64ToBufferLeftEmPc(i64 noundef %.0, ptr noundef %.06)
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf10SimpleItoaB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [32 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 10 ; 3 uses
  store i8 0, ptr %i.c, align 1, !tbaa !21
  %i.e = icmp sgt i32 %1, -1
  br i1 %i.e, label %.preheader.i, label %bb.b

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %.026.i = phi i32 [ %i.j, %.preheader.i ], [ %1, %bb.a ] ; 3 uses
  %.0.i = phi ptr [ %i.i, %.preheader.i ], [ %i.d, %bb.a ] ; 3 uses
  %i.f = urem i32 %.026.i, 10
  %i.g = trunc nuw nsw i32 %i.f to i8
  %i.h = or disjoint i8 %i.g, 48
  %i.i = getelementptr inbounds i8, ptr %.0.i, i64 -1
  store i8 %i.h, ptr %.0.i, align 1, !tbaa !21
  %i.j = udiv i32 %.026.i, 10
  %.not30.i = icmp samesign ult i32 %.026.i, 10
  br i1 %.not30.i, label %_ZN6google8protobuf17FastInt32ToBufferEiPc.exit, label %.preheader.i, !llvm.loop !2

bb.b:                                             ; preds = %bb.a
  %i.k = icmp samesign ugt i32 %1, -10
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = trunc nsw i32 %1 to i8
  %i.m = sub nsw i8 48, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 9 ; 2 uses
  store i8 %i.m, ptr %i.d, align 2, !tbaa !21
  store i8 45, ptr %i.n, align 1, !tbaa !21
  br label %_ZN6google8protobuf17FastInt32ToBufferEiPc.exit

bb.d:                                             ; preds = %bb.b
  %i.o = sub nuw nsw i32 -10, %1                  ; 2 uses
  %i.p = urem i32 %i.o, 10
  %i.q = trunc nuw nsw i32 %i.p to i8
  %i.r = or disjoint i8 %i.q, 48
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  store i8 %i.r, ptr %i.d, align 2, !tbaa !21
  %i.t = udiv i32 %i.o, 10
  %i.u = add nuw nsw i32 %i.t, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.127.i = phi i32 [ %i.u, %bb.d ], [ %i.z, %bb.e ] ; 3 uses
  %.1.i = phi ptr [ %i.s, %bb.d ], [ %i.y, %bb.e ] ; 2 uses
  %i.v = urem i32 %.127.i, 10
  %i.w = trunc nuw nsw i32 %i.v to i8
  %i.x = or disjoint i8 %i.w, 48
  %i.y = getelementptr inbounds i8, ptr %.1.i, i64 -1 ; 3 uses
  store i8 %i.x, ptr %.1.i, align 1, !tbaa !21
  %i.z = udiv i32 %.127.i, 10
  %.not.i = icmp samesign ult i32 %.127.i, 10
  br i1 %.not.i, label %bb.f, label %bb.e, !llvm.loop !3

bb.f:                                             ; preds = %bb.e
  store i8 45, ptr %i.y, align 1, !tbaa !21
  br label %_ZN6google8protobuf17FastInt32ToBufferEiPc.exit

_ZN6google8protobuf17FastInt32ToBufferEiPc.exit:  ; preds = %.preheader.i, %bb.c, %bb.f
  %.025.i = phi ptr [ %i.y, %bb.f ], [ %i.n, %bb.c ], [ %.0.i, %.preheader.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.aa, ptr %0, align 8, !tbaa !24
  %i.ab = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.025.i) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.ab, ptr %i.a, align 8, !tbaa !25
  %i.ac = icmp ugt i64 %i.ab, 15
  br i1 %i.ac, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZN6google8protobuf17FastInt32ToBufferEiPc.exit
  %i.ad = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ad, ptr %0, align 8, !tbaa !20
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !25
  store i64 %i.ae, ptr %i.aa, align 8, !tbaa !21
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %_ZN6google8protobuf17FastInt32ToBufferEiPc.exit
  %i.af = phi ptr [ %i.ad, %.noexc.i ], [ %i.aa, %_ZN6google8protobuf17FastInt32ToBufferEiPc.exit ] ; 2 uses
  switch i64 %i.ab, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ag = load i8, ptr %.025.i, align 1, !tbaa !21
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !21
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr nonnull align 1 %.025.i, i64 %i.ab, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !25  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !23
  %i.aj = load ptr, ptr %0, align 8, !tbaa !20
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 0, ptr %i.ak, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf10SimpleItoaB5cxx11Ej(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [32 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.c = call noundef ptr @_ZN6google8protobuf22FastUInt32ToBufferLeftEjPc(i32 noundef %1, ptr noundef nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = sub i64 %i.f, %i.g                       ; 4 uses
  store i64 %i.h, ptr %i.a, align 8, !tbaa !25
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !20
  %i.k = load i64, ptr %i.a, align 8, !tbaa !25
  store i64 %i.k, ptr %i.d, align 8, !tbaa !21
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.l = phi ptr [ %i.j, %.noexc.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.h, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %i.b, align 16, !tbaa !21
  store i8 %i.m, ptr %i.l, align 1, !tbaa !21
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr nonnull align 16 %i.b, i64 %i.h, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.n = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  store i64 %i.n, ptr %i.e, align 8, !tbaa !23
  %i.o = load ptr, ptr %0, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  store i8 0, ptr %i.p, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf10SimpleItoaB5cxx11El(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [32 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 21
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 3 uses
  store i8 0, ptr %i.c, align 1, !tbaa !21
end_hunk_0
