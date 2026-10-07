Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/PtexWriter?download=true
inline.NumInlined: 1329
inline.NumDeleted: 556
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEEixEOS5_:bb.a

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #30 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !99 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE11lower_boundERS9_.exit, label %bb.b, !llvm.loop !1

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE11lower_boundERS9_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE11lower_boundERS9_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !19   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !49
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #30 ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE11lower_boundERS9_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i12 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE11lower_boundERS9_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  store ptr %1, ptr %2, align 8, !tbaa !109, !alias.scope !246
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.sroa.07.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 64
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4Ptex4v2_414PtexWriterBase10writeBlankEP8_IO_FILEi(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !43, !range !44, !noundef !45
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.d = icmp sgt i32 %2, 0
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.09 = phi i32 [ %i.g, %.lr.ph ], [ %2, %.preheader ] ; 2 uses
  %i.e = tail call i32 @llvm.umin.i32(i32 %.09, i32 16384)
  %i.f = tail call noundef i32 @_ZN4Ptex4v2_414PtexWriterBase10writeBlockEP8_IO_FILEPKvi(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %1, ptr noundef nonnull @_ZZN4Ptex4v2_414PtexWriterBase10writeBlankEP8_IO_FILEiE5zeros, i32 noundef %i.e)
  %i.g = sub nsw i32 %.09, %i.f                   ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %.loopexit, !llvm.loop !2

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.a
  %.08 = phi i32 [ 0, %bb.a ], [ %2, %.preheader ], [ %2, %.lr.ph ]
  ret i32 %.08
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4Ptex4v2_414PtexWriterBase10writeBlockEP8_IO_FILEPKvi(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !43, !range !44, !noundef !45
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = sext i32 %3 to i64
  %i.f = tail call i64 @fwrite(ptr noundef %2, i64 noundef %i.e, i64 noundef 1, ptr noundef %1)
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %.noexc.i, label %bb.e

.noexc.i:                                         ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 35, ptr %i.a, align 8, !tbaa !66
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.h, ptr %4, align 8, !tbaa !49
  %i.i = load i64, ptr %i.a, align 8, !tbaa !66   ; 3 uses
  store i64 %i.i, ptr %i.g, align 8, !tbaa !50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.h, ptr noundef nonnull align 1 dereferenceable(35) @.str.11, i64 35, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  store i8 0, ptr %i.k, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc.i
  store i8 0, ptr %i.b, align 8, !tbaa !43
  %i.m = load ptr, ptr %4, align 8, !tbaa !49     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.g
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.o = load i64, ptr %i.g, align 8, !tbaa !50
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.e

bb.d:                                             ; preds = %.noexc.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %4, align 8, !tbaa !49     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.g
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.d
  %i.t = load i64, ptr %i.g, align 8, !tbaa !50
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %i.q

bb.e:                                             ; preds = %bb.b, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.08 = phi i32 [ 0, %bb.a ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %3, %bb.b ]
  ret i32 %.08
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4Ptex4v2_414PtexWriterBase13writeZipBlockEP8_IO_FILEPKvib(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !43, !range !44, !noundef !45
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %.thread29

bb.b:                                             ; preds = %bb.a
  %i.e = alloca [16384 x i8], align 16            ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 4 uses
  store ptr %2, ptr %i.f, align 8, !tbaa !247
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i32 %3, ptr %i.g, align 8, !tbaa !248
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 5 uses
  %6 = select i1 %4, i32 4, i32 0                 ; 2 uses
  br i1 %4, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.b, %bb.d
  store ptr %i.e, ptr %i.h, align 8, !tbaa !249
  store i32 16384, ptr %i.i, align 8, !tbaa !250
  %i.j = call i32 @deflate(ptr noundef nonnull %i.f, i32 noundef %6)
  %i.k = load i32, ptr %i.i, align 8, !tbaa !250
  %i.l = sub i32 16384, %i.k                      ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.split.us
  %i.n = call noundef i32 @_ZN4Ptex4v2_414PtexWriterBase10writeBlockEP8_IO_FILEPKvi(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %1, ptr noundef nonnull %i.e, i32 noundef %i.l) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.split.us
  switch i32 %i.j, label %.noexc.i [
    i32 1, label %.loopexit
    i32 0, label %.split.us
  ]

.split:                                           ; preds = %bb.b, %bb.i
  store ptr %i.e, ptr %i.h, align 8, !tbaa !249
  store i32 16384, ptr %i.i, align 8, !tbaa !250
  %i.o = call i32 @deflate(ptr noundef nonnull %i.f, i32 noundef %6)
  %i.p = load i32, ptr %i.i, align 8, !tbaa !250
  %i.q = sub i32 16384, %i.p                      ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.split
  %i.s = call noundef i32 @_ZN4Ptex4v2_414PtexWriterBase10writeBlockEP8_IO_FILEPKvi(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %1, ptr noundef nonnull %i.e, i32 noundef %i.q) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.split
  switch i32 %i.o, label %.noexc.i [
    i32 1, label %.loopexit
    i32 0, label %bb.i
  ]

.noexc.i:                                         ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.t, ptr %5, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 49, ptr %i.a, align 8, !tbaa !66
  %i.u = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.u, ptr %5, align 8, !tbaa !49
  %i.v = load i64, ptr %i.a, align 8, !tbaa !66   ; 3 uses
  store i64 %i.v, ptr %i.t, align 8, !tbaa !50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.u, ptr noundef nonnull align 1 dereferenceable(49) @.str.12, i64 49, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !19
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v
  store i8 0, ptr %i.x, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.noexc.i
  store i8 0, ptr %i.b, align 8, !tbaa !43
  %i.z = load ptr, ptr %5, align 8, !tbaa !49     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.t
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ab = load i64, ptr %i.t, align 8, !tbaa !50
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %.loopexit

bb.h:                                             ; preds = %.noexc.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %5, align 8, !tbaa !49    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.t
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.h
  %i.ag = load i64, ptr %i.t, align 8, !tbaa !50
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %i.ad

bb.i:                                             ; preds = %bb.f
  %i.ai = load i32, ptr %i.i, align 8, !tbaa !250
  %.not22 = icmp eq i32 %i.ai, 0
  br i1 %.not22, label %.split, label %.thread29

.loopexit:                                        ; preds = %bb.f, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br i1 %4, label %bb.j, label %.thread29

bb.j:                                             ; preds = %.loopexit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !251
  %i.al = trunc i64 %i.ak to i32
  %i.am = call i32 @deflateReset(ptr noundef nonnull %i.f) ; 0 uses
  br label %.thread29

.thread29:                                        ; preds = %bb.i, %bb.j, %.loopexit, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %i.al, %bb.j ], [ 0, %.loopexit ], [ 0, %bb.i ]
  ret i32 %.1
}

declare i32 @deflate(ptr noundef, i32 noundef) local_unnamed_addr #7

declare i32 @deflateReset(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4Ptex4v2_414PtexWriterBase9readBlockEP8_IO_FILEPvi(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = sext i32 %3 to i64
  %i.c = tail call i64 @fread(ptr noundef %2, i64 noundef %i.b, i64 noundef 1, ptr noundef %1)
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %.noexc.i, label %bb.d

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 39, ptr %i.a, align 8, !tbaa !66
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.e, ptr %4, align 8, !tbaa !49
  %i.f = load i64, ptr %i.a, align 8, !tbaa !66   ; 3 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %i.e, ptr noundef nonnull align 1 dereferenceable(39) @.str.13, i64 39, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  store i8 0, ptr %i.h, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.noexc.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.j, align 8, !tbaa !43
  %i.k = load ptr, ptr %4, align 8, !tbaa !49     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.d
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.d, align 8, !tbaa !50
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.d

bb.c:                                             ; preds = %.noexc.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %4, align 8, !tbaa !49     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.d
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.c
  %i.r = load i64, ptr %i.d, align 8, !tbaa !50
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %i.o

bb.d:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.08 = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %3, %bb.a ]
  ret i32 %.08
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, -2147483648) i32 @_ZN4Ptex4v2_414PtexWriterBase9copyBlockEP8_IO_FILES3_li(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = icmp slt i32 %4, 1
  br i1 %i.b, label %.thread36, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @fseeko(ptr noundef %2, i64 noundef %3, i32 noundef 0) ; 0 uses
  %i.d = alloca [16384 x i8], align 16            ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %.022 = phi i32 [ %4, %bb.b ], [ %i.y, %bb.g ]  ; 3 uses
  %.not = icmp eq i32 %.022, 0
  br i1 %.not, label %.thread36, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @llvm.smin.i32(i32 %.022, i32 16384) ; 3 uses
  %i.f = zext nneg i32 %i.e to i64
  %i.g = call i64 @fread(ptr noundef nonnull %i.d, i64 noundef %i.f, i64 noundef 1, ptr noundef %2)
  %.not26 = icmp eq i64 %i.g, 0
  br i1 %.not26, label %.noexc.i, label %bb.g

.noexc.i:                                         ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.h, ptr %5, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 39, ptr %i.a, align 8, !tbaa !66
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.i, ptr %5, align 8, !tbaa !49
  %i.j = load i64, ptr %i.a, align 8, !tbaa !66   ; 3 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %i.i, ptr noundef nonnull align 1 dereferenceable(39) @.str.13, i64 39, i1 false)
end_hunk_0
