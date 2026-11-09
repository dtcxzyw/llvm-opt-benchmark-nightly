Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_string_test?download=true
inline.NumInlined: 5601
inline.NumDeleted: 957
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEC2EPKwm:bb.a
bb.b:                                             ; preds = %.noexc
  %i.d = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.e = trunc i8 %i.d to i1
  %i.f = lshr i8 %i.d, 1
  %i.g = zext nneg i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.g
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = load i64, ptr %0, align 8
  %i.k = lshr i64 %i.j, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.k
  %i.m = select i1 %i.e, ptr %i.h, ptr %i.l
  store i32 0, ptr %i.m, align 4, !tbaa !134
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i.i

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i.i: ; preds = %bb.b, %.noexc
  %i.n = load i8, ptr %0, align 8, !tbaa !109
  %i.o = trunc i8 %i.n to i1
  %i.p = load ptr, ptr %i.b, align 8
  %i.q = select i1 %i.o, ptr %i.a, ptr %i.p       ; 2 uses
  %i.r = icmp eq i64 %2, 0
  br i1 %i.r, label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i.i
  %i.s = tail call ptr @wmemcpy(ptr noundef %i.q, ptr noundef %1, i64 noundef %2) #26 ; 0 uses
  br label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i.i

_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i.i:       ; preds = %bb.c, %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i.i
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 %.idx.i
  store i32 0, ptr %i.t, align 4, !tbaa !134
  %i.u = load i8, ptr %0, align 8, !tbaa !109
  %i.v = trunc i8 %i.u to i1
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i.i
  %i.w = trunc i64 %2 to i8
  %i.x = shl i8 %i.w, 1
  %i.y = or disjoint i8 %i.x, 1
  store i8 %i.y, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignEPKwm.exit

bb.e:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i.i
  %i.z = load i64, ptr %0, align 8
  %i.aa = shl nsw i64 %2, 1
  %i.ab = and i64 %i.z, 1
  %i.ac = or disjoint i64 %i.ab, %i.aa
  store i64 %i.ac, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignEPKwm.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignEPKwm.exit: ; preds = %bb.e, %bb.d
  ret void

bb.f:                                             ; preds = %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #26
  resume { ptr, i32 } %i.ad
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignEPKwm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.idx = shl nsw i64 %2, 2
  %i.a = tail call noundef zeroext i1 @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2)
  br i1 %i.a, label %bb.b, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = lshr i8 %i.b, 1
  %i.f = zext nneg i8 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load i64, ptr %0, align 8
  %i.k = lshr i64 %i.j, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.k
  %i.m = select i1 %i.c, ptr %i.g, ptr %i.l
  store i32 0, ptr %i.m, align 4, !tbaa !134
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i: ; preds = %bb.b, %bb.a
  %i.n = load i8, ptr %0, align 8, !tbaa !109
  %i.o = trunc i8 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = select i1 %i.o, ptr %i.p, ptr %i.r       ; 2 uses
  %i.t = icmp eq i64 %2, 0
  br i1 %i.t, label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i
  %i.u = tail call ptr @wmemcpy(ptr noundef %i.s, ptr noundef %1, i64 noundef %2) #26 ; 0 uses
  br label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i

_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i:         ; preds = %bb.c, %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i
  %i.v = getelementptr inbounds i8, ptr %i.s, i64 %.idx
  store i32 0, ptr %i.v, align 4, !tbaa !134
  %i.w = load i8, ptr %0, align 8, !tbaa !109
  %i.x = trunc i8 %i.w to i1
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i
  %i.y = trunc i64 %2 to i8
  %i.z = shl i8 %i.y, 1
  %i.aa = or disjoint i8 %i.z, 1
  store i8 %i.aa, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignEPKwS9_.exit

bb.e:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i
  %i.ab = load i64, ptr %0, align 8
  %i.ac = shl nsw i64 %2, 1
  %i.ad = and i64 %i.ab, 1
  %i.ae = or disjoint i64 %i.ad, %i.ac
  store i64 %i.ae, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignEPKwS9_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignEPKwS9_.exit: ; preds = %bb.d, %bb.e
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEC2EPKwmRKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #0 comdat($_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEC5EPKwmRKS6_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !134
  %.idx.i = shl nsw i64 %2, 2
  %i.c = invoke noundef zeroext i1 @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.a
  br i1 %i.c, label %bb.b, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i.i

bb.b:                                             ; preds = %.noexc
  %i.d = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.e = trunc i8 %i.d to i1
  %i.f = lshr i8 %i.d, 1
  %i.g = zext nneg i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.g
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = load i64, ptr %0, align 8
  %i.k = lshr i64 %i.j, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.k
  %i.m = select i1 %i.e, ptr %i.h, ptr %i.l
  store i32 0, ptr %i.m, align 4, !tbaa !134
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i.i

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i.i: ; preds = %bb.b, %.noexc
  %i.n = load i8, ptr %0, align 8, !tbaa !109
  %i.o = trunc i8 %i.n to i1
  %i.p = load ptr, ptr %i.b, align 8
  %i.q = select i1 %i.o, ptr %i.a, ptr %i.p       ; 2 uses
  %i.r = icmp eq i64 %2, 0
  br i1 %i.r, label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i.i
  %i.s = tail call ptr @wmemcpy(ptr noundef %i.q, ptr noundef %1, i64 noundef %2) #26 ; 0 uses
  br label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i.i

_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i.i:       ; preds = %bb.c, %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i.i
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 %.idx.i
  store i32 0, ptr %i.t, align 4, !tbaa !134
  %i.u = load i8, ptr %0, align 8, !tbaa !109
  %i.v = trunc i8 %i.u to i1
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i.i
  %i.w = trunc i64 %2 to i8
  %i.x = shl i8 %i.w, 1
  %i.y = or disjoint i8 %i.x, 1
  store i8 %i.y, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignEPKwm.exit

bb.e:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i.i
  %i.z = load i64, ptr %0, align 8
  %i.aa = shl nsw i64 %2, 1
  %i.ab = and i64 %i.z, 1
  %i.ac = or disjoint i64 %i.ab, %i.aa
  store i64 %i.ac, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignEPKwm.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignEPKwm.exit: ; preds = %bb.e, %bb.d
  ret void

bb.f:                                             ; preds = %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #26
  resume { ptr, i32 } %i.ad
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEC2EPKw(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 comdat($_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEC5EPKw) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !134
  %i.c = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 6 uses
  %.idx = shl nuw nsw i64 %i.c, 2
  %i.d = invoke noundef zeroext i1 @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.a
  br i1 %i.d, label %bb.b, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i

bb.b:                                             ; preds = %.noexc
  %i.e = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.f = trunc i8 %i.e to i1
  %i.g = lshr i8 %i.e, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.h
  %i.j = load ptr, ptr %i.b, align 8
  %i.k = load i64, ptr %0, align 8
  %i.l = lshr i64 %i.k, 1
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.l
  %i.n = select i1 %i.f, ptr %i.i, ptr %i.m
  store i32 0, ptr %i.n, align 4, !tbaa !134
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i: ; preds = %bb.b, %.noexc
  %i.o = load i8, ptr %0, align 8, !tbaa !109
  %i.p = trunc i8 %i.o to i1
  %i.q = load ptr, ptr %i.b, align 8
  %i.r = select i1 %i.p, ptr %i.a, ptr %i.q       ; 2 uses
  %i.s = icmp eq i64 %i.c, 0
  br i1 %i.s, label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i
  %i.t = tail call ptr @wmemcpy(ptr noundef %i.r, ptr noundef %1, i64 noundef %i.c) #26 ; 0 uses
  br label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i

_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i:         ; preds = %bb.c, %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx
  store i32 0, ptr %i.u, align 4, !tbaa !134
  %i.v = load i8, ptr %0, align 8, !tbaa !109
  %i.w = trunc i8 %i.v to i1
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i
  %i.x = trunc i64 %i.c to i8
  %i.y = shl i8 %i.x, 1
  %i.z = or disjoint i8 %i.y, 1
  store i8 %i.z, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignEPKwS9_.exit

bb.e:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i
  %i.aa = load i64, ptr %0, align 8
  %i.ab = shl nuw nsw i64 %i.c, 1
  %i.ac = and i64 %i.aa, 1
  %i.ad = or disjoint i64 %i.ac, %i.ab
  store i64 %i.ad, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignEPKwS9_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignEPKwS9_.exit: ; preds = %bb.e, %bb.d
  ret void

bb.f:                                             ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #26
  resume { ptr, i32 } %i.ae
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEC2EPKwRKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat($_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEC5EPKwRKS6_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !134
  %i.c = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 6 uses
  %.idx = shl nuw nsw i64 %i.c, 2
  %i.d = invoke noundef zeroext i1 @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.a
  br i1 %i.d, label %bb.b, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i

bb.b:                                             ; preds = %.noexc
  %i.e = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.f = trunc i8 %i.e to i1
  %i.g = lshr i8 %i.e, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.h
  %i.j = load ptr, ptr %i.b, align 8
  %i.k = load i64, ptr %0, align 8
  %i.l = lshr i64 %i.k, 1
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.l
  %i.n = select i1 %i.f, ptr %i.i, ptr %i.m
  store i32 0, ptr %i.n, align 4, !tbaa !134
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i: ; preds = %bb.b, %.noexc
  %i.o = load i8, ptr %0, align 8, !tbaa !109
  %i.p = trunc i8 %i.o to i1
  %i.q = load ptr, ptr %i.b, align 8
  %i.r = select i1 %i.p, ptr %i.a, ptr %i.q       ; 2 uses
  %i.s = icmp eq i64 %i.c, 0
  br i1 %i.s, label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i
  %i.t = tail call ptr @wmemcpy(ptr noundef %i.r, ptr noundef %1, i64 noundef %i.c) #26 ; 0 uses
  br label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i

_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i:         ; preds = %bb.c, %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx
  store i32 0, ptr %i.u, align 4, !tbaa !134
  %i.v = load i8, ptr %0, align 8, !tbaa !109
  %i.w = trunc i8 %i.v to i1
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i
  %i.x = trunc i64 %i.c to i8
  %i.y = shl i8 %i.x, 1
  %i.z = or disjoint i8 %i.y, 1
  store i8 %i.z, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignEPKwS9_.exit

bb.e:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i
  %i.aa = load i64, ptr %0, align 8
  %i.ab = shl nuw nsw i64 %i.c, 1
  %i.ac = and i64 %i.aa, 1
  %i.ad = or disjoint i64 %i.ac, %i.ab
  store i64 %i.ad, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignEPKwS9_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignEPKwS9_.exit: ; preds = %bb.e, %bb.d
  ret void

bb.f:                                             ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #26
  resume { ptr, i32 } %i.ae
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEC2Emw(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i32 noundef signext %2) unnamed_addr #0 comdat($_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEC5Emw) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  store i8 1, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.b, align 4, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %2, ptr %i.a, align 4, !tbaa !134
  %i.c = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignINS0_17constant_iteratorIwEEEERS7_T_SC_PNS_11move_detail22disable_if_convertibleISC_mvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.a, i64 %1, ptr null, i64 0, ptr noundef null)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #26
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignEmw(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i32 noundef signext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !134
  %i.b = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignINS0_17constant_iteratorIwEEEERS7_T_SC_PNS_11move_detail22disable_if_convertibleISC_mvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.a, i64 %1, ptr null, i64 0, ptr noundef null)
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEC2EmwRKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i32 noundef signext %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #0 comdat($_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEC5EmwRKS6_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  store i8 1, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.b, align 4, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %2, ptr %i.a, align 4, !tbaa !134
  %i.c = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignINS0_17constant_iteratorIwEEEERS7_T_SC_PNS_11move_detail22disable_if_convertibleISC_mvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.a, i64 %1, ptr null, i64 0, ptr noundef null)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #26
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEC2EmNS0_14default_init_tE(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 comdat($_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEC5EmNS0_14default_init_tE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  store i8 1, ptr %0, align 8
  tail call void @_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE22allocate_initial_blockEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.a)
  %i.b = load i8, ptr %0, align 8, !tbaa !109
  %i.c = trunc i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = trunc i64 %1 to i8
  %i.e = shl i8 %i.d, 1
  %i.f = or disjoint i8 %i.e, 1                   ; 2 uses
  store i8 %i.f, ptr %0, align 8
  %.pre = load i64, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8
  %i.h = shl i64 %1, 1
  %i.i = and i64 %i.g, 1
  %i.j = or disjoint i64 %i.i, %i.h               ; 3 uses
  store i64 %i.j, ptr %0, align 8
  %i.k = trunc i64 %i.j to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.l = phi i64 [ %.pre, %bb.b ], [ %i.j, %bb.c ]
  %i.m = phi i8 [ %i.f, %bb.b ], [ %i.k, %bb.c ]  ; 2 uses
  %i.n = trunc i8 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = lshr i8 %i.m, 1
  %i.q = zext nneg i8 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = lshr i64 %i.l, 1
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.u
  %i.w = select i1 %i.n, ptr %i.r, ptr %i.v
  store i32 0, ptr %i.w, align 4, !tbaa !134
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEC2EmNS0_14default_init_tERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat($_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEC5EmNS0_14default_init_tERKS6_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  store i8 1, ptr %0, align 8
  tail call void @_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE22allocate_initial_blockEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.a)
  %i.b = load i8, ptr %0, align 8, !tbaa !109
  %i.c = trunc i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = trunc i64 %1 to i8
  %i.e = shl i8 %i.d, 1
  %i.f = or disjoint i8 %i.e, 1                   ; 2 uses
  store i8 %i.f, ptr %0, align 8
  %.pre = load i64, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8
  %i.h = shl i64 %1, 1
  %i.i = and i64 %i.g, 1
  %i.j = or disjoint i64 %i.i, %i.h               ; 3 uses
  store i64 %i.j, ptr %0, align 8
  %i.k = trunc i64 %i.j to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.l = phi i64 [ %.pre, %bb.b ], [ %i.j, %bb.c ]
  %i.m = phi i8 [ %i.f, %bb.b ], [ %i.k, %bb.c ]  ; 2 uses
  %i.n = trunc i8 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = lshr i8 %i.m, 1
  %i.q = zext nneg i8 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = lshr i64 %i.l, 1
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.u
  %i.w = select i1 %i.n, ptr %i.r, ptr %i.v
  store i32 0, ptr %i.w, align 4, !tbaa !134
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEC2ESt16initializer_listIwERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #0 comdat($_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEC5ESt16initializer_listIwERKS6_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !134
  %.idx = shl nuw nsw i64 %2, 2
  %i.c = invoke noundef zeroext i1 @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.a
  br i1 %i.c, label %bb.b, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i

bb.b:                                             ; preds = %.noexc
  %i.d = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.e = trunc i8 %i.d to i1
  %i.f = lshr i8 %i.d, 1
  %i.g = zext nneg i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.g
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = load i64, ptr %0, align 8
  %i.k = lshr i64 %i.j, 1
end_hunk_0
begin_hunk_1_@_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEaSERKS7_:bb.a
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  %i.q = ashr exact i64 %i.p, 2                   ; 3 uses
  %i.r = tail call noundef zeroext i1 @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.q)
  br i1 %i.r, label %bb.c, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.s = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.t = trunc i8 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = lshr i8 %i.s, 1
  %i.w = zext nneg i8 %i.v to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load i64, ptr %0, align 8
  %i.ab = lshr i64 %i.aa, 1
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ab
  %i.ad = select i1 %i.t, ptr %i.x, ptr %i.ac
  store i32 0, ptr %i.ad, align 4, !tbaa !134
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i: ; preds = %bb.c, %bb.b
  %i.ae = load i8, ptr %0, align 8, !tbaa !109
  %i.af = trunc i8 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = select i1 %i.af, ptr %i.ag, ptr %i.ai   ; 2 uses
  %i.ak = icmp eq ptr %i.m, %i.f
  br i1 %i.ak, label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i
  %i.al = tail call ptr @wmemcpy(ptr noundef %i.aj, ptr noundef %i.f, i64 noundef %i.q) #26 ; 0 uses
  br label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i

_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i:         ; preds = %bb.d, %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i
  %i.am = getelementptr inbounds i8, ptr %i.aj, i64 %i.p
  store i32 0, ptr %i.am, align 4, !tbaa !134
  %i.an = load i8, ptr %0, align 8, !tbaa !109
  %i.ao = trunc i8 %i.an to i1
  br i1 %i.ao, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i
  %i.ap = trunc i64 %i.q to i8
  %i.aq = shl i8 %i.ap, 1
  %i.ar = or disjoint i8 %i.aq, 1
  store i8 %i.ar, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignEPKwS9_.exit

bb.f:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i
  %i.as = load i64, ptr %0, align 8
  %i.at = ashr exact i64 %i.p, 1
  %i.au = and i64 %i.as, 1
  %i.av = or disjoint i64 %i.au, %i.at
  store i64 %i.av, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignEPKwS9_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignEPKwS9_.exit: ; preds = %bb.f, %bb.e, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEaSEOS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.c, label %bb.b, !prof !121

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16priv_move_assignEOS7_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0

bb.d:                                             ; preds = %bb.b
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #28
  unreachable
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16priv_move_assignEOS7_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::test::simple_allocator<wchar_t>, void>::short_t", align 8 ; 4 uses
  %2 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::test::simple_allocator<wchar_t>, void>::short_t", align 4 ; 4 uses
  %3 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::test::simple_allocator<wchar_t>, void>::short_t", align 4 ; 4 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !109
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5clearEv.exit.thread, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5clearEv.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5clearEv.exit.thread: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !134
  store i8 1, ptr %0, align 8
  %i.d = load i8, ptr %1, align 8, !tbaa !109
  %i.e = trunc i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.d

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5clearEv.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !137
  store i32 0, ptr %i.g, align 4, !tbaa !134
  %i.h = load i64, ptr %0, align 8                ; 2 uses
  %i.i = and i64 %i.h, 1
  store i64 %i.i, ptr %0, align 8
  %i.j = trunc i64 %i.h to i1
  %i.k = load i8, ptr %1, align 8, !tbaa !109
  %i.l = trunc i8 %i.k to i1                      ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5clearEv.exit
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5clearEv.exit.thread, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !110
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, i64 24, i1 false), !tbaa.struct !110
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE9swap_dataERS6_.exit

bb.d:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5clearEv.exit.thread, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !139
  %i.m = load i64, ptr %0, align 8
  %i.n = and i64 %i.m, -2
  store i64 %i.n, ptr %0, align 8
  %i.o = load i64, ptr %1, align 8
  %i.p = and i64 %i.o, -2
  store i64 %i.p, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !138
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !138
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !137
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.u, ptr %i.v, align 8, !tbaa !137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !139
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE9swap_dataERS6_.exit

bb.e:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5clearEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !139
  %i.x = load i64, ptr %1, align 8
  %i.y = and i64 %i.x, -2
  store i64 %i.y, ptr %1, align 8
  %i.z = load i64, ptr %0, align 8
  %i.aa = and i64 %i.z, -2
  store i64 %i.aa, ptr %1, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !138
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !138
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !137
  store ptr %i.af, ptr %i.w, align 8, !tbaa !137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !139
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE9swap_dataERS6_.exit

bb.g:                                             ; preds = %bb.e
  %i.ag = load i64, ptr %0, align 8               ; 2 uses
  %i.ah = and i64 %i.ag, -2
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !138
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !137
  %i.am = load i64, ptr %1, align 8
  %i.an = and i64 %i.am, -2
  %i.ao = and i64 %i.ag, 1
  %i.ap = or disjoint i64 %i.an, %i.ao
  store i64 %i.ap, ptr %0, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !138
  store i64 %i.ar, ptr %i.ai, align 8, !tbaa !138
  %i.as = load ptr, ptr %i.w, align 8, !tbaa !137
  store ptr %i.as, ptr %i.ak, align 8, !tbaa !137
  %i.at = load i64, ptr %1, align 8
  %i.au = and i64 %i.at, 1
  %i.av = or disjoint i64 %i.au, %i.ah
  store i64 %i.av, ptr %1, align 8
  store i64 %i.aj, ptr %i.aq, align 8, !tbaa !138
  store ptr %i.al, ptr %i.w, align 8, !tbaa !137
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE9swap_dataERS6_.exit

_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE9swap_dataERS6_.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEaSEPKw(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 6 uses
  %.idx.i = shl nuw nsw i64 %i.a, 2
  %i.b = tail call noundef zeroext i1 @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.a)
  br i1 %i.b, label %bb.b, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.d = trunc i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = lshr i8 %i.c, 1
  %i.g = zext nneg i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load i64, ptr %0, align 8
  %i.l = lshr i64 %i.k, 1
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.l
  %i.n = select i1 %i.d, ptr %i.h, ptr %i.m
  store i32 0, ptr %i.n, align 4, !tbaa !134
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i.i

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i.i: ; preds = %bb.b, %bb.a
  %i.o = load i8, ptr %0, align 8, !tbaa !109
  %i.p = trunc i8 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = select i1 %i.p, ptr %i.q, ptr %i.s       ; 2 uses
  %i.u = icmp eq i64 %i.a, 0
  br i1 %i.u, label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i.i
  %i.v = tail call ptr @wmemcpy(ptr noundef %i.t, ptr noundef %1, i64 noundef %i.a) #26 ; 0 uses
  br label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i.i

_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i.i:       ; preds = %bb.c, %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i
  store i32 0, ptr %i.w, align 4, !tbaa !134
  %i.x = load i8, ptr %0, align 8, !tbaa !109
  %i.y = trunc i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i.i
  %i.z = trunc i64 %i.a to i8
  %i.aa = shl i8 %i.z, 1
  %i.ab = or disjoint i8 %i.aa, 1
  store i8 %i.ab, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignEPKw.exit

bb.e:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i.i
  %i.ac = load i64, ptr %0, align 8
  %i.ad = shl nuw nsw i64 %i.a, 1
  %i.ae = and i64 %i.ac, 1
  %i.af = or disjoint i64 %i.ae, %i.ad
  store i64 %i.af, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignEPKw.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignEPKw.exit: ; preds = %bb.d, %bb.e
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignEPKw(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 6 uses
  %.idx = shl nuw nsw i64 %i.a, 2
  %i.b = tail call noundef zeroext i1 @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.a)
  br i1 %i.b, label %bb.b, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.d = trunc i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = lshr i8 %i.c, 1
  %i.g = zext nneg i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load i64, ptr %0, align 8
  %i.l = lshr i64 %i.k, 1
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.l
  %i.n = select i1 %i.d, ptr %i.h, ptr %i.m
  store i32 0, ptr %i.n, align 4, !tbaa !134
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i: ; preds = %bb.b, %bb.a
  %i.o = load i8, ptr %0, align 8, !tbaa !109
  %i.p = trunc i8 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = select i1 %i.p, ptr %i.q, ptr %i.s       ; 2 uses
  %i.u = icmp eq i64 %i.a, 0
  br i1 %i.u, label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i
  %i.v = tail call ptr @wmemcpy(ptr noundef %i.t, ptr noundef %1, i64 noundef %i.a) #26 ; 0 uses
  br label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i

_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i:         ; preds = %bb.c, %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx
  store i32 0, ptr %i.w, align 4, !tbaa !134
  %i.x = load i8, ptr %0, align 8, !tbaa !109
  %i.y = trunc i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i
  %i.z = trunc i64 %i.a to i8
  %i.aa = shl i8 %i.z, 1
  %i.ab = or disjoint i8 %i.aa, 1
  store i8 %i.ab, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignEPKwS9_.exit

bb.e:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i
  %i.ac = load i64, ptr %0, align 8
  %i.ad = shl nuw nsw i64 %i.a, 1
  %i.ae = and i64 %i.ac, 1
  %i.af = or disjoint i64 %i.ae, %i.ad
  store i64 %i.af, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignEPKwS9_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignEPKwS9_.exit: ; preds = %bb.d, %bb.e
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEaSEw(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %1, ptr %i.a, align 4, !tbaa !134
  %i.b = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignINS0_17constant_iteratorIwEEEERS7_T_SC_PNS_11move_detail22disable_if_convertibleISC_mvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.a, i64 1, ptr null, i64 0, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEaSESt16initializer_listIwE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.idx = shl nuw nsw i64 %2, 2
  %i.a = tail call noundef zeroext i1 @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2)
  br i1 %i.a, label %bb.b, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = lshr i8 %i.b, 1
  %i.f = zext nneg i8 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load i64, ptr %0, align 8
  %i.k = lshr i64 %i.j, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.k
  %i.m = select i1 %i.c, ptr %i.g, ptr %i.l
  store i32 0, ptr %i.m, align 4, !tbaa !134
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i: ; preds = %bb.b, %bb.a
  %i.n = load i8, ptr %0, align 8, !tbaa !109
  %i.o = trunc i8 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = select i1 %i.o, ptr %i.p, ptr %i.r       ; 2 uses
  %i.t = icmp eq i64 %2, 0
  br i1 %i.t, label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i
  %i.u = tail call ptr @wmemcpy(ptr noundef %i.s, ptr noundef %1, i64 noundef %2) #26 ; 0 uses
  br label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i

_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i:         ; preds = %bb.c, %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx
  store i32 0, ptr %i.v, align 4, !tbaa !134
  %i.w = load i8, ptr %0, align 8, !tbaa !109
  %i.x = trunc i8 %i.w to i1
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i
  %i.y = trunc i64 %2 to i8
  %i.z = shl i8 %i.y, 1
  %i.aa = or disjoint i8 %i.z, 1
  store i8 %i.aa, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignEPKwS9_.exit

bb.e:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i
  %i.ab = load i64, ptr %0, align 8
  %i.ac = shl nuw nsw i64 %2, 1
  %i.ad = and i64 %i.ab, 1
  %i.ae = or disjoint i64 %i.ad, %i.ac
  store i64 %i.ae, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignEPKwS9_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignEPKwS9_.exit: ; preds = %bb.d, %bb.e
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE13get_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE20get_stored_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE20get_stored_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6rbeginEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.13") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = lshr i8 %i.a, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load i64, ptr %1, align 8
  %i.j = lshr i64 %i.i, 1
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.j
  %i.l = select i1 %i.b, ptr %i.f, ptr %i.k
  store ptr %i.l, ptr %0, align 8, !tbaa !141
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6rbeginEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.14") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %i.a = load i8, ptr %1, align 8, !tbaa !109, !noalias !390 ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = lshr i8 %i.a, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !noalias !390
  %i.i = load i64, ptr %1, align 8, !noalias !390
  %i.j = lshr i64 %i.i, 1
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.j
  %i.l = select i1 %i.b, ptr %i.f, ptr %i.k
  store ptr %i.l, ptr %0, align 8, !tbaa !143, !alias.scope !390
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7crbeginEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.14") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = lshr i8 %i.a, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load i64, ptr %1, align 8
  %i.j = lshr i64 %i.i, 1
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.j
  %i.l = select i1 %i.b, ptr %i.f, ptr %i.k
  store ptr %i.l, ptr %0, align 8, !tbaa !143
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4rendEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.13") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e
  store ptr %i.f, ptr %0, align 8, !tbaa !141
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4rendEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.14") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393)
  %i.a = load i8, ptr %1, align 8, !tbaa !109, !noalias !393
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noalias !393
end_hunk_1
begin_hunk_2_@_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5frontEv:bb.a
  ret ptr %i.f
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5frontEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e
  ret ptr %i.f
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e
  %i.g = lshr i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = load i64, ptr %0, align 8
  %i.j = lshr i64 %i.i, 1
  %i.k = select i1 %i.b, i64 %i.h, i64 %i.j
  %i.l = getelementptr [4 x i8], ptr %i.f, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 -4
  ret ptr %i.m
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e
  %i.g = lshr i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = load i64, ptr %0, align 8
  %i.j = lshr i64 %i.i, 1
  %i.k = select i1 %i.b, i64 %i.h, i64 %i.j
  %i.l = getelementptr [4 x i8], ptr %i.f, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 -4
  ret ptr %i.m
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e
  %i.g = getelementptr inbounds [4 x i8], ptr %i.f, i64 %1
  ret ptr %i.g
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e
  %i.g = getelementptr inbounds [4 x i8], ptr %i.f, i64 %1
  ret ptr %i.g
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE2atEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %.not = icmp ult i64 %1, %i.g
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.1) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.e to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.h, ptr %i.i, ptr %i.k
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %1
  ret ptr %i.m
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE2atEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %.not = icmp ult i64 %1, %i.g
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.1) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.e to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.h, ptr %i.i, ptr %i.k
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %1
  ret ptr %i.m
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEpLERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e
  %i.g = lshr i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.h
  %i.j = load i64, ptr %1, align 8
  %i.k = lshr i64 %i.j, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.k
  %i.m = select i1 %i.b, ptr %i.i, ptr %i.l
  %i.n = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.o = trunc i8 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = lshr i8 %i.n, 1
  %i.r = zext nneg i8 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load i64, ptr %0, align 8
  %i.w = lshr i64 %i.v, 1
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.w
  %i.y = select i1 %i.o, ptr %i.s, ptr %i.x
  %i.z = tail call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6insertIPKwEEPwSA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.y, ptr noundef %i.f, ptr noundef %i.m, ptr noundef null) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6appendERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e
  %i.g = lshr i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.h
  %i.j = load i64, ptr %1, align 8
  %i.k = lshr i64 %i.j, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.k
  %i.m = select i1 %i.b, ptr %i.i, ptr %i.l
  %i.n = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.o = trunc i8 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = lshr i8 %i.n, 1
  %i.r = zext nneg i8 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load i64, ptr %0, align 8
  %i.w = lshr i64 %i.v, 1
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.w
  %i.y = select i1 %i.o, ptr %i.s, ptr %i.x
  %i.z = tail call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6insertIPKwEEPwSA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.y, ptr noundef %i.f, ptr noundef %i.m, ptr noundef null) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEpLEPKw(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @wcslen(ptr noundef %1) #29
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.a
  %i.c = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.d = trunc i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = lshr i8 %i.c, 1
  %i.g = zext nneg i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load i64, ptr %0, align 8
  %i.l = lshr i64 %i.k, 1
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.l
  %i.n = select i1 %i.d, ptr %i.h, ptr %i.m
  %i.o = tail call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6insertIPKwEEPwSA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.n, ptr noundef %1, ptr noundef %i.b, ptr noundef null) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6appendEPKw(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @wcslen(ptr noundef %1) #29
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.a
  %i.c = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.d = trunc i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = lshr i8 %i.c, 1
  %i.g = zext nneg i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load i64, ptr %0, align 8
  %i.l = lshr i64 %i.k, 1
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.l
  %i.n = select i1 %i.d, ptr %i.h, ptr %i.m
  %i.o = tail call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6insertIPKwEEPwSA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.n, ptr noundef %1, ptr noundef %i.b, ptr noundef null) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEpLEw(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 3 uses
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g       ; 3 uses
  %i.i = trunc i64 %i.f to i1                     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = add i64 %i.k, -1
  %i.m = select i1 %i.i, i64 4, i64 %i.l
  %i.n = icmp ult i64 %i.h, %i.m
  br i1 %i.n, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %i.i, ptr %i.o, ptr %i.q       ; 2 uses
  %i.s = add nuw i64 %i.h, 1                      ; 3 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.s
  store i32 0, ptr %i.t, align 4, !tbaa !134
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.h
  store i32 %1, ptr %i.u, align 4, !tbaa !134
  %i.v = load i8, ptr %0, align 8, !tbaa !109
  %i.w = trunc i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = trunc i64 %i.s to i8
  %i.y = shl i8 %i.x, 1
  %i.z = or disjoint i8 %i.y, 1
  store i8 %i.z, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9push_backEw.exit

bb.d:                                             ; preds = %bb.b
  %i.aa = load i64, ptr %0, align 8
  %i.ab = shl i64 %i.s, 1
  %i.ac = and i64 %i.aa, 1
  %i.ad = or disjoint i64 %i.ac, %i.ab
  store i64 %i.ad, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9push_backEw.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %1, ptr %i.a, align 4, !tbaa !134
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.af = and i64 %i.g, 127
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.g
  %i.ak = select i1 %i.i, ptr %i.ag, ptr %i.aj
  %i.al = call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6insertINS0_17constant_iteratorIwEEEEPwPKwT_SE_PNS_11move_detail13disable_if_orIvNSF_14is_convertibleISE_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEESN_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.ak, ptr nonnull %i.a, i64 1, ptr null, i64 0, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9push_backEw.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9push_backEw.exit: ; preds = %bb.c, %bb.d, %bb.e
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9push_backEw(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g       ; 3 uses
  %i.i = trunc i64 %i.f to i1                     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = add i64 %i.k, -1
  %i.m = select i1 %i.i, i64 4, i64 %i.l
  %i.n = icmp ult i64 %i.h, %i.m
  br i1 %i.n, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %i.i, ptr %i.o, ptr %i.q       ; 2 uses
  %i.s = add nuw i64 %i.h, 1                      ; 3 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.s
  store i32 0, ptr %i.t, align 4, !tbaa !134
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.h
  store i32 %1, ptr %i.u, align 4, !tbaa !134
  %i.v = load i8, ptr %0, align 8, !tbaa !109
  %i.w = trunc i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = trunc i64 %i.s to i8
  %i.y = shl i8 %i.x, 1
  %i.z = or disjoint i8 %i.y, 1
  store i8 %i.z, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE9priv_sizeEm.exit

bb.d:                                             ; preds = %bb.b
  %i.aa = load i64, ptr %0, align 8
  %i.ab = shl i64 %i.s, 1
  %i.ac = and i64 %i.aa, 1
  %i.ad = or disjoint i64 %i.ac, %i.ab
  store i64 %i.ad, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE9priv_sizeEm.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %1, ptr %i.a, align 4, !tbaa !134
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.af = lshr i64 %i.f, 1
  %i.ag = and i64 %i.af, 127
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.g
  %i.al = select i1 %i.i, ptr %i.ah, ptr %i.ak
  %i.am = call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6insertINS0_17constant_iteratorIwEEEEPwPKwT_SE_PNS_11move_detail13disable_if_orIvNSF_14is_convertibleISE_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEESN_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.al, ptr nonnull %i.a, i64 1, ptr null, i64 0, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE9priv_sizeEm.exit

_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE9priv_sizeEm.exit: ; preds = %bb.d, %bb.c, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEpLESt16initializer_listIwE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = lshr i8 %i.b, 1
  %i.f = zext nneg i8 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load i64, ptr %0, align 8
  %i.k = lshr i64 %i.j, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.k
  %i.m = select i1 %i.c, ptr %i.g, ptr %i.l
  %i.n = tail call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6insertIPKwEEPwSA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.m, ptr noundef %1, ptr noundef %i.a, ptr noundef null) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6appendESt16initializer_listIwE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = lshr i8 %i.b, 1
  %i.f = zext nneg i8 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load i64, ptr %0, align 8
  %i.k = lshr i64 %i.j, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.k
  %i.m = select i1 %i.c, ptr %i.g, ptr %i.l
  %i.n = tail call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6insertIPKwEEPwSA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.m, ptr noundef %1, ptr noundef %i.a, ptr noundef null) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6appendERKS7_mm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %1, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.2) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %2 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6insertIPKwEEPwSA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE:bb.a
  br i1 %min.iters.check, label %.lr.ph.i166.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit164
  %i.hz = add i64 %i.as, %i.h
  %i.ia = add i64 %i.hl, %i.j
  %i.ib = sub i64 %i.ia, %i.hz
  %diff.check = icmp ugt i64 %i.ib, -32
  br i1 %diff.check, label %.lr.ph.i166.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.hy, 9223372036854775800     ; 3 uses
  %i.ic = shl i64 %n.vec, 2                       ; 2 uses
  %i.id = getelementptr i8, ptr %i.hq, i64 %i.ic
  %i.ie = getelementptr i8, ptr %2, i64 %i.ic
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.if = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.hq, i64 %i.if ; 2 uses
  %next.gep219 = getelementptr i8, ptr %2, i64 %i.if ; 2 uses
  %i.ig = getelementptr i8, ptr %next.gep219, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep219, align 4, !tbaa !134
  %wide.load220 = load <4 x i32>, ptr %i.ig, align 4, !tbaa !134
  %i.ih = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !134
  store <4 x i32> %wide.load220, ptr %i.ih, align 4, !tbaa !134
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ii = icmp eq i64 %index.next, %n.vec
  br i1 %i.ii, label %middle.block, label %vector.body, !llvm.loop !410

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hy, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPKwPwEEmT_SC_T0_.exit172, label %.lr.ph.i166.preheader

.lr.ph.i166.preheader:                            ; preds = %vector.memcheck, %_ZNSt11char_traitsIwE4moveEPwPKwm.exit164, %middle.block
  %.0711.i168.ph = phi ptr [ %i.hq, %vector.memcheck ], [ %i.hq, %_ZNSt11char_traitsIwE4moveEPwPKwm.exit164 ], [ %i.id, %middle.block ]
  %.0810.i169.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %_ZNSt11char_traitsIwE4moveEPwPKwm.exit164 ], [ %i.ie, %middle.block ]
  br label %.lr.ph.i166

.lr.ph.i166:                                      ; preds = %.lr.ph.i166.preheader, %.lr.ph.i166
  %.0711.i168 = phi ptr [ %i.ik, %.lr.ph.i166 ], [ %.0711.i168.ph, %.lr.ph.i166.preheader ] ; 2 uses
  %.0810.i169 = phi ptr [ %i.il, %.lr.ph.i166 ], [ %.0810.i169.ph, %.lr.ph.i166.preheader ] ; 2 uses
  %i.ij = load i32, ptr %.0810.i169, align 4, !tbaa !134
  store i32 %i.ij, ptr %.0711.i168, align 4, !tbaa !134
  %i.ik = getelementptr inbounds nuw i8, ptr %.0711.i168, i64 4
  %i.il = getelementptr inbounds nuw i8, ptr %.0810.i169, i64 4 ; 2 uses
  %.not.i170 = icmp eq ptr %i.il, %3
  br i1 %.not.i170, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPKwPwEEmT_SC_T0_.exit172, label %.lr.ph.i166, !llvm.loop !411

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPKwPwEEmT_SC_T0_.exit172: ; preds = %.lr.ph.i166, %middle.block
  %i.im = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.ap
  store i32 0, ptr %i.im, align 4, !tbaa !134
  %i.in = load i8, ptr %0, align 8, !tbaa !109
  %i.io = trunc i8 %i.in to i1
  %.pre = load i64, ptr %0, align 8
  store ptr %i.ar, ptr %i.f, align 8, !tbaa !137
  %i.ip = shl i64 %i.ap, 1
  %i.iq = and i64 %.pre, 1
  %i.ir = select i1 %i.io, i64 0, i64 %i.iq
  %i.is = or disjoint i64 %i.ir, %i.ip            ; 2 uses
  store i64 %i.is, ptr %0, align 8
  %i.it = load i64, ptr %i.a, align 8, !tbaa !127
  store i64 %i.it, ptr %i.s, align 8, !tbaa !138
  %i.iu = trunc i64 %i.is to i8
  br label %bb.x

bb.x:                                             ; preds = %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE16deallocate_blockEv.exit, %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPKwPwEEmT_SC_T0_.exit172, %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE9priv_sizeEm.exit136
  %.pre189 = phi ptr [ %i.ar, %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE16deallocate_blockEv.exit ], [ %i.ar, %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPKwPwEEmT_SC_T0_.exit172 ], [ %.pre189.pre, %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE9priv_sizeEm.exit136 ]
  %.pre188 = phi i8 [ %i.hk, %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE16deallocate_blockEv.exit ], [ %i.iu, %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPKwPwEEmT_SC_T0_.exit172 ], [ %.pre188.pre, %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE9priv_sizeEm.exit136 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.pre192 = trunc i8 %.pre188 to i1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.a
  %.pre-phi = phi i1 [ %.pre192, %bb.x ], [ %i.d, %bb.a ]
  %i.iv = phi ptr [ %.pre189, %bb.x ], [ %i.g, %bb.a ]
  %i.iw = select i1 %i.d, ptr %i.e, ptr %i.g
  %i.ix = ptrtoint ptr %i.iw to i64
  %i.iy = sub i64 %i.h, %i.ix
  %i.iz = select i1 %.pre-phi, ptr %i.e, ptr %i.iv
  %i.ja = getelementptr inbounds i8, ptr %i.iz, i64 %i.iy
  ret ptr %i.ja
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6insertEmRKS7_mm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = load i8, ptr %2, align 8, !tbaa !109     ; 2 uses
  %i.i = trunc i8 %i.h to i1
  %i.j = lshr i8 %i.h, 1
  %i.k = zext nneg i8 %i.j to i64
  %i.l = load i64, ptr %2, align 8                ; 2 uses
  %i.m = lshr i64 %i.l, 1
  %i.n = select i1 %i.i, i64 %i.k, i64 %i.m       ; 2 uses
  %i.o = icmp ugt i64 %1, %i.g
  %i.p = icmp ugt i64 %3, %i.n
  %or.cond = or i1 %i.o, %i.p
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.4) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = sub nuw nsw i64 %i.n, %3
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %4, i64 %i.q) ; 2 uses
  %i.r = sub nsw i64 4611686018427387902, %.sroa.speculated
  %i.s = icmp ugt i64 %i.g, %i.r
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.5) #27
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.t = trunc i64 %i.l to i1
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = select i1 %i.t, ptr %i.u, ptr %i.w
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %3 ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.sroa.speculated
  %i.aa = trunc i64 %i.e to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = select i1 %i.aa, ptr %i.ab, ptr %i.ad
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %1
  %i.ag = tail call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6insertIPKwEEPwSA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.af, ptr noundef %i.y, ptr noundef %i.z, ptr noundef null) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6insertEmPKwm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.4) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = lshr i64 %i.e, 1
  %i.k = and i64 %i.j, 127
  %i.l = select i1 %i.i, i64 %i.k, i64 %i.f
  %i.m = sub i64 4611686018427387902, %3
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.5) #27
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %i.i, ptr %i.o, ptr %i.q
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %1
  %i.t = getelementptr inbounds [4 x i8], ptr %2, i64 %3
  %i.u = tail call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6insertIPKwEEPwSA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.s, ptr noundef %2, ptr noundef %i.t, ptr noundef null) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6insertEmPKw(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.4) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @wcslen(ptr noundef %2) #29 ; 2 uses
  %i.j = trunc i64 %i.e to i1                     ; 2 uses
  %i.k = lshr i64 %i.e, 1
  %i.l = and i64 %i.k, 127
  %i.m = select i1 %i.j, i64 %i.l, i64 %i.f
  %i.n = sub i64 4611686018427387902, %i.i
  %i.o = icmp ugt i64 %i.m, %i.n
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.5) #27
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = select i1 %i.j, ptr %i.p, ptr %i.r
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %1
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.i
  %i.v = tail call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6insertIPKwEEPwSA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.t, ptr noundef %2, ptr noundef %i.u, ptr noundef null) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6insertEmmw(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i32 noundef signext %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g
  %i.i = icmp ugt i64 %1, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.4) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = trunc i64 %i.f to i1                     ; 2 uses
  %i.k = lshr i64 %i.f, 1
  %i.l = and i64 %i.k, 127
  %i.m = select i1 %i.j, i64 %i.l, i64 %i.g
  %i.n = sub i64 4611686018427387902, %2
  %i.o = icmp ugt i64 %i.m, %i.n
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.5) #27
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = select i1 %i.j, ptr %i.p, ptr %i.r
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %3, ptr %i.a, align 4, !tbaa !134
  %i.u = call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6insertINS0_17constant_iteratorIwEEEEPwPKwT_SE_PNS_11move_detail13disable_if_orIvNSF_14is_convertibleISE_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEESN_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.t, ptr nonnull %i.a, i64 %2, ptr null, i64 0, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6insertEPKwmw(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i32 noundef signext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !134
  %i.b = call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6insertINS0_17constant_iteratorIwEEEEPwPKwT_SE_PNS_11move_detail13disable_if_orIvNSF_14is_convertibleISE_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEESN_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull %i.a, i64 %2, ptr null, i64 0, ptr noundef null)
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6insertEPKww(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef signext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !134
  %i.b = load i8, ptr %0, align 8, !tbaa !109
  %i.c = trunc i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = select i1 %i.c, ptr %i.d, ptr %i.f
  %i.h = ptrtoint ptr %1 to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6insertINS0_17constant_iteratorIwEEEEPwPKwT_SE_PNS_11move_detail13disable_if_orIvNSF_14is_convertibleISE_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEESN_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull %i.a, i64 1, ptr null, i64 0, ptr noundef null) ; 0 uses
  %i.l = load i8, ptr %0, align 8, !tbaa !109
  %i.m = trunc i8 %i.l to i1
  %i.n = load ptr, ptr %i.e, align 8
  %i.o = select i1 %i.m, ptr %i.d, ptr %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.j
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6insertINS0_17constant_iteratorIwEEEEPwPKwT_SE_PNS_11move_detail13disable_if_orIvNSF_14is_convertibleISE_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEESN_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.d = trunc i8 %i.c to i1                      ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 4 uses
  %i.h = ptrtoint ptr %1 to i64                   ; 8 uses
  %.not208 = icmp eq i64 %3, %5
  br i1 %.not208, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = sub i64 %3, %5                           ; 20 uses
  %i.j = lshr i8 %i.c, 1
  %i.k = zext nneg i8 %i.j to i64
  %i.l = load i64, ptr %0, align 8                ; 3 uses
  %i.m = lshr i64 %i.l, 1                         ; 2 uses
  %i.n = select i1 %i.d, i64 %i.k, i64 %i.m       ; 15 uses
  %i.o = trunc i64 %i.l to i1                     ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = add i64 %i.q, -1
  %i.s = select i1 %i.o, i64 4, i64 %i.r          ; 4 uses
  %i.t = sub i64 %i.s, %i.n
  %i.u = select i1 %i.o, ptr %i.e, ptr %i.g       ; 16 uses
  %i.v = ptrtoaddr ptr %i.u to i64                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 0, ptr %i.a, align 8, !tbaa !127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store ptr null, ptr %i.b, align 8, !tbaa !144
  %.not209 = icmp ult i64 %i.t, %i.i
  br i1 %.not209, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.w = add i64 %i.s, 1                          ; 5 uses
  %i.x = lshr i64 %i.l, 1
  %i.y = and i64 %i.x, 127
  %i.z = select i1 %i.o, i64 %i.y, i64 %i.m
  %.neg.i = sub i64 %i.z, %i.s
  %i.aa = sub i64 4611686018427387902, %i.s
  %i.ab = add i64 %.neg.i, %i.i                   ; 2 uses
  %i.ac = icmp ult i64 %i.aa, %i.ab
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.16) #27
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ad = icmp ult i64 %i.w, 2305843009213693952
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = shl nuw i64 %i.w, 3
  %i.af = udiv i64 %i.ae, 5
  br label %_ZNK5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE12next_storageEmm.exit

bb.g:                                             ; preds = %bb.e
  %i.ag = icmp ugt i64 %i.w, -6917529027641081857
  %i.ah = shl i64 %i.w, 3
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 4611686018427387903)
  %i.aj = select i1 %i.ag, i64 4611686018427387903, i64 %i.ai
  br label %_ZNK5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE12next_storageEmm.exit

_ZNK5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE12next_storageEmm.exit: ; preds = %bb.f, %bb.g
  %.0.i.i = phi i64 [ %i.af, %bb.f ], [ %i.aj, %bb.g ]
  %i.ak = add i64 %i.ab, %i.w
  %i.al = tail call noundef i64 @llvm.umax.i64(i64 %i.ak, i64 %.0.i.i)
  store i64 %i.al, ptr %i.a, align 8, !tbaa !127
  %i.am = add i64 %i.n, %i.i                      ; 3 uses
  %i.an = add i64 %i.am, 1
  %spec.store.select = select i1 %i.o, ptr null, ptr %i.g
  store ptr %spec.store.select, ptr %i.b, align 8, !tbaa !144
  %spec.select = select i1 %i.o, i32 1, i32 7
  %i.ao = call noundef ptr @_ZN5boost9container3dtl24allocator_version_traitsINS0_4test16simple_allocatorIwEELj1EE18allocation_commandERS5_jmRmRPw(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %spec.select, i64 noundef %i.an, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 15 uses
  %i.ap = ptrtoaddr ptr %i.ao to i64              ; 2 uses
  %i.aq = icmp eq ptr %i.u, %i.ao
  br i1 %i.aq, label %bb.h, label %bb.q

bb.h:                                             ; preds = %_ZNK5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE12next_storageEmm.exit
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !127
  store i64 %i.ar, ptr %i.p, align 8, !tbaa !138
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h
  %i.as = ptrtoint ptr %i.u to i64
  %i.at = sub i64 %i.h, %i.as
  %i.au = ashr exact i64 %i.at, 2                 ; 3 uses
  %i.av = sub i64 %i.n, %i.au                     ; 5 uses
  %.not124 = icmp ult i64 %i.av, %i.i
  br i1 %.not124, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.idx210 = shl i64 %i.n, 2                      ; 2 uses
  %i.aw = getelementptr i8, ptr %i.u, i64 %.idx210 ; 4 uses
  %i.ax = sub i64 %i.n, %i.i
  %.idx = shl i64 %i.ax, 2                        ; 2 uses
  %.not9.i = icmp eq i64 %.idx, %.idx210
  br i1 %.not9.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPwS9_EEmT_SA_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.j
  %i.ay = getelementptr i8, ptr %i.u, i64 %.idx   ; 3 uses
  %i.az = shl i64 %3, 2
  %i.ba = shl i64 %5, 2
  %i.bb = add i64 %i.az, -4
  %i.bc = sub i64 %i.bb, %i.ba                    ; 2 uses
  %i.bd = lshr exact i64 %i.bc, 2
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check302 = icmp ult i64 %i.bc, 28
  br i1 %min.iters.check302, label %.lr.ph.i.preheader380, label %vector.ph303

vector.ph303:                                     ; preds = %.lr.ph.i.preheader
  %n.vec304 = and i64 %i.be, 9223372036854775800  ; 3 uses
  %i.bf = shl i64 %n.vec304, 2                    ; 2 uses
  %i.bg = getelementptr i8, ptr %i.aw, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.ay, i64 %i.bf
  br label %vector.body305

end_hunk_3
begin_hunk_4_@_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7replaceEmmRKS7_mm:bb.a
  ret ptr %i.s
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g
  %i.i = icmp ugt i64 %1, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = trunc i64 %i.f to i1                     ; 2 uses
  %i.k = lshr i64 %i.f, 1
  %i.l = and i64 %i.k, 127
  %i.m = select i1 %i.j, i64 %i.l, i64 %i.g       ; 2 uses
  %i.n = sub i64 %i.m, %1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.n) ; 3 uses
  %i.o = icmp ugt i64 %4, 4611686018427387902
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = sub i64 %i.m, %.sroa.speculated
  %i.q = sub nuw nsw i64 4611686018427387902, %4
  %.not = icmp ult i64 %i.p, %i.q
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.8) #27
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %i.j, ptr %i.r, ptr %i.t       ; 2 uses
  %i.v = ptrtoaddr ptr %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %1 ; 6 uses
  %.idx = shl i64 %.sroa.speculated, 2            ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %.idx ; 5 uses
  %.idx19 = shl nuw i64 %4, 2                     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 %.idx19 ; 3 uses
  %i.z = icmp ne i64 %.sroa.speculated, 0
  %i.aa = icmp ne i64 %4, 0
  %i.ab = and i1 %i.aa, %i.z
  br i1 %i.ab, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.f
  %i.ac = add i64 %.idx19, -4
  %i.ad = lshr exact i64 %i.ac, 2
  %i.ae = add i64 %.idx, -4
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 %i.af) ; 2 uses
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ag, 11
  br i1 %min.iters.check, label %.lr.ph.i.preheader32, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.ai = shl i64 %1, 2
  %i.aj = add i64 %i.ai, %i.v
  %i.ak = sub i64 %i.a, %i.aj
  %diff.check = icmp ugt i64 %i.ak, -32
  br i1 %diff.check, label %.lr.ph.i.preheader32, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, 9223372036854775800     ; 3 uses
  %i.al = shl i64 %n.vec, 2                       ; 2 uses
  %i.am = getelementptr i8, ptr %i.w, i64 %i.al   ; 2 uses
  %i.an = getelementptr i8, ptr %3, i64 %i.al     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ao ; 2 uses
  %next.gep29 = getelementptr i8, ptr %3, i64 %i.ao ; 2 uses
  %i.ap = getelementptr i8, ptr %next.gep29, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep29, align 4, !tbaa !134
  %wide.load30 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !134
  %i.aq = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !134
  store <4 x i32> %wide.load30, ptr %i.aq, align 4, !tbaa !134
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !432

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader32

.lr.ph.i.preheader32:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.019.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.preheader ], [ %i.am, %middle.block ]
  %.01618.i.ph = phi ptr [ %3, %vector.memcheck ], [ %3, %.lr.ph.i.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader32, %.lr.ph.i
  %.019.i = phi ptr [ %i.at, %.lr.ph.i ], [ %.019.i.ph, %.lr.ph.i.preheader32 ] ; 2 uses
  %.01618.i = phi ptr [ %i.au, %.lr.ph.i ], [ %.01618.i.ph, %.lr.ph.i.preheader32 ] ; 2 uses
  %i.as = load i32, ptr %.01618.i, align 4, !tbaa !134
  store i32 %i.as, ptr %.019.i, align 4, !tbaa !134
  %i.at = getelementptr inbounds nuw i8, ptr %.019.i, i64 4 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4 ; 3 uses
  %i.av = icmp ne ptr %i.at, %i.x
  %i.aw = icmp ne ptr %i.au, %i.y
  %i.ax = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %i.ax, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !433

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %bb.f
  %.016.lcssa.i = phi ptr [ %3, %bb.f ], [ %i.an, %middle.block ], [ %i.au, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %i.w, %bb.f ], [ %i.am, %middle.block ], [ %i.at, %.lr.ph.i ] ; 3 uses
  %i.ay = icmp eq ptr %.016.lcssa.i, %i.y
  br i1 %i.ay, label %bb.g, label %bb.l

bb.g:                                             ; preds = %._crit_edge.i
  %.not.i.i = icmp eq ptr %.0.lcssa.i, %i.x
  br i1 %.not.i.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7replaceIPKwEERS7_SA_SA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = ptrtoint ptr %i.x to i64                ; 2 uses
  %i.ba = ptrtoint ptr %.0.lcssa.i to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 2
  %i.bd = load i8, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.be = trunc i8 %i.bd to i1
  %i.bf = lshr i8 %i.bd, 1
  %i.bg = zext nneg i8 %i.bf to i64
  %i.bh = load i64, ptr %0, align 8               ; 3 uses
  %i.bi = lshr i64 %i.bh, 1
  %i.bj = select i1 %i.be, i64 %i.bg, i64 %i.bi   ; 2 uses
  %i.bk = trunc i64 %i.bh to i8
  %i.bl = trunc i64 %i.bh to i1
  %i.bm = load ptr, ptr %i.s, align 8
  %i.bn = select i1 %i.bl, ptr %i.r, ptr %i.bm
  %i.bo = add nuw i64 %i.bj, 1                    ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.az, %i.bp
  %i.br = ashr exact i64 %i.bq, 2                 ; 2 uses
  %i.bs = icmp eq i64 %i.bo, %i.br
  br i1 %i.bs, label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bt = sub i64 %i.bo, %i.br
  %i.bu = tail call ptr @wmemmove(ptr noundef %.0.lcssa.i, ptr noundef %i.x, i64 noundef %i.bt) #26 ; 0 uses
  %.pre.i.i = load i8, ptr %0, align 8, !tbaa !109
  br label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i

_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i:       ; preds = %bb.i, %bb.h
  %i.bv = phi i8 [ %i.bk, %bb.h ], [ %.pre.i.i, %bb.i ]
  %i.bw = sub i64 %i.bj, %i.bc                    ; 2 uses
  %i.bx = trunc i8 %i.bv to i1
  br i1 %i.bx, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i
  %i.by = trunc i64 %i.bw to i8
  %i.bz = shl i8 %i.by, 1
  %i.ca = or disjoint i8 %i.bz, 1
  store i8 %i.ca, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7replaceIPKwEERS7_SA_SA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit

bb.k:                                             ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i
  %i.cb = load i64, ptr %0, align 8
  %i.cc = shl i64 %i.bw, 1
  %i.cd = and i64 %i.cb, 1
  %i.ce = or disjoint i64 %i.cd, %i.cc
  store i64 %i.ce, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7replaceIPKwEERS7_SA_SA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit

bb.l:                                             ; preds = %._crit_edge.i
  %i.cf = tail call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6insertIPKwEEPwSA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.x, ptr noundef %.016.lcssa.i, ptr noundef %i.y, ptr noundef null) ; 0 uses
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7replaceIPKwEERS7_SA_SA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7replaceIPKwEERS7_SA_SA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit: ; preds = %bb.g, %bb.j, %bb.k, %bb.l
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4dataEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e
  ret ptr %i.f
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7replaceEmmPKw(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = tail call noundef i64 @wcslen(ptr noundef %3) #29
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %i.a)
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7replaceEmmmw(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef signext %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = lshr i64 %i.e, 1
  %i.k = and i64 %i.j, 127
  %i.l = select i1 %i.i, i64 %i.k, i64 %i.f       ; 2 uses
  %i.m = sub nsw i64 %i.l, %1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.m) ; 2 uses
  %i.n = icmp ugt i64 %3, 4611686018427387902
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = sub i64 %i.l, %.sroa.speculated
  %i.p = sub nuw nsw i64 4611686018427387902, %3
  %.not = icmp ult i64 %i.o, %i.p
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.8) #27
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = select i1 %i.i, ptr %i.q, ptr %i.s
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %1 ; 2 uses
  %i.v = getelementptr [4 x i8], ptr %i.u, i64 %.sroa.speculated
  %i.w = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7replaceEPKwS9_mw(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.u, ptr noundef %i.v, i64 noundef %3, i32 noundef signext %4)
  ret ptr %i.w
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7replaceEPKwS9_mw(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef signext %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 3 uses
  %.not = icmp ult i64 %i.e, %3
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %3, 0
  br i1 %i.f, label %_ZNSt11char_traitsIwE6assignEPwmw.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @wmemset(ptr noundef %1, i32 noundef signext %4, i64 noundef %3) #26 ; 0 uses
  br label %_ZNSt11char_traitsIwE6assignEPwmw.exit

_ZNSt11char_traitsIwE6assignEPwmw.exit:           ; preds = %bb.b, %bb.c
  %i.h = getelementptr inbounds [4 x i8], ptr %1, i64 %3 ; 3 uses
  %.not.i = icmp eq ptr %i.h, %2
  br i1 %.not.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5eraseEPKwS9_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt11char_traitsIwE6assignEPwmw.exit
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.b, %i.i
  %i.k = ashr exact i64 %i.j, 2
  %i.l = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.m = trunc i8 %i.l to i1
  %i.n = lshr i8 %i.l, 1
  %i.o = zext nneg i8 %i.n to i64
  %i.p = load i64, ptr %0, align 8                ; 3 uses
  %i.q = lshr i64 %i.p, 1
  %i.r = select i1 %i.m, i64 %i.o, i64 %i.q       ; 2 uses
  %i.s = trunc i64 %i.p to i8
  %i.t = trunc i64 %i.p to i1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = select i1 %i.t, ptr %i.u, ptr %i.w
  %i.y = add nuw i64 %i.r, 1                      ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.b, %i.z
  %i.ab = ashr exact i64 %i.aa, 2                 ; 2 uses
  %i.ac = icmp eq i64 %i.y, %i.ab
  br i1 %i.ac, label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = sub i64 %i.y, %i.ab
  %i.ae = tail call ptr @wmemmove(ptr noundef %i.h, ptr noundef %2, i64 noundef %i.ad) #26 ; 0 uses
  %.pre.i = load i8, ptr %0, align 8, !tbaa !109
  br label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i

_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i:         ; preds = %bb.e, %bb.d
  %i.af = phi i8 [ %i.s, %bb.d ], [ %.pre.i, %bb.e ]
  %i.ag = sub i64 %i.r, %i.k                      ; 2 uses
  %i.ah = trunc i8 %i.af to i1
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i
  %i.ai = trunc i64 %i.ag to i8
  %i.aj = shl i8 %i.ai, 1
  %i.ak = or disjoint i8 %i.aj, 1
  store i8 %i.ak, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5eraseEPKwS9_.exit

bb.g:                                             ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i
  %i.al = load i64, ptr %0, align 8
  %i.am = shl i64 %i.ag, 1
  %i.an = and i64 %i.al, 1
  %i.ao = or disjoint i64 %i.an, %i.am
  store i64 %i.ao, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5eraseEPKwS9_.exit

bb.h:                                             ; preds = %bb.a
  %i.ap = icmp eq ptr %2, %1
  br i1 %i.ap, label %_ZNSt11char_traitsIwE6assignEPwmw.exit19, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = tail call ptr @wmemset(ptr noundef %1, i32 noundef signext %4, i64 noundef %i.e) #26 ; 0 uses
  br label %_ZNSt11char_traitsIwE6assignEPwmw.exit19

_ZNSt11char_traitsIwE6assignEPwmw.exit19:         ; preds = %bb.h, %bb.i
  %i.ar = sub nuw i64 %3, %i.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %4, ptr %i.a, align 4, !tbaa !134
  %i.as = call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6insertINS0_17constant_iteratorIwEEEEPwPKwT_SE_PNS_11move_detail13disable_if_orIvNSF_14is_convertibleISE_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEESN_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, ptr nonnull %i.a, i64 %i.ar, ptr null, i64 0, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5eraseEPKwS9_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5eraseEPKwS9_.exit: ; preds = %bb.g, %bb.f, %_ZNSt11char_traitsIwE6assignEPwmw.exit, %_ZNSt11char_traitsIwE6assignEPwmw.exit19
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7replaceEPKwS9_RKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = load i8, ptr %3, align 8, !tbaa !109     ; 2 uses
  %i.d = trunc i8 %i.c to i1                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = select i1 %i.d, ptr %i.e, ptr %i.g       ; 7 uses
  %i.i = ptrtoaddr ptr %i.h to i64
  %i.j = lshr i8 %i.c, 1
  %i.k = zext nneg i8 %i.j to i64
  %i.l = load i64, ptr %3, align 8
  %i.m = lshr i64 %i.l, 1
  %i.n = select i1 %i.d, i64 %i.k, i64 %i.m       ; 2 uses
  %.idx = shl i64 %i.n, 2                         ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx ; 3 uses
  %i.p = icmp ne ptr %1, %2
  %i.q = icmp ne i64 %i.n, 0
  %i.r = and i1 %i.p, %i.q
  br i1 %i.r, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.s = add i64 %i.b, -4
  %i.t = sub i64 %i.s, %i.a
  %i.u = lshr i64 %i.t, 2
  %i.v = add i64 %.idx, -4
  %i.w = lshr exact i64 %i.v, 2
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.w) ; 2 uses
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.x, 11
  br i1 %min.iters.check, label %.lr.ph.i.preheader17, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.preheader
  %i.z = sub i64 %i.b, %i.a
  %i.aa = and i64 %i.z, 3
  %ident.check.not = icmp ne i64 %i.aa, 0
  %i.ab = sub i64 %i.i, %i.a
  %diff.check = icmp ugt i64 %i.ab, -32
  %or.cond = select i1 %ident.check.not, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader17, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.y, 9223372036854775800      ; 3 uses
  %i.ac = shl i64 %n.vec, 2                       ; 2 uses
  %i.ad = getelementptr i8, ptr %1, i64 %i.ac     ; 2 uses
  %i.ae = getelementptr i8, ptr %i.h, i64 %i.ac   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 2                       ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7replaceEPKwS9_RKS7_:bb.a
  %i.bb = trunc i64 %i.ay to i8
  %i.bc = trunc i64 %i.ay to i1
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = select i1 %i.bc, ptr %i.bd, ptr %i.bf
  %i.bh = add nuw i64 %i.ba, 1                    ; 2 uses
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.aq, %i.bi
  %i.bk = ashr exact i64 %i.bj, 2                 ; 2 uses
  %i.bl = icmp eq i64 %i.bh, %i.bk
  br i1 %i.bl, label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bm = sub i64 %i.bh, %i.bk
  %i.bn = tail call ptr @wmemmove(ptr noundef %.0.lcssa.i, ptr noundef %2, i64 noundef %i.bm) #26 ; 0 uses
  %.pre.i.i = load i8, ptr %0, align 8, !tbaa !109
  br label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i

_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i:       ; preds = %bb.d, %bb.c
  %i.bo = phi i8 [ %i.bb, %bb.c ], [ %.pre.i.i, %bb.d ]
  %i.bp = sub i64 %i.ba, %i.at                    ; 2 uses
  %i.bq = trunc i8 %i.bo to i1
  br i1 %i.bq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i
  %i.br = trunc i64 %i.bp to i8
  %i.bs = shl i8 %i.br, 1
  %i.bt = or disjoint i8 %i.bs, 1
  store i8 %i.bt, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7replaceIPKwEERS7_SA_SA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit

bb.f:                                             ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i
  %i.bu = load i64, ptr %0, align 8
  %i.bv = shl i64 %i.bp, 1
  %i.bw = and i64 %i.bu, 1
  %i.bx = or disjoint i64 %i.bw, %i.bv
  store i64 %i.bx, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7replaceIPKwEERS7_SA_SA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit

bb.g:                                             ; preds = %._crit_edge.i
  %i.by = tail call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6insertIPKwEEPwSA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, ptr noundef %.016.lcssa.i, ptr noundef %i.o, ptr noundef null) ; 0 uses
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7replaceIPKwEERS7_SA_SA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7replaceIPKwEERS7_SA_SA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7replaceEPKwS9_S9_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.c = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %.idx = shl i64 %4, 2                           ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %3, i64 %.idx ; 3 uses
  %i.e = icmp ne ptr %1, %2
  %i.f = icmp ne i64 %4, 0
  %i.g = and i1 %i.e, %i.f
  br i1 %i.g, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.h = add i64 %i.c, -4
  %i.i = sub i64 %i.h, %i.b
  %i.j = lshr i64 %i.i, 2
  %i.k = add i64 %.idx, -4
  %i.l = lshr exact i64 %i.k, 2
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.l) ; 2 uses
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.m, 11
  br i1 %min.iters.check, label %.lr.ph.i.preheader16, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.preheader
  %i.o = sub i64 %i.c, %i.b
  %i.p = and i64 %i.o, 3
  %ident.check.not = icmp ne i64 %i.p, 0
  %i.q = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.q, -32
  %or.cond = or i1 %ident.check.not, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.n, 9223372036854775800      ; 3 uses
  %i.r = shl i64 %n.vec, 2                        ; 2 uses
  %i.s = getelementptr i8, ptr %1, i64 %i.r       ; 2 uses
  %i.t = getelementptr i8, ptr %3, i64 %i.r       ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.u = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.u  ; 2 uses
  %next.gep13 = getelementptr i8, ptr %3, i64 %i.u ; 2 uses
  %i.v = getelementptr i8, ptr %next.gep13, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep13, align 4, !tbaa !134
  %wide.load14 = load <4 x i32>, ptr %i.v, align 4, !tbaa !134
  %i.w = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !134
  store <4 x i32> %wide.load14, ptr %i.w, align 4, !tbaa !134
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !436

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader16

.lr.ph.i.preheader16:                             ; preds = %vector.scevcheck, %.lr.ph.i.preheader, %middle.block
  %.019.i.ph = phi ptr [ %1, %vector.scevcheck ], [ %1, %.lr.ph.i.preheader ], [ %i.s, %middle.block ]
  %.01618.i.ph = phi ptr [ %3, %vector.scevcheck ], [ %3, %.lr.ph.i.preheader ], [ %i.t, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader16, %.lr.ph.i
  %.019.i = phi ptr [ %i.z, %.lr.ph.i ], [ %.019.i.ph, %.lr.ph.i.preheader16 ] ; 2 uses
  %.01618.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %.01618.i.ph, %.lr.ph.i.preheader16 ] ; 2 uses
  %i.y = load i32, ptr %.01618.i, align 4, !tbaa !134
  store i32 %i.y, ptr %.019.i, align 4, !tbaa !134
  %i.z = getelementptr inbounds nuw i8, ptr %.019.i, i64 4 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4 ; 3 uses
  %i.ab = icmp ne ptr %i.z, %2
  %i.ac = icmp ne ptr %i.aa, %i.d
  %i.ad = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %i.ad, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !437

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %bb.a
  %.016.lcssa.i = phi ptr [ %3, %bb.a ], [ %i.t, %middle.block ], [ %i.aa, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %1, %bb.a ], [ %i.s, %middle.block ], [ %i.z, %.lr.ph.i ] ; 3 uses
  %i.ae = icmp eq ptr %.016.lcssa.i, %i.d
  br i1 %i.ae, label %bb.b, label %bb.g

bb.b:                                             ; preds = %._crit_edge.i
  %.not.i.i = icmp eq ptr %.0.lcssa.i, %2
  br i1 %.not.i.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7replaceIPKwEERS7_SA_SA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ag = ptrtoint ptr %.0.lcssa.i to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2
  %i.aj = load i8, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.ak = trunc i8 %i.aj to i1
  %i.al = lshr i8 %i.aj, 1
  %i.am = zext nneg i8 %i.al to i64
  %i.an = load i64, ptr %0, align 8               ; 3 uses
  %i.ao = lshr i64 %i.an, 1
  %i.ap = select i1 %i.ak, i64 %i.am, i64 %i.ao   ; 2 uses
  %i.aq = trunc i64 %i.an to i8
  %i.ar = trunc i64 %i.an to i1
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = select i1 %i.ar, ptr %i.as, ptr %i.au
  %i.aw = add nuw i64 %i.ap, 1                    ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.af, %i.ax
  %i.az = ashr exact i64 %i.ay, 2                 ; 2 uses
  %i.ba = icmp eq i64 %i.aw, %i.az
  br i1 %i.ba, label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bb = sub i64 %i.aw, %i.az
  %i.bc = tail call ptr @wmemmove(ptr noundef %.0.lcssa.i, ptr noundef %2, i64 noundef %i.bb) #26 ; 0 uses
  %.pre.i.i = load i8, ptr %0, align 8, !tbaa !109
  br label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i

_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i:       ; preds = %bb.d, %bb.c
  %i.bd = phi i8 [ %i.aq, %bb.c ], [ %.pre.i.i, %bb.d ]
  %i.be = sub i64 %i.ap, %i.ai                    ; 2 uses
  %i.bf = trunc i8 %i.bd to i1
  br i1 %i.bf, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i
  %i.bg = trunc i64 %i.be to i8
  %i.bh = shl i8 %i.bg, 1
  %i.bi = or disjoint i8 %i.bh, 1
  store i8 %i.bi, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7replaceIPKwEERS7_SA_SA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit

bb.f:                                             ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i
  %i.bj = load i64, ptr %0, align 8
  %i.bk = shl i64 %i.be, 1
  %i.bl = and i64 %i.bj, 1
  %i.bm = or disjoint i64 %i.bl, %i.bk
  store i64 %i.bm, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7replaceIPKwEERS7_SA_SA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit

bb.g:                                             ; preds = %._crit_edge.i
  %i.bn = tail call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6insertIPKwEEPwSA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, ptr noundef %.016.lcssa.i, ptr noundef %i.d, ptr noundef null) ; 0 uses
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7replaceIPKwEERS7_SA_SA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7replaceIPKwEERS7_SA_SA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7replaceEPKwS9_S9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.c = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.d = tail call noundef i64 @wcslen(ptr noundef %3) #29 ; 2 uses
  %.idx = shl i64 %i.d, 2                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %.idx ; 3 uses
  %i.f = icmp ne ptr %1, %2
  %i.g = icmp ne i64 %i.d, 0
  %i.h = and i1 %i.f, %i.g
  br i1 %i.h, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.i = add i64 %i.c, -4
  %i.j = sub i64 %i.i, %i.b
  %i.k = lshr i64 %i.j, 2
  %i.l = add i64 %.idx, -4
  %i.m = lshr exact i64 %i.l, 2
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.m) ; 2 uses
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.n, 11
  br i1 %min.iters.check, label %.lr.ph.i.preheader17, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.preheader
  %i.p = sub i64 %i.c, %i.b
  %i.q = and i64 %i.p, 3
  %ident.check.not = icmp ne i64 %i.q, 0
  %i.r = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.r, -32
  %or.cond = or i1 %ident.check.not, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader17, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.o, 9223372036854775800      ; 3 uses
  %i.s = shl i64 %n.vec, 2                        ; 2 uses
  %i.t = getelementptr i8, ptr %1, i64 %i.s       ; 2 uses
  %i.u = getelementptr i8, ptr %3, i64 %i.s       ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.v  ; 2 uses
  %next.gep14 = getelementptr i8, ptr %3, i64 %i.v ; 2 uses
  %i.w = getelementptr i8, ptr %next.gep14, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep14, align 4, !tbaa !134
  %wide.load15 = load <4 x i32>, ptr %i.w, align 4, !tbaa !134
  %i.x = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !134
  store <4 x i32> %wide.load15, ptr %i.x, align 4, !tbaa !134
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !438

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader17

.lr.ph.i.preheader17:                             ; preds = %vector.scevcheck, %.lr.ph.i.preheader, %middle.block
  %.019.i.ph = phi ptr [ %1, %vector.scevcheck ], [ %1, %.lr.ph.i.preheader ], [ %i.t, %middle.block ]
  %.01618.i.ph = phi ptr [ %3, %vector.scevcheck ], [ %3, %.lr.ph.i.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader17, %.lr.ph.i
  %.019.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %.019.i.ph, %.lr.ph.i.preheader17 ] ; 2 uses
  %.01618.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %.01618.i.ph, %.lr.ph.i.preheader17 ] ; 2 uses
  %i.z = load i32, ptr %.01618.i, align 4, !tbaa !134
  store i32 %i.z, ptr %.019.i, align 4, !tbaa !134
  %i.aa = getelementptr inbounds nuw i8, ptr %.019.i, i64 4 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4 ; 3 uses
  %i.ac = icmp ne ptr %i.aa, %2
  %i.ad = icmp ne ptr %i.ab, %i.e
  %i.ae = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %i.ae, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !439

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %bb.a
  %.016.lcssa.i = phi ptr [ %3, %bb.a ], [ %i.u, %middle.block ], [ %i.ab, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %1, %bb.a ], [ %i.t, %middle.block ], [ %i.aa, %.lr.ph.i ] ; 3 uses
  %i.af = icmp eq ptr %.016.lcssa.i, %i.e
  br i1 %i.af, label %bb.b, label %bb.g

bb.b:                                             ; preds = %._crit_edge.i
  %.not.i.i = icmp eq ptr %.0.lcssa.i, %2
  br i1 %.not.i.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7replaceIPKwEERS7_SA_SA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ah = ptrtoint ptr %.0.lcssa.i to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 2
  %i.ak = load i8, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.al = trunc i8 %i.ak to i1
  %i.am = lshr i8 %i.ak, 1
  %i.an = zext nneg i8 %i.am to i64
  %i.ao = load i64, ptr %0, align 8               ; 3 uses
  %i.ap = lshr i64 %i.ao, 1
  %i.aq = select i1 %i.al, i64 %i.an, i64 %i.ap   ; 2 uses
  %i.ar = trunc i64 %i.ao to i8
  %i.as = trunc i64 %i.ao to i1
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = select i1 %i.as, ptr %i.at, ptr %i.av
  %i.ax = add nuw i64 %i.aq, 1                    ; 2 uses
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ag, %i.ay
  %i.ba = ashr exact i64 %i.az, 2                 ; 2 uses
  %i.bb = icmp eq i64 %i.ax, %i.ba
  br i1 %i.bb, label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bc = sub i64 %i.ax, %i.ba
  %i.bd = tail call ptr @wmemmove(ptr noundef %.0.lcssa.i, ptr noundef %2, i64 noundef %i.bc) #26 ; 0 uses
  %.pre.i.i = load i8, ptr %0, align 8, !tbaa !109
  br label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i

_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i:       ; preds = %bb.d, %bb.c
  %i.be = phi i8 [ %i.ar, %bb.c ], [ %.pre.i.i, %bb.d ]
  %i.bf = sub i64 %i.aq, %i.aj                    ; 2 uses
  %i.bg = trunc i8 %i.be to i1
  br i1 %i.bg, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i
  %i.bh = trunc i64 %i.bf to i8
  %i.bi = shl i8 %i.bh, 1
  %i.bj = or disjoint i8 %i.bi, 1
  store i8 %i.bj, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7replaceIPKwEERS7_SA_SA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit

bb.f:                                             ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i
  %i.bk = load i64, ptr %0, align 8
  %i.bl = shl i64 %i.bf, 1
  %i.bm = and i64 %i.bk, 1
  %i.bn = or disjoint i64 %i.bm, %i.bl
  store i64 %i.bn, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7replaceIPKwEERS7_SA_SA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit

bb.g:                                             ; preds = %._crit_edge.i
  %i.bo = tail call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6insertIPKwEEPwSA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, ptr noundef %.016.lcssa.i, ptr noundef %i.e, ptr noundef null) ; 0 uses
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7replaceIPKwEERS7_SA_SA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7replaceIPKwEERS7_SA_SA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7replaceEPKwS9_St16initializer_listIwE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr %3, i64 %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.c = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %.idx = shl i64 %4, 2                           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 %.idx ; 3 uses
  %i.e = icmp ne ptr %1, %2
  %i.f = icmp ne i64 %4, 0
  %i.g = and i1 %i.e, %i.f
  br i1 %i.g, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.h = add i64 %i.c, -4
  %i.i = sub i64 %i.h, %i.b
  %i.j = lshr i64 %i.i, 2
  %i.k = add i64 %.idx, -4
  %i.l = lshr exact i64 %i.k, 2
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.l) ; 2 uses
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.m, 11
  br i1 %min.iters.check, label %.lr.ph.i.preheader15, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.preheader
  %i.o = sub i64 %i.c, %i.b
  %i.p = and i64 %i.o, 3
  %ident.check.not = icmp ne i64 %i.p, 0
  %i.q = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.q, -32
  %or.cond = select i1 %ident.check.not, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.n, 9223372036854775800      ; 3 uses
  %i.r = shl i64 %n.vec, 2                        ; 2 uses
  %i.s = getelementptr i8, ptr %1, i64 %i.r       ; 2 uses
  %i.t = getelementptr i8, ptr %3, i64 %i.r       ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.u = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.u  ; 2 uses
  %next.gep12 = getelementptr i8, ptr %3, i64 %i.u ; 2 uses
  %i.v = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4, !tbaa !134
  %wide.load13 = load <4 x i32>, ptr %i.v, align 4, !tbaa !134
  %i.w = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !134
  store <4 x i32> %wide.load13, ptr %i.w, align 4, !tbaa !134
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !440

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader15

.lr.ph.i.preheader15:                             ; preds = %vector.scevcheck, %.lr.ph.i.preheader, %middle.block
  %.019.i.ph = phi ptr [ %1, %vector.scevcheck ], [ %1, %.lr.ph.i.preheader ], [ %i.s, %middle.block ]
  %.01618.i.ph = phi ptr [ %3, %vector.scevcheck ], [ %3, %.lr.ph.i.preheader ], [ %i.t, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader15, %.lr.ph.i
  %.019.i = phi ptr [ %i.z, %.lr.ph.i ], [ %.019.i.ph, %.lr.ph.i.preheader15 ] ; 2 uses
  %.01618.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %.01618.i.ph, %.lr.ph.i.preheader15 ] ; 2 uses
  %i.y = load i32, ptr %.01618.i, align 4, !tbaa !134
  store i32 %i.y, ptr %.019.i, align 4, !tbaa !134
  %i.z = getelementptr inbounds nuw i8, ptr %.019.i, i64 4 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4 ; 3 uses
  %i.ab = icmp ne ptr %i.z, %2
  %i.ac = icmp ne ptr %i.aa, %i.d
  %i.ad = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %i.ad, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !441

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %bb.a
  %.016.lcssa.i = phi ptr [ %3, %bb.a ], [ %i.t, %middle.block ], [ %i.aa, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %1, %bb.a ], [ %i.s, %middle.block ], [ %i.z, %.lr.ph.i ] ; 3 uses
  %i.ae = icmp eq ptr %.016.lcssa.i, %i.d
  br i1 %i.ae, label %bb.b, label %bb.g

bb.b:                                             ; preds = %._crit_edge.i
  %.not.i.i = icmp eq ptr %.0.lcssa.i, %2
  br i1 %.not.i.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7replaceIPKwEERS7_SA_SA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ag = ptrtoint ptr %.0.lcssa.i to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2
  %i.aj = load i8, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.ak = trunc i8 %i.aj to i1
  %i.al = lshr i8 %i.aj, 1
  %i.am = zext nneg i8 %i.al to i64
  %i.an = load i64, ptr %0, align 8               ; 3 uses
  %i.ao = lshr i64 %i.an, 1
  %i.ap = select i1 %i.ak, i64 %i.am, i64 %i.ao   ; 2 uses
  %i.aq = trunc i64 %i.an to i8
  %i.ar = trunc i64 %i.an to i1
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = select i1 %i.ar, ptr %i.as, ptr %i.au
  %i.aw = add nuw i64 %i.ap, 1                    ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.af, %i.ax
  %i.az = ashr exact i64 %i.ay, 2                 ; 2 uses
  %i.ba = icmp eq i64 %i.aw, %i.az
  br i1 %i.ba, label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bb = sub i64 %i.aw, %i.az
  %i.bc = tail call ptr @wmemmove(ptr noundef %.0.lcssa.i, ptr noundef %2, i64 noundef %i.bb) #26 ; 0 uses
  %.pre.i.i = load i8, ptr %0, align 8, !tbaa !109
  br label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i

_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i:       ; preds = %bb.d, %bb.c
  %i.bd = phi i8 [ %i.aq, %bb.c ], [ %.pre.i.i, %bb.d ]
  %i.be = sub i64 %i.ap, %i.ai                    ; 2 uses
  %i.bf = trunc i8 %i.bd to i1
  br i1 %i.bf, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i
  %i.bg = trunc i64 %i.be to i8
  %i.bh = shl i8 %i.bg, 1
  %i.bi = or disjoint i8 %i.bh, 1
  store i8 %i.bi, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7replaceIPKwEERS7_SA_SA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit

bb.f:                                             ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i
  %i.bj = load i64, ptr %0, align 8
  %i.bk = shl i64 %i.be, 1
  %i.bl = and i64 %i.bj, 1
  %i.bm = or disjoint i64 %i.bl, %i.bk
  store i64 %i.bm, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7replaceIPKwEERS7_SA_SA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit

bb.g:                                             ; preds = %._crit_edge.i
  %i.bn = tail call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6insertIPKwEEPwSA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, ptr noundef %.016.lcssa.i, ptr noundef %i.d, ptr noundef null) ; 0 uses
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7replaceIPKwEERS7_SA_SA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7replaceIPKwEERS7_SA_SA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4copyEPwmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %3, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.9) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = lshr i64 %i.e, 1
  %i.k = and i64 %i.j, 127
  %i.l = select i1 %i.i, i64 %i.k, i64 %i.f
  %i.m = sub nsw i64 %i.l, %3
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.m) ; 3 uses
  %i.n = icmp eq i64 %.sroa.speculated, 0
  br i1 %i.n, label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %i.i, ptr %i.o, ptr %i.q
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %3
  %i.t = tail call ptr @wmemcpy(ptr noundef %1, ptr noundef %i.s, i64 noundef %.sroa.speculated) #26 ; 0 uses
  br label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit

_ZNSt11char_traitsIwE4copyEPwPKwm.exit:           ; preds = %bb.c, %bb.d
  ret i64 %.sroa.speculated
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4swapERS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::test::simple_allocator<wchar_t>, void>::short_t", align 8 ; 4 uses
  %2 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::test::simple_allocator<wchar_t>, void>::short_t", align 4 ; 4 uses
  %3 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::test::simple_allocator<wchar_t>, void>::short_t", align 4 ; 4 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !109
  %i.b = trunc i8 %i.a to i1
end_hunk_5
begin_hunk_6_@_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4swapERS7_:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !138
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !138
  %i.ak = load ptr, ptr %i.o, align 8, !tbaa !137
  store ptr %i.ak, ptr %i.ac, align 8, !tbaa !137
  %i.al = load i64, ptr %1, align 8
  %i.am = and i64 %i.al, 1
  %i.an = or disjoint i64 %i.am, %i.z
  store i64 %i.an, ptr %1, align 8
  store i64 %i.ab, ptr %i.ai, align 8, !tbaa !138
  store ptr %i.ad, ptr %i.o, align 8, !tbaa !137
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE9swap_dataERS6_.exit

_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE9swap_dataERS6_.exit: ; preds = %bb.g, %bb.f, %bb.d, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5c_strEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e
  ret ptr %i.f
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4dataEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e
  ret ptr %i.f
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findERKS7_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e       ; 2 uses
  %i.g = lshr i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = load i64, ptr %1, align 8
  %i.j = lshr i64 %i.i, 1
  %i.k = select i1 %i.b, i64 %i.h, i64 %i.j       ; 3 uses
  %i.l = add i64 %i.k, %2
  %i.m = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.n = trunc i8 %i.m to i1
  %i.o = lshr i8 %i.m, 1
  %i.p = zext nneg i8 %i.o to i64
  %i.q = load i64, ptr %0, align 8                ; 2 uses
  %i.r = lshr i64 %i.q, 1                         ; 3 uses
  %i.s = select i1 %i.n, i64 %i.p, i64 %i.r
  %i.t = icmp ugt i64 %i.l, %i.s
  br i1 %i.t, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEPKwmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = trunc i64 %i.q to i1                     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = select i1 %i.u, ptr %i.v, ptr %i.x       ; 3 uses
  %i.z = and i64 %i.r, 127
  %i.aa = select i1 %i.u, i64 %i.z, i64 %i.r
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.y, i64 %2 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.k, 2
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i
  %i.ae = icmp eq i64 %i.k, 0
  br i1 %i.ae, label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.f
  %.01829.i.i = phi ptr [ %i.am, %bb.f ], [ %i.ac, %bb.b ] ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.01524.i.i = phi ptr [ %i.f, %.lr.ph.i.i ], [ %i.ak, %bb.e ] ; 2 uses
  %.01623.i.i = phi ptr [ %.01829.i.i, %.lr.ph.i.i ], [ %i.aj, %bb.e ] ; 3 uses
  %i.af = icmp eq ptr %.01623.i.i, %i.ab
  br i1 %i.af, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEPKwmm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = load i32, ptr %.01623.i.i, align 4, !tbaa !134
  %i.ah = load i32, ptr %.01524.i.i, align 4, !tbaa !134
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.01623.i.i, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %.01524.i.i, i64 4 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.ad
  br i1 %i.al, label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i, label %bb.c, !llvm.loop !24

bb.f:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %.01829.i.i, i64 4
  br label %.lr.ph.i.i

_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i: ; preds = %bb.e, %bb.b
  %.1.ph.i.i = phi ptr [ %i.ac, %bb.b ], [ %.01829.i.i, %bb.e ] ; 2 uses
  %.not.i = icmp eq ptr %.1.ph.i.i, %i.ab
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEPKwmm.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i
  %i.an = ptrtoint ptr %.1.ph.i.i to i64
  %i.ao = ptrtoint ptr %i.y to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEPKwmm.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i, %bb.g
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.aq, %bb.g ], [ -1, %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i ], [ -1, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEPKwmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %3, %2
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g
  %i.i = icmp ugt i64 %i.a, %i.h
  br i1 %i.i, label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = trunc i64 %i.f to i1                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.j, ptr %i.k, ptr %i.m       ; 3 uses
  %i.o = lshr i64 %i.f, 1
  %i.p = and i64 %i.o, 127
  %i.q = select i1 %i.j, i64 %i.p, i64 %i.g
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.n, i64 %2 ; 2 uses
  %.idx = shl nsw i64 %3, 2
  %i.t = getelementptr inbounds i8, ptr %1, i64 %.idx
  %i.u = icmp eq i64 %3, 0
  br i1 %i.u, label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.f
  %.01829.i = phi ptr [ %i.ac, %bb.f ], [ %i.s, %bb.b ] ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %.01524.i = phi ptr [ %1, %.lr.ph.i ], [ %i.aa, %bb.e ] ; 2 uses
  %.01623.i = phi ptr [ %.01829.i, %.lr.ph.i ], [ %i.z, %bb.e ] ; 3 uses
  %i.v = icmp eq ptr %.01623.i, %i.r
  br i1 %i.v, label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %.01623.i, align 4, !tbaa !134
  %i.x = load i32, ptr %.01524.i, align 4, !tbaa !134
  %i.y = icmp eq i32 %i.w, %i.x
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.01623.i, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.01524.i, i64 4 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.t
  br i1 %i.ab, label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit, label %bb.c, !llvm.loop !24

bb.f:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.01829.i, i64 4
  br label %.lr.ph.i

_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit: ; preds = %bb.e, %bb.b
  %.1.ph.i = phi ptr [ %i.s, %bb.b ], [ %.01829.i, %bb.e ] ; 2 uses
  %.not = icmp eq ptr %.1.ph.i, %i.r
  br i1 %.not, label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit
  %i.ad = ptrtoint ptr %.1.ph.i to i64
  %i.ae = ptrtoint ptr %i.n to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 2
  br label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.thread

_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.thread: ; preds = %bb.c, %bb.g, %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.ag, %bb.g ], [ -1, %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit ], [ -1, %bb.c ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEPKwm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 3 uses
  %i.b = add i64 %i.a, %2
  %i.c = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.d = trunc i8 %i.c to i1
  %i.e = lshr i8 %i.c, 1
  %i.f = zext nneg i8 %i.e to i64
  %i.g = load i64, ptr %0, align 8                ; 2 uses
  %i.h = lshr i64 %i.g, 1                         ; 3 uses
  %i.i = select i1 %i.d, i64 %i.f, i64 %i.h
  %i.j = icmp ugt i64 %i.b, %i.i
  br i1 %i.j, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEPKwmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = trunc i64 %i.g to i1                     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = select i1 %i.k, ptr %i.l, ptr %i.n       ; 3 uses
  %i.p = and i64 %i.h, 127
  %i.q = select i1 %i.k, i64 %i.p, i64 %i.h
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.o, i64 %2 ; 2 uses
  %.idx.i = shl nsw i64 %i.a, 2
  %i.t = getelementptr inbounds i8, ptr %1, i64 %.idx.i
  %i.u = icmp eq i64 %i.a, 0
  br i1 %i.u, label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.f
  %.01829.i.i = phi ptr [ %i.ac, %bb.f ], [ %i.s, %bb.b ] ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.01524.i.i = phi ptr [ %1, %.lr.ph.i.i ], [ %i.aa, %bb.e ] ; 2 uses
  %.01623.i.i = phi ptr [ %.01829.i.i, %.lr.ph.i.i ], [ %i.z, %bb.e ] ; 3 uses
  %i.v = icmp eq ptr %.01623.i.i, %i.r
  br i1 %i.v, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEPKwmm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %.01623.i.i, align 4, !tbaa !134
  %i.x = load i32, ptr %.01524.i.i, align 4, !tbaa !134
  %i.y = icmp eq i32 %i.w, %i.x
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.01623.i.i, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.01524.i.i, i64 4 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.t
  br i1 %i.ab, label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i, label %bb.c, !llvm.loop !24

bb.f:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.01829.i.i, i64 4
  br label %.lr.ph.i.i

_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i: ; preds = %bb.e, %bb.b
  %.1.ph.i.i = phi ptr [ %i.s, %bb.b ], [ %.01829.i.i, %bb.e ] ; 2 uses
  %.not.i = icmp eq ptr %.1.ph.i.i, %i.r
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEPKwmm.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i
  %i.ad = ptrtoint ptr %.1.ph.i.i to i64
  %i.ae = ptrtoint ptr %i.o to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEPKwmm.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i, %bb.g
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.ag, %bb.g ], [ -1, %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i ], [ -1, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEwm(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %.not = icmp ult i64 %2, %i.g
  br i1 %.not, label %bb.b, label %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEEEET_SE_SE_T0_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.e to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.h, ptr %i.i, ptr %i.k       ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.g ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.0710.i = phi ptr [ %i.q, %bb.c ], [ %i.n, %bb.b ] ; 4 uses
  %i.o = load i32, ptr %.0710.i, align 4, !tbaa !134
  %i.p = icmp eq i32 %i.o, %1
  br i1 %i.p, label %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEEEET_SE_SE_T0_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %.0710.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.q, %i.m
  br i1 %.not.i, label %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEEEET_SE_SE_T0_.exit.thread, label %.lr.ph.i, !llvm.loop !25

_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEEEET_SE_SE_T0_.exit: ; preds = %.lr.ph.i
  %.not14 = icmp eq ptr %.0710.i, %i.m
  br i1 %.not14, label %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEEEET_SE_SE_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEEEET_SE_SE_T0_.exit
  %i.r = ptrtoint ptr %.0710.i to i64
  %i.s = ptrtoint ptr %i.l to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 2
  br label %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEEEET_SE_SE_T0_.exit.thread

_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEEEET_SE_SE_T0_.exit.thread: ; preds = %bb.c, %bb.d, %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEEEET_SE_SE_T0_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.u, %bb.d ], [ -1, %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEEEET_SE_SE_T0_.exit ], [ -1, %bb.c ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5rfindERKS7_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e       ; 2 uses
  %i.g = lshr i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = load i64, ptr %1, align 8
  %i.j = lshr i64 %i.i, 1
  %i.k = select i1 %i.b, i64 %i.h, i64 %i.j       ; 5 uses
  %i.l = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.m = trunc i8 %i.l to i1
  %i.n = lshr i8 %i.l, 1
  %i.o = zext nneg i8 %i.n to i64
  %i.p = load i64, ptr %0, align 8                ; 2 uses
  %i.q = lshr i64 %i.p, 1
  %i.r = select i1 %i.m, i64 %i.o, i64 %i.q       ; 3 uses
  %i.s = icmp samesign ugt i64 %i.k, %i.r
  br i1 %i.s, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5rfindEPKwmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = icmp eq i64 %i.k, 0
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.speculated17.i = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %2)
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5rfindEPKwmm.exit

bb.d:                                             ; preds = %bb.b
  %i.u = trunc i64 %i.p to i1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = select i1 %i.u, ptr %i.v, ptr %i.x       ; 3 uses
  %i.z = sub nuw nsw i64 %i.r, %i.k
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %2)
  %.idx2729.i = add nuw i64 %.sroa.speculated.i, %i.k
  %i.aa = shl i64 %.idx2729.i, 2                  ; 2 uses
  %i.ab = getelementptr i8, ptr %i.y, i64 %i.aa   ; 4 uses
  %.idx.i = shl nuw nsw i64 %i.k, 2
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i
  %.not41.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not41.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5rfindEPKwmm.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.d, %bb.h
  %.02343.i.i = phi ptr [ %.1.i.i, %bb.h ], [ %i.ab, %bb.d ] ; 2 uses
  %.02742.i.i = phi ptr [ %i.ak, %bb.h ], [ %i.y, %bb.d ] ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.preheader.i.i
  %.022.i.i = phi ptr [ %i.ai, %bb.g ], [ %.02742.i.i, %.preheader.i.i ] ; 2 uses
  %.021.i.i = phi ptr [ %i.ag, %bb.g ], [ %i.f, %.preheader.i.i ] ; 2 uses
  %i.ad = load i32, ptr %.022.i.i, align 4, !tbaa !134
  %i.ae = load i32, ptr %.021.i.i, align 4, !tbaa !134
  %i.af = icmp eq i32 %i.ad, %i.ae
  br i1 %i.af, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 4 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.ac
  br i1 %i.ah, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 4 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.ab
  br i1 %i.aj, label %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit.i, label %bb.e, !llvm.loop !26

bb.h:                                             ; preds = %bb.f, %bb.e
  %.1.i.i = phi ptr [ %.02343.i.i, %bb.e ], [ %.02742.i.i, %bb.f ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.02742.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, %i.ab
  br i1 %.not.i.i, label %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit.i, label %.preheader.i.i, !llvm.loop !27

_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit.i: ; preds = %bb.h, %bb.g
  %.3.i.i = phi ptr [ %.02343.i.i, %bb.g ], [ %.1.i.i, %bb.h ] ; 2 uses
  %.not.i = icmp eq ptr %.3.i.i, %i.ab
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5rfindEPKwmm.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit.i
  %i.al = ptrtoint ptr %.3.i.i to i64
  %i.am = ptrtoint ptr %i.y to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5rfindEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5rfindEPKwmm.exit: ; preds = %bb.a, %bb.c, %bb.d, %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit.i, %bb.i
  %.0.i = phi i64 [ -1, %bb.a ], [ %.sroa.speculated17.i, %bb.c ], [ %i.ao, %bb.i ], [ -1, %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit.i ], [ -1, %bb.d ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5rfindEPKwmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 3 uses
  %i.h = icmp ugt i64 %3, %i.g
  br i1 %i.h, label %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %3, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.speculated17 = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %2)
  br label %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.j = trunc i64 %i.e to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.j, ptr %i.k, ptr %i.m       ; 3 uses
  %i.o = sub nuw nsw i64 %i.g, %3
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %2)
  %.idx2729 = add nuw i64 %.sroa.speculated, %3
  %i.p = shl i64 %.idx2729, 2                     ; 2 uses
  %i.q = getelementptr i8, ptr %i.n, i64 %i.p     ; 4 uses
  %.idx = shl nuw nsw i64 %3, 2
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not41.i = icmp eq i64 %i.p, 0
  br i1 %.not41.i, label %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %bb.h
  %.02343.i = phi ptr [ %.1.i, %bb.h ], [ %i.q, %bb.d ] ; 2 uses
  %.02742.i = phi ptr [ %i.z, %bb.h ], [ %i.n, %bb.d ] ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.preheader.i
  %.022.i = phi ptr [ %i.x, %bb.g ], [ %.02742.i, %.preheader.i ] ; 2 uses
  %.021.i = phi ptr [ %i.v, %bb.g ], [ %1, %.preheader.i ] ; 2 uses
  %i.s = load i32, ptr %.022.i, align 4, !tbaa !134
  %i.t = load i32, ptr %.021.i, align 4, !tbaa !134
  %i.u = icmp eq i32 %i.s, %i.t
  br i1 %i.u, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.021.i, i64 4 ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.r
  br i1 %i.w, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.022.i, i64 4 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.q
  br i1 %i.y, label %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit, label %bb.e, !llvm.loop !26

bb.h:                                             ; preds = %bb.f, %bb.e
  %.1.i = phi ptr [ %.02343.i, %bb.e ], [ %.02742.i, %bb.f ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.02742.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.z, %i.q
  br i1 %.not.i, label %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit, label %.preheader.i, !llvm.loop !27

_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit: ; preds = %bb.h, %bb.g
  %.3.i = phi ptr [ %.02343.i, %bb.g ], [ %.1.i, %bb.h ] ; 2 uses
  %.not = icmp eq ptr %.3.i, %i.q
  br i1 %.not, label %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit
  %i.aa = ptrtoint ptr %.3.i to i64
  %i.ab = ptrtoint ptr %i.n to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 2
  br label %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit.thread

_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit.thread: ; preds = %bb.d, %bb.i, %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit, %bb.a, %bb.c
  %.0 = phi i64 [ -1, %bb.a ], [ %.sroa.speculated17, %bb.c ], [ %i.ad, %bb.i ], [ -1, %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit ], [ -1, %bb.d ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5rfindEPKwm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 5 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g       ; 3 uses
  %i.i = icmp ugt i64 %i.a, %i.h
  br i1 %i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5rfindEPKwmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %i.a, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.speculated17.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %2)
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5rfindEPKwmm.exit

bb.d:                                             ; preds = %bb.b
  %i.k = trunc i64 %i.f to i1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = select i1 %i.k, ptr %i.l, ptr %i.n       ; 3 uses
  %i.p = sub nuw nsw i64 %i.h, %i.a
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %2)
  %.idx2729.i = add nuw i64 %.sroa.speculated.i, %i.a
  %i.q = shl i64 %.idx2729.i, 2                   ; 2 uses
  %i.r = getelementptr i8, ptr %i.o, i64 %i.q     ; 4 uses
  %.idx.i = shl nuw nsw i64 %i.a, 2
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %.not41.i.i = icmp eq i64 %i.q, 0
  br i1 %.not41.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5rfindEPKwmm.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.d, %bb.h
  %.02343.i.i = phi ptr [ %.1.i.i, %bb.h ], [ %i.r, %bb.d ] ; 2 uses
  %.02742.i.i = phi ptr [ %i.aa, %bb.h ], [ %i.o, %bb.d ] ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.preheader.i.i
  %.022.i.i = phi ptr [ %i.y, %bb.g ], [ %.02742.i.i, %.preheader.i.i ] ; 2 uses
  %.021.i.i = phi ptr [ %i.w, %bb.g ], [ %1, %.preheader.i.i ] ; 2 uses
  %i.t = load i32, ptr %.022.i.i, align 4, !tbaa !134
  %i.u = load i32, ptr %.021.i.i, align 4, !tbaa !134
  %i.v = icmp eq i32 %i.t, %i.u
  br i1 %i.v, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 4 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.s
  br i1 %i.x, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 4 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.r
  br i1 %i.z, label %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit.i, label %bb.e, !llvm.loop !26

bb.h:                                             ; preds = %bb.f, %bb.e
  %.1.i.i = phi ptr [ %.02343.i.i, %bb.e ], [ %.02742.i.i, %bb.f ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.02742.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, %i.r
  br i1 %.not.i.i, label %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit.i, label %.preheader.i.i, !llvm.loop !27

_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit.i: ; preds = %bb.h, %bb.g
  %.3.i.i = phi ptr [ %.02343.i.i, %bb.g ], [ %.1.i.i, %bb.h ] ; 2 uses
  %.not.i = icmp eq ptr %.3.i.i, %i.r
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5rfindEPKwmm.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit.i
  %i.ab = ptrtoint ptr %.3.i.i to i64
  %i.ac = ptrtoint ptr %i.o to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5rfindEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5rfindEPKwmm.exit: ; preds = %bb.a, %bb.c, %bb.d, %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit.i, %bb.i
  %.0.i = phi i64 [ -1, %bb.a ], [ %.sroa.speculated17.i, %bb.c ], [ %i.ae, %bb.i ], [ -1, %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit.i ], [ -1, %bb.d ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5rfindEwm(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISA_EEEEEET_SI_SI_T0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 4 uses
  %i.n = add nsw i64 %i.g, -1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %2)
  %.idx = shl nuw nsw i64 %.sroa.speculated, 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.q = phi ptr [ %i.r, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -4 ; 4 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !134, !noalias !444
  %i.t = icmp eq i32 %i.s, %1
  br i1 %i.t, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISA_EEEEEET_SI_SI_T0_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq ptr %i.r, %i.m
  br i1 %.not.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISA_EEEEEET_SI_SI_T0_.exit.thread, label %.lr.ph.i, !llvm.loop !28

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISA_EEEEEET_SI_SI_T0_.exit: ; preds = %.lr.ph.i
  %.not = icmp eq ptr %i.q, %i.m
  br i1 %.not, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISA_EEEEEET_SI_SI_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISA_EEEEEET_SI_SI_T0_.exit
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.m to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2
  br label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISA_EEEEEET_SI_SI_T0_.exit.thread

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISA_EEEEEET_SI_SI_T0_.exit.thread: ; preds = %bb.c, %bb.d, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISA_EEEEEET_SI_SI_T0_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.x, %bb.d ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISA_EEEEEET_SI_SI_T0_.exit ], [ -1, %bb.c ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE13find_first_ofERKS7_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e       ; 2 uses
  %i.g = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.h = trunc i8 %i.g to i1
  %i.i = lshr i8 %i.g, 1
  %i.j = zext nneg i8 %i.i to i64
  %i.k = load i64, ptr %0, align 8                ; 2 uses
  %i.l = lshr i64 %i.k, 1
  %i.m = select i1 %i.h, i64 %i.j, i64 %i.l       ; 2 uses
  %.not.i = icmp ult i64 %2, %i.m
  br i1 %.not.i, label %bb.b, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE13find_first_ofEPKwmm.exit

bb.b:                                             ; preds = %bb.a
  %i.n = lshr i8 %i.a, 1
  %i.o = zext nneg i8 %i.n to i64
  %i.p = load i64, ptr %1, align 8
  %i.q = lshr i64 %i.p, 1
  %i.r = select i1 %i.b, i64 %i.o, i64 %i.q       ; 2 uses
  %i.s = trunc i64 %i.k to i1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = select i1 %i.s, ptr %i.t, ptr %i.v       ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.m ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.r, 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i
  %.not1622.i.i = icmp eq i64 %i.r, 0
  br i1 %.not1622.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE13find_first_ofEPKwmm.exit, label %.preheader.i.preheader.i

.preheader.i.preheader.i:                         ; preds = %bb.b
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %2
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.i.preheader.i
  %.01425.i.i = phi ptr [ %i.ae, %._crit_edge.i.i ], [ %i.z, %.preheader.i.preheader.i ] ; 4 uses
  %i.aa = load i32, ptr %.01425.i.i, align 4, !tbaa !134
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.01223.i.i, i64 4 ; 2 uses
  %.not16.i.i = icmp eq ptr %i.ab, %i.y
  br i1 %.not16.i.i, label %._crit_edge.i.i, label %bb.d, !llvm.loop !29

bb.d:                                             ; preds = %bb.c, %.preheader.i.i
  %.01223.i.i = phi ptr [ %i.f, %.preheader.i.i ], [ %i.ab, %bb.c ] ; 2 uses
  %i.ac = load i32, ptr %.01223.i.i, align 4, !tbaa !134
  %i.ad = icmp eq i32 %i.aa, %i.ac
  br i1 %i.ad, label %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i, label %bb.c

._crit_edge.i.i:                                  ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %.01425.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, %i.x
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE13find_first_ofEPKwmm.exit, label %.preheader.i.i, !llvm.loop !30

_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i: ; preds = %bb.d
  %.not17.i = icmp eq ptr %.01425.i.i, %i.x
  br i1 %.not17.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE13find_first_ofEPKwmm.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i
  %i.af = ptrtoint ptr %.01425.i.i to i64
  %i.ag = ptrtoint ptr %i.w to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE13find_first_ofEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE13find_first_ofEPKwmm.exit: ; preds = %._crit_edge.i.i, %bb.a, %bb.b, %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i, %bb.e
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.ai, %bb.e ], [ -1, %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i ], [ -1, %bb.b ], [ -1, %._crit_edge.i.i ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE13find_first_ofEPKwmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %.not = icmp ult i64 %2, %i.g
  br i1 %.not, label %bb.b, label %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.e to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.h, ptr %i.i, ptr %i.k       ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.g ; 2 uses
  %.idx = shl nsw i64 %3, 2
  %i.n = getelementptr inbounds i8, ptr %1, i64 %.idx
  %.not1622.i = icmp eq i64 %3, 0
  br i1 %.not1622.i, label %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.thread, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %2
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge.i
  %.01425.i = phi ptr [ %i.t, %._crit_edge.i ], [ %i.o, %.preheader.i.preheader ] ; 4 uses
  %i.p = load i32, ptr %.01425.i, align 4, !tbaa !134
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.01223.i, i64 4 ; 2 uses
  %.not16.i = icmp eq ptr %i.q, %i.n
  br i1 %.not16.i, label %._crit_edge.i, label %bb.d, !llvm.loop !29

bb.d:                                             ; preds = %bb.c, %.preheader.i
  %.01223.i = phi ptr [ %1, %.preheader.i ], [ %i.q, %bb.c ] ; 2 uses
  %i.r = load i32, ptr %.01223.i, align 4, !tbaa !134
  %i.s = icmp eq i32 %i.p, %i.r
  br i1 %i.s, label %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit, label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.01425.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.t, %i.m
  br i1 %.not.i, label %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.thread, label %.preheader.i, !llvm.loop !30

_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit: ; preds = %bb.d
  %.not17 = icmp eq ptr %.01425.i, %i.m
  br i1 %.not17, label %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit
  %i.u = ptrtoint ptr %.01425.i to i64
  %i.v = ptrtoint ptr %i.l to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2
  br label %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.thread

_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.thread: ; preds = %._crit_edge.i, %bb.b, %bb.e, %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.x, %bb.e ], [ -1, %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit ], [ -1, %bb.b ], [ -1, %._crit_edge.i ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE13find_first_ofEPKwm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %.not.i = icmp ult i64 %2, %i.g
  br i1 %.not.i, label %bb.b, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE13find_first_ofEPKwmm.exit

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 2 uses
  %i.i = trunc i64 %i.e to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.g ; 2 uses
  %.idx.i = shl nsw i64 %i.h, 2
  %i.o = getelementptr inbounds i8, ptr %1, i64 %.idx.i
  %.not1622.i.i = icmp eq i64 %i.h, 0
  br i1 %.not1622.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE13find_first_ofEPKwmm.exit, label %.preheader.i.preheader.i

.preheader.i.preheader.i:                         ; preds = %bb.b
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %2
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.i.preheader.i
  %.01425.i.i = phi ptr [ %i.u, %._crit_edge.i.i ], [ %i.p, %.preheader.i.preheader.i ] ; 4 uses
  %i.q = load i32, ptr %.01425.i.i, align 4, !tbaa !134
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.01223.i.i, i64 4 ; 2 uses
  %.not16.i.i = icmp eq ptr %i.r, %i.o
  br i1 %.not16.i.i, label %._crit_edge.i.i, label %bb.d, !llvm.loop !29

bb.d:                                             ; preds = %bb.c, %.preheader.i.i
  %.01223.i.i = phi ptr [ %1, %.preheader.i.i ], [ %i.r, %bb.c ] ; 2 uses
  %i.s = load i32, ptr %.01223.i.i, align 4, !tbaa !134
  %i.t = icmp eq i32 %i.q, %i.s
  br i1 %i.t, label %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i, label %bb.c

._crit_edge.i.i:                                  ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.01425.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.n
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE13find_first_ofEPKwmm.exit, label %.preheader.i.i, !llvm.loop !30

_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i: ; preds = %bb.d
  %.not17.i = icmp eq ptr %.01425.i.i, %i.n
  br i1 %.not17.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE13find_first_ofEPKwmm.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i
  %i.v = ptrtoint ptr %.01425.i.i to i64
  %i.w = ptrtoint ptr %i.m to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE13find_first_ofEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE13find_first_ofEPKwmm.exit: ; preds = %._crit_edge.i.i, %bb.a, %bb.b, %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i, %bb.e
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.y, %bb.e ], [ -1, %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i ], [ -1, %bb.b ], [ -1, %._crit_edge.i.i ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE13find_first_ofEwm(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %.not.i = icmp ult i64 %2, %i.g
  br i1 %.not.i, label %bb.b, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEwm.exit

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.e to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.h, ptr %i.i, ptr %i.k       ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.g ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.b
  %.0710.i.i = phi ptr [ %i.q, %bb.c ], [ %i.n, %bb.b ] ; 4 uses
  %i.o = load i32, ptr %.0710.i.i, align 4, !tbaa !134
  %i.p = icmp eq i32 %i.o, %1
  br i1 %i.p, label %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEEEET_SE_SE_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.0710.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, %i.m
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEwm.exit, label %.lr.ph.i.i, !llvm.loop !25

_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEEEET_SE_SE_T0_.exit.i: ; preds = %.lr.ph.i.i
  %.not14.i = icmp eq ptr %.0710.i.i, %i.m
  br i1 %.not14.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEwm.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEEEET_SE_SE_T0_.exit.i
  %i.r = ptrtoint ptr %.0710.i.i to i64
  %i.s = ptrtoint ptr %i.l to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEwm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEwm.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEEEET_SE_SE_T0_.exit.i, %bb.d
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.u, %bb.d ], [ -1, %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEEEET_SE_SE_T0_.exit.i ], [ -1, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE12find_last_ofERKS7_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e       ; 2 uses
  %i.g = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.h = trunc i8 %i.g to i1
  %i.i = lshr i8 %i.g, 1
  %i.j = zext nneg i8 %i.i to i64
  %i.k = load i64, ptr %0, align 8                ; 2 uses
  %i.l = lshr i64 %i.k, 1
  %i.m = select i1 %i.h, i64 %i.j, i64 %i.l       ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE12find_last_ofEPKwmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = lshr i8 %i.a, 1
  %i.p = zext nneg i8 %i.o to i64
  %i.q = load i64, ptr %1, align 8
  %i.r = lshr i64 %i.q, 1
  %i.s = select i1 %i.b, i64 %i.p, i64 %i.r       ; 2 uses
  %i.t = trunc i64 %i.k to i1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = select i1 %i.t, ptr %i.u, ptr %i.w       ; 4 uses
  %i.y = add nsw i64 %i.m, -1
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.y, i64 %2)
  %.idx.i = shl i64 %.sroa.speculated.i, 2
  %i.z = add i64 %.idx.i, 4                       ; 2 uses
  %.idx20.i = shl nuw nsw i64 %i.s, 2
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx20.i
  %.not714.i.i = icmp eq i64 %i.z, 0
  %.not12.i.i = icmp eq i64 %i.s, 0
  %or.cond.i = or i1 %.not714.i.i, %.not12.i.i
  br i1 %or.cond.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE12find_last_ofEPKwmm.exit, label %.preheader.i.preheader.i

.preheader.i.preheader.i:                         ; preds = %bb.b
  %i.ab = getelementptr i8, ptr %i.x, i64 %i.z
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.i.preheader.i
  %i.ac = phi ptr [ %i.ad, %._crit_edge.i.i ], [ %i.ab, %.preheader.i.preheader.i ] ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 4 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !134, !noalias !447
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.0513.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.af, %i.aa
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.d, !llvm.loop !31

bb.d:                                             ; preds = %bb.c, %.preheader.i.i
  %.0513.i.i = phi ptr [ %i.f, %.preheader.i.i ], [ %i.af, %bb.c ] ; 2 uses
  %i.ag = load i32, ptr %.0513.i.i, align 4, !tbaa !134, !noalias !447
  %i.ah = icmp eq i32 %i.ae, %i.ag
  br i1 %i.ah, label %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit.i, label %bb.c

._crit_edge.i.i:                                  ; preds = %bb.c
  %.not7.i.i = icmp eq ptr %i.ad, %i.x
  br i1 %.not7.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE12find_last_ofEPKwmm.exit, label %.preheader.i.i, !llvm.loop !32

_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit.i: ; preds = %bb.d
  %.not.i = icmp eq ptr %i.ac, %i.x
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE12find_last_ofEPKwmm.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit.i
  %i.ai = ptrtoint ptr %i.ad to i64
  %i.aj = ptrtoint ptr %i.x to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE12find_last_ofEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE12find_last_ofEPKwmm.exit: ; preds = %._crit_edge.i.i, %bb.a, %bb.b, %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit.i, %bb.e
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.al, %bb.e ], [ -1, %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit.i ], [ -1, %bb.b ], [ -1, %._crit_edge.i.i ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE12find_last_ofEPKwmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 4 uses
  %i.n = add nsw i64 %i.g, -1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %2)
  %.idx = shl i64 %.sroa.speculated, 2
  %i.o = add i64 %.idx, 4                         ; 2 uses
  %.idx20 = shl nsw i64 %3, 2
  %i.p = getelementptr inbounds i8, ptr %1, i64 %.idx20
  %.not714.i = icmp eq i64 %i.o, 0
  %.not12.i = icmp eq i64 %3, 0
  %or.cond = or i1 %.not714.i, %.not12.i
  br i1 %or.cond, label %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit.thread, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.b
  %i.q = getelementptr i8, ptr %i.m, i64 %i.o
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge.i
  %i.r = phi ptr [ %i.s, %._crit_edge.i ], [ %i.q, %.preheader.i.preheader ] ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -4 ; 4 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !134, !noalias !450
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.0513.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.u, %i.p
  br i1 %.not.i, label %._crit_edge.i, label %bb.d, !llvm.loop !31

bb.d:                                             ; preds = %bb.c, %.preheader.i
  %.0513.i = phi ptr [ %1, %.preheader.i ], [ %i.u, %bb.c ] ; 2 uses
  %i.v = load i32, ptr %.0513.i, align 4, !tbaa !134, !noalias !450
  %i.w = icmp eq i32 %i.t, %i.v
  br i1 %i.w, label %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit, label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  %.not7.i = icmp eq ptr %i.s, %i.m
  br i1 %.not7.i, label %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit.thread, label %.preheader.i, !llvm.loop !32

_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit: ; preds = %bb.d
  %.not = icmp eq ptr %i.r, %i.m
  br i1 %.not, label %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit
  %i.x = ptrtoint ptr %i.s to i64
  %i.y = ptrtoint ptr %i.m to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 2
  br label %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit.thread

_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit.thread: ; preds = %._crit_edge.i, %bb.b, %bb.e, %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.aa, %bb.e ], [ -1, %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit ], [ -1, %bb.b ], [ -1, %._crit_edge.i ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE12find_last_ofEPKwm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE12find_last_ofEPKwmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 2 uses
  %i.j = trunc i64 %i.e to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.j, ptr %i.k, ptr %i.m       ; 4 uses
  %i.o = add nsw i64 %i.g, -1
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %2)
  %.idx.i = shl i64 %.sroa.speculated.i, 2
  %i.p = add i64 %.idx.i, 4                       ; 2 uses
  %.idx20.i = shl nsw i64 %i.i, 2
  %i.q = getelementptr inbounds i8, ptr %1, i64 %.idx20.i
  %.not714.i.i = icmp eq i64 %i.p, 0
  %.not12.i.i = icmp eq i64 %i.i, 0
  %or.cond.i = or i1 %.not714.i.i, %.not12.i.i
  br i1 %or.cond.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE12find_last_ofEPKwmm.exit, label %.preheader.i.preheader.i

.preheader.i.preheader.i:                         ; preds = %bb.b
  %i.r = getelementptr i8, ptr %i.n, i64 %i.p
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.i.preheader.i
  %i.s = phi ptr [ %i.t, %._crit_edge.i.i ], [ %i.r, %.preheader.i.preheader.i ] ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4 ; 4 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !134, !noalias !453
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.0513.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, %i.q
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.d, !llvm.loop !31

bb.d:                                             ; preds = %bb.c, %.preheader.i.i
  %.0513.i.i = phi ptr [ %1, %.preheader.i.i ], [ %i.v, %bb.c ] ; 2 uses
  %i.w = load i32, ptr %.0513.i.i, align 4, !tbaa !134, !noalias !453
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit.i, label %bb.c

._crit_edge.i.i:                                  ; preds = %bb.c
  %.not7.i.i = icmp eq ptr %i.t, %i.n
  br i1 %.not7.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE12find_last_ofEPKwmm.exit, label %.preheader.i.i, !llvm.loop !32

_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit.i: ; preds = %bb.d
  %.not.i = icmp eq ptr %i.s, %i.n
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE12find_last_ofEPKwmm.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit.i
  %i.y = ptrtoint ptr %i.t to i64
  %i.z = ptrtoint ptr %i.n to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE12find_last_ofEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE12find_last_ofEPKwmm.exit: ; preds = %._crit_edge.i.i, %bb.a, %bb.b, %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit.i, %bb.e
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.ab, %bb.e ], [ -1, %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit.i ], [ -1, %bb.b ], [ -1, %._crit_edge.i.i ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE12find_last_ofEwm(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5rfindEwm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 4 uses
  %i.n = add nsw i64 %i.g, -1
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %2)
  %.idx.i = shl nuw nsw i64 %.sroa.speculated.i, 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.b
  %i.q = phi ptr [ %i.r, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -4 ; 4 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !134, !noalias !456
  %i.t = icmp eq i32 %i.s, %1
  br i1 %i.t, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISA_EEEEEET_SI_SI_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.r, %i.m
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5rfindEwm.exit, label %.lr.ph.i.i, !llvm.loop !28

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISA_EEEEEET_SI_SI_T0_.exit.i: ; preds = %.lr.ph.i.i
  %.not.i = icmp eq ptr %i.q, %i.m
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5rfindEwm.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISA_EEEEEET_SI_SI_T0_.exit.i
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.m to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5rfindEwm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5rfindEwm.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISA_EEEEEET_SI_SI_T0_.exit.i, %bb.d
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.x, %bb.d ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISA_EEEEEET_SI_SI_T0_.exit.i ], [ -1, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17find_first_not_ofERKS7_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e       ; 2 uses
  %i.g = lshr i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = load i64, ptr %1, align 8
  %i.j = lshr i64 %i.i, 1
  %i.k = select i1 %i.b, i64 %i.h, i64 %i.j       ; 2 uses
  %i.l = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.m = trunc i8 %i.l to i1
  %i.n = lshr i8 %i.l, 1
  %i.o = zext nneg i8 %i.n to i64
  %i.p = load i64, ptr %0, align 8                ; 2 uses
  %i.q = lshr i64 %i.p, 1                         ; 3 uses
  %i.r = select i1 %i.m, i64 %i.o, i64 %i.q
  %i.s = icmp ugt i64 %2, %i.r
  br i1 %i.s, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17find_first_not_ofEPKwmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = trunc i64 %i.p to i1                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = select i1 %i.t, ptr %i.u, ptr %i.w       ; 3 uses
  %i.y = and i64 %i.q, 127
  %i.z = select i1 %i.t, i64 %i.y, i64 %i.q       ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.z ; 4 uses
  %.idx.i = shl nuw nsw i64 %i.k, 2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i ; 2 uses
  %.not15.i.i = icmp eq i64 %2, %i.z
  br i1 %.not15.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %2 ; 2 uses
  %.not9.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not9.i.i.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %.lr.ph.i.i, %bb.d
  %.0716.i.i = phi ptr [ %i.ai, %bb.d ], [ %i.ac, %.lr.ph.i.i ] ; 4 uses
  %i.ad = load i32, ptr %.0716.i.i, align 4, !tbaa !134
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.preheader.i.i
  %.0710.i.i.i.i = phi ptr [ %i.ag, %bb.c ], [ %i.f, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.ae = load i32, ptr %.0710.i.i.i.i, align 4, !tbaa !134
  %i.af = icmp eq i32 %i.ae, %i.ad
  br i1 %i.af, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0710.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, %i.ab
  br i1 %.not.i.i.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !33

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ah = icmp eq ptr %.0710.i.i.i.i, %i.ab
  br i1 %i.ah, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0716.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, %i.aa
  br i1 %.not.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i, !llvm.loop !34

_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i: ; preds = %bb.d, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i, %bb.c, %.lr.ph.i.i, %bb.b
  %.0.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %i.aa, %bb.b ], [ %.0716.i.i, %bb.c ], [ %.0716.i.i, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i ], [ %i.aa, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %.0.i.i, %i.aa
  %i.aj = ptrtoint ptr %.0.i.i to i64
  %i.ak = ptrtoint ptr %i.x to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 2
  %i.an = select i1 %.not.i, i64 -1, i64 %i.am
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17find_first_not_ofEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17find_first_not_ofEPKwmm.exit: ; preds = %bb.a, %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i
  %.0.i = phi i64 [ %i.an, %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i ], [ -1, %bb.a ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17find_first_not_ofEPKwmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 3 uses
  %i.n = lshr i64 %i.e, 1
  %i.o = and i64 %i.n, 127
  %i.p = select i1 %i.i, i64 %i.o, i64 %i.f       ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.p ; 4 uses
  %.idx = shl nsw i64 %3, 2
  %i.r = getelementptr inbounds i8, ptr %1, i64 %.idx ; 2 uses
  %.not15.i = icmp eq i64 %2, %i.p
  br i1 %.not15.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %2 ; 2 uses
  %.not9.i.i.i = icmp eq i64 %3, 0
  br i1 %.not9.i.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %.lr.ph.i, %bb.d
  %.0716.i = phi ptr [ %i.y, %bb.d ], [ %i.s, %.lr.ph.i ] ; 4 uses
  %i.t = load i32, ptr %.0716.i, align 4, !tbaa !134
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.preheader.i
  %.0710.i.i.i = phi ptr [ %i.w, %bb.c ], [ %1, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %i.u = load i32, ptr %.0710.i.i.i, align 4, !tbaa !134
  %i.v = icmp eq i32 %i.u, %i.t
  br i1 %i.v, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0710.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, %i.r
  br i1 %.not.i.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !33

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i: ; preds = %.lr.ph.i.i.i
  %i.x = icmp eq ptr %.0710.i.i.i, %i.r
  br i1 %i.x, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0716.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.y, %i.q
  br i1 %.not.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit, label %.lr.ph.i.i.preheader.i, !llvm.loop !34

_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit: ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i, %bb.d, %bb.c, %bb.b, %.lr.ph.i
  %.0.i = phi ptr [ %i.s, %.lr.ph.i ], [ %i.q, %bb.b ], [ %.0716.i, %bb.c ], [ %.0716.i, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i ], [ %i.q, %bb.d ] ; 2 uses
  %.not = icmp eq ptr %.0.i, %i.q
  %i.z = ptrtoint ptr %.0.i to i64
  %i.aa = ptrtoint ptr %i.m to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 2
  %i.ad = select i1 %.not, i64 -1, i64 %i.ac
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit
  %.0 = phi i64 [ %i.ad, %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit ], [ -1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17find_first_not_ofEPKwm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 2 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 3 uses
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g
  %i.i = icmp ugt i64 %2, %i.h
  br i1 %i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17find_first_not_ofEPKwmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = trunc i64 %i.f to i1                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.j, ptr %i.k, ptr %i.m       ; 3 uses
  %i.o = and i64 %i.g, 127
  %i.p = select i1 %i.j, i64 %i.o, i64 %i.g       ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.p ; 4 uses
  %.idx.i = shl nsw i64 %i.a, 2
  %i.r = getelementptr inbounds i8, ptr %1, i64 %.idx.i ; 2 uses
  %.not15.i.i = icmp eq i64 %2, %i.p
  br i1 %.not15.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %2 ; 2 uses
  %.not9.i.i.i.i = icmp eq i64 %i.a, 0
  br i1 %.not9.i.i.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %.lr.ph.i.i, %bb.d
  %.0716.i.i = phi ptr [ %i.y, %bb.d ], [ %i.s, %.lr.ph.i.i ] ; 4 uses
  %i.t = load i32, ptr %.0716.i.i, align 4, !tbaa !134
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.preheader.i.i
  %.0710.i.i.i.i = phi ptr [ %i.w, %bb.c ], [ %1, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.u = load i32, ptr %.0710.i.i.i.i, align 4, !tbaa !134
  %i.v = icmp eq i32 %i.u, %i.t
  br i1 %i.v, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0710.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, %i.r
  br i1 %.not.i.i.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !33

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.x = icmp eq ptr %.0710.i.i.i.i, %i.r
  br i1 %i.x, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0716.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, %i.q
  br i1 %.not.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i, !llvm.loop !34

_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i: ; preds = %bb.d, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i, %bb.c, %.lr.ph.i.i, %bb.b
  %.0.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.q, %bb.b ], [ %.0716.i.i, %bb.c ], [ %.0716.i.i, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i ], [ %i.q, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %.0.i.i, %i.q
  %i.z = ptrtoint ptr %.0.i.i to i64
  %i.aa = ptrtoint ptr %i.n to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 2
  %i.ad = select i1 %.not.i, i64 -1, i64 %i.ac
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17find_first_not_ofEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17find_first_not_ofEPKwmm.exit: ; preds = %bb.a, %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i
  %.0.i = phi i64 [ %i.ad, %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i ], [ -1, %bb.a ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17find_first_not_ofEwm(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEEEEEET_SG_SG_T0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 3 uses
  %i.n = lshr i64 %i.e, 1
  %i.o = and i64 %i.n, 127
  %i.p = select i1 %i.i, i64 %i.o, i64 %i.f       ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.p ; 2 uses
  %.not10.i = icmp eq i64 %2, %i.p
  br i1 %.not10.i, label %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEEEEEET_SG_SG_T0_.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.c
  %.0711.i = phi ptr [ %i.t, %bb.c ], [ %i.r, %.lr.ph.i.preheader ] ; 4 uses
  %i.s = load i32, ptr %.0711.i, align 4, !tbaa !134
  %.not9.i = icmp eq i32 %i.s, %1
  br i1 %.not9.i, label %bb.c, label %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEEEEEET_SG_SG_T0_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %.0711.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.t, %i.q
  br i1 %.not.i, label %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEEEEEET_SG_SG_T0_.exit.thread, label %.lr.ph.i, !llvm.loop !457

_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEEEEEET_SG_SG_T0_.exit: ; preds = %.lr.ph.i
  %.not = icmp eq ptr %.0711.i, %i.q
  br i1 %.not, label %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEEEEEET_SG_SG_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEEEEEET_SG_SG_T0_.exit
  %i.u = ptrtoint ptr %.0711.i to i64
  %i.v = ptrtoint ptr %i.m to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2
  br label %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEEEEEET_SG_SG_T0_.exit.thread

_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEEEEEET_SG_SG_T0_.exit.thread: ; preds = %bb.c, %bb.b, %bb.d, %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEEEEEET_SG_SG_T0_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.x, %bb.d ], [ -1, %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEEEEEET_SG_SG_T0_.exit ], [ -1, %bb.b ], [ -1, %bb.c ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16find_last_not_ofERKS7_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e       ; 2 uses
  %i.g = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.h = trunc i8 %i.g to i1
  %i.i = lshr i8 %i.g, 1
  %i.j = zext nneg i8 %i.i to i64
  %i.k = load i64, ptr %0, align 8                ; 2 uses
  %i.l = lshr i64 %i.k, 1
  %i.m = select i1 %i.h, i64 %i.j, i64 %i.l       ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16find_last_not_ofEPKwmm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.o = lshr i8 %i.a, 1
  %i.p = zext nneg i8 %i.o to i64
  %i.q = load i64, ptr %1, align 8
  %i.r = lshr i64 %i.q, 1
  %i.s = select i1 %i.b, i64 %i.p, i64 %i.r       ; 2 uses
  %i.t = trunc i64 %i.k to i1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = select i1 %i.t, ptr %i.u, ptr %i.w       ; 4 uses
  %.idx18.i = shl nuw nsw i64 %i.s, 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx18.i ; 2 uses
  %i.z = add nsw i64 %i.m, -1
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %2)
  %.idx.i = shl nuw nsw i64 %.sroa.speculated.i, 2
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 2 uses
  %.not9.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not9.i.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %.lr.ph.i.i, %bb.c
  %i.ac = phi ptr [ %i.ad, %bb.c ], [ %i.ab, %.lr.ph.i.i ] ; 3 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !134, !noalias !460
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.preheader.i.i
  %.0710.i.i.i.i = phi ptr [ %i.ah, %bb.b ], [ %i.f, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.af = load i32, ptr %.0710.i.i.i.i, align 4, !tbaa !134, !noalias !460
  %i.ag = icmp eq i32 %i.af, %i.ae
  br i1 %i.ag, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0710.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, %i.y
  br i1 %.not.i.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !33

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ai = icmp eq ptr %.0710.i.i.i.i, %i.y
  br i1 %i.ai, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i
  %.not.i.i = icmp eq ptr %i.ad, %i.x
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16find_last_not_ofEPKwmm.exit, label %.lr.ph.i.i.preheader.i.i, !llvm.loop !35

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i: ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i, %bb.b, %.lr.ph.i.i
  %storemerge.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %i.ac, %bb.b ], [ %i.ac, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %storemerge.i.i, %i.x
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16find_last_not_ofEPKwmm.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i
  %i.aj = getelementptr inbounds i8, ptr %storemerge.i.i, i64 -4
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.x to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16find_last_not_ofEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16find_last_not_ofEPKwmm.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i, %bb.d
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.an, %bb.d ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i ], [ -1, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16find_last_not_ofEPKwmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 4 uses
  %.idx18 = shl nsw i64 %3, 2
  %i.n = getelementptr inbounds i8, ptr %1, i64 %.idx18 ; 2 uses
  %i.o = add nsw i64 %i.g, -1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %2)
  %.idx = shl nuw nsw i64 %.sroa.speculated, 2
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %.not9.i.i.i = icmp eq i64 %3, 0
  br i1 %.not9.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %.lr.ph.i, %bb.c
  %i.r = phi ptr [ %i.s, %bb.c ], [ %i.q, %.lr.ph.i ] ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -4 ; 3 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !134, !noalias !463
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.preheader.i
  %.0710.i.i.i = phi ptr [ %i.w, %bb.b ], [ %1, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %i.u = load i32, ptr %.0710.i.i.i, align 4, !tbaa !134, !noalias !463
  %i.v = icmp eq i32 %i.u, %i.t
  br i1 %i.v, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0710.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, %i.n
  br i1 %.not.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !33

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i: ; preds = %.lr.ph.i.i.i
  %i.x = icmp eq ptr %.0710.i.i.i, %i.n
  br i1 %i.x, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i
  %.not.i = icmp eq ptr %i.s, %i.m
  br i1 %.not.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.thread, label %.lr.ph.i.i.preheader.i, !llvm.loop !35

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit: ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i, %bb.b, %.lr.ph.i
  %storemerge.i = phi ptr [ %i.q, %.lr.ph.i ], [ %i.r, %bb.b ], [ %i.r, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i ] ; 2 uses
  %.not = icmp eq ptr %storemerge.i, %i.m
  br i1 %.not, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit
  %i.y = getelementptr inbounds i8, ptr %storemerge.i, i64 -4
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.m to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 2
  br label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.thread

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.thread: ; preds = %bb.c, %bb.d, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.ac, %bb.d ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit ], [ -1, %bb.c ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16find_last_not_ofEPKwm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16find_last_not_ofEPKwmm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.i = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 2 uses
  %i.j = trunc i64 %i.e to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.j, ptr %i.k, ptr %i.m       ; 4 uses
  %.idx18.i = shl nsw i64 %i.i, 2
  %i.o = getelementptr inbounds i8, ptr %1, i64 %.idx18.i ; 2 uses
  %i.p = add nsw i64 %i.g, -1
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %2)
  %.idx.i = shl nuw nsw i64 %.sroa.speculated.i, 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  %.not9.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not9.i.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %.lr.ph.i.i, %bb.c
  %i.s = phi ptr [ %i.t, %bb.c ], [ %i.r, %.lr.ph.i.i ] ; 3 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !134, !noalias !466
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.preheader.i.i
  %.0710.i.i.i.i = phi ptr [ %i.x, %bb.b ], [ %1, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.v = load i32, ptr %.0710.i.i.i.i, align 4, !tbaa !134, !noalias !466
  %i.w = icmp eq i32 %i.v, %i.u
  br i1 %i.w, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0710.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, %i.o
  br i1 %.not.i.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !33

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.y = icmp eq ptr %.0710.i.i.i.i, %i.o
  br i1 %i.y, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i
  %.not.i.i = icmp eq ptr %i.t, %i.n
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16find_last_not_ofEPKwmm.exit, label %.lr.ph.i.i.preheader.i.i, !llvm.loop !35

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i: ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i, %bb.b, %.lr.ph.i.i
  %storemerge.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.s, %bb.b ], [ %i.s, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %storemerge.i.i, %i.n
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16find_last_not_ofEPKwmm.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i
  %i.z = getelementptr inbounds i8, ptr %storemerge.i.i, i64 -4
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.n to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16find_last_not_ofEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16find_last_not_ofEPKwmm.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i, %bb.d
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.ad, %bb.d ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i ], [ -1, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16find_last_not_ofEwm(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISB_EEEEEEEET_SK_SK_T0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 4 uses
  %i.n = add nsw i64 %i.g, -1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %2)
  %.idx = shl nuw nsw i64 %.sroa.speculated, 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.q = phi ptr [ %i.r, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -4 ; 4 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !134, !noalias !470
  %.not1.i = icmp eq i32 %i.s, %1
  br i1 %.not1.i, label %bb.c, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISB_EEEEEEEET_SK_SK_T0_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq ptr %i.r, %i.m
  br i1 %.not.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISB_EEEEEEEET_SK_SK_T0_.exit.thread, label %.lr.ph.i, !llvm.loop !469

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISB_EEEEEEEET_SK_SK_T0_.exit: ; preds = %.lr.ph.i
  %.not = icmp eq ptr %i.q, %i.m
  br i1 %.not, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISB_EEEEEEEET_SK_SK_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISB_EEEEEEEET_SK_SK_T0_.exit
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.m to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 2
  br label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISB_EEEEEEEET_SK_SK_T0_.exit.thread

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISB_EEEEEEEET_SK_SK_T0_.exit.thread: ; preds = %bb.c, %bb.d, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISB_EEEEEEEET_SK_SK_T0_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.w, %bb.d ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISB_EEEEEEEET_SK_SK_T0_.exit ], [ -1, %bb.c ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6substrEmm(ptr dead_on_unwind noalias writable sret(%"class.boost::container::basic_string.8") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %1, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.10) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %2 ; 2 uses
  %i.o = lshr i64 %i.e, 1
  %i.p = and i64 %i.o, 127
  %i.q = select i1 %i.i, i64 %i.p, i64 %i.f
  %i.r = sub nsw i64 %i.q, %2
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.r)
  %i.s = getelementptr [4 x i8], ptr %i.n, i64 %.sroa.speculated
  store i8 1, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.t, align 4, !tbaa !134
  %i.u = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignIPwEERS7_T_SB_PNS_11move_detail22disable_if_convertibleISB_mvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.n, ptr noundef %i.s, ptr noundef null)
          to label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEC2IPwEET_SA_RKS6_PNS_11move_detail12disable_if_cIXsr3dtl14is_convertibleISA_mEE5valueENSD_3natEE4typeE.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #26
  resume { ptr, i32 } %i.v

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEC2IPwEET_SA_RKS6_PNS_11move_detail12disable_if_cIXsr3dtl14is_convertibleISA_mEE5valueENSD_3natEE4typeE.exit: ; preds = %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i32 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7compareERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.d = trunc i8 %i.c to i1                      ; 2 uses
  %i.e = lshr i8 %i.a, 1
  %i.f = zext nneg i8 %i.e to i64
  %i.g = load i64, ptr %0, align 8
  %i.h = lshr i64 %i.g, 1
  %i.i = select i1 %i.b, i64 %i.f, i64 %i.h       ; 2 uses
  %i.j = lshr i8 %i.c, 1
  %i.k = zext nneg i8 %i.j to i64
  %i.l = load i64, ptr %1, align 8
  %i.m = lshr i64 %i.l, 1
  %i.n = select i1 %i.d, i64 %i.k, i64 %i.m       ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.n) ; 2 uses
  %i.o = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %i.o, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i:     ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = select i1 %i.d, ptr %i.p, ptr %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = select i1 %i.b, ptr %i.t, ptr %i.v
  %i.x = tail call i32 @wmemcmp(ptr noundef %i.w, ptr noundef %i.s, i64 noundef %.sroa.speculated.i) #29 ; 2 uses
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9s_compareIPwS9_EEiT_SA_T0_SB_.exit

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i, %bb.a
  %i.y = tail call i32 @llvm.ucmp.i32.i64(i64 %i.i, i64 %i.n)
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9s_compareIPwS9_EEiT_SA_T0_SB_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9s_compareIPwS9_EEiT_SA_T0_SB_.exit: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i
  %i.z = phi i32 [ %i.y, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i ], [ %i.x, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i ]
  ret i32 %i.z
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i32 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7compareEmmRKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.11) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = load i8, ptr %3, align 8, !tbaa !109     ; 2 uses
  %i.k = trunc i8 %i.j to i1                      ; 2 uses
  %i.l = lshr i64 %i.e, 1
  %i.m = and i64 %i.l, 127
  %i.n = select i1 %i.i, i64 %i.m, i64 %i.f
  %i.o = sub nsw i64 %i.n, %1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.o)
  %i.p = lshr i8 %i.j, 1
  %i.q = zext nneg i8 %i.p to i64
  %i.r = load i64, ptr %3, align 8
  %i.s = lshr i64 %i.r, 1
  %i.t = select i1 %i.k, i64 %i.q, i64 %i.s       ; 2 uses
  %.idx = shl i64 %.sroa.speculated, 2
  %i.u = ashr exact i64 %.idx, 2                  ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.t) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %i.v, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i:     ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = select i1 %i.k, ptr %i.w, ptr %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = select i1 %i.i, ptr %i.aa, ptr %i.ac
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %1
  %i.af = tail call i32 @wmemcmp(ptr noundef %i.ae, ptr noundef %i.z, i64 noundef %.sroa.speculated.i) #29 ; 2 uses
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9s_compareIPwS9_EEiT_SA_T0_SB_.exit

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i, %bb.c
  %i.ag = tail call i32 @llvm.ucmp.i32.i64(i64 %i.u, i64 %i.t)
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9s_compareIPwS9_EEiT_SA_T0_SB_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9s_compareIPwS9_EEiT_SA_T0_SB_.exit: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i
  %i.ah = phi i32 [ %i.ag, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i ], [ %i.af, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i ]
  ret i32 %i.ah
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i32 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7compareEmmRKS7_mm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %3, align 8, !tbaa !109     ; 2 uses
  %i.j = trunc i8 %i.i to i1
  %i.k = lshr i8 %i.i, 1
  %i.l = zext nneg i8 %i.k to i64
  %i.m = load i64, ptr %3, align 8                ; 3 uses
  %i.n = lshr i64 %i.m, 1                         ; 2 uses
  %i.o = select i1 %i.j, i64 %i.l, i64 %i.n
  %i.p = icmp ugt i64 %4, %i.o
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.11) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.q = trunc i64 %i.e to i1                     ; 2 uses
  %i.r = trunc i64 %i.m to i1                     ; 2 uses
  %i.s = lshr i64 %i.e, 1
  %i.t = and i64 %i.s, 127
  %i.u = select i1 %i.q, i64 %i.t, i64 %i.f
  %i.v = sub nsw i64 %i.u, %1
  %.sroa.speculated16 = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.v) ; 2 uses
  %i.w = lshr i64 %i.m, 1
  %i.x = and i64 %i.w, 127
  %i.y = select i1 %i.r, i64 %i.x, i64 %i.n
  %i.z = sub nsw i64 %i.y, %4
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %5, i64 %i.z) ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16, i64 %.sroa.speculated) ; 2 uses
  %i.aa = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %i.aa, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i:     ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = select i1 %i.r, ptr %i.ab, ptr %i.ad
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = select i1 %i.q, ptr %i.ag, ptr %i.ai
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %1
  %i.al = tail call i32 @wmemcmp(ptr noundef %i.ak, ptr noundef %i.af, i64 noundef %.sroa.speculated.i) #29 ; 2 uses
  %.not.i = icmp eq i32 %i.al, 0
  br i1 %.not.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9s_compareIPwS9_EEiT_SA_T0_SB_.exit

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i, %bb.d
  %i.am = tail call i32 @llvm.ucmp.i32.i64(i64 %.sroa.speculated16, i64 %.sroa.speculated)
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9s_compareIPwS9_EEiT_SA_T0_SB_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9s_compareIPwS9_EEiT_SA_T0_SB_.exit: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i
  %i.an = phi i32 [ %i.am, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i ], [ %i.al, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i ]
  ret i32 %i.an
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i32 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7compareEPKw(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i:     ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.b, ptr %i.j, ptr %i.l
  %i.n = tail call i32 @wmemcmp(ptr noundef %i.m, ptr noundef %1, i64 noundef %.sroa.speculated.i) #29 ; 2 uses
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9s_compareIPKwSA_EEiT_SB_T0_SC_.exit

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i, %bb.a
  %i.o = tail call i32 @llvm.ucmp.i32.i64(i64 %i.g, i64 %i.h)
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9s_compareIPKwSA_EEiT_SB_T0_SC_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9s_compareIPKwSA_EEiT_SB_T0_SC_.exit: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i
  %i.p = phi i32 [ %i.o, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i ], [ %i.n, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i ]
  ret i32 %i.p
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i32 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7compareEmmPKwm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.11) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = lshr i64 %i.e, 1
  %i.k = and i64 %i.j, 127
  %i.l = select i1 %i.i, i64 %i.k, i64 %i.f
  %i.m = sub nsw i64 %i.l, %1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.m)
  %.idx = shl i64 %.sroa.speculated, 2
  %i.n = ashr exact i64 %.idx, 2                  ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %4) ; 2 uses
  %i.o = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %i.o, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i:     ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = select i1 %i.i, ptr %i.p, ptr %i.r
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %1
  %i.u = tail call i32 @wmemcmp(ptr noundef %i.t, ptr noundef %3, i64 noundef %.sroa.speculated.i) #29 ; 2 uses
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9s_compareIPwPKwEEiT_SC_T0_SD_.exit

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i, %bb.c
  %i.v = tail call i32 @llvm.ucmp.i32.i64(i64 %i.n, i64 %4)
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9s_compareIPwPKwEEiT_SC_T0_SD_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9s_compareIPwPKwEEiT_SC_T0_SD_.exit: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i
  %i.w = phi i32 [ %i.v, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i ], [ %i.u, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i ]
  ret i32 %i.w
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i32 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7compareEmmPKw(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @wcslen(ptr noundef %3) #29 ; 2 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 3 uses
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g
  %i.i = icmp ugt i64 %1, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.11) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = trunc i64 %i.f to i1                     ; 2 uses
  %i.k = and i64 %i.g, 127
  %i.l = select i1 %i.j, i64 %i.k, i64 %i.g
  %i.m = sub nsw i64 %i.l, %1
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.m)
  %.idx.i = shl i64 %.sroa.speculated.i, 2
  %i.n = ashr exact i64 %.idx.i, 2                ; 2 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.a) ; 2 uses
  %i.o = icmp eq i64 %.sroa.speculated.i.i, 0
  br i1 %i.o, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i:   ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = select i1 %i.j, ptr %i.p, ptr %i.r
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %1
  %i.u = tail call i32 @wmemcmp(ptr noundef %i.t, ptr noundef %3, i64 noundef %.sroa.speculated.i.i) #29 ; 2 uses
  %.not.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7compareEmmPKwm.exit

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i, %bb.c
  %i.v = tail call i32 @llvm.ucmp.i32.i64(i64 %i.n, i64 %i.a)
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7compareEmmPKwm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7compareEmmPKwm.exit: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i
  %i.w = phi i32 [ %i.v, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i ], [ %i.u, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i ]
  ret i32 %i.w
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE8containsEw(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %.not.i.not = icmp eq i64 %i.g, 0
  br i1 %.not.i.not, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEwm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.e to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.h, ptr %i.i, ptr %i.k       ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.g ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.b
  %.0710.i.i = phi ptr [ %i.p, %bb.c ], [ %i.l, %bb.b ] ; 4 uses
  %i.n = load i32, ptr %.0710.i.i, align 4, !tbaa !134
  %i.o = icmp eq i32 %i.n, %1
  br i1 %i.o, label %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEEEET_SE_SE_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.0710.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, %i.m
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEwm.exit, label %.lr.ph.i.i, !llvm.loop !25

_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEEEET_SE_SE_T0_.exit.i: ; preds = %.lr.ph.i.i
  %.not14.i = icmp eq ptr %.0710.i.i, %i.m
  br i1 %.not14.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEwm.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEEEET_SE_SE_T0_.exit.i
  %i.q = ptrtoint ptr %.0710.i.i to i64
  %i.r = ptrtoint ptr %i.l to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = icmp ne i64 %i.s, -4
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEwm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEwm.exit: ; preds = %bb.c, %bb.d, %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEEEET_SE_SE_T0_.exit.i, %bb.a
  %.0.i = phi i1 [ false, %bb.a ], [ %i.t, %bb.d ], [ false, %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEEEET_SE_SE_T0_.exit.i ], [ false, %bb.c ]
  ret i1 %.0.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE8containsEPKw(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 3 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 3 uses
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g
  %i.i = icmp ugt i64 %i.a, %i.h
  br i1 %i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEPKwm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = trunc i64 %i.f to i1                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.j, ptr %i.k, ptr %i.m       ; 4 uses
  %i.o = and i64 %i.g, 127
  %i.p = select i1 %i.j, i64 %i.o, i64 %i.g
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.p ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.a, 2
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i.i
  %i.s = icmp eq i64 %i.a, 0
  br i1 %i.s, label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.f
  %.01829.i.i.i = phi ptr [ %i.aa, %bb.f ], [ %i.n, %bb.b ] ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i.i
  %.01524.i.i.i = phi ptr [ %1, %.lr.ph.i.i.i ], [ %i.y, %bb.e ] ; 2 uses
  %.01623.i.i.i = phi ptr [ %.01829.i.i.i, %.lr.ph.i.i.i ], [ %i.x, %bb.e ] ; 3 uses
  %i.t = icmp eq ptr %.01623.i.i.i, %i.q
  br i1 %i.t, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEPKwm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load i32, ptr %.01623.i.i.i, align 4, !tbaa !134
  %i.v = load i32, ptr %.01524.i.i.i, align 4, !tbaa !134
  %i.w = icmp eq i32 %i.u, %i.v
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %.01623.i.i.i, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %.01524.i.i.i, i64 4 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.r
  br i1 %i.z, label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i.i, label %bb.c, !llvm.loop !24

bb.f:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.01829.i.i.i, i64 4
  br label %.lr.ph.i.i.i

_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i.i: ; preds = %bb.e, %bb.b
  %.1.ph.i.i.i = phi ptr [ %i.n, %bb.b ], [ %.01829.i.i.i, %bb.e ] ; 2 uses
  %.not.i.i = icmp eq ptr %.1.ph.i.i.i, %i.q
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEPKwm.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i.i
  %i.ab = ptrtoint ptr %.1.ph.i.i.i to i64
  %i.ac = ptrtoint ptr %i.n to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = icmp ne i64 %i.ad, -4
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEPKwm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEPKwm.exit: ; preds = %bb.c, %bb.g, %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i.i, %bb.a
  %.0.i.i = phi i1 [ false, %bb.a ], [ %i.ae, %bb.g ], [ false, %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i.i ], [ false, %bb.c ]
  ret i1 %.0.i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE11starts_withEw(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.e to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.h, ptr %i.i, ptr %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !134
  %i.n = icmp eq i32 %i.m, %1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = phi i1 [ false, %bb.a ], [ %i.n, %bb.b ]
  ret i1 %i.o
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE11starts_withEPKw(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 3 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g
  %.not = icmp ult i64 %i.h, %i.a
  br i1 %.not, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.a, 0
  br i1 %i.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = trunc i64 %i.f to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.j, ptr %i.k, ptr %i.m
  %i.o = tail call i32 @wmemcmp(ptr noundef %i.n, ptr noundef %1, i64 noundef %i.a) #29
  %i.p = icmp eq i32 %i.o, 0
  br label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit:       ; preds = %bb.c, %bb.b, %bb.a
  %i.q = phi i1 [ false, %bb.a ], [ %i.p, %bb.c ], [ true, %bb.b ]
  ret i1 %i.q
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9ends_withEw(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.e to i1                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.h, ptr %i.i, ptr %i.k
  %i.m = lshr i64 %i.e, 1
  %i.n = and i64 %i.m, 127
  %i.o = select i1 %i.h, i64 %i.n, i64 %i.f
  %i.p = getelementptr [4 x i8], ptr %i.l, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !134
  %i.s = icmp eq i32 %i.r, %1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = phi i1 [ false, %bb.a ], [ %i.s, %bb.b ]
  ret i1 %i.t
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9ends_withEPKw(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 4 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g       ; 2 uses
  %.not = icmp ult i64 %i.h, %i.a
  br i1 %.not, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.a, 0
  br i1 %i.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = trunc i64 %i.f to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.j, ptr %i.k, ptr %i.m
  %i.o = sub nuw nsw i64 %i.h, %i.a
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.o
  %i.q = tail call i32 @wmemcmp(ptr noundef %i.p, ptr noundef %1, i64 noundef %i.a) #29
  %i.r = icmp eq i32 %i.q, 0
  br label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit:       ; preds = %bb.c, %bb.b, %bb.a
  %i.s = phi i1 [ false, %bb.a ], [ %i.r, %bb.c ], [ true, %bb.b ]
  ret i1 %i.s
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16priv_move_assignEOS7_NS_11move_detail5bool_ILb0EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16priv_move_assignEOS7_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9priv_copyEPKwS9_Pw(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64
  %i.c = ptrtoint ptr %1 to i64
  %i.d = sub i64 %i.c, %i.b
  %i.e = ashr exact i64 %i.d, 2
  %i.f = tail call ptr @wmemcpy(ptr noundef %2, ptr noundef %0, i64 noundef %i.e) #26 ; 0 uses
  br label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit

_ZNSt11char_traitsIwE4copyEPwPKwm.exit:           ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvEC2ENS5_9reserve_tEmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat($_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvEC5ENS5_9reserve_tEmRKS4_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  store i8 1, ptr %0, align 8
  tail call void @_ZN5boost9container3dtl17basic_string_baseISaIcEvE22allocate_initial_blockEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.a)
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = lshr i8 %i.b, 1
  %i.f = zext nneg i8 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load i64, ptr %0, align 8
  %i.k = lshr i64 %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k
  %i.m = select i1 %i.c, ptr %i.g, ptr %i.l
  store i8 0, ptr %i.m, align 1, !tbaa !109
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE21priv_terminate_stringEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = lshr i8 %i.a, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load i64, ptr %0, align 8
  %i.j = lshr i64 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j
  %i.l = select i1 %i.b, ptr %i.f, ptr %i.k
  store i8 0, ptr %i.l, align 1, !tbaa !109
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl17basic_string_baseISaIcEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %_ZN5boost9container3dtl17basic_string_baseISaIcEvE10deallocateEPcm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !146  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !147  ; 2 uses
  %i.g = icmp ne ptr %i.d, null
  %i.h = icmp ugt i64 %i.f, 23
  %or.cond.i = and i1 %i.g, %i.h
  br i1 %or.cond.i, label %bb.c, label %_ZN5boost9container3dtl17basic_string_baseISaIcEvE10deallocateEPcm.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.f) #30
  br label %_ZN5boost9container3dtl17basic_string_baseISaIcEvE10deallocateEPcm.exit

_ZN5boost9container3dtl17basic_string_baseISaIcEvE10deallocateEPcm.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat($_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvEC5Ev) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.a, align 1, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat($_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvEC5ERKS4_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.a, align 1, !tbaa !109
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat($_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvEC5ERKS5_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i8 0, ptr %i.a, align 1, !tbaa !109
  %i.c = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.d = trunc i8 %i.c to i1                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = select i1 %i.d, ptr %i.e, ptr %i.g       ; 3 uses
  %i.i = lshr i8 %i.c, 1
  %i.j = zext nneg i8 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.j
  %i.l = load i64, ptr %1, align 8
  %i.m = lshr i64 %i.l, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.m
  %i.o = select i1 %i.d, ptr %i.k, ptr %i.n       ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.h to i64
  %i.r = sub i64 %i.p, %i.q                       ; 5 uses
  %i.s = invoke noundef zeroext i1 @_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.r)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.a
  br i1 %i.s, label %bb.b, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE7reserveEm.exit.i

bb.b:                                             ; preds = %.noexc
  %i.t = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.u = trunc i8 %i.t to i1
  %i.v = lshr i8 %i.t, 1
  %i.w = zext nneg i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.w
  %i.y = load ptr, ptr %i.b, align 8
  %i.z = load i64, ptr %0, align 8
  %i.aa = lshr i64 %i.z, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa
  %i.ac = select i1 %i.u, ptr %i.x, ptr %i.ab
  store i8 0, ptr %i.ac, align 1, !tbaa !109
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE7reserveEm.exit.i

_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE7reserveEm.exit.i: ; preds = %bb.b, %.noexc
  %i.ad = load i8, ptr %0, align 8, !tbaa !109
  %i.ae = trunc i8 %i.ad to i1
  %i.af = load ptr, ptr %i.b, align 8
  %i.ag = select i1 %i.ae, ptr %i.a, ptr %i.af    ; 2 uses
  %i.ah = icmp eq ptr %i.o, %i.h
  br i1 %i.ah, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE7reserveEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %i.h, i64 %i.r, i1 false)
  br label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i:         ; preds = %bb.c, %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE7reserveEm.exit.i
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 %i.r
  store i8 0, ptr %i.ai, align 1, !tbaa !109
  %i.aj = load i8, ptr %0, align 8, !tbaa !109
  %i.ak = trunc i8 %i.aj to i1
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i
  %i.al = trunc i64 %i.r to i8
  %i.am = shl i8 %i.al, 1
  %i.an = or disjoint i8 %i.am, 1
  store i8 %i.an, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE6assignEPKcS7_.exit

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i
  %i.ao = load i64, ptr %0, align 8
  %i.ap = shl i64 %i.r, 1
  %i.aq = and i64 %i.ao, 1
  %i.ar = or disjoint i64 %i.aq, %i.ap
  store i64 %i.ar, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE6assignEPKcS7_.exit

_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE6assignEPKcS7_.exit: ; preds = %bb.e, %bb.d
  ret void

bb.f:                                             ; preds = %bb.a
  %i.as = landingpad { ptr, i32 }
          cleanup
end_hunk_6
begin_hunk_7_@_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvEC2EPKwm:bb.a
bb.b:                                             ; preds = %.noexc
  %i.d = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.e = trunc i8 %i.d to i1
  %i.f = lshr i8 %i.d, 1
  %i.g = zext nneg i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.g
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = load i64, ptr %0, align 8
  %i.k = lshr i64 %i.j, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.k
  %i.m = select i1 %i.e, ptr %i.h, ptr %i.l
  store i32 0, ptr %i.m, align 4, !tbaa !134
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i.i

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i.i: ; preds = %bb.b, %.noexc
  %i.n = load i8, ptr %0, align 8, !tbaa !109
  %i.o = trunc i8 %i.n to i1
  %i.p = load ptr, ptr %i.b, align 8
  %i.q = select i1 %i.o, ptr %i.a, ptr %i.p       ; 2 uses
  %i.r = icmp eq i64 %2, 0
  br i1 %i.r, label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i.i
  %i.s = tail call ptr @wmemcpy(ptr noundef %i.q, ptr noundef %1, i64 noundef %2) #26 ; 0 uses
  br label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i.i

_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i.i:       ; preds = %bb.c, %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i.i
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 %.idx.i
  store i32 0, ptr %i.t, align 4, !tbaa !134
  %i.u = load i8, ptr %0, align 8, !tbaa !109
  %i.v = trunc i8 %i.u to i1
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i.i
  %i.w = trunc i64 %2 to i8
  %i.x = shl i8 %i.w, 1
  %i.y = or disjoint i8 %i.x, 1
  store i8 %i.y, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignEPKwm.exit

bb.e:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i.i
  %i.z = load i64, ptr %0, align 8
  %i.aa = shl nsw i64 %2, 1
  %i.ab = and i64 %i.z, 1
  %i.ac = or disjoint i64 %i.ab, %i.aa
  store i64 %i.ac, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignEPKwm.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignEPKwm.exit: ; preds = %bb.e, %bb.d
  ret void

bb.f:                                             ; preds = %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl17basic_string_baseISaIwEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #26
  resume { ptr, i32 } %i.ad
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignEPKwm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.idx = shl nsw i64 %2, 2
  %i.a = tail call noundef zeroext i1 @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2)
  br i1 %i.a, label %bb.b, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = lshr i8 %i.b, 1
  %i.f = zext nneg i8 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load i64, ptr %0, align 8
  %i.k = lshr i64 %i.j, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.k
  %i.m = select i1 %i.c, ptr %i.g, ptr %i.l
  store i32 0, ptr %i.m, align 4, !tbaa !134
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i: ; preds = %bb.b, %bb.a
  %i.n = load i8, ptr %0, align 8, !tbaa !109
  %i.o = trunc i8 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = select i1 %i.o, ptr %i.p, ptr %i.r       ; 2 uses
  %i.t = icmp eq i64 %2, 0
  br i1 %i.t, label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i
  %i.u = tail call ptr @wmemcpy(ptr noundef %i.s, ptr noundef %1, i64 noundef %2) #26 ; 0 uses
  br label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i

_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i:         ; preds = %bb.c, %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i
  %i.v = getelementptr inbounds i8, ptr %i.s, i64 %.idx
  store i32 0, ptr %i.v, align 4, !tbaa !134
  %i.w = load i8, ptr %0, align 8, !tbaa !109
  %i.x = trunc i8 %i.w to i1
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i
  %i.y = trunc i64 %2 to i8
  %i.z = shl i8 %i.y, 1
  %i.aa = or disjoint i8 %i.z, 1
  store i8 %i.aa, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignEPKwS7_.exit

bb.e:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i
  %i.ab = load i64, ptr %0, align 8
  %i.ac = shl nsw i64 %2, 1
  %i.ad = and i64 %i.ab, 1
  %i.ae = or disjoint i64 %i.ad, %i.ac
  store i64 %i.ae, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignEPKwS7_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignEPKwS7_.exit: ; preds = %bb.d, %bb.e
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvEC2EPKwmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #0 comdat($_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvEC5EPKwmRKS4_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !134
  %.idx.i = shl nsw i64 %2, 2
  %i.c = invoke noundef zeroext i1 @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.a
  br i1 %i.c, label %bb.b, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i.i

bb.b:                                             ; preds = %.noexc
  %i.d = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.e = trunc i8 %i.d to i1
  %i.f = lshr i8 %i.d, 1
  %i.g = zext nneg i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.g
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = load i64, ptr %0, align 8
  %i.k = lshr i64 %i.j, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.k
  %i.m = select i1 %i.e, ptr %i.h, ptr %i.l
  store i32 0, ptr %i.m, align 4, !tbaa !134
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i.i

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i.i: ; preds = %bb.b, %.noexc
  %i.n = load i8, ptr %0, align 8, !tbaa !109
  %i.o = trunc i8 %i.n to i1
  %i.p = load ptr, ptr %i.b, align 8
  %i.q = select i1 %i.o, ptr %i.a, ptr %i.p       ; 2 uses
  %i.r = icmp eq i64 %2, 0
  br i1 %i.r, label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i.i
  %i.s = tail call ptr @wmemcpy(ptr noundef %i.q, ptr noundef %1, i64 noundef %2) #26 ; 0 uses
  br label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i.i

_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i.i:       ; preds = %bb.c, %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i.i
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 %.idx.i
  store i32 0, ptr %i.t, align 4, !tbaa !134
  %i.u = load i8, ptr %0, align 8, !tbaa !109
  %i.v = trunc i8 %i.u to i1
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i.i
  %i.w = trunc i64 %2 to i8
  %i.x = shl i8 %i.w, 1
  %i.y = or disjoint i8 %i.x, 1
  store i8 %i.y, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignEPKwm.exit

bb.e:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i.i
  %i.z = load i64, ptr %0, align 8
  %i.aa = shl nsw i64 %2, 1
  %i.ab = and i64 %i.z, 1
  %i.ac = or disjoint i64 %i.ab, %i.aa
  store i64 %i.ac, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignEPKwm.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignEPKwm.exit: ; preds = %bb.e, %bb.d
  ret void

bb.f:                                             ; preds = %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl17basic_string_baseISaIwEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #26
  resume { ptr, i32 } %i.ad
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvEC2EPKw(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 comdat($_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvEC5EPKw) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !134
  %i.c = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 6 uses
  %.idx = shl nuw nsw i64 %i.c, 2
  %i.d = invoke noundef zeroext i1 @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.a
  br i1 %i.d, label %bb.b, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i

bb.b:                                             ; preds = %.noexc
  %i.e = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.f = trunc i8 %i.e to i1
  %i.g = lshr i8 %i.e, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.h
  %i.j = load ptr, ptr %i.b, align 8
  %i.k = load i64, ptr %0, align 8
  %i.l = lshr i64 %i.k, 1
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.l
  %i.n = select i1 %i.f, ptr %i.i, ptr %i.m
  store i32 0, ptr %i.n, align 4, !tbaa !134
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i: ; preds = %bb.b, %.noexc
  %i.o = load i8, ptr %0, align 8, !tbaa !109
  %i.p = trunc i8 %i.o to i1
  %i.q = load ptr, ptr %i.b, align 8
  %i.r = select i1 %i.p, ptr %i.a, ptr %i.q       ; 2 uses
  %i.s = icmp eq i64 %i.c, 0
  br i1 %i.s, label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i
  %i.t = tail call ptr @wmemcpy(ptr noundef %i.r, ptr noundef %1, i64 noundef %i.c) #26 ; 0 uses
  br label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i

_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i:         ; preds = %bb.c, %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx
  store i32 0, ptr %i.u, align 4, !tbaa !134
  %i.v = load i8, ptr %0, align 8, !tbaa !109
  %i.w = trunc i8 %i.v to i1
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i
  %i.x = trunc i64 %i.c to i8
  %i.y = shl i8 %i.x, 1
  %i.z = or disjoint i8 %i.y, 1
  store i8 %i.z, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignEPKwS7_.exit

bb.e:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i
  %i.aa = load i64, ptr %0, align 8
  %i.ab = shl nuw nsw i64 %i.c, 1
  %i.ac = and i64 %i.aa, 1
  %i.ad = or disjoint i64 %i.ac, %i.ab
  store i64 %i.ad, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignEPKwS7_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignEPKwS7_.exit: ; preds = %bb.e, %bb.d
  ret void

bb.f:                                             ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl17basic_string_baseISaIwEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #26
  resume { ptr, i32 } %i.ae
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvEC2EPKwRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat($_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvEC5EPKwRKS4_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !134
  %i.c = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 6 uses
  %.idx = shl nuw nsw i64 %i.c, 2
  %i.d = invoke noundef zeroext i1 @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.a
  br i1 %i.d, label %bb.b, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i

bb.b:                                             ; preds = %.noexc
  %i.e = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.f = trunc i8 %i.e to i1
  %i.g = lshr i8 %i.e, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.h
  %i.j = load ptr, ptr %i.b, align 8
  %i.k = load i64, ptr %0, align 8
  %i.l = lshr i64 %i.k, 1
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.l
  %i.n = select i1 %i.f, ptr %i.i, ptr %i.m
  store i32 0, ptr %i.n, align 4, !tbaa !134
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i: ; preds = %bb.b, %.noexc
  %i.o = load i8, ptr %0, align 8, !tbaa !109
  %i.p = trunc i8 %i.o to i1
  %i.q = load ptr, ptr %i.b, align 8
  %i.r = select i1 %i.p, ptr %i.a, ptr %i.q       ; 2 uses
  %i.s = icmp eq i64 %i.c, 0
  br i1 %i.s, label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i
  %i.t = tail call ptr @wmemcpy(ptr noundef %i.r, ptr noundef %1, i64 noundef %i.c) #26 ; 0 uses
  br label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i

_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i:         ; preds = %bb.c, %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx
  store i32 0, ptr %i.u, align 4, !tbaa !134
  %i.v = load i8, ptr %0, align 8, !tbaa !109
  %i.w = trunc i8 %i.v to i1
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i
  %i.x = trunc i64 %i.c to i8
  %i.y = shl i8 %i.x, 1
  %i.z = or disjoint i8 %i.y, 1
  store i8 %i.z, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignEPKwS7_.exit

bb.e:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i
  %i.aa = load i64, ptr %0, align 8
  %i.ab = shl nuw nsw i64 %i.c, 1
  %i.ac = and i64 %i.aa, 1
  %i.ad = or disjoint i64 %i.ac, %i.ab
  store i64 %i.ad, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignEPKwS7_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignEPKwS7_.exit: ; preds = %bb.e, %bb.d
  ret void

bb.f:                                             ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl17basic_string_baseISaIwEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #26
  resume { ptr, i32 } %i.ae
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvEC2Emw(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i32 noundef signext %2) unnamed_addr #0 comdat($_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvEC5Emw) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  store i8 1, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.b, align 4, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %2, ptr %i.a, align 4, !tbaa !134
  %i.c = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignINS0_17constant_iteratorIwEEEERS5_T_SA_PNS_11move_detail22disable_if_convertibleISA_mvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.a, i64 %1, ptr null, i64 0, ptr noundef null)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost9container3dtl17basic_string_baseISaIwEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #26
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignEmw(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i32 noundef signext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !134
  %i.b = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignINS0_17constant_iteratorIwEEEERS5_T_SA_PNS_11move_detail22disable_if_convertibleISA_mvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.a, i64 %1, ptr null, i64 0, ptr noundef null)
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvEC2EmwRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i32 noundef signext %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #0 comdat($_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvEC5EmwRKS4_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  store i8 1, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.b, align 4, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %2, ptr %i.a, align 4, !tbaa !134
  %i.c = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignINS0_17constant_iteratorIwEEEERS5_T_SA_PNS_11move_detail22disable_if_convertibleISA_mvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.a, i64 %1, ptr null, i64 0, ptr noundef null)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost9container3dtl17basic_string_baseISaIwEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #26
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvEC2EmNS0_14default_init_tE(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 comdat($_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvEC5EmNS0_14default_init_tE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  store i8 1, ptr %0, align 8
  tail call void @_ZN5boost9container3dtl17basic_string_baseISaIwEvE22allocate_initial_blockEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.a)
  %i.b = load i8, ptr %0, align 8, !tbaa !109
  %i.c = trunc i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = trunc i64 %1 to i8
  %i.e = shl i8 %i.d, 1
  %i.f = or disjoint i8 %i.e, 1                   ; 2 uses
  store i8 %i.f, ptr %0, align 8
  %.pre = load i64, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8
  %i.h = shl i64 %1, 1
  %i.i = and i64 %i.g, 1
  %i.j = or disjoint i64 %i.i, %i.h               ; 3 uses
  store i64 %i.j, ptr %0, align 8
  %i.k = trunc i64 %i.j to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.l = phi i64 [ %.pre, %bb.b ], [ %i.j, %bb.c ]
  %i.m = phi i8 [ %i.f, %bb.b ], [ %i.k, %bb.c ]  ; 2 uses
  %i.n = trunc i8 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = lshr i8 %i.m, 1
  %i.q = zext nneg i8 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = lshr i64 %i.l, 1
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.u
  %i.w = select i1 %i.n, ptr %i.r, ptr %i.v
  store i32 0, ptr %i.w, align 4, !tbaa !134
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvEC2EmNS0_14default_init_tERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat($_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvEC5EmNS0_14default_init_tERKS4_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  store i8 1, ptr %0, align 8
  tail call void @_ZN5boost9container3dtl17basic_string_baseISaIwEvE22allocate_initial_blockEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.a)
  %i.b = load i8, ptr %0, align 8, !tbaa !109
  %i.c = trunc i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = trunc i64 %1 to i8
  %i.e = shl i8 %i.d, 1
  %i.f = or disjoint i8 %i.e, 1                   ; 2 uses
  store i8 %i.f, ptr %0, align 8
  %.pre = load i64, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8
  %i.h = shl i64 %1, 1
  %i.i = and i64 %i.g, 1
  %i.j = or disjoint i64 %i.i, %i.h               ; 3 uses
  store i64 %i.j, ptr %0, align 8
  %i.k = trunc i64 %i.j to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.l = phi i64 [ %.pre, %bb.b ], [ %i.j, %bb.c ]
  %i.m = phi i8 [ %i.f, %bb.b ], [ %i.k, %bb.c ]  ; 2 uses
  %i.n = trunc i8 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = lshr i8 %i.m, 1
  %i.q = zext nneg i8 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = lshr i64 %i.l, 1
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.u
  %i.w = select i1 %i.n, ptr %i.r, ptr %i.v
  store i32 0, ptr %i.w, align 4, !tbaa !134
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvEC2ESt16initializer_listIwERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #0 comdat($_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvEC5ESt16initializer_listIwERKS4_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !134
  %.idx = shl nuw nsw i64 %2, 2
  %i.c = invoke noundef zeroext i1 @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.a
  br i1 %i.c, label %bb.b, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i

bb.b:                                             ; preds = %.noexc
  %i.d = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.e = trunc i8 %i.d to i1
  %i.f = lshr i8 %i.d, 1
  %i.g = zext nneg i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.g
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = load i64, ptr %0, align 8
  %i.k = lshr i64 %i.j, 1
end_hunk_7
begin_hunk_8_@_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvEaSERKS5_:bb.a
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  %i.q = ashr exact i64 %i.p, 2                   ; 3 uses
  %i.r = tail call noundef zeroext i1 @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.q)
  br i1 %i.r, label %bb.c, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.s = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.t = trunc i8 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = lshr i8 %i.s, 1
  %i.w = zext nneg i8 %i.v to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load i64, ptr %0, align 8
  %i.ab = lshr i64 %i.aa, 1
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ab
  %i.ad = select i1 %i.t, ptr %i.x, ptr %i.ac
  store i32 0, ptr %i.ad, align 4, !tbaa !134
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i: ; preds = %bb.c, %bb.b
  %i.ae = load i8, ptr %0, align 8, !tbaa !109
  %i.af = trunc i8 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = select i1 %i.af, ptr %i.ag, ptr %i.ai   ; 2 uses
  %i.ak = icmp eq ptr %i.m, %i.f
  br i1 %i.ak, label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i
  %i.al = tail call ptr @wmemcpy(ptr noundef %i.aj, ptr noundef %i.f, i64 noundef %i.q) #26 ; 0 uses
  br label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i

_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i:         ; preds = %bb.d, %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i
  %i.am = getelementptr inbounds i8, ptr %i.aj, i64 %i.p
  store i32 0, ptr %i.am, align 4, !tbaa !134
  %i.an = load i8, ptr %0, align 8, !tbaa !109
  %i.ao = trunc i8 %i.an to i1
  br i1 %i.ao, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i
  %i.ap = trunc i64 %i.q to i8
  %i.aq = shl i8 %i.ap, 1
  %i.ar = or disjoint i8 %i.aq, 1
  store i8 %i.ar, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignEPKwS7_.exit

bb.f:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i
  %i.as = load i64, ptr %0, align 8
  %i.at = ashr exact i64 %i.p, 1
  %i.au = and i64 %i.as, 1
  %i.av = or disjoint i64 %i.au, %i.at
  store i64 %i.av, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignEPKwS7_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignEPKwS7_.exit: ; preds = %bb.f, %bb.e, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.c, label %bb.b, !prof !121

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16priv_move_assignEOS5_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0

bb.d:                                             ; preds = %bb.b
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #28
  unreachable
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16priv_move_assignEOS5_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i = alloca %"struct.boost::container::dtl::basic_string_base<std::allocator<wchar_t>, void>::short_t", align 8 ; 4 uses
  %2 = alloca %"struct.boost::container::dtl::basic_string_base<std::allocator<wchar_t>, void>::short_t", align 4 ; 4 uses
  %3 = alloca %"struct.boost::container::dtl::basic_string_base<std::allocator<wchar_t>, void>::short_t", align 4 ; 4 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !109
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5clearEv.exit.thread, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5clearEv.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5clearEv.exit.thread: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !134
  store i8 1, ptr %0, align 8
  %i.d = load i8, ptr %1, align 8, !tbaa !109
  %i.e = trunc i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.d

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5clearEv.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !149
  store i32 0, ptr %i.g, align 4, !tbaa !134
  %i.h = load i64, ptr %0, align 8                ; 2 uses
  %i.i = and i64 %i.h, 1
  store i64 %i.i, ptr %0, align 8
  %i.j = trunc i64 %i.h to i1
  %i.k = load i8, ptr %1, align 8, !tbaa !109
  %i.l = trunc i8 %i.k to i1                      ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5clearEv.exit
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5clearEv.exit.thread, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !110
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, i64 24, i1 false), !tbaa.struct !110
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %_ZN5boost9container3dtl17basic_string_baseISaIwEvE9swap_dataERS4_.exit

bb.d:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5clearEv.exit.thread, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !139
  %i.m = load i64, ptr %0, align 8
  %i.n = and i64 %i.m, -2
  store i64 %i.n, ptr %0, align 8
  %i.o = load i64, ptr %1, align 8
  %i.p = and i64 %i.o, -2
  store i64 %i.p, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !150
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !150
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !149
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.u, ptr %i.v, align 8, !tbaa !149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !139
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZN5boost9container3dtl17basic_string_baseISaIwEvE9swap_dataERS4_.exit

bb.e:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5clearEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !139
  %i.x = load i64, ptr %1, align 8
  %i.y = and i64 %i.x, -2
  store i64 %i.y, ptr %1, align 8
  %i.z = load i64, ptr %0, align 8
  %i.aa = and i64 %i.z, -2
  store i64 %i.aa, ptr %1, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !150
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !150
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !149
  store ptr %i.af, ptr %i.w, align 8, !tbaa !149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !139
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN5boost9container3dtl17basic_string_baseISaIwEvE9swap_dataERS4_.exit

bb.g:                                             ; preds = %bb.e
  %i.ag = load i64, ptr %0, align 8               ; 2 uses
  %i.ah = and i64 %i.ag, -2
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !150
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !149
  %i.am = load i64, ptr %1, align 8
  %i.an = and i64 %i.am, -2
  %i.ao = and i64 %i.ag, 1
  %i.ap = or disjoint i64 %i.an, %i.ao
  store i64 %i.ap, ptr %0, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !150
  store i64 %i.ar, ptr %i.ai, align 8, !tbaa !150
  %i.as = load ptr, ptr %i.w, align 8, !tbaa !149
  store ptr %i.as, ptr %i.ak, align 8, !tbaa !149
  %i.at = load i64, ptr %1, align 8
  %i.au = and i64 %i.at, 1
  %i.av = or disjoint i64 %i.au, %i.ah
  store i64 %i.av, ptr %1, align 8
  store i64 %i.aj, ptr %i.aq, align 8, !tbaa !150
  store ptr %i.al, ptr %i.w, align 8, !tbaa !149
  br label %_ZN5boost9container3dtl17basic_string_baseISaIwEvE9swap_dataERS4_.exit

_ZN5boost9container3dtl17basic_string_baseISaIwEvE9swap_dataERS4_.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvEaSEPKw(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 6 uses
  %.idx.i = shl nuw nsw i64 %i.a, 2
  %i.b = tail call noundef zeroext i1 @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.a)
  br i1 %i.b, label %bb.b, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.d = trunc i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = lshr i8 %i.c, 1
  %i.g = zext nneg i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load i64, ptr %0, align 8
  %i.l = lshr i64 %i.k, 1
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.l
  %i.n = select i1 %i.d, ptr %i.h, ptr %i.m
  store i32 0, ptr %i.n, align 4, !tbaa !134
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i.i

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i.i: ; preds = %bb.b, %bb.a
  %i.o = load i8, ptr %0, align 8, !tbaa !109
  %i.p = trunc i8 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = select i1 %i.p, ptr %i.q, ptr %i.s       ; 2 uses
  %i.u = icmp eq i64 %i.a, 0
  br i1 %i.u, label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i.i
  %i.v = tail call ptr @wmemcpy(ptr noundef %i.t, ptr noundef %1, i64 noundef %i.a) #26 ; 0 uses
  br label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i.i

_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i.i:       ; preds = %bb.c, %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i
  store i32 0, ptr %i.w, align 4, !tbaa !134
  %i.x = load i8, ptr %0, align 8, !tbaa !109
  %i.y = trunc i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i.i
  %i.z = trunc i64 %i.a to i8
  %i.aa = shl i8 %i.z, 1
  %i.ab = or disjoint i8 %i.aa, 1
  store i8 %i.ab, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignEPKw.exit

bb.e:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i.i
  %i.ac = load i64, ptr %0, align 8
  %i.ad = shl nuw nsw i64 %i.a, 1
  %i.ae = and i64 %i.ac, 1
  %i.af = or disjoint i64 %i.ae, %i.ad
  store i64 %i.af, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignEPKw.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignEPKw.exit: ; preds = %bb.d, %bb.e
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignEPKw(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 6 uses
  %.idx = shl nuw nsw i64 %i.a, 2
  %i.b = tail call noundef zeroext i1 @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.a)
  br i1 %i.b, label %bb.b, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.d = trunc i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = lshr i8 %i.c, 1
  %i.g = zext nneg i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load i64, ptr %0, align 8
  %i.l = lshr i64 %i.k, 1
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.l
  %i.n = select i1 %i.d, ptr %i.h, ptr %i.m
  store i32 0, ptr %i.n, align 4, !tbaa !134
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i: ; preds = %bb.b, %bb.a
  %i.o = load i8, ptr %0, align 8, !tbaa !109
  %i.p = trunc i8 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = select i1 %i.p, ptr %i.q, ptr %i.s       ; 2 uses
  %i.u = icmp eq i64 %i.a, 0
  br i1 %i.u, label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i
  %i.v = tail call ptr @wmemcpy(ptr noundef %i.t, ptr noundef %1, i64 noundef %i.a) #26 ; 0 uses
  br label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i

_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i:         ; preds = %bb.c, %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx
  store i32 0, ptr %i.w, align 4, !tbaa !134
  %i.x = load i8, ptr %0, align 8, !tbaa !109
  %i.y = trunc i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i
  %i.z = trunc i64 %i.a to i8
  %i.aa = shl i8 %i.z, 1
  %i.ab = or disjoint i8 %i.aa, 1
  store i8 %i.ab, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignEPKwS7_.exit

bb.e:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i
  %i.ac = load i64, ptr %0, align 8
  %i.ad = shl nuw nsw i64 %i.a, 1
  %i.ae = and i64 %i.ac, 1
  %i.af = or disjoint i64 %i.ae, %i.ad
  store i64 %i.af, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignEPKwS7_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignEPKwS7_.exit: ; preds = %bb.d, %bb.e
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvEaSEw(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %1, ptr %i.a, align 4, !tbaa !134
  %i.b = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignINS0_17constant_iteratorIwEEEERS5_T_SA_PNS_11move_detail22disable_if_convertibleISA_mvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.a, i64 1, ptr null, i64 0, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvEaSESt16initializer_listIwE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.idx = shl nuw nsw i64 %2, 2
  %i.a = tail call noundef zeroext i1 @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2)
  br i1 %i.a, label %bb.b, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = lshr i8 %i.b, 1
  %i.f = zext nneg i8 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load i64, ptr %0, align 8
  %i.k = lshr i64 %i.j, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.k
  %i.m = select i1 %i.c, ptr %i.g, ptr %i.l
  store i32 0, ptr %i.m, align 4, !tbaa !134
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i: ; preds = %bb.b, %bb.a
  %i.n = load i8, ptr %0, align 8, !tbaa !109
  %i.o = trunc i8 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = select i1 %i.o, ptr %i.p, ptr %i.r       ; 2 uses
  %i.t = icmp eq i64 %2, 0
  br i1 %i.t, label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i
  %i.u = tail call ptr @wmemcpy(ptr noundef %i.s, ptr noundef %1, i64 noundef %2) #26 ; 0 uses
  br label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i

_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i:         ; preds = %bb.c, %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx
  store i32 0, ptr %i.v, align 4, !tbaa !134
  %i.w = load i8, ptr %0, align 8, !tbaa !109
  %i.x = trunc i8 %i.w to i1
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i
  %i.y = trunc i64 %2 to i8
  %i.z = shl i8 %i.y, 1
  %i.aa = or disjoint i8 %i.z, 1
  store i8 %i.aa, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignEPKwS7_.exit

bb.e:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i
  %i.ab = load i64, ptr %0, align 8
  %i.ac = shl nuw nsw i64 %2, 1
  %i.ad = and i64 %i.ab, 1
  %i.ae = or disjoint i64 %i.ad, %i.ac
  store i64 %i.ae, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignEPKwS7_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignEPKwS7_.exit: ; preds = %bb.d, %bb.e
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE13get_allocatorEv(ptr dead_on_unwind noalias writable sret(%"class.std::allocator.25") align 1 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE20get_stored_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE20get_stored_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6rbeginEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.13") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = lshr i8 %i.a, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load i64, ptr %1, align 8
  %i.j = lshr i64 %i.i, 1
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.j
  %i.l = select i1 %i.b, ptr %i.f, ptr %i.k
  store ptr %i.l, ptr %0, align 8, !tbaa !141
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6rbeginEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.14") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !579)
  %i.a = load i8, ptr %1, align 8, !tbaa !109, !noalias !579 ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = lshr i8 %i.a, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !noalias !579
  %i.i = load i64, ptr %1, align 8, !noalias !579
  %i.j = lshr i64 %i.i, 1
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.j
  %i.l = select i1 %i.b, ptr %i.f, ptr %i.k
  store ptr %i.l, ptr %0, align 8, !tbaa !143, !alias.scope !579
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7crbeginEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.14") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = lshr i8 %i.a, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load i64, ptr %1, align 8
  %i.j = lshr i64 %i.i, 1
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.j
  %i.l = select i1 %i.b, ptr %i.f, ptr %i.k
  store ptr %i.l, ptr %0, align 8, !tbaa !143
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4rendEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.13") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e
  store ptr %i.f, ptr %0, align 8, !tbaa !141
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4rendEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.14") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !582)
  %i.a = load i8, ptr %1, align 8, !tbaa !109, !noalias !582
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noalias !582
end_hunk_8
begin_hunk_9_@_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5frontEv:bb.a
  ret ptr %i.f
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5frontEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e
  ret ptr %i.f
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e
  %i.g = lshr i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = load i64, ptr %0, align 8
  %i.j = lshr i64 %i.i, 1
  %i.k = select i1 %i.b, i64 %i.h, i64 %i.j
  %i.l = getelementptr [4 x i8], ptr %i.f, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 -4
  ret ptr %i.m
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e
  %i.g = lshr i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = load i64, ptr %0, align 8
  %i.j = lshr i64 %i.i, 1
  %i.k = select i1 %i.b, i64 %i.h, i64 %i.j
  %i.l = getelementptr [4 x i8], ptr %i.f, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 -4
  ret ptr %i.m
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e
  %i.g = getelementptr inbounds [4 x i8], ptr %i.f, i64 %1
  ret ptr %i.g
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e
  %i.g = getelementptr inbounds [4 x i8], ptr %i.f, i64 %1
  ret ptr %i.g
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE2atEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %.not = icmp ult i64 %1, %i.g
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.1) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.e to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.h, ptr %i.i, ptr %i.k
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %1
  ret ptr %i.m
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE2atEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %.not = icmp ult i64 %1, %i.g
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.1) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.e to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.h, ptr %i.i, ptr %i.k
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %1
  ret ptr %i.m
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvEpLERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e
  %i.g = lshr i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.h
  %i.j = load i64, ptr %1, align 8
  %i.k = lshr i64 %i.j, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.k
  %i.m = select i1 %i.b, ptr %i.i, ptr %i.l
  %i.n = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.o = trunc i8 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = lshr i8 %i.n, 1
  %i.r = zext nneg i8 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load i64, ptr %0, align 8
  %i.w = lshr i64 %i.v, 1
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.w
  %i.y = select i1 %i.o, ptr %i.s, ptr %i.x
  %i.z = tail call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6insertIPKwEEPwS8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.y, ptr noundef %i.f, ptr noundef %i.m, ptr noundef null) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6appendERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e
  %i.g = lshr i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.h
  %i.j = load i64, ptr %1, align 8
  %i.k = lshr i64 %i.j, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.k
  %i.m = select i1 %i.b, ptr %i.i, ptr %i.l
  %i.n = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.o = trunc i8 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = lshr i8 %i.n, 1
  %i.r = zext nneg i8 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load i64, ptr %0, align 8
  %i.w = lshr i64 %i.v, 1
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.w
  %i.y = select i1 %i.o, ptr %i.s, ptr %i.x
  %i.z = tail call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6insertIPKwEEPwS8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.y, ptr noundef %i.f, ptr noundef %i.m, ptr noundef null) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvEpLEPKw(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @wcslen(ptr noundef %1) #29
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.a
  %i.c = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.d = trunc i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = lshr i8 %i.c, 1
  %i.g = zext nneg i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load i64, ptr %0, align 8
  %i.l = lshr i64 %i.k, 1
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.l
  %i.n = select i1 %i.d, ptr %i.h, ptr %i.m
  %i.o = tail call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6insertIPKwEEPwS8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.n, ptr noundef %1, ptr noundef %i.b, ptr noundef null) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6appendEPKw(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @wcslen(ptr noundef %1) #29
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.a
  %i.c = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.d = trunc i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = lshr i8 %i.c, 1
  %i.g = zext nneg i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load i64, ptr %0, align 8
  %i.l = lshr i64 %i.k, 1
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.l
  %i.n = select i1 %i.d, ptr %i.h, ptr %i.m
  %i.o = tail call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6insertIPKwEEPwS8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.n, ptr noundef %1, ptr noundef %i.b, ptr noundef null) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvEpLEw(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 3 uses
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g       ; 3 uses
  %i.i = trunc i64 %i.f to i1                     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = add i64 %i.k, -1
  %i.m = select i1 %i.i, i64 4, i64 %i.l
  %i.n = icmp ult i64 %i.h, %i.m
  br i1 %i.n, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %i.i, ptr %i.o, ptr %i.q       ; 2 uses
  %i.s = add nuw i64 %i.h, 1                      ; 3 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.s
  store i32 0, ptr %i.t, align 4, !tbaa !134
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.h
  store i32 %1, ptr %i.u, align 4, !tbaa !134
  %i.v = load i8, ptr %0, align 8, !tbaa !109
  %i.w = trunc i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = trunc i64 %i.s to i8
  %i.y = shl i8 %i.x, 1
  %i.z = or disjoint i8 %i.y, 1
  store i8 %i.z, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9push_backEw.exit

bb.d:                                             ; preds = %bb.b
  %i.aa = load i64, ptr %0, align 8
  %i.ab = shl i64 %i.s, 1
  %i.ac = and i64 %i.aa, 1
  %i.ad = or disjoint i64 %i.ac, %i.ab
  store i64 %i.ad, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9push_backEw.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %1, ptr %i.a, align 4, !tbaa !134
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.af = and i64 %i.g, 127
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.g
  %i.ak = select i1 %i.i, ptr %i.ag, ptr %i.aj
  %i.al = call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6insertINS0_17constant_iteratorIwEEEEPwPKwT_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.ak, ptr nonnull %i.a, i64 1, ptr null, i64 0, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9push_backEw.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9push_backEw.exit: ; preds = %bb.c, %bb.d, %bb.e
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9push_backEw(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g       ; 3 uses
  %i.i = trunc i64 %i.f to i1                     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = add i64 %i.k, -1
  %i.m = select i1 %i.i, i64 4, i64 %i.l
  %i.n = icmp ult i64 %i.h, %i.m
  br i1 %i.n, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %i.i, ptr %i.o, ptr %i.q       ; 2 uses
  %i.s = add nuw i64 %i.h, 1                      ; 3 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.s
  store i32 0, ptr %i.t, align 4, !tbaa !134
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.h
  store i32 %1, ptr %i.u, align 4, !tbaa !134
  %i.v = load i8, ptr %0, align 8, !tbaa !109
  %i.w = trunc i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = trunc i64 %i.s to i8
  %i.y = shl i8 %i.x, 1
  %i.z = or disjoint i8 %i.y, 1
  store i8 %i.z, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseISaIwEvE9priv_sizeEm.exit

bb.d:                                             ; preds = %bb.b
  %i.aa = load i64, ptr %0, align 8
  %i.ab = shl i64 %i.s, 1
  %i.ac = and i64 %i.aa, 1
  %i.ad = or disjoint i64 %i.ac, %i.ab
  store i64 %i.ad, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseISaIwEvE9priv_sizeEm.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %1, ptr %i.a, align 4, !tbaa !134
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.af = lshr i64 %i.f, 1
  %i.ag = and i64 %i.af, 127
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.g
  %i.al = select i1 %i.i, ptr %i.ah, ptr %i.ak
  %i.am = call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6insertINS0_17constant_iteratorIwEEEEPwPKwT_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.al, ptr nonnull %i.a, i64 1, ptr null, i64 0, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN5boost9container3dtl17basic_string_baseISaIwEvE9priv_sizeEm.exit

_ZN5boost9container3dtl17basic_string_baseISaIwEvE9priv_sizeEm.exit: ; preds = %bb.d, %bb.c, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvEpLESt16initializer_listIwE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = lshr i8 %i.b, 1
  %i.f = zext nneg i8 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load i64, ptr %0, align 8
  %i.k = lshr i64 %i.j, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.k
  %i.m = select i1 %i.c, ptr %i.g, ptr %i.l
  %i.n = tail call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6insertIPKwEEPwS8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.m, ptr noundef %1, ptr noundef %i.a, ptr noundef null) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6appendESt16initializer_listIwE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = lshr i8 %i.b, 1
  %i.f = zext nneg i8 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load i64, ptr %0, align 8
  %i.k = lshr i64 %i.j, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.k
  %i.m = select i1 %i.c, ptr %i.g, ptr %i.l
  %i.n = tail call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6insertIPKwEEPwS8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.m, ptr noundef %1, ptr noundef %i.a, ptr noundef null) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6appendERKS5_mm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %1, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.2) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %2 ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6insertIPKwEEPwS8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE:bb.a
  br i1 %min.iters.check, label %.lr.ph.i166.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit164
  %i.hz = add i64 %i.as, %i.h
  %i.ia = add i64 %i.hl, %i.j
  %i.ib = sub i64 %i.ia, %i.hz
  %diff.check = icmp ugt i64 %i.ib, -32
  br i1 %diff.check, label %.lr.ph.i166.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.hy, 9223372036854775800     ; 3 uses
  %i.ic = shl i64 %n.vec, 2                       ; 2 uses
  %i.id = getelementptr i8, ptr %i.hq, i64 %i.ic
  %i.ie = getelementptr i8, ptr %2, i64 %i.ic
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.if = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.hq, i64 %i.if ; 2 uses
  %next.gep219 = getelementptr i8, ptr %2, i64 %i.if ; 2 uses
  %i.ig = getelementptr i8, ptr %next.gep219, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep219, align 4, !tbaa !134
  %wide.load220 = load <4 x i32>, ptr %i.ig, align 4, !tbaa !134
  %i.ih = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !134
  store <4 x i32> %wide.load220, ptr %i.ih, align 4, !tbaa !134
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ii = icmp eq i64 %index.next, %n.vec
  br i1 %i.ii, label %middle.block, label %vector.body, !llvm.loop !599

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hy, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPKwPwEEmT_SA_T0_.exit172, label %.lr.ph.i166.preheader

.lr.ph.i166.preheader:                            ; preds = %vector.memcheck, %_ZNSt11char_traitsIwE4moveEPwPKwm.exit164, %middle.block
  %.0711.i168.ph = phi ptr [ %i.hq, %vector.memcheck ], [ %i.hq, %_ZNSt11char_traitsIwE4moveEPwPKwm.exit164 ], [ %i.id, %middle.block ]
  %.0810.i169.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %_ZNSt11char_traitsIwE4moveEPwPKwm.exit164 ], [ %i.ie, %middle.block ]
  br label %.lr.ph.i166

.lr.ph.i166:                                      ; preds = %.lr.ph.i166.preheader, %.lr.ph.i166
  %.0711.i168 = phi ptr [ %i.ik, %.lr.ph.i166 ], [ %.0711.i168.ph, %.lr.ph.i166.preheader ] ; 2 uses
  %.0810.i169 = phi ptr [ %i.il, %.lr.ph.i166 ], [ %.0810.i169.ph, %.lr.ph.i166.preheader ] ; 2 uses
  %i.ij = load i32, ptr %.0810.i169, align 4, !tbaa !134
  store i32 %i.ij, ptr %.0711.i168, align 4, !tbaa !134
  %i.ik = getelementptr inbounds nuw i8, ptr %.0711.i168, i64 4
  %i.il = getelementptr inbounds nuw i8, ptr %.0810.i169, i64 4 ; 2 uses
  %.not.i170 = icmp eq ptr %i.il, %3
  br i1 %.not.i170, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPKwPwEEmT_SA_T0_.exit172, label %.lr.ph.i166, !llvm.loop !600

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPKwPwEEmT_SA_T0_.exit172: ; preds = %.lr.ph.i166, %middle.block
  %i.im = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.ap
  store i32 0, ptr %i.im, align 4, !tbaa !134
  %i.in = load i8, ptr %0, align 8, !tbaa !109
  %i.io = trunc i8 %i.in to i1
  %.pre = load i64, ptr %0, align 8
  store ptr %i.ar, ptr %i.f, align 8, !tbaa !149
  %i.ip = shl i64 %i.ap, 1
  %i.iq = and i64 %.pre, 1
  %i.ir = select i1 %i.io, i64 0, i64 %i.iq
  %i.is = or disjoint i64 %i.ir, %i.ip            ; 2 uses
  store i64 %i.is, ptr %0, align 8
  %i.it = load i64, ptr %i.a, align 8, !tbaa !127
  store i64 %i.it, ptr %i.s, align 8, !tbaa !150
  %i.iu = trunc i64 %i.is to i8
  br label %bb.x

bb.x:                                             ; preds = %_ZN5boost9container3dtl17basic_string_baseISaIwEvE16deallocate_blockEv.exit, %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPKwPwEEmT_SA_T0_.exit172, %_ZN5boost9container3dtl17basic_string_baseISaIwEvE9priv_sizeEm.exit136
  %.pre189 = phi ptr [ %i.ar, %_ZN5boost9container3dtl17basic_string_baseISaIwEvE16deallocate_blockEv.exit ], [ %i.ar, %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPKwPwEEmT_SA_T0_.exit172 ], [ %.pre189.pre, %_ZN5boost9container3dtl17basic_string_baseISaIwEvE9priv_sizeEm.exit136 ]
  %.pre188 = phi i8 [ %i.hk, %_ZN5boost9container3dtl17basic_string_baseISaIwEvE16deallocate_blockEv.exit ], [ %i.iu, %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPKwPwEEmT_SA_T0_.exit172 ], [ %.pre188.pre, %_ZN5boost9container3dtl17basic_string_baseISaIwEvE9priv_sizeEm.exit136 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.pre192 = trunc i8 %.pre188 to i1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.a
  %.pre-phi = phi i1 [ %.pre192, %bb.x ], [ %i.d, %bb.a ]
  %i.iv = phi ptr [ %.pre189, %bb.x ], [ %i.g, %bb.a ]
  %i.iw = select i1 %i.d, ptr %i.e, ptr %i.g
  %i.ix = ptrtoint ptr %i.iw to i64
  %i.iy = sub i64 %i.h, %i.ix
  %i.iz = select i1 %.pre-phi, ptr %i.e, ptr %i.iv
  %i.ja = getelementptr inbounds i8, ptr %i.iz, i64 %i.iy
  ret ptr %i.ja
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6insertEmRKS5_mm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = load i8, ptr %2, align 8, !tbaa !109     ; 2 uses
  %i.i = trunc i8 %i.h to i1
  %i.j = lshr i8 %i.h, 1
  %i.k = zext nneg i8 %i.j to i64
  %i.l = load i64, ptr %2, align 8                ; 2 uses
  %i.m = lshr i64 %i.l, 1
  %i.n = select i1 %i.i, i64 %i.k, i64 %i.m       ; 2 uses
  %i.o = icmp ugt i64 %1, %i.g
  %i.p = icmp ugt i64 %3, %i.n
  %or.cond = or i1 %i.o, %i.p
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.4) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = sub nuw nsw i64 %i.n, %3
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %4, i64 %i.q) ; 2 uses
  %i.r = sub nsw i64 4611686018427387902, %.sroa.speculated
  %i.s = icmp ugt i64 %i.g, %i.r
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.5) #27
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.t = trunc i64 %i.l to i1
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = select i1 %i.t, ptr %i.u, ptr %i.w
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %3 ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.sroa.speculated
  %i.aa = trunc i64 %i.e to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = select i1 %i.aa, ptr %i.ab, ptr %i.ad
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %1
  %i.ag = tail call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6insertIPKwEEPwS8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.af, ptr noundef %i.y, ptr noundef %i.z, ptr noundef null) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6insertEmPKwm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.4) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = lshr i64 %i.e, 1
  %i.k = and i64 %i.j, 127
  %i.l = select i1 %i.i, i64 %i.k, i64 %i.f
  %i.m = sub i64 4611686018427387902, %3
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.5) #27
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %i.i, ptr %i.o, ptr %i.q
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %1
  %i.t = getelementptr inbounds [4 x i8], ptr %2, i64 %3
  %i.u = tail call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6insertIPKwEEPwS8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.s, ptr noundef %2, ptr noundef %i.t, ptr noundef null) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6insertEmPKw(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.4) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @wcslen(ptr noundef %2) #29 ; 2 uses
  %i.j = trunc i64 %i.e to i1                     ; 2 uses
  %i.k = lshr i64 %i.e, 1
  %i.l = and i64 %i.k, 127
  %i.m = select i1 %i.j, i64 %i.l, i64 %i.f
  %i.n = sub i64 4611686018427387902, %i.i
  %i.o = icmp ugt i64 %i.m, %i.n
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.5) #27
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = select i1 %i.j, ptr %i.p, ptr %i.r
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %1
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.i
  %i.v = tail call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6insertIPKwEEPwS8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.t, ptr noundef %2, ptr noundef %i.u, ptr noundef null) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6insertEmmw(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i32 noundef signext %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g
  %i.i = icmp ugt i64 %1, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.4) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = trunc i64 %i.f to i1                     ; 2 uses
  %i.k = lshr i64 %i.f, 1
  %i.l = and i64 %i.k, 127
  %i.m = select i1 %i.j, i64 %i.l, i64 %i.g
  %i.n = sub i64 4611686018427387902, %2
  %i.o = icmp ugt i64 %i.m, %i.n
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.5) #27
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = select i1 %i.j, ptr %i.p, ptr %i.r
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %3, ptr %i.a, align 4, !tbaa !134
  %i.u = call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6insertINS0_17constant_iteratorIwEEEEPwPKwT_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.t, ptr nonnull %i.a, i64 %2, ptr null, i64 0, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6insertEPKwmw(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i32 noundef signext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !134
  %i.b = call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6insertINS0_17constant_iteratorIwEEEEPwPKwT_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull %i.a, i64 %2, ptr null, i64 0, ptr noundef null)
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6insertEPKww(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef signext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !134
  %i.b = load i8, ptr %0, align 8, !tbaa !109
  %i.c = trunc i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = select i1 %i.c, ptr %i.d, ptr %i.f
  %i.h = ptrtoint ptr %1 to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6insertINS0_17constant_iteratorIwEEEEPwPKwT_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull %i.a, i64 1, ptr null, i64 0, ptr noundef null) ; 0 uses
  %i.l = load i8, ptr %0, align 8, !tbaa !109
  %i.m = trunc i8 %i.l to i1
  %i.n = load ptr, ptr %i.e, align 8
  %i.o = select i1 %i.m, ptr %i.d, ptr %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.j
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6insertINS0_17constant_iteratorIwEEEEPwPKwT_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.d = trunc i8 %i.c to i1                      ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 4 uses
  %i.h = ptrtoint ptr %1 to i64                   ; 8 uses
  %.not208 = icmp eq i64 %3, %5
  br i1 %.not208, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = sub i64 %3, %5                           ; 20 uses
  %i.j = lshr i8 %i.c, 1
  %i.k = zext nneg i8 %i.j to i64
  %i.l = load i64, ptr %0, align 8                ; 3 uses
  %i.m = lshr i64 %i.l, 1                         ; 2 uses
  %i.n = select i1 %i.d, i64 %i.k, i64 %i.m       ; 15 uses
  %i.o = trunc i64 %i.l to i1                     ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = add i64 %i.q, -1
  %i.s = select i1 %i.o, i64 4, i64 %i.r          ; 4 uses
  %i.t = sub i64 %i.s, %i.n
  %i.u = select i1 %i.o, ptr %i.e, ptr %i.g       ; 16 uses
  %i.v = ptrtoaddr ptr %i.u to i64                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 0, ptr %i.a, align 8, !tbaa !127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store ptr null, ptr %i.b, align 8, !tbaa !144
  %.not209 = icmp ult i64 %i.t, %i.i
  br i1 %.not209, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.w = add i64 %i.s, 1                          ; 5 uses
  %i.x = lshr i64 %i.l, 1
  %i.y = and i64 %i.x, 127
  %i.z = select i1 %i.o, i64 %i.y, i64 %i.m
  %.neg.i = sub i64 %i.z, %i.s
  %i.aa = sub i64 4611686018427387902, %i.s
  %i.ab = add i64 %.neg.i, %i.i                   ; 2 uses
  %i.ac = icmp ult i64 %i.aa, %i.ab
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.16) #27
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ad = icmp ult i64 %i.w, 2305843009213693952
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = shl nuw i64 %i.w, 3
  %i.af = udiv i64 %i.ae, 5
  br label %_ZNK5boost9container3dtl17basic_string_baseISaIwEvE12next_storageEmm.exit

bb.g:                                             ; preds = %bb.e
  %i.ag = icmp ugt i64 %i.w, -6917529027641081857
  %i.ah = shl i64 %i.w, 3
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 4611686018427387903)
  %i.aj = select i1 %i.ag, i64 4611686018427387903, i64 %i.ai
  br label %_ZNK5boost9container3dtl17basic_string_baseISaIwEvE12next_storageEmm.exit

_ZNK5boost9container3dtl17basic_string_baseISaIwEvE12next_storageEmm.exit: ; preds = %bb.f, %bb.g
  %.0.i.i = phi i64 [ %i.af, %bb.f ], [ %i.aj, %bb.g ]
  %i.ak = add i64 %i.ab, %i.w
  %i.al = tail call noundef i64 @llvm.umax.i64(i64 %i.ak, i64 %.0.i.i)
  store i64 %i.al, ptr %i.a, align 8, !tbaa !127
  %i.am = add i64 %i.n, %i.i                      ; 3 uses
  %i.an = add i64 %i.am, 1
  %spec.store.select = select i1 %i.o, ptr null, ptr %i.g
  store ptr %spec.store.select, ptr %i.b, align 8, !tbaa !144
  %spec.select = select i1 %i.o, i32 1, i32 7
  %i.ao = call noundef ptr @_ZN5boost9container3dtl24allocator_version_traitsISaIwELj1EE18allocation_commandERS3_jmRmRPw(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %spec.select, i64 noundef %i.an, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 15 uses
  %i.ap = ptrtoaddr ptr %i.ao to i64              ; 2 uses
  %i.aq = icmp eq ptr %i.u, %i.ao
  br i1 %i.aq, label %bb.h, label %bb.q

bb.h:                                             ; preds = %_ZNK5boost9container3dtl17basic_string_baseISaIwEvE12next_storageEmm.exit
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !127
  store i64 %i.ar, ptr %i.p, align 8, !tbaa !150
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h
  %i.as = ptrtoint ptr %i.u to i64
  %i.at = sub i64 %i.h, %i.as
  %i.au = ashr exact i64 %i.at, 2                 ; 3 uses
  %i.av = sub i64 %i.n, %i.au                     ; 5 uses
  %.not124 = icmp ult i64 %i.av, %i.i
  br i1 %.not124, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.idx210 = shl i64 %i.n, 2                      ; 2 uses
  %i.aw = getelementptr i8, ptr %i.u, i64 %.idx210 ; 4 uses
  %i.ax = sub i64 %i.n, %i.i
  %.idx = shl i64 %i.ax, 2                        ; 2 uses
  %.not9.i = icmp eq i64 %.idx, %.idx210
  br i1 %.not9.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPwS7_EEmT_S8_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.j
  %i.ay = getelementptr i8, ptr %i.u, i64 %.idx   ; 3 uses
  %i.az = shl i64 %3, 2
  %i.ba = shl i64 %5, 2
  %i.bb = add i64 %i.az, -4
  %i.bc = sub i64 %i.bb, %i.ba                    ; 2 uses
  %i.bd = lshr exact i64 %i.bc, 2
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check302 = icmp ult i64 %i.bc, 28
  br i1 %min.iters.check302, label %.lr.ph.i.preheader380, label %vector.ph303

vector.ph303:                                     ; preds = %.lr.ph.i.preheader
  %n.vec304 = and i64 %i.be, 9223372036854775800  ; 3 uses
  %i.bf = shl i64 %n.vec304, 2                    ; 2 uses
  %i.bg = getelementptr i8, ptr %i.aw, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.ay, i64 %i.bf
  br label %vector.body305

end_hunk_10
begin_hunk_11_@_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7replaceEmmRKS5_mm:bb.a
  ret ptr %i.s
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g
  %i.i = icmp ugt i64 %1, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = trunc i64 %i.f to i1                     ; 2 uses
  %i.k = lshr i64 %i.f, 1
  %i.l = and i64 %i.k, 127
  %i.m = select i1 %i.j, i64 %i.l, i64 %i.g       ; 2 uses
  %i.n = sub i64 %i.m, %1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.n) ; 3 uses
  %i.o = icmp ugt i64 %4, 4611686018427387902
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = sub i64 %i.m, %.sroa.speculated
  %i.q = sub nuw nsw i64 4611686018427387902, %4
  %.not = icmp ult i64 %i.p, %i.q
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.8) #27
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %i.j, ptr %i.r, ptr %i.t       ; 2 uses
  %i.v = ptrtoaddr ptr %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %1 ; 6 uses
  %.idx = shl i64 %.sroa.speculated, 2            ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %.idx ; 5 uses
  %.idx19 = shl nuw i64 %4, 2                     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 %.idx19 ; 3 uses
  %i.z = icmp ne i64 %.sroa.speculated, 0
  %i.aa = icmp ne i64 %4, 0
  %i.ab = and i1 %i.aa, %i.z
  br i1 %i.ab, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.f
  %i.ac = add i64 %.idx19, -4
  %i.ad = lshr exact i64 %i.ac, 2
  %i.ae = add i64 %.idx, -4
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 %i.af) ; 2 uses
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ag, 11
  br i1 %min.iters.check, label %.lr.ph.i.preheader32, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.ai = shl i64 %1, 2
  %i.aj = add i64 %i.ai, %i.v
  %i.ak = sub i64 %i.a, %i.aj
  %diff.check = icmp ugt i64 %i.ak, -32
  br i1 %diff.check, label %.lr.ph.i.preheader32, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, 9223372036854775800     ; 3 uses
  %i.al = shl i64 %n.vec, 2                       ; 2 uses
  %i.am = getelementptr i8, ptr %i.w, i64 %i.al   ; 2 uses
  %i.an = getelementptr i8, ptr %3, i64 %i.al     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ao ; 2 uses
  %next.gep29 = getelementptr i8, ptr %3, i64 %i.ao ; 2 uses
  %i.ap = getelementptr i8, ptr %next.gep29, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep29, align 4, !tbaa !134
  %wide.load30 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !134
  %i.aq = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !134
  store <4 x i32> %wide.load30, ptr %i.aq, align 4, !tbaa !134
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !621

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader32

.lr.ph.i.preheader32:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.019.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.preheader ], [ %i.am, %middle.block ]
  %.01618.i.ph = phi ptr [ %3, %vector.memcheck ], [ %3, %.lr.ph.i.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader32, %.lr.ph.i
  %.019.i = phi ptr [ %i.at, %.lr.ph.i ], [ %.019.i.ph, %.lr.ph.i.preheader32 ] ; 2 uses
  %.01618.i = phi ptr [ %i.au, %.lr.ph.i ], [ %.01618.i.ph, %.lr.ph.i.preheader32 ] ; 2 uses
  %i.as = load i32, ptr %.01618.i, align 4, !tbaa !134
  store i32 %i.as, ptr %.019.i, align 4, !tbaa !134
  %i.at = getelementptr inbounds nuw i8, ptr %.019.i, i64 4 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4 ; 3 uses
  %i.av = icmp ne ptr %i.at, %i.x
  %i.aw = icmp ne ptr %i.au, %i.y
  %i.ax = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %i.ax, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !622

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %bb.f
  %.016.lcssa.i = phi ptr [ %3, %bb.f ], [ %i.an, %middle.block ], [ %i.au, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %i.w, %bb.f ], [ %i.am, %middle.block ], [ %i.at, %.lr.ph.i ] ; 3 uses
  %i.ay = icmp eq ptr %.016.lcssa.i, %i.y
  br i1 %i.ay, label %bb.g, label %bb.l

bb.g:                                             ; preds = %._crit_edge.i
  %.not.i.i = icmp eq ptr %.0.lcssa.i, %i.x
  br i1 %.not.i.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7replaceIPKwEERS5_S8_S8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = ptrtoint ptr %i.x to i64                ; 2 uses
  %i.ba = ptrtoint ptr %.0.lcssa.i to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 2
  %i.bd = load i8, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.be = trunc i8 %i.bd to i1
  %i.bf = lshr i8 %i.bd, 1
  %i.bg = zext nneg i8 %i.bf to i64
  %i.bh = load i64, ptr %0, align 8               ; 3 uses
  %i.bi = lshr i64 %i.bh, 1
  %i.bj = select i1 %i.be, i64 %i.bg, i64 %i.bi   ; 2 uses
  %i.bk = trunc i64 %i.bh to i8
  %i.bl = trunc i64 %i.bh to i1
  %i.bm = load ptr, ptr %i.s, align 8
  %i.bn = select i1 %i.bl, ptr %i.r, ptr %i.bm
  %i.bo = add nuw i64 %i.bj, 1                    ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.az, %i.bp
  %i.br = ashr exact i64 %i.bq, 2                 ; 2 uses
  %i.bs = icmp eq i64 %i.bo, %i.br
  br i1 %i.bs, label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bt = sub i64 %i.bo, %i.br
  %i.bu = tail call ptr @wmemmove(ptr noundef %.0.lcssa.i, ptr noundef %i.x, i64 noundef %i.bt) #26 ; 0 uses
  %.pre.i.i = load i8, ptr %0, align 8, !tbaa !109
  br label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i

_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i:       ; preds = %bb.i, %bb.h
  %i.bv = phi i8 [ %i.bk, %bb.h ], [ %.pre.i.i, %bb.i ]
  %i.bw = sub i64 %i.bj, %i.bc                    ; 2 uses
  %i.bx = trunc i8 %i.bv to i1
  br i1 %i.bx, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i
  %i.by = trunc i64 %i.bw to i8
  %i.bz = shl i8 %i.by, 1
  %i.ca = or disjoint i8 %i.bz, 1
  store i8 %i.ca, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7replaceIPKwEERS5_S8_S8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit

bb.k:                                             ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i
  %i.cb = load i64, ptr %0, align 8
  %i.cc = shl i64 %i.bw, 1
  %i.cd = and i64 %i.cb, 1
  %i.ce = or disjoint i64 %i.cd, %i.cc
  store i64 %i.ce, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7replaceIPKwEERS5_S8_S8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit

bb.l:                                             ; preds = %._crit_edge.i
  %i.cf = tail call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6insertIPKwEEPwS8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.x, ptr noundef %.016.lcssa.i, ptr noundef %i.y, ptr noundef null) ; 0 uses
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7replaceIPKwEERS5_S8_S8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7replaceIPKwEERS5_S8_S8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit: ; preds = %bb.g, %bb.j, %bb.k, %bb.l
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4dataEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e
  ret ptr %i.f
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7replaceEmmPKw(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = tail call noundef i64 @wcslen(ptr noundef %3) #29
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %i.a)
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7replaceEmmmw(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef signext %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = lshr i64 %i.e, 1
  %i.k = and i64 %i.j, 127
  %i.l = select i1 %i.i, i64 %i.k, i64 %i.f       ; 2 uses
  %i.m = sub nsw i64 %i.l, %1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.m) ; 2 uses
  %i.n = icmp ugt i64 %3, 4611686018427387902
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = sub i64 %i.l, %.sroa.speculated
  %i.p = sub nuw nsw i64 4611686018427387902, %3
  %.not = icmp ult i64 %i.o, %i.p
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.8) #27
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = select i1 %i.i, ptr %i.q, ptr %i.s
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %1 ; 2 uses
  %i.v = getelementptr [4 x i8], ptr %i.u, i64 %.sroa.speculated
  %i.w = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7replaceEPKwS7_mw(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.u, ptr noundef %i.v, i64 noundef %3, i32 noundef signext %4)
  ret ptr %i.w
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7replaceEPKwS7_mw(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef signext %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 3 uses
  %.not = icmp ult i64 %i.e, %3
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %3, 0
  br i1 %i.f, label %_ZNSt11char_traitsIwE6assignEPwmw.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @wmemset(ptr noundef %1, i32 noundef signext %4, i64 noundef %3) #26 ; 0 uses
  br label %_ZNSt11char_traitsIwE6assignEPwmw.exit

_ZNSt11char_traitsIwE6assignEPwmw.exit:           ; preds = %bb.b, %bb.c
  %i.h = getelementptr inbounds [4 x i8], ptr %1, i64 %3 ; 3 uses
  %.not.i = icmp eq ptr %i.h, %2
  br i1 %.not.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5eraseEPKwS7_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt11char_traitsIwE6assignEPwmw.exit
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.b, %i.i
  %i.k = ashr exact i64 %i.j, 2
  %i.l = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.m = trunc i8 %i.l to i1
  %i.n = lshr i8 %i.l, 1
  %i.o = zext nneg i8 %i.n to i64
  %i.p = load i64, ptr %0, align 8                ; 3 uses
  %i.q = lshr i64 %i.p, 1
  %i.r = select i1 %i.m, i64 %i.o, i64 %i.q       ; 2 uses
  %i.s = trunc i64 %i.p to i8
  %i.t = trunc i64 %i.p to i1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = select i1 %i.t, ptr %i.u, ptr %i.w
  %i.y = add nuw i64 %i.r, 1                      ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.b, %i.z
  %i.ab = ashr exact i64 %i.aa, 2                 ; 2 uses
  %i.ac = icmp eq i64 %i.y, %i.ab
  br i1 %i.ac, label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = sub i64 %i.y, %i.ab
  %i.ae = tail call ptr @wmemmove(ptr noundef %i.h, ptr noundef %2, i64 noundef %i.ad) #26 ; 0 uses
  %.pre.i = load i8, ptr %0, align 8, !tbaa !109
  br label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i

_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i:         ; preds = %bb.e, %bb.d
  %i.af = phi i8 [ %i.s, %bb.d ], [ %.pre.i, %bb.e ]
  %i.ag = sub i64 %i.r, %i.k                      ; 2 uses
  %i.ah = trunc i8 %i.af to i1
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i
  %i.ai = trunc i64 %i.ag to i8
  %i.aj = shl i8 %i.ai, 1
  %i.ak = or disjoint i8 %i.aj, 1
  store i8 %i.ak, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5eraseEPKwS7_.exit

bb.g:                                             ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i
  %i.al = load i64, ptr %0, align 8
  %i.am = shl i64 %i.ag, 1
  %i.an = and i64 %i.al, 1
  %i.ao = or disjoint i64 %i.an, %i.am
  store i64 %i.ao, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5eraseEPKwS7_.exit

bb.h:                                             ; preds = %bb.a
  %i.ap = icmp eq ptr %2, %1
  br i1 %i.ap, label %_ZNSt11char_traitsIwE6assignEPwmw.exit19, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = tail call ptr @wmemset(ptr noundef %1, i32 noundef signext %4, i64 noundef %i.e) #26 ; 0 uses
  br label %_ZNSt11char_traitsIwE6assignEPwmw.exit19

_ZNSt11char_traitsIwE6assignEPwmw.exit19:         ; preds = %bb.h, %bb.i
  %i.ar = sub nuw i64 %3, %i.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %4, ptr %i.a, align 4, !tbaa !134
  %i.as = call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6insertINS0_17constant_iteratorIwEEEEPwPKwT_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, ptr nonnull %i.a, i64 %i.ar, ptr null, i64 0, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5eraseEPKwS7_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5eraseEPKwS7_.exit: ; preds = %bb.g, %bb.f, %_ZNSt11char_traitsIwE6assignEPwmw.exit, %_ZNSt11char_traitsIwE6assignEPwmw.exit19
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7replaceEPKwS7_RKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = load i8, ptr %3, align 8, !tbaa !109     ; 2 uses
  %i.d = trunc i8 %i.c to i1                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = select i1 %i.d, ptr %i.e, ptr %i.g       ; 7 uses
  %i.i = ptrtoaddr ptr %i.h to i64
  %i.j = lshr i8 %i.c, 1
  %i.k = zext nneg i8 %i.j to i64
  %i.l = load i64, ptr %3, align 8
  %i.m = lshr i64 %i.l, 1
  %i.n = select i1 %i.d, i64 %i.k, i64 %i.m       ; 2 uses
  %.idx = shl i64 %i.n, 2                         ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx ; 3 uses
  %i.p = icmp ne ptr %1, %2
  %i.q = icmp ne i64 %i.n, 0
  %i.r = and i1 %i.p, %i.q
  br i1 %i.r, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.s = add i64 %i.b, -4
  %i.t = sub i64 %i.s, %i.a
  %i.u = lshr i64 %i.t, 2
  %i.v = add i64 %.idx, -4
  %i.w = lshr exact i64 %i.v, 2
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.w) ; 2 uses
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.x, 11
  br i1 %min.iters.check, label %.lr.ph.i.preheader17, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.preheader
  %i.z = sub i64 %i.b, %i.a
  %i.aa = and i64 %i.z, 3
  %ident.check.not = icmp ne i64 %i.aa, 0
  %i.ab = sub i64 %i.i, %i.a
  %diff.check = icmp ugt i64 %i.ab, -32
  %or.cond = select i1 %ident.check.not, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader17, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.y, 9223372036854775800      ; 3 uses
  %i.ac = shl i64 %n.vec, 2                       ; 2 uses
  %i.ad = getelementptr i8, ptr %1, i64 %i.ac     ; 2 uses
  %i.ae = getelementptr i8, ptr %i.h, i64 %i.ac   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 2                       ; 2 uses
end_hunk_11
begin_hunk_12_@_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7replaceEPKwS7_RKS5_:bb.a
  %i.bb = trunc i64 %i.ay to i8
  %i.bc = trunc i64 %i.ay to i1
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = select i1 %i.bc, ptr %i.bd, ptr %i.bf
  %i.bh = add nuw i64 %i.ba, 1                    ; 2 uses
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.aq, %i.bi
  %i.bk = ashr exact i64 %i.bj, 2                 ; 2 uses
  %i.bl = icmp eq i64 %i.bh, %i.bk
  br i1 %i.bl, label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bm = sub i64 %i.bh, %i.bk
  %i.bn = tail call ptr @wmemmove(ptr noundef %.0.lcssa.i, ptr noundef %2, i64 noundef %i.bm) #26 ; 0 uses
  %.pre.i.i = load i8, ptr %0, align 8, !tbaa !109
  br label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i

_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i:       ; preds = %bb.d, %bb.c
  %i.bo = phi i8 [ %i.bb, %bb.c ], [ %.pre.i.i, %bb.d ]
  %i.bp = sub i64 %i.ba, %i.at                    ; 2 uses
  %i.bq = trunc i8 %i.bo to i1
  br i1 %i.bq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i
  %i.br = trunc i64 %i.bp to i8
  %i.bs = shl i8 %i.br, 1
  %i.bt = or disjoint i8 %i.bs, 1
  store i8 %i.bt, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7replaceIPKwEERS5_S8_S8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit

bb.f:                                             ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i
  %i.bu = load i64, ptr %0, align 8
  %i.bv = shl i64 %i.bp, 1
  %i.bw = and i64 %i.bu, 1
  %i.bx = or disjoint i64 %i.bw, %i.bv
  store i64 %i.bx, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7replaceIPKwEERS5_S8_S8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit

bb.g:                                             ; preds = %._crit_edge.i
  %i.by = tail call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6insertIPKwEEPwS8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, ptr noundef %.016.lcssa.i, ptr noundef %i.o, ptr noundef null) ; 0 uses
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7replaceIPKwEERS5_S8_S8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7replaceIPKwEERS5_S8_S8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7replaceEPKwS7_S7_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.c = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %.idx = shl i64 %4, 2                           ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %3, i64 %.idx ; 3 uses
  %i.e = icmp ne ptr %1, %2
  %i.f = icmp ne i64 %4, 0
  %i.g = and i1 %i.e, %i.f
  br i1 %i.g, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.h = add i64 %i.c, -4
  %i.i = sub i64 %i.h, %i.b
  %i.j = lshr i64 %i.i, 2
  %i.k = add i64 %.idx, -4
  %i.l = lshr exact i64 %i.k, 2
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.l) ; 2 uses
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.m, 11
  br i1 %min.iters.check, label %.lr.ph.i.preheader16, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.preheader
  %i.o = sub i64 %i.c, %i.b
  %i.p = and i64 %i.o, 3
  %ident.check.not = icmp ne i64 %i.p, 0
  %i.q = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.q, -32
  %or.cond = or i1 %ident.check.not, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.n, 9223372036854775800      ; 3 uses
  %i.r = shl i64 %n.vec, 2                        ; 2 uses
  %i.s = getelementptr i8, ptr %1, i64 %i.r       ; 2 uses
  %i.t = getelementptr i8, ptr %3, i64 %i.r       ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.u = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.u  ; 2 uses
  %next.gep13 = getelementptr i8, ptr %3, i64 %i.u ; 2 uses
  %i.v = getelementptr i8, ptr %next.gep13, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep13, align 4, !tbaa !134
  %wide.load14 = load <4 x i32>, ptr %i.v, align 4, !tbaa !134
  %i.w = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !134
  store <4 x i32> %wide.load14, ptr %i.w, align 4, !tbaa !134
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !625

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader16

.lr.ph.i.preheader16:                             ; preds = %vector.scevcheck, %.lr.ph.i.preheader, %middle.block
  %.019.i.ph = phi ptr [ %1, %vector.scevcheck ], [ %1, %.lr.ph.i.preheader ], [ %i.s, %middle.block ]
  %.01618.i.ph = phi ptr [ %3, %vector.scevcheck ], [ %3, %.lr.ph.i.preheader ], [ %i.t, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader16, %.lr.ph.i
  %.019.i = phi ptr [ %i.z, %.lr.ph.i ], [ %.019.i.ph, %.lr.ph.i.preheader16 ] ; 2 uses
  %.01618.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %.01618.i.ph, %.lr.ph.i.preheader16 ] ; 2 uses
  %i.y = load i32, ptr %.01618.i, align 4, !tbaa !134
  store i32 %i.y, ptr %.019.i, align 4, !tbaa !134
  %i.z = getelementptr inbounds nuw i8, ptr %.019.i, i64 4 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4 ; 3 uses
  %i.ab = icmp ne ptr %i.z, %2
  %i.ac = icmp ne ptr %i.aa, %i.d
  %i.ad = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %i.ad, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !626

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %bb.a
  %.016.lcssa.i = phi ptr [ %3, %bb.a ], [ %i.t, %middle.block ], [ %i.aa, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %1, %bb.a ], [ %i.s, %middle.block ], [ %i.z, %.lr.ph.i ] ; 3 uses
  %i.ae = icmp eq ptr %.016.lcssa.i, %i.d
  br i1 %i.ae, label %bb.b, label %bb.g

bb.b:                                             ; preds = %._crit_edge.i
  %.not.i.i = icmp eq ptr %.0.lcssa.i, %2
  br i1 %.not.i.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7replaceIPKwEERS5_S8_S8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ag = ptrtoint ptr %.0.lcssa.i to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2
  %i.aj = load i8, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.ak = trunc i8 %i.aj to i1
  %i.al = lshr i8 %i.aj, 1
  %i.am = zext nneg i8 %i.al to i64
  %i.an = load i64, ptr %0, align 8               ; 3 uses
  %i.ao = lshr i64 %i.an, 1
  %i.ap = select i1 %i.ak, i64 %i.am, i64 %i.ao   ; 2 uses
  %i.aq = trunc i64 %i.an to i8
  %i.ar = trunc i64 %i.an to i1
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = select i1 %i.ar, ptr %i.as, ptr %i.au
  %i.aw = add nuw i64 %i.ap, 1                    ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.af, %i.ax
  %i.az = ashr exact i64 %i.ay, 2                 ; 2 uses
  %i.ba = icmp eq i64 %i.aw, %i.az
  br i1 %i.ba, label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bb = sub i64 %i.aw, %i.az
  %i.bc = tail call ptr @wmemmove(ptr noundef %.0.lcssa.i, ptr noundef %2, i64 noundef %i.bb) #26 ; 0 uses
  %.pre.i.i = load i8, ptr %0, align 8, !tbaa !109
  br label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i

_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i:       ; preds = %bb.d, %bb.c
  %i.bd = phi i8 [ %i.aq, %bb.c ], [ %.pre.i.i, %bb.d ]
  %i.be = sub i64 %i.ap, %i.ai                    ; 2 uses
  %i.bf = trunc i8 %i.bd to i1
  br i1 %i.bf, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i
  %i.bg = trunc i64 %i.be to i8
  %i.bh = shl i8 %i.bg, 1
  %i.bi = or disjoint i8 %i.bh, 1
  store i8 %i.bi, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7replaceIPKwEERS5_S8_S8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit

bb.f:                                             ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i
  %i.bj = load i64, ptr %0, align 8
  %i.bk = shl i64 %i.be, 1
  %i.bl = and i64 %i.bj, 1
  %i.bm = or disjoint i64 %i.bl, %i.bk
  store i64 %i.bm, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7replaceIPKwEERS5_S8_S8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit

bb.g:                                             ; preds = %._crit_edge.i
  %i.bn = tail call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6insertIPKwEEPwS8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, ptr noundef %.016.lcssa.i, ptr noundef %i.d, ptr noundef null) ; 0 uses
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7replaceIPKwEERS5_S8_S8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7replaceIPKwEERS5_S8_S8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7replaceEPKwS7_S7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.c = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.d = tail call noundef i64 @wcslen(ptr noundef %3) #29 ; 2 uses
  %.idx = shl i64 %i.d, 2                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %.idx ; 3 uses
  %i.f = icmp ne ptr %1, %2
  %i.g = icmp ne i64 %i.d, 0
  %i.h = and i1 %i.f, %i.g
  br i1 %i.h, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.i = add i64 %i.c, -4
  %i.j = sub i64 %i.i, %i.b
  %i.k = lshr i64 %i.j, 2
  %i.l = add i64 %.idx, -4
  %i.m = lshr exact i64 %i.l, 2
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.m) ; 2 uses
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.n, 11
  br i1 %min.iters.check, label %.lr.ph.i.preheader17, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.preheader
  %i.p = sub i64 %i.c, %i.b
  %i.q = and i64 %i.p, 3
  %ident.check.not = icmp ne i64 %i.q, 0
  %i.r = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.r, -32
  %or.cond = or i1 %ident.check.not, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader17, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.o, 9223372036854775800      ; 3 uses
  %i.s = shl i64 %n.vec, 2                        ; 2 uses
  %i.t = getelementptr i8, ptr %1, i64 %i.s       ; 2 uses
  %i.u = getelementptr i8, ptr %3, i64 %i.s       ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.v  ; 2 uses
  %next.gep14 = getelementptr i8, ptr %3, i64 %i.v ; 2 uses
  %i.w = getelementptr i8, ptr %next.gep14, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep14, align 4, !tbaa !134
  %wide.load15 = load <4 x i32>, ptr %i.w, align 4, !tbaa !134
  %i.x = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !134
  store <4 x i32> %wide.load15, ptr %i.x, align 4, !tbaa !134
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !627

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader17

.lr.ph.i.preheader17:                             ; preds = %vector.scevcheck, %.lr.ph.i.preheader, %middle.block
  %.019.i.ph = phi ptr [ %1, %vector.scevcheck ], [ %1, %.lr.ph.i.preheader ], [ %i.t, %middle.block ]
  %.01618.i.ph = phi ptr [ %3, %vector.scevcheck ], [ %3, %.lr.ph.i.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader17, %.lr.ph.i
  %.019.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %.019.i.ph, %.lr.ph.i.preheader17 ] ; 2 uses
  %.01618.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %.01618.i.ph, %.lr.ph.i.preheader17 ] ; 2 uses
  %i.z = load i32, ptr %.01618.i, align 4, !tbaa !134
  store i32 %i.z, ptr %.019.i, align 4, !tbaa !134
  %i.aa = getelementptr inbounds nuw i8, ptr %.019.i, i64 4 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4 ; 3 uses
  %i.ac = icmp ne ptr %i.aa, %2
  %i.ad = icmp ne ptr %i.ab, %i.e
  %i.ae = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %i.ae, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !628

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %bb.a
  %.016.lcssa.i = phi ptr [ %3, %bb.a ], [ %i.u, %middle.block ], [ %i.ab, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %1, %bb.a ], [ %i.t, %middle.block ], [ %i.aa, %.lr.ph.i ] ; 3 uses
  %i.af = icmp eq ptr %.016.lcssa.i, %i.e
  br i1 %i.af, label %bb.b, label %bb.g

bb.b:                                             ; preds = %._crit_edge.i
  %.not.i.i = icmp eq ptr %.0.lcssa.i, %2
  br i1 %.not.i.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7replaceIPKwEERS5_S8_S8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ah = ptrtoint ptr %.0.lcssa.i to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 2
  %i.ak = load i8, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.al = trunc i8 %i.ak to i1
  %i.am = lshr i8 %i.ak, 1
  %i.an = zext nneg i8 %i.am to i64
  %i.ao = load i64, ptr %0, align 8               ; 3 uses
  %i.ap = lshr i64 %i.ao, 1
  %i.aq = select i1 %i.al, i64 %i.an, i64 %i.ap   ; 2 uses
  %i.ar = trunc i64 %i.ao to i8
  %i.as = trunc i64 %i.ao to i1
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = select i1 %i.as, ptr %i.at, ptr %i.av
  %i.ax = add nuw i64 %i.aq, 1                    ; 2 uses
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ag, %i.ay
  %i.ba = ashr exact i64 %i.az, 2                 ; 2 uses
  %i.bb = icmp eq i64 %i.ax, %i.ba
  br i1 %i.bb, label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bc = sub i64 %i.ax, %i.ba
  %i.bd = tail call ptr @wmemmove(ptr noundef %.0.lcssa.i, ptr noundef %2, i64 noundef %i.bc) #26 ; 0 uses
  %.pre.i.i = load i8, ptr %0, align 8, !tbaa !109
  br label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i

_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i:       ; preds = %bb.d, %bb.c
  %i.be = phi i8 [ %i.ar, %bb.c ], [ %.pre.i.i, %bb.d ]
  %i.bf = sub i64 %i.aq, %i.aj                    ; 2 uses
  %i.bg = trunc i8 %i.be to i1
  br i1 %i.bg, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i
  %i.bh = trunc i64 %i.bf to i8
  %i.bi = shl i8 %i.bh, 1
  %i.bj = or disjoint i8 %i.bi, 1
  store i8 %i.bj, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7replaceIPKwEERS5_S8_S8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit

bb.f:                                             ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i
  %i.bk = load i64, ptr %0, align 8
  %i.bl = shl i64 %i.bf, 1
  %i.bm = and i64 %i.bk, 1
  %i.bn = or disjoint i64 %i.bm, %i.bl
  store i64 %i.bn, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7replaceIPKwEERS5_S8_S8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit

bb.g:                                             ; preds = %._crit_edge.i
  %i.bo = tail call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6insertIPKwEEPwS8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, ptr noundef %.016.lcssa.i, ptr noundef %i.e, ptr noundef null) ; 0 uses
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7replaceIPKwEERS5_S8_S8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7replaceIPKwEERS5_S8_S8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7replaceEPKwS7_St16initializer_listIwE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr %3, i64 %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.c = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %.idx = shl i64 %4, 2                           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 %.idx ; 3 uses
  %i.e = icmp ne ptr %1, %2
  %i.f = icmp ne i64 %4, 0
  %i.g = and i1 %i.e, %i.f
  br i1 %i.g, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.h = add i64 %i.c, -4
  %i.i = sub i64 %i.h, %i.b
  %i.j = lshr i64 %i.i, 2
  %i.k = add i64 %.idx, -4
  %i.l = lshr exact i64 %i.k, 2
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.l) ; 2 uses
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.m, 11
  br i1 %min.iters.check, label %.lr.ph.i.preheader15, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.preheader
  %i.o = sub i64 %i.c, %i.b
  %i.p = and i64 %i.o, 3
  %ident.check.not = icmp ne i64 %i.p, 0
  %i.q = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.q, -32
  %or.cond = select i1 %ident.check.not, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.n, 9223372036854775800      ; 3 uses
  %i.r = shl i64 %n.vec, 2                        ; 2 uses
  %i.s = getelementptr i8, ptr %1, i64 %i.r       ; 2 uses
  %i.t = getelementptr i8, ptr %3, i64 %i.r       ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.u = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.u  ; 2 uses
  %next.gep12 = getelementptr i8, ptr %3, i64 %i.u ; 2 uses
  %i.v = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4, !tbaa !134
  %wide.load13 = load <4 x i32>, ptr %i.v, align 4, !tbaa !134
  %i.w = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !134
  store <4 x i32> %wide.load13, ptr %i.w, align 4, !tbaa !134
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !629

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader15

.lr.ph.i.preheader15:                             ; preds = %vector.scevcheck, %.lr.ph.i.preheader, %middle.block
  %.019.i.ph = phi ptr [ %1, %vector.scevcheck ], [ %1, %.lr.ph.i.preheader ], [ %i.s, %middle.block ]
  %.01618.i.ph = phi ptr [ %3, %vector.scevcheck ], [ %3, %.lr.ph.i.preheader ], [ %i.t, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader15, %.lr.ph.i
  %.019.i = phi ptr [ %i.z, %.lr.ph.i ], [ %.019.i.ph, %.lr.ph.i.preheader15 ] ; 2 uses
  %.01618.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %.01618.i.ph, %.lr.ph.i.preheader15 ] ; 2 uses
  %i.y = load i32, ptr %.01618.i, align 4, !tbaa !134
  store i32 %i.y, ptr %.019.i, align 4, !tbaa !134
  %i.z = getelementptr inbounds nuw i8, ptr %.019.i, i64 4 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4 ; 3 uses
  %i.ab = icmp ne ptr %i.z, %2
  %i.ac = icmp ne ptr %i.aa, %i.d
  %i.ad = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %i.ad, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !630

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %bb.a
  %.016.lcssa.i = phi ptr [ %3, %bb.a ], [ %i.t, %middle.block ], [ %i.aa, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %1, %bb.a ], [ %i.s, %middle.block ], [ %i.z, %.lr.ph.i ] ; 3 uses
  %i.ae = icmp eq ptr %.016.lcssa.i, %i.d
  br i1 %i.ae, label %bb.b, label %bb.g

bb.b:                                             ; preds = %._crit_edge.i
  %.not.i.i = icmp eq ptr %.0.lcssa.i, %2
  br i1 %.not.i.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7replaceIPKwEERS5_S8_S8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ag = ptrtoint ptr %.0.lcssa.i to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2
  %i.aj = load i8, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.ak = trunc i8 %i.aj to i1
  %i.al = lshr i8 %i.aj, 1
  %i.am = zext nneg i8 %i.al to i64
  %i.an = load i64, ptr %0, align 8               ; 3 uses
  %i.ao = lshr i64 %i.an, 1
  %i.ap = select i1 %i.ak, i64 %i.am, i64 %i.ao   ; 2 uses
  %i.aq = trunc i64 %i.an to i8
  %i.ar = trunc i64 %i.an to i1
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = select i1 %i.ar, ptr %i.as, ptr %i.au
  %i.aw = add nuw i64 %i.ap, 1                    ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.af, %i.ax
  %i.az = ashr exact i64 %i.ay, 2                 ; 2 uses
  %i.ba = icmp eq i64 %i.aw, %i.az
  br i1 %i.ba, label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bb = sub i64 %i.aw, %i.az
  %i.bc = tail call ptr @wmemmove(ptr noundef %.0.lcssa.i, ptr noundef %2, i64 noundef %i.bb) #26 ; 0 uses
  %.pre.i.i = load i8, ptr %0, align 8, !tbaa !109
  br label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i

_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i:       ; preds = %bb.d, %bb.c
  %i.bd = phi i8 [ %i.aq, %bb.c ], [ %.pre.i.i, %bb.d ]
  %i.be = sub i64 %i.ap, %i.ai                    ; 2 uses
  %i.bf = trunc i8 %i.bd to i1
  br i1 %i.bf, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i
  %i.bg = trunc i64 %i.be to i8
  %i.bh = shl i8 %i.bg, 1
  %i.bi = or disjoint i8 %i.bh, 1
  store i8 %i.bi, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7replaceIPKwEERS5_S8_S8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit

bb.f:                                             ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i
  %i.bj = load i64, ptr %0, align 8
  %i.bk = shl i64 %i.be, 1
  %i.bl = and i64 %i.bj, 1
  %i.bm = or disjoint i64 %i.bl, %i.bk
  store i64 %i.bm, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7replaceIPKwEERS5_S8_S8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit

bb.g:                                             ; preds = %._crit_edge.i
  %i.bn = tail call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6insertIPKwEEPwS8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, ptr noundef %.016.lcssa.i, ptr noundef %i.d, ptr noundef null) ; 0 uses
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7replaceIPKwEERS5_S8_S8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7replaceIPKwEERS5_S8_S8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4copyEPwmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %3, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.9) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = lshr i64 %i.e, 1
  %i.k = and i64 %i.j, 127
  %i.l = select i1 %i.i, i64 %i.k, i64 %i.f
  %i.m = sub nsw i64 %i.l, %3
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.m) ; 3 uses
  %i.n = icmp eq i64 %.sroa.speculated, 0
  br i1 %i.n, label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %i.i, ptr %i.o, ptr %i.q
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %3
  %i.t = tail call ptr @wmemcpy(ptr noundef %1, ptr noundef %i.s, i64 noundef %.sroa.speculated) #26 ; 0 uses
  br label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit

_ZNSt11char_traitsIwE4copyEPwPKwm.exit:           ; preds = %bb.c, %bb.d
  ret i64 %.sroa.speculated
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i = alloca %"struct.boost::container::dtl::basic_string_base<std::allocator<wchar_t>, void>::short_t", align 8 ; 4 uses
  %2 = alloca %"struct.boost::container::dtl::basic_string_base<std::allocator<wchar_t>, void>::short_t", align 4 ; 4 uses
  %3 = alloca %"struct.boost::container::dtl::basic_string_base<std::allocator<wchar_t>, void>::short_t", align 4 ; 4 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !109
  %i.b = trunc i8 %i.a to i1
end_hunk_12
begin_hunk_13_@_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4swapERS5_:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !150
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !150
  %i.ak = load ptr, ptr %i.o, align 8, !tbaa !149
  store ptr %i.ak, ptr %i.ac, align 8, !tbaa !149
  %i.al = load i64, ptr %1, align 8
  %i.am = and i64 %i.al, 1
  %i.an = or disjoint i64 %i.am, %i.z
  store i64 %i.an, ptr %1, align 8
  store i64 %i.ab, ptr %i.ai, align 8, !tbaa !150
  store ptr %i.ad, ptr %i.o, align 8, !tbaa !149
  br label %_ZN5boost9container3dtl17basic_string_baseISaIwEvE9swap_dataERS4_.exit

_ZN5boost9container3dtl17basic_string_baseISaIwEvE9swap_dataERS4_.exit: ; preds = %bb.g, %bb.f, %bb.d, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5c_strEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e
  ret ptr %i.f
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4dataEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e
  ret ptr %i.f
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findERKS5_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e       ; 2 uses
  %i.g = lshr i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = load i64, ptr %1, align 8
  %i.j = lshr i64 %i.i, 1
  %i.k = select i1 %i.b, i64 %i.h, i64 %i.j       ; 3 uses
  %i.l = add i64 %i.k, %2
  %i.m = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.n = trunc i8 %i.m to i1
  %i.o = lshr i8 %i.m, 1
  %i.p = zext nneg i8 %i.o to i64
  %i.q = load i64, ptr %0, align 8                ; 2 uses
  %i.r = lshr i64 %i.q, 1                         ; 3 uses
  %i.s = select i1 %i.n, i64 %i.p, i64 %i.r
  %i.t = icmp ugt i64 %i.l, %i.s
  br i1 %i.t, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEPKwmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = trunc i64 %i.q to i1                     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = select i1 %i.u, ptr %i.v, ptr %i.x       ; 3 uses
  %i.z = and i64 %i.r, 127
  %i.aa = select i1 %i.u, i64 %i.z, i64 %i.r
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.y, i64 %2 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.k, 2
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i
  %i.ae = icmp eq i64 %i.k, 0
  br i1 %i.ae, label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.f
  %.01829.i.i = phi ptr [ %i.am, %bb.f ], [ %i.ac, %bb.b ] ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.01524.i.i = phi ptr [ %i.f, %.lr.ph.i.i ], [ %i.ak, %bb.e ] ; 2 uses
  %.01623.i.i = phi ptr [ %.01829.i.i, %.lr.ph.i.i ], [ %i.aj, %bb.e ] ; 3 uses
  %i.af = icmp eq ptr %.01623.i.i, %i.ab
  br i1 %i.af, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEPKwmm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = load i32, ptr %.01623.i.i, align 4, !tbaa !134
  %i.ah = load i32, ptr %.01524.i.i, align 4, !tbaa !134
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.01623.i.i, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %.01524.i.i, i64 4 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.ad
  br i1 %i.al, label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i, label %bb.c, !llvm.loop !48

bb.f:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %.01829.i.i, i64 4
  br label %.lr.ph.i.i

_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i: ; preds = %bb.e, %bb.b
  %.1.ph.i.i = phi ptr [ %i.ac, %bb.b ], [ %.01829.i.i, %bb.e ] ; 2 uses
  %.not.i = icmp eq ptr %.1.ph.i.i, %i.ab
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEPKwmm.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i
  %i.an = ptrtoint ptr %.1.ph.i.i to i64
  %i.ao = ptrtoint ptr %i.y to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEPKwmm.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i, %bb.g
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.aq, %bb.g ], [ -1, %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i ], [ -1, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEPKwmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %3, %2
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g
  %i.i = icmp ugt i64 %i.a, %i.h
  br i1 %i.i, label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = trunc i64 %i.f to i1                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.j, ptr %i.k, ptr %i.m       ; 3 uses
  %i.o = lshr i64 %i.f, 1
  %i.p = and i64 %i.o, 127
  %i.q = select i1 %i.j, i64 %i.p, i64 %i.g
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.n, i64 %2 ; 2 uses
  %.idx = shl nsw i64 %3, 2
  %i.t = getelementptr inbounds i8, ptr %1, i64 %.idx
  %i.u = icmp eq i64 %3, 0
  br i1 %i.u, label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.f
  %.01829.i = phi ptr [ %i.ac, %bb.f ], [ %i.s, %bb.b ] ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %.01524.i = phi ptr [ %1, %.lr.ph.i ], [ %i.aa, %bb.e ] ; 2 uses
  %.01623.i = phi ptr [ %.01829.i, %.lr.ph.i ], [ %i.z, %bb.e ] ; 3 uses
  %i.v = icmp eq ptr %.01623.i, %i.r
  br i1 %i.v, label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %.01623.i, align 4, !tbaa !134
  %i.x = load i32, ptr %.01524.i, align 4, !tbaa !134
  %i.y = icmp eq i32 %i.w, %i.x
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.01623.i, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.01524.i, i64 4 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.t
  br i1 %i.ab, label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit, label %bb.c, !llvm.loop !48

bb.f:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.01829.i, i64 4
  br label %.lr.ph.i

_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit: ; preds = %bb.e, %bb.b
  %.1.ph.i = phi ptr [ %i.s, %bb.b ], [ %.01829.i, %bb.e ] ; 2 uses
  %.not = icmp eq ptr %.1.ph.i, %i.r
  br i1 %.not, label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit
  %i.ad = ptrtoint ptr %.1.ph.i to i64
  %i.ae = ptrtoint ptr %i.n to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 2
  br label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.thread

_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.thread: ; preds = %bb.c, %bb.g, %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.ag, %bb.g ], [ -1, %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit ], [ -1, %bb.c ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEPKwm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 3 uses
  %i.b = add i64 %i.a, %2
  %i.c = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.d = trunc i8 %i.c to i1
  %i.e = lshr i8 %i.c, 1
  %i.f = zext nneg i8 %i.e to i64
  %i.g = load i64, ptr %0, align 8                ; 2 uses
  %i.h = lshr i64 %i.g, 1                         ; 3 uses
  %i.i = select i1 %i.d, i64 %i.f, i64 %i.h
  %i.j = icmp ugt i64 %i.b, %i.i
  br i1 %i.j, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEPKwmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = trunc i64 %i.g to i1                     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = select i1 %i.k, ptr %i.l, ptr %i.n       ; 3 uses
  %i.p = and i64 %i.h, 127
  %i.q = select i1 %i.k, i64 %i.p, i64 %i.h
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.o, i64 %2 ; 2 uses
  %.idx.i = shl nsw i64 %i.a, 2
  %i.t = getelementptr inbounds i8, ptr %1, i64 %.idx.i
  %i.u = icmp eq i64 %i.a, 0
  br i1 %i.u, label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.f
  %.01829.i.i = phi ptr [ %i.ac, %bb.f ], [ %i.s, %bb.b ] ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.01524.i.i = phi ptr [ %1, %.lr.ph.i.i ], [ %i.aa, %bb.e ] ; 2 uses
  %.01623.i.i = phi ptr [ %.01829.i.i, %.lr.ph.i.i ], [ %i.z, %bb.e ] ; 3 uses
  %i.v = icmp eq ptr %.01623.i.i, %i.r
  br i1 %i.v, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEPKwmm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %.01623.i.i, align 4, !tbaa !134
  %i.x = load i32, ptr %.01524.i.i, align 4, !tbaa !134
  %i.y = icmp eq i32 %i.w, %i.x
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.01623.i.i, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.01524.i.i, i64 4 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.t
  br i1 %i.ab, label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i, label %bb.c, !llvm.loop !48

bb.f:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.01829.i.i, i64 4
  br label %.lr.ph.i.i

_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i: ; preds = %bb.e, %bb.b
  %.1.ph.i.i = phi ptr [ %i.s, %bb.b ], [ %.01829.i.i, %bb.e ] ; 2 uses
  %.not.i = icmp eq ptr %.1.ph.i.i, %i.r
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEPKwmm.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i
  %i.ad = ptrtoint ptr %.1.ph.i.i to i64
  %i.ae = ptrtoint ptr %i.o to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEPKwmm.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i, %bb.g
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.ag, %bb.g ], [ -1, %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i ], [ -1, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEwm(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %.not = icmp ult i64 %2, %i.g
  br i1 %.not, label %bb.b, label %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEEEET_SC_SC_T0_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.e to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.h, ptr %i.i, ptr %i.k       ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.g ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.0710.i = phi ptr [ %i.q, %bb.c ], [ %i.n, %bb.b ] ; 4 uses
  %i.o = load i32, ptr %.0710.i, align 4, !tbaa !134
  %i.p = icmp eq i32 %i.o, %1
  br i1 %i.p, label %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEEEET_SC_SC_T0_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %.0710.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.q, %i.m
  br i1 %.not.i, label %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEEEET_SC_SC_T0_.exit.thread, label %.lr.ph.i, !llvm.loop !49

_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEEEET_SC_SC_T0_.exit: ; preds = %.lr.ph.i
  %.not14 = icmp eq ptr %.0710.i, %i.m
  br i1 %.not14, label %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEEEET_SC_SC_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEEEET_SC_SC_T0_.exit
  %i.r = ptrtoint ptr %.0710.i to i64
  %i.s = ptrtoint ptr %i.l to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 2
  br label %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEEEET_SC_SC_T0_.exit.thread

_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEEEET_SC_SC_T0_.exit.thread: ; preds = %bb.c, %bb.d, %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEEEET_SC_SC_T0_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.u, %bb.d ], [ -1, %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEEEET_SC_SC_T0_.exit ], [ -1, %bb.c ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5rfindERKS5_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e       ; 2 uses
  %i.g = lshr i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = load i64, ptr %1, align 8
  %i.j = lshr i64 %i.i, 1
  %i.k = select i1 %i.b, i64 %i.h, i64 %i.j       ; 5 uses
  %i.l = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.m = trunc i8 %i.l to i1
  %i.n = lshr i8 %i.l, 1
  %i.o = zext nneg i8 %i.n to i64
  %i.p = load i64, ptr %0, align 8                ; 2 uses
  %i.q = lshr i64 %i.p, 1
  %i.r = select i1 %i.m, i64 %i.o, i64 %i.q       ; 3 uses
  %i.s = icmp samesign ugt i64 %i.k, %i.r
  br i1 %i.s, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5rfindEPKwmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = icmp eq i64 %i.k, 0
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.speculated17.i = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %2)
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5rfindEPKwmm.exit

bb.d:                                             ; preds = %bb.b
  %i.u = trunc i64 %i.p to i1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = select i1 %i.u, ptr %i.v, ptr %i.x       ; 3 uses
  %i.z = sub nuw nsw i64 %i.r, %i.k
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %2)
  %.idx2729.i = add nuw i64 %.sroa.speculated.i, %i.k
  %i.aa = shl i64 %.idx2729.i, 2                  ; 2 uses
  %i.ab = getelementptr i8, ptr %i.y, i64 %i.aa   ; 4 uses
  %.idx.i = shl nuw nsw i64 %i.k, 2
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i
  %.not41.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not41.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5rfindEPKwmm.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.d, %bb.h
  %.02343.i.i = phi ptr [ %.1.i.i, %bb.h ], [ %i.ab, %bb.d ] ; 2 uses
  %.02742.i.i = phi ptr [ %i.ak, %bb.h ], [ %i.y, %bb.d ] ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.preheader.i.i
  %.022.i.i = phi ptr [ %i.ai, %bb.g ], [ %.02742.i.i, %.preheader.i.i ] ; 2 uses
  %.021.i.i = phi ptr [ %i.ag, %bb.g ], [ %i.f, %.preheader.i.i ] ; 2 uses
  %i.ad = load i32, ptr %.022.i.i, align 4, !tbaa !134
  %i.ae = load i32, ptr %.021.i.i, align 4, !tbaa !134
  %i.af = icmp eq i32 %i.ad, %i.ae
  br i1 %i.af, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 4 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.ac
  br i1 %i.ah, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 4 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.ab
  br i1 %i.aj, label %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit.i, label %bb.e, !llvm.loop !50

bb.h:                                             ; preds = %bb.f, %bb.e
  %.1.i.i = phi ptr [ %.02343.i.i, %bb.e ], [ %.02742.i.i, %bb.f ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.02742.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, %i.ab
  br i1 %.not.i.i, label %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit.i, label %.preheader.i.i, !llvm.loop !51

_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit.i: ; preds = %bb.h, %bb.g
  %.3.i.i = phi ptr [ %.02343.i.i, %bb.g ], [ %.1.i.i, %bb.h ] ; 2 uses
  %.not.i = icmp eq ptr %.3.i.i, %i.ab
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5rfindEPKwmm.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit.i
  %i.al = ptrtoint ptr %.3.i.i to i64
  %i.am = ptrtoint ptr %i.y to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5rfindEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5rfindEPKwmm.exit: ; preds = %bb.a, %bb.c, %bb.d, %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit.i, %bb.i
  %.0.i = phi i64 [ -1, %bb.a ], [ %.sroa.speculated17.i, %bb.c ], [ %i.ao, %bb.i ], [ -1, %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit.i ], [ -1, %bb.d ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5rfindEPKwmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 3 uses
  %i.h = icmp ugt i64 %3, %i.g
  br i1 %i.h, label %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %3, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.speculated17 = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %2)
  br label %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.j = trunc i64 %i.e to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.j, ptr %i.k, ptr %i.m       ; 3 uses
  %i.o = sub nuw nsw i64 %i.g, %3
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %2)
  %.idx2729 = add nuw i64 %.sroa.speculated, %3
  %i.p = shl i64 %.idx2729, 2                     ; 2 uses
  %i.q = getelementptr i8, ptr %i.n, i64 %i.p     ; 4 uses
  %.idx = shl nuw nsw i64 %3, 2
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not41.i = icmp eq i64 %i.p, 0
  br i1 %.not41.i, label %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %bb.h
  %.02343.i = phi ptr [ %.1.i, %bb.h ], [ %i.q, %bb.d ] ; 2 uses
  %.02742.i = phi ptr [ %i.z, %bb.h ], [ %i.n, %bb.d ] ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.preheader.i
  %.022.i = phi ptr [ %i.x, %bb.g ], [ %.02742.i, %.preheader.i ] ; 2 uses
  %.021.i = phi ptr [ %i.v, %bb.g ], [ %1, %.preheader.i ] ; 2 uses
  %i.s = load i32, ptr %.022.i, align 4, !tbaa !134
  %i.t = load i32, ptr %.021.i, align 4, !tbaa !134
  %i.u = icmp eq i32 %i.s, %i.t
  br i1 %i.u, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.021.i, i64 4 ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.r
  br i1 %i.w, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.022.i, i64 4 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.q
  br i1 %i.y, label %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit, label %bb.e, !llvm.loop !50

bb.h:                                             ; preds = %bb.f, %bb.e
  %.1.i = phi ptr [ %.02343.i, %bb.e ], [ %.02742.i, %bb.f ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.02742.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.z, %i.q
  br i1 %.not.i, label %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit, label %.preheader.i, !llvm.loop !51

_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit: ; preds = %bb.h, %bb.g
  %.3.i = phi ptr [ %.02343.i, %bb.g ], [ %.1.i, %bb.h ] ; 2 uses
  %.not = icmp eq ptr %.3.i, %i.q
  br i1 %.not, label %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit
  %i.aa = ptrtoint ptr %.3.i to i64
  %i.ab = ptrtoint ptr %i.n to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 2
  br label %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit.thread

_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit.thread: ; preds = %bb.d, %bb.i, %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit, %bb.a, %bb.c
  %.0 = phi i64 [ -1, %bb.a ], [ %.sroa.speculated17, %bb.c ], [ %i.ad, %bb.i ], [ -1, %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit ], [ -1, %bb.d ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5rfindEPKwm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 5 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g       ; 3 uses
  %i.i = icmp ugt i64 %i.a, %i.h
  br i1 %i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5rfindEPKwmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %i.a, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.speculated17.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %2)
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5rfindEPKwmm.exit

bb.d:                                             ; preds = %bb.b
  %i.k = trunc i64 %i.f to i1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = select i1 %i.k, ptr %i.l, ptr %i.n       ; 3 uses
  %i.p = sub nuw nsw i64 %i.h, %i.a
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %2)
  %.idx2729.i = add nuw i64 %.sroa.speculated.i, %i.a
  %i.q = shl i64 %.idx2729.i, 2                   ; 2 uses
  %i.r = getelementptr i8, ptr %i.o, i64 %i.q     ; 4 uses
  %.idx.i = shl nuw nsw i64 %i.a, 2
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %.not41.i.i = icmp eq i64 %i.q, 0
  br i1 %.not41.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5rfindEPKwmm.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.d, %bb.h
  %.02343.i.i = phi ptr [ %.1.i.i, %bb.h ], [ %i.r, %bb.d ] ; 2 uses
  %.02742.i.i = phi ptr [ %i.aa, %bb.h ], [ %i.o, %bb.d ] ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.preheader.i.i
  %.022.i.i = phi ptr [ %i.y, %bb.g ], [ %.02742.i.i, %.preheader.i.i ] ; 2 uses
  %.021.i.i = phi ptr [ %i.w, %bb.g ], [ %1, %.preheader.i.i ] ; 2 uses
  %i.t = load i32, ptr %.022.i.i, align 4, !tbaa !134
  %i.u = load i32, ptr %.021.i.i, align 4, !tbaa !134
  %i.v = icmp eq i32 %i.t, %i.u
  br i1 %i.v, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 4 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.s
  br i1 %i.x, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 4 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.r
  br i1 %i.z, label %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit.i, label %bb.e, !llvm.loop !50

bb.h:                                             ; preds = %bb.f, %bb.e
  %.1.i.i = phi ptr [ %.02343.i.i, %bb.e ], [ %.02742.i.i, %bb.f ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.02742.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, %i.r
  br i1 %.not.i.i, label %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit.i, label %.preheader.i.i, !llvm.loop !51

_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit.i: ; preds = %bb.h, %bb.g
  %.3.i.i = phi ptr [ %.02343.i.i, %bb.g ], [ %.1.i.i, %bb.h ] ; 2 uses
  %.not.i = icmp eq ptr %.3.i.i, %i.r
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5rfindEPKwmm.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit.i
  %i.ab = ptrtoint ptr %.3.i.i to i64
  %i.ac = ptrtoint ptr %i.o to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5rfindEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5rfindEPKwmm.exit: ; preds = %bb.a, %bb.c, %bb.d, %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit.i, %bb.i
  %.0.i = phi i64 [ -1, %bb.a ], [ %.sroa.speculated17.i, %bb.c ], [ %i.ae, %bb.i ], [ -1, %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit.i ], [ -1, %bb.d ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5rfindEwm(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISA_EEEEEET_SG_SG_T0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 4 uses
  %i.n = add nsw i64 %i.g, -1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %2)
  %.idx = shl nuw nsw i64 %.sroa.speculated, 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.q = phi ptr [ %i.r, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -4 ; 4 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !134, !noalias !633
  %i.t = icmp eq i32 %i.s, %1
  br i1 %i.t, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISA_EEEEEET_SG_SG_T0_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq ptr %i.r, %i.m
  br i1 %.not.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISA_EEEEEET_SG_SG_T0_.exit.thread, label %.lr.ph.i, !llvm.loop !52

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISA_EEEEEET_SG_SG_T0_.exit: ; preds = %.lr.ph.i
  %.not = icmp eq ptr %i.q, %i.m
  br i1 %.not, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISA_EEEEEET_SG_SG_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISA_EEEEEET_SG_SG_T0_.exit
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.m to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2
  br label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISA_EEEEEET_SG_SG_T0_.exit.thread

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISA_EEEEEET_SG_SG_T0_.exit.thread: ; preds = %bb.c, %bb.d, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISA_EEEEEET_SG_SG_T0_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.x, %bb.d ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISA_EEEEEET_SG_SG_T0_.exit ], [ -1, %bb.c ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE13find_first_ofERKS5_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e       ; 2 uses
  %i.g = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.h = trunc i8 %i.g to i1
  %i.i = lshr i8 %i.g, 1
  %i.j = zext nneg i8 %i.i to i64
  %i.k = load i64, ptr %0, align 8                ; 2 uses
  %i.l = lshr i64 %i.k, 1
  %i.m = select i1 %i.h, i64 %i.j, i64 %i.l       ; 2 uses
  %.not.i = icmp ult i64 %2, %i.m
  br i1 %.not.i, label %bb.b, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE13find_first_ofEPKwmm.exit

bb.b:                                             ; preds = %bb.a
  %i.n = lshr i8 %i.a, 1
  %i.o = zext nneg i8 %i.n to i64
  %i.p = load i64, ptr %1, align 8
  %i.q = lshr i64 %i.p, 1
  %i.r = select i1 %i.b, i64 %i.o, i64 %i.q       ; 2 uses
  %i.s = trunc i64 %i.k to i1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = select i1 %i.s, ptr %i.t, ptr %i.v       ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.m ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.r, 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i
  %.not1622.i.i = icmp eq i64 %i.r, 0
  br i1 %.not1622.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE13find_first_ofEPKwmm.exit, label %.preheader.i.preheader.i

.preheader.i.preheader.i:                         ; preds = %bb.b
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %2
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.i.preheader.i
  %.01425.i.i = phi ptr [ %i.ae, %._crit_edge.i.i ], [ %i.z, %.preheader.i.preheader.i ] ; 4 uses
  %i.aa = load i32, ptr %.01425.i.i, align 4, !tbaa !134
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.01223.i.i, i64 4 ; 2 uses
  %.not16.i.i = icmp eq ptr %i.ab, %i.y
  br i1 %.not16.i.i, label %._crit_edge.i.i, label %bb.d, !llvm.loop !53

bb.d:                                             ; preds = %bb.c, %.preheader.i.i
  %.01223.i.i = phi ptr [ %i.f, %.preheader.i.i ], [ %i.ab, %bb.c ] ; 2 uses
  %i.ac = load i32, ptr %.01223.i.i, align 4, !tbaa !134
  %i.ad = icmp eq i32 %i.aa, %i.ac
  br i1 %i.ad, label %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i, label %bb.c

._crit_edge.i.i:                                  ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %.01425.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, %i.x
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE13find_first_ofEPKwmm.exit, label %.preheader.i.i, !llvm.loop !54

_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i: ; preds = %bb.d
  %.not17.i = icmp eq ptr %.01425.i.i, %i.x
  br i1 %.not17.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE13find_first_ofEPKwmm.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i
  %i.af = ptrtoint ptr %.01425.i.i to i64
  %i.ag = ptrtoint ptr %i.w to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE13find_first_ofEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE13find_first_ofEPKwmm.exit: ; preds = %._crit_edge.i.i, %bb.a, %bb.b, %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i, %bb.e
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.ai, %bb.e ], [ -1, %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i ], [ -1, %bb.b ], [ -1, %._crit_edge.i.i ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE13find_first_ofEPKwmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %.not = icmp ult i64 %2, %i.g
  br i1 %.not, label %bb.b, label %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.e to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.h, ptr %i.i, ptr %i.k       ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.g ; 2 uses
  %.idx = shl nsw i64 %3, 2
  %i.n = getelementptr inbounds i8, ptr %1, i64 %.idx
  %.not1622.i = icmp eq i64 %3, 0
  br i1 %.not1622.i, label %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.thread, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %2
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge.i
  %.01425.i = phi ptr [ %i.t, %._crit_edge.i ], [ %i.o, %.preheader.i.preheader ] ; 4 uses
  %i.p = load i32, ptr %.01425.i, align 4, !tbaa !134
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.01223.i, i64 4 ; 2 uses
  %.not16.i = icmp eq ptr %i.q, %i.n
  br i1 %.not16.i, label %._crit_edge.i, label %bb.d, !llvm.loop !53

bb.d:                                             ; preds = %bb.c, %.preheader.i
  %.01223.i = phi ptr [ %1, %.preheader.i ], [ %i.q, %bb.c ] ; 2 uses
  %i.r = load i32, ptr %.01223.i, align 4, !tbaa !134
  %i.s = icmp eq i32 %i.p, %i.r
  br i1 %i.s, label %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit, label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.01425.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.t, %i.m
  br i1 %.not.i, label %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.thread, label %.preheader.i, !llvm.loop !54

_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit: ; preds = %bb.d
  %.not17 = icmp eq ptr %.01425.i, %i.m
  br i1 %.not17, label %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit
  %i.u = ptrtoint ptr %.01425.i to i64
  %i.v = ptrtoint ptr %i.l to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2
  br label %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.thread

_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.thread: ; preds = %._crit_edge.i, %bb.b, %bb.e, %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.x, %bb.e ], [ -1, %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit ], [ -1, %bb.b ], [ -1, %._crit_edge.i ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE13find_first_ofEPKwm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %.not.i = icmp ult i64 %2, %i.g
  br i1 %.not.i, label %bb.b, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE13find_first_ofEPKwmm.exit

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 2 uses
  %i.i = trunc i64 %i.e to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.g ; 2 uses
  %.idx.i = shl nsw i64 %i.h, 2
  %i.o = getelementptr inbounds i8, ptr %1, i64 %.idx.i
  %.not1622.i.i = icmp eq i64 %i.h, 0
  br i1 %.not1622.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE13find_first_ofEPKwmm.exit, label %.preheader.i.preheader.i

.preheader.i.preheader.i:                         ; preds = %bb.b
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %2
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.i.preheader.i
  %.01425.i.i = phi ptr [ %i.u, %._crit_edge.i.i ], [ %i.p, %.preheader.i.preheader.i ] ; 4 uses
  %i.q = load i32, ptr %.01425.i.i, align 4, !tbaa !134
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.01223.i.i, i64 4 ; 2 uses
  %.not16.i.i = icmp eq ptr %i.r, %i.o
  br i1 %.not16.i.i, label %._crit_edge.i.i, label %bb.d, !llvm.loop !53

bb.d:                                             ; preds = %bb.c, %.preheader.i.i
  %.01223.i.i = phi ptr [ %1, %.preheader.i.i ], [ %i.r, %bb.c ] ; 2 uses
  %i.s = load i32, ptr %.01223.i.i, align 4, !tbaa !134
  %i.t = icmp eq i32 %i.q, %i.s
  br i1 %i.t, label %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i, label %bb.c

._crit_edge.i.i:                                  ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.01425.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.n
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE13find_first_ofEPKwmm.exit, label %.preheader.i.i, !llvm.loop !54

_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i: ; preds = %bb.d
  %.not17.i = icmp eq ptr %.01425.i.i, %i.n
  br i1 %.not17.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE13find_first_ofEPKwmm.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i
  %i.v = ptrtoint ptr %.01425.i.i to i64
  %i.w = ptrtoint ptr %i.m to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE13find_first_ofEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE13find_first_ofEPKwmm.exit: ; preds = %._crit_edge.i.i, %bb.a, %bb.b, %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i, %bb.e
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.y, %bb.e ], [ -1, %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i ], [ -1, %bb.b ], [ -1, %._crit_edge.i.i ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE13find_first_ofEwm(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %.not.i = icmp ult i64 %2, %i.g
  br i1 %.not.i, label %bb.b, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEwm.exit

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.e to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.h, ptr %i.i, ptr %i.k       ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.g ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.b
  %.0710.i.i = phi ptr [ %i.q, %bb.c ], [ %i.n, %bb.b ] ; 4 uses
  %i.o = load i32, ptr %.0710.i.i, align 4, !tbaa !134
  %i.p = icmp eq i32 %i.o, %1
  br i1 %i.p, label %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEEEET_SC_SC_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.0710.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, %i.m
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEwm.exit, label %.lr.ph.i.i, !llvm.loop !49

_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEEEET_SC_SC_T0_.exit.i: ; preds = %.lr.ph.i.i
  %.not14.i = icmp eq ptr %.0710.i.i, %i.m
  br i1 %.not14.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEwm.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEEEET_SC_SC_T0_.exit.i
  %i.r = ptrtoint ptr %.0710.i.i to i64
  %i.s = ptrtoint ptr %i.l to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEwm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEwm.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEEEET_SC_SC_T0_.exit.i, %bb.d
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.u, %bb.d ], [ -1, %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEEEET_SC_SC_T0_.exit.i ], [ -1, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE12find_last_ofERKS5_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e       ; 2 uses
  %i.g = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.h = trunc i8 %i.g to i1
  %i.i = lshr i8 %i.g, 1
  %i.j = zext nneg i8 %i.i to i64
  %i.k = load i64, ptr %0, align 8                ; 2 uses
  %i.l = lshr i64 %i.k, 1
  %i.m = select i1 %i.h, i64 %i.j, i64 %i.l       ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE12find_last_ofEPKwmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = lshr i8 %i.a, 1
  %i.p = zext nneg i8 %i.o to i64
  %i.q = load i64, ptr %1, align 8
  %i.r = lshr i64 %i.q, 1
  %i.s = select i1 %i.b, i64 %i.p, i64 %i.r       ; 2 uses
  %i.t = trunc i64 %i.k to i1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = select i1 %i.t, ptr %i.u, ptr %i.w       ; 4 uses
  %i.y = add nsw i64 %i.m, -1
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.y, i64 %2)
  %.idx.i = shl i64 %.sroa.speculated.i, 2
  %i.z = add i64 %.idx.i, 4                       ; 2 uses
  %.idx20.i = shl nuw nsw i64 %i.s, 2
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx20.i
  %.not714.i.i = icmp eq i64 %i.z, 0
  %.not12.i.i = icmp eq i64 %i.s, 0
  %or.cond.i = or i1 %.not714.i.i, %.not12.i.i
  br i1 %or.cond.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE12find_last_ofEPKwmm.exit, label %.preheader.i.preheader.i

.preheader.i.preheader.i:                         ; preds = %bb.b
  %i.ab = getelementptr i8, ptr %i.x, i64 %i.z
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.i.preheader.i
  %i.ac = phi ptr [ %i.ad, %._crit_edge.i.i ], [ %i.ab, %.preheader.i.preheader.i ] ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 4 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !134, !noalias !636
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.0513.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.af, %i.aa
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.d, !llvm.loop !55

bb.d:                                             ; preds = %bb.c, %.preheader.i.i
  %.0513.i.i = phi ptr [ %i.f, %.preheader.i.i ], [ %i.af, %bb.c ] ; 2 uses
  %i.ag = load i32, ptr %.0513.i.i, align 4, !tbaa !134, !noalias !636
  %i.ah = icmp eq i32 %i.ae, %i.ag
  br i1 %i.ah, label %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit.i, label %bb.c

._crit_edge.i.i:                                  ; preds = %bb.c
  %.not7.i.i = icmp eq ptr %i.ad, %i.x
  br i1 %.not7.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE12find_last_ofEPKwmm.exit, label %.preheader.i.i, !llvm.loop !56

_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit.i: ; preds = %bb.d
  %.not.i = icmp eq ptr %i.ac, %i.x
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE12find_last_ofEPKwmm.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit.i
  %i.ai = ptrtoint ptr %i.ad to i64
  %i.aj = ptrtoint ptr %i.x to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE12find_last_ofEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE12find_last_ofEPKwmm.exit: ; preds = %._crit_edge.i.i, %bb.a, %bb.b, %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit.i, %bb.e
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.al, %bb.e ], [ -1, %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit.i ], [ -1, %bb.b ], [ -1, %._crit_edge.i.i ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE12find_last_ofEPKwmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 4 uses
  %i.n = add nsw i64 %i.g, -1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %2)
  %.idx = shl i64 %.sroa.speculated, 2
  %i.o = add i64 %.idx, 4                         ; 2 uses
  %.idx20 = shl nsw i64 %3, 2
  %i.p = getelementptr inbounds i8, ptr %1, i64 %.idx20
  %.not714.i = icmp eq i64 %i.o, 0
  %.not12.i = icmp eq i64 %3, 0
  %or.cond = or i1 %.not714.i, %.not12.i
  br i1 %or.cond, label %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit.thread, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.b
  %i.q = getelementptr i8, ptr %i.m, i64 %i.o
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge.i
  %i.r = phi ptr [ %i.s, %._crit_edge.i ], [ %i.q, %.preheader.i.preheader ] ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -4 ; 4 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !134, !noalias !639
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.0513.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.u, %i.p
  br i1 %.not.i, label %._crit_edge.i, label %bb.d, !llvm.loop !55

bb.d:                                             ; preds = %bb.c, %.preheader.i
  %.0513.i = phi ptr [ %1, %.preheader.i ], [ %i.u, %bb.c ] ; 2 uses
  %i.v = load i32, ptr %.0513.i, align 4, !tbaa !134, !noalias !639
  %i.w = icmp eq i32 %i.t, %i.v
  br i1 %i.w, label %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit, label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  %.not7.i = icmp eq ptr %i.s, %i.m
  br i1 %.not7.i, label %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit.thread, label %.preheader.i, !llvm.loop !56

_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit: ; preds = %bb.d
  %.not = icmp eq ptr %i.r, %i.m
  br i1 %.not, label %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit
  %i.x = ptrtoint ptr %i.s to i64
  %i.y = ptrtoint ptr %i.m to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 2
  br label %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit.thread

_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit.thread: ; preds = %._crit_edge.i, %bb.b, %bb.e, %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.aa, %bb.e ], [ -1, %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit ], [ -1, %bb.b ], [ -1, %._crit_edge.i ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE12find_last_ofEPKwm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE12find_last_ofEPKwmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 2 uses
  %i.j = trunc i64 %i.e to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.j, ptr %i.k, ptr %i.m       ; 4 uses
  %i.o = add nsw i64 %i.g, -1
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %2)
  %.idx.i = shl i64 %.sroa.speculated.i, 2
  %i.p = add i64 %.idx.i, 4                       ; 2 uses
  %.idx20.i = shl nsw i64 %i.i, 2
  %i.q = getelementptr inbounds i8, ptr %1, i64 %.idx20.i
  %.not714.i.i = icmp eq i64 %i.p, 0
  %.not12.i.i = icmp eq i64 %i.i, 0
  %or.cond.i = or i1 %.not714.i.i, %.not12.i.i
  br i1 %or.cond.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE12find_last_ofEPKwmm.exit, label %.preheader.i.preheader.i

.preheader.i.preheader.i:                         ; preds = %bb.b
  %i.r = getelementptr i8, ptr %i.n, i64 %i.p
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.i.preheader.i
  %i.s = phi ptr [ %i.t, %._crit_edge.i.i ], [ %i.r, %.preheader.i.preheader.i ] ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4 ; 4 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !134, !noalias !642
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.0513.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, %i.q
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.d, !llvm.loop !55

bb.d:                                             ; preds = %bb.c, %.preheader.i.i
  %.0513.i.i = phi ptr [ %1, %.preheader.i.i ], [ %i.v, %bb.c ] ; 2 uses
  %i.w = load i32, ptr %.0513.i.i, align 4, !tbaa !134, !noalias !642
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit.i, label %bb.c

._crit_edge.i.i:                                  ; preds = %bb.c
  %.not7.i.i = icmp eq ptr %i.t, %i.n
  br i1 %.not7.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE12find_last_ofEPKwmm.exit, label %.preheader.i.i, !llvm.loop !56

_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit.i: ; preds = %bb.d
  %.not.i = icmp eq ptr %i.s, %i.n
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE12find_last_ofEPKwmm.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit.i
  %i.y = ptrtoint ptr %i.t to i64
  %i.z = ptrtoint ptr %i.n to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE12find_last_ofEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE12find_last_ofEPKwmm.exit: ; preds = %._crit_edge.i.i, %bb.a, %bb.b, %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit.i, %bb.e
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.ab, %bb.e ], [ -1, %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit.i ], [ -1, %bb.b ], [ -1, %._crit_edge.i.i ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE12find_last_ofEwm(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5rfindEwm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 4 uses
  %i.n = add nsw i64 %i.g, -1
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %2)
  %.idx.i = shl nuw nsw i64 %.sroa.speculated.i, 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.b
  %i.q = phi ptr [ %i.r, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -4 ; 4 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !134, !noalias !645
  %i.t = icmp eq i32 %i.s, %1
  br i1 %i.t, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISA_EEEEEET_SG_SG_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.r, %i.m
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5rfindEwm.exit, label %.lr.ph.i.i, !llvm.loop !52

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISA_EEEEEET_SG_SG_T0_.exit.i: ; preds = %.lr.ph.i.i
  %.not.i = icmp eq ptr %i.q, %i.m
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5rfindEwm.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISA_EEEEEET_SG_SG_T0_.exit.i
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.m to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5rfindEwm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5rfindEwm.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISA_EEEEEET_SG_SG_T0_.exit.i, %bb.d
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.x, %bb.d ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISA_EEEEEET_SG_SG_T0_.exit.i ], [ -1, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17find_first_not_ofERKS5_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e       ; 2 uses
  %i.g = lshr i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = load i64, ptr %1, align 8
  %i.j = lshr i64 %i.i, 1
  %i.k = select i1 %i.b, i64 %i.h, i64 %i.j       ; 2 uses
  %i.l = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.m = trunc i8 %i.l to i1
  %i.n = lshr i8 %i.l, 1
  %i.o = zext nneg i8 %i.n to i64
  %i.p = load i64, ptr %0, align 8                ; 2 uses
  %i.q = lshr i64 %i.p, 1                         ; 3 uses
  %i.r = select i1 %i.m, i64 %i.o, i64 %i.q
  %i.s = icmp ugt i64 %2, %i.r
  br i1 %i.s, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17find_first_not_ofEPKwmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = trunc i64 %i.p to i1                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = select i1 %i.t, ptr %i.u, ptr %i.w       ; 3 uses
  %i.y = and i64 %i.q, 127
  %i.z = select i1 %i.t, i64 %i.y, i64 %i.q       ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.z ; 4 uses
  %.idx.i = shl nuw nsw i64 %i.k, 2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i ; 2 uses
  %.not15.i.i = icmp eq i64 %2, %i.z
  br i1 %.not15.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %2 ; 2 uses
  %.not9.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not9.i.i.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %.lr.ph.i.i, %bb.d
  %.0716.i.i = phi ptr [ %i.ai, %bb.d ], [ %i.ac, %.lr.ph.i.i ] ; 4 uses
  %i.ad = load i32, ptr %.0716.i.i, align 4, !tbaa !134
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.preheader.i.i
  %.0710.i.i.i.i = phi ptr [ %i.ag, %bb.c ], [ %i.f, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.ae = load i32, ptr %.0710.i.i.i.i, align 4, !tbaa !134
  %i.af = icmp eq i32 %i.ae, %i.ad
  br i1 %i.af, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0710.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, %i.ab
  br i1 %.not.i.i.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !57

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ah = icmp eq ptr %.0710.i.i.i.i, %i.ab
  br i1 %i.ah, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0716.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, %i.aa
  br i1 %.not.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i, !llvm.loop !58

_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i: ; preds = %bb.d, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i, %bb.c, %.lr.ph.i.i, %bb.b
  %.0.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %i.aa, %bb.b ], [ %.0716.i.i, %bb.c ], [ %.0716.i.i, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i ], [ %i.aa, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %.0.i.i, %i.aa
  %i.aj = ptrtoint ptr %.0.i.i to i64
  %i.ak = ptrtoint ptr %i.x to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 2
  %i.an = select i1 %.not.i, i64 -1, i64 %i.am
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17find_first_not_ofEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17find_first_not_ofEPKwmm.exit: ; preds = %bb.a, %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i
  %.0.i = phi i64 [ %i.an, %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i ], [ -1, %bb.a ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17find_first_not_ofEPKwmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 3 uses
  %i.n = lshr i64 %i.e, 1
  %i.o = and i64 %i.n, 127
  %i.p = select i1 %i.i, i64 %i.o, i64 %i.f       ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.p ; 4 uses
  %.idx = shl nsw i64 %3, 2
  %i.r = getelementptr inbounds i8, ptr %1, i64 %.idx ; 2 uses
  %.not15.i = icmp eq i64 %2, %i.p
  br i1 %.not15.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %2 ; 2 uses
  %.not9.i.i.i = icmp eq i64 %3, 0
  br i1 %.not9.i.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %.lr.ph.i, %bb.d
  %.0716.i = phi ptr [ %i.y, %bb.d ], [ %i.s, %.lr.ph.i ] ; 4 uses
  %i.t = load i32, ptr %.0716.i, align 4, !tbaa !134
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.preheader.i
  %.0710.i.i.i = phi ptr [ %i.w, %bb.c ], [ %1, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %i.u = load i32, ptr %.0710.i.i.i, align 4, !tbaa !134
  %i.v = icmp eq i32 %i.u, %i.t
  br i1 %i.v, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0710.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, %i.r
  br i1 %.not.i.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !57

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i: ; preds = %.lr.ph.i.i.i
  %i.x = icmp eq ptr %.0710.i.i.i, %i.r
  br i1 %i.x, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0716.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.y, %i.q
  br i1 %.not.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit, label %.lr.ph.i.i.preheader.i, !llvm.loop !58

_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit: ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i, %bb.d, %bb.c, %bb.b, %.lr.ph.i
  %.0.i = phi ptr [ %i.s, %.lr.ph.i ], [ %i.q, %bb.b ], [ %.0716.i, %bb.c ], [ %.0716.i, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i ], [ %i.q, %bb.d ] ; 2 uses
  %.not = icmp eq ptr %.0.i, %i.q
  %i.z = ptrtoint ptr %.0.i to i64
  %i.aa = ptrtoint ptr %i.m to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 2
  %i.ad = select i1 %.not, i64 -1, i64 %i.ac
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit
  %.0 = phi i64 [ %i.ad, %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit ], [ -1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17find_first_not_ofEPKwm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 2 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 3 uses
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g
  %i.i = icmp ugt i64 %2, %i.h
  br i1 %i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17find_first_not_ofEPKwmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = trunc i64 %i.f to i1                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.j, ptr %i.k, ptr %i.m       ; 3 uses
  %i.o = and i64 %i.g, 127
  %i.p = select i1 %i.j, i64 %i.o, i64 %i.g       ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.p ; 4 uses
  %.idx.i = shl nsw i64 %i.a, 2
  %i.r = getelementptr inbounds i8, ptr %1, i64 %.idx.i ; 2 uses
  %.not15.i.i = icmp eq i64 %2, %i.p
  br i1 %.not15.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %2 ; 2 uses
  %.not9.i.i.i.i = icmp eq i64 %i.a, 0
  br i1 %.not9.i.i.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %.lr.ph.i.i, %bb.d
  %.0716.i.i = phi ptr [ %i.y, %bb.d ], [ %i.s, %.lr.ph.i.i ] ; 4 uses
  %i.t = load i32, ptr %.0716.i.i, align 4, !tbaa !134
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.preheader.i.i
  %.0710.i.i.i.i = phi ptr [ %i.w, %bb.c ], [ %1, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.u = load i32, ptr %.0710.i.i.i.i, align 4, !tbaa !134
  %i.v = icmp eq i32 %i.u, %i.t
  br i1 %i.v, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0710.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, %i.r
  br i1 %.not.i.i.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !57

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.x = icmp eq ptr %.0710.i.i.i.i, %i.r
  br i1 %i.x, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0716.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, %i.q
  br i1 %.not.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i, !llvm.loop !58

_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i: ; preds = %bb.d, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i, %bb.c, %.lr.ph.i.i, %bb.b
  %.0.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.q, %bb.b ], [ %.0716.i.i, %bb.c ], [ %.0716.i.i, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i ], [ %i.q, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %.0.i.i, %i.q
  %i.z = ptrtoint ptr %.0.i.i to i64
  %i.aa = ptrtoint ptr %i.n to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 2
  %i.ad = select i1 %.not.i, i64 -1, i64 %i.ac
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17find_first_not_ofEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17find_first_not_ofEPKwmm.exit: ; preds = %bb.a, %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i
  %.0.i = phi i64 [ %i.ad, %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i ], [ -1, %bb.a ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17find_first_not_ofEwm(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEEEEEET_SE_SE_T0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 3 uses
  %i.n = lshr i64 %i.e, 1
  %i.o = and i64 %i.n, 127
  %i.p = select i1 %i.i, i64 %i.o, i64 %i.f       ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.p ; 2 uses
  %.not10.i = icmp eq i64 %2, %i.p
  br i1 %.not10.i, label %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEEEEEET_SE_SE_T0_.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.c
  %.0711.i = phi ptr [ %i.t, %bb.c ], [ %i.r, %.lr.ph.i.preheader ] ; 4 uses
  %i.s = load i32, ptr %.0711.i, align 4, !tbaa !134
  %.not9.i = icmp eq i32 %i.s, %1
  br i1 %.not9.i, label %bb.c, label %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEEEEEET_SE_SE_T0_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %.0711.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.t, %i.q
  br i1 %.not.i, label %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEEEEEET_SE_SE_T0_.exit.thread, label %.lr.ph.i, !llvm.loop !646

_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEEEEEET_SE_SE_T0_.exit: ; preds = %.lr.ph.i
  %.not = icmp eq ptr %.0711.i, %i.q
  br i1 %.not, label %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEEEEEET_SE_SE_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEEEEEET_SE_SE_T0_.exit
  %i.u = ptrtoint ptr %.0711.i to i64
  %i.v = ptrtoint ptr %i.m to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2
  br label %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEEEEEET_SE_SE_T0_.exit.thread

_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEEEEEET_SE_SE_T0_.exit.thread: ; preds = %bb.c, %bb.b, %bb.d, %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEEEEEET_SE_SE_T0_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.x, %bb.d ], [ -1, %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEEEEEET_SE_SE_T0_.exit ], [ -1, %bb.b ], [ -1, %bb.c ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16find_last_not_ofERKS5_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e       ; 2 uses
  %i.g = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.h = trunc i8 %i.g to i1
  %i.i = lshr i8 %i.g, 1
  %i.j = zext nneg i8 %i.i to i64
  %i.k = load i64, ptr %0, align 8                ; 2 uses
  %i.l = lshr i64 %i.k, 1
  %i.m = select i1 %i.h, i64 %i.j, i64 %i.l       ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16find_last_not_ofEPKwmm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.o = lshr i8 %i.a, 1
  %i.p = zext nneg i8 %i.o to i64
  %i.q = load i64, ptr %1, align 8
  %i.r = lshr i64 %i.q, 1
  %i.s = select i1 %i.b, i64 %i.p, i64 %i.r       ; 2 uses
  %i.t = trunc i64 %i.k to i1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = select i1 %i.t, ptr %i.u, ptr %i.w       ; 4 uses
  %.idx18.i = shl nuw nsw i64 %i.s, 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx18.i ; 2 uses
  %i.z = add nsw i64 %i.m, -1
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %2)
  %.idx.i = shl nuw nsw i64 %.sroa.speculated.i, 2
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 2 uses
  %.not9.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not9.i.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %.lr.ph.i.i, %bb.c
  %i.ac = phi ptr [ %i.ad, %bb.c ], [ %i.ab, %.lr.ph.i.i ] ; 3 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !134, !noalias !649
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.preheader.i.i
  %.0710.i.i.i.i = phi ptr [ %i.ah, %bb.b ], [ %i.f, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.af = load i32, ptr %.0710.i.i.i.i, align 4, !tbaa !134, !noalias !649
  %i.ag = icmp eq i32 %i.af, %i.ae
  br i1 %i.ag, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0710.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, %i.y
  br i1 %.not.i.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !57

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ai = icmp eq ptr %.0710.i.i.i.i, %i.y
  br i1 %i.ai, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i
  %.not.i.i = icmp eq ptr %i.ad, %i.x
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16find_last_not_ofEPKwmm.exit, label %.lr.ph.i.i.preheader.i.i, !llvm.loop !59

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i: ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i, %bb.b, %.lr.ph.i.i
  %storemerge.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %i.ac, %bb.b ], [ %i.ac, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %storemerge.i.i, %i.x
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16find_last_not_ofEPKwmm.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i
  %i.aj = getelementptr inbounds i8, ptr %storemerge.i.i, i64 -4
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.x to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16find_last_not_ofEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16find_last_not_ofEPKwmm.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i, %bb.d
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.an, %bb.d ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i ], [ -1, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16find_last_not_ofEPKwmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 4 uses
  %.idx18 = shl nsw i64 %3, 2
  %i.n = getelementptr inbounds i8, ptr %1, i64 %.idx18 ; 2 uses
  %i.o = add nsw i64 %i.g, -1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %2)
  %.idx = shl nuw nsw i64 %.sroa.speculated, 2
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %.not9.i.i.i = icmp eq i64 %3, 0
  br i1 %.not9.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %.lr.ph.i, %bb.c
  %i.r = phi ptr [ %i.s, %bb.c ], [ %i.q, %.lr.ph.i ] ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -4 ; 3 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !134, !noalias !652
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.preheader.i
  %.0710.i.i.i = phi ptr [ %i.w, %bb.b ], [ %1, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %i.u = load i32, ptr %.0710.i.i.i, align 4, !tbaa !134, !noalias !652
  %i.v = icmp eq i32 %i.u, %i.t
  br i1 %i.v, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0710.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, %i.n
  br i1 %.not.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !57

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i: ; preds = %.lr.ph.i.i.i
  %i.x = icmp eq ptr %.0710.i.i.i, %i.n
  br i1 %i.x, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i
  %.not.i = icmp eq ptr %i.s, %i.m
  br i1 %.not.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.thread, label %.lr.ph.i.i.preheader.i, !llvm.loop !59

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit: ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i, %bb.b, %.lr.ph.i
  %storemerge.i = phi ptr [ %i.q, %.lr.ph.i ], [ %i.r, %bb.b ], [ %i.r, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i ] ; 2 uses
  %.not = icmp eq ptr %storemerge.i, %i.m
  br i1 %.not, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit
  %i.y = getelementptr inbounds i8, ptr %storemerge.i, i64 -4
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.m to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 2
  br label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.thread

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.thread: ; preds = %bb.c, %bb.d, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.ac, %bb.d ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit ], [ -1, %bb.c ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16find_last_not_ofEPKwm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16find_last_not_ofEPKwmm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.i = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 2 uses
  %i.j = trunc i64 %i.e to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.j, ptr %i.k, ptr %i.m       ; 4 uses
  %.idx18.i = shl nsw i64 %i.i, 2
  %i.o = getelementptr inbounds i8, ptr %1, i64 %.idx18.i ; 2 uses
  %i.p = add nsw i64 %i.g, -1
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %2)
  %.idx.i = shl nuw nsw i64 %.sroa.speculated.i, 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  %.not9.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not9.i.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %.lr.ph.i.i, %bb.c
  %i.s = phi ptr [ %i.t, %bb.c ], [ %i.r, %.lr.ph.i.i ] ; 3 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !134, !noalias !655
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.preheader.i.i
  %.0710.i.i.i.i = phi ptr [ %i.x, %bb.b ], [ %1, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.v = load i32, ptr %.0710.i.i.i.i, align 4, !tbaa !134, !noalias !655
  %i.w = icmp eq i32 %i.v, %i.u
  br i1 %i.w, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0710.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, %i.o
  br i1 %.not.i.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !57

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.y = icmp eq ptr %.0710.i.i.i.i, %i.o
  br i1 %i.y, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i
  %.not.i.i = icmp eq ptr %i.t, %i.n
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16find_last_not_ofEPKwmm.exit, label %.lr.ph.i.i.preheader.i.i, !llvm.loop !59

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i: ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i, %bb.b, %.lr.ph.i.i
  %storemerge.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.s, %bb.b ], [ %i.s, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %storemerge.i.i, %i.n
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16find_last_not_ofEPKwmm.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i
  %i.z = getelementptr inbounds i8, ptr %storemerge.i.i, i64 -4
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.n to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16find_last_not_ofEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16find_last_not_ofEPKwmm.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i, %bb.d
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.ad, %bb.d ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i ], [ -1, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16find_last_not_ofEwm(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISB_EEEEEEEET_SI_SI_T0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 4 uses
  %i.n = add nsw i64 %i.g, -1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %2)
  %.idx = shl nuw nsw i64 %.sroa.speculated, 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.q = phi ptr [ %i.r, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -4 ; 4 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !134, !noalias !659
  %.not1.i = icmp eq i32 %i.s, %1
  br i1 %.not1.i, label %bb.c, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISB_EEEEEEEET_SI_SI_T0_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq ptr %i.r, %i.m
  br i1 %.not.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISB_EEEEEEEET_SI_SI_T0_.exit.thread, label %.lr.ph.i, !llvm.loop !658

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISB_EEEEEEEET_SI_SI_T0_.exit: ; preds = %.lr.ph.i
  %.not = icmp eq ptr %i.q, %i.m
  br i1 %.not, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISB_EEEEEEEET_SI_SI_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISB_EEEEEEEET_SI_SI_T0_.exit
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.m to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 2
  br label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISB_EEEEEEEET_SI_SI_T0_.exit.thread

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISB_EEEEEEEET_SI_SI_T0_.exit.thread: ; preds = %bb.c, %bb.d, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISB_EEEEEEEET_SI_SI_T0_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.w, %bb.d ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISB_EEEEEEEET_SI_SI_T0_.exit ], [ -1, %bb.c ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6substrEmm(ptr dead_on_unwind noalias writable sret(%"class.boost::container::basic_string.23") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %1, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.10) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %2 ; 2 uses
  %i.o = lshr i64 %i.e, 1
  %i.p = and i64 %i.o, 127
  %i.q = select i1 %i.i, i64 %i.p, i64 %i.f
  %i.r = sub nsw i64 %i.q, %2
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.r)
  %i.s = getelementptr [4 x i8], ptr %i.n, i64 %.sroa.speculated
  store i8 1, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.t, align 4, !tbaa !134
  %i.u = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignIPwEERS5_T_S9_PNS_11move_detail22disable_if_convertibleIS9_mvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.n, ptr noundef %i.s, ptr noundef null)
          to label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvEC2IPwEET_S8_RKS4_PNS_11move_detail12disable_if_cIXsr3dtl14is_convertibleIS8_mEE5valueENSB_3natEE4typeE.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl17basic_string_baseISaIwEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #26
  resume { ptr, i32 } %i.v

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvEC2IPwEET_S8_RKS4_PNS_11move_detail12disable_if_cIXsr3dtl14is_convertibleIS8_mEE5valueENSB_3natEE4typeE.exit: ; preds = %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i32 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7compareERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.d = trunc i8 %i.c to i1                      ; 2 uses
  %i.e = lshr i8 %i.a, 1
  %i.f = zext nneg i8 %i.e to i64
  %i.g = load i64, ptr %0, align 8
  %i.h = lshr i64 %i.g, 1
  %i.i = select i1 %i.b, i64 %i.f, i64 %i.h       ; 2 uses
  %i.j = lshr i8 %i.c, 1
  %i.k = zext nneg i8 %i.j to i64
  %i.l = load i64, ptr %1, align 8
  %i.m = lshr i64 %i.l, 1
  %i.n = select i1 %i.d, i64 %i.k, i64 %i.m       ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.n) ; 2 uses
  %i.o = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %i.o, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i:     ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = select i1 %i.d, ptr %i.p, ptr %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = select i1 %i.b, ptr %i.t, ptr %i.v
  %i.x = tail call i32 @wmemcmp(ptr noundef %i.w, ptr noundef %i.s, i64 noundef %.sroa.speculated.i) #29 ; 2 uses
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9s_compareIPwS7_EEiT_S8_T0_S9_.exit

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i, %bb.a
  %i.y = tail call i32 @llvm.ucmp.i32.i64(i64 %i.i, i64 %i.n)
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9s_compareIPwS7_EEiT_S8_T0_S9_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9s_compareIPwS7_EEiT_S8_T0_S9_.exit: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i
  %i.z = phi i32 [ %i.y, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i ], [ %i.x, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i ]
  ret i32 %i.z
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i32 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7compareEmmRKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.11) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = load i8, ptr %3, align 8, !tbaa !109     ; 2 uses
  %i.k = trunc i8 %i.j to i1                      ; 2 uses
  %i.l = lshr i64 %i.e, 1
  %i.m = and i64 %i.l, 127
  %i.n = select i1 %i.i, i64 %i.m, i64 %i.f
  %i.o = sub nsw i64 %i.n, %1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.o)
  %i.p = lshr i8 %i.j, 1
  %i.q = zext nneg i8 %i.p to i64
  %i.r = load i64, ptr %3, align 8
  %i.s = lshr i64 %i.r, 1
  %i.t = select i1 %i.k, i64 %i.q, i64 %i.s       ; 2 uses
  %.idx = shl i64 %.sroa.speculated, 2
  %i.u = ashr exact i64 %.idx, 2                  ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.t) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %i.v, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i:     ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = select i1 %i.k, ptr %i.w, ptr %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = select i1 %i.i, ptr %i.aa, ptr %i.ac
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %1
  %i.af = tail call i32 @wmemcmp(ptr noundef %i.ae, ptr noundef %i.z, i64 noundef %.sroa.speculated.i) #29 ; 2 uses
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9s_compareIPwS7_EEiT_S8_T0_S9_.exit

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i, %bb.c
  %i.ag = tail call i32 @llvm.ucmp.i32.i64(i64 %i.u, i64 %i.t)
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9s_compareIPwS7_EEiT_S8_T0_S9_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9s_compareIPwS7_EEiT_S8_T0_S9_.exit: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i
  %i.ah = phi i32 [ %i.ag, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i ], [ %i.af, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i ]
  ret i32 %i.ah
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i32 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7compareEmmRKS5_mm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %3, align 8, !tbaa !109     ; 2 uses
  %i.j = trunc i8 %i.i to i1
  %i.k = lshr i8 %i.i, 1
  %i.l = zext nneg i8 %i.k to i64
  %i.m = load i64, ptr %3, align 8                ; 3 uses
  %i.n = lshr i64 %i.m, 1                         ; 2 uses
  %i.o = select i1 %i.j, i64 %i.l, i64 %i.n
  %i.p = icmp ugt i64 %4, %i.o
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.11) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.q = trunc i64 %i.e to i1                     ; 2 uses
  %i.r = trunc i64 %i.m to i1                     ; 2 uses
  %i.s = lshr i64 %i.e, 1
  %i.t = and i64 %i.s, 127
  %i.u = select i1 %i.q, i64 %i.t, i64 %i.f
  %i.v = sub nsw i64 %i.u, %1
  %.sroa.speculated16 = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.v) ; 2 uses
  %i.w = lshr i64 %i.m, 1
  %i.x = and i64 %i.w, 127
  %i.y = select i1 %i.r, i64 %i.x, i64 %i.n
  %i.z = sub nsw i64 %i.y, %4
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %5, i64 %i.z) ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16, i64 %.sroa.speculated) ; 2 uses
  %i.aa = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %i.aa, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i:     ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = select i1 %i.r, ptr %i.ab, ptr %i.ad
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = select i1 %i.q, ptr %i.ag, ptr %i.ai
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %1
  %i.al = tail call i32 @wmemcmp(ptr noundef %i.ak, ptr noundef %i.af, i64 noundef %.sroa.speculated.i) #29 ; 2 uses
  %.not.i = icmp eq i32 %i.al, 0
  br i1 %.not.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9s_compareIPwS7_EEiT_S8_T0_S9_.exit

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i, %bb.d
  %i.am = tail call i32 @llvm.ucmp.i32.i64(i64 %.sroa.speculated16, i64 %.sroa.speculated)
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9s_compareIPwS7_EEiT_S8_T0_S9_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9s_compareIPwS7_EEiT_S8_T0_S9_.exit: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i
  %i.an = phi i32 [ %i.am, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i ], [ %i.al, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i ]
  ret i32 %i.an
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i32 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7compareEPKw(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i:     ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.b, ptr %i.j, ptr %i.l
  %i.n = tail call i32 @wmemcmp(ptr noundef %i.m, ptr noundef %1, i64 noundef %.sroa.speculated.i) #29 ; 2 uses
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9s_compareIPKwS8_EEiT_S9_T0_SA_.exit

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i, %bb.a
  %i.o = tail call i32 @llvm.ucmp.i32.i64(i64 %i.g, i64 %i.h)
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9s_compareIPKwS8_EEiT_S9_T0_SA_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9s_compareIPKwS8_EEiT_S9_T0_SA_.exit: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i
  %i.p = phi i32 [ %i.o, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i ], [ %i.n, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i ]
  ret i32 %i.p
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i32 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7compareEmmPKwm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.11) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = lshr i64 %i.e, 1
  %i.k = and i64 %i.j, 127
  %i.l = select i1 %i.i, i64 %i.k, i64 %i.f
  %i.m = sub nsw i64 %i.l, %1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.m)
  %.idx = shl i64 %.sroa.speculated, 2
  %i.n = ashr exact i64 %.idx, 2                  ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %4) ; 2 uses
  %i.o = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %i.o, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i:     ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = select i1 %i.i, ptr %i.p, ptr %i.r
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %1
  %i.u = tail call i32 @wmemcmp(ptr noundef %i.t, ptr noundef %3, i64 noundef %.sroa.speculated.i) #29 ; 2 uses
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9s_compareIPwPKwEEiT_SA_T0_SB_.exit

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i, %bb.c
  %i.v = tail call i32 @llvm.ucmp.i32.i64(i64 %i.n, i64 %4)
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9s_compareIPwPKwEEiT_SA_T0_SB_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9s_compareIPwPKwEEiT_SA_T0_SB_.exit: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i
  %i.w = phi i32 [ %i.v, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i ], [ %i.u, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i ]
  ret i32 %i.w
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i32 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7compareEmmPKw(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @wcslen(ptr noundef %3) #29 ; 2 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 3 uses
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g
  %i.i = icmp ugt i64 %1, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.11) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = trunc i64 %i.f to i1                     ; 2 uses
  %i.k = and i64 %i.g, 127
  %i.l = select i1 %i.j, i64 %i.k, i64 %i.g
  %i.m = sub nsw i64 %i.l, %1
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.m)
  %.idx.i = shl i64 %.sroa.speculated.i, 2
  %i.n = ashr exact i64 %.idx.i, 2                ; 2 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.a) ; 2 uses
  %i.o = icmp eq i64 %.sroa.speculated.i.i, 0
  br i1 %i.o, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i:   ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = select i1 %i.j, ptr %i.p, ptr %i.r
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %1
  %i.u = tail call i32 @wmemcmp(ptr noundef %i.t, ptr noundef %3, i64 noundef %.sroa.speculated.i.i) #29 ; 2 uses
  %.not.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7compareEmmPKwm.exit

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i, %bb.c
  %i.v = tail call i32 @llvm.ucmp.i32.i64(i64 %i.n, i64 %i.a)
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7compareEmmPKwm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7compareEmmPKwm.exit: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i
  %i.w = phi i32 [ %i.v, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i ], [ %i.u, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i ]
  ret i32 %i.w
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE8containsEw(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %.not.i.not = icmp eq i64 %i.g, 0
  br i1 %.not.i.not, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEwm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.e to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.h, ptr %i.i, ptr %i.k       ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.g ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.b
  %.0710.i.i = phi ptr [ %i.p, %bb.c ], [ %i.l, %bb.b ] ; 4 uses
  %i.n = load i32, ptr %.0710.i.i, align 4, !tbaa !134
  %i.o = icmp eq i32 %i.n, %1
  br i1 %i.o, label %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEEEET_SC_SC_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.0710.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, %i.m
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEwm.exit, label %.lr.ph.i.i, !llvm.loop !49

_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEEEET_SC_SC_T0_.exit.i: ; preds = %.lr.ph.i.i
  %.not14.i = icmp eq ptr %.0710.i.i, %i.m
  br i1 %.not14.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEwm.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEEEET_SC_SC_T0_.exit.i
  %i.q = ptrtoint ptr %.0710.i.i to i64
  %i.r = ptrtoint ptr %i.l to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = icmp ne i64 %i.s, -4
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEwm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEwm.exit: ; preds = %bb.c, %bb.d, %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEEEET_SC_SC_T0_.exit.i, %bb.a
  %.0.i = phi i1 [ false, %bb.a ], [ %i.t, %bb.d ], [ false, %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEEEET_SC_SC_T0_.exit.i ], [ false, %bb.c ]
  ret i1 %.0.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE8containsEPKw(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 3 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 3 uses
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g
  %i.i = icmp ugt i64 %i.a, %i.h
  br i1 %i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEPKwm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = trunc i64 %i.f to i1                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.j, ptr %i.k, ptr %i.m       ; 4 uses
  %i.o = and i64 %i.g, 127
  %i.p = select i1 %i.j, i64 %i.o, i64 %i.g
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.p ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.a, 2
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i.i
  %i.s = icmp eq i64 %i.a, 0
  br i1 %i.s, label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.f
  %.01829.i.i.i = phi ptr [ %i.aa, %bb.f ], [ %i.n, %bb.b ] ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i.i
  %.01524.i.i.i = phi ptr [ %1, %.lr.ph.i.i.i ], [ %i.y, %bb.e ] ; 2 uses
  %.01623.i.i.i = phi ptr [ %.01829.i.i.i, %.lr.ph.i.i.i ], [ %i.x, %bb.e ] ; 3 uses
  %i.t = icmp eq ptr %.01623.i.i.i, %i.q
  br i1 %i.t, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEPKwm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load i32, ptr %.01623.i.i.i, align 4, !tbaa !134
  %i.v = load i32, ptr %.01524.i.i.i, align 4, !tbaa !134
  %i.w = icmp eq i32 %i.u, %i.v
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %.01623.i.i.i, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %.01524.i.i.i, i64 4 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.r
  br i1 %i.z, label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i.i, label %bb.c, !llvm.loop !48

bb.f:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.01829.i.i.i, i64 4
  br label %.lr.ph.i.i.i

_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i.i: ; preds = %bb.e, %bb.b
  %.1.ph.i.i.i = phi ptr [ %i.n, %bb.b ], [ %.01829.i.i.i, %bb.e ] ; 2 uses
  %.not.i.i = icmp eq ptr %.1.ph.i.i.i, %i.q
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEPKwm.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i.i
  %i.ab = ptrtoint ptr %.1.ph.i.i.i to i64
  %i.ac = ptrtoint ptr %i.n to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = icmp ne i64 %i.ad, -4
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEPKwm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEPKwm.exit: ; preds = %bb.c, %bb.g, %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i.i, %bb.a
  %.0.i.i = phi i1 [ false, %bb.a ], [ %i.ae, %bb.g ], [ false, %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i.i ], [ false, %bb.c ]
  ret i1 %.0.i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE11starts_withEw(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.e to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.h, ptr %i.i, ptr %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !134
  %i.n = icmp eq i32 %i.m, %1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = phi i1 [ false, %bb.a ], [ %i.n, %bb.b ]
  ret i1 %i.o
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE11starts_withEPKw(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 3 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g
  %.not = icmp ult i64 %i.h, %i.a
  br i1 %.not, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.a, 0
  br i1 %i.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = trunc i64 %i.f to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.j, ptr %i.k, ptr %i.m
  %i.o = tail call i32 @wmemcmp(ptr noundef %i.n, ptr noundef %1, i64 noundef %i.a) #29
  %i.p = icmp eq i32 %i.o, 0
  br label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit:       ; preds = %bb.c, %bb.b, %bb.a
  %i.q = phi i1 [ false, %bb.a ], [ %i.p, %bb.c ], [ true, %bb.b ]
  ret i1 %i.q
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9ends_withEw(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.e to i1                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.h, ptr %i.i, ptr %i.k
  %i.m = lshr i64 %i.e, 1
  %i.n = and i64 %i.m, 127
  %i.o = select i1 %i.h, i64 %i.n, i64 %i.f
  %i.p = getelementptr [4 x i8], ptr %i.l, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !134
  %i.s = icmp eq i32 %i.r, %1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = phi i1 [ false, %bb.a ], [ %i.s, %bb.b ]
  ret i1 %i.t
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9ends_withEPKw(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 4 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g       ; 2 uses
  %.not = icmp ult i64 %i.h, %i.a
  br i1 %.not, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.a, 0
  br i1 %i.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = trunc i64 %i.f to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.j, ptr %i.k, ptr %i.m
  %i.o = sub nuw nsw i64 %i.h, %i.a
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.o
  %i.q = tail call i32 @wmemcmp(ptr noundef %i.p, ptr noundef %1, i64 noundef %i.a) #29
  %i.r = icmp eq i32 %i.q, 0
  br label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit:       ; preds = %bb.c, %bb.b, %bb.a
  %i.s = phi i1 [ false, %bb.a ], [ %i.r, %bb.c ], [ true, %bb.b ]
  ret i1 %i.s
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16priv_move_assignEOS5_NS_11move_detail5bool_ILb0EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16priv_move_assignEOS5_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9priv_copyEPKwS7_Pw(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64
  %i.c = ptrtoint ptr %1 to i64
  %i.d = sub i64 %i.c, %i.b
  %i.e = ashr exact i64 %i.d, 2
  %i.f = tail call ptr @wmemcpy(ptr noundef %2, ptr noundef %0, i64 noundef %i.e) #26 ; 0 uses
  br label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit

_ZNSt11char_traitsIwE4copyEPwPKwm.exit:           ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvE15steal_resourcesERSA_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !153
  store ptr %i.a, ptr %0, align 8, !tbaa !153
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load <2 x i64>, ptr %i.b, align 8, !tbaa !127
  store <2 x i64> %i.d, ptr %i.c, align 8, !tbaa !127
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvE18protected_set_sizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !155
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvEC2ENS0_18initial_capacity_tEPS8_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #1 comdat($_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvEC5ENS0_18initial_capacity_tEPS8_m) align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !153
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.a, align 8, !tbaa !156
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.b, align 8, !tbaa !157
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat($_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvEC5Ev) align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvEC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat($_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvEC5ERKS9_) align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvEC2Em(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 comdat($_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvEC5Em) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !153
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !156
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !157
  %.not.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i, label %_ZN5boost9container32uninitialized_value_init_alloc_nINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEPS8_EENS0_3dtl32disable_if_memzero_initializableIT0_SD_E4typeERT_mSD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 768614336404564650
  br i1 %i.c, label %bb.c, label %bb.d, !prof !121

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.19) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = icmp samesign ugt i64 %1, 384307168202282325
  br i1 %i.d, label %bb.e, label %bb.f, !prof !121

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5boost9container15throw_bad_allocEv() #27
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.e = mul nuw nsw i64 %1, 24
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #25 ; 4 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !153
  store i64 %1, ptr %i.b, align 8, !tbaa !127
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %_ZN5boost9container16allocator_traitsINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEE9constructIS8_JEEEvRS9_PT_DpOT0_.exit.i
  %.018.i = phi i64 [ %i.g, %_ZN5boost9container16allocator_traitsINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEE9constructIS8_JEEEvRS9_PT_DpOT0_.exit.i ], [ %1, %bb.f ]
  %.01417.i = phi ptr [ %i.h, %_ZN5boost9container16allocator_traitsINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEE9constructIS8_JEEEvRS9_PT_DpOT0_.exit.i ], [ %i.f, %bb.f ] ; 4 uses
  invoke void @_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.01417.i)
          to label %_ZN5boost9container16allocator_traitsINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEE9constructIS8_JEEEvRS9_PT_DpOT0_.exit.i unwind label %bb.g

_ZN5boost9container16allocator_traitsINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEE9constructIS8_JEEEvRS9_PT_DpOT0_.exit.i: ; preds = %.lr.ph.i
  %i.g = add nsw i64 %.018.i, -1                  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.01417.i, i64 24
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %_ZN5boost9container32uninitialized_value_init_alloc_nINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEPS8_EENS0_3dtl32disable_if_memzero_initializableIT0_SD_E4typeERT_mSD_.exit, label %.lr.ph.i, !llvm.loop !60

bb.g:                                             ; preds = %.lr.ph.i
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  %i.k = tail call ptr @__cxa_begin_catch(ptr %i.j) #26 ; 0 uses
  %.not619.i = icmp eq ptr %i.f, %.01417.i
  br i1 %.not619.i, label %._crit_edge23.i, label %.lr.ph22.i

.lr.ph22.i:                                       ; preds = %bb.g, %.lr.ph22.i
  %.01320.i = phi ptr [ %i.l, %.lr.ph22.i ], [ %i.f, %bb.g ] ; 2 uses
  tail call void @_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.01320.i) #26
  %i.l = getelementptr inbounds nuw i8, ptr %.01320.i, i64 24 ; 2 uses
  %.not6.i = icmp eq ptr %i.l, %.01417.i
  br i1 %.not6.i, label %._crit_edge23.i, label %.lr.ph22.i, !llvm.loop !61

bb.h:                                             ; preds = %._crit_edge23.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.i

._crit_edge23.i:                                  ; preds = %.lr.ph22.i, %bb.g
  invoke void @__cxa_rethrow() #27
          to label %bb.j unwind label %bb.h

bb.i:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #28
  unreachable

bb.j:                                             ; preds = %._crit_edge23.i
  unreachable

_ZN5boost9container32uninitialized_value_init_alloc_nINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEPS8_EENS0_3dtl32disable_if_memzero_initializableIT0_SD_E4typeERT_mSD_.exit: ; preds = %_ZN5boost9container16allocator_traitsINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEE9constructIS8_JEEEvRS9_PT_DpOT0_.exit.i, %bb.a
  ret void

.body:                                            ; preds = %bb.h
  %i.p = load i64, ptr %i.b, align 8, !tbaa !157  ; 2 uses
  %.not.i4 = icmp eq i64 %i.p, 0
  br i1 %.not.i4, label %_ZN5boost9container19vector_alloc_holderINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEmNS_11move_detail17integral_constantIjLj1EEEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.body
  %i.q = load ptr, ptr %0, align 8, !tbaa !158
  %i.r = mul i64 %i.p, 24
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.r) #26
  br label %_ZN5boost9container19vector_alloc_holderINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEmNS_11move_detail17integral_constantIjLj1EEEED2Ev.exit

_ZN5boost9container19vector_alloc_holderINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEmNS_11move_detail17integral_constantIjLj1EEEED2Ev.exit: ; preds = %.body, %bb.k
  resume { ptr, i32 } %i.m
}

; Function Attrs: alwaysinline mustprogress uwtable
define weak_odr hidden noundef ptr @_ZNK5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvE14priv_raw_beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !153
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvEC2EmRKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat($_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEENS6_IS8_EEvEC5EmRKS9_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !153
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !156
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !157
  %.not.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i, label %_ZN5boost9container32uninitialized_value_init_alloc_nINS0_4test16simple_allocatorINS0_12basic_stringIcSt11char_traitsIcENS3_IcEEvEEEEPS8_EENS0_3dtl32disable_if_memzero_initializableIT0_SD_E4typeERT_mSD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 768614336404564650
  br i1 %i.c, label %bb.c, label %bb.d, !prof !121

end_hunk_13
