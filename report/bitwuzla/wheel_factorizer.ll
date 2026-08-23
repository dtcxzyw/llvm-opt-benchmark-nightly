Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/wheel_factorizer?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@_ZN4bzla15WheelFactorizerC2ERKNS_9BitVectorEm:bb.a
  invoke void @_ZN4bzla9BitVector7from_uiEmmb(ptr dead_on_unwind nonnull writable sret(%"class.bzla::BitVector") align 8 %3, i64 noundef %i.i, i64 noundef 1, i1 noundef zeroext false)
          to label %bb.h unwind label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.m = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4bzla9BitVectoraSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %3) #4 ; 0 uses
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #4
  invoke void @_ZN4bzla9BitVector7from_uiEmmb(ptr dead_on_unwind nonnull writable sret(%"class.bzla::BitVector") align 8 %4, i64 noundef %i.i, i64 noundef 2, i1 noundef zeroext false)
          to label %bb.i unwind label %bb.t

bb.i:                                             ; preds = %bb.h
  %i.n = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4bzla9BitVectoraSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %4) #4 ; 0 uses
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #4
  invoke void @_ZN4bzla9BitVector7from_uiEmmb(ptr dead_on_unwind nonnull writable sret(%"class.bzla::BitVector") align 8 %5, i64 noundef %i.i, i64 noundef 4, i1 noundef zeroext false)
          to label %bb.j unwind label %bb.u

bb.j:                                             ; preds = %bb.i
  %i.o = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4bzla9BitVectoraSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %5) #4 ; 0 uses
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #4
  invoke void @_ZN4bzla9BitVector7from_uiEmmb(ptr dead_on_unwind nonnull writable sret(%"class.bzla::BitVector") align 8 %6, i64 noundef %i.i, i64 noundef 6, i1 noundef zeroext false)
          to label %bb.k unwind label %bb.v

bb.k:                                             ; preds = %bb.j
  %i.p = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4bzla9BitVectoraSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %6) #4 ; 0 uses
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  %i.q = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN4bzla9BitVectoraSERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.l unwind label %bb.r       ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.b, ptr %i.r, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.c, ptr %i.s, align 8, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.c, ptr %i.t, align 8, !tbaa !16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.d, ptr %i.u, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.c, ptr %i.v, align 8, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.d, ptr %i.w, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.c, ptr %i.x, align 8, !tbaa !16
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.d, ptr %i.y, align 8, !tbaa !16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.e, ptr %i.z, align 8, !tbaa !16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.c, ptr %i.aa, align 8, !tbaa !16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.e, ptr %i.ab, align 8, !tbaa !16
  br label %bb.w

bb.m:                                             ; preds = %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.n:                                             ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.o:                                             ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.p:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.q:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.r:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.s:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  br label %bb.x

bb.t:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #4
  br label %bb.x

bb.u:                                             ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #4
  br label %bb.x

bb.v:                                             ; preds = %bb.j
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  br label %bb.x

bb.w:                                             ; preds = %bb.l, %bb.f
  ret void

bb.x:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.r ], [ %i.al, %bb.v ], [ %i.ak, %bb.u ], [ %i.aj, %bb.t ], [ %i.ai, %bb.s ]
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.e) #4
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.x ], [ %i.ag, %bb.q ]
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.d) #4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.p
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.y ], [ %i.af, %bb.p ]
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.o
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.z ], [ %i.ae, %bb.o ]
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.n
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.aa ], [ %i.ad, %bb.n ]
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.m
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %bb.ab ], [ %i.ac, %bb.m ]
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #4
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn
}

declare void @_ZN4bzla9BitVectorC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare void @_ZN4bzla9BitVectorC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @_ZN4bzla9BitVector7from_uiEmmb(ptr dead_on_unwind writable sret(%"class.bzla::BitVector") align 8, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN4bzla9BitVectoraSEOS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN4bzla9BitVectoraSERKS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN4bzla15WheelFactorizer4nextEv(ptr noundef nonnull align 8 dereferenceable(256) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.bzla::BitVector", align 8   ; 7 uses
  %2 = alloca %"class.bzla::BitVector", align 8   ; 12 uses
  %3 = alloca %"class.bzla::BitVector", align 8   ; 12 uses
  %4 = alloca %"class.bzla::BitVector", align 8   ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 5 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !15, !range !19, !noundef !20
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !14
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 8, !tbaa !15
  %i.j = tail call noundef zeroext i1 @_ZNK4bzla9BitVector7is_zeroEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  br i1 %i.j, label %bb.y, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef zeroext i1 @_ZNK4bzla9BitVector6is_oneEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  br i1 %i.k, label %bb.y, label %5

5:                                                ; preds = %bb.d
  br label %bb.y

._crit_edge:                                      ; preds = %bb.t
  store i8 1, ptr %i.a, align 8, !tbaa !15
  br label %bb.y

bb.e:                                             ; preds = %.lr.ph, %bb.t
  %i.l = phi i64 [ 1, %.lr.ph ], [ %i.ac, %bb.t ]
  %i.m = call noundef zeroext i1 @_ZNK4bzla9BitVector16is_umul_overflowERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.g)
  br i1 %i.m, label %.critedge.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #4
  call void @_ZNK4bzla9BitVector5bvmulERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.bzla::BitVector") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.g)
  %i.n = invoke noundef i32 @_ZNK4bzla9BitVector7compareERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %.critedge unwind label %bb.g

.critedge:                                        ; preds = %bb.f
  %i.o = icmp sgt i32 %i.n, 0
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  br i1 %i.o, label %.critedge.thread, label %bb.h

.critedge.thread:                                 ; preds = %bb.e, %.critedge
  store i8 1, ptr %i.a, align 8, !tbaa !15
  br label %bb.y

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  br label %bb.x

bb.h:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #4
  call void @_ZN4bzla9BitVectorC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #4
  invoke void @_ZN4bzla9BitVectorC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  invoke void @_ZNK4bzla9BitVector10bvudivuremERKS0_PS0_S3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull %2, ptr noundef nonnull %3)
          to label %bb.j unwind label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.q = invoke noundef zeroext i1 @_ZNK4bzla9BitVector7is_zeroEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.k unwind label %.loopexit

bb.k:                                             ; preds = %bb.j
  br i1 %i.q, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN4bzla9BitVector4isetERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.thread32 unwind label %.loopexit.split-lp

.thread32:                                        ; preds = %bb.l
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  br label %bb.y

bb.m:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.loopexit:                                        ; preds = %bb.i, %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #4
  %i.s = load i64, ptr %i.i, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !16
  invoke void @_ZNK4bzla9BitVector5bvaddERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.bzla::BitVector") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.v = invoke noundef i32 @_ZNK4bzla9BitVector7compareERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN4bzla9BitVector4isetERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.w = icmp slt i32 %i.v, 1
  %i.x = load i64, ptr %i.i, align 8, !tbaa !8    ; 2 uses
  %i.y = icmp eq i64 %i.x, 10
  %i.z = add i64 %i.x, 1
  %spec.select = select i1 %i.y, i64 3, i64 %i.z
  store i64 %spec.select, ptr %i.i, align 8, !tbaa !8
  br i1 %i.w, label %.thread35, label %bb.t

.thread35:                                        ; preds = %bb.q
  store i8 1, ptr %i.a, align 8, !tbaa !15
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #4
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  br label %bb.y

bb.r:                                             ; preds = %bb.n
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.s:                                             ; preds = %bb.p, %bb.o
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #4
  br label %bb.u

bb.t:                                             ; preds = %bb.q
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #4
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  %i.ac = add i64 %i.l, 1                         ; 2 uses
  %i.ad = load i64, ptr %i.f, align 8, !tbaa !13  ; 2 uses
  %.not = icmp ne i64 %i.ad, 0
  %i.ae = icmp ugt i64 %i.ac, %i.ad
  %or.cond = select i1 %.not, i1 %i.ae, i1 false
  br i1 %or.cond, label %._crit_edge, label %bb.e

bb.u:                                             ; preds = %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.s ], [ %i.aa, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #4
  br label %bb.v

bb.v:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.u
  %.pn27 = phi { ptr, i32 } [ %.pn, %bb.u ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.m
  %.pn27.pn = phi { ptr, i32 } [ %.pn27, %bb.v ], [ %i.r, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  br label %bb.x

bb.x:                                             ; preds = %bb.g, %bb.w
  %.pn27.pn.pn = phi { ptr, i32 } [ %.pn27.pn, %bb.w ], [ %i.p, %bb.g ]
  resume { ptr, i32 } %.pn27.pn.pn

bb.y:                                             ; preds = %._crit_edge, %.thread35, %.thread32, %.critedge.thread, %bb.c, %bb.d, %bb.a, %5
  %.323 = phi ptr [ null, %bb.c ], [ null, %bb.a ], [ %0, %5 ], [ null, %bb.d ], [ %i.g, %.thread32 ], [ %0, %.critedge.thread ], [ null, %.thread35 ], [ null, %._crit_edge ]
  ret ptr %.323
}

declare noundef zeroext i1 @_ZNK4bzla9BitVector7is_zeroEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK4bzla9BitVector6is_oneEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK4bzla9BitVector16is_umul_overflowERKS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZNK4bzla9BitVector5bvmulERKS0_(ptr dead_on_unwind writable sret(%"class.bzla::BitVector") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare noundef i32 @_ZNK4bzla9BitVector7compareERKS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZNK4bzla9BitVector10bvudivuremERKS0_PS0_S3_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN4bzla9BitVector4isetERKS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZNK4bzla9BitVector5bvaddERKS0_(ptr dead_on_unwind writable sret(%"class.bzla::BitVector") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !11, i64 240}
!9 = !{!"_ZTSN4bzla15WheelFactorizerE", !10, i64 0, !10, i64 24, !10, i64 48, !10, i64 72, !10, i64 96, !10, i64 120, !6, i64 144, !12, i64 232, !11, i64 240, !11, i64 248}
!10 = !{!"_ZTSN4bzla9BitVectorE", !11, i64 0, !6, i64 8}
!11 = !{!"long", !6, i64 0}
!12 = !{!"bool", !6, i64 0}
!13 = !{!9, !11, i64 248}
!14 = !{!10, !11, i64 0}
!15 = !{!9, !12, i64 232}
!16 = !{!17, !17, i64 0}
!17 = !{!"p1 _ZTSN4bzla9BitVectorE", !18, i64 0}
!18 = !{!"any pointer", !6, i64 0}
!19 = !{i8 0, i8 2}
!20 = !{}
end_hunk_0
