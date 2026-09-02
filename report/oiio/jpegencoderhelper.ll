Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/jpegencoderhelper?download=true
inline.NumInlined: 369
inline.NumDeleted: 180
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN8ultrahdr17JpegEncoderHelper6encodeEPPKhPKjii12uhdr_img_fmtiPKvm:bb.a
  store i32 1, ptr %i.ek, align 4, !tbaa !38
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.em = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.el, i64 noundef 256, ptr noundef nonnull @.str.11, i32 noundef %i.ej, i32 noundef 1) #25 ; 0 uses
  call void @jpeg_destroy_compress(ptr noundef nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.critedge51, !llvm.loop !100

bb.p:                                             ; preds = %bb.n
  call void @_ZN8ultrahdr17JpegEncoderHelper13compressYCbCrEP20jpeg_compress_structPPKhPKj(ptr dead_on_unwind nonnull writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull %10, ptr noundef %2, ptr noundef %3)
  %i.en = load i32, ptr %0, align 4, !tbaa !35
  %.not48 = icmp eq i32 %i.en, 0
  br i1 %.not48, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @jpeg_destroy_compress(ptr noundef nonnull %10)
  br label %.critedge51

bb.r:                                             ; preds = %_ZNSt3mapI12uhdr_img_fmtSt6vectorIiSaIiEESt4lessIS0_ESaISt4pairIKS0_S3_EEE4findERS7_.exit64
  store i32 1, ptr %0, align 4, !tbaa !35
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.eo, align 4, !tbaa !38
  %i.ep = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !101
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void %i.eq(ptr noundef nonnull %10, ptr noundef nonnull %i.er)
  call void @jpeg_destroy_compress(ptr noundef nonnull %10)
  br label %.critedge51

.loopexit:                                        ; preds = %.critedge, %.preheader, %bb.p
  call void @jpeg_finish_compress(ptr noundef nonnull %10)
  call void @jpeg_destroy_compress(ptr noundef nonnull %10)
  br label %.critedge51

.critedge51:                                      ; preds = %bb.o, %bb.r, %.loopexit, %bb.q, %bb.g, %select.unfold
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN8ultrahdr17JpegEncoderHelper18getCompressedImageEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.uhdr_compressed_image) align 8 captures(none) initializes((0, 36)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !102
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %i.h, align 8, !tbaa !104
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.i, align 8, !tbaa !105
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 -1, ptr %i.j, align 8, !tbaa !106
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 -1, ptr %i.k, align 4, !tbaa !107
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 -1, ptr %i.l, align 8, !tbaa !108
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #6

declare ptr @jpeg_std_error(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal void @_ZN8ultrahdrL15jpegrerror_exitEP18jpeg_common_struct(ptr nofree noundef readonly captures(none) %0) #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !109
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  tail call void @longjmp(ptr noundef nonnull %i.b, i32 noundef 1) #26
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define internal void @_ZN8ultrahdrL18outputErrorMessageEP18jpeg_common_struct(ptr noundef %0) #9 {
bb.a:
  %i.a = alloca [200 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.b = load ptr, ptr %0, align 8, !tbaa !109
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !101
  call void %i.d(ptr noundef nonnull %0, ptr noundef nonnull %i.a)
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !111
  %i.f = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a) #28 ; 0 uses
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !111
  %fputc = call i32 @fputc(i32 10, ptr %i.g)      ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: nounwind returns_twice
declare i32 @_setjmp(ptr noundef) local_unnamed_addr #10

declare void @jpeg_CreateCompress(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define internal void @_ZN8ultrahdrL15initDestinationEP20jpeg_compress_struct(ptr nofree noundef readonly captures(none) %0) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70   ; 4 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !68   ; 5 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 4 uses
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  %i.j = icmp ult i64 %i.i, 16384
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = sub nuw nsw i64 16384, %i.i
  tail call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.k)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !68  ; 2 uses
  %.pre7 = load ptr, ptr %i.d, align 8, !tbaa !70
  %.pre8 = ptrtoint ptr %.pre to i64
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.i, 16384
  br i1 %.not, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16384 ; 3 uses
  %.not.i.i = icmp eq ptr %i.e, %i.l
  br i1 %.not.i.i, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.l, ptr %i.d, align 8, !tbaa !70
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

_ZNSt6vectorIhSaIhEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i
  %.pre-phi = phi i64 [ %.pre8, %bb.b ], [ %i.h, %bb.c ], [ %i.h, %bb.d ], [ %i.h, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i ]
  %i.m = phi ptr [ %.pre7, %bb.b ], [ %i.e, %bb.c ], [ %i.e, %bb.d ], [ %i.l, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i ]
  %i.n = phi ptr [ %.pre, %bb.b ], [ %i.f, %bb.c ], [ %i.f, %bb.d ], [ %i.f, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i ]
  store ptr %i.n, ptr %i.b, align 8, !tbaa !113
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.o, %.pre-phi
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !114
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZN8ultrahdrL17emptyOutputBufferEP20jpeg_compress_struct(ptr nofree noundef readonly captures(none) %0) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70   ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !68   ; 4 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  %i.j = icmp ult i64 %i.i, -16384
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 16384)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !68
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.f, i64 %i.i
  %i.l = getelementptr i8, ptr %i.k, i64 16384    ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.l
  br i1 %.not.i.i, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.c
  store ptr %i.l, ptr %i.d, align 8, !tbaa !70
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

_ZNSt6vectorIhSaIhEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i
  %i.m = phi ptr [ %.pre, %bb.b ], [ %i.f, %bb.c ], [ %i.f, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.i
  store ptr %i.n, ptr %i.b, align 8, !tbaa !113
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 16384, ptr %i.o, align 8, !tbaa !114
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN8ultrahdrL20terminateDestinationEP20jpeg_compress_struct(ptr nofree noundef readonly captures(none) %0) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70   ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !68   ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !114  ; 4 uses
  %i.l = sub nuw i64 %i.i, %i.k
  %i.m = icmp ugt i64 %i.k, %i.i
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = sub i64 0, %i.k
  tail call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.n)
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.l ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.o
  br i1 %.not.i.i, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.o, ptr %i.d, align 8, !tbaa !70
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

_ZNSt6vectorIhSaIhEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i
  ret void
}

declare void @jpeg_destroy_compress(ptr noundef) local_unnamed_addr #7

declare void @jpeg_set_defaults(ptr noundef) local_unnamed_addr #7

declare void @jpeg_set_quality(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare void @jpeg_start_compress(ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @jpeg_write_marker(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

declare i32 @jpeg_write_scanlines(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN8ultrahdr17JpegEncoderHelper13compressYCbCrEP20jpeg_compress_structPPKhPKj(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.uhdr_error_info) align 4 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x [16 x ptr]], align 16        ; 4 uses
  %i.b = alloca [3 x [16 x ptr]], align 16        ; 5 uses
  %i.c = alloca [3 x i64], align 16               ; 5 uses
  %i.d = alloca [3 x ptr], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !75
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph108, label %.critedge.preheader

.lr.ph108:                                        ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 3 uses
  br label %bb.b

.critedge.preheader:                              ; preds = %.loopexit, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 340 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 352 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 88
  br label %.critedge

bb.b:                                             ; preds = %.lr.ph108, %.loopexit
  %indvars.iv120 = phi i64 [ 0, %.lr.ph108 ], [ %indvars.iv.next121, %.loopexit ] ; 15 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv120 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3
  %i.u = add i32 %i.t, 7
  %i.v = and i32 %i.u, -8                         ; 3 uses
  %i.w = zext i32 %i.v to i64                     ; 16 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv120
  store i64 %i.w, ptr %i.x, align 8, !tbaa !115
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv120 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %i.aa = icmp ult i32 %i.z, %i.v
  br i1 %i.aa, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ab = shl nuw nsw i64 %i.w, 3
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !78
  %i.ad = getelementptr inbounds nuw [96 x i8], ptr %i.ac, i64 %indvars.iv120
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !90
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul i64 %i.ab, %i.ag                    ; 2 uses
  %i.ai = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ah) #24, !noalias !116 ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ai, i8 0, i64 %i.ah, i1 false), !noalias !116
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv120 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !25 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !25
  %.not.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i: ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.ak) #29
  %.pre = load ptr, ptr %i.aj, align 8, !tbaa !25
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i, %bb.c
  %i.al = phi ptr [ %.pre, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i ], [ %i.ai, %bb.c ] ; 3 uses
  %i.am = load ptr, ptr %i.k, align 8, !tbaa !78  ; 2 uses
  %i.an = getelementptr inbounds nuw [96 x i8], ptr %i.am, i64 %indvars.iv120
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !90
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit
  %i.ar = getelementptr inbounds nuw [128 x i8], ptr %i.b, i64 %indvars.iv120 ; 10 uses
  %.not92 = icmp eq i64 %indvars.iv120, 0
  br i1 %.not92, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.at = load i32, ptr %i.as, align 4, !tbaa !90 ; 2 uses
  %i.au = shl nsw i32 %i.at, 3
  %smax = call i32 @llvm.smax.i32(i32 %i.au, i32 1) ; 2 uses
  %wide.trip.count = zext nneg i32 %smax to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.av = icmp slt i32 %i.at, 1
  br i1 %i.av, label %.epil.preheader, label %.lr.ph.split.us.new

.lr.ph.split.us.new:                              ; preds = %.lr.ph.split.us
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.split.us.new
  %indvars.iv117 = phi i64 [ 0, %.lr.ph.split.us.new ], [ %indvars.iv.next118.7, %bb.d ] ; 9 uses
  %.085104.us = phi ptr [ %i.al, %.lr.ph.split.us.new ], [ %i.bs, %bb.d ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.split.us.new ], [ %niter.next.7, %bb.d ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv117
  store ptr %.085104.us, ptr %i.aw, align 16, !tbaa !25
  %i.ax = getelementptr inbounds nuw i8, ptr %.085104.us, i64 %i.w ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv117
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !25
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.w ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv117
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store ptr %i.ba, ptr %i.bc, align 16, !tbaa !25
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.w ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv117
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr %i.bd, ptr %i.bf, align 8, !tbaa !25
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.w ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv117
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  store ptr %i.bg, ptr %i.bi, align 16, !tbaa !25
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.w ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv117
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  store ptr %i.bj, ptr %i.bl, align 8, !tbaa !25
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.w ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv117
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  store ptr %i.bm, ptr %i.bo, align 16, !tbaa !25
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.w ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv117
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  store ptr %i.bp, ptr %i.br, align 8, !tbaa !25
  %indvars.iv.next118.7 = add nuw nsw i64 %indvars.iv117, 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.w ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %bb.d, !llvm.loop !119

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ 0, %.lr.ph ] ; 2 uses
  %.085104 = phi ptr [ %i.by, %.lr.ph.split ], [ %i.al, %.lr.ph ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv
  store ptr %.085104, ptr %i.bt, align 8, !tbaa !25
  %i.bu = load i32, ptr %i.s, align 4, !tbaa !3
  %i.bv = zext i32 %i.bu to i64                   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.085104, i64 %i.bv
  %i.bx = sub nsw i64 %i.w, %i.bv
  call void @llvm.memset.p0.i64(ptr align 1 %i.bw, i8 -128, i64 %i.bx, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.085104, i64 %i.w
  %i.bz = load ptr, ptr %i.k, align 8, !tbaa !78
  %i.ca = getelementptr inbounds nuw [96 x i8], ptr %i.bz, i64 %indvars.iv120
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !90
  %i.cd = shl nsw i32 %i.cc, 3
  %i.ce = sext i32 %i.cd to i64
  %i.cf = icmp slt i64 %indvars.iv.next, %i.ce
  br i1 %i.cf, label %.lr.ph.split, label %.loopexit, !llvm.loop !119

bb.e:                                             ; preds = %bb.b
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv120
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !3
  %i.ci = and i32 %i.ch, 7
  %.not90 = icmp eq i32 %i.ci, 0
  br i1 %.not90, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cj = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.w) #24, !noalias !120 ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cj, i8 0, i64 %i.w, i1 false), !noalias !120
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv120 ; 3 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !25 ; 2 uses
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !25
end_hunk_0
