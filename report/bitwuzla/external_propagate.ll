Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/external_propagate?download=true
inline.NumInlined: 553
inline.NumDeleted: 273
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN7CaDiCaL8Internal16add_observed_varEi:bb.a

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.c
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !159  ; 2 uses
  %.not.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i, label %_ZN7CaDiCaL8Internal5fixedEi.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = sext i8 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !161
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.c
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !162
  %.not9.i = icmp eq i32 %i.af, 0
  %spec.select.i = select i1 %.not9.i, i32 %i.ab, i32 0
  br label %_ZN7CaDiCaL8Internal5fixedEi.exit

_ZN7CaDiCaL8Internal5fixedEi.exit:                ; preds = %bb.j, %bb.k
  %.0.i = phi i32 [ 0, %bb.j ], [ %spec.select.i, %bb.k ] ; 2 uses
  %i.ag = icmp slt i32 %1, 0
  %i.ah = sub nsw i32 0, %.0.i
  %spec.select10.i = select i1 %i.ag, i32 %i.ah, i32 %.0.i
  %.not15 = icmp eq i32 %spec.select10.i, 0
  br i1 %.not15, label %bb.l, label %.thread35

bb.l:                                             ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !161
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.c
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !162
  %i.am = add nsw i32 %i.al, -1
  br label %.thread.sink.split

bb.m:                                             ; preds = %bb.h
  br i1 %i.y, label %.thread, label %.thread35

.thread35:                                        ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit, %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.c
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !159 ; 2 uses
  %.not.i18 = icmp eq i8 %i.ao, 0
  br i1 %.not.i18, label %_ZN7CaDiCaL8Internal5fixedEi.exit23, label %bb.n

bb.n:                                             ; preds = %.thread35
  %i.ap = sext i8 %i.ao to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !161
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %i.c
  %i.at = load i32, ptr %i.as, align 8, !tbaa !162
  %.not9.i19 = icmp eq i32 %i.at, 0
  %spec.select.i20 = select i1 %.not9.i19, i32 %i.ap, i32 0
  br label %_ZN7CaDiCaL8Internal5fixedEi.exit23

_ZN7CaDiCaL8Internal5fixedEi.exit23:              ; preds = %.thread35, %bb.n
  %.0.i21 = phi i32 [ 0, %.thread35 ], [ %spec.select.i20, %bb.n ] ; 2 uses
  %i.au = icmp slt i32 %1, 0
  %i.av = sub nsw i32 0, %.0.i21
  %spec.select10.i22 = select i1 %i.au, i32 %i.av, i32 %.0.i21
  %.not17 = icmp eq i32 %spec.select10.i22, 0
  br i1 %.not17, label %.thread, label %.thread.sink.split

.thread.sink.split:                               ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit23, %bb.l
  %.sink = phi i32 [ %i.am, %bb.l ], [ 0, %_ZN7CaDiCaL8Internal5fixedEi.exit23 ]
  call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %.sink)
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.i, %bb.m, %_ZN7CaDiCaL8Internal5fixedEi.exit23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7288), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal19remove_observed_varEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @llvm.abs.i32(i32 %1, i1 true)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = zext nneg i32 %i.a to i64                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !159   ; 4 uses
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %_ZN7CaDiCaL8Internal5fixedEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sext i8 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !161
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.d
  %i.k = load i32, ptr %i.j, align 8, !tbaa !162
  %.not9.i = icmp eq i32 %i.k, 0
  %spec.select.i = select i1 %.not9.i, i32 %i.g, i32 0
  br label %_ZN7CaDiCaL8Internal5fixedEi.exit

_ZN7CaDiCaL8Internal5fixedEi.exit:                ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ 0, %bb.a ], [ %spec.select.i, %bb.b ] ; 2 uses
  %i.l = icmp slt i32 %1, 0                       ; 2 uses
  %i.m = sub nsw i32 0, %.0.i
  %spec.select10.i = select i1 %i.l, i32 %i.m, i32 %.0.i
  %.not = icmp eq i32 %spec.select10.i, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.o = load i32, ptr %i.n, align 4, !tbaa !160
  %.not7 = icmp eq i32 %i.o, 0
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef 0)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !14
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.d
  %.pre16 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !159
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %_ZN7CaDiCaL8Internal5fixedEi.exit
  %i.p = phi i8 [ %.pre16, %bb.d ], [ %i.f, %bb.c ], [ %i.f, %_ZN7CaDiCaL8Internal5fixedEi.exit ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !12
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.d ; 2 uses
  %.not.i10 = icmp eq i8 %i.p, 0
  br i1 %.not.i10, label %_ZN7CaDiCaL8Internal5fixedEi.exit15, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = sext i8 %i.p to i32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !161
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.d
  %i.x = load i32, ptr %i.w, align 8, !tbaa !162
  %.not9.i11 = icmp eq i32 %i.x, 0
  %spec.select.i12 = select i1 %.not9.i11, i32 %i.t, i32 0
  br label %_ZN7CaDiCaL8Internal5fixedEi.exit15

_ZN7CaDiCaL8Internal5fixedEi.exit15:              ; preds = %bb.e, %bb.f
  %.0.i13 = phi i32 [ 0, %bb.e ], [ %spec.select.i12, %bb.f ] ; 2 uses
  %i.y = sub nsw i32 0, %.0.i13
  %spec.select10.i14 = select i1 %i.l, i32 %i.y, i32 %.0.i13
  %.not8 = icmp eq i32 %spec.select10.i14, 0
  br i1 %.not8, label %bb.g, label %.sink.split

bb.g:                                             ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit15
  %i.z = load i32, ptr %i.s, align 4, !tbaa !13   ; 2 uses
  %.not9 = icmp eq i32 %i.z, -1
  br i1 %.not9, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = add i32 %i.z, -1
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit15, %bb.h
  %.sink = phi i32 [ %i.aa, %bb.h ], [ 0, %_ZN7CaDiCaL8Internal5fixedEi.exit15 ]
  store i32 %.sink, ptr %i.s, align 4, !tbaa !13
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK7CaDiCaL8Internal8observedEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7288) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.b = tail call noundef i32 @llvm.abs.i32(i32 %1, i1 true)
  %i.c = zext nneg i32 %i.b to i64
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.c
  %i.f = load i32, ptr %i.e, align 4, !tbaa !13
  %i.g = icmp ne i32 %i.f, 0
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7CaDiCaL8Internal19set_tainted_literalEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(7288) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3524
  %i.b = load i32, ptr %i.a, align 4, !tbaa !164
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 7272
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !165, !nonnull !166, !align !167
  %i.e = load i32, ptr %i.d, align 4, !tbaa !13   ; 2 uses
  %.not1314 = icmp eq i32 %i.e, 0
  br i1 %.not1314, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 996 ; 2 uses
  %.promoted = load i32, ptr %i.l, align 4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %1 = phi i32 [ %.promoted, %.lr.ph ], [ %i.z, %bb.g ] ; 5 uses
  %.sroa.010.015 = phi i32 [ 1, %.lr.ph ], [ %3, %bb.g ] ; 6 uses
  %2 = sext i32 %.sroa.010.015 to i64
  %i.m = getelementptr inbounds i8, ptr %i.g, i64 %2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !159
  %.not7 = icmp eq i8 %i.n, 0
  br i1 %.not7, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = tail call noundef i32 @llvm.abs.i32(i32 %.sroa.010.015, i1 true)
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !168
  %.not8 = icmp eq ptr %i.s, %i.k
  br i1 %.not8, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not9 = icmp eq i32 %1, 0
  br i1 %.not9, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr %i.q, align 8, !tbaa !162
  %i.u = tail call noundef i32 @llvm.abs.i32(i32 %1, i1 true)
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.v
  %i.x = load i32, ptr %i.w, align 8, !tbaa !162
  %i.y = icmp slt i32 %i.t, %i.x
  br i1 %i.y, label %.sink.split, label %bb.g

.sink.split:                                      ; preds = %bb.f, %bb.e
  store i32 %.sroa.010.015, ptr %i.l, align 4, !tbaa !169
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.f, %bb.d, %bb.c
  %i.z = phi i32 [ %1, %bb.f ], [ %1, %bb.c ], [ %1, %bb.d ], [ %.sroa.010.015, %.sink.split ]
  %3 = add i32 %.sroa.010.015, 1
  %.not13 = icmp eq i32 %.sroa.010.015, %i.e
  br i1 %.not13, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.g, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal24renotify_trail_after_ilbEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(7288) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.b = load i8, ptr %i.a, align 2, !tbaa !170, !range !171, !noundef !166
  %i.c = trunc nuw i8 %i.b to i1
  %.not2 = xor i1 %i.c, true
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i8, ptr %i.d, align 8, !range !171
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %.not2, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !172
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !173
  %.not = icmp eq ptr %i.i, %i.j
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3524
  %i.l = load i32, ptr %i.k, align 4
  %.not1 = icmp eq i32 %i.l, 0
  %or.cond6 = select i1 %.not, i1 true, i1 %.not1
  br i1 %or.cond6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7CaDiCaL8Internal19renotify_full_trailEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal19renotify_full_trailEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(7288) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.20", align 8    ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !172
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !173
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !160
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %_ZN7CaDiCaL8Internal16notify_backtrackEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1000
  store i64 0, ptr %i.k, align 8, !tbaa !174
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.m = load i8, ptr %i.l, align 2, !tbaa !170, !range !171, !noundef !166
  %i.n = trunc nuw i8 %i.m to i1
  %.not.i = xor i1 %i.n, true
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i8, ptr %i.o, align 8, !range !171
  %i.q = trunc nuw i8 %i.p to i1
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.s = load i8, ptr %i.r, align 2, !range !171
  %i.t = trunc nuw i8 %i.s to i1
  %or.cond5.i = select i1 %or.cond.i, i1 true, i1 %i.t
  br i1 %or.cond5.i, label %_ZN7CaDiCaL8Internal16notify_backtrackEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 7256
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !175
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 384
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !176  ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !195
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(10) %i.x, i64 noundef 0), !inline_history !197
  br label %_ZN7CaDiCaL8Internal16notify_backtrackEm.exit

_ZN7CaDiCaL8Internal16notify_backtrackEm.exit:    ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1000 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !174 ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.h
  br i1 %i.ad, label %.lr.ph60, label %_ZNSt6vectorIiSaIiEE5clearEv.exit36

.lr.ph60:                                         ; preds = %_ZN7CaDiCaL8Internal16notify_backtrackEm.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 7256 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph60, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.ak = phi ptr [ null, %.lr.ph60 ], [ %i.cs, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %i.al = phi ptr [ null, %.lr.ph60 ], [ %i.ct, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %i.am = phi ptr [ null, %.lr.ph60 ], [ %i.cu, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %i.an = phi i64 [ %i.ac, %.lr.ph60 ], [ %i.cv, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %.02059 = phi i32 [ 0, %.lr.ph60 ], [ %.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 3 uses
  %.02358 = phi i32 [ 0, %.lr.ph60 ], [ %spec.select, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %i.ao = add nuw i64 %i.an, 1
  store i64 %i.ao, ptr %i.ab, align 8, !tbaa !174
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !173
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.an
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !13 ; 4 uses
  %.not28 = icmp eq i32 %i.ar, 0
  br i1 %.not28, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.as = add nuw nsw i32 %.02358, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.at = call noundef i32 @llvm.abs.i32(i32 %i.ar, i1 true)
  %i.au = zext nneg i32 %i.at to i64
  %i.av = load ptr, ptr %i.ae, align 8, !tbaa !161
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.au
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !162
  br label %bb.g

.loopexit42:                                      ; preds = %.lr.ph
  %lpad.loopexit44 = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.loopexit.split-lp43:                             ; preds = %bb.i
  %lpad.loopexit.split-lp45 = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.g:                                             ; preds = %bb.f, %bb.e
  %.022 = phi i32 [ %i.ax, %bb.f ], [ %i.as, %bb.e ] ; 5 uses
  %i.ay = icmp sgt i32 %.022, %.02059
  br i1 %i.ay, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %.not29 = icmp eq ptr %i.am, %i.al
  br i1 %.not29, label %.lr.ph.preheader, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = load ptr, ptr %i.ag, align 8, !tbaa !175
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 384
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !176 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !195
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  invoke void %i.be(ptr noundef nonnull align 8 dereferenceable(10) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.lr.ph.preheader unwind label %.loopexit.split-lp43

.lr.ph.preheader:                                 ; preds = %bb.h, %bb.i
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %.12157 = phi i32 [ %i.bl, %bb.j ], [ %.02059, %.lr.ph.preheader ]
  %i.bf = load ptr, ptr %i.ag, align 8, !tbaa !175
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 384
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !176 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !195
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  invoke void %i.bk(ptr noundef nonnull align 8 dereferenceable(10) %i.bh)
          to label %bb.j unwind label %.loopexit42

bb.j:                                             ; preds = %.lr.ph
  %i.bl = add nsw i32 %.12157, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.bl, %.022
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !198

._crit_edge:                                      ; preds = %bb.j
  %i.bm = load ptr, ptr %1, align 8, !tbaa !173   ; 7 uses
  %i.bn = load ptr, ptr %i.af, align 8, !tbaa !172 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bn, %i.bm
  br i1 %.not.i.i, label %bb.k, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %._crit_edge
  store ptr %i.bm, ptr %i.af, align 8, !tbaa !172
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %._crit_edge, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.bo = phi ptr [ %i.ak, %bb.g ], [ %i.bn, %._crit_edge ], [ %i.bm, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ] ; 5 uses
  %i.bp = phi ptr [ %i.al, %bb.g ], [ %i.bm, %._crit_edge ], [ %i.bm, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ] ; 6 uses
  %i.bq = phi ptr [ %i.am, %bb.g ], [ %i.bm, %._crit_edge ], [ %i.bm, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ]
  %.2 = phi i32 [ %.02059, %bb.g ], [ %.022, %._crit_edge ], [ %.022, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ] ; 4 uses
  %spec.select = call i32 @llvm.smax.i32(i32 %.022, i32 %.02358)
  %i.br = call i32 @llvm.abs.i32(i32 %i.ar, i1 true)
  %i.bs = zext nneg i32 %i.br to i64              ; 2 uses
  %i.bt = load ptr, ptr %i.ah, align 8, !tbaa !12
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.bs
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !13
  %.not41 = icmp eq i32 %i.bv, 0
  br i1 %.not41, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %bb.l, !llvm.loop !200

end_hunk_0
begin_hunk_1_@_ZN7CaDiCaL8Internal19add_external_clauseEib:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !226
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !173  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !172
  %.not.i.i13 = icmp eq ptr %i.y, %i.w
  br i1 %.not.i.i13, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit
  store ptr %i.w, ptr %i.x, align 8, !tbaa !172
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 2 uses
  store i8 %i.a, ptr %i.z, align 8, !tbaa !227
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 993 ; 2 uses
  store i8 1, ptr %i.aa, align 1, !tbaa !228
  %.not1218 = icmp eq i32 %.0, 0
  br i1 %.not1218, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 7256 ; 4 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.e
  %.119.us = phi i32 [ %i.aj, %bb.e ], [ %.0, %.lr.ph ]
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !175
  invoke void @_ZN7CaDiCaL8External3addEi(ptr noundef nonnull align 8 dereferenceable(568) %i.ac, i32 noundef %.119.us)
          to label %bb.d unwind label %.loopexit.split.us

bb.d:                                             ; preds = %.lr.ph.split.us
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !175
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 384
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !176 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !195
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = invoke noundef i32 %i.ai(ptr noundef nonnull align 8 dereferenceable(10) %i.af)
          to label %bb.e unwind label %.loopexit.split.us ; 2 uses

bb.e:                                             ; preds = %bb.d
  %.not12.us = icmp eq i32 %i.aj, 0
  br i1 %.not12.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !229

.loopexit.split.us:                               ; preds = %bb.d, %.lr.ph.split.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.h
  %.119 = phi i32 [ %i.ar, %bb.h ], [ %.0, %.lr.ph ]
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !175
  invoke void @_ZN7CaDiCaL8External3addEi(ptr noundef nonnull align 8 dereferenceable(568) %i.ak, i32 noundef %.119)
          to label %bb.f unwind label %.loopexit.split

bb.f:                                             ; preds = %.lr.ph.split
  %i.al = load ptr, ptr %i.ab, align 8, !tbaa !175
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 384
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !176 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !195
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = invoke noundef i32 %i.aq(ptr noundef nonnull align 8 dereferenceable(10) %i.an, i32 noundef %1)
          to label %bb.h unwind label %.loopexit.split ; 2 uses

.loopexit.split:                                  ; preds = %.lr.ph.split, %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %._crit_edge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.split, %.loopexit.split.us, %.loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit.split ], [ %lpad.loopexit.us, %.loopexit.split.us ]
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.loopexit
  tail call void @_ZdlPv(ptr noundef nonnull %i.s) #20
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %.loopexit, %bb.g
  resume { ptr, i32 } %lpad.phi

bb.h:                                             ; preds = %bb.f
  %.not12 = icmp eq i32 %i.ar, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph.split, !llvm.loop !229

._crit_edge:                                      ; preds = %bb.h, %bb.e, %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 7256
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !175
  invoke void @_ZN7CaDiCaL8External3addEi(ptr noundef nonnull align 8 dereferenceable(568) %i.at, i32 noundef 0)
          to label %bb.i unwind label %.loopexit.split-lp

bb.i:                                             ; preds = %._crit_edge
  store i8 0, ptr %i.z, align 8, !tbaa !227
  store i8 0, ptr %i.aa, align 1, !tbaa !228
  %i.au = load ptr, ptr %i.q, align 8, !tbaa !225 ; 2 uses
  store <2 x ptr> %i.r, ptr %i.q, align 8, !tbaa !224
  store ptr %i.u, ptr %i.t, align 8, !tbaa !226
  %.not.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit15, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.au) #20
  br label %_ZNSt6vectorImSaImEED2Ev.exit15

_ZNSt6vectorImSaImEED2Ev.exit15:                  ; preds = %bb.j, %bb.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7CaDiCaL8Internal22move_literals_to_watchEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7288) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !172
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !173  ; 8 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2                   ; 4 uses
  %i.i = icmp ult i64 %i.h, 2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.k = load i32, ptr %i.j, align 4
  %.not = icmp eq i32 %i.k, 0
  %or.cond44 = select i1 %i.i, i1 true, i1 %.not
  br i1 %or.cond44, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !161  ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !14   ; 4 uses
  %i.p = load i32, ptr %i.d, align 4, !tbaa !13   ; 3 uses
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !159
  %i.t = sext i8 %i.s to i32
  %i.u = tail call noundef i32 @llvm.abs.i32(i32 %i.p, i1 true)
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.v
  %i.x = load i32, ptr %i.w, align 8, !tbaa !162
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.g
  %i.y = icmp sgt i32 %.135, 0
  br i1 %i.y, label %bb.h, label %bb.i

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %.048 = phi i64 [ %i.ao, %bb.g ], [ 1, %.lr.ph.preheader ] ; 3 uses
  %.03147 = phi i32 [ %.1, %bb.g ], [ %i.t, %.lr.ph.preheader ] ; 6 uses
  %.03246 = phi i32 [ %.133, %bb.g ], [ %i.x, %.lr.ph.preheader ] ; 5 uses
  %.03445 = phi i32 [ %.135, %bb.g ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.048
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !13  ; 2 uses
  %i.ab = tail call noundef i32 @llvm.abs.i32(i32 %i.aa, i1 true)
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !162 ; 3 uses
  %i.af = sext i32 %i.aa to i64
  %i.ag = getelementptr inbounds i8, ptr %i.o, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !159 ; 3 uses
  %i.ai = sext i8 %i.ah to i32
  %i.aj = icmp slt i8 %i.ah, 0
  br i1 %i.aj, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.ak = icmp slt i32 %.03147, 0
  %.not40 = icmp sgt i32 %i.ae, %.03246
  %or.cond41 = select i1 %i.ak, i1 %.not40, i1 false
  br i1 %or.cond41, label %bb.f, label %bb.g

bb.c:                                             ; preds = %.lr.ph
  %.not38 = icmp eq i8 %i.ah, 0
  br i1 %.not38, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.al = icmp slt i32 %.03147, 1
  %.not39 = icmp slt i32 %i.ae, %.03246
  %or.cond = select i1 %i.al, i1 true, i1 %.not39
  br i1 %or.cond, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.am = icmp sgt i32 %.03147, -1
  br i1 %i.am, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %i.an = trunc i64 %.048 to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.b, %bb.f
  %.135 = phi i32 [ %.03445, %bb.d ], [ %.03445, %bb.b ], [ %i.an, %bb.f ], [ %.03445, %bb.e ] ; 3 uses
  %.133 = phi i32 [ %.03246, %bb.d ], [ %.03246, %bb.b ], [ %i.ae, %bb.f ], [ %.03246, %bb.e ]
  %.1 = phi i32 [ %.03147, %bb.d ], [ %.03147, %bb.b ], [ %i.ai, %bb.f ], [ %.03147, %bb.e ]
  %i.ao = add nuw i64 %.048, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ao, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !230

bb.h:                                             ; preds = %._crit_edge
  %i.ap = zext nneg i32 %.135 to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ap ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !13
  store i32 %i.ar, ptr %i.d, align 4, !tbaa !13
  store i32 %i.p, ptr %i.aq, align 4, !tbaa !13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !13 ; 3 uses
  %i.au = icmp ugt i64 %i.h, 2
  br i1 %i.au, label %.lr.ph.preheader.1, label %.loopexit

.lr.ph.preheader.1:                               ; preds = %bb.i
  %i.av = sext i32 %i.at to i64
  %i.aw = getelementptr inbounds i8, ptr %i.o, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !159
  %i.ay = sext i8 %i.ax to i32
  %i.az = tail call noundef i32 @llvm.abs.i32(i32 %i.at, i1 true)
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !162
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.o, %.lr.ph.preheader.1
  %.048.1 = phi i64 [ %i.bs, %bb.o ], [ 2, %.lr.ph.preheader.1 ] ; 3 uses
  %.03147.1 = phi i32 [ %.1.1, %bb.o ], [ %i.ay, %.lr.ph.preheader.1 ] ; 6 uses
  %.03246.1 = phi i32 [ %.133.1, %bb.o ], [ %i.bc, %.lr.ph.preheader.1 ] ; 5 uses
  %.03445.1 = phi i32 [ %.135.1, %bb.o ], [ 1, %.lr.ph.preheader.1 ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.048.1
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !13 ; 2 uses
  %i.bf = tail call noundef i32 @llvm.abs.i32(i32 %i.be, i1 true)
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !162 ; 3 uses
  %i.bj = sext i32 %i.be to i64
  %i.bk = getelementptr inbounds i8, ptr %i.o, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !159 ; 3 uses
  %i.bm = sext i8 %i.bl to i32
  %i.bn = icmp slt i8 %i.bl, 0
  br i1 %i.bn, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.lr.ph.1
  %.not38.1 = icmp eq i8 %i.bl, 0
  br i1 %.not38.1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = icmp slt i32 %.03147.1, 1
  %.not39.1 = icmp slt i32 %i.bi, %.03246.1
  %or.cond.1 = select i1 %i.bo, i1 true, i1 %.not39.1
  br i1 %or.cond.1, label %bb.n, label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.bp = icmp sgt i32 %.03147.1, -1
  br i1 %i.bp, label %bb.o, label %bb.n

bb.m:                                             ; preds = %.lr.ph.1
  %i.bq = icmp slt i32 %.03147.1, 0
  %.not40.1 = icmp sgt i32 %i.bi, %.03246.1
  %or.cond41.1 = select i1 %i.bq, i1 %.not40.1, i1 false
  br i1 %or.cond41.1, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.br = trunc i64 %.048.1 to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %.135.1 = phi i32 [ %.03445.1, %bb.k ], [ %.03445.1, %bb.m ], [ %i.br, %bb.n ], [ %.03445.1, %bb.l ] ; 3 uses
  %.133.1 = phi i32 [ %.03246.1, %bb.k ], [ %.03246.1, %bb.m ], [ %i.bi, %bb.n ], [ %.03246.1, %bb.l ]
  %.1.1 = phi i32 [ %.03147.1, %bb.k ], [ %.03147.1, %bb.m ], [ %i.bm, %bb.n ], [ %.03147.1, %bb.l ]
  %i.bs = add nuw i64 %.048.1, 1                  ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.bs, %i.h
  br i1 %exitcond.1.not, label %._crit_edge.1, label %.lr.ph.1, !llvm.loop !230

._crit_edge.1:                                    ; preds = %bb.o
  %i.bt = icmp sgt i32 %.135.1, 1
  br i1 %i.bt, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %._crit_edge.1
  %i.bu = zext nneg i32 %.135.1 to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bu ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !13
  store i32 %i.bw, ptr %i.as, align 4, !tbaa !13
  store i32 %i.at, ptr %i.bv, align 4, !tbaa !13
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %._crit_edge.1, %bb.p, %bb.a
  ret void
}

declare void @_ZN7CaDiCaL8External3addEi(ptr noundef nonnull align 8 dereferenceable(568), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal14explain_reasonEiPNS_6ClauseERi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(7288) %0, i32 noundef %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3488
  %i.b = load i32, ptr %i.a, align 8, !tbaa !231
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %i.f = sext i32 %i.e to i64
  %.idx = shl nsw i64 %i.f, 2
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %.idx
  %.not2327 = icmp eq i32 %i.e, 0
  br i1 %.not2327, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4032 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 984
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.n
  %.02128 = phi ptr [ %i.c, %.lr.ph ], [ %i.ax, %bb.n ] ; 2 uses
  %i.p = load i32, ptr %.02128, align 4, !tbaa !13 ; 3 uses
  %i.q = icmp eq i32 %i.p, %1
  br i1 %i.q, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = tail call i32 @llvm.abs.i32(i32 %i.p, i1 true)
  %i.s = zext nneg i32 %i.r to i64                ; 3 uses
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !232
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.s ; 3 uses
  %i.v = load i32, ptr %i.u, align 1
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !161
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.s ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !162
  %.not24 = icmp eq i32 %i.z, 0
  br i1 %.not24, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !168 ; 2 uses
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !233
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.ae = load <2 x ptr>, ptr %i.k, align 8, !tbaa !210
  %i.af = load ptr, ptr %i.k, align 8, !tbaa !173 ; 2 uses
  %i.ag = load ptr, ptr %i.l, align 8, !tbaa !201
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.ah = load i64, ptr %i.m, align 8, !tbaa !211
  %i.ai = add nsw i64 %i.ah, 1
  store i64 %i.ai, ptr %i.m, align 8, !tbaa !211
  %i.aj = load ptr, ptr %i.n, align 8, !tbaa !173
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.s
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !13 ; 2 uses
  %i.am = icmp sgt i32 %i.p, 0
  %i.an = sub nsw i32 0, %i.al
  %spec.select.i.i = select i1 %i.am, i32 %i.an, i32 %i.al
  invoke void @_ZN7CaDiCaL8Internal19add_external_clauseEib(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %spec.select.i.i, i1 noundef zeroext true)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdlPv(ptr noundef nonnull %i.af) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.i, %bb.h
  resume { ptr, i32 } %i.ao

bb.j:                                             ; preds = %bb.g
  %i.ap = load ptr, ptr %i.k, align 8, !tbaa !173 ; 2 uses
  store <2 x ptr> %i.ae, ptr %i.k, align 8, !tbaa !210
  store ptr %i.ag, ptr %i.l, align 8, !tbaa !201
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZdlPv(ptr noundef nonnull %i.ap) #20
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aq = load ptr, ptr %i.o, align 8, !tbaa !221 ; 2 uses
  store ptr %i.aq, ptr %i.aa, align 8, !tbaa !168
  %.pre = load i32, ptr %i.y, align 8, !tbaa !162
  %i.ar = icmp eq i32 %.pre, 0
  br i1 %i.ar, label %bb.n, label %.thread

.thread:                                          ; preds = %bb.f, %bb.l
  %i.as = phi ptr [ %i.aq, %bb.l ], [ %i.ab, %bb.f ]
  %.not26 = icmp eq ptr %i.as, null
  br i1 %.not26, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.thread
  %i.at = load i32, ptr %i.u, align 1
  %i.au = or i32 %i.at, 1
  store i32 %i.au, ptr %i.u, align 1
  %i.av = load i32, ptr %3, align 4, !tbaa !13
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %3, align 4, !tbaa !13
  br label %bb.n

bb.n:                                             ; preds = %bb.d, %bb.l, %.thread, %bb.m, %bb.e, %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %.02128, i64 4 ; 2 uses
  %.not23 = icmp eq ptr %i.ax, %i.g
  br i1 %.not23, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.n, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal29explain_external_propagationsEv(ptr noundef nonnull align 8 dereferenceable(7288) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 0, ptr %i.a, align 4, !tbaa !13
  call void @_ZN7CaDiCaL8Internal14explain_reasonEiPNS_6ClauseERi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef 0, ptr noundef %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !172
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !173
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 2                   ; 2 uses
  %i.l = trunc i64 %i.k to i32
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge120.thread

._crit_edge120.thread:                            ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.p = and i64 %i.k, 2147483647
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ %i.p, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %.sroa.15.0102 = phi ptr [ null, %.lr.ph ], [ %.sroa.15.1, %bb.m ] ; 4 uses
  %.sroa.10.0101 = phi ptr [ null, %.lr.ph ], [ %.sroa.10.1, %bb.m ] ; 4 uses
  %.sroa.077.0100 = phi ptr [ null, %.lr.ph ], [ %.sroa.077.1, %bb.m ] ; 8 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !173
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next
  %i.s = load i32, ptr %i.r, align 4, !tbaa !13   ; 4 uses
  %i.t = tail call noundef i32 @llvm.abs.i32(i32 %i.s, i1 true)
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !232
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.u
  %i.x = load i32, ptr %i.w, align 1
  %i.y = trunc i32 %i.x to i1
  br i1 %i.y, label %bb.c, label %bb.m, !llvm.loop !234

.loopexit95:                                      ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
end_hunk_1
