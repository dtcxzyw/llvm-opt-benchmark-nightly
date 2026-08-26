Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/Path?download=true
inline.NumInlined: 1790
inline.NumDeleted: 565
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4llvh3sys2fs6accessERKNS_5TwineENS1_10AccessModeE:bb.a
  %i.o = load i32, ptr %i.n, align 8, !tbaa !152
  %i.p = and i32 %i.o, 61440
  %i.q = icmp eq i32 %i.p, 32768
  br i1 %i.q, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvh3sys2fsL17convertAccessModeENS1_10AccessModeE.exit, %bb.f
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  br label %bb.h

.critedge:                                        ; preds = %bb.e, %.thread
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.h

bb.h:                                             ; preds = %.critedge, %bb.g, %bb.d
  %.sroa.05.1 = phi i32 [ %i.k, %bb.d ], [ 0, %bb.g ], [ 13, %.critedge ]
  %.sroa.56.1 = phi ptr [ %i.l, %bb.d ], [ %i.r, %bb.g ], [ %i.s, %.critedge ]
  %i.t = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.a
  br i1 %i.u, label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef %i.t) #30
  br label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit

_ZN4llvh11SmallVectorIcLj128EED2Ev.exit:          ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.sroa.05.1, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.sroa.56.1, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: nofree nounwind
declare noundef i32 @access(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4llvh3sys2fs11can_executeERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(18) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call { i32, ptr } @_ZN4llvh3sys2fs6accessERKNS_5TwineENS1_10AccessModeE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 noundef 2)
  %i.b = extractvalue { i32, ptr } %i.a, 0
  %.not = icmp eq i32 %i.b, 0
  ret i1 %.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN4llvh3sys2fs10equivalentENS1_11file_statusES2_(ptr nofree noundef readonly byval(%"class.llvh::sys::fs::file_status") align 8 captures(none) %0, ptr nofree noundef readonly byval(%"class.llvh::sys::fs::file_status") align 8 captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !108
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !108
  %i.e = icmp eq i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp eq i64 %i.g, %i.i
  %i.k = select i1 %i.e, i1 %i.j, i1 false
  ret i1 %i.k
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, ptr } @_ZN4llvh3sys2fs10equivalentERKNS_5TwineES4_Rb(ptr noundef nonnull align 8 dereferenceable(18) %0, ptr noundef nonnull align 8 dereferenceable(18) %1, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.llvh::SmallString.11", align 8 ; 8 uses
  %4 = alloca %struct.stat, align 8               ; 5 uses
  %5 = alloca %"class.llvh::SmallString.11", align 8 ; 8 uses
  %6 = alloca %struct.stat, align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 128, ptr %i.c, align 4, !tbaa !39
  %i.d = call { ptr, i64 } @_ZNK4llvh5Twine25toNullTerminatedStringRefERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(18) %0, ptr noundef nonnull align 8 dereferenceable(16) %5) #30
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.f = call noundef i32 @stat(ptr noundef %i.e, ptr noundef nonnull %6) #30, !callees !106, !inline_history !107
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN4llvh3sys2fsL11typeForModeEj.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__errno_location() #31
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  br label %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit

_ZN4llvh3sys2fsL11typeForModeEj.exit.i:           ; preds = %bb.a
  %i.j = load i64, ptr %6, align 8, !tbaa !180
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !181
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  br label %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit

_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit: ; preds = %bb.b, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i
  %.sroa.2440.0 = phi i64 [ %i.l, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ 0, %bb.b ]
  %.sroa.1738.0 = phi i64 [ %i.j, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ 0, %bb.b ]
  %.sroa.025.0.i = phi i32 [ 0, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ %i.h, %bb.b ] ; 2 uses
  %.sroa.427.0.i = phi ptr [ %i.m, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ %i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.n = load ptr, ptr %5, align 8, !tbaa !36     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.a
  br i1 %i.o, label %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit
  call void @free(ptr noundef %i.n) #30
  br label %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit

_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit: ; preds = %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %.not = icmp eq i32 %.sroa.025.0.i, 0
  br i1 %.not, label %bb.d, label %bb.h

bb.d:                                             ; preds = %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.p, ptr %3, align 8, !tbaa !36
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.q, align 8, !tbaa !38
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 128, ptr %i.r, align 4, !tbaa !39
  %i.s = call { ptr, i64 } @_ZNK4llvh5Twine25toNullTerminatedStringRefERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(18) %1, ptr noundef nonnull align 8 dereferenceable(16) %3) #30
  %i.t = extractvalue { ptr, i64 } %i.s, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.u = call noundef i32 @stat(ptr noundef %i.t, ptr noundef nonnull %4) #30, !callees !106, !inline_history !107
  %.not.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i4, label %_ZN4llvh3sys2fsL11typeForModeEj.exit.i14, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = tail call ptr @__errno_location() #31
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  br label %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit25

_ZN4llvh3sys2fsL11typeForModeEj.exit.i14:         ; preds = %bb.d
  %i.y = load i64, ptr %4, align 8, !tbaa !180
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !181
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  br label %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit25

_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit25: ; preds = %bb.e, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i14
  %.sroa.17.0 = phi i64 [ %i.y, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i14 ], [ 0, %bb.e ]
  %.sroa.24.0 = phi i64 [ %i.aa, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i14 ], [ 0, %bb.e ]
  %.sroa.025.0.i7 = phi i32 [ 0, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i14 ], [ %i.w, %bb.e ] ; 2 uses
  %.sroa.427.0.i8 = phi ptr [ %i.ab, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i14 ], [ %i.x, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.ac = load ptr, ptr %3, align 8, !tbaa !36    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.p
  br i1 %i.ad, label %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit3, label %bb.f

bb.f:                                             ; preds = %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit25
  call void @free(ptr noundef %i.ac) #30
  br label %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit3

_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit3: ; preds = %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit25, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %.not45 = icmp eq i32 %.sroa.025.0.i7, 0
  br i1 %.not45, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit3
  %i.ae = icmp eq i64 %.sroa.1738.0, %.sroa.17.0
  %i.af = icmp eq i64 %.sroa.2440.0, %.sroa.24.0
  %i.ag = select i1 %i.ae, i1 %i.af, i1 false
  %i.ah = zext i1 %i.ag to i8
  store i8 %i.ah, ptr %2, align 1, !tbaa !143
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit3, %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit, %bb.g
  %.sroa.041.0 = phi i32 [ %.sroa.025.0.i, %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit ], [ %.sroa.025.0.i7, %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit3 ], [ 0, %bb.g ]
  %.sroa.6.0 = phi ptr [ %.sroa.427.0.i, %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit ], [ %.sroa.427.0.i8, %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit3 ], [ %i.ai, %bb.g ]
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.sroa.041.0, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.sroa.6.0, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc { i32, ptr } @_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE(i32 noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((0, 64)) %2) unnamed_addr #14 {
bb.a:
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @__errno_location() #31
  %i.b = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31 ; 2 uses
  %i.d = icmp eq i32 %i.b, 2
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %.sroa.419.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.419.0..sroa_idx.a, i8 0, i64 24, i1 false)
  %.sroa.520.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 1, ptr %.sroa.520.0..sroa_idx.a, align 8
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i32 65535, ptr %.sroa.621.0..sroa_idx, align 4
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.sroa.516.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.516.0..sroa_idx.a, i8 0, i64 24, i1 false)
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i32 65535, ptr %.sroa.516.0..sroa_idx, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !152  ; 2 uses
  %i.g = and i32 %i.f, 4095
  %i.h = lshr i32 %i.f, 12
  %i.i = and i32 %i.h, 15
  %switch.tableidx = add nsw i32 %i.i, -1         ; 2 uses
  %i.j = icmp ult i32 %switch.tableidx, 12
  br i1 %i.j, label %switch.lookup, label %_ZN4llvh3sys2fsL11typeForModeEj.exit

switch.lookup:                                    ; preds = %bb.e
  %i.k = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvh3sys2fs15directory_entry6statusEv, i64 %i.k
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZN4llvh3sys2fsL11typeForModeEj.exit

_ZN4llvh3sys2fsL11typeForModeEj.exit:             ; preds = %bb.e, %switch.lookup
  %.0.i = phi i32 [ %switch.ext, %switch.lookup ], [ 9, %bb.e ]
  %i.l = load i64, ptr %1, align 8, !tbaa !180
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.o = load i64, ptr %i.n, align 8, !tbaa !184
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.q = load i64, ptr %i.p, align 8, !tbaa !185
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = load i64, ptr %i.s, align 8, !tbaa !186
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = load <2 x i32>, ptr %i.r, align 4, !tbaa !3
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 36
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.v = load <2 x i64>, ptr %i.m, align 8, !tbaa !10
  store i64 %i.o, ptr %2, align 8
  store i64 %i.q, ptr %.sroa.4.0..sroa_idx, align 8
  store <2 x i32> %i.u, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 %i.t, ptr %.sroa.7.0..sroa_idx, align 8
  store i32 %.0.i, ptr %.sroa.8.0..sroa_idx, align 8
  store i32 %i.g, ptr %.sroa.9.0..sroa_idx, align 4
  store i64 %i.l, ptr %.sroa.10.0..sroa_idx, align 8
  %i.w = shufflevector <2 x i64> %i.v, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.w, ptr %.sroa.11.0..sroa_idx, align 8
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %_ZN4llvh3sys2fsL11typeForModeEj.exit
  %.sroa.025.0 = phi i32 [ 0, %_ZN4llvh3sys2fsL11typeForModeEj.exit ], [ 2, %bb.c ], [ %i.b, %bb.d ]
  %.sroa.427.0 = phi ptr [ %i.x, %_ZN4llvh3sys2fsL11typeForModeEj.exit ], [ %i.c, %bb.c ], [ %i.c, %bb.d ]
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.sroa.025.0, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.sroa.427.0, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind uwtable
define hidden { i32, ptr } @_ZN4llvh3sys2fs6statusEiRNS1_11file_statusE(i32 noundef %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((0, 64)) %1) local_unnamed_addr #15 {
bb.a:
  %2 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = call i32 @fstat(i32 noundef %0, ptr noundef nonnull %2) #30
  %i.b = call fastcc { i32, ptr } @_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE(i32 noundef %i.a, ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull align 8 dereferenceable(64) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret { i32, ptr } %i.b
}

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, ptr } @_ZN4llvh3sys2fs14setPermissionsERKNS_5TwineENS1_5permsE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvh::SmallString.11", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 128, ptr %i.c, align 4, !tbaa !39
  %i.d = call { ptr, i64 } @_ZNK4llvh5Twine25toNullTerminatedStringRefERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(18) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) #30
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  %i.f = call i32 @chmod(ptr noundef %i.e, i32 noundef %1) #30
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__errno_location() #31
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0 = phi i32 [ 0, %bb.c ], [ %i.h, %bb.b ]
  %.sroa.3.0 = phi ptr [ %i.j, %bb.c ], [ %i.i, %bb.b ]
  %i.k = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.a
  br i1 %i.l, label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @free(ptr noundef %i.k) #30
  br label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit

_ZN4llvh11SmallVectorIcLj128EED2Ev.exit:          ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.sroa.01.0, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.sroa.3.0, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: nofree nounwind
declare noundef i32 @chmod(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, ptr } @_ZN4llvh3sys2fs32setLastAccessAndModificationTimeEiNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEESA_(i32 noundef %0, i64 %1, i64 %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [2 x %struct.timespec], align 16    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = sdiv i64 %1, 1000000000
  %i.b = srem i64 %1, 1000000000
  store i64 %i.a, ptr %3, align 16, !tbaa !10
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.b, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !10
  %i.c = sdiv i64 %2, 1000000000
  %i.d = srem i64 %2, 1000000000
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.c, ptr %i.e, align 16, !tbaa !10
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !10
  %i.f = call i32 @futimens(i32 noundef %0, ptr noundef nonnull %3) #30
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__errno_location() #31
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.3.0 = phi ptr [ %i.j, %bb.c ], [ %i.i, %bb.b ]
  %.sroa.0.0 = phi i32 [ 0, %bb.c ], [ %i.h, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.sroa.3.0, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: nounwind
declare i32 @futimens(i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, ptr } @_ZN4llvh3sys2fs18mapped_file_region4initEimNS2_7mapmodeE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(20) initializes((8, 16)) %0, i32 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %3, 1
  %i.b = select i1 %i.a, i32 1, i32 2
  %i.c = icmp eq i32 %3, 0
  %i.d = select i1 %i.c, i32 1, i32 3
  %i.e = load i64, ptr %0, align 8, !tbaa !187
  %i.f = tail call ptr @mmap(ptr noundef null, i64 noundef %i.e, i32 noundef %i.d, i32 noundef %i.b, i32 noundef %1, i64 noundef %2) #30 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !190
  %i.h = icmp eq ptr %i.f, inttoptr (i64 -1 to ptr)
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__errno_location() #31
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.3.0 = phi ptr [ %i.k, %bb.b ], [ %i.l, %bb.c ]
  %.sroa.0.0 = phi i32 [ %i.j, %bb.b ], [ 0, %bb.c ]
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.sroa.3.0, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh3sys2fs18mapped_file_regionC2EiNS2_7mapmodeEmmRSt10error_code(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(20) initializes((0, 20)) %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 16)) %5) unnamed_addr #0 align 2 {
end_hunk_0
