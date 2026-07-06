inline.NumInlined: 1038
inline.NumDeleted: 448
begin_hunk_0_@_ZTv0_n24_N5arrow2io21CompressedInputStreamD0Ev:bb.a
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 3 uses
  tail call void @_ZN5arrow2io21CompressedInputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull @_ZTTN5arrow2io21CompressedInputStreamE) #26, !inline_history !198
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  tail call void @_ZN5arrow2io13FileInterfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %i.e) #26, !inline_history !198
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef 64) #28, !inline_history !199
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io21CompressedInputStream7DoCloseEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !183  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !180, !range !52, !noalias !200, !noundef !53
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.c, align 8, !tbaa !180, !noalias !200
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !179, !noalias !200 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !7, !noalias !200
  %i.i = getelementptr i8, ptr %i.h, i64 -56
  %i.j = load i64, ptr %i.i, align 8, !noalias !200
  %i.k = getelementptr inbounds i8, ptr %i.g, i64 %i.j ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !7, !noalias !200
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !noalias !200
  tail call void %i.n(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(28) %i.k), !inline_history !203
  br label %_ZN5arrow2io21CompressedInputStream4Impl5CloseEv.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !39, !alias.scope !204
  br label %_ZN5arrow2io21CompressedInputStream4Impl5CloseEv.exit

_ZN5arrow2io21CompressedInputStream4Impl5CloseEv.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io21CompressedInputStream7DoAbortEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !183  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !180, !range !52, !noalias !207, !noundef !53
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.c, align 8, !tbaa !180, !noalias !207
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !179, !noalias !207 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !7, !noalias !207
  %i.i = getelementptr i8, ptr %i.h, i64 -56
  %i.j = load i64, ptr %i.i, align 8, !noalias !207
  %i.k = getelementptr inbounds i8, ptr %i.g, i64 %i.j ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !7, !noalias !207
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !noalias !207
  tail call void %i.n(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(28) %i.k), !inline_history !210
  br label %_ZN5arrow2io21CompressedInputStream4Impl5AbortEv.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !39, !alias.scope !211
  br label %_ZN5arrow2io21CompressedInputStream4Impl5AbortEv.exit

_ZN5arrow2io21CompressedInputStream4Impl5AbortEv.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK5arrow2io21CompressedInputStream6closedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !183
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i8, ptr %i.c, align 8, !tbaa !180, !range !52, !noundef !53
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZTv0_n64_NK5arrow2io21CompressedInputStream6closedEv(ptr nofree noundef readonly captures(none) %0) unnamed_addr #12 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -64
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !183
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i8, ptr %i.g, align 8, !tbaa !180, !range !52, !noundef !53
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = xor i1 %i.i, true
  ret i1 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @_ZNK5arrow2io21CompressedInputStream6DoTellEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Result.13") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !183
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store ptr null, ptr %0, align 8, !tbaa !39, !alias.scope !214
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.c, align 8, !tbaa !113, !noalias !214
  store i64 %i.e, ptr %i.d, align 8, !tbaa !113, !alias.scope !214
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io21CompressedInputStream6DoReadElPv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.13") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !183
  tail call void @_ZN5arrow2io21CompressedInputStream4Impl4ReadElPv(ptr dead_on_unwind writable sret(%"class.arrow::Result.13") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5arrow2io21CompressedInputStream4Impl4ReadElPv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.13") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::Result.110", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = icmp sgt i64 %2, 0
  br i1 %i.d, label %.lr.ph, label %_ZN5arrow2io21CompressedInputStream4Impl20ReadFromDecompressedElPh.exit._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN5arrow6ResultIbED2Ev.exit15
  %i.e = phi i64 [ %i.af, %_ZN5arrow6ResultIbED2Ev.exit15 ], [ %2, %bb.a ]
  %.032 = phi i64 [ %i.x, %_ZN5arrow6ResultIbED2Ev.exit15 ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %3, i64 %.032
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !121  ; 4 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZN5arrow2io21CompressedInputStream4Impl20ReadFromDecompressedElPh.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !122
  %i.j = load i64, ptr %i.b, align 8, !tbaa !217
  %i.k = sub nsw i64 %i.i, %i.j                   ; 2 uses
  %i.l = call i64 @llvm.smin.i64(i64 %i.e, i64 %i.k) ; 4 uses
  %i.m = icmp sgt i64 %i.k, 0
  br i1 %i.m, label %bb.c, label %_ZN5arrow2io21CompressedInputStream4Impl20ReadFromDecompressedElPh.exit

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  %i.o = load i8, ptr %i.n, align 1, !tbaa !131, !range !52, !noundef !53
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = select i1 %i.p, ptr %i.r, ptr null, !prof !42
  %i.t = load i64, ptr %i.b, align 8, !tbaa !217
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.f, ptr align 1 %i.u, i64 %i.l, i1 false)
  %i.v = load i64, ptr %i.b, align 8, !tbaa !217
  %i.w = add nsw i64 %i.v, %i.l
  store i64 %i.w, ptr %i.b, align 8, !tbaa !217
  br label %_ZN5arrow2io21CompressedInputStream4Impl20ReadFromDecompressedElPh.exit

_ZN5arrow2io21CompressedInputStream4Impl20ReadFromDecompressedElPh.exit: ; preds = %.lr.ph, %bb.b, %bb.c
  %.sroa.speculated.i26 = phi i64 [ %i.l, %bb.c ], [ %i.l, %bb.b ], [ 0, %.lr.ph ]
  %i.x = add nsw i64 %.sroa.speculated.i26, %.032 ; 4 uses
  %i.y = icmp eq i64 %2, %i.x
  br i1 %i.y, label %_ZN5arrow2io21CompressedInputStream4Impl20ReadFromDecompressedElPh.exit._crit_edge, label %bb.d

bb.d:                                             ; preds = %_ZN5arrow2io21CompressedInputStream4Impl20ReadFromDecompressedElPh.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN5arrow2io21CompressedInputStream4Impl18RefillDecompressedEv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.110") align 8 %4, ptr noundef nonnull align 8 dereferenceable(128) %1)
  %i.z = load ptr, ptr %4, align 8, !tbaa !39
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_ZN5arrow6ResultIbED2Ev.exit15, label %bb.e, !prof !42

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6ResultIlEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #26
  %.pre = load ptr, ptr %4, align 8, !tbaa !39    ; 2 uses
  %.not.i.i14 = icmp eq ptr %.pre, null
  br i1 %.not.i.i14, label %.loopexit.loopexit, label %bb.f, !prof !137

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !43, !range !52, !noundef !53
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %.loopexit.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(9) %4) #26
  br label %.loopexit.loopexit

_ZN5arrow6ResultIbED2Ev.exit15:                   ; preds = %bb.d
  %i.ae = load i8, ptr %i.c, align 8, !tbaa !151, !range !52, !noundef !53
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.af = sub nsw i64 %2, %i.x                    ; 2 uses
  %i.ag = icmp sgt i64 %i.af, 0
  %5 = trunc nuw i8 %i.ae to i1
  %i.ah = and i1 %i.ag, %5
  br i1 %i.ah, label %.lr.ph, label %_ZN5arrow2io21CompressedInputStream4Impl20ReadFromDecompressedElPh.exit._crit_edge, !llvm.loop !218

_ZN5arrow2io21CompressedInputStream4Impl20ReadFromDecompressedElPh.exit._crit_edge: ; preds = %_ZN5arrow6ResultIbED2Ev.exit15, %_ZN5arrow2io21CompressedInputStream4Impl20ReadFromDecompressedElPh.exit, %bb.a
  %.119 = phi i64 [ 0, %bb.a ], [ %i.x, %_ZN5arrow6ResultIbED2Ev.exit15 ], [ %2, %_ZN5arrow2io21CompressedInputStream4Impl20ReadFromDecompressedElPh.exit ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !182
  %i.ak = add nsw i64 %i.aj, %.119
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !182
  store ptr null, ptr %0, align 8, !tbaa !39
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.119, ptr %i.al, align 8, !tbaa !113
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZN5arrow2io21CompressedInputStream4Impl20ReadFromDecompressedElPh.exit._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io21CompressedInputStream6DoReadEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.44") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !183
  tail call void @_ZN5arrow2io21CompressedInputStream4Impl4ReadEl(ptr dead_on_unwind writable sret(%"class.arrow::Result.44") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5arrow2io21CompressedInputStream4Impl4ReadEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.44") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Result.67", align 8  ; 12 uses
  %4 = alloca %"class.std::unique_ptr.71", align 8 ; 7 uses
  %5 = alloca %"class.arrow::Result.13", align 8  ; 11 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %8 = alloca %"class.std::shared_ptr.41", align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = load ptr, ptr %1, align 8, !tbaa !171
  call void @_ZN5arrow23AllocateResizableBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.67") align 8 %3, i64 noundef %2, ptr noundef %i.a)
  %i.b = load ptr, ptr %3, align 8, !tbaa !39
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !219)
  call void @llvm.experimental.noalias.scope.decl(metadata !222)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !71, !noalias !225 ; 2 uses
  store i64 %i.e, ptr %4, align 8, !tbaa !71, !alias.scope !225
  store ptr null, ptr %i.d, align 8, !tbaa !71, !noalias !225
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %.cast = inttoptr i64 %i.e to ptr               ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.cast, i64 9
  %i.g = load i8, ptr %i.f, align 1, !tbaa !131, !range !52, !noundef !53
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %.cast, i64 8
  %i.j = load i8, ptr %i.i, align 8, !range !52
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = select i1 %i.h, i1 %i.k, i1 false, !prof !42
  %i.m = getelementptr inbounds nuw i8, ptr %.cast, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = select i1 %i.l, ptr %i.n, ptr null, !prof !42
  invoke void @_ZN5arrow2io21CompressedInputStream4Impl4ReadElPv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.13") align 8 %5, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 noundef %2, ptr noundef %i.o)
          to label %bb.d unwind label %.thread

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %5, align 8, !tbaa !39
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %bb.e, !prof !42

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #26
  br label %bb.o

.thread:                                          ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i35

bb.f:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.u = load ptr, ptr %.cast, align 8, !tbaa !7, !noalias !226
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !noalias !226
  invoke void %i.w(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(80) %.cast, i64 noundef %i.t, i1 noundef zeroext true)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.j, !inline_history !145

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.f
  %i.x = load ptr, ptr %7, align 8, !tbaa !39     ; 2 uses
  store ptr %i.x, ptr %6, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZN5arrow6StatusD2Ev.exit29, label %bb.g, !prof !42

bb.g:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #26
  %i.z = load ptr, ptr %6, align 8, !tbaa !39     ; 2 uses
  %.not.i24 = icmp eq ptr %i.z, null
  br i1 %.not.i24, label %_ZN5arrow6StatusD2Ev.exit25, label %bb.h, !prof !42

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !43, !range !52, !noundef !53
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %_ZN5arrow6StatusD2Ev.exit25, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #26
  br label %_ZN5arrow6StatusD2Ev.exit25

_ZN5arrow6StatusD2Ev.exit25:                      ; preds = %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.o

bb.j:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.l

_ZN5arrow6StatusD2Ev.exit29:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2INS0_15ResizableBufferESt14default_deleteIS6_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.k

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit29
  store ptr null, ptr %0, align 8, !tbaa !39
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load <2 x ptr>, ptr %8, align 16, !tbaa !35
  store <2 x ptr> %i.af, ptr %i.ae, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.o

bb.k:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit29
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn19 = phi { ptr, i32 } [ %i.ag, %bb.k ], [ %i.ad, %bb.j ] ; 2 uses
  %i.ah = load ptr, ptr %5, align 8, !tbaa !39    ; 2 uses
  %.not.i.i30 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i30, label %bb.r, label %bb.m, !prof !42

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !43, !range !52, !noundef !53
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  br label %bb.r

bb.o:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit25, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.e
  %i.al = load ptr, ptr %5, align 8, !tbaa !39    ; 2 uses
  %.not.i.i31 = icmp eq ptr %i.al, null
  br i1 %.not.i.i31, label %_ZN5arrow6ResultIlED2Ev.exit32, label %bb.p, !prof !42

bb.p:                                             ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !43, !range !52, !noundef !53
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %_ZN5arrow6ResultIlED2Ev.exit32, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  br label %_ZN5arrow6ResultIlED2Ev.exit32

_ZN5arrow6ResultIlED2Ev.exit32:                   ; preds = %bb.o, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.ap = load ptr, ptr %4, align 8, !tbaa !71    ; 3 uses
  %.not.i33 = icmp eq ptr %i.ap, null
  br i1 %.not.i33, label %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i: ; preds = %_ZN5arrow6ResultIlED2Ev.exit32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(80) %i.ap) #26, !inline_history !74
  br label %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN5arrow6ResultIlED2Ev.exit32, %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.s
end_hunk_0
