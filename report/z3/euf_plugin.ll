Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/euf_plugin?download=true
inline.NumInlined: 78
inline.NumDeleted: 49
begin_hunk_0
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.36 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.36 = type { i64, [8 x i8] }
%"class.std::allocator.33" = type { i8 }

$_ZN6vectorIN3euf6egraph13update_recordELb0EjE13expand_vectorEv = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN17default_exceptionD2Ev = comdat any

$_ZN6vectorIN3euf6egraph8to_mergeELb0EjE13expand_vectorEv = comdat any

@.str = private unnamed_addr constant [43 x i8] c"Overflow encountered when expanding vector\00", align 1
@_ZTI17default_exception = external constant ptr
@.str.1 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@_ZTV17default_exception = external constant { [6 x ptr] }, align 8

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3euf6plugin16push_plugin_undoEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11, !nonnull !12, !align !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16   ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !17   ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !17
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_ZN3euf6egraph16push_plugin_undoEj.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN6vectorIN3euf6egraph13update_recordELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !16 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !17
  br label %_ZN3euf6egraph16push_plugin_undoEj.exit

_ZN3euf6egraph16push_plugin_undoEj.exit:          ; preds = %bb.b, %bb.c
  %i.k = phi i32 [ %.pre2.i.i, %bb.c ], [ %i.g, %bb.b ]
  %i.l = phi ptr [ %.pre.i.i, %bb.c ], [ %i.d, %bb.b ]
  %i.m = and i32 %1, 255
  %i.n = zext i32 %i.k to i64
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.n ; 3 uses
  store i32 15, ptr %i.o, align 8, !tbaa !53
  %i.p = getelementptr i8, ptr %i.o, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i32 %i.m, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !17
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 4, !tbaa !17
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3euf6plugin10push_mergeEPNS_5enodeES2_NS_13justificationE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly byval(%"class.euf::justification") align 8 captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.6.i = alloca [28 x i8], align 4          ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !11, !nonnull !12, !align !13
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %.sroa.6.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.6.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.6.24..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !37   ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !17   ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !17
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %_ZN3euf6egraph10push_mergeEPNS_5enodeES2_NS_13justificationE.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_ZN6vectorIN3euf6egraph8to_mergeELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %.pre.i.i = load ptr, ptr %i.h, align 8, !tbaa !37 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !17
  br label %_ZN3euf6egraph10push_mergeEPNS_5enodeES2_NS_13justificationE.exit

_ZN3euf6egraph10push_mergeEPNS_5enodeES2_NS_13justificationE.exit: ; preds = %bb.c, %bb.d
  %i.p = phi i32 [ %.pre2.i.i, %bb.d ], [ %i.l, %bb.c ]
  %i.q = phi ptr [ %.pre.i.i, %bb.d ], [ %i.i, %bb.c ]
  %i.r = zext i32 %i.p to i64
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.r ; 4 uses
  store ptr %1, ptr %i.s, align 8, !tbaa !38
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %2, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !38
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i32 2, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !40
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6.i, i64 28, i1 false), !tbaa.struct !54
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !37
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -4 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !17
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.u, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN3euf6egraph10push_mergeEPNS_5enodeES2_NS_13justificationE.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3euf6plugin10push_mergeEPNS_5enodeES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !11, !nonnull !12, !align !13
  %i.h = load ptr, ptr %0, align 8, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef i32 %i.j(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !37   ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !17   ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 -8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !17
  %i.s = icmp eq i32 %i.p, %i.r
  br i1 %i.s, label %bb.d, label %_ZN3euf6egraph10push_mergeEPNS_5enodeES2_NS_13justificationE.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_ZN6vectorIN3euf6egraph8to_mergeELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  %.pre.i.i = load ptr, ptr %i.l, align 8, !tbaa !37 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !17
  br label %_ZN3euf6egraph10push_mergeEPNS_5enodeES2_NS_13justificationE.exit

_ZN3euf6egraph10push_mergeEPNS_5enodeES2_NS_13justificationE.exit: ; preds = %bb.c, %bb.d
  %i.t = phi i32 [ %.pre2.i.i, %bb.d ], [ %i.p, %bb.c ]
  %i.u = phi ptr [ %.pre.i.i, %bb.d ], [ %i.m, %bb.c ]
  %i.v = zext i32 %i.t to i64
  %i.w = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %i.v ; 6 uses
  store ptr %1, ptr %i.w, align 8, !tbaa !38
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %2, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !38
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i32 2, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !40
  %.sroa.6.i.sroa.3.0..sroa.6.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i32 0, ptr %.sroa.6.i.sroa.3.0..sroa.6.0..sroa_idx.i.sroa_idx, align 8, !tbaa !41
  %.sroa.6.i.sroa.5.0..sroa.6.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store i32 %i.k, ptr %.sroa.6.i.sroa.5.0..sroa.6.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.6.i.sroa.7.0..sroa.6.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store ptr null, ptr %.sroa.6.i.sroa.7.0..sroa.6.0..sroa_idx.i.sroa_idx, align 8, !tbaa !42
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !37
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -4 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !17
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN3euf6egraph10push_mergeEPNS_5enodeES2_NS_13justificationE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN3euf6plugin2mkEP4exprjPKPNS_5enodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11, !nonnull !12, !align !13 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = load i32, ptr %1, align 4, !tbaa !56     ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !57   ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZNK3euf6egraph4findEP4expr.exit.thread, label %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.i.i

_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.i.i:  ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !17
  %.not.i.i = icmp ult i32 %i.d, %i.h
  br i1 %.not.i.i, label %_ZNK3euf6egraph4findEP4expr.exit.a, label %_ZNK3euf6egraph4findEP4expr.exit.thread

_ZNK3euf6egraph4findEP4expr.exit.a:               ; preds = %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.i.i
  %i.i = zext i32 %i.d to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.i
  %.0.i.sroa.speculate.load..i = load ptr, ptr %i.j, align 8, !tbaa !38 ; 2 uses
  %.not = icmp eq ptr %.0.i.sroa.speculate.load..i, null
  br i1 %.not, label %_ZNK3euf6egraph4findEP4expr.exit.thread, label %bb.b

_ZNK3euf6egraph4findEP4expr.exit.thread:          ; preds = %bb.a, %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.i.i, %_ZNK3euf6egraph4findEP4expr.exit.a
  %i.k = tail call noundef ptr @_ZN3euf6egraph2mkEP4exprjjPKPNS_5enodeE(ptr noundef nonnull align 8 dereferenceable(536) %i.b, ptr noundef nonnull %1, i32 noundef 0, i32 noundef %2, ptr noundef %3)
  br label %bb.b

bb.b:                                             ; preds = %_ZNK3euf6egraph4findEP4expr.exit.thread, %_ZNK3euf6egraph4findEP4expr.exit.a
  %.0 = phi ptr [ %.0.i.sroa.speculate.load..i, %_ZNK3euf6egraph4findEP4expr.exit.a ], [ %i.k, %_ZNK3euf6egraph4findEP4expr.exit.thread ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef ptr @_ZN3euf6egraph2mkEP4exprjjPKPNS_5enodeE(ptr noundef nonnull align 8 dereferenceable(536), ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 dereferenceable(40) ptr @_ZN3euf6plugin10get_regionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11, !nonnull !12, !align !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorIN3euf6egraph13update_recordELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator.33", align 1 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 72) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !16
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !17   ; 3 uses
  %i.h = mul i32 %i.g, 3
  %i.i = add i32 %i.h, 1
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
  %i.k = shl i32 %i.j, 5                          ; 2 uses
  %.not = icmp ugt i32 %i.j, %i.g
  %i.l = shl i32 %i.g, 5
  %.not27 = icmp ugt i32 %i.k, %i.l
  %or.cond = and i1 %.not, %.not27
  br i1 %or.cond, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call ptr @__cxa_allocate_exception(i64 40) #13 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.m, align 8, !tbaa !44
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 3 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !47
  %i.p = load ptr, ptr %1, align 8, !tbaa !50     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !51   ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.v, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  store ptr %i.p, ptr %i.n, align 8, !tbaa !50
  %i.w = load i64, ptr %i.q, align 8, !tbaa !42
  store i64 %i.w, ptr %i.o, align 8, !tbaa !42
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !51
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.x = phi i64 [ %i.t, %bb.f ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.x, ptr %i.z, align 8, !tbaa !51
  store ptr %i.q, ptr %1, align 8, !tbaa !50
  store i64 0, ptr %i.y, align 8, !tbaa !51
  store i8 0, ptr %i.q, align 8, !tbaa !42
  invoke void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #14
          to label %bb.l unwind label %bb.g

bb.g:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %1, align 8, !tbaa !50    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.q
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.g
  %i.ad = load i64, ptr %i.q, align 8, !tbaa !42
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  call void @__cxa_free_exception(ptr %i.m) #13
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.h
  %.pn32 = phi { ptr, i32 } [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.af, %bb.h ]
  resume { ptr, i32 } %.pn32

bb.j:                                             ; preds = %bb.c
  %i.ag = or disjoint i32 %i.k, 8
  %i.ah = zext i32 %i.ag to i64
  %i.ai = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.f, i64 noundef %i.ah) ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.aj, ptr %0, align 8, !tbaa !16
  store i32 %i.j, ptr %i.ai, align 4, !tbaa !17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b
  ret void

bb.l:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

declare noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef) local_unnamed_addr #2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !47
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.1) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #14
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !58

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #14
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #16 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !50
  store i64 %i.c, ptr %i.a, align 8, !tbaa !42
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !42
  store i8 %i.j, ptr %i.i, align 1, !tbaa !42
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
end_hunk_0
