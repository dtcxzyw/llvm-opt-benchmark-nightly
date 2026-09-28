Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/BlenderCustomData?download=true
inline.NumInlined: 372
inline.NumDeleted: 184
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK6Assimp7Blender3DNAixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
bb.d:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.thread
  tail call void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTIN6Assimp7Blender5ErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.e:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.thread
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.x) #21
  resume { ptr, i32 } %i.y

bb.f:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = load ptr, ptr %i.z, align 8
  %i.ad = getelementptr inbounds nuw [120 x i8], ptr %i.ac, i64 %i.ab
  ret ptr %i.ad
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden noalias noundef nonnull ptr @_ZN6Assimp7Blender11createMVertEm(i64 noundef %0) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 56) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0         ; 2 uses
  %i.d = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.c, i64 8) ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1
  %i.f = or i1 %i.b, %i.e
  %i.g = extractvalue { i64, i1 } %i.d, 0
  %i.h = select i1 %i.f, i64 -1, i64 %i.g
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #24 ; 3 uses
  store i64 %0, ptr %i.i, align 16
  %i.j = icmp eq i64 %0, 0
  br i1 %i.j, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.idx = phi i64 [ %.add, %.preheader ], [ 8, %bb.a ] ; 3 uses
  %.ptr.ptr = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.ptr.ptr, i64 8
  store ptr null, ptr %i.k, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MVertE, i64 16), ptr %.ptr.ptr, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.ptr.ptr, i64 40
  store i8 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %.ptr.ptr, i64 44
  store i32 0, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %.ptr.ptr, i64 48
  store i32 0, ptr %i.n, align 8
  %.add = add nuw nsw i64 %.idx, 56
  %i.o = add nuw nsw i64 %.idx, 48
  %i.p = icmp eq i64 %i.o, %i.c
  br i1 %i.p, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %bb.a
  %.ptr5 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  ret ptr %.ptr5
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6Assimp7Blender12destroyMVertEPNS0_8ElemBaseE(ptr noundef %0) #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN6Assimp7Blender8ElemBaseE, ptr nonnull @_ZTIN6Assimp7Blender5MVertE, i64 0) #21 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread, label %.loopexit

.loopexit:                                        ; preds = %bb.b
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %.idx = mul i64 %i.e, 56
  %i.f = add i64 %.idx, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.d, i64 noundef %i.f) #22
  br label %.thread

.thread:                                          ; preds = %bb.a, %.loopexit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp7Blender9readMEdgeEPNS0_8ElemBaseEmRKNS0_12FileDatabaseE(ptr nofree noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(232) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Assimp::Blender::MEdge", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN6Assimp7Blender8ElemBaseE, ptr nonnull @_ZTIN6Assimp7Blender5MEdgeE, i64 0) #21 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.d, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.d, ptr noundef nonnull align 1 dereferenceable(5) @.str.1, i64 5, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 5, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 21
  store i8 0, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZNK6Assimp7Blender3DNAixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.c unwind label %.loopexit.split-lp

bb.c:                                             ; preds = %._crit_edge.i.i
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZN6Assimp7Blender4readINS0_5MEdgeEEEbRKNS0_9StructureEPT_mRKNS0_12FileDatabaseE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.noexc13, %.lr.ph.i
  %.010.i = phi ptr [ %i.b, %.lr.ph.i ], [ %i.n, %.noexc13 ] ; 3 uses
  %.089.i = phi i64 [ 0, %.lr.ph.i ], [ %i.o, %.noexc13 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr null, ptr %i.i, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MEdgeE, i64 16), ptr %3, align 8
  invoke void @_ZNK6Assimp7Blender9Structure7ConvertINS0_5MEdgeEEEvRT_RKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(232) %2)
          to label %.noexc13 unwind label %.loopexit

.noexc13:                                         ; preds = %bb.d
  %i.k = load ptr, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %.010.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.m, ptr noundef nonnull align 8 dereferenceable(12) %i.j, i64 12, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %.010.i, i64 32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.o = add nuw i64 %.089.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.o, %1
  br i1 %exitcond.not.i, label %_ZN6Assimp7Blender4readINS0_5MEdgeEEEbRKNS0_9StructureEPT_mRKNS0_12FileDatabaseE.exit, label %bb.d, !llvm.loop !9

_ZN6Assimp7Blender4readINS0_5MEdgeEEEbRKNS0_9StructureEPT_mRKNS0_12FileDatabaseE.exit: ; preds = %.noexc13, %bb.c
  %i.p = load ptr, ptr %4, align 8                ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.d
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6Assimp7Blender4readINS0_5MEdgeEEEbRKNS0_9StructureEPT_mRKNS0_12FileDatabaseE.exit
  %i.r = load i64, ptr %i.d, align 8
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp7Blender4readINS0_5MEdgeEEEbRKNS0_9StructureEPT_mRKNS0_12FileDatabaseE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.thread

.loopexit:                                        ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %._crit_edge.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.t = load ptr, ptr %4, align 8                ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.d
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.e
  %i.v = load i64, ptr %i.d, align 8
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %lpad.phi

.thread:                                          ; preds = %bb.a, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.09 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.09
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN6Assimp7Blender11createMEdgeEm(i64 noundef %0) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %0, 576460752303423487
  %i.b = shl nuw i64 %0, 5
  %i.c = or disjoint i64 %i.b, 8
  %i.d = select i1 %i.a, i64 -1, i64 %i.c
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.d) #24 ; 2 uses
  store i64 %0, ptr %i.e, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = icmp eq i64 %0, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds [32 x i8], ptr %i.f, i64 %0
  %i.i = add i64 %0, 576460752303423487
  %i.j = and i64 %i.i, 576460752303423487
  %xtraiter = and i64 %0, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.b, %.prol.preheader
  %i.k = phi ptr [ %i.m, %.prol.preheader ], [ %i.f, %bb.b ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr null, ptr %i.l, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MEdgeE, i64 16), ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !10

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.b
  %.unr = phi ptr [ %i.f, %bb.b ], [ %i.m, %.prol.preheader ]
  %i.n = icmp samesign ult i64 %i.j, 7
  br i1 %i.n, label %.loopexit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.o = phi ptr [ %i.ae, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr null, ptr %i.p, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MEdgeE, i64 16), ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store ptr null, ptr %i.r, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MEdgeE, i64 16), ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  store ptr null, ptr %i.t, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MEdgeE, i64 16), ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  store ptr null, ptr %i.v, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MEdgeE, i64 16), ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  store ptr null, ptr %i.x, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MEdgeE, i64 16), ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 160
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 168
  store ptr null, ptr %i.z, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MEdgeE, i64 16), ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 192
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 200
  store ptr null, ptr %i.ab, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MEdgeE, i64 16), ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 224
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 232
  store ptr null, ptr %i.ad, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MEdgeE, i64 16), ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 256 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.h
  br i1 %i.af, label %.loopexit, label %.new

.loopexit:                                        ; preds = %.prol.loopexit, %.new, %bb.a
  ret ptr %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6Assimp7Blender12destroyMEdgeEPNS0_8ElemBaseE(ptr noundef %0) #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN6Assimp7Blender8ElemBaseE, ptr nonnull @_ZTIN6Assimp7Blender5MEdgeE, i64 0) #21 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread, label %.loopexit

.loopexit:                                        ; preds = %bb.b
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %.idx = shl i64 %i.e, 5
  %i.f = or disjoint i64 %.idx, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.d, i64 noundef %i.f) #22
  br label %.thread

.thread:                                          ; preds = %bb.a, %.loopexit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp7Blender9readMFaceEPNS0_8ElemBaseEmRKNS0_12FileDatabaseE(ptr nofree noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(232) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Assimp::Blender::MFace", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN6Assimp7Blender8ElemBaseE, ptr nonnull @_ZTIN6Assimp7Blender5MFaceE, i64 0) #21 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.d, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.d, ptr noundef nonnull align 1 dereferenceable(5) @.str.2, i64 5, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 5, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 21
  store i8 0, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZNK6Assimp7Blender3DNAixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.c unwind label %.loopexit.split-lp

bb.c:                                             ; preds = %._crit_edge.i.i
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZN6Assimp7Blender4readINS0_5MFaceEEEbRKNS0_9StructureEPT_mRKNS0_12FileDatabaseE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.noexc13, %.lr.ph.i
  %.010.i = phi ptr [ %i.b, %.lr.ph.i ], [ %i.n, %.noexc13 ] ; 3 uses
  %.089.i = phi i64 [ 0, %.lr.ph.i ], [ %i.o, %.noexc13 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr null, ptr %i.i, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MFaceE, i64 16), ptr %3, align 8
  invoke void @_ZNK6Assimp7Blender9Structure7ConvertINS0_5MFaceEEEvRT_RKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(232) %2)
          to label %.noexc13 unwind label %.loopexit

.noexc13:                                         ; preds = %bb.d
  %i.k = load ptr, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %.010.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %i.m, ptr noundef nonnull align 8 dereferenceable(21) %i.j, i64 21, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %.010.i, i64 40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.o = add nuw i64 %.089.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.o, %1
  br i1 %exitcond.not.i, label %_ZN6Assimp7Blender4readINS0_5MFaceEEEbRKNS0_9StructureEPT_mRKNS0_12FileDatabaseE.exit, label %bb.d, !llvm.loop !11

_ZN6Assimp7Blender4readINS0_5MFaceEEEbRKNS0_9StructureEPT_mRKNS0_12FileDatabaseE.exit: ; preds = %.noexc13, %bb.c
  %i.p = load ptr, ptr %4, align 8                ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.d
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6Assimp7Blender4readINS0_5MFaceEEEbRKNS0_9StructureEPT_mRKNS0_12FileDatabaseE.exit
  %i.r = load i64, ptr %i.d, align 8
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp7Blender4readINS0_5MFaceEEEbRKNS0_9StructureEPT_mRKNS0_12FileDatabaseE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.thread

.loopexit:                                        ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %._crit_edge.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.t = load ptr, ptr %4, align 8                ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.d
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.e
  %i.v = load i64, ptr %i.d, align 8
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %lpad.phi

.thread:                                          ; preds = %bb.a, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.09 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.09
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN6Assimp7Blender11createMFaceEm(i64 noundef %0) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 40) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0
  %i.d = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.c, i64 8) ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1
  %i.f = or i1 %i.b, %i.e
  %i.g = extractvalue { i64, i1 } %i.d, 0
  %i.h = select i1 %i.f, i64 -1, i64 %i.g
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #24 ; 2 uses
  store i64 %0, ptr %i.i, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.k = icmp eq i64 %0, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds [40 x i8], ptr %i.j, i64 %0
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.m = phi ptr [ %i.j, %bb.b ], [ %i.o, %bb.c ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr null, ptr %i.n, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MFaceE, i64 16), ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.l
  br i1 %i.p, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.c, %bb.a
  ret ptr %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6Assimp7Blender12destroyMFaceEPNS0_8ElemBaseE(ptr noundef %0) #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN6Assimp7Blender8ElemBaseE, ptr nonnull @_ZTIN6Assimp7Blender5MFaceE, i64 0) #21 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread, label %.loopexit

.loopexit:                                        ; preds = %bb.b
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %.idx = mul i64 %i.e, 40
  %i.f = add i64 %.idx, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.d, i64 noundef %i.f) #22
  br label %.thread

.thread:                                          ; preds = %bb.a, %.loopexit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp7Blender10readMTFaceEPNS0_8ElemBaseEmRKNS0_12FileDatabaseE(ptr nofree noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(232) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Assimp::Blender::MTFace", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN6Assimp7Blender8ElemBaseE, ptr nonnull @_ZTIN6Assimp7Blender6MTFaceE, i64 0) #21 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.d, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.d, ptr noundef nonnull align 1 dereferenceable(6) @.str.3, i64 6, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 6, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 22
  store i8 0, ptr %i.f, align 2
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZNK6Assimp7Blender3DNAixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.c unwind label %.loopexit.split-lp

bb.c:                                             ; preds = %._crit_edge.i.i
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZN6Assimp7Blender4readINS0_6MTFaceEEEbRKNS0_9StructureEPT_mRKNS0_12FileDatabaseE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 50
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 54
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.noexc13, %.lr.ph.i
  %.010.i = phi ptr [ %i.b, %.lr.ph.i ], [ %i.r, %.noexc13 ] ; 3 uses
  %.089.i = phi i64 [ 0, %.lr.ph.i ], [ %i.s, %.noexc13 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr null, ptr %i.i, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender6MTFaceE, i64 16), ptr %3, align 8
  store i8 0, ptr %i.j, align 8
  store i16 0, ptr %i.k, align 2
  store i16 0, ptr %i.l, align 4
  store i16 0, ptr %i.m, align 2
  invoke void @_ZNK6Assimp7Blender9Structure7ConvertINS0_6MTFaceEEEvRT_RKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(232) %2)
          to label %.noexc13 unwind label %.loopexit

.noexc13:                                         ; preds = %bb.d
  %i.o = load ptr, ptr %i.i, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  store ptr %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.010.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 40, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %.010.i, i64 56
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.s = add nuw i64 %.089.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %1
  br i1 %exitcond.not.i, label %_ZN6Assimp7Blender4readINS0_6MTFaceEEEbRKNS0_9StructureEPT_mRKNS0_12FileDatabaseE.exit, label %bb.d, !llvm.loop !12

_ZN6Assimp7Blender4readINS0_6MTFaceEEEbRKNS0_9StructureEPT_mRKNS0_12FileDatabaseE.exit: ; preds = %.noexc13, %bb.c
  %i.t = load ptr, ptr %4, align 8                ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.d
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6Assimp7Blender4readINS0_6MTFaceEEEbRKNS0_9StructureEPT_mRKNS0_12FileDatabaseE.exit
  %i.v = load i64, ptr %i.d, align 8
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp7Blender4readINS0_6MTFaceEEEbRKNS0_9StructureEPT_mRKNS0_12FileDatabaseE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.thread

.loopexit:                                        ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %._crit_edge.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.x = load ptr, ptr %4, align 8                ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.d
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.e
  %i.z = load i64, ptr %i.d, align 8
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %lpad.phi

.thread:                                          ; preds = %bb.a, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.09 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.09
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN6Assimp7Blender12createMTFaceEm(i64 noundef %0) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 56) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0
  %i.d = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.c, i64 8) ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1
  %i.f = or i1 %i.b, %i.e
  %i.g = extractvalue { i64, i1 } %i.d, 0
  %i.h = select i1 %i.f, i64 -1, i64 %i.g
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #24 ; 2 uses
  store i64 %0, ptr %i.i, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.k = icmp eq i64 %0, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds [56 x i8], ptr %i.j, i64 %0
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.m = phi ptr [ %i.j, %bb.b ], [ %i.s, %bb.c ] ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr null, ptr %i.n, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender6MTFaceE, i64 16), ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store i8 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 50
  store i16 0, ptr %i.p, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 52
  store i16 0, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 54
  store i16 0, ptr %i.r, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 56 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.l
  br i1 %i.t, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.c, %bb.a
  ret ptr %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6Assimp7Blender13destroyMTFaceEPNS0_8ElemBaseE(ptr noundef %0) #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN6Assimp7Blender8ElemBaseE, ptr nonnull @_ZTIN6Assimp7Blender6MTFaceE, i64 0) #21 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread, label %.loopexit

.loopexit:                                        ; preds = %bb.b
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %.idx = mul i64 %i.e, 56
  %i.f = add i64 %.idx, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.d, i64 noundef %i.f) #22
  br label %.thread

.thread:                                          ; preds = %bb.a, %.loopexit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp7Blender12readMTexPolyEPNS0_8ElemBaseEmRKNS0_12FileDatabaseE(ptr nofree noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(232) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Assimp::Blender::MTexPoly", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN6Assimp7Blender8ElemBaseE, ptr nonnull @_ZTIN6Assimp7Blender8MTexPolyE, i64 0) #21 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.d, ptr %4, align 8
  store i64 8749490567482004557, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 8, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZNK6Assimp7Blender3DNAixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.c unwind label %.loopexit.split-lp

bb.c:                                             ; preds = %._crit_edge.i.i
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZN6Assimp7Blender4readINS0_8MTexPolyEEEbRKNS0_9StructureEPT_mRKNS0_12FileDatabaseE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.noexc13, %.lr.ph.i
  %.010.i = phi ptr [ %i.b, %.lr.ph.i ], [ %i.n, %.noexc13 ] ; 3 uses
  %.089.i = phi i64 [ 0, %.lr.ph.i ], [ %i.o, %.noexc13 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr null, ptr %i.i, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender8MTexPolyE, i64 16), ptr %3, align 8
  invoke void @_ZNK6Assimp7Blender9Structure7ConvertINS0_8MTexPolyEEEvRT_RKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(232) %2)
          to label %.noexc13 unwind label %.loopexit

.noexc13:                                         ; preds = %bb.d
  %i.k = load ptr, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %.010.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %.010.i, i64 32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.o = add nuw i64 %.089.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.o, %1
  br i1 %exitcond.not.i, label %_ZN6Assimp7Blender4readINS0_8MTexPolyEEEbRKNS0_9StructureEPT_mRKNS0_12FileDatabaseE.exit, label %bb.d, !llvm.loop !13

_ZN6Assimp7Blender4readINS0_8MTexPolyEEEbRKNS0_9StructureEPT_mRKNS0_12FileDatabaseE.exit: ; preds = %.noexc13, %bb.c
  %i.p = load ptr, ptr %4, align 8                ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.d
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6Assimp7Blender4readINS0_8MTexPolyEEEbRKNS0_9StructureEPT_mRKNS0_12FileDatabaseE.exit
  %i.r = load i64, ptr %i.d, align 8
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp7Blender4readINS0_8MTexPolyEEEbRKNS0_9StructureEPT_mRKNS0_12FileDatabaseE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.thread

.loopexit:                                        ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %._crit_edge.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.t = load ptr, ptr %4, align 8                ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.d
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.e
  %i.v = load i64, ptr %i.d, align 8
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %lpad.phi

.thread:                                          ; preds = %bb.a, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.09 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.09
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN6Assimp7Blender14createMTexPolyEm(i64 noundef %0) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %0, 576460752303423487
  %i.b = shl nuw i64 %0, 5
  %i.c = or disjoint i64 %i.b, 8
  %i.d = select i1 %i.a, i64 -1, i64 %i.c
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.d) #24 ; 2 uses
  store i64 %0, ptr %i.e, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = icmp eq i64 %0, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds [32 x i8], ptr %i.f, i64 %0
  %i.i = add i64 %0, 576460752303423487
  %i.j = and i64 %i.i, 576460752303423487
  %xtraiter = and i64 %0, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.b, %.prol.preheader
  %i.k = phi ptr [ %i.m, %.prol.preheader ], [ %i.f, %bb.b ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr null, ptr %i.l, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender8MTexPolyE, i64 16), ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !14

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.b
  %.unr = phi ptr [ %i.f, %bb.b ], [ %i.m, %.prol.preheader ]
  %i.n = icmp samesign ult i64 %i.j, 7
  br i1 %i.n, label %.loopexit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.o = phi ptr [ %i.ae, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr null, ptr %i.p, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender8MTexPolyE, i64 16), ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store ptr null, ptr %i.r, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender8MTexPolyE, i64 16), ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  store ptr null, ptr %i.t, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender8MTexPolyE, i64 16), ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  store ptr null, ptr %i.v, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender8MTexPolyE, i64 16), ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  store ptr null, ptr %i.x, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender8MTexPolyE, i64 16), ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 160
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 168
  store ptr null, ptr %i.z, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender8MTexPolyE, i64 16), ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 192
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 200
  store ptr null, ptr %i.ab, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender8MTexPolyE, i64 16), ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 224
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 232
  store ptr null, ptr %i.ad, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender8MTexPolyE, i64 16), ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 256 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.h
  br i1 %i.af, label %.loopexit, label %.new

.loopexit:                                        ; preds = %.prol.loopexit, %.new, %bb.a
  ret ptr %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6Assimp7Blender15destroyMTexPolyEPNS0_8ElemBaseE(ptr noundef %0) #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN6Assimp7Blender8ElemBaseE, ptr nonnull @_ZTIN6Assimp7Blender8MTexPolyE, i64 0) #21 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread, label %.loopexit

.loopexit:                                        ; preds = %bb.b
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %.idx = shl i64 %i.e, 5
  %i.f = or disjoint i64 %.idx, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.d, i64 noundef %i.f) #22
  br label %.thread

.thread:                                          ; preds = %bb.a, %.loopexit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp7Blender11readMLoopUVEPNS0_8ElemBaseEmRKNS0_12FileDatabaseE(ptr nofree noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(232) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Assimp::Blender::MLoopUV", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN6Assimp7Blender8ElemBaseE, ptr nonnull @_ZTIN6Assimp7Blender7MLoopUVE, i64 0) #21 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.d, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.d, ptr noundef nonnull align 1 dereferenceable(7) @.str.5, i64 7, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 7, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 23
  store i8 0, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZNK6Assimp7Blender3DNAixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.c unwind label %.loopexit.split-lp

bb.c:                                             ; preds = %._crit_edge.i.i
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZN6Assimp7Blender4readINS0_7MLoopUVEEEbRKNS0_9StructureEPT_mRKNS0_12FileDatabaseE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.noexc13, %.lr.ph.i
  %.010.i = phi ptr [ %i.b, %.lr.ph.i ], [ %i.n, %.noexc13 ] ; 3 uses
  %.089.i = phi i64 [ 0, %.lr.ph.i ], [ %i.o, %.noexc13 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr null, ptr %i.i, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender7MLoopUVE, i64 16), ptr %3, align 8
  invoke void @_ZNK6Assimp7Blender9Structure7ConvertINS0_7MLoopUVEEEvRT_RKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(232) %2)
          to label %.noexc13 unwind label %.loopexit

.noexc13:                                         ; preds = %bb.d
  %i.k = load ptr, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %.010.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.m, ptr noundef nonnull align 8 dereferenceable(12) %i.j, i64 12, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %.010.i, i64 32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.o = add nuw i64 %.089.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.o, %1
  br i1 %exitcond.not.i, label %_ZN6Assimp7Blender4readINS0_7MLoopUVEEEbRKNS0_9StructureEPT_mRKNS0_12FileDatabaseE.exit, label %bb.d, !llvm.loop !15

_ZN6Assimp7Blender4readINS0_7MLoopUVEEEbRKNS0_9StructureEPT_mRKNS0_12FileDatabaseE.exit: ; preds = %.noexc13, %bb.c
  %i.p = load ptr, ptr %4, align 8                ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.d
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6Assimp7Blender4readINS0_7MLoopUVEEEbRKNS0_9StructureEPT_mRKNS0_12FileDatabaseE.exit
  %i.r = load i64, ptr %i.d, align 8
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp7Blender4readINS0_7MLoopUVEEEbRKNS0_9StructureEPT_mRKNS0_12FileDatabaseE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.thread

.loopexit:                                        ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %._crit_edge.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.t = load ptr, ptr %4, align 8                ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.d
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.e
  %i.v = load i64, ptr %i.d, align 8
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %lpad.phi

.thread:                                          ; preds = %bb.a, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.09 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.09
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN6Assimp7Blender13createMLoopUVEm(i64 noundef %0) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %0, 576460752303423487
  %i.b = shl nuw i64 %0, 5
  %i.c = or disjoint i64 %i.b, 8
  %i.d = select i1 %i.a, i64 -1, i64 %i.c
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.d) #24 ; 2 uses
  store i64 %0, ptr %i.e, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = icmp eq i64 %0, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds [32 x i8], ptr %i.f, i64 %0
  %i.i = add i64 %0, 576460752303423487
  %i.j = and i64 %i.i, 576460752303423487
  %xtraiter = and i64 %0, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.b, %.prol.preheader
  %i.k = phi ptr [ %i.m, %.prol.preheader ], [ %i.f, %bb.b ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr null, ptr %i.l, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender7MLoopUVE, i64 16), ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !16

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.b
  %.unr = phi ptr [ %i.f, %bb.b ], [ %i.m, %.prol.preheader ]
  %i.n = icmp samesign ult i64 %i.j, 7
  br i1 %i.n, label %.loopexit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.o = phi ptr [ %i.ae, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr null, ptr %i.p, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender7MLoopUVE, i64 16), ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store ptr null, ptr %i.r, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender7MLoopUVE, i64 16), ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  store ptr null, ptr %i.t, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender7MLoopUVE, i64 16), ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  store ptr null, ptr %i.v, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender7MLoopUVE, i64 16), ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  store ptr null, ptr %i.x, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender7MLoopUVE, i64 16), ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 160
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 168
  store ptr null, ptr %i.z, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender7MLoopUVE, i64 16), ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 192
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 200
  store ptr null, ptr %i.ab, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender7MLoopUVE, i64 16), ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 224
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 232
  store ptr null, ptr %i.ad, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender7MLoopUVE, i64 16), ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 256 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.h
  br i1 %i.af, label %.loopexit, label %.new

.loopexit:                                        ; preds = %.prol.loopexit, %.new, %bb.a
  ret ptr %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6Assimp7Blender14destroyMLoopUVEPNS0_8ElemBaseE(ptr noundef %0) #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN6Assimp7Blender8ElemBaseE, ptr nonnull @_ZTIN6Assimp7Blender7MLoopUVE, i64 0) #21 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread, label %.loopexit

.loopexit:                                        ; preds = %bb.b
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %.idx = shl i64 %i.e, 5
  %i.f = or disjoint i64 %.idx, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.d, i64 noundef %i.f) #22
  br label %.thread

.thread:                                          ; preds = %bb.a, %.loopexit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp7Blender12readMLoopColEPNS0_8ElemBaseEmRKNS0_12FileDatabaseE(ptr nofree noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(232) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Assimp::Blender::MLoopCol", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN6Assimp7Blender8ElemBaseE, ptr nonnull @_ZTIN6Assimp7Blender8MLoopColE, i64 0) #21 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.d, ptr %4, align 8
  store i64 7813538028696063053, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 8, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZNK6Assimp7Blender3DNAixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.c unwind label %.loopexit.split-lp

bb.c:                                             ; preds = %._crit_edge.i.i
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZN6Assimp7Blender4readINS0_8MLoopColEEEbRKNS0_9StructureEPT_mRKNS0_12FileDatabaseE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.noexc13, %.lr.ph.i
  %.010.i = phi ptr [ %i.b, %.lr.ph.i ], [ %i.o, %.noexc13 ] ; 3 uses
  %.089.i = phi i64 [ 0, %.lr.ph.i ], [ %i.p, %.noexc13 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr null, ptr %i.i, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender8MLoopColE, i64 16), ptr %3, align 8
  invoke void @_ZNK6Assimp7Blender9Structure7ConvertINS0_8MLoopColEEEvRT_RKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(232) %2)
          to label %.noexc13 unwind label %.loopexit

.noexc13:                                         ; preds = %bb.d
  %i.k = load ptr, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %.010.i, i64 16
  %i.n = load i32, ptr %i.j, align 8
  store i32 %i.n, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.010.i, i64 24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.p = add nuw i64 %.089.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.p, %1
  br i1 %exitcond.not.i, label %_ZN6Assimp7Blender4readINS0_8MLoopColEEEbRKNS0_9StructureEPT_mRKNS0_12FileDatabaseE.exit, label %bb.d, !llvm.loop !17

_ZN6Assimp7Blender4readINS0_8MLoopColEEEbRKNS0_9StructureEPT_mRKNS0_12FileDatabaseE.exit: ; preds = %.noexc13, %bb.c
  %i.q = load ptr, ptr %4, align 8                ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.d
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6Assimp7Blender4readINS0_8MLoopColEEEbRKNS0_9StructureEPT_mRKNS0_12FileDatabaseE.exit
  %i.s = load i64, ptr %i.d, align 8
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp7Blender4readINS0_8MLoopColEEEbRKNS0_9StructureEPT_mRKNS0_12FileDatabaseE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.thread

.loopexit:                                        ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %._crit_edge.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.u = load ptr, ptr %4, align 8                ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.d
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.e
  %i.w = load i64, ptr %i.d, align 8
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %lpad.phi

.thread:                                          ; preds = %bb.a, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.09 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.09
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN6Assimp7Blender14createMLoopColEm(i64 noundef %0) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 24) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0
  %i.d = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.c, i64 8) ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1
  %i.f = or i1 %i.b, %i.e
  %i.g = extractvalue { i64, i1 } %i.d, 0
  %i.h = select i1 %i.f, i64 -1, i64 %i.g
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #24 ; 2 uses
  store i64 %0, ptr %i.i, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.k = icmp eq i64 %0, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds [24 x i8], ptr %i.j, i64 %0
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.m = phi ptr [ %i.j, %bb.b ], [ %i.o, %bb.c ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr null, ptr %i.n, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender8MLoopColE, i64 16), ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.l
  br i1 %i.p, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.c, %bb.a
  ret ptr %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6Assimp7Blender15destroyMLoopColEPNS0_8ElemBaseE(ptr noundef %0) #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN6Assimp7Blender8ElemBaseE, ptr nonnull @_ZTIN6Assimp7Blender8MLoopColE, i64 0) #21 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread, label %.loopexit

.loopexit:                                        ; preds = %bb.b
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %.idx = mul i64 %i.e, 24
  %i.f = add i64 %.idx, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.d, i64 noundef %i.f) #22
  br label %.thread

.thread:                                          ; preds = %bb.a, %.loopexit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp7Blender9readMPolyEPNS0_8ElemBaseEmRKNS0_12FileDatabaseE(ptr nofree noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(232) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Assimp::Blender::MPoly", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN6Assimp7Blender8ElemBaseE, ptr nonnull @_ZTIN6Assimp7Blender5MPolyE, i64 0) #21 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.d, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.d, ptr noundef nonnull align 1 dereferenceable(5) @.str.7, i64 5, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 5, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 21
  store i8 0, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZNK6Assimp7Blender3DNAixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.c unwind label %.loopexit.split-lp

bb.c:                                             ; preds = %._crit_edge.i.i
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZN6Assimp7Blender4readINS0_5MPolyEEEbRKNS0_9StructureEPT_mRKNS0_12FileDatabaseE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.noexc13, %.lr.ph.i
  %.010.i = phi ptr [ %i.b, %.lr.ph.i ], [ %i.n, %.noexc13 ] ; 3 uses
  %.089.i = phi i64 [ 0, %.lr.ph.i ], [ %i.o, %.noexc13 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr null, ptr %i.i, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MPolyE, i64 16), ptr %3, align 8
  invoke void @_ZNK6Assimp7Blender9Structure7ConvertINS0_5MPolyEEEvRT_RKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(232) %2)
          to label %.noexc13 unwind label %.loopexit

.noexc13:                                         ; preds = %bb.d
  %i.k = load ptr, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %.010.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.m, ptr noundef nonnull align 8 dereferenceable(11) %i.j, i64 11, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %.010.i, i64 32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.o = add nuw i64 %.089.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.o, %1
  br i1 %exitcond.not.i, label %_ZN6Assimp7Blender4readINS0_5MPolyEEEbRKNS0_9StructureEPT_mRKNS0_12FileDatabaseE.exit, label %bb.d, !llvm.loop !18

_ZN6Assimp7Blender4readINS0_5MPolyEEEbRKNS0_9StructureEPT_mRKNS0_12FileDatabaseE.exit: ; preds = %.noexc13, %bb.c
  %i.p = load ptr, ptr %4, align 8                ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.d
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6Assimp7Blender4readINS0_5MPolyEEEbRKNS0_9StructureEPT_mRKNS0_12FileDatabaseE.exit
  %i.r = load i64, ptr %i.d, align 8
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp7Blender4readINS0_5MPolyEEEbRKNS0_9StructureEPT_mRKNS0_12FileDatabaseE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.thread

.loopexit:                                        ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %._crit_edge.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.t = load ptr, ptr %4, align 8                ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.d
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.e
  %i.v = load i64, ptr %i.d, align 8
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %lpad.phi

.thread:                                          ; preds = %bb.a, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.09 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.09
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN6Assimp7Blender11createMPolyEm(i64 noundef %0) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %0, 576460752303423487
  %i.b = shl nuw i64 %0, 5
  %i.c = or disjoint i64 %i.b, 8
  %i.d = select i1 %i.a, i64 -1, i64 %i.c
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.d) #24 ; 2 uses
  store i64 %0, ptr %i.e, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = icmp eq i64 %0, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds [32 x i8], ptr %i.f, i64 %0
  %i.i = add i64 %0, 576460752303423487
  %i.j = and i64 %i.i, 576460752303423487
  %xtraiter = and i64 %0, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.b, %.prol.preheader
  %i.k = phi ptr [ %i.m, %.prol.preheader ], [ %i.f, %bb.b ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr null, ptr %i.l, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MPolyE, i64 16), ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !19

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.b
  %.unr = phi ptr [ %i.f, %bb.b ], [ %i.m, %.prol.preheader ]
  %i.n = icmp samesign ult i64 %i.j, 7
  br i1 %i.n, label %.loopexit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.o = phi ptr [ %i.ae, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr null, ptr %i.p, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MPolyE, i64 16), ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store ptr null, ptr %i.r, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MPolyE, i64 16), ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  store ptr null, ptr %i.t, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MPolyE, i64 16), ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  store ptr null, ptr %i.v, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MPolyE, i64 16), ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  store ptr null, ptr %i.x, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MPolyE, i64 16), ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 160
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 168
  store ptr null, ptr %i.z, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MPolyE, i64 16), ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 192
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 200
  store ptr null, ptr %i.ab, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MPolyE, i64 16), ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 224
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 232
  store ptr null, ptr %i.ad, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MPolyE, i64 16), ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 256 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.h
  br i1 %i.af, label %.loopexit, label %.new

.loopexit:                                        ; preds = %.prol.loopexit, %.new, %bb.a
  ret ptr %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6Assimp7Blender12destroyMPolyEPNS0_8ElemBaseE(ptr noundef %0) #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN6Assimp7Blender8ElemBaseE, ptr nonnull @_ZTIN6Assimp7Blender5MPolyE, i64 0) #21 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread, label %.loopexit

.loopexit:                                        ; preds = %bb.b
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %.idx = shl i64 %i.e, 5
  %i.f = or disjoint i64 %.idx, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.d, i64 noundef %i.f) #22
  br label %.thread

.thread:                                          ; preds = %bb.a, %.loopexit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp7Blender9readMLoopEPNS0_8ElemBaseEmRKNS0_12FileDatabaseE(ptr nofree noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(232) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Assimp::Blender::MLoop", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN6Assimp7Blender8ElemBaseE, ptr nonnull @_ZTIN6Assimp7Blender5MLoopE, i64 0) #21 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.d, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.d, ptr noundef nonnull align 1 dereferenceable(5) @.str.8, i64 5, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 5, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 21
  store i8 0, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZNK6Assimp7Blender3DNAixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.c unwind label %.loopexit.split-lp

bb.c:                                             ; preds = %._crit_edge.i.i
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZN6Assimp7Blender4readINS0_5MLoopEEEbRKNS0_9StructureEPT_mRKNS0_12FileDatabaseE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.noexc13, %.lr.ph.i
  %.010.i = phi ptr [ %i.b, %.lr.ph.i ], [ %i.o, %.noexc13 ] ; 3 uses
  %.089.i = phi i64 [ 0, %.lr.ph.i ], [ %i.p, %.noexc13 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr null, ptr %i.i, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MLoopE, i64 16), ptr %3, align 8
  invoke void @_ZNK6Assimp7Blender9Structure7ConvertINS0_5MLoopEEEvRT_RKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(232) %2)
          to label %.noexc13 unwind label %.loopexit

.noexc13:                                         ; preds = %bb.d
  %i.k = load ptr, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %.010.i, i64 16
  %i.n = load i64, ptr %i.j, align 8
  store i64 %i.n, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.010.i, i64 24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.p = add nuw i64 %.089.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.p, %1
  br i1 %exitcond.not.i, label %_ZN6Assimp7Blender4readINS0_5MLoopEEEbRKNS0_9StructureEPT_mRKNS0_12FileDatabaseE.exit, label %bb.d, !llvm.loop !20

_ZN6Assimp7Blender4readINS0_5MLoopEEEbRKNS0_9StructureEPT_mRKNS0_12FileDatabaseE.exit: ; preds = %.noexc13, %bb.c
  %i.q = load ptr, ptr %4, align 8                ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.d
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6Assimp7Blender4readINS0_5MLoopEEEbRKNS0_9StructureEPT_mRKNS0_12FileDatabaseE.exit
  %i.s = load i64, ptr %i.d, align 8
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp7Blender4readINS0_5MLoopEEEbRKNS0_9StructureEPT_mRKNS0_12FileDatabaseE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.thread

.loopexit:                                        ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %._crit_edge.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.u = load ptr, ptr %4, align 8                ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.d
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.e
  %i.w = load i64, ptr %i.d, align 8
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %lpad.phi

.thread:                                          ; preds = %bb.a, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.09 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.09
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN6Assimp7Blender11createMLoopEm(i64 noundef %0) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 24) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0
  %i.d = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.c, i64 8) ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1
  %i.f = or i1 %i.b, %i.e
  %i.g = extractvalue { i64, i1 } %i.d, 0
  %i.h = select i1 %i.f, i64 -1, i64 %i.g
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #24 ; 2 uses
  store i64 %0, ptr %i.i, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.k = icmp eq i64 %0, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds [24 x i8], ptr %i.j, i64 %0
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.m = phi ptr [ %i.j, %bb.b ], [ %i.o, %bb.c ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr null, ptr %i.n, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MLoopE, i64 16), ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.l
  br i1 %i.p, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.c, %bb.a
  ret ptr %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp7Blender8ElemBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6Assimp7Blender12destroyMLoopEPNS0_8ElemBaseE(ptr noundef %0) #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN6Assimp7Blender8ElemBaseE, ptr nonnull @_ZTIN6Assimp7Blender5MLoopE, i64 0) #21 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread, label %.loopexit

.loopexit:                                        ; preds = %bb.b
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %.idx = mul i64 %i.e, 24
  %i.f = add i64 %.idx, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.d, i64 noundef %i.f) #22
  br label %.thread

.thread:                                          ; preds = %bb.a, %.loopexit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN6Assimp7Blender21isValidCustomDataTypeEi(i32 noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ult i32 %0, 42
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp7Blender14readCustomDataERSt10shared_ptrINS0_8ElemBaseEEimRKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(232) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %1, ptr %i.a, align 4
  %i.b = icmp ult i32 %1, 42
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN6Assimp7Blender5ErrorC2IJRA17_KcRKiRA14_S3_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 1 dereferenceable(17) @.str.9, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(14) @.str.10)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6Assimp7Blender5ErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #21
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.a
  %i.e = zext nneg i32 %1 to i64                  ; 2 uses
  %i.f = lshr i64 100892729, %i.e
  %i.g = trunc i64 %i.f to i1
  %i.h = icmp ne i64 %2, 0
  %or.cond7 = and i1 %i.h, %i.g
  br i1 %or.cond7, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw [24 x i8], ptr @_ZN6Assimp7BlenderL26customDataTypeDescriptionsE, i64 %i.e ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.0.0.copyload = load ptr, ptr %i.i, align 8
  %i.j = tail call noundef ptr %.sroa.5.0.copyload(i64 noundef %2)
  tail call void @_ZNSt12__shared_ptrIN6Assimp7Blender8ElemBaseELN9__gnu_cxx12_Lock_policyE2EE5resetIS2_PFvPS2_EEENSt9enable_ifIXsr21__sp_is_constructibleIS2_T_EE5valueEvE4typeEPSB_T0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.j, ptr noundef nonnull %.sroa.7.0.copyload)
  %i.k = load ptr, ptr %0, align 8
  %i.l = tail call noundef zeroext i1 %.sroa.0.0.copyload(ptr noundef %i.k, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(232) %3)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.0 = phi i1 [ %i.l, %bb.f ], [ false, %bb.e ]
  ret i1 %.0
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp7Blender5ErrorC2IJRA17_KcRKiRA14_S3_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(17) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(14) %3) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN17DeadlyImportErrorC2IJRA17_KcRKiRA14_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(17) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(14) %3)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6Assimp7Blender5ErrorE, i64 16), ptr %0, align 8
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #9

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN6Assimp7Blender8ElemBaseELN9__gnu_cxx12_Lock_policyE2EE5resetIS2_PFvPS2_EEENSt9enable_ifIXsr21__sp_is_constructibleIS2_T_EE5valueEvE4typeEPSB_T0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #24
          to label %_ZNSt12__shared_ptrIN6Assimp7Blender8ElemBaseELN9__gnu_cxx12_Lock_policyE2EEC2IS2_PFvPS2_EvEEPT_T0_.exit unwind label %bb.b ; 6 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = tail call ptr @__cxa_begin_catch(ptr %i.c) #21 ; 0 uses
  invoke void %2(ptr noundef %1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_rethrow() #23
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.e

bb.f:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #25
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt12__shared_ptrIN6Assimp7Blender8ElemBaseELN9__gnu_cxx12_Lock_policyE2EEC2IS2_PFvPS2_EvEEPT_T0_.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.i, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN6Assimp7Blender8ElemBaseEPFvS3_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %2, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %i.k, align 8
  store ptr %1, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 8 uses
  store ptr %i.a, ptr %i.l, align 8
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6Assimp7Blender8ElemBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN6Assimp7Blender8ElemBaseELN9__gnu_cxx12_Lock_policyE2EEC2IS2_PFvPS2_EvEEPT_T0_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
end_hunk_0
