Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/o3dgcArithmeticCodec?download=true
inline.NumInlined: 26
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5o3dgc16Arithmetic_Codec6decodeERNS_19Adaptive_Data_ModelE:bb.a
  br i1 %i.cb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN5o3dgc16Arithmetic_Codec19renorm_dec_intervalEv.exit
  tail call void @_ZN5o3dgc19Adaptive_Data_Model6updateEb(ptr noundef nonnull align 8 dereferenceable(52) %1, i1 noundef zeroext false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5o3dgc16Arithmetic_Codec19renorm_dec_intervalEv.exit
  ret i32 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN5o3dgc16Arithmetic_CodecC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(44) initializes((0, 16), (36, 44)) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.b, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5o3dgc16Arithmetic_CodecC2EjPh(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(44) initializes((0, 16), (36, 44)) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.b, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  tail call void @_ZN5o3dgc16Arithmetic_Codec10set_bufferEjPh(ptr noundef nonnull align 8 dereferenceable(44) %0, i32 noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5o3dgc16Arithmetic_Codec10set_bufferEjPh(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(44) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5o3dgcL8AC_ErrorEPKc(ptr noundef nonnull @.str) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8
  %.not9 = icmp eq i32 %i.b, 0
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN5o3dgcL8AC_ErrorEPKc(ptr noundef nonnull @.str.1) #15
  unreachable

bb.e:                                             ; preds = %bb.c
  %.not10 = icmp eq ptr %2, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  br i1 %.not10, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %1, ptr %i.c, align 4
  store ptr %2, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store ptr null, ptr %i.d, align 8
  br label %bb.m

bb.i:                                             ; preds = %bb.e
  %i.g = load i32, ptr %i.c, align 4
  %.not11 = icmp ugt i32 %1, %i.g
  br i1 %.not11, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  store i32 %1, ptr %i.c, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #16
  %.pre = load i32, ptr %i.c, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.k = phi i32 [ %.pre, %bb.k ], [ %1, %bb.j ]
  %i.l = add i32 %i.k, 16
  %i.m = zext i32 %i.l to i64
  %i.n = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #17 ; 2 uses
  store ptr %i.n, ptr %i.h, align 8
  store ptr %i.n, ptr %0, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN5o3dgc16Arithmetic_CodecD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(44) dereferenceable(44) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress noreturn uwtable
define internal fastcc void @_ZN5o3dgcL8AC_ErrorEPKc(ptr nofree noundef readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.14, i64 31, i64 1, ptr %i.a) #18 ; 0 uses
  %i.b = load ptr, ptr @stderr, align 8
  %i.c = tail call i32 @fputs(ptr noundef %0, ptr noundef %i.b) #18 ; 0 uses
  %i.d = load ptr, ptr @stderr, align 8
  %fwrite1 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 24, i64 1, ptr %i.d) #18 ; 0 uses
  %i.e = tail call i32 @getchar()                 ; 0 uses
  tail call void @exit(i32 noundef 1) #19
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5o3dgc16Arithmetic_Codec13start_encoderEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(44) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5o3dgcL8AC_ErrorEPKc(ptr noundef nonnull @.str.2) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN5o3dgcL8AC_ErrorEPKc(ptr noundef nonnull @.str.3) #15
  unreachable

bb.e:                                             ; preds = %bb.c
  store i32 1, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 -1, ptr %i.g, align 8
  %i.h = load ptr, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.i, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5o3dgc16Arithmetic_Codec13start_decoderEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(44) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5o3dgcL8AC_ErrorEPKc(ptr noundef nonnull @.str.4) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN5o3dgcL8AC_ErrorEPKc(ptr noundef nonnull @.str.3) #15
  unreachable

bb.e:                                             ; preds = %bb.c
  store i32 2, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 -1, ptr %i.f, align 8
  %i.g = load ptr, ptr %0, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.i, align 8
  %1 = load i32, ptr %i.g, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %2, ptr %i.j, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5o3dgc16Arithmetic_Codec14read_from_fileEP8_IO_FILE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(44) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #5 align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.010 = phi i32 [ 0, %bb.a ], [ %i.f, %bb.d ]   ; 2 uses
  %.0 = phi i32 [ 0, %bb.a ], [ %i.e, %bb.d ]
  %i.a = tail call i32 @getc(ptr noundef %1)      ; 3 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN5o3dgcL8AC_ErrorEPKc(ptr noundef nonnull @.str.5) #15
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = and i32 %i.a, 127
  %i.d = shl i32 %i.c, %.010
  %i.e = or i32 %i.d, %.0                         ; 3 uses
  %i.f = add i32 %.010, 7
  %i.g = and i32 %i.a, 128
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.b, !llvm.loop !19

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp ugt i32 %i.e, %i.i
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_ZN5o3dgcL8AC_ErrorEPKc(ptr noundef nonnull @.str.6) #15
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.k = load ptr, ptr %0, align 8
  %i.l = zext i32 %i.e to i64                     ; 2 uses
  %i.m = tail call i64 @fread(ptr noundef %i.k, i64 noundef 1, i64 noundef %i.l, ptr noundef %1)
  %.not13 = icmp eq i64 %i.m, %i.l
  br i1 %.not13, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @_ZN5o3dgcL8AC_ErrorEPKc(ptr noundef nonnull @.str.5) #15
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @_ZN5o3dgcL8AC_ErrorEPKc(ptr noundef nonnull @.str.4) #15
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.p = load i32, ptr %i.h, align 4
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.l, label %_ZN5o3dgc16Arithmetic_Codec13start_decoderEv.exit

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @_ZN5o3dgcL8AC_ErrorEPKc(ptr noundef nonnull @.str.3) #15
  unreachable

_ZN5o3dgc16Arithmetic_Codec13start_decoderEv.exit: ; preds = %bb.k
  store i32 2, ptr %i.n, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 -1, ptr %i.r, align 8
  %i.s = load ptr, ptr %0, align 8                ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 3
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.t, ptr %i.u, align 8
  %2 = load i32, ptr %i.s, align 1
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %3, ptr %i.v, align 4
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN5o3dgc16Arithmetic_Codec12stop_encoderEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(44) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5o3dgcL8AC_ErrorEPKc(ptr noundef nonnull @.str.7) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp ugt i32 %i.f, 33554432              ; 2 uses
  %storemerge3.v = select i1 %i.g, i32 16777216, i32 8388608
  %storemerge3 = add i32 %storemerge3.v, %i.d     ; 3 uses
  %storemerge = select i1 %i.g, i32 8388608, i32 32768
  store i32 %storemerge3, ptr %i.c, align 8
  store i32 %storemerge, ptr %i.e, align 8
  %i.h = icmp ugt i32 %i.d, %storemerge3
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %.05.i = getelementptr inbounds i8, ptr %i.j, i64 -1 ; 3 uses
  %i.k = load i8, ptr %.05.i, align 1             ; 2 uses
  %i.l = icmp eq i8 %i.k, -1
  br i1 %i.l, label %.lr.ph.i, label %_ZN5o3dgc16Arithmetic_Codec15propagate_carryEv.exit

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.06.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.05.i, %bb.d ] ; 2 uses
  store i8 0, ptr %.06.i, align 1
  %.0.i = getelementptr inbounds i8, ptr %.06.i, i64 -1 ; 3 uses
  %i.m = load i8, ptr %.0.i, align 1              ; 2 uses
  %i.n = icmp eq i8 %i.m, -1
  br i1 %i.n, label %.lr.ph.i, label %_ZN5o3dgc16Arithmetic_Codec15propagate_carryEv.exit, !llvm.loop !0

_ZN5o3dgc16Arithmetic_Codec15propagate_carryEv.exit: ; preds = %.lr.ph.i, %bb.d
  %.0.lcssa.i = phi ptr [ %.05.i, %bb.d ], [ %.0.i, %.lr.ph.i ]
  %.lcssa.i = phi i8 [ %i.k, %bb.d ], [ %i.m, %.lr.ph.i ]
  %i.o = add nuw i8 %.lcssa.i, 1
  store i8 %i.o, ptr %.0.lcssa.i, align 1
  %.pre.i.pre = load i32, ptr %i.c, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZN5o3dgc16Arithmetic_Codec15propagate_carryEv.exit, %bb.c
  %.pre.i = phi i32 [ %.pre.i.pre, %_ZN5o3dgc16Arithmetic_Codec15propagate_carryEv.exit ], [ %storemerge3, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %i.q = phi i32 [ %i.w, %bb.f ], [ %.pre.i, %bb.e ]
  %i.r = lshr i32 %i.q, 24
  %i.s = trunc nuw i32 %i.r to i8
  %i.t = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store ptr %i.u, ptr %i.p, align 8
  store i8 %i.s, ptr %i.t, align 1
  %i.v = load i32, ptr %i.c, align 8
  %i.w = shl i32 %i.v, 8                          ; 2 uses
  store i32 %i.w, ptr %i.c, align 8
  %i.x = load i32, ptr %i.e, align 8
  %i.y = shl i32 %i.x, 8                          ; 2 uses
  store i32 %i.y, ptr %i.e, align 8
  %i.z = icmp ult i32 %i.y, 16777216
  br i1 %i.z, label %bb.f, label %_ZN5o3dgc16Arithmetic_Codec19renorm_enc_intervalEv.exit, !llvm.loop !1

_ZN5o3dgc16Arithmetic_Codec19renorm_enc_intervalEv.exit: ; preds = %bb.f
  %i.aa = load ptr, ptr %i.p, align 8
  %i.ab = load ptr, ptr %0, align 8
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = trunc i64 %i.ae to i32                  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = icmp ult i32 %i.ah, %i.af
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5o3dgc16Arithmetic_Codec19renorm_enc_intervalEv.exit
  tail call fastcc void @_ZN5o3dgcL8AC_ErrorEPKc(ptr noundef nonnull @.str.6) #15
  unreachable

bb.h:                                             ; preds = %_ZN5o3dgc16Arithmetic_Codec19renorm_enc_intervalEv.exit
  ret i32 %i.af
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN5o3dgc16Arithmetic_Codec13write_to_fileEP8_IO_FILE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(44) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN5o3dgc16Arithmetic_Codec12stop_encoderEv(ptr noundef nonnull align 8 dereferenceable(44) %0) ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.014 = phi i32 [ 0, %bb.a ], [ %i.g, %bb.d ]
  %.013 = phi i32 [ %i.a, %bb.a ], [ %i.c, %bb.d ] ; 2 uses
  %i.b = and i32 %.013, 127                       ; 2 uses
  %i.c = lshr i32 %.013, 7                        ; 2 uses
  %.not = icmp eq i32 %i.c, 0                     ; 2 uses
  %i.d = or disjoint i32 %i.b, 128
  %spec.select = select i1 %.not, i32 %i.b, i32 %i.d
  %i.e = tail call i32 @putc(i32 noundef %spec.select, ptr noundef %1)
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN5o3dgcL8AC_ErrorEPKc(ptr noundef nonnull @.str.8) #15
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = add nuw nsw i32 %.014, 1                 ; 2 uses
  br i1 %.not, label %bb.e, label %bb.b, !llvm.loop !20

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %0, align 8
  %i.i = zext i32 %i.a to i64                     ; 2 uses
  %i.j = tail call i64 @fwrite(ptr noundef %i.h, i64 noundef 1, i64 noundef %i.i, ptr noundef %1)
  %.not17 = icmp eq i64 %i.j, %i.i
  br i1 %.not17, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_ZN5o3dgcL8AC_ErrorEPKc(ptr noundef nonnull @.str.8) #15
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.k = add i32 %i.g, %i.a
  ret i32 %i.k
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5o3dgc16Arithmetic_Codec12stop_decoderEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(44) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5o3dgcL8AC_ErrorEPKc(ptr noundef nonnull @.str.9) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN5o3dgc16Static_Bit_ModelC2Ev(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %0) unnamed_addr #4 align 2 {
bb.a:
  store i32 4096, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5o3dgc16Static_Bit_Model17set_probability_0Ed(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %0, double noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = fcmp olt double %1, 1.000000e-04
  %i.b = fcmp ogt double %1, 9.999000e-01
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5o3dgcL8AC_ErrorEPKc(ptr noundef nonnull @.str.10) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = fmul double %1, 8.192000e+03
  %i.d = fptoui double %i.c to i32
  store i32 %i.d, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN5o3dgc18Adaptive_Bit_ModelC2Ev(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(20) initializes((0, 20)) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 2, ptr %i.a, align 4
  store <4 x i32> <i32 4, i32 4, i32 4096, i32 1>, ptr %0, align 4
  ret void
end_hunk_0
begin_hunk_1_@_ZN5o3dgc19Adaptive_Data_ModelC2Ej:bb.a
  store ptr null, ptr %0, align 8
  tail call void @_ZN5o3dgc19Adaptive_Data_Model12set_alphabetEj(ptr noundef nonnull align 8 dereferenceable(52) %0, i32 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5o3dgc19Adaptive_Data_Model12set_alphabetEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(52) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = add i32 %1, -2049
  %or.cond = icmp ult i32 %i.a, -2047
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5o3dgcL8AC_ErrorEPKc(ptr noundef nonnull @.str.11) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 7 uses
  %i.c = load i32, ptr %i.b, align 4
  %.not = icmp eq i32 %i.c, %1
  br i1 %.not, label %.lr.ph.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %1, ptr %i.b, align 4
  %i.d = add nsw i32 %1, -1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.d, ptr %i.e, align 8
  %i.f = load ptr, ptr %0, align 8                ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #16
  %.pre = load i32, ptr %i.b, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = phi i32 [ %.pre, %bb.e ], [ %1, %bb.d ]  ; 4 uses
  %i.i = icmp ugt i32 %i.h, 16
  br i1 %i.i, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.f, %.preheader
  %.0 = phi i32 [ %i.m, %.preheader ], [ 3, %bb.f ] ; 4 uses
  %i.j = add i32 %.0, 2
  %i.k = shl nuw i32 1, %i.j
  %i.l = icmp ugt i32 %i.h, %i.k
  %i.m = add i32 %.0, 1
  br i1 %i.l, label %.preheader, label %bb.g, !llvm.loop !27

bb.g:                                             ; preds = %.preheader
  %i.n = shl nuw i32 1, %.0                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.n, ptr %i.o, align 4
  %i.p = sub i32 15, %.0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.p, ptr %i.q, align 8
  %i.r = shl i32 %i.h, 1
  %i.s = add i32 %i.r, 2
  %i.t = add i32 %i.s, %i.n
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.v) #17 ; 3 uses
  store ptr %i.w, ptr %0, align 8
  %i.x = load i32, ptr %i.b, align 4              ; 2 uses
  %i.y = shl i32 %i.x, 1
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.aa, ptr %i.ab, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.ae, align 4
  %i.af = shl nuw nsw i32 %i.h, 3
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ag) #17 ; 2 uses
  store ptr %i.ah, ptr %0, align 8
  %.pre11 = load i32, ptr %i.b, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ai = phi i32 [ %i.x, %bb.g ], [ %.pre11, %bb.h ] ; 3 uses
  %i.aj = phi ptr [ %i.w, %bb.g ], [ %i.ah, %bb.h ]
  %i.ak = zext i32 %i.ai to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.am, align 8
  %i.an = icmp eq i32 %i.ai, 0
  br i1 %i.an, label %_ZN5o3dgc19Adaptive_Data_Model5resetEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.i
  %i.ao = phi i32 [ %i.ai, %bb.i ], [ %1, %bb.c ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  store i32 %i.ao, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.j

._crit_edge.i:                                    ; preds = %bb.j
  tail call void @_ZN5o3dgc19Adaptive_Data_Model6updateEb(ptr noundef nonnull align 8 dereferenceable(52) %0, i1 noundef zeroext false)
  %i.as = load i32, ptr %i.b, align 4
  %i.at = add i32 %i.as, 6
  %i.au = lshr i32 %i.at, 1                       ; 2 uses
  store i32 %i.au, ptr %i.aq, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.au, ptr %i.av, align 8
  br label %_ZN5o3dgc19Adaptive_Data_Model5resetEv.exit

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.j ] ; 2 uses
  %i.aw = load ptr, ptr %i.ar, align 8
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i
  store i32 1, ptr %i.ax, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ay = load i32, ptr %i.b, align 4
  %i.az = zext i32 %i.ay to i64
  %i.ba = icmp samesign ult i64 %indvars.iv.next.i, %i.az
  br i1 %i.ba, label %bb.j, label %._crit_edge.i, !llvm.loop !5

_ZN5o3dgc19Adaptive_Data_Model5resetEv.exit:      ; preds = %bb.i, %._crit_edge.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN5o3dgc19Adaptive_Data_ModelD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(52) dereferenceable(52) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.a) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_ZN5o3dgc19Adaptive_Data_Model5resetEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(52) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  store i32 %i.b, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  tail call void @_ZN5o3dgc19Adaptive_Data_Model6updateEb(ptr noundef nonnull align 8 dereferenceable(52) %0, i1 noundef zeroext false)
  %i.g = load i32, ptr %i.a, align 4
  %i.h = add i32 %i.g, 6
  %i.i = lshr i32 %i.h, 1                         ; 2 uses
  store i32 %i.i, ptr %i.e, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.i, ptr %i.j, align 8
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.k = load ptr, ptr %i.f, align 8
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  store i32 1, ptr %i.l, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.m = load i32, ptr %i.a, align 4
  %i.n = zext i32 %i.m to i64
  %i.o = icmp samesign ult i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %bb.b, label %._crit_edge, !llvm.loop !5

bb.c:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress uwtable
declare i32 @getchar() local_unnamed_addr #11

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { noreturn }
attributes #16 = { builtin nounwind }
attributes #17 = { builtin allocsize(0) }
attributes #18 = { cold }
attributes #19 = { cold noreturn nounwind }

!llvm.module.flags = !{!6, !7}
!llvm.ident = !{!8}

!0 = distinct !{!0, !9}
!1 = distinct !{!1, !9}
!2 = distinct !{!2, !9}
!3 = distinct !{!3, !9}
!4 = distinct !{!4, !9}
!5 = distinct !{!5, !9}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !9}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !9}
!21 = distinct !{!21, !9}
!22 = distinct !{!22, !9}
!23 = distinct !{!23, !9}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !9}
!27 = distinct !{!27, !9}
end_hunk_1
